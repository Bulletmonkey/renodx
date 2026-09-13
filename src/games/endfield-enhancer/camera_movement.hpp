#pragma once

// Included inside camera::detail. Presentation only: native locomotion, root
// motion, gameplay rotation, Animator controllers and IK remain game-owned.
namespace movement {
inline std::atomic<DWORD> game_thread{0};
inline std::atomic_bool attached{false};
inline Il2CppMethod started, released, paused, cinematic, get_movement, manual_move;
inline size_t input_offset = 0;
inline float lateral_yaw = 0.f;
inline float held_yaw = 0.f;
inline double facing_time = 0;
inline Il2CppMethod get_component, get_animator, component_transform, find_transform, parent_transform;
inline Il2CppMethod local_rotation, world_rotation, set_local_rotation, set_world_rotation, object_alive;
inline void* (*new_string)(const char*) = nullptr;

inline double ClockSeconds() {
  static const double frequency = [] {
    LARGE_INTEGER value{};
    QueryPerformanceFrequency(&value);
    return static_cast<double>(value.QuadPart);
  }();
  LARGE_INTEGER counter{};
  QueryPerformanceCounter(&counter);
  return static_cast<double>(counter.QuadPart)/frequency;
}

inline void* Call(Il2CppMethod method, void* object = nullptr, void** args = nullptr) {
  if (!method) throw std::runtime_error("Movement presentation API unavailable");
  void* exception = nullptr;
  void* result = runtime_invoke(method, object, args, &exception);
  if (exception) throw std::runtime_error("Movement presentation call rejected");
  return result;
}
template <typename T>
inline T Value(Il2CppMethod method, void* object) {
  void* result = Call(method, object);
  if (!result) throw std::runtime_error("Movement presentation value unavailable");
  return *static_cast<T*>(object_unbox(result));
}
struct Root {
  uint32_t handle = 0;
  Root() = default;
  explicit Root(void* object) : handle(object ? gc_new(object, false) : 0) {
    if (object && !handle) throw std::runtime_error("Movement reference allocation failed");
  }
  Root(const Root&) = delete;
  Root& operator=(const Root&) = delete;
  Root(Root&& other) noexcept : handle(std::exchange(other.handle, 0)) {}
  Root& operator=(Root&& other) noexcept {
    if (handle) gc_free(handle);
    handle = std::exchange(other.handle, 0);
    return *this;
  }
  ~Root() {
    if (handle) gc_free(handle);
  }
  void* Get() const { return handle ? gc_target(handle) : nullptr; }
};
inline Root visual_entity, visual_transform;
inline Quat original_visual{0, 0, 0, 1}, written_visual{0, 0, 0, 1};
inline bool Alive(void* object) {
  if (!object) return false;
  void* args[]{object};
  void* result = Call(object_alive, nullptr, args);
  return result && *static_cast<bool*>(object_unbox(result));
}
inline bool SameRotation(Quat a, Quat b) {
  return Unit(a) && Unit(b) && std::abs(a.x * b.x + a.y * b.y + a.z * b.z + a.w * b.w) > .99999f;
}
inline bool RestoreVisual() {
  try {
    if (Alive(visual_transform.Get()) && SameRotation(Value<Quat>(local_rotation, visual_transform.Get()), written_visual)) {
      void* args[]{&original_visual};
      Call(set_local_rotation, visual_transform.Get(), args);
    }
    visual_transform = Root();
    visual_entity = Root();
    attached = false;
    lateral_yaw = 0.f;
    held_yaw = 0.f;
    facing_time = 0;
    return true;
  } catch (...) {
    return false;
  }
}
inline void Release() { RestoreVisual(); }
inline void Update(bool active, Vec3 view, float look_limit = 60.f) {
  game_thread = GetCurrentThreadId();
  try {
    Root entity(active ? Call(character_method) : nullptr);
    if (!entity.Get() || !Value<bool>(started, entity.Get()) || Value<bool>(released, entity.Get())
        || Value<bool>(paused, entity.Get()) || Value<bool>(cinematic, entity.Get())
        || !Finite(view) || std::hypot(view.x, view.z) < .001f) {
      Release();
      return;
    }
    Root component(Call(get_component, entity.Get()));
    Root animator(component.Get() ? Call(get_animator, component.Get()) : nullptr);
    Root animator_transform(animator.Get() ? Call(component_transform, animator.Get()) : nullptr);
    Root path(new_string("Root"));
    void* find_args[]{path.Get()};
    Root skeleton(Alive(animator_transform.Get()) ? Call(find_transform, animator_transform.Get(), find_args) : nullptr);
    // The extracted native rigs put bones and all IK targets under this direct
    // child. Never rotate the Animator/model/gameplay transform: root-motion
    // velocity and dodge heading must retain the game's original reference.
    if (!Alive(skeleton.Get()) || skeleton.Get() == animator_transform.Get()
        || Call(parent_transform, skeleton.Get()) != animator_transform.Get()) {
      Release();
      return;
    }
    if (visual_entity.Get() != entity.Get() || visual_transform.Get() != skeleton.Get()) {
      if (!RestoreVisual()) return;
      original_visual = Value<Quat>(local_rotation, skeleton.Get());
      if (!Unit(original_visual)) return;
      visual_entity = std::move(entity);
      visual_transform = std::move(skeleton);
      written_visual = original_visual;
      Log(reshade::log::level::info, "Endfield enhancer: native movement with skeleton-only camera facing; no animation or velocity overrides");
    }
    const Quat local = Value<Quat>(local_rotation, visual_transform.Get());
    const Quat world = Value<Quat>(world_rotation, visual_transform.Get());
    if (!Unit(local) || !Unit(world)) {
      Release();
      return;
    }
    if (!SameRotation(local, written_visual)) original_visual = local;
    Root movement(Call(get_movement, visual_entity.Get()));
    Root input(movement.Get() ? Read<void*>(movement.Get(), input_offset) : nullptr);
    const Vec3 move = input.Get() ? Value<Vec3>(manual_move, input.Get()) : Vec3{};
    const double now = ClockSeconds();
    const float elapsed = facing_time ? std::clamp(float(now - facing_time), 0.f, .1f) : 0.f;
    facing_time = now;
    const float view_yaw = std::atan2(view.x, view.z) * 57.295779513f;
    if (!attached) held_yaw = view_yaw;
    if (Finite(move) && std::hypot(move.x, move.z) > .01f) {
      lateral_yaw += (LateralFacingYaw(move, view) - lateral_yaw) * (1.f - std::exp(-12.f * elapsed));
      held_yaw = view_yaw + lateral_yaw;
    } else {
      // Keep the last visual heading on release, including the sidestep angle.
      // Only carry the body along once the camera reaches the idle look limit.
      held_yaw = view_yaw - std::clamp(std::remainder(view_yaw - held_yaw, 360.f), -look_limit, look_limit);
      lateral_yaw = std::remainder(held_yaw - view_yaw, 360.f);
    }
    const Vec3 facing = Rotate(world, {0, 0, 1});
    Quat wanted = AxisAngle({0, 1, 0}, std::remainder(held_yaw - std::atan2(facing.x, facing.z) * 57.295779513f, 360.f)) * world;
    void* args[]{&wanted};
    attached = true;
    Call(set_world_rotation, visual_transform.Get(), args);
    written_visual = Value<Quat>(local_rotation, visual_transform.Get());
  } catch (...) {
    Release();
  }
}
inline bool Resolve(Il2CppImage game, int32_t (*value_size)(void*, uint32_t*), void* (*class_from_type)(const void*)) {
  const HMODULE module = GetModuleHandleW(L"GameAssembly.dll");
  const void* (*parameter)(Il2CppMethod, uint32_t) = nullptr;
  const void* (*return_type)(Il2CppMethod) = nullptr;
  const void* (*field_type)(void*) = nullptr;
  if (!ResolveExport(module, "il2cpp_method_get_param", &parameter)
      || !ResolveExport(module, "il2cpp_method_get_return_type", &return_type)
      || !ResolveExport(module, "il2cpp_field_get_type", &field_type)
      || !ResolveExport(module, "il2cpp_string_new", &new_string)) return false;
  const auto unity = FindImage("UnityEngine.CoreModule.dll"), animation = FindImage("UnityEngine.AnimationModule.dll");
  if (!unity || !animation) return false;
  started = FindMethod(game, "Beyond.Gameplay.Core", "Entity", "get_markStarted", 0);
  released = FindMethod(game, "Beyond.Gameplay.Core", "Entity", "get_markReleased", 0);
  paused = FindMethod(game, "Beyond.Gameplay.Core", "Entity", "get_isPaused", 0);
  get_movement = FindMethod(game, "Beyond.Gameplay.Core", "Entity", "get_movementComponent", 0);
  manual_move = FindMethod(game, "Beyond.Gameplay.Core", "MoveInput", "get_manualMoveVector", 0);
  void* input_field = class_get_field_from_name(class_from_name(game, "Beyond.Gameplay.Core", "MovementComponent"), "input");
  if (!input_field || class_from_type(field_type(input_field)) != class_from_name(game, "Beyond.Gameplay.Core", "MoveInput")) return false;
  input_offset = field_get_offset(input_field);
  if (input_offset < 0x10 || input_offset > 0x400) return false;
  cinematic = FindMethod(game, "Beyond.Gameplay.Core", "Entity", "get_inCinematic", 0);
  get_component = FindMethod(game, "Beyond.Gameplay.Core", "Entity", "get_animatorCom", 0);
  get_animator = FindMethod(game, "Beyond.Gameplay.View", "ComplexAnimatorComponent", "get_animator", 0);
  component_transform = FindMethod(unity, "UnityEngine", "Component", "get_transform", 0);
  find_transform = FindMethod(unity, "UnityEngine", "Transform", "Find", 1);
  parent_transform = FindMethod(unity, "UnityEngine", "Transform", "get_parent", 0);
  object_alive = FindMethod(unity, "UnityEngine", "Object", "op_Implicit", 1);
  local_rotation = FindMethod(unity, "UnityEngine", "Transform", "get_localRotation", 0);
  world_rotation = FindMethod(unity, "UnityEngine", "Transform", "get_rotation", 0);
  set_local_rotation = FindMethod(unity, "UnityEngine", "Transform", "set_localRotation", 1);
  set_world_rotation = FindMethod(unity, "UnityEngine", "Transform", "set_rotation", 1);
  for (auto entry : {started, released, paused, cinematic, get_movement, manual_move, get_component, get_animator, component_transform, find_transform, parent_transform,
                     object_alive, local_rotation, world_rotation, set_local_rotation, set_world_rotation})
    if (!entry) return false;
  uint32_t alignment = 0;
  return value_size(class_from_type(return_type(local_rotation)), &alignment) == sizeof(Quat)
         && value_size(class_from_type(return_type(world_rotation)), &alignment) == sizeof(Quat)
         && value_size(class_from_type(parameter(set_local_rotation, 0)), &alignment) == sizeof(Quat)
         && value_size(class_from_type(parameter(set_world_rotation, 0)), &alignment) == sizeof(Quat)
         && value_size(class_from_type(return_type(manual_move)), &alignment) == sizeof(Vec3);
}
}  // namespace movement

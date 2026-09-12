#pragma once

#include <algorithm>
#include <intrin.h>
#include <unordered_map>
#include <stdexcept>
#include <utility>
#include "./runtime_status.hpp"
#include "./camera_mesh.hpp"
#include <array>
#include <cwctype>
#include <string>
#include <TlHelp32.h>

#include "./camera_math.hpp"
#include "./npc_distance.hpp"
#include "./uncensor.hpp"

namespace endfield::camera {
inline float enabled = 0.f, gameplay = 1.f, photo = 1.f;
inline float height = 0.f, horizontal = 0.f, distance = 0.f;
inline float pitch = 0.f, yaw = 0.f, roll = 0.f, fov = 60.f, zoom_limit = 1.f;
inline float first_person = 0.f, eye_height = 0.05f, eye_forward = 0.03f, first_person_fov = 60.f;
inline float extend_look_range = 0.f;
inline float first_person_movement = 0.f;
inline float side_look_limit = 60.f;
inline float first_person_dialogue = 0.f;
inline bool unavailable = false;
inline float hide_head=0.f, fill_neck_hole=0.f;
inline std::atomic_int status = 0;

namespace detail {
using namespace enhancer::detail;
struct Values {
  bool enabled, gameplay, photo, first_person, hide_head, fill_neck_hole;
  float height, horizontal, distance, pitch, yaw, roll, fov, zoom_limit, eye_height, eye_forward;
  float look_up_range, look_down_range, first_person_fov;
  bool first_person_movement;
  float side_look_limit;
  bool first_person_dialogue;
};
inline Values values{};
inline SRWLOCK values_lock = SRWLOCK_INIT;
inline bool installed = false;
using PushState = void (*)(void*, void*, MethodInfo*);
using GetFloat = float (*)(void*, MethodInfo*);
inline PushState push_state = nullptr;
inline GetFloat param_max = nullptr, body_max = nullptr;
inline std::array<void*, 4> entries{};
inline std::array<std::array<uint8_t, 16>, 4> patched{};
inline void (*static_get)(void*, void*) = nullptr;
inline void* (*object_class)(void*) = nullptr;
inline uint32_t (*gc_new)(void*, bool) = nullptr;
inline void (*gc_free)(uint32_t) = nullptr;
inline void* (*gc_target)(uint32_t) = nullptr;
inline int32_t (*string_length)(void*) = nullptr;
inline const wchar_t* (*string_chars)(void*) = nullptr;
inline void (*position_injected)(void*, Vec3*) = nullptr;
inline void* manager_field = nullptr;
inline void* photo_class = nullptr;
inline void* level_class = nullptr;
inline void* free_class = nullptr;
inline Il2CppMethod controller_method = nullptr, brain_method = nullptr;
inline Il2CppMethod character_method = nullptr, model_method = nullptr, model_go_method = nullptr;
inline Il2CppMethod transform_method = nullptr, child_count_method = nullptr, child_method = nullptr, name_method = nullptr;
inline size_t native_first_person = 0, param_controller = 0;
inline uint32_t head_root = 0, model_root = 0;
inline unsigned retry_head = 0;

inline Values ReadValues() {
  AcquireSRWLockShared(&values_lock);
  const Values result = values;
  ReleaseSRWLockShared(&values_lock);
  return result;
}
inline void* Invoke(Il2CppMethod method, void* object, void** args = nullptr) {
  if (!method) return nullptr;
  void* exception = nullptr;
  void* result = runtime_invoke(method, object, args, &exception);
  return exception ? nullptr : result;
}
#include "./camera_dialogue.hpp"

// Called only by native camera callbacks on the game thread. No cached unrooted objects.
inline void* Context(const Values& v, void** manager = nullptr) {
  if (!v.enabled || shutting_down.load(std::memory_order_relaxed)) return nullptr;
  void* instance = nullptr;
  static_get(manager_field, &instance);
  if (!instance) return nullptr;
  void* controller = Invoke(controller_method, instance);
  if (!controller) return nullptr;
  if (manager) *manager = instance;
  void* klass = object_class(controller);
  if (!((klass == photo_class && v.photo) || ((klass == level_class || klass == free_class) && v.gameplay)
        || (v.gameplay && v.first_person && v.first_person_dialogue && dialogue::Eligible(controller)))) return nullptr;
  return controller;
}
inline void ReleaseHead() {
  if (head_root) gc_free(head_root);
  if (model_root) gc_free(model_root);
  head_root = model_root = 0;
  retry_head = 0;
}
inline void* Head() {
  void* character = Invoke(character_method, nullptr);
  void* model = character ? Invoke(model_method, character) : nullptr;
  void* go = model ? Invoke(model_go_method, model) : nullptr;
  if (!go) { ReleaseHead(); return nullptr; }
  if (model_root && gc_target(model_root) == go) {
    if (head_root) return gc_target(head_root);
    if (++retry_head < 120) return nullptr;
  }
  ReleaseHead();
  model_root = gc_new(go, false);
  if (!model_root) return nullptr;
  // Inspect this character's own hierarchy only, once on model/character change.
  std::vector<uint32_t> pending;
  if (void* transform = Invoke(transform_method, go)) pending.push_back(gc_new(transform, false));
  unsigned visited = 0;
  while (!pending.empty() && visited++ < 1024) {
    const uint32_t root = pending.back();
    pending.pop_back();
    void* transform = root ? gc_target(root) : nullptr;
    if (transform) {
      void* name = Invoke(name_method, transform);
      std::wstring text;
      if (name && string_length(name) > 0 && string_length(name) < 256) {
        text.assign(string_chars(name), string_length(name));
        std::transform(text.begin(), text.end(), text.begin(), [](wchar_t c) { return std::towlower(c); });
      }
      if (text == L"head" || text == L"bip001 head" || text == L"bip001_head"
          || text == L"bip_head" || text == L"j_head" || text == L"head_m") {
        head_root = root;
        break;
      }
      if (void* count = Invoke(child_count_method, transform)) {
        const int n = *static_cast<int*>(object_unbox(count));
        for (int i = 0; i < std::clamp(n, 0, 128); ++i) {
          void* args[] = {&i};
          if (void* child = Invoke(child_method, transform, args)) pending.push_back(gc_new(child, false));
        }
      }
    }
    if (root) gc_free(root);
  }
  for (uint32_t root : pending) if (root) gc_free(root);
  return head_root ? gc_target(head_root) : nullptr;
}

template <typename T>
inline T Read(const void* state, size_t offset) {
  T result;
  std::memcpy(&result, static_cast<const uint8_t*>(state) + offset, sizeof(T));
  return result;
}
template <typename T>
inline void Write(void* state, size_t offset, T value) {
  std::memcpy(static_cast<uint8_t*>(state) + offset, &value, sizeof(T));
}

#include "./camera_mesh_runtime.hpp"
#include "./camera_movement.hpp"

inline void HookedPush(void* brain, void* state, MethodInfo* method) {
  const Values v = ReadValues();
  void* manager = nullptr;
  void* controller = Context(v, &manager);
  if (!controller) {
    // Retain the incoming view while this interaction is preparing.
    // Switching to any other unsupported camera invalidates it immediately.
    void* pending = manager ? Invoke(controller_method, manager) : nullptr;
    if (!pending || object_class(pending) != dialogue::controller_class
        || !v.first_person || !v.first_person_dialogue)
      dialogue::ResetView();
    movement::Update(false, {});
    mesh_runtime::UpdateBinding(false);
    if (head_root || model_root) ReleaseHead();
    uncensor::force_body_visible.store(false, std::memory_order_relaxed);
    status.store(0, std::memory_order_relaxed);
    push_state(brain, state, method);
    return;
  }
  if (!state || Invoke(brain_method, manager) != brain) {
    push_state(brain, state, method);
    return;
  }
  // The verified by-value CameraState is 0x120 bytes. Modify a call-local copy,
  // never the virtual camera's persistent state, so offsets cannot accumulate.
  alignas(16) std::array<uint8_t, 0x120> copy;
  std::memcpy(copy.data(), state, copy.size());
  Vec3 position = Read<Vec3>(state, 0x80);
  const Vec3 correction = Read<Vec3>(state, 0xac);
  Quat orientation = Read<Quat>(state, 0x8c);
  const Quat rotation_correction = Read<Quat>(state, 0xb8);
  const bool conversation = object_class(controller) == dialogue::controller_class;
  if (!Finite(position) || !Finite(correction) || !Unit(orientation) || !Unit(rotation_correction)) {
    dialogue::ResetView();
    movement::Update(false, {});
    mesh_runtime::UpdateBinding(false);
    if (head_root || model_root) ReleaseHead();
    uncensor::force_body_visible.store(false, std::memory_order_relaxed);
    status.store(3, std::memory_order_relaxed);
    push_state(brain, state, method);
    return;
  }
  const bool native_photo_first_person = v.first_person && object_class(controller) == photo_class
      && Read<bool>(controller, native_first_person);
  void* first_person_head = v.first_person && !native_photo_first_person ? Head() : nullptr;
  Vec3 eyes{};
  if (first_person_head) position_injected(first_person_head, &eyes);
  const bool valid_first_person = first_person_head && Finite(eyes);
  if (conversation && !valid_first_person) {
    dialogue::Report("eligible chat, but the player head position is unavailable");
    dialogue::ResetView();
    movement::Release();
    mesh_runtime::UpdateBinding(false);
    ReleaseHead();
    uncensor::force_body_visible.store(false, std::memory_order_relaxed);
    push_state(brain, state, method);
    return;
  }
  orientation = AxisAngle({0, 1, 0}, v.yaw) * orientation;
  const float extra_pitch = valid_first_person
      ? ExpandLookPitch(orientation * rotation_correction, v.look_up_range, v.look_down_range) : 0.f;
  Quat adjusted_correction = rotation_correction * AxisAngle({1, 0, 0}, v.pitch + extra_pitch);
  const bool restored_dialogue_view = !conversation && valid_first_person && v.first_person_dialogue
      && (object_class(controller) == level_class || object_class(controller) == free_class)
      && dialogue::HoldExitView(controller, brain);
  if (conversation || restored_dialogue_view) {
    orientation = dialogue::saved_view;
    adjusted_correction = {0, 0, 0, 1};
  }
  if (conversation) {
    dialogue::was_conversation = true;
  }
  const Quat view = orientation * adjusted_correction;
  const Vec3 right = Rotate(view, {1, 0, 0});
  const Vec3 forward = Rotate(view, {0, 0, 1});
  bool first_person_active = false;
  if (v.first_person) {
    // Native photo first person hides the entire model; leave it under game control.
    if (native_photo_first_person) {
      status.store(4, std::memory_order_relaxed);
    } else if (first_person_head) {
      if (valid_first_person) {
        const float length = std::hypot(forward.x, forward.z);
        const Vec3 planar = length > 0.001f ? Vec3{forward.x / length, 0, forward.z / length} : Vec3{0, 0, 1};
        position = eyes + Vec3{-correction.x, v.eye_height - correction.y, -correction.z}
                   + planar * v.eye_forward;
        Write(copy.data(), 0x28, 0.03f); // Lens.NearClipPlane
        first_person_active = true;
        if(v.hide_head){
          mesh_runtime::Start(v.fill_neck_hole);
          // Complete this character before the camera state is submitted.
          // Cached models have no readback/clone work here. A cold model may
          // stall once, but cannot spend multiple rendered frames half-hidden.
          while(!mesh_runtime::candidates.empty())mesh_runtime::PollOne();
        }
        status.store(2, std::memory_order_relaxed);
      }
    } else {
      status.store(5, std::memory_order_relaxed);
    }
  } else {
    if (head_root || model_root) ReleaseHead();
    status.store(1, std::memory_order_relaxed);
  }
  movement::Update((first_person_active && v.first_person_movement && !conversation)
                       && object_class(controller) != photo_class,
                   forward, v.side_look_limit);
  if (first_person_active) {
    // Visual facing can move the animated head around the model pivot. Anchor
    // the submitted camera to its updated position in this same frame.
    position_injected(first_person_head, &eyes);
    if (Finite(eyes)) {
      const float length = std::hypot(forward.x, forward.z);
      const Vec3 planar = length > .001f ? Vec3{forward.x/length, 0, forward.z/length} : Vec3{0, 0, 1};
      position = eyes + Vec3{-correction.x, v.eye_height-correction.y, -correction.z} + planar*v.eye_forward;
    }
  }
  mesh_runtime::UpdateBinding(first_person_active && v.hide_head);
  uncensor::force_body_visible.store(first_person_active, std::memory_order_relaxed);
  position = position + Vec3{0, v.height, 0} + right * v.horizontal;
  if (!first_person_active) position = position + forward * -v.distance;
  Write(copy.data(), 0x80, position);
  Write(copy.data(), 0x8c, orientation);
  Write(copy.data(), 0xb8, adjusted_correction);
  Write(copy.data(), 0x30, Read<float>(state, 0x30) + v.roll);
  Write(copy.data(), 0x20, first_person_active ? v.first_person_fov : v.fov);
  if (!conversation && !restored_dialogue_view) {
    dialogue::have_view = first_person_active && v.first_person_dialogue
        && (object_class(controller) == level_class || object_class(controller) == free_class);
    if (dialogue::have_view) {
      dialogue::saved_view = view;
      dialogue::CaptureAngles(controller);
    } else {
      dialogue::ResetView();
    }
  }
  push_state(brain, copy.data(), method);
}
inline float HookedParamMax(void* param, MethodInfo* method) {
  const float original = param_max(param, method);
  const Values v = ReadValues();
  void* controller = Context(v);
  return controller && Read<void*>(param, param_controller) == controller
                 && std::isfinite(original) && original > 0.f
             ? original * v.zoom_limit : original;
}
inline float HookedBodyMax(void* body, MethodInfo* method) {
  const float original = body_max(body, method);
  const Values v = ReadValues();
  return Context(v) && std::isfinite(original) && original > 0.f ? original * v.zoom_limit : original;
}

inline bool UpdateHooks(bool attach) {
  std::vector<HANDLE> threads;
  HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD, 0);
  THREADENTRY32 entry{sizeof(entry)};
  bool ready = snapshot != INVALID_HANDLE_VALUE && Thread32First(snapshot, &entry);
  if (ready) do {
    if (entry.th32OwnerProcessID != GetCurrentProcessId() || entry.th32ThreadID == GetCurrentThreadId()) continue;
    HANDLE thread = OpenThread(THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT | THREAD_SET_CONTEXT | THREAD_QUERY_INFORMATION,
                               FALSE, entry.th32ThreadID);
    if (!thread) { if (GetLastError() == ERROR_INVALID_PARAMETER) continue; ready = false; break; }
    threads.push_back(thread);
  } while (Thread32Next(snapshot, &entry));
  if (snapshot != INVALID_HANDLE_VALUE) CloseHandle(snapshot);
  if (ready) {
    ready = DetourTransactionBegin() == NO_ERROR;
    if (ready) {
      for (HANDLE thread : threads) if (DetourUpdateThread(thread) != NO_ERROR) { ready = false; break; }
      if (ready) ready = (attach ? DetourAttach(&push_state, HookedPush) : DetourDetach(&push_state, HookedPush)) == NO_ERROR
                         && (attach ? DetourAttach(&param_max, HookedParamMax) : DetourDetach(&param_max, HookedParamMax)) == NO_ERROR
                         && (attach ? DetourAttach(&body_max, HookedBodyMax) : DetourDetach(&body_max, HookedBodyMax)) == NO_ERROR
                         && (attach ? DetourAttach(&mesh_runtime::native_awake, mesh_runtime::HookedMeshAwake) : DetourDetach(&mesh_runtime::native_awake, mesh_runtime::HookedMeshAwake)) == NO_ERROR;
      if (ready) ready = DetourTransactionCommit() == NO_ERROR;
      else DetourTransactionAbort();
    }
  }
  for (HANDLE thread : threads) CloseHandle(thread);
  return ready;
}

inline bool Resolve() {
  if (!npc_distance::detail::SupportedBuild()) return false;
  HMODULE module = GetModuleHandleW(L"GameAssembly.dll");
  using ValueSize = int32_t (*)(void*, uint32_t*);
  ValueSize value_size = nullptr;
  const void* (*return_type)(Il2CppMethod) = nullptr;
  void* (*class_from_type)(const void*) = nullptr;
  uint32_t (*method_flags)(Il2CppMethod, uint32_t*) = nullptr;
  int (*field_flags)(void*) = nullptr;
  ResolveICall icall = nullptr;
  if (!ResolveExport(module, "il2cpp_field_static_get_value", &static_get)
      || !ResolveExport(module, "il2cpp_object_get_class", &object_class)
      || !ResolveExport(module, "il2cpp_gchandle_new", &gc_new)
      || !ResolveExport(module, "il2cpp_gchandle_free", &gc_free)
      || !ResolveExport(module, "il2cpp_gchandle_get_target", &gc_target)
      || !ResolveExport(module, "il2cpp_string_length", &string_length)
      || !ResolveExport(module, "il2cpp_string_chars", &string_chars)
      || !ResolveExport(module, "il2cpp_class_value_size", &value_size)
      || !ResolveExport(module, "il2cpp_method_get_return_type", &return_type)
      || !ResolveExport(module, "il2cpp_class_from_type", &class_from_type)
      || !ResolveExport(module, "il2cpp_method_get_flags", &method_flags)
      || !ResolveExport(module, "il2cpp_field_get_flags", &field_flags)
      || !ResolveExport(module, "il2cpp_resolve_icall", &icall)) return false;
  position_injected = reinterpret_cast<decltype(position_injected)>(icall("UnityEngine.Transform::get_position_Injected(UnityEngine.Vector3&)"));
  const auto game = FindImage("Gameplay.Beyond.dll");
  const auto cine = FindImage("Cinemachine.dll");
  const auto unity = FindImage("UnityEngine.CoreModule.dll");
  if (!game || !cine || !unity || !position_injected) return false;
  dialogue::available = dialogue::Resolve(game, field_flags, class_from_type, return_type);
  Log(reshade::log::level::info, dialogue::available
      ? "Endfield enhancer: first-person conversation API resolved"
      : "Endfield enhancer: first-person conversation API resolution failed");
  auto state_class = class_from_name(cine, "Cinemachine", "CameraState");
  auto lens_class = class_from_name(cine, "Cinemachine", "LensSettings");
  auto param_class = class_from_name(game, "Beyond.Gameplay.View", "CameraControlParam");
  auto instance_class = class_from_name(game, "Beyond.Gameplay", "GameInstance");
  photo_class = class_from_name(game, "Beyond.Gameplay.View", "SnapshotCameraController");
  level_class = class_from_name(game, "Beyond.Gameplay.View", "LevelCameraController");
  free_class = class_from_name(game, "Beyond.Gameplay.View", "LevelFreeLookCameraController");
  if (!state_class || !lens_class || !param_class || !instance_class || !photo_class || !level_class || !free_class) return false;
  uint32_t alignment = 0;
  if (value_size(state_class, &alignment) != 0x120) return false;
  // il2cpp_field_get_offset includes the boxed object's 16-byte header for value types.
  for (const auto& field : std::array<std::pair<const char*, size_t>, 5>{{
           {"Lens", 0x30}, {"RawPosition", 0x90}, {"RawOrientation", 0x9c},
           {"PositionCorrection", 0xbc}, {"OrientationCorrection", 0xc8}}}) {
    void* info = class_get_field_from_name(state_class, field.first);
    if (!info || field_get_offset(info) != field.second) return false;
  }
  for (const auto& field : std::array<std::pair<const char*, size_t>, 3>{{
           {"FieldOfView", 0x10}, {"NearClipPlane", 0x18}, {"Dutch", 0x20}}}) {
    void* info = class_get_field_from_name(lens_class, field.first);
    if (!info || field_get_offset(info) != field.second) return false;
  }
  manager_field = class_get_field_from_name(instance_class, "cameraManager");
  void* first = class_get_field_from_name(photo_class, "<isFirstPerson>k__BackingField");
  void* owner = class_get_field_from_name(param_class, "<controller>k__BackingField");
  if (!manager_field || !(field_flags(manager_field) & 0x10) || !first || !owner) return false;
  native_first_person = field_get_offset(first);
  param_controller = field_get_offset(owner);
  if (param_controller != 0x10 || native_first_person < 0x10 || native_first_person > 0x400) return false;
  controller_method = FindMethod(game, "Beyond.Gameplay.View", "CameraManager", "get_curActiveController", 0);
  brain_method = FindMethod(game, "Beyond.Gameplay.View", "CameraManager", "get_cinemachineBrainCpt", 0);
  character_method = FindMethod(game, "Beyond.Gameplay.Core", "PlayerController", "GetMainCharacter", 0);
  model_method = FindMethod(game, "Beyond.Gameplay.Core", "Entity", "get_modelCom", 0);
  model_go_method = FindMethod(game, "Beyond.Gameplay.View", "BaseModelComponent", "GetModelGo", 0);
  transform_method = FindMethod(unity, "UnityEngine", "GameObject", "get_transform", 0);
  child_count_method = FindMethod(unity, "UnityEngine", "Transform", "get_childCount", 0);
  child_method = FindMethod(unity, "UnityEngine", "Transform", "GetChild", 1);
  name_method = FindMethod(unity, "UnityEngine", "Object", "get_name", 0);
  if (!controller_method || !brain_method || !character_method || !model_method || !model_go_method
      || !transform_method || !child_count_method || !child_method || !name_method) return false;
  if (!(method_flags(character_method, nullptr) & 0x10)
      || class_from_type(return_type(character_method)) != class_from_name(game, "Beyond.Gameplay.Core", "Entity")
      || class_from_type(return_type(model_go_method)) != class_from_name(unity, "UnityEngine", "GameObject")) return false;
  auto* push = static_cast<MethodInfo*>(FindMethod(cine, "Cinemachine", "CinemachineBrain", "PushStateToUnityCamera", 1));
  auto* max = static_cast<MethodInfo*>(FindMethod(game, "Beyond.Gameplay.View", "CameraControlParam", "get_maxZoom", 0));
  auto* body = static_cast<MethodInfo*>(FindMethod(game, "Beyond.Gameplay.View", "Dynamic3rdPersonFollow", "get_ZoomScaleMax", 0));
  if (!push || !max || !body) return false;
  entries = {push->method_pointer, max->method_pointer, body->method_pointer};
  constexpr std::array<size_t, 3> rvas{0x3224f20, 0x35c85c0, 0x5ee8264};
  constexpr std::array<std::array<uint8_t, 16>, 3> signatures{{
      {0x40,0x55,0x53,0x57,0x48,0x8d,0xac,0x24,0x70,0xff,0xff,0xff,0x48,0x81,0xec,0x90},
      {0x40,0x57,0x48,0x83,0xec,0x30,0x48,0x8b,0xf9,0x48,0x8b,0x0d,0xc0,0xaf,0xa2,0x09},
      {0x40,0x53,0x48,0x83,0xec,0x20,0x80,0x3d,0x37,0x75,0xfd,0x07,0x00,0x48,0x8b,0xd9}}};
  const auto* base = reinterpret_cast<const uint8_t*>(module);
  const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(base);
  const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS64*>(base + dos->e_lfanew);
  for (size_t i = 0; i < rvas.size(); ++i) {
    if (entries[i] != base + rvas[i] || std::memcmp(entries[i], signatures[i].data(), 16)) return false;
    unsigned matches = 0;
    const auto* sections = IMAGE_FIRST_SECTION(nt);
    for (unsigned j = 0; j < nt->FileHeader.NumberOfSections; ++j) {
      if (!(sections[j].Characteristics & IMAGE_SCN_MEM_EXECUTE)) continue;
      const auto* begin = base + sections[j].VirtualAddress;
      const auto* end = begin + sections[j].Misc.VirtualSize;
      for (const auto* at = begin; (at = std::search(at, end, signatures[i].begin(), signatures[i].end())) != end; ++at) ++matches;
    }
    if (matches != 1) return false;
  }
  if (!movement::Resolve(game, value_size, class_from_type)) return false;
  if (!mesh_runtime::ResolveCloneAwake(icall)) return false;
  entries[3] = reinterpret_cast<void*>(mesh_runtime::native_awake);
  push_state = reinterpret_cast<PushState>(entries[0]);
  param_max = reinterpret_cast<GetFloat>(entries[1]);
  body_max = reinterpret_cast<GetFloat>(entries[2]);
  return true;
}
}  // namespace detail

inline void OnPresent() {
  using namespace detail;
  const auto clamp = [](float value, float low, float high, float fallback = 0.f) {
    return std::isfinite(value) ? std::clamp(value, low, high) : fallback;
  };
  // Retire the previous zero = native FOV sentinel when loading older settings.
  fov = fov >= 20.f ? clamp(fov,20,120,60) : 60.f;
  AcquireSRWLockExclusive(&values_lock);
  values = {enabled >= 0.5f && !unavailable, gameplay >= 0.5f, photo >= 0.5f, first_person >= 0.5f, hide_head >= 0.5f, fill_neck_hole >= 0.5f,
            clamp(height,-10,10), clamp(horizontal,-10,10), clamp(distance,-10,50),
            clamp(pitch,-89,89), clamp(yaw,-180,180), clamp(roll,-180,180),
            fov, clamp(zoom_limit,1,5,1),
            clamp(eye_height,-0.5f,0.5f,0.05f), clamp(eye_forward,0,0.5f,0.03f),
            extend_look_range >= 0.5f ? 1.10f : 1.f, extend_look_range >= 0.5f ? 1.50f : 1.f,
            clamp(first_person_fov,20,120,60), first_person_movement >= 0.5f,
            clamp(side_look_limit,0,90,60), first_person_dialogue >= .5f};
  ReleaseSRWLockExclusive(&values_lock);
  if (installed || unavailable || enabled < 0.5f || shutting_down.load(std::memory_order_relaxed)) return;
  if (present_count != 1 && present_count % 120 != 0) return;
  if (!ResolveApi() || !FindImage("Gameplay.Beyond.dll")) return;
  if (!Resolve() || !UpdateHooks(true)) {
    unavailable = true;
    AcquireSRWLockExclusive(&values_lock);
    values.enabled = false;
    ReleaseSRWLockExclusive(&values_lock);
    Log(reshade::log::level::warning, "Endfield enhancer: Camera methods or layout unsupported; camera hooks refused.");
    return;
  }
  for (size_t i = 0; i < entries.size(); ++i) std::memcpy(patched[i].data(), entries[i], patched[i].size());
  installed = true;
  Log(reshade::log::level::info, "Endfield enhancer: Camera controls installed.");
}
inline void Shutdown() {
  using namespace detail;
  AcquireSRWLockExclusive(&values_lock);
  values.enabled = false;
  ReleaseSRWLockExclusive(&values_lock);
  uncensor::force_body_visible.store(false, std::memory_order_relaxed);
  if (!installed) return;
  // Unity controller setters must run on the camera's game thread. Normal
  // toggle-off cleanup happens there; process teardown must not call them from
  // an arbitrary loader thread. Main-thread unload can restore immediately.
  if (movement::game_thread.load() == GetCurrentThreadId()) movement::Release();
  else if (movement::attached)
    Log(reshade::log::level::warning, "Endfield enhancer: off-thread unload with first-person facing active; disable Camera Controls before hot-unloading.");
  for (size_t i = 0; i < entries.size(); ++i) {
    if (std::memcmp(entries[i], patched[i].data(), patched[i].size())) {
      Log(reshade::log::level::error, "Endfield enhancer: Camera hook changed; refusing to overwrite another patch.");
      return;
    }
  }
  if (UpdateHooks(false)) { installed = false; ReleaseHead(); dialogue::ResetView(); }
  else Log(reshade::log::level::error, "Endfield enhancer: Camera hook detach failed.");
}
}  // namespace endfield::camera

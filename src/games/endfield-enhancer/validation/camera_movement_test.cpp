#define NOMINMAX
#include <Windows.h>
#include <algorithm>
#include <atomic>
#include <cassert>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <utility>
#include "../camera_math.hpp"
namespace reshade::log {
enum class level { info };
}
namespace endfield::camera::detail {
using Il2CppMethod = void*;
using Il2CppImage = void*;
inline void Log(reshade::log::level, const char*) {}
inline void* FindImage(const char*) { return nullptr; }
inline void* FindMethod(void*, const char*, const char*, const char*, int) { return nullptr; }
inline void* class_from_name(void*, const char*, const char*) { return nullptr; }
inline void* class_get_field_from_name(void*, const char*) { return nullptr; }
inline size_t field_get_offset(void*) { return 0; }
template <class T>
bool ResolveExport(HMODULE, const char*, T*) { return false; }
template <class T>
T Read(const void* p, size_t offset) {
  T v;
  std::memcpy(&v, static_cast<const char*>(p) + offset, sizeof(v));
  return v;
}
inline std::unordered_map<uint32_t, void*> roots;
inline uint32_t next_root = 1;
inline uint32_t gc_new(void* p, bool) {
  roots[next_root] = p;
  return next_root++;
}
inline void gc_free(uint32_t id) { roots.erase(id); }
inline void* gc_target(uint32_t id) { return roots.at(id); }
inline void* object_unbox(void* p) { return p; }
struct Transform {
  Quat local{0, 0, 0, 1};
  Transform* parent = nullptr;
  bool alive = true;
} model, skeleton;
inline int entity, component, animator, input;
inline void* input_pointer = &input;
inline Vec3 move{};
inline bool missing_root = false, throw_set = false;
enum Method { Character = 1,
              Started,
              Released,
              Paused,
              Cinematic,
              Component,
              Animator,
              TransformGet,
              Find,
              Parent,
              AliveMethod,
              Local,
              World,
              SetLocal,
              SetWorld,
              Movement,
              Manual };
inline Il2CppMethod Id(Method id) { return reinterpret_cast<void*>(uintptr_t(id)); }
inline Il2CppMethod character_method = Id(Character);
inline Quat WorldOf(Transform* t) { return t->parent ? WorldOf(t->parent) * t->local : t->local; }
inline void* runtime_invoke(Il2CppMethod method, void* object, void** args, void** exception) {
  static bool yes = true, no = false;
  static Quat rotation;
  auto* t = static_cast<Transform*>(object);
  switch (static_cast<Method>(reinterpret_cast<uintptr_t>(method))) {
    case Character:    return &entity;
    case Started:      return &yes;
    case Released:
    case Paused:
    case Cinematic:    return &no;
    case Component:    return &component;
    case Animator:     return &animator;
    case TransformGet: return &model;
    case Find:         assert(object == &model); return missing_root ? nullptr : &skeleton;
    case Parent:       return t->parent;
    case AliveMethod:  return &static_cast<Transform*>(args[0])->alive;
    case Local:        return &t->local;
    case World:        rotation = WorldOf(t); return &rotation;
    case SetLocal:
    case SetWorld:
      if (throw_set) {
        *exception = &entity;
        return nullptr;
      }
      // Any attempted write to the Animator/model transform is a test failure.
      assert(t == &skeleton);
      rotation = *static_cast<Quat*>(args[0]);
      if (method == Id(SetWorld)) {
        auto p = WorldOf(t->parent);
        rotation = Quat{-p.x, -p.y, -p.z, p.w} * rotation;
      }
      t->local = rotation;
      return nullptr;
    case Movement: return &input_pointer;
    case Manual:   return &move;
  }
  return nullptr;
}
#include "../camera_movement.hpp"
}  // namespace endfield::camera::detail
int main() {
  using namespace endfield::camera;
  using namespace endfield::camera::detail;
  assert(std::abs(LateralFacingYaw({1, 0, 0}, {0, 0, 1}) - 45) < .001f);
  assert(std::abs(LateralFacingYaw({-1, 0, 0}, {0, 0, 1}) + 45) < .001f);
  assert(LateralFacingYaw({0, 0, -1}, {0, 0, 1}) == 0);
  assert(LateralFacingYaw({.00001f, 0, -1}, {0, 0, 1}) == 0);
  for (float camera_yaw : {0.f, 70.f, 179.f, -179.f}) {
    for (float drift : {-20.f, -5.f, -.1f, .1f, 5.f, 20.f}) {
      const Vec3 view = Rotate(AxisAngle({0, 1, 0}, camera_yaw), {0, 0, 1});
      const Vec3 backward = Rotate(AxisAngle({0, 1, 0}, camera_yaw + drift), {0, 0, -1});
      assert(LateralFacingYaw(backward, view) == 0);
      assert(LateralFacingYaw(backward * .15f, view) == 0);
    }
  }
  assert(LateralFacingYaw({-1, 0, -1}, {0, 0, 1}) == 45);
  assert(LateralFacingYaw({1, 0, -1}, {0, 0, 1}) == -45);
  // The same opposite facing must hold with a rotated camera.
  assert(LateralFacingYaw({-1, 0, -1}, {1, 0, 0}) == -45);
  assert(LateralFacingYaw({-1, 0, 1}, {1, 0, 0}) == 45);
  assert(LateralFacingYaw({-1, 0, 0}, {1, 0, 0}) == 0);
  assert(std::abs(LateralFacingYaw({1, 0, 1}, {0, 0, 1}) - 31.819805f) < .001f);
  assert(std::abs(LateralFacingYaw({0, 0, -1}, {1, 0, 0}) - 45) < .001f);
  assert(LateralFacingYaw({}, {0, 0, 1}) == 0);
  using namespace movement;
  started = Id(Started);
  released = Id(Released);
  paused = Id(Paused);
  cinematic = Id(Cinematic);
  get_component = Id(Component);
  get_animator = Id(Animator);
  component_transform = Id(TransformGet);
  find_transform = Id(Find);
  parent_transform = Id(Parent);
  object_alive = Id(AliveMethod);
  local_rotation = Id(Local);
  world_rotation = Id(World);
  set_local_rotation = Id(SetLocal);
  set_world_rotation = Id(SetWorld);
  get_movement = Id(Movement);
  manual_move = Id(Manual);
  input_offset = 0;
  new_string = [](const char*) -> void* { return &input; };
  skeleton.parent = &model;
  model.local = AxisAngle({0, 1, 0}, 90);
  Update(true, {0, 0, 1});
  assert(attached);
  assert(SameRotation(WorldOf(&skeleton), {0, 0, 0, 1}));
  assert(SameRotation(model.local, AxisAngle({0, 1, 0}, 90)));
  // Native movement/dodge may turn the model; presentation still must not write it.
  model.local = AxisAngle({0, 1, 0}, -60);
  Update(true, {0, 0, 1});
  assert(SameRotation(WorldOf(&skeleton), {0, 0, 0, 1}));
  assert(SameRotation(model.local, AxisAngle({0, 1, 0}, -60)));
  // Idle free look holds world heading even if native model rotation changes.
  move = {};
  Update(true, Rotate(AxisAngle({0, 1, 0}, 40), {0, 0, 1}));
  assert(SameRotation(WorldOf(&skeleton), {0, 0, 0, 1}));
  Update(true, Rotate(AxisAngle({0, 1, 0}, 80), {0, 0, 1}));
  assert(SameRotation(WorldOf(&skeleton), AxisAngle({0, 1, 0}, 20)));
  Update(true, Rotate(AxisAngle({0, 1, 0}, -50), {0, 0, 1}));
  assert(SameRotation(WorldOf(&skeleton), AxisAngle({0, 1, 0}, 10)));
  Update(true, Rotate(AxisAngle({0, 1, 0}, 40), {0, 0, 1}), 15);
  assert(SameRotation(WorldOf(&skeleton), AxisAngle({0, 1, 0}, 25)));
  Update(true, Rotate(AxisAngle({0, 1, 0}, 170), {0, 0, 1}), 0);
  Update(true, Rotate(AxisAngle({0, 1, 0}, -170), {0, 0, 1}));
  assert(SameRotation(WorldOf(&skeleton), AxisAngle({0, 1, 0}, 170)));
  // Preserve a sidestep heading on key release, then smoothly resume movement.
  held_yaw = 45;
  Update(true, {0, 0, 1});
  assert(SameRotation(WorldOf(&skeleton), AxisAngle({0, 1, 0}, 45)));
  move = {0, 0, 1};
  facing_time = GetTickCount64() - 100;
  Update(true, {0, 0, 1});
  assert(held_yaw > 0 && held_yaw < 45);
  // Straight backward must settle centered after either idle look edge,
  // regardless of the configured standing limit or previous turn side.
  for (float limit : {15.f, 60.f, 90.f}) {
    for (float side : {-1.f, 1.f}) {
      held_yaw = lateral_yaw = side * limit;
      move = {.08f * side, 0, -1};
      for (int frame = 0; frame < 12; ++frame) {
        facing_time = GetTickCount64() - 100;
        Update(true, {0, 0, 1}, limit);
      }
      assert(std::abs(held_yaw) < .001f);
      assert(SameRotation(WorldOf(&skeleton), {0, 0, 0, 1}));
    }
  }
  Release();
  assert(!attached);
  assert(held_yaw == 0);
  assert(SameRotation(skeleton.local, {0, 0, 0, 1}));
  Update(true, {0, 0, 1});
  skeleton.local = AxisAngle({0, 1, 0}, 15);
  Release();
  assert(SameRotation(skeleton.local, AxisAngle({0, 1, 0}, 15)));
  skeleton.local = {0, 0, 0, 1};
  Update(true, {0, 0, 1});
  throw_set = true;
  assert(!RestoreVisual());
  assert(attached);
  throw_set = false;
  assert(RestoreVisual());
  missing_root = true;
  Update(true, {0, 0, 1});
  assert(!attached);
  missing_root = false;
  Update(true, {0, 0, 1});
  Update(false, {});
  assert(!attached);
  assert(roots.empty());
}

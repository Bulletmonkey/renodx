#pragma once

// Included inside camera::detail. Read-only eligibility; no dialogue state writes.
namespace dialogue {
inline void* controller_class = nullptr;
inline void* manager_field = nullptr;
inline void* type_field = nullptr;
inline int normal_type = -1;
inline void (*field_get)(void*, void*, void*) = nullptr;
inline Il2CppMethod playing, preparing, timeline, interact_controller;
inline Il2CppMethod camera_param, horizontal, vertical, set_horizontal, set_vertical;
inline Il2CppMethod level_camera;
inline Il2CppMethod active_blend;
inline void* blend_class = nullptr;
inline void* blend_time = nullptr;
inline void* blend_duration = nullptr;
inline void* blend_target = nullptr;
inline void* frame_stack = nullptr;
inline void* frame_blend = nullptr;
inline void* frame_class = nullptr;
inline Il2CppMethod frame_count, frame_item;
inline void* transition_time = nullptr;
inline void* input_lock_time = nullptr;
inline void* level_camera_class = nullptr;
inline void (*field_set)(void*, void*, void*) = nullptr;
inline uint32_t param_root = 0;
inline float saved_horizontal = 0.f, saved_vertical = 0.f;
inline bool was_conversation = false;
inline bool available = false;
inline bool have_view = false;
inline Quat saved_view{0, 0, 0, 1};
inline const char* last_result = nullptr;

inline void ResetView() {
  have_view = was_conversation = false;
  if (param_root) gc_free(param_root);
  param_root = 0;
}

inline void CaptureAngles(void* controller) {
  void* param = Invoke(camera_param, controller);
  void* h = param ? Invoke(horizontal, param) : nullptr;
  void* v = param ? Invoke(vertical, param) : nullptr;
  if (!h || !v) { ResetView(); return; }
  const float x = *static_cast<float*>(object_unbox(h)), y = *static_cast<float*>(object_unbox(v));
  if (!std::isfinite(x) || !std::isfinite(y)) { ResetView(); return; }
  if (!param_root || gc_target(param_root) != param) {
    if (param_root) gc_free(param_root);
    param_root = gc_new(param, false);
  }
  if (!param_root) { ResetView(); return; }
  saved_horizontal = x;
  saved_vertical = y;
}

inline bool RestoreAngles(void* controller) {
  if (!was_conversation) return false;
  was_conversation = false;
  void* param = Invoke(camera_param, controller);
  if (!have_view || !param_root || !param || gc_target(param_root) != param) { ResetView(); return false; }
  void* old_h = Invoke(horizontal, param);
  void* old_v = Invoke(vertical, param);
  if (!old_h || !old_v) { ResetView(); return false; }
  float original_h = *static_cast<float*>(object_unbox(old_h)), original_v = *static_cast<float*>(object_unbox(old_v));
  if (!std::isfinite(original_h) || !std::isfinite(original_v)) { ResetView(); return false; }
  // Use the game's immediate angle setters: they update both target/current
  // values and stop the angle tween without touching zoom or gameplay facing.
  bool tween = false;
  void* args_h[]{&saved_horizontal, &tween};
  void* args_v[]{&saved_vertical, &tween};
  void* exception = nullptr;
  runtime_invoke(set_horizontal, param, args_h, &exception);
  if (!exception) runtime_invoke(set_vertical, param, args_v, &exception);
  if (exception) {
    void* undo_h[]{&original_h, &tween};
    void* undo_v[]{&original_v, &tween};
    exception = nullptr;
    runtime_invoke(set_horizontal, param, undo_h, &exception);
    exception = nullptr;
    runtime_invoke(set_vertical, param, undo_v, &exception);
    ResetView();
    return false;
  }
  return true;
}

inline bool Report(const char* reason, bool eligible = false) {
  if (last_result != reason) {
    last_result = reason;
    Log(reshade::log::level::info, (std::string("Endfield enhancer: first-person conversation: ") + reason).c_str());
  }
  return eligible;
}

inline bool CompleteGameplayBlend(void* blend, void* camera) {
  if (!blend || object_class(blend) != blend_class) return false;
  void* target = nullptr;
  float elapsed = 0.f, duration = 0.f;
  field_get(blend, blend_target, &target);
  field_get(blend, blend_time, &elapsed);
  field_get(blend, blend_duration, &duration);
  if (target != camera || !std::isfinite(elapsed) || !std::isfinite(duration) || duration < 0.f) return false;
  field_set(blend, blend_time, &duration);
  return true;
}

inline bool HoldExitView(void* controller, void* brain) {
  const bool exiting = was_conversation;
  if (!RestoreAngles(controller)) {
    if (exiting) Report("exit angle restore failed; camera parameters unavailable or changed");
    return false;
  }
  // Endfield's own virtual-camera transition is independent of Brain.ActiveBlend.
  // Its getters test these two timers (> 0) for transition and input locking.
  if (void* camera = Invoke(level_camera, controller)) {
    if (object_class(camera) == level_camera_class) {
      float transition = 0.f, input_lock = 0.f;
      field_get(camera, transition_time, &transition);
      field_get(camera, input_lock_time, &input_lock);
      if (std::isfinite(transition) && std::isfinite(input_lock)) {
        float zero = 0.f;
        field_set(camera, transition_time, &zero);
        field_set(camera, input_lock_time, &zero);
        // ComputeCurrentBlend copies frame[0].blend into workingBlend, then
        // into ActiveBlend every frame. Complete the stored source as well as
        // the current result; changing only ActiveBlend lasts one frame.
        bool finished_source = false;
        void* stack = nullptr;
        field_get(brain, frame_stack, &stack);
        void* count = stack ? Invoke(frame_count, stack) : nullptr;
        if (count && *static_cast<int*>(object_unbox(count)) > 0) {
          int index = 0;
          void* args[]{&index};
          if (void* frame = Invoke(frame_item, stack, args)) {
            if (object_class(frame) == frame_class) {
              void* source = nullptr;
              field_get(frame, frame_blend, &source);
              finished_source = CompleteGameplayBlend(source, camera);
            }
          }
        }
        const bool finished_blend = CompleteGameplayBlend(Invoke(active_blend, brain), camera);
        Log(reshade::log::level::info,
            (std::string("Endfield enhancer: first-person conversation exit: native transition=")
             + std::to_string(transition) + " input lock=" + std::to_string(input_lock)
             + " stored blend completed=" + (finished_source ? "yes" : "no")
             + " outer blend completed=" + (finished_blend ? "yes" : "no (absent or different target)")).c_str());
        return true;
      }
    }
  }
  Report("exit angles restored, but gameplay transition camera unavailable");
  return true; // This frame was evaluated before restoring the camera angles.
}
inline bool Eligible(void* controller) {
  if (!available) return Report("dialogue API resolution failed");
  if (object_class(controller) != controller_class) return Report("active camera is not the NPC interaction camera");
  if (!have_view) return Report("no saved first-person view");
  void* manager = nullptr;
  static_get(manager_field, &manager);
  if (!manager) return Report("no dialogue manager");
  int type = -1;
  field_get(manager, type_field, &type);
  if (type != normal_type) return Report("cinematic or non-normal dialogue");
  // A failed managed call must not be mistaken for an absent timeline.
  auto call = [&](Il2CppMethod method) -> void* {
    void* exception = nullptr;
    void* result = runtime_invoke(method, manager, nullptr, &exception);
    if (exception) throw std::runtime_error("Dialogue context unavailable");
    return result;
  };
  try {
    void* active = call(playing);
    void* pending = call(preparing);
    if (!active || !pending) return Report("dialogue state unavailable");
    // Cover preparation too, so the native interaction framing cannot appear
    // while a normal NPC dialogue is starting.
    if (!*static_cast<bool*>(object_unbox(active)) && !*static_cast<bool*>(object_unbox(pending)))
      return Report("dialogue is neither playing nor preparing");
    if (call(timeline)) return Report("dialogue timeline is active");
    if (call(interact_controller) != controller) return Report("dialogue camera ownership mismatch");
    return Report("eligible NPC chat; applying first-person view", true);
  } catch (...) {
    return Report("managed dialogue query failed");
  }
}

inline bool Resolve(Il2CppImage game, int (*field_flags)(void*), void* (*class_from_type)(const void*),
                    const void* (*return_type)(Il2CppMethod)) {
  const auto world = class_from_name(game, "Beyond.Gameplay.Core", "GameWorld");
  const auto manager = class_from_name(game, "Beyond.Gameplay.Core", "DialogManager");
  controller_class = class_from_name(game, "Beyond.Gameplay.View", "InteractNpcCameraController");
  if (!world || !manager || !controller_class
      || !ResolveExport(GetModuleHandleW(L"GameAssembly.dll"), "il2cpp_field_get_value", &field_get)) return false;
  manager_field = class_get_field_from_name(world, "dialogManager");
  type_field = class_get_field_from_name(manager, "m_dialogType");
  const void* (*field_type)(void*) = nullptr;
  if (!type_field || !ResolveExport(GetModuleHandleW(L"GameAssembly.dll"), "il2cpp_field_get_type", &field_type)) return false;
  void* normal = class_get_field_from_name(class_from_type(field_type(type_field)), "Normal");
  if (!normal || !(field_flags(normal) & 0x10)) return false;
  static_get(normal, &normal_type);
  if (!manager_field || !(field_flags(manager_field) & 0x10) || (field_flags(type_field) & 0x10)) return false;
  playing = FindMethod(game, "Beyond.Gameplay.Core", "DialogManager", "get_isPlaying", 0);
  preparing = FindMethod(game, "Beyond.Gameplay.Core", "DialogManager", "get_isPreparing", 0);
  timeline = FindMethod(game, "Beyond.Gameplay.Core", "DialogManager", "get_playingTimeline", 0);
  interact_controller = FindMethod(game, "Beyond.Gameplay.Core", "DialogManager", "get_interactNpcCamController", 0);
  camera_param = FindMethod(game, "Beyond.Gameplay.View", "LevelCameraController", "get_param", 0);
  horizontal = FindMethod(game, "Beyond.Gameplay.View", "CameraControlParam", "get_currHorizontalAngle", 0);
  vertical = FindMethod(game, "Beyond.Gameplay.View", "CameraControlParam", "get_currVerticalValue", 0);
  set_horizontal = FindMethod(game, "Beyond.Gameplay.View", "CameraControlParam", "SetHorizontalAngle", 2);
  set_vertical = FindMethod(game, "Beyond.Gameplay.View", "CameraControlParam", "SetVerticalValue", 2);
  const auto core = FindImage("mscorlib.dll");
  if (!core) return false;
  const auto cine = FindImage("Cinemachine.dll");
  if (!cine) return false;
  blend_class = class_from_name(cine, "Cinemachine", "CinemachineBlend");
  active_blend = FindMethod(cine, "Cinemachine", "CinemachineBrain", "get_ActiveBlend", 0);
  if (!blend_class || !active_blend || class_from_type(return_type(active_blend)) != blend_class) return false;
  blend_time = class_get_field_from_name(blend_class, "TimeInBlend");
  blend_duration = class_get_field_from_name(blend_class, "Duration");
  blend_target = class_get_field_from_name(blend_class, "CamB");
  if (!blend_target || (field_flags(blend_target) & 0x10)
      || class_from_type(field_type(blend_target)) != class_from_name(cine, "Cinemachine", "ICinemachineCamera")) return false;
  for (auto field : {blend_time, blend_duration})
    if (!field || (field_flags(field) & 0x10)
        || class_from_type(field_type(field)) != class_from_name(core, "System", "Single")) return false;
  Il2CppMethod (*get_method)(void*, const char*, int) = nullptr;
  if (!ResolveExport(GetModuleHandleW(L"GameAssembly.dll"), "il2cpp_class_get_method_from_name", &get_method)) return false;
  frame_stack = class_get_field_from_name(class_from_name(cine, "Cinemachine", "CinemachineBrain"), "mFrameStack");
  if (!frame_stack || (field_flags(frame_stack) & 0x10) || field_get_offset(frame_stack) != 0x88) return false;
  frame_count = get_method(class_from_type(field_type(frame_stack)), "get_Count", 0);
  frame_item = get_method(class_from_type(field_type(frame_stack)), "get_Item", 1);
  if (!frame_count || !frame_item || class_from_type(return_type(frame_count)) != class_from_name(core, "System", "Int32")) return false;
  frame_class = class_from_type(return_type(frame_item));
  if (!frame_class) return false;
  frame_blend = class_get_field_from_name(frame_class, "blend");
  if (!frame_blend || (field_flags(frame_blend) & 0x10) || field_get_offset(frame_blend) != 0x18
      || class_from_type(field_type(frame_blend)) != blend_class
      || field_get_offset(blend_time) != 0x390 || field_get_offset(blend_duration) != 0x394) return false;
  level_camera = FindMethod(game, "Beyond.Gameplay.View", "LevelCameraController", "get_levelVirtualCamera", 0);
  level_camera_class = class_from_name(game, "Beyond.Gameplay.View", "LevelVirtualCamera");
  if (!level_camera_class || !ResolveExport(GetModuleHandleW(L"GameAssembly.dll"), "il2cpp_field_set_value", &field_set)) return false;
  transition_time = class_get_field_from_name(level_camera_class, "m_transitionRemainingTime");
  input_lock_time = class_get_field_from_name(level_camera_class, "m_playerInputDisableTime");
  for (auto field : {transition_time, input_lock_time})
    if (!field || (field_flags(field) & 0x10)
        || class_from_type(field_type(field)) != class_from_name(core, "System", "Single")) return false;
  // Verified against get_inTransition and get_disablePlayerInput disassembly
  // for the exact supported GameAssembly build already checked by camera::Resolve.
  if (field_get_offset(transition_time) != 0x700 || field_get_offset(input_lock_time) != 0x730) return false;
  const void* (*parameter)(Il2CppMethod, uint32_t) = nullptr;
  if (!core || !playing || !preparing || !timeline || !interact_controller || !camera_param
      || !horizontal || !vertical || !set_horizontal || !set_vertical || !level_camera
      || !ResolveExport(GetModuleHandleW(L"GameAssembly.dll"), "il2cpp_method_get_param", &parameter)) return false;
  for (auto setter : {set_horizontal, set_vertical})
    if (class_from_type(parameter(setter, 0)) != class_from_name(core, "System", "Single")
        || class_from_type(parameter(setter, 1)) != class_from_name(core, "System", "Boolean")) return false;
  return class_from_type(return_type(playing)) == class_from_name(core, "System", "Boolean")
      && class_from_type(return_type(preparing)) == class_from_name(core, "System", "Boolean")
      && class_from_type(field_type(manager_field)) == manager
      && class_from_type(return_type(horizontal)) == class_from_name(core, "System", "Single")
      && class_from_type(return_type(vertical)) == class_from_name(core, "System", "Single")
      && class_from_type(return_type(level_camera)) == level_camera_class;
}
}  // namespace dialogue

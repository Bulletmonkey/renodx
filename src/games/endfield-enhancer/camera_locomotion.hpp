#pragma once

// Included inside movement. These are full-path state hashes from the native
// character controllers, not replacement clips. HasState gates each write.
namespace locomotion {
inline Il2CppMethod current_state, next_state, transitioning, state_hash, state_time, has_state, play;
inline bool reversed = false;
inline uint32_t blend_target = 0;

inline uint32_t LoopForState(uint32_t state) {
  switch (state) {
    case 0xab63503b: // Grounded.Move.Walk
    case 0x6cfe7533: // StartR.WalkStartR
    case 0xe99ba972: // StartL.WalkStart_L
    case 0xab2a0bab: // StartR.WalkPivotR
    case 0xb40c082a: // StartL.WalkPivotL
    case 0x5f1b910a: // StartR.WalkStartTurnL
    case 0x63b1645c: // StartL.WalkStartTurnR
      return 0xab63503b;
    case 0x7b6c66f0: // Grounded.Move.Run
    case 0x20aa1594: // StartR.RunStart_R
    case 0x3f8c1615: // StartL.RunStart_L
    case 0xf1f9ddaf: // StartR.RunStartRotate_R
    case 0x3c78ae5d: // StartL.RunStartRotate_L
      return 0x7b6c66f0;
    case 0xcf45fcba: // Grounded.Move.Sprint
    case 0xab07520a: // StartR.SprintStart_R
    case 0xf819e853: // StartL.SprintStart_L
    case 0x8e32dca1: // StartR.TurnSprintStart_L
    case 0xf302cc5e: // StartL.TurnSprintStart_R
      return 0xcf45fcba;
    default: return 0;
  }
}

inline void InterruptTurn(void* animator, bool report = false) {
  if (!reversed || !play) return;
  int layer = 0;
  void* args[]{&layer};
  Root current(Call(current_state,animator,args));
  if (!current.Get()) return;
  const auto from = Value<uint32_t>(state_hash,object_unbox(current.Get()));
  uint32_t to = 0;
  if (*static_cast<bool*>(object_unbox(Call(transitioning,animator,args)))) {
    Root next(Call(next_state,animator,args));
    if (!next.Get()) return;
    to = Value<uint32_t>(state_hash,object_unbox(next.Get()));
  }
  if (report) Log(reshade::log::level::info,(std::string("Endfield enhancer: A/D input reversed: current=")
      +std::to_string(from)+" next="+std::to_string(to)).c_str());
  uint32_t target = LoopForState(from);
  if (!target || (to && !LoopForState(to))) { blend_target=0; return; } // Preserve interactions, combat, falls and dodges.
  if (to) target = LoopForState(to);
  if (to == target && blend_target == target) return;
  if (from == target && !to) { blend_target=0; return; }
  void* has_args[]{&layer,&target};
  if (!*static_cast<bool*>(object_unbox(Call(has_state,animator,has_args)))) return;
  // Carry the current cycle phase through a short blend. An existing blend
  // into this loop is left alone so it can complete instead of being restarted.
  float phase = Value<float>(state_time,object_unbox(current.Get()));
  if (!std::isfinite(phase) || phase < 0.f) return;
  phase -= std::floor(phase);
  float duration = .15f, transition = 0.f;
  void* play_args[]{&target,&duration,&layer,&phase,&transition};
  Call(play,animator,play_args);
  blend_target = target;
  Log(reshade::log::level::info,(std::string("Endfield enhancer: A/D interrupted native turn: current=")
      +std::to_string(from)+" next="+std::to_string(to)+" loop="+std::to_string(target)).c_str());
}

inline bool Resolve(Il2CppImage animation) {
  current_state = FindMethod(animation,"UnityEngine","Animator","GetCurrentAnimatorStateInfo",1);
  next_state = FindMethod(animation,"UnityEngine","Animator","GetNextAnimatorStateInfo",1);
  transitioning = FindMethod(animation,"UnityEngine","Animator","IsInTransition",1);
  has_state = FindMethod(animation,"UnityEngine","Animator","HasState",2);
  state_hash = FindMethod(animation,"UnityEngine","AnimatorStateInfo","get_fullPathHash",0);
  state_time = FindMethod(animation,"UnityEngine","AnimatorStateInfo","get_normalizedTime",0);
  void* (*methods)(void*,void**) = nullptr;
  const char* (*name)(void*) = nullptr;
  uint32_t (*count)(void*) = nullptr;
  const void* (*param)(void*,uint32_t) = nullptr;
  void* (*klass)(const void*) = nullptr;
  const HMODULE module = GetModuleHandleW(L"GameAssembly.dll");
  if (!ResolveExport(module,"il2cpp_class_get_methods",&methods)
      || !ResolveExport(module,"il2cpp_method_get_name",&name)
      || !ResolveExport(module,"il2cpp_method_get_param_count",&count)
      || !ResolveExport(module,"il2cpp_method_get_param",&param)
      || !ResolveExport(module,"il2cpp_class_from_type",&klass)) return false;
  const auto core = FindImage("mscorlib.dll");
  void* integer = class_from_name(core,"System","Int32");
  void* single = class_from_name(core,"System","Single");
  void* iterator = nullptr;
  play = nullptr;
  while (void* method = methods(class_from_name(animation,"UnityEngine","Animator"),&iterator)) {
    if (std::strcmp(name(method),"CrossFade") || count(method)!=5
        || klass(param(method,0))!=integer || klass(param(method,1))!=single
        || klass(param(method,2))!=integer || klass(param(method,3))!=single
        || klass(param(method,4))!=single) continue;
    if (play) return false;
    play = method;
  }
  return play && current_state && next_state && transitioning && has_state && state_hash && state_time;
}
} // namespace locomotion

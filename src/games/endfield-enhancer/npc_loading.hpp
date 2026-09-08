#pragma once
#include "./npc_distance.hpp"

namespace endfield::npc_loading {
inline float culling_mode = 0.f, culling_start_lod = 0.f, update_interval = 0.25f;
inline float loading_override = 0.f, create_per_frame = 1.f, steps_per_frame = 2.f;
inline float work_budget_ms = 1.f, retention_bonus = 200.f;
inline bool unavailable = false;
inline std::atomic_bool automatic_loading{false};
namespace detail {
using namespace enhancer::detail;
using npc_distance::detail::Override;
inline Override<uint8_t> camera_culling;
inline Override<int> start_lod, creations, steps, retention;
inline Override<float> interval, thin_interval, work_ms;
inline bool ready = false;
inline std::array<float, 9> last_values{};
inline bool logged = false;

inline bool Apply(bool restore = false) {
  const bool custom = !restore && culling_mode >= 0.5f;
  const bool on = custom;
  const bool automatic = !restore && automatic_loading.load() && loading_override < 0.5f;
  const bool loading = !restore && (loading_override >= 0.5f || automatic);
  bool ok = camera_culling.Update(custom, [on](uint8_t* value) {
    if (*value > 1) return false;
    *value = on ? 1 : 0; return true;
  });
  ok &= start_lod.Update(on, [](int* value) {
    if (*value < 0 || *value > 5 || !std::isfinite(culling_start_lod)) return false;
    *value = static_cast<int>(std::clamp(culling_start_lod, 0.f, 4.f)); return true;
  });
  ok &= interval.Update(on, [](float* value) {
    if (!std::isfinite(*value) || *value <= 0.f || !std::isfinite(update_interval)) return false;
    *value = std::clamp(update_interval, 0.05f, 2.f); return true;
  });
  ok &= thin_interval.Update(on, [](float* value) {
    if (!std::isfinite(*value) || *value <= 0.f || !std::isfinite(update_interval)) return false;
    *value = 2.f * std::clamp(update_interval, 0.05f, 2.f); return true;
  });
  ok &= creations.Update(loading, [automatic](int* value) {
    if (*value < 0 || (!automatic && !std::isfinite(create_per_frame))) return false;
    *value = automatic ? std::max(*value, 4) : static_cast<int>(std::clamp(create_per_frame, 1.f, 8.f)); return true;
  });
  ok &= steps.Update(loading, [automatic](int* value) {
    if (*value < 0 || (!automatic && !std::isfinite(steps_per_frame))) return false;
    *value = automatic ? std::max(*value, 16) : static_cast<int>(std::clamp(steps_per_frame, 1.f, 32.f)); return true;
  });
  ok &= work_ms.Update(loading, [automatic](float* value) {
    if (!std::isfinite(*value) || *value < 0.f || (!automatic && !std::isfinite(work_budget_ms))) return false;
    *value = automatic ? std::max(*value, 2.f) : std::clamp(work_budget_ms, 0.25f, 5.f); return true;
  });
  ok &= retention.Update(!restore && loading_override >= 0.5f, [](int* value) {
    if (*value < 0 || !std::isfinite(retention_bonus)) return false;
    *value = static_cast<int>(std::clamp(retention_bonus, 0.f, 1000.f)); return true;
  });
  return ok;
}

inline bool Resolve() {
  if (!npc_distance::detail::SupportedBuild()) return false;
  auto image = FindImage("Gameplay.Beyond.dll");
  if (!image) return false;
  auto lod = class_from_name(image, "Beyond.NPC.Lod", "NPCCrowdLODSetting");
  auto aoi = class_from_name(image, "Beyond.Gameplay.Core", "AtmosphereNpcAoiSetting");
  if (!lod || !aoi) return false;
  void* (*field_type)(void*) = nullptr;
  int (*type_kind)(void*) = nullptr;
  int (*field_flags)(void*) = nullptr;
  void* (*static_data)(void*) = nullptr;
  void (*class_init)(void*) = nullptr;
  HMODULE module = GetModuleHandleW(L"GameAssembly.dll");
  if (!ResolveExport(module, "il2cpp_field_get_type", &field_type)
      || !ResolveExport(module, "il2cpp_type_get_type", &type_kind)
      || !ResolveExport(module, "il2cpp_field_get_flags", &field_flags)
      || !ResolveExport(module, "il2cpp_class_get_static_field_data", &static_data)
      || !ResolveExport(module, "il2cpp_runtime_class_init", &class_init)) return false;
  struct Field { void* type; const char* name; size_t offset; int kind; };
  const Field fields[] = {
      {lod, "s_enableCameraPhysicCull", 0x38, 0x02},
      {lod, "s_cameraCullRenderIdx", 0x34, 0x08},
      {lod, "s_renderLODDeltaTime", 0x10, 0x0c},
      {lod, "s_renderLODDeltaTimeThin", 0x14, 0x0c},
      {aoi, "s_createBudgetPerFrame", 0x28, 0x08},
      {aoi, "s_createStepBudgetPerFrame", 0x2c, 0x08},
      {aoi, "s_createTimeBudgetMs", 0x30, 0x0c},
      {aoi, "cpuRetentionBonus", 0x48, 0x08},
  };
  for (const auto& entry : fields) {
    void* field = class_get_field_from_name(entry.type, entry.name);
    if (!field || !(field_flags(field) & 0x10) || (field_flags(field) & 0x40)
        || field_get_offset(field) != entry.offset || type_kind(field_type(field)) != entry.kind) return false;
  }
  class_init(lod); class_init(aoi);
  auto* lod_data = static_cast<uint8_t*>(static_data(lod));
  auto* aoi_data = static_cast<uint8_t*>(static_data(aoi));
  if (!lod_data || !aoi_data || reinterpret_cast<uintptr_t>(lod_data) % 4 || reinterpret_cast<uintptr_t>(aoi_data) % 4) return false;
  camera_culling.address = reinterpret_cast<char*>(lod_data + 0x38);
  start_lod.address = reinterpret_cast<LONG*>(lod_data + 0x34);
  interval.address = reinterpret_cast<LONG*>(lod_data + 0x10);
  thin_interval.address = reinterpret_cast<LONG*>(lod_data + 0x14);
  creations.address = reinterpret_cast<LONG*>(aoi_data + 0x28);
  steps.address = reinterpret_cast<LONG*>(aoi_data + 0x2c);
  work_ms.address = reinterpret_cast<LONG*>(aoi_data + 0x30);
  retention.address = reinterpret_cast<LONG*>(aoi_data + 0x48);
  return true;
}
} // namespace detail
inline void OnPresent() {
  using namespace detail;
  if (unavailable) return;
  if (!ready) {
    if (culling_mode < 0.5f && loading_override < 0.5f && !automatic_loading.load()) return;
    if (!enhancer::detail::ResolveApi()) return;
    __try { ready = Resolve(); } __except (EXCEPTION_EXECUTE_HANDLER) { ready = false; }
    if (!ready) {
      unavailable = true;
      Log(reshade::log::level::warning, "Endfield enhancer: NPC culling/loading settings unavailable: unsupported build or fields.");
      return;
    }
  }
  bool ok = false;
  __try { ok = Apply(); } __except (EXCEPTION_EXECUTE_HANDLER) {}
  if (!ok) {
    __try { Apply(true); } __except (EXCEPTION_EXECUTE_HANDLER) {}
    unavailable = true;
    Log(reshade::log::level::warning, "Endfield enhancer: NPC culling/loading rollback after invalid data.");
    return;
  }
  const std::array<float, 9> values{culling_mode, culling_start_lod, update_interval, loading_override, create_per_frame, steps_per_frame, work_budget_ms, retention_bonus, automatic_loading.load() ? 1.f : 0.f};
  if (!logged || values != last_values) {
    char message[384];
    std::snprintf(message, sizeof(message), "Endfield enhancer: NPC culling/loading readback cull=%d firstLOD=%ld interval=%.2f/%.2fs starts=%ld steps=%ld work=%.2fms retention=%ld.",
        static_cast<int>(camera_culling.Exchange(0, 0)), start_lod.Exchange(0, 0),
        std::bit_cast<float>(interval.Exchange(0, 0)), std::bit_cast<float>(thin_interval.Exchange(0, 0)),
        creations.Exchange(0, 0), steps.Exchange(0, 0), std::bit_cast<float>(work_ms.Exchange(0, 0)), retention.Exchange(0, 0));
    Log(reshade::log::level::info, message);
    last_values = values; logged = true;
  }
}
inline void Shutdown() {
  if (!detail::ready) return;
  __try { detail::Apply(true); } __except (EXCEPTION_EXECUTE_HANDLER) {}
}
} // namespace endfield::npc_loading

/*
 * SPDX-License-Identifier: MIT
 */

#include <atomic>
#include <cwchar>

#include <Windows.h>

#include "../../utils/settings.hpp"
#include "../../utils/swapchain.hpp"
#include "./enhancer.hpp"
#include "./lod.hpp"

namespace {

constexpr uint32_t kLimiterResumeDelayFrames = 120;
constexpr uint32_t kFpsTint = 0x5C8FEA;
constexpr uint32_t kVisualTint = kFpsTint;
std::atomic_uint32_t limiter_resume_delay = kLimiterResumeDelayFrames;

void OnInitSwapchain(reshade::api::swapchain* swapchain, bool resize) {
  (void)resize;
  endfield::lod::OnRendererReset();
  endfield::enhancer::TryInstallStreamlineHook(swapchain->get_device());
  limiter_resume_delay.store(
      kLimiterResumeDelayFrames, std::memory_order_relaxed);
}

void OnDestroySwapchain(reshade::api::swapchain* swapchain, bool resize) {
  (void)swapchain;
  (void)resize;
  endfield::lod::OnRendererReset();
  limiter_resume_delay.store(
      kLimiterResumeDelayFrames, std::memory_order_relaxed);
}

void OnInitDevice(reshade::api::device* device) {
  endfield::enhancer::TryInstallStreamlineHook(device);
}

void ClampFpsLimit(
    renodx::utils::settings::Setting* setting,
    float,
    float current) {
  if (current <= 0.f || current >= 15.f) return;
  setting->Set(15.f)->Write();
}

void UpdateFpsLimitFormat(renodx::utils::settings::Setting* setting) {
  setting->format = setting->GetValue() <= 0.f ? "Off" : "%.0f FPS";
}

renodx::utils::settings::Setting* fps_limit_setting;
renodx::utils::settings::Setting* frame_generation_fps_limit_setting;
renodx::utils::settings::Setting* background_fps_limit_setting;

bool IsEndfieldProcess() {
  wchar_t process_path[MAX_PATH] = {};
  GetModuleFileNameW(
      nullptr, process_path, static_cast<DWORD>(std::size(process_path)));
  const wchar_t* process_name = std::wcsrchr(process_path, L'\\');
  return _wcsicmp(
             process_name == nullptr ? process_path : process_name + 1,
             L"Endfield.exe")
         == 0;
}

renodx::utils::settings::Settings settings = {
    new renodx::utils::settings::Setting{
        .key = "FPSUnlock",
        .binding = &endfield::enhancer::fps_unlock,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "FPS Unlock",
        .section = "FPS Limit",
        .tooltip = "Removes the game's FPS cap and disables VSync.",
        .labels = {"Off", "On"},
        .tint = kFpsTint,
    },
    fps_limit_setting = new renodx::utils::settings::Setting{
        .key = "FPSLimit",
        .binding = &endfield::enhancer::fps_limit,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 120.f,
        .label = "FPS Limit",
        .section = "FPS Limit",
        .tooltip = "Limits FPS when frame generation is off or paused.",
        .tint = kFpsTint,
        .min = 0.f,
        .max = 480.f,
        .format = "%.0f FPS",
        .on_change_value = [](float previous, float current) {
          ClampFpsLimit(fps_limit_setting, previous, current);
        },
    },
    frame_generation_fps_limit_setting = new renodx::utils::settings::Setting{
        .key = "FrameGenerationFPSLimit",
        .binding = &endfield::enhancer::frame_generation_fps_limit,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 240.f,
        .label = "Frame Generation",
        .section = "FPS Limit",
        .tooltip = "Limits FPS while frame generation is active.",
        .tint = kFpsTint,
        .min = 0.f,
        .max = 480.f,
        .format = "%.0f FPS",
        .on_change_value = [](float previous, float current) {
          ClampFpsLimit(
              frame_generation_fps_limit_setting, previous, current);
        },
    },
    background_fps_limit_setting = new renodx::utils::settings::Setting{
        .key = "BackgroundFPSLimit",
        .binding = &endfield::enhancer::background_fps_limit,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 60.f,
        .label = "Background",
        .section = "FPS Limit",
        .tooltip = "Limits FPS while the game is in the background.",
        .tint = kFpsTint,
        .min = 0.f,
        .max = 120.f,
        .format = "%.0f FPS",
        .on_change_value = [](float previous, float current) {
          ClampFpsLimit(background_fps_limit_setting, previous, current);
        },
    },
    new renodx::utils::settings::Setting{
        .key = "FullResolutionGTAO",
        .binding = &endfield::enhancer::full_resolution_gtao,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Full Resolution GTAO",
        .section = "Visual Improvements",
        .tooltip = "Renders ambient occlusion at full resolution for finer shadow detail. May reduce performance.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "HDRFrameGeneration",
        .binding = &endfield::enhancer::hdr_frame_generation,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "DLSS-G HDR Patch",
        .section = "Visual Improvements",
        .tooltip = "Enables HDR with DLSS Frame Generation. Requires the base Endfield RenoDX addon and bundled vulkan-1.dll. Restart required.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "ForceHighestGeometryLOD",
        .binding = &endfield::lod::force_highest_geometry_lod,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Geometry LOD Override",
        .section = "Visual Improvements",
        .tooltip = "Keeps geometry at its highest detail level. Can significantly increase VRAM usage and reduce performance.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
};

void OnOverlay(reshade::api::effect_runtime* runtime) {
  // Match ReShade's standard text size while retaining its global UI scaling.
  ImGui::PushFont(nullptr, ImGui::GetStyle().FontSizeBase);
  renodx::utils::settings::OnRegisterOverlay(runtime);
  ImGui::PopFont();
}

void OnPresent(
    reshade::api::command_queue*,
    reshade::api::swapchain* swapchain,
    const reshade::api::rect*,
    const reshade::api::rect*,
    uint32_t,
    const reshade::api::rect*) {
  HWND window = swapchain == nullptr
                    ? nullptr
                    : static_cast<HWND>(swapchain->get_hwnd());
  UpdateFpsLimitFormat(fps_limit_setting);
  UpdateFpsLimitFormat(frame_generation_fps_limit_setting);
  UpdateFpsLimitFormat(background_fps_limit_setting);

  endfield::enhancer::OnPresent(swapchain == nullptr ? nullptr : swapchain->get_device());
  endfield::hdr_output::OnPresent(swapchain);
  endfield::lod::OnPresent();

  uint32_t delay = limiter_resume_delay.load(std::memory_order_relaxed);
  if (delay != 0) {
    limiter_resume_delay.compare_exchange_weak(
        delay, delay - 1, std::memory_order_relaxed);
    renodx::utils::swapchain::fps_limit = 0.f;
    return;
  }

  renodx::utils::swapchain::fps_limit =
      endfield::enhancer::GetActiveFpsLimit(
          window == nullptr || GetForegroundWindow() == window);
}

}  // namespace

extern "C" __declspec(dllexport) const char* const NAME =
    "RenoDX: Arknights Endfield Enhancer";
extern "C" __declspec(dllexport) const char* const DESCRIPTION =
    "FPS, GTAO, LOD, and HDR frame-generation improvements for Arknights: Endfield";

BOOL APIENTRY DllMain(HMODULE h_module, DWORD reason, LPVOID) {
  if (reason == DLL_THREAD_ATTACH || reason == DLL_THREAD_DETACH) return TRUE;
  if (!IsEndfieldProcess()) return TRUE;

  switch (reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;
      endfield::hdr_output::UseEvents(reason);
      renodx::utils::settings::use_presets = false;
      renodx::utils::settings::overlay_title = "Endfield Enhancer";
      reshade::register_event<reshade::addon_event::init_device>(OnInitDevice);
      reshade::register_event<reshade::addon_event::init_swapchain>(
          OnInitSwapchain);
      reshade::register_event<reshade::addon_event::destroy_swapchain>(
          OnDestroySwapchain);
      reshade::register_event<reshade::addon_event::present>(OnPresent);
      break;
    case DLL_PROCESS_DETACH:
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);
      reshade::unregister_event<reshade::addon_event::destroy_swapchain>(
          OnDestroySwapchain);
      reshade::unregister_event<reshade::addon_event::init_swapchain>(
          OnInitSwapchain);
      reshade::unregister_event<reshade::addon_event::init_device>(OnInitDevice);
      endfield::lod::Shutdown();
      endfield::enhancer::Shutdown();
      endfield::hdr_output::UseEvents(reason);
      break;
  }

  if (reason == DLL_PROCESS_DETACH) {
    reshade::unregister_overlay(renodx::utils::settings::overlay_title.c_str(), OnOverlay);
  }
  renodx::utils::settings::Use(reason, &settings);
  if (reason == DLL_PROCESS_ATTACH) {
    reshade::unregister_overlay(
        renodx::utils::settings::overlay_title.c_str(),
        renodx::utils::settings::OnRegisterOverlay);
    reshade::register_overlay(renodx::utils::settings::overlay_title.c_str(), OnOverlay);
  }
  renodx::utils::swapchain::Use(reason);
  // Cross-addon utility teardown may transfer event ownership. Keep this
  // addon registered until every utility has finished unregistering.
  if (reason == DLL_PROCESS_DETACH) reshade::unregister_addon(h_module);
  return TRUE;
}

/*
 * SPDX-License-Identifier: MIT
 */

#include <atomic>
#include <cwchar>

#include <Windows.h>

#include "../../utils/settings.hpp"
#include "../../utils/swapchain.hpp"
#include "./enhancer.hpp"
#include "./uncensor.hpp"
#include "./lod.hpp"
#include "./npc_distance.hpp"
#include "./npc_loading.hpp"
#include "./npc_offcamera.hpp"
#include "./world_distance.hpp"
#include "./ssr_resolve.hpp"
#include "./runtime_status.hpp"
#include "./screenshots.hpp"
#include "./vulkan_loader_api.hpp"

namespace {

constexpr uint32_t kLimiterResumeDelayFrames = 120;
constexpr uint32_t kFpsTint = 0x5C8FEA;
constexpr uint32_t kVisualTint = kFpsTint;
std::atomic_uint32_t limiter_resume_delay = kLimiterResumeDelayFrames;
bool hdr_requested_at_startup = false;
bool hdr_available = false;
bool frame_generation_available = false;
bool ssr_override_available = false;
reshade::api::device* overlay_device = nullptr;

bool HasSsrBaseAddon(reshade::api::device_api api) {
  switch (api) {
    case reshade::api::device_api::d3d11:
      return GetModuleHandleW(L"renodx-endfield-dx11.addon64") != nullptr;
    case reshade::api::device_api::vulkan:
      return GetModuleHandleW(L"renodx-endfield.addon64") != nullptr;
    default:
      return false;
  }
}

const char* GetHDRUnavailableReason(reshade::api::device_api api) {
  if (api == reshade::api::device_api::d3d11) {
    return "DLSS-G HDR Patch is unavailable in DirectX 11. Launch the game with Vulkan.";
  }
  if (api != reshade::api::device_api::vulkan) return "DLSS-G HDR Patch requires Vulkan.";
  if (!endfield::vulkan_loader::IsInstalled()) {
    return "DLSS-G HDR Patch requires the bundled vulkan-1.dll next to Endfield.exe. Install it and restart the game.";
  }
  if (GetModuleHandleW(L"renodx-endfield.addon64") == nullptr) {
    return "DLSS-G HDR Patch requires renodx-endfield.addon64 to be loaded. Install it next to Endfield.exe and restart the game.";
  }
  return nullptr;
}

bool OnCreateDevice(reshade::api::device_api api, uint32_t&) {
  // Register before Vulkan device initialization; DX11 never needs the HDR path.
  if (hdr_requested_at_startup && GetHDRUnavailableReason(api) == nullptr) {
    endfield::hdr_output::UseEvents(DLL_PROCESS_ATTACH);
  }
  return false;
}

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
  endfield::screenshots::observer::OnInitDevice(device);
  // Install the SSR hook before the first render graph/history.
  if (device != nullptr
      && (device->get_api() == reshade::api::device_api::vulkan
          || device->get_api() == reshade::api::device_api::d3d11)) {
    endfield::enhancer::TryInstallSsrResolutionHook();
  }
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
renodx::utils::settings::Setting* hdr_warning_setting;
renodx::utils::settings::Setting* dof_near_setting;
renodx::utils::settings::Setting* dof_far_setting;

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

float SnapEntityDistance(float value) {
  return std::isfinite(value) ? std::clamp(std::round(value * 2.f) * 0.5f, 1.f, 10.f) : 2.f;
}

void SnapEntityDistanceSetting(const char* key) {
  auto* setting = renodx::utils::settings::FindSetting(key);
  if (setting) setting->Set(std::clamp(SnapEntityDistance(setting->GetValue()), setting->min, setting->max));
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
        .is_enabled = [] { return frame_generation_available; },
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
        .key = "HDRScreenshots",
        .binding = &endfield::screenshots::enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "HDR Screenshots",
        .section = "Screenshots",
        .tooltip = "Saves an HDR PNG alongside a corrected SDR screenshot. Enable before opening the capture screen.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
        .is_enabled = [] { return !endfield::screenshots::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Waiting for recognized Vulkan HDR output.",
        .section = "Screenshots",
        .is_visible = [] { return endfield::screenshots::enabled >= 0.5f && endfield::screenshots::detail::status == 1; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Requires HDR output and US Modern color space.",
        .section = "Screenshots",
        .is_visible = [] { return endfield::screenshots::enabled >= 0.5f && endfield::screenshots::detail::status == 2; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "HDR screenshots unavailable for this game build.",
        .section = "Screenshots",
        .is_visible = [] { return endfield::screenshots::enabled >= 0.5f && endfield::screenshots::detail::status == 3; },
    },
    new renodx::utils::settings::Setting{
        .key = "FullResolutionGTAO",
        .binding = &endfield::enhancer::gtao_resolution,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "GTAO Resolution",
        .section = "Ambient Occlusion",
        .tooltip = "Controls the resolution of ambient occlusion.",
        .labels = {"Half Resolution (Vanilla)", "Full Resolution"},
        .tint = kVisualTint,
        .parse = [](float value) {
          // Migrate saved Double Resolution selections to Full Resolution.
          return value == 1.f || value == 2.f ? 1.f : 0.f;
        },
    },
    new renodx::utils::settings::Setting{
        .key = "SSRResolution",
        .binding = &endfield::enhancer::ssr_resolution,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "SSR Resolution",
        .section = "Screen Space Reflections",
        .tooltip = "Controls reflection and depth resolution, with matching reflection alignment.",
        .labels = {"Half Resolution (Vanilla)", "Full Resolution"},
        .tint = kVisualTint,
        .parse = [](float value) {
          // Write() also runs on initial config load, not only UI changes.
          endfield::enhancer::ssr_full_depth = value == 1.f ? 1.f : 0.f;
          return value == 1.f ? 1.f : 0.f;
        },
    },
    new renodx::utils::settings::Setting{
        .key = "ImprovedSSROverride",
        .binding = &endfield::ssr_resolve::improved_override_setting,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Improved SSR Override",
        .section = "Screen Space Reflections",
        .tooltip = "Uses resolution-corrected SSR at Full Resolution. Requires RenoDX Improved SSR On. Automatically selects DirectX 11 or Vulkan. Off leaves RenoDX in control.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
        .is_enabled = [] { return ssr_override_available; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Override unavailable; base shaders retained. See ReShade.log for the cause.",
        .section = "Screen Space Reflections",
        .tint = 0xE6AD45,
        .is_visible = [] { return endfield::ssr_resolve::improved_override_setting == 1.f && endfield::ssr_resolve::override_failed.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "FullResolutionDoF",
        .binding = &endfield::enhancer::dof_resolution,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "DoF Resolution",
        .section = "Depth of Field",
        .tooltip = "Controls the resolution of depth of field.",
        .labels = {"Half Resolution (Vanilla)", "Full Resolution", "Double Resolution"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "ForceDoF",
        .binding = &endfield::enhancer::force_dof,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Force DoF",
        .section = "Depth of Field",
        .tooltip = "Enables high-quality depth of field with manual controls.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "DoFFocusDistance",
        .binding = &endfield::enhancer::dof_focus_distance,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 10.f,
        .label = "Focus Distance",
        .section = "Depth of Field",
        .tooltip = "Controls the distance from the camera that remains in focus.",
        .tint = kVisualTint,
        .min = 0.5f,
        .max = 200.f,
        .format = "%.1f",
        .is_enabled = [] { return endfield::enhancer::force_dof >= 0.5f; },
    },
    dof_near_setting = new renodx::utils::settings::Setting{
        .key = "DoFNearBlur",
        .binding = &endfield::enhancer::dof_near_blur,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 3.f,
        .label = "Near Blur Strength",
        .section = "Depth of Field",
        .tooltip = "Controls foreground blur strength.",
        .tint = kVisualTint,
        .min = 0.f,
        .max = 10.f,
        .format = "%.1f",
        .is_enabled = [] { return endfield::enhancer::force_dof >= 0.5f; },
    },
    dof_far_setting = new renodx::utils::settings::Setting{
        .key = "DoFFarBlur",
        .binding = &endfield::enhancer::dof_far_blur,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 5.f,
        .label = "Far Blur Strength",
        .section = "Depth of Field",
        .tooltip = "Controls background blur strength.",
        .tint = kVisualTint,
        .min = 0.f,
        .max = 10.f,
        .format = "%.1f",
        .is_enabled = [] { return endfield::enhancer::force_dof >= 0.5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "HDRFrameGeneration",
        .binding = &endfield::enhancer::hdr_frame_generation,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "DLSS-G HDR Patch",
        .section = "DLSS-G HDR Patch",
        .tooltip = "Enables HDR with DLSS Frame Generation. Requires the base Endfield RenoDX addon and bundled vulkan-1.dll. Restart required.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
        .is_enabled = [] { return hdr_available; },
    },
    hdr_warning_setting = new renodx::utils::settings::Setting{
        .key = "HDRFrameGenerationWarning",
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .section = "DLSS-G HDR Patch",
        .tint = 0xE6AD45,
        .is_visible = [] { return !hdr_available; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .section = "DLSS-G HDR Patch",
        .on_draw = [] {
          endfield::runtime_status::Draw(overlay_device);
          return false;
        },
    },
    new renodx::utils::settings::Setting{
        .key = "ForceHighestGeometryLOD",
        .binding = &endfield::lod::force_highest_geometry_lod,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Geometry LOD Override",
        .section = "Geometry",
        .tooltip = "Keeps geometry at its highest detail level. Can significantly increase VRAM usage and reduce performance.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelLimitOverride",
        .binding = &endfield::npc_distance::limit_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Override NPC Model Limit",
        .section = "Entity Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelLimit",
        .binding = &endfield::npc_distance::model_limit,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 100.f,
        .label = "NPC Model Limit",
        .section = "Entity Distance",
        .tooltip = "Maximum active NPC models. Off-camera unloads free slots.",
        .tint = kVisualTint,
        .min = 50.f, .max = endfield::npc_distance::kMaxModelLimit, .format = "%d",
        .is_enabled = [] { return endfield::npc_distance::limit_enabled >= 0.5f && !endfield::npc_distance::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelDistanceOverride",
        .binding = &endfield::npc_distance::regular_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Override NPC Model Distance",
        .section = "Entity Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelDistance",
        .binding = &endfield::npc_distance::regular_multiplier,
        .default_value = 2.f,
        .label = "NPC Model Distance",
        .section = "Entity Distance",
        .tooltip = "Adjusts how far NPC models remain loaded.",
        .tint = kVisualTint,
        .min = 1.f, .max = endfield::npc_distance::kMaxDistanceMultiplier, .format = "%.1fx",
        .is_enabled = [] { return endfield::npc_distance::regular_enabled >= 0.5f && !endfield::npc_distance::unavailable; },

        .parse = SnapEntityDistance,
        .on_change = [] { SnapEntityDistanceSetting("NPCModelDistance"); },
    },
    new renodx::utils::settings::Setting{
        .key = "AmbientNPCModelDistanceOverride",
        .binding = &endfield::npc_distance::ambient_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Override Ambient NPC Distance",
        .section = "Entity Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "AmbientNPCModelDistance",
        .binding = &endfield::npc_distance::ambient_multiplier,
        .default_value = 2.f,
        .label = "Ambient NPC Distance",
        .section = "Entity Distance",
        .tooltip = "Adjusts the loading distance for background crowds.",
        .tint = kVisualTint,
        .min = 1.f, .max = endfield::npc_distance::kMaxDistanceMultiplier, .format = "%.1fx",
        .is_enabled = [] { return endfield::npc_distance::ambient_enabled >= 0.5f && !endfield::npc_distance::unavailable; },

        .parse = SnapEntityDistance,
        .on_change = [] { SnapEntityDistanceSetting("AmbientNPCModelDistance"); },
    },
    new renodx::utils::settings::Setting{
        .key = "EnemyLoadDistanceOverride",
        .binding = &endfield::world_distance::enemies_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Override Enemy Load Distance",
        .section = "Entity Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "EnemyLoadDistance",
        .binding = &endfield::world_distance::enemies_multiplier,
        .default_value = 2.f,
        .label = "Enemy Load Distance",
        .section = "Entity Distance",
        .tooltip = "Adjusts how far enemies remain loaded.",
        .tint = kVisualTint,
        .min = 1.f, .max = 10.f, .format = "%.1fx",
        .is_enabled = [] { return endfield::world_distance::enemies_enabled >= 0.5f && !endfield::world_distance::unavailable; },

        .parse = SnapEntityDistance,
        .on_change = [] { SnapEntityDistanceSetting("EnemyLoadDistance"); },
    },
    new renodx::utils::settings::Setting{
        .key = "InteractiveLoadDistanceOverride",
        .binding = &endfield::world_distance::interactive_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Override Interactive Entity Load Distance",
        .section = "Entity Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .key = "InteractiveLoadDistance",
        .binding = &endfield::world_distance::interactive_multiplier,
        .default_value = 2.f,
        .label = "Interactive Entity Load Distance",
        .section = "Entity Distance",
        .tooltip = "Adjusts the loading distance for interactive objects, such as teleporters.",
        .tint = kVisualTint,
        .min = 1.f, .max = 10.f, .format = "%.1fx",
        .is_enabled = [] { return endfield::world_distance::interactive_enabled >= 0.5f && !endfield::world_distance::unavailable; },

        .parse = SnapEntityDistance,
        .on_change = [] { SnapEntityDistanceSetting("InteractiveLoadDistance"); },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Entity distance unavailable; check ReShade.log.",
        .section = "Entity Distance",
        .is_visible = [] { return endfield::world_distance::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "NPC distance controls unavailable; check ReShade.log for details.",
        .section = "Entity Distance",
        .is_visible = [] { return endfield::npc_distance::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCOffCameraUnload",
        .binding = &endfield::npc_offcamera::enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Unload Off-camera Crowds",
        .section = "NPC Unloading (Experimental)",
        .tooltip = "Unloads background crowds outside the camera view.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
        .min = 0.0f, .max = 1.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_offcamera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCOffCameraOrdinary",
        .binding = &endfield::npc_offcamera::npcs_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Unload Off-camera NPC Models",
        .section = "NPC Unloading (Experimental)",
        .tooltip = "Unloads ordinary NPC models outside the camera view.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
        .min = 0.0f, .max = 1.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_offcamera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCReloadOrder",
        .binding = &endfield::npc_offcamera::closest_first,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.0f,
        .label = "Crowd Loading Priority",
        .section = "NPC Unloading (Experimental)",
        .tooltip = "Prioritizes nearby crowds and shares work between unfinished loads.",
        .labels = {"Default", "Closest First"},
        .tint = kVisualTint,
        .min = 0.0f, .max = 1.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_offcamera::unavailable && endfield::npc_offcamera::enabled >= 0.5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCOffCameraRefresh",
        .binding = &endfield::npc_offcamera::refresh_interval,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 0.1f,
        .label = "View Recheck Interval",
        .section = "NPC Unloading (Experimental)",
        .tooltip = "Lower values let NPC models respond to camera turns sooner.",
        .tint = kVisualTint,
        .min = 0.05f, .max = 1.0f, .format = "%.2f s",
        .is_enabled = [] { return !endfield::npc_offcamera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCOffCameraDelay",
        .binding = &endfield::npc_offcamera::delay,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 2.0f,
        .label = "Unload Delay",
        .section = "NPC Unloading (Experimental)",
        .tooltip = "Seconds outside the view before unloading.",
        .tint = kVisualTint,
        .min = 0.5f, .max = 10.0f, .format = "%.1f s",
        .is_enabled = [] { return !endfield::npc_offcamera::unavailable && (endfield::npc_offcamera::enabled >= 0.5f || endfield::npc_offcamera::npcs_enabled >= 0.5f); },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCOffCameraMargin",
        .binding = &endfield::npc_offcamera::margin,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 25.0f,
        .label = "View Margin",
        .section = "NPC Unloading (Experimental)",
        .tooltip = "Extra space around the view for earlier loading.",
        .tint = kVisualTint,
        .min = 0.0f, .max = 100.0f, .format = "%.0f%%",
        .is_enabled = [] { return !endfield::npc_offcamera::unavailable && (endfield::npc_offcamera::enabled >= 0.5f || endfield::npc_offcamera::npcs_enabled >= 0.5f); },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCOffCameraProtection",
        .binding = &endfield::npc_offcamera::protection,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 15.0f,
        .label = "Nearby Protection",
        .section = "NPC Unloading (Experimental)",
        .tooltip = "Keeps nearby entities loaded in every direction.",
        .tint = kVisualTint,
        .min = 5.0f, .max = 100.0f, .format = "%.0f m",
        .is_enabled = [] { return !endfield::npc_offcamera::unavailable && (endfield::npc_offcamera::enabled >= 0.5f || endfield::npc_offcamera::npcs_enabled >= 0.5f); },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Off-camera entities unavailable; check ReShade.log.",
        .section = "NPC Unloading (Experimental)",
        .is_visible = [] { return endfield::npc_offcamera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCCameraCulling",
        .binding = &endfield::npc_loading::culling_mode,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Override NPC Culling",
        .section = "NPC Culling",
        .tooltip = "Controls animation culling for off-camera and obscured NPCs.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
        .min = 0.0f, .max = 1.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_loading::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCCullingStartLOD",
        .binding = &endfield::npc_loading::culling_start_lod,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Culling Starts at LOD",
        .section = "NPC Culling",
        .tooltip = "LOD 0 includes the highest-detail NPCs.",
        .labels = {"LOD 0 (All)", "LOD 1", "LOD 2", "LOD 3", "LOD 4"},
        .tint = kVisualTint,
        .min = 0.0f, .max = 4.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_loading::unavailable && endfield::npc_loading::culling_mode == 1.f; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCCullingUpdateInterval",
        .binding = &endfield::npc_loading::update_interval,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 0.25f,
        .label = "LOD Check Interval",
        .section = "NPC Culling",
        .tooltip = "Seconds between visibility and LOD checks. Lower values respond faster.",
        .tint = kVisualTint,
        .min = 0.05f, .max = 2.0f, .format = "%.2f s",
        .is_enabled = [] { return !endfield::npc_loading::unavailable && endfield::npc_loading::culling_mode == 1.f; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCLoadingOverride",
        .binding = &endfield::npc_loading::loading_override,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Override NPC Loading",
        .section = "NPC Loading",
        .tooltip = "Adjusts how quickly background NPCs load.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
        .min = 0.0f, .max = 1.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_loading::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCCreatePerFrame",
        .binding = &endfield::npc_loading::create_per_frame,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.0f,
        .label = "New NPCs per Frame",
        .section = "NPC Loading",
        .tooltip = "Maximum NPC creations started each frame.",
        .tint = kVisualTint,
        .min = 1.0f, .max = 8.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_loading::unavailable && endfield::npc_loading::loading_override >= 0.5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCCreateStepsPerFrame",
        .binding = &endfield::npc_loading::steps_per_frame,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.0f,
        .label = "Loading Steps per Frame",
        .section = "NPC Loading",
        .tooltip = "Maximum NPC loading steps processed each frame.",
        .tint = kVisualTint,
        .min = 1.0f, .max = 32.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_loading::unavailable && endfield::npc_loading::loading_override >= 0.5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCCreateWorkBudget",
        .binding = &endfield::npc_loading::work_budget_ms,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 1.0f,
        .label = "Loading Time Budget",
        .section = "NPC Loading",
        .tooltip = "Maximum frame time spent creating NPCs.",
        .tint = kVisualTint,
        .min = 0.25f, .max = 5.0f, .format = "%.2f ms",
        .is_enabled = [] { return !endfield::npc_loading::unavailable && endfield::npc_loading::loading_override >= 0.5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCRetentionBonus",
        .binding = &endfield::npc_loading::retention_bonus,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 200.0f,
        .label = "Loaded NPC Priority",
        .section = "NPC Loading",
        .tooltip = "Higher values favor keeping already-loaded NPCs.",
        .tint = kVisualTint,
        .min = 0.0f, .max = 1000.0f, .format = "%d",
        .is_enabled = [] { return !endfield::npc_loading::unavailable && endfield::npc_loading::loading_override >= 0.5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "Uncensor",
        .binding = &endfield::uncensor::enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Uncensor",
        .section = "Camera",
        .tooltip = "Disables camera-driven character transparency. May also affect proximity fading.",
        .labels = {"Off", "On"},
        .tint = kVisualTint,
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Uncensor unavailable for this game build or another camera patch is active.",
        .section = "Camera",
        .is_visible = []() { return endfield::uncensor::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Addon developed by Rat.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Many thanks to ShortFuse for RenoDX.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Special thanks to RankFTW.",
        .section = "About",
    },
};

void OnOverlay(reshade::api::effect_runtime* runtime) {
  overlay_device = runtime->get_device();
  // Use this runtime's renderer, not DLL presence or a temporary probe device.
  frame_generation_available = runtime->get_device()->get_api() == reshade::api::device_api::vulkan;
  ssr_override_available = HasSsrBaseAddon(runtime->get_device()->get_api());
  const char* reason = GetHDRUnavailableReason(runtime->get_device()->get_api());
  hdr_available = reason == nullptr;
  hdr_warning_setting->label = reason == nullptr ? "" : reason;
  // Match ReShade's standard text size while retaining its global UI scaling.
  ImGui::PushFont(nullptr, ImGui::GetStyle().FontSizeBase);
  renodx::utils::settings::OnRegisterOverlay(runtime);
  ImGui::PopFont();
  overlay_device = nullptr;
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
  dof_near_setting->format = dof_near_setting->GetValue() == 0.f ? "Off" : "%.1f";
  dof_far_setting->format = dof_far_setting->GetValue() == 0.f ? "Off" : "%.1f";

  endfield::enhancer::OnPresent(swapchain == nullptr ? nullptr : swapchain->get_device());
  endfield::uncensor::OnPresent();
  endfield::ssr_resolve::OnPresent(
      endfield::enhancer::ssr_resolution == 1.f,
      endfield::enhancer::ssr_resolution == 1.f
          && endfield::ssr_resolve::improved_override_setting == 1.f
          && swapchain != nullptr
          && HasSsrBaseAddon(swapchain->get_device()->get_api()));
  endfield::hdr_output::OnPresent(swapchain);
  endfield::lod::OnPresent();
  endfield::npc_distance::OnPresent();
  endfield::npc_offcamera::OnPresent();
  endfield::npc_loading::OnPresent();
  endfield::world_distance::OnPresent();
  endfield::screenshots::OnPresent();

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
extern "C" __declspec(dllexport) const char* const AUTHOR =
    "ItsTheSewerRat";
extern "C" __declspec(dllexport) const char* const DESCRIPTION =
    "FPS, SSR, DoF, GTAO, LOD, and HDR frame-generation improvements for Arknights: Endfield";

BOOL APIENTRY DllMain(HMODULE h_module, DWORD reason, LPVOID) {
  if (reason == DLL_THREAD_ATTACH || reason == DLL_THREAD_DETACH) return TRUE;
  if (!IsEndfieldProcess()) return TRUE;

  switch (reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;
      renodx::utils::settings::use_presets = false;
      renodx::utils::settings::overlay_title = "Endfield Enhancer";
      reshade::register_event<reshade::addon_event::create_device>(OnCreateDevice);
      reshade::register_event<reshade::addon_event::init_device>(OnInitDevice);
      reshade::register_event<reshade::addon_event::init_swapchain>(
          OnInitSwapchain);
      reshade::register_event<reshade::addon_event::destroy_swapchain>(
          OnDestroySwapchain);
      reshade::register_event<reshade::addon_event::present>(OnPresent);
      reshade::register_event<reshade::addon_event::init_command_list>(endfield::screenshots::observer::OnInitCommandList);
      reshade::register_event<reshade::addon_event::init_command_queue>(endfield::screenshots::observer::OnInitQueue);
      reshade::register_event<reshade::addon_event::destroy_device>(endfield::screenshots::observer::OnDestroyDevice);
      break;
    case DLL_PROCESS_DETACH:
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);
      reshade::unregister_event<reshade::addon_event::init_command_list>(endfield::screenshots::observer::OnInitCommandList);
      reshade::unregister_event<reshade::addon_event::init_command_queue>(endfield::screenshots::observer::OnInitQueue);
      reshade::unregister_event<reshade::addon_event::destroy_device>(endfield::screenshots::observer::OnDestroyDevice);
      reshade::unregister_event<reshade::addon_event::destroy_swapchain>(
          OnDestroySwapchain);
      reshade::unregister_event<reshade::addon_event::init_swapchain>(
          OnInitSwapchain);
      reshade::unregister_event<reshade::addon_event::init_device>(OnInitDevice);
      reshade::unregister_event<reshade::addon_event::create_device>(OnCreateDevice);
      reshade::unregister_event<reshade::addon_event::copy_resource>(endfield::hdr_output::OnPresentationCopy);
      reshade::unregister_event<reshade::addon_event::copy_texture_region>(endfield::hdr_output::OnPresentationCopyRegion);
      endfield::screenshots::Shutdown();
      endfield::world_distance::Shutdown();
      endfield::npc_offcamera::Shutdown();
      endfield::npc_loading::Shutdown();
      endfield::npc_distance::Shutdown();
      endfield::lod::Shutdown();
      endfield::enhancer::Shutdown();
      endfield::uncensor::Shutdown();
      endfield::ssr_resolve::Use(reason);
      endfield::hdr_output::UseEvents(reason);
      break;
  }

  if (reason == DLL_PROCESS_DETACH) {
    reshade::unregister_overlay(renodx::utils::settings::overlay_title.c_str(), OnOverlay);
  }
  renodx::utils::settings::Use(reason, &settings);
  if (reason == DLL_PROCESS_ATTACH) {
    endfield::ssr_resolve::Use(reason);
    hdr_requested_at_startup = endfield::enhancer::hdr_frame_generation >= 0.5f;
    if (hdr_requested_at_startup && endfield::vulkan_loader::IsInstalled()) {
      // Reserve copy observation before the base addon can consume these events.
      // The callbacks stay inactive until Vulkan HDR hooks are installed.
      reshade::register_event<reshade::addon_event::copy_resource>(endfield::hdr_output::OnPresentationCopy);
      reshade::register_event<reshade::addon_event::copy_texture_region>(endfield::hdr_output::OnPresentationCopyRegion);
    }
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

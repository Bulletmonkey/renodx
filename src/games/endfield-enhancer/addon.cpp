/*
 * SPDX-License-Identifier: MIT
 */

#include <atomic>
#include <cwchar>

#include <Windows.h>
#include <cstdio>

#include "../../utils/settings.hpp"
#include "../../utils/swapchain.hpp"
#include "./enhancer.hpp"
#include "./uncensor.hpp"
#include "./lod.hpp"
#include "./npc_distance.hpp"
#include "./camera.hpp"
#include "./npc_loading.hpp"
#include "./npc_offcamera.hpp"
#include "./world_distance.hpp"
#include "./ssr_resolve.hpp"
#include "./runtime_status.hpp"
#include "./screenshots.hpp"
#include "./ui_visibility.hpp"
#include "./shortcuts.hpp"
#include "./menu.hpp"
#include "./vulkan_loader_api.hpp"

namespace {

constexpr uint32_t kLimiterResumeDelayFrames = 120;
constexpr uint32_t kSettingTint = 0x5C8FEA;
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
  if (hdr_requested_at_startup && GetHDRUnavailableReason(api) == nullptr) {
    endfield::hdr_output::UseEvents(DLL_PROCESS_ATTACH);
  }
  return false;
}

void OnInitSwapchain(reshade::api::swapchain* swapchain, bool) {
  endfield::lod::OnRendererReset();
  endfield::enhancer::TryInstallStreamlineHook(swapchain->get_device());
  limiter_resume_delay.store(
      kLimiterResumeDelayFrames, std::memory_order_relaxed);
}

void OnDestroySwapchain(reshade::api::swapchain*, bool) {
  endfield::lod::OnRendererReset();
  limiter_resume_delay.store(
      kLimiterResumeDelayFrames, std::memory_order_relaxed);
}

void OnInitDevice(reshade::api::device* device) {
  endfield::screenshots::observer::OnInitDevice(device);

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
        .tint = kSettingTint,
    },
    fps_limit_setting = new renodx::utils::settings::Setting{
        .key = "FPSLimit",
        .binding = &endfield::enhancer::fps_limit,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 120.f,
        .label = "FPS Limit",
        .section = "FPS Limit",
        .tooltip = "Limits FPS when frame generation is off or paused.",
        .tint = kSettingTint,
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
        .label = "Frame Generation FPS Limit",
        .section = "FPS Limit",
        .tooltip = "Limits FPS while frame generation is active.",
        .tint = kSettingTint,
        .min = 0.f,
        .max = 480.f,
        .format = "%.0f FPS",
        .is_enabled = [] { return frame_generation_available; },
        .on_change_value = [](float previous, float current) { ClampFpsLimit(
                                                                   frame_generation_fps_limit_setting, previous, current); },
    },
    background_fps_limit_setting = new renodx::utils::settings::Setting{
        .key = "BackgroundFPSLimit",
        .binding = &endfield::enhancer::background_fps_limit,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 60.f,
        .label = "Background FPS Limit",
        .section = "FPS Limit",
        .tooltip = "Limits FPS while the game is in the background.",
        .tint = kSettingTint,
        .min = 0.f,
        .max = 120.f,
        .format = "%.0f FPS",
        .on_change_value = [](float previous, float current) {
          ClampFpsLimit(background_fps_limit_setting, previous, current);
        },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraControls",
        .binding = &endfield::camera::enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Camera Controls",
        .section = "Camera Controls",
        .tooltip = "Applies to normal gameplay and photo cameras. Off restores the unmodified camera output.",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraFreePrototype",
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .label = "Free Camera",
        .section = "Camera Controls",
        .on_draw = [] {
          namespace freecam = endfield::camera::detail::freecam;
          bool enabled = freecam::requested.load();
          ImGui::BeginDisabled(!freecam::available.load() || endfield::camera::enabled < .5f);
          if (ImGui::Checkbox("Free Camera", &enabled)) freecam::requested.store(enabled);
          ImGui::EndDisabled();
          ImGui::TextWrapped("Move the mouse to look around. Opening the overlay pauses mouse look. Configure movement, speed boost and exit in Shortcuts > Freecam.");
          return false;
        },
    },
    endfield::shortcuts::Create("ShortcutFreeCamera", VK_F6, "Toggle Freecam", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeExit", VK_ESCAPE, "Exit Freecam", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeForward", 'W', "Move Forward", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeBackward", 'S', "Move Backward", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeLeft", 'A', "Move Left", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeRight", 'D', "Move Right", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeDown", 'Q', "Move Down", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeUp", 'E', "Move Up", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutFreeBoost", VK_SHIFT, "Speed Boost (Hold)", "Freecam Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideUI", VK_F7, "Toggle Hide UI", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideUID", 0, "Toggle Hide UID", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideLatencyBar", 0, "Toggle Hide Latency Bar", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHidePing", 0, "Toggle Hide Ping", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideQuestLog", 0, "Toggle Hide Quest Log", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideMap", 0, "Toggle Hide Map", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideMapButtons", 0, "Toggle Hide Map Buttons", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideMenuButtons", 0, "Toggle Hide Menu Buttons", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutHideUtilityWheel", 0, "Toggle Hide Utility Wheel Button", "UI Shortcuts"),
    endfield::shortcuts::Create("ShortcutFirstPerson", VK_F8, "Toggle First Person", "First Person Shortcuts"),
    endfield::shortcuts::Create("ShortcutFullscreen", VK_F12, "Toggle Fullscreen / Windowed", "Window Shortcuts"),
    new renodx::utils::settings::Setting{
        .key = "CameraFreeSpeed",
        .binding = &endfield::camera::detail::freecam::speed,
        .default_value = 5.f,
        .label = "Free Camera Speed",
        .section = "Camera Controls",
        .min = .1f,
        .max = 50.f,
        .format = "%.1f m/s",
    },
    new renodx::utils::settings::Setting{
        .key = "CameraGameplay",
        .binding = &endfield::camera::gameplay,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.0f,
        .label = "Apply During Gameplay",
        .section = "Camera Controls",
        .tooltip = "",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraPhoto",
        .binding = &endfield::camera::photo,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.0f,
        .label = "Apply in Photo Mode",
        .section = "Camera Controls",
        .tooltip = "",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraZoomLimit",
        .binding = &endfield::camera::zoom_limit,
        .default_value = 1.0f,
        .label = "Maximum Zoom-Out Range",
        .section = "Camera Controls",
        .tooltip = "Multiplies the native maximum zoom scale. Use the usual zoom controls; native zoom collision handling remains active.",
        .min = 1.0f,
        .max = 5.0f,
        .format = "%.2fx",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraFOV",
        .binding = &endfield::camera::fov,
        .default_value = 60.0f,
        .label = "Field of View",
        .section = "Camera Controls",
        .tooltip = "Camera field of view outside first person.",
        .min = 20.0f,
        .max = 120.0f,
        .format = "%.0f",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraHeight",
        .binding = &endfield::camera::height,
        .default_value = 0.0f,
        .label = "Height Offset",
        .section = "Camera Position",
        .tooltip = "Moves the camera vertically in world space.",
        .min = -10.0f,
        .max = 10.0f,
        .format = "%.2f m",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraHorizontal",
        .binding = &endfield::camera::horizontal,
        .default_value = 0.0f,
        .label = "Side Offset",
        .section = "Camera Position",
        .tooltip = "Moves the camera along its right axis.",
        .min = -10.0f,
        .max = 10.0f,
        .format = "%.2f m",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraDistance",
        .binding = &endfield::camera::distance,
        .default_value = 0.0f,
        .label = "Distance Offset",
        .section = "Camera Position",
        .tooltip = "Positive moves backward along the viewing direction. These extra offsets may pass through walls; maximum zoom range uses native collision handling.",
        .min = -10.0f,
        .max = 50.0f,
        .format = "%.2f m",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraPitch",
        .binding = &endfield::camera::pitch,
        .default_value = 0.0f,
        .label = "Pitch Offset",
        .section = "Camera Rotation",
        .tooltip = "Adds rotation while keeping normal mouse and controller input.",
        .min = -89.0f,
        .max = 89.0f,
        .format = "%.1f deg",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraYaw",
        .binding = &endfield::camera::yaw,
        .default_value = 0.0f,
        .label = "Yaw Offset",
        .section = "Camera Rotation",
        .tooltip = "Adds rotation while keeping normal mouse and controller input.",
        .min = -180.0f,
        .max = 180.0f,
        .format = "%.1f deg",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraRoll",
        .binding = &endfield::camera::roll,
        .default_value = 0.0f,
        .label = "Roll",
        .section = "Camera Rotation",
        .tooltip = "Adds rotation while keeping normal mouse and controller input.",
        .min = -180.0f,
        .max = 180.0f,
        .format = "%.1f deg",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraFirstPerson",
        .binding = &endfield::camera::first_person,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "First Person",
        .section = "First Person",
        .tooltip = "View through your character's eyes.",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraMeshHeadHiding",
        .binding = &endfield::camera::hide_head,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Hide Head and Accessories",
        .section = "First Person",
        .tooltip = "Hides the head, hair, and head accessories.",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraFillNeckHole",
        .binding = &endfield::camera::fill_neck_hole,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Fill Neck Hole (Warning: Breaks Some Textures)",
        .section = "First Person",
        .tooltip = "Closes the opening left by the hidden head.",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraExtendLookRange",
        .binding = &endfield::camera::extend_look_range,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.0f,
        .label = "Extend Look Range",
        .section = "First Person",
        .tooltip = "Look farther up and down in first person.",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraFirstPersonFOV",
        .binding = &endfield::camera::first_person_fov,
        .default_value = 60.0f,
        .label = "Field of View",
        .section = "First Person",
        .tooltip = "Independent field of view while First Person is active.",
        .min = 20.0f,
        .max = 120.0f,
        .format = "%.0f",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraFirstPersonMovement",
        .binding = &endfield::camera::first_person_movement,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "First Person Movement (Experimental)",
        .section = "First Person",
        .tooltip = "Keeps your character facing forward, with a slight turn when moving sideways.",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraFirstPersonDialogue",
        .binding = &endfield::camera::first_person_dialogue,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "First Person Conversations",
        .section = "First Person",
        .tooltip = "Stay in first person during supported NPC chats.",
        .labels = {"Off", "On"},
        .is_enabled = [] { return !endfield::camera::unavailable && endfield::camera::first_person >= .5f && endfield::camera::detail::dialogue::available; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraAnimationFacing",
        .binding = &endfield::camera::animation_facing,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Animation Facing",
        .section = "First Person",
        .tooltip = "Follow body or head animations. Realistic includes head roll.",
        .labels = {"Off", "Body", "Head", "Realistic"},
        .is_enabled = [] { return !endfield::camera::unavailable && endfield::camera::first_person >= .5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraAnimationMotion",
        .binding = &endfield::camera::animation_motion,
        .default_value = 35.f,
        .label = "Animation Motion",
        .section = "First Person",
        .tooltip = "How much animation moves the view.",
        .min = 0.f,
        .max = 100.f,
        .format = "%.0f%%",
        .is_enabled = [] { return !endfield::camera::unavailable && endfield::camera::first_person >= .5f && endfield::camera::animation_facing >= .5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraSideLookLimit",
        .binding = &endfield::camera::side_look_limit,
        .default_value = 60.f,
        .label = "Sideways Look Limit",
        .section = "First Person",
        .tooltip = "How far you can look sideways while standing still before your character turns.",
        .min = 0.f,
        .max = 90.f,
        .format = "%.0f degrees",
        .is_enabled = [] { return !endfield::camera::unavailable && endfield::camera::first_person_movement >= .5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraEyeHeight",
        .binding = &endfield::camera::eye_height,
        .default_value = 0.05f,
        .label = "Eye Height Adjustment",
        .section = "First Person",
        .tooltip = "Fine-tunes eye height relative to the head bone.",
        .min = -0.5f,
        .max = 0.5f,
        .format = "%.2f m",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "CameraEyeForward",
        .binding = &endfield::camera::eye_forward,
        .default_value = 0.03f,
        .label = "Eye Forward Offset",
        .section = "First Person",
        .tooltip = "Moves the camera slightly ahead of the head, without shifting downward when looking down.",
        .min = 0.0f,
        .max = 0.5f,
        .format = "%.2f m",
        .is_enabled = [] { return !endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Camera controls unavailable for this game build or modified camera code.",
        .section = "Camera Controls",
        .is_visible = [] { return endfield::camera::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "First person: exit the game built-in photo first-person mode.",
        .section = "Camera Controls",
        .is_visible = [] { return endfield::camera::status.load() == 4; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "First person: no recognized head bone found on the current character.",
        .section = "Camera Controls",
        .is_visible = [] { return endfield::camera::status.load() == 5; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Camera state was not valid; the original camera was preserved.",
        .section = "Camera Controls",
        .is_visible = [] { return endfield::camera::status.load() == 3; },
    },
    new renodx::utils::settings::Setting{
        .key = "HDRScreenshots",
        .binding = &endfield::screenshots::enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "HDR Screenshots",
        .section = "Screenshots",
        .tooltip = "Saves an HDR photo and a color-corrected SDR copy, with reference-white normalization and highlight compression.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::screenshots::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "HideUI",
        .binding = &endfield::ui_visibility::hide_all,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide UI",
        .section = "UI Visibility",
        .tooltip = "Hides the game UI, including UID, latency bar and ping. The ReShade overlay stays available to restore it.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HideUID",
        .binding = &endfield::ui_visibility::hide_uid,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide UID",
        .section = "UI Visibility",
        .tooltip = "Hides only the on-screen UID. This choice remains set when Hide UI is turned off.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HideLatencyBar",
        .binding = &endfield::ui_visibility::hide_bar,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide Latency Bar",
        .section = "UI Visibility",
        .tooltip = "Hides the connection-quality bar independently of the numeric ping and UID.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HidePing",
        .binding = &endfield::ui_visibility::hide_ping,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide Ping",
        .section = "UI Visibility",
        .tooltip = "Hides the numeric ping in milliseconds independently of the connection-quality bar and UID.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HideQuestLog",
        .binding = &endfield::ui_visibility::hide_quest,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide Quest Log",
        .section = "UI Visibility",
        .tooltip = "Hides the on-screen quest tracker while preserving the quest-menu shortcut.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HideMap",
        .binding = &endfield::ui_visibility::hide_map,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide Map",
        .section = "UI Visibility",
        .tooltip = "Hides the HUD minimap independently of its surrounding buttons. The full-screen map remains available.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HideMapButtons",
        .binding = &endfield::ui_visibility::hide_map_buttons,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide Map Buttons",
        .section = "UI Visibility",
        .tooltip = "Hides the top-left HUD buttons and the quest and chat shortcuts around the minimap.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HideMenuButtons",
        .binding = &endfield::ui_visibility::hide_menu_buttons,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide Menu Buttons",
        .section = "UI Visibility",
        .tooltip = "Hides the top-right HUD menu buttons. Menu shortcuts remain usable.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .key = "HideUtilityWheel",
        .binding = &endfield::ui_visibility::hide_utility,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hide Utility Wheel Button",
        .section = "UI Visibility",
        .tooltip = "Hides the HUD utility button and its key hint. The opened utility wheel stays visible and usable.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return !endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "UI visibility unavailable; the game UI will be restored automatically.",
        .section = "UI Visibility",
        .is_visible = [] { return endfield::ui_visibility::unavailable.load(); },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Waiting for the game's UI runtime...",
        .section = "UI Visibility",
        .is_visible = [] { return endfield::ui_visibility::status.load() == 1 || endfield::ui_visibility::status.load() == 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "RemovePhotoFrame",
        .binding = &endfield::screenshots::remove_frame,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Remove Photo Frame and Footer",
        .section = "Screenshots",
        .tooltip = "Skips the frame and personal-info footer in photo mode, preserving full HDR and SDR dimensions. Other share screens keep their original composition.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .is_enabled = [] { return endfield::screenshots::enabled >= 0.5f && !endfield::screenshots::unavailable; },
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
        .label = "GTAO Full Resolution",
        .section = "Ambient Occlusion",
        .tooltip = "Renders ambient occlusion at full resolution. Off restores the vanilla half resolution.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .parse = [](float value) {
          return value == 1.f || value == 2.f ? 1.f : 0.f;
        },
    },
    new renodx::utils::settings::Setting{
        .key = "SSRResolution",
        .binding = &endfield::enhancer::ssr_resolution,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "SSR Full Resolution",
        .section = "Screen Space Reflections",
        .tooltip = "Renders reflections and their depth at full resolution, with matching reflection alignment. Off restores the vanilla half resolution.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
        .parse = [](float value) {
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
        .tint = kSettingTint,
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
        .tooltip = "Controls depth-of-field resolution: Vanilla uses half resolution; Full and Double increase it.",
        .labels = {"Vanilla", "Full", "Double"},
        .tint = kSettingTint,
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
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .key = "DoFFocusDistance",
        .binding = &endfield::enhancer::dof_focus_distance,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 10.f,
        .label = "Focus Distance",
        .section = "Depth of Field",
        .tooltip = "Controls the distance from the camera that remains in focus.",
        .tint = kSettingTint,
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
        .tint = kSettingTint,
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
        .tint = kSettingTint,
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
        .tint = kSettingTint,
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
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Restart the game to apply the DLSS-G HDR Patch change.",
        .section = "DLSS-G HDR Patch",
        .tint = 0xE6AD45,
        .is_visible = [] { return (endfield::enhancer::hdr_frame_generation >= 0.5f) != hdr_requested_at_startup; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .label = "Runtime Information",
        .section = "Runtime Information",
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
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelLimitOverride",
        .binding = &endfield::npc_distance::limit_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Override NPC Model Limit",
        .section = "Entity Population & Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelLimit",
        .binding = &endfield::npc_distance::model_limit,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 100.f,
        .label = "NPC Model Limit",
        .section = "Entity Population & Distance",
        .tooltip = "Maximum active NPC models. Off-camera unloads free slots.",
        .tint = kSettingTint,
        .min = 50.f,
        .max = endfield::npc_distance::kMaxModelLimit,
        .format = "%d",
        .is_enabled = [] { return endfield::npc_distance::limit_enabled >= 0.5f && !endfield::npc_distance::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelDistanceOverride",
        .binding = &endfield::npc_distance::regular_enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Override NPC Model Distance",
        .section = "Entity Population & Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .key = "NPCModelDistance",
        .binding = &endfield::npc_distance::regular_multiplier,
        .default_value = 2.f,
        .label = "NPC Model Distance",
        .section = "Entity Population & Distance",
        .tooltip = "Adjusts how far NPC models remain loaded.",
        .tint = kSettingTint,
        .min = 1.f,
        .max = endfield::npc_distance::kMaxDistanceMultiplier,
        .format = "%.1fx",
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
        .section = "Entity Population & Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .key = "AmbientNPCModelDistance",
        .binding = &endfield::npc_distance::ambient_multiplier,
        .default_value = 2.f,
        .label = "Ambient NPC Distance",
        .section = "Entity Population & Distance",
        .tooltip = "Adjusts the loading distance for background crowds.",
        .tint = kSettingTint,
        .min = 1.f,
        .max = endfield::npc_distance::kMaxDistanceMultiplier,
        .format = "%.1fx",
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
        .section = "Entity Population & Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .key = "EnemyLoadDistance",
        .binding = &endfield::world_distance::enemies_multiplier,
        .default_value = 2.f,
        .label = "Enemy Load Distance",
        .section = "Entity Population & Distance",
        .tooltip = "Adjusts how far enemies remain loaded.",
        .tint = kSettingTint,
        .min = 1.f,
        .max = 10.f,
        .format = "%.1fx",
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
        .section = "Entity Population & Distance",
        .tooltip = "Off restores the game's values.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .key = "InteractiveLoadDistance",
        .binding = &endfield::world_distance::interactive_multiplier,
        .default_value = 2.f,
        .label = "Interactive Entity Load Distance",
        .section = "Entity Population & Distance",
        .tooltip = "Adjusts the loading distance for interactive objects, such as teleporters.",
        .tint = kSettingTint,
        .min = 1.f,
        .max = 10.f,
        .format = "%.1fx",
        .is_enabled = [] { return endfield::world_distance::interactive_enabled >= 0.5f && !endfield::world_distance::unavailable; },

        .parse = SnapEntityDistance,
        .on_change = [] { SnapEntityDistanceSetting("InteractiveLoadDistance"); },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Entity distance unavailable; check ReShade.log.",
        .section = "Entity Population & Distance",
        .is_visible = [] { return endfield::world_distance::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "NPC distance controls unavailable; check ReShade.log for details.",
        .section = "Entity Population & Distance",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 1.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 1.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 1.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 0.05f,
        .max = 1.0f,
        .format = "%.2f s",
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
        .tint = kSettingTint,
        .min = 0.5f,
        .max = 10.0f,
        .format = "%.1f s",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 100.0f,
        .format = "%.0f%%",
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
        .tint = kSettingTint,
        .min = 5.0f,
        .max = 100.0f,
        .format = "%.0f m",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 1.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 4.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 0.05f,
        .max = 2.0f,
        .format = "%.2f s",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 1.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 1.0f,
        .max = 8.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 1.0f,
        .max = 32.0f,
        .format = "%d",
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
        .tint = kSettingTint,
        .min = 0.25f,
        .max = 5.0f,
        .format = "%.2f ms",
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
        .tint = kSettingTint,
        .min = 0.0f,
        .max = 1000.0f,
        .format = "%d",
        .is_enabled = [] { return !endfield::npc_loading::unavailable && endfield::npc_loading::loading_override >= 0.5f; },
    },
    new renodx::utils::settings::Setting{
        .key = "Uncensor",
        .binding = &endfield::uncensor::enabled,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Uncensor",
        .section = "Uncensor",
        .tooltip = "Disables camera-driven character transparency. May also affect proximity fading.",
        .labels = {"Off", "On"},
        .tint = kSettingTint,
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "Uncensor unavailable for this game build or another camera patch is active.",
        .section = "Uncensor",
        .is_visible = []() { return endfield::uncensor::unavailable; },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Addon developed by ItsTheSewerRat.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Many thanks to ShortFuse for RenoDX.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Special thanks to RankFTW for ReLimiter.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Special thanks to EightySixK for his original FPS Unlocker and Graphical Enhancement Tool.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .label = "Addon Build Version",
        .section = "About",
        .on_draw = [] {
          ImGui::TextWrapped("Addon build: %s", endfield::runtime_status::LoadedVersion(endfield::runtime_status::addon_module).c_str());
          return false;
        },
    },
};

void OnOverlay(reshade::api::effect_runtime* runtime) {
  overlay_device = runtime->get_device();

  frame_generation_available = runtime->get_device()->get_api() == reshade::api::device_api::vulkan;
  ssr_override_available = HasSsrBaseAddon(runtime->get_device()->get_api());
  const char* reason = GetHDRUnavailableReason(runtime->get_device()->get_api());
  hdr_available = reason == nullptr;
  hdr_warning_setting->label = reason == nullptr ? "" : reason;

  ImGui::PushFont(nullptr, ImGui::GetStyle().FontSizeBase);
  endfield::menu::Draw(settings);
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
  endfield::window_enhancements::install_window_enhancements(
      window, endfield::runtime_status::addon_module);
  endfield::window_enhancements::notify_window_presented();
  UpdateFpsLimitFormat(fps_limit_setting);
  UpdateFpsLimitFormat(frame_generation_fps_limit_setting);
  UpdateFpsLimitFormat(background_fps_limit_setting);
  dof_near_setting->format = dof_near_setting->GetValue() == 0.f ? "Off" : "%.1f";
  dof_far_setting->format = dof_far_setting->GetValue() == 0.f ? "Off" : "%.1f";

  endfield::enhancer::OnPresent(swapchain == nullptr ? nullptr : swapchain->get_device());
  endfield::uncensor::OnPresent();
  endfield::camera::OnPresent();
  endfield::ui_visibility::OnPresent();
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

}

extern "C" __declspec(dllexport) const char* const NAME =
    "RenoDX: Arknights Endfield Enhancer";
extern "C" __declspec(dllexport) const char* const AUTHOR =
    "ItsaRat";
extern "C" __declspec(dllexport) const char* const DESCRIPTION =
    "FPS, SSR, DoF, GTAO, LOD, and HDR frame-generation improvements for Arknights: Endfield";

BOOL APIENTRY DllMain(HMODULE h_module, DWORD reason, LPVOID) {
  if (reason == DLL_THREAD_ATTACH || reason == DLL_THREAD_DETACH) return TRUE;
  if (!IsEndfieldProcess()) return TRUE;

  switch (reason) {
    case DLL_PROCESS_ATTACH:
      endfield::runtime_status::addon_module = h_module;
      endfield::window_enhancements::thread_exit_log = [](const char* reason, unsigned long error) {
        char text[192];
        std::snprintf(text, sizeof(text), "Endfield enhancer: title-bar controls thread exited (%s, error %lu).", reason, error);
        reshade::log::message(reshade::log::level::info, text);
      };
      endfield::window_enhancements::disabled_log = [](int exits) {
        char text[192];
        std::snprintf(text, sizeof(text),
                      "Endfield enhancer: title-bar controls thread exited %d times right after start; window enhancements disabled for this session (unsupported environment, e.g. Wine).",
                      exits);
        reshade::log::message(reshade::log::level::warning, text);
      };
      endfield::cursor_guard::status_log = [](bool installed) {
        if (!installed) reshade::log::message(reshade::log::level::warning,
                                              "Endfield cursor guard: refused unsupported build, changed imports, or failed transaction; native cursor behavior retained.");
      };
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
      reshade::register_event<reshade::addon_event::reshade_overlay>(endfield::shortcuts::OnFrame);
      reshade::register_event<reshade::addon_event::reshade_present>(endfield::camera::detail::freecam::OnCursorPresent);
      reshade::register_event<reshade::addon_event::init_command_list>(endfield::screenshots::observer::OnInitCommandList);
      reshade::register_event<reshade::addon_event::init_command_queue>(endfield::screenshots::observer::OnInitQueue);
      reshade::register_event<reshade::addon_event::destroy_device>(endfield::screenshots::observer::OnDestroyDevice);
      break;
    case DLL_PROCESS_DETACH:
      endfield::window_enhancements::request_window_enhancements_shutdown();
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);
      reshade::unregister_event<reshade::addon_event::reshade_overlay>(endfield::shortcuts::OnFrame);
      reshade::unregister_event<reshade::addon_event::reshade_present>(endfield::camera::detail::freecam::OnCursorPresent);
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
      endfield::screenshots::photo_alpha::Use(reason);
      endfield::screenshots::photo_resource::Use(reason);
      endfield::world_distance::Shutdown();
      endfield::npc_offcamera::Shutdown();
      endfield::npc_loading::Shutdown();
      endfield::npc_distance::Shutdown();
      endfield::lod::Shutdown();
      endfield::ui_visibility::Shutdown();
      endfield::camera::Shutdown();
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
    endfield::screenshots::photo_resource::Use(reason);
    endfield::screenshots::photo_alpha::Use(reason);
    hdr_requested_at_startup = endfield::enhancer::hdr_frame_generation >= 0.5f;
    if (hdr_requested_at_startup && endfield::vulkan_loader::IsInstalled()) {
      reshade::register_event<reshade::addon_event::copy_resource>(endfield::hdr_output::OnPresentationCopy);
      reshade::register_event<reshade::addon_event::copy_texture_region>(endfield::hdr_output::OnPresentationCopyRegion);
    }
    reshade::unregister_overlay(
        renodx::utils::settings::overlay_title.c_str(),
        renodx::utils::settings::OnRegisterOverlay);
    reshade::register_overlay(renodx::utils::settings::overlay_title.c_str(), OnOverlay);
  }
  renodx::utils::swapchain::Use(reason);

  if (reason == DLL_PROCESS_DETACH) reshade::unregister_addon(h_module);
  return TRUE;
}

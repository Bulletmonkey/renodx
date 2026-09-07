#include <Windows.h>
#include <cstdlib>
#include <cstring>
#include <cwchar>
#include <iostream>
#include <set>

static bool loader_present = false;
static bool marker_present = false;
static bool base_present = false;
static HMODULE TestGetModuleHandleW(LPCWSTR name) {
  if (name != nullptr && std::wcscmp(name, L"vulkan-1.dll") == 0) {
    return loader_present ? reinterpret_cast<HMODULE>(0x1234) : nullptr;
  }
  if (name != nullptr && std::wcscmp(name, L"renodx-endfield.addon64") == 0) {
    return base_present ? reinterpret_cast<HMODULE>(0x6789) : nullptr;
  }
  return GetModuleHandleW(name);
}
static FARPROC TestGetProcAddress(HMODULE module, LPCSTR name) {
  if (module != reinterpret_cast<HMODULE>(0x1234)
      || std::strcmp(name, "RenoDXEndfieldVulkanBridgeStatusV1") != 0) std::abort();
  return marker_present ? reinterpret_cast<FARPROC>(0x5678) : nullptr;
}
#define GetModuleHandleW TestGetModuleHandleW
#define GetProcAddress TestGetProcAddress
#include "../vulkan_loader_api.hpp"
#undef GetModuleHandleW
#undef GetProcAddress

// Exercise the actual addon policy and callbacks; no game or graphics driver.
#define GetModuleHandleW TestGetModuleHandleW
#include "../addon.cpp"
#undef GetModuleHandleW
#include "bokeh_api_stubs.hpp"

struct StatusDevice : bokeh_test::DeviceStub {
  bool available = true;
  uint32_t version = 58108;
  reshade::api::device_api api = reshade::api::device_api::vulkan;
  reshade::api::device_api get_api() const override { return api; }
  bool get_property(reshade::api::device_properties property, void* output) const override {
    if (!available || property != reshade::api::device_properties::driver_version) return false;
    *static_cast<uint32_t*>(output) = version;
    return true;
  }
};

static std::set<std::pair<reshade::addon_event, void*>> registered_events;
extern "C" __declspec(dllexport) void ReShadeRegisterEvent(reshade::addon_event event, void* callback) {
  registered_events.emplace(event, callback);
}
extern "C" __declspec(dllexport) void ReShadeUnregisterEvent(reshade::addon_event event, void* callback) {
  registered_events.erase({event, callback});
}
extern "C" __declspec(dllexport) void ReShadeLogMessage(void*, int, const char*) {}

static void Require(bool condition) {
  if (!condition) {
    std::cerr << "Enhancer availability regression\n";
    std::exit(1);
  }
}

int main() {
  reshade::internal::get_reshade_module_handle(GetModuleHandleW(nullptr));
  reshade::internal::get_current_module_handle(GetModuleHandleW(nullptr));
  using Api = reshade::api::device_api;
  uint32_t api_version = 0;
  endfield::enhancer::hdr_frame_generation = 1.f;
  endfield::enhancer::frame_generation_fps_limit = 240.f;
  Require(!frame_generation_fps_limit_setting->is_enabled());
  Require(std::strcmp(AUTHOR, "ItsTheSewerRat") == 0);
  Require(std::any_of(settings.begin(), settings.end(), [](const auto* setting) {
    return setting->section == "About" && setting->label == "- Addon developed by Rat.";
  }));
  auto* hdr_setting = *std::find_if(settings.begin(), settings.end(), [](const auto* setting) {
    return setting->key == "HDRFrameGeneration";
  });
  auto* override_setting = *std::find_if(settings.begin(), settings.end(), [](const auto* setting) {
    return setting->key == "ImprovedSSROverride";
  });
  std::vector<std::string> dof_labels;
  std::vector<std::string> ssr_labels;
  for (const auto* setting : settings) {
    Require(setting->key.find("Bokeh") == std::string::npos && setting->key.find("Cinematic") == std::string::npos);
    Require(setting->key != "DoFMethod");
    Require(setting->key != "SSRSharpest");
    Require(setting->key != "SSRBlurDepthSampling");
    Require(setting->key != "SSRFullResolutionDepth" && setting->key != "SSRAlignment");
    Require(setting->section != "Visual Improvements");
    if (setting->section == "Depth of Field") dof_labels.push_back(setting->label);
    if (setting->section == "Screen Space Reflections") {
      Require(setting->GetValue() == 0.f);
      if (setting->value_type == renodx::utils::settings::SettingValueType::INTEGER) ssr_labels.push_back(setting->label);
    }
  }
  Require(dof_labels == std::vector<std::string>({"DoF Resolution", "Force DoF", "Focus Distance", "Near Blur Strength", "Far Blur Strength"}));
  Require(ssr_labels == std::vector<std::string>({"SSR Resolution", "Improved SSR Override"}));
  auto* resolution_setting = *std::find_if(settings.begin(), settings.end(), [](const auto* setting) {
    return setting->key == "SSRResolution";
  });
  for (float value : {1.f, 0.f, 1.f, 0.f}) {
    resolution_setting->Set(value)->Write();
    Require(endfield::enhancer::ssr_resolution == value && endfield::enhancer::ssr_full_depth == value);
  }
  Require(hdr_setting->section == "DLSS-G HDR Patch" && hdr_warning_setting->section == "DLSS-G HDR Patch");
  Require(std::any_of(settings.begin(), settings.end(), [](const auto* setting) {
    return setting->section == "DLSS-G HDR Patch" && setting->value_type == renodx::utils::settings::SettingValueType::CUSTOM;
  }));
  Require(endfield::runtime_status::LoadedVersion(nullptr) == "Not loaded");
  Require(endfield::runtime_status::DriverVersion(nullptr) == "Unavailable");
  StatusDevice status_device;
  Require(endfield::runtime_status::DriverVersion(&status_device) == "581.08");
  status_device.version = 0;
  Require(endfield::runtime_status::DriverVersion(&status_device) == "Unavailable");
  status_device.version = 58108;
  status_device.available = false;
  Require(endfield::runtime_status::DriverVersion(&status_device) == "Unavailable");
  status_device.available = true;
  status_device.api = Api::d3d11;
  Require(endfield::runtime_status::DriverVersion(&status_device) == "Unavailable");
  Require(endfield::runtime_status::LoadedVersion(GetModuleHandleW(L"kernel32.dll")).find("Loaded") == std::string::npos);
  for (const auto* setting : settings) {
    if (setting->key == "SSRResolution" || setting->key == "SSRFullResolutionDepth") {
      Require(setting->labels == std::vector<std::string>({
            "Half Resolution (Vanilla)", "Full Resolution"}));
    } else if (setting->key == "SSRAlignment") {
      Require(setting->labels == std::vector<std::string>({"Off", "On"}));
    } else if (setting->key == "ImprovedSSROverride") {
      Require(setting->labels == std::vector<std::string>({"Off", "On"}));
      Require(setting->tooltip.find("Improved SSR On") != std::string::npos);
    } else if (setting->key == "FullResolutionGTAO"
               || setting->key == "FullResolutionDoF") {
      Require(setting->labels == std::vector<std::string>({
          "Half Resolution (Vanilla)", "Full Resolution", "Double Resolution"}));
    }
  }

  for (Api api : {Api::d3d11, Api::d3d12, Api::vulkan}) {
    for (unsigned dependencies = 0; dependencies < 4; ++dependencies) {
      const bool present = (dependencies & 1) != 0;
      base_present = (dependencies & 2) != 0;
      for (bool marker : {false, true}) {
        loader_present = present;
        marker_present = marker;
        const bool expected = api == Api::vulkan && present && marker && base_present;
        const char* reason = GetHDRUnavailableReason(api);
        Require((reason == nullptr) == expected);
        if (api == Api::d3d11) Require(std::string(reason).find("DirectX 11") != std::string::npos);
        if (api == Api::vulkan && !(present && marker)) Require(std::string(reason).find("vulkan-1.dll") != std::string::npos);
        if (api == Api::vulkan && present && marker && !base_present) Require(std::string(reason).find("renodx-endfield.addon64") != std::string::npos);
        hdr_available = reason == nullptr;
        frame_generation_available = api == Api::vulkan;
        ssr_override_available = api == Api::vulkan || api == Api::d3d11;
        for (float force : {0.f, 1.f}) {
          endfield::enhancer::force_dof = force;
          Require(dof_near_setting->is_enabled() == (force == 1.f));
          Require(dof_far_setting->is_enabled() == (force == 1.f));
        }
        Require(frame_generation_fps_limit_setting->is_enabled() == (api == Api::vulkan));
        Require(endfield::enhancer::frame_generation_fps_limit == 240.f);
        Require(fps_limit_setting->is_enabled() && background_fps_limit_setting->is_enabled());
        Require(hdr_setting->is_enabled() == expected);
        Require(hdr_warning_setting->is_visible() == !expected);
        Require(override_setting->is_enabled()
                == ((api == Api::vulkan || api == Api::d3d11) && base_present));
        for (bool requested : {false, true}) {
          hdr_requested_at_startup = requested;
          Require(!OnCreateDevice(api, api_version));
          Require(endfield::hdr_output::events_registered == (requested && expected));
          Require(endfield::enhancer::hdr_frame_generation == 1.f);
          if (requested && expected) {
            Require(renodx::utils::shader::shared.data != nullptr);
            const auto count = registered_events.size();
            Require(count != 0);
            Require(!OnCreateDevice(api, api_version));
            Require(registered_events.size() == count);
          } else {
            Require(registered_events.empty());
          }
          endfield::hdr_output::UseEvents(DLL_PROCESS_DETACH);
          Require(!endfield::hdr_output::events_registered && registered_events.empty());
        }
      }
    }
  }
  Require(api_version == 0);
  // Inactive early copy observers must not inspect resources or graphics state.
  Require(!endfield::hdr_output::OnPresentationCopy(nullptr, {1}, {2}));
  Require(!endfield::hdr_output::OnPresentationCopyRegion(nullptr, {1}, 0, nullptr, {2}, 0, nullptr,
                                                        reshade::api::filter_mode::min_mag_mip_point));
  endfield::hdr_output::OnPresent(reinterpret_cast<reshade::api::swapchain*>(0x1234));
  std::cout << "48 renderer/loader/base-addon/preference cases: warnings, disabled controls, HDR registration, cleanup, saved preference and author credits passed\n";
}

#pragma once

#include <utility>
#include <type_traits>

#include "../../mods/shader.hpp"
#include "../../mods/swapchain.hpp"
#include "../../utils/settings.hpp"

namespace endfield::renderer {

inline constexpr auto kSupportedApi = reshade::api::device_api::d3d11;

inline bool IsSupported(reshade::api::device* device) {
  return device->get_api() == kSupportedApi;
}

inline void OnOverlay(reshade::api::effect_runtime* runtime) {
  if (!IsSupported(runtime->get_device())) return;
  renodx::utils::settings::OnRegisterOverlay(runtime);
}

inline void OnInitEffectRuntime(reshade::api::effect_runtime* runtime) {
  reshade::log::message(reshade::log::level::info,
                       IsSupported(runtime->get_device())
                           ? "Endfield addon active for this renderer."
                           : "Endfield addon inactive: this runtime uses a different graphics API.");
}

inline void Configure(renodx::mods::shader::CustomShaders* shaders) {
  // Never select the renderer from DLL presence or an auxiliary probe device.
  for (const auto api : {reshade::api::device_api::d3d9,
                         reshade::api::device_api::d3d10,
                         reshade::api::device_api::d3d11,
                         reshade::api::device_api::d3d12,
                         reshade::api::device_api::opengl,
                         reshade::api::device_api::vulkan}) {
    if (api != kSupportedApi) renodx::mods::swapchain::ignored_device_apis.insert(api);
  }
  renodx::mods::shader::on_create_pipeline_layout =
      [](reshade::api::device* device, std::span<reshade::api::pipeline_layout_param>) {
        return IsSupported(device);
      };
  renodx::mods::shader::on_init_pipeline_layout =
      [](reshade::api::device* device, reshade::api::pipeline_layout,
         std::span<const reshade::api::pipeline_layout_param>) {
        return IsSupported(device);
      };
  for (auto& [hash, shader] : *shaders) {
    shader.on_replace = [callback = std::move(shader.on_replace)](auto* cmd_list) {
      return IsSupported(cmd_list->get_device()) && (!callback || callback(cmd_list));
    };
    shader.on_inject = [callback = std::move(shader.on_inject)](auto* cmd_list) {
      return IsSupported(cmd_list->get_device()) && (!callback || callback(cmd_list));
    };
    if (shader.on_draw) {
      shader.on_draw = [callback = std::move(shader.on_draw)](auto* cmd_list) {
        // A foreign API must still execute the original game draw.
        return !IsSupported(cmd_list->get_device()) || callback(cmd_list);
      };
    }
    if (shader.on_drawn) {
      shader.on_drawn = [callback = std::move(shader.on_drawn)](auto* cmd_list) {
        if (IsSupported(cmd_list->get_device())) callback(cmd_list);
      };
    }
  }
}

// Filter module-owned callbacks too: both binaries use the same private-data
// UUIDs, so the inactive module must not initialize or destroy the other's data.
template <auto Callback> struct FilterEvent;
template <typename Result, typename First, typename... Args,
          Result (*Callback)(First, Args...)>
struct FilterEvent<Callback> {
  static Result Invoke(First first, Args... args) {
    reshade::api::device* device;
    if constexpr (std::is_same_v<First, reshade::api::device*>) {
      device = first;
    } else {
      device = first->get_device();
    }
    if (!IsSupported(device)) return Result();
    return Callback(first, args...);
  }
};

template <reshade::addon_event Event, auto Callback>
inline void UseEvent(DWORD reason) {
  if (reason == DLL_PROCESS_ATTACH) {
    reshade::unregister_event<Event>(Callback);
    reshade::register_event<Event>(FilterEvent<Callback>::Invoke);
  } else if (reason == DLL_PROCESS_DETACH) {
    reshade::unregister_event<Event>(FilterEvent<Callback>::Invoke);
  }
}

inline void UseRuntimeEvents(DWORD reason) {
  using namespace renodx::mods;
  UseEvent<reshade::addon_event::init_device, shader::OnInitDevice>(reason);
  UseEvent<reshade::addon_event::destroy_device, shader::OnDestroyDevice>(reason);
  UseEvent<reshade::addon_event::init_pipeline_layout, shader::OnInitPipelineLayout>(reason);
  UseEvent<reshade::addon_event::destroy_pipeline_layout, shader::OnDestroyPipelineLayout>(reason);
  if (shader::use_pipeline_layout_cloning) {
    UseEvent<reshade::addon_event::push_constants, shader::OnPushConstants>(reason);
    UseEvent<reshade::addon_event::push_descriptors, shader::OnPushDescriptors>(reason);
    UseEvent<reshade::addon_event::bind_descriptor_tables, shader::OnBindDescriptorTables>(reason);
  } else {
    UseEvent<reshade::addon_event::create_pipeline_layout, shader::OnCreatePipelineLayout>(reason);
  }
  if (shader::using_counted_shaders || shader::push_injections_on_present) {
    UseEvent<reshade::addon_event::present, shader::OnPresent>(reason);
  }
  UseEvent<reshade::addon_event::init_device, swapchain::OnInitDevice>(reason);
  UseEvent<reshade::addon_event::destroy_device, swapchain::OnDestroyDevice>(reason);
  UseEvent<reshade::addon_event::init_swapchain, swapchain::OnInitSwapchain>(reason);
  UseEvent<reshade::addon_event::destroy_swapchain, swapchain::OnDestroySwapchain>(reason);
  UseEvent<reshade::addon_event::present, swapchain::OnPresent>(reason);
  UseEvent<reshade::addon_event::set_fullscreen_state, swapchain::OnSetFullscreenState>(reason);
}

inline void UseOverlay(DWORD reason) {
  if (reason == DLL_PROCESS_ATTACH) {
    reshade::unregister_overlay(renodx::utils::settings::overlay_title.c_str(),
                               renodx::utils::settings::OnRegisterOverlay);
    reshade::register_overlay(renodx::utils::settings::overlay_title.c_str(), OnOverlay);
    reshade::register_event<reshade::addon_event::init_effect_runtime>(OnInitEffectRuntime);
  } else if (reason == DLL_PROCESS_DETACH) {
    reshade::unregister_overlay(renodx::utils::settings::overlay_title.c_str(), OnOverlay);
    reshade::unregister_event<reshade::addon_event::init_effect_runtime>(OnInitEffectRuntime);
  }
}

}  // namespace endfield::renderer

/*
 * Copyright (C) 2024 Carlos Lopez
 * SPDX-License-Identifier: MIT
 */

#define ImTextureID ImU64

// #define DEBUG_LEVEL_0

#include <algorithm>
#include <cstddef>
#include <cstring>
#include <cwchar>
#include <mutex>
#include <shared_mutex>
#include <sstream>
#include <unordered_map>
#include <vector>

#include <deps/imgui/imgui.h>
#include <include/reshade.hpp>

#include <embed/shaders.h>

#include "../../mods/shader.hpp"
#include "../../mods/swapchain.hpp"
#include "../../utils/bitwise.hpp"
#include "../../utils/data.hpp"
#include "../../utils/hash.hpp"
#include "../../utils/settings.hpp"
#include "../../utils/state.hpp"
#include "../../utils/swapchain.hpp"
#include "./shared.h"
#include "./renderer_guard.hpp"

namespace {

renodx::mods::shader::CustomShaders custom_shaders = {__ALL_CUSTOM_SHADERS};

bool UpgradePostProcessTarget(reshade::api::command_list* cmd_list) {
  const auto rtvs = renodx::utils::swapchain::GetRenderTargets(cmd_list);
  // These full-screen passes overwrite one color target, without scene depth.
  if (rtvs.size() != 1u) return true;
  if (renodx::mods::swapchain::ActivateCloneHotSwap(cmd_list->get_device(), rtvs[0])) {
    renodx::mods::swapchain::RewriteRenderTargets(cmd_list, 1u, rtvs.data(), {0});
  }
  return true;
}

ShaderInjectData shader_injection;

// Compiled DXBC patches address these existing b13 fields directly.
static_assert(offsetof(ShaderInjectData, fog_modification) == 49 * sizeof(float));
static_assert(offsetof(ShaderInjectData, cubemap_ambient_link) == 53 * sizeof(float));
static_assert(offsetof(ShaderInjectData, glass_transparency) == 54 * sizeof(float));
static_assert(offsetof(ShaderInjectData, improved_gtao) == 58 * sizeof(float));

const std::string build_date = __DATE__;
const std::string build_time = __TIME__;

float current_settings_mode = 0;
float current_render_reshade_before_ui = 0;

bool UsingSwapchainUpgrade() {
  return true;
}

bool UsingSwapchainUtil() {
  return (current_render_reshade_before_ui != 0.f
          || UsingSwapchainUpgrade());
}

void ApplySwapChainEncodingTarget(float encoding_value) {
  const bool is_hdr10 = encoding_value == 4.f;
  const bool is_scrgb = encoding_value == 5.f;

  if (is_hdr10) {
    renodx::mods::swapchain::target_format = reshade::api::format::r10g10b10a2_unorm;
    renodx::mods::swapchain::target_color_space = reshade::api::color_space::hdr10_st2084;
    renodx::mods::swapchain::use_resize_buffer = false;
  } else if (is_scrgb) {
    renodx::mods::swapchain::target_format = reshade::api::format::r16g16b16a16_float;
    renodx::mods::swapchain::target_color_space = reshade::api::color_space::extended_srgb_linear;
    renodx::mods::swapchain::use_resize_buffer = false;
  } else {
    renodx::mods::swapchain::target_format = reshade::api::format::r8g8b8a8_unorm;
    renodx::mods::swapchain::target_color_space = reshade::api::color_space::srgb_nonlinear;
    renodx::mods::swapchain::use_resize_buffer = true;
  }

  renodx::utils::device_proxy::SetTargetFormat(renodx::mods::swapchain::target_format);
  renodx::utils::device_proxy::SetTargetColorSpace(renodx::mods::swapchain::target_color_space);
  shader_injection.swap_chain_encoding_color_space = is_hdr10 ? 1.f : 0.f;
}

enum class ResolutionUniformSource {
  BUFFER_WIDTH,
  BUFFER_HEIGHT,
  RCP_WIDTH,
  RCP_HEIGHT,
  PIXEL_SIZE,
  SCREEN_SIZE,
};

struct ResolutionUniformBinding {
  reshade::api::effect_uniform_variable variable;
  ResolutionUniformSource source;
};

struct ResolutionUniformCache {
  std::vector<ResolutionUniformBinding> bindings;
  uint32_t width = 0u;
  uint32_t height = 0u;
};

std::mutex resolution_uniform_mutex;
std::unordered_map<reshade::api::effect_runtime*, ResolutionUniformCache> resolution_uniform_caches;

void UpdateReshadeResolutionUniforms(
    reshade::api::effect_runtime* runtime,
    uint32_t width,
    uint32_t height) {
  const std::lock_guard lock(resolution_uniform_mutex);
  auto [cache_iterator, inserted] = resolution_uniform_caches.try_emplace(runtime);
  auto& cache = cache_iterator->second;

  if (inserted) {
    runtime->enumerate_uniform_variables(
        nullptr,
        [&cache](
            reshade::api::effect_runtime* rt,
            reshade::api::effect_uniform_variable variable) {
          char source[64] = {};
          if (!rt->get_annotation_string_from_uniform_variable(variable, "source", source)) return;

          if (std::strcmp(source, "bufwidth") == 0) {
            cache.bindings.push_back({variable, ResolutionUniformSource::BUFFER_WIDTH});
          } else if (std::strcmp(source, "bufheight") == 0) {
            cache.bindings.push_back({variable, ResolutionUniformSource::BUFFER_HEIGHT});
          } else if (std::strcmp(source, "rcpwidth") == 0
                     || std::strcmp(source, "bufwidth_rcp") == 0
                     || std::strcmp(source, "buffer_rcp_width") == 0) {
            cache.bindings.push_back({variable, ResolutionUniformSource::RCP_WIDTH});
          } else if (std::strcmp(source, "rcpheight") == 0
                     || std::strcmp(source, "bufheight_rcp") == 0
                     || std::strcmp(source, "buffer_rcp_height") == 0) {
            cache.bindings.push_back({variable, ResolutionUniformSource::RCP_HEIGHT});
          } else if (std::strcmp(source, "pixelsize") == 0) {
            cache.bindings.push_back({variable, ResolutionUniformSource::PIXEL_SIZE});
          } else if (std::strcmp(source, "screensize") == 0) {
            cache.bindings.push_back({variable, ResolutionUniformSource::SCREEN_SIZE});
          }
        });
  }

  if (!inserted && cache.width == width && cache.height == height) return;

  cache.width = width;
  cache.height = height;
  const float resolution[2] = {
      static_cast<float>(width),
      static_cast<float>(height),
  };
  const float reciprocal_resolution[2] = {
      1.f / resolution[0],
      1.f / resolution[1],
  };

  for (const auto& binding : cache.bindings) {
    switch (binding.source) {
      case ResolutionUniformSource::BUFFER_WIDTH:
        runtime->set_uniform_value_float(binding.variable, resolution[0]);
        break;
      case ResolutionUniformSource::BUFFER_HEIGHT:
        runtime->set_uniform_value_float(binding.variable, resolution[1]);
        break;
      case ResolutionUniformSource::RCP_WIDTH:
        runtime->set_uniform_value_float(binding.variable, reciprocal_resolution[0]);
        break;
      case ResolutionUniformSource::RCP_HEIGHT:
        runtime->set_uniform_value_float(binding.variable, reciprocal_resolution[1]);
        break;
      case ResolutionUniformSource::PIXEL_SIZE:
        runtime->set_uniform_value_float(binding.variable, reciprocal_resolution, 2u);
        break;
      case ResolutionUniformSource::SCREEN_SIZE:
        runtime->set_uniform_value_float(binding.variable, resolution, 2u);
        break;
    }
  }
}

void OnReshadeReloadedEffects(reshade::api::effect_runtime* runtime) {
  if (!endfield::renderer::IsSupported(runtime->get_device())) return;
  const std::lock_guard lock(resolution_uniform_mutex);
  resolution_uniform_caches.erase(runtime);
}

void OnDestroyEffectRuntime(reshade::api::effect_runtime* runtime) {
  if (!endfield::renderer::IsSupported(runtime->get_device())) return;
  const std::lock_guard lock(resolution_uniform_mutex);
  resolution_uniform_caches.erase(runtime);
}

// Flag to track if we're currently executing our bypass render
// This prevents ReShade from rendering during normal present while allowing our bypass to work
static bool bypass_render_active = false;

// Deferred Tech Test preset application (avoids crash from UpdateSetting inside on_change_value)
static int pending_tech_test_preset = -1;  // -1 = none, 0 = restore defaults, 1 = apply tech test
static float prev_tech_test_look = -1.f;   // impossible initial value forces first-frame detection

// Callback to disable effects during normal present when bypass is enabled
// This prevents double-rendering (once via bypass, once via normal present)
void OnReshadeBeginEffects(reshade::api::effect_runtime* runtime,
                           reshade::api::command_list* cmd_list,
                           reshade::api::resource_view rtv,
                           reshade::api::resource_view rtv_srgb) {
  if (!endfield::renderer::IsSupported(runtime->get_device())) return;
  // Only intercept if bypass is enabled AND we're not currently in bypass render
  // When bypass is disabled (current_render_reshade_before_ui == 0), let ReShade render normally
  if (current_render_reshade_before_ui != 0.f && !bypass_render_active) {
    runtime->set_effects_state(false);
  }
}

// Callback to re-enable effects after present (keeps effects available for bypass)
void OnReshadeFinishEffects(reshade::api::effect_runtime* runtime,
                            reshade::api::command_list* cmd_list,
                            reshade::api::resource_view rtv,
                            reshade::api::resource_view rtv_srgb) {
  if (!endfield::renderer::IsSupported(runtime->get_device())) return;
  // Only re-enable if bypass is enabled AND we disabled them
  if (current_render_reshade_before_ui != 0.f && !bypass_render_active) {
    runtime->set_effects_state(true);
  }
}

bool ExecuteReshadeEffects(reshade::api::command_list* cmd_list) {
  if (current_render_reshade_before_ui == 0.f) return true;
  if (!UsingSwapchainUtil()) return true;

  auto* cmd_list_data = renodx::utils::data::Get<renodx::utils::swapchain::CommandListData>(cmd_list);
  if (cmd_list_data == nullptr) return true;
  if (cmd_list_data->current_render_targets.empty()) return true;

  // Get the ORIGINAL RTV from deferred lighting - do NOT use the clone here
  // The clone is at swapchain resolution (e.g., 3840x2160) but we want to render
  // ReShade effects at the pre-upscale resolution
  auto rtv0 = cmd_list_data->current_render_targets[0];
  if (rtv0.handle == 0) return true;
  auto* device = cmd_list->get_device();
  auto* data = renodx::utils::data::Get<renodx::utils::swapchain::DeviceData>(device);
  if (data == nullptr) return true;

  // Get the render target resolution
  auto resource = device->get_resource_from_view(rtv0);
  auto resource_desc = device->get_resource_desc(resource);
  uint32_t rtv_width = resource_desc.texture.width;
  uint32_t rtv_height = resource_desc.texture.height;

  const std::shared_lock lock(data->mutex);
  for (auto* runtime : data->effect_runtimes) {
    UpdateReshadeResolutionUniforms(runtime, rtv_width, rtv_height);
    runtime->set_effects_state(true);
    runtime->enumerate_techniques(
        nullptr,
        [cmd_list, rtv0](
            reshade::api::effect_runtime* rt,
            reshade::api::effect_technique technique) {
          if (!rt->get_technique_state(technique)) return;
          bypass_render_active = true;
          rt->render_technique(technique, cmd_list, rtv0, rtv0);
          bypass_render_active = false;
        });
  }

  return true;
}

struct __declspec(uuid("019bf1c8-074a-7e13-b353-54ce3ceec3de")) VfxCommandListData {
  reshade::api::resource_view pixel_srv_t0 = {0u};
};

struct VfxBoostMatch {
  uint32_t shader_crc;
  uint32_t texture_crc;
};

constexpr VfxBoostMatch vfx_boost_matches[] = {
    {0x1600CB92u, 0x512923BCu},
    {0x3D5CB25Eu, 0xFA6BD53Au},
    {0x2E4E8BA5u, 0x1A45F4EBu},
    {0x49E8BE54u, 0xF38B0BAAu},
};

std::shared_mutex vfx_handle_mutex;
std::unordered_map<uint64_t, uint32_t> vfx_handle_shaders;

void OnInitVfxResource(
    reshade::api::device* device,
    const reshade::api::resource_desc& desc,
    const reshade::api::subresource_data* initial_data,
    reshade::api::resource_usage /*initial_state*/,
    reshade::api::resource resource) {
  if (!endfield::renderer::IsSupported(device)) return;
  if (resource.handle == 0u
      || initial_data == nullptr
      || initial_data->data == nullptr
      || desc.type != reshade::api::resource_type::texture_2d
      || desc.texture.format != reshade::api::format::bc7_unorm_srgb
      || desc.texture.width != 256u
      || desc.texture.height != 256u) {
    return;
  }

  const auto source_size = initial_data->slice_pitch != 0u
                               ? initial_data->slice_pitch
                               : reshade::api::format_slice_pitch(
                                     desc.texture.format,
                                     initial_data->row_pitch != 0u
                                         ? initial_data->row_pitch
                                         : reshade::api::format_row_pitch(desc.texture.format, desc.texture.width),
                                     desc.texture.height);
  if (source_size != 65536u) return;

  const auto texture_crc = renodx::utils::hash::ComputeCRC32(
      static_cast<const uint8_t*>(initial_data->data), source_size);
  const auto match = std::ranges::find(vfx_boost_matches, texture_crc, &VfxBoostMatch::texture_crc);
  if (match == std::end(vfx_boost_matches)) return;

  const std::lock_guard lock(vfx_handle_mutex);
  vfx_handle_shaders[resource.handle] = match->shader_crc;
}

void OnDestroyVfxResource(reshade::api::device* device, reshade::api::resource resource) {
  if (!endfield::renderer::IsSupported(device)) return;
  const std::lock_guard lock(vfx_handle_mutex);
  vfx_handle_shaders.erase(resource.handle);
}

void OnInitVfxResourceView(
    reshade::api::device* device,
    reshade::api::resource resource,
    reshade::api::resource_usage /*usage*/,
    const reshade::api::resource_view_desc& /*desc*/,
    reshade::api::resource_view view) {
  if (!endfield::renderer::IsSupported(device)) return;
  const std::lock_guard lock(vfx_handle_mutex);
  const auto match = vfx_handle_shaders.find(resource.handle);
  if (match != vfx_handle_shaders.end()) {
    vfx_handle_shaders[view.handle] = match->second;
  }
}

void OnDestroyVfxResourceView(reshade::api::device* device, reshade::api::resource_view view) {
  if (!endfield::renderer::IsSupported(device)) return;
  const std::lock_guard lock(vfx_handle_mutex);
  vfx_handle_shaders.erase(view.handle);
}

void OnInitVfxCommandList(reshade::api::command_list* cmd_list) {
  if (!endfield::renderer::IsSupported(cmd_list->get_device())) return;
  renodx::utils::data::Create<VfxCommandListData>(cmd_list);
}

void OnDestroyVfxCommandList(reshade::api::command_list* cmd_list) {
  if (!endfield::renderer::IsSupported(cmd_list->get_device())) return;
  renodx::utils::data::Delete<VfxCommandListData>(cmd_list);
}

void OnResetVfxCommandList(reshade::api::command_list* cmd_list) {
  if (!endfield::renderer::IsSupported(cmd_list->get_device())) return;
  auto* data = renodx::utils::data::Get<VfxCommandListData>(cmd_list);
  if (data != nullptr) {
    data->pixel_srv_t0 = {0u};
  }
}

void OnPushVfxDescriptors(
    reshade::api::command_list* cmd_list,
    reshade::api::shader_stage stages,
    reshade::api::pipeline_layout /*layout*/,
    uint32_t layout_param,
    const reshade::api::descriptor_table_update& update) {
  if (!endfield::renderer::IsSupported(cmd_list->get_device())) return;
  if (layout_param != 1u
      || update.type != reshade::api::descriptor_type::shader_resource_view
      || update.binding != 0u
      || update.count == 0u
      || !renodx::utils::bitwise::HasFlag(stages, reshade::api::shader_stage::pixel)) {
    return;
  }

  auto* data = renodx::utils::data::Get<VfxCommandListData>(cmd_list);
  if (data == nullptr) return;
  data->pixel_srv_t0 = static_cast<const reshade::api::resource_view*>(update.descriptors)[0];
}

void RestoreVFXBoostShader(
    reshade::api::command_list* cmd_list,
    renodx::utils::shader::CommandListData* shader_state) {
  if (shader_state == nullptr) return;

  auto* pixel_state = renodx::utils::shader::GetCurrentPixelState(shader_state);
  if (pixel_state->pipeline.handle == 0u) return;
  cmd_list->bind_pipeline(pixel_state->applied_stage, pixel_state->pipeline);
}

bool ReplaceVFXBoostShader(reshade::api::command_list* cmd_list) {
  auto* shader_state = renodx::utils::shader::GetCurrentState(cmd_list);
  if (shader_state == nullptr) return false;
  if (shader_injection.perchannelblowout < 0.5f) {
    RestoreVFXBoostShader(cmd_list, shader_state);
    return false;
  }

  auto* data = renodx::utils::data::Get<VfxCommandListData>(cmd_list);
  if (data == nullptr || data->pixel_srv_t0.handle == 0u) {
    RestoreVFXBoostShader(cmd_list, shader_state);
    return false;
  }

  const auto shader_crc = renodx::utils::shader::GetCurrentPixelShaderHash(shader_state);
  const std::shared_lock lock(vfx_handle_mutex);
  const auto match = vfx_handle_shaders.find(data->pixel_srv_t0.handle);
  const bool should_replace = match != vfx_handle_shaders.end() && match->second == shader_crc;
  if (!should_replace) {
    RestoreVFXBoostShader(cmd_list, shader_state);
  }
  return should_replace;
}

bool ReplaceImprovedGTAOShader(reshade::api::command_list* cmd_list) {
  return shader_injection.improved_gtao >= 0.5f
      || shader_injection.disable_game_ao >= 0.5f;
}

bool ReplaceDisableGTAOShader(reshade::api::command_list* cmd_list) {
  return shader_injection.disable_game_ao >= 0.5f;
}

renodx::utils::settings::Settings settings = {
    new renodx::utils::settings::Setting{
        .key = "SettingsMode",
        .binding = &current_settings_mode,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .can_reset = false,
        .label = "Settings Mode",
        .labels = {"Simple", "Intermediate", "Advanced"},
        .is_global = true,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapType",
        .binding = &shader_injection.tone_map_type,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .can_reset = false,
        .label = "Tone Mapper",
        .section = "Tone Mapping",
        .tooltip = "Sets the tone mapper type. True Vanilla requires going back to the LOGIN MENU for all the changes to have an effect.",
        .labels = {"Vanilla", "RenoDRT"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapMethod",
        .binding = &shader_injection.reno_drt_tone_map_method,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Tone Map Method",
        .section = "Tone Mapping",
        .tooltip = "Selects the RenoDRT curve",
        .labels = {"Reinhard", "Hermite Spline"},
        .parse = [](float value) { return value + 1.f; },
        .is_visible = []() { return false;},
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapPeakNits",
        .binding = &shader_injection.peak_white_nits,
        .default_value = 1000.f,
        .can_reset = true,
        .label = "Peak Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of peak white in nits",
        .min = 48.f,
        .max = 4000.f,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapGameNits",
        .binding = &shader_injection.diffuse_white_nits,
        .default_value = 203.f,
        .label = "Game Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the value of 100% white in nits",
        .min = 48.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapUINits",
        .binding = &shader_injection.graphics_white_nits,
        .default_value = 203.f,
        .label = "UI Brightness",
        .section = "Tone Mapping",
        .tooltip = "Sets the brightness of UI and HUD elements in nits",
        .min = 48.f,
        .max = 500.f,
    },
    new renodx::utils::settings::Setting{
        .key = "GammaCorrection",
        .binding = &shader_injection.gamma_correction,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Scene Gamma Correction",
        .section = "Tone Mapping",
        .tooltip = "Emulates a display EOTF.",
        .labels = {"Off", "2.2", "BT.1886"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainGammaCorrection",
        .binding = &shader_injection.swap_chain_gamma_correction,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "UI Gamma Correction",
        .section = "Tone Mapping",
        .labels = {"None", "2.2", "2.4"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return current_settings_mode >= 2; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapScaling",
        .binding = &shader_injection.tone_map_per_channel,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Scaling",
        .section = "Tone Mapping",
        .tooltip = "Luminance scales colors consistently while per-channel saturates and blows out sooner",
        .labels = {"Luminance", "Per Channel"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapWorkingColorSpace",
        .binding = &shader_injection.tone_map_working_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Working Color Space",
        .section = "Tone Mapping",
        .labels = {"BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueProcessor",
        .binding = &shader_injection.tone_map_hue_processor,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hue Processor",
        .section = "Tone Mapping",
        .tooltip = "Selects hue processor",
        .labels = {"OKLab", "ICtCp", "darkTable UCS"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueCorrection",
        .binding = &shader_injection.tone_map_hue_correction,
        .default_value = 100.f,
        .label = "Hue Correction",
        .section = "Tone Mapping",
        .tooltip = "Hue retention strength.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return false;},
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapHueShift",
        .binding = &shader_injection.tone_map_hue_shift,
        .default_value = 85.f,
        .label = "Hue Shift",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapPerChannelBlowout",
        .binding = &shader_injection.tone_map_blowout,
        .default_value = 75.f,
        .label = "Per Channel Blowout",
        .section = "Tone Mapping",
        .tooltip = "Per Channel Blowout strength.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapClampColorSpace",
        .binding = &shader_injection.tone_map_clamp_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Clamp Color Space",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .labels = {"None", "BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapClampPeak",
        .binding = &shader_injection.tone_map_clamp_peak,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Clamp Peak",
        .section = "Tone Mapping",
        .tooltip = "Hue-shift emulation strength.",
        .labels = {"None", "BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeExposure",
        .binding = &shader_injection.tone_map_exposure,
        .default_value = 1.f,
        .label = "Exposure",
        .section = "Color Grading",
        .max = 2.f,
        .format = "%.2f",
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlights",
        .binding = &shader_injection.tone_map_highlights,
        .default_value = 50.f,
        .label = "Highlights",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeShadows",
        .binding = &shader_injection.tone_map_shadows,
        .default_value = 50.f,
        .label = "Shadows",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeContrast",
        .binding = &shader_injection.tone_map_contrast,
        .default_value = 50.f,
        .label = "Contrast",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeSaturation",
        .binding = &shader_injection.tone_map_saturation,
        .default_value = 50.f,
        .label = "Saturation",
        .section = "Color Grading",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeHighlightSaturation",
        .binding = &shader_injection.tone_map_highlight_saturation,
        .default_value = 50.f,
        .label = "Highlight Saturation",
        .section = "Color Grading",
        .tooltip = "Adds or removes highlight color.",
        .max = 100.f,
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value * 0.02f; },
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeBlowout",
        .binding = &shader_injection.tone_map_dechroma,
        .default_value = 0.f,
        .label = "Blowout",
        .section = "Color Grading",
        .tooltip = "Controls highlight desaturation due to overexposure.",
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeFlare",
        .binding = &shader_injection.tone_map_flare,
        .default_value = 0.f,
        .label = "Flare",
        .section = "Color Grading",
        .tooltip = "Flare/Glare Compensation",
        .max = 100.f,
        .parse = [](float value) { return value * 0.02f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ColorGradeScene",
        .binding = &shader_injection.color_grade_strength,
        .default_value = 100.f,
        .label = "Scene Grading",
        .section = "Color Grading",
        .tooltip = "Scene grading as applied by the game",
        .max = 100.f,
        .is_enabled = []() { return shader_injection.tone_map_type > 0; },
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "VideoAutoHDR",
        .binding = &shader_injection.tone_map_hdr_video,
        .value_type = renodx::utils::settings::SettingValueType::BOOLEAN,
        .default_value = 1.f,
        .label = "Video AutoHDR",
        .section = "Video",
        .tooltip = "Upgrades SDR videos to HDR.",
    },
    new renodx::utils::settings::Setting{
        .key = "ToneMapVideoNits",
        .binding = &shader_injection.tone_map_video_nits,
        .default_value = 500.f,
        .can_reset = true,
        .label = "Video Brightness",
        .section = "Video",
        .tooltip = "Sets the peak brightness for video content in nits",
        .min = 48.f,
        .max = 1000.f,
    },
    new renodx::utils::settings::Setting{
        .key = "fxRCASSharpening",
        .binding = &shader_injection.fx_rcas_sharpening,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "FSR RCAS Sharpening",
        .section = "Effects",
        .tooltip = "Enable Robust Contrast Adaptive Sharpening."
                   "\nProvides better image clarity.",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "fxRCASAmount",
        .binding = &shader_injection.fx_rcas_amount,
        .default_value = 50.f,
        .label = "RCAS Sharpening Amount",
        .section = "Effects",
        .tooltip = "Adjusts RCAS sharpening strength.",
        .max = 100.f,
        .is_enabled = []() { return shader_injection.fx_rcas_sharpening >= 1.f; },
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting({
            .key = "FxGrainStrength",
            .binding = &shader_injection.custom_grain_strength,
            .default_value = 0.f,
            .label = "Perceptual Grain Strength",
            .section = "Effects",
            .parse = [](float value) { return value * 0.01f; },
        }),
    new renodx::utils::settings::Setting{
        .key = "VignetteStrength",
        .binding = &shader_injection.vignette_strength,
        .default_value = 50.f,
        .label = "Vignette Strength",
        .section = "Effects",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "ChromaticAberrationStrength",
        .binding = &shader_injection.chromatic_aberration_strength,
        .default_value = 50.f,
        .label = "Chromatic Aberration",
        .section = "Effects",
        .tooltip = "Controls the intensity of chromatic aberration effect.",
        .min = 0.f,
        .max = 100.f,
        .parse = [](float value) { return value * 0.01f; },
    },
    new renodx::utils::settings::Setting{
        .key = "BloomStrength",
        .binding = &shader_injection.bloom_strength,
        .value_type = renodx::utils::settings::SettingValueType::FLOAT,
        .default_value = 50.f,
        .can_reset = true,
        .label = "Bloom Strength",
        .section = "Effects",
        .tooltip = "Adjusts the intensity of bloom effects.",
        .min = 0.f,
        .max = 100.f,
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::CUSTOM,
        .label = std::string("Reshade shader bypass, applies on_drawn after game's deferred lighting pass. Only properly works with DLAA/TAAU 100 scaling atm"),
        .on_draw = []() {
          ImGui::PushStyleColor(ImGuiCol_Text, ImVec4(1.0f, 0.0f, 0.0f, 1.0f));
          ImGui::TextWrapped("Reshade shader bypass, applies on_drawn after game's deferred lighting pass. Only properly works with DLAA/TAAU 100 scaling atm");
          ImGui::PopStyleColor();
          return false;
        },
    },
        new renodx::utils::settings::Setting{
        .key = "RenderReshadeBeforeUI",
        .binding = &current_render_reshade_before_ui,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "ReShade Before UI",
        .section = "Effects",
        .tooltip = "Executes ReShade effects before UI is drawn.",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "DisableGameAO",
        .binding = &shader_injection.disable_game_ao,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Disable Game GTAO",
        .section = "Effects",
        .tooltip = "Disables the game's built-in GTAO (Ground Truth Ambient Occlusion).\nUseful when using ReShade-based AO instead.",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "VFXBoost",
        .binding = &shader_injection.perchannelblowout,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "VFX Boost (Experimental)",
        .section = "Rendering Improvements",
        .tooltip = "Boosts the luminance of supported VFX shaders for brighter highlights.\nExperimental: this may have unintended effects.",
        .labels = {"Original", "Enhanced"},
    },
    new renodx::utils::settings::Setting{
        .key = "HDRSun",
        .binding = &shader_injection.sun_intensity,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "HDR Sun",
        .section = "Rendering Improvements",
        .tooltip = "Reworks the sun to be more HDR-like",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "Godrays",
        .binding = &shader_injection.godrays_intensity,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Godrays",
        .section = "Rendering Improvements",
        .tooltip = "Controls godray intensity",
        .labels = {"Off", "Vanilla", "2x", "3x"},
    },
    new renodx::utils::settings::Setting{
        .key = "SHADOW_HARDENING",
        .binding = &shader_injection.shadow_hardening,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Improved Shadows",
        .section = "Rendering Improvements",
        .tooltip = "Toggle improved shadow occlusion for objects and foliage",
        .labels = {"Off", "On"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "FAKE_CLOUD_SHADOWS",
        .binding = &shader_injection.fake_cloud_shadows,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Vanilla Fake Cloud Shadows",
        .section = "Rendering Improvements",
        .tooltip = "Toggles fake cloud shadows",
        .labels = {"Off", "On / Vanilla"},
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "FogModification",
        .binding = &shader_injection.fog_modification,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Hue-Preserving Fog",
        .section = "Rendering Improvements",
        .tooltip = "Toggles alternative hue-preserving fog",
        .labels = {"Original", "Alt"},
    },
    new renodx::utils::settings::Setting{
        .key = "CubemapAmbientLink",
        .binding = &shader_injection.cubemap_ambient_link,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Cubemap Ambient Link",
        .section = "Rendering Improvements",
        .tooltip = "Modulates cubemap reflections by ambient luminance",
        .labels = {"Off", "On"},
    },
    new renodx::utils::settings::Setting{
        .key = "GlassTransparency",
        .binding = &shader_injection.glass_transparency,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "Glass Transparency",
        .section = "Rendering Improvements",
        .tooltip = "Improves glass rendering to look more transparent and less cloudy/glowing",
        .labels = {"Vanilla", "Improved"},
    },
    new renodx::utils::settings::Setting{
        .key = "ImprovedSSR",
        .binding = &shader_injection.improved_ssr,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "SSR Quality",
        .section = "Rendering Improvements",
        .tooltip = "Controls SSR ray tracing and temporal filtering.\n"
                   "Vanilla: Original trace budgets and temporal response.\n"
                   "Improved: Longer, more stable reflection rays and a sharper temporal response\n"
                   "  on smooth surfaces while retaining diffusion on rough surfaces.",
        .labels = {"Vanilla", "Improved"},
    },
    new renodx::utils::settings::Setting{
        .key = "ImprovedGTAO",
        .binding = &shader_injection.improved_gtao,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 1.f,
        .label = "GTAO + Visibility Bitmask + Deferred AO Modulation",
        .section = "Rendering Improvements",
        .tooltip = "Improves vanilla GTAO with visibility bitmask and AO modulation on direct lights (spotlights, point lights).",
        .labels = {"Original", "Improved"},
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainCustomColorSpace",
        .binding = &shader_injection.swap_chain_custom_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Custom Color Space",
        .section = "Display Output",
        .tooltip = "Selects output color space"
                   "\nUS Modern for BT.709 D65."
                   "\nJPN Modern for BT.709 D93."
                   "\nUS CRT for BT.601 (NTSC-U)."
                   "\nJPN CRT for BT.601 ARIB-TR-B9 D93 (NTSC-J)."
                   "\nDefault: US CRT",
        .labels = {
            "US Modern",
            "JPN Modern",
            "US CRT",
            "JPN CRT",
        },
        .is_visible = []() { return settings[0]->GetValue() >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainEncoding",
        .binding = &shader_injection.swap_chain_encoding,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 4.f,
        .label = "Encoding",
        .section = "Display Output",
        .labels = {"None", "SRGB", "2.2", "2.4", "HDR10", "scRGB"},
        .on_change_value = [](float previous, float current) {
          ApplySwapChainEncodingTarget(current);
        },
        .is_global = true,
        .is_visible = []() { return current_settings_mode >= 1; },
    },
    new renodx::utils::settings::Setting{
        .key = "IntermediateDecoding",
        .binding = &shader_injection.intermediate_encoding,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Intermediate Encoding",
        .section = "Display Output",
        .labels = {"Auto", "None", "SRGB", "2.2", "2.4"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) {
            if (value == 0) return shader_injection.gamma_correction + 1.f;
            return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainDecoding",
        .binding = &shader_injection.swap_chain_decoding,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Swapchain Decoding",
        .section = "Display Output",
        .labels = {"Auto", "None", "SRGB", "2.2", "2.4"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) {
            if (value == 0) return shader_injection.intermediate_encoding;
            return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "SwapChainClampColorSpace",
        .binding = &shader_injection.swap_chain_clamp_color_space,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 2.f,
        .label = "Clamp Color Space",
        .section = "Display Output",
        .labels = {"None", "BT709", "BT2020", "AP1"},
        .is_enabled = []() { return shader_injection.tone_map_type >= 1; },
        .parse = [](float value) { return value - 1.f; },
        .is_visible = []() { return false; },
    },
    new renodx::utils::settings::Setting{
        .key = "TechTestLook",
        .binding = &shader_injection.tech_test_look,
        .value_type = renodx::utils::settings::SettingValueType::INTEGER,
        .default_value = 0.f,
        .label = "Tech Test Look",
        .section = "Alternative Grading",
        .tooltip = "Activates visual adjustments to match the 2024 tech test aesthetic",
        .labels = {"Off", "On"},
        .on_change_value = [](float previous, float current) {
          if (current >= 1.f) pending_tech_test_preset = 1;
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "Discord",
        .section = "Links",
        .group = "button-line-1",
        .tint = 0x5865F2,
        .on_change = []() {
          renodx::utils::platform::LaunchURL("https://discord.gg/", "5WZXDpmbpP");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::BUTTON,
        .label = "More Mods",
        .section = "Links",
        .group = "button-line-1",
        .tint = 0x2B3137,
        .on_change = []() {
          renodx::utils::platform::LaunchURL("https://github.com/", "clshortfuse/renodx/wiki/Mods");
        },
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Addon developed by Spiwar & Forge.",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- Maintained by Rat for Arknights: Endfield 1.5",
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = std::string("- Special thanks to both Musa & Miru for helping with the addon"),
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = std::string("- Many thanks to ShortFuse for RenoDX"),
        .section = "About",
    },
    new renodx::utils::settings::Setting{
        .value_type = renodx::utils::settings::SettingValueType::TEXT,
        .label = "- This build was compiled on " + build_date + " at " + build_time + ".",
        .section = "About",
    },
};

void OnPresetOff() {
     renodx::utils::settings::UpdateSetting("ToneMapType", 0.f);
     renodx::utils::settings::UpdateSetting("ToneMapPeakNits", 203.f);
     renodx::utils::settings::UpdateSetting("ToneMapGameNits", 203.f);
     renodx::utils::settings::UpdateSetting("ToneMapUINits", 203.f);
     renodx::utils::settings::UpdateSetting("ToneMapGammaCorrection", 1.f);
     renodx::utils::settings::UpdateSetting("GammaCorrection", 1.f);
     renodx::utils::settings::UpdateSetting("SwapChainGammaCorrection", 1.f);
     renodx::utils::settings::UpdateSetting("HDRSun", 0.f);
     renodx::utils::settings::UpdateSetting("Godrays", 1.f);
     renodx::utils::settings::UpdateSetting("SHADOW_HARDENING", 0.f);
     renodx::utils::settings::UpdateSetting("FogModification", 0.f);
     renodx::utils::settings::UpdateSetting("CubemapAmbientLink", 0.f);
     renodx::utils::settings::UpdateSetting("GlassTransparency", 0.f);
     renodx::utils::settings::UpdateSetting("ImprovedSSR", 0.f);
     renodx::utils::settings::UpdateSetting("ImprovedGTAO", 0.f);
     renodx::utils::settings::UpdateSetting("VFXBoost", 0.f);
     renodx::utils::settings::UpdateSetting("TechTestLook", 0.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeExposure", 1.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeHighlights", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeShadows", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeContrast", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeSaturation", 50.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeLUTStrength", 100.f);
  //   renodx::utils::settings::UpdateSetting("colorGradeLUTScaling", 0.f);
}

void OnPresent(reshade::api::command_queue* queue,
               reshade::api::swapchain* swapchain,
               const reshade::api::rect* source_rect,
               const reshade::api::rect* dest_rect,
               uint32_t dirty_rect_count,
               const reshade::api::rect* dirty_rects) {
  if (!endfield::renderer::IsSupported(queue->get_device())) return;
  static uint32_t random_state = 0x9E3779B9u;
  random_state = random_state * 1664525u + 1013904223u;
  shader_injection.custom_random = static_cast<float>(random_state >> 8u) / 16777216.f;

  auto* device = queue->get_device();
  if (device->get_api() == reshade::api::device_api::opengl) {
    shader_injection.custom_flip_uv_y = 1.f;
  }

  // Detect Tech Test state changes from preset loads, game startup, or manual toggle
  float current_tech_test = shader_injection.tech_test_look;
  if (current_tech_test != prev_tech_test_look) {
    if (current_tech_test >= 1.f) pending_tech_test_preset = 1;
    prev_tech_test_look = current_tech_test;
  }

  // Apply deferred Tech Test preset (safe context, outside settings callback)
  if (pending_tech_test_preset == 1) {
    renodx::utils::settings::UpdateSetting("GammaCorrection", 2.f);
    renodx::utils::settings::UpdateSetting("SwapChainGammaCorrection", 2.f);
    renodx::utils::settings::UpdateSetting("ToneMapPerChannelBlowout", 75.f);
    renodx::utils::settings::UpdateSetting("ColorGradeExposure", 0.75f);
    renodx::utils::settings::UpdateSetting("ColorGradeHighlights", 50.f);
    renodx::utils::settings::UpdateSetting("ColorGradeShadows", 80.f);
    renodx::utils::settings::UpdateSetting("ColorGradeContrast", 55.f);
    renodx::utils::settings::UpdateSetting("ColorGradeSaturation", 35.f);
    renodx::utils::settings::UpdateSetting("ColorGradeHighlightSaturation", 100.f);
    renodx::utils::settings::UpdateSetting("ColorGradeBlowout", 30.f);
    pending_tech_test_preset = -1;
  }

}

bool initialized = false;

}  // namespace

extern "C" __declspec(dllexport) constexpr const char* NAME = "RenoDX: Arknights Endfield (DirectX 11)";
extern "C" __declspec(dllexport) constexpr const char* DESCRIPTION = "RenoDX DirectX 11 build for Arknights: Endfield";

bool IsEndfieldProcess() {
  wchar_t executable_path[MAX_PATH] = {};
  if (GetModuleFileNameW(nullptr, executable_path, MAX_PATH) == 0u) return false;

  const wchar_t* executable_name = std::wcsrchr(executable_path, L'\\');
  executable_name = executable_name == nullptr ? executable_path : executable_name + 1;
  return _wcsicmp(executable_name, L"Endfield.exe") == 0;
}

BOOL APIENTRY DllMain(HMODULE h_module, DWORD fdw_reason, LPVOID lpv_reserved) {
  if (fdw_reason == DLL_THREAD_ATTACH || fdw_reason == DLL_THREAD_DETACH) return TRUE;
  if (!IsEndfieldProcess()) return TRUE;

  switch (fdw_reason) {
    case DLL_PROCESS_ATTACH:
      if (!reshade::register_addon(h_module)) return FALSE;

      if (!initialized) {
        renodx::mods::shader::force_pipeline_cloning = true;
        renodx::mods::shader::expected_constant_buffer_space = 50;
        renodx::mods::shader::expected_constant_buffer_index = 13;
        renodx::mods::shader::allow_multiple_push_constants = true;
        renodx::mods::swapchain::expected_constant_buffer_index = 13;
        renodx::mods::swapchain::expected_constant_buffer_space = 50;
        renodx::mods::swapchain::use_resource_cloning = true;
        renodx::mods::swapchain::swap_chain_proxy_shaders = {
            {
                reshade::api::device_api::d3d11,
                {
                    .vertex_shader = __swap_chain_proxy_vertex_shader_dx11,
                    .pixel_shader = __swap_chain_proxy_pixel_shader_dx11,
                },
            },
            {
                reshade::api::device_api::d3d12,
                {
                    .vertex_shader = __swap_chain_proxy_vertex_shader_dx12,
                    .pixel_shader = __swap_chain_proxy_pixel_shader_dx12,
                },
            },
        };

        renodx::mods::swapchain::force_borderless = false;

        {
          auto* setting = new renodx::utils::settings::Setting{
              .key = "SwapChainPreventFullscreen",
              .value_type = renodx::utils::settings::SettingValueType::INTEGER,
              .default_value = 1.f,
              .label = "Prevent Fullscreen",
              .section = "Display Output",
              .tooltip = "Prevent exclusive fullscreen for proper HDR",
              .labels = {
                  "Disabled",
                  "Enabled",
              },
              .on_change_value = [](float previous, float current) { renodx::mods::swapchain::prevent_full_screen = (current == 1.f); },
              .is_global = true,
              .is_visible = []() { return false; },
          };
          renodx::utils::settings::LoadSetting(renodx::utils::settings::global_name, setting);
          renodx::mods::swapchain::prevent_full_screen = (setting->GetValue() == 1.f);
          settings.push_back(setting);
        }

        // Initialize SwapChainEncoding-related settings
        {
          float encoding_value = 4.f;  // default
          reshade::get_config_value(nullptr, renodx::utils::settings::global_name.c_str(), "SwapChainEncoding", encoding_value);
          ApplySwapChainEncodingTarget(encoding_value);
        }

        {
          auto* setting = new renodx::utils::settings::Setting{
              .key = "SwapChainDeviceProxy",
              .value_type = renodx::utils::settings::SettingValueType::INTEGER,
              .default_value = 0.f,
              .label = "Use Display Proxy",
              .section = "Display Proxy",
              .labels = {"Off", "On"},
              .is_global = true,
              .is_visible = []() { return false; },
          };
          renodx::utils::settings::LoadSetting(renodx::utils::settings::global_name, setting);
          bool use_device_proxy = setting->GetValue() == 1.f;
          renodx::mods::swapchain::use_device_proxy = use_device_proxy;
          renodx::mods::swapchain::set_color_space = !use_device_proxy;
          if (!use_device_proxy) {
            shader_injection.custom_flip_uv_y = 0.f;
          }
          reshade::register_event<reshade::addon_event::present>(OnPresent);
          // Register callbacks to ALWAYS disable ReShade during normal present
          // This ensures ReShade only ever renders at internal resolution via bypass
          reshade::register_event<reshade::addon_event::reshade_begin_effects>(OnReshadeBeginEffects);
          reshade::register_event<reshade::addon_event::reshade_finish_effects>(OnReshadeFinishEffects);
          reshade::register_event<reshade::addon_event::reshade_reloaded_effects>(OnReshadeReloadedEffects);
          reshade::register_event<reshade::addon_event::destroy_effect_runtime>(OnDestroyEffectRuntime);
          settings.push_back(setting);
        }

        {
          auto* setting = new renodx::utils::settings::Setting{
              .key = "SwapChainDeviceProxyBaseWaitIdle",
              .value_type = renodx::utils::settings::SettingValueType::INTEGER,
              .default_value = 0.f,
              .label = "Base Wait Idle",
              .section = "Display Proxy",
              .labels = {"Off", "On"},
              .is_global = true,
              .is_visible = []() { return false; },
          };
          renodx::utils::settings::LoadSetting(renodx::utils::settings::global_name, setting);
          bool use_device_proxy =
              renodx::mods::swapchain::device_proxy_wait_idle_source = (setting->GetValue() == 1.f);
          settings.push_back(setting);
        }

        {
          auto* setting = new renodx::utils::settings::Setting{
              .key = "SwapChainDeviceProxyProxyWaitIdle",
              .value_type = renodx::utils::settings::SettingValueType::INTEGER,
              .default_value = 0.f,
              .label = "Proxy Wait Idle",
              .section = "Display Proxy",
              .labels = {"Off", "On"},
              .is_global = true,
              .is_visible = []() { return false; },
          };
          renodx::utils::settings::LoadSetting(renodx::utils::settings::global_name, setting);
          bool use_device_proxy =
              renodx::mods::swapchain::device_proxy_wait_idle_destination = (setting->GetValue() == 1.f);
          settings.push_back(setting);
        }

        for (const auto format : {reshade::api::format::r8g8b8a8_typeless,
                                  reshade::api::format::r8g8b8a8_unorm}) {
          // Keep internal render-resolution data out of the direct upgrade.
          renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
              .old_format = format,
              .new_format = reshade::api::format::r16g16b16a16_float,
              .ignore_size = false,
              .usage_include = reshade::api::resource_usage::render_target,
              .name = "Endfield swapchain-size linear intermediate DX11 upgrade",
          });
          // Eligibility alone does not activate a clone: only the known
          // post-process shaders below select their outputs, at any size.
          renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
              .old_format = format,
              .new_format = reshade::api::format::r16g16b16a16_float,
              .ignore_size = true,
              .use_resource_view_cloning = true,
              .use_resource_view_hot_swap = true,
              .usage_include = reshade::api::resource_usage::render_target,
              .name = "Endfield shader-selected HDR post-process intermediate",
          });
        }
        constexpr uint32_t post_process_shaders[] = {
            0x03DF538F, 0x0497F492, 0x0BB60C37, 0x1E0C02EC,
            0x22696E6B, 0x231F3B6B, 0x2729B430, 0x2970B6A6,
            0x29EA566F, 0x2AD9D42E, 0x32A5505C, 0x332E0835,
            0x4C67C490, 0x52A77DB9, 0x52AC7E00, 0x63AB936D,
            0x6BBE99DA, 0x7B0B4041, 0x81073AFC, 0x86D9DED1,
            0x89929873, 0x8F2C3A6B, 0x93EC2A6B, 0x96ABA1A0,
            0xACB34505, 0xACCCB347, 0xB06827CB, 0xBC012E29,
            0xC32F6D7B, 0xD589DFEB, 0xD8401285, 0xDBC83F91,
            0xDC23C161, 0xFBD38A69, 0xFFFBB3BD,
            0x7CF14F74,  // Post-process blit / optional sharpening, before UI.
        };
        for (const auto crc : post_process_shaders) {
          custom_shaders.at(crc).on_draw = UpgradePostProcessTarget;
        }
        /*
        renodx::mods::swapchain::swap_chain_upgrade_targets.push_back({
            .old_format = reshade::api::format::r10g10b10a2_unorm,
            .new_format = reshade::api::format::r16g16b16a16_float,
            .ignore_size = false,
            //.use_resource_view_cloning = true,
            .aspect_ratio = static_cast<float>(renodx::mods::swapchain::SwapChainUpgradeTarget::BACK_BUFFER),
            .aspect_ratio_tolerance = 0.02f,
            .usage_include = reshade::api::resource_usage::render_target,
        });
        */
        // Grass/foliage deferred shaders for ReShade AO
        const uint32_t target_crcs[] = {
            0x4BF704A4u,
            0xEFA7F46Fu,
            0x66F41E33u,
            0x7F533976u,
            0x82083D15u,
            0xACD57C4Du,
            0xC181EA40u,
            0xEE78E1BAu,
        };

        for (uint32_t crc : target_crcs) {
          // Ensure an entry exists for the shader hash even if we don't have compiled HLSL
          auto it = custom_shaders.find(crc);
          if (it == custom_shaders.end()) {
            renodx::mods::shader::CustomShader cs{};
            cs.crc32 = crc;
            cs.on_drawn = ExecuteReshadeEffects;
            custom_shaders.emplace(crc, std::move(cs));
          } else {
            it->second.on_drawn = ExecuteReshadeEffects;
          }
        }

        for (const auto& match : vfx_boost_matches) {
          auto it = custom_shaders.find(match.shader_crc);
          if (it != custom_shaders.end()) {
            it->second.on_replace = ReplaceVFXBoostShader;
          }
        }

        // Improved GTAO shaders
        const uint32_t improved_gtao_crcs[] = {
            0x43A0000Bu,
            0xDC56DC61u,
            0xDD16F0F8u,
        };
        for (uint32_t crc : improved_gtao_crcs) {
          auto it = custom_shaders.find(crc);
          if (it != custom_shaders.end()) {
            it->second.on_replace = ReplaceImprovedGTAOShader;
          }
        }

        {
          auto it = custom_shaders.find(0xA683B186u);
          if (it != custom_shaders.end()) {
            it->second.on_replace = ReplaceDisableGTAOShader;
          }
        }

        // Track resources and command-list state used by VFX classification.
        reshade::register_event<reshade::addon_event::init_command_list>(OnInitVfxCommandList);
        reshade::register_event<reshade::addon_event::reset_command_list>(OnResetVfxCommandList);
        reshade::register_event<reshade::addon_event::destroy_command_list>(OnDestroyVfxCommandList);
        reshade::register_event<reshade::addon_event::init_resource>(OnInitVfxResource);
        reshade::register_event<reshade::addon_event::destroy_resource>(OnDestroyVfxResource);
        reshade::register_event<reshade::addon_event::init_resource_view>(OnInitVfxResourceView);
        reshade::register_event<reshade::addon_event::destroy_resource_view>(OnDestroyVfxResourceView);
        reshade::register_event<reshade::addon_event::push_descriptors>(OnPushVfxDescriptors);

        endfield::renderer::Configure(&custom_shaders);
        initialized = true;
      }

      break;
    case DLL_PROCESS_DETACH:
      reshade::unregister_event<reshade::addon_event::init_command_list>(OnInitVfxCommandList);
      reshade::unregister_event<reshade::addon_event::reset_command_list>(OnResetVfxCommandList);
      reshade::unregister_event<reshade::addon_event::destroy_command_list>(OnDestroyVfxCommandList);
      reshade::unregister_event<reshade::addon_event::init_resource>(OnInitVfxResource);
      reshade::unregister_event<reshade::addon_event::destroy_resource>(OnDestroyVfxResource);
      reshade::unregister_event<reshade::addon_event::init_resource_view>(OnInitVfxResourceView);
      reshade::unregister_event<reshade::addon_event::destroy_resource_view>(OnDestroyVfxResourceView);
      reshade::unregister_event<reshade::addon_event::push_descriptors>(OnPushVfxDescriptors);
      reshade::unregister_event<reshade::addon_event::present>(OnPresent);
      reshade::unregister_event<reshade::addon_event::reshade_begin_effects>(OnReshadeBeginEffects);
      reshade::unregister_event<reshade::addon_event::reshade_finish_effects>(OnReshadeFinishEffects);
      reshade::unregister_event<reshade::addon_event::reshade_reloaded_effects>(OnReshadeReloadedEffects);
      reshade::unregister_event<reshade::addon_event::destroy_effect_runtime>(OnDestroyEffectRuntime);
      break;
  }

  renodx::utils::settings::Use(fdw_reason, &settings, &OnPresetOff);
  endfield::renderer::UseOverlay(fdw_reason);
  renodx::mods::swapchain::Use(fdw_reason, &shader_injection);
  renodx::mods::shader::Use(fdw_reason, custom_shaders, &shader_injection);
  renodx::utils::state::Use(fdw_reason);
  endfield::renderer::UseRuntimeEvents(fdw_reason);

  if (fdw_reason == DLL_PROCESS_DETACH) {
    reshade::unregister_addon(h_module);
  }

  return TRUE;
}

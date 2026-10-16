#pragma once

#include <Windows.h>
#include <algorithm>
#include <cstddef>
#include <cwchar>
#include <filesystem>
#include <include/reshade.hpp>
#include <shared_mutex>
#include <string>
#include <vector>

#include <array>
#include <atomic>
#include <cstring>
#include <map>
#include <memory>
#include <mutex>
#include <span>
#include <sstream>
#include <tuple>
#include <unordered_map>

#include <embed/shaders.h>
#include <sl_core_api.h>
#include <sl_dlss_g.h>
#include "./native_hooks.hpp"

#pragma include_alias("vk_platform.h", "deps/glad/target/include/vk_platform.h")
#include <deps/glad/target/include/glad/vulkan.h>
#pragma include_alias("vk_platform.h", "vk_platform.h")
#include "../../mods/swapchain.hpp"
#include "../../utils/render.hpp"
#include "../../utils/resource_upgrade.hpp"

namespace endfield::frame_generation {

struct OutputState {
  bool want_copy_only = false;
  std::unordered_map<uint64_t, uint64_t> working_copies;
  std::vector<reshade::api::pipeline> retired_pipelines;
};

struct OutputParameters {
  float peak_white_nits;
  float graphics_white_nits;
  float swap_chain_decoding;
  float swap_chain_gamma_correction;
  float swap_chain_custom_color_space;
  float swap_chain_clamp_color_space;
  float swap_chain_encoding;
  float swap_chain_encoding_color_space;
};

static OutputParameters* output_parameters = nullptr;
static float enabled = 0.f;
static bool requested_at_startup = false;
static bool active_at_startup = false;
static std::atomic_bool stopped = false;
static std::atomic_bool installed = false;
static std::shared_mutex install_mutex;
static PFun_slDLSSGSetOptions* set_options = nullptr;
static PFN_vkCreateSwapchainKHR create_swapchain = nullptr;
static std::vector<native_hooks::Function> hooks;

struct ImageState {
  reshade::api::device* device = nullptr;
  reshade::api::resource original = {};
  uint64_t swapchain = 0;
  reshade::api::resource clone = {};
  uint32_t width = 0;
  uint32_t height = 0;
  bool active = false;
  bool encoded = false;
  bool failed = false;
  bool drawn = false;
  const char* preparation_failure = nullptr;
  OutputParameters parameters = {};
  renodx::utils::render::RenderPass pass;
};

struct SwapchainState {
  VkDevice device = VK_NULL_HANDLE;
  uint32_t width = 0;
  uint32_t height = 0;
  std::vector<uint64_t> images;
};

struct CommandState {
  reshade::api::command_list* command_list = nullptr;
  bool in_render_pass = false;
  uint64_t output_image = 0u;
  std::vector<uint64_t> pending_outputs;
};

struct GraphicsPipeline {
  reshade::api::device* device = nullptr;
  uint64_t revision = 0;
  reshade::api::pipeline fp16 = {};
  reshade::api::pipeline restore = {};
};

static std::recursive_mutex mutex;
static std::unordered_map<uint64_t, SwapchainState> swapchains;
static std::unordered_map<uint64_t, std::unique_ptr<ImageState>> images;
static std::unordered_map<reshade::api::device*, OutputState> outputs;
static std::unordered_map<uint64_t, CommandState> commands;
static std::unordered_map<uint64_t, GraphicsPipeline> graphics;
static thread_local bool forwarding = false;
static std::atomic_bool error_logged = false;
static bool events_registered = false;

static PFN_vkGetSwapchainImagesKHR get_images = nullptr;
static PFN_vkAcquireNextImageKHR acquire_image = nullptr;
static PFN_vkCmdPipelineBarrier pipeline_barrier = nullptr;
static PFN_vkCmdPipelineBarrier2 pipeline_barrier2 = nullptr;

inline void ReportFailure(const char* reason, const ImageState* image, uint64_t command_buffer = 0u) {
  if (error_logged.exchange(true)) return;

  std::ostringstream message;
  message << "Endfield HDR: " << reason
          << std::hex << " image=0x" << image->original.handle
          << " command=0x" << command_buffer
          << std::dec << " extent=" << image->width << 'x' << image->height
          << " drawn=" << image->drawn << " encoded=" << image->encoded
          << " preparation=" << (image->preparation_failure == nullptr ? "none" : image->preparation_failure);
  reshade::log::message(reshade::log::level::error, message.str().c_str());
}

static std::map<uint32_t, uint32_t> callback_hashes;

inline constexpr auto on_output_draw = []<typename Context>(Context& context)
    -> renodx::utils::command_action::CallbackResult<Context> {
  if (!installed.load(std::memory_order_relaxed) || context.IsDispatch()) return {};
  const std::lock_guard lock(mutex);
  const auto command = commands.find(context.cmd_list->get_native());
  if (command == commands.end() || command->second.output_image == 0u) return {};
  const auto target = images.find(command->second.output_image);
  if (target == images.end() || !target->second->active) return {};
  auto* image = target->second.get();

  const auto bound_pipeline = renodx::utils::state::GetBoundShaderPipeline(
      context.cmd_list, reshade::api::pipeline_stage::pixel_shader, &context.bound_state_cache);
  const auto pixel_hash = renodx::utils::state::GetCurrentShaderHash(
      context.cmd_list, reshade::api::pipeline_stage::pixel_shader, &context.bound_state_cache);
  const bool has_pixel_callback = pixel_hash != 0u && callback_hashes.contains(pixel_hash);
  if (!context.matched_shader_stage.has_value()) {
    const auto vertex_hash = renodx::utils::state::GetCurrentShaderHash(
        context.cmd_list, reshade::api::pipeline_stage::vertex_shader, &context.bound_state_cache);
    if (has_pixel_callback || callback_hashes.contains(vertex_hash)) return {};
  } else if (context.matched_shader_stage != reshade::api::pipeline_stage::pixel_shader && has_pixel_callback) {
    return {};
  }
  auto& pipeline = graphics[bound_pipeline.handle];
  reshade::api::pipeline_subobject* subobjects = nullptr;
  reshade::api::pipeline_layout layout = {};
  uint32_t count = 0;
  renodx::utils::pipeline::GetPipelineInfo(bound_pipeline, [&](const auto& info) {
    const auto& details = info.details;
    pipeline.device = info.device;
    pipeline.restore = (details.replacement_pipeline.handle != 0u ? details.replacement_pipeline : bound_pipeline);
    if (pipeline.fp16.handle != 0u && pipeline.revision == details.replacement_revision) return;
    if (pipeline.fp16.handle != 0u) {
      outputs[info.device].retired_pipelines.push_back(pipeline.fp16);
      pipeline.fp16 = {};
    }
    pipeline.revision = details.replacement_revision;
    count = static_cast<uint32_t>(details.subobjects.size());
    if (count == 0u || details.destroyed) return;
    subobjects = renodx::utils::pipeline::ClonePipelineSubObjects(details.subobjects.data(), count);
    layout = (details.injection_layout.handle != 0u ? details.injection_layout : info.layout);
    if (details.replacement_layout.handle != 0u) layout = details.replacement_layout;
    for (const auto& shader : details.subobject_shaders) {
      renodx::utils::shader::internal::shared.data->runtime_replacements.if_contains(
          {info.device, shader.shader_hash}, [&](const auto& replacement) {
            renodx::utils::shader::AddShaderReplacement(&subobjects[shader.subobject_index], replacement.second, info.device->get_api());
          });
    }
  });
  if (subobjects != nullptr) {
    bool compatible = false;
    for (uint32_t i = 0; i < count; ++i) {
      if (subobjects[i].type != reshade::api::pipeline_subobject_type::render_target_formats || subobjects[i].count != 1u) continue;
      auto* format = static_cast<reshade::api::format*>(subobjects[i].data);
      compatible = *format == reshade::api::format::r10g10b10a2_unorm
                   || *format == reshade::api::format::r8g8b8a8_unorm
                   || *format == reshade::api::format::r8g8b8a8_unorm_srgb
                   || *format == reshade::api::format::r16g16b16a16_float;
      *format = reshade::api::format::r16g16b16a16_float;
    }
    if (compatible) pipeline.device->create_pipeline(layout, count, subobjects, &pipeline.fp16);
    renodx::utils::pipeline::DestroyPipelineSubobjects(subobjects, count);
  }
  if (pipeline.fp16.handle == 0u) {
    image->failed = true;
    ReportFailure("draw.fp16_pipeline_unavailable", image, context.cmd_list->get_native());
    return {.bypass = true};
  }
  context.cmd_list->bind_pipeline(reshade::api::pipeline_stage::all_graphics, pipeline.fp16);
  image->drawn = true;
  return {
      .post_callback = [](Context& draw_context, const void* data) {
        draw_context.cmd_list->bind_pipeline(reshade::api::pipeline_stage::all_graphics,
                                             static_cast<const GraphicsPipeline*>(data)->restore);
      },
      .post_data = &pipeline,
      .replay = true,
  };
};

inline void OnDestroyPipeline(reshade::api::device* device, reshade::api::pipeline pipeline) {
  const std::lock_guard lock(mutex);
  const auto found = graphics.find(pipeline.handle);
  if (found == graphics.end()) return;
  if (found->second.fp16.handle != 0u) outputs[device].retired_pipelines.push_back(found->second.fp16);
  graphics.erase(found);
}

inline void SetCloneActive(ImageState* image, bool active) {
  std::vector<uint64_t> views;
  renodx::utils::resource::ResourceUpgradeInfo* target = nullptr;
  renodx::utils::resource::UpdateResourceInfo(image->original,
                                              [&](renodx::utils::resource::ResourceInfo* info) {
                                                if (info->destroyed) return;
                                                target = info->clone_target;
                                                info->clone_enabled = active;
                                                info->clone_can_deactivate = false;
                                                views.assign(info->resource_view_handles.begin(), info->resource_view_handles.end());
                                              });
  renodx::utils::resource::upgrade::UpdateResourceViewsCloneState(
      views, active, false, target);
  image->active = active;
}

inline bool PrepareImage(ImageState* image) {
  image->preparation_failure = nullptr;
  if (output_parameters == nullptr || output_parameters->swap_chain_encoding != 4.f || output_parameters->swap_chain_encoding_color_space != 1.f) return false;
  image->parameters = *output_parameters;
  if (image->clone.handle != 0u) return true;
  const auto usage = image->device->get_resource_desc(image->original).usage
                     | reshade::api::resource_usage::render_target
                     | reshade::api::resource_usage::shader_resource;
  if (!image->device->check_format_support(reshade::api::format::r16g16b16a16_float, usage)) {
    image->preparation_failure = "prepare.fp16_format_unsupported";
    return false;
  }
  if (!image->device->check_format_support(reshade::api::format::r10g10b10a2_unorm,
                                           reshade::api::resource_usage::render_target)) {
    image->preparation_failure = "prepare.rgb10_render_target_unsupported";
    return false;
  }

  auto* swapchain_data = renodx::utils::data::Get<renodx::mods::swapchain::v2::DeviceData>(image->device);
  if (swapchain_data == nullptr) return false;
  renodx::utils::resource::UpdateResourceInfo(image->original, [&](auto* info) {
    info->clone_target = &swapchain_data->swap_chain_clone_info;
    info->clone_enabled = false;
    info->clone_can_deactivate = false;
  });
  image->clone = renodx::utils::resource::upgrade::GetResourceClone(
      image->original, {.require_enabled = false, .allow_create = true});
  if (image->clone.handle == 0u) {
    image->preparation_failure = "prepare.clone_creation_failed";
    return false;
  }

  auto& pass = image->pass;

  pass.render_target_slots.resources = {image->original};
  pass.shader_resource_slots.resources = {image->clone};
  pass.pipeline_subobjects.vertex_shader = __swap_chain_proxy_vertex_shader;
  pass.pipeline_subobjects.pixel_shader = __swap_chain_proxy_pixel_shader;
  pass.sampler_descs.emplace_back();
  pass.render_target_load_op = reshade::api::render_pass_load_op::discard;
  pass.render_target_store_op = reshade::api::render_pass_store_op::store;
  pass.flush_after_render = false;

  pass.revert_state_after_render = false;
  pass.push_constants[{.slot = 0u, .space = 0u}] = std::span<const float>(reinterpret_cast<const float*>(&image->parameters), sizeof(OutputParameters) / sizeof(float));
  return true;
}

static void OnCloseCommandList(reshade::api::command_list* cmd) {
  if (!installed.load()) return;
  const std::lock_guard lock(mutex);
  const auto command = commands.find(cmd->get_native());
  if (command == commands.end()) return;
  for (const auto handle : command->second.pending_outputs) {
    const auto found = images.find(handle);
    if (found == images.end()) continue;
    auto* image = found->second.get();
    if (image->failed || image->encoded || !image->drawn || command->second.in_render_pass) {
      ReportFailure("close.output_not_ready", image, cmd->get_native());
      continue;
    }
    image->parameters = *output_parameters;
    cmd->barrier(image->original, reshade::api::resource_usage::present, reshade::api::resource_usage::render_target);
    cmd->barrier(image->clone, reshade::api::resource_usage::general, reshade::api::resource_usage::shader_resource_pixel);
    image->encoded = image->pass.Render(cmd);
    cmd->barrier(image->clone, reshade::api::resource_usage::shader_resource_pixel, reshade::api::resource_usage::general);
    cmd->barrier(image->original, reshade::api::resource_usage::render_target, reshade::api::resource_usage::present);
    if (image->encoded) {
      outputs[image->device].want_copy_only = true;
    } else {
      image->failed = true;
      ReportFailure("close.output_render_failed", image, cmd->get_native());
    }
  }
  command->second.pending_outputs.clear();
}

inline void TrackSwapchain(VkDevice device, VkSwapchainKHR swapchain,
                           const VkSwapchainCreateInfoKHR& desc) {
  if (desc.imageArrayLayers != 1u || desc.imageSharingMode != VK_SHARING_MODE_EXCLUSIVE) {
    reshade::log::message(reshade::log::level::warning,
                          "Endfield HDR: unsupported application swapchain sharing/layer contract; FP16 bridge not activated.");
    return;
  }
  const std::lock_guard lock(mutex);
  swapchains[reinterpret_cast<uint64_t>(swapchain)] = {
      device, desc.imageExtent.width, desc.imageExtent.height};
}

inline VkResult VKAPI_CALL HookGetImages(VkDevice device, VkSwapchainKHR swapchain,
                                         uint32_t* count, VkImage* result_images) {
  const VkResult result = get_images(device, swapchain, count, result_images);
  if ((result != VK_SUCCESS && result != VK_INCOMPLETE) || result_images == nullptr || count == nullptr) return result;
  const std::lock_guard lock(mutex);
  auto found = swapchains.find(reinterpret_cast<uint64_t>(swapchain));
  if (found == swapchains.end()) return result;
  auto& state = found->second;
  state.images.resize(*count);
  for (uint32_t i = 0; i < *count; ++i) {
    const uint64_t handle = reinterpret_cast<uint64_t>(result_images[i]);
    state.images[i] = handle;
    if (images.contains(handle)) continue;
    auto image = std::make_unique<ImageState>();
    renodx::utils::resource::GetResourceInfo({handle},
                                             [&](const renodx::utils::resource::ResourceInfo& info) {
                                               const auto& desc = info.desc;
                                               if (info.destroyed || info.is_swap_chain || info.is_clone || info.clone_target != nullptr
                                                   || info.device == nullptr || info.device->get_native() != reinterpret_cast<uint64_t>(device)
                                                   || desc.type != reshade::api::resource_type::texture_2d
                                                   || desc.texture.format != reshade::api::format::r10g10b10a2_unorm
                                                   || desc.texture.width != state.width || desc.texture.height != state.height
                                                   || desc.texture.levels != 1u || desc.texture.depth_or_layers != 1u || desc.texture.samples != 1u
                                                   || (desc.usage & reshade::api::resource_usage::render_target) == reshade::api::resource_usage::undefined) return;
                                               image->device = info.device;
                                               image->original = {handle};
                                               image->swapchain = reinterpret_cast<uint64_t>(swapchain);
                                               image->width = state.width;
                                               image->height = state.height;
                                             });
    if (image->device != nullptr) {
      images.emplace(handle, std::move(image));
    }
  }
  return result;
}

inline VkResult VKAPI_CALL HookAcquire(VkDevice device, VkSwapchainKHR swapchain,
                                      uint64_t timeout, VkSemaphore semaphore, VkFence fence, uint32_t* index) {
  const auto result = acquire_image(device, swapchain, timeout, semaphore, fence, index);
  if ((result != VK_SUCCESS && result != VK_SUBOPTIMAL_KHR) || index == nullptr) return result;
  const std::lock_guard lock(mutex);
  if (!installed.load()) return result;
  const auto chain = swapchains.find(reinterpret_cast<uint64_t>(swapchain));
  if (chain == swapchains.end() || *index >= chain->second.images.size()) return result;
  const auto found = images.find(chain->second.images[*index]);
  if (found == images.end() || found->second->failed) return result;
  auto* image = found->second.get();
  image->encoded = false;
  image->drawn = false;
  if (PrepareImage(image)) {
    SetCloneActive(image, true);
  } else {
    image->failed = true;
    ReportFailure("acquire.prepare_failed", image);
  }
  return result;
}

template <typename Barrier, typename Forward, typename Mirror>
inline void ProcessBarriers(VkCommandBuffer command_buffer, uint32_t count,
                            const Barrier* barriers, Forward&& forward, Mirror&& mirror) {
  if (!installed.load(std::memory_order_relaxed) || forwarding || count == 0u || barriers == nullptr) {
    forward();
    return;
  }
  const std::lock_guard lock(mutex);
  std::vector<std::tuple<ImageState*, Barrier, bool>> working;
  for (uint32_t i = 0; i < count; ++i) {
    const auto found = images.find(reinterpret_cast<uint64_t>(barriers[i].image));
    if (found == images.end()) continue;
    auto* image = found->second.get();
    auto command = commands.find(reinterpret_cast<uint64_t>(command_buffer));
    if (command == commands.end() || image->failed) continue;
    if (std::erase(command->second.pending_outputs, image->original.handle) != 0u) {
      image->failed = true;
      ReportFailure("barrier.output_reused_before_close", image, reinterpret_cast<uint64_t>(command_buffer));
      continue;
    }
    if (!image->active) continue;
    SetCloneActive(image, false);
    const auto& source = barriers[i];
    const bool output_boundary = source.oldLayout == VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
                                 && source.newLayout == VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
                                 && source.srcQueueFamilyIndex == VK_QUEUE_FAMILY_IGNORED
                                 && source.dstQueueFamilyIndex == VK_QUEUE_FAMILY_IGNORED
                                 && source.subresourceRange.aspectMask == VK_IMAGE_ASPECT_COLOR_BIT
                                 && source.subresourceRange.baseMipLevel == 0u
                                 && (source.subresourceRange.levelCount == 1u || source.subresourceRange.levelCount == VK_REMAINING_MIP_LEVELS)
                                 && source.subresourceRange.baseArrayLayer == 0u
                                 && (source.subresourceRange.layerCount == 1u || source.subresourceRange.layerCount == VK_REMAINING_ARRAY_LAYERS);
    if (output_boundary) {
      command->second.pending_outputs.push_back(image->original.handle);
    } else if (source.newLayout == VK_IMAGE_LAYOUT_PRESENT_SRC_KHR) {
      image->failed = true;
      ReportFailure("barrier.unsupported_present_transition", image, reinterpret_cast<uint64_t>(command_buffer));
    }
    auto barrier = barriers[i];
    barrier.image = reinterpret_cast<VkImage>(image->clone.handle);
    barrier.oldLayout = (barrier.oldLayout == VK_IMAGE_LAYOUT_PRESENT_SRC_KHR ? VK_IMAGE_LAYOUT_GENERAL : barrier.oldLayout);
    barrier.newLayout = (barrier.newLayout == VK_IMAGE_LAYOUT_PRESENT_SRC_KHR ? VK_IMAGE_LAYOUT_GENERAL : barrier.newLayout);
    working.emplace_back(image, barrier, output_boundary);
  }
  forwarding = true;
  forward();
  for (const auto& [image, barrier, output_boundary] : working) {
    mirror(barrier);
    if (!output_boundary && !image->failed) SetCloneActive(image, true);
  }
  forwarding = false;
}

inline void VKAPI_CALL HookBarrier(VkCommandBuffer cmd, VkPipelineStageFlags src,
                                   VkPipelineStageFlags dst, VkDependencyFlags flags, uint32_t memory_count,
                                   const VkMemoryBarrier* memory, uint32_t buffer_count,
                                   const VkBufferMemoryBarrier* buffers, uint32_t image_count,
                                   const VkImageMemoryBarrier* image_barriers) {
  ProcessBarriers(cmd, image_count, image_barriers, [&] { pipeline_barrier(cmd, src, dst, flags, memory_count, memory, buffer_count, buffers, image_count, image_barriers); }, [&](const VkImageMemoryBarrier& barrier) { pipeline_barrier(cmd, src, dst, flags, 0u, nullptr, 0u, nullptr, 1u, &barrier); });
}

inline void VKAPI_CALL HookBarrier2(VkCommandBuffer cmd, const VkDependencyInfo* dependency) {
  if (dependency == nullptr) return;
  ProcessBarriers(cmd, dependency->imageMemoryBarrierCount, dependency->pImageMemoryBarriers, [&] { pipeline_barrier2(cmd, dependency); }, [&](const VkImageMemoryBarrier2& barrier) {
        VkDependencyInfo mirrored = {VK_STRUCTURE_TYPE_DEPENDENCY_INFO};
        mirrored.dependencyFlags = dependency->dependencyFlags;
        mirrored.imageMemoryBarrierCount = 1u;
        mirrored.pImageMemoryBarriers = &barrier;
        pipeline_barrier2(cmd, &mirrored); });
}

inline void OnPresent(reshade::api::swapchain* swapchain, OutputParameters* presentation_parameters) {
  if (!installed.load(std::memory_order_relaxed) || swapchain == nullptr) return;
  const std::lock_guard lock(mutex);
  const auto found = outputs.find(swapchain->get_device());
  if (found == outputs.end()) return;

  auto& output = found->second;
  const auto back_buffer = swapchain->get_current_back_buffer();
  bool compatibility_mode = false;
  if (auto* data = renodx::utils::data::Get<renodx::mods::swapchain::v2::DeviceData>(swapchain->get_device())) {
    const std::shared_lock data_lock(data->mutex);
    if (const auto proxy = data->swapchain_proxy_passes.find(back_buffer.handle);
        proxy != data->swapchain_proxy_passes.end() && proxy->second != nullptr) {
      compatibility_mode = proxy->second->use_compatibility_mode;
    }
  }

  const bool copied_working_image = output.working_copies.erase(back_buffer.handle) != 0u;
  const bool working = !compatibility_mode && copied_working_image;
  if (output.want_copy_only && !working) {
    *presentation_parameters = {
        .peak_white_nits = 1.f,
        .graphics_white_nits = 1.f,
        .swap_chain_decoding = 0.f,
        .swap_chain_gamma_correction = 0.f,
        .swap_chain_custom_color_space = 0.f,
        .swap_chain_clamp_color_space = -1.f,
        .swap_chain_encoding = 0.f,
        .swap_chain_encoding_color_space = 0.f,
    };
  }
}

inline bool OnPresentationCopy(reshade::api::command_list*, reshade::api::resource source,
                               reshade::api::resource dest) {
  if (!installed.load(std::memory_order_relaxed)) return false;
  const std::lock_guard lock(mutex);
  if (outputs.empty() || renodx::utils::resource::shared.data == nullptr) return false;
  reshade::api::device* device = nullptr;
  bool destination_cloned = false;
  renodx::utils::resource::GetResourceInfo(dest, [&](const auto& info) {
    if (info.destroyed || !info.is_swap_chain) return;
    device = info.device;
    destination_cloned = info.clone_enabled && info.clone.handle != 0u
                         && info.clone_desc.texture.format == reshade::api::format::r16g16b16a16_float;
  });
  const auto output = outputs.find(device);
  if (output == outputs.end() || !output->second.want_copy_only) return false;
  output->second.working_copies.erase(dest.handle);
  const auto image = images.find(source.handle);
  if (!destination_cloned || image == images.end() || image->second->device != device
      || image->second->clone.handle == 0u || !image->second->encoded || image->second->failed) return false;
  renodx::utils::resource::GetResourceInfo(source, [&](const auto& info) {
    if (!info.destroyed && info.clone.handle == image->second->clone.handle
        && info.clone_desc.texture.format == reshade::api::format::r16g16b16a16_float) {
      output->second.working_copies[dest.handle] = source.handle;
    }
  });
  return false;
}

inline bool OnPresentationCopyRegion(reshade::api::command_list* cmd, reshade::api::resource source,
                                     uint32_t source_subresource, const reshade::api::subresource_box* source_box,
                                     reshade::api::resource dest, uint32_t dest_subresource,
                                     const reshade::api::subresource_box* dest_box, reshade::api::filter_mode) {
  if (!installed.load(std::memory_order_relaxed)
      || source_subresource != 0u || dest_subresource != 0u
      || renodx::utils::resource::shared.data == nullptr) return false;
  bool full_source = false, full_dest = false;
  renodx::utils::resource::GetResourceInfo(source, [&](const auto& info) {
    full_source = !info.destroyed && renodx::utils::resource::IsFullSubresourceUpdate(info.desc, 0u, source_box);
  });
  renodx::utils::resource::GetResourceInfo(dest, [&](const auto& info) {
    full_dest = !info.destroyed && info.is_swap_chain
                && renodx::utils::resource::IsFullSubresourceUpdate(info.desc, 0u, dest_box);
  });
  if (!full_source || !full_dest) return false;
  return OnPresentationCopy(cmd, source, dest);
}

inline void OnInitCommandList(reshade::api::command_list* cmd) {
  if (cmd->get_device()->get_api() != reshade::api::device_api::vulkan) return;
  const std::lock_guard lock(mutex);
  commands[cmd->get_native()] = {cmd, false};
}
inline void OnDestroyCommandList(reshade::api::command_list* cmd) {
  const std::lock_guard lock(mutex);
  commands.erase(cmd->get_native());
}
inline void OnBeginRenderPass(reshade::api::command_list* cmd, uint32_t count,
                              const reshade::api::render_pass_render_target_desc* targets, const reshade::api::render_pass_depth_stencil_desc*) {
  const std::lock_guard lock(mutex);
  if (auto found = commands.find(cmd->get_native()); found != commands.end()) {
    found->second.in_render_pass = true;
    found->second.output_image = 0u;
    if (count == 1u && targets != nullptr) {
      auto resource = cmd->get_device()->get_resource_from_view(targets[0].view);
      renodx::utils::resource::GetResourceInfo(resource, [&](const auto& info) {
        if (info.is_clone) resource = info.fallback;
      });
      if (images.contains(resource.handle)) found->second.output_image = resource.handle;
    }
  }
}
inline void OnEndRenderPass(reshade::api::command_list* cmd) {
  const std::lock_guard lock(mutex);
  if (auto found = commands.find(cmd->get_native()); found != commands.end()) {
    found->second.in_render_pass = false;
    found->second.output_image = 0u;
  }
}
inline void OnDestroyResource(reshade::api::device* device, reshade::api::resource resource) {
  const std::lock_guard lock(mutex);
  if (auto output = outputs.find(device); output != outputs.end()) {
    std::erase_if(output->second.working_copies, [resource](const auto& entry) {
      return entry.first == resource.handle || entry.second == resource.handle;
    });
  }
  const auto found = images.find(resource.handle);
  if (found == images.end()) return;
  const auto swapchain = found->second->swapchain;
  found->second->pass.DestroyAll(device);
  images.erase(found);
  if (std::ranges::none_of(images, [swapchain](const auto& entry) { return entry.second->swapchain == swapchain; })) {
    swapchains.erase(swapchain);
  }
  if (std::ranges::none_of(images, [device](const auto& entry) { return entry.second->device == device; })) {
    outputs[device].want_copy_only = false;
  }
}
inline void OnDestroyDevice(reshade::api::device* device) {
  const std::lock_guard lock(mutex);
  std::erase_if(swapchains, [device](const auto& entry) { return reinterpret_cast<uint64_t>(entry.second.device) == device->get_native(); });
  std::erase_if(graphics, [device](const auto& pair) {
    if (pair.second.device != device) return false;
    if (pair.second.fp16.handle != 0u) device->destroy_pipeline(pair.second.fp16);
    return true;
  });
  if (const auto found = outputs.find(device); found != outputs.end()) {
    for (auto pipeline : found->second.retired_pipelines) device->destroy_pipeline(pipeline);
    outputs.erase(found);
  }
  std::erase_if(commands, [device](const auto& pair) { return pair.second.command_list->get_device() == device; });
  std::erase_if(images, [device](const auto& pair) {
    if (pair.second->device != device) return false;
    pair.second->pass.DestroyAll(device);
    return true;
  });
}

inline void UseEvents(DWORD reason) {
  if (reason == DLL_PROCESS_ATTACH) {
    if (events_registered) return;
    events_registered = true;

    reshade::register_event<reshade::addon_event::destroy_pipeline>(OnDestroyPipeline);
    reshade::register_event<reshade::addon_event::close_command_list>(OnCloseCommandList);
    reshade::register_event<reshade::addon_event::init_command_list>(OnInitCommandList);
    reshade::register_event<reshade::addon_event::reset_command_list>(OnInitCommandList);
    reshade::register_event<reshade::addon_event::destroy_command_list>(OnDestroyCommandList);
    reshade::register_event<reshade::addon_event::begin_render_pass>(OnBeginRenderPass);
    reshade::register_event<reshade::addon_event::end_render_pass>(OnEndRenderPass);
    reshade::register_event<reshade::addon_event::destroy_resource>(OnDestroyResource);
    reshade::register_event<reshade::addon_event::destroy_device>(OnDestroyDevice);
  } else if (reason == DLL_PROCESS_DETACH) {
    if (!events_registered) return;
    events_registered = false;
    renodx::utils::command_action::Unregister(on_output_draw);
    reshade::unregister_event<reshade::addon_event::destroy_pipeline>(OnDestroyPipeline);
    reshade::unregister_event<reshade::addon_event::close_command_list>(OnCloseCommandList);
    reshade::unregister_event<reshade::addon_event::init_command_list>(OnInitCommandList);
    reshade::unregister_event<reshade::addon_event::reset_command_list>(OnInitCommandList);
    reshade::unregister_event<reshade::addon_event::destroy_command_list>(OnDestroyCommandList);
    reshade::unregister_event<reshade::addon_event::begin_render_pass>(OnBeginRenderPass);
    reshade::unregister_event<reshade::addon_event::end_render_pass>(OnEndRenderPass);
    reshade::unregister_event<reshade::addon_event::destroy_resource>(OnDestroyResource);
    reshade::unregister_event<reshade::addon_event::destroy_device>(OnDestroyDevice);
  }
}


static sl::Result HookSetOptions(const sl::ViewportHandle& viewport, const sl::DLSSGOptions& options) {
  __try {
    sl::DLSSGOptions forwarded;
    size_t size = 0;
    switch (options.structVersion) {
      case 1:  size = offsetof(sl::DLSSGOptions, bReserved15); break;
      case 2:  size = offsetof(sl::DLSSGOptions, bReserved15) + sizeof(sl::Boolean); break;
      case 3:  size = offsetof(sl::DLSSGOptions, queueParallelismMode) + sizeof(sl::DLSSGQueueParallelismMode); break;
      case 4:  size = offsetof(sl::DLSSGOptions, enableUserInterfaceRecomposition) + sizeof(sl::Boolean); break;
      case 5:  size = sizeof(sl::DLSSGOptions); break;
      default: return sl::Result::eErrorInvalidParameter;
    }
    std::memcpy(static_cast<void*>(&forwarded), &options, size);
    // Preserve native UI recomposition, tags, extension chain and all other options.
    forwarded.colorBufferFormat = 64u;  // VK_FORMAT_A2B10G10R10_UNORM_PACK32
    const auto result = set_options(viewport, forwarded);
    return result;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return sl::Result::eErrorExceptionHandler;
  }
}

static VkResult VKAPI_CALL HookCreateSwapchain(VkDevice device, const VkSwapchainCreateInfoKHR* info,
                                               const VkAllocationCallbacks* allocator, VkSwapchainKHR* swapchain) {
  if (info == nullptr) return create_swapchain(device, info, allocator, swapchain);
  auto forwarded = *info;
  forwarded.imageFormat = VK_FORMAT_A2B10G10R10_UNORM_PACK32;
  forwarded.imageColorSpace = VK_COLOR_SPACE_HDR10_ST2084_EXT;
  const auto result = create_swapchain(device, &forwarded, allocator, swapchain);
  if (result == VK_SUCCESS && swapchain != nullptr) {
    TrackSwapchain(device, *swapchain, forwarded);
  }
  return result;
}

static void TryInstallHooks(reshade::api::device* device) {
  if (!active_at_startup || stopped.load() || device->get_api() != reshade::api::device_api::vulkan) return;
  const std::unique_lock lock(install_mutex);
  if (installed.load() || stopped.load()) return;
  const auto interposer = GetModuleHandleW(L"sl.interposer.dll");
  if (interposer == nullptr) return;
  const auto get_function = reinterpret_cast<PFun_slGetFeatureFunction*>(GetProcAddress(interposer, "slGetFeatureFunction"));
  if (get_function == nullptr) return;
  void* function = nullptr;
  if (get_function(sl::kFeatureDLSS_G, "slDLSSGSetOptions", function) != sl::Result::eOk || function == nullptr) {
    static bool reported = false;
    if (!reported) {
      reshade::log::message(reshade::log::level::info, "Endfield: Streamline DLSS-G is not ready; HDR hook installation will retry.");
      reported = true;
    }
    return;
  }
  set_options = reinterpret_cast<PFun_slDLSSGSetOptions*>(function);
  create_swapchain = reinterpret_cast<PFN_vkCreateSwapchainKHR>(GetProcAddress(interposer, "vkCreateSwapchainKHR"));
  if (create_swapchain == nullptr) return;
  const auto host = reshade::internal::get_reshade_module_handle();
  if (host == nullptr) return;
  const auto get_proc = reinterpret_cast<PFN_vkGetDeviceProcAddr>(GetProcAddress(host, "vkGetDeviceProcAddr"));
  if (get_proc == nullptr) return;
  const auto native_device = reinterpret_cast<VkDevice>(device->get_native());
  pipeline_barrier = reinterpret_cast<PFN_vkCmdPipelineBarrier>(get_proc(native_device, "vkCmdPipelineBarrier"));
  const auto core = get_proc(native_device, "vkCmdPipelineBarrier2");
  const auto khr = get_proc(native_device, "vkCmdPipelineBarrier2KHR");
  if (core != nullptr && khr != nullptr && core != khr) return;
  pipeline_barrier2 = reinterpret_cast<PFN_vkCmdPipelineBarrier2>(core != nullptr ? core : khr);
  const auto is_host_code = [host](const void* address) {
    MEMORY_BASIC_INFORMATION info = {};
    return address != nullptr && VirtualQuery(address, &info, sizeof(info)) == sizeof(info)
           && info.AllocationBase == host && info.State == MEM_COMMIT
           && (info.Protect & (PAGE_GUARD | PAGE_NOACCESS)) == 0
           && (info.Protect & (PAGE_EXECUTE | PAGE_EXECUTE_READ | PAGE_EXECUTE_READWRITE | PAGE_EXECUTE_WRITECOPY)) != 0;
  };
  if (!is_host_code(reinterpret_cast<const void*>(pipeline_barrier))
      || (pipeline_barrier2 != nullptr && !is_host_code(reinterpret_cast<const void*>(pipeline_barrier2)))) return;
  get_images = reinterpret_cast<PFN_vkGetSwapchainImagesKHR>(GetProcAddress(interposer, "vkGetSwapchainImagesKHR"));
  acquire_image = reinterpret_cast<PFN_vkAcquireNextImageKHR>(GetProcAddress(interposer, "vkAcquireNextImageKHR"));
  hooks = {{set_options, HookSetOptions, &set_options}, {create_swapchain, HookCreateSwapchain, &create_swapchain}, {get_images, HookGetImages, &get_images}, {acquire_image, HookAcquire, &acquire_image}, {pipeline_barrier, HookBarrier, &pipeline_barrier}};
  if (pipeline_barrier2 != nullptr) hooks.emplace_back(pipeline_barrier2, HookBarrier2, &pipeline_barrier2);
  try {
    native_hooks::Apply(hooks, true);
  } catch (const std::exception& error) {
    reshade::log::message(reshade::log::level::error, error.what());
    return;
  }
  installed.store(true);

  constexpr uint32_t command_types = renodx::utils::command_action::COMMAND_TYPE_DIRECT_DRAW | renodx::utils::command_action::COMMAND_TYPE_INDIRECT;

  renodx::utils::command_action::Register(on_output_draw, {.command_types = command_types});
  renodx::utils::command_action::internal::shared.data->callback_registrations_by_shader_hash.for_each(
      [](const auto& entry) { callback_hashes.emplace(entry.first, entry.first); });
  for (const auto& [hash, identity] : callback_hashes) {
    if (hash == 0u) continue;
    // Distinct identities preserve the pixel-stage callback when a pipeline also has a vertex match.
    renodx::utils::command_action::Register(on_output_draw,
                                            {.shader_hash = hash, .command_types = command_types}, &identity);
  }

  renodx::utils::command_action::Use(DLL_PROCESS_ATTACH);

  reshade::log::message(reshade::log::level::info, "Endfield: HDR frame generation hooks installed; native UI tags preserved.");
}

static void StopHooks() {
  const std::unique_lock install_lock(install_mutex);
  if (!installed.load()) return;
  try {
    native_hooks::Apply(hooks, false);
  } catch (const std::exception& error) {
    reshade::log::message(reshade::log::level::error, error.what());
    return;
  }
  installed.store(false);
  const std::lock_guard lock(mutex);
  for (auto& [handle, image] : images) {
    if (image->active) SetCloneActive(image.get(), false);
  }
  for (auto& [device, output] : outputs) {
    output.want_copy_only = false;
    output.working_copies.clear();
  }
  for (auto& [handle, command] : commands) {
    command.output_image = 0u;
    command.pending_outputs.clear();
  }
  reshade::log::message(reshade::log::level::info, "Endfield: HDR frame generation hooks disabled; original function entries restored.");
}

static void OnInitSwapchain(reshade::api::swapchain* swapchain, bool) {
  TryInstallHooks(swapchain->get_device());
}

inline void Use(DWORD reason) {
  if (!active_at_startup) return;
  if (reason == DLL_PROCESS_ATTACH) {
    UseEvents(reason);
    reshade::register_event<reshade::addon_event::init_device>(TryInstallHooks);
    reshade::register_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);
    reshade::register_event<reshade::addon_event::copy_resource>(OnPresentationCopy);
    reshade::register_event<reshade::addon_event::copy_texture_region>(OnPresentationCopyRegion);
  } else if (reason == DLL_PROCESS_DETACH) {
    StopHooks();
    if (installed.load()) return;
    reshade::unregister_event<reshade::addon_event::init_device>(TryInstallHooks);
    reshade::unregister_event<reshade::addon_event::init_swapchain>(OnInitSwapchain);
    reshade::unregister_event<reshade::addon_event::copy_resource>(OnPresentationCopy);
    reshade::unregister_event<reshade::addon_event::copy_texture_region>(OnPresentationCopyRegion);
    UseEvents(reason);
  }
}

}  // namespace endfield::frame_generation

namespace endfield::early_load {

static std::filesystem::path addon_path;
static HMODULE addon_module = nullptr;
static bool configured_at_startup = false;
static bool configured = false;

inline std::vector<std::string> ReadEntries() {
  size_t size = 0;
  reshade::get_config_value(nullptr, "ADDON", "LoadFromDllMain", nullptr, &size);
  std::vector<char> buffer(size + 1, '\0');
  if (size != 0) {
    reshade::get_config_value(nullptr, "ADDON", "LoadFromDllMain", buffer.data(), &size);
  }
  std::vector<std::string> entries;
  for (size_t offset = 0; offset < size && buffer[offset] != '\0';) {
    entries.emplace_back(buffer.data() + offset);
    offset += entries.back().size() + 1;
  }
  return entries;
}

inline bool Contains(const std::vector<std::string>& entries) {
  if (addon_path.empty()) return false;
  return std::ranges::any_of(entries, [](const std::string& entry) {
    return _wcsicmp(std::filesystem::path(entry).filename().c_str(), addon_path.filename().c_str()) == 0;
  });
}

inline void Refresh() {
  if (addon_path.empty()) {
    wchar_t path[MAX_PATH] = {};
    const auto length = GetModuleFileNameW(addon_module, path, static_cast<DWORD>(std::size(path)));
    if (length == 0 || length >= std::size(path)) return;
    addon_path = path;
  }
  configured = Contains(ReadEntries());
}

inline void OnInitEffectRuntime(reshade::api::effect_runtime*) {
  if (!addon_path.empty()) return;
  Refresh();
  configured_at_startup = configured;
}

// UI callback: only an explicit click changes the host's early-loading list.
inline bool Enable() {
  if (addon_path.empty()) return false;
  auto entries = ReadEntries();
  if (!Contains(entries)) {
    // An absolute path also works when ADDON.AddonPath points elsewhere.
    entries.push_back(addon_path.string());
    std::string serialized;
    for (const auto& entry : entries) {
      serialized.append(entry);
      serialized.push_back('\0');
    }
    reshade::set_config_value(nullptr, "ADDON", "LoadFromDllMain", serialized.c_str(), serialized.size());
  }
  configured = Contains(ReadEntries());
  return configured;
}

}  // namespace endfield::early_load

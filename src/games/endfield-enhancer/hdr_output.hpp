#pragma once

#include <array>
#include <atomic>
#include <cmath>
#include <cstring>
#include <memory>
#include <mutex>
#include <span>
#include <sstream>
#include <type_traits>
#include <unordered_map>
#include <vector>

#include <detours.h>
#include <embed/shaders.h>
#include <include/reshade.hpp>

#include "../../mods/swapchain.hpp"
#include "../../utils/render.hpp"
#include "../../utils/resource_upgrade.hpp"
#include "./hdr_output_contract.hpp"
#include "./hdr_graphics_bindings.hpp"

namespace endfield::hdr_output {

struct OutputState {
  struct CachedPhysicalPipeline {
    uint64_t back_buffer;
    std::span<const uint8_t> shader;
    reshade::api::pipeline pipeline;
  };
  std::span<const uint8_t> vertex_shader;
  std::span<const uint8_t> pixel_shader;
  const float* parameters = nullptr;
  bool copy_only = false;
  bool want_copy_only = false;
  bool compatibility_mode = false;
  // Only physical buffers receiving the private working-HDR clone are listed.
  std::unordered_map<uint64_t, uint64_t> working_copies;
  uint32_t route_logs = 0u;
  // Inactive variants only; the active pipeline remains owned by the proxy.
  std::vector<CachedPhysicalPipeline> physical_pipelines;
  // Changing the shader must invalidate the cached pipeline, but never destroy
  // a pipeline still referenced by submitted command buffers.
  std::vector<reshade::api::pipeline> retired_pipelines;
};

struct BarrierObservation {
  const char* source = nullptr;
  uint64_t resource = 0u, command = 0u, acquisition = 0u;
  uint64_t old_state = 0u, new_state = 0u;
  uint32_t src_queue = VK_QUEUE_FAMILY_IGNORED, dst_queue = VK_QUEUE_FAMILY_IGNORED;
  VkImageSubresourceRange range = {};
  bool clone = false, active = false, acquired = false, drawn = false;
  bool forwarded = false, boundary = false, command_known = false, in_render_pass = false;
};

struct ImageState {
  reshade::api::device* device = nullptr;
  reshade::api::resource original = {};
  reshade::api::resource clone = {};
  uint32_t width = 0;
  uint32_t height = 0;
  bool active = false;
  bool acquired = false;
  bool encoded = false;
  bool failed = false;
  bool drawn = false;
  const char* preparation_failure = nullptr;
  uint64_t last_pipeline = 0u;
  uint64_t last_layout = 0u;
  uint32_t last_shader = 0u;
  uint64_t acquisition = 0u, barriers_at_acquire = 0u, barrier_count = 0u;
  std::array<BarrierObservation, 24> barrier_history = {};
  std::array<float, 8> parameters = {};
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
  GraphicsBindings graphics_bindings;
};

struct GraphicsPipeline {
  reshade::api::device* device = nullptr;
  reshade::api::pipeline_layout layout = {};
  uint32_t count = 0u;
  reshade::api::pipeline_subobject* subobjects = nullptr;
  reshade::api::pipeline fp16 = {};
  reshade::api::pipeline restore = {};
};

inline std::recursive_mutex mutex;
inline std::unordered_map<uint64_t, SwapchainState> swapchains;
inline std::unordered_map<uint64_t, std::unique_ptr<ImageState>> images;
inline std::unordered_map<reshade::api::device*, OutputState> outputs;
inline std::unordered_map<uint64_t, CommandState> commands;
inline std::unordered_map<uint64_t, GraphicsPipeline> graphics;
inline thread_local bool forwarding = false;
inline std::atomic_bool ready_logged = false;
inline std::atomic_bool error_logged = false;
inline std::atomic_bool capture_graphics = false;
// Diagnostic-only counts, frozen at first failure: vk1, vk2, ReShade.
inline std::array<std::atomic_uint64_t, 3> barrier_calls = {};
inline std::array<std::atomic_uint64_t, 3> barrier_items = {};

// Caller holds the HDR mutex. No GPU calls, resource/view lookups, or logging.
inline void RecordBarrier(const BarrierObservation& observation) {
  if (observation.resource == 0u) return;
  auto found = images.find(observation.resource);
  if (found == images.end()) {
    for (auto it = images.begin(); it != images.end(); ++it) {
      if (it->second->clone.handle == observation.resource) {
        found = it;
        break;
      }
    }
  }
  if (found == images.end()) return;
  auto* image = found->second.get();
  auto& entry = image->barrier_history[image->barrier_count++ % image->barrier_history.size()];
  entry = observation;
  entry.acquisition = image->acquisition;
  entry.clone = observation.resource == image->clone.handle;
  entry.active = image->active;
  entry.acquired = image->acquired;
  entry.drawn = image->drawn;
  entry.forwarded = forwarding;
  if (const auto command = commands.find(observation.command); command != commands.end()) {
    entry.command_known = true;
    entry.in_render_pass = command->second.in_render_pass;
  }
}

template <typename Barrier>
inline void ObserveNativeBarriers(VkCommandBuffer command, uint32_t count, const Barrier* barriers) {
  if (!capture_graphics.load(std::memory_order_relaxed) || error_logged.load(std::memory_order_relaxed)) return;
  constexpr bool sync2 = std::is_same_v<Barrier, VkImageMemoryBarrier2>;
  barrier_calls[sync2 ? 1 : 0].fetch_add(1u, std::memory_order_relaxed);
  barrier_items[sync2 ? 1 : 0].fetch_add(count, std::memory_order_relaxed);
  if (barriers == nullptr || count == 0u) return;
  const std::lock_guard lock(mutex);
  for (uint32_t i = 0u; i < count; ++i) {
    const auto& barrier = barriers[i];
    RecordBarrier({.source = sync2 ? "vk2_layout" : "vk1_layout",
                   .resource = reinterpret_cast<uint64_t>(barrier.image),
                   .command = reinterpret_cast<uint64_t>(command),
                   .old_state = static_cast<uint64_t>(barrier.oldLayout),
                   .new_state = static_cast<uint64_t>(barrier.newLayout),
                   .src_queue = barrier.srcQueueFamilyIndex, .dst_queue = barrier.dstQueueFamilyIndex,
                   .range = barrier.subresourceRange, .boundary = IsOutputBoundary(barrier)});
  }
}

inline void OnObserveBarrier(reshade::api::command_list* cmd, uint32_t count,
                             const reshade::api::resource* resources,
                             const reshade::api::resource_usage* old_states,
                             const reshade::api::resource_usage* new_states) {
  if (!capture_graphics.load(std::memory_order_relaxed) || error_logged.load(std::memory_order_relaxed)) return;
  barrier_calls[2].fetch_add(1u, std::memory_order_relaxed);
  barrier_items[2].fetch_add(count, std::memory_order_relaxed);
  if (cmd == nullptr || resources == nullptr || old_states == nullptr || new_states == nullptr) return;
  const std::lock_guard lock(mutex);
  for (uint32_t i = 0u; i < count; ++i) {
    // These are ReShade usage values, NOT Vulkan layouts. Queue/range fields
    // are unavailable placeholders. This event never triggers conversion.
    RecordBarrier({.source = "reshade_usage", .resource = resources[i].handle,
                   .command = cmd->get_native(), .old_state = static_cast<uint64_t>(old_states[i]),
                   .new_state = static_cast<uint64_t>(new_states[i])});
  }
}

inline PFN_vkGetSwapchainImagesKHR get_images = nullptr;
inline PFN_vkAcquireNextImageKHR acquire_image = nullptr;
inline PFN_vkDestroySwapchainKHR destroy_swapchain = nullptr;
inline PFN_vkQueuePresentKHR queue_present = nullptr;
inline PFN_vkCmdPipelineBarrier pipeline_barrier = nullptr;
inline PFN_vkCmdPipelineBarrier2 pipeline_barrier2 = nullptr;
inline PFN_vkCmdBindDescriptorSets bind_descriptor_sets = nullptr;

inline void VKAPI_CALL HookBindDescriptorSets(VkCommandBuffer command, VkPipelineBindPoint point,
    VkPipelineLayout layout, uint32_t first, uint32_t count, const VkDescriptorSet* sets,
    uint32_t offset_count, const uint32_t* offsets) {
  if (capture_graphics.load(std::memory_order_relaxed) && point == VK_PIPELINE_BIND_POINT_GRAPHICS) {
    const std::lock_guard lock(mutex);
    if (const auto found = commands.find(reinterpret_cast<uint64_t>(command)); found != commands.end()) {
      found->second.graphics_bindings.Record(layout, first, count, sets, offset_count, offsets);
    }
  }
  bind_descriptor_sets(command, point, layout, first, count, sets, offset_count, offsets);
}

inline renodx::utils::resource::ResourceUpgradeInfo clone_target = {
    .old_format = reshade::api::format::r10g10b10a2_unorm,
    .new_format = reshade::api::format::r16g16b16a16_float,
    .ignore_size = true,
    .usage_set = static_cast<uint32_t>(
        reshade::api::resource_usage::shader_resource
        | reshade::api::resource_usage::render_target),
    .view_upgrades = renodx::utils::resource::VIEW_UPGRADES_RGBA16F,
    .use_resource_view_cloning_and_upgrade = true,
    .name = "Endfield application output (FP16 before UI/PQ)",
};

inline void ReportFailure(const char* reason, const ImageState* image, uint64_t command_buffer = 0u) {
  if (error_logged.exchange(true)) return;
  // Callers hold the HDR mutex. Inspect existing state only: no GPU calls,
  // resource lookup, or mutation of presentation/failed flags while logging.
  std::ostringstream message;
  message << "Endfield HDR v36: first_failure=" << reason
          << std::hex << " image=0x" << image->original.handle
          << " clone=0x" << image->clone.handle
          << " command=0x" << command_buffer
          << " pipeline=0x" << image->last_pipeline
          << " layout=0x" << image->last_layout
          << " shader=0x" << image->last_shader
          << std::dec << " extent=" << image->width << 'x' << image->height
          << " active=" << image->active << " acquired=" << image->acquired
          << " drawn=" << image->drawn << " encoded=" << image->encoded
          << " failed=" << image->failed;
  const auto command = commands.find(command_buffer);
  message << " command_known=" << (command != commands.end());
  if (command != commands.end()) message << " in_render_pass=" << command->second.in_render_pass;
  const auto output = outputs.find(image->device);
  if (output != outputs.end()) {
    message << " copy_only=" << output->second.copy_only
            << " want_copy_only=" << output->second.want_copy_only;
  }
  message << " preparation=" << (image->preparation_failure == nullptr ? "none" : image->preparation_failure)
          << " parameters=[";
  for (float value : image->parameters) message << value << ',';
  message << "] guard=unchanged; retain this log and stop repeated launches.";
  reshade::log::message(reshade::log::level::error, message.str().c_str());
  std::ostringstream summary;
  summary << "Endfield HDR v36: barrier_summary acquisition=" << image->acquisition
          << " total=" << image->barrier_count << " at_acquire=" << image->barriers_at_acquire
          << " calls_vk1_vk2_reshade=" << barrier_calls[0].load() << ',' << barrier_calls[1].load() << ',' << barrier_calls[2].load()
          << " items_vk1_vk2_reshade=" << barrier_items[0].load() << ',' << barrier_items[1].load() << ',' << barrier_items[2].load();
  reshade::log::message(reshade::log::level::error, summary.str().c_str());
  const uint64_t begin = image->barrier_count > image->barrier_history.size()
                             ? image->barrier_count - image->barrier_history.size() : 0u;
  for (uint64_t i = begin; i < image->barrier_count; ++i) {
    const auto& entry = image->barrier_history[i % image->barrier_history.size()];
    std::ostringstream line;
    line << "Endfield HDR v36: barrier[" << i << "] source=" << entry.source
         << " acquisition=" << entry.acquisition << std::hex
         << " resource=0x" << entry.resource << " command=0x" << entry.command
         << " old=0x" << entry.old_state << " new=0x" << entry.new_state
         << " queues=0x" << entry.src_queue << "/0x" << entry.dst_queue
         << " aspect=0x" << entry.range.aspectMask << std::dec
         << " mip=" << entry.range.baseMipLevel << '+' << entry.range.levelCount
         << " layer=" << entry.range.baseArrayLayer << '+' << entry.range.layerCount
         << " clone=" << entry.clone << " active=" << entry.active
         << " acquired=" << entry.acquired << " drawn=" << entry.drawn
         << " forwarding=" << entry.forwarded << " boundary=" << entry.boundary
         << " command_known=" << entry.command_known << " in_render_pass=" << entry.in_render_pass;
    reshade::log::message(reshade::log::level::error, line.str().c_str());
  }
}

// Only the captured application output/UI family uses this callback. Resource
// identity is still required, so an identical shader on an unrelated target
// keeps its original pipeline and format.
inline constexpr uint32_t output_shaders[] = {
    0xEF55D954u, 0x512AB6E6u, 0xAB895B1Fu, 0xACF0F46Du,
    0x0BADCCF7u, 0x0CF25D6Fu, 0x3961B617u, 0x39F4860Cu,
    0x4A58BC0Bu, 0x6F894992u, 0x7D650384u, 0x89B77E6Du,
    0x8D8CA241u, 0x934733E7u, 0xAEC2747Bu, 0xB1DDA12Au,
    0xF952B899u, 0xFF43F702u, 0xE5CB2D61u, 0xE18EC64Fu,
    0x4CB44B80u, 0x318C54FDu};

inline constexpr auto on_output_draw = []<typename Context>(Context& context)
    -> renodx::utils::command_action::CallbackResult<Context> {
  if (!capture_graphics.load(std::memory_order_relaxed) || context.IsDispatch()) return {};
  const std::lock_guard lock(mutex);
  const auto command = commands.find(context.cmd_list->get_native());
  if (command == commands.end() || command->second.output_image == 0u) return {};
  const auto target = images.find(command->second.output_image);
  if (target == images.end() || !target->second->active) return {};
  auto* image = target->second.get();
  // Each addon owns its utility handle even when the backing data is shared.
  // Never enter the shader maps if registration is unavailable.
  if (renodx::utils::shader::shared.data == nullptr) {
    image->failed = true;
    ReportFailure("draw.shader_shared_missing", image, context.cmd_list->get_native());
    return {.bypass = true};
  }
  auto* shader_state = renodx::utils::command_action::GetShaderState(&context);
  auto* stage = shader_state == nullptr ? nullptr : renodx::utils::shader::GetCurrentPixelState(shader_state);
  image->last_pipeline = stage == nullptr ? 0u : stage->pipeline.handle;
  image->last_layout = 0u;
  image->last_shader = context.matched_shader_hash;
  const auto found = stage == nullptr ? graphics.end() : graphics.find(stage->pipeline.handle);
  if (found == graphics.end()) {
    image->failed = true;
    ReportFailure(shader_state == nullptr ? "draw.command_shader_state_missing"
                  : stage == nullptr ? "draw.pixel_stage_missing" : "draw.pipeline_untracked",
                  image, context.cmd_list->get_native());
    return {.bypass = true};
  }
  auto& pipeline = found->second;
  if (pipeline.fp16.handle == 0u) {
    auto* subobjects = renodx::utils::pipeline::ClonePipelineSubObjects(pipeline.subobjects, pipeline.count);
    bool found_format = false;
    for (uint32_t i = 0u; i < pipeline.count; ++i) {
      if (subobjects[i].type == reshade::api::pipeline_subobject_type::render_target_formats
          && subobjects[i].count == 1u) {
        *static_cast<reshade::api::format*>(subobjects[i].data) = reshade::api::format::r16g16b16a16_float;
        found_format = true;
      }
    }
    // Preserve the base addon's replacements and injection ABI. Only the color
    // attachment format changes; blend, vertex input, depth and shader math do not.
    auto layout = pipeline.layout;
    const bool has_details = renodx::utils::shader::GetPipelineShaderDetails(stage->pipeline,
                                                                             [&](const renodx::utils::shader::PipelineShaderDetails& details) {
                                                                               if (details.injection_layout.handle != 0u) layout = details.injection_layout;
                                                                               if (details.replacement_layout.handle != 0u) layout = details.replacement_layout;
                                                                               pipeline.restore = details.replacement_pipeline.handle != 0u ? details.replacement_pipeline : stage->pipeline;
                                                                               for (const auto& shader : details.subobject_shaders) {
                                                                                 renodx::utils::shader::shared.data->runtime_replacements.if_contains(
                                                                                     {pipeline.device, shader.shader_hash},
                                                                                     [&](const auto& replacement) {
                                                                                       renodx::utils::shader::AddShaderReplacement(&subobjects[shader.index], replacement.second);
                                                                                     });
                                                                               }
                                                                             });
    const bool created = found_format && has_details && pipeline.restore.handle != 0u && pipeline.device->create_pipeline(layout, pipeline.count, subobjects, &pipeline.fp16);
    image->last_layout = layout.handle;
    renodx::utils::pipeline::DestroyPipelineSubobjects(subobjects, pipeline.count);
    if (!created) {
      image->failed = true;
      ReportFailure(!found_format ? "draw.render_target_format_missing"
                    : !has_details ? "draw.pipeline_details_missing"
                    : pipeline.restore.handle == 0u ? "draw.restore_pipeline_missing"
                    : "draw.fp16_pipeline_creation_failed", image, context.cmd_list->get_native());
      return {.bypass = true};
    }
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

inline void OnInitPipeline(reshade::api::device* device, reshade::api::pipeline_layout layout,
                           uint32_t count, const reshade::api::pipeline_subobject* subobjects, reshade::api::pipeline pipeline) {
  if (!capture_graphics.load(std::memory_order_relaxed)
      || device->get_api() != reshade::api::device_api::vulkan) return;
  bool compatible = false;
  for (uint32_t i = 0u; i < count; ++i) {
    if (subobjects[i].type != reshade::api::pipeline_subobject_type::render_target_formats
        || subobjects[i].count != 1u) continue;
    const auto format = *static_cast<const reshade::api::format*>(subobjects[i].data);
    compatible = format == reshade::api::format::r10g10b10a2_unorm
                 || format == reshade::api::format::r8g8b8a8_unorm
                 || format == reshade::api::format::r8g8b8a8_unorm_srgb;
  }
  if (!compatible) return;
  const std::lock_guard lock(mutex);
  graphics.emplace(pipeline.handle, GraphicsPipeline{
                                        device, layout, count, renodx::utils::pipeline::ClonePipelineSubObjects(subobjects, count)});
}

inline void OnDestroyPipeline(reshade::api::device* device, reshade::api::pipeline pipeline) {
  const std::lock_guard lock(mutex);
  const auto found = graphics.find(pipeline.handle);
  if (found == graphics.end()) return;
  renodx::utils::pipeline::DestroyPipelineSubobjects(found->second.subobjects, found->second.count);
  if (found->second.fp16.handle != 0u) outputs[device].retired_pipelines.push_back(found->second.fp16);
  graphics.erase(found);
}

inline void SetCloneActive(ImageState* image, bool active) {
  std::vector<uint64_t> views;
  renodx::utils::resource::UpdateResourceInfo(image->original,
                                              [&](renodx::utils::resource::ResourceInfo* info) {
                                                if (info->destroyed) return;
                                                info->clone_enabled = active;
                                                info->clone_can_deactivate = false;
                                                views.assign(info->resource_view_handles.begin(), info->resource_view_handles.end());
                                              });
  renodx::utils::resource::upgrade::UpdateResourceViewsCloneState(
      views, active, false, &clone_target);
  image->active = active;
}

inline void SelectPhysicalShader(OutputState* output, uint64_t back_buffer,
    renodx::utils::draw::SwapchainProxyPass* proxy, std::span<const uint8_t> shader) {
  // Never erase a live proxy's shader while waiting for the base contract.
  if (shader.empty()) return;
  if (proxy->pixel_shader.data() == shader.data() && proxy->pixel_shader.size() == shader.size()) return;
  if (proxy->pass.pipeline.handle != 0u) {
    output->physical_pipelines.push_back({back_buffer, proxy->pixel_shader, proxy->pass.pipeline});
  }
  proxy->pixel_shader = shader;
  proxy->pass.pipeline = {};
  for (auto it = output->physical_pipelines.begin(); it != output->physical_pipelines.end(); ++it) {
    if (it->back_buffer != back_buffer || it->shader.data() != shader.data() || it->shader.size() != shader.size()) continue;
    proxy->pass.pipeline = it->pipeline;
    output->physical_pipelines.erase(it);
    break;
  }
  proxy->pass.generated_pipeline = proxy->pass.pipeline.handle != 0u;
}

inline void SetPhysicalCopyOnly(reshade::api::device* device, bool copy_only, uint64_t back_buffer = 0u) {
  auto found = outputs.find(device);
  if (found == outputs.end()) return;
  // OnPresent runs before the base proxy is initialized on the first frame.
  // v35 overwrote that proxy/default with an empty saved shader, preventing
  // ReadOutputContract from capturing it and preventing native Encode.
  // Leave base device data untouched until its original contract is captured.
  if (found->second.parameters == nullptr || found->second.vertex_shader.empty()
      || found->second.pixel_shader.empty()) return;
  auto* data = renodx::utils::data::Get<renodx::mods::swapchain::v2::DeviceData>(device);
  if (data == nullptr) return;
  auto& output = found->second;
  const std::unique_lock data_lock(data->mutex);
  data->swap_chain_proxy_pixel_shader = copy_only
                                            ? std::span<const uint8_t>(__hdr_pq_copy)
                                            : output.pixel_shader;
  for (auto& [handle, proxy] : data->swapchain_proxy_passes) {
    if (proxy == nullptr || (back_buffer != 0u && handle != back_buffer)) continue;
    SelectPhysicalShader(&output, handle, proxy, data->swap_chain_proxy_pixel_shader);
  }
  output.copy_only = copy_only;
}

// Use the installed base addon's actual compact output payload and shader.
// No INI polling, preset guessing, or duplicate game/UI brightness arithmetic.
inline bool ReadOutputContract(ImageState* image) {
  auto* data = renodx::utils::data::Get<renodx::mods::swapchain::v2::DeviceData>(image->device);
  if (data == nullptr) {
    image->preparation_failure = "prepare.base_device_data_missing";
    return false;
  }
  const std::shared_lock data_lock(data->mutex);
  auto& output = outputs[image->device];
  if (output.parameters == nullptr) {
    for (const auto& [handle, proxy] : data->swapchain_proxy_passes) {
      if (proxy == nullptr || proxy->shader_injection == nullptr
          || proxy->shader_injection_size != image->parameters.size()
          || proxy->vertex_shader.empty() || proxy->pixel_shader.empty()) continue;
      output.vertex_shader = proxy->vertex_shader;
      output.pixel_shader = proxy->pixel_shader;
      output.parameters = proxy->shader_injection;
      output.compatibility_mode = proxy->use_compatibility_mode;
      reshade::log::message(reshade::log::level::info,
                            "Endfield HDR v36: original base output contract captured; native encoding may now prepare.");
      break;
    }
  }
  // The first loading-frame present initializes the base proxy. Until then
  // leave the ordinary base-addon path intact and retry on the next acquire.
  if (output.parameters == nullptr) {
    image->preparation_failure = "prepare.base_output_payload_missing";
    return false;
  }
  std::memcpy(image->parameters.data(), output.parameters, sizeof(image->parameters));
  for (float value : image->parameters) {
    if (!std::isfinite(value)) {
      image->preparation_failure = "prepare.nonfinite_output_parameter";
      return false;
    }
  }
  if (!(image->parameters[0] > 0.f && image->parameters[1] > 0.f
        && image->parameters[6] == 4.f && image->parameters[7] == 1.f)) {
    image->preparation_failure = "prepare.output_parameter_contract";
    return false;
  }
  return true;
}

inline bool PrepareImage(ImageState* image) {
  image->preparation_failure = nullptr;
  if (!ReadOutputContract(image)) return false;
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

  renodx::utils::resource::UpdateResourceInfo(image->original,
                                              [](renodx::utils::resource::ResourceInfo* info) {
                                                info->clone_target = &clone_target;
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
  // API-created private views bypass addon cloning callbacks. They always refer
  // to the requested image, including the original RGB10 conversion target.
  reshade::api::resource_view rtv = {}, srv = {};
  const bool rtv_created = image->device->create_resource_view(image->original,
                                           reshade::api::resource_usage::render_target,
                                           reshade::api::resource_view_desc(reshade::api::format::r10g10b10a2_unorm), &rtv);
  if (!rtv_created || !image->device->create_resource_view(image->clone,
                                              reshade::api::resource_usage::shader_resource,
                                              reshade::api::resource_view_desc(reshade::api::format::r16g16b16a16_float), &srv)) {
    if (rtv.handle != 0u) image->device->destroy_resource_view(rtv);
    if (srv.handle != 0u) image->device->destroy_resource_view(srv);
    image->failed = true;
    image->preparation_failure = rtv_created ? "prepare.fp16_srv_creation_failed" : "prepare.rgb10_rtv_creation_failed";
    return false;
  }
  pass.render_target_slots.views = {rtv};
  pass.render_target_slots.generated_views = {rtv};
  pass.shader_resource_slots.views = {srv};
  pass.shader_resource_slots.generated_views = {srv};
  pass.pipeline_subobjects.vertex_shader = outputs[image->device].vertex_shader;
  pass.pipeline_subobjects.pixel_shader = outputs[image->device].pixel_shader;
  pass.pipeline_subobjects.render_target_formats = {reshade::api::format::r10g10b10a2_unorm};
  pass.sampler_descs.emplace_back();
  pass.auto_generate_render_target_formats = false;
  pass.auto_generate_viewport = false;
  pass.auto_generate_scissors = false;
  pass.viewports = {{0.f, 0.f, static_cast<float>(image->width),
                     static_cast<float>(image->height), 0.f, 1.f}};
  pass.scissors = {{0, 0, static_cast<int32_t>(image->width), static_cast<int32_t>(image->height)}};
  pass.render_target_load_op = reshade::api::render_pass_load_op::discard;
  pass.render_target_store_op = reshade::api::render_pass_store_op::store;
  pass.flush_after_render = false;
  // This is the captured terminal graphics pass. The game records only its
  // present transition afterward; no new queue submission or command pool.
  pass.revert_state_after_render = false;
  pass.push_constants[{.slot = 0u, .space = 0u}] = std::span<const float>(image->parameters);
  HMODULE module = nullptr;
  // The shared clone target and the base addon's live parameters must outlive
  // all recorded GPU work. This restart-required path cannot be hot-unloaded.
  if (!GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_PIN,
                          reinterpret_cast<LPCWSTR>(&clone_target), &module)
      || !GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_PIN,
                             reinterpret_cast<LPCWSTR>(outputs[image->device].parameters), &module)) {
    image->failed = true;
    image->preparation_failure = "prepare.module_pin_failed";
    return false;
  }
  return true;
}

inline bool Encode(ImageState* image, VkCommandBuffer command_buffer) {
  const auto found = commands.find(reinterpret_cast<uint64_t>(command_buffer));
  if (!image->acquired || !image->drawn || image->encoded || image->failed
      || found == commands.end() || found->second.in_render_pass) {
    ReportFailure(!image->acquired ? "encode.not_acquired"
                  : !image->drawn ? "encode.no_output_draw"
                  : image->encoded ? "encode.already_encoded"
                  : image->failed ? "encode.image_already_failed"
                  : found == commands.end() ? "encode.command_untracked"
                  : "encode.render_pass_still_open", image, reinterpret_cast<uint64_t>(command_buffer));
    return false;
  }
  auto* cmd = found->second.command_list;
  if (cmd->get_device() != image->device) {
    ReportFailure("encode.device_mismatch", image, reinterpret_cast<uint64_t>(command_buffer));
    return false;
  }
  const auto* tracked_state = renodx::utils::state::GetCurrentState(cmd);
  if (tracked_state == nullptr) {
    ReportFailure("encode.render_state_missing", image, reinterpret_cast<uint64_t>(command_buffer));
    return false;
  }
  auto previous_state = *tracked_state;
  std::vector<uint64_t> expected_sets;
  expected_sets.reserve(previous_state.graphics_descriptor_tables.size());
  for (auto table : previous_state.graphics_descriptor_tables) expected_sets.push_back(table.handle);
  if (bind_descriptor_sets == nullptr
      || !found->second.graphics_bindings.Matches(previous_state.graphics_pipeline_layout.handle, expected_sets)) {
    ReportFailure("encode.native_graphics_bindings_incomplete", image, reinterpret_cast<uint64_t>(command_buffer));
    return false;
  }
  // Vulkan has no standalone RTV binding outside a render pass. Restore the
  // pipeline/descriptor/dynamic state, not stale attachments from the ended UI
  // pass. Push constants are consumed only by this terminal output draw.
  previous_state.render_targets.clear();
  previous_state.depth_stencil = {};
  // Generic replay drops Vk dynamic offsets. Restore graphics sets natively;
  // the graphics-only RenderPass does not disturb compute descriptor bindings.
  previous_state.graphics_descriptor_tables.clear();
  previous_state.compute_descriptor_tables.clear();
  // Both original and working images are still COLOR_ATTACHMENT_OPTIMAL.
  // Restore the working layout for the mirrored application barrier below.
  cmd->barrier(image->clone, reshade::api::resource_usage::render_target,
               reshade::api::resource_usage::shader_resource_pixel);
  const bool rendered = image->pass.Render(cmd);
  previous_state.Apply(cmd);
  found->second.graphics_bindings.Restore(command_buffer, bind_descriptor_sets);
  cmd->barrier(image->clone, reshade::api::resource_usage::shader_resource_pixel,
               reshade::api::resource_usage::render_target);
  if (!rendered) {
    ReportFailure("encode.output_render_failed", image, reinterpret_cast<uint64_t>(command_buffer));
    return false;
  }
  image->encoded = true;
  outputs[image->device].want_copy_only = true;
  if (!ready_logged.exchange(true)) {
    reshade::log::message(reshade::log::level::info,
                          "Endfield HDR v36: FP16 scene + UI encoded once before the app present transition; physical copy provenance routing enabled.");
  }
  return true;
}

inline void TrackSwapchain(VkDevice device, VkSwapchainKHR swapchain,
                           const VkSwapchainCreateInfoKHR& desc) {
  if (desc.imageArrayLayers != 1u || desc.imageSharingMode != VK_SHARING_MODE_EXCLUSIVE) {
    reshade::log::message(reshade::log::level::warning,
                          "Endfield HDR v36: unsupported application swapchain sharing/layer contract; FP16 bridge not activated.");
    return;
  }
  const std::lock_guard lock(mutex);
  swapchains[reinterpret_cast<uint64_t>(swapchain)] = {
      device, desc.imageExtent.width, desc.imageExtent.height, {}};
}

// New hooks are resolved/attached by the same exact-build-gated Detours
// transaction as the existing HDR10 create/options hooks.
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
                                               image->width = state.width;
                                               image->height = state.height;
                                             });
    if (image->device != nullptr) images.emplace(handle, std::move(image));
  }
  return result;
}

inline VkResult VKAPI_CALL HookAcquire(VkDevice device, VkSwapchainKHR swapchain,
                                       uint64_t timeout, VkSemaphore semaphore, VkFence fence, uint32_t* index) {
  const VkResult result = acquire_image(device, swapchain, timeout, semaphore, fence, index);
  if ((result != VK_SUCCESS && result != VK_SUBOPTIMAL_KHR) || index == nullptr) return result;
  const std::lock_guard lock(mutex);
  const auto chain = swapchains.find(reinterpret_cast<uint64_t>(swapchain));
  if (chain == swapchains.end() || *index >= chain->second.images.size()) return result;
  const auto found = images.find(chain->second.images[*index]);
  if (found == images.end()) return result;
  auto* image = found->second.get();
  ++image->acquisition;
  image->barriers_at_acquire = image->barrier_count;
  image->acquired = true;
  image->encoded = false;
  image->drawn = false;
  if (image->failed) return result;
  if (PrepareImage(image)) {
    SetCloneActive(image, true);
  } else if (image->clone.handle != 0u || outputs[image->device].copy_only) {
    image->failed = true;
    ReportFailure(image->preparation_failure == nullptr ? "acquire.preparation_failed" : image->preparation_failure, image);
  }
  return result;
}

// Temporarily suppress RenoDX's generic barrier mirroring for these exact
// application images. Mirror the original Vk barrier ourselves, retaining its
// access masks, stages, ranges and ownership, but map WSI layout to GENERAL.
template <typename Barrier, typename Forward, typename Mirror>
inline void ProcessBarriers(VkCommandBuffer command_buffer, uint32_t count,
                            const Barrier* barriers, Forward&& forward, Mirror&& mirror) {
  if (!capture_graphics.load(std::memory_order_relaxed) || forwarding || count == 0u || barriers == nullptr) {
    forward();
    return;
  }
  const std::lock_guard lock(mutex);
  std::vector<std::pair<ImageState*, Barrier>> working;
  for (uint32_t i = 0; i < count; ++i) {
    const auto found = images.find(reinterpret_cast<uint64_t>(barriers[i].image));
    if (found == images.end() || !found->second->active) continue;
    auto* image = found->second.get();
    SetCloneActive(image, false);
    if (IsOutputBoundary(barriers[i]) && !Encode(image, command_buffer)) {
      image->failed = true;
    }
    auto barrier = barriers[i];
    barrier.image = reinterpret_cast<VkImage>(image->clone.handle);
    barrier.oldLayout = WorkingLayout(barrier.oldLayout);
    barrier.newLayout = WorkingLayout(barrier.newLayout);
    working.emplace_back(image, barrier);
  }
  forwarding = true;
  forward();
  for (const auto& [image, barrier] : working) {
    mirror(barrier);
    if (!image->encoded && !image->failed) SetCloneActive(image, true);
  }
  forwarding = false;
}

inline void VKAPI_CALL HookBarrier(VkCommandBuffer cmd, VkPipelineStageFlags src,
                                   VkPipelineStageFlags dst, VkDependencyFlags flags, uint32_t memory_count,
                                   const VkMemoryBarrier* memory, uint32_t buffer_count,
                                   const VkBufferMemoryBarrier* buffers, uint32_t image_count,
                                   const VkImageMemoryBarrier* image_barriers) {
  ObserveNativeBarriers(cmd, image_count, image_barriers);
  ProcessBarriers(cmd, image_count, image_barriers, [&] { pipeline_barrier(cmd, src, dst, flags, memory_count, memory, buffer_count, buffers, image_count, image_barriers); }, [&](const VkImageMemoryBarrier& barrier) { pipeline_barrier(cmd, src, dst, flags, 0u, nullptr, 0u, nullptr, 1u, &barrier); });
}

inline void VKAPI_CALL HookBarrier2(VkCommandBuffer cmd, const VkDependencyInfo* dependency) {
  if (dependency == nullptr) return;
  ObserveNativeBarriers(cmd, dependency->imageMemoryBarrierCount, dependency->pImageMemoryBarriers);
  ProcessBarriers(cmd, dependency->imageMemoryBarrierCount, dependency->pImageMemoryBarriers, [&] { pipeline_barrier2(cmd, dependency); }, [&](const VkImageMemoryBarrier2& barrier) {
        VkDependencyInfo mirrored = {VK_STRUCTURE_TYPE_DEPENDENCY_INFO};
        mirrored.dependencyFlags = dependency->dependencyFlags;
        mirrored.imageMemoryBarrierCount = 1u;
        mirrored.pImageMemoryBarriers = &barrier;
        pipeline_barrier2(cmd, &mirrored); });
}

inline VkResult VKAPI_CALL HookPresent(VkQueue queue, const VkPresentInfoKHR* present) {
  if (present != nullptr) {
    const std::lock_guard lock(mutex);
    for (uint32_t i = 0; i < present->swapchainCount; ++i) {
      const auto chain = swapchains.find(reinterpret_cast<uint64_t>(present->pSwapchains[i]));
      if (chain == swapchains.end() || present->pImageIndices[i] >= chain->second.images.size()) continue;
      const auto found = images.find(chain->second.images[present->pImageIndices[i]]);
      if (found == images.end()) continue;
      auto* image = found->second.get();
      if (image->failed || (image->clone.handle != 0u && !image->encoded)) {
        ReportFailure(image->failed ? "present.image_already_failed" : "present.clone_not_encoded", image);
        if (present->pResults != nullptr) present->pResults[i] = VK_ERROR_OUT_OF_DATE_KHR;
        return VK_ERROR_OUT_OF_DATE_KHR;
      }
      image->acquired = false;
    }
  }
  return queue_present(queue, present);
}

inline void VKAPI_CALL HookDestroySwapchain(VkDevice device, VkSwapchainKHR swapchain,
                                            const VkAllocationCallbacks* allocator) {
  {
    const std::lock_guard lock(mutex);
    swapchains.erase(reinterpret_cast<uint64_t>(swapchain));
  }
  // Native destruction owns GPU completion and triggers our resource cleanup.
  destroy_swapchain(device, swapchain, allocator);
  const std::lock_guard lock(mutex);
  if (swapchains.empty()) {
    // Streamline has stopped its presentation work before we restore the base
    // output path. Do not change a live physical pipeline during destruction.
    for (auto& [api_device, output] : outputs) {
      output.want_copy_only = false;
      SetPhysicalCopyOnly(api_device, false);
    }
  }
}

inline void OnPresent(reshade::api::swapchain* swapchain) {
  if (swapchain == nullptr) return;
  const std::lock_guard lock(mutex);
  const auto found = outputs.find(swapchain->get_device());
  if (found == outputs.end()) return;
  // The enhancer's callback runs before the base addon's proxy callback.
  // Invalidate cached pipelines on the physical presentation thread itself.
  auto& output = found->second;
  const auto back_buffer = swapchain->get_current_back_buffer();
  bool compatibility_mode = output.compatibility_mode;
  if (auto* data = renodx::utils::data::Get<renodx::mods::swapchain::v2::DeviceData>(swapchain->get_device())) {
    const std::shared_lock data_lock(data->mutex);
    if (const auto proxy = data->swapchain_proxy_passes.find(back_buffer.handle);
        proxy != data->swapchain_proxy_passes.end() && proxy->second != nullptr) {
      compatibility_mode = proxy->second->use_compatibility_mode;
    }
  }
  // Compatibility mode overwrites its input from the original PQ backbuffer.
  // Direct-clone mode instead samples the FP16 destination of the native copy.
  const bool working = !compatibility_mode && output.working_copies.contains(back_buffer.handle);
  const bool copy_only = output.want_copy_only && !working;
  if (output.want_copy_only && output.route_logs < 12u && (working || output.copy_only != copy_only)) {
    ++output.route_logs;
    std::stringstream message;
    message << "Endfield HDR v36: physical_route bb=" << std::hex << back_buffer.handle
            << " working=" << working << " compat=" << compatibility_mode
            << " copy_only=" << copy_only;
    reshade::log::message(reshade::log::level::info, message.str().c_str());
  }
  SetPhysicalCopyOnly(swapchain->get_device(), copy_only, back_buffer.handle);
}

// Observe before the base resource-upgrade copy callback. That callback selects
// an EXISTING source clone when either endpoint has cloning enabled, even when
// the source clone itself was disabled after Encode. The private clone remains
// working HDR; only ImageState::original contains PQ. No copy/layout is changed.
inline bool OnPresentationCopy(reshade::api::command_list*, reshade::api::resource source,
                                reshade::api::resource dest) {
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
  // The supported presentation path copies a complete single-layer image.
  // Partial copies do not establish a new whole-image encoding contract.
  if (source_subresource != 0u || dest_subresource != 0u
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
    std::erase_if(output->second.physical_pipelines, [&](const auto& cached) {
      if (cached.back_buffer != resource.handle) return false;
      output->second.retired_pipelines.push_back(cached.pipeline);
      return true;
    });
    std::erase_if(output->second.working_copies, [resource](const auto& entry) {
      return entry.first == resource.handle || entry.second == resource.handle;
    });
  }
  const auto found = images.find(resource.handle);
  if (found == images.end()) return;
  found->second->pass.DestroyAll(device);
  images.erase(found);
}
inline void OnDestroyDevice(reshade::api::device* device) {
  const std::lock_guard lock(mutex);
  std::erase_if(graphics, [device](const auto& pair) {
    if (pair.second.device != device) return false;
    renodx::utils::pipeline::DestroyPipelineSubobjects(pair.second.subobjects, pair.second.count);
    if (pair.second.fp16.handle != 0u) device->destroy_pipeline(pair.second.fp16);
    return true;
  });
  if (const auto found = outputs.find(device); found != outputs.end()) {
    for (const auto& cached : found->second.physical_pipelines) device->destroy_pipeline(cached.pipeline);
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

// Resolve through the active ReShade device, not Streamline's unused exports.
// Core and KHR names alias one ReShade implementation in the supported build;
// never attach twice to the same address or silently choose between two paths.
inline bool ResolveBarrierDispatch(PFN_vkGetDeviceProcAddr get_proc, VkDevice device,
                                   PFN_vkCmdPipelineBarrier* legacy, PFN_vkCmdPipelineBarrier2* sync2) {
  *legacy = nullptr;
  *sync2 = nullptr;
  if (get_proc == nullptr || device == VK_NULL_HANDLE) return false;
  const auto first = get_proc(device, "vkCmdPipelineBarrier");
  const auto core = get_proc(device, "vkCmdPipelineBarrier2");
  const auto khr = get_proc(device, "vkCmdPipelineBarrier2KHR");
  if (first == nullptr || (core != nullptr && khr != nullptr && core != khr)
      || first == core || first == khr) return false;
  *legacy = reinterpret_cast<PFN_vkCmdPipelineBarrier>(first);
  *sync2 = reinterpret_cast<PFN_vkCmdPipelineBarrier2>(core != nullptr ? core : khr);
  return true;
}

inline bool IsSupportedBarrierHost(HMODULE host) {
  if (host == nullptr) return false;
  __try {
    const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(host);
    if (dos->e_magic != IMAGE_DOS_SIGNATURE || dos->e_lfanew <= 0 || dos->e_lfanew > 0x1000) return false;
    const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS64*>(reinterpret_cast<const uint8_t*>(host) + dos->e_lfanew);
    // Deployed ReShade 6.8.0.1, SHA-256 recorded with the release candidate.
    return nt->Signature == IMAGE_NT_SIGNATURE && nt->FileHeader.Machine == IMAGE_FILE_MACHINE_AMD64
           && nt->OptionalHeader.Magic == IMAGE_NT_OPTIONAL_HDR64_MAGIC
           && nt->FileHeader.TimeDateStamp == 0x6A8B504Bu && nt->OptionalHeader.SizeOfImage == 0x59A000u;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

inline bool IsBarrierHostCode(HMODULE host, const void* address) {
  MEMORY_BASIC_INFORMATION info = {};
  if (address == nullptr || VirtualQuery(address, &info, sizeof(info)) != sizeof(info)
      || info.AllocationBase != host || info.State != MEM_COMMIT
      || (info.Protect & (PAGE_GUARD | PAGE_NOACCESS)) != 0) return false;
  return (info.Protect & (PAGE_EXECUTE | PAGE_EXECUTE_READ | PAGE_EXECUTE_READWRITE | PAGE_EXECUTE_WRITECOPY)) != 0;
}

inline bool AttachHooks(HMODULE interposer, VkDevice device) {
  const HMODULE host = reshade::internal::get_reshade_module_handle();
  if (!IsSupportedBarrierHost(host)
      || !ResolveBarrierDispatch(reinterpret_cast<PFN_vkGetDeviceProcAddr>(GetProcAddress(host, "vkGetDeviceProcAddr")),
                                 device, &pipeline_barrier, &pipeline_barrier2)
      || !IsBarrierHostCode(host, reinterpret_cast<const void*>(pipeline_barrier))
      || (pipeline_barrier2 != nullptr && !IsBarrierHostCode(host, reinterpret_cast<const void*>(pipeline_barrier2)))) {
    reshade::log::message(reshade::log::level::error,
                          "Endfield HDR v36: unsupported ReShade build/device barrier dispatch; hook transaction refused.");
    return false;
  }
  bind_descriptor_sets = reinterpret_cast<PFN_vkCmdBindDescriptorSets>(
      reinterpret_cast<PFN_vkGetDeviceProcAddr>(GetProcAddress(host, "vkGetDeviceProcAddr"))(device, "vkCmdBindDescriptorSets"));
  if (!IsBarrierHostCode(host, reinterpret_cast<const void*>(bind_descriptor_sets))) return false;
  get_images = reinterpret_cast<PFN_vkGetSwapchainImagesKHR>(GetProcAddress(interposer, "vkGetSwapchainImagesKHR"));
  acquire_image = reinterpret_cast<PFN_vkAcquireNextImageKHR>(GetProcAddress(interposer, "vkAcquireNextImageKHR"));
  destroy_swapchain = reinterpret_cast<PFN_vkDestroySwapchainKHR>(GetProcAddress(interposer, "vkDestroySwapchainKHR"));
  queue_present = reinterpret_cast<PFN_vkQueuePresentKHR>(GetProcAddress(interposer, "vkQueuePresentKHR"));
  return get_images != nullptr && acquire_image != nullptr && destroy_swapchain != nullptr
         && queue_present != nullptr && pipeline_barrier != nullptr
         && DetourAttach(&get_images, HookGetImages) == NO_ERROR
         && DetourAttach(&acquire_image, HookAcquire) == NO_ERROR
         && DetourAttach(&destroy_swapchain, HookDestroySwapchain) == NO_ERROR
         && DetourAttach(&queue_present, HookPresent) == NO_ERROR
         && DetourAttach(&pipeline_barrier, HookBarrier) == NO_ERROR
         && DetourAttach(&bind_descriptor_sets, HookBindDescriptorSets) == NO_ERROR
         && (pipeline_barrier2 == nullptr || DetourAttach(&pipeline_barrier2, HookBarrier2) == NO_ERROR);
}
inline bool DetachHooks() {
  return DetourDetach(&get_images, HookGetImages) == NO_ERROR
         && DetourDetach(&acquire_image, HookAcquire) == NO_ERROR
         && DetourDetach(&destroy_swapchain, HookDestroySwapchain) == NO_ERROR
         && DetourDetach(&queue_present, HookPresent) == NO_ERROR
         && DetourDetach(&pipeline_barrier, HookBarrier) == NO_ERROR
         && DetourDetach(&bind_descriptor_sets, HookBindDescriptorSets) == NO_ERROR
         && (pipeline_barrier2 == nullptr || DetourDetach(&pipeline_barrier2, HookBarrier2) == NO_ERROR);
}

inline void RegisterDrawCallbacks() {
  // Called after the base addon has registered its shader callbacks, before
  // the device starts drawing. Our format variant is bound after its injection.
  for (uint32_t hash : output_shaders) {
    renodx::utils::command_action::Register(on_output_draw,
                                            {.shader_hash = hash, .command_types = renodx::utils::command_action::COMMAND_TYPE_DIRECT_DRAW | renodx::utils::command_action::COMMAND_TYPE_INDIRECT});
  }
  // Refresh active event masks now that the deferred draw registrations exist.
  renodx::utils::command_action::Use(DLL_PROCESS_ATTACH);
}

inline void UseEvents(DWORD reason) {
  if (reason == DLL_PROCESS_ATTACH) {
    reshade::register_event<reshade::addon_event::copy_resource>(OnPresentationCopy);
    reshade::register_event<reshade::addon_event::copy_texture_region>(OnPresentationCopyRegion);
    // Register dependencies before exposing callbacks. RegisterDrawCallbacks
    // joins command_action only; it does not initialize shader::shared.
    renodx::utils::shader::Use(reason);
    renodx::utils::state::Use(reason);
    renodx::utils::command_action::Use(reason);
    reshade::register_event<reshade::addon_event::barrier>(OnObserveBarrier);
    reshade::register_event<reshade::addon_event::init_pipeline>(OnInitPipeline);
    reshade::register_event<reshade::addon_event::destroy_pipeline>(OnDestroyPipeline);
    reshade::register_event<reshade::addon_event::init_command_list>(OnInitCommandList);
    reshade::register_event<reshade::addon_event::reset_command_list>(OnInitCommandList);
    reshade::register_event<reshade::addon_event::destroy_command_list>(OnDestroyCommandList);
    reshade::register_event<reshade::addon_event::begin_render_pass>(OnBeginRenderPass);
    reshade::register_event<reshade::addon_event::end_render_pass>(OnEndRenderPass);
    reshade::register_event<reshade::addon_event::destroy_resource>(OnDestroyResource);
    reshade::register_event<reshade::addon_event::destroy_device>(OnDestroyDevice);
  } else if (reason == DLL_PROCESS_DETACH) {
    reshade::unregister_event<reshade::addon_event::copy_resource>(OnPresentationCopy);
    reshade::unregister_event<reshade::addon_event::copy_texture_region>(OnPresentationCopyRegion);
    capture_graphics.store(false, std::memory_order_relaxed);
    reshade::unregister_event<reshade::addon_event::barrier>(OnObserveBarrier);
    renodx::utils::command_action::Unregister(on_output_draw);
    reshade::unregister_event<reshade::addon_event::init_pipeline>(OnInitPipeline);
    reshade::unregister_event<reshade::addon_event::destroy_pipeline>(OnDestroyPipeline);
    reshade::unregister_event<reshade::addon_event::init_command_list>(OnInitCommandList);
    reshade::unregister_event<reshade::addon_event::reset_command_list>(OnInitCommandList);
    reshade::unregister_event<reshade::addon_event::destroy_command_list>(OnDestroyCommandList);
    reshade::unregister_event<reshade::addon_event::begin_render_pass>(OnBeginRenderPass);
    reshade::unregister_event<reshade::addon_event::end_render_pass>(OnEndRenderPass);
    reshade::unregister_event<reshade::addon_event::destroy_resource>(OnDestroyResource);
    reshade::unregister_event<reshade::addon_event::destroy_device>(OnDestroyDevice);
    renodx::utils::command_action::Use(reason);
    renodx::utils::state::Use(reason);
    renodx::utils::shader::Use(reason);
  }
}

}  // namespace endfield::hdr_output

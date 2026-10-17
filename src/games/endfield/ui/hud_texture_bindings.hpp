#pragma once

#include <cstdint>
#include <mutex>
#include <shared_mutex>
#include <utility>
#include <vector>

#include <include/reshade.hpp>
#include "../../../utils/data.hpp"
#include "../../../utils/state.hpp"

namespace endfield::hud {

static constexpr uint8_t MINIMAP_TEXTURE = 1u;
static constexpr uint8_t HUD_SPRITE_TEXTURE = 2u;
static constexpr uint8_t HDR_COPY_TEXTURE = 4u;

struct __declspec(uuid("a0264fe9-f62d-45eb-9e86-72dde28e5c10")) TextureBindings {
  std::shared_mutex mutex;
  renodx::utils::data::ParallelFlatHashMap<uint64_t, uint8_t> views;
  renodx::utils::data::ParallelFlatHashMap<std::pair<uint64_t, uint32_t>, uint64_t> slots;
};

static uint8_t ClassifyHudTexture(const reshade::api::resource_desc& desc) {
  if (desc.type != reshade::api::resource_type::texture_2d) return 0u;
  if ((desc.texture.width == 600u || desc.texture.width == 900u)
      && (desc.texture.height == 600u || desc.texture.height == 900u)
      && desc.texture.format == reshade::api::format::r8g8b8a8_unorm_srgb) return MINIMAP_TEXTURE;
  if ((desc.texture.width == 2048u && desc.texture.height == 1024u)
      || (desc.texture.width == 4u && desc.texture.height == 4u)
      || (desc.texture.width == 728u && desc.texture.height == 68u)) return HUD_SPRITE_TEXTURE;
  // Retain only renderable HDR-chain candidates for the resolution-copy input.
  if ((desc.usage & reshade::api::resource_usage::render_target) != reshade::api::resource_usage::undefined
      && (desc.texture.format == reshade::api::format::r8g8b8a8_unorm
          || desc.texture.format == reshade::api::format::r16g16b16a16_float)) return HDR_COPY_TEXTURE;
  return 0u;
}

static reshade::api::resource_view GetBoundTexture(reshade::api::command_list* cmd_list, uint32_t binding) {
  const auto view = renodx::utils::state::GetBoundResourceView(
      cmd_list, reshade::api::shader_stage::pixel,
      reshade::api::descriptor_type::texture_shader_resource_view, binding, 3u);
  if (view.handle != 0u) return view;
  const auto tables = renodx::utils::state::CopyBoundDescriptorTables(
      cmd_list, renodx::utils::state::PipelineBindPoint::GRAPHICS);
  auto* device = cmd_list->get_device();
  auto* data = device->get_private_data<TextureBindings>();
  if (!tables || !tables->known || !tables->tables.has(3u) || data == nullptr) return {};
  reshade::api::descriptor_heap heap = {};
  uint32_t offset = 0u;
  device->get_descriptor_heap_offset(tables->tables.get(3u), binding, 0u, &heap, &offset);
  const std::shared_lock lock(data->mutex);
  const auto slot = data->slots.find({heap.handle, offset});
  return slot != data->slots.end() ? reshade::api::resource_view{slot->second} : reshade::api::resource_view{};
}

static void OnInitHudTextureDevice(reshade::api::device* device) {
  if (device->get_api() == reshade::api::device_api::vulkan) {
    device->create_private_data<TextureBindings>();
  }
}

static void OnDestroyHudTextureDevice(reshade::api::device* device) {
  if (device->get_api() == reshade::api::device_api::vulkan) {
    device->destroy_private_data<TextureBindings>();
  }
}

static void OnInitHudTextureView(reshade::api::device* device, reshade::api::resource resource,
                                reshade::api::resource_usage usage, const reshade::api::resource_view_desc&,
                                reshade::api::resource_view view) {
  auto* data = device->get_private_data<TextureBindings>();
  // Vulkan image views report undefined usage; the resource shape is the filter.
  if (data == nullptr || (usage != reshade::api::resource_usage::undefined
      && (usage & reshade::api::resource_usage::shader_resource) == reshade::api::resource_usage::undefined)) return;
  const auto flags = ClassifyHudTexture(device->get_resource_desc(resource));
  if (flags == 0u) return;
  const std::unique_lock lock(data->mutex);
  data->views.insert_or_assign(view.handle, flags);
}

static void OnDestroyHudTextureView(reshade::api::device* device, reshade::api::resource_view view) {
  auto* data = device->get_private_data<TextureBindings>();
  if (data == nullptr) return;
  const std::unique_lock lock(data->mutex);
  if (data->views.erase(view.handle) == 0u) return;
  for (auto entry = data->slots.begin(); entry != data->slots.end();) {
    if (entry->second == view.handle) {
      data->slots.erase(entry++);
    } else {
      ++entry;
    }
  }
}

static bool OnUpdateHudTextureTables(reshade::api::device* device, uint32_t count,
                                    const reshade::api::descriptor_table_update* updates) {
  auto* data = device->get_private_data<TextureBindings>();
  if (data == nullptr) return false;
  for (uint32_t i = 0; i < count; ++i) {
    const auto& update = updates[i];
    if (update.type != reshade::api::descriptor_type::texture_shader_resource_view
        && update.type != reshade::api::descriptor_type::sampler_with_resource_view) continue;
    reshade::api::descriptor_heap heap = {};
    uint32_t offset = 0;
    device->get_descriptor_heap_offset(update.table, update.binding, update.array_offset, &heap, &offset);
    if (heap.handle == 0u) continue;
    const std::unique_lock lock(data->mutex);
    for (uint32_t j = 0; j < update.count; ++j) {
      const auto view = (update.type == reshade::api::descriptor_type::sampler_with_resource_view
          ? static_cast<const reshade::api::sampler_with_resource_view*>(update.descriptors)[j].view
          : static_cast<const reshade::api::resource_view*>(update.descriptors)[j]);
      if (data->views.contains(view.handle)) {
        data->slots.insert_or_assign({heap.handle, offset + j}, view.handle);
      } else {
        // Overwriting a previously relevant slot must invalidate its HUD classification.
        data->slots.erase({heap.handle, offset + j});
      }
    }
  }
  return false;
}

static bool OnCopyHudTextureTables(reshade::api::device* device, uint32_t count,
                                  const reshade::api::descriptor_table_copy* copies) {
  auto* data = device->get_private_data<TextureBindings>();
  if (data == nullptr) return false;
  for (uint32_t i = 0; i < count; ++i) {
    const auto& copy = copies[i];
    reshade::api::descriptor_heap source = {}, dest = {};
    uint32_t source_offset = 0, dest_offset = 0;
    device->get_descriptor_heap_offset(copy.source_table, copy.source_binding, copy.source_array_offset, &source, &source_offset);
    device->get_descriptor_heap_offset(copy.dest_table, copy.dest_binding, copy.dest_array_offset, &dest, &dest_offset);
    if (dest.handle == 0u) continue;
    const std::unique_lock lock(data->mutex);
    // Preserve copy sources before updating destinations, including overlapping ranges.
    std::vector<std::pair<uint32_t, uint64_t>> matched;
    for (uint32_t j = 0; j < copy.count; ++j) {
      const auto entry = data->slots.find({source.handle, source_offset + j});
      if (entry != data->slots.end()) {
        matched.emplace_back(j, entry->second);
      }
    }
    for (uint32_t j = 0; j < copy.count; ++j) {
      data->slots.erase({dest.handle, dest_offset + j});
    }
    for (const auto& [index, view] : matched) {
      data->slots.insert_or_assign({dest.handle, dest_offset + index}, view);
    }
  }
  return false;
}

}  // namespace endfield::hud

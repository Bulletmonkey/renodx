#pragma once

#include <array>
#include <cstdint>

#include <include/reshade.hpp>

#include "./hud_regions.h"

namespace endfield::hud {

struct __declspec(uuid("09db8427-ea07-4c9b-a650-054eebf76f04")) NotificationData {
  reshade::api::resource buffer = {};
  reshade::api::resource_view view = {};
};

static void OnInitNotificationDevice(reshade::api::device* device) {
  if (device->get_api() != reshade::api::device_api::vulkan) return;
  device->create_private_data<NotificationData>();
}

static void OnInitNotificationSwapchain(reshade::api::swapchain* swapchain, bool) {
  auto* device = swapchain->get_device();
  if (device->get_api() != reshade::api::device_api::vulkan) return;
  auto* data = device->get_private_data<NotificationData>();
  if (data == nullptr || data->view.handle != 0u) return;
  // Vulkan initial-data uploads require an immediate command list. Device
  // initialization runs before its queues exist; swapchain creation does not.
  std::array<uint32_t, ENDFIELD_HUD_BUTTON_COUNT> initial = {};
  reshade::api::subresource_data upload = {.data = initial.data()};
  if (!device->create_resource(
          reshade::api::resource_desc(sizeof(initial), reshade::api::memory_heap::gpu_only,
                                      reshade::api::resource_usage::unordered_access),
          &upload, reshade::api::resource_usage::unordered_access, &data->buffer)) {
    reshade::log::message(reshade::log::level::error, "Endfield HUD: notification buffer allocation failed.");
    return;
  }
  if (!device->create_resource_view(
          data->buffer, reshade::api::resource_usage::unordered_access,
          reshade::api::resource_view_desc(reshade::api::format::r32_uint, 0u, sizeof(initial)), &data->view)) {
    device->destroy_resource(data->buffer);
    data->buffer = {};
    reshade::log::message(reshade::log::level::error, "Endfield HUD: notification buffer view creation failed.");
    return;
  }
}

static void OnDestroyNotificationDevice(reshade::api::device* device) {
  if (device->get_api() != reshade::api::device_api::vulkan) return;
  auto* data = device->get_private_data<NotificationData>();
  if (data == nullptr) return;
  if (data->view.handle != 0u) {
    device->destroy_resource_view(data->view);
  }
  if (data->buffer.handle != 0u) {
    device->destroy_resource(data->buffer);
  }
  device->destroy_private_data<NotificationData>();
}

}  // namespace endfield::hud

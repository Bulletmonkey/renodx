#pragma once

#include <cstdint>

#include <Windows.h>

namespace endfield::vulkan_loader {

inline constexpr char kStatusExport[] =
    "RenoDXEndfieldVulkanBridgeStatusV1";

enum Status : uint32_t {
  SYSTEM_VULKAN_READY = 1u << 0u,
  RESHADE_READY = 1u << 1u,
  STREAMLINE_READY = 1u << 2u,
};

using GetStatus = uint32_t(WINAPI*)();

inline bool IsHDRLoaderReady() {
  static const GetStatus get_status = []() {
    const HMODULE loader = GetModuleHandleW(L"vulkan-1.dll");
    return loader == nullptr
        ? nullptr
        : reinterpret_cast<GetStatus>(GetProcAddress(loader, kStatusExport));
  }();
  if (get_status == nullptr) return false;
  constexpr uint32_t required =
      SYSTEM_VULKAN_READY | RESHADE_READY | STREAMLINE_READY;
  return (get_status() & required) == required;
}

}  // namespace endfield::vulkan_loader

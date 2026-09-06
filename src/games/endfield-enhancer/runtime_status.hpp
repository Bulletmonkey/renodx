#pragma once

#include <array>
#include <cstdio>
#include <cstring>
#include <string>
#include <Windows.h>
#include <include/reshade.hpp>
#include <deps/imgui/imgui.h>
#include "./vulkan_loader_api.hpp"

namespace endfield::runtime_status {

// Read the version resource from the module already mapped into this process,
// not a same-named DLL on disk (which could have been replaced since startup).
inline std::string LoadedVersion(HMODULE module) {
  if (module == nullptr) return "Not loaded";
  const HRSRC resource = FindResourceW(module, MAKEINTRESOURCEW(VS_VERSION_INFO), MAKEINTRESOURCEW(16)); // RT_VERSION
  if (resource == nullptr) return "Loaded (version unavailable)";
  const DWORD size = SizeofResource(module, resource);
  const auto* bytes = static_cast<const unsigned char*>(LockResource(LoadResource(module, resource)));
  constexpr wchar_t key[] = L"VS_VERSION_INFO";
  constexpr size_t value_offset = (6 + sizeof(key) + 3) & ~size_t(3);
  if (bytes == nullptr || size < value_offset + sizeof(VS_FIXEDFILEINFO)) return "Loaded (version unavailable)";
  std::array<WORD, 3> header;
  std::memcpy(header.data(), bytes, sizeof(header));
  if (header[0] > size || header[0] < value_offset + sizeof(VS_FIXEDFILEINFO)
      || header[1] < sizeof(VS_FIXEDFILEINFO) || header[2] != 0
      || std::memcmp(bytes + 6, key, sizeof(key)) != 0) return "Loaded (version unavailable)";
  VS_FIXEDFILEINFO version;
  std::memcpy(&version, bytes + value_offset, sizeof(version));
  if (version.dwSignature != VS_FFI_SIGNATURE) return "Loaded (version unavailable)";
  return std::to_string(HIWORD(version.dwFileVersionMS)) + "."
      + std::to_string(LOWORD(version.dwFileVersionMS)) + "."
      + std::to_string(HIWORD(version.dwFileVersionLS)) + "."
      + std::to_string(LOWORD(version.dwFileVersionLS));
}

inline std::string DriverVersion(reshade::api::device* device) {
  uint32_t version = 0;
  if (device == nullptr || device->get_api() != reshade::api::device_api::vulkan
      || !device->get_property(reshade::api::device_properties::driver_version, &version)
      || version == 0) return "Unavailable";
  // This ReShade Vulkan API normalizes the vendor-specific encoding to
  // major*100+minor. It does not expose the complete vendor build string.
  char text[32];
  std::snprintf(text, sizeof(text), "%u.%02u", version / 100, version % 100);
  return text;
}

inline void Draw(reshade::api::device* device) {
  ImGui::TextUnformatted(endfield::vulkan_loader::IsInstalled()
      ? "vulkan-1.dll: Enhancer bridge loaded"
      : GetModuleHandleW(L"vulkan-1.dll") != nullptr
          ? "vulkan-1.dll: Loaded, but not the Enhancer bridge"
          : "vulkan-1.dll: Not loaded");
  ImGui::Text("renodx-endfield.addon64: %s",
              GetModuleHandleW(L"renodx-endfield.addon64") != nullptr ? "Loaded" : "Not loaded");
  ImGui::Text("Streamline (sl.interposer.dll): %s", LoadedVersion(GetModuleHandleW(L"sl.interposer.dll")).c_str());
  ImGui::Text("DLSS-G (sl.dlss_g.dll): %s", LoadedVersion(GetModuleHandleW(L"sl.dlss_g.dll")).c_str());
  std::array<char, 256> gpu = {};
  if (device != nullptr && device->get_property(reshade::api::device_properties::description, gpu.data())) {
    gpu.back() = '\0';
    ImGui::Text("GPU: %s", gpu.data());
  } else {
    ImGui::TextUnformatted("GPU: Unavailable");
  }
  ImGui::Text("GPU Driver: %s", DriverVersion(device).c_str());
}

}  // namespace endfield::runtime_status

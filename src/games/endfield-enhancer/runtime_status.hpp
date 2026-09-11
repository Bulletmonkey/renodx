#pragma once

#include <array>
#include <cstdio>
#include <cstring>
#include <string>
#include <Windows.h>
#include <wincrypt.h>
#pragma comment(lib, "crypt32.lib")
#include <dxgi1_4.h>
#include <wrl/client.h>
#include <include/reshade.hpp>
#include <deps/imgui/imgui.h>
#include "./vulkan_loader_api.hpp"

namespace endfield::runtime_status {

inline HMODULE addon_module = nullptr;

// SHA-256 of the bundled build/Release/vulkan-1.dll. Update deliberately when
// distributing a new loader; rebuilding the addon alone must not change it.
inline constexpr char kVulkanLoaderSha256[] = "daa51f26cbafc26eeaf22413432a6f003b8bd7e4cefc9a2b00802d2df4065fb4";

inline std::string LoadedModuleFileSha256(HMODULE module) {
  if (module == nullptr) return {};
  std::array<wchar_t, 32768> path = {};
  const DWORD path_length = GetModuleFileNameW(module, path.data(), static_cast<DWORD>(path.size()));
  if (path_length == 0 || path_length >= path.size()) return {};
  // Deny writes/deletion while hashing. This identifies the module's backing
  // file at inspection time, not relocated or patched process memory.
  const HANDLE file = CreateFileW(path.data(), GENERIC_READ, FILE_SHARE_READ,
                                  nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
  if (file == INVALID_HANDLE_VALUE) return {};
  LARGE_INTEGER size = {};
  const HANDLE mapping = GetFileSizeEx(file, &size) && size.QuadPart > 0 && size.QuadPart <= MAXDWORD
      ? CreateFileMappingW(file, nullptr, PAGE_READONLY, 0, 0, nullptr) : nullptr;
  const auto* bytes = mapping ? static_cast<const BYTE*>(MapViewOfFile(mapping, FILE_MAP_READ, 0, 0, 0)) : nullptr;
  std::array<BYTE, 32> hash = {};
  DWORD length = static_cast<DWORD>(hash.size());
  const bool hashed = bytes != nullptr && CryptHashCertificate2(L"SHA256", 0, nullptr, bytes,
      static_cast<DWORD>(size.QuadPart), hash.data(), &length);
  if (bytes != nullptr) UnmapViewOfFile(bytes);
  if (mapping != nullptr) CloseHandle(mapping);
  CloseHandle(file);
  if (!hashed || length != hash.size()) return {};
  constexpr char hex[] = "0123456789abcdef";
  std::string result;
  result.reserve(hash.size() * 2);
  for (const BYTE byte : hash) {
    result += hex[byte >> 4];
    result += hex[byte & 0xF];
  }
  return result;
}

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
  if (device == nullptr) return "Unavailable";
  // Match the runtime adapter by LUID, including AMD and multi-GPU systems.
  // DXGI reports the full Windows driver version, not an Adrenalin package version.
  static const HMODULE dxgi = LoadLibraryExW(L"dxgi.dll", nullptr, LOAD_LIBRARY_SEARCH_SYSTEM32);
  if (dxgi != nullptr) {
    const auto create_factory = reinterpret_cast<HRESULT(WINAPI*)(REFIID, void**)>(GetProcAddress(dxgi, "CreateDXGIFactory1"));
    LUID luid = {};
    Microsoft::WRL::ComPtr<IDXGIFactory4> factory;
    Microsoft::WRL::ComPtr<IDXGIAdapter> adapter;
    LARGE_INTEGER version = {};
    if (create_factory != nullptr
        && device->get_property(reshade::api::device_properties::adapter_luid, &luid)
        && SUCCEEDED(create_factory(IID_PPV_ARGS(&factory)))
        && SUCCEEDED(factory->EnumAdapterByLuid(luid, IID_PPV_ARGS(&adapter)))
        && SUCCEEDED(adapter->CheckInterfaceSupport(__uuidof(IDXGIDevice), &version))
        && version.QuadPart != 0) {
      return std::to_string(HIWORD(version.HighPart)) + "."
          + std::to_string(LOWORD(version.HighPart)) + "."
          + std::to_string(HIWORD(version.LowPart)) + "."
          + std::to_string(LOWORD(version.LowPart)) + " (Windows driver)";
    }
  }
  uint32_t version = 0;
  if (device->get_api() != reshade::api::device_api::vulkan
      || !device->get_property(reshade::api::device_properties::driver_version, &version)
      || version == 0) return "Unavailable";
  // This ReShade Vulkan API normalizes the vendor-specific encoding to
  // major*100+minor. It does not expose the complete vendor build string.
  char text[32];
  std::snprintf(text, sizeof(text), "%u.%02u", version / 100, version % 100);
  return std::string(text) + " (Vulkan-reported)";
}

inline void Draw(reshade::api::device* device) {
  const HMODULE loader = GetModuleHandleW(L"vulkan-1.dll");
  static HMODULE checksum_module = nullptr;
  static std::string loader_checksum;
  if (checksum_module != loader) {
    checksum_module = loader;
    loader_checksum = LoadedModuleFileSha256(loader);
  }
  // Every module has a row, including absent modules. Never gate diagnostics on
  // the base addon, bridge or NVIDIA libraries being installed.
  if (ImGui::BeginTable("RuntimeModules", 3, ImGuiTableFlags_RowBg | ImGuiTableFlags_SizingStretchProp)) {
    ImGui::TableSetupColumn("Module", ImGuiTableColumnFlags_WidthStretch, 1.5f);
    ImGui::TableSetupColumn("Status", ImGuiTableColumnFlags_WidthStretch, 0.7f);
    ImGui::TableSetupColumn("Version / SHA-256", ImGuiTableColumnFlags_WidthStretch, 1.f);
    ImGui::TableHeadersRow();
    const auto draw_module = [](const char* label, HMODULE handle, const char* checksum_status = nullptr) {
      ImGui::TableNextRow();
      ImGui::TableNextColumn();
      ImGui::TextWrapped("%s", label);
      ImGui::TableNextColumn();
      ImGui::TextUnformatted(handle != nullptr ? "Loaded" : "Not loaded");
      ImGui::TableNextColumn();
      if (handle == nullptr) {
        ImGui::TextUnformatted("--");
      } else if (checksum_status != nullptr) {
        ImGui::TextWrapped("%s", checksum_status);
      } else {
        const auto version = LoadedVersion(handle);
        ImGui::TextWrapped("%s", version.starts_with("Loaded") ? "Unavailable" : version.c_str());
      }
    };
    constexpr struct { const wchar_t* file; const char* label; } modules[] = {
        {L"renodx-endfield.addon64", "renodx-endfield.addon64"},
        {L"renodx-endfield-dx11.addon64", "renodx-endfield-dx11.addon64"},
        {L"sl.interposer.dll", "Streamline (sl.interposer.dll)"}};
    draw_module("vulkan-1.dll", loader, loader_checksum.empty() ? "SHA-256 unavailable"
        : loader_checksum == kVulkanLoaderSha256 ? "SHA-256 match" : "SHA-256 mismatch");
    ImGui::SetItemTooltip("Bundled loader file SHA-256:\n%s\n\nObserved file SHA-256:\n%s\n\nChecked once from the loaded module's file path. This does not verify in-memory code or initialization order.",
                          kVulkanLoaderSha256, loader_checksum.empty() ? "Unavailable" : loader_checksum.c_str());
    for (const auto& module : modules) draw_module(module.label, GetModuleHandleW(module.file));
    draw_module("NVIDIA DLSS", GetModuleHandleW(L"nvngx_dlss.dll"));
    ImGui::EndTable();
  }
  ImGui::TextWrapped("Vulkan loader type: %s", endfield::vulkan_loader::IsInstalled()
      ? "Enhancer bridge" : GetModuleHandleW(L"vulkan-1.dll") != nullptr ? "Standard / other loader" : "Not loaded");
  std::array<char, 256> gpu = {};
  if (device != nullptr && device->get_property(reshade::api::device_properties::description, gpu.data())) {
    gpu.back() = '\0';
    ImGui::Text("GPU: %s", gpu.data());
  } else {
    ImGui::TextUnformatted("GPU: Unavailable");
  }
  static reshade::api::device* driver_device = nullptr;
  static std::string driver_version = "Unavailable";
  if (driver_device != device) {
    driver_device = device;
    driver_version = DriverVersion(device);
  }
  ImGui::TextWrapped("GPU Driver: %s", driver_version.c_str());
}

}  // namespace endfield::runtime_status

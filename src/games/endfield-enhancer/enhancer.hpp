#pragma once

#include <atomic>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <mutex>
#include <vector>

#include <detours.h>
#include <glad/vulkan.h>
#include <sl_core_api.h>
#include <sl_dlss_g.h>
#include <Windows.h>
#include <include/reshade.hpp>

#include "./vulkan_loader_api.hpp"
#include "./hdr_output.hpp"

namespace endfield::enhancer {

inline float fps_unlock = 0.f;
inline float fps_limit = 120.f;
inline float frame_generation_fps_limit = 240.f;
inline float background_fps_limit = 60.f;
inline float full_resolution_gtao = 0.f;
inline float hdr_frame_generation = 0.f;

namespace detail {

inline constexpr uint32_t kHDR10Format =
    static_cast<uint32_t>(VK_FORMAT_A2B10G10R10_UNORM_PACK32);

using Il2CppDomain = void*;
using Il2CppAssembly = void*;
using Il2CppImage = void*;
using Il2CppClass = void*;
using Il2CppMethod = void*;

struct MethodInfo {
  void* method_pointer;
};

using DomainGet = Il2CppDomain (*)();
using ThreadAttach = void* (*)(Il2CppDomain);
using DomainGetAssemblies = Il2CppAssembly** (*)(Il2CppDomain, size_t*);
using AssemblyGetImage = Il2CppImage (*)(Il2CppAssembly);
using ImageGetName = const char* (*)(Il2CppImage);
using ClassFromName = Il2CppClass (*)(Il2CppImage, const char*, const char*);
using ClassGetMethodFromName = Il2CppMethod (*)(Il2CppClass, const char*, int);
using ClassGetFieldFromName = void* (*)(Il2CppClass, const char*);
using FieldGetOffset = size_t (*)(void*);
using RuntimeInvoke = void* (*)(Il2CppMethod, void*, void**, void**);
using ObjectUnbox = void* (*)(void*);
using RenderPath = void (*)(int64_t, void*, void*, void*, void*, void*);

inline DomainGet domain_get = nullptr;
inline ThreadAttach thread_attach = nullptr;
inline DomainGetAssemblies domain_get_assemblies = nullptr;
inline AssemblyGetImage assembly_get_image = nullptr;
inline ImageGetName image_get_name = nullptr;
inline ClassFromName class_from_name = nullptr;
inline ClassGetMethodFromName class_get_method_from_name = nullptr;
inline ClassGetFieldFromName class_get_field_from_name = nullptr;
inline FieldGetOffset field_get_offset = nullptr;
inline RuntimeInvoke runtime_invoke = nullptr;
inline ObjectUnbox object_unbox = nullptr;

inline Il2CppMethod get_target_frame_rate = nullptr;
inline Il2CppMethod set_target_frame_rate = nullptr;
inline Il2CppMethod get_vsync_count = nullptr;
inline Il2CppMethod set_vsync_count = nullptr;
inline RenderPath render_path = nullptr;
inline PFun_slDLSSGSetOptions* set_frame_generation_options = nullptr;
inline PFun_slSetTag* set_tags = nullptr;
inline PFun_slSetTagForFrame* set_tags_for_frame = nullptr;
inline PFN_vkCreateSwapchainKHR streamline_create_swapchain = nullptr;

inline size_t render_params_gtao_offset = 0;
inline size_t gtao_width_offset = 0;
inline size_t gtao_height_offset = 0;
inline size_t render_params_frame_generation_pause_offset = 0;

inline std::atomic_bool shutting_down = false;
inline std::atomic_bool gtao_writes_enabled = false;

inline bool api_ready = false;
inline bool fps_ready = false;
inline bool streamline_hook_installed = false;
inline std::mutex streamline_options_mutex;
inline std::mutex streamline_install_mutex;
inline std::atomic_bool frame_generation_presenting = false;
inline std::atomic_bool hdr_format_logged = false;
inline std::atomic_bool hdr_bridge_missing_logged = false;
inline std::atomic_bool hdr_swapchain_logged = false;
inline std::atomic_bool hdr_hudless_suppressed_logged = false;
inline std::atomic_bool frame_generation_paused = true;
inline bool gtao_ready = false;
inline bool fps_applied = false;
inline bool render_path_hook_installed = false;
inline int original_target_frame_rate = -1;
inline int original_vsync_count = 0;
inline int last_applied_fps = 0;
inline uint32_t present_count = 0;
inline thread_local bool thread_attached = false;

struct GtaoDimensions {
  void* settings = nullptr;
  int32_t source_width = 0;
  int32_t source_height = 0;
  int32_t written_width = 0;
  int32_t written_height = 0;
  bool modified = false;
};
inline thread_local GtaoDimensions gtao_dimensions;
inline std::atomic_bool gtao_write_logged = false;

inline void Log(reshade::log::level level, const char* message) {
  reshade::log::message(level, message);
}

template <typename T>
bool ResolveExport(HMODULE module, const char* name, T* target) {
  *target = reinterpret_cast<T>(GetProcAddress(module, name));
  return *target != nullptr;
}

inline bool AttachThread() {
  if (thread_attached) return true;
  if (domain_get == nullptr || thread_attach == nullptr) return false;
  Il2CppDomain domain = domain_get();
  if (domain == nullptr) return false;
  thread_attached = thread_attach(domain) != nullptr;
  return thread_attached;
}

inline bool ResolveApi() {
  if (api_ready) return AttachThread();

  HMODULE game_assembly = GetModuleHandleW(L"GameAssembly.dll");
  if (game_assembly == nullptr) return false;

  api_ready = ResolveExport(game_assembly, "il2cpp_domain_get", &domain_get)
              && ResolveExport(game_assembly, "il2cpp_thread_attach", &thread_attach)
              && ResolveExport(game_assembly, "il2cpp_domain_get_assemblies", &domain_get_assemblies)
              && ResolveExport(game_assembly, "il2cpp_assembly_get_image", &assembly_get_image)
              && ResolveExport(game_assembly, "il2cpp_image_get_name", &image_get_name)
              && ResolveExport(game_assembly, "il2cpp_class_from_name", &class_from_name)
              && ResolveExport(game_assembly, "il2cpp_class_get_method_from_name", &class_get_method_from_name)
              && ResolveExport(game_assembly, "il2cpp_class_get_field_from_name", &class_get_field_from_name)
              && ResolveExport(game_assembly, "il2cpp_field_get_offset", &field_get_offset)
              && ResolveExport(game_assembly, "il2cpp_runtime_invoke", &runtime_invoke)
              && ResolveExport(game_assembly, "il2cpp_object_unbox", &object_unbox);
  return api_ready && AttachThread();
}

inline Il2CppImage FindImage(const char* partial_name) {
  Il2CppDomain domain = domain_get();
  if (domain == nullptr) return nullptr;

  size_t count = 0;
  Il2CppAssembly** assemblies = domain_get_assemblies(domain, &count);
  if (assemblies == nullptr) return nullptr;

  for (size_t index = 0; index < count; ++index) {
    Il2CppImage image = assembly_get_image(assemblies[index]);
    const char* name = image == nullptr ? nullptr : image_get_name(image);
    if (name != nullptr && std::strstr(name, partial_name) != nullptr) return image;
  }
  return nullptr;
}

inline Il2CppClass FindGraphicsClass(Il2CppImage image, const char* name) {
  Il2CppClass type = class_from_name(
      image, "UnityEngine.HyperGryphEngineCode", name);
  return type != nullptr ? type : class_from_name(image, "", name);
}

inline bool ResolveCppFieldOffset(
    Il2CppClass type,
    const char* primary_name,
    const char* fallback_name,
    size_t* offset) {
  constexpr size_t kObjectHeaderSize = 0x10;
  constexpr size_t kMaximumExpectedOffset = 0x10000;

  void* field = class_get_field_from_name(type, primary_name);
  if (field == nullptr && fallback_name != nullptr) {
    field = class_get_field_from_name(type, fallback_name);
  }
  if (field == nullptr) return false;

  const size_t metadata_offset = field_get_offset(field);
  if (metadata_offset < kObjectHeaderSize
      || metadata_offset >= kMaximumExpectedOffset) {
    return false;
  }

  *offset = metadata_offset - kObjectHeaderSize;
  return true;
}

inline Il2CppMethod FindMethod(
    Il2CppImage image,
    const char* namespaze,
    const char* class_name,
    const char* method_name,
    int parameter_count) {
  Il2CppClass type = class_from_name(image, namespaze, class_name);
  return type == nullptr
             ? nullptr
             : class_get_method_from_name(type, method_name, parameter_count);
}

inline bool ReadInt(Il2CppMethod method, int* value, void** parameters = nullptr) {
  void* exception = nullptr;
  void* result = runtime_invoke(method, nullptr, parameters, &exception);
  if (result == nullptr || exception != nullptr) return false;
  void* unboxed = object_unbox(result);
  if (unboxed == nullptr) return false;
  std::memcpy(value, unboxed, sizeof(*value));
  return true;
}

inline bool WriteInt(Il2CppMethod method, int value) {
  void* parameters[] = {&value};
  void* exception = nullptr;
  runtime_invoke(method, nullptr, parameters, &exception);
  return exception == nullptr;
}

inline bool ResolveFpsMethods() {
  if (fps_ready) return true;
  if (!ResolveApi()) return false;
  const bool was_fps_ready = fps_ready;

  Il2CppImage core_image = FindImage("UnityEngine.CoreModule");
  if (core_image == nullptr) return false;

  get_target_frame_rate = FindMethod(
      core_image, "UnityEngine", "Application", "get_targetFrameRate", 0);
  set_target_frame_rate = FindMethod(
      core_image, "UnityEngine", "Application", "set_targetFrameRate", 1);
  get_vsync_count = FindMethod(
      core_image, "UnityEngine", "QualitySettings", "get_vSyncCount", 0);
  set_vsync_count = FindMethod(
      core_image, "UnityEngine", "QualitySettings", "set_vSyncCount", 1);
  fps_ready = get_target_frame_rate != nullptr
              && set_target_frame_rate != nullptr
              && get_vsync_count != nullptr
              && set_vsync_count != nullptr;

  if (fps_ready && !was_fps_ready) {
    Log(reshade::log::level::info,
        "Endfield enhancer: resolved FPS controls from IL2CPP metadata.");
  }
  return fps_ready;
}

__declspec(noinline) inline sl::Result ForwardFrameGenerationOptionsLocked(
    const sl::ViewportHandle& viewport,
    const sl::DLSSGOptions& options) {
  sl::DLSSGOptions forwarded_options = options;
  const bool enable_hdr = hdr_frame_generation >= 0.5f
                          && endfield::vulkan_loader::IsHDRLoaderReady();
  if (enable_hdr) {
    forwarded_options.colorBufferFormat = kHDR10Format;
  } else if (hdr_frame_generation >= 0.5f
             && !hdr_bridge_missing_logged.exchange(true)) {
    Log(
        reshade::log::level::warning,
        "Endfield enhancer: DLSS-G HDR patch is waiting for the bundled Vulkan loader; HDR formats were left unchanged.");
  }

  frame_generation_presenting.store(false, std::memory_order_release);

  sl::Result result;
  __try {
    result = set_frame_generation_options(viewport, forwarded_options);
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    Log(reshade::log::level::error,
        "Endfield enhancer: Streamline SetOptions forwarding failed.");
    return sl::Result::eErrorExceptionHandler;
  }

  if (result != sl::Result::eOk) return result;

  __try {
    const bool presenting = options.mode != sl::DLSSGMode::eOff
                            && options.numFramesToGenerate != 0u;
    frame_generation_presenting.store(
        presenting, std::memory_order_relaxed);
    if (enable_hdr && presenting
        && !hdr_format_logged.exchange(true, std::memory_order_relaxed)) {
      Log(reshade::log::level::info,
          "Endfield enhancer: DLSS-G color buffer configured for Vulkan HDR10.");
    }
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    frame_generation_presenting.store(false, std::memory_order_relaxed);
  }
  return result;
}

inline sl::Result HookedSetFrameGenerationOptions(
    const sl::ViewportHandle& viewport,
    const sl::DLSSGOptions& options) {
  const std::lock_guard transition_lock(streamline_options_mutex);
  return ForwardFrameGenerationOptionsLocked(viewport, options);
}

inline bool UseHDRFrameGenerationPath() {
  return hdr_frame_generation >= 0.5f
         && endfield::vulkan_loader::IsHDRLoaderReady();
}

inline const sl::ResourceTag* FilterFrameGenerationTags(
    const sl::ResourceTag* tags,
    uint32_t num_tags) {
  if (!UseHDRFrameGenerationPath() || tags == nullptr || num_tags == 0u) {
    return tags;
  }

  bool has_hudless_color = false;
  for (uint32_t i = 0u; i < num_tags; ++i) {
    if (tags[i].type == sl::kBufferTypeHUDLessColor
        && tags[i].resource != nullptr) {
      has_hudless_color = true;
      break;
    }
  }
  if (!has_hudless_color) return tags;

  thread_local std::vector<sl::ResourceTag> filtered_tags;
  filtered_tags.assign(tags, tags + num_tags);
  for (auto& tag : filtered_tags) {
    if (tag.type == sl::kBufferTypeHUDLessColor) {
      // Endfield tags this before RenoDX's final PQ output pass. DLSS-G
      // requires HUD-less color to match the final backbuffer color space, so
      // remove the incompatible tag and let it use the HDR10 backbuffer.
      tag.resource = nullptr;
    }
  }

  if (!hdr_hudless_suppressed_logged.exchange(
          true, std::memory_order_relaxed)) {
    Log(
        reshade::log::level::info,
        "Endfield enhancer: suppressed the incompatible pre-output HUD-less tag; DLSS-G will use the application color image.");
  }
  return filtered_tags.data();
}

inline sl::Result HookedSetTags(
    const sl::ViewportHandle& viewport,
    const sl::ResourceTag* tags,
    uint32_t num_tags,
    sl::CommandBuffer* command_buffer) {
  return set_tags(
      viewport,
      FilterFrameGenerationTags(tags, num_tags),
      num_tags,
      command_buffer);
}

inline sl::Result HookedSetTagsForFrame(
    const sl::FrameToken& frame,
    const sl::ViewportHandle& viewport,
    const sl::ResourceTag* tags,
    uint32_t num_tags,
    sl::CommandBuffer* command_buffer) {
  return set_tags_for_frame(
      frame,
      viewport,
      FilterFrameGenerationTags(tags, num_tags),
      num_tags,
      command_buffer);
}

inline VkResult VKAPI_CALL HookedStreamlineCreateSwapchain(
    VkDevice device,
    const VkSwapchainCreateInfoKHR* create_info,
    const VkAllocationCallbacks* allocator,
    VkSwapchainKHR* swapchain) {
  VkSwapchainCreateInfoKHR hdr_create_info = {};
  const bool use_hdr = create_info != nullptr && UseHDRFrameGenerationPath();
  if (use_hdr) {
    hdr_create_info = *create_info;
    hdr_create_info.imageFormat = VK_FORMAT_A2B10G10R10_UNORM_PACK32;
    hdr_create_info.imageColorSpace = VK_COLOR_SPACE_HDR10_ST2084_EXT;
  }
  const VkResult result = streamline_create_swapchain(
      device,
      use_hdr ? &hdr_create_info : create_info,
      allocator,
      swapchain);
  if (result == VK_SUCCESS && use_hdr && swapchain != nullptr) {
    endfield::hdr_output::TrackSwapchain(device, *swapchain, hdr_create_info);
  }
  if (result == VK_SUCCESS && use_hdr
      && !hdr_swapchain_logged.exchange(true, std::memory_order_relaxed)) {
    Log(
        reshade::log::level::info,
        "Endfield enhancer: upgraded Streamline's app-facing swapchain request to RGB10A2 HDR10 before DLSS-G initialization.");
  }
  return result;
}

inline bool InstallStreamlineHook(reshade::api::device* device) {
  const std::lock_guard install_lock(streamline_install_mutex);
  if (streamline_hook_installed) return true;
  if (device == nullptr || device->get_api() != reshade::api::device_api::vulkan) return false;

  HMODULE interposer = GetModuleHandleW(L"sl.interposer.dll");
  if (interposer == nullptr) return false;

  auto* get_feature_function = reinterpret_cast<PFun_slGetFeatureFunction*>(
      GetProcAddress(interposer, "slGetFeatureFunction"));
  if (get_feature_function == nullptr) return false;

  void* set_options = nullptr;
  if (get_feature_function(
          sl::kFeatureDLSS_G,
          "slDLSSGSetOptions",
          set_options)
          != sl::Result::eOk
      || set_options == nullptr) {
    return false;
  }

  set_frame_generation_options =
      reinterpret_cast<PFun_slDLSSGSetOptions*>(set_options);
  set_tags = reinterpret_cast<PFun_slSetTag*>(
      GetProcAddress(interposer, "slSetTag"));
  set_tags_for_frame = reinterpret_cast<PFun_slSetTagForFrame*>(
      GetProcAddress(interposer, "slSetTagForFrame"));
  streamline_create_swapchain = reinterpret_cast<PFN_vkCreateSwapchainKHR>(
      GetProcAddress(interposer, "vkCreateSwapchainKHR"));
  if (set_tags == nullptr
      || set_tags_for_frame == nullptr
      || streamline_create_swapchain == nullptr) {
    set_frame_generation_options = nullptr;
    set_tags = nullptr;
    set_tags_for_frame = nullptr;
    streamline_create_swapchain = nullptr;
    return false;
  }

  if (DetourTransactionBegin() != NO_ERROR) return false;
  if (DetourUpdateThread(GetCurrentThread()) != NO_ERROR
      || DetourAttach(&set_frame_generation_options, HookedSetFrameGenerationOptions)
             != NO_ERROR
      || DetourAttach(&set_tags, HookedSetTags) != NO_ERROR
      || DetourAttach(&set_tags_for_frame, HookedSetTagsForFrame) != NO_ERROR
      || DetourAttach(
             &streamline_create_swapchain,
             HookedStreamlineCreateSwapchain)
             != NO_ERROR
      || !endfield::hdr_output::AttachHooks(interposer, reinterpret_cast<VkDevice>(device->get_native()))) {
    DetourTransactionAbort();
    set_frame_generation_options = nullptr;
    set_tags = nullptr;
    set_tags_for_frame = nullptr;
    streamline_create_swapchain = nullptr;
    return false;
  }
  if (DetourTransactionCommit() != NO_ERROR) {
    set_frame_generation_options = nullptr;
    set_tags = nullptr;
    set_tags_for_frame = nullptr;
    streamline_create_swapchain = nullptr;
    return false;
  }

  streamline_hook_installed = true;
  endfield::hdr_output::capture_graphics.store(UseHDRFrameGenerationPath(), std::memory_order_relaxed);
  endfield::hdr_output::RegisterDrawCallbacks();
  Log(
      reshade::log::level::info,
      "Endfield HDR v36: native HDR bridge and descriptor replay enabled; copy routing waits for the original base output contract.");
  return true;
}

inline void HookedRenderPath(
    int64_t pointer,
    void* render_path_params,
    void* before_culling_params,
    void* camera,
    void* render_context,
    void* command) {
  if (!shutting_down.load(std::memory_order_relaxed)
      && render_path_params != nullptr) {
    __try {
      auto* parameters = static_cast<uint8_t*>(render_path_params);
      frame_generation_paused.store(
          *reinterpret_cast<const uint8_t*>(
              parameters + render_params_frame_generation_pause_offset)
              != 0,
          std::memory_order_relaxed);
      void* gtao = *reinterpret_cast<void**>(
          parameters + render_params_gtao_offset);
      if (gtao != nullptr) {
        auto* settings = static_cast<uint8_t*>(gtao);
        auto* width = reinterpret_cast<int32_t*>(settings + gtao_width_offset);
        auto* height = reinterpret_cast<int32_t*>(settings + gtao_height_offset);
        const bool enabled = gtao_writes_enabled.load(std::memory_order_relaxed);

        if (enabled) {
          if (!gtao_dimensions.modified
              || gtao_dimensions.settings != gtao
              || *width != gtao_dimensions.written_width
              || *height != gtao_dimensions.written_height) {
            gtao_dimensions.settings = gtao;
            gtao_dimensions.source_width = *width;
            gtao_dimensions.source_height = *height;
          }

          if (gtao_dimensions.source_width > 0
              && gtao_dimensions.source_width <= 16384
              && gtao_dimensions.source_height > 0
              && gtao_dimensions.source_height <= 16384) {
            gtao_dimensions.written_width = gtao_dimensions.source_width * 2;
            gtao_dimensions.written_height = gtao_dimensions.source_height * 2;
            *width = gtao_dimensions.written_width;
            *height = gtao_dimensions.written_height;
            gtao_dimensions.modified = true;

            if (!gtao_write_logged.exchange(true, std::memory_order_relaxed)) {
              char message[192] = {};
              std::snprintf(
                  message,
                  sizeof(message),
                  "Endfield enhancer: GTAO 2x applied (%dx%d -> %dx%d).",
                  gtao_dimensions.source_width,
                  gtao_dimensions.source_height,
                  gtao_dimensions.written_width,
                  gtao_dimensions.written_height);
              Log(reshade::log::level::info, message);
            }
          }
        } else {
          if (gtao_dimensions.modified
              && gtao_dimensions.settings == gtao
              && *width == gtao_dimensions.written_width
              && *height == gtao_dimensions.written_height) {
            *width = gtao_dimensions.source_width;
            *height = gtao_dimensions.source_height;
          }
          gtao_dimensions = {};
        }
      }
    } __except (EXCEPTION_EXECUTE_HANDLER) {
      frame_generation_paused.store(true, std::memory_order_relaxed);
      gtao_writes_enabled.store(false, std::memory_order_relaxed);
      Log(
          reshade::log::level::error,
          "Endfield enhancer: render-path metadata access failed; dependent features disabled.");
    }
  }

  render_path(
      pointer,
      render_path_params,
      before_culling_params,
      camera,
      render_context,
      command);
}

inline bool InstallRenderPathHook() {
  if (render_path_hook_installed) return true;
  if (!ResolveApi()) return false;

  Il2CppImage graphics_image = FindImage("UnityEngine.HGGraphicsCPPModule");
  if (graphics_image == nullptr) return false;

  Il2CppClass render_params = FindGraphicsClass(
      graphics_image, "HGRenderPathParamsCPP");
  Il2CppClass gtao_settings = FindGraphicsClass(
      graphics_image, "HGGTAmbientOcclusionSettingParameters");
  Il2CppClass render_graph = FindGraphicsClass(
      graphics_image, "HGRenderGraphCPP");
  if (render_params == nullptr || gtao_settings == nullptr
      || render_graph == nullptr) {
    return false;
  }

  if (!ResolveCppFieldOffset(
          render_params,
          "gtaoSettingParameters",
          "gtao",
          &render_params_gtao_offset)
      || !ResolveCppFieldOffset(
          gtao_settings, "screenWidth", nullptr, &gtao_width_offset)
      || !ResolveCppFieldOffset(
          gtao_settings, "screenHeight", nullptr, &gtao_height_offset)
      || !ResolveCppFieldOffset(
          render_params,
          "disableFrameGenTemporarily",
          nullptr,
          &render_params_frame_generation_pause_offset)) {
    return false;
  }

  Il2CppMethod method = class_get_method_from_name(
      render_graph, "HGRenderPath_Render", 6);
  if (method == nullptr) return false;
  render_path = reinterpret_cast<RenderPath>(
      static_cast<MethodInfo*>(method)->method_pointer);
  if (render_path == nullptr) return false;

  if (DetourTransactionBegin() != NO_ERROR) return false;
  if (DetourUpdateThread(GetCurrentThread()) != NO_ERROR
      || DetourAttach(&render_path, HookedRenderPath) != NO_ERROR) {
    DetourTransactionAbort();
    render_path = nullptr;
    return false;
  }
  if (DetourTransactionCommit() != NO_ERROR) {
    render_path = nullptr;
    return false;
  }

  render_path_hook_installed = true;
  gtao_ready = true;
  char message[224] = {};
  std::snprintf(
      message,
      sizeof(message),
      "Endfield enhancer: render-path metadata hook ready (GTAO params=0x%zX, width=0x%zX, height=0x%zX, FG pause=0x%zX).",
      render_params_gtao_offset,
      gtao_width_offset,
      gtao_height_offset,
      render_params_frame_generation_pause_offset);
  Log(reshade::log::level::info, message);
  return true;
}

inline void UpdateFps(bool enabled) {
  constexpr int kUnlockedFps = 9999;
  if (!fps_ready || !AttachThread()) return;

  if (enabled && !fps_applied) {
    if (!ReadInt(get_target_frame_rate, &original_target_frame_rate)
        || !ReadInt(get_vsync_count, &original_vsync_count)) {
      return;
    }
    fps_applied = true;
    last_applied_fps = 0;
  }

  if (enabled) {
    if ((kUnlockedFps != last_applied_fps || present_count % 60 == 0)
        && WriteInt(set_vsync_count, 0)
        && WriteInt(set_target_frame_rate, kUnlockedFps)) {
      last_applied_fps = kUnlockedFps;
    }
  } else if (fps_applied) {
    WriteInt(set_target_frame_rate, original_target_frame_rate);
    WriteInt(set_vsync_count, original_vsync_count);
    fps_applied = false;
    last_applied_fps = 0;
  }
}

}  // namespace detail

inline bool TryInstallStreamlineHook(reshade::api::device* device) {
  if (detail::shutting_down.load(std::memory_order_relaxed)) return false;
  return detail::InstallStreamlineHook(device);
}

inline float GetActiveFpsLimit(bool foreground) {
  if (!foreground) return background_fps_limit;
  if (detail::frame_generation_presenting.load(std::memory_order_relaxed)
      && !detail::frame_generation_paused.load(std::memory_order_relaxed)) {
    return frame_generation_fps_limit;
  }
  return fps_limit;
}

inline void OnPresent(reshade::api::device* device) {
  using namespace detail;
  if (shutting_down.load(std::memory_order_relaxed)) return;

  ++present_count;

  const bool unlock_enabled = fps_unlock >= 0.5f;
  const bool frame_generation_detection_requested =
      fps_limit > 0.f || frame_generation_fps_limit > 0.f
      || hdr_frame_generation >= 0.5f;
  if (unlock_enabled && !fps_ready
      && (present_count == 1 || present_count % 120 == 0)) {
    ResolveFpsMethods();
  }

  UpdateFps(unlock_enabled);

  if (frame_generation_detection_requested
      && !streamline_hook_installed
      && (present_count == 1 || present_count % 120 == 0)) {
    TryInstallStreamlineHook(device);
  }

  const bool gtao_enabled = full_resolution_gtao >= 0.5f;
  const bool render_path_hook_requested =
      gtao_enabled || frame_generation_detection_requested;
  if (render_path_hook_requested && !render_path_hook_installed
      && (present_count == 1 || present_count % 120 == 0)) {
    InstallRenderPathHook();
  }
  gtao_writes_enabled.store(
      gtao_enabled && gtao_ready, std::memory_order_relaxed);
}

inline void Shutdown() {
  using namespace detail;
  shutting_down.store(true, std::memory_order_relaxed);
  gtao_writes_enabled.store(false, std::memory_order_relaxed);
  if (fps_applied && fps_ready && AttachThread()) {
    WriteInt(set_target_frame_rate, original_target_frame_rate);
    WriteInt(set_vsync_count, original_vsync_count);
    fps_applied = false;
  }

  if (!render_path_hook_installed && !streamline_hook_installed) {
    return;
  }
  if (DetourTransactionBegin() != NO_ERROR) return;
  if (DetourUpdateThread(GetCurrentThread()) != NO_ERROR) {
    DetourTransactionAbort();
    return;
  }
  if (streamline_hook_installed
      && DetourDetach(&set_frame_generation_options, HookedSetFrameGenerationOptions)
             != NO_ERROR) {
    DetourTransactionAbort();
    return;
  }
  if (streamline_hook_installed
      && DetourDetach(&set_tags, HookedSetTags) != NO_ERROR) {
    DetourTransactionAbort();
    return;
  }
  if (streamline_hook_installed
      && DetourDetach(&set_tags_for_frame, HookedSetTagsForFrame) != NO_ERROR) {
    DetourTransactionAbort();
    return;
  }
  if (streamline_hook_installed
      && DetourDetach(
             &streamline_create_swapchain,
             HookedStreamlineCreateSwapchain)
             != NO_ERROR) {
    DetourTransactionAbort();
    return;
  }
  if (render_path_hook_installed
      && DetourDetach(&render_path, HookedRenderPath) != NO_ERROR) {
    DetourTransactionAbort();
    return;
  }
  if (streamline_hook_installed && !endfield::hdr_output::DetachHooks()) {
    DetourTransactionAbort();
    return;
  }
  if (DetourTransactionCommit() == NO_ERROR) {
    render_path_hook_installed = false;
    gtao_ready = false;
    streamline_hook_installed = false;
    set_frame_generation_options = nullptr;
    set_tags = nullptr;
    set_tags_for_frame = nullptr;
    streamline_create_swapchain = nullptr;
  }
}

}  // namespace endfield::enhancer

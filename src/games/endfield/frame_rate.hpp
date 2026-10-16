#pragma once

#include <Windows.h>
#include <algorithm>
#include <atomic>
#include <chrono>
#include <cstring>
#include <mutex>
#include <shared_mutex>
#include <type_traits>
#include <vector>
#include <include/reshade.hpp>
#include <sl_core_api.h>
#include <sl_dlss_g.h>

#include "./native_hooks.hpp"
#include "../../utils/swapchain.hpp"

namespace endfield::frame_rate {

static float unlock = 0.f;
static float limit = 0.f;
static float fg_limit = 0.f;
static float background_limit = 0.f;
static std::shared_mutex mutex;
static bool applied = false;
static int original_fps = 0;
static int original_vsync = 0;
static void* methods[4] = {};
static void* (*runtime_invoke)(void*, void*, void**, void**) = nullptr;
static void* (*object_unbox)(void*) = nullptr;
static void* (*domain_get)() = nullptr;
static void* (*thread_current)() = nullptr;
static void* (*thread_attach)(void*) = nullptr;
static void (*thread_detach)(void*) = nullptr;
static void** (*get_assemblies)(void*, size_t*) = nullptr;
static void* (*get_image)(void*) = nullptr;
static const char* (*get_image_name)(void*) = nullptr;
static void* (*get_class)(void*, const char*, const char*) = nullptr;
static void* (*get_method)(void*, const char*, int) = nullptr;
static std::atomic_bool hdr_options = false;
static std::atomic_bool fg_enabled = false;
static std::atomic_bool fg_paused = true;
static std::atomic_uint32_t resume_delay = 120;
static PFun_slDLSSGSetOptions* set_options = nullptr;
static PFun_slDLSSGGetState* get_state = nullptr;
static std::vector<native_hooks::Function> hooks;
static bool detection_uses_hdr = false;
static auto next_resolve = std::chrono::steady_clock::time_point{};

struct ThreadScope {
  void* attached = nullptr;
  bool ready = false;
  ThreadScope() {
    if (thread_current == nullptr || thread_attach == nullptr || thread_detach == nullptr || domain_get == nullptr) return;
    ready = thread_current() != nullptr;
    if (!ready) {
      if (auto* domain = domain_get()) attached = thread_attach(domain);
      ready = attached != nullptr;
    }
  }
  ~ThreadScope() {
    if (attached != nullptr) thread_detach(attached);
  }
};

static bool ReadInt(void* method, int* value) {
  void* exception = nullptr;
  void* result = runtime_invoke(method, nullptr, nullptr, &exception);
  if (result == nullptr || exception != nullptr) return false;
  const void* data = object_unbox(result);
  if (data == nullptr) return false;
  std::memcpy(value, data, sizeof(*value));
  return true;
}

static bool WriteInt(void* method, int value) {
  void* arguments[] = {&value};
  void* exception = nullptr;
  runtime_invoke(method, nullptr, arguments, &exception);
  return exception == nullptr;
}

static void UpdateUnlock(bool enabled) {
  if (enabled == applied || methods[3] == nullptr) return;
  ThreadScope thread;
  if (!thread.ready) return;
  if (enabled) {
    if (!ReadInt(methods[0], &original_fps) || !ReadInt(methods[2], &original_vsync)) return;
    if (WriteInt(methods[3], 0) && WriteInt(methods[1], 9999)) {
      applied = true;
      reshade::log::message(reshade::log::level::info, "Endfield: FPS unlock applied once.");
    } else {
      const bool fps_restored = WriteInt(methods[1], original_fps);
      const bool vsync_restored = WriteInt(methods[3], original_vsync);
      if (!fps_restored || !vsync_restored) {
        applied = true;
        unlock = 0.f;
        reshade::log::message(reshade::log::level::error, "Endfield: FPS unlock failed; original settings restoration pending.");
      }
    }
  } else {
    const bool fps_restored = WriteInt(methods[1], original_fps);
    const bool vsync_restored = WriteInt(methods[3], original_vsync);
    if (fps_restored && vsync_restored) {
      applied = false;
      reshade::log::message(reshade::log::level::info, "Endfield: original FPS and VSync settings restored.");
    }
  }
}

static void ObserveOptions(sl::Result result, const sl::DLSSGOptions& options) {
  if (result != sl::Result::eOk) return;
  fg_enabled.store(options.mode != sl::DLSSGMode::eOff && options.numFramesToGenerate != 0u);
}

static sl::Result HookSetOptions(const sl::ViewportHandle& viewport, const sl::DLSSGOptions& options) {
  if (!hdr_options.load()) {
    const auto result = set_options(viewport, options);
    ObserveOptions(result, options);
    return result;
  }
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
    ObserveOptions(result, options);
    return result;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return sl::Result::eErrorExceptionHandler;
  }
}

static sl::Result HookGetState(const sl::ViewportHandle& viewport, sl::DLSSGState& state, const sl::DLSSGOptions* options) {
  const auto result = get_state(viewport, state, options);
  if (result == sl::Result::eOk && state.structVersion >= 1u) {
    fg_paused.store(state.status != sl::DLSSGStatus::eOk || state.numFramesActuallyPresented <= 1u);
  }
  return result;
}
static void StopDetection() {
  if (!hooks.empty()) {
    try {
      native_hooks::Apply(hooks, false);
      hooks.clear();
    } catch (const std::exception& error) {
      reshade::log::message(reshade::log::level::error, error.what());
    }
  }
  fg_enabled.store(false);
  fg_paused.store(true);
}

static void OnPresent(reshade::api::swapchain* swapchain, bool hdr_frame_generation) {
  const std::unique_lock lock(mutex);
  const bool detect_fg = fg_limit > 0.f && fg_limit != limit;
  if (!hooks.empty() && (!detect_fg || detection_uses_hdr != hdr_frame_generation)) StopDetection();
  const auto now = std::chrono::steady_clock::now();
  if (((unlock >= 0.5f && methods[3] == nullptr) || (detect_fg && hooks.empty())) && now >= next_resolve) {
    next_resolve = now + std::chrono::seconds(1);
    const auto module = GetModuleHandleW(L"GameAssembly.dll");
    const auto resolve = [module](auto* target, const char* name) {
      *target = reinterpret_cast<std::remove_reference_t<decltype(*target)>>(GetProcAddress(module, name));
      return *target != nullptr;
    };
    if (unlock >= 0.5f && methods[3] == nullptr && module != nullptr
        && resolve(&domain_get, "il2cpp_domain_get") && resolve(&thread_current, "il2cpp_thread_current")
        && resolve(&thread_attach, "il2cpp_thread_attach") && resolve(&thread_detach, "il2cpp_thread_detach")
        && resolve(&get_assemblies, "il2cpp_domain_get_assemblies") && resolve(&get_image, "il2cpp_assembly_get_image")
        && resolve(&get_image_name, "il2cpp_image_get_name") && resolve(&get_class, "il2cpp_class_from_name")
        && resolve(&get_method, "il2cpp_class_get_method_from_name")
        && resolve(&runtime_invoke, "il2cpp_runtime_invoke")
        && resolve(&object_unbox, "il2cpp_object_unbox")) {
      ThreadScope thread;
      if (thread.ready) {
        size_t count = 0;
        auto** assemblies = get_assemblies(domain_get(), &count);
        for (size_t i = 0; assemblies != nullptr && i < count; ++i) {
          auto* image = get_image(assemblies[i]);
          const auto* name = get_image_name(image);
          if (name == nullptr) continue;
          if (unlock >= 0.5f && methods[3] == nullptr && std::strstr(name, "UnityEngine.CoreModule") != nullptr) {
            auto* application = get_class(image, "UnityEngine", "Application");
            auto* quality = get_class(image, "UnityEngine", "QualitySettings");
            if (application != nullptr && quality != nullptr) {
              methods[0] = get_method(application, "get_targetFrameRate", 0);
              methods[1] = get_method(application, "set_targetFrameRate", 1);
              methods[2] = get_method(quality, "get_vSyncCount", 0);
              if (methods[0] != nullptr && methods[1] != nullptr && methods[2] != nullptr) methods[3] = get_method(quality, "set_vSyncCount", 1);
            }
          }

        }
      }
    }
    if (detect_fg && hooks.empty()) {
      const auto interposer = GetModuleHandleW(L"sl.interposer.dll");
      const auto get_function = (interposer == nullptr ? nullptr : reinterpret_cast<PFun_slGetFeatureFunction*>(GetProcAddress(interposer, "slGetFeatureFunction")));
      void* state_function = nullptr;
      void* options_function = nullptr;
      if (get_function != nullptr
          && get_function(sl::kFeatureDLSS_G, "slDLSSGGetState", state_function) == sl::Result::eOk && state_function != nullptr
          && (hdr_frame_generation || (get_function(sl::kFeatureDLSS_G, "slDLSSGSetOptions", options_function) == sl::Result::eOk && options_function != nullptr))) {
        std::vector<native_hooks::Function> pending{{reinterpret_cast<PFun_slDLSSGGetState*>(state_function), HookGetState, &get_state}};
        if (!hdr_frame_generation) {
          pending.emplace_back(reinterpret_cast<PFun_slDLSSGSetOptions*>(options_function), HookSetOptions, &set_options);
        }
        try {
          native_hooks::Apply(pending, true);
          hooks = std::move(pending);
          detection_uses_hdr = hdr_frame_generation;
          reshade::log::message(reshade::log::level::info, "Endfield: Streamline-only frame generation limiter detection installed.");
        } catch (const std::exception& error) {
          reshade::log::message(reshade::log::level::error, error.what());
        }
      }
    }
  }
  UpdateUnlock(unlock >= 0.5f);
  if (resume_delay.load() != 0u) {
    resume_delay.fetch_sub(1u);
    renodx::utils::swapchain::fps_limit = 0.f;
    return;
  }
  const auto window = static_cast<HWND>(swapchain->get_hwnd());
  float selected = limit;
  if (window != nullptr && GetForegroundWindow() != window) {
    selected = background_limit;
  } else if (fg_limit > 0.f && fg_enabled.load() && !fg_paused.load()) {
    selected = fg_limit;
  }
  renodx::utils::swapchain::fps_limit = (selected > 0.f ? std::clamp(selected, 15.f, 480.f) : 0.f);
}

static void OnSwapchainReset(reshade::api::swapchain* swapchain, bool) {
  if (swapchain->get_device()->get_api() != reshade::api::device_api::vulkan) return;
  resume_delay.store(120u);
  renodx::utils::swapchain::fps_limit = 0.f;
}

static void Shutdown() {
  const std::unique_lock lock(mutex);
  renodx::utils::swapchain::fps_limit = 0.f;
  UpdateUnlock(false);
  StopDetection();
}

}  // namespace endfield::frame_rate

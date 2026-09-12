#pragma once

#include <Windows.h>
#include <TlHelp32.h>

#include "./enhancer.hpp"

namespace endfield::uncensor {
inline float enabled = 0.f;
inline std::atomic_bool active = false;
inline std::atomic_bool force_body_visible = false;
inline bool installed = false;
inline bool unavailable = false;
inline std::array<uint8_t, 19> installed_entry{};
inline void* pitch_entry = nullptr;
using CameraMethod = void (*)(void*, enhancer::detail::MethodInfo*);
inline CameraMethod process_pitch = nullptr;
inline enhancer::detail::MethodInfo* clear_method = nullptr;

// Verified GameAssembly build: see tests/uncensor_evidence.md.
inline constexpr uint8_t kPitchEntry[] = {
    0x40, 0x53, 0x48, 0x81, 0xEC, 0x80, 0x00, 0x00, 0x00, 0x48,
    0x8B, 0xD9, 0x48, 0x8B, 0x0D, 0x3D, 0xCF, 0x40, 0x09};
inline constexpr uint8_t kClearEntry[] = {
    0x40, 0x53, 0x48, 0x83, 0xEC, 0x20, 0x48, 0x8B,
    0xD9, 0x33, 0xD2, 0xB9, 0xCA, 0x20, 0x00, 0x00};

inline bool ValidateTargets(const uint8_t* base, const void* pitch, const void* clear) {
  if (base == nullptr) return false;
  __try {
    const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(base);
    if (dos->e_magic != IMAGE_DOS_SIGNATURE || dos->e_lfanew < 0
        || dos->e_lfanew > 0x1000) return false;
    const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS64*>(base + dos->e_lfanew);
    if (nt->Signature != IMAGE_NT_SIGNATURE
        || nt->FileHeader.Machine != IMAGE_FILE_MACHINE_AMD64
        || nt->OptionalHeader.Magic != IMAGE_NT_OPTIONAL_HDR64_MAGIC
        || nt->FileHeader.TimeDateStamp != 0x6A870DA4
        // Same camera code/metadata in CN; protection packaging is 4 KB larger.
        || (nt->OptionalHeader.SizeOfImage != 0xF7CB000
            && nt->OptionalHeader.SizeOfImage != 0xF7CC000)
        || pitch != base + 0x3BE6640 || clear != base + 0x3569AF0) return false;
    bool pitch_executable = false;
    bool clear_executable = false;
    const auto* sections = IMAGE_FIRST_SECTION(nt);
    if (nt->FileHeader.NumberOfSections > 96) return false;
    for (unsigned i = 0; i < nt->FileHeader.NumberOfSections; ++i) {
      if (!(sections[i].Characteristics & IMAGE_SCN_MEM_EXECUTE)) continue;
      const uint64_t start = sections[i].VirtualAddress;
      const uint64_t end = start + sections[i].Misc.VirtualSize;
      if (end > nt->OptionalHeader.SizeOfImage) return false;
      pitch_executable |= start <= 0x3BE6640 && end >= 0x3BE6640 + sizeof(kPitchEntry);
      clear_executable |= start <= 0x3569AF0 && end >= 0x3569AF0 + sizeof(kClearEntry);
    }
    return pitch_executable && clear_executable
           && std::memcmp(pitch, kPitchEntry, sizeof(kPitchEntry)) == 0
           && std::memcmp(clear, kClearEntry, sizeof(kClearEntry)) == 0;
  } __except (EXCEPTION_EXECUTE_HANDLER) {
    return false;
  }
}

inline void HookedProcessPitch(void* camera, enhancer::detail::MethodInfo* method) {
  process_pitch(camera, method);
  // Clear on the game's camera thread, after its original update.
  if (camera != nullptr && (active.load(std::memory_order_relaxed) || force_body_visible.load(std::memory_order_relaxed))
      && !enhancer::detail::shutting_down.load(std::memory_order_relaxed)) {
    reinterpret_cast<CameraMethod>(clear_method->method_pointer)(camera, clear_method);
  }
}

// Detours must enlist the camera thread too: installation runs from Present.
inline bool UpdateHook(bool attach) {
  if (DetourTransactionBegin() != NO_ERROR) return false;
  std::vector<HANDLE> threads;
  bool ready = true;
  HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD, 0);
  THREADENTRY32 entry{sizeof(THREADENTRY32)};
  if (snapshot == INVALID_HANDLE_VALUE || !Thread32First(snapshot, &entry)) {
    ready = false;
  } else {
    do {
      if (entry.th32OwnerProcessID != GetCurrentProcessId()
          || entry.th32ThreadID == GetCurrentThreadId()) continue;
      HANDLE thread = OpenThread(THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT
                                     | THREAD_SET_CONTEXT | THREAD_QUERY_INFORMATION,
                                 FALSE, entry.th32ThreadID);
      if (thread == nullptr) {
        if (GetLastError() == ERROR_INVALID_PARAMETER) continue; // Thread exited.
        ready = false;
        break;
      }
      threads.push_back(thread);
    } while (Thread32Next(snapshot, &entry));
  }
  if (snapshot != INVALID_HANDLE_VALUE) CloseHandle(snapshot);
  // Collect handles before suspension so vector growth cannot wait on a suspended allocator.
  if (ready) {
    for (HANDLE thread : threads) {
      if (DetourUpdateThread(thread) != NO_ERROR) {
        ready = false;
        break;
      }
    }
  }
  if (!ready || (attach ? DetourAttach(&process_pitch, HookedProcessPitch)
                       : DetourDetach(&process_pitch, HookedProcessPitch)) != NO_ERROR) {
    DetourTransactionAbort();
    ready = false;
  } else {
    ready = DetourTransactionCommit() == NO_ERROR;
  }
  for (HANDLE thread : threads) CloseHandle(thread);
  return ready;
}

inline void OnPresent() {
  using namespace enhancer::detail;
  active.store(enabled >= 0.5f && !unavailable, std::memory_order_relaxed);
  if (shutting_down.load(std::memory_order_relaxed) || (enabled < 0.5f && !force_body_visible.load(std::memory_order_relaxed))
      || installed || unavailable || (present_count != 1 && present_count % 120 != 0)) return;
  if (!ResolveApi()) return;
  Il2CppImage image = FindImage("Gameplay.Beyond.dll");
  if (image == nullptr) return;
  Il2CppClass camera = class_from_name(image, "Beyond.Gameplay.View", "CameraMono");
  auto* pitch = camera == nullptr ? nullptr : static_cast<MethodInfo*>(
      class_get_method_from_name(camera, "_ProcessDitherByPitch", 0));
  auto* clear = camera == nullptr ? nullptr : static_cast<MethodInfo*>(
      class_get_method_from_name(camera, "ForceClearDither", 0));
  if (pitch == nullptr || clear == nullptr
      || !ValidateTargets(reinterpret_cast<const uint8_t*>(GetModuleHandleW(L"GameAssembly.dll")),
                          pitch->method_pointer, clear->method_pointer)) {
    unavailable = true;
    active.store(false, std::memory_order_relaxed);
    Log(reshade::log::level::warning, "Endfield enhancer: Uncensor unsupported camera methods or modified code; hook refused.");
    return;
  }
  process_pitch = reinterpret_cast<CameraMethod>(pitch->method_pointer);
  clear_method = clear;
  pitch_entry = pitch->method_pointer;
  if (UpdateHook(true)) {
    std::memcpy(installed_entry.data(), pitch_entry, installed_entry.size());
    installed = true;
    Log(reshade::log::level::info, "Endfield enhancer: Uncensor camera hook installed.");
    return;
  }
  unavailable = true;
  active.store(false, std::memory_order_relaxed);
  process_pitch = nullptr;
  clear_method = nullptr;
  Log(reshade::log::level::warning, "Endfield enhancer: Uncensor hook transaction failed; camera unchanged.");
}

inline void Shutdown() {
  active.store(false, std::memory_order_relaxed);
  if (!installed) return;
  if (std::memcmp(pitch_entry, installed_entry.data(), installed_entry.size()) != 0) {
    enhancer::detail::Log(reshade::log::level::error,
                         "Endfield enhancer: Uncensor entry changed; refusing to overwrite another patch.");
    return;
  }
  if (UpdateHook(false)) {
    installed = false;
    return;
  }
  enhancer::detail::Log(reshade::log::level::error, "Endfield enhancer: Uncensor camera hook detach failed.");
}
}  // namespace endfield::uncensor

#pragma once

#include <Windows.h>
#include <algorithm>
#include <exception>
#include <mutex>
#include <shared_mutex>
#include <vector>

#include "../../utils/minhook.hpp"

namespace endfield::native_hooks {

using Function = renodx::utils::minhook::Function;

struct Entry {
  Function function;
  void* trampoline;
  bool enabled = false;
};

static std::shared_mutex mutex;
static bool initialized = false;
static std::vector<Entry> entries;

static void Apply(const std::vector<Function>& functions, bool enable) {
  const std::unique_lock lock(mutex);
  if (!initialized) {
    if (!enable) return;
    HMODULE module = nullptr;
    if (!GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_PIN,
                            reinterpret_cast<LPCWSTR>(&entries), &module)) {
      throw std::system_error(GetLastError(), std::system_category());
    }
    renodx::utils::minhook::Initialize();
    initialized = true;
  }

  std::vector<size_t> selected;
  selected.reserve(functions.size());
  entries.reserve(entries.size() + functions.size());
  try {
    for (const auto& function : functions) {
      auto found = std::find_if(entries.begin(), entries.end(), [&](const Entry& entry) {
        return entry.function.target == function.target;
      });
      if (found == entries.end()) {
        if (!enable) continue;
        renodx::utils::minhook::Create(function);
        entries.push_back({.function = function, .trampoline = *function.original});
        found = entries.end() - 1;
      } else if (found->function.original != function.original || found->function.replacement != function.replacement) {
        throw std::runtime_error("Endfield: conflicting MinHook target ownership");
      }
      *function.original = found->trampoline;
      selected.push_back(static_cast<size_t>(found - entries.begin()));
      if (enable) {
        renodx::utils::minhook::QueueEnable(function);
      } else {
        renodx::utils::minhook::QueueDisable(function);
      }
    }
    renodx::utils::minhook::ApplyQueued();
  } catch (...) {
    const auto failure = std::current_exception();
    // MinHook batches can partially apply. Restore every selected hook's prior state.
    for (const auto index : selected) {
      if (entries[index].enabled) {
        renodx::utils::minhook::QueueEnable(entries[index].function);
      } else {
        renodx::utils::minhook::QueueDisable(entries[index].function);
      }
    }
    renodx::utils::minhook::ApplyQueued();
    std::rethrow_exception(failure);
  }
  for (const auto index : selected) entries[index].enabled = enable;
  // Keep disabled trampolines in the pinned module for callbacks already in flight.
}

}  // namespace endfield::native_hooks

/* SPDX-License-Identifier: MIT */

#include <Windows.h>
#include <algorithm>
#include <iostream>
#include <vector>
#include "src/utils/cross_addon.hpp"

namespace ca = renodx::utils::cross_addon::internal;
using Callback = void (*)();
std::vector<void*> callbacks;
bool initialized = false;
bool clone_enabled = false;
void InitializeResource() { initialized = true; clone_enabled = false; }
void InitializeOtherResource() { initialized = true; clone_enabled = false; }
void ConfigureClone() { if (initialized) clone_enabled = true; }
void Register(void* callback) { callbacks.push_back(callback); }
void Unregister(void* callback) { std::erase(callbacks, callback); }

int main() {
  // API-independent callback fixture: resource initialization must precede the
  // base addon's clone configuration. No graphics device or game is required.
  for (int iteration = 0; iteration < 100; ++iteration) {
    ca::EventRecord earlier_event{.event = reshade::addon_event::init_swapchain,
        .callback = reinterpret_cast<void*>(InitializeOtherResource),
        .register_reshade = Register, .unregister_reshade = Unregister, .active = true};
    ca::EventRecord base_event{.event = reshade::addon_event::init_swapchain,
        .callback = reinterpret_cast<void*>(InitializeResource),
        .register_reshade = Register, .unregister_reshade = Unregister, .active = true};
    ca::ModuleRecord earlier{.events = &earlier_event, .sequence = 1, .active = true};
    ca::ModuleRecord base{.events = &base_event, .next = &earlier, .sequence = 2};
    ca::ControlBlock<int> control{.modules = &base};
    ca::ElectHandler(control);
    if (control.event_handler != &earlier || callbacks.size() != 1) return 1;
    // End of the initial Vulkan probe: records survive module deactivation.
    earlier.active = false;
    ca::ElectHandler(control);
    if (control.event_handler != nullptr || !callbacks.empty()) return 2;
    // Actual renderer starts with the base addon registering first.
    base.active = true;
    ca::ElectHandler(control);
    Register(reinterpret_cast<void*>(ConfigureClone));
    // A returning module retains its old sequence, but must not move the
    // resource event behind the already-registered dependent callback.
    earlier.active = true;
    ca::ElectHandler(control);
    initialized = false;
    clone_enabled = false;
    for (auto* callback : callbacks) reinterpret_cast<Callback>(callback)();
    if (!clone_enabled || control.event_handler != &base || callbacks.size() != 2) {
      std::cerr << "FAIL: returning module moved initialization after clone configuration\n";
      return 3;
    }
    ca::ElectHandler(control);
    if (callbacks.size() != 2) return 4;
    Unregister(reinterpret_cast<void*>(ConfigureClone));
    // Owner departure still transfers events to the remaining active module.
    base.active = false;
    ca::ElectHandler(control);
    if (control.event_handler != &earlier || callbacks.size() != 1) return 5;
    earlier.active = false;
    ca::ElectHandler(control);
    if (control.event_handler != nullptr || !callbacks.empty()) return 6;
  }
  std::cout << "PASS: 100 probe/reload, callback-order, handover and teardown cycles\n";
}

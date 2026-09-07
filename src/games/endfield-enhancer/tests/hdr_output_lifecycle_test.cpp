#include <Windows.h>

#include "../hdr_output.hpp"

#include <cstdlib>
#include <iostream>
#include <set>

// Offline ReShade event registry: no game, Vulkan device, or driver is loaded.
static std::set<std::pair<reshade::addon_event, void*>> registered_events;
static std::vector<std::string> log_messages;
static int presented = 0;
static int legacy_calls = 0, sync2_calls = 0, resolver_mode = 0;
static int descriptor_calls = 0;
static std::vector<uint32_t> descriptor_offsets;
static __declspec(noinline) void VKAPI_CALL DescriptorStub(VkCommandBuffer, VkPipelineBindPoint,
    VkPipelineLayout, uint32_t, uint32_t, const VkDescriptorSet*, uint32_t count, const uint32_t* offsets) {
  ++descriptor_calls;
  descriptor_offsets.clear();
  if (count != 0) descriptor_offsets.assign(offsets, offsets + count);
}
static VkImageMemoryBarrier observed_legacy = {};
static VkImageMemoryBarrier2 observed_sync2 = {};
static VkPipelineStageFlags observed_src = 0, observed_dst = 0;
static VkDependencyFlags observed_flags = 0;
static const VkMemoryBarrier* observed_memory = nullptr;
static const VkBufferMemoryBarrier* observed_buffers = nullptr;

static __declspec(noinline) void VKAPI_CALL BarrierStub(VkCommandBuffer, VkPipelineStageFlags src,
    VkPipelineStageFlags dst, VkDependencyFlags flags, uint32_t, const VkMemoryBarrier* memory,
    uint32_t, const VkBufferMemoryBarrier* buffers, uint32_t count, const VkImageMemoryBarrier* barriers) {
  ++legacy_calls;
  observed_src = src;
  observed_dst = dst;
  observed_flags = flags;
  observed_memory = memory;
  observed_buffers = buffers;
  if (count != 0) observed_legacy = barriers[0];
}
static __declspec(noinline) void VKAPI_CALL Barrier2Stub(VkCommandBuffer, const VkDependencyInfo* info) {
  ++sync2_calls;
  observed_flags = info->dependencyFlags;
  if (info->imageMemoryBarrierCount != 0) observed_sync2 = info->pImageMemoryBarriers[0];
}
static void VKAPI_CALL DifferentBarrier2Stub(VkCommandBuffer, const VkDependencyInfo*) {}
static PFN_vkVoidFunction VKAPI_CALL ResolveStub(VkDevice, const char* name) {
  if (std::strcmp(name, "vkCmdPipelineBarrier") == 0)
    return resolver_mode == 4 ? nullptr : reinterpret_cast<PFN_vkVoidFunction>(BarrierStub);
  if (std::strcmp(name, "vkCmdPipelineBarrier2") == 0)
    return resolver_mode == 1 || resolver_mode == 3 ? nullptr : reinterpret_cast<PFN_vkVoidFunction>(Barrier2Stub);
  if (std::strcmp(name, "vkCmdPipelineBarrier2KHR") == 0) {
    if (resolver_mode == 2 || resolver_mode == 3) return nullptr;
    return reinterpret_cast<PFN_vkVoidFunction>(resolver_mode == 5 ? DifferentBarrier2Stub : Barrier2Stub);
  }
  return nullptr;
}

extern "C" __declspec(dllexport) void ReShadeRegisterEvent(reshade::addon_event event, void* callback) {
  registered_events.emplace(event, callback);
}
extern "C" __declspec(dllexport) void ReShadeUnregisterEvent(reshade::addon_event event, void* callback) {
  registered_events.erase({event, callback});
}
extern "C" __declspec(dllexport) void ReShadeLogMessage(void*, int, const char* message) {
  log_messages.emplace_back(message);
}

static VkResult VKAPI_CALL PresentStub(VkQueue, const VkPresentInfoKHR*) {
  ++presented;
  return VK_SUCCESS;
}

static void Require(bool condition) {
  if (!condition) {
    std::cerr << "HDR utility lifecycle regression\n";
    std::exit(1);
  }
}

int main() {
  reshade::internal::get_reshade_module_handle(GetModuleHandleW(nullptr));
  reshade::internal::get_current_module_handle(GetModuleHandleW(nullptr));
  Require(renodx::utils::shader::shared.data == nullptr);

  // Callback registration alone (v29's initialization sequence) leaves the
  // shader handle null. Do not dereference it in this negative-control case.
  endfield::hdr_output::RegisterDrawCallbacks();
  Require(renodx::utils::shader::shared.data == nullptr);
  renodx::utils::command_action::Unregister(endfield::hdr_output::on_output_draw);
  renodx::utils::command_action::Use(DLL_PROCESS_DETACH);
  Require(registered_events.empty());

  for (int cycle = 0; cycle < 3; ++cycle) {
    endfield::hdr_output::UseEvents(DLL_PROCESS_ATTACH);
    Require(endfield::hdr_output::events_registered);
    Require(renodx::utils::shader::shared.data != nullptr);
    Require(renodx::utils::shader::shared.IsEventHandler());
    Require(renodx::utils::pipeline_layout::shared.IsEventHandler());
    Require(renodx::utils::state::shared.IsEventHandler());
    Require(renodx::utils::command_action::internal::shared.IsEventHandler());
    // This exact nonzero-handle lookup crashed v29 on the null map pointer.
    Require(!renodx::utils::shader::GetPipelineShaderDetails({0x1234}, [](const auto&) {}));
    endfield::hdr_output::RegisterDrawCallbacks();
    Require(renodx::utils::command_action::internal::shared.data->registrations.size()
            == 1u);
    Require(renodx::utils::command_action::internal::shared.data->registrations.contains(0u));
    Require(!registered_events.empty());
    Require(registered_events.contains({reshade::addon_event::draw,
                                        reinterpret_cast<void*>(renodx::utils::command_action::internal::OnDraw)}));
    // Repeated setup must not leave an extra registration alive after detach.
    endfield::hdr_output::UseEvents(DLL_PROCESS_ATTACH);
    endfield::hdr_output::RegisterDrawCallbacks();
    endfield::hdr_output::capture_graphics.store(true);
    endfield::hdr_output::UseEvents(DLL_PROCESS_DETACH);
    Require(!endfield::hdr_output::events_registered);
    Require(!endfield::hdr_output::capture_graphics.load());
    Require(!renodx::utils::shader::shared.IsEventHandler());
    Require(!renodx::utils::pipeline_layout::shared.IsEventHandler());
    Require(!renodx::utils::state::shared.IsEventHandler());
    Require(!renodx::utils::command_action::internal::shared.IsEventHandler());
    Require(renodx::utils::command_action::internal::shared.data->registrations.empty());
    Require(registered_events.empty());
  }
  std::cout << "Null-state negative control and 3 actual HDR utility attach/lookup/register/detach cycles passed\n";

  using namespace endfield::hdr_output;
  {
    // Sentinel device must never be dereferenced: incomplete contract means
    // no base-device access, no default shader write and no proxy mutation.
    auto* startup_device = reinterpret_cast<reshade::api::device*>(0x123);
    const std::array<uint8_t, 1> shader{1};
    const std::array<float, 8> parameters{};
    for (unsigned missing = 0; missing < 4; ++missing) {
      auto& output = outputs[startup_device];
      output = {};
      if (missing != 0 && missing != 1) output.parameters = parameters.data();
      if (missing != 0 && missing != 2) output.vertex_shader = shader;
      if (missing != 0 && missing != 3) output.pixel_shader = shader;
      for (bool requested : {false, true}) {
        SetPhysicalCopyOnly(startup_device, requested, 0x200);
        SetPhysicalCopyOnly(startup_device, requested); // Global teardown path.
        Require(!output.copy_only && output.physical_pipelines.empty());
      }
    }
    outputs.erase(startup_device);
    OutputState output;
    renodx::utils::draw::SwapchainProxyPass proxy;
    proxy.pixel_shader = shader;
    proxy.pass.pipeline = {0xA};
    proxy.pass.generated_pipeline = true;
    SelectPhysicalShader(&output, 0x200, &proxy, {});
    Require(proxy.pixel_shader.data() == shader.data() && proxy.pass.pipeline.handle == 0xA);
    Require(proxy.pass.generated_pipeline && output.physical_pipelines.empty());
    proxy.pass.pipeline = {};
    proxy.pass.generated_pipeline = false;
    std::cout << "Startup guard: empty/partial contracts never access base device; empty shader never erases live proxy\n";
  }
  struct Case {
    bool acquired, drawn, encoded, failed, command_known;
    const char* reason;
  };
  const Case cases[] = {
      {false, false, false, false, false, "encode.not_acquired"},
      {true, false, false, false, false, "encode.no_output_draw"},
      {true, true, true, false, false, "encode.already_encoded"},
      {true, true, false, true, false, "encode.image_already_failed"},
      {true, true, false, false, false, "encode.command_untracked"},
      {true, true, false, false, true, "encode.render_pass_still_open"},
  };
  for (const auto& test : cases) {
    ImageState image;
    image.original = {0xABCu};
    image.acquired = test.acquired;
    image.drawn = test.drawn;
    image.encoded = test.encoded;
    image.failed = test.failed;
    commands.clear();
    if (test.command_known) commands[0x1234] = {nullptr, true};
    error_logged.store(false);
    log_messages.clear();
    Require(!Encode(&image, reinterpret_cast<VkCommandBuffer>(0x1234)));
    Require(log_messages.size() == 1u);
    Require(log_messages[0].find(test.reason) != std::string::npos);
    Require(log_messages[0].find("image=0xabc") != std::string::npos);
    Require(log_messages[0].find("command=0x1234") != std::string::npos);
    ReportFailure("later_failure_must_not_replace_first", &image);
    Require(log_messages.size() == 1u);
    Require(image.acquired == test.acquired && image.drawn == test.drawn
            && image.encoded == test.encoded && image.failed == test.failed);
  }
  commands.clear();
  queue_present = PresentStub;
  const VkSwapchainKHR chain = reinterpret_cast<VkSwapchainKHR>(0x4321);
  const uint32_t index = 0;
  VkResult result = VK_SUCCESS;
  VkPresentInfoKHR present = {VK_STRUCTURE_TYPE_PRESENT_INFO_KHR};
  present.swapchainCount = 1;
  present.pSwapchains = &chain;
  present.pImageIndices = &index;
  present.pResults = &result;
  swapchains[0x4321].images = {0xABC};
  images[0xABC] = std::make_unique<ImageState>();
  images[0xABC]->clone = {0xDEF};
  error_logged.store(false);
  log_messages.clear();
  Require(HookPresent(nullptr, &present) == VK_ERROR_OUT_OF_DATE_KHR);
  Require(result == VK_ERROR_OUT_OF_DATE_KHR && presented == 0);
  Require(log_messages[0].find("present.clone_not_encoded") != std::string::npos);
  images[0xABC]->encoded = true;
  Require(HookPresent(nullptr, &present) == VK_SUCCESS && presented == 1);
  images[0xABC]->failed = true;
  error_logged.store(false);
  log_messages.clear();
  Require(HookPresent(nullptr, &present) == VK_ERROR_OUT_OF_DATE_KHR && presented == 1);
  Require(log_messages[0].find("present.image_already_failed") != std::string::npos);
  images.clear();
  swapchains.clear();
  std::cout << "6 encode reason/first-error/state-preservation cases and 3 present-guard cases passed\n";

  VkImageMemoryBarrier barrier = {VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER};
  barrier.image = reinterpret_cast<VkImage>(0xABC);
  barrier.oldLayout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL;
  barrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
  barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
  barrier.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 1, 0, 1};
  const auto command = reinterpret_cast<VkCommandBuffer>(0x1234);
  VkImageMemoryBarrier2 sync2 = {VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2};
  sync2.image = reinterpret_cast<VkImage>(0xABC);
  sync2.subresourceRange = {VK_IMAGE_ASPECT_COLOR_BIT, 2, 3, 4, 5};
  sync2.srcQueueFamilyIndex = 6;
  sync2.dstQueueFamilyIndex = 7;

  PFN_vkCmdPipelineBarrier resolved_legacy = nullptr;
  PFN_vkCmdPipelineBarrier2 resolved_sync2 = nullptr;
  const auto device = reinterpret_cast<VkDevice>(0x4567);
  for (resolver_mode = 0; resolver_mode < 6; ++resolver_mode) {
    Require(ResolveBarrierDispatch(ResolveStub, device, &resolved_legacy, &resolved_sync2) == (resolver_mode < 4));
    if (resolver_mode < 4) {
      Require(resolved_legacy == BarrierStub);
      Require(resolved_sync2 == (resolver_mode == 3 ? nullptr : Barrier2Stub));
    } else {
      Require(resolved_legacy == nullptr && resolved_sync2 == nullptr);
    }
  }
  Require(!ResolveBarrierDispatch(nullptr, device, &resolved_legacy, &resolved_sync2));
  Require(!ResolveBarrierDispatch(ResolveStub, VK_NULL_HANDLE, &resolved_legacy, &resolved_sync2));
  std::array<uint8_t, 4096> host_bytes = {};
  Require(IsBarrierHostCode(GetModuleHandleW(nullptr), reinterpret_cast<const void*>(BarrierStub)));
  Require(!IsBarrierHostCode(GetModuleHandleW(nullptr), host_bytes.data()));

  // Real Detours transactions against local stubs, called via cached pointers.
  // No Vulkan device, GPU, game or ReShade DLL is loaded by this test.
  PFN_vkCmdPipelineBarrier volatile cached_legacy = BarrierStub;
  PFN_vkCmdPipelineBarrier2 volatile cached_sync2 = Barrier2Stub;
  pipeline_barrier = BarrierStub;
  pipeline_barrier2 = Barrier2Stub;
  barrier.image = reinterpret_cast<VkImage>(0x999);
  const VkMemoryBarrier memory = {VK_STRUCTURE_TYPE_MEMORY_BARRIER};
  const VkBufferMemoryBarrier buffer = {VK_STRUCTURE_TYPE_BUFFER_MEMORY_BARRIER};
  VkDependencyInfo dependency = {VK_STRUCTURE_TYPE_DEPENDENCY_INFO};
  dependency.dependencyFlags = VK_DEPENDENCY_BY_REGION_BIT;
  dependency.imageMemoryBarrierCount = 1;
  dependency.pImageMemoryBarriers = &sync2;
  for (int transaction = 0; transaction < 5; ++transaction) {
    Require(DetourTransactionBegin() == NO_ERROR);
    Require(DetourUpdateThread(GetCurrentThread()) == NO_ERROR);
    Require(DetourAttach(&pipeline_barrier, HookBarrier) == NO_ERROR);
    if (transaction != 0) Require(DetourAttach(&pipeline_barrier2, HookBarrier2) == NO_ERROR);
    if (transaction < 2) Require(DetourTransactionAbort() == NO_ERROR);
    else Require(DetourTransactionCommit() == NO_ERROR);
    error_logged.store(false);
    capture_graphics.store(true);
    legacy_calls = sync2_calls = 0;
    cached_legacy(command, VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT, VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT,
                  VK_DEPENDENCY_BY_REGION_BIT, 1, &memory, 1, &buffer, 1, &barrier);
    cached_sync2(command, &dependency);
    Require(legacy_calls == 1 && sync2_calls == 1);
    Require(std::memcmp(&barrier, &observed_legacy, sizeof(barrier)) == 0);
    Require(std::memcmp(&sync2, &observed_sync2, sizeof(sync2)) == 0);
    Require(observed_src == VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT);
    Require(observed_dst == VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT);
    Require(observed_flags == VK_DEPENDENCY_BY_REGION_BIT);
    Require(observed_memory == &memory && observed_buffers == &buffer);
    capture_graphics.store(false);
    cached_legacy(command, 0, 0, 0, 0, nullptr, 0, nullptr, 0, nullptr);
    Require(legacy_calls == 2);
    if (transaction >= 2) {
      Require(DetourTransactionBegin() == NO_ERROR);
      Require(DetourUpdateThread(GetCurrentThread()) == NO_ERROR);
      Require(DetourDetach(&pipeline_barrier, HookBarrier) == NO_ERROR);
      Require(DetourDetach(&pipeline_barrier2, HookBarrier2) == NO_ERROR);
      Require(DetourTransactionCommit() == NO_ERROR);
    }
    Require(pipeline_barrier == BarrierStub && pipeline_barrier2 == Barrier2Stub);
  }
  std::cout << "Dispatch resolution/gates, 2 transaction aborts, 3 real detour cycles and exact native forwarding passed\n";

  renodx::utils::resource::Use(DLL_PROCESS_ATTACH);
  {
    OutputState route_output;
    renodx::utils::draw::SwapchainProxyPass proxy;
    const std::array<uint8_t, 1> working_shader{1}, pq_shader{2};
    proxy.pixel_shader = working_shader;
    proxy.pass.pipeline = {0xA};
    SelectPhysicalShader(&route_output, 0x200, &proxy, pq_shader);
    Require(proxy.pass.pipeline.handle == 0 && route_output.physical_pipelines.size() == 1);
    proxy.pass.pipeline = {0xB}; // Simulate the one-time PQ pipeline creation.
    for (int cycle = 0; cycle < 1000; ++cycle) {
      SelectPhysicalShader(&route_output, 0x200, &proxy, working_shader);
      Require(proxy.pass.pipeline.handle == 0xA && proxy.pass.generated_pipeline);
      Require(route_output.physical_pipelines.size() == 1);
      SelectPhysicalShader(&route_output, 0x200, &proxy, pq_shader);
      Require(proxy.pass.pipeline.handle == 0xB && route_output.physical_pipelines.size() == 1);
    }
    SelectPhysicalShader(&route_output, 0x200, &proxy, pq_shader);
    Require(route_output.physical_pipelines.size() == 1 && route_output.retired_pipelines.empty());
    proxy.pass.pipeline = {};
    proxy.pass.generated_pipeline = false;
    std::cout << "1000 native/PQ output shader switches reuse exactly two pipeline identities\n";
  }
  // Reproduce the native copy's domain: inactive source clone still wins when
  // the physical destination clone is active. Generated-source copies reset it.
  capture_graphics.store(true);
  auto* route_device = reinterpret_cast<reshade::api::device*>(0x123);
  outputs[route_device].want_copy_only = true;
  images[0x100] = std::make_unique<ImageState>();
  images[0x100]->device = route_device;
  images[0x100]->clone = {0x101};
  images[0x100]->encoded = true;
  for (uint64_t handle : {0x100ull, 0x200ull, 0x300ull}) {
    renodx::utils::resource::UpsertResourceInfo({handle}, [&](auto* info, bool) {
      info->device = route_device;
      info->desc.type = reshade::api::resource_type::texture_2d;
      info->desc.texture.width = 2560;
      info->desc.texture.height = 1440;
      info->clone = {handle + 1};
      info->clone_desc.texture.format = reshade::api::format::r16g16b16a16_float;
      info->is_swap_chain = handle == 0x200;
      info->clone_enabled = handle == 0x200;
    });
  }
  Require(!OnPresentationCopy(nullptr, {0x100}, {0x200}));
  Require(outputs[route_device].working_copies.at(0x200) == 0x100);
  Require(!OnPresentationCopy(nullptr, {0x300}, {0x200}));
  Require(outputs[route_device].working_copies.empty());
  const reshade::api::subresource_box full_box{0,0,0,2560,1440,1};
  Require(!OnPresentationCopyRegion(nullptr, {0x100}, 0, &full_box, {0x200}, 0, &full_box,
                                    reshade::api::filter_mode::min_mag_mip_point));
  Require(outputs[route_device].working_copies.at(0x200) == 0x100);
  const reshade::api::subresource_box partial_box{0,0,0,1280,1440,1};
  Require(!OnPresentationCopyRegion(nullptr, {0x300}, 0, &partial_box, {0x200}, 0, &partial_box,
                                    reshade::api::filter_mode::min_mag_mip_point));
  Require(outputs[route_device].working_copies.at(0x200) == 0x100);
  OnDestroyResource(route_device, {0x200});
  Require(outputs[route_device].working_copies.empty());
  renodx::utils::resource::UpdateResourceInfo({0x200}, [](auto* info) { info->clone_enabled = false; });
  Require(!OnPresentationCopy(nullptr, {0x100}, {0x200}));
  Require(outputs[route_device].working_copies.empty());
  images.erase(0x100);
  outputs.erase(route_device);
  std::cout << "Working-HDR versus generated copy routing, explicit Vulkan boxes, partial-copy exclusion and cleanup passed\n";
  images[0xABC] = std::make_unique<ImageState>();
  auto* tracked = images[0xABC].get();
  tracked->original = {0xABC};
  tracked->clone = {0xDEF};
  tracked->active = true;
  capture_graphics.store(true);
  error_logged.store(false);
  barrier.image = reinterpret_cast<VkImage>(0xABC);
  barrier.oldLayout = VK_IMAGE_LAYOUT_UNDEFINED;
  barrier.newLayout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL;
  int order = 0;
  ProcessBarriers(command, 1, &barrier, [&] {
    Require(order++ == 0 && forwarding && !tracked->active);
  }, [&](const VkImageMemoryBarrier& mirror) {
    Require(order++ == 1 && forwarding && !tracked->active);
    auto expected = barrier;
    expected.image = reinterpret_cast<VkImage>(0xDEF);
    Require(std::memcmp(&expected, &mirror, sizeof(mirror)) == 0);
  });
  Require(order == 2 && tracked->active && !forwarding);
  barrier.oldLayout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL;
  barrier.newLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;
  order = 0;
  log_messages.clear();
  ProcessBarriers(command, 1, &barrier, [&] {
    // Missing acquisition refuses Encode BEFORE the native present transition.
    Require(order++ == 0 && tracked->failed && !tracked->encoded);
    Require(log_messages[0].find("encode.not_acquired") != std::string::npos);
  }, [&](const VkImageMemoryBarrier& mirror) {
    Require(order++ == 1);
    auto expected = barrier;
    expected.image = reinterpret_cast<VkImage>(0xDEF);
    expected.newLayout = VK_IMAGE_LAYOUT_GENERAL;
    Require(std::memcmp(&expected, &mirror, sizeof(mirror)) == 0);
  });
  Require(order == 2 && !tracked->active && !forwarding);
  images.clear();
  capture_graphics.store(false);
  renodx::utils::resource::Use(DLL_PROCESS_DETACH);
  std::cout << "Active clone suppression/mirroring and pre-transition encode refusal passed\n";

  PFN_vkCmdBindDescriptorSets volatile cached_bind = DescriptorStub;
  bind_descriptor_sets = DescriptorStub;
  const VkDescriptorSet descriptor_set = reinterpret_cast<VkDescriptorSet>(0x888);
  const uint32_t dynamic_offsets[] = {256, 4096};
  commands[0x1234] = {};
  Require(DetourTransactionBegin() == NO_ERROR);
  Require(DetourUpdateThread(GetCurrentThread()) == NO_ERROR);
  Require(DetourAttach(&bind_descriptor_sets, HookBindDescriptorSets) == NO_ERROR);
  Require(DetourTransactionAbort() == NO_ERROR);
  Require(bind_descriptor_sets == DescriptorStub);
  Require(DetourTransactionBegin() == NO_ERROR);
  Require(DetourUpdateThread(GetCurrentThread()) == NO_ERROR);
  Require(DetourAttach(&bind_descriptor_sets, HookBindDescriptorSets) == NO_ERROR);
  Require(DetourTransactionCommit() == NO_ERROR);
  capture_graphics.store(true);
  cached_bind(command, VK_PIPELINE_BIND_POINT_GRAPHICS, reinterpret_cast<VkPipelineLayout>(0x999),
              0, 1, &descriptor_set, 2, dynamic_offsets);
  Require(descriptor_calls == 1 && descriptor_offsets == std::vector<uint32_t>({256,4096}));
  Require(commands[0x1234].graphics_bindings.Matches(0x999, std::array<uint64_t,1>{0x888}));
  commands[0x1234].graphics_bindings.Restore(command, bind_descriptor_sets);
  Require(descriptor_calls == 2 && descriptor_offsets == std::vector<uint32_t>({256,4096}));
  Require(commands[0x1234].graphics_bindings.batches.size() == 1);
  commands[0x1234] = {}; // Same reset performed by OnInitCommandList.
  cached_bind(command, VK_PIPELINE_BIND_POINT_COMPUTE, reinterpret_cast<VkPipelineLayout>(0x999),
              0, 1, &descriptor_set, 2, dynamic_offsets);
  Require(commands[0x1234].graphics_bindings.batches.empty());
  capture_graphics.store(false);
  cached_bind(command, VK_PIPELINE_BIND_POINT_GRAPHICS, reinterpret_cast<VkPipelineLayout>(0x999),
              0, 1, &descriptor_set, 2, dynamic_offsets);
  Require(commands[0x1234].graphics_bindings.batches.empty() && descriptor_calls == 4);
  Require(DetourTransactionBegin() == NO_ERROR);
  Require(DetourUpdateThread(GetCurrentThread()) == NO_ERROR);
  Require(DetourDetach(&bind_descriptor_sets, HookBindDescriptorSets) == NO_ERROR);
  Require(DetourTransactionCommit() == NO_ERROR);
  Require(bind_descriptor_sets == DescriptorStub);
  commands.clear();
  std::cout << "Real descriptor detour: abort/attach/forward/native replay/reset/compute exclusion/disabled/detach passed\n";
}

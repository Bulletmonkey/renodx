#include <Windows.h>
#include <cassert>
#include <crtdbg.h>
#include <limits>
#include <fstream>
#include <filesystem>
#include <vector>
#include "bokeh_api_stubs.hpp"
#include "../../../utils/command_action.hpp"

struct TestDevice : bokeh_test::DeviceStub {
  unsigned creates = 0, destroys = 0;
  bool fail = false;
  reshade::api::device_api api = reshade::api::device_api::vulkan;
  reshade::api::device_api get_api() const override { return api; }
  bool create_pipeline(reshade::api::pipeline_layout layout, uint32_t count,
                       const reshade::api::pipeline_subobject* objects,
                       reshade::api::pipeline* output) override {
    assert((layout.handle == 42 || (api == reshade::api::device_api::d3d11 && layout.handle == 0)) && count == 1);
    assert(objects[0].type == reshade::api::pipeline_subobject_type::compute_shader);
    auto* shader = static_cast<const reshade::api::shader_desc*>(objects[0].data);
    assert(shader->code_size > 20 && std::strcmp(shader->entry_point, "main") == 0);
    assert(*static_cast<const uint32_t*>(shader->code)
           == (api == reshade::api::device_api::d3d11 ? 0x43425844u : 0x07230203u));
    ++creates;
    if (fail) return false;
    output->handle = 100 + creates;
    return true;
  }
  void destroy_pipeline(reshade::api::pipeline pipeline) override {
    assert(pipeline.handle >= 101);
    ++destroys;
  }
};
struct TestCommand {
  TestDevice* device;
  std::vector<uint64_t> binds;
  reshade::api::device* get_device() const { return device; }
  void bind_pipeline(reshade::api::pipeline_stage stage, reshade::api::pipeline pipeline) {
    assert(stage == reshade::api::pipeline_stage::all_compute);
    binds.push_back(pipeline.handle);
  }
};
struct TestContext {
  using ArgumentType = renodx::utils::command_action::DispatchArguments;
  TestCommand* cmd_list;
  renodx::utils::shader::CommandListData* state;
};
namespace renodx::utils::command_action {
inline renodx::utils::shader::CommandListData* GetShaderState(TestContext* context) { return context->state; }
}
#include "../ssr_resolve.hpp"
extern "C" __declspec(dllexport) void ReShadeRegisterEvent(reshade::addon_event, void*) {}
extern "C" __declspec(dllexport) void ReShadeUnregisterEvent(reshade::addon_event, void*) {}
extern "C" __declspec(dllexport) void ReShadeLogMessage(void*, int, const char*) {}

int main() {
  _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_MODE_FILE);
  _CrtSetReportFile(_CRT_ASSERT, _CRTDBG_FILE_STDERR);
  reshade::internal::get_reshade_module_handle(GetModuleHandleW(nullptr));
  reshade::internal::get_current_module_handle(GetModuleHandleW(nullptr));
  using namespace endfield::ssr_resolve;
  std::ifstream input("tmp/endfield-water-ssr/original/0x562EDD85.comp.spv", std::ios::binary);
  assert(input && "Dump the original 562EDD85 shader before running this capture-based test.");
  const std::vector<uint8_t> original(std::istreambuf_iterator<char>{input}, {});
  const auto patched = PatchFullResolutionResolve(original);
  assert(!patched.empty());
  assert(PatchFullResolutionResolve({}).empty());
  auto corrupted = original;
  corrupted[0] ^= 1;
  assert(PatchFullResolutionResolve(corrupted).empty());
  assert(PatchFullResolutionResolve(std::span(original).first(original.size() - 1)).empty());
  std::filesystem::create_directories("tmp/endfield-water-ssr/aligned");
  std::ofstream output("tmp/endfield-water-ssr/aligned/0x562EDD85.comp.spv", std::ios::binary);
  output.write(reinterpret_cast<const char*>(patched.data()), patched.size() * sizeof(uint32_t));
  output.close();
  std::ifstream blur_input("tmp/endfield-water-ssr/original/0xC465A053.comp.spv", std::ios::binary);
  assert(blur_input);
  const std::vector<uint8_t> blur_original(std::istreambuf_iterator<char>{blur_input}, {});
  const auto blur_patched = PatchImprovedBlur(blur_original);
  assert(!blur_patched.empty());
  assert(PatchImprovedBlur({}).empty());
  auto blur_corrupted = blur_original;
  blur_corrupted[0] ^= 1;
  assert(PatchImprovedBlur(blur_corrupted).empty());
  assert(PatchImprovedBlur(original).empty());
  assert(PatchFullResolutionResolve(blur_original).empty());
  std::filesystem::create_directories("tmp/endfield-water-ssr/override");
  std::ofstream blur_output("tmp/endfield-water-ssr/override/0xC465A053.comp.spv", std::ios::binary);
  blur_output.write(reinterpret_cast<const char*>(blur_patched.data()), blur_patched.size() * sizeof(uint32_t));
  blur_output.close();
  std::ifstream blend_input("tmp/endfield-ssr-baseline-test/resolution-pair/resolve-original.spv", std::ios::binary);
  assert(blend_input);
  const std::vector<uint8_t> blend_original(std::istreambuf_iterator<char>{blend_input}, {});
  const auto blend_patched = PatchImprovedBlend(blend_original);
  assert(!blend_patched.empty());
  assert(PatchImprovedBlend({}).empty());
  assert(PatchImprovedBlend(blur_original).empty());
  auto blend_corrupted = blend_original;
  blend_corrupted[0] ^= 1;
  assert(PatchImprovedBlend(blend_corrupted).empty());
  std::ofstream blend_output("tmp/endfield-water-ssr/override/0x4187AEA7.comp.spv", std::ios::binary);
  blend_output.write(reinterpret_cast<const char*>(blend_patched.data()), blend_patched.size() * sizeof(uint32_t));
  blend_output.close();
  namespace shader = renodx::utils::shader;
  namespace action = renodx::utils::command_action;
  Use(DLL_PROCESS_ATTACH);
  assert(shader::use_shader_cache && shader::shared.data->use_shader_cache);
  constexpr auto base = []<typename Context>(Context&) -> action::CallbackResult<Context> { return {}; };
  action::Register(base, {.shader_hash = 0x562EDD85});
  OnPresent(false);
  OnPresent(false);
  assert(action::internal::shared.data->registrations.at(0x562EDD85).size() == 2);
  assert(action::internal::shared.data->registrations.at(0x562EDD85).back().callback
         == &action::internal::CALLBACK_IDENTITY<std::remove_cvref_t<decltype(on_dispatch)>>);
  TestDevice device;
  TestCommand command{&device};
  shader::CommandListData state{};
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {7};
  shader::PipelineShaderDetails details;
  details.pipeline = {7};
  details.device = &device;
  details.layout = {42};
  details.replacement_pipeline = {8};
  details.compatible_shader_infos[shader::COMPUTE_INDEX].shader_hash = 0x562EDD85;
  details.compatible_shader_infos[shader::COMPUTE_INDEX].index = 0;
  reshade::api::shader_desc original_desc{};
  original_desc.code = original.data();
  original_desc.code_size = original.size();
  original_desc.entry_point = "main";
  const reshade::api::pipeline_subobject capture = {
      reshade::api::pipeline_subobject_type::compute_shader, 1, &original_desc};
  shader::OnInitPipeline(&device, {42}, 1, &capture, {15});
  const auto retained = shader::GetShaderData(reshade::api::pipeline{15}, uint32_t{0x562EDD85});
  assert(retained && *retained == original); // No DevKit needed for bytecode retention.
  shader::OnDestroyPipeline(&device, {15});
  details.subobjects.push_back({reshade::api::pipeline_subobject_type::compute_shader, 1, &original_desc});
  shader::shared.data->pipeline_shader_details.emplace(7, std::move(details));
  TestContext context{&command, &state};
  for (float value : {0.f, -1.f, 2.f, std::numeric_limits<float>::quiet_NaN()}) {
    OnPresent(value == 1.f);
    auto result = on_dispatch(context);
    assert(!result.replay && !result.bypass && result.post_callback == nullptr);
    assert(command.binds.empty() && device.creates == 0);
  }
  OnPresent(true);
  auto result = on_dispatch(context);
  assert(result.replay && result.post_callback && !result.bypass);
  assert(command.binds.back() == 101 && device.creates == 1);
  result.post_callback(context, result.post_data);
  assert(command.binds.back() == 8); // Preserve the base addon's replacement.
  on_dispatch(context);
  assert(device.creates == 1); // Cached across frames and toggles.
  OnPresent(false);
  const auto count = command.binds.size();
  assert(!on_dispatch(context).replay && command.binds.size() == count);
  OnPresent(true);
  device.api = reshade::api::device_api::d3d11;
  assert(!on_dispatch(context).replay && device.creates == 1);
  device.api = reshade::api::device_api::vulkan;
  OnDestroyLayout(&device, {42});
  assert(device.destroys == 0 && devices.at(&device).retired.size() == 1);
  on_dispatch(context);
  assert(device.creates == 2); // Reused layout handle gets a new pipeline.
  OnDestroyDevice(&device);
  assert(device.destroys == 2 && devices.empty());
  device.fail = true;
  result = on_dispatch(context);
  assert(!result.replay && failed && !enabled);
  OnPresent(true);
  assert(!enabled); // Failure is latched, not retried every frame.
  OnDestroyDevice(&device);
  shader::PipelineShaderDetails blur_details;
  blur_details.pipeline = {9};
  blur_details.device = &device;
  blur_details.layout = {42}; // Same layout must not alias the alignment cache.
  blur_details.replacement_pipeline = {10};
  blur_details.compatible_shader_infos[shader::COMPUTE_INDEX].shader_hash = 0xC465A053;
  blur_details.compatible_shader_infos[shader::COMPUTE_INDEX].index = 0;
  reshade::api::shader_desc blur_desc{};
  blur_desc.code = blur_original.data();
  blur_desc.code_size = blur_original.size();
  blur_desc.entry_point = "main";
  blur_details.subobjects.push_back({reshade::api::pipeline_subobject_type::compute_shader, 1, &blur_desc});
  shader::shared.data->pipeline_shader_details.emplace(9, std::move(blur_details));
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {9};
  device.fail = false;
  OnPresent(true, true);
  assert(failed && !enabled && override_requested && !override_failed);
  result = on_dispatch(context);
  assert(!result.replay); // Do not activate one half of an unprepared pair.
  shader::PipelineShaderDetails blend_details;
  blend_details.pipeline = {11};
  blend_details.device = &device;
  blend_details.layout = {42};
  blend_details.replacement_pipeline = {12};
  blend_details.compatible_shader_infos[shader::COMPUTE_INDEX].shader_hash = 0x4187AEA7;
  shader::shared.data->pipeline_shader_details.emplace(11, std::move(blend_details));
  shader::shared.data->runtime_replacements.emplace(shader::DeviceShaderKey{&device, 0x4187AEA7}, std::span<const uint8_t>(blend_original));
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {11};
  assert(!on_dispatch(context).replay); // Preparation only, until next present.
  OnPresent(true, true);
  result = on_dispatch(context);
  assert(result.replay);
  result.post_callback(context, result.post_data);
  assert(command.binds.back() == 12);
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {9};
  result = on_dispatch(context);
  assert(result.replay); // Alignment failure does not disable the override pair.
  result.post_callback(context, result.post_data);
  assert(command.binds.back() == 10);
  failed = false;
  OnPresent(true, true);
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {7};
  assert(on_dispatch(context).replay);
  const auto& cached = devices.at(&device).by_layout.at(42);
  assert(cached[0].handle && cached[1].handle && cached[2].handle);
  assert(cached[0].handle != cached[1].handle && cached[1].handle != cached[2].handle);
  const auto cached_creates = device.creates;
  for (bool align : {false, true}) {
    for (bool blur : {false, true}) {
      OnPresent(align, blur);
      state.stage_states[shader::COMPUTE_INDEX].pipeline = {7};
      assert(on_dispatch(context).replay == align);
      state.stage_states[shader::COMPUTE_INDEX].pipeline = {9};
      assert(on_dispatch(context).replay == blur);
      state.stage_states[shader::COMPUTE_INDEX].pipeline = {11};
      assert(on_dispatch(context).replay == blur);
      assert(device.creates == cached_creates);
    }
  }
  OnDestroyLayout(&device, {42});
  assert(devices.at(&device).retired.size() == 3);
  assert(!devices.at(&device).override_active);
  OnDestroyDevice(&device);
  // Unknown base version disables the pair, never the alignment feature.
  shader::shared.data->runtime_replacements.erase({&device, 0x4187AEA7});
  OnPresent(true, true);
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {9};
  assert(!on_dispatch(context).replay);
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {11};
  assert(!on_dispatch(context).replay && override_failed && !override_requested);
  OnPresent(true, true);
  state.stage_states[shader::COMPUTE_INDEX].pipeline = {9};
  assert(!on_dispatch(context).replay && enabled);
  OnDestroyDevice(&device);
  shader::shared.data->pipeline_shader_details.erase(11);
  shader::shared.data->pipeline_shader_details.erase(9);
  shader::shared.data->pipeline_shader_details.erase(7);
  // DX11 dispatch uses its own hashes and valid null pipeline layout. No Vulkan
  // bytecode, stale pipeline cache, or frame-generation dependency may leak in.
  device.api = reshade::api::device_api::d3d11;
  failed = false; override_failed = false;
  std::array<std::vector<uint8_t>, 3> dx11_source;
  std::array<reshade::api::shader_desc, 3> dx11_desc{};
  for (size_t i = 0; i < 3; ++i) {
    const auto path = std::array{
        "artifacts/endfield-enhancer/dx11-ssr/0x18BD6E91.cs_5_0.cso",
        "artifacts/endfield-enhancer/dx11-ssr/0xDA42CB07.cs_5_0.cso",
        "artifacts/endfield-enhancer/dx11-ssr/base-blend.cso"}[i];
    std::ifstream file(path, std::ios::binary); assert(file);
    dx11_source[i] = std::vector<uint8_t>(std::istreambuf_iterator<char>{file}, {});
    assert(!PrepareDx11Shader(i, dx11_source[i]).empty());
    auto modified = dx11_source[i]; modified[0] ^= 1;
    assert(PrepareDx11Shader(i, modified).empty());
    assert(PrepareDx11Shader(i, std::span(dx11_source[i]).first(19)).empty());
    assert(PrepareDx11Shader(i, original).empty());
    dx11_desc[i].code = dx11_source[i].data();
    dx11_desc[i].code_size = dx11_source[i].size();
    dx11_desc[i].entry_point = "main";
    shader::PipelineShaderDetails dx11_details;
    dx11_details.pipeline = {30 + i};
    dx11_details.device = &device;
    dx11_details.layout = {};
    dx11_details.replacement_pipeline = {40 + i};
    dx11_details.compatible_shader_infos[shader::COMPUTE_INDEX].shader_hash = kDx11Hashes[i];
    dx11_details.compatible_shader_infos[shader::COMPUTE_INDEX].index = 0;
    dx11_details.subobjects.push_back({reshade::api::pipeline_subobject_type::compute_shader, 1, &dx11_desc[i]});
    shader::shared.data->pipeline_shader_details.emplace(30 + i, std::move(dx11_details));
  }
  assert(PrepareDx11Shader(2, dx11_source[0]).empty()); // Vanilla is not an injected blend.
  assert(PrepareDx11Shader(3, dx11_source[2]).empty());
  // Reflection/debug/checksum differences do not disable compatible code.
  auto repackaged = dx11_source[2]; repackaged[4] ^= 1;
  assert(!PrepareDx11Shader(2, repackaged).empty());
  const std::array<uint32_t,5> setting_operand={0x0020803A,13,13,0x00004001,0x3F000000};
  const auto* bytes = reinterpret_cast<const uint8_t*>(setting_operand.data());
  auto operand = std::search(repackaged.begin(),repackaged.end(),bytes,bytes+sizeof(setting_operand));
  assert(operand != repackaged.end());
  *(operand+4) = 12; // Different constant-buffer slot must not use fixed b13 ABI.
  assert(PrepareDx11Shader(2,repackaged).empty());
  shader::shared.data->runtime_replacements.emplace(
      std::pair{static_cast<reshade::api::device*>(&device), kDx11Hashes[2]}, dx11_source[2]);
  OnPresent(true,true);
  const auto before_dx11 = device.creates;
  for (size_t i=0;i<3;++i) {
    state.stage_states[shader::COMPUTE_INDEX].pipeline={30+i};
    auto selected = on_dispatch(context);
    assert(selected.replay == (i==0)); // Pair waits until both shaders are prepared.
    if (selected.post_callback) selected.post_callback(context,nullptr);
  }
  assert(device.creates == before_dx11 + 3);
  OnPresent(true,true);
  for(size_t i=0;i<3;++i) {
    state.stage_states[shader::COMPUTE_INDEX].pipeline={30+i};
    auto selected=on_dispatch(context); assert(selected.replay && selected.post_callback);
    selected.post_callback(context,nullptr); assert(command.binds.back()==40+i);
  }
  OnPresent(false,false);
  for(size_t i=0;i<3;++i) {
    state.stage_states[shader::COMPUTE_INDEX].pipeline={30+i}; assert(!on_dispatch(context).replay);
  }
  OnPresent(true,true);
  device.api=reshade::api::device_api::vulkan;
  assert(!on_dispatch(context).replay); // DX11 hashes cannot receive SPIR-V.
  device.api=reshade::api::device_api::d3d12;
  assert(!on_dispatch(context).replay);
  device.api=reshade::api::device_api::d3d11;
  OnDestroyLayout(&device,{});
  assert(devices.at(&device).retired.size()==3);
  OnDestroyDevice(&device);
  shader::shared.data->runtime_replacements.erase({&device,kDx11Hashes[2]});
  for(size_t i=0;i<3;++i) shader::shared.data->pipeline_shader_details.erase(30+i);
  std::puts("DX11 SSR: bytecode/ABI checks, automatic API selection, null layout, pair readiness, base restoration and cache retirement passed.");
  action::Unregister(base);
  Use(DLL_PROCESS_DETACH);
  std::puts("SSR alignment/override: exact originals, corruption rejection, paired readiness, independent selectors/failures, cache isolation, restore, API gate and retirement passed.");
}

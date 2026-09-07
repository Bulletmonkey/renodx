#include <Windows.h>
#include <array>
#include <cstdlib>
#include <iostream>
#include <optional>
#include <source_location>
#include <vector>

#include "../../../utils/command_action.hpp"

struct OutputCommand {
  reshade::api::viewport viewport{};
  reshade::api::rect scissor{};
  std::vector<uint64_t> bound_pipelines;
  uint64_t get_native() const { return 0x1000; }
  void bind_pipeline(reshade::api::pipeline_stage stages, reshade::api::pipeline pipeline) {
    if (stages != reshade::api::pipeline_stage::all_graphics) std::abort();
    bound_pipelines.push_back(pipeline.handle);
  }
};
struct OutputContext {
  OutputCommand* cmd_list;
  renodx::utils::shader::CommandListData* shader_state;
  std::optional<renodx::utils::shader::ShaderStageIndex> matched_shader_stage;
  bool dispatch = false;
  bool IsDispatch() const { return dispatch; }
};
namespace renodx::utils::command_action {
inline renodx::utils::shader::CommandListData* GetShaderState(OutputContext* context) {
  return context->shader_state;
}
}
#include "../hdr_output.hpp"

extern "C" __declspec(dllexport) void ReShadeRegisterEvent(reshade::addon_event, void*) {}
extern "C" __declspec(dllexport) void ReShadeUnregisterEvent(reshade::addon_event, void*) {}
extern "C" __declspec(dllexport) void ReShadeLogMessage(void*, int, const char*) {}
static void Require(bool condition, std::source_location location = std::source_location::current()) {
  if (!condition) {
    std::cerr << "Resolution-independent output regression at line " << location.line() << '\n';
    std::exit(1);
  }
}

int main() {
  reshade::internal::get_reshade_module_handle(GetModuleHandleW(nullptr));
  reshade::internal::get_current_module_handle(GetModuleHandleW(nullptr));
  using namespace endfield::hdr_output;
  namespace action = renodx::utils::command_action;
  namespace shader = renodx::utils::shader;
  UseEvents(DLL_PROCESS_ATTACH);
  constexpr auto base_callback = []<typename Context>(Context&) -> action::CallbackResult<Context> { return {}; };
  constexpr uint32_t base_vertex = 0xA1A10001, base_pixel = 0xB2B20002;
  for (uint32_t hash : {base_vertex, base_pixel}) {
    action::Register(base_callback, {.shader_hash = hash});
  }
  RegisterDrawCallbacks();
  RegisterDrawCallbacks();
  const auto& registrations = action::internal::shared.data->registrations;
  Require(registrations.size() == 3 && registrations.at(0).size() == 1);
  for (uint32_t hash : {base_vertex, base_pixel}) {
    Require(registrations.at(hash).size() == 2);
    Require(registrations.at(hash).front().callback
            == &action::internal::CALLBACK_IDENTITY<std::remove_cvref_t<decltype(base_callback)>>);
    Require(registrations.at(hash).back().callback
            == &action::internal::CALLBACK_IDENTITY<std::remove_cvref_t<decltype(on_output_draw)>>);
  }

  OutputCommand command;
  shader::PipelineShaderDetails details;
  shader::CommandListData shader_state;
  for (auto index : {shader::VERTEX_INDEX, shader::PIXEL_INDEX}) {
    shader_state.stage_states[index].pipeline = {0x2000};
    shader_state.stage_states[index].pipeline_details = &details;
  }
  graphics[0x2000].fp16 = {0x2001};
  graphics[0x2000].restore = {0x2002};
  images[0x3000] = std::make_unique<ImageState>();
  auto* output = images[0x3000].get();
  output->original = {0x3000};
  output->clone = {0x3001};
  output->active = true;
  commands[command.get_native()].output_image = output->original.handle;
  capture_graphics.store(true);

  struct SizeCase { uint32_t render_width, render_height, output_width, output_height; };
  constexpr SizeCase sizes[] = {
      {1920, 1080, 1920, 1080}, {3840, 1776, 3840, 2160},
      {2560, 1440, 3840, 2160}, {1280, 720, 2560, 1440},
      {3440, 1440, 3440, 1440}, {1920, 1080, 5120, 1440},
      {7680, 4320, 7680, 4320}, {1234, 678, 1920, 1080},
  };
  for (const auto& size : sizes) {
    VkSwapchainCreateInfoKHR create{VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR};
    create.imageArrayLayers = 1;
    create.imageSharingMode = VK_SHARING_MODE_EXCLUSIVE;
    create.imageExtent = {size.output_width, size.output_height};
    TrackSwapchain(reinterpret_cast<VkDevice>(0x4000), reinterpret_cast<VkSwapchainKHR>(0x5000), create);
    Require(swapchains.at(0x5000).width == size.output_width && swapchains.at(0x5000).height == size.output_height);
    output->width = size.output_width;
    output->height = size.output_height;
    command.viewport = {0, static_cast<float>((size.output_height - size.render_height) / 2),
                        static_cast<float>(size.render_width), static_cast<float>(size.render_height), 0, 1};
    command.scissor = {0, static_cast<int32_t>(command.viewport.y), static_cast<int32_t>(size.render_width),
                       static_cast<int32_t>(command.viewport.y + size.render_height)};
    const auto viewport = command.viewport;
    const auto scissor = command.scissor;
    for (unsigned known_stages = 0; known_stages < 4; ++known_stages) {
      details.compatible_shader_infos[shader::VERTEX_INDEX].shader_hash = known_stages & 1 ? base_vertex : 0xCAFE0001;
      details.compatible_shader_infos[shader::PIXEL_INDEX].shader_hash = known_stages & 2 ? base_pixel : 0xCAFE0002;
      OutputContext context{&command, &shader_state};
      output->drawn = false;
      command.bound_pipelines.clear();
      auto result = on_output_draw(context);
      if (known_stages != 0) {
        Require(!result.replay && !output->drawn && command.bound_pipelines.empty());
        if (known_stages & 1) {
          context.matched_shader_stage = shader::VERTEX_INDEX;
          result = on_output_draw(context);
          if (known_stages & 2) Require(!result.replay && !output->drawn && command.bound_pipelines.empty());
        }
        if (known_stages & 2) {
          context.matched_shader_stage = shader::PIXEL_INDEX;
          result = on_output_draw(context);
        }
      }
      Require(result.replay && !result.bypass && result.post_callback != nullptr);
      Require(output->drawn && !output->failed && output->last_shader == details.compatible_shader_infos[shader::PIXEL_INDEX].shader_hash);
      Require(command.bound_pipelines == std::vector<uint64_t>{0x2001});
      result.post_callback(context, result.post_data);
      Require(command.bound_pipelines == std::vector<uint64_t>({0x2001, 0x2002}));
      Require(std::memcmp(&viewport, &command.viewport, sizeof(viewport)) == 0);
      Require(std::memcmp(&scissor, &command.scissor, sizeof(scissor)) == 0);
      Require(output->width == size.output_width && output->height == size.output_height);
    }
  }

  OutputContext context{&command, &shader_state};
  details.compatible_shader_infos[shader::VERTEX_INDEX].shader_hash = 0xCAFE0001;
  details.compatible_shader_infos[shader::PIXEL_INDEX].shader_hash = 0xCAFE0002;
  for (unsigned excluded = 0; excluded < 4; ++excluded) {
    output->drawn = false;
    output->active = excluded != 0;
    context.dispatch = excluded == 1;
    commands[command.get_native()].output_image = excluded == 2 ? 0xDEADBEEF : output->original.handle;
    capture_graphics.store(excluded != 3);
    command.bound_pipelines.clear();
    const auto result = on_output_draw(context);
    Require(!result.replay && !result.bypass && !output->drawn && command.bound_pipelines.empty());
  }
  graphics.clear();
  images.clear();
  commands.clear();
  swapchains.clear();
  action::Unregister(base_callback);
  UseEvents(DLL_PROCESS_DETACH);
  Require(registrations.empty());
  std::cout << "32 output-size/shader-registration cases passed, including 3840x1776 into 3840x2160; viewport/scissor, injection order, resource isolation and teardown passed\n";
}

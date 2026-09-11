#include <Windows.h>
#include <cassert>
#include <fstream>
#include <iostream>
#include <future>
#include <functional>
#include "../screenshot_alpha.hpp"
#include "bokeh_api_stubs.hpp"
using namespace endfield::screenshots::photo_alpha;
extern "C" __declspec(dllexport) void ReShadeLogMessage(void*,int,const char*) {}
struct Device:bokeh_test::DeviceStub {
  unsigned creates=0,destroys=0,layout_creates=0,layout_destroys=0;
  std::function<void()> during_create;
  bool create_pipeline_layout(uint32_t count,const api::pipeline_layout_param* params,api::pipeline_layout* out) override {
    assert(count==1 && params[0].type==api::pipeline_layout_param_type::descriptor_table);
    assert(params[0].descriptor_table.count==1 && params[0].descriptor_table.ranges[0].binding==3);
    ++layout_creates;out->handle=7;return true;
  }
  void destroy_pipeline_layout(api::pipeline_layout layout) override {assert(layout.handle==7);++layout_destroys;}

  bool fail=false;
  api::device_api get_api() const override {return api::device_api::vulkan;}
  api::resource get_resource_from_view(api::resource_view view) const override {return {view.handle};}
  bool create_pipeline(api::pipeline_layout layout,uint32_t count,
                       const api::pipeline_subobject* objects,api::pipeline* out) override {
    ++creates;
    assert(layout.handle==7 && count==4);
    assert(objects[0].type==api::pipeline_subobject_type::vertex_shader);
    const auto& vs=*static_cast<const api::shader_desc*>(objects[0].data);
    assert(vs.code_size==4 && *static_cast<const uint32_t*>(vs.code)==0xabcdef01);
    const auto& ps=*static_cast<const api::shader_desc*>(objects[1].data);
    assert(ps.code_size==936);
    assert(*static_cast<const api::format*>(objects[2].data)==api::format::r16g16b16a16_float);
    const auto& blend=*static_cast<const api::blend_desc*>(objects[3].data);
    assert(blend.render_target_write_mask[0]==15 && !blend.blend_enable[0]);
    if (during_create) during_create();
    if (fail) return false;
    out->handle=42;return true;
  }
  void destroy_pipeline(api::pipeline p) override {assert(p.handle==42);++destroys;}
};
struct Command:bokeh_test::CommandStub {
  api::device* device;
  std::vector<uint64_t> binds;
  api::device* get_device() override {return device;}
  void bind_pipeline(api::pipeline_stage stage,api::pipeline pipeline) override {
    assert(stage==api::pipeline_stage::all_graphics);binds.push_back(pipeline.handle);
  }
};
int main() {
  std::ifstream f("src/games/endfield-enhancer/tests/photo-copy-original.spv",std::ios::binary);
  std::vector<uint8_t> bytes((std::istreambuf_iterator<char>(f)),{});
  assert(bytes.size()==896);
  const auto result=Patch(bytes);
  assert(result.size()*4==936);
  std::ofstream out("tmp/endfield-screenshots/photo-copy-opaque.spv",std::ios::binary);
  out.write(reinterpret_cast<const char*>(result.data()),result.size()*4);out.close();
  std::vector<uint32_t> original(bytes.size()/4);std::memcpy(original.data(),bytes.data(),bytes.size());
  auto recovered=result;
  unsigned inserts=0,constants=0;
  for(size_t i=5;i<recovered.size();) {
    const auto count=recovered[i]>>16,op=recovered[i]&0xffff;
    if(op==82) {
      assert(count==6 && recovered[i+2]==original[3]+1 && recovered[i+3]==original[3] && recovered[i+5]==3);
      // The store now receives precisely RGB from its old sample and literal alpha 1.
      assert(recovered[i+6]==((3u<<16)|62) && recovered[i+8]==recovered[i+2]);
      recovered[i+8]=recovered[i+4];
      recovered.erase(recovered.begin()+i,recovered.begin()+i+count);++inserts;continue;
    }
    if(op==43 && count==4 && recovered[i+2]==original[3]) {
      assert(recovered[i+3]==0x3f800000);
      recovered.erase(recovered.begin()+i,recovered.begin()+i+count);++constants;continue;
    }
    i+=count;
  }
  recovered[3]-=2;
  assert(inserts==1 && constants==1 && recovered==original);
  auto corrupt=bytes;corrupt.back()^=1;assert(Patch(corrupt).empty());
  assert(Patch({}).empty());assert(Patch(std::span(bytes).first(11)).empty());
  Device dev;
  assert(!Ready(&dev));
  uint32_t vs_word=0xabcdef01;
  api::shader_desc vs{};vs.code=&vs_word;vs.code_size=4;vs.entry_point="main";
  api::shader_desc ps{};ps.code=bytes.data();ps.code_size=bytes.size();ps.entry_point="main";
  api::format format=api::format::r11g11b10_float;
  api::blend_desc blend{};blend.render_target_write_mask[0]=15;
  renodx::utils::shader::PipelineShaderDetails details;
  details.device=&dev;details.layout={7};details.pipeline={1};
  details.subobjects={{api::pipeline_subobject_type::vertex_shader,1,&vs},
      {api::pipeline_subobject_type::pixel_shader,1,&ps},
      {api::pipeline_subobject_type::render_target_formats,1,&format},
      {api::pipeline_subobject_type::blend_state,1,&blend}};
  auto& info=details.compatible_shader_infos[renodx::utils::shader::PIXEL_INDEX];
  info.shader_hash=0x105b9793;info.index=1;
  const auto pipeline=Prepare(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data());assert(pipeline.handle==42 && dev.creates==1);
  assert(format==api::format::r11g11b10_float && ps.code==bytes.data());
  dev.fail=true;assert(!Prepare(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data()).handle && dev.creates==2);
  blend.blend_enable[0]=true;assert(!Prepare(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data()).handle && dev.creates==2);blend.blend_enable[0]=false;
  ps.code_size=0;assert(!Prepare(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data()).handle);ps.code_size=bytes.size();
  pipelines[{&dev,1}]={{7},pipeline};OnDestroyPipeline(&dev,{1});
  assert(pipelines.empty() && dev.destroys==0); // Recorded GPU commands may still use it.
  OnDestroyDevice(&dev);assert(dev.destroys==1 && retired.empty());
  // Exercise actual begin-render-pass selection and the copy callback, including
  // opaque preview data and restoration before subsequent unrelated draws.
  namespace shader=renodx::utils::shader;
  namespace resource=renodx::utils::resource;
  auto shader_data=std::make_unique<shader::SharedData>();
  auto resource_data=std::make_unique<resource::SharedData>();
  shader::shared.data=shader_data.get();resource::shared.data=resource_data.get();
  auto layout_data=std::make_unique<renodx::utils::pipeline_layout::Data>();
  renodx::utils::pipeline_layout::shared.data=layout_data.get();
  api::descriptor_range range{};range.binding=3;range.count=1;
  api::pipeline_layout_param param(1,&range);
  renodx::utils::pipeline_layout::PipelineLayoutData layout;
  layout.params.push_back(param);
  layout_data->pipeline_layout_data.emplace(7,std::move(layout));
  Pending copied_layout;
  assert(copied_layout.CopyLayout({&param,1}));
  range.binding=99;
  assert(copied_layout.params[0].descriptor_table.ranges[0].binding==3);
  range.binding=3;
  api::pipeline_layout_param unsupported;unsupported.type=api::pipeline_layout_param_type::descriptor_table_with_static_samplers;
  assert(!copied_layout.CopyLayout({&unsupported,1}));
  info.shader_hash=0x105b9793;dev.fail=false;
  shader_data->pipeline_shader_details.emplace(1,details);
  resource::ResourceInfo photo{};photo.device=&dev;photo.resource={100};photo.upgraded=true;
  photo.upgrade_target=&endfield::screenshots::photo_resource::target;
  photo.desc.texture.format=api::format::r16g16b16a16_float;
  resource_data->resource_infos.emplace(100,photo);
  photo.upgrade_target=nullptr;photo.resource={101};resource_data->resource_infos.emplace(101,photo);
  Command cmd;cmd.device=&dev;
  shader::CommandListData state;state.stage_states[shader::PIXEL_INDEX].pipeline={1};
  renodx::utils::command_action::CommandContext<renodx::utils::command_action::DrawArguments> context;
  context.cmd_list=&cmd;context.shader_state=&state;
  api::render_pass_render_target_desc rt{};rt.view={101};
  const auto creates_before_startup_copy=dev.creates;
  OnBegin(&cmd,1,&rt,nullptr);assert(!on_copy(context).replay && cmd.binds.empty());
  assert(dev.creates==creates_before_startup_copy && !Ready(&dev) && pipelines.empty());
  // Inject an already prepared pipeline solely to exercise the target/replay path.
  // Production now refuses the resource upgrade until preparation is available.
  OnInitPipeline(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data(),{1});
  assert(dev.creates==creates_before_startup_copy && !Ready(&dev));
  OnDestroyLayout(&dev,{7});
  PreparePending();assert(dev.creates==creates_before_startup_copy && !Ready(&dev));
  OnInitPipeline(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data(),{1});
  OnDestroyPipeline(&dev,{1});PreparePending();
  assert(dev.creates==creates_before_startup_copy && !Ready(&dev));
  OnInitPipeline(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data(),{1});
  // Even after the copy pipeline is known, ordinary loading Presents must
  // perform zero GPU pipeline/layout creation. Only an actual photo requests it.
  const auto layouts_before_present=dev.layout_creates;
  registered=true;
  for (unsigned i=0;i<100;++i) OnPresent();
  registered=false;
  assert(dev.creates==creates_before_startup_copy && dev.layout_creates==layouts_before_present);
  // A new variant first encountered after Present must work on the FIRST photo.
  // A normal startup draw must not prepare it, even when it is queued.
  assert(!on_copy(context).replay && dev.creates==creates_before_startup_copy);
  rt.view={100};OnBegin(&cmd,1,&rt,nullptr);
  assert(!Ready(&dev));
  const auto creates_before_photo=dev.creates;
  OnPhotoRequested();
  const auto action=on_copy(context);
  assert(dev.creates==creates_before_photo+1 && Ready(&dev));assert(action.replay && action.post_callback && cmd.binds.back()==42);
  action.post_callback(context,nullptr);assert(cmd.binds.back()==1);
  const auto cached=on_copy(context);assert(cached.replay && dev.creates==creates_before_photo+1);
  cached.post_callback(context,nullptr);
  OnEnd(&cmd);assert(!on_copy(context).replay && cmd.binds.size()==4);
  OnBegin(&cmd,0,nullptr,nullptr);assert(targets.empty());
  OnDestroyLayout(&dev,{7});assert(!Ready(&dev) && dev.destroys==1);
  OnDestroyDevice(&dev);assert(dev.destroys==2);
  // A native layout can be destroyed on a different loader thread while the
  // driver creates our pipeline. It must not block on our preparation lock,
  // and the canceled job must never publish a pipeline for a stale native key.
  OnInitPipeline(&dev,{7},static_cast<uint32_t>(details.subobjects.size()),details.subobjects.data(),{1});
  dev.during_create=[&] {
    auto destroy=std::async(std::launch::async,[&]{OnDestroyLayout(&dev,{7});});
    assert(destroy.wait_for(std::chrono::seconds(2))==std::future_status::ready);
    destroy.get();
  };
  assert(!PrepareOne({&dev,1}).handle && !Ready(&dev));
  dev.during_create={};
  assert(!retired.empty());OnDestroyDevice(&dev);
  assert(dev.layout_creates==dev.layout_destroys);
  shader::shared.data=nullptr;resource::shared.data=nullptr;
  renodx::utils::pipeline_layout::shared.data=nullptr;
  std::cout<<"Photo alpha: exact original SPIR-V, RGB/ABI preservation, full pipeline clone, failure and lifetime checks passed\n";
}

#include "../screenshot_resource.hpp"
#include "bokeh_api_stubs.hpp"
#include <cassert>
#include <iostream>
using namespace endfield::screenshots::photo_resource;
extern "C" __declspec(dllexport) void ReShadeLogMessage(void*, int, const char*) {}
struct Device : bokeh_test::DeviceStub {
  renodx::utils::swapchain::DeviceData data;
  bool supported=true;
  api::device_api get_api() const override {return api::device_api::vulkan;}
  void get_private_data(const uint8_t*,uint64_t* out) const override {*out=reinterpret_cast<uintptr_t>(&data);}
  bool check_format_support(api::format f,api::resource_usage) const override {
    assert(f==api::format::r16g16b16a16_float);return supported;
  }
};
int main() {
  Device dev;
  api::resource_desc original{};original.type=api::resource_type::texture_2d;
  original.texture={2560,1440,1,1,api::format::r11g11b10_float,1};
  original.usage=api::resource_usage::render_target|api::resource_usage::shader_resource;
  dev.data.back_buffer_desc=original;
  auto desc=original;
  assert(!OnCreate(nullptr,desc,nullptr,{}));
  Arm(2560);assert(!OnCreate(&dev,desc,nullptr,{})); // Never upgrade without opaque-alpha support.
  can_upgrade=+[](api::device*){return true;};
  Arm(2560);dev.supported=false;assert(!OnCreate(&dev,desc,nullptr,{}));assert(desc.texture.format==original.texture.format);
  dev.supported=true;desc.texture.width=1280;assert(!OnCreate(&dev,desc,nullptr,{}));
  desc=original;desc.usage|=api::resource_usage::unordered_access;assert(!OnCreate(&dev,desc,nullptr,{}));
  desc=original;api::subresource_data initial{};assert(!OnCreate(&dev,desc,&initial,{}));
  assert(OnCreate(&dev,desc,nullptr,{}));assert(desc.texture.format==api::format::r16g16b16a16_float);
  renodx::utils::resource::ResourceInfo info{};info.desc=desc;OnInit(&info);
  assert(info.upgraded && info.upgrade_target==&target && info.fallback_desc.texture.format==original.texture.format);
  assert(target.FindViewUpgrade(api::resource_usage::render_target,original.texture.format)==desc.texture.format);
  assert(target.FindViewUpgrade(api::resource_usage::shader_resource,original.texture.format)==desc.texture.format);
  // An unrelated identical resource after the one-shot ticket stays packed.
  desc=original;assert(!OnCreate(&dev,desc,nullptr,{}));assert(desc.texture.format==original.texture.format);
  deadline=1;assert(!OnCreate(nullptr,desc,nullptr,{}));
  std::cout<<"Photo resource scope, one-shot consumption, capability fallback, and view upgrades passed\n";
}

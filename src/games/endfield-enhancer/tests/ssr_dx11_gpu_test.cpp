// Offline GPU validation: execute captured originals and compiled ports on D3D11 WARP.
#include <d3d11.h>
#include <wrl/client.h>
#include <array>
#include <vector>
#include <fstream>
#include <cassert>
#include <cmath>
#include <iostream>
#include <algorithm>
#include <string>
using Microsoft::WRL::ComPtr;
using Pixel = std::array<float,4>;
static bool linear_filter = false;
static ComPtr<ID3D11Device> device;
static ComPtr<ID3D11DeviceContext> context;
static ComPtr<ID3D11ComputeShader> Load(const std::string& path) {
  std::ifstream file(path, std::ios::binary);
  assert(file);
  std::vector<char> data(std::istreambuf_iterator<char>{file}, {});
  ComPtr<ID3D11ComputeShader> shader;
  assert(SUCCEEDED(device->CreateComputeShader(data.data(), data.size(), nullptr, &shader)));
  return shader;
}
static std::vector<Pixel> Run(ID3D11ComputeShader* shader, int stage, unsigned width,
                               bool full, float maximum, bool improved, bool reference_correction) {
  constexpr unsigned height = 32;
  const unsigned input_width = full ? width : width / 2;
  const unsigned input_height = full ? height : height / 2;
  std::array<ComPtr<ID3D11Texture2D>, 3> textures;
  std::array<ComPtr<ID3D11ShaderResourceView>, 3> views;
  for (unsigned slot = 0; slot < 3; ++slot) {
    const bool metadata = (stage == 1 && slot == 1) || (stage == 2 && slot == 0);
    const bool hit = stage == 0 && slot == 1;
    const unsigned w = (metadata || hit) ? input_width : width;
    const unsigned h = (metadata || hit) ? input_height : height;
    const unsigned mips = stage == 1 && !metadata ? 7 : 1;
    std::vector<std::vector<Pixel>> pixels(mips);
    std::vector<D3D11_SUBRESOURCE_DATA> uploads(mips);
    for (unsigned mip = 0; mip < mips; ++mip) {
      const unsigned mw = std::max(1u,w >> mip), mh = std::max(1u,h >> mip);
      pixels[mip].resize(mw*mh);
      for (unsigned y=0; y<mh; ++y) for (unsigned x=0; x<mw; ++x) {
        Pixel v{0.04f + 0.003f * ((x*7+y*3)%91) + mip*0.012f,
                0.09f + 0.002f * ((x*3+y*7)%87), 0.17f + mip*0.017f, 0.5f};
        if (stage == 1 && slot == 0) v = {0.5f + float((x+y)%7)*0.002f,0,0,0};
        if (metadata) {
          float m = maximum * float(x) / float(std::max(1u,mw-1));
          if (reference_correction && full && maximum == 6.f) {
            if (stage == 1) m = std::min(m,std::max(1.f,m-std::min(1.f/3.f,std::max(maximum-m,0.f))));
            else if (improved) m = std::max(0.f,m-4.f/3.f);
          }
          v = {0,m/maximum,0,0};
        }
        if (hit) {
          v = {(float(x)+0.5f)/w,(float(y)+0.5f)/h,0,0};
          if (reference_correction && full) {
            v[0] -= (x&1)/float(width); v[1] -= (y&1)/float(height);
          }
        }
        pixels[mip][y*mw+x] = v;
      }
      uploads[mip] = {pixels[mip].data(), static_cast<UINT>(mw*sizeof(Pixel)), 0};
    }
    D3D11_TEXTURE2D_DESC desc{w,h,mips,1,DXGI_FORMAT_R32G32B32A32_FLOAT,{1,0},D3D11_USAGE_DEFAULT,D3D11_BIND_SHADER_RESOURCE,0,0};
    assert(SUCCEEDED(device->CreateTexture2D(&desc, uploads.data(), &textures[slot])));
    assert(SUCCEEDED(device->CreateShaderResourceView(textures[slot].Get(),nullptr,&views[slot])));
  }
  D3D11_TEXTURE2D_DESC out_desc{width,height,1,1,DXGI_FORMAT_R32G32B32A32_FLOAT,{1,0},D3D11_USAGE_DEFAULT,D3D11_BIND_UNORDERED_ACCESS,0,0};
  ComPtr<ID3D11Texture2D> output,readback;
  ComPtr<ID3D11UnorderedAccessView> uav;
  assert(SUCCEEDED(device->CreateTexture2D(&out_desc,nullptr,&output)));
  assert(SUCCEEDED(device->CreateUnorderedAccessView(output.Get(),nullptr,&uav)));
  out_desc.Usage=D3D11_USAGE_STAGING; out_desc.BindFlags=0; out_desc.CPUAccessFlags=D3D11_CPU_ACCESS_READ;
  assert(SUCCEEDED(device->CreateTexture2D(&out_desc,nullptr,&readback)));
  std::array<Pixel,3> cb0{}; cb0[0]={float(width),float(height),1.f/width,1.f/height}; cb0[2]={0,0,1,0.1f};
  std::array<Pixel,6> cb1{}; cb1[0]={float(input_width),float(input_height),1.f/width,1.f/height}; cb1[5][1]=maximum;
  std::array<Pixel,14> injection{}; injection[13][3]=improved ? 1.f : 0.f;
  std::array<ComPtr<ID3D11Buffer>,3> buffers;
  for (unsigned i=0;i<3;++i) {
    D3D11_BUFFER_DESC desc{};
    desc.ByteWidth=i==0 ? sizeof(cb0) : i==1 ? sizeof(cb1) : sizeof(injection);
    desc.Usage=D3D11_USAGE_DEFAULT; desc.BindFlags=D3D11_BIND_CONSTANT_BUFFER;
    D3D11_SUBRESOURCE_DATA data{i==0 ? static_cast<void*>(cb0.data()) : i==1 ? static_cast<void*>(cb1.data()) : static_cast<void*>(injection.data()),0,0};
    assert(SUCCEEDED(device->CreateBuffer(&desc,&data,&buffers[i])));
    context->CSSetConstantBuffers(i==2 ? 13 : i,1,buffers[i].GetAddressOf());
  }
  D3D11_SAMPLER_DESC sampler_desc{};
  sampler_desc.Filter=linear_filter ? D3D11_FILTER_MIN_MAG_MIP_LINEAR : D3D11_FILTER_MIN_MAG_MIP_POINT;
  sampler_desc.AddressU=sampler_desc.AddressV=sampler_desc.AddressW=D3D11_TEXTURE_ADDRESS_CLAMP;
  sampler_desc.MaxLOD=D3D11_FLOAT32_MAX;
  ComPtr<ID3D11SamplerState> sampler;
  assert(SUCCEEDED(device->CreateSamplerState(&sampler_desc,&sampler)));
  ID3D11SamplerState* samplers[]={sampler.Get(),sampler.Get()}; context->CSSetSamplers(0,2,samplers);
  ID3D11ShaderResourceView* srvs[]={views[0].Get(),views[1].Get(),views[2].Get()}; context->CSSetShaderResources(0,3,srvs);
  context->CSSetUnorderedAccessViews(0,1,uav.GetAddressOf(),nullptr);
  context->CSSetShader(shader,nullptr,0); context->Dispatch((width+7)/8,(height+7)/8,1);
  context->ClearState(); context->CopyResource(readback.Get(),output.Get());
  D3D11_MAPPED_SUBRESOURCE mapped{};
  assert(SUCCEEDED(context->Map(readback.Get(),0,D3D11_MAP_READ,0,&mapped)));
  std::vector<Pixel> result(width*height);
  for(unsigned y=0;y<height;++y) std::memcpy(result.data()+y*width,static_cast<char*>(mapped.pData)+y*mapped.RowPitch,width*sizeof(Pixel));
  context->Unmap(readback.Get(),0); return result;
}
static void Compare(const std::vector<Pixel>& a,const std::vector<Pixel>& b) {
  for(size_t i=0;i<a.size();++i) for(unsigned c=0;c<4;++c) {
    if (!std::isfinite(a[i][c]) || !std::isfinite(b[i][c]) || std::abs(a[i][c]-b[i][c]) > 0.00001f * std::max(1.f,std::abs(a[i][c]))) {
      std::cerr << "Mismatch pixel " << i << " channel " << c << ": " << a[i][c] << " vs " << b[i][c] << '\n';
      std::abort();
    }
  }
}
int main() {
  assert(SUCCEEDED(D3D11CreateDevice(nullptr,D3D_DRIVER_TYPE_WARP,nullptr,0,nullptr,0,D3D11_SDK_VERSION,&device,nullptr,&context)));
  const std::string root="artifacts/endfield-enhancer/dx11-ssr/";
  const std::array<std::string,3> hashes={"18BD6E91","DA42CB07","4ED659BE"};
  unsigned cases=0;
  for(int stage=0;stage<3;++stage) {
    auto original=Load(stage==2 ? root+"base-blend.cso" : root+"0x"+hashes[stage]+".cs_5_0.cso");
    auto baseline=Load(root+hashes[stage]+"-baseline.cso");
    auto candidate=Load("build/endfield-enhancer.include/embed/0x"+hashes[stage]+".cso");
    for (bool linear : {false,true}) {
    linear_filter = linear;
    for(unsigned width:{64u,65u}) for(bool full:{false,true}) for(float maximum:{5.f,6.f,7.f}) for(bool improved:{false,true}) {
      std::cout<<"stage="<<stage<<" width="<<width<<" full="<<full<<" M="<<maximum<<" improved="<<improved<<std::endl;
      Compare(Run(original.Get(),stage,width,full,maximum,improved,false),Run(baseline.Get(),stage,width,full,maximum,improved,false));
      Compare(Run(original.Get(),stage,width,full,maximum,improved,true),Run(candidate.Get(),stage,width,full,maximum,improved,false));
      ++cases;
    }
    }
  }
  std::cout<<cases<<" D3D11 WARP cases passed: baseline equivalence, full/half, odd sizes, M=5/6/7, base On/Off, and GPU correction against reference inputs.\n";
}

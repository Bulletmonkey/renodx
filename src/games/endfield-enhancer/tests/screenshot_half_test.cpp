#include "../screenshot_image.hpp"
#include <bit>
#include <cassert>
#include <iostream>
using namespace endfield::screenshots;
int main() {
  std::ifstream reference("tmp/endfield-screenshots/half-reference.bin",std::ios::binary);
  assert(reference);
  for (uint32_t bits=0;bits<65536;++bits) {
    const auto h=static_cast<uint16_t>(bits);
    const float value=DecodeHalf(h);
    float expected;reference.read(reinterpret_cast<char*>(&expected),sizeof(expected));assert(reference);
    if ((h&0x7c00)==0x7c00) {
      assert((h&1023) ? std::isnan(value) : std::isinf(value));
    } else {
      assert(std::bit_cast<uint32_t>(value)==std::bit_cast<uint32_t>(expected));
    }
  }
  ColorConfig config;config.white_nits=203;config.peak_nits=1000;config.output_encoding=4;
  std::vector<HalfPixel> half;
  std::vector<Pixel> full;
  for (uint16_t h=0;h<0x7c00;++h) {
    half.push_back({h,static_cast<uint16_t>(h|0x8000),h,0x3c00});
    full.push_back(DecodePixel(half.back()));
  }
  // Same FP16 samples must produce bit-identical PNG pixels regardless of storage width.
  std::vector<uint16_t> half_hdr,full_hdr;std::vector<uint8_t> half_sdr,full_sdr;
  assert(ConvertPixels(half,half.size(),1,config,&half_hdr,&half_sdr)==false); // dimensions cap
  half.resize(16000);full.resize(16000);
  assert(ConvertPixels(half,half.size(),1,config,&half_hdr,&half_sdr));
  assert(ConvertPixels(full,full.size(),1,config,&full_hdr,&full_sdr));
  assert(half_hdr==full_hdr && half_sdr==full_sdr);
  std::cout<<"All half-float encodings and FP16/FP32 export equivalence passed\n";
}

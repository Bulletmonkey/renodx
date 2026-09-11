#include "../screenshot_sdr_image.hpp"
#include <cassert>
#include <iostream>
using namespace endfield::screenshots;
int main() {
  // Binary16 constants: black, white, 0.5 and 0.25. The expected values are
  // standard sRGB code values, independent of HDR paper white or peak settings.
  std::vector<HalfPixel> pixels{{0,0,0,0}, {0x3c00,0x3800,0x3400,0}};
  std::vector<uint8_t> result;
  assert(EncodeVanillaSdr(pixels,1,2,false,&result));
  assert((result == std::vector<uint8_t>{0,0,0,255,255,188,137,255}));
  assert(EncodeVanillaSdr(pixels,1,2,true,&result));
  assert((result == std::vector<uint8_t>{255,188,137,255,0,0,0,255}));
  const auto previous = result;
  pixels[0].g = 0x7e00; // NaN must fail instead of silently becoming a black pixel.
  assert(!EncodeVanillaSdr(pixels,1,2,false,&result) && result == previous);
  pixels[0].g = 0x7c00;
  assert(!EncodeVanillaSdr(pixels,1,2,false,&result) && result == previous);
  assert(!EncodeVanillaSdr(pixels,2,2,false,&result));
  assert(!EncodeVanillaSdr(pixels,0,2,false,&result));
  assert(!EncodeVanillaSdr(pixels,1,2,false,nullptr));
  pixels = {{0xbc00,0x4000,0x3c00,0}};
  assert(EncodeVanillaSdr(pixels,1,1,false,&result));
  assert((result == std::vector<uint8_t>{0,255,255,255}));
  std::cout << "Vanilla SDR encoding, orientation and invalid-input tests passed\n";
}

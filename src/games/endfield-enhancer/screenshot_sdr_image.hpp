#pragma once
#include <algorithm>
#include <span>
#include "./screenshot_image.hpp"

namespace endfield::screenshots {
// Input contract for the separate vanilla-grade render: linear BT.709, with
// SDR white at 1, before RenderIntermediatePass encoding/scaling. This must
// never receive the existing HDR photo readback. No additional tonemapping.
inline bool EncodeVanillaSdr(std::span<const HalfPixel> pixels, int width, int height,
                             bool bottom_up, std::vector<uint8_t>* output) {
  if (!output || width <= 0 || height <= 0 || width > 16384 || height > 16384) return false;
  const size_t count = static_cast<size_t>(width) * height;
  if (count > 67108864 || pixels.size() != count) return false;
  // Reject invalid input before changing the caller's output.
  for (const auto& p : pixels) {
    if ((p.r & 0x7c00) == 0x7c00 || (p.g & 0x7c00) == 0x7c00
        || (p.b & 0x7c00) == 0x7c00) return false;
  }
  output->resize(count * 4);
  for (int y = 0; y < height; ++y) {
    const size_t source = static_cast<size_t>(bottom_up ? height - 1 - y : y) * width;
    for (int x = 0; x < width; ++x) {
      const auto p = DecodePixel(pixels[source + x]);
      const size_t dest = (static_cast<size_t>(y) * width + x) * 4;
      const std::array<float, 3> rgb{p.r, p.g, p.b};
      for (size_t c = 0; c < 3; ++c)
        (*output)[dest + c] = static_cast<uint8_t>(std::lround(SrgbEncode(std::clamp(rgb[c], 0.f, 1.f)) * 255.f));
      (*output)[dest + 3] = 255;
    }
  }
  return true;
}
}

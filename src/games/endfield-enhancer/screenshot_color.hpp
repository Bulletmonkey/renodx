#pragma once
#include <cstdint>

namespace endfield::screenshots {
// Snapshot decoded from the recognized HDR output shader's GPU constants.
struct ColorConfig {
  uint32_t size = sizeof(ColorConfig);
  uint32_t version = 1;
  float white_nits = 0, peak_nits = 0;
  float decoding = 0, gamma = 0, custom_color_space = 0;
  float output_encoding = 0;
  float tech_test_look = 0;
};
}

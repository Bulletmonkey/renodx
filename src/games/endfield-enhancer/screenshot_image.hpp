#pragma once
#include <array>
#include <cmath>
#include <cstring>
#include <fstream>
#include <limits>
#include "../../utils/png.hpp"
#include "./screenshot_color.hpp"
#include "./screenshot_profile.hpp"

namespace endfield::screenshots {
struct Pixel { float r, g, b, a; };
static_assert(sizeof(Pixel) == 16);

inline bool SupportedColor(const ColorConfig& c) {
  return c.size == sizeof(c) && c.version == 1
      && std::isfinite(c.white_nits) && c.white_nits >= 1.f && c.white_nits <= 10000.f
      && std::isfinite(c.peak_nits) && c.peak_nits >= c.white_nits && c.peak_nits <= 10000.f
      && (c.decoding == 0.f || c.decoding == 1.f || c.decoding == 2.f || c.decoding == 3.f)
      && (c.gamma == 0.f || c.gamma == 1.f || c.gamma == 2.f)
      && std::isfinite(c.tech_test_look) && c.tech_test_look >= 0.f && c.tech_test_look <= 1.f
      && c.custom_color_space == 0.f && (c.output_encoding == 4.f || c.output_encoding == 5.f);
}
inline float SrgbEncode(float v) {
  return v <= 0.0031308f ? 12.92f * v : 1.055f * std::pow(v, 1.f / 2.4f) - 0.055f;
}
inline float CaptureToLinear(float v, const ColorConfig& c) {
  if (!std::isfinite(v)) return 0.f;
  const float sign = std::signbit(v) ? -1.f : 1.f;
  v = std::abs(v);
  if (c.decoding == 1.f) v = v <= 0.04045f ? v / 12.92f : std::pow((v + 0.055f) / 1.055f, 2.4f);
  else if (c.decoding == 2.f || c.decoding == 3.f) v = std::pow(v, c.decoding == 2.f ? 2.2f : 2.4f);
  // Match draw::SwapChainPass / color::correct::GammaSafe, including extended range.
  if (c.gamma != 0.f) v = std::pow(SrgbEncode(v), c.gamma == 1.f ? 2.2f : 2.4f);
  return std::isfinite(v) ? sign * v : 0.f;
}
// Match others/blit_0xEF55D954.frag.slang before output gamma decoding.
inline std::array<float, 3> CalibrateCapture(const Pixel& p) {
  const float r = 1.00113f*p.r - 0.00212f*p.g - 0.01555f*p.b;
  const float g = -0.00031f*p.r + 1.00047f*p.g + 0.00113f*p.b;
  const float b = -0.00018f*p.r + 0.00445f*p.g + 1.03436f*p.b;
  const float l = std::cbrt(0.4122214708f*r + 0.5363325363f*g + 0.0514459929f*b);
  const float m = std::cbrt(0.2119034982f*r + 0.6806995451f*g + 0.1073969566f*b);
  const float s = std::cbrt(0.0883024619f*r + 0.2817188376f*g + 0.6299787005f*b);
  const float lab_l = 0.2104542553f*l + 0.7936177850f*m - 0.0040720468f*s;
  const float lab_a = 1.9779984951f*l - 2.4285922050f*m + 0.4505937099f*s + 0.0015f;
  const float lab_b = 0.0259040371f*l + 0.7827717662f*m - 0.8086757660f*s;
  float out_l = lab_l + 0.3963377774f*lab_a + 0.2158037573f*lab_b;
  float out_m = lab_l - 0.1055613458f*lab_a - 0.0638541728f*lab_b;
  float out_s = lab_l - 0.0894841775f*lab_a - 1.2914855480f*lab_b;
  out_l *= out_l*out_l; out_m *= out_m*out_m; out_s *= out_s*out_s;
  return {4.0767416621f*out_l - 3.3077115913f*out_m + 0.2309699292f*out_s,
          -1.2684380046f*out_l + 2.6097574011f*out_m - 0.3413193965f*out_s,
          -0.0041960863f*out_l - 0.7034186147f*out_m + 1.7076147010f*out_s};
}
inline uint16_t EncodePq(float nits) {
  const double y = std::pow(std::clamp(static_cast<double>(nits), 0.0, 10000.0) / 10000.0, 2610.0 / 16384.0);
  return static_cast<uint16_t>(std::lround(std::pow((3424.0 / 4096.0 + 2413.0 / 128.0 * y)
      / (1.0 + 2392.0 / 128.0 * y), 2523.0 / 32.0) * 65535.0));
}
inline bool ConvertPixels(std::span<const Pixel> pixels, uint32_t width, uint32_t height,
                          const ColorConfig& config, std::vector<uint16_t>* hdr, std::vector<uint8_t>* sdr) {
  if (!SupportedColor(config) || !width || !height || width > 16384 || height > 16384
      || static_cast<uint64_t>(width) * height > 67108864
      || pixels.size() != static_cast<size_t>(width) * height) return false;
  hdr->resize(pixels.size() * 3); sdr->resize(pixels.size() * 4);
  for (uint32_t y = 0; y < height; ++y) for (uint32_t x = 0; x < width; ++x) {
    // Unity ReadPixels/GetPixels starts at the bottom left; PNG starts at the top.
    const auto& p = pixels[static_cast<size_t>(height - 1 - y) * width + x];
    if (!std::isfinite(p.r) || !std::isfinite(p.g) || !std::isfinite(p.b)) return false;
    const size_t i = static_cast<size_t>(y) * width + x;
    const auto capture = config.tech_test_look > 0.5f ? CalibrateCapture(p) : std::array<float, 3>{p.r,p.g,p.b};
    const std::array<float, 3> rgb = {CaptureToLinear(capture[0], config), CaptureToLinear(capture[1], config), CaptureToLinear(capture[2], config)};
    // Display-linear BT.709 D65 -> BT.2020 D65, then absolute-nits PQ.
    const std::array<float, 3> wide = {
        0.627403896f * rgb[0] + 0.329283038f * rgb[1] + 0.043313066f * rgb[2],
        0.069097289f * rgb[0] + 0.919540395f * rgb[1] + 0.011362316f * rgb[2],
        0.016391439f * rgb[0] + 0.088013308f * rgb[1] + 0.895595253f * rgb[2]};
    // SDR companion: preserve shadows through 18% gray, then use a C1-continuous
    // Reinhard shoulder. A shared RGB scale preserves chromaticity and leaves
    // substantially more highlight separation than the former exponential rolloff.
    const float maximum = std::max({rgb[0], rgb[1], rgb[2], 0.f});
    const float mapped = maximum <= 0.18f ? maximum : 0.18f + 0.82f * (maximum - 0.18f) / (maximum - 0.18f + 0.82f);
    const float scale = maximum > 0.f ? mapped / maximum : 0.f;
    // Match SwapChainPass: one scale preserves highlight RGB ratios at the peak.
    const float hdr_scale = config.white_nits * config.peak_nits
        / std::max({wide[0] * config.white_nits, wide[1] * config.white_nits,
                    wide[2] * config.white_nits, config.peak_nits});
    for (size_t c = 0; c < 3; ++c) {
      (*hdr)[i * 3 + c] = EncodePq(std::max(wide[c] * hdr_scale, 0.f));
      (*sdr)[i * 4 + c] = static_cast<uint8_t>(std::lround(std::clamp(SrgbEncode(std::max(rgb[c] * scale, 0.f)), 0.f, 1.f) * 255.f));
    }
    (*sdr)[i * 4 + 3] = 255;
  }
  return true;
}
inline bool WriteHdrPng(const std::filesystem::path& path, uint32_t width, uint32_t height,
                        std::span<const uint16_t> pixels) {
  if (!width || !height || pixels.size() != static_cast<uint64_t>(width) * height * 3
      || pixels.size_bytes() > UINT_MAX) return false;
  {
    renodx::utils::png::internal::ScopedComInitialization com;
    if (!com.IsUsable()) return false;
    auto factory = renodx::utils::png::internal::CreateWicFactory();
    if (!factory) return false;
    Microsoft::WRL::ComPtr<IWICStream> stream;
    Microsoft::WRL::ComPtr<IWICBitmapEncoder> encoder;
    Microsoft::WRL::ComPtr<IWICBitmapFrameEncode> frame;
    if (FAILED(factory->CreateStream(&stream))
        || FAILED(stream->InitializeFromFilename(path.c_str(), GENERIC_WRITE))
        || FAILED(factory->CreateEncoder(renodx::utils::png::internal::WIC_CONTAINER_FORMAT_PNG_GUID, nullptr, &encoder))
        || FAILED(encoder->Initialize(stream.Get(), WICBitmapEncoderNoCache))
        || FAILED(encoder->CreateNewFrame(&frame, nullptr)) || FAILED(frame->Initialize(nullptr))
        || FAILED(frame->SetSize(width, height))) return false;
    // WIC's 48bpp RGB accepts host-endian uint16 and writes PNG network byte order.
    constexpr GUID rgb48 = {0x6fddc324,0x4e03,0x4bfe,{0xb1,0x85,0x3d,0x77,0x76,0x8d,0xc9,0x15}};
    auto format = rgb48;
    if (FAILED(frame->SetPixelFormat(&format)) || !InlineIsEqualGUID(format, rgb48)
        || FAILED(frame->WritePixels(height, width * 6, static_cast<UINT>(pixels.size_bytes()),
             reinterpret_cast<BYTE*>(const_cast<uint16_t*>(pixels.data()))))
        || FAILED(frame->Commit()) || FAILED(encoder->Commit())) return false;
  }
  std::ifstream input(path, std::ios::binary);
  std::vector<uint8_t> bytes((std::istreambuf_iterator<char>(input)), {});
  input.close();
  constexpr std::array<uint8_t, 8> signature = {137,80,78,71,13,10,26,10};
  if (bytes.size() < 33 || !std::equal(signature.begin(), signature.end(), bytes.begin())
      || std::memcmp(bytes.data() + 12, "IHDR", 4) || bytes[24] != 16 || bytes[25] != 2) return false;
  // Match ReShade's HDR PNG metadata, including its libjxl tone-mapping ICC.
  // Remove WIC's automatic SDR tags before installing the HDR description.
  std::vector<uint8_t> tagged(bytes.begin(), bytes.begin() + 33);
  tagged.insert(tagged.end(), kHdrMetadataChunks.begin(), kHdrMetadataChunks.end());
  for (size_t offset = 33; offset < bytes.size();) {
    if (bytes.size() - offset < 12) return false;
    const size_t length = (uint32_t(bytes[offset]) << 24) | (uint32_t(bytes[offset + 1]) << 16)
        | (uint32_t(bytes[offset + 2]) << 8) | bytes[offset + 3];
    if (length > bytes.size() - offset - 12) return false;
    const auto* type = bytes.data() + offset + 4;
    if (std::memcmp(type, "sBIT", 4) && std::memcmp(type, "gAMA", 4) && std::memcmp(type, "sRGB", 4)
        && std::memcmp(type, "cHRM", 4) && std::memcmp(type, "iCCP", 4) && std::memcmp(type, "cICP", 4)) {
      tagged.insert(tagged.end(), bytes.begin() + offset, bytes.begin() + offset + length + 12);
    }
    offset += length + 12;
  }
  bytes = std::move(tagged);
  std::ofstream output(path, std::ios::binary | std::ios::trunc);
  output.write(reinterpret_cast<const char*>(bytes.data()), bytes.size());
  output.close();
  return !output.fail();
}
}

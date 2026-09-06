#pragma once

#include <cstdint>
#include <cstring>
#include <span>
#include <vector>

namespace endfield::ssr_resolve {

// Exact Endfield 1.5 Vulkan 562EDD85 baseline, captured from DevKit.
// Patch the original module instead of reconstructing its shader ABI or math.
// Vanilla: color_uv = hit_uv + (pixel % 2) / output_size.
// Full-resolution hit UVs already identify each output pixel; their offset is 0.
// Keep the original offset when the input is half resolution (including a
// native-hook failure). No roughness, confidence, or color math is changed.
inline std::vector<uint32_t> ReadVerifiedSpirv(
    std::span<const uint8_t> original, size_t size, uint32_t hash, uint32_t bound) {
  if (original.size() != size) return {};
  uint32_t crc = 0xFFFFFFFFu;
  for (uint8_t byte : original) {
    crc ^= byte;
    for (unsigned bit = 0; bit < 8; ++bit) {
      crc = (crc >> 1) ^ (0xEDB88320u & (0u - (crc & 1u)));
    }
  }
  if (~crc != hash) return {};
  std::vector<uint32_t> words(original.size() / sizeof(uint32_t));
  std::memcpy(words.data(), original.data(), original.size());
  if (words[0] != 0x07230203u || words[3] != bound) return {};
  return words;
}

inline std::vector<uint32_t> PatchFullResolutionResolve(std::span<const uint8_t> original) {
  auto words = ReadVerifiedSpirv(original, 5240, 0x562EDD85u, 81);
  if (words.empty()) return {};

  std::vector<uint32_t> patched(words.begin(), words.begin() + 5);
  patched[3] = 91;  // Original IDs end at 80; new IDs 81 through 90.
  patched.insert(patched.end(), {0x00020011, 50});  // OpCapability ImageQuery.
  bool replaced = false;
  for (size_t i = 5; i < words.size();) {
    const uint32_t count = words[i] >> 16;
    if (count == 0 || i + count > words.size()) return {};
    if ((words[i] & 0xFFFF) == 54) {  // Before OpFunction: types and zero offset.
      patched.insert(patched.end(), {
          0x00020014, 81,              // OpTypeBool
          0x00040017, 82, 81, 2,       // OpTypeVector bool2
          0x0003002E, 26, 83});        // OpConstantNull float2
    }
    if (words[i] == 0x00050081 && words[i + 2] == 66) {
      // IDs 56 = sampled hit-UV image, 13 = output image variable,
      // 30 = integer LOD 0, 31 = uint2, 65 = original parity offset.
      patched.insert(patched.end(), {
          0x00050067, 31, 84, 56, 30,  // OpImageQuerySizeLod hit_uv, 0
          0x0004003D, 12, 85, 13,      // OpLoad output image
          0x00040068, 31, 86, 85,      // OpImageQuerySize output
          0x000500AA, 82, 87, 84, 86,  // OpIEqual extents
          0x0004009B, 81, 88, 87,      // OpAll (both dimensions equal)
          0x00050050, 82, 90, 88, 88,  // OpCompositeConstruct bool2 (SPIR-V 1.3)
          0x000600A9, 26, 89, 90, 83, 65,  // OpSelect zero / vanilla offset
          0x00050081, 26, 66, 60, 89});    // Original OpFAdd, corrected offset
      replaced = true;
    } else {
      patched.insert(patched.end(), words.begin() + i, words.begin() + i + count);
    }
    i += count;
  }
  return replaced ? patched : std::vector<uint32_t>{};
}

// Paired Improved SSR override. Identical to the tested C465A053 candidate:
// Full/M=6 only, remove up to 1/3 mip of excess physical filtering. Preserve
// low mips and taper at the cap, where the original metadata lost information.
// Requires the base addon's Improved SSR ON (its metadata remap is upstream).
inline std::vector<uint32_t> PatchImprovedBlur(std::span<const uint8_t> original) {
  auto words = ReadVerifiedSpirv(original, 9044, 0xC465A053u, 246);
  if (words.empty()) return {};
  std::vector<uint32_t> patched(words.begin(), words.begin() + 5);
  patched[3] = 264;
  unsigned replaced = 0;
  for (size_t i = 5; i < words.size();) {
    const uint32_t count = words[i] >> 16;
    if (count == 0 || i + count > words.size()) return {};
    if ((words[i] & 0xFFFF) == 54) {
      patched.insert(patched.end(), {
          0x00040017, 246, 70, 2,
          0x0004002B, 23, 247, 0x40C00000,  // 6
          0x0004002B, 23, 248, 0x3EAAAAAB}); // 1/3
    }
    if (words[i] == 0x00050085 && words[i + 2] == 107) {
      patched.insert(patched.end(), {
          0x00050085, 23, 249, 104, 106,
          0x00050041, 68, 250, 5, 40,
          0x0004003D, 37, 251, 250,
          0x0007004F, 31, 252, 251, 251, 0, 1,
          0x0007004F, 31, 253, 85, 85, 0, 1,
          0x000500B4, 246, 254, 252, 253,
          0x0004009B, 70, 255, 254,
          0x000500B4, 70, 256, 106, 247,
          0x000500A7, 70, 257, 255, 256,
          0x00050083, 23, 258, 106, 249,
          0x0007000C, 23, 259, 1, 80, 258, 25,
          0x0007000C, 23, 260, 1, 79, 248, 259,
          0x00050083, 23, 261, 249, 260,
          0x0007000C, 23, 262, 1, 80, 24, 261,
          0x0007000C, 23, 263, 1, 79, 249, 262,
          0x000600A9, 23, 107, 257, 263, 249});
      ++replaced;
    } else {
      patched.insert(patched.end(), words.begin() + i, words.begin() + i + count);
    }
    i += count;
  }
  return replaced == 1 ? patched : std::vector<uint32_t>{};
}

// Installed RenoDX Improved SSR 4187AEA7, byte-verified against its addon.
// Patch only the Improved SSR branch, retaining the existing injection ABI.
// Unknown addon versions fail closed; never substitute a guessed shared.h.
inline std::vector<uint32_t> PatchImprovedBlend(std::span<const uint8_t> original) {
  auto words = ReadVerifiedSpirv(original, 8132, 0xBC3F8D2Eu, 166);
  if (words.empty()) return {};
  std::vector<uint32_t> patched(words.begin(), words.begin() + 5);
  patched[3] = 179;
  patched.insert(patched.end(), {0x00020011, 50}); // ImageQuery
  unsigned replaced = 0;
  for (size_t i = 5; i < words.size();) {
    const uint32_t count = words[i] >> 16;
    if (count == 0 || i + count > words.size()) return {};
    if ((words[i] & 0xFFFF) == 54) {
      patched.insert(patched.end(), {
          0x00040017, 166, 56, 2,
          0x0004002B, 28, 167, 0x40C00000,
          0x0004002B, 28, 168, 0x3FAAAAAB}); // 4/3
    }
    const auto start = patched.size();
    patched.insert(patched.end(), words.begin() + i, words.begin() + i + count);
    if (words[i] == 0x000200F8 && words[i + 1] == 118) {
      patched.insert(patched.end(), {
          0x00050067, 33, 169, 106, 36,  // metadata extent
          0x0004003D, 60, 170, 11,
          0x00040068, 33, 171, 170,      // output extent
          0x000500AA, 166, 172, 169, 171,
          0x0004009B, 56, 173, 172,
          0x000500B4, 56, 174, 112, 167,
          0x000500A7, 56, 175, 173, 174,
          0x00050083, 28, 176, 113, 168,
          0x0007000C, 28, 177, 1, 40, 176, 48, // FMax(m - 4/3, 0)
          0x000600A9, 28, 178, 175, 177, 113});
      ++replaced;
    } else if ((words[i] == 0x000500B8 && words[i + 2] == 120)
               || (words[i] == 0x00050083 && words[i + 2] == 125)) {
      patched[start + 3] = 178;
      ++replaced;
    } else if (words[i] == 0x0006000C && words[i + 2] == 124) {
      patched.back() = 178;
      ++replaced;
    }
    i += count;
  }
  return replaced == 4 ? patched : std::vector<uint32_t>{};
}

}  // namespace endfield::ssr_resolve

#include "../uncensor.hpp"
#include "bokeh_api_stubs.hpp"
#include <cassert>
#include <filesystem>
#include <fstream>
#include <iostream>

// Map PE sections as data only. Never load/execute the supplied game DLLs.
static void CheckModule(const std::filesystem::path& path, bool unity) {
  std::ifstream stream(path, std::ios::binary | std::ios::ate);
  assert(stream);
  std::vector<uint8_t> file(static_cast<size_t>(stream.tellg()));
  stream.seekg(0);
  stream.read(reinterpret_cast<char*>(file.data()), file.size());
  assert(stream);
  const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(file.data());
  const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS64*>(file.data() + dos->e_lfanew);
  auto* base = static_cast<uint8_t*>(VirtualAlloc(nullptr, nt->OptionalHeader.SizeOfImage,
                                                MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE));
  assert(base);
  std::memcpy(base, file.data(), nt->OptionalHeader.SizeOfHeaders);
  const auto* sections = IMAGE_FIRST_SECTION(nt);
  for (unsigned i = 0; i < nt->FileHeader.NumberOfSections; ++i) {
    assert(uint64_t(sections[i].PointerToRawData) + sections[i].SizeOfRawData <= file.size());
    assert(uint64_t(sections[i].VirtualAddress) + sections[i].SizeOfRawData <= nt->OptionalHeader.SizeOfImage);
    std::memcpy(base + sections[i].VirtualAddress, file.data() + sections[i].PointerToRawData,
                sections[i].SizeOfRawData);
  }
  auto* mapped_nt = reinterpret_cast<IMAGE_NT_HEADERS64*>(base + dos->e_lfanew);
  auto validate = [&] {
    return unity ? endfield::enhancer::detail::ValidateNativeSsrRouter(
                       reinterpret_cast<HMODULE>(base), base + 0x4A7D70)
                 : endfield::uncensor::ValidateTargets(base, base + 0x3BE6640, base + 0x3569AF0);
  };
  assert(validate()); // Also proves SSR no longer depends on this test EXE's identity.
  ++mapped_nt->FileHeader.TimeDateStamp;
  assert(!validate());
  --mapped_nt->FileHeader.TimeDateStamp;
  const auto image_size = mapped_nt->OptionalHeader.SizeOfImage;
  mapped_nt->OptionalHeader.SizeOfImage = 0x1000;
  assert(!validate());
  mapped_nt->OptionalHeader.SizeOfImage = image_size;
  const size_t entry = unity ? 0x4A7D70 : 0x3BE6640;
  base[entry] ^= 1;
  assert(!validate());
  base[entry] ^= 1;
  if (unity) {
    base[0x1AF21D] ^= 1; // Full-depth ABI mismatch must still fail closed.
    assert(!validate());
    base[0x1AF21D] ^= 1;
    assert(!endfield::enhancer::detail::ValidateNativeSsrRouter(
        reinterpret_cast<HMODULE>(base), base + entry + 1));
  } else {
    base[0x3569AF0] ^= 1;
    assert(!validate());
    base[0x3569AF0] ^= 1;
    assert(!endfield::uncensor::ValidateTargets(base, base + entry + 1, base + 0x3569AF0));
  }
  assert(validate());
  VirtualFree(base, 0, MEM_RELEASE);
  std::cout << path << ": actual runtime validator accepts; mutations rejected\n";
}
int main(int argc, char** argv) {
  assert(argc > 1);
  for (int i = 1; i < argc; ++i) {
    CheckModule(std::filesystem::path(argv[i]) / "UnityPlayer.dll", true);
    CheckModule(std::filesystem::path(argv[i]) / "GameAssembly.dll", false);
  }
}

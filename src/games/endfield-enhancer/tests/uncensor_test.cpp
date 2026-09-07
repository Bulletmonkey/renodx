#include "../uncensor.hpp"
#include <cassert>
#include <iostream>
#include "bokeh_api_stubs.hpp"

static int calls = 0;
static endfield::enhancer::detail::MethodInfo original_info{};
static void* expected_camera = reinterpret_cast<void*>(0x1234);
__declspec(noinline) static void Original(void* camera, endfield::enhancer::detail::MethodInfo* method) {
  assert(camera == expected_camera && method == &original_info);
  calls = calls * 10 + 1;
}
static void Clear(void* camera, endfield::enhancer::detail::MethodInfo* method) {
  assert(camera == expected_camera && method == endfield::uncensor::clear_method);
  calls = calls * 10 + 2;
}
int main() {
  using namespace endfield::uncensor;
  endfield::enhancer::detail::MethodInfo clear{reinterpret_cast<void*>(Clear)};
  process_pitch = Original;
  clear_method = &clear;
  active = false;
  HookedProcessPitch(expected_camera, &original_info);
  assert(calls == 1);
  calls = 0;
  active = true;
  HookedProcessPitch(expected_camera, &original_info);
  assert(calls == 12);
  calls = 0;
  endfield::enhancer::detail::shutting_down = true;
  HookedProcessPitch(expected_camera, &original_info);
  assert(calls == 1);
  endfield::enhancer::detail::shutting_down = false;
  calls = 0;
  expected_camera = nullptr;
  HookedProcessPitch(nullptr, &original_info);
  assert(calls == 1);
  Shutdown();
  Shutdown();
  assert(!active);
  assert(!ValidateTargets(nullptr, nullptr, nullptr));
  auto* base = static_cast<uint8_t*>(VirtualAlloc(nullptr, 0xF7CB000, MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE));
  assert(base);
  auto* dos = reinterpret_cast<IMAGE_DOS_HEADER*>(base);
  dos->e_magic = IMAGE_DOS_SIGNATURE;
  dos->e_lfanew = 0x80;
  auto* nt = reinterpret_cast<IMAGE_NT_HEADERS64*>(base + 0x80);
  nt->Signature = IMAGE_NT_SIGNATURE;
  nt->FileHeader.Machine = IMAGE_FILE_MACHINE_AMD64;
  nt->FileHeader.TimeDateStamp = 0x6A870DA4;
  nt->FileHeader.NumberOfSections = 1;
  nt->FileHeader.SizeOfOptionalHeader = sizeof(IMAGE_OPTIONAL_HEADER64);
  nt->OptionalHeader.Magic = IMAGE_NT_OPTIONAL_HDR64_MAGIC;
  nt->OptionalHeader.SizeOfImage = 0xF7CB000;
  auto* section = IMAGE_FIRST_SECTION(nt);
  section->VirtualAddress = 0xAB1000;
  section->Misc.VirtualSize = 0x4000000;
  section->Characteristics = IMAGE_SCN_MEM_EXECUTE;
  std::memcpy(base + 0x3BE6640, kPitchEntry, sizeof(kPitchEntry));
  std::memcpy(base + 0x3569AF0, kClearEntry, sizeof(kClearEntry));
  assert(ValidateTargets(base, base + 0x3BE6640, base + 0x3569AF0));
  nt->OptionalHeader.SizeOfImage = 0xF7CC000;
  assert(ValidateTargets(base, base + 0x3BE6640, base + 0x3569AF0));
  nt->OptionalHeader.SizeOfImage = 0xF7CD000;
  assert(!ValidateTargets(base, base + 0x3BE6640, base + 0x3569AF0));
  nt->OptionalHeader.SizeOfImage = 0xF7CB000;
  assert(!ValidateTargets(base, base + 0x3BE6641, base + 0x3569AF0));
  ++nt->FileHeader.TimeDateStamp;
  assert(!ValidateTargets(base, base + 0x3BE6640, base + 0x3569AF0));
  --nt->FileHeader.TimeDateStamp;
  base[0x3BE6640] = 0xE9;
  assert(!ValidateTargets(base, base + 0x3BE6640, base + 0x3569AF0));
  base[0x3BE6640] = kPitchEntry[0];
  section->Characteristics = 0;
  assert(!ValidateTargets(base, base + 0x3BE6640, base + 0x3569AF0));
  VirtualFree(base, 0, MEM_RELEASE);
  expected_camera = reinterpret_cast<void*>(0x1234);
  calls = 0;
  active = true;
  process_pitch = Original;
  pitch_entry = reinterpret_cast<void*>(Original);
  std::array<uint8_t, 19> original_bytes{};
  std::memcpy(original_bytes.data(), pitch_entry, original_bytes.size());
  assert(UpdateHook(true));
  installed = true;
  std::memcpy(installed_entry.data(), pitch_entry, installed_entry.size());
  Original(expected_camera, &original_info);
  assert(calls == 12);
  Shutdown();
  assert(!installed && !active);
  assert(std::memcmp(original_bytes.data(), pitch_entry, original_bytes.size()) == 0);
  calls = 0;
  Original(expected_camera, &original_info);
  assert(calls == 1);
  Shutdown();
  process_pitch = nullptr;
  assert(!UpdateHook(true));
  std::cout << "Uncensor callback and compatibility tests passed\n";
}

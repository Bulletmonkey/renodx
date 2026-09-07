#include "../ssr_depth.hpp"
#include <Windows.h>
#include <array>
#include <cassert>
#include <cstdio>
#include <thread>

extern "C" __declspec(dllexport) void ReShadeLogMessage(void*, int, const char*) {}
using namespace endfield::enhancer::ssr_depth;

struct PyramidInput {
  int32_t width = 2560, height = 1440;
  uint64_t source = 0x123400000031;
};
static std::array<uint8_t, 0x100> ray = {};
static void* graph = reinterpret_cast<void*>(0x5678);
static constexpr uint64_t kPyramid = 0xABCD00000041;
static constexpr uint64_t kHistory = 0xABCD00000051;
static unsigned reads = 0, registrations = 0;
static uint64_t expected_depth = kPyramid;
static bool read_fault = false, registration_fault = false, mutate = false;

static void* Build(void* output, void* g, int32_t pass, void* input) {
  assert(g == graph && pass == 7);
  assert(static_cast<PyramidInput*>(input)->width == 2560);
  *static_cast<uint64_t*>(output) = kPyramid;
  return output;
}
static void Read(void* g, int32_t pass, void* unused, const int32_t* mip, const uint64_t* handle) {
  assert(g == graph && pass == 9 && unused == nullptr && *mip == -1);
  assert(*handle == depth.source);
  assert(*reinterpret_cast<uint64_t*>(ray.data() + 0x50) == kPyramid);
  if (read_fault) RaiseException(0xE1234567, 0, 0, nullptr);
  ++reads;
}
static void Register(void* g, int32_t pass, void* input) {
  assert(g == graph && pass == 9 && input == ray.data());
  assert(*reinterpret_cast<uint64_t*>(ray.data() + 0x50) == expected_depth);
  assert(*reinterpret_cast<uint64_t*>(ray.data() + 0x38) == kHistory);
  if (expected_depth != kPyramid) assert(reads > 0);
  ++registrations;
  if (mutate) *reinterpret_cast<uint64_t*>(ray.data() + 0x50) = 0x9999;
  if (registration_fault) RaiseException(0xE1234567, 0, 0, nullptr);
}
static void RegisterLow(void* g, int32_t pass, void* input) { Register(g, pass, input); }
static void TestFault() {
  bool caught = false;
  __try {
    HookedRegisterFull(graph, 9, ray.data());
  } __except (GetExceptionCode() == 0xE1234567 ? EXCEPTION_EXECUTE_HANDLER : EXCEPTION_CONTINUE_SEARCH) {
    caught = true;
  }
  assert(caught && *reinterpret_cast<uint64_t*>(ray.data() + 0x50) == kPyramid);
}
int main() {
  reshade::internal::get_reshade_module_handle(GetModuleHandleW(nullptr));
  reshade::internal::get_current_module_handle(GetModuleHandleW(nullptr));
  build_pyramid = Build;
  add_read = Read;
  register_full = Register;
  register_low = RegisterLow;
  *reinterpret_cast<uint64_t*>(ray.data() + 0x38) = kHistory;
  *reinterpret_cast<uint64_t*>(ray.data() + 0x50) = kPyramid;
  ray[0x90] = 1;  // Captured V2 path enables upsampling, not wetness.
  PyramidInput input;
  uint64_t output = 0;
  Context context{graph, 2560, 1440};
  assert(HookedBuildPyramid(&output, graph, 7, &input) == &output);
  assert(output == kPyramid && depth.source == input.source);
  HookedRegisterFull(graph, 9, ray.data());  // Vanilla: no context, no extra read.
  assert(reads == 0);
  active = &context;
  expected_depth = input.source;
  const auto baseline = ray;
  HookedRegisterFull(graph, 9, ray.data());
  HookedRegisterLow(graph, 9, ray.data());
  assert(reads == 2 && observed == 3 && ray == baseline);
  registration_fault = true;
  TestFault();  // Native fault restores all 64 bits; previous history is untouched.
  registration_fault = false;
  read_fault = true;
  const unsigned before = registrations;
  TestFault();  // Failed graph registration never records a redirected dispatch.
  assert(registrations == before);
  read_fault = false;
  expected_depth = kPyramid;
  const unsigned old_reads = reads;
  ++epoch;
  HookedRegisterFull(graph, 9, ray.data());  // Previous-frame handle is rejected.
  assert(reads == old_reads);
  HookedBuildPyramid(&output, graph, 7, &input);
  context.width = 1920;
  HookedRegisterFull(graph, 9, ray.data());
  context.width = 2560;
  context.graph = nullptr;
  HookedRegisterFull(graph, 9, ray.data());
  context.graph = graph;
  depth.pyramid = 0x55;
  HookedRegisterFull(graph, 9, ray.data());
  depth.pyramid = kPyramid;
  // Only the proven upsampled, non-importance-sampled pair is redirected.
  for (const auto flags : {std::array<uint8_t, 2>{0, 0}, {0, 1}, {1, 1}}) {
    ray[0x90] = flags[0];
    ray[0xB8] = flags[1];
    HookedRegisterFull(graph, 9, ray.data());
    HookedRegisterLow(graph, 9, ray.data());
  }
  ray[0x90] = 1;
  ray[0xB8] = 0;
  failed = true;
  HookedRegisterFull(graph, 9, ray.data());
  failed = false;
  assert(reads == old_reads && ray == baseline);
  std::thread other([&] {
    assert(active == nullptr && depth.graph == nullptr);
    active = &context;
    HookedRegisterFull(graph, 9, ray.data());  // Other graph thread cannot reuse our handles.
  });
  other.join();
  assert(reads == old_reads);
  expected_depth = input.source;
  mutate = true;
  HookedRegisterFull(graph, 9, ray.data());
  assert(*reinterpret_cast<uint64_t*>(ray.data() + 0x50) == 0x9999);
  assert(*reinterpret_cast<uint64_t*>(ray.data() + 0x38) == kHistory);
  std::puts("SSR depth: full/low, vanilla, dependencies, epoch, graph, dimensions, variants, thread isolation, faults and restoration passed.");
}

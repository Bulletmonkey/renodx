#include <Windows.h>
#include <cassert>
#include <cstdio>
#include <crtdbg.h>
#include <limits>
#include "../enhancer.hpp"

extern "C" __declspec(dllexport) void ReShadeRegisterEvent(reshade::addon_event, void*) {}
extern "C" __declspec(dllexport) void ReShadeUnregisterEvent(reshade::addon_event, void*) {}
extern "C" __declspec(dllexport) void ReShadeLogMessage(void*, int, const char*) {}

using namespace endfield::enhancer;
using namespace endfield::enhancer::detail;
struct Quality {
  int dof_quality = 2;
  uint8_t scale_adjust = 1;
  float max_radius = 4.f;
};
struct DoF {
  float scale = 0.5f;
  uint8_t enable = 0;
  uint8_t physical = 1;
  uint8_t debug = 0x7f;
  int32_t camera = 123;
  float focus = 0.f, aperture = 0.f;
  float near_start = 0.f, near_end = 0.f, near_radius = 0.f;
  float far_start = 0.f, far_end = 0.f, far_radius = 0.f;
  float temporal = 0.f;
};
struct Render { void* gtao = nullptr; uint8_t paused = 0; DoF* dof; };
struct Before { Quality* settings; };
struct NativeCamera { void* vtable = nullptr; int32_t id = 456; };
static NativeCamera live_camera;
static void* current_camera = &live_camera;
static unsigned camera_lookups = 0;
static bool ObjectExists(int32_t id) {
  ++camera_lookups;
  return id == 456 || id == 789;
}
static unsigned calls = 0;
static Quality* expected = nullptr;
static bool check_overrides = false;
static bool native_fault = false;
static bool check_manual = false;
static float expected_manual_scale = 1.f;
static float expected_scale = 1.f;
static int expected_method = 2;
static float expected_near = 2.f, expected_far = 7.f;
static void NativeRender(int64_t, void* render, void* before, void*, void*, void*) {
  ++calls;
  if (check_overrides) {
    assert(static_cast<Before*>(before)->settings == expected);
    assert(expected->dof_quality == expected_method);
    assert(expected->scale_adjust == 0);
    assert(static_cast<Render*>(render)->dof->scale == expected_scale);
  }
  if (check_manual) {
    const auto* dof = static_cast<Render*>(render)->dof;
    assert(dof->enable == (expected_near > 0.f || expected_far > 0.f));
    assert(dof->physical == 0 && dof->camera == live_camera.id && expected->dof_quality == 0);
    assert(dof->debug == 0);
    assert(dof->focus == 20.f && dof->aperture == 16.f);
    assert(dof->near_start == 5.f && dof->near_end == 15.f && dof->near_radius == expected_near);
    assert(dof->far_start == 25.f && dof->far_end == 40.f && dof->far_radius == expected_far);
    assert(dof->temporal == 0.5f && dof->scale == expected_manual_scale);
    assert(expected->max_radius == 10.f);
  }
  if (native_fault) RaiseException(0xE1234567, 0, 0, nullptr);
}
struct SsrInput {
  uint8_t enable = 1, flags[3] = {};
  int32_t width = 2560, height = 1440, output_width = 2560, output_height = 1440;
  int32_t mode = 2;
  uint8_t* settings = nullptr;
  void* volume = nullptr;
  uint8_t* debug = nullptr;
};
static_assert(offsetof(SsrInput, mode) == 0x14);
static_assert(offsetof(SsrInput, settings) == 0x18);
static_assert(offsetof(SsrInput, debug) == 0x28);
static unsigned ssr_calls = 0;
static int expected_ssr_mode = 2;
static bool expected_ssr_depth = false;
static bool mutate_ssr_mode = false;
struct MockSsrHistory {
  int32_t width = 0;
  unsigned resets = 0;
};
static MockSsrHistory ssr_camera, ssr_other_camera;
static MockSsrHistory* current_ssr_camera = &ssr_camera;
static bool check_ssr_history = false;
static bool reset_ssr_fault = false;
static void NativeResetSsr(void* self) {
  assert(self == current_ssr_camera);
  if (reset_ssr_fault) RaiseException(0xE1234567, 0, 0, nullptr);
  auto* history = static_cast<MockSsrHistory*>(self);
  history->width = 0;
  ++history->resets;
}
static void NativeSsr(void* self, void* graph, int32_t pass,
                      void* input, void* output, bool wetness) {
  ++ssr_calls;
  assert(self == current_ssr_camera);
  assert(graph == reinterpret_cast<void*>(0x5678));
  assert(pass == 99 && wetness);
  auto* data = static_cast<SsrInput*>(input);
  assert(data->mode == expected_ssr_mode);
  if (expected_ssr_depth) {
    assert(ssr_depth::active != nullptr && ssr_depth::active->graph == graph);
    assert(ssr_depth::active->width == data->width && ssr_depth::active->height == data->height);
  } else {
    assert(ssr_depth::active == nullptr);
  }
  *static_cast<int*>(output) = data->mode == 4 ? data->width : data->width / 2;
  if (check_ssr_history && data->enable) {
    assert(current_ssr_camera->width == 0 || current_ssr_camera->width == *static_cast<int*>(output));
    current_ssr_camera->width = *static_cast<int*>(output);
  }
  if (mutate_ssr_mode) data->mode = 9;
  if (native_fault) RaiseException(0xE1234567, 0, 0, nullptr);
}
static int CallSsr(SsrInput* input) {
  int result = 0;
  HookedRenderSsr(current_ssr_camera, reinterpret_cast<void*>(0x5678),
                  99, input, &result, true);
  return result;
}
static void TestSsrFault(SsrInput* input) {
  bool propagated = false;
  const auto* previous_context = ssr_depth::active;
  __try { CallSsr(input); }
  __except (GetExceptionCode() == 0xE1234567 ? EXCEPTION_EXECUTE_HANDLER : EXCEPTION_CONTINUE_SEARCH) {
    propagated = true;
  }
  assert(propagated && input->mode == 2);
  assert(ssr_depth::active == previous_context);
}
static void Call(Render* render, Before* before) {
  HookedRenderPath(0, render, before, current_camera, nullptr, nullptr);
}
static void TestNativeFault(Render* render, Before* before) {
  bool propagated = false;
  __try { Call(render, before); }
  __except (GetExceptionCode() == 0xE1234567 ? EXCEPTION_EXECUTE_HANDLER : EXCEPTION_CONTINUE_SEARCH) {
    propagated = true;
  }
  assert(propagated);
}
int main() {
  _set_error_mode(_OUT_TO_STDERR);
  _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_MODE_FILE);
  _CrtSetReportFile(_CRT_ASSERT, _CRTDBG_FILE_STDERR);
  _set_abort_behavior(0, _WRITE_ABORT_MSG | _CALL_REPORTFAULT);
  reshade::internal::get_reshade_module_handle(GetModuleHandleW(nullptr));
  reshade::internal::get_current_module_handle(GetModuleHandleW(nullptr));
  render_path = NativeRender;
  native_camera_instance_id_offset = offsetof(NativeCamera, id);
  object_with_instance_id_exists = ObjectExists;
  render_params_gtao_offset = offsetof(Render, gtao);
  render_params_frame_generation_pause_offset = offsetof(Render, paused);
  render_params_dof_offset = offsetof(Render, dof);
  before_culling_settings_offset = offsetof(Before, settings);
  dof_quality_offset = offsetof(Quality, dof_quality);
  dof_scale_adjust_offset = offsetof(Quality, scale_adjust);
  dof_scale_offset = offsetof(DoF, scale);
  dof_manual = {
      offsetof(DoF, enable), offsetof(DoF, camera), offsetof(DoF, physical),
      offsetof(DoF, focus), offsetof(DoF, aperture),
      offsetof(DoF, near_start), offsetof(DoF, near_end), offsetof(DoF, near_radius),
      offsetof(DoF, far_start), offsetof(DoF, far_end), offsetof(DoF, far_radius),
      offsetof(DoF, temporal), offsetof(Quality, max_radius)};
  dof_manual.debug = offsetof(DoF, debug);
  dof_quality_ready = dof_resolution_ready = true;
  Quality quality;
  DoF dof;
  Render render{nullptr, 0, &dof};
  Before before{&quality};
  expected = &quality;

  // All defaults are no-ops, even if the unused pre-culling pointer is invalid.
  Call(&render, reinterpret_cast<Before*>(1));
  assert(!quality_access_failed && calls == 1 && camera_lookups == 0);
  dof_resolution_override = true;
  check_overrides = true;
  Call(&render, &before);
  assert(quality.dof_quality == 2 && quality.scale_adjust == 1 && dof.scale == 0.5f);
  expected_scale = 2.f;
  dof_resolution_override = 2.f;
  Call(&render, &before);
  assert(quality.scale_adjust == 1 && dof.scale == 0.5f);
  expected_scale = dof_resolution_override = 1.f;

  // The next camera supplies different settings; no prior address is retained.
  Quality other;
  DoF other_dof{0.25f};
  before.settings = expected = &other;
  render.dof = &other_dof;
  Call(&render, &before);
  assert(other_dof.scale == 0.25f && dof.scale == 0.5f);
  native_fault = true;
  TestNativeFault(&render, &before);
  assert(other_dof.scale == 0.25f);
  native_fault = false;
  check_overrides = false;

  // Missing fields and optional DoF/settings blocks must be harmless.
  dof_quality_ready = dof_resolution_ready = false;
  Call(&render, reinterpret_cast<Before*>(1));
  assert(!quality_access_failed);
  dof_quality_ready = dof_resolution_ready = true;
  before.settings = nullptr;
  render.dof = reinterpret_cast<DoF*>(1);
  Call(&render, &before);
  before.settings = &other;
  render.dof = nullptr;
  Call(&render, &before);
  assert(other.scale_adjust == 1 && !quality_access_failed);

  // A bad active block fails closed for subsequent frames.
  Call(&render, reinterpret_cast<Before*>(1));
  assert(quality_access_failed);
  Call(&render, reinterpret_cast<Before*>(1));
  assert(quality_access_failed);

  // Force DoF always selects HQ Near + Far, and every manual write is restored.
  quality_access_failed = false;
  dof_force_ready = true;
  before.settings = expected = &quality;
  render.dof = &dof;
  dof_resolution_override = true;
  dof_force_override = true;
  dof_focus_override = 20.f;
  dof_near_override = 2.f;
  dof_far_override = 7.f;
  expected_method = 0;
  check_overrides = check_manual = true;
  {
    Call(&render, &before);
    assert(dof.enable == 0 && dof.physical == 1 && dof.focus == 0.f && dof.aperture == 0.f);
    assert(dof.near_start == 0.f && dof.near_end == 0.f && dof.near_radius == 0.f);
    assert(dof.far_start == 0.f && dof.far_end == 0.f && dof.far_radius == 0.f);
    assert(dof.temporal == 0.f && dof.scale == 0.5f && quality.max_radius == 4.f);
    assert(quality.dof_quality == 2);
    assert(dof.debug == 0x7f);
  }
  check_overrides = false;
  dof_resolution_override = expected_manual_scale = 2.f;
  Call(&render, &before);
  assert(dof.scale == 0.5f && quality.scale_adjust == 1 && dof.debug == 0x7f);
  for (const auto radii : {std::pair{0.f, 7.f}, std::pair{2.f, 0.f}, std::pair{0.f, 0.f}}) {
    expected_near = dof_near_override = radii.first;
    expected_far = dof_far_override = radii.second;
    const DoF original = dof;
    Call(&render, &before);
    assert(std::memcmp(&dof, &original, sizeof(dof)) == 0);
    assert(quality.dof_quality == 2);
  }
  expected_near = dof_near_override = 2.f;
  expected_far = dof_far_override = 7.f;
  dof_resolution_override = false;
  expected_manual_scale = 0.5f;
  // Inactive parameters come from an uncleared frame arena. Even a valid-
  // looking scale/debug byte must not affect forced DoF or vary by camera.
  for (uint8_t active : {0, 1}) {
    dof.enable = active;
    for (float scale : {0.f, 0.25f, 0.5f, 1.f, std::numeric_limits<float>::quiet_NaN()}) {
      dof.scale = scale;
      const DoF original = dof;
      Call(&render, &before);
      assert(std::memcmp(&dof, &original, sizeof(dof)) == 0);
    }
  }
  dof.enable = 0;
  dof.scale = 0.25f;
  native_fault = true;
  TestNativeFault(&render, &before);
  assert(dof.enable == 0 && dof.focus == 0.f && quality.max_radius == 4.f);
  assert(dof.debug == 0x7f && dof.scale == 0.25f);
  native_fault = false;
  // Stale or unset DoF IDs must be replaced with the *current* live camera.
  assert(dof.camera == 123);
  live_camera.id = 789;
  Call(&render, &before);
  assert(dof.camera == 123 && dof.enable == 0);
  dof.camera = 0;
  Call(&render, &before);
  assert(dof.camera == 0 && dof.enable == 0);
  dof.camera = 123;
  check_manual = false;
  // Nonzero but unresolvable current ID: no forced activation (crash regression).
  live_camera.id = 999;
  Call(&render, &before);
  assert(dof.camera == 123 && dof.enable == 0 && dof.focus == 0.f);
  live_camera.id = 0;
  Call(&render, &before);
  assert(dof.enable == 0 && dof.focus == 0.f);
  live_camera.id = 456;
  current_camera = nullptr;
  Call(&render, &before);
  assert(dof.enable == 0 && dof.focus == 0.f);
  current_camera = &live_camera;
  object_with_instance_id_exists = nullptr;
  Call(&render, &before);
  assert(dof.enable == 0 && dof.focus == 0.f);
  object_with_instance_id_exists = ObjectExists;
  dof_force_ready = false;
  Call(&render, &before);
  assert(dof.enable == 0 && dof.focus == 0.f);
  dof_force_ready = true;
  dof_force_override = false;
  Call(&render, &before);
  assert(dof.enable == 0 && dof.focus == 0.f);

  for (float value : {-1.f, 201.f, std::numeric_limits<float>::infinity(), std::numeric_limits<float>::quiet_NaN()}) {
    dof_focus_distance = dof_near_blur = dof_far_blur = value;
    endfield::enhancer::OnPresent(nullptr);
    assert(dof_focus_override == 10.f && dof_near_override == 3.f && dof_far_override == 5.f);
  }
  std::puts("Manual DoF tests passed: forced HQ method and zero/off near/far radii, stale/unset IDs replaced, live camera changes, invalid/nonexistent cameras skipped, all fields restored, disabled/missing fields, fallback scale, native exceptions, invalid config.");
  std::puts("DoF render override tests passed: defaults, scoped writes, restoration, camera changes, missing data, faults, invalid config.");
  dof_force_override = false;
  render_ssr = NativeSsr;
  reset_ssr = NativeResetSsr;
  ssr_resolution_failed = false;
  uint8_t ssr_settings[0x1e3] = {};
  uint8_t ssr_debug[0x126] = {};
  SsrInput ssr_input;
  ssr_input.settings = ssr_settings;
  ssr_input.debug = ssr_debug;
  const SsrInput ssr_original = ssr_input;
  for (bool enabled : {false, true}) {
    ssr_resolution_state = enabled ? 1u : 0u;
    expected_ssr_mode = enabled ? 4 : 2;
    for (bool v2 : {false, true}) {
      ssr_settings[0x1e1] = v2;
      ssr_last_logged_dimensions = 0;
      assert(CallSsr(&ssr_input) == (enabled ? 2560 : 1280));
      assert(std::memcmp(&ssr_input, &ssr_original, sizeof(ssr_input)) == 0);
      assert(ssr_settings[0x1e1] == v2);
    }
  }
  assert(ssr_calls == 4);
  // Depth and trace resolution can be enabled independently at startup.
  for (uint64_t flags = 0; flags < 4; ++flags) {
    ssr_resolution_state = flags;
    expected_ssr_mode = (flags & 1) ? 4 : 2;
    expected_ssr_depth = (flags & 2) != 0;
    assert(CallSsr(&ssr_input) == ((flags & 1) ? 2560 : 1280));
    assert(ssr_depth::active == nullptr);
    assert(std::memcmp(&ssr_input, &ssr_original, sizeof(ssr_input)) == 0);
    assert(ssr_camera.resets == 0);
  }
  ssr_resolution_state = 1;
  expected_ssr_mode = 4;
  expected_ssr_depth = false;
  ssr_debug[0x122] = 1;
  ssr_debug[0x123] = 0;
  ssr_last_logged_dimensions = 0;
  CallSsr(&ssr_input);
  assert(ssr_debug[0x123] == 0 && ssr_input.mode == 2);
  // Existing native cameras remain native; source/output dimensions never change.
  ssr_input.mode = 4;
  CallSsr(&ssr_input);
  assert(ssr_input.mode == 4 && ssr_input.width == 2560 && ssr_input.output_width == 2560);
  ssr_input.mode = 2;
  native_fault = true;
  TestSsrFault(&ssr_input);
  native_fault = false;
  mutate_ssr_mode = true;
  CallSsr(&ssr_input);
  assert(ssr_input.mode == 9);  // Do not overwrite a native change during the call.
  mutate_ssr_mode = false;
  ssr_input.mode = 2;
  expected_ssr_mode = 2;
  for (int width : {0, -1, 16385}) {
    ssr_input.width = width;
    CallSsr(&ssr_input);
    assert(ssr_input.width == width && ssr_input.mode == 2);
  }
  ssr_input.width = 2560;
  ssr_input.enable = 0;
  CallSsr(&ssr_input);
  ssr_input.enable = 1;
  ssr_resolution_failed = true;
  CallSsr(&ssr_input);
  ssr_resolution_failed = false;
  shutting_down = true;
  CallSsr(&ssr_input);
  shutting_down = false;
  // A bad diagnostic pointer must restore the temporary write before forwarding.
  ssr_input.settings = reinterpret_cast<uint8_t*>(1);
  ssr_input.debug = nullptr;
  ssr_last_logged_dimensions = 0;
  CallSsr(&ssr_input);
  assert(ssr_resolution_failed && ssr_input.mode == 2);
  ssr_resolution_failed = false;
  std::puts("Native SSR wrapper tests passed: six-argument forwarding, scoped full-resolution mode, original input preserved, disabled/invalid input, shutdown, native exceptions, and failure rollback. GPU behavior requires runtime capture.");
  // Model persistent engine history: stale dimensions would fail NativeSsr.
  ssr_input = ssr_original;
  ssr_resolution_hook_installed = true;
  ssr_resolution_state = 0;
  ssr_instances = {};
  ssr_next_instance = 0;
  ssr_camera = {};
  ssr_other_camera = {};
  check_ssr_history = true;
  expected_ssr_mode = 2;
  assert(CallSsr(&ssr_input) == 1280 && ssr_camera.resets == 0);
  current_ssr_camera = &ssr_other_camera;
  assert(CallSsr(&ssr_input) == 1280 && ssr_other_camera.resets == 0);
  current_ssr_camera = &ssr_camera;
  ssr_resolution = 1.f;
  endfield::enhancer::OnPresent(nullptr);
  expected_ssr_mode = 4;
  assert(ssr_camera.resets == 0);  // Present publishes; never resets on the UI thread.
  assert(CallSsr(&ssr_input) == 2560 && ssr_camera.resets == 1);
  CallSsr(&ssr_input);
  assert(ssr_camera.resets == 1);  // No reset on unchanged frames.
  current_ssr_camera = &ssr_other_camera;
  assert(CallSsr(&ssr_input) == 2560 && ssr_other_camera.resets == 1);
  current_ssr_camera = &ssr_camera;
  ssr_resolution = 0.f;
  endfield::enhancer::OnPresent(nullptr);
  expected_ssr_mode = 2;
  assert(CallSsr(&ssr_input) == 1280 && ssr_camera.resets == 2);
  // A dormant camera misses Vanilla, but still resets after Native returns.
  ssr_resolution = 1.f;
  endfield::enhancer::OnPresent(nullptr);
  expected_ssr_mode = 4;
  current_ssr_camera = &ssr_other_camera;
  assert(CallSsr(&ssr_input) == 2560 && ssr_other_camera.resets == 2);
  current_ssr_camera = &ssr_camera;
  // Disabled SSR cannot consume a pending generation.
  ssr_input.enable = 0;
  expected_ssr_mode = 2;
  CallSsr(&ssr_input);
  assert(ssr_camera.resets == 2);
  ssr_input.enable = 1;
  expected_ssr_mode = 4;
  reset_ssr_fault = true;
  TestSsrFault(&ssr_input);
  assert(ssr_camera.resets == 2);
  reset_ssr_fault = false;
  assert(CallSsr(&ssr_input) == 2560 && ssr_camera.resets == 3); // Lock released; generation retried.
  // Eviction only causes an extra reset, never stale-history reuse.
  for (auto& entry : ssr_instances) {
    if (entry.instance == &ssr_camera) entry = {};
  }
  assert(CallSsr(&ssr_input) == 2560 && ssr_camera.resets == 4);
  const auto stable_generation = ssr_resolution_state.load();
  endfield::enhancer::OnPresent(nullptr);
  assert(ssr_resolution_state == stable_generation);
  for (float value : {2.f, -1.f, std::numeric_limits<float>::quiet_NaN()}) {
    ssr_resolution = value;
    endfield::enhancer::OnPresent(nullptr);
    expected_ssr_mode = 2;
    assert((ssr_resolution_state.load() & 1) == 0);
    assert(CallSsr(&ssr_input) == 1280);
  }
  // Depth-only changes reset history once without changing the resolution.
  expected_ssr_mode = 2;
  for (float value : {1.f, 0.f, 1.f, 0.f}) {
    const unsigned resets = ssr_camera.resets;
    ssr_full_depth = value;
    expected_ssr_depth = value == 1.f;
    endfield::enhancer::OnPresent(nullptr);
    assert(CallSsr(&ssr_input) == 1280 && ssr_camera.resets == resets + 1);
    CallSsr(&ssr_input);
    assert(ssr_camera.resets == resets + 1);
  }
  std::puts("Independent SSR resolution/depth startup combinations and depth-only history resets passed.");
  check_ssr_history = false;
  std::puts("SSR live transitions passed: Native/Vanilla, stable frames, dormant cameras, disabled SSR, exact-once reset, failed reset retry/unlock/restoration, eviction, invalid settings and persistent-history dimensions.");
  for (float value : {-1.f, 0.5f, 1.5f, 3.f, std::numeric_limits<float>::infinity(), std::numeric_limits<float>::quiet_NaN()}) {
    gtao_resolution = dof_resolution = value;
    endfield::enhancer::OnPresent(nullptr);
    assert(gtao_resolution_multiplier == 1 && dof_resolution_override == 0.f);
  }
  // Resolution remains independent when the game activates cutscene DoF.
  force_dof = 0.f;
  dof_force_override = false;
  dof.enable = 1;
  dof.focus = 12.f;
  const DoF native_cutscene = dof;
  expected_method = 2;
  check_overrides = true;
  const unsigned prior_camera_lookups = camera_lookups;
  for (float scale : {1.f, 2.f}) {
    expected_scale = dof_resolution_override = scale;
    Call(&render, &before);
    assert(std::memcmp(&dof, &native_cutscene, sizeof(dof)) == 0);
    assert(quality.dof_quality == 2 && quality.scale_adjust == 1);
    assert(camera_lookups == prior_camera_lookups);
  }
  check_overrides = false;
  dof.enable = 0;
  gtao_ready = true;
  render_path_hook_installed = true;
  ssr_resolution_hook_installed = true;
  struct Gtao { int32_t width; int32_t height; } gtao{1920, 1080};
  gtao_width_offset = offsetof(Gtao, width);
  gtao_height_offset = offsetof(Gtao, height);
  render.gtao = &gtao;
  for (int choice : {0, 1, 2, 1, 2, 0}) {
    gtao_resolution = ssr_resolution = dof_resolution = static_cast<float>(choice);
    endfield::enhancer::OnPresent(nullptr);
    const int multiplier = 1 << choice;
    assert(gtao_resolution_multiplier == multiplier
           && ((ssr_resolution_state.load() & 1) != 0) == (choice == 1)
           && dof_resolution_override == static_cast<float>(choice));
    Call(&render, &before);
    assert(gtao.width == 1920 * multiplier && gtao.height == 1080 * multiplier);
    Call(&render, &before);
    assert(gtao.width == 1920 * multiplier && gtao.height == 1080 * multiplier);
  }
  // Engine dimensions changing between calls must replace the source dimensions.
  gtao_resolution_multiplier = 4;
  gtao = {1720, 720};
  Call(&render, &before);
  assert(gtao.width == 6880 && gtao.height == 2880);
  gtao_resolution_multiplier = 1;
  Call(&render, &before);
  assert(gtao.width == 1720 && gtao.height == 720);
  gtao = {5000, 3000};
  gtao_resolution_multiplier = 2;
  Call(&render, &before);
  assert(gtao.width == 10000);
  gtao_resolution_multiplier = 4;
  Call(&render, &before);
  assert(gtao.width == 5000 && gtao.height == 3000);
  gtao = {0, -1};
  Call(&render, &before);
  assert(gtao.width == 0 && gtao.height == -1);
  ssr_resolution_hook_installed = false;
  render_ssr = nullptr;
  reset_ssr = nullptr;
  std::puts("GTAO/DoF resolution selectors and SSR live publication passed: repeated frames, toggles, resize, dimension guard, invalid config and DoF restoration.");
}

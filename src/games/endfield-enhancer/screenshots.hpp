#pragma once
#include <Windows.h>
#include <TlHelp32.h>
#include <intrin.h>
#include <stdexcept>
#include "./npc_distance.hpp"
#include "./screenshot_image.hpp"
#include "./screenshot_observer.hpp"
#include "./screenshot_alpha.hpp"

namespace endfield::screenshots {
#ifdef ENDFIELD_DISABLE_PHOTO_FP16
inline constexpr bool photo_fp16_support = false;
#else
inline constexpr bool photo_fp16_support = true;
#endif
inline float enabled = 0.f;
inline bool unavailable = false;
namespace detail {
using namespace enhancer::detail;
inline std::atomic_bool active{false};
inline bool installed = false, attempted = false;
inline uintptr_t base = 0;
using Alloc = void* (*)(int, int, int, int, int, int, int, int, bool, bool, bool, bool, int, float, int, bool, int, void*, void*);
using Save = int (*)(void*, void*, int, int, void*);
inline Alloc allocs[2]{};
inline Save save = nullptr;
inline std::atomic_int status{0}; // 0 off/ready, 1 waiting for observed constants, 2 unsupported color, 3 hook failure
inline void* (*object_new)(void*) = nullptr;
inline uint32_t (*gc_new)(void*, bool) = nullptr;
inline void (*gc_free)(uint32_t) = nullptr;
inline void* (*gc_target)(uint32_t) = nullptr;
inline uintptr_t (*array_length)(void*) = nullptr;
inline int (*string_length)(void*) = nullptr;
inline const wchar_t* (*string_chars)(void*) = nullptr;
inline void* texture_class = nullptr;
inline void *ctor = nullptr, *read_pixels = nullptr, *get_raw_data = nullptr;
inline void *get_active = nullptr, *set_active = nullptr, *destroy = nullptr;
inline void *get_width = nullptr, *get_height = nullptr, *get_format = nullptr;
inline int hdr_format = 48, cpu_format = 17;
inline std::atomic_uint64_t saves{0};

inline void* Invoke(void* method, void* object = nullptr, void** args = nullptr) {
  void* exception = nullptr;
  void* result = runtime_invoke(method, object, args, &exception);
  if (exception) throw std::runtime_error("Unity screenshot API raised an exception");
  return result;
}
struct Root {
  uint32_t handle;
  explicit Root(void* object) : handle(object ? gc_new(object, true) : 0) {
    if (object && !handle) throw std::runtime_error("Unable to root screenshot object");
  }
  Root(const Root&) = delete;
  ~Root() { if (handle) gc_free(handle); }
  void* Get() const { return handle ? gc_target(handle) : nullptr; }
};
struct Readback {
  Root previous{Invoke(get_active)};
  Root texture{object_new(texture_class)};
  ~Readback() {
    // Cleanup must also run after managed exceptions, failed reads, and file errors.
    void* exception = nullptr;
    void* args[] = {previous.Get()};
    runtime_invoke(set_active, nullptr, args, &exception);
    if (texture.Get()) {
      args[0] = texture.Get();
      runtime_invoke(destroy, nullptr, args, &exception);
    }
  }
};
inline int ReadProperty(void* method, void* object) {
  void* boxed = Invoke(method, object);
  if (!boxed) throw std::runtime_error("Missing screenshot property");
  return *static_cast<int*>(object_unbox(boxed));
}
inline bool IsCaptureAllocation(uintptr_t caller) {
  // Exact native capture / watermark allocation sites, never general scene RTs.
  return caller == base + 0x369ef4f || caller == base + 0x55ded4b
      || caller == base + 0x55def26 || caller == base + 0x55df104;
}
template <size_t Index>
__declspec(noinline) void* HookedAlloc(int width, int height, int slices, int depth, int format,
    int filter, int wrap, int dimension, bool random_write, bool mipmaps, bool auto_mips,
    bool shadow, int aniso, float bias, int samples, bool bind_ms, int memoryless, void* name, void* method) {
  if (active.load(std::memory_order_acquire) && format == 8
      && IsCaptureAllocation(reinterpret_cast<uintptr_t>(_ReturnAddress()))) {
    if (photo_fp16_support) photo_alpha::OnPhotoRequested();
    photo_resource::Arm(width);
    format = hdr_format;
  }
  return allocs[Index](width,height,slices,depth,format,filter,wrap,dimension,random_write,
      mipmaps,auto_mips,shadow,aniso,bias,samples,bind_ms,memoryless,name,method);
}
inline bool SaveCapture(void* target, void* path, int crop, const ColorConfig& color) {
  const int length = string_length(path);
  if (length <= 0 || length > 32000) throw std::runtime_error("Invalid screenshot path");
  const std::filesystem::path destination(std::wstring(string_chars(path), length));
  int width = ReadProperty(get_width, target), height = ReadProperty(get_height, target);
  const int format = ReadProperty(get_format, target);
  if (format != hdr_format) return false; // Existing previews must be recreated after enabling.
  if (crop > 0 && crop < height) height -= crop; // Match the game's native crop rectangle.
  if (width <= 0 || height <= 0 || width > 16384 || height > 16384
      || static_cast<uint64_t>(width) * height > 67108864) throw std::runtime_error("Unsupported screenshot dimensions");
  std::vector<HalfPixel> pixels;
  {
    Root source(target);
    Readback readback;
    if (!readback.texture.Get()) throw std::runtime_error("Unable to allocate screenshot readback");
    bool mips = false, linear = true;
    void* args[] = {&width,&height,&cpu_format,&mips,&linear};
    Invoke(ctor,readback.texture.Get(),args);
    void* rt_args[] = {source.Get()};
    Invoke(set_active,nullptr,rt_args);
    std::array<float,4> rect = {0.f,0.f,static_cast<float>(width),static_cast<float>(height)};
    int zero = 0;
    void* read_args[] = {rect.data(),&zero,&zero,&mips};
    Invoke(read_pixels,readback.texture.Get(),read_args);
    Root colors(Invoke(get_raw_data,readback.texture.Get()));
    const size_t count = static_cast<size_t>(width) * height;
    if (!colors.Get() || array_length(colors.Get()) != count * sizeof(HalfPixel)) throw std::runtime_error("Screenshot readback size mismatch");
    // Read the RGBA16F bytes directly. GetPixels invokes Unity's CPU format
    // conversion; the raw byte array preserves the readback channels unchanged.
    // Exact IL2CPP x64 SZARRAY layout, pinned until the copy finishes.
    const auto* data = reinterpret_cast<const HalfPixel*>(static_cast<const uint8_t*>(colors.Get()) + 0x20);
    pixels.assign(data,data+count);
  }
  std::vector<uint16_t> hdr;
  std::vector<uint8_t> sdr;
  if (!ConvertPixels(pixels,width,height,color,&hdr,&sdr)) throw std::runtime_error("Unsupported screenshot color configuration");
  std::error_code ec;
  if (!destination.parent_path().empty()) std::filesystem::create_directories(destination.parent_path(),ec);
  if (ec) throw std::runtime_error("Unable to create screenshot directory");
  auto hdr_path = destination.parent_path() / (destination.stem().wstring() + L"_HDR.png");
  const auto suffix = L".renodx-" + std::to_wstring(GetCurrentProcessId()) + L"-" + std::to_wstring(++saves) + L".tmp";
  auto hdr_temp = hdr_path; hdr_temp += suffix;
  auto sdr_temp = destination; sdr_temp += suffix;
  struct TempFiles {
    std::filesystem::path hdr, sdr;
    ~TempFiles() { std::error_code error; std::filesystem::remove(hdr,error); std::filesystem::remove(sdr,error); }
  } cleanup{hdr_temp,sdr_temp};
  if (!WriteHdrPng(hdr_temp,width,height,hdr)
      || !renodx::utils::png::WriteRgba8(sdr_temp,width,height,sdr)) throw std::runtime_error("Screenshot PNG encoding failed");
  if (!MoveFileExW(hdr_temp.c_str(),hdr_path.c_str(),MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH)
      || !MoveFileExW(sdr_temp.c_str(),destination.c_str(),MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH))
    throw std::runtime_error("Unable to save screenshot files");
  return true;
}
inline int HookedSave(void* target, void* path, int crop, int max_mb, void* method) {
  if (!active.load(std::memory_order_acquire) || !target || !path) return save(target,path,crop,max_mb,method);
  ColorConfig color;
  if (!observer::ReadColor(&color) || !SupportedColor(color)) return save(target,path,crop,max_mb,method);
  try {
    if (SaveCapture(target,path,crop,color)) return 0; // SaveErrorCode.None
    return save(target,path,crop,max_mb,method);
  } catch (const std::exception&) {
    return 2; // SaveErrorCode.PermissionDenied: never report a successful save after failure.
  }
}
inline bool UpdateHooks(bool attach) {
  std::vector<HANDLE> threads;
  HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD,0);
  THREADENTRY32 entry{sizeof(entry)};
  bool ok = snapshot != INVALID_HANDLE_VALUE && Thread32First(snapshot,&entry);
  if (ok) do {
    if (entry.th32OwnerProcessID != GetCurrentProcessId() || entry.th32ThreadID == GetCurrentThreadId()) continue;
    HANDLE thread = OpenThread(THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT | THREAD_SET_CONTEXT | THREAD_QUERY_INFORMATION,FALSE,entry.th32ThreadID);
    if (thread) threads.push_back(thread);
    else if (GetLastError() != ERROR_INVALID_PARAMETER) { ok = false; break; }
  } while (Thread32Next(snapshot,&entry));
  if (snapshot != INVALID_HANDLE_VALUE) CloseHandle(snapshot);
  if (ok && DetourTransactionBegin() == NO_ERROR) {
    for (HANDLE thread : threads) if (DetourUpdateThread(thread) != NO_ERROR) { ok = false; break; }
    if (ok) ok = (attach ? DetourAttach(&allocs[0],HookedAlloc<0>) : DetourDetach(&allocs[0],HookedAlloc<0>)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&allocs[1],HookedAlloc<1>) : DetourDetach(&allocs[1],HookedAlloc<1>)) == NO_ERROR;
    if (ok) ok = (attach ? DetourAttach(&save,HookedSave) : DetourDetach(&save,HookedSave)) == NO_ERROR;
    if (ok) ok = DetourTransactionCommit() == NO_ERROR;
    else DetourTransactionAbort();
  } else ok = false;
  for (HANDLE thread : threads) CloseHandle(thread);
  return ok;
}
inline bool Resolve() {
  if (!npc_distance::detail::SupportedBuild()) return false;
  HMODULE module = GetModuleHandleW(L"GameAssembly.dll");
  base = reinterpret_cast<uintptr_t>(module);
  void* (*class_methods)(void*,void**) = nullptr;
  void (*field_get)(void*,void*) = nullptr;
  if (!ResolveExport(module,"il2cpp_object_new",&object_new)
      || !ResolveExport(module,"il2cpp_gchandle_new",&gc_new)
      || !ResolveExport(module,"il2cpp_gchandle_free",&gc_free)
      || !ResolveExport(module,"il2cpp_gchandle_get_target",&gc_target)
      || !ResolveExport(module,"il2cpp_array_length",&array_length)
      || !ResolveExport(module,"il2cpp_string_length",&string_length)
      || !ResolveExport(module,"il2cpp_string_chars",&string_chars)
      || !ResolveExport(module,"il2cpp_class_get_methods",&class_methods)
      || !ResolveExport(module,"il2cpp_field_static_get_value",&field_get)) return false;
  auto core = FindImage("UnityEngine.CoreModule");
  if (!core) return false;
  texture_class = class_from_name(core,"UnityEngine","Texture2D");
  if (!texture_class) return false;
  void* iterator = nullptr;
  while (void* candidate = class_methods(texture_class,&iterator)) {
    const auto pointer = reinterpret_cast<uintptr_t>(static_cast<MethodInfo*>(candidate)->method_pointer);
    if (pointer == base + 0xa33e2c4) ctor = candidate;
    // Non-generic byte[] overload; the generic NativeArray overload cannot be invoked here.
    if (pointer == base + 0xa33d5f0) get_raw_data = candidate;
  }
  read_pixels = FindMethod(core,"UnityEngine","Texture2D","ReadPixels",4);
  get_active = FindMethod(core,"UnityEngine","RenderTexture","GetActive",0);
  set_active = FindMethod(core,"UnityEngine","RenderTexture","SetActive",1);
  get_width = FindMethod(core,"UnityEngine","RenderTexture","get_width",0);
  get_height = FindMethod(core,"UnityEngine","RenderTexture","get_height",0);
  get_format = FindMethod(core,"UnityEngine","RenderTexture","get_graphicsFormat",0);
  destroy = FindMethod(core,"UnityEngine","Object","Destroy",1);
  if (!ctor || !read_pixels || !get_raw_data || !get_active || !set_active || !destroy
      || !get_width || !get_height || !get_format) return false;
  auto graphics = class_from_name(core,"UnityEngine.Experimental.Rendering","GraphicsFormat");
  auto texture_format = class_from_name(core,"UnityEngine","TextureFormat");
  if (!graphics || !texture_format) return false;
  auto hdr_field = class_get_field_from_name(graphics,"R16G16B16A16_SFloat");
  auto cpu_field = class_get_field_from_name(texture_format,"RGBAHalf");
  if (!hdr_field || !cpu_field) return false;
  field_get(hdr_field,&hdr_format); field_get(cpu_field,&cpu_format);
  if (hdr_format != 48 || cpu_format != 17) return false;
  // Full SHA gate above plus unique live executable prefixes: reject existing patches.
  struct Hook { uint32_t rva; std::array<uint8_t,64> bytes; };
  constexpr Hook hooks[] = {
    {0x358b9c0, {0x4c,0x8b,0xdc,0x48,0x81,0xec,0xb8,0x00,0x00,0x00,0x48,0x8b,0x84,0x24,0x48,0x01,0x00,0x00,0xf3,0x0f,0x10,0x84,0x24,0x28,0x01,0x00,0x00,0x49,0xc7,0x43,0xe8,0x00,0x00,0x00,0x00,0x49,0x89,0x43,0xe0,0x8b,0x84,0x24,0x40,0x01,0x00,0x00,0x41,0x89,0x43,0xd8,0x0f,0xb6,0x84,0x24,0x38,0x01,0x00,0x00,0x41,0x88,0x43,0xd0,0x8b,0x84}},
    {0x358b8f0, {0x4c,0x8b,0xdc,0x48,0x81,0xec,0xa8,0x00,0x00,0x00,0x48,0x8b,0x84,0x24,0x38,0x01,0x00,0x00,0xf3,0x0f,0x10,0x84,0x24,0x18,0x01,0x00,0x00,0x49,0xc7,0x43,0xe8,0x00,0x00,0x00,0x00,0x49,0x89,0x43,0xe0,0x8b,0x84,0x24,0x30,0x01,0x00,0x00,0x41,0x89,0x43,0xd8,0x0f,0xb6,0x84,0x24,0x28,0x01,0x00,0x00,0x88,0x44,0x24,0x78,0x8b,0x84}},
    {0x55df224, {0x48,0x8b,0xc4,0x48,0x89,0x58,0x08,0x48,0x89,0x70,0x18,0x48,0x89,0x50,0x10,0x57,0x41,0x54,0x41,0x55,0x41,0x56,0x41,0x57,0x48,0x81,0xec,0xf0,0x00,0x00,0x00,0x0f,0x29,0x70,0xc8,0x0f,0x29,0x78,0xb8,0x45,0x8b,0xf9,0x41,0x8b,0xf8,0x4c,0x8b,0xe2,0x4c,0x8b,0xf1,0x33,0xdb,0x38,0x1d,0x86,0x6f,0x8d,0x08,0x75,0x4f,0x48,0x8d,0x0d}}
  };
  const auto* dos = reinterpret_cast<const IMAGE_DOS_HEADER*>(base);
  const auto* nt = reinterpret_cast<const IMAGE_NT_HEADERS64*>(base + dos->e_lfanew);
  if (dos->e_magic != IMAGE_DOS_SIGNATURE || nt->Signature != IMAGE_NT_SIGNATURE
      || nt->FileHeader.Machine != IMAGE_FILE_MACHINE_AMD64) return false;
  const auto* sections = IMAGE_FIRST_SECTION(nt);
  for (const auto& hook : hooks) {
    size_t matches = 0; uintptr_t match = 0;
    for (unsigned s = 0; s < nt->FileHeader.NumberOfSections; ++s) {
      const auto& section = sections[s];
      if (!(section.Characteristics & IMAGE_SCN_MEM_EXECUTE) || section.Misc.VirtualSize < hook.bytes.size()) continue;
      const auto* begin = reinterpret_cast<const uint8_t*>(base + section.VirtualAddress);
      const auto* end = begin + section.Misc.VirtualSize;
      for (auto* p = begin; p + hook.bytes.size() <= end; ++p) if (*p == hook.bytes[0] && !std::memcmp(p,hook.bytes.data(),hook.bytes.size())) {
        ++matches; match = reinterpret_cast<uintptr_t>(p);
      }
    }
    if (matches != 1 || match != base + hook.rva) return false;
  }
  allocs[0] = reinterpret_cast<Alloc>(base + hooks[0].rva);
  allocs[1] = reinterpret_cast<Alloc>(base + hooks[1].rva);
  save = reinterpret_cast<Save>(base + hooks[2].rva);
  return true;
}
}
inline void OnPresent() {
  using namespace detail;
  if (enabled < 0.5f || unavailable) {
    active.store(false,std::memory_order_release);
    if (!unavailable) status = 0;
    return;
  }
  ColorConfig color;
  const bool observed = observer::ReadColor(&color);
  if (!observed || !SupportedColor(color)) {
    active.store(false,std::memory_order_release);
    status = observed ? 2 : 1;
    return;
  }
  if (photo_fp16_support) photo_alpha::OnPresent();
  status = 0;
  if (!installed) {
    if (!enhancer::detail::ResolveApi() || attempted) return;
    attempted = true;
    bool resolved = false;
    __try { resolved = Resolve(); } __except(EXCEPTION_EXECUTE_HANDLER) { resolved = false; }
    installed = resolved && UpdateHooks(true);
    if (!installed) {
      unavailable = true;
      status = 3;
      return;
    }
  }
  active.store(true,std::memory_order_release);
}
inline void Shutdown() {
  detail::active.store(false,std::memory_order_release);
  if (detail::installed && detail::UpdateHooks(false)) detail::installed = false;
  observer::Shutdown();
}
}

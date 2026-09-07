# DX11 Improved SSR override — 2026-09-07

Adds automatic API selection to the existing private compute-pipeline override.
The active command-list device selects DXBC for D3D11 and SPIR-V for Vulkan.
The same SSR Resolution / Improved SSR Override settings work on both APIs.
DX11 availability no longer depends on the Vulkan-only frame-generation flag.
Native UnityPlayer SSR hook installation is enabled for both renderers; its
existing global/CN module and instruction guards remain intact.

## Shader mapping and behavior

| Pass | DX11 original CRC | Vulkan original CRC |
| --- | --- | --- |
| Hit-UV alignment | 18BD6E91 | 562EDD85 |
| Bilateral blur | DA42CB07 | C465A053 |
| Improved final blend | 4ED659BE | 4187AEA7 |

DX11 originals were identified in the existing local 1.4.4 capture by their
resource declarations, thread dimensions, filtering kernel and data flow.
The DX11 base blend source is on the local endfield-dx11 branch. No game asset,
base addon source, shared utility or global CMake configuration was modified.

- Alignment removes the parity offset only when hit-UV and output sizes match.
- Blur applies the same full-size/M=6 physical-mip correction as Vulkan, to both
  filtering levels and their interpolation weight; all original depth weighting
  and 4x4 kernel arithmetic is retained.
- Blend applies the Vulkan 4/3 mip correction only at full size, M=6 and base
  Improved SSR On. Other paths retain the base blend behavior.
- Blur and blend are prepared together, activated after both are ready, and
  restored to the base shaders after each dispatch. Off stops their use.
- DX11 uses its valid null pipeline layout as a cache key. Caches remain per
  device; retired shaders live until device teardown.
- The DX11 blend checks the loaded base shader's Improved SSR constant-buffer
  operand: b13, byte 220, compared against 0.5. It does not require a complete
  blob checksum or reflection/debug section identity. Unknown ABI or malformed
  bytecode keeps the base shader and logs failure. This is a compiled DX11
  replacement for the identified base blend, not a general transformer for
  arbitrary custom blend effects.

## Validation

Structural: release endfield-enhancer target builds all three cs_5_0 HLSL files
and their embed headers through the existing CMake shader toolchain. The private
payloads are explicitly selected; they are not installed into the global shader
replacement map. Repository bin/fxc.exe and cmd_Decompiler.exe 1.3.16 were used.
The old Vulkan SPIR-V transformation remains unchanged by this task.

Execution: 144 D3D11 WARP GPU cases passed for all three shaders, point/linear
samplers, full/half extents, even/odd widths, M=5/6/7, and base Improved SSR On/Off.
Seven mip levels were supplied. Every case checks baseline HLSL against captured
DXBC (the injected base shader for blend), then checks the corrected production
shader against the original shader with mathematically corrected reference
inputs. FP32 acceptance: finite outputs, absolute error <= 1e-5 * max(1, abs(ref))
per channel. No game or live bridge was used.

C++ regression suite passed, including Vulkan and DX11 dispatch selection,
wrong-API rejection, bytecode format and base-ABI guards, valid zero DX11 layout,
paired readiness, base shader restoration, toggles, and retirement. Existing
HDR/DoF/availability/SSR tests also passed.

Reproduction from repository root:

```powershell
# Run in a Visual Studio developer shell:
cmake --build --preset clang-x64-release --target endfield-enhancer
./src/games/endfield-enhancer/tests/run_dx11_gpu_tests.ps1
./src/games/endfield-enhancer/tests/run_cleanup_tests.ps1
```

The GPU runner accepts CaptureDirectory and BaseBlend overrides for the original
DX11 dumps and an injected base blend DXBC. Those proprietary reference binaries
stay outside source control. ENDFIELD_SSR_BASELINE exists only for compiling test
controls; release embeds compile the actual corrections.

## In-game acceptance still required

This proves local shader execution and integration structure, not the game's
current DX11 pass execution or visual acceptance. Start the game in DX11 with
its corresponding base RenoDX addon; enable base Improved SSR, SSR Full
Resolution, and Improved SSR Override. Check the DX11 alignment and paired
activation logs. Compare reflection edges, rough surfaces, water, toggles and
resolution changes. Restart in Vulkan and repeat; the logs must name Vulkan
and its shader IDs. No manual renderer selector is required. Preserve the CN
compatibility checks from the preceding change. The installed game addon was
not replaced, and no game was launched or captured during this task.

Final release SHA256:
955341A4C2D833FF45B101AE799BBF9B9FA0F284DE954ED4C38777D62F400ABF
Saved candidate: artifacts/endfield-enhancer/dx11-ssr/renodx-endfield-enhancer.addon64
Enhancer base revision: 8cf7b0101c83986bbad3b848ac297fb112e27266 (existing local changes preserved).
DX11 reference source revision: 58477f489d4d388995666f4abd07100e917c3e1e.
Final release build succeeded with 31 existing C++ warnings; git diff --check passed.

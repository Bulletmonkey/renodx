param(
  [string]$CaptureDirectory = 'C:/Program Files/GRYPHLINK/games/EndField Game/renodx-dev/dump/dx11/1.4.4',
  [string]$BaseBlend = 'tmp/endfield-dx11-port/fxc-ssr/ssr-upsample_0x4ED659BE.cs_5_0.cso'
)
$ErrorActionPreference = 'Stop'
$evidence = 'artifacts/endfield-enhancer/dx11-ssr'
New-Item -ItemType Directory -Force $evidence | Out-Null
foreach ($hash in @('18BD6E91', 'DA42CB07')) {
  Copy-Item -LiteralPath "$CaptureDirectory/0x$hash.cs_5_0.cso" -Destination $evidence
}
Copy-Item -LiteralPath $BaseBlend -Destination "$evidence/base-blend.cso"
foreach ($hash in @('18BD6E91', 'DA42CB07', '4ED659BE')) {
  & ./bin/fxc.exe /nologo /T cs_5_0 /E main /O3 /Gec /D ENDFIELD_SSR_BASELINE=1 /Fo "$evidence/$hash-baseline.cso" "src/games/endfield-enhancer/0x$hash.cs_5_0.hlsl"
  if ($LASTEXITCODE -ne 0) { throw "Baseline compilation failed: $hash" }
}
# Build endfield-enhancer first so the production CMake shader embeds are current.
$taskCommand = 'call "C:\Program Files\Microsoft Visual Studio\18\Community\Common7\Tools\VsDevCmd.bat" -arch=x64 -host_arch=x64 >nul && clang-cl /nologo /std:c++20 /EHsc /DNOMINMAX src/games/endfield-enhancer/tests/ssr_dx11_gpu_test.cpp /Foartifacts/endfield-enhancer/dx11-ssr/gpu-test.obj /Feartifacts/endfield-enhancer/dx11-ssr/gpu-test.exe /link d3d11.lib'
& cmd /d /s /c $taskCommand
if ($LASTEXITCODE -ne 0) { throw 'GPU test compilation failed' }
& "$evidence/gpu-test.exe"
if ($LASTEXITCODE -ne 0) { throw 'GPU tests failed' }

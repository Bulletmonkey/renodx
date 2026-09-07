param([string[]]$ClientDirectories = @())
$ErrorActionPreference = 'Stop'
foreach ($testName in @('client_compatibility_test', 'uncensor_test', 'hdr_output_contract_test', 'hdr_graphics_bindings_test', 'hdr_output_lifecycle_test', 'enhancer_availability_test', 'hdr_resolution_test', 'render_quality_test', 'ssr_depth_test', 'ssr_resolve_test', 'bokeh_test')) {
  if ($testName -eq 'client_compatibility_test' -and $ClientDirectories.Count -eq 0) { continue }
  if ($testName -eq 'bokeh_test' -and !(Test-Path 'src/games/endfield-enhancer/bokeh.hpp')) { continue }
  $taskCommand = 'call "C:\Program Files\Microsoft Visual Studio\18\Community\Common7\Tools\VsDevCmd.bat" -arch=x64 -host_arch=x64 >nul && "C:\Program Files\Microsoft Visual Studio\18\Community\VC\Tools\Llvm\x64\bin\clang-cl.exe" /nologo /EHsc /std:c++20 /MTd /Zi /bigobj /DNOMINMAX /DWIN32 /D_WINDOWS -Ibuild/endfield-enhancer.include -imsvcexternal/Detours/include -imsvcexternal/json/include -imsvcexternal/frozen/include -imsvcexternal/gtl/include -imsvcexternal/Streamline/include -imsvcexternal/DLSS/include -imsvcexternal/reshade -imsvcexternal/reshade/deps/glad/target/include src/games/endfield-enhancer/tests/{0}.cpp /Fosrc/games/endfield-enhancer/tests/{0}.obj /Fesrc/games/endfield-enhancer/tests/{0}.exe /link external/Detours/lib.X64/detours.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib' -f $testName
  & cmd /d /s /c $taskCommand
  if ($LASTEXITCODE -ne 0) { throw "Compilation failed: $testName" }
  if ($testName -eq 'client_compatibility_test') {
    & "./src/games/endfield-enhancer/tests/$testName.exe" @ClientDirectories
  } else {
    & "./src/games/endfield-enhancer/tests/$testName.exe"
  }
  if ($LASTEXITCODE -ne 0) { throw "Test failed: $testName ($LASTEXITCODE)" }
}

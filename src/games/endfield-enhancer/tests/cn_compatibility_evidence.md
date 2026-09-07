# Chinese client compatibility — 2026-09-07

The supplied CN UnityPlayer.dll has timestamp 6A85914F and SizeOfImage 0208A000,
versus global 0208B000. CN GameAssembly.dll has timestamp 6A870DA4 and image
size 0F7CC000, versus global 0F7CB000. These 4 KB packaging differences caused
both native feature validators to reject the CN client before checking code.

CN SHA256:
- UnityPlayer: BEE7BE52370ADDDD67BA61E4937CA51B7F272656841D187E95E505496DA798D1
- GameAssembly: C24495E51B406F03B03890C4788EE618AE022C991405BE5D5B8B787CB775AE89

## Change and affected options

- SSR Resolution > Full Resolution: accept both verified UnityPlayer sizes.
  This restores eligibility for the native full-size reflections and depth path.
- Camera > Uncensor: accept both verified GameAssembly sizes. The two metadata
  method addresses and both complete entry signatures remain identical.
- Remove the Endfield.exe timestamp/size requirement from SSR. The patch depends
  on UnityPlayer, so a regional launcher identity adds no useful compatibility
  evidence. No CN EXE was supplied or required by the new validator.
- Improved SSR Override: its native full-resolution prerequisite was affected;
  its shader matching/cache checks are separate. Existing local fixes for those
  checks are preserved and included in the build, not authored by this change.
- FPS Unlock and all FPS limits, GTAO Resolution, DoF Resolution, Force DoF and
  focus/blur controls, Force Highest Geometry LOD, and HDR frame generation have
  no dependency on these two native build-size gates. This does not claim that
  every feature has been runtime-tested on CN, or resolve the prior GTAO report.

Do not remove all native validation: SSR still uses fixed RVAs and native input
layouts. Known module identities, signatures, call targets, history/reset code,
section bounds and uniqueness protect against patching incompatible updates.
The Uncensor method addresses, signatures and executable section checks remain.
No universal acceptance of future or unknown client builds is claimed.

## Verification

The real C++ validators were run against both sets of PE sections mapped as
non-executable data. Both clients passed; timestamp, size, entry, address and
SSR depth-input mutations were rejected. The standalone test EXE also proves
SSR no longer requires Endfield.exe's identity. No supplied DLL was executed.

Both offline Python validators passed for CN and global: 17 SSR guards and two
unique camera signatures matched exactly. The separate validate_uncensor.py
hash allowlist records the precise offline reference binaries; runtime does not
hash the complete module. Existing signature uniqueness checks are preserved.

Build target: cmake --build --preset clang-x64-release --target endfield-enhancer
Artifact: build/Release/renodx-endfield-enhancer.addon64
Regression runner (PowerShell):

```powershell
./src/games/endfield-enhancer/tests/run_cleanup_tests.ps1 -ClientDirectories @(
  'artifacts/endfield-enhancer/cn-compatibility',
  'C:/Program Files/GRYPHLINK/games/EndField Game'
)
```

CN runtime acceptance remains pending: restart with the candidate; confirm SSR
router installation and entry logs, compare Half/Full Resolution reflections,
toggle Improved SSR Override with base RenoDX Improved SSR On, and toggle
Uncensor across low camera angles, character changes and cutscenes. Verify
vanilla behavior with options Off. Repeat on global as a runtime control.
The installed game addon was not replaced. Pre-existing local changes preserved.

Final result: release build and all ten applicable C++ test programs passed
(including both-client compatibility, Uncensor attach/detach/restoration, HDR,
availability, render quality, SSR depth and SSR shader lifecycle). Build emitted
31 existing warnings. git diff --check passed.
Candidate SHA256: D54235A68D6E38AF2497A3053C127F0124F29B520CD471023F077976ABFB5748
Saved candidate: artifacts/endfield-enhancer/cn-compatibility/renodx-endfield-enhancer.addon64

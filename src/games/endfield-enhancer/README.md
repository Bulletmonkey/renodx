# Endfield Enhancer menu

The menu uses the existing RenoDX settings and config keys, with game-local
presentation in `menu.hpp`.

| Page | Controls |
| --- | --- |
| FPS Limiter | FPS unlock, foreground/background/frame-generation limits |
| Graphics | GTAO and SSR full-resolution toggles, reflection override, geometry LOD, depth of field |
| Entities | Entity population and distance, culling, loading, experimental unloading |
| Screenshots | HDR screenshots and photo frame removal |
| Patches | DLSS-G HDR compatibility patch and uncensor |
| System | Runtime information and credits |

Search matches labels, sections and descriptions across every page, ignoring
case. Clearing it restores the selected page and its section expansion state.
Advanced NPC sections start collapsed. On/Off choices always use segmented
buttons. Other choices use segmented buttons when they fit and a dropdown
otherwise. Hover a setting's label for its description.

## Build and manual verification

Build in the repository's x64 developer environment:

```powershell
cmake --build --preset clang-x64-release --target endfield-enhancer
```

Output: `build/Release/renodx-endfield-enhancer.addon64`. This UI change adds no
shader payloads or generated shader headers.

In Endfield, open the Endfield Enhancer overlay and verify:

1. Every page opens and related controls appear together. Expand the advanced
   NPC sections and System credits.
2. Search for `FPS`, `reflection`, `NPC` and `photo`; confirm results span pages.
   Clear the search and check that navigation and collapsed sections recover.
3. Resize the overlay and change ReShade UI scaling. Long choice labels should
   switch to dropdowns; On/Off toggles should remain buttons. Labels should wrap
   without covering reset buttons.
4. Change a safe FPS limit, reset it, and restart the game to check persistence.
   Verify dependent controls remain disabled until their override is enabled.
5. Check unavailable-feature explanations on the current renderer. Changing the
   DLSS-G HDR patch should show a restart reminder until its saved value agrees
   with the value loaded at startup.

Compilation alone does not establish in-game visual or interaction validation.

Runtime information always lists the Vulkan loader, both base-addon variants,
Streamline, and NVIDIA DLSS, including absent modules. The single NVIDIA DLSS
version row reads `nvngx_dlss.dll`, with no alternate DLL or version comparison.
Versions come from resources in the loaded modules, rather than files on disk.
The Vulkan loader reports status, type and a SHA-256 match instead of a version.
The expected checksum is pinned in `runtime_status.hpp` to the bundled
`build/Release/vulkan-1.dll`:
`daa51f26cbafc26eeaf22413432a6f003b8bd7e4cefc9a2b00802d2df4065fb4`.
Update that checksum when distributing a different loader. The addon hashes
the file at the loaded module's path once on first inspection (and when the
module handle changes), outside process attach. It does not hash relocated
process memory or establish initialization order. Hover the checksum result
for the expected and observed hashes. A mismatch is diagnostic only and does
not change the HDR patch's existing availability gates.
The About section uses the Enhancer's own loaded version resource.

GPU driver reporting matches the active adapter by LUID and reports its full
Windows driver version through DXGI, including AMD adapters. Vulkan's reported
major/minor version is a fallback; neither is an AMD Adrenalin package version.

Verify these rows with and without the base addon, with DLSS libraries loaded
and absent, and on AMD hardware. Confirm the About build matches the loaded
addon and that missing version resources display `Unavailable`.

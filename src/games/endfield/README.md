# Arknights: Endfield (Vulkan)

UI, UID, latency text, and latency bar hiding are provided by Endfield Enhancer's native controls. This RenoDX addon no longer replaces UI shaders or exposes visibility toggles or a UI toggle hotkey. Video AutoHDR and Video Brightness are under **Video**. UI brightness, gamma correction, and ReShade Before UI remain available.

Build the `endfield` target in Release with `cmake --build --preset clang-x64-release --target endfield`. Inspect `build/endfield.include/embed/shaders.h` and `build/Release/renodx-endfield.addon64`; the generated shader registry must contain no removed UI shader hashes.

Manual verification after installing the matching renderer addon:

- Confirm the Video section contains only Video AutoHDR and Video Brightness, and the old visibility controls and hotkey are absent.
- Check gameplay, menus, and cutscenes with Enhancer's native HUD, UID, and latency controls, including across a game restart.
- Confirm video controls, UI brightness/gamma, ReShade Before UI, and HDR scene rendering still work.

The cleanup has build and structural validation only; in-game verification remains pending.

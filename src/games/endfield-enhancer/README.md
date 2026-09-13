# Endfield Enhancer window controls

The title bar contains game-session volume, mute, and a fullscreen/windowed button.
Colors follow the Windows caption theme and controls scale with the window DPI.
Scroll over the volume control for 5% steps, click the speaker to mute, or drag
the slider. Audio changes affect Endfield's sessions, not the system master volume.

Drag any window edge or corner to resize using the native Windows frame.
The client aspect ratio is preserved, with a minimum client height of 480 pixels.
Size notifications reach Unity immediately and in their original order so its
renderer can respond to the new client dimensions. Edge constraints are based
on the ArknightsEnhancer worktree at revision `63c85f3`.
Endfield uses an owner-thread Windows subclass for this behavior. The controls
remain attached across Vulkan swapchain recreation and cooperate with the game's
other window hooks. Captioned popup styles are converted to resizable window
styles; fullscreen styles remain borderless.

When Endfield loses focus, the addon releases cursor confinement and shows the
arrow cursor. It maintains visibility on the game's window thread while in the
background. Unity's cursor imports are intercepted only while unfocused or during
a resize-cursor override, so Unity cannot replace/hide the desktop or resize
cursor between window messages. Its latest cursor shape and logical visibility
count are restored on return. Normal gameplay calls pass through unchanged.
Restoration applies only deferred Unity requests and reverses the enhancer's own
visibility increments, preserving unhooked Windows/overlay changes during resizing.
Resize hit testing takes priority over background handling, including on an
inactive window. Cursor locking and warping are suppressed during the override.
Every intercepted call rechecks process focus and the current client/frame
position. A focused client immediately returns to native cursor visibility,
shape, locking and recentering, even if no client cursor message arrives.

The import interception is gated to Endfield timestamp `6A858DB7`, image size
`CC000`, and UnityPlayer timestamp `6A85914F`, image size `208B000`. Reference
UnityPlayer SHA-256: `41D8BA3111C5652C777124EE321D53F14F31EE866A6317EEFB4ECF20168370B5`.
Unknown builds or changed import pointers retain native cursor behavior and log
a warning. Import slots are restored on removal; callback code remains mapped
until process exit to protect engine calls already in flight. Restart to update.

The fullscreen button uses borderless fullscreen on the current monitor and
restores the previous window placement when toggled back. If the game starts
fullscreen, the first toggle creates a window within the monitor work area.
In fullscreen, move the pointer to the upper-right edge to reveal the controls.
Press **F12** to toggle fullscreen/windowed, including when gameplay captures the
cursor. Rebind it under **Shortcuts → Window Shortcuts**. Like the other shortcuts,
it pauses while using the overlay.

## Build and checks

Build `endfield-enhancer` in Release:

```powershell
cmake --build build --config Release --target endfield-enhancer
```

Output: `build/Release/renodx-endfield-enhancer.addon64`.
The port is based on ArknightsEnhancer's MIT-licensed window controls.

From an x64 Visual Studio developer shell, the standalone Win32 check can be run
without launching the game:

```powershell
clang-cl /std:c++20 /EHsc /O2 src/games/endfield-enhancer/window_controls_test.cpp /Fobuild/window_controls_test.obj /Febuild/window_controls_test.exe
./build/window_controls_test.exe
```

It checks repeated fullscreen round trips, placement/style restoration, all eight
resize directions, size-message delivery and ordering, corner hit testing, focus-loss cursor
release and display-count restoration, startup-fullscreen fallback, and compact
hit-region spacing at 100%, 150%, and 200% DPI. This does not validate Unity's
rendering or audio behavior.
The checks also cover installation from a worker thread, repeated installation
with another module above the subclass, style reapplication, and subclass removal.

Before treating the feature as runtime-validated, test in Endfield on both DX11
and Vulkan: resize during gameplay, toggle from windowed and startup fullscreen,
check rendering resolution and cursor alignment, and repeat with HDR and frame
generation. Verify mute/slider/wheel against Windows Volume Mixer, change the
default audio device, test light/dark captions and mixed-DPI monitors, and check
minimize/restore, Alt-Tab during gameplay with menus closed, shutdown, and an
ordinary full restart.

For the reported persistent flicker after enlargement with DLSS-G enabled, compare
the same resize with frame generation disabled. `Endfield resize:` log entries
record application swapchain dimensions, changed DLSS-G options and input-tag
extents. The user reported that the flicker appeared resolved with the cursor-count
candidate; its cause has not been isolated, so the diagnostics remain available.

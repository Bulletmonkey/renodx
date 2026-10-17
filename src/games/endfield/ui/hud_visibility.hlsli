#ifndef ENDFIELD_HUD_VISIBILITY_HLSLI_
#define ENDFIELD_HUD_VISIBILITY_HLSLI_

#include "../shared.h"
#include "./hud_regions.h"

// Each entry is the most recent notification tick for one map/menu button.
// Atomic accesses allow the effect drawn after a button to reveal it next frame
// without CPU readback, draw replay, or a game-state hook.
[[vk::binding(0, 4)]] globallycoherent RWBuffer<uint> hud_notification_history : register(u0, space4);

float2 EndfieldHudPosition(float2 raster_position) {
  // Orientation belongs to the render target, not the interpolated UV direction.
  if ((uint(shader_injection.hud_draw_enabled) & 32u) != 0u) {
    raster_position.y = shader_injection.hud_viewport_height - raster_position.y;
  }
  return raster_position;
}

float EndfieldHudOpacity(float2 position) {
  if ((uint(shader_injection.hud_draw_enabled) & 1u) == 0u
      || shader_injection.hud_viewport_height <= 0.f
      || shader_injection.ui_aspect_ratio <= 0.f) return 1.f;
  float scale = EndfieldHudScale(shader_injection.hud_viewport_height, shader_injection.ui_aspect_ratio);
  int button = EndfieldHudButton(position.x * scale, position.y * scale,
                                 shader_injection.hud_viewport_height / shader_injection.ui_aspect_ratio * scale,
                                 shader_injection.hud_viewport_height * scale);
  // Nineteen independent reveal bits fit in the existing two 24-bit float integers.
  uint revealed_buttons = ((uint(shader_injection.hud_draw_enabled) >> 6u) & 65535u)
      | ((uint(shader_injection.hud_notification_tick) >> 21u) << 16u);
  if (button >= 0 && (revealed_buttons & (1u << uint(button))) != 0u) return 1.f;
  if ((uint(shader_injection.hud_draw_enabled) & uint(EndfieldHudNotificationFlag(button))) != 0u) {
    uint last_seen;
    InterlockedOr(hud_notification_history[button], 0u, last_seen);
    uint elapsed = (uint(shader_injection.hud_notification_tick) - last_seen) & 0x1FFFFFu;
    if (last_seen != 0u && elapsed < 60u) return 1.f;
  }
  int region = EndfieldHudRegion(position.x * scale, position.y * scale,
                                shader_injection.hud_viewport_height / shader_injection.ui_aspect_ratio * scale,
                                 shader_injection.hud_viewport_height * scale);
  switch (region) {
    case 0: return shader_injection.hud_quest_opacity;
    case 1: return shader_injection.hud_minimap_opacity;
    case 2: return shader_injection.hud_map_buttons_opacity;
    case 3: return shader_injection.hud_menu_buttons_opacity;
    case 4: return shader_injection.hud_utility_opacity;
    default: return 1.f;
  }
}

#endif

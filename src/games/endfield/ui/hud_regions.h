#ifndef ENDFIELD_HUD_REGIONS_H_
#define ENDFIELD_HUD_REGIONS_H_

static const int ENDFIELD_HUD_DIJIANG_BUTTON = 18;
static const int ENDFIELD_HUD_BUTTON_COUNT = 19;

#ifdef __cplusplus
constexpr
#endif
    int EndfieldHudNotificationFlag(int button) {
  if ((button >= 0 && button < 6) || button == ENDFIELD_HUD_DIJIANG_BUTTON) return 4194304;
  if (button >= 6 && button < 16) return 8388608;
  return 0;
}

// Coordinates are in the game's 1080-high HUD layout, anchored to either edge.
// Shared by cursor hit testing and fragment masking; never mask the scene pass.
#ifdef __cplusplus
constexpr
#endif
    float EndfieldHudScale(float viewport_height, float height_over_width) {
  float reference_height = (height_over_width > 0.5625f ? 1920.f * height_over_width : 1080.f);
  return viewport_height > 0.f ? reference_height / viewport_height : 0.f;
}

#ifdef __cplusplus
constexpr
#endif
    int EndfieldHudButton(float x, float y, float width, float height) {
  if (x < 0.f || y < 0.f || x > width) return -1;
  // Explicit button bounds keep gaps and the minimap out of hover reveals.
  if (y >= 2.f && y < 78.f) {
    if (x >= 12.f && x < 235.f) return 0;
    if (x >= 260.f && x < 318.f) return 1;
    if (x >= 331.f && x < 386.f) return 2;
    if (x >= 403.f && x < 461.f) return ENDFIELD_HUD_DIJIANG_BUTTON;
  }
  if (x >= 18.f && x < 72.f && y >= 85.f && y < 157.f) return 3;
  if (y >= 192.f && y < 258.f) {
    if (x >= 18.f && x < 91.f) return 4;
    if (x >= 260.f && x < 340.f) return 5;
  }
  if (y >= 2.f && y < 90.f) {
    float from_right = width - x;
    if (from_right >= 18.f && from_right < 104.f) return 6;
    // Eleven slots including the expanded strip's arrow, U and N controls.
    // The collapsed arrow occupies an earlier slot without shifting its peers.
    int column = int((from_right - 108.f) / 72.f);
    // C has a divider on its right; it belongs to the strip, not the button.
    if (column == 0 && from_right < 124.f) return -1;
    if (from_right >= 108.f && column < 10
        && from_right < 108.f + float(column) * 72.f + 70.f) return 7 + column;
  }
  if (width - x < 110.f && y >= height - 585.f && y < height - 430.f) return 17;
  return -1;
}

#ifdef __cplusplus
constexpr
#endif
    int EndfieldHudRegion(float x, float y, float width, float height) {
  if (x < 0.f || y < 0.f || x > width) return -1;
  int button = EndfieldHudButton(x, y, width, height);
  if ((button >= 0 && button < 6) || button == ENDFIELD_HUD_DIJIANG_BUTTON) return 2;
  if (button >= 6 && button < 17) return 3;
  if (button == 17) return 4;
  float dx = x - 164.f;
  float dy = y - 170.f;
  // Include the soft outer border; adjacent buttons retain their own ownership.
  if (y >= 78.f && y < 258.f && dx * dx + dy * dy <= 104.f * 104.f) return 1;
  if (x < 660.f && y >= 258.f && y < 470.f) return 0;
  if (x < 390.f && y < 258.f) return 2;
  if (width - x < 834.f && y < 105.f) return 3;
  if (width - x < 110.f && y >= height - 585.f && y < height - 430.f) return 4;
  return -1;
}

#ifdef __cplusplus
constexpr
#endif
    int EndfieldDialogueButton(float x, float y, float width) {
  if (y < 10.f || y > 90.f) return -1;
  if (x >= 20.f && x < 90.f) return 0;
  float from_right = width - x;
  if (from_right >= 177.f && from_right < 247.f) return 1;
  if (from_right >= 94.f && from_right < 164.f) return 2;
  if (from_right >= 16.f && from_right < 86.f) return 3;
  return -1;
}

#endif

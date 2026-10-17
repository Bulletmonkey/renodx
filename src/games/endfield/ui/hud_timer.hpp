#pragma once

#include <algorithm>

namespace endfield::hud {

struct Timer {
  double last_interaction = 0.;
  double last_update = 0.;
  float opacity = 1.f;
  int previous_mode = 0;
  bool active = false;
  bool hover_armed = false;

  void Update(double now, int mode, float delay, bool reveal_hover, bool hovered, bool gameplay) {
    if (!gameplay || !active || mode != previous_mode || now < last_update) {
      last_interaction = now;
      opacity = 1.f;
      hover_armed = false;
    }
    active = gameplay;
    previous_mode = mode;
    if (!hovered) {
      hover_armed = true;
    }
    if (gameplay && hovered && hover_armed && (reveal_hover || opacity >= 1.f)) {
      last_interaction = now;
    }
    const bool revealing = reveal_hover && hovered && hover_armed;
    const bool hidden = gameplay && !revealing
                        && (mode == 1 || (mode == 2 && now - last_interaction >= std::clamp(delay, 3.f, 300.f)));
    float step = static_cast<float>(std::clamp(now - last_update, 0., 0.1)) / 0.2f;
    opacity = (hidden ? std::max(0.f, opacity - step) : std::min(1.f, opacity + step));
    last_update = now;
  }
};

}  // namespace endfield::hud

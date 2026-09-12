#pragma once

#include <cmath>
#include <algorithm>

namespace endfield::camera {
struct Vec3 { float x, y, z; };
struct Quat { float x, y, z, w; };
inline Vec3 operator+(Vec3 a, Vec3 b) { return {a.x + b.x, a.y + b.y, a.z + b.z}; }
inline Vec3 operator*(Vec3 a, float b) { return {a.x * b, a.y * b, a.z * b}; }
inline Quat operator*(Quat a, Quat b) {
  return {a.w*b.x + a.x*b.w + a.y*b.z - a.z*b.y,
          a.w*b.y - a.x*b.z + a.y*b.w + a.z*b.x,
          a.w*b.z + a.x*b.y - a.y*b.x + a.z*b.w,
          a.w*b.w - a.x*b.x - a.y*b.y - a.z*b.z};
}
inline Vec3 Rotate(Quat q, Vec3 v) {
  const Quat r = q * Quat{v.x, v.y, v.z, 0.f} * Quat{-q.x, -q.y, -q.z, q.w};
  return {r.x, r.y, r.z};
}
inline Quat AxisAngle(Vec3 axis, float degrees) {
  const float angle = degrees * 0.008726646259971648f;
  return {axis.x * std::sin(angle), axis.y * std::sin(angle), axis.z * std::sin(angle), std::cos(angle)};
}
// Expand the input-driven pitch about the horizon, without a constant pitch bias.
inline float ExpandLookPitch(Quat view, float up, float down) {
  if (up == 1.f && down == 1.f) return 0.f;
  const Vec3 forward = Rotate(view, {0, 0, 1});
  const float pitch = -std::atan2(forward.y, std::hypot(forward.x, forward.z)) * 57.295779513f;
  const float range = pitch < 0.f ? up : down;
  return range == 1.f ? 0.f : std::clamp(pitch * range, -89.f, 89.f) - pitch;
}
inline bool Finite(Vec3 v) { return std::isfinite(v.x) && std::isfinite(v.y) && std::isfinite(v.z); }
struct Bounds { Vec3 center, extents; };
inline bool NearHeadAccessory(const Bounds& bounds, Vec3 head) {
  if (!Finite(bounds.center) || !Finite(bounds.extents) || !Finite(head)) return false;
  const auto e = bounds.extents;
  if (e.x < 0.f || e.y < 0.f || e.z < 0.f || e.x + e.y + e.z < 0.005f) return false;
  const Vec3 d{bounds.center.x-head.x, bounds.center.y-head.y, bounds.center.z-head.z};
  // Require the entire box to fit the head region, not merely intersect it.
  // Keep anything extending into the torso, including mixed clothing meshes.
  return d.y >= -0.05f && d.y-e.y >= -0.25f && d.y+e.y <= 0.65f
      && std::hypot(std::abs(d.x)+e.x, std::abs(d.z)+e.z) <= 0.55f;
}
inline bool Unit(Quat q) {
  const float n = q.x*q.x + q.y*q.y + q.z*q.z + q.w*q.w;
  return std::isfinite(n) && n > 0.98f && n < 1.02f;
}
}  // namespace endfield::camera

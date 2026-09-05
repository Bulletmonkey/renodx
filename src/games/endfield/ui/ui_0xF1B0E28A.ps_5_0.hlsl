// ---- Created with 3Dmigoto v1.4.1 on Thu Jan 22 11:53:21 2026
#include "../shared.h"

Texture2D<float4> t0 : register(t0);
SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1) {
  float4 cb1[13];
}

cbuffer cb0 : register(b0) {
  float4 cb0[6];
}

// 3Dmigoto declarations
void main(
    float4 v0 : SV_Position0,
    float4 v1 : TEXCOORD0,
    float2 v2 : TEXCOORD1,
    float4 v3 : TEXCOORD2,
    float4 v4 : TEXCOORD3,
    float4 v5 : TEXCOORD4,
    out float4 o0 : SV_Target0) {
  float4 r0, r1;

  r0.x = 0.000000 != cb1[12].x;
  r1.xyzw = t0.Sample(s0_s, v2.xy).xyzw;
  r1.w = r0.x ? 1 : r1.w;
  r0.xyzw = cb0[5].xyzw + r1.xyzw;
  r1.x = 255 * v1.w;
  r1.x = round(r1.x);
  r1.w = 0.00392156886 * r1.x;
  r1.xyz = v1.xyz;
  r0.xyzw = r1.xyzw * r0.xyzw;
  o0.xyz = r0.xyz * r0.www;
  o0.w = cb1[11].x * -r0.w + r0.w;

  // RenoDX: use the fixed 1.5 pixel mask after draw-specific classification.
  if (UI_VISIBILITY < 0.5f) discard;
  float2 viewport_size = float2(shader_injection.latency_bar_viewport_width,
                               shader_injection.latency_bar_viewport_height);
  float2 uv_pixel_size = fwidth(v2);
  if (LATENCY_BAR_DRAW_OPACITY < 0.5f && all(viewport_size > 0.0f)) {
    float2 pixel_position = v0.xy - float2(shader_injection.latency_bar_viewport_x,
                                         shader_injection.latency_bar_viewport_y);
    float2 screen_uv = pixel_position / viewport_size;
    bool is_hud_latency_bar = screen_uv.x >= 0.005f && screen_uv.x <= 0.035f
                           && screen_uv.y >= 0.95f && screen_uv.y <= 0.995f;
    bool is_transition_latency_bar = pixel_position.x >= 20.0f && pixel_position.x <= 60.0f
                                  && pixel_position.y >= 15.0f && pixel_position.y <= 50.0f
                                  && uv_pixel_size.x >= 0.1f && uv_pixel_size.y >= 0.05f;
    if (is_hud_latency_bar || is_transition_latency_bar) discard;
  }
}

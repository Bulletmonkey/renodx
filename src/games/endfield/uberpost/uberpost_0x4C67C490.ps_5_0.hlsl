// Endfield DX11 1.5: derived from this shader's own 0x4C67C490 dump.
#include "../shared.h"

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[12];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[27].z + -1;
  r0.x = cb1[2].w * r0.x + 1;
  r0.yz = -cb1[1].xy + v1.xy;
  r1.yz = cb1[2].xx * abs(r0.zy);
  r1.x = r1.z * r0.x;
  r1.xy = saturate(r1.xy);
  r0.xy = log2(r1.xy);
  r0.xy = cb1[2].zz * r0.xy;
  r0.xy = exp2(r0.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb1[2].y * r0.x;
  r0.x = exp2(r0.x);
  // RenoDX: this is a linear composite; scale its vignette without adding another tone map.
  r0.x = lerp(1.0f, r0.x, VIGNETTE_STRENGTH);
  r0.yzw = -cb1[4].xyz + float3(1,1,1);
  r0.xyz = r0.xxx * r0.yzw + cb1[4].xyz;
  r1.xyzw = t1.SampleLevel(s0_s, v1.xy, 0).xyzw;
  r2.xyz = log2(r1.xyz);
  r2.xyz = float3(0.330000013,0.330000013,0.330000013) * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r2.xyz * float3(1.49380004,1.49380004,1.49380004) + float3(-0.699999988,-0.699999988,-0.699999988);
  r0.w = -cb1[9].z + 1;
  r3.xyz = r1.xyz * r0.www;
  r3.xyz = cmp(float3(0.300000012,0.300000012,0.300000012) < r3.xyz);
  r1.xyz = r3.xyz ? r2.xyz : r1.xyz;
  r2.xyzw = t0.SampleLevel(s0_s, v1.xy, 0).xyzw;
  r0.w = max(r2.x, r2.y);
  r0.w = max(r0.w, r2.z);
  r3.xy = -cb1[10].yx + r0.ww;
  r0.w = max(9.99999975e-005, r0.w);
  r3.x = max(0, r3.x);
  r3.x = min(cb1[10].z, r3.x);
  r3.x = r3.x * r3.x;
  r3.x = cb1[10].w * r3.x;
  r3.x = max(r3.x, r3.y);
  r0.w = r3.x / r0.w;
  r3.xyz = r2.xyz * r0.www;
  r3.xyz = -r3.xyz * cb1[9].zzz + r2.xyz;
  r1.xyz = r1.xyz * cb1[11].xyz + r3.xyz;
  r1.xyz = r1.xyz + -r2.xyz;
  r1.xyz = cb1[9].xxx * r1.xyz + r2.xyz;
  o0.w = saturate(r2.w + r1.w);
  o0.xyz = r1.xyz * r0.xyz;
  return;
}

// Endfield 1.5 DX11 0xDC56DC61: own native depth-reconstructed-normal GTAO pass.
// RenoDX: controls and visibility-bitmask behavior follow the fixed Vulkan 1.5 pass.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[16];
}




#include "../shared.h"
#include "gtao-bitmask.hlsli"
#define cmp -
RWTexture2D<unorm float4> u0 : register(u0);
RWTexture2D<unorm float4> u1 : register(u1);


[numthreads(8, 8, 1)]
void main(uint3 vThreadID : SV_DispatchThreadID)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;


  // RenoDX: select the same GTAO controls as the normal-texture permutation.

  bool use_improved = IMPROVED_GTAO >= 0.5;
  float _ao_radius             = use_improved ? AO_RADIUS             : cb1[0].x;
  float _ao_radius_scale       = use_improved ? AO_RADIUS_SCALE       : cb1[0].y;
  float _ao_falloff_range      = use_improved ? AO_FALLOFF_RANGE      : cb1[0].z;
  float _ao_distribution_power = use_improved ? AO_DISTRIBUTION_POWER : cb1[0].w;
  float _ao_thin_occluder      = use_improved ? AO_THIN_OCCLUDER      : cb1[1].x;
  float _ao_gamma              = use_improved ? AO_GAMMA              : cb1[1].y;
  float _ao_mip_bias           = use_improved ? AO_MIP_BIAS           : cb1[1].w;
  float _ao_thickness          = use_improved ? AO_THICKNESS          : 1.3;
  float _ao_direction_count    = use_improved ? AO_DIRECTION_COUNT    : 3.0;
  float _ao_normal_attenuation = use_improved ? AO_NORMAL_ATTENUATION : 0.05;
  float _ao_max_mip            = use_improved ? 4.0                   : cb1[3].x - 1.0;
  bool  _ao_bitmask            = use_improved && (AO_BITMASK >= 0.5);

  r0.xy = vThreadID.yx;
  r0.zw = float2(32,0);
  while (true) {
    r1.x = cmp(0 >= (uint)r0.z);
    if (r1.x != 0) break;
    r1.xy = (int2)r0.zz & (int2)r0.yx;
    r1.xy = min(uint2(1,1), (uint2)r1.xy);
    r1.z = (int)r0.z * (int)r0.z;
    r1.w = (int)r1.x * 3;
    r1.w = (int)r1.y ^ (int)r1.w;
    r0.w = mad((int)r1.z, (int)r1.w, (int)r0.w);
    r1.x = cmp((int)r1.x == 1);
    r1.zw = (int2)-r0.yx + int2(63,63);
    r1.xz = r1.xx ? r1.zw : r0.yx;
    r0.xy = r1.yy ? r0.xy : r1.xz;
    r0.z = (uint)r0.z >> 1;
  }
  r0.x = (uint)cb1[1].z;
  r0.x = (int)r0.x & 63;
  r0.x = mad(288, (int)r0.x, (int)r0.w);
  r0.x = (uint)r0.x;
  r0.xy = r0.xx * float2(0.754877687,0.569840312) + float2(0.5,0.5);
  r0.xy = frac(r0.xy);
  r0.zw = (uint2)vThreadID.xy;
  r1.xyzw = float4(0.5,0.5,0.5,0.5) + r0.zwzw;
  r2.xy = cb1[4].zw * r1.zw;
  r0.zw = cb1[4].zw * r0.zw;
  r3.xyz = t0.Gather(s0_s, r0.zw).xyz;
  r4.zw = t0.Gather(s0_s, r0.zw, int2(1, 1)).zx;
  r4.xy = r3.xz;
  r5.xyzw = r4.xyzw + -r3.yyyy;
  r6.xyzw = r5.zwzw + -r5.xyxy;
  r6.xyzw = r6.xyzw * float4(0.5,0.5,-0.5,-0.5) + r5.xyzw;
  r5.xyzw = min(abs(r6.xyzw), abs(r5.xyzw));
  r6.xw = float2(0.0109999999,0.999989986) * r3.yy;
  r5.xyzw = r5.xyzw / r6.xxxx;
  r5.xyzw = saturate(float4(1.25,1.25,1.25,1.25) + -r5.xyzw);
  r7.xyzw = float4(2.9000001,2.9000001,2.9000001,2.9000001) * r5.xzyw;
  r7.xyzw = round(r7.xyzw);
  r0.z = dot(r7.xyzw, float4(0.250980407,0.0627451017,0.0156862754,0.00392156886));
  u1[vThreadID.xy] = r0.zzzz;
  r0.zw = r2.xy * float2(2,2) + float2(-1,-1);
  r2.zw = cb0[13].xy * r0.ww;
  r0.zw = cb0[12].xy * r0.zz + r2.zw;
  r0.zw = cb0[14].xy + r0.zw;
  r0.zw = cb0[15].xy + r0.zw;
  r7.xy = r0.zw * r3.yy;
  r8.xyzw = cb1[4].zwzw * float4(-1,0,1,0) + r2.xyxy;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = cb0[13].xyxy * r8.yyww;
  r8.xyzw = cb0[12].xyxy * r8.xxzz + r9.xyzw;
  r8.xyzw = cb0[14].xyxy + r8.xyzw;
  r8.xyzw = cb0[15].xyxy + r8.xyzw;
  r9.xy = r8.xy * r4.xx;
  r8.xy = r8.zw * r4.zz;
  r2.xyzw = cb1[4].zwzw * float4(0,-1,0,1) + r2.xyxy;
  r2.xyzw = r2.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = cb0[13].xyxy * r2.yyww;
  r2.xyzw = cb0[12].xyxy * r2.xxzz + r10.xyzw;
  r2.xyzw = cb0[14].xyxy + r2.xyzw;
  r2.xyzw = cb0[15].xyxy + r2.xyzw;
  r10.xy = r2.xy * r3.zz;
  r2.xy = r2.zw * r4.ww;
  r5.xyzw = r5.xyzw * r5.yzwx + float4(0.00999999978,0.00999999978,0.00999999978,0.00999999978);
  r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
  r7.z = -r7.y;
  r7.w = r3.y;
  r9.z = -r9.y;
  r9.w = r4.x;
  r3.xyz = r9.zwx + -r7.zwx;
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r8.z = -r8.y;
  r8.w = r4.z;
  r8.xyz = r8.wxz + -r7.wxz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = rsqrt(r3.w);
  r8.xyz = r8.xyz * r3.www;
  r10.z = -r10.y;
  r10.w = r4.y;
  r4.xyz = r10.wxz + -r7.wxz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r2.z = -r2.y;
  r2.w = r4.w;
  r2.xyz = -r7.wxz + r2.wxz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r7.xyz = r4.zxy * r3.yzx;
  r7.xyz = r3.xyz * r4.xyz + -r7.xyz;
  r9.xyz = r4.xyz * r8.zxy;
  r4.xyz = r4.zxy * r8.xyz + -r9.xyz;
  r4.xyz = r4.xyz * r5.yyy;
  r4.xyz = r7.xyz * r5.xxx + r4.xyz;
  r7.xyz = r8.xyz * r2.zxy;
  r7.xyz = r8.zxy * r2.xyz + -r7.xyz;
  r4.xyz = r7.xyz * r5.zzz + r4.xyz;
  r5.xyz = r2.xyz * r3.xyz;
  r2.xyz = r2.zxy * r3.yzx + -r5.xyz;
  r2.xyz = r2.xyz * r5.www + r4.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r6.xy = r0.zw * r6.ww;
  r6.z = -r6.y;
  r0.z = dot(-r6.xzw, -r6.xzw);
  r0.z = rsqrt(r0.z);
  r3.xyz = -r6.xzw * r0.zzz;
  r0.zw = r1.zw * cb1[4].zw + cb1[4].zw;
  r0.zw = r0.zw * float2(2,2) + float2(-1,-1);
  r0.w = cb0[13].x * r0.w;
  r0.z = cb0[12].x * r0.z + r0.w;
  r0.z = cb0[14].x + r0.z;
  r0.z = cb0[15].x + r0.z;
  r0.z = r0.z * r6.w + -r6.x;
  r0.w = _ao_radius * _ao_radius_scale;
  r0.w = r0.w / r0.z;
  r0.w = min(48, r0.w);
  r0.z = r0.w * r0.z;
  r2.w = _ao_falloff_range * r0.z;
  r3.w = -1 / r2.w;
  r4.x = -_ao_falloff_range + 1;
  r0.z = r4.x * r0.z;
  r0.z = r0.z / r2.w;
  r0.z = 1 + r0.z;
  // RenoDX: use depth-scaled thickness, as in the Vulkan 1.5 implementation.
  float scaledThickness = _ao_thickness * (use_improved ? 1.0 + max(0.0, length(r6.xzw) - 100.0) * 0.02 : 1.0);
  r2.w = scaledThickness / r0.w;
  r4.x = 10 + -r0.w;
  r4.x = saturate(0.00999999978 * r4.x);
  r4.x = 0.5 * r4.x;
  r4.y = _ao_max_mip;
  r4.z = _ao_thin_occluder + 1;
  r5.z = 0;
  r7.x = r4.x;
  r7.y = 0;
  while (true) {
    r4.w = cmp(r7.y >= _ao_direction_count);
    if (r4.w != 0) break;
    r4.w = r7.y + r0.x;
    r4.w = (3.14159265 / _ao_direction_count) * r4.w;
    sincos(r4.w, r8.x, r5.x);
    r5.y = r8.x;
    r8.xyzw = r5.xyxy * r0.wwww;
    r4.w = dot(r5.xy, r3.xy);
    r5.xyw = -r3.xyz * r4.www + r5.xyz;
    r9.xyz = r5.wxy * r3.yzx;
    r9.xyz = r5.ywx * r3.zxy + -r9.xyz;
    r4.w = dot(r9.xyz, r9.xyz);
    r4.w = rsqrt(r4.w);
    r9.xyz = r9.xyz * r4.www;
    r4.w = dot(-r2.xyz, r9.xyz);
    r9.xyz = -r9.xyz * r4.www + -r2.xyz;
    r4.w = dot(r9.xyz, r9.xyz);
    r4.w = sqrt(r4.w);
    r6.y = dot(r9.xyz, r3.xyz);
    r6.y = saturate(r6.y / r4.w);
    r5.x = dot(r5.xyw, r9.xyz);
    r5.y = cmp(0 < r5.x);
    r5.x = cmp(r5.x < 0);
    r5.x = (int)-r5.y + (int)r5.x;
    r5.x = (int)r5.x;
    r5.y = r6.y * -0.156582996 + 1.57079601;
    r5.w = 1 + -r6.y;
    r5.w = asfloat(asuint(r5.w) >> 1);
    r5.w = asfloat(asint(r5.w) + 0x1fbd1df5);
    r5.y = r5.y * r5.w;
    r5.y = max(0, r5.y);
    r5.y = min(3.14159298, r5.y);
    r5.w = r5.x * r5.y;
    r9.xy = r5.xx * r5.yy + float2(1.57079637,-1.57079637);
    r9.xy = cos(r9.xy);
    // RenoDX: bitmask visibility for this sampling direction.
    uint bitmask = 0u;
    r9.z = r7.y * 0.618034005 + r0.y;
    r9.z = frac(r9.z);
    r9.z = 0.333333343 * r9.z;
    r9.z = log2(r9.z);
    r9.z = _ao_distribution_power * r9.z;
    r9.z = exp2(r9.z);
    r9.z = r9.z + r2.w;
    r9.zw = r9.zz * r8.zw;
    r10.x = dot(r9.zw, r9.zw);
    r10.x = sqrt(r10.x);
    r10.x = log2(r10.x);
    r10.x = -_ao_mip_bias + r10.x;
    r10.x = max(0, r10.x);
    r10.x = min(r10.x, r4.y);
    r9.zw = round(r9.zw);
    r9.zw = cb1[4].zw * r9.zw;
    r10.yz = r1.zw * cb1[4].zw + r9.zw;
    r11.w = t0.SampleLevel(s0_s, r10.yz, r10.x).x;
    r10.yz = r10.yz * float2(2,2) + float2(-1,-1);
    r10.zw = cb0[13].xy * r10.zz;
    r10.yz = cb0[12].xy * r10.yy + r10.zw;
    r10.yz = cb0[14].xy + r10.yz;
    r10.yz = cb0[15].xy + r10.yz;
    r11.xy = r10.yz * r11.ww;
    r9.zw = r1.zw * cb1[4].zw + -r9.zw;
    r10.w = t0.SampleLevel(s0_s, r9.zw, r10.x).x;
    r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
    r12.xy = cb0[13].xy * r9.ww;
    r9.zw = cb0[12].xy * r9.zz + r12.xy;
    r9.zw = cb0[14].xy + r9.zw;
    r9.zw = cb0[15].xy + r9.zw;
    r10.xy = r9.zw * r10.ww;
    r11.z = -r11.y;
    r11.xyz = r11.xzw + -r6.xzw;
    r10.z = -r10.y;
    r10.xyz = r10.xzw + -r6.xzw;
    if (_ao_bitmask) {
      BM_ProcessSample(r11.xyz, r3.xyz, -1.0, r5.w, scaledThickness, bitmask);
      BM_ProcessSample(r10.xyz, r3.xyz, 1.0, r5.w, scaledThickness, bitmask);
    }
    r9.z = dot(r11.xyz, r11.xyz);
    r9.z = sqrt(r9.z);
    r12.xyz = r11.xyz / r9.zzz;
    r9.z = dot(r12.xyz, r3.xyz);
    r11.w = r11.z * r4.z;
    r9.w = dot(r11.xyw, r11.xyw);
    r9.w = sqrt(r9.w);
    r9.w = saturate(r9.w * r3.w + r0.z);
    r9.z = r9.z + -r9.x;
    r9.z = r9.w * r9.z + r9.x;
    r9.w = dot(r10.xyz, r10.xyz);
    r9.w = sqrt(r9.w);
    r11.xyz = r10.xyz / r9.www;
    r9.w = dot(r11.xyz, r3.xyz);
    r10.w = r10.z * r4.z;
    r10.x = dot(r10.xyw, r10.xyw);
    r10.x = sqrt(r10.x);
    r10.x = saturate(r10.x * r3.w + r0.z);
    r9.w = r9.w + -r9.y;
    r9.w = r10.x * r9.w + r9.y;
    r9.zw = max(r9.xy, r9.zw);
    r7.yzw = float3(1,3,6) + r7.yyy;
    r10.xyzw = r7.zzww * float4(0.618034005,0.618034005,0.618034005,0.618034005) + r0.yyyy;
    r10.xyzw = frac(r10.xyzw);
    r10.xyzw = float4(1,1,2,2) + r10.xyzw;
    r10.xyzw = float4(0.333333343,0.333333343,0.333333343,0.333333343) * r10.xyzw;
    r10.xyzw = log2(r10.xyzw);
    r10.xyzw = _ao_distribution_power * r10.xyzw;
    r10.xyzw = exp2(r10.xyzw);
    r10.xyzw = r10.xyzw + r2.wwww;
    r8.xyzw = r10.xyzw * r8.xyzw;
    r7.z = dot(r8.xy, r8.xy);
    r7.z = sqrt(r7.z);
    r7.z = log2(r7.z);
    r7.z = -_ao_mip_bias + r7.z;
    r7.z = max(0, r7.z);
    r7.z = min(r7.z, r4.y);
    r10.xyzw = round(r8.xyzw);
    r10.xyzw = cb1[4].zwzw * r10.xyzw;
    r11.xyzw = r1.zwzw * cb1[4].zwzw + r10.xyzw;
    r12.w = t0.SampleLevel(s0_s, r11.xy, r7.z).x;
    r13.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r14.xyzw = cb0[13].xyxy * r13.yyww;
    r13.xyzw = cb0[12].xyxy * r13.xxzz + r14.xyzw;
    r13.xyzw = cb0[14].xyxy + r13.xyzw;
    r13.xyzw = cb0[15].xyxy + r13.xyzw;
    r12.xy = r13.xy * r12.ww;
    r10.xyzw = r1.xyzw * cb1[4].zwzw + -r10.xyzw;
    r14.w = t0.SampleLevel(s0_s, r10.xy, r7.z).x;
    r15.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r16.xyzw = cb0[13].xyxy * r15.yyww;
    r15.xyzw = cb0[12].xyxy * r15.xxzz + r16.xyzw;
    r15.xyzw = cb0[14].xyxy + r15.xyzw;
    r15.xyzw = cb0[15].xyxy + r15.xyzw;
    r14.xy = r15.xy * r14.ww;
    r12.z = -r12.y;
    r12.xyz = r12.xzw + -r6.xzw;
    r14.z = -r14.y;
    r14.xyz = r14.xzw + -r6.xzw;
    if (_ao_bitmask) {
      BM_ProcessSample(r12.xyz, r3.xyz, -1.0, r5.w, scaledThickness, bitmask);
      BM_ProcessSample(r14.xyz, r3.xyz, 1.0, r5.w, scaledThickness, bitmask);
    }
    r7.z = dot(r12.xyz, r12.xyz);
    r7.z = sqrt(r7.z);
    r16.xyz = r12.xyz / r7.zzz;
    r7.z = dot(r16.xyz, r3.xyz);
    r12.w = r12.z * r4.z;
    r7.w = dot(r12.xyw, r12.xyw);
    r7.w = sqrt(r7.w);
    r7.w = saturate(r7.w * r3.w + r0.z);
    r7.z = r7.z + -r9.x;
    r7.z = r7.w * r7.z + r9.x;
    r7.w = dot(r14.xyz, r14.xyz);
    r7.w = sqrt(r7.w);
    r12.xyz = r14.xyz / r7.www;
    r7.w = dot(r12.xyz, r3.xyz);
    r14.w = r14.z * r4.z;
    r8.x = dot(r14.xyw, r14.xyw);
    r8.x = sqrt(r8.x);
    r8.x = saturate(r8.x * r3.w + r0.z);
    r7.w = r7.w + -r9.y;
    r7.w = r8.x * r7.w + r9.y;
    r7.zw = max(r9.zw, r7.zw);
    r8.x = dot(r8.zw, r8.zw);
    r8.x = sqrt(r8.x);
    r8.x = log2(r8.x);
    r8.x = -_ao_mip_bias + r8.x;
    r8.x = max(0, r8.x);
    r8.x = min(r8.x, r4.y);
    r11.w = t0.SampleLevel(s0_s, r11.zw, r8.x).x;
    r11.xy = r13.zw * r11.ww;
    r8.w = t0.SampleLevel(s0_s, r10.zw, r8.x).x;
    r8.xy = r15.zw * r8.ww;
    r11.z = -r11.y;
    r10.xyz = r11.xzw + -r6.xzw;
    r8.z = -r8.y;
    r8.xyz = r8.xzw + -r6.xzw;
    if (_ao_bitmask) {
      BM_ProcessSample(r10.xyz, r3.xyz, -1.0, r5.w, scaledThickness, bitmask);
      BM_ProcessSample(r8.xyz, r3.xyz, 1.0, r5.w, scaledThickness, bitmask);
    }
    r9.z = dot(r10.xyz, r10.xyz);
    r9.z = sqrt(r9.z);
    r11.xyz = r10.xyz / r9.zzz;
    r9.z = dot(r11.xyz, r3.xyz);
    r10.w = r10.z * r4.z;
    r9.w = dot(r10.xyw, r10.xyw);
    r9.w = sqrt(r9.w);
    r9.w = saturate(r9.w * r3.w + r0.z);
    r9.z = r9.z + -r9.x;
    r9.x = r9.w * r9.z + r9.x;
    r7.z = max(r9.x, r7.z);
    r9.x = dot(r8.xyz, r8.xyz);
    r9.x = sqrt(r9.x);
    r9.xzw = r8.xyz / r9.xxx;
    r9.x = dot(r9.xzw, r3.xyz);
    r8.w = r8.z * r4.z;
    r8.x = dot(r8.xyw, r8.xyw);
    r8.x = sqrt(r8.x);
    r8.x = saturate(r8.x * r3.w + r0.z);
    r8.y = r9.x + -r9.y;
    r8.x = r8.x * r8.y + r9.y;
    r7.w = max(r8.x, r7.w);
    // RenoDX: select bitmask visibility or the original arc integration.
    if (_ao_bitmask) {
      r7.x += 1.0 - (float)countbits(bitmask) / 32.0;
    } else {
    r8.x = abs(r7.w) * -0.156582996 + 1.57079601;
    r8.y = 1 + -abs(r7.w);
    r8.y = asfloat(asuint(r8.y) >> 1);
    r8.y = asfloat(asint(r8.y) + 0x1fbd1df5);
    r8.z = r8.x * r8.y;
    r8.w = abs(r7.z) * -0.156582996 + 1.57079601;
    r9.x = 1 + -abs(r7.z);
    r9.x = asfloat(asuint(r9.x) >> 1);
    r9.x = asfloat(asint(r9.x) + 0x1fbd1df5);
    r9.y = r9.x * r8.w;
    r7.zw = cmp(r7.zw >= float2(0,0));
    r8.x = -r8.x * r8.y + 3.14159298;
    r7.w = r7.w ? r8.z : r8.x;
    r7.w = max(0, r7.w);
    r7.w = min(3.14159298, r7.w);
    r8.x = -2 * r7.w;
    r8.y = sin(r5.w);
    r8.z = -r8.w * r9.x + 3.14159298;
    r7.z = r7.z ? r9.y : r8.z;
    r7.z = max(0, r7.z);
    r7.z = min(3.14159298, r7.z);
    r7.z = r7.z + r7.z;
    r8.z = 1 + -r4.w;
    r4.w = r8.z * _ao_normal_attenuation + r4.w;
    r8.x = r8.x * r8.y + r6.y;
    r5.w = r7.w * -2 + -r5.w;
    r5.w = cos(r5.w);
    r5.w = r8.x + -r5.w;
    r6.y = r7.z * r8.y + r6.y;
    r5.x = -r5.x * r5.y + r7.z;
    r5.x = cos(r5.x);
    r5.x = r6.y + -r5.x;
    r5.x = r5.w + r5.x;
    r4.w = r5.x * r4.w;
    r7.x = r4.w * 0.25 + r7.x;
    }
  }
  r0.x = (1.0 / _ao_direction_count) * r7.x;
  r0.x = log2(abs(r0.x));
  r0.x = _ao_gamma * r0.x;
  r0.x = exp2(r0.x);
  r0.x = max(0.0299999993, r0.x);
  r0.x = 0.666666687 * r0.x;
  r0.x = min(1, r0.x);
  // RenoDX: retain edge output while disabling AO.
  if (shader_injection.disable_game_ao >= 0.5f) r0.x = 1.0f;
  u0[vThreadID.xy] = r0.xxxx;
  return;
}

// DX11 shader 0xB4CAAAA7, decompiled from the matching 1.4.4 game shader dump.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

// Decompiler repair: Restore the vanilla typed UAV declaration.
RWTexture2D<unorm float> u0 : register(u0);

SamplerState s0_s : register(s0);

// RenoDX code: Inject the addon constants and replacement logic.
cbuffer cb13 : register(b13)
{
  float4 cb13[15];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


// Decompiler repair: Restore the vanilla compute dispatch signature.
[numthreads(8, 8, 1)]
void main(uint3 vThreadID : SV_DispatchThreadID)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.yz = (uint2)vThreadID.xy << int2(1,0);
  r1.xy = (uint2)r0.yz;
  r1.xy = cb0[4].zw * r1.xy;
  r2.xyz = t1.Gather(s0_s, r1.xy).xyz;
  r2.xyz = float3(255.5,255.5,255.5) * r2.xzy;
  r2.xyz = (uint3)r2.xyz;
  if (2 == 0) r3.x = 0; else if (2+4 < 32) {   r3.x = (uint)r2.x << (32-(2 + 4)); r3.x = (uint)r3.x >> (32-2);  } else r3.x = (uint)r2.x >> 4;
  if (2 == 0) r3.y = 0; else if (2+2 < 32) {   r3.y = (uint)r2.x << (32-(2 + 2)); r3.y = (uint)r3.y >> (32-2);  } else r3.y = (uint)r2.x >> 2;
  if (2 == 0) r3.z = 0; else if (2+6 < 32) {   r3.z = (uint)r2.y << (32-(2 + 6)); r3.z = (uint)r3.z >> (32-2);  } else r3.z = (uint)r2.y >> 6;
  if (2 == 0) r3.w = 0; else if (2+4 < 32) {   r3.w = (uint)r2.y << (32-(2 + 4)); r3.w = (uint)r3.w >> (32-2);  } else r3.w = (uint)r2.y >> 4;
  r3.xyzw = (uint4)r3.xyzw;
  r3.xyzw = float4(0.333333343,0.333333343,0.333333343,0.333333343) * r3.xyzw;
  if (2 == 0) r4.x = 0; else if (2+6 < 32) {   r4.x = (uint)r2.z << (32-(2 + 6)); r4.x = (uint)r4.x >> (32-2);  } else r4.x = (uint)r2.z >> 6;
  if (2 == 0) r4.y = 0; else if (2+4 < 32) {   r4.y = (uint)r2.z << (32-(2 + 4)); r4.y = (uint)r4.y >> (32-2);  } else r4.y = (uint)r2.z >> 4;
  if (2 == 0) r4.z = 0; else if (2+2 < 32) {   r4.z = (uint)r2.z << (32-(2 + 2)); r4.z = (uint)r4.z >> (32-2);  } else r4.z = (uint)r2.z >> 2;
  r2.xyz = (int3)r2.xyz & int3(3,3,3);
  r2.xyz = (uint3)r2.xyz;
  r2.xyz = float3(0.333333343,0.333333343,0.333333343) * r2.xyz;
  r4.xyz = (uint3)r4.xyz;
  r5.x = r4.x * r3.x;
  r5.yz = float2(0.333333343,0.333333343) * r4.yz;
  r4.x = 0.333333343;
  r1.zw = t1.Gather(s0_s, r1.xy, int2(1, 2)).zw;
  r6.xyzw = float4(255.5,255.5,255.5,255.5) * r1.wwwz;
  r6.xyzw = (uint4)r6.xyzw;
  if (2 == 0) r7.x = 0; else if (2+6 < 32) {   r7.x = (uint)r6.x << (32-(2 + 6)); r7.x = (uint)r7.x >> (32-2);  } else r7.x = (uint)r6.x >> 6;
  if (2 == 0) r7.y = 0; else if (2+4 < 32) {   r7.y = (uint)r6.y << (32-(2 + 4)); r7.y = (uint)r7.y >> (32-2);  } else r7.y = (uint)r6.y >> 4;
  if (2 == 0) r7.z = 0; else if (2+2 < 32) {   r7.z = (uint)r6.z << (32-(2 + 2)); r7.z = (uint)r7.z >> (32-2);  } else r7.z = (uint)r6.z >> 2;
  if (2 == 0) r7.w = 0; else if (2+6 < 32) {   r7.w = (uint)r6.w << (32-(2 + 6)); r7.w = (uint)r7.w >> (32-2);  } else r7.w = (uint)r6.w >> 6;
  if (2 == 0) r1.z = 0; else if (2+4 < 32) {   r1.z = (uint)r6.w << (32-(2 + 4)); r1.z = (uint)r1.z >> (32-2);  } else r1.z = (uint)r6.w >> 4;
  if (2 == 0) r1.w = 0; else if (2+2 < 32) {   r1.w = (uint)r6.w << (32-(2 + 2)); r1.w = (uint)r1.w >> (32-2);  } else r1.w = (uint)r6.w >> 2;
  r1.zw = (uint2)r1.zw;
  r6.xyzw = (uint4)r7.xyzw;
  r6.xyzw = float4(0.333333343,0.333333343,0.333333343,0.333333343) * r6.xyzw;
  r4.w = r6.z;
  r5.w = r2.z;
  r4.z = r2.y;
  r7.xyz = t1.Gather(s0_s, r1.xy, int2(2, 0)).xyw;
  r7.xyz = float3(255.5,255.5,255.5) * r7.xzy;
  r7.xyz = (uint3)r7.xyz;
  if (2 == 0) r8.x = 0; else if (2+6 < 32) {   r8.x = (uint)r7.x << (32-(2 + 6)); r8.x = (uint)r8.x >> (32-2);  } else r8.x = (uint)r7.x >> 6;
  if (2 == 0) r8.y = 0; else if (2+2 < 32) {   r8.y = (uint)r7.x << (32-(2 + 2)); r8.y = (uint)r8.y >> (32-2);  } else r8.y = (uint)r7.x >> 2;
  if (2 == 0) r8.z = 0; else if (2+6 < 32) {   r8.z = (uint)r7.y << (32-(2 + 6)); r8.z = (uint)r8.z >> (32-2);  } else r8.z = (uint)r7.y >> 6;
  if (2 == 0) r8.w = 0; else if (2+4 < 32) {   r8.w = (uint)r7.y << (32-(2 + 4)); r8.w = (uint)r8.w >> (32-2);  } else r8.w = (uint)r7.y >> 4;
  r8.xyzw = (uint4)r8.xyzw;
  r8.xyzw = float4(0.333333343,0.333333343,0.333333343,0.333333343) * r8.xyzw;
  r4.y = r8.x;
  r9.xyzw = r5.xyzw * r4.xyzw;
  r4.xzw = r4.yxx;
  r0.w = dot(r9.xyzw, float4(1,1,1,1));
  r0.w = saturate(1.5 + -r0.w);
  r9.xyzw = r0.wwww * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r9.xyzw;
  r9.xyzw = min(float4(1,1,1,1), r9.xyzw);
  r0.w = cb0[2].x + r9.x;
  r0.w = r0.w + r9.y;
  r0.w = r0.w + r9.z;
  r0.w = r0.w + r9.w;
  r3.xyz = r9.xzz * r3.yzw;
  r2.y = r3.x + r3.y;
  r2.w = r9.y * r8.y + r3.z;
  r0.w = r2.y * 0.425000012 + r0.w;
  r0.w = r2.w * 0.425000012 + r0.w;
  r3.xy = r9.ww * r6.xy;
  r2.x = r9.x * r2.x + r3.x;
  r0.w = r2.x * 0.425000012 + r0.w;
  r2.xyw = float3(0.425000012,0.425000012,0.425000012) * r2.xyw;
  r3.xzw = (int3)r7.xyz & int3(3,3,3);
  if (2 == 0) r6.x = 0; else if (2+6 < 32) {   r6.x = (uint)r7.z << (32-(2 + 6)); r6.x = (uint)r6.x >> (32-2);  } else r6.x = (uint)r7.z >> 6;
  if (2 == 0) r6.y = 0; else if (2+2 < 32) {   r6.y = (uint)r7.z << (32-(2 + 2)); r6.y = (uint)r6.y >> (32-2);  } else r6.y = (uint)r7.z >> 2;
  if (2 == 0) r6.z = 0; else if (2+4 < 32) {   r6.z = (uint)r7.x << (32-(2 + 4)); r6.z = (uint)r6.z >> (32-2);  } else r6.z = (uint)r7.x >> 4;
  r6.xyz = (uint3)r6.xyz;
  r3.xzw = (uint3)r3.xzw;
  r3.xw = float2(0.333333343,0.333333343) * r3.xw;
  r7.z = r3.z * r8.y;
  r3.y = r9.y * r3.x + r3.y;
  r0.w = r3.y * 0.425000012 + r0.w;
  r3.y = 0.425000012 * r3.y;
  r10.xyzw = t0.Gather(s0_s, r1.xy).xyzw;
  r3.z = r10.x * r9.x;
  r3.z = r10.y * cb0[2].x + r3.z;
  r11.xyzw = t0.Gather(s0_s, r1.xy, int2(2, 0)).xyzw;
  r3.z = r9.y * r11.x + r3.z;
  r3.z = r9.z * r10.z + r3.z;
  r5.xw = t0.Gather(s0_s, r1.xy, int2(0, 2)).zw;
  r1.xy = t0.Gather(s0_s, r1.xy, int2(2, 2)).zw;
  r3.z = r9.w * r5.x + r3.z;
  r2.y = r2.y * r10.w + r3.z;
  r2.y = r2.w * r11.w + r2.y;
  r2.x = r2.x * r5.w + r2.y;
  r2.x = r3.y * r1.y + r2.x;
  r0.w = r2.x / r0.w;
  r0.w = 1.5 * r0.w;
/*
Vanilla shader code from 0xB4CAAAA7:
store_uav_typed u0.xyzw, r0.yzzz, r0.wwww
*/
// RenoDX code: Replace the game's AO output with neutral visibility when game AO is disabled.
u0[(uint2)r0.yz] = cb13[13].x >= 0.5f ? 1.f : r0.w;
  r2.xy = float2(0.333333343,0.333333343) * r6.xy;
  r4.y = r6.z * r2.x;
  r7.w = r3.x * r1.w;
  r0.w = 0.333333343 * r1.z;
  r7.x = r5.y;
  r7.y = 0.333333343;
  r4.xyzw = r7.xyzw * r4.xyzw;
  r1.z = dot(r4.xyzw, float4(1,1,1,1));
  r1.z = saturate(1.5 + -r1.z);
  r4.xyzw = r1.zzzz * float4(0.333333343,0.333333343,0.333333343,0.333333343) + r4.xyzw;
  r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
  r1.z = r4.x * r10.y;
  r1.z = r11.x * cb0[2].x + r1.z;
  r1.z = r4.y * r11.y + r1.z;
  r1.z = r4.z * r11.w + r1.z;
  r1.y = r4.w * r1.y + r1.z;
  r1.zw = r4.zz * r8.zw;
  r1.z = r4.x * r5.z + r1.z;
  r1.w = r4.y * r2.y + r1.w;
  r2.x = 0.425000012 * r1.z;
  r1.y = r2.x * r10.z + r1.y;
  r2.x = 0.425000012 * r1.w;
  r1.y = r2.x * r11.z + r1.y;
  r2.x = r4.x * r2.z;
  r2.x = r4.w * r6.w + r2.x;
  r2.y = 0.425000012 * r2.x;
  r1.y = r2.y * r5.x + r1.y;
  r0.w = r4.w * r0.w;
  r0.w = r4.y * r3.w + r0.w;
  r2.y = 0.425000012 * r0.w;
  r1.x = r2.y * r1.x + r1.y;
  r1.y = cb0[2].x + r4.x;
  r1.y = r1.y + r4.y;
  r1.y = r1.y + r4.z;
  r1.y = r1.y + r4.w;
  r1.y = r1.z * 0.425000012 + r1.y;
  r1.y = r1.w * 0.425000012 + r1.y;
  r1.y = r2.x * 0.425000012 + r1.y;
  r0.w = r0.w * 0.425000012 + r1.y;
  r0.w = r1.x / r0.w;
  r0.w = 1.5 * r0.w;
  r0.x = mad((int)vThreadID.x, 2, 1);
/*
Vanilla shader code from 0xB4CAAAA7:
store_uav_typed u0.xyzw, r0.xzzz, r0.wwww
*/
// RenoDX code: Replace the game's AO output with neutral visibility when game AO is disabled.
u0[(uint2)r0.xz] = cb13[13].x >= 0.5f ? 1.f : r0.w;
  return;
}
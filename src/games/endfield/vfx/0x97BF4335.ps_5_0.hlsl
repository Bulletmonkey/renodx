// DX11 shader 0x97BF4335, decompiled from the matching 1.4.4 game shader dump.

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);
// RenoDX code: Inject the addon constants and replacement logic.

cbuffer cb13 : register(b13)
{
  float4 cb13[15];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[22];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4085];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[105];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


// Decompiler repair: Match the vanilla DXBC input signature component widths.
void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  nointerpolation uint v6 : TEXCOORD5,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
/*
Vanilla shader code from 0x97BF4335:
  float4 r0,r1,r2,r3,r4;
*/
// RenoDX code: Replace the vanilla statements above.
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v1.xy;
  r0.z = r0.x / r0.y;
  r0.w = 1 / abs(r0.z);
  r1.x = cmp(abs(r0.z) < 1);
  r0.w = r1.x ? abs(r0.z) : r0.w;
  r0.z = cmp(r0.z < 0);
  r1.y = r0.w * r0.w;
  r1.z = r1.y * 0.0872929022 + -0.301894993;
  r1.y = r1.z * r1.y + 1;
  r1.z = r1.y * r0.w;
  r0.w = -r1.y * r0.w + 1.57079637;
  r0.w = r1.x ? r1.z : r0.w;
  r0.z = r0.z ? -r0.w : r0.w;
  r0.w = cmp(r0.x >= 0);
  r0.w = r0.w ? 3.1415925 : -3.1415925;
  r1.x = cmp(r0.y < 0);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r2.zw = cb3[8].zz * r0.xx;
  r0.x = r1.x ? 1.000000 : 0;
  r0.x = r0.w * r0.x + r0.z;
  r0.x = 3.14159274 + r0.x;
  r2.xy = cb3[8].zz * r0.xx;
  r0.xyz = cb3[1].xxx * v2.xxy;
  r1.xyzw = v1.zzww * cb3[1].xxxx + -r0.yyzz;
  r1.xyzw = v2.xxyy + r1.xyzw;
  r1.xyzw = cb3[8].yyyy * r1.xyzw;
  r1.xyzw = v1.xxyy * cb3[8].xxxx + r1.xyzw;
  r1.xyzw = r2.xyzw * float4(0.159154937,0.159154937,2,2) + r1.xyzw;
  r0.y = cmp(0.000000 != cb3[13].x);
  r0.zw = (uint2)v0.xy;
  r0.zw = (uint2)r0.zw;
  r0.zw = r0.zw / cb1[5].xy;
  r2.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = r2.y / cb1[5].x;
  r2.z = cb1[5].y * r0.z;
  r0.zw = cb1[0].zw * v0.xy;
  r0.zw = r0.zw * float2(2,2) + float2(-1,-1);
  r3.xyzw = cb0[25].xyzw * -r0.wwww;
  r3.xyzw = cb0[24].xyzw * r0.zzzz + r3.xyzw;
  r3.xyzw = cb0[26].xyzw * v0.zzzz + r3.xyzw;
  r3.xyzw = cb0[27].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r0.z = (uint)v6.x << 4;
  r4.xyz = -cb2[r0.z+3].xyz + r3.xyz;
  r2.yw = cb0[1].xy * r4.yy;
  r2.yw = cb0[0].xy * r4.xx + r2.yw;
  r2.yw = cb0[2].xy * r4.zz + r2.yw;
  r2.yw = r2.yw + -r2.xz;
  r2.xy = cb3[13].zz * r2.yw + r2.xz;
  r2.z = r0.y ? r3.y : r2.y;
  r0.y = cb2[r0.z+3].y * cb0[1].z;
  r0.y = cb0[0].z * cb2[r0.z+3].x + r0.y;
  r0.y = cb0[2].z * cb2[r0.z+3].z + r0.y;
  r0.y = cb0[3].z + r0.y;
  r0.y = -cb1[3].y + -r0.y;
  r0.y = max(1, r0.y);
  r0.w = -cb3[13].y + 1;
  r0.y = r0.y * cb3[13].y + r0.w;
  r2.xyzw = r2.xxzz * r0.yyyy;
  r1.xyzw = r2.xyzw * cb3[8].wwww + r1.xyzw;
  r1.xyzw = cb3[6].xxyy * cb1[103].wwww + r1.xyzw;
  r1.xyzw = cb3[6].zzww * r0.xxxx + r1.xyzw;
  r1.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + r1.xyzw;
  r1.xyzw = cb3[7].xyzw * r1.xyzw;
  r0.xy = r1.xy + r1.zw;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.xy = r0.xy * cb3[9].xy + cb3[9].zw;
  r0.w = trunc(cb3[5].z);
  r0.w = cb1[26].x + r0.w;
  r1.xyzw = t0.SampleBias(s0_s, r0.xy, r0.w).xyzw;
  r0.w = r1.x;
  r0.x = 1;
  r2.xyzw = r0.xxxw + -r1.xyzw;
  r1.xyzw = cb3[5].yyyy * r2.xyzw + r1.xyzw;
  r0.x = cmp(0.000000 != cb3[1].y);
  r2.xyzw = r0.xxxx ? float4(1,1,1,1) : v3.xyzw;
  r2.xyzw = cb3[4].xyzw * r2.xyzw;
  r2.xyzw = cb3[1].zzzw * r2.xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.xy = -cb3[14].wz + float2(1,1);
  r1.xyzw = r1.xyzw * r0.xxxx;
  r0.x = cb3[18].w * cb3[17].w;
  r0.w = -cb3[17].w * cb3[18].w + 1;
  r0.x = r0.y * r0.x + r0.w;
  r0.y = v2.z * cb3[1].x + cb3[18].y;
  r0.y = r0.y * 2.01999998 + -0.00999999046;
  r0.x = r0.x * r0.y + -1;
  r0.y = saturate(cb3[18].x * -r0.x);
  r0.x = cb3[18].z + r0.x;
  r0.x = saturate(cb3[18].x * r0.x);
  r0.y = r1.w * r0.y;
  r0.w = cmp(0.000000 != cb3[15].y);
  r0.y = r0.w ? r0.y : r1.w;
  r1.w = cb0[1].z * r3.y;
  r1.w = cb0[0].z * r3.x + r1.w;
  r1.w = cb0[2].z * r3.z + r1.w;
  r1.w = cb0[3].z + r1.w;
  r2.xy = -cb3[11].yw + abs(r1.ww);
  r1.w = cb3[11].z + -cb3[11].y;
  r1.w = saturate(r2.x / r1.w);
  r2.x = cb3[12].x + -cb3[11].w;
  r2.x = saturate(r2.y / r2.x);
  r1.w = r2.x * r1.w;
  r2.x = cmp(0.000000 != cb3[11].x);
  r1.w = r2.x ? r1.w : 1;
  r0.y = saturate(r1.w * r0.y);
  r1.w = -cb2[r0.z+4].y + 1;
  r0.y = r1.w * r0.y;
  r1.w = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r1.w = frac(r1.w);
  r1.w = 52.9829178 * r1.w;
  r1.w = frac(r1.w);
  r2.x = cmp(cb2[r0.z+4].x >= 0);
  r1.w = r2.x ? r1.w : -r1.w;
  r0.z = cb2[r0.z+4].x + -r1.w;
  r0.z = cmp(0 < r0.z);
  r2.xy = -cb3[0].xy + float2(1,1);
  r0.z = r0.z ? 1 : r2.x;
  r1.w = -r0.y * r0.z + 1;
  r0.y = r0.y * r0.z;
  r2.xzw = cb3[21].xyz * r0.xxx;
  r2.xzw = r2.xzw * cb3[1].zzz + -r1.xyz;
  r2.xzw = r0.xxx * r2.xzw + r1.xyz;
  r0.xzw = r0.www ? r2.xzw : r1.xyz;
  r1.xyz = -cb3[2].yyy + r0.xzw;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.xzw = r1.xyz * cb3[2].zzz + r0.xzw;
  r1.x = -cb3[3].x + 1;
  r1.x = cb1[27].y * cb3[3].x + r1.x;
  r0.xzw = r1.xxx * r0.xzw;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r0.xzw = min(float3(1000,1000,1000), r0.xzw);
  r1.xyz = r0.xzw * r0.yyy + r1.www;
  r2.xzw = r0.xzw * r0.yyy;
// RenoDX code: Inject the addon constants and replacement logic.
  if (cb13[1].x != 0) {
    r5.y = cmp(cb13[7].y >= 4);
    if (r5.y != 0) {
      if (cb13[12].x != 0) {
        r5.x = cb13[0].x / cb13[0].y;
        r5.x = max(1, r5.x);
        r5.x = sqrt(r5.x);
        r5.x = min(5, r5.x);
        r2.xzw = r5.xxx * r2.xzw;
        r1.xyz = r1.www + r2.xzw;
      }
    }
  }
  r0.x = dot(r0.xzw, float3(0.212672904,0.715152204,0.0721750036));
  r0.x = r0.x * r0.y;
  r0.y = r0.y * r2.y;
  r0.x = max(r0.x, r0.y);
  o0.w = r0.y;
  r0.x = saturate(10 * r0.x);
  r0.x = cmp(0.5 < r0.x);
  r0.x = r0.x ? 1.000000 : 0;
  r0.y = cmp(2.000000 == cb3[0].y);
  r0.yzw = r0.yyy ? r1.xyz : r2.xzw;
  r1.x = dot(r0.yzw, float3(0.212672904,0.715152204,0.0721750036));
  r1.yzw = -r1.xxx + r0.yzw;
  r1.xyz = cb1[104].www * r1.yzw + r1.xxx;
  r1.xyz = cb1[104].xyz * r1.xyz;
  r1.w = -cb3[2].w + 1;
  r0.yzw = r1.www * r0.yzw;
  o0.xyz = r1.xyz * cb3[2].www + r0.yzw;
  r0.y = cb3[0].z * cb3[0].x;
  o1.w = r0.y * r0.x;
  r0.x = max(9.99999994e-009, v4.z);
  r0.xy = v4.xy / r0.xx;
  r0.z = max(9.99999994e-009, v5.z);
  r0.zw = v5.xy / r0.zz;
  r0.xy = r0.xy + -r0.zw;
  r0.z = -r0.y;
  r1.xy = cmp(float2(0,0) < r0.xz);
  r0.zw = cmp(r0.xz < float2(0,0));
  r0.xy = float2(0.5,-0.5) * r0.xy;
  r0.xy = sqrt(abs(r0.xy));
  r0.xy = sqrt(r0.xy);
  r0.zw = (int2)-r1.xy + (int2)r0.zw;
  r0.zw = (int2)r0.zw;
  r0.xy = r0.xy * r0.zw;
  r0.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r0.z = cb3[0].w + -cb3[0].x;
  r0.z = saturate(1 + r0.z);
  r0.z = cmp(0.5 < r0.z);
  r0.xy = r0.zz ? r0.xy : 0;
  o1.xy = min(float2(1,1), r0.xy);
  o1.z = 1;
  return;
}
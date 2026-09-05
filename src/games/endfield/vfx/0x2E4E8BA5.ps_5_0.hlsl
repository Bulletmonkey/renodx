// DX11 shader 0x2E4E8BA5, decompiled from the matching 1.5 game shader dump.

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);
// RenoDX code: Inject the addon constants and replacement logic.

cbuffer cb13 : register(b13)
{
  float4 cb13[15];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[38];
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
  float4 v4 : TEXCOORD3,
  float3 v5 : TEXCOORD4,
  float3 v6 : TEXCOORD5,
  nointerpolation uint v7 : TEXCOORD6,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
/*
Vanilla shader code from 0x2E4E8BA5:
  float4 r0,r1,r2,r3,r4,r5,r6;
*/
// RenoDX code: Replace the vanilla statements above.
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 1;
  r0.y = trunc(cb3[17].x);
  r1.x = 1;
  r0.z = trunc(cb3[11].x);
  r0.yz = cb1[26].xx + r0.yz;
  r2.xyzw = t1.SampleBias(s1_s, v2.xy, r0.z).xyzw;
  r1.w = r2.x;
  r1.xyzw = -r2.xyzw + r1.xxxw;
  r1.xyzw = cb3[11].zzzz * r1.xyzw + r2.xyzw;
  r2.xyz = -cb3[30].xzw + float3(1,1,1);
  r3.xyzw = r1.xywx * cb3[12].xxxy + r2.xxxy;
  r1.xyzw = r1.xyzw * cb3[12].zzzz + r2.zzzz;
  r0.z = cb3[31].w + 1;
  r2.x = r3.x * r0.z + -cb3[31].w;
  r3.x = r3.z * r2.x;
  r2.zw = r3.xy * float2(2,2) + float2(-1,-1);
  r2.xyzw = cb3[32].xyxx * r2.xxzw;
  r3.xy = cmp(float2(0,0) != cb3[31].zy);
  r3.x = r3.x ? v1.w : 1;
  r2.xyzw = r3.xxxx * r2.xyzw;
  r4.xy = cmp(float2(0,0) != cb3[33].xy);
  r2.xy = r4.xx ? r2.zw : r2.xy;
  r2.z = cmp(0.000000 != cb3[12].x);
  r2.xy = r2.zz ? r2.xy : 0;
  r2.zw = r2.xy * cb3[17].yy + v2.zw;
  r5.xyzw = t2.SampleBias(s2_s, r2.zw, r0.y).xyzw;
  r0.w = r5.x;
  r6.xyzw = -r5.xyzw + r0.xxxw;
  r5.xyzw = cb3[17].zzzz * r6.xyzw + r5.xyzw;
  r0.x = -cb3[30].x * cb3[30].y + 1;
  r6.yzw = r5.xyw * cb3[18].xxx + r0.xxx;
  r0.x = r6.y * r0.z + -cb3[31].w;
  r6.x = r6.w * r0.x;
  r0.xy = cb3[32].zw * r0.xx;
  r0.xy = r0.xy * r3.xx + r2.xy;
  r0.zw = r6.xz * float2(2,2) + float2(-1,-1);
  r0.zw = cb3[32].zz * r0.zw;
  r0.zw = r0.zw * r3.xx + r2.xy;
  r0.xy = r4.yy ? r0.zw : r0.xy;
  r0.z = cmp(0.000000 != cb3[18].x);
  r0.xy = r0.zz ? r0.xy : r2.xy;
  r0.z = r5.x * cb3[18].y + r3.w;
  r0.w = cb3[33].w * cb3[18].y;
  r2.x = cb3[33].z * r0.w;
  r0.w = -r0.w * cb3[33].z + 1;
  r0.w = r0.z * r2.x + r0.w;
  r0.xy = r0.xy * r0.ww;
  r2.xy = r0.xy * cb3[23].yy + v3.xy;
  r0.w = trunc(cb3[23].x);
  r0.w = cb1[26].x + r0.w;
  r2.xyzw = t3.SampleBias(s3_s, r2.xy, r0.w).xyzw;
  r3.w = r2.x;
  r3.x = 1;
  r4.xyzw = r3.xxxw + -r2.xyzw;
  r2.xyzw = cb3[23].zzzz * r4.xyzw + r2.xyzw;
  r0.z = r2.x * cb3[24].x + r0.z;
  r0.w = cb3[33].w * cb3[24].x;
  r3.x = cb3[33].z * r0.w;
  r0.w = -r0.w * cb3[33].z + 1;
  r0.w = r0.z * r3.x + r0.w;
  r0.xy = r0.xy * r0.ww;
  r0.xy = r0.xy * cb3[5].xx + v1.xy;
  r0.w = trunc(cb3[5].z);
  r0.w = cb1[26].x + r0.w;
  r4.xyzw = t0.SampleBias(s0_s, r0.xy, r0.w).xyzw;
  r0.w = r4.x;
  r0.x = 1;
  r6.xyzw = r0.xxxw + -r4.xyzw;
  r4.xyzw = cb3[5].yyyy * r6.xyzw + r4.xyzw;
  r0.x = cmp(0.000000 != cb3[1].y);
  r6.xyzw = r0.xxxx ? float4(1,1,1,1) : v4.xyzw;
  r6.xyzw = cb3[4].xyzw * r6.xyzw;
  r6.xyzw = cb3[1].zzzw * r6.xyzw;
  r4.xyzw = r6.xyzw * r4.xyzw;
  r1.xyzw = r5.xyzw * cb3[18].zzzz + r1.xyzw;
  r1.xyzw = r2.xyzw * cb3[24].yyyy + r1.xyzw;
  r6.xyzw = cb3[24].zzzz * r2.xyzw;
  r5.xyzw = r5.xyzw * cb3[18].wwww + r6.xyzw;
  r0.x = r4.w * r1.w + r5.w;
  r1.xyzw = r4.xyzw * r1.xyzw;
  r0.x = saturate(cb3[36].w * r0.x);
  r0.xyw = r5.xyz * r0.xxx;
  r0.xyw = r0.xyw * cb3[36].xyz + r1.xyz;
  r1.x = cb3[34].w * cb3[33].w;
  r1.y = -cb3[33].w * cb3[34].w + 1;
  r0.z = r0.z * r1.x + r1.y;
  r1.x = cb3[34].y + v1.z;
  r1.x = r1.x * 2.01999998 + -0.00999999046;
  r0.z = r0.z * r1.x + -1;
  r0.z = r2.x * cb3[24].w + -r0.z;
  r1.x = cb3[34].z + -r0.z;
  r0.z = saturate(cb3[34].x * r0.z);
  r0.z = r1.w * r0.z;
  r0.z = r3.y ? r0.z : r1.w;
  r1.x = saturate(cb3[34].x * r1.x);
  r1.yzw = cb3[37].xyz * r1.xxx;
  r1.yzw = r1.yzw * cb3[1].zzz + -r0.xyw;
  r1.xyz = r1.xxx * r1.yzw + r0.xyw;
  r0.xyw = r3.yyy ? r1.xyz : r0.xyw;
  r1.xyz = -cb3[2].yyy + r0.xyw;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.xyw = r1.xyz * cb3[2].zzz + r0.xyw;
  r1.x = -cb3[3].x + 1;
  r1.x = cb1[27].y * cb3[3].x + r1.x;
  r0.xyw = r1.xxx * r0.xyw;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.xyw = min(float3(1000,1000,1000), r0.xyw);
  r1.xy = cb1[0].zw * v0.xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r2.xyzw = cb0[25].xyzw * -r1.yyyy;
  r1.xyzw = cb0[24].xyzw * r1.xxxx + r2.xyzw;
  r1.xyzw = cb0[26].xyzw * v0.zzzz + r1.xyzw;
  r1.xyzw = cb0[27].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.y = cb0[1].z * r1.y;
  r1.x = cb0[0].z * r1.x + r1.y;
  r1.x = cb0[2].z * r1.z + r1.x;
  r1.x = cb0[3].z + r1.x;
  r1.xy = -cb3[28].yw + abs(r1.xx);
  r1.z = cb3[28].z + -cb3[28].y;
  r1.x = saturate(r1.x / r1.z);
  r1.z = cb3[29].x + -cb3[28].w;
  r1.y = saturate(r1.y / r1.z);
  r1.x = r1.x * r1.y;
  r1.y = cmp(0.000000 != cb3[28].x);
  r1.x = r1.y ? r1.x : 1;
  r0.z = saturate(r1.x * r0.z);
  r1.x = (uint)v7.x << 4;
  r1.y = -cb2[r1.x+4].y + 1;
  r0.z = r1.y * r0.z;
  r1.y = dot(v0.xy, float2(0.0671105608,0.00583714992));
  r1.y = frac(r1.y);
  r1.y = 52.9829178 * r1.y;
  r1.y = frac(r1.y);
  r1.z = cmp(cb2[r1.x+4].x >= 0);
  r1.y = r1.z ? r1.y : -r1.y;
  r1.x = cb2[r1.x+4].x + -r1.y;
  r1.x = cmp(0 < r1.x);
  r1.yz = -cb3[0].xy + float2(1,1);
  r1.x = r1.x ? 1 : r1.y;
  r1.y = -r0.z * r1.x + 1;
  r0.z = r1.x * r0.z;
  r1.xyw = r0.xyw * r0.zzz + r1.yyy;
  r2.xyz = r0.xyw * r0.zzz;
// RenoDX code: Inject the addon constants and replacement logic.
  if (cb13[1].x != 0) {
    r7.y = cmp(cb13[7].y >= 4);
    if (r7.y != 0) {
      if (cb13[12].x != 0) {
        r7.x = cb13[0].x / cb13[0].y;
        r7.x = max(1, r7.x);
        r7.x = sqrt(r7.x);
        r7.x = min(5, r7.x);
        r2.xyz = r7.xxx * r2.xyz;
        r1.xyw = r1.yyy + r2.xyz;
      }
    }
  }
  r0.x = dot(r0.xyw, float3(0.212672904,0.715152204,0.0721750036));
  r0.x = r0.x * r0.z;
  r0.y = cmp(2.000000 == cb3[0].y);
  r1.xyw = r0.yyy ? r1.xyw : r2.xyz;
  r0.y = dot(r1.xyw, float3(0.212672904,0.715152204,0.0721750036));
  r2.xyz = r1.xyw + -r0.yyy;
  r2.xyz = cb1[104].www * r2.xyz + r0.yyy;
  r2.xyz = cb1[104].xyz * r2.xyz;
  r0.y = -cb3[2].w + 1;
  r1.xyw = r1.xyw * r0.yyy;
  o0.xyz = r2.xyz * cb3[2].www + r1.xyw;
  r0.y = max(0, r1.z);
  r0.w = r0.z * r1.z;
  o0.w = r0.z * r0.y;
  r0.x = max(r0.x, r0.w);
  r0.x = saturate(10 * r0.x);
  r0.x = cmp(0.5 < r0.x);
  r0.x = r0.x ? 1.000000 : 0;
  r0.y = cb3[0].z * cb3[0].x;
  o1.w = r0.y * r0.x;
  r0.x = max(9.99999994e-009, v5.z);
  r0.xy = v5.xy / r0.xx;
  r0.z = max(9.99999994e-009, v6.z);
  r0.zw = v6.xy / r0.zz;
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

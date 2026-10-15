#include "../shared.h"

// Ported from the native 0xAB136FCA Vulkan dump.
struct _20 {
  column_major float4x4 _m0;
  float4 _m1;
  float4 _m2;
  column_major float4x4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
  float4 _m8;
  float4 _m9;
};

struct _47 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _386;
static float4 _387;
static uint _388;

static const float4 _364[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _365[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _366[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _15_16 : register(b11, space0) {
  column_major float4x4 _16_m0 : packoffset(c0);
  column_major float4x4 _16_m1 : packoffset(c4);
  column_major float4x4 _16_m2 : packoffset(c8);
  column_major float4x4 _16_m3 : packoffset(c12);
  column_major float4x4 _16_m4 : packoffset(c16);
  column_major float4x4 _16_m5 : packoffset(c20);
  column_major float4x4 _16_m6 : packoffset(c24);
  column_major float4x4 _16_m7 : packoffset(c28);
  column_major float4x4 _16_m8 : packoffset(c32);
  column_major float4x4 _16_m9 : packoffset(c36);
  column_major float4x4 _16_m10 : packoffset(c40);
  float4 _16_m11 : packoffset(c44);
  column_major float4x4 _16_m12 : packoffset(c45);
  column_major float4x4 _16_m13 : packoffset(c49);
  column_major float4x4 _16_m14 : packoffset(c53);
  column_major float4x4 _16_m15 : packoffset(c57);
  column_major float4x4 _16_m16 : packoffset(c61);
  column_major float4x4 _16_m17 : packoffset(c65);
  column_major float4x4 _16_m18 : packoffset(c69);
  column_major float4x4 _16_m19 : packoffset(c73);
  column_major float4x4 _16_m20 : packoffset(c77);
  float4 _16_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _17_18 : register(b15, space0) {
  float4 _18_m0 : packoffset(c0);
  float4 _18_m1 : packoffset(c1);
  float4 _18_m2 : packoffset(c2);
  float4 _18_m3 : packoffset(c3);
  float4 _18_m4 : packoffset(c4);
  float4 _18_m5 : packoffset(c5);
  float4 _18_m6[6] : packoffset(c6);
  float4 _18_m7[6] : packoffset(c12);
  float4 _18_m8 : packoffset(c18);
  float4 _18_m9 : packoffset(c19);
  float4 _18_m10 : packoffset(c20);
  float4 _18_m11 : packoffset(c21);
  float4 _18_m12 : packoffset(c22);
  float4 _18_m13 : packoffset(c23);
  float4 _18_m14 : packoffset(c24);
  float4 _18_m15 : packoffset(c25);
  float _18_m16 : packoffset(c26);
  float _18_m17 : packoffset(c26.y);
  float _18_m18 : packoffset(c26.z);
  uint _18_m19 : packoffset(c26.w);
  float4 _18_m20 : packoffset(c27);
  int4 _18_m21 : packoffset(c28);
  float4 _18_m22 : packoffset(c29);
  float4 _18_m23 : packoffset(c30);
  float4 _18_m24 : packoffset(c31);
  float4 _18_m25 : packoffset(c32);
  float4 _18_m26 : packoffset(c33);
  float4 _18_m27 : packoffset(c34);
  float4 _18_m28 : packoffset(c35);
  float4 _18_m29 : packoffset(c36);
  float4 _18_m30 : packoffset(c37);
  float4 _18_m31 : packoffset(c38);
  float4 _18_m32[4] : packoffset(c39);
  float4 _18_m33[4] : packoffset(c43);
  float4 _18_m34[4] : packoffset(c47);
  float4 _18_m35[4] : packoffset(c51);
  float4 _18_m36 : packoffset(c55);
  float4 _18_m37 : packoffset(c56);
  float4 _18_m38[4] : packoffset(c57);
  float4 _18_m39[4] : packoffset(c61);
  float4 _18_m40[4] : packoffset(c65);
  float4 _18_m41 : packoffset(c69);
  float4 _18_m42 : packoffset(c70);
  float4 _18_m43 : packoffset(c71);
  float4 _18_m44 : packoffset(c72);
  float4 _18_m45 : packoffset(c73);
  float4 _18_m46 : packoffset(c74);
  float4 _18_m47 : packoffset(c75);
  float4 _18_m48 : packoffset(c76);
  float4 _18_m49 : packoffset(c77);
  float4 _18_m50 : packoffset(c78);
  float4 _18_m51 : packoffset(c79);
  float4 _18_m52 : packoffset(c80);
  float4 _18_m53 : packoffset(c81);
  float4 _18_m54 : packoffset(c82);
  float4 _18_m55 : packoffset(c83);
  float4 _18_m56 : packoffset(c84);
  float4 _18_m57 : packoffset(c85);
  float4 _18_m58 : packoffset(c86);
  float4 _18_m59 : packoffset(c87);
  float4 _18_m60 : packoffset(c88);
  float4 _18_m61 : packoffset(c89);
  float4 _18_m62 : packoffset(c90);
  float4 _18_m63 : packoffset(c91);
  float4 _18_m64 : packoffset(c92);
  float4 _18_m65 : packoffset(c93);
  float4 _18_m66 : packoffset(c94);
  float4 _18_m67 : packoffset(c95);
  float4 _18_m68 : packoffset(c96);
  float4 _18_m69 : packoffset(c97);
  float4 _18_m70 : packoffset(c98);
  float4 _18_m71 : packoffset(c99);
  float4 _18_m72 : packoffset(c100);
  float4 _18_m73 : packoffset(c101);
  float4 _18_m74 : packoffset(c102);
  float4 _18_m75 : packoffset(c103);
  float4 _18_m76 : packoffset(c104);
  float4 _18_m77 : packoffset(c105);
  float4 _18_m78 : packoffset(c106);
  float4 _18_m79 : packoffset(c107);
  float4 _18_m80 : packoffset(c108);
  float4 _18_m81 : packoffset(c109);
  float4 _18_m82 : packoffset(c110);
  float4 _18_m83 : packoffset(c111);
  float4 _18_m84 : packoffset(c112);
  float4 _18_m85 : packoffset(c113);
  float4 _18_m86 : packoffset(c114);
  float4 _18_m87 : packoffset(c115);
  float4 _18_m88 : packoffset(c116);
  float4 _18_m89 : packoffset(c117);
  float4 _18_m90 : packoffset(c118);
  float4 _18_m91 : packoffset(c119);
  float4 _18_m92 : packoffset(c120);
  float4 _18_m93 : packoffset(c121);
  float4 _18_m94 : packoffset(c122);
  float4 _18_m95 : packoffset(c123);
  float4 _18_m96 : packoffset(c124);
  float4 _18_m97 : packoffset(c125);
  float4 _18_m98 : packoffset(c126);
  float4 _18_m99 : packoffset(c127);
  float4 _18_m100 : packoffset(c128);
  float4 _18_m101 : packoffset(c129);
  float4 _18_m102[2] : packoffset(c130);
  float4 _18_m103[2] : packoffset(c132);
  float _18_m104 : packoffset(c134);
  float _18_m105 : packoffset(c134.y);
  float _18_m106 : packoffset(c134.z);
  float _18_m107 : packoffset(c134.w);
  float4 _18_m108 : packoffset(c135);
  float4 _18_m109 : packoffset(c136);
  float4 _18_m110 : packoffset(c137);
  float4 _18_m111 : packoffset(c138);
  float4 _18_m112 : packoffset(c139);
  float4 _18_m113 : packoffset(c140);
  float4 _18_m114 : packoffset(c141);
  float4 _18_m115 : packoffset(c142);
  float4 _18_m116 : packoffset(c143);
  float4 _18_m117 : packoffset(c144);
  float4 _18_m118 : packoffset(c145);
  float4 _18_m119 : packoffset(c146);
  float4 _18_m120 : packoffset(c147);
  float4 _18_m121 : packoffset(c148);
  float4 _18_m122 : packoffset(c149);
  float4 _18_m123 : packoffset(c150);
  float4 _18_m124 : packoffset(c151);
  float4 _18_m125 : packoffset(c152);
  float4 _18_m126 : packoffset(c153);
  float4 _18_m127 : packoffset(c154);
  float4 _18_m128 : packoffset(c155);
  float4 _18_m129 : packoffset(c156);
  float4 _18_m130 : packoffset(c157);
  float4 _18_m131 : packoffset(c158);
  float4 _18_m132 : packoffset(c159);
  float4 _18_m133 : packoffset(c160);
  float4 _18_m134 : packoffset(c161);
  float4 _18_m135 : packoffset(c162);
  float4 _18_m136 : packoffset(c163);
  float4 _18_m137 : packoffset(c164);
  column_major float4x4 _18_m138 : packoffset(c165);
  float4 _18_m139 : packoffset(c169);
  float4 _18_m140 : packoffset(c170);
  float4 _18_m141 : packoffset(c171);
  float4 _18_m142 : packoffset(c172);
  int4 _18_m143 : packoffset(c173);
  int4 _18_m144 : packoffset(c174);
  int4 _18_m145 : packoffset(c175);
  float4 _18_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _19_21 : register(b0, space2) {
  _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _33 : register(t53, space0);
[[vk::binding(8, 1)]] cbuffer _44_45 : register(b8, space1) {
  float _45_m0 : packoffset(c0);
  float _45_m1 : packoffset(c0.y);
  float _45_m2 : packoffset(c0.z);
  float _45_m3 : packoffset(c0.w);
  float _45_m4 : packoffset(c1);
  float _45_m5 : packoffset(c1.y);
  float _45_m6 : packoffset(c1.z);
  float _45_m7 : packoffset(c1.w);
  float _45_m8 : packoffset(c2);
  float _45_m9 : packoffset(c2.y);
  float _45_m10 : packoffset(c2.z);
  float _45_m11 : packoffset(c2.w);
  float _45_m12 : packoffset(c3);
  float _45_m13 : packoffset(c3.y);
  float _45_m14 : packoffset(c3.z);
  float _45_m15 : packoffset(c3.w);
  float _45_m16 : packoffset(c4);
  float _45_m17 : packoffset(c4.y);
  float _45_m18 : packoffset(c4.z);
  float _45_m19 : packoffset(c4.w);
  float _45_m20 : packoffset(c5);
  float _45_m21 : packoffset(c5.y);
  float _45_m22 : packoffset(c5.z);
  float _45_m23 : packoffset(c5.w);
  float _45_m24 : packoffset(c6);
  float _45_m25 : packoffset(c6.y);
  float _45_m26 : packoffset(c6.z);
  float _45_m27 : packoffset(c6.w);
  float _45_m28 : packoffset(c7);
  float _45_m29 : packoffset(c7.y);
  float _45_m30 : packoffset(c7.z);
  float _45_m31 : packoffset(c7.w);
  float4 _45_m32 : packoffset(c8);
  float4 _45_m33 : packoffset(c9);
  float4 _45_m34 : packoffset(c10);
  float4 _45_m35 : packoffset(c11);
  float4 _45_m36 : packoffset(c12);
  float4 _45_m37 : packoffset(c13);
  float4 _45_m38 : packoffset(c14);
  float4 _45_m39 : packoffset(c15);
  float4 _45_m40 : packoffset(c16);
  float4 _45_m41 : packoffset(c17);
  float4 _45_m42 : packoffset(c18);
  float4 _45_m43 : packoffset(c19);
  float4 _45_m44 : packoffset(c20);
  float4 _45_m45 : packoffset(c21);
  float _45_m46 : packoffset(c22);
  float _45_m47 : packoffset(c22.y);
  float _45_m48 : packoffset(c22.z);
  float _45_m49 : packoffset(c22.w);
  float _45_m50 : packoffset(c23);
  float _45_m51 : packoffset(c23.y);
  float _45_m52 : packoffset(c23.z);
  float _45_m53 : packoffset(c23.w);
  float4 _45_m54 : packoffset(c24);
  float4 _45_m55 : packoffset(c25);
  float _45_m56 : packoffset(c26);
  float _45_m57 : packoffset(c26.y);
  float _45_m58 : packoffset(c26.z);
  float _45_m59 : packoffset(c26.w);
};

[[vk::binding(16, 0)]] cbuffer _46_48 : register(b16, space0) {
  float4 _48_m0 : packoffset(c0);
  float4 _48_m1 : packoffset(c1);
  float4 _48_m2 : packoffset(c2);
  float4 _48_m3 : packoffset(c3);
  _47 _48_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _49_50 : register(b13, space0) {
  float4 _50_m0 : packoffset(c0);
  float4 _50_m1 : packoffset(c1);
  float4 _50_m2 : packoffset(c2);
  float4 _50_m3 : packoffset(c3);
  float4 _50_m4 : packoffset(c4);
  uint4 _50_m5 : packoffset(c5);
  float4 _50_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _51_52 : register(b49, space0) {
  int _52_m0 : packoffset(c0);
  int _52_m1 : packoffset(c0.y);
  int _52_m2 : packoffset(c0.z);
  int _52_m3 : packoffset(c0.w);
  int _52_m4 : packoffset(c1);
  int _52_m5 : packoffset(c1.y);
  int _52_m6 : packoffset(c1.z);
  int _52_m7 : packoffset(c1.w);
  float _52_m8 : packoffset(c2);
  float _52_m9 : packoffset(c2.y);
  float _52_m10 : packoffset(c2.z);
  float _52_m11 : packoffset(c2.w);
  float _52_m12 : packoffset(c3);
  float _52_m13 : packoffset(c3.y);
  float _52_m14 : packoffset(c3.z);
  float _52_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _53_54 : register(b14, space0) {
  column_major float4x4 _54_m0[5] : packoffset(c0);
  float4 _54_m1[4] : packoffset(c20);
  float4 _54_m2[4] : packoffset(c24);
  float4 _54_m3[4] : packoffset(c28);
  float4 _54_m4 : packoffset(c32);
  float4 _54_m5 : packoffset(c33);
  float4 _54_m6 : packoffset(c34);
  float4 _54_m7 : packoffset(c35);
  float4 _54_m8 : packoffset(c36);
  float4 _54_m9[27] : packoffset(c37);
  float4 _54_m10 : packoffset(c64);
  float4 _54_m11 : packoffset(c65);
  float4 _54_m12[62] : packoffset(c66);
  column_major float4x4 _54_m13[15] : packoffset(c128);
  float4 _54_m14[15] : packoffset(c188);
  float4 _54_m15[15] : packoffset(c203);
  float4 _54_m16[15] : packoffset(c218);
  float4 _54_m17 : packoffset(c233);
  float4 _54_m18 : packoffset(c234);
  float4 _54_m19[21] : packoffset(c235);
  column_major float4x4 _54_m20 : packoffset(c256);
  column_major float4x4 _54_m21 : packoffset(c260);
  float4 _54_m22 : packoffset(c264);
  float4 _54_m23 : packoffset(c265);
  float4 _54_m24 : packoffset(c266);
  float4 _54_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _58 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _73_74 : register(b51, space0) {
  float4 _74_m0[32] : packoffset(c0);
  column_major float4x4 _74_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _24 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4, space0);
[[vk::binding(1, 0)]] SamplerState _26 : register(s1, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _27 : register(s6, space0);
[[vk::binding(47, 0)]] Texture2D<float4> _29 : register(t47, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _31 : register(t25, space0);
[[vk::binding(7, 1)]] Texture2D<float4> _34 : register(t7, space1);
[[vk::binding(3, 1)]] SamplerState _35 : register(s3, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _36 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _38 : register(t6, space1);
[[vk::binding(2, 1)]] SamplerState _39 : register(s2, space1);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _41 : register(t4, space1);
[[vk::binding(0, 1)]] SamplerState _42 : register(s0, space1);
[[vk::binding(20, 0)]] SamplerState _43 : register(s20, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _55 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _56 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _59 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _60 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _61 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _64 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _65 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _66 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _67 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _68 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _69 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _70 : register(t31, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _71 : register(t37, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _72 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _77 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _78 : register(t29, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _4;
static float2 _5;
static float3 _6;
static float4 _7;
static float4 _8;
static float3 _9;
static float3 _10;
static uint _11;
static float4 _13;
static float4 _14;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _4 : TEXCOORD0;
  [[vk::location(1)]] float2 _5 : TEXCOORD1;
  [[vk::location(2)]] float3 _6 : TEXCOORD2;
  [[vk::location(3)]] float4 _7 : TEXCOORD3;
  [[vk::location(4)]] float4 _8 : TEXCOORD4;
  [[vk::location(5)]] float3 _9 : TEXCOORD5;
  [[vk::location(6)]] float3 _10 : TEXCOORD6;
  [[vk::location(7)]] nointerpolation uint _11 : TEXCOORD7;
  float4 gl_FragCoord : SV_Position;
  bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _13 : SV_Target0;
  [[vk::location(1)]] float4 _14 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main() {
  float _414 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
  float _423 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_45_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _425 = abs(_423);
  if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _425 : (-_425)), (1.0f - _414) - _423) < 0.0f) {
    discard;
  }
  float2 _442 = gl_FragCoord.xy * _18_m0.zw;
  float2 _445 = (_442 * 2.0f) - 1.0f.xx;
  float4 _448 = float4(_445, gl_FragCoord.z, 1.0f);
  _448.y = -_445.y;
  float4 _451 = mul(_16_m6, _448);
  float3 _455 = _451.xyz / _451.w.xxx;
  float4 _459 = float4(_455, 1.0f);
  float _462 = abs(mul(_16_m0, _459).z);
  float _466 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _488;
  do {
    if (_18_m4.w == 0.0f) {
      _488 = _16_m11.xyz - _455;
      break;
    } else {
      _488 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _489 = dot(_488, _488);
  float _491 = rsqrt(max(_489, 9.9999999392252902907785028219223e-09f));
  float3 _492 = _488 * _491;
  float _493 = _489 * _491;
  float2 _514 = (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw;
  float4 _528 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
  float4 _532 = _36.SampleBias(_37, _514, _45_m13 + _18_m16);
  _532.w = _532.w * _532.x;
  float2 _540 = ((_532.wy * 2.0f) - 1.0f.xx).xy;
  float2 _546 = _540 * _45_m0;
  float4 _548 = _38.SampleBias(_39, _514, _18_m16);
  float3 _563 = lerp(clamp((_528.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx);
  float _567 = _528.w * _45_m32.w;
  float _573 = lerp(_567, _567 * _8.x, _45_m56);
  float _578 = lerp(_45_m2, _45_m3, _548.y);
  float _588 = lerp(_548.x, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
  float3 _602 = ((_7.xyz * _546.x) + ((cross(_6, float4(_7.xyz, _466).xyz) * _466) * _546.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_540, _540), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _606 = _602 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_602, _602)));
  float _632 = dot(_606, _492);
  float3 _633 = -_492;
  float2 _661 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_633, _606, _45_m48) * lerp(_45_m49, _45_m49 / max(gl_FragCoord.z * _632, 0.5f), _45_m50)).xy, ((_41.SampleBias(_42, (_4 * _45_m55.xy) + _45_m55.zw, _18_m16) * 2.0f) - 1.0f.xxxx).xy * _45_m47, _45_m46.xx).xy;
  float2 _662 = _442 + _661;
  float2 _664 = _442 + (_661 * 0.25f);
  float4 _668 = _29.SampleBias(_23, _662, _18_m16);
  float4 _680 = _29.SampleBias(_23, _664, _18_m16);
  float4 _692 = _40.SampleBias(_43, lerp(lerp(_442, _664, step(_462, 1.0f / ((_18_m2.z * _680.x) + _18_m2.w)).xx), _662, step(_462, 1.0f / ((_18_m2.z * _668.x) + _18_m2.w)).xx), _18_m16);
  float _705 = clamp(float(int(sign(_414 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _718 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _718.y = -_718.y;
  float _744 = 0.07999999821186065673828125f * _45_m1;
  float3 _745 = _563 * _588;
  float3 _746 = _563 - _745;
  float3 _750 = (_744 - (_744 * _588)).xxx + _745;
  float4 _753 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _578) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _754 = _753.x;
  float2 _764 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_754 * _754, exp2((-9.27999973297119140625f) * max(0.0f, _632))) * _754) + _753.y)) + _753.zw;
  uint2 _800;
  float _801;
  if (_18_m24.y == 1.0f) {
    float4 _781 = mul(_18_m138, _459);
    float4 _784 = _781;
    _784.y = -_781.y;
    float4 _787 = _784 * (1.0f / _781.w);
    _800 = uint2(clamp(((_787.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _801 = 1.0f / ((_18_m2.z * _787.z) + _18_m2.w);
  } else {
    _800 = uint2(gl_FragCoord.xy);
    _801 = _462;
  }
  float3 _803 = _455 + (_606 * 0.25f);
  float3 _813 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _822 = _803 - (_18_m108.xyz + (_813 * (-_18_m110.w)));
  float _837 = max(min(max((max(abs(_822.x), abs(_822.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_822.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1139;
  float4 _1140;
  float4 _1141;
  float _1142;
  float _1143;
  if ((_18_m108.w != 0.0f) && (_837 < 1.0f)) {
    float3 _850 = _803 - (_18_m108.xyz + (_813 * (-_18_m110.y)));
    float _864 = max(clamp((max(abs(_850.x), abs(_850.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_850.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _940;
    float4 _941;
    float4 _942;
    float4 _943;
    if (_864 < 1.0f) {
      float3 _873 = ((_803 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _875 = _873 - floor(_873);
      float4 _879 = _65.SampleLevel(_25, _875, 0.0f);
      float _880 = 1.0f - _864;
      float _884 = _18_m109.y * 0.5f;
      float _889 = _875.x;
      float _890 = clamp(_875.y, _884, 1.0f - _884) * 0.3333333432674407958984375f;
      float _891 = _875.z;
      float4 _894 = _66.SampleLevel(_24, float3(_889, _890, _891), 0.0f);
      _940 = _837 + (_894.w * _880);
      _941 = float4(((_66.SampleLevel(_24, float3(_889, _890 + 0.666666686534881591796875f, _891), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _879.z, _879.z) * _880;
      _942 = float4(((_66.SampleLevel(_24, float3(_889, _890 + 0.3333333432674407958984375f, _891), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _879.y, _879.y) * _880;
      _943 = float4(((_894.xyz * 4.0f) - 2.0f.xxx) * _879.x, _879.x) * _880;
    } else {
      _940 = _837;
      _941 = 0.0f.xxxx;
      _942 = 0.0f.xxxx;
      _943 = 0.0f.xxxx;
    }
    float3 _949 = _803 - (_18_m108.xyz + (_813 * (-_18_m110.z)));
    float _963 = max(clamp((max(abs(_949.x), abs(_949.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_949.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1043;
    float4 _1044;
    float4 _1045;
    float4 _1046;
    if (_963 < 1.0f) {
      float3 _972 = ((_803 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _974 = _972 - floor(_972);
      float4 _978 = _67.SampleLevel(_25, _974, 0.0f);
      float _980 = _864 * (1.0f - _963);
      float _984 = _18_m109.y * 0.5f;
      float _989 = _974.x;
      float _990 = clamp(_974.y, _984, 1.0f - _984) * 0.3333333432674407958984375f;
      float _991 = _974.z;
      float4 _994 = _68.SampleLevel(_24, float3(_989, _990, _991), 0.0f);
      _1043 = _940 + (_994.w * _980);
      _1044 = _941 + (float4(((_68.SampleLevel(_24, float3(_989, _990 + 0.666666686534881591796875f, _991), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _978.z, _978.z) * _980);
      _1045 = _942 + (float4(((_68.SampleLevel(_24, float3(_989, _990 + 0.3333333432674407958984375f, _991), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _978.y, _978.y) * _980);
      _1046 = _943 + (float4(((_994.xyz * 4.0f) - 2.0f.xxx) * _978.x, _978.x) * _980);
    } else {
      _1043 = _940;
      _1044 = _941;
      _1045 = _942;
      _1046 = _943;
    }
    float4 _1129;
    float4 _1130;
    float4 _1131;
    float _1132;
    if (_963 > 0.0f) {
      float3 _1055 = ((_803 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1058 = _18_m109.xyz * 0.5f;
      float3 _1060 = clamp(_1055 - floor(_1055), _1058, 1.0f.xxx - _1058);
      float4 _1064 = _69.SampleLevel(_25, _1060, 0.0f);
      float _1066 = _963 * (1.0f - _837);
      float _1070 = _18_m109.y * 0.5f;
      float _1076 = clamp(_1060.y, _1070, 1.0f - _1070) * 0.3333333432674407958984375f;
      float4 _1080 = _70.SampleLevel(_24, float3(_1060.x, _1076, _1060.z), 0.0f);
      float _1096 = _1064.x;
      float _1107 = _1064.y;
      float _1118 = _1064.z;
      _1129 = _1044 + (float4(((_70.SampleLevel(_24, float3(_1060.x, _1076 + 0.666666686534881591796875f, _1060.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1118, _1118) * _1066);
      _1130 = _1045 + (float4(((_70.SampleLevel(_24, float3(_1060.x, _1076 + 0.3333333432674407958984375f, _1060.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1107, _1107) * _1066);
      _1131 = _1046 + (float4(((_1080.xyz * 4.0f) - 2.0f.xxx) * _1096, _1096) * _1066);
      _1132 = _1043 + (_1080.w * _1066);
    } else {
      _1129 = _1044;
      _1130 = _1045;
      _1131 = _1046;
      _1132 = _1043;
    }
    float _1135 = clamp((_1132 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1139 = _1129;
    _1140 = _1130;
    _1141 = _1131;
    _1142 = _1135 - _837;
    _1143 = (_1135 + _837) * 0.5f;
  } else {
    _1139 = 0.0f.xxxx;
    _1140 = 0.0f.xxxx;
    _1141 = 0.0f.xxxx;
    _1142 = 0.0f;
    _1143 = 1.0f;
  }
  float4 _1163 = _1141 + float4(_18_m111.x * _1143, (_18_m111.y * _1143) + ((_18_m111.w * _1142) * 0.5f), _18_m111.z * _1143, (_18_m111.w * _1143) + ((_18_m111.y * _1142) * 0.375f));
  float4 _1183 = _1140 + float4(_18_m112.x * _1143, (_18_m112.y * _1143) + ((_18_m112.w * _1142) * 0.5f), _18_m112.z * _1143, (_18_m112.w * _1143) + ((_18_m112.y * _1142) * 0.375f));
  float4 _1203 = _1139 + float4(_18_m113.x * _1143, (_18_m113.y * _1143) + ((_18_m113.w * _1142) * 0.5f), _18_m113.z * _1143, (_18_m113.w * _1143) + ((_18_m113.y * _1142) * 0.375f));
  float _1208 = max(0.0f, dot(_1163.xyz, _606) + _1163.w);
  float _1213 = max(0.0f, dot(_1183.xyz, _606) + _1183.w);
  float _1218 = max(0.0f, dot(_1203.xyz, _606) + _1203.w);
  float3 _1228 = reflect(_633, _606);
  float _1236 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_578, 0.001000000047497451305389404296875f))));
  float2 _1237 = float2(_800);
  float2 _1241 = floor(_1237 * _48_m0.w);
  float _1258 = floor(_801 - _48_m2.y);
  float _1262 = clamp(_1258, 0.0f, _48_m1.x - 1.0f);
  uint _1272 = (_1258 <= _1262) ? (_33.Load(uint(_18_m21.z + int(_1241.x + (_1241.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1262)) * 4 + 0)) : 0u;
  float _1275 = dot(float4(_1208, _1213, _1218, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1277;
  float _1280;
  uint _1282;
  _1277 = 0.0f.xxx;
  _1280 = 1.0f;
  _1282 = _1272;
  uint _1283;
  float3 _1278;
  float _1281;
  bool _1285;
  [loop] for (;;) {
    bool _1284 = _1282 != 0u;
    _1285 = _1280 > 0.00999999977648258209228515625f;
    if (_1284 && _1285) {
      uint _1289 = firstbitlow(_1282);
      _1283 = _1282 ^ (1u << (_1289 & 31u));
      float3 _1309 = float3(dot(_48_m4[_1289]._m2, _459), dot(_48_m4[_1289]._m3, _459), dot(_48_m4[_1289]._m4, _459));
      float3 _1310 = abs(_1309);
      if (all(bool3(_1310.x <= _48_m4[_1289]._m1.xyz.x, _1310.y <= _48_m4[_1289]._m1.xyz.y, _1310.z <= _48_m4[_1289]._m1.xyz.z))) {
        float3 _1319 = _48_m4[_1289]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1321 = _1310 * 0.100000001490116119384765625f;
        float3 _1322 = _1321 * _1321;
        float3 _1325 = (_48_m4[_1289]._m1.xyz - _1310) * _48_m4[_1289]._m5.xyz;
        float3 _1373;
        [branch] if (_48_m4[_1289]._m6.x == 1.0f) {
          float3 _1358 = float3(dot(_48_m4[_1289]._m2.xyz, _1228), dot(_48_m4[_1289]._m3.xyz, _1228), dot(_48_m4[_1289]._m4.xyz, _1228));
          float3 _1360 = (_48_m4[_1289]._m1.xyz - _1309) / _1358;
          float3 _1363 = ((-_48_m4[_1289]._m1.xyz) - _1309) / _1358;
          bool3 _1364 = bool3(_1358.x > 0.0f.xxx.x, _1358.y > 0.0f.xxx.y, _1358.z > 0.0f.xxx.z);
          float3 _1365 = float3(_1364.x ? _1360.x : _1363.x, _1364.y ? _1360.y : _1363.y, _1364.z ? _1360.z : _1363.z);
          _1373 = _1309 + (_1358 * min(min(_1365.x, _1365.y), _1365.z));
        }
        else {
          _1373 = _1228;
        }
        float3 _1374 = normalize(_1373);
        float3 _1377 = float3(int3(sign(_1374)));
        float3 _1380 = _1374 / dot(_1374, _1377).xxx;
        float3 _1394;
        if (_1380.z < 0.0f) {
          float3 _1385 = abs(_1380);
          float2 _1392 = _1377.xy * float2(1.0f - _1385.y, 1.0f - _1385.x);
          _1394 = float3(_1392.x, _1392.y, _1380.z);
        } else {
          _1394 = _1380;
        }
        float _1419 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1289]._m0, float4(_606, 1.0f))));
        float _1432 = clamp((min(_1325.x, min(_1325.y, _1325.z)) * _48_m4[_1289]._m6.y) + ((((((_1319 * _1319).x - ((_1322.x + _1322.y) + _1322.z)) * _48_m4[_1289]._m5.x) * _48_m4[_1289]._m5.x) * (1.0f - _48_m4[_1289]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1289]._m6.w;
        _1278 = _1277 + ((((_31.SampleLevel(_26, float3((((_1394.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1289]._m1.w), _1236).xyz * _48_m4[_1289]._m5.w) * ((((((clamp(abs(_1275 / _1419), 0.0f, 1.0f) * 2.0f) + _1275) / (2.0f + _1419)) - 1.0f) * _18_m23.w) + 1.0f)) * _1432) * _1280);
        _1281 = _1280 * (1.0f - _1432);
      } else {
        _1278 = _1277;
        _1281 = _1280;
      }
      _1277 = _1278;
      _1280 = _1281;
      _1282 = _1283;
      continue;
    } else {
      break;
    }
  }
  float3 _1501;
  if (_1285) {
    float3 _1440 = normalize(_1228);
    float3 _1443 = float3(int3(sign(_1440)));
    float3 _1446 = _1440 / dot(_1440, _1443).xxx;
    float3 _1460;
    if (_1446.z < 0.0f) {
      float3 _1451 = abs(_1446);
      float2 _1458 = _1443.xy * float2(1.0f - _1451.y, 1.0f - _1451.x);
      _1460 = float3(_1458.x, _1458.y, _1446.z);
    } else {
      _1460 = _1446;
    }
    float _1487 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_606, 1.0f))));
    _1501 = _1277 + ((_31.SampleLevel(_26, float3((((_1460.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1236).xyz * ((((((clamp(abs(_1275 / _1487), 0.0f, 1.0f) * 2.0f) + _1275) / (2.0f + _1487)) - 1.0f) * _18_m23.w) + 1.0f)) * _1280);
  } else {
    _1501 = _1277;
  }
  float4 _2196;
  do {
    [branch] if (_52_m4 == 0) {
      _2196 = 0.0f.xxxx;
      break;
    }
    float2 _2051;
    do {
      if (_54_m7.w >= 0.9900000095367431640625f) {
        _2051 = float2(_54_m7.z, 1.0f);
        break;
      }
      int _1530 = int(_54_m7.x);
      bool3 _1532 = (_1530 == 2).xxx;
      float3 _1540 = _455 - float3(_1532.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1532.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1532.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
      float _1551 = max(clamp((_54_m6.w - dot(_1540, _1540)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
      float _1768;
      bool _1769;
      if (_1551 > 0.0f) {
        float _1766;
        bool _1767;
        if (_1530 > 0) {
          float3 _1558 = _455 - _54_m1[0].xyz;
          float3 _1562 = _455 - _54_m1[1].xyz;
          float3 _1566 = _455 - _54_m1[2].xyz;
          float3 _1570 = _455 - _54_m1[3].xyz;
          float4 _1575 = float4(dot(_1558, _1558), dot(_1562, _1562), dot(_1566, _1566), dot(_1570, _1570));
          float4 _1584 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
          float4 _1586 = float4(bool4(_1575.x < _1584.x, _1575.y < _1584.y, _1575.z < _1584.z, _1575.w < _1584.w));
          float3 _1590 = clamp(_1586.yzw - _1586.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1594 = clamp(4.0f - dot(float4(_1586.x, _1590.x, _1590.y, _1590.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1596 = clamp(_1594 + 1.0f, 0.0f, 3.0f);
          uint _1597 = uint(_1594);
          uint _1605 = uint(_1596);
          float _1611 = dot(_1575, _364[_1605]) / _54_m1[_1605].w;
          float _1628;
          if (((_1596 > _1594) && (_1611 >= 0.0f)) && (_1611 <= 1.0f)) {
            _1628 = _1594 + step(frac(52.98291778564453125f * frac(dot(_1237 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1575, _364[_1597]) / _54_m1[_1597].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1628 = _1594;
          }
          float _1629 = clamp(_1628, 0.0f, 4.0f);
          float4 _1633 = mul(_54_m0[uint(_1629)], _459);
          float _1636 = _1633.z;
          float4 _1637 = float4(_1633.xy, _1636, _1629);
          float3 _1638 = _1637.xyz;
          bool3 _1639 = bool3(_1638.x <= 0.0f.xxx.x, _1638.y <= 0.0f.xxx.y, _1638.z <= 0.0f.xxx.z);
          bool3 _1640 = bool3(_1638.x >= 1.0f.xxx.x, _1638.y >= 1.0f.xxx.y, _1638.z >= 1.0f.xxx.z);
          bool _1646 = any(bool3(_1639.x || _1640.x, _1639.y || _1640.y, _1639.z || _1640.z)) || ((asuint(_1636) & 2147483647u) > 2139095040u);
          int _1647 = int(_1629);
          float2 _1664 = float4(_54_m3[_1647].xy + (_1637.xy * _54_m3[_1647].zw), _1636, _1629).xy * _54_m4.zw;
          float2 _1666 = floor(_1664 + 0.5f.xx);
          float2 _1667 = _1664 - _1666;
          float _1668 = _1667.x;
          float _1669 = _1668 + 0.5f;
          float _1671 = (_1669 * _1669) * 0.5f;
          float _1674 = min(_1668, 0.0f);
          float _1678 = max(_1668, 0.0f);
          float4 _1682 = float4(_1671 - _1668, (1.0f - _1668) - (_1674 * _1674), (_1668 + 1.0f) - (_1678 * _1678), _1671) * 0.44444000720977783203125f;
          float _1683 = _1667.y;
          float _1684 = _1683 + 0.5f;
          float _1686 = (_1684 * _1684) * 0.5f;
          float _1689 = min(_1683, 0.0f);
          float _1693 = max(_1683, 0.0f);
          float4 _1697 = float4(_1686 - _1683, (1.0f - _1683) - (_1689 * _1689), (_1683 + 1.0f) - (_1693 * _1693), _1686) * 0.44444000720977783203125f;
          float2 _1699 = _1682.yw;
          float2 _1700 = _1682.xz + _1699;
          float2 _1702 = _1697.yw;
          float2 _1703 = _1697.xz + _1702;
          float2 _1709 = ((_1699 / _1700) + float2(-1.5f, 0.5f)) * _54_m4.xx;
          float2 _1711 = ((_1702 / _1703) + float2(-1.5f, 0.5f)) * _54_m4.yy;
          float2 _1713 = _1666 * _54_m4.xy;
          float _1714 = _1709.x;
          float _1715 = _1711.x;
          float _1718 = _1709.y;
          float _1721 = _1711.y;
          float _1726 = _1700.x;
          float _1727 = _1703.x;
          float _1729 = _1700.y;
          float _1731 = _1703.y;
          _1766 = _1646 ? 1.0f : (((((_1726 * _1727) * _55.SampleCmpLevelZero(_27, float3(_1713 + float2(_1714, _1715), _386).xy, _1636)) + ((_1729 * _1727) * _55.SampleCmpLevelZero(_27, float3(_1713 + float2(_1718, _1715), _386).xy, _1636))) + ((_1726 * _1731) * _55.SampleCmpLevelZero(_27, float3(_1713 + float2(_1714, _1721), _386).xy, _1636))) + ((_1729 * _1731) * _55.SampleCmpLevelZero(_27, float3(_1713 + float2(_1718, _1721), _386).xy, _1636)));
          _1767 = _1646;
        } else {
          _1766 = 1.0f;
          _1767 = false;
        }
        _1768 = _1766;
        _1769 = _1767;
      } else {
        _1768 = 1.0f;
        _1769 = false;
      }
      float _1969;
      float _1970;
      if ((_1551 < 1.0f) || (_54_m8.x > 0.5f)) {
        float _1780 = 1.0f - clamp(dot(_606, _50_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1797 = float4((_455 - (_50_m0.xyz * (_1780 * _54_m22.x))) + (_606 * (_1780 * _54_m22.y)), 1.0f);
        float4 _1798 = mul(_54_m21, _1797);
        float2 _1799 = _1798.xy;
        float _1967;
        if (all(bool2(_1799.x > 0.0f.xx.x, _1799.y > 0.0f.xx.y)) && all(bool2(_1799.x < 1.0f.xx.x, _1799.y < 1.0f.xx.y))) {
          uint _1818 = clamp(uint((floor(_1798.y * _54_m23.z) + _1798.x) * _54_m23.y), 0u, 127u);
          uint _1822 = asuint(_54_m25[_1818].x);
          float2 _1823 = spvUnpackHalf2x16(_1822);
          float _1824 = _1823.x;
          float _1966;
          if (_1824 >= 0.0f) {
            float4x4 _1833 = _54_m20;
            _1833[0].w = _54_m25[_1818].y;
            _1833[1].w = _54_m25[_1818].z;
            _1833[2].w = _54_m25[_1818].w;
            float4 _1840 = mul(_1833, _1797);
            float3 _1841 = _1840.xyz;
            float _1965;
            if (all(bool3(_1841.x > 0.0f.xxx.x, _1841.y > 0.0f.xxx.y, _1841.z > 0.0f.xxx.z)) && all(bool3(_1841.x < 1.0f.xxx.x, _1841.y < 1.0f.xxx.y, _1841.z < 1.0f.xxx.z))) {
              float _1858 = _1840.z;
              float2 _1864 = float4((_1840.xy * _54_m22.zw) + float2(_1824, spvUnpackHalf2x16(_1822 >> 16u).x), _1858, 1.0f).xy * _54_m24.zw;
              float2 _1866 = floor(_1864 + 0.5f.xx);
              float2 _1867 = _1864 - _1866;
              float _1868 = _1867.x;
              float _1869 = _1868 + 0.5f;
              float _1871 = (_1869 * _1869) * 0.5f;
              float _1874 = min(_1868, 0.0f);
              float _1878 = max(_1868, 0.0f);
              float4 _1882 = float4(_1871 - _1868, (1.0f - _1868) - (_1874 * _1874), (_1868 + 1.0f) - (_1878 * _1878), _1871) * 0.44444000720977783203125f;
              float _1883 = _1867.y;
              float _1884 = _1883 + 0.5f;
              float _1886 = (_1884 * _1884) * 0.5f;
              float _1889 = min(_1883, 0.0f);
              float _1893 = max(_1883, 0.0f);
              float4 _1897 = float4(_1886 - _1883, (1.0f - _1883) - (_1889 * _1889), (_1883 + 1.0f) - (_1893 * _1893), _1886) * 0.44444000720977783203125f;
              float2 _1900 = _1882.xz + _1882.yw;
              float2 _1903 = _1897.xz + _1897.yw;
              float2 _1909 = ((_1882.yw / _1900) + float2(-1.5f, 0.5f)) * _54_m24.xx;
              float2 _1911 = ((_1897.yw / _1903) + float2(-1.5f, 0.5f)) * _54_m24.yy;
              float2 _1913 = _1866 * _54_m24.xy;
              float _1914 = _1909.x;
              float _1915 = _1911.x;
              float2 _1917 = _1913 + float2(_1914, _1915);
              float _1918 = _1909.y;
              float2 _1920 = _1913 + float2(_1918, _1915);
              float _1921 = _1911.y;
              float2 _1923 = _1913 + float2(_1914, _1921);
              float2 _1925 = _1913 + float2(_1918, _1921);
              float _1926 = _1900.x;
              float _1927 = _1903.x;
              float _1929 = _1900.y;
              float _1931 = _1903.y;
              _1965 = ((((_1926 * _1927) * _60.SampleCmpLevelZero(_27, float3(_1917, _386).xy, _1858)) + ((_1929 * _1927) * _60.SampleCmpLevelZero(_27, float3(_1920, _386).xy, _1858))) + ((_1926 * _1931) * _60.SampleCmpLevelZero(_27, float3(_1923, _386).xy, _1858))) + ((_1929 * _1931) * _60.SampleCmpLevelZero(_27, float3(_1925, _386).xy, _1858));
            } else {
              _1965 = 1.0f;
            }
            _1966 = _1965;
          } else {
            _1966 = 1.0f;
          }
          _1967 = _1966;
        } else {
          _1967 = 1.0f;
        }
        _1969 = _1769 ? _1967 : _1768;
        _1970 = _1967;
      } else {
        _1969 = _1768;
        _1970 = 1.0f;
      }
      float _1973 = lerp(lerp(_1970, _1969, _1551), min(_1970, _1969), _54_m8.x);
      float _2046;
      if (_1973 > 0.001000000047497451305389404296875f) {
        float3 _2008 = _455 - _18_m65.xyz;
        float2 _2013 = (_2008 + (_18_m68.xyz * _2008.y)).xz * _18_m66.z;
        float2 _2014 = _18_m67.xy * _18_m77.w;
        float3 _2021 = _455 - _18_m69.xyz;
        float2 _2029 = _18_m69.w.xx;
        float4 _2036 = _59.SampleLevel(_25, lerp(_2013 * _18_m67.w, (_2021 + (_18_m68.xyz * _2021.y)).xz * _18_m70.x, _2029) + lerp(_2014, _18_m70.yz * _18_m77.w, _2029), 0.0f);
        _2046 = _1973 * lerp(1.0f, lerp(_59.SampleLevel(_25, _2013 + _2014, 0.0f).x, lerp(_2036.x, _2036.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2008.xz))), _18_m67.z);
      } else {
        _2046 = _1973;
      }
      _2051 = float2(lerp(_2046, _54_m7.z, _54_m7.w), _2046);
      break;
    } while (false);
    float _2056 = lerp(1.0f, min(1.0f, _2051.x), _54_m6.x);
    float4 _2195;
    if (_2056 > 0.001000000047497451305389404296875f) {
      float3 _2066 = -_50_m0.xyz;
      float _2071 = dot(_2066, _1228);
      float3 _2073 = _1228 - (_2066 * _2071);
      bool3 _2075 = (_2071 < _50_m4.z).xxx;
      float3 _2083 = normalize((_2066 * _50_m4.z) + ((_2073 * rsqrt(max(6.103515625e-05f, dot(_2073, _2073)))) * _50_m4.y));
      float3 _2084 = float3(_2075.x ? _2083.x : _1228.x, _2075.y ? _2083.y : _1228.y, _2075.z ? _2083.z : _1228.z);
      float3 _2088 = _2084 + _492;
      float3 _2092 = _2088 * rsqrt(max(6.103515625e-05f, dot(_2088, _2088)));
      float _2093 = clamp(dot(_2084, _606), 0.0f, 1.0f);
      float _2095 = clamp(dot(_606, _2092), 0.0f, 1.0f);
      float _2098 = clamp(_632, 0.0f, 1.0f);
      float _2099 = _578 * _578;
      float _2100 = _2099 * _2099;
      float _2121 = (((_2095 * _2100) - _2095) * _2095) + 1.0f;
      float _2124 = 1.0f - clamp(dot(_492, _2092), 0.0f, 1.0f);
      float _2125 = _2124 * _2124;
      float _2127 = (_2124 * _2125) * _2125;
      float _2151 = 1.0f - _578;
      float _2158 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2151 * (1.04997003078460693359375f + (_2151 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2151))))));
      float _2159 = 1.0f - _2158;
      float3 _2162 = _750 + ((1.0f.xxx - _750) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0xAB136FCA:
      float3 _2181 = (clamp(clamp((min(((_750 * (1.0f - _2127)) + _2127.xxx) * ((_2100 / (_2121 * _2121)) * (0.5f / (((_2093 * sqrt(((((-_2098) * _2100) + _2098) * _2098) + _2100)) + (_2098 * sqrt(((((-_2093) * _2100) + _2093) * _2093) + _2100))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2162 * (((_64.SampleLevel(_24, (float2(_2098, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2093, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2158) / _2159)) * _2162) / (1.0f.xxx - (_2162 * _2159)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_573, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2093) + ((_746 * 1.0f) * _2093);
      */
      float3 _2181 = (clamp((clamp((min(((_750 * (1.0f - _2127)) + _2127.xxx) * ((_2100 / (_2121 * _2121)) * (0.5f / (((_2093 * sqrt(((((-_2098) * _2100) + _2098) * _2098) + _2100)) + (_2098 * sqrt(((((-_2093) * _2100) + _2093) * _2093) + _2100))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2162 * (((_64.SampleLevel(_24, (float2(_2098, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2093, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2158) / _2159)) * _2162) / (1.0f.xxx - (_2162 * _2159)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_573, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2093) + ((_746 * 1.0f) * _2093);
      // RenoDX code end
      float3 _2182 = _2181 * _50_m1.xyz;
      float3 _2193 = lerp(_2182, _2182 * _61.SampleBias(_24, float2(_2056, 0.5f), _18_m16).xyz, (1.0f - _2056).xxx) * 1.0f;
      _2195 = float4(_2193.x, _2193.y, _2193.z, 0.0f.xxxx.w);
    } else {
      _2195 = 0.0f.xxxx;
    }
    _2196 = _2195;
    break;
  } while (false);
  float2 _2198 = floor(_1237 * 0.03125f);
  int _2206 = int((_2198.x + (_2198.y * _52_m9)) * 8.0f);
  float _2213 = floor(_801 - (_18_m3.y * _52_m15));
  float _2217 = clamp(_2213, 0.0f, _52_m11 - 1.0f);
  int _2219 = int(_2217 * 8.0f);
  float3 _2221;
  float _2224;
  _2221 = 0.0f.xxx;
  _2224 = 1.0f;
  float3 _2222;
  float _2225;
  [loop] for (int _2226 = 0; _2226 <= 7; _2221 = _2222, _2224 = _2225, _2226++) {
    uint _2247 = (_2213 <= _2217) ? (_33.Load(uint((_52_m2 + _2206) + _2226) * 4 + 0) & _33.Load(uint((_52_m3 + _2219) + _2226) * 4 + 0)) : 0u;
    uint _2248 = uint(_2226);
    float3 _2252;
    _2225 = _2224;
    _2252 = 0.0f.xxx;
    uint _2255;
    float _2250;
    float3 _2253;
    [loop] for (uint _2254 = _2247; _2254 != 0u; _2225 = _2250, _2252 = _2253, _2254 = _2255) {
      uint _2259 = firstbitlow(_2254);
      _2255 = _2254 ^ (1u << (_2259 & 31u));
      int _2265 = int((32u * _2248) + _2259) * 8;
      int _2268 = _2265 + 1;
      int _2271 = _2265 + 2;
      int _2274 = _2265 + 3;
      int _2277 = _2265 + 4;
      int _2280 = _2265 + 5;
      int _2283 = _2265 + 6;
      int _2286 = _2265 + 7;
      uint _2290 = uint(_50_m6[_2280].w);
      float _2365;
      if ((_2290 & 1u) == 1u) {
        uint _2296 = asuint(_50_m6[_2280].x);
        uint _2303 = asuint(_50_m6[_2280].y);
        uint _2310 = asuint(_50_m6[_2280].z);
        uint _2317 = asuint(_50_m6[_2283].x);
        uint _2324 = asuint(_50_m6[_2283].y);
        uint _2331 = asuint(_50_m6[_2283].z);
        float3 _2350 = abs(mul(float4(_455 - _50_m6[_2268].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2296).x, spvUnpackHalf2x16(_2310).x, spvUnpackHalf2x16(_2324).x, 0.0f), float4(spvUnpackHalf2x16(_2296 >> 16u).x, spvUnpackHalf2x16(_2310 >> 16u).x, spvUnpackHalf2x16(_2324 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2303).x, spvUnpackHalf2x16(_2317).x, spvUnpackHalf2x16(_2331).x, 0.0f), float4(spvUnpackHalf2x16(_2303 >> 16u).x, spvUnpackHalf2x16(_2317 >> 16u).x, spvUnpackHalf2x16(_2331 >> 16u).x, 0.0f))).xyz);
        float _2357 = _50_m6[_2286].x * 0.5f;
        float _2363 = 1.0f - clamp((max(max(_2350.x, _2350.y), _2350.z) - (_2357 + 0.5f)) / (0.5f - _2357), 0.0f, 1.0f);
        _2365 = _2363 * _2363;
      } else {
        _2365 = 1.0f;
      }
      uint _2369 = uint(_50_m6[_2265].w);
      bool _2372 = _50_m6[_2274].z > 0.5f;
      if ((false || (_2365 < 0.001000000047497451305389404296875f)) || ((_2369 < 4u) && _2372)) {
        _2250 = _2225;
        _2253 = _2252;
        continue;
      }
      float _4901;
      float3 _4902;
      do {
        [branch] if (_2369 >= 4u) {
          float3 _3601;
          do {
            float3 _2391 = _50_m6[_2268].xyz - _455;
            if (dot(_50_m6[_2274].xyz, _2391) > 0.0f) {
              _3601 = 0.0f.xxx;
              break;
            }
            float _2398 = dot(_2391, _2391) * _50_m6[_2268].w;
            float _2401 = clamp(1.0f - (_2398 * _2398), 0.0f, 1.0f);
            float _2402 = _2401 * _2401;
            if (_2402 <= 0.0f) {
              _3601 = 0.0f.xxx;
              break;
            }
            float3 _2440;
            float _2441;
            bool _2442;
            float3 _2470;
            float3 _2472;
            float3 _2474;
            float3 _2476;
            float3 _2406 = _50_m6[_2271].xyz * _50_m6[_2271].w;
            float3 _2407 = _50_m6[_2268].xyz - _2406;
            float3 _2408 = _50_m6[_2277].xyz * _50_m6[_2274].w;
            float3 _2411 = _50_m6[_2268].xyz + _2406;
            float2 _2421 = (float2(clamp(_578, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_632, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2425 = _77.SampleLevel(_24, _2421, 0.0f);
            float4 _2429 = _78.SampleLevel(_24, _2421, 0.0f);
            float _2824;
            do {
              _2440 = _492 - (_606 * dot(_492, _606));
              _2441 = dot(_2440, _2440);
              _2442 = _2441 > 9.9999997473787516355514526367188e-05f;
              float3 _2465;
              if (_2442) {
                _2465 = _2440 * rsqrt(_2441);
              } else {
                float _2446 = _606.z;
                float _2448 = (_2446 >= 0.0f) ? 1.0f : (-1.0f);
                float _2450 = (-1.0f) / (_2448 + _2446);
                float _2452 = _606.x;
                _2465 = float3(1.0f + (((_2448 * _2450) * _2452) * _2452), ((_2448 * _2452) * _606.y) * _2450, (-_2448) * _2452);
              }
              float3x3 _2469 = mul(float3x3(float3(_2425.x, 0.0f, _2425.z), float3(0.0f, 1.0f, 0.0f), float3(_2425.y, 0.0f, _2425.w)), float3x3(_2465, cross(_606, _2465), _606));
              _2470 = (_2407 - _2408) - _455;
              float3 _2471 = mul(_2469, _2470);
              _2472 = (_2407 + _2408) - _455;
              float3 _2473 = mul(_2469, _2472);
              _2474 = (_2411 + _2408) - _455;
              float3 _2475 = mul(_2469, _2474);
              _2476 = (_2411 - _2408) - _455;
              float3 _2477 = mul(_2469, _2476);
              float _2478 = _2471.z;
              float _2481 = _2473.z;
              float _2485 = _2475.z;
              float _2489 = _2477.z;
              int _2493 = (((int(_2478 > 0.0f) | ((_2481 > 0.0f) ? 2 : 0)) | ((_2485 > 0.0f) ? 4 : 0)) | ((_2489 > 0.0f) ? 8 : 0));
              float3 _2730;
              float3 _2731;
              float3 _2732;
              float3 _2733;
              float3 _2734;
              int _2735;
              if (_2493 == 0) {
                _2730 = _2477;
                _2731 = _2475;
                _2732 = _2473;
                _2733 = _2471;
                _2734 = 0.0f.xxx;
                _2735 = 0;
              } else {
                float3 _2724;
                float3 _2725;
                float3 _2726;
                float3 _2727;
                float3 _2728;
                int _2729;
                if (_2493 == 1) {
                  _2724 = _2477;
                  _2725 = (_2471 * (-_2489)) + (_2477 * _2478);
                  _2726 = (_2471 * (-_2481)) + (_2473 * _2478);
                  _2727 = _2471;
                  _2728 = 0.0f.xxx;
                  _2729 = 3;
                } else {
                  float3 _2710;
                  float3 _2711;
                  float3 _2712;
                  float3 _2713;
                  float3 _2714;
                  int _2715;
                  if (_2493 == 2) {
                    _2710 = _2477;
                    _2711 = (_2473 * (-_2485)) + (_2475 * _2481);
                    _2712 = _2473;
                    _2713 = (_2473 * (-_2478)) + (_2471 * _2481);
                    _2714 = 0.0f.xxx;
                    _2715 = 3;
                  } else {
                    float3 _2696;
                    float3 _2697;
                    float3 _2698;
                    float3 _2699;
                    float3 _2700;
                    int _2701;
                    if (_2493 == 3) {
                      _2696 = (_2471 * (-_2489)) + (_2477 * _2478);
                      _2697 = (_2473 * (-_2485)) + (_2475 * _2481);
                      _2698 = _2473;
                      _2699 = _2471;
                      _2700 = 0.0f.xxx;
                      _2701 = 4;
                    } else {
                      float3 _2682;
                      float3 _2683;
                      float3 _2684;
                      float3 _2685;
                      float3 _2686;
                      int _2687;
                      if (_2493 == 4) {
                        _2682 = _2477;
                        _2683 = _2475;
                        _2684 = (_2475 * (-_2481)) + (_2473 * _2485);
                        _2685 = (_2475 * (-_2489)) + (_2477 * _2485);
                        _2686 = 0.0f.xxx;
                        _2687 = 3;
                      } else {
                        float3 _2668;
                        float3 _2669;
                        float3 _2670;
                        float3 _2671;
                        float3 _2672;
                        int _2673;
                        if (_2493 == 5) {
                          _2668 = _2477;
                          _2669 = _2475;
                          _2670 = _2473;
                          _2671 = _2471;
                          _2672 = 0.0f.xxx;
                          _2673 = 0;
                        } else {
                          float3 _2662;
                          float3 _2663;
                          float3 _2664;
                          float3 _2665;
                          float3 _2666;
                          int _2667;
                          if (_2493 == 6) {
                            _2662 = (_2475 * (-_2489)) + (_2477 * _2485);
                            _2663 = _2475;
                            _2664 = _2473;
                            _2665 = (_2473 * (-_2478)) + (_2471 * _2481);
                            _2666 = 0.0f.xxx;
                            _2667 = 4;
                          } else {
                            float3 _2648;
                            float3 _2649;
                            float3 _2650;
                            float3 _2651;
                            float3 _2652;
                            int _2653;
                            if (_2493 == 7) {
                              float _2641 = -_2489;
                              _2648 = (_2475 * _2641) + (_2477 * _2485);
                              _2649 = _2475;
                              _2650 = _2473;
                              _2651 = _2471;
                              _2652 = (_2471 * _2641) + (_2477 * _2478);
                              _2653 = 5;
                            } else {
                              float3 _2635;
                              float3 _2636;
                              float3 _2637;
                              float3 _2638;
                              float3 _2639;
                              int _2640;
                              if (_2493 == 8) {
                                _2635 = _2477;
                                _2636 = _2477;
                                _2637 = (_2477 * (-_2485)) + (_2475 * _2489);
                                _2638 = (_2477 * (-_2478)) + (_2471 * _2489);
                                _2639 = 0.0f.xxx;
                                _2640 = 3;
                              } else {
                                float3 _2621;
                                float3 _2622;
                                float3 _2623;
                                float3 _2624;
                                float3 _2625;
                                int _2626;
                                if (_2493 == 9) {
                                  _2621 = _2477;
                                  _2622 = (_2477 * (-_2485)) + (_2475 * _2489);
                                  _2623 = (_2471 * (-_2481)) + (_2473 * _2478);
                                  _2624 = _2471;
                                  _2625 = 0.0f.xxx;
                                  _2626 = 4;
                                } else {
                                  float3 _2607;
                                  float3 _2608;
                                  float3 _2609;
                                  float3 _2610;
                                  float3 _2611;
                                  int _2612;
                                  if (_2493 == 10) {
                                    _2607 = _2477;
                                    _2608 = _2475;
                                    _2609 = _2473;
                                    _2610 = _2471;
                                    _2611 = 0.0f.xxx;
                                    _2612 = 0;
                                  } else {
                                    float3 _2601;
                                    float3 _2602;
                                    float3 _2603;
                                    float3 _2604;
                                    float3 _2605;
                                    int _2606;
                                    if (_2493 == 11) {
                                      float _2594 = -_2485;
                                      _2601 = (_2477 * _2594) + (_2475 * _2489);
                                      _2602 = (_2473 * _2594) + (_2475 * _2481);
                                      _2603 = _2473;
                                      _2604 = _2471;
                                      _2605 = _2477;
                                      _2606 = 5;
                                    } else {
                                      float3 _2588;
                                      float3 _2589;
                                      float3 _2590;
                                      float3 _2591;
                                      float3 _2592;
                                      int _2593;
                                      if (_2493 == 12) {
                                        _2588 = _2477;
                                        _2589 = _2475;
                                        _2590 = (_2475 * (-_2481)) + (_2473 * _2485);
                                        _2591 = (_2477 * (-_2478)) + (_2471 * _2489);
                                        _2592 = 0.0f.xxx;
                                        _2593 = 4;
                                      } else {
                                        bool _2546 = _2493 == 13;
                                        float3 _2573;
                                        float3 _2574;
                                        float3 _2575;
                                        float3 _2576;
                                        int _2577;
                                        if (_2546) {
                                          float _2566 = -_2481;
                                          _2573 = (_2475 * _2566) + (_2473 * _2485);
                                          _2574 = (_2471 * _2566) + (_2473 * _2478);
                                          _2575 = _2471;
                                          _2576 = _2477;
                                          _2577 = 5;
                                        } else {
                                          float3 _2563;
                                          float3 _2564;
                                          int _2565;
                                          if (_2493 == 14) {
                                            float _2556 = -_2478;
                                            _2563 = (_2473 * _2556) + (_2471 * _2481);
                                            _2564 = (_2477 * _2556) + (_2471 * _2489);
                                            _2565 = 5;
                                          } else {
                                            _2563 = _2471;
                                            _2564 = 0.0f.xxx;
                                            _2565 = (_2493 == 15) ? 4 : 0;
                                          }
                                          _2573 = _2475;
                                          _2574 = _2473;
                                          _2575 = _2563;
                                          _2576 = _2564;
                                          _2577 = _2565;
                                        }
                                        bool3 _2578 = _2546.xxx;
                                        _2588 = float3(_2578.x ? _2475.x : _2477.x, _2578.y ? _2475.y : _2477.y, _2578.z ? _2475.z : _2477.z);
                                        _2589 = _2573;
                                        _2590 = _2574;
                                        _2591 = _2575;
                                        _2592 = _2576;
                                        _2593 = _2577;
                                      }
                                      _2601 = _2588;
                                      _2602 = _2589;
                                      _2603 = _2590;
                                      _2604 = _2591;
                                      _2605 = _2592;
                                      _2606 = _2593;
                                    }
                                    _2607 = _2601;
                                    _2608 = _2602;
                                    _2609 = _2603;
                                    _2610 = _2604;
                                    _2611 = _2605;
                                    _2612 = _2606;
                                  }
                                  _2621 = _2607;
                                  _2622 = _2608;
                                  _2623 = _2609;
                                  _2624 = _2610;
                                  _2625 = _2611;
                                  _2626 = _2612;
                                }
                                _2635 = _2621;
                                _2636 = _2622;
                                _2637 = _2623;
                                _2638 = _2624;
                                _2639 = _2625;
                                _2640 = _2626;
                              }
                              _2648 = _2635;
                              _2649 = _2636;
                              _2650 = _2637;
                              _2651 = _2638;
                              _2652 = _2639;
                              _2653 = _2640;
                            }
                            _2662 = _2648;
                            _2663 = _2649;
                            _2664 = _2650;
                            _2665 = _2651;
                            _2666 = _2652;
                            _2667 = _2653;
                          }
                          _2668 = _2662;
                          _2669 = _2663;
                          _2670 = _2664;
                          _2671 = _2665;
                          _2672 = _2666;
                          _2673 = _2667;
                        }
                        _2682 = _2668;
                        _2683 = _2669;
                        _2684 = _2670;
                        _2685 = _2671;
                        _2686 = _2672;
                        _2687 = _2673;
                      }
                      _2696 = _2682;
                      _2697 = _2683;
                      _2698 = _2684;
                      _2699 = _2685;
                      _2700 = _2686;
                      _2701 = _2687;
                    }
                    _2710 = _2696;
                    _2711 = _2697;
                    _2712 = _2698;
                    _2713 = _2699;
                    _2714 = _2700;
                    _2715 = _2701;
                  }
                  _2724 = _2710;
                  _2725 = _2711;
                  _2726 = _2712;
                  _2727 = _2713;
                  _2728 = _2714;
                  _2729 = _2715;
                }
                _2730 = _2724;
                _2731 = _2725;
                _2732 = _2726;
                _2733 = _2727;
                _2734 = _2728;
                _2735 = _2729;
              }
              bool3 _2737 = (_2735 == 3).xxx;
              bool3 _2740 = (_2735 == 4).xxx;
              if (_2735 == 0) {
                _2824 = 0.0f;
                break;
              }
              float3 _2745 = normalize(_2733);
              float3 _2746 = normalize(_2732);
              float3 _2747 = normalize(_2731);
              float3 _2748 = normalize(float3(_2737.x ? _2733.x : _2730.x, _2737.y ? _2733.y : _2730.y, _2737.z ? _2733.z : _2730.z));
              float3 _2749 = normalize(float3(_2740.x ? _2733.x : _2734.x, _2740.y ? _2733.y : _2734.y, _2740.z ? _2733.z : _2734.z));
              float _2751 = clamp(dot(_2745, _2746), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2755 = sqrt(1.0f - (_2751 * _2751));
              float _2763 = clamp(dot(_2746, _2747), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2767 = sqrt(1.0f - (_2763 * _2763));
              float _2776 = clamp(dot(_2747, _2748), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2780 = sqrt(1.0f - (_2776 * _2776));
              float _2787 = ((cross(_2745, _2746).z * ((_2755 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2751) / _2755))) + (cross(_2746, _2747).z * ((_2767 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2763) / _2767)))) + (cross(_2747, _2748).z * ((_2780 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2776) / _2780)));
              float _2804;
              if (_2735 >= 4) {
                float _2792 = clamp(dot(_2748, _2749), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2796 = sqrt(1.0f - (_2792 * _2792));
                _2804 = _2787 + (cross(_2748, _2749).z * ((_2796 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2792) / _2796)));
              } else {
                _2804 = _2787;
              }
              float _2821;
              if (_2735 == 5) {
                float _2809 = clamp(dot(_2749, _2745), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2813 = sqrt(1.0f - (_2809 * _2809));
                _2821 = _2804 + (cross(_2749, _2745).z * ((_2813 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2809) / _2813)));
              } else {
                _2821 = _2804;
              }
              _2824 = max(_2821, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3212;
            do {
              float3 _2858;
              if (_2442) {
                _2858 = _2440 * rsqrt(_2441);
              } else {
                float _2839 = _606.z;
                float _2841 = (_2839 >= 0.0f) ? 1.0f : (-1.0f);
                float _2843 = (-1.0f) / (_2841 + _2839);
                float _2845 = _606.x;
                _2858 = float3(1.0f + (((_2841 * _2843) * _2845) * _2845), ((_2841 * _2845) * _606.y) * _2843, (-_2841) * _2845);
              }
              float3x3 _2861 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2858, cross(_606, _2858), _606));
              float3 _2862 = mul(_2861, _2470);
              float3 _2863 = mul(_2861, _2472);
              float3 _2864 = mul(_2861, _2474);
              float3 _2865 = mul(_2861, _2476);
              float _2866 = _2862.z;
              float _2869 = _2863.z;
              float _2873 = _2864.z;
              float _2877 = _2865.z;
              int _2881 = (((int(_2866 > 0.0f) | ((_2869 > 0.0f) ? 2 : 0)) | ((_2873 > 0.0f) ? 4 : 0)) | ((_2877 > 0.0f) ? 8 : 0));
              float3 _3118;
              float3 _3119;
              float3 _3120;
              float3 _3121;
              float3 _3122;
              int _3123;
              if (_2881 == 0) {
                _3118 = _2865;
                _3119 = _2864;
                _3120 = _2863;
                _3121 = _2862;
                _3122 = 0.0f.xxx;
                _3123 = 0;
              } else {
                float3 _3112;
                float3 _3113;
                float3 _3114;
                float3 _3115;
                float3 _3116;
                int _3117;
                if (_2881 == 1) {
                  _3112 = _2865;
                  _3113 = (_2862 * (-_2877)) + (_2865 * _2866);
                  _3114 = (_2862 * (-_2869)) + (_2863 * _2866);
                  _3115 = _2862;
                  _3116 = 0.0f.xxx;
                  _3117 = 3;
                } else {
                  float3 _3098;
                  float3 _3099;
                  float3 _3100;
                  float3 _3101;
                  float3 _3102;
                  int _3103;
                  if (_2881 == 2) {
                    _3098 = _2865;
                    _3099 = (_2863 * (-_2873)) + (_2864 * _2869);
                    _3100 = _2863;
                    _3101 = (_2863 * (-_2866)) + (_2862 * _2869);
                    _3102 = 0.0f.xxx;
                    _3103 = 3;
                  } else {
                    float3 _3084;
                    float3 _3085;
                    float3 _3086;
                    float3 _3087;
                    float3 _3088;
                    int _3089;
                    if (_2881 == 3) {
                      _3084 = (_2862 * (-_2877)) + (_2865 * _2866);
                      _3085 = (_2863 * (-_2873)) + (_2864 * _2869);
                      _3086 = _2863;
                      _3087 = _2862;
                      _3088 = 0.0f.xxx;
                      _3089 = 4;
                    } else {
                      float3 _3070;
                      float3 _3071;
                      float3 _3072;
                      float3 _3073;
                      float3 _3074;
                      int _3075;
                      if (_2881 == 4) {
                        _3070 = _2865;
                        _3071 = _2864;
                        _3072 = (_2864 * (-_2869)) + (_2863 * _2873);
                        _3073 = (_2864 * (-_2877)) + (_2865 * _2873);
                        _3074 = 0.0f.xxx;
                        _3075 = 3;
                      } else {
                        float3 _3056;
                        float3 _3057;
                        float3 _3058;
                        float3 _3059;
                        float3 _3060;
                        int _3061;
                        if (_2881 == 5) {
                          _3056 = _2865;
                          _3057 = _2864;
                          _3058 = _2863;
                          _3059 = _2862;
                          _3060 = 0.0f.xxx;
                          _3061 = 0;
                        } else {
                          float3 _3050;
                          float3 _3051;
                          float3 _3052;
                          float3 _3053;
                          float3 _3054;
                          int _3055;
                          if (_2881 == 6) {
                            _3050 = (_2864 * (-_2877)) + (_2865 * _2873);
                            _3051 = _2864;
                            _3052 = _2863;
                            _3053 = (_2863 * (-_2866)) + (_2862 * _2869);
                            _3054 = 0.0f.xxx;
                            _3055 = 4;
                          } else {
                            float3 _3036;
                            float3 _3037;
                            float3 _3038;
                            float3 _3039;
                            float3 _3040;
                            int _3041;
                            if (_2881 == 7) {
                              float _3029 = -_2877;
                              _3036 = (_2864 * _3029) + (_2865 * _2873);
                              _3037 = _2864;
                              _3038 = _2863;
                              _3039 = _2862;
                              _3040 = (_2862 * _3029) + (_2865 * _2866);
                              _3041 = 5;
                            } else {
                              float3 _3023;
                              float3 _3024;
                              float3 _3025;
                              float3 _3026;
                              float3 _3027;
                              int _3028;
                              if (_2881 == 8) {
                                _3023 = _2865;
                                _3024 = _2865;
                                _3025 = (_2865 * (-_2873)) + (_2864 * _2877);
                                _3026 = (_2865 * (-_2866)) + (_2862 * _2877);
                                _3027 = 0.0f.xxx;
                                _3028 = 3;
                              } else {
                                float3 _3009;
                                float3 _3010;
                                float3 _3011;
                                float3 _3012;
                                float3 _3013;
                                int _3014;
                                if (_2881 == 9) {
                                  _3009 = _2865;
                                  _3010 = (_2865 * (-_2873)) + (_2864 * _2877);
                                  _3011 = (_2862 * (-_2869)) + (_2863 * _2866);
                                  _3012 = _2862;
                                  _3013 = 0.0f.xxx;
                                  _3014 = 4;
                                } else {
                                  float3 _2995;
                                  float3 _2996;
                                  float3 _2997;
                                  float3 _2998;
                                  float3 _2999;
                                  int _3000;
                                  if (_2881 == 10) {
                                    _2995 = _2865;
                                    _2996 = _2864;
                                    _2997 = _2863;
                                    _2998 = _2862;
                                    _2999 = 0.0f.xxx;
                                    _3000 = 0;
                                  } else {
                                    float3 _2989;
                                    float3 _2990;
                                    float3 _2991;
                                    float3 _2992;
                                    float3 _2993;
                                    int _2994;
                                    if (_2881 == 11) {
                                      float _2982 = -_2873;
                                      _2989 = (_2865 * _2982) + (_2864 * _2877);
                                      _2990 = (_2863 * _2982) + (_2864 * _2869);
                                      _2991 = _2863;
                                      _2992 = _2862;
                                      _2993 = _2865;
                                      _2994 = 5;
                                    } else {
                                      float3 _2976;
                                      float3 _2977;
                                      float3 _2978;
                                      float3 _2979;
                                      float3 _2980;
                                      int _2981;
                                      if (_2881 == 12) {
                                        _2976 = _2865;
                                        _2977 = _2864;
                                        _2978 = (_2864 * (-_2869)) + (_2863 * _2873);
                                        _2979 = (_2865 * (-_2866)) + (_2862 * _2877);
                                        _2980 = 0.0f.xxx;
                                        _2981 = 4;
                                      } else {
                                        bool _2934 = _2881 == 13;
                                        float3 _2961;
                                        float3 _2962;
                                        float3 _2963;
                                        float3 _2964;
                                        int _2965;
                                        if (_2934) {
                                          float _2954 = -_2869;
                                          _2961 = (_2864 * _2954) + (_2863 * _2873);
                                          _2962 = (_2862 * _2954) + (_2863 * _2866);
                                          _2963 = _2862;
                                          _2964 = _2865;
                                          _2965 = 5;
                                        } else {
                                          float3 _2951;
                                          float3 _2952;
                                          int _2953;
                                          if (_2881 == 14) {
                                            float _2944 = -_2866;
                                            _2951 = (_2863 * _2944) + (_2862 * _2869);
                                            _2952 = (_2865 * _2944) + (_2862 * _2877);
                                            _2953 = 5;
                                          } else {
                                            _2951 = _2862;
                                            _2952 = 0.0f.xxx;
                                            _2953 = (_2881 == 15) ? 4 : 0;
                                          }
                                          _2961 = _2864;
                                          _2962 = _2863;
                                          _2963 = _2951;
                                          _2964 = _2952;
                                          _2965 = _2953;
                                        }
                                        bool3 _2966 = _2934.xxx;
                                        _2976 = float3(_2966.x ? _2864.x : _2865.x, _2966.y ? _2864.y : _2865.y, _2966.z ? _2864.z : _2865.z);
                                        _2977 = _2961;
                                        _2978 = _2962;
                                        _2979 = _2963;
                                        _2980 = _2964;
                                        _2981 = _2965;
                                      }
                                      _2989 = _2976;
                                      _2990 = _2977;
                                      _2991 = _2978;
                                      _2992 = _2979;
                                      _2993 = _2980;
                                      _2994 = _2981;
                                    }
                                    _2995 = _2989;
                                    _2996 = _2990;
                                    _2997 = _2991;
                                    _2998 = _2992;
                                    _2999 = _2993;
                                    _3000 = _2994;
                                  }
                                  _3009 = _2995;
                                  _3010 = _2996;
                                  _3011 = _2997;
                                  _3012 = _2998;
                                  _3013 = _2999;
                                  _3014 = _3000;
                                }
                                _3023 = _3009;
                                _3024 = _3010;
                                _3025 = _3011;
                                _3026 = _3012;
                                _3027 = _3013;
                                _3028 = _3014;
                              }
                              _3036 = _3023;
                              _3037 = _3024;
                              _3038 = _3025;
                              _3039 = _3026;
                              _3040 = _3027;
                              _3041 = _3028;
                            }
                            _3050 = _3036;
                            _3051 = _3037;
                            _3052 = _3038;
                            _3053 = _3039;
                            _3054 = _3040;
                            _3055 = _3041;
                          }
                          _3056 = _3050;
                          _3057 = _3051;
                          _3058 = _3052;
                          _3059 = _3053;
                          _3060 = _3054;
                          _3061 = _3055;
                        }
                        _3070 = _3056;
                        _3071 = _3057;
                        _3072 = _3058;
                        _3073 = _3059;
                        _3074 = _3060;
                        _3075 = _3061;
                      }
                      _3084 = _3070;
                      _3085 = _3071;
                      _3086 = _3072;
                      _3087 = _3073;
                      _3088 = _3074;
                      _3089 = _3075;
                    }
                    _3098 = _3084;
                    _3099 = _3085;
                    _3100 = _3086;
                    _3101 = _3087;
                    _3102 = _3088;
                    _3103 = _3089;
                  }
                  _3112 = _3098;
                  _3113 = _3099;
                  _3114 = _3100;
                  _3115 = _3101;
                  _3116 = _3102;
                  _3117 = _3103;
                }
                _3118 = _3112;
                _3119 = _3113;
                _3120 = _3114;
                _3121 = _3115;
                _3122 = _3116;
                _3123 = _3117;
              }
              bool3 _3125 = (_3123 == 3).xxx;
              bool3 _3128 = (_3123 == 4).xxx;
              if (_3123 == 0) {
                _3212 = 0.0f;
                break;
              }
              float3 _3133 = normalize(_3121);
              float3 _3134 = normalize(_3120);
              float3 _3135 = normalize(_3119);
              float3 _3136 = normalize(float3(_3125.x ? _3121.x : _3118.x, _3125.y ? _3121.y : _3118.y, _3125.z ? _3121.z : _3118.z));
              float3 _3137 = normalize(float3(_3128.x ? _3121.x : _3122.x, _3128.y ? _3121.y : _3122.y, _3128.z ? _3121.z : _3122.z));
              float _3139 = clamp(dot(_3133, _3134), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3143 = sqrt(1.0f - (_3139 * _3139));
              float _3151 = clamp(dot(_3134, _3135), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3155 = sqrt(1.0f - (_3151 * _3151));
              float _3164 = clamp(dot(_3135, _3136), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3168 = sqrt(1.0f - (_3164 * _3164));
              float _3175 = ((cross(_3133, _3134).z * ((_3143 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3139) / _3143))) + (cross(_3134, _3135).z * ((_3155 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3151) / _3155)))) + (cross(_3135, _3136).z * ((_3168 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3164) / _3168)));
              float _3192;
              if (_3123 >= 4) {
                float _3180 = clamp(dot(_3136, _3137), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3184 = sqrt(1.0f - (_3180 * _3180));
                _3192 = _3175 + (cross(_3136, _3137).z * ((_3184 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3180) / _3184)));
              } else {
                _3192 = _3175;
              }
              float _3209;
              if (_3123 == 5) {
                float _3197 = clamp(dot(_3137, _3133), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3201 = sqrt(1.0f - (_3197 * _3197));
                _3209 = _3192 + (cross(_3137, _3133).z * ((_3201 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3197) / _3201)));
              } else {
                _3209 = _3192;
              }
              _3212 = max(_3209, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3215 = (_2290 & 2u) != 0u;
            uint _3219 = asuint(_50_m6[_2277].w);
            uint _3220 = asuint(_50_m6[_2283].w);
            float3 _3221 = _455 - _50_m6[_2268].xyz;
            float3 _3222 = abs(_3221);
            float _3223 = _3222.x;
            float _3224 = _3222.y;
            float _3226 = _3222.z;
            int _3259;
            if ((_3223 > _3224) && (_3223 > _3226)) {
              _3259 = int((_3221.x > 0.0f) ? (_3219 & 1023u) : ((_3219 >> 10u) & 1023u));
            } else {
              int _3251;
              if (_3224 > _3226) {
                _3251 = int((_3221.y > 0.0f) ? ((_3219 >> 20u) & 1023u) : (_3220 & 1023u));
              } else {
                _3251 = int((_3221.z > 0.0f) ? ((_3220 >> 10u) & 1023u) : ((_3220 >> 20u) & 1023u));
              }
              _3259 = _3251;
            }
            int _3262 = _3215 ? int(_50_m6[_2277].w) : ((_3259 == 1023) ? (-1) : _3259);
            uint _3273 = asuint(_54_m11.x) + (uint(_3262) * 96u);
            uint _3275 = (_3273 + 64u) >> 2u;
            uint _3278 = _3275 + 1u;
            uint _3281 = _3275 + 2u;
            uint _3284 = _3275 + 3u;
            float4 _3288 = asfloat(uint4(_58.Load(_3275 * 4 + 0), _58.Load(_3278 * 4 + 0), _58.Load(_3281 * 4 + 0), _58.Load(_3284 * 4 + 0)));
            float3 _3295 = (_455 - ((_3221 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3221, _3221)))) * _3288.x)) + (_606 * (_3288.y * 5.0f));
            uint _3296 = _3273 >> 2u;
            uint _3311 = (_3273 + 16u) >> 2u;
            uint _3326 = (_3273 + 32u) >> 2u;
            uint _3341 = (_3273 + 48u) >> 2u;
            float4 _3361 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3296 * 4 + 0), _58.Load((_3296 + 1u) * 4 + 0), _58.Load((_3296 + 2u) * 4 + 0), _58.Load((_3296 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3311 * 4 + 0), _58.Load((_3311 + 1u) * 4 + 0), _58.Load((_3311 + 2u) * 4 + 0), _58.Load((_3311 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3326 * 4 + 0), _58.Load((_3326 + 1u) * 4 + 0), _58.Load((_3326 + 2u) * 4 + 0), _58.Load((_3326 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3341 * 4 + 0), _58.Load((_3341 + 1u) * 4 + 0), _58.Load((_3341 + 2u) * 4 + 0), _58.Load((_3341 + 3u) * 4 + 0))))), float4(_3295, 1.0f));
            float _3362 = _3361.w;
            float3 _3365 = _3361.xyz / _3362.xxx;
            uint _3367 = (_3273 + 80u) >> 2u;
            float4 _3380 = asfloat(uint4(_58.Load(_3367 * 4 + 0), _58.Load((_3367 + 1u) * 4 + 0), _58.Load((_3367 + 2u) * 4 + 0), _58.Load((_3367 + 3u) * 4 + 0)));
            float2 _3381 = _3365.xy;
            float2 _3383 = _3380.xy;
            float3 _3387 = _3365.xyz;
            bool3 _3388 = bool3(_3387.x <= 0.0f.xxx.x, _3387.y <= 0.0f.xxx.y, _3387.z <= 0.0f.xxx.z);
            bool3 _3389 = bool3(_3387.x >= 1.0f.xxx.x, _3387.y >= 1.0f.xxx.y, _3387.z >= 1.0f.xxx.z);
            float _3392 = _3365.z;
            float2 _3403 = ((_3381 * (_3380.zw - _3383)) + _3383).xy * _54_m10.zw;
            float2 _3405 = floor(_3403 + 0.5f.xx);
            float2 _3406 = _3403 - _3405;
            float _3407 = _3406.x;
            float _3408 = _3407 + 0.5f;
            float _3409 = _3408 * _3408;
            float _3412 = 1.0f - _3407;
            float _3413 = min(_3407, 0.0f);
            float _3416 = _3407 + 1.0f;
            float _3417 = max(_3407, 0.0f);
            float _3428 = _3406.y;
            float _3429 = _3428 + 0.5f;
            float _3430 = _3429 * _3429;
            float _3433 = 1.0f - _3428;
            float _3434 = min(_3428, 0.0f);
            float _3437 = _3428 + 1.0f;
            float _3438 = max(_3428, 0.0f);
            float3 _3450 = float3(0.1599999964237213134765625f * _3412, 0.1599999964237213134765625f * ((_3416 - (_3417 * _3417)) + 1.0f), _3409 * 0.07999999821186065673828125f);
            float3 _3451 = float3(0.1599999964237213134765625f * ((_3409 * 0.5f) - _3407), 0.1599999964237213134765625f * ((_3412 - (_3413 * _3413)) + 1.0f), 0.1599999964237213134765625f * _3416) + _3450;
            float3 _3453 = float3(0.1599999964237213134765625f * _3433, 0.1599999964237213134765625f * ((_3437 - (_3438 * _3438)) + 1.0f), _3430 * 0.07999999821186065673828125f);
            float3 _3454 = float3(0.1599999964237213134765625f * ((_3430 * 0.5f) - _3428), 0.1599999964237213134765625f * ((_3433 - (_3434 * _3434)) + 1.0f), 0.1599999964237213134765625f * _3437) + _3453;
            float3 _3460 = ((_3450 / _3451) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _3462 = ((_3453 / _3454) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _3464 = _3405 * _54_m10.xy;
            float _3465 = _3460.x;
            float _3466 = _3462.x;
            float2 _3468 = _3464 + float2(_3465, _3466);
            float _3469 = _3460.y;
            float2 _3471 = _3464 + float2(_3469, _3466);
            float _3472 = _3460.z;
            float2 _3474 = _3464 + float2(_3472, _3466);
            float _3475 = _3462.y;
            float2 _3477 = _3464 + float2(_3465, _3475);
            float2 _3479 = _3464 + float2(_3469, _3475);
            float2 _3481 = _3464 + float2(_3472, _3475);
            float _3482 = _3462.z;
            float2 _3484 = _3464 + float2(_3465, _3482);
            float2 _3486 = _3464 + float2(_3469, _3482);
            float2 _3488 = _3464 + float2(_3472, _3482);
            float _3489 = _3451.x;
            float _3490 = _3454.x;
            float _3492 = _3451.y;
            float _3494 = _3451.z;
            float _3496 = _3454.y;
            float _3500 = _3454.z;
            float _3566 = ((((((((_3489 * _3490) * _56.SampleCmpLevelZero(_27, float3(_3468, _386).xy, _3392)) + ((_3492 * _3490) * _56.SampleCmpLevelZero(_27, float3(_3471, _386).xy, _3392))) + ((_3494 * _3490) * _56.SampleCmpLevelZero(_27, float3(_3474, _386).xy, _3392))) + ((_3489 * _3496) * _56.SampleCmpLevelZero(_27, float3(_3477, _386).xy, _3392))) + ((_3492 * _3496) * _56.SampleCmpLevelZero(_27, float3(_3479, _386).xy, _3392))) + ((_3494 * _3496) * _56.SampleCmpLevelZero(_27, float3(_3481, _386).xy, _3392))) + ((_3489 * _3500) * _56.SampleCmpLevelZero(_27, float3(_3484, _386).xy, _3392))) + ((_3492 * _3500) * _56.SampleCmpLevelZero(_27, float3(_3486, _386).xy, _3392));
            float4 _3581 = asfloat(uint4(_58.Load(_3275 * 4 + 0), _58.Load(_3278 * 4 + 0), _58.Load(_3281 * 4 + 0), _58.Load(_3284 * 4 + 0)));
            float _3582 = _3581.w;
            float2 _3584 = min(_3381, 1.0f.xx - _3381);
            _3601 = ((_50_m6[_2265].xyz * (((((_750 * _2429.x) + ((1.0f.xxx - _750) * _2429.y)) * _2824) * _50_m6[_2286].z) + (_746 * _3212))) * _2402) * ((_3262 >= 0) ? lerp(1.0f, (any(bool3(_3388.x || _3389.x, _3388.y || _3389.y, _3388.z || _3389.z)) || ((asuint(_3392) & 2147483647u) > 2139095040u)) ? 1.0f : (_3566 + ((_3494 * _3500) * _56.SampleCmpLevelZero(_27, float3(_3488, _386).xy, _3392))), _3215 ? min(_3582, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3581.z - _3362) * 0.25f, min(_3584.x, _3584.y)))) : _3582) : 1.0f);
            break;
          } while (false);
          _4901 = _2225;
          _4902 = _3601 * _2365;
          break;
        }
        float _4899;
        float3 _4900;
        if (_50_m6[_2265].w < 1.5f) {
          float3 _4181 = float3(0.100000001490116119384765625f, _578, 1.0f);
          float _4190 = (0.5f + (0.5f * _50_m6[_2271].y)) - abs(_50_m6[_2271].x);
          float _4191 = _50_m6[_2271].y - _4190;
          float _4198 = abs(max((1.0f - abs(_4190)) - abs(_4191), 0.00048828125f));
          float3 _4202 = normalize(float3(_4190, _4191, (_50_m6[_2271].x >= 0.0f) ? _4198 : (-_4198)));
          float3 _4203 = _50_m6[_2268].xyz - _455;
          float _4204 = dot(_4203, _4203);
          float _4205 = rsqrt(_4204);
          float3 _4206 = _4203 * _4205;
          float _4210 = clamp(_50_m6[_2286].y * _4205, 0.0f, 1.0f);
          int _4215 = int(_50_m6[_2286].w);
          float3 _4216 = _4202 * _50_m6[_2271].z;
          float3 _4217 = _4216 * 0.5f;
          float3 _4218 = _4203 - _4217;
          float3 _4219 = _4203 + _4217;
          bool _4221 = (_2369 & 1u) == 0u;
          bool _4224 = _4221 || ((_2290 & 2u) != 0u);
          bool _4227 = (!_4221) && (_50_m6[_2271].z > 0.0f);
          float _4246;
          float _4247;
          if (_4227) {
            float _4231 = length(_4218);
            float _4232 = length(_4219);
            _4246 = clamp(0.5f * ((dot(_606, _4218) / _4231) + (dot(_606, _4219) / _4232)), 0.0f, 1.0f);
            _4247 = 1.0f / ((((_4231 * _4232) + dot(_4218, _4219)) * 0.5f) + 1.0f);
          } else {
            _4246 = clamp(dot(_606, _4206), 0.0f, 1.0f);
            _4247 = 1.0f;
          }
          float _4269;
          if (_50_m6[_2283].w < 0.0f) {
            float _4263 = _4204 * (_50_m6[_2268].w * _50_m6[_2268].w);
            float _4266 = clamp(1.0f - (_4263 * _4263), 0.0f, 1.0f);
            _4269 = lerp(1.0f / (_4204 + 1.0f), _4247, float(_4227)) * (_4266 * _4266);
          } else {
            float3 _4252 = _4203 * _50_m6[_2268].w;
            _4269 = _4247 * pow(1.0f - clamp(dot(_4252, _4252), 0.0f, 1.0f), _50_m6[_2283].w);
          }
          float _4275 = clamp((dot(_4206, -_4202) - _50_m6[_2271].z) * _50_m6[_2271].w, 0.0f, 1.0f);
          float _4279 = _4269 * lerp(1.0f, _4275 * _4275, float(_4221));
          float _4379;
          if ((!_4227) && (_4215 >= 0)) {
            uint _4285 = uint(_4215);
            float2 _4372;
            [branch] if (_4221) {
              float4 _4362 = mul(_74_m1[_4285], _459);
              _4372 = _74_m0[_4285].xy + (clamp(_4362.xy / _4362.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_4285].zw);
            }
            else {
              float3 _4299 = mul(float4(-_4203, 0.0f), _74_m1[_4285]).xyz;
              float3 _392 = _4299;
              float3 _391 = _4299;
              float3 _390 = abs(_4299);
              uint _4308 = uint(int(_390.y > _390.x));
              uint _4314 = (_390.z > _390[_4308]) ? 2u : _4308;
              uint _4320 = (_4314 * 2u) + uint(_391[_4314] < 0.0f);
              float _4324 = abs(_392[_4320 / 2u]);
              float _4344 = 0.5f - (0.000244140625f / _74_m0[_4285].w);
              _4372 = _74_m0[_4285].xy + (clamp(float2((float(_4320) + ((((_392[uint(_365[_4320].x)] * _366[_4320].x) / _4324) * _4344) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_392[uint(_365[_4320].y)] * _366[_4320].y) / _4324) * _4344)), 0.0f.xx, 1.0f.xx) * _74_m0[_4285].zw);
            }
            _4379 = _4279 * _72.SampleLevel(_24, _4372, 0.0f).x;
          } else {
            _4379 = _4279;
          }
          bool _4380 = _4379 > 0.0f;
          float _4764;
          if (_4380) {
            int _4433;
            if (_4224) {
              _4433 = int(_50_m6[_2274].x);
            } else {
              uint _4388 = asuint(_50_m6[_2271].w);
              uint _4389 = asuint(_50_m6[_2274].x);
              float3 _4390 = _455 - _50_m6[_2268].xyz;
              float3 _4391 = abs(_4390);
              float _4392 = _4391.x;
              float _4393 = _4391.y;
              float _4395 = _4391.z;
              int _4428;
              if ((_4392 > _4393) && (_4392 > _4395)) {
                _4428 = int((_4390.x > 0.0f) ? (_4388 & 1023u) : ((_4388 >> 10u) & 1023u));
              } else {
                int _4420;
                if (_4393 > _4395) {
                  _4420 = int((_4390.y > 0.0f) ? ((_4388 >> 20u) & 1023u) : (_4389 & 1023u));
                } else {
                  _4420 = int((_4390.z > 0.0f) ? ((_4389 >> 10u) & 1023u) : ((_4389 >> 20u) & 1023u));
                }
                _4428 = _4420;
              }
              _4433 = (_4428 == 1023) ? (-1) : _4428;
            }
            uint _4440 = asuint(_54_m11.x) + (uint(_4433) * 96u);
            uint _4442 = (_4440 + 64u) >> 2u;
            uint _4445 = _4442 + 1u;
            uint _4448 = _4442 + 2u;
            uint _4451 = _4442 + 3u;
            float4 _4455 = asfloat(uint4(_58.Load(_4442 * 4 + 0), _58.Load(_4445 * 4 + 0), _58.Load(_4448 * 4 + 0), _58.Load(_4451 * 4 + 0)));
            float3 _4462 = (_455 - ((-_4206) * _4455.x)) + (_606 * (_4455.y * 5.0f));
            uint _4463 = _4440 >> 2u;
            uint _4478 = (_4440 + 16u) >> 2u;
            uint _4493 = (_4440 + 32u) >> 2u;
            uint _4508 = (_4440 + 48u) >> 2u;
            float4 _4528 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_4463 * 4 + 0), _58.Load((_4463 + 1u) * 4 + 0), _58.Load((_4463 + 2u) * 4 + 0), _58.Load((_4463 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4478 * 4 + 0), _58.Load((_4478 + 1u) * 4 + 0), _58.Load((_4478 + 2u) * 4 + 0), _58.Load((_4478 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4493 * 4 + 0), _58.Load((_4493 + 1u) * 4 + 0), _58.Load((_4493 + 2u) * 4 + 0), _58.Load((_4493 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4508 * 4 + 0), _58.Load((_4508 + 1u) * 4 + 0), _58.Load((_4508 + 2u) * 4 + 0), _58.Load((_4508 + 3u) * 4 + 0))))), float4(_4462, 1.0f));
            float _4529 = _4528.w;
            float3 _4532 = _4528.xyz / _4529.xxx;
            uint _4534 = (_4440 + 80u) >> 2u;
            float4 _4547 = asfloat(uint4(_58.Load(_4534 * 4 + 0), _58.Load((_4534 + 1u) * 4 + 0), _58.Load((_4534 + 2u) * 4 + 0), _58.Load((_4534 + 3u) * 4 + 0)));
            float2 _4548 = _4532.xy;
            float2 _4550 = _4547.xy;
            float3 _4554 = _4532.xyz;
            bool3 _4555 = bool3(_4554.x <= 0.0f.xxx.x, _4554.y <= 0.0f.xxx.y, _4554.z <= 0.0f.xxx.z);
            bool3 _4556 = bool3(_4554.x >= 1.0f.xxx.x, _4554.y >= 1.0f.xxx.y, _4554.z >= 1.0f.xxx.z);
            float _4559 = _4532.z;
            float2 _4570 = ((_4548 * (_4547.zw - _4550)) + _4550).xy * _54_m10.zw;
            float2 _4572 = floor(_4570 + 0.5f.xx);
            float2 _4573 = _4570 - _4572;
            float _4574 = _4573.x;
            float _4575 = _4574 + 0.5f;
            float _4576 = _4575 * _4575;
            float _4579 = 1.0f - _4574;
            float _4580 = min(_4574, 0.0f);
            float _4583 = _4574 + 1.0f;
            float _4584 = max(_4574, 0.0f);
            float _4595 = _4573.y;
            float _4596 = _4595 + 0.5f;
            float _4597 = _4596 * _4596;
            float _4600 = 1.0f - _4595;
            float _4601 = min(_4595, 0.0f);
            float _4604 = _4595 + 1.0f;
            float _4605 = max(_4595, 0.0f);
            float3 _4617 = float3(0.1599999964237213134765625f * _4579, 0.1599999964237213134765625f * ((_4583 - (_4584 * _4584)) + 1.0f), _4576 * 0.07999999821186065673828125f);
            float3 _4618 = float3(0.1599999964237213134765625f * ((_4576 * 0.5f) - _4574), 0.1599999964237213134765625f * ((_4579 - (_4580 * _4580)) + 1.0f), 0.1599999964237213134765625f * _4583) + _4617;
            float3 _4620 = float3(0.1599999964237213134765625f * _4600, 0.1599999964237213134765625f * ((_4604 - (_4605 * _4605)) + 1.0f), _4597 * 0.07999999821186065673828125f);
            float3 _4621 = float3(0.1599999964237213134765625f * ((_4597 * 0.5f) - _4595), 0.1599999964237213134765625f * ((_4600 - (_4601 * _4601)) + 1.0f), 0.1599999964237213134765625f * _4604) + _4620;
            float3 _4627 = ((_4617 / _4618) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _4629 = ((_4620 / _4621) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _4631 = _4572 * _54_m10.xy;
            float _4632 = _4627.x;
            float _4633 = _4629.x;
            float2 _4635 = _4631 + float2(_4632, _4633);
            float _4636 = _4627.y;
            float2 _4638 = _4631 + float2(_4636, _4633);
            float _4639 = _4627.z;
            float2 _4641 = _4631 + float2(_4639, _4633);
            float _4642 = _4629.y;
            float2 _4644 = _4631 + float2(_4632, _4642);
            float2 _4646 = _4631 + float2(_4636, _4642);
            float2 _4648 = _4631 + float2(_4639, _4642);
            float _4649 = _4629.z;
            float2 _4651 = _4631 + float2(_4632, _4649);
            float2 _4653 = _4631 + float2(_4636, _4649);
            float2 _4655 = _4631 + float2(_4639, _4649);
            float _4656 = _4618.x;
            float _4657 = _4621.x;
            float _4659 = _4618.y;
            float _4661 = _4618.z;
            float _4663 = _4621.y;
            float _4667 = _4621.z;
            float _4733 = ((((((((_4656 * _4657) * _56.SampleCmpLevelZero(_27, float3(_4635, _386).xy, _4559)) + ((_4659 * _4657) * _56.SampleCmpLevelZero(_27, float3(_4638, _386).xy, _4559))) + ((_4661 * _4657) * _56.SampleCmpLevelZero(_27, float3(_4641, _386).xy, _4559))) + ((_4656 * _4663) * _56.SampleCmpLevelZero(_27, float3(_4644, _386).xy, _4559))) + ((_4659 * _4663) * _56.SampleCmpLevelZero(_27, float3(_4646, _386).xy, _4559))) + ((_4661 * _4663) * _56.SampleCmpLevelZero(_27, float3(_4648, _386).xy, _4559))) + ((_4656 * _4667) * _56.SampleCmpLevelZero(_27, float3(_4651, _386).xy, _4559))) + ((_4659 * _4667) * _56.SampleCmpLevelZero(_27, float3(_4653, _386).xy, _4559));
            float4 _4748 = asfloat(uint4(_58.Load(_4442 * 4 + 0), _58.Load(_4445 * 4 + 0), _58.Load(_4448 * 4 + 0), _58.Load(_4451 * 4 + 0)));
            float _4749 = _4748.w;
            float2 _4751 = min(_4548, 1.0f.xx - _4548);
            _4764 = (_4433 >= 0) ? lerp(1.0f, (any(bool3(_4555.x || _4556.x, _4555.y || _4556.y, _4555.z || _4556.z)) || ((asuint(_4559) & 2147483647u) > 2139095040u)) ? 1.0f : (_4733 + ((_4661 * _4667) * _56.SampleCmpLevelZero(_27, float3(_4655, _386).xy, _4559))), _4224 ? min(_4749, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4748.z - _4529) * 0.25f, min(_4751.x, _4751.y)))) : _4749) : 1.0f;
          } else {
            _4764 = 1.0f;
          }
          float3 _4787;
          float3 _4788;
          if (_4227) {
            float3 _4767 = _4181 * _4181;
            float _4776 = dot(_1228, _4216);
            _4787 = _4767 / clamp(_4767 + (0.5f * clamp(_50_m6[_2271].z * _4205, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4788 = normalize(_4218 + (_4216 * clamp(dot(_4218, (_1228 * _4776) - _4216) / ((_50_m6[_2271].z * _50_m6[_2271].z) - (_4776 * _4776)), 0.0f, 1.0f)));
          } else {
            _4787 = 1.0f.xxx;
            _4788 = _4206;
          }
          float3 _4789 = _4788 + _492;
          float3 _4793 = _4789 * rsqrt(max(6.103515625e-05f, dot(_4789, _4789)));
          float3 _4898;
          if (_4380) {
            float _4796 = clamp(_4246, 0.0f, 1.0f);
            float _4798 = clamp(dot(_606, _4793), 0.0f, 1.0f);
            float _4800 = clamp(dot(_492, _4793), 0.0f, 1.0f);
            float _4801 = clamp(_632, 0.0f, 1.0f);
            float _4802 = _578 * _578;
            float _4812;
            if (_4210 > 0.0f) {
              _4812 = clamp(_4802 + ((_4210 * _4210) / ((_4800 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4812 = _4802;
            }
            float _4813 = _4812 * _4812;
            float _4834 = (((_4798 * _4813) - _4798) * _4798) + 1.0f;
            float _4839 = 1.0f - _4800;
            float _4840 = _4839 * _4839;
            float _4842 = (_4839 * _4840) * _4840;
            float _4866 = 1.0f - _578;
            float _4873 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4866 * (1.04997003078460693359375f + (_4866 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4866))))));
            float _4874 = 1.0f - _4873;
            float3 _4877 = _750 + ((1.0f.xxx - _750) * 0.0476190485060214996337890625f);
            float3 _4897 = ((clamp((min(((_750 * (1.0f - _4842)) + _4842.xxx) * (((_4813 / (_4834 * _4834)) * _4787.y) * (0.5f / (((_4796 * sqrt(((((-_4801) * _4813) + _4801) * _4801) + _4813)) + (_4801 * sqrt(((((-_4796) * _4813) + _4796) * _4796) + _4813))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4877 * (((_64.SampleLevel(_24, (float2(_4801, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_4796, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4873) / _4874)) * _4877) / (1.0f.xxx - (_4877 * _4874)))) * _50_m6[_2286].z, 0.0f.xxx, 1000.0f.xxx) * _4246) + ((_746 * _4787.z) * _4246)) * (((_50_m6[_2265].xyz * _4379) * _4764) * _2365);
            _4898 = _4897;
          } else {
            _4898 = 0.0f.xxx;
          }
          _4899 = _2225;
          _4900 = _4898;
        } else {
          float _4179;
          do {
            if (_2372) {
              _4179 = 1.0f;
              break;
            }
            float _3618 = (0.5f + (0.5f * _50_m6[_2271].y)) - abs(_50_m6[_2271].x);
            float _3619 = _50_m6[_2271].y - _3618;
            float _3626 = abs(max((1.0f - abs(_3618)) - abs(_3619), 0.00048828125f));
            float3 _3630 = normalize(float3(_3618, _3619, (_50_m6[_2271].x >= 0.0f) ? _3626 : (-_3626)));
            float3 _3631 = _50_m6[_2268].xyz - _455;
            float _3632 = dot(_3631, _3631);
            float3 _3634 = _3631 * rsqrt(_3632);
            int _3637 = int(_50_m6[_2286].w);
            float3 _3639 = (_3630 * _50_m6[_2271].z) * 0.5f;
            float3 _3640 = _3631 - _3639;
            float3 _3641 = _3631 + _3639;
            bool _3643 = (_2369 & 1u) == 0u;
            bool _3646 = _3643 || ((_2290 & 2u) != 0u);
            bool _3649 = (!_3643) && (_50_m6[_2271].z > 0.0f);
            float _3661;
            if (_3649) {
              _3661 = 1.0f / ((((length(_3640) * length(_3641)) + dot(_3640, _3641)) * 0.5f) + 1.0f);
            } else {
              _3661 = 1.0f;
            }
            float _3683;
            if (_50_m6[_2283].w < 0.0f) {
              float _3677 = _3632 * (_50_m6[_2268].w * _50_m6[_2268].w);
              float _3680 = clamp(1.0f - (_3677 * _3677), 0.0f, 1.0f);
              _3683 = lerp(1.0f / (_3632 + 1.0f), _3661, float(_3649)) * (_3680 * _3680);
            } else {
              float3 _3666 = _3631 * _50_m6[_2268].w;
              _3683 = _3661 * pow(1.0f - clamp(dot(_3666, _3666), 0.0f, 1.0f), _50_m6[_2283].w);
            }
            float _3689 = clamp((dot(_3634, -_3630) - _50_m6[_2271].z) * _50_m6[_2271].w, 0.0f, 1.0f);
            float _3693 = _3683 * lerp(1.0f, _3689 * _3689, float(_3643));
            float _3793;
            if ((!_3649) && (_3637 >= 0)) {
              uint _3699 = uint(_3637);
              float2 _3786;
              [branch] if (_3643) {
                float4 _3776 = mul(_74_m1[_3699], _459);
                _3786 = _74_m0[_3699].xy + (clamp(_3776.xy / _3776.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_3699].zw);
              }
              else {
                float3 _3713 = mul(float4(-_3631, 0.0f), _74_m1[_3699]).xyz;
                float3 _395 = _3713;
                float3 _394 = _3713;
                float3 _393 = abs(_3713);
                uint _3722 = uint(int(_393.y > _393.x));
                uint _3728 = (_393.z > _393[_3722]) ? 2u : _3722;
                uint _3734 = (_3728 * 2u) + uint(_394[_3728] < 0.0f);
                float _3738 = abs(_395[_3734 / 2u]);
                float _3758 = 0.5f - (0.000244140625f / _74_m0[_3699].w);
                _3786 = _74_m0[_3699].xy + (clamp(float2((float(_3734) + ((((_395[uint(_365[_3734].x)] * _366[_3734].x) / _3738) * _3758) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_395[uint(_365[_3734].y)] * _366[_3734].y) / _3738) * _3758)), 0.0f.xx, 1.0f.xx) * _74_m0[_3699].zw);
              }
              _3793 = _3693 * _72.SampleLevel(_24, _3786, 0.0f).x;
            } else {
              _3793 = _3693;
            }
            float _4178;
            if (_3793 > 0.0f) {
              int _3847;
              if (_3646) {
                _3847 = int(_50_m6[_2274].x);
              } else {
                uint _3802 = asuint(_50_m6[_2271].w);
                uint _3803 = asuint(_50_m6[_2274].x);
                float3 _3804 = _455 - _50_m6[_2268].xyz;
                float3 _3805 = abs(_3804);
                float _3806 = _3805.x;
                float _3807 = _3805.y;
                float _3809 = _3805.z;
                int _3842;
                if ((_3806 > _3807) && (_3806 > _3809)) {
                  _3842 = int((_3804.x > 0.0f) ? (_3802 & 1023u) : ((_3802 >> 10u) & 1023u));
                } else {
                  int _3834;
                  if (_3807 > _3809) {
                    _3834 = int((_3804.y > 0.0f) ? ((_3802 >> 20u) & 1023u) : (_3803 & 1023u));
                  } else {
                    _3834 = int((_3804.z > 0.0f) ? ((_3803 >> 10u) & 1023u) : ((_3803 >> 20u) & 1023u));
                  }
                  _3842 = _3834;
                }
                _3847 = (_3842 == 1023) ? (-1) : _3842;
              }
              uint _3854 = asuint(_54_m11.x) + (uint(_3847) * 96u);
              uint _3856 = (_3854 + 64u) >> 2u;
              uint _3859 = _3856 + 1u;
              uint _3862 = _3856 + 2u;
              uint _3865 = _3856 + 3u;
              float4 _3869 = asfloat(uint4(_58.Load(_3856 * 4 + 0), _58.Load(_3859 * 4 + 0), _58.Load(_3862 * 4 + 0), _58.Load(_3865 * 4 + 0)));
              float3 _3876 = (_455 - ((-_3634) * _3869.x)) + (_606 * (_3869.y * 5.0f));
              uint _3877 = _3854 >> 2u;
              uint _3892 = (_3854 + 16u) >> 2u;
              uint _3907 = (_3854 + 32u) >> 2u;
              uint _3922 = (_3854 + 48u) >> 2u;
              float4 _3942 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3877 * 4 + 0), _58.Load((_3877 + 1u) * 4 + 0), _58.Load((_3877 + 2u) * 4 + 0), _58.Load((_3877 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3892 * 4 + 0), _58.Load((_3892 + 1u) * 4 + 0), _58.Load((_3892 + 2u) * 4 + 0), _58.Load((_3892 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3907 * 4 + 0), _58.Load((_3907 + 1u) * 4 + 0), _58.Load((_3907 + 2u) * 4 + 0), _58.Load((_3907 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3922 * 4 + 0), _58.Load((_3922 + 1u) * 4 + 0), _58.Load((_3922 + 2u) * 4 + 0), _58.Load((_3922 + 3u) * 4 + 0))))), float4(_3876, 1.0f));
              float _3943 = _3942.w;
              float3 _3946 = _3942.xyz / _3943.xxx;
              uint _3948 = (_3854 + 80u) >> 2u;
              float4 _3961 = asfloat(uint4(_58.Load(_3948 * 4 + 0), _58.Load((_3948 + 1u) * 4 + 0), _58.Load((_3948 + 2u) * 4 + 0), _58.Load((_3948 + 3u) * 4 + 0)));
              float2 _3962 = _3946.xy;
              float2 _3964 = _3961.xy;
              float3 _3968 = _3946.xyz;
              bool3 _3969 = bool3(_3968.x <= 0.0f.xxx.x, _3968.y <= 0.0f.xxx.y, _3968.z <= 0.0f.xxx.z);
              bool3 _3970 = bool3(_3968.x >= 1.0f.xxx.x, _3968.y >= 1.0f.xxx.y, _3968.z >= 1.0f.xxx.z);
              float _3973 = _3946.z;
              float2 _3984 = ((_3962 * (_3961.zw - _3964)) + _3964).xy * _54_m10.zw;
              float2 _3986 = floor(_3984 + 0.5f.xx);
              float2 _3987 = _3984 - _3986;
              float _3988 = _3987.x;
              float _3989 = _3988 + 0.5f;
              float _3990 = _3989 * _3989;
              float _3993 = 1.0f - _3988;
              float _3994 = min(_3988, 0.0f);
              float _3997 = _3988 + 1.0f;
              float _3998 = max(_3988, 0.0f);
              float _4009 = _3987.y;
              float _4010 = _4009 + 0.5f;
              float _4011 = _4010 * _4010;
              float _4014 = 1.0f - _4009;
              float _4015 = min(_4009, 0.0f);
              float _4018 = _4009 + 1.0f;
              float _4019 = max(_4009, 0.0f);
              float3 _4031 = float3(0.1599999964237213134765625f * _3993, 0.1599999964237213134765625f * ((_3997 - (_3998 * _3998)) + 1.0f), _3990 * 0.07999999821186065673828125f);
              float3 _4032 = float3(0.1599999964237213134765625f * ((_3990 * 0.5f) - _3988), 0.1599999964237213134765625f * ((_3993 - (_3994 * _3994)) + 1.0f), 0.1599999964237213134765625f * _3997) + _4031;
              float3 _4034 = float3(0.1599999964237213134765625f * _4014, 0.1599999964237213134765625f * ((_4018 - (_4019 * _4019)) + 1.0f), _4011 * 0.07999999821186065673828125f);
              float3 _4035 = float3(0.1599999964237213134765625f * ((_4011 * 0.5f) - _4009), 0.1599999964237213134765625f * ((_4014 - (_4015 * _4015)) + 1.0f), 0.1599999964237213134765625f * _4018) + _4034;
              float3 _4041 = ((_4031 / _4032) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
              float3 _4043 = ((_4034 / _4035) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
              float2 _4045 = _3986 * _54_m10.xy;
              float _4046 = _4041.x;
              float _4047 = _4043.x;
              float2 _4049 = _4045 + float2(_4046, _4047);
              float _4050 = _4041.y;
              float2 _4052 = _4045 + float2(_4050, _4047);
              float _4053 = _4041.z;
              float2 _4055 = _4045 + float2(_4053, _4047);
              float _4056 = _4043.y;
              float2 _4058 = _4045 + float2(_4046, _4056);
              float2 _4060 = _4045 + float2(_4050, _4056);
              float2 _4062 = _4045 + float2(_4053, _4056);
              float _4063 = _4043.z;
              float2 _4065 = _4045 + float2(_4046, _4063);
              float2 _4067 = _4045 + float2(_4050, _4063);
              float2 _4069 = _4045 + float2(_4053, _4063);
              float _4070 = _4032.x;
              float _4071 = _4035.x;
              float _4073 = _4032.y;
              float _4075 = _4032.z;
              float _4077 = _4035.y;
              float _4081 = _4035.z;
              float _4147 = ((((((((_4070 * _4071) * _56.SampleCmpLevelZero(_27, float3(_4049, _386).xy, _3973)) + ((_4073 * _4071) * _56.SampleCmpLevelZero(_27, float3(_4052, _386).xy, _3973))) + ((_4075 * _4071) * _56.SampleCmpLevelZero(_27, float3(_4055, _386).xy, _3973))) + ((_4070 * _4077) * _56.SampleCmpLevelZero(_27, float3(_4058, _386).xy, _3973))) + ((_4073 * _4077) * _56.SampleCmpLevelZero(_27, float3(_4060, _386).xy, _3973))) + ((_4075 * _4077) * _56.SampleCmpLevelZero(_27, float3(_4062, _386).xy, _3973))) + ((_4070 * _4081) * _56.SampleCmpLevelZero(_27, float3(_4065, _386).xy, _3973))) + ((_4073 * _4081) * _56.SampleCmpLevelZero(_27, float3(_4067, _386).xy, _3973));
              float4 _4162 = asfloat(uint4(_58.Load(_3856 * 4 + 0), _58.Load(_3859 * 4 + 0), _58.Load(_3862 * 4 + 0), _58.Load(_3865 * 4 + 0)));
              float _4163 = _4162.w;
              float2 _4165 = min(_3962, 1.0f.xx - _3962);
              _4178 = (_3847 >= 0) ? lerp(1.0f, (any(bool3(_3969.x || _3970.x, _3969.y || _3970.y, _3969.z || _3970.z)) || ((asuint(_3973) & 2147483647u) > 2139095040u)) ? 1.0f : (_4147 + ((_4075 * _4081) * _56.SampleCmpLevelZero(_27, float3(_4069, _386).xy, _3973))), _3646 ? min(_4163, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4162.z - _3943) * 0.25f, min(_4165.x, _4165.y)))) : _4163) : 1.0f;
            } else {
              _4178 = 1.0f;
            }
            _4179 = _4178;
            break;
          } while (false);
          _4899 = _2225 * _4179;
          _4900 = 0.0f.xxx;
        }
        _4901 = _4899;
        _4902 = _4900;
        break;
      } while (false);
      _2250 = _4901;
      _2253 = _2252 + _4902;
    }
    _2222 = _2221 + _2252;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xAB136FCA:
  float3 _4912 = ((((float3(_1208, _1213, _1218) * _746) * lerp(1.0f, _548.z, _45_m4)) * _18_m22.x) + ((((_1501 * _18_m23.z) * _18_m22.y) * ((_750 * _764.x) + (clamp(50.0f * _750.y, 0.0f, 1.0f) * _764.y).xxx)) * 1.0f)) + lerp((_2196.xyz + (_2221 * _2224)).xyz, (_692.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _573) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  */
  float3 _4912 = ((((float3(_1208, _1213, _1218) * (_746 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _548.z, _45_m4)) * _18_m22.x) + (((((_1501 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_750 * _764.x) + (clamp(50.0f * _750.y, 0.0f, 1.0f) * _764.y).xxx)) * 1.0f)) + lerp((_2196.xyz + ((_2221 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2224)).xyz, (_692.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _573) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  // RenoDX code end
  float4 _4913 = float4(_4912.x, _4912.y, _4912.z, _387.w);
  _4913.w = _573;
  float _4930 = _455.y * _18_m46.w;
  float _4935 = max(0.00999999977648258209228515625f, _4930 + _18_m47.w);
  float3 _4949 = exp(_18_m45.xyz * ((-max(0.0f, (_493 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4935)) / _4935) * exp(_4930 + _18_m48.w))));
  float _4952 = dot(_633, _18_m44.xyz);
  float _4958 = _18_m45.w * _18_m45.w;
  float _4962 = (1.0f + _4958) - ((2.0f * _18_m45.w) * _4952);
  float3 _5292;
  float _5293;
  if (_18_m55.z > 0.0f) {
    uint3 _5120 = (uint3(int3(int(_800.x), int(_800.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5121 = _5120.y;
    uint _5122 = _5120.z;
    uint _5125 = _5120.x + (_5121 * _5122);
    uint _5127 = _5121 + (_5122 * _5125);
    uint _5129 = _5122 + (_5125 * _5127);
    uint _5131 = _5125 + (_5127 * _5129);
    float _5153 = dot(_633, -_16_m0[2].xyz);
    float3 _5163 = _455 - _16_m11.xyz;
    float _5165 = (_18_m55.w * ((_5153 > 5.9604644775390625e-08f) ? (1.0f / _5153) : 0.0f)) * (1.0f / _493);
    float _5166 = _5163.y;
    float _5167 = _5165 * _5166;
    float _5169 = _16_m11.y + _5167;
    float _5170 = _5166 - _5167;
    float _5172 = (1.0f - _5165) * _493;
    float _5186 = max(-127.0f, _18_m49.z * _5170);
    float _5210 = max(-127.0f, _18_m52.x * _5170);
    float _5221 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5169 - _18_m49.x)))) * ((abs(_5186) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5186)) / _5186) : (0.693147182464599609375f - (0.2402265071868896484375f * _5186)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5169 - _18_m52.z)))) * ((abs(_5210) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5210)) / _5210) : (0.693147182464599609375f - (0.2402265071868896484375f * _5210))));
    float _5243 = clamp((_493 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5246 = clamp((max(clamp(exp2(-(_5221 * _5172)), 0.0f, 1.0f), _18_m51.w) + clamp((_493 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5243, 0.0f, 1.0f);
    float4 _5286 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _71.SampleLevel(_24, float3((_1237 + ((((float3(uint3(_5131, _5127 + (_5129 * _5131), _388) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_801 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_801 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5292 = _5286.xyz + (((_18_m51.xyz * (1.0f - _5246)) + (((_18_m54.xyz * pow(clamp(dot(_492, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5221 * max(_5172 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5243))) * _5286.w);
    _5293 = _5286.w * _5246;
  } else {
    float3 _4992 = _455 - _16_m11.xyz;
    float _4994 = _4992.y;
    float _5008 = max(-127.0f, _18_m49.z * _4994);
    float _5032 = max(-127.0f, _18_m52.x * _4994);
    float _5043 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5008) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5008)) / _5008) : (0.693147182464599609375f - (0.2402265071868896484375f * _5008)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5032) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5032)) / _5032) : (0.693147182464599609375f - (0.2402265071868896484375f * _5032))));
    float _5065 = clamp((_493 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5068 = clamp((max(clamp(exp2(-(_5043 * _493)), 0.0f, 1.0f), _18_m51.w) + clamp((_493 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5065, 0.0f, 1.0f);
    _5292 = (_18_m51.xyz * (1.0f - _5068)) + (((_18_m54.xyz * pow(clamp(dot(_492, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5043 * max(_493 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5065));
    _5293 = _5068;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xAB136FCA:
  float3 _5299 = ((_4913.xyz * (_4949 * _5293)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4952 * _4952)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4958) / max((12.56637096405029296875f * _4962) * sqrt(_4962), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4949)) * _5293) + _5292)).xyz;
  */
  float3 _5299 = ((_4913.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4949 * _5293)) : (_4949 * _5293))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4952 * _4952)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4958) / max((12.56637096405029296875f * _4962) * sqrt(_4962), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4949)) * _5293 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5292 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5309 = lerp(dot(_5299, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5299, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5319 = min(lerp(((sqrt(sqrt(abs(_718 * 0.5f))) * float2(int2(sign(_718)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _705.xx), 1.0f.xx);
  float4 _5320 = float4(_5319.x, _5319.y, _387.z, _387.w);
  _5320.z = float(clamp(max(dot(_5309.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _573, _573) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5320.w = lerp(0.0f, 0.699999988079071044921875f, _705);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xAB136FCA:
  _13 = float4(_5309.x, _5309.y, _5309.z, _4913.w);
  */
  float3 renodx_output_color = float3(_5309.x, _5309.y, _5309.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4913.w);
  // RenoDX code end
  _14 = _5320;
  // RenoDX code start: preserve the existing glass controls.
  if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
  // RenoDX code end
}
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  gl_FragCoord = stage_input.gl_FragCoord;
  gl_FragCoord.w = 1.0 / gl_FragCoord.w;
  gl_FrontFacing = stage_input.gl_FrontFacing;
  _4 = stage_input._4;
  _5 = stage_input._5;
  _6 = stage_input._6;
  _7 = stage_input._7;
  _8 = stage_input._8;
  _9 = stage_input._9;
  _10 = stage_input._10;
  _11 = stage_input._11;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._13 = _13;
  stage_output._14 = _14;
  return stage_output;
}

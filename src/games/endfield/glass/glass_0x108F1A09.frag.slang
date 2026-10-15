#include "../shared.h"

// Ported from the native 0x108F1A09 Vulkan dump.
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

static float _388;
static float4 _389;
static uint _390;

static const float4 _366[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _367[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _368[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(53, 0)]] ByteAddressBuffer _35 : register(t53, space0);
[[vk::binding(6, 1)]] cbuffer _44_45 : register(b6, space1) {
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
[[vk::binding(23, 0)]] Texture2D<float4> _30 : register(t23, space0);
[[vk::binding(24, 0)]] Texture2D<float4> _31 : register(t24, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _33 : register(t25, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _36 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _37 : register(s2, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _38 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _39 : register(s1, space1);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22, space0);
[[vk::binding(3, 1)]] Texture2D<float4> _41 : register(t3, space1);
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
  float _416 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
  float _425 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_45_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _427 = abs(_425);
  if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _427 : (-_427)), (1.0f - _416) - _425) < 0.0f) {
    discard;
  }
  float2 _444 = gl_FragCoord.xy * _18_m0.zw;
  float2 _447 = (_444 * 2.0f) - 1.0f.xx;
  float4 _450 = float4(_447, gl_FragCoord.z, 1.0f);
  _450.y = -_447.y;
  float4 _453 = mul(_16_m6, _450);
  float3 _457 = _453.xyz / _453.w.xxx;
  float4 _461 = float4(_457, 1.0f);
  float _464 = abs(mul(_16_m0, _461).z);
  float _468 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _490;
  do {
    if (_18_m4.w == 0.0f) {
      _490 = _16_m11.xyz - _457;
      break;
    } else {
      _490 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _491 = dot(_490, _490);
  float _493 = rsqrt(max(_491, 9.9999999392252902907785028219223e-09f));
  float3 _494 = _490 * _493;
  float _495 = _491 * _493;
  float4 _528 = _36.SampleBias(_37, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
  float _530 = _528.w;
  float4 _533 = _38.SampleBias(_39, (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw, _45_m13 + _18_m16);
  float2 _536 = (_533.xy * 2.0f.xx) - 1.0f.xx;
  float2 _537 = abs(_536);
  bool2 _538 = bool2(_537.x < 0.01200000010430812835693359375f.xx.x, _537.y < 0.01200000010430812835693359375f.xx.y);
  float2 _539 = float2(_538.x ? 0.0f.xx.x : _536.x, _538.y ? 0.0f.xx.y : _536.y);
  float2 _540 = _539 * _45_m0;
  float _549 = _533.w;
  float3 _561 = lerp(clamp((_528.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx);
  float _567 = lerp(_530, _549, _45_m6) * _45_m32.w;
  float _573 = lerp(_567, _567 * _8.x, _45_m56);
  float _578 = lerp(_45_m2, _45_m3, _533.z);
  float _588 = lerp(_530, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
  float3 _600 = ((_7.xyz * _540.x) + ((cross(_6, float4(_7.xyz, _468).xyz) * _468) * _540.y)) + (_6 * (max(0.00048828125f, sqrt(clamp(1.0f - dot(_539, _539), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _604 = _600 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_600, _600)));
  float _630 = dot(_604, _494);
  float3 _631 = -_494;
  float4 _651 = _41.SampleBias(_42, (_4 * _45_m55.xy) + _45_m55.zw, _18_m16);
  float2 _659 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_631, _604, _45_m48) * lerp(_45_m49, _45_m49 / max(gl_FragCoord.z * _630, 0.5f), _45_m50)).xy, ((_651 * 2.0f) - 1.0f.xxxx).xy * _45_m47, _45_m46.xx).xy;
  float2 _660 = _444 + _659;
  float2 _662 = _444 + (_659 * 0.25f);
  float4 _690 = _40.SampleBias(_43, lerp(lerp(_444, _662, step(_464, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _662, _18_m16).x) + _18_m2.w)).xx), _660, step(_464, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _660, _18_m16).x) + _18_m2.w)).xx), _18_m16);
  float _703 = clamp(float(int(sign(_416 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _716 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _716.y = -_716.y;
  float _742 = 0.07999999821186065673828125f * _45_m1;
  float3 _743 = _561 * _588;
  float3 _744 = _561 - _743;
  float3 _748 = (_742 - (_742 * _588)).xxx + _743;
  float4 _751 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _578) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _752 = _751.x;
  float2 _762 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_752 * _752, exp2((-9.27999973297119140625f) * max(0.0f, _630))) * _752) + _751.y)) + _751.zw;
  uint2 _798;
  float _799;
  if (_18_m24.y == 1.0f) {
    float4 _779 = mul(_18_m138, _461);
    float4 _782 = _779;
    _782.y = -_779.y;
    float4 _785 = _782 * (1.0f / _779.w);
    _798 = uint2(clamp(((_785.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _799 = 1.0f / ((_18_m2.z * _785.z) + _18_m2.w);
  } else {
    _798 = uint2(gl_FragCoord.xy);
    _799 = _464;
  }
  float3 _801 = _457 + (_604 * 0.25f);
  float3 _811 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _820 = _801 - (_18_m108.xyz + (_811 * (-_18_m110.w)));
  float _835 = max(min(max((max(abs(_820.x), abs(_820.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_820.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1137;
  float4 _1138;
  float4 _1139;
  float _1140;
  float _1141;
  if ((_18_m108.w != 0.0f) && (_835 < 1.0f)) {
    float3 _848 = _801 - (_18_m108.xyz + (_811 * (-_18_m110.y)));
    float _862 = max(clamp((max(abs(_848.x), abs(_848.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_848.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _938;
    float4 _939;
    float4 _940;
    float4 _941;
    if (_862 < 1.0f) {
      float3 _871 = ((_801 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _873 = _871 - floor(_871);
      float4 _877 = _65.SampleLevel(_25, _873, 0.0f);
      float _878 = 1.0f - _862;
      float _882 = _18_m109.y * 0.5f;
      float _887 = _873.x;
      float _888 = clamp(_873.y, _882, 1.0f - _882) * 0.3333333432674407958984375f;
      float _889 = _873.z;
      float4 _892 = _66.SampleLevel(_24, float3(_887, _888, _889), 0.0f);
      float _908 = _877.x;
      float _918 = _877.y;
      float _928 = _877.z;
      _938 = _835 + (_892.w * _878);
      _939 = float4(((_66.SampleLevel(_24, float3(_887, _888 + 0.666666686534881591796875f, _889), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _928, _928) * _878;
      _940 = float4(((_66.SampleLevel(_24, float3(_887, _888 + 0.3333333432674407958984375f, _889), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _918, _918) * _878;
      _941 = float4(((_892.xyz * 4.0f) - 2.0f.xxx) * _908, _908) * _878;
    } else {
      _938 = _835;
      _939 = 0.0f.xxxx;
      _940 = 0.0f.xxxx;
      _941 = 0.0f.xxxx;
    }
    float3 _947 = _801 - (_18_m108.xyz + (_811 * (-_18_m110.z)));
    float _961 = max(clamp((max(abs(_947.x), abs(_947.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_947.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1041;
    float4 _1042;
    float4 _1043;
    float4 _1044;
    if (_961 < 1.0f) {
      float3 _970 = ((_801 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _972 = _970 - floor(_970);
      float4 _976 = _67.SampleLevel(_25, _972, 0.0f);
      float _978 = _862 * (1.0f - _961);
      float _982 = _18_m109.y * 0.5f;
      float _987 = _972.x;
      float _988 = clamp(_972.y, _982, 1.0f - _982) * 0.3333333432674407958984375f;
      float _989 = _972.z;
      float4 _992 = _68.SampleLevel(_24, float3(_987, _988, _989), 0.0f);
      float _1008 = _976.x;
      float _1019 = _976.y;
      float _1030 = _976.z;
      _1041 = _938 + (_992.w * _978);
      _1042 = _939 + (float4(((_68.SampleLevel(_24, float3(_987, _988 + 0.666666686534881591796875f, _989), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1030, _1030) * _978);
      _1043 = _940 + (float4(((_68.SampleLevel(_24, float3(_987, _988 + 0.3333333432674407958984375f, _989), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1019, _1019) * _978);
      _1044 = _941 + (float4(((_992.xyz * 4.0f) - 2.0f.xxx) * _1008, _1008) * _978);
    } else {
      _1041 = _938;
      _1042 = _939;
      _1043 = _940;
      _1044 = _941;
    }
    float4 _1127;
    float4 _1128;
    float4 _1129;
    float _1130;
    if (_961 > 0.0f) {
      float3 _1053 = ((_801 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1056 = _18_m109.xyz * 0.5f;
      float3 _1058 = clamp(_1053 - floor(_1053), _1056, 1.0f.xxx - _1056);
      float4 _1062 = _69.SampleLevel(_25, _1058, 0.0f);
      float _1064 = _961 * (1.0f - _835);
      float _1068 = _18_m109.y * 0.5f;
      float _1073 = _1058.x;
      float _1074 = clamp(_1058.y, _1068, 1.0f - _1068) * 0.3333333432674407958984375f;
      float _1075 = _1058.z;
      float4 _1078 = _70.SampleLevel(_24, float3(_1073, _1074, _1075), 0.0f);
      float _1094 = _1062.x;
      float _1105 = _1062.y;
      float _1116 = _1062.z;
      _1127 = _1042 + (float4(((_70.SampleLevel(_24, float3(_1073, _1074 + 0.666666686534881591796875f, _1075), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1116, _1116) * _1064);
      _1128 = _1043 + (float4(((_70.SampleLevel(_24, float3(_1073, _1074 + 0.3333333432674407958984375f, _1075), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1105, _1105) * _1064);
      _1129 = _1044 + (float4(((_1078.xyz * 4.0f) - 2.0f.xxx) * _1094, _1094) * _1064);
      _1130 = _1041 + (_1078.w * _1064);
    } else {
      _1127 = _1042;
      _1128 = _1043;
      _1129 = _1044;
      _1130 = _1041;
    }
    float _1133 = clamp((_1130 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1137 = _1127;
    _1138 = _1128;
    _1139 = _1129;
    _1140 = _1133 - _835;
    _1141 = (_1133 + _835) * 0.5f;
  } else {
    _1137 = 0.0f.xxxx;
    _1138 = 0.0f.xxxx;
    _1139 = 0.0f.xxxx;
    _1140 = 0.0f;
    _1141 = 1.0f;
  }
  float4 _1161 = _1139 + float4(_18_m111.x * _1141, (_18_m111.y * _1141) + ((_18_m111.w * _1140) * 0.5f), _18_m111.z * _1141, (_18_m111.w * _1141) + ((_18_m111.y * _1140) * 0.375f));
  float4 _1181 = _1138 + float4(_18_m112.x * _1141, (_18_m112.y * _1141) + ((_18_m112.w * _1140) * 0.5f), _18_m112.z * _1141, (_18_m112.w * _1141) + ((_18_m112.y * _1140) * 0.375f));
  float4 _1201 = _1137 + float4(_18_m113.x * _1141, (_18_m113.y * _1141) + ((_18_m113.w * _1140) * 0.5f), _18_m113.z * _1141, (_18_m113.w * _1141) + ((_18_m113.y * _1140) * 0.375f));
  float _1206 = max(0.0f, dot(_1161.xyz, _604) + _1161.w);
  float _1211 = max(0.0f, dot(_1181.xyz, _604) + _1181.w);
  float _1216 = max(0.0f, dot(_1201.xyz, _604) + _1201.w);
  float3 _1226 = reflect(_631, _604);
  float _1234 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_578, 0.001000000047497451305389404296875f))));
  float2 _1235 = float2(_798);
  float2 _1239 = floor(_1235 * _48_m0.w);
  float _1256 = floor(_799 - _48_m2.y);
  float _1260 = clamp(_1256, 0.0f, _48_m1.x - 1.0f);
  uint _1270 = (_1256 <= _1260) ? (_35.Load(uint(_18_m21.z + int(_1239.x + (_1239.y * _48_m0.x))) * 4 + 0) & _35.Load(uint(_18_m21.w + int(_1260)) * 4 + 0)) : 0u;
  float _1273 = dot(float4(_1206, _1211, _1216, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1275;
  float _1278;
  uint _1280;
  _1275 = 0.0f.xxx;
  _1278 = 1.0f;
  _1280 = _1270;
  uint _1281;
  float3 _1276;
  float _1279;
  bool _1283;
  [loop] for (;;) {
    bool _1282 = _1280 != 0u;
    _1283 = _1278 > 0.00999999977648258209228515625f;
    if (_1282 && _1283) {
      uint _1287 = firstbitlow(_1280);
      _1281 = _1280 ^ (1u << (_1287 & 31u));
      float3 _1307 = float3(dot(_48_m4[_1287]._m2, _461), dot(_48_m4[_1287]._m3, _461), dot(_48_m4[_1287]._m4, _461));
      float3 _1308 = abs(_1307);
      if (all(bool3(_1308.x <= _48_m4[_1287]._m1.xyz.x, _1308.y <= _48_m4[_1287]._m1.xyz.y, _1308.z <= _48_m4[_1287]._m1.xyz.z))) {
        float3 _1317 = _48_m4[_1287]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1319 = _1308 * 0.100000001490116119384765625f;
        float3 _1320 = _1319 * _1319;
        float3 _1323 = (_48_m4[_1287]._m1.xyz - _1308) * _48_m4[_1287]._m5.xyz;
        float3 _1371;
        [branch] if (_48_m4[_1287]._m6.x == 1.0f) {
          float3 _1356 = float3(dot(_48_m4[_1287]._m2.xyz, _1226), dot(_48_m4[_1287]._m3.xyz, _1226), dot(_48_m4[_1287]._m4.xyz, _1226));
          float3 _1358 = (_48_m4[_1287]._m1.xyz - _1307) / _1356;
          float3 _1361 = ((-_48_m4[_1287]._m1.xyz) - _1307) / _1356;
          bool3 _1362 = bool3(_1356.x > 0.0f.xxx.x, _1356.y > 0.0f.xxx.y, _1356.z > 0.0f.xxx.z);
          float3 _1363 = float3(_1362.x ? _1358.x : _1361.x, _1362.y ? _1358.y : _1361.y, _1362.z ? _1358.z : _1361.z);
          _1371 = _1307 + (_1356 * min(min(_1363.x, _1363.y), _1363.z));
        }
        else {
          _1371 = _1226;
        }
        float3 _1372 = normalize(_1371);
        float3 _1375 = float3(int3(sign(_1372)));
        float3 _1378 = _1372 / dot(_1372, _1375).xxx;
        float3 _1392;
        if (_1378.z < 0.0f) {
          float3 _1383 = abs(_1378);
          float2 _1390 = _1375.xy * float2(1.0f - _1383.y, 1.0f - _1383.x);
          _1392 = float3(_1390.x, _1390.y, _1378.z);
        } else {
          _1392 = _1378;
        }
        float _1417 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1287]._m0, float4(_604, 1.0f))));
        float _1430 = clamp((min(_1323.x, min(_1323.y, _1323.z)) * _48_m4[_1287]._m6.y) + ((((((_1317 * _1317).x - ((_1320.x + _1320.y) + _1320.z)) * _48_m4[_1287]._m5.x) * _48_m4[_1287]._m5.x) * (1.0f - _48_m4[_1287]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1287]._m6.w;
        _1276 = _1275 + ((((_33.SampleLevel(_26, float3((((_1392.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1287]._m1.w), _1234).xyz * _48_m4[_1287]._m5.w) * ((((((clamp(abs(_1273 / _1417), 0.0f, 1.0f) * 2.0f) + _1273) / (2.0f + _1417)) - 1.0f) * _18_m23.w) + 1.0f)) * _1430) * _1278);
        _1279 = _1278 * (1.0f - _1430);
      } else {
        _1276 = _1275;
        _1279 = _1278;
      }
      _1275 = _1276;
      _1278 = _1279;
      _1280 = _1281;
      continue;
    } else {
      break;
    }
  }
  float3 _1499;
  if (_1283) {
    float3 _1438 = normalize(_1226);
    float3 _1441 = float3(int3(sign(_1438)));
    float3 _1444 = _1438 / dot(_1438, _1441).xxx;
    float3 _1458;
    if (_1444.z < 0.0f) {
      float3 _1449 = abs(_1444);
      float2 _1456 = _1441.xy * float2(1.0f - _1449.y, 1.0f - _1449.x);
      _1458 = float3(_1456.x, _1456.y, _1444.z);
    } else {
      _1458 = _1444;
    }
    float _1485 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_604, 1.0f))));
    _1499 = _1275 + ((_33.SampleLevel(_26, float3((((_1458.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1234).xyz * ((((((clamp(abs(_1273 / _1485), 0.0f, 1.0f) * 2.0f) + _1273) / (2.0f + _1485)) - 1.0f) * _18_m23.w) + 1.0f)) * _1278);
  } else {
    _1499 = _1275;
  }
  float3 _1505 = (_1499 * _18_m23.z) * _18_m22.y;
  float3 _1526;
  [branch] if (_18_m23.y != 0.0f) {
    float4 _1520 = _31.SampleBias(_24, _444, _18_m16);
    float _1521 = _1520.x;
    _1526 = (_30.SampleBias(_24, _444, _18_m16).xyz * _1521) + (_1505 * (1.0f - _1521));
  }
  else {
    _1526 = _1505;
  }
  float4 _2215;
  do {
    [branch] if (_52_m4 == 0) {
      _2215 = 0.0f.xxxx;
      break;
    }
    float2 _2070;
    do {
      if (_54_m7.w >= 0.9900000095367431640625f) {
        _2070 = float2(_54_m7.z, 1.0f);
        break;
      }
      int _1549 = int(_54_m7.x);
      bool3 _1551 = (_1549 == 2).xxx;
      float3 _1559 = _457 - float3(_1551.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1551.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1551.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
      float _1570 = max(clamp((_54_m6.w - dot(_1559, _1559)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
      float _1787;
      bool _1788;
      if (_1570 > 0.0f) {
        float _1785;
        bool _1786;
        if (_1549 > 0) {
          float3 _1577 = _457 - _54_m1[0].xyz;
          float3 _1581 = _457 - _54_m1[1].xyz;
          float3 _1585 = _457 - _54_m1[2].xyz;
          float3 _1589 = _457 - _54_m1[3].xyz;
          float4 _1594 = float4(dot(_1577, _1577), dot(_1581, _1581), dot(_1585, _1585), dot(_1589, _1589));
          float4 _1603 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
          float4 _1605 = float4(bool4(_1594.x < _1603.x, _1594.y < _1603.y, _1594.z < _1603.z, _1594.w < _1603.w));
          float3 _1609 = clamp(_1605.yzw - _1605.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1613 = clamp(4.0f - dot(float4(_1605.x, _1609.x, _1609.y, _1609.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1615 = clamp(_1613 + 1.0f, 0.0f, 3.0f);
          uint _1616 = uint(_1613);
          uint _1624 = uint(_1615);
          float _1630 = dot(_1594, _366[_1624]) / _54_m1[_1624].w;
          float _1647;
          if (((_1615 > _1613) && (_1630 >= 0.0f)) && (_1630 <= 1.0f)) {
            _1647 = _1613 + step(frac(52.98291778564453125f * frac(dot(_1235 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1594, _366[_1616]) / _54_m1[_1616].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1647 = _1613;
          }
          float _1648 = clamp(_1647, 0.0f, 4.0f);
          float4 _1652 = mul(_54_m0[uint(_1648)], _461);
          float _1655 = _1652.z;
          float4 _1656 = float4(_1652.xy, _1655, _1648);
          float3 _1657 = _1656.xyz;
          bool3 _1658 = bool3(_1657.x <= 0.0f.xxx.x, _1657.y <= 0.0f.xxx.y, _1657.z <= 0.0f.xxx.z);
          bool3 _1659 = bool3(_1657.x >= 1.0f.xxx.x, _1657.y >= 1.0f.xxx.y, _1657.z >= 1.0f.xxx.z);
          bool _1665 = any(bool3(_1658.x || _1659.x, _1658.y || _1659.y, _1658.z || _1659.z)) || ((asuint(_1655) & 2147483647u) > 2139095040u);
          int _1666 = int(_1648);
          float2 _1683 = float4(_54_m3[_1666].xy + (_1656.xy * _54_m3[_1666].zw), _1655, _1648).xy * _54_m4.zw;
          float2 _1685 = floor(_1683 + 0.5f.xx);
          float2 _1686 = _1683 - _1685;
          float _1687 = _1686.x;
          float _1688 = _1687 + 0.5f;
          float _1690 = (_1688 * _1688) * 0.5f;
          float _1693 = min(_1687, 0.0f);
          float _1697 = max(_1687, 0.0f);
          float4 _1701 = float4(_1690 - _1687, (1.0f - _1687) - (_1693 * _1693), (_1687 + 1.0f) - (_1697 * _1697), _1690) * 0.44444000720977783203125f;
          float _1702 = _1686.y;
          float _1703 = _1702 + 0.5f;
          float _1705 = (_1703 * _1703) * 0.5f;
          float _1708 = min(_1702, 0.0f);
          float _1712 = max(_1702, 0.0f);
          float4 _1716 = float4(_1705 - _1702, (1.0f - _1702) - (_1708 * _1708), (_1702 + 1.0f) - (_1712 * _1712), _1705) * 0.44444000720977783203125f;
          float2 _1718 = _1701.yw;
          float2 _1719 = _1701.xz + _1718;
          float2 _1721 = _1716.yw;
          float2 _1722 = _1716.xz + _1721;
          float2 _1728 = ((_1718 / _1719) + float2(-1.5f, 0.5f)) * _54_m4.xx;
          float2 _1730 = ((_1721 / _1722) + float2(-1.5f, 0.5f)) * _54_m4.yy;
          float2 _1732 = _1685 * _54_m4.xy;
          float _1733 = _1728.x;
          float _1734 = _1730.x;
          float _1737 = _1728.y;
          float _1740 = _1730.y;
          float _1745 = _1719.x;
          float _1746 = _1722.x;
          float _1748 = _1719.y;
          float _1750 = _1722.y;
          _1785 = _1665 ? 1.0f : (((((_1745 * _1746) * _55.SampleCmpLevelZero(_27, float3(_1732 + float2(_1733, _1734), _388).xy, _1655)) + ((_1748 * _1746) * _55.SampleCmpLevelZero(_27, float3(_1732 + float2(_1737, _1734), _388).xy, _1655))) + ((_1745 * _1750) * _55.SampleCmpLevelZero(_27, float3(_1732 + float2(_1733, _1740), _388).xy, _1655))) + ((_1748 * _1750) * _55.SampleCmpLevelZero(_27, float3(_1732 + float2(_1737, _1740), _388).xy, _1655)));
          _1786 = _1665;
        } else {
          _1785 = 1.0f;
          _1786 = false;
        }
        _1787 = _1785;
        _1788 = _1786;
      } else {
        _1787 = 1.0f;
        _1788 = false;
      }
      float _1988;
      float _1989;
      if ((_1570 < 1.0f) || (_54_m8.x > 0.5f)) {
        float _1799 = 1.0f - clamp(dot(_604, _50_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1816 = float4((_457 - (_50_m0.xyz * (_1799 * _54_m22.x))) + (_604 * (_1799 * _54_m22.y)), 1.0f);
        float4 _1817 = mul(_54_m21, _1816);
        float2 _1818 = _1817.xy;
        float _1986;
        if (all(bool2(_1818.x > 0.0f.xx.x, _1818.y > 0.0f.xx.y)) && all(bool2(_1818.x < 1.0f.xx.x, _1818.y < 1.0f.xx.y))) {
          uint _1837 = clamp(uint((floor(_1817.y * _54_m23.z) + _1817.x) * _54_m23.y), 0u, 127u);
          uint _1841 = asuint(_54_m25[_1837].x);
          float2 _1842 = spvUnpackHalf2x16(_1841);
          float _1843 = _1842.x;
          float _1985;
          if (_1843 >= 0.0f) {
            float4x4 _1852 = _54_m20;
            _1852[0].w = _54_m25[_1837].y;
            _1852[1].w = _54_m25[_1837].z;
            _1852[2].w = _54_m25[_1837].w;
            float4 _1859 = mul(_1852, _1816);
            float3 _1860 = _1859.xyz;
            float _1984;
            if (all(bool3(_1860.x > 0.0f.xxx.x, _1860.y > 0.0f.xxx.y, _1860.z > 0.0f.xxx.z)) && all(bool3(_1860.x < 1.0f.xxx.x, _1860.y < 1.0f.xxx.y, _1860.z < 1.0f.xxx.z))) {
              float _1877 = _1859.z;
              float2 _1883 = float4((_1859.xy * _54_m22.zw) + float2(_1843, spvUnpackHalf2x16(_1841 >> 16u).x), _1877, 1.0f).xy * _54_m24.zw;
              float2 _1885 = floor(_1883 + 0.5f.xx);
              float2 _1886 = _1883 - _1885;
              float _1887 = _1886.x;
              float _1888 = _1887 + 0.5f;
              float _1890 = (_1888 * _1888) * 0.5f;
              float _1893 = min(_1887, 0.0f);
              float _1897 = max(_1887, 0.0f);
              float4 _1901 = float4(_1890 - _1887, (1.0f - _1887) - (_1893 * _1893), (_1887 + 1.0f) - (_1897 * _1897), _1890) * 0.44444000720977783203125f;
              float _1902 = _1886.y;
              float _1903 = _1902 + 0.5f;
              float _1905 = (_1903 * _1903) * 0.5f;
              float _1908 = min(_1902, 0.0f);
              float _1912 = max(_1902, 0.0f);
              float4 _1916 = float4(_1905 - _1902, (1.0f - _1902) - (_1908 * _1908), (_1902 + 1.0f) - (_1912 * _1912), _1905) * 0.44444000720977783203125f;
              float2 _1918 = _1901.yw;
              float2 _1919 = _1901.xz + _1918;
              float2 _1921 = _1916.yw;
              float2 _1922 = _1916.xz + _1921;
              float2 _1928 = ((_1918 / _1919) + float2(-1.5f, 0.5f)) * _54_m24.xx;
              float2 _1930 = ((_1921 / _1922) + float2(-1.5f, 0.5f)) * _54_m24.yy;
              float2 _1932 = _1885 * _54_m24.xy;
              float _1933 = _1928.x;
              float _1934 = _1930.x;
              float _1937 = _1928.y;
              float _1940 = _1930.y;
              float _1945 = _1919.x;
              float _1946 = _1922.x;
              float _1948 = _1919.y;
              float _1950 = _1922.y;
              _1984 = ((((_1945 * _1946) * _60.SampleCmpLevelZero(_27, float3(_1932 + float2(_1933, _1934), _388).xy, _1877)) + ((_1948 * _1946) * _60.SampleCmpLevelZero(_27, float3(_1932 + float2(_1937, _1934), _388).xy, _1877))) + ((_1945 * _1950) * _60.SampleCmpLevelZero(_27, float3(_1932 + float2(_1933, _1940), _388).xy, _1877))) + ((_1948 * _1950) * _60.SampleCmpLevelZero(_27, float3(_1932 + float2(_1937, _1940), _388).xy, _1877));
            } else {
              _1984 = 1.0f;
            }
            _1985 = _1984;
          } else {
            _1985 = 1.0f;
          }
          _1986 = _1985;
        } else {
          _1986 = 1.0f;
        }
        _1988 = _1788 ? _1986 : _1787;
        _1989 = _1986;
      } else {
        _1988 = _1787;
        _1989 = 1.0f;
      }
      float _1992 = lerp(lerp(_1989, _1988, _1570), min(_1989, _1988), _54_m8.x);
      float _2065;
      if (_1992 > 0.001000000047497451305389404296875f) {
        float3 _2027 = _457 - _18_m65.xyz;
        float2 _2032 = (_2027 + (_18_m68.xyz * _2027.y)).xz * _18_m66.z;
        float2 _2033 = _18_m67.xy * _18_m77.w;
        float3 _2040 = _457 - _18_m69.xyz;
        float2 _2048 = _18_m69.w.xx;
        float4 _2055 = _59.SampleLevel(_25, lerp(_2032 * _18_m67.w, (_2040 + (_18_m68.xyz * _2040.y)).xz * _18_m70.x, _2048) + lerp(_2033, _18_m70.yz * _18_m77.w, _2048), 0.0f);
        _2065 = _1992 * lerp(1.0f, lerp(_59.SampleLevel(_25, _2032 + _2033, 0.0f).x, lerp(_2055.x, _2055.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2027.xz))), _18_m67.z);
      } else {
        _2065 = _1992;
      }
      _2070 = float2(lerp(_2065, _54_m7.z, _54_m7.w), _2065);
      break;
    } while (false);
    float _2075 = lerp(1.0f, min(1.0f, _2070.x), _54_m6.x);
    float4 _2214;
    if (_2075 > 0.001000000047497451305389404296875f) {
      float3 _2085 = -_50_m0.xyz;
      float _2090 = dot(_2085, _1226);
      float3 _2092 = _1226 - (_2085 * _2090);
      bool3 _2094 = (_2090 < _50_m4.z).xxx;
      float3 _2102 = normalize((_2085 * _50_m4.z) + ((_2092 * rsqrt(max(6.103515625e-05f, dot(_2092, _2092)))) * _50_m4.y));
      float3 _2103 = float3(_2094.x ? _2102.x : _1226.x, _2094.y ? _2102.y : _1226.y, _2094.z ? _2102.z : _1226.z);
      float3 _2107 = _2103 + _494;
      float3 _2111 = _2107 * rsqrt(max(6.103515625e-05f, dot(_2107, _2107)));
      float _2112 = clamp(dot(_2103, _604), 0.0f, 1.0f);
      float _2114 = clamp(dot(_604, _2111), 0.0f, 1.0f);
      float _2117 = clamp(_630, 0.0f, 1.0f);
      float _2118 = _578 * _578;
      float _2119 = _2118 * _2118;
      float _2140 = (((_2114 * _2119) - _2114) * _2114) + 1.0f;
      float _2143 = 1.0f - clamp(dot(_494, _2111), 0.0f, 1.0f);
      float _2144 = _2143 * _2143;
      float _2146 = (_2143 * _2144) * _2144;
      float _2170 = 1.0f - _578;
      float _2177 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2170 * (1.04997003078460693359375f + (_2170 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2170))))));
      float _2178 = 1.0f - _2177;
      float3 _2181 = _748 + ((1.0f.xxx - _748) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x108F1A09:
      float3 _2200 = (clamp(clamp((min(((_748 * (1.0f - _2146)) + _2146.xxx) * ((_2119 / (_2140 * _2140)) * (0.5f / (((_2112 * sqrt(((((-_2117) * _2119) + _2117) * _2117) + _2119)) + (_2117 * sqrt(((((-_2112) * _2119) + _2112) * _2112) + _2119))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2181 * (((_64.SampleLevel(_24, (float2(_2117, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2112, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2177) / _2178)) * _2181) / (1.0f.xxx - (_2181 * _2178)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_573, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2112) + ((_744 * 1.0f) * _2112);
      */
      float3 _2200 = (clamp((clamp((min(((_748 * (1.0f - _2146)) + _2146.xxx) * ((_2119 / (_2140 * _2140)) * (0.5f / (((_2112 * sqrt(((((-_2117) * _2119) + _2117) * _2117) + _2119)) + (_2117 * sqrt(((((-_2112) * _2119) + _2112) * _2112) + _2119))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2181 * (((_64.SampleLevel(_24, (float2(_2117, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2112, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2177) / _2178)) * _2181) / (1.0f.xxx - (_2181 * _2178)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_573, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2112) + ((_744 * 1.0f) * _2112);
      // RenoDX code end
      float3 _2201 = _2200 * _50_m1.xyz;
      float3 _2212 = lerp(_2201, _2201 * _61.SampleBias(_24, float2(_2075, 0.5f), _18_m16).xyz, (1.0f - _2075).xxx) * 1.0f;
      _2214 = float4(_2212.x, _2212.y, _2212.z, 0.0f.xxxx.w);
    } else {
      _2214 = 0.0f.xxxx;
    }
    _2215 = _2214;
    break;
  } while (false);
  float2 _2217 = floor(_1235 * 0.03125f);
  int _2225 = int((_2217.x + (_2217.y * _52_m9)) * 8.0f);
  float _2232 = floor(_799 - (_18_m3.y * _52_m15));
  float _2236 = clamp(_2232, 0.0f, _52_m11 - 1.0f);
  int _2238 = int(_2236 * 8.0f);
  float3 _2240;
  float _2243;
  _2240 = 0.0f.xxx;
  _2243 = 1.0f;
  float3 _2241;
  float _2244;
  [loop] for (int _2245 = 0; _2245 <= 7; _2240 = _2241, _2243 = _2244, _2245++) {
    uint _2266 = (_2232 <= _2236) ? (_35.Load(uint((_52_m2 + _2225) + _2245) * 4 + 0) & _35.Load(uint((_52_m3 + _2238) + _2245) * 4 + 0)) : 0u;
    uint _2267 = uint(_2245);
    float3 _2271;
    _2244 = _2243;
    _2271 = 0.0f.xxx;
    uint _2274;
    float _2269;
    float3 _2272;
    [loop] for (uint _2273 = _2266; _2273 != 0u; _2244 = _2269, _2271 = _2272, _2273 = _2274) {
      uint _2278 = firstbitlow(_2273);
      _2274 = _2273 ^ (1u << (_2278 & 31u));
      int _2284 = int((32u * _2267) + _2278) * 8;
      int _2287 = _2284 + 1;
      int _2290 = _2284 + 2;
      int _2293 = _2284 + 3;
      int _2296 = _2284 + 4;
      int _2299 = _2284 + 5;
      int _2302 = _2284 + 6;
      int _2305 = _2284 + 7;
      uint _2309 = uint(_50_m6[_2299].w);
      float _2384;
      if ((_2309 & 1u) == 1u) {
        uint _2315 = asuint(_50_m6[_2299].x);
        uint _2322 = asuint(_50_m6[_2299].y);
        uint _2329 = asuint(_50_m6[_2299].z);
        uint _2336 = asuint(_50_m6[_2302].x);
        uint _2343 = asuint(_50_m6[_2302].y);
        uint _2350 = asuint(_50_m6[_2302].z);
        float3 _2369 = abs(mul(float4(_457 - _50_m6[_2287].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2315).x, spvUnpackHalf2x16(_2329).x, spvUnpackHalf2x16(_2343).x, 0.0f), float4(spvUnpackHalf2x16(_2315 >> 16u).x, spvUnpackHalf2x16(_2329 >> 16u).x, spvUnpackHalf2x16(_2343 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2322).x, spvUnpackHalf2x16(_2336).x, spvUnpackHalf2x16(_2350).x, 0.0f), float4(spvUnpackHalf2x16(_2322 >> 16u).x, spvUnpackHalf2x16(_2336 >> 16u).x, spvUnpackHalf2x16(_2350 >> 16u).x, 0.0f))).xyz);
        float _2376 = _50_m6[_2305].x * 0.5f;
        float _2382 = 1.0f - clamp((max(max(_2369.x, _2369.y), _2369.z) - (_2376 + 0.5f)) / (0.5f - _2376), 0.0f, 1.0f);
        _2384 = _2382 * _2382;
      } else {
        _2384 = 1.0f;
      }
      uint _2388 = uint(_50_m6[_2284].w);
      bool _2391 = _50_m6[_2293].z > 0.5f;
      if ((false || (_2384 < 0.001000000047497451305389404296875f)) || ((_2388 < 4u) && _2391)) {
        _2269 = _2244;
        _2272 = _2271;
        continue;
      }
      float _4920;
      float3 _4921;
      do {
        [branch] if (_2388 >= 4u) {
          float3 _3620;
          do {
            float3 _2410 = _50_m6[_2287].xyz - _457;
            if (dot(_50_m6[_2293].xyz, _2410) > 0.0f) {
              _3620 = 0.0f.xxx;
              break;
            }
            float _2417 = dot(_2410, _2410) * _50_m6[_2287].w;
            float _2420 = clamp(1.0f - (_2417 * _2417), 0.0f, 1.0f);
            float _2421 = _2420 * _2420;
            if (_2421 <= 0.0f) {
              _3620 = 0.0f.xxx;
              break;
            }
            float3 _2459;
            float _2460;
            bool _2461;
            float3 _2489;
            float3 _2491;
            float3 _2493;
            float3 _2495;
            float3 _2425 = _50_m6[_2290].xyz * _50_m6[_2290].w;
            float3 _2426 = _50_m6[_2287].xyz - _2425;
            float3 _2427 = _50_m6[_2296].xyz * _50_m6[_2293].w;
            float3 _2430 = _50_m6[_2287].xyz + _2425;
            float2 _2440 = (float2(clamp(_578, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_630, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2444 = _77.SampleLevel(_24, _2440, 0.0f);
            float4 _2448 = _78.SampleLevel(_24, _2440, 0.0f);
            float _2843;
            do {
              _2459 = _494 - (_604 * dot(_494, _604));
              _2460 = dot(_2459, _2459);
              _2461 = _2460 > 9.9999997473787516355514526367188e-05f;
              float3 _2484;
              if (_2461) {
                _2484 = _2459 * rsqrt(_2460);
              } else {
                float _2467 = (_604.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2469 = (-1.0f) / (_2467 + _604.z);
                _2484 = float3(1.0f + (((_2467 * _2469) * _604.x) * _604.x), ((_2467 * _604.x) * _604.y) * _2469, (-_2467) * _604.x);
              }
              float3x3 _2488 = mul(float3x3(float3(_2444.x, 0.0f, _2444.z), float3(0.0f, 1.0f, 0.0f), float3(_2444.y, 0.0f, _2444.w)), float3x3(_2484, cross(_604, _2484), _604));
              _2489 = (_2426 - _2427) - _457;
              float3 _2490 = mul(_2488, _2489);
              _2491 = (_2426 + _2427) - _457;
              float3 _2492 = mul(_2488, _2491);
              _2493 = (_2430 + _2427) - _457;
              float3 _2494 = mul(_2488, _2493);
              _2495 = (_2430 - _2427) - _457;
              float3 _2496 = mul(_2488, _2495);
              float _2497 = _2490.z;
              float _2500 = _2492.z;
              float _2504 = _2494.z;
              float _2508 = _2496.z;
              int _2512 = (((int(_2497 > 0.0f) | ((_2500 > 0.0f) ? 2 : 0)) | ((_2504 > 0.0f) ? 4 : 0)) | ((_2508 > 0.0f) ? 8 : 0));
              float3 _2749;
              float3 _2750;
              float3 _2751;
              float3 _2752;
              float3 _2753;
              int _2754;
              if (_2512 == 0) {
                _2749 = _2496;
                _2750 = _2494;
                _2751 = _2492;
                _2752 = _2490;
                _2753 = 0.0f.xxx;
                _2754 = 0;
              } else {
                float3 _2743;
                float3 _2744;
                float3 _2745;
                float3 _2746;
                float3 _2747;
                int _2748;
                if (_2512 == 1) {
                  _2743 = _2496;
                  _2744 = (_2490 * (-_2508)) + (_2496 * _2497);
                  _2745 = (_2490 * (-_2500)) + (_2492 * _2497);
                  _2746 = _2490;
                  _2747 = 0.0f.xxx;
                  _2748 = 3;
                } else {
                  float3 _2729;
                  float3 _2730;
                  float3 _2731;
                  float3 _2732;
                  float3 _2733;
                  int _2734;
                  if (_2512 == 2) {
                    _2729 = _2496;
                    _2730 = (_2492 * (-_2504)) + (_2494 * _2500);
                    _2731 = _2492;
                    _2732 = (_2492 * (-_2497)) + (_2490 * _2500);
                    _2733 = 0.0f.xxx;
                    _2734 = 3;
                  } else {
                    float3 _2715;
                    float3 _2716;
                    float3 _2717;
                    float3 _2718;
                    float3 _2719;
                    int _2720;
                    if (_2512 == 3) {
                      _2715 = (_2490 * (-_2508)) + (_2496 * _2497);
                      _2716 = (_2492 * (-_2504)) + (_2494 * _2500);
                      _2717 = _2492;
                      _2718 = _2490;
                      _2719 = 0.0f.xxx;
                      _2720 = 4;
                    } else {
                      float3 _2701;
                      float3 _2702;
                      float3 _2703;
                      float3 _2704;
                      float3 _2705;
                      int _2706;
                      if (_2512 == 4) {
                        _2701 = _2496;
                        _2702 = _2494;
                        _2703 = (_2494 * (-_2500)) + (_2492 * _2504);
                        _2704 = (_2494 * (-_2508)) + (_2496 * _2504);
                        _2705 = 0.0f.xxx;
                        _2706 = 3;
                      } else {
                        float3 _2687;
                        float3 _2688;
                        float3 _2689;
                        float3 _2690;
                        float3 _2691;
                        int _2692;
                        if (_2512 == 5) {
                          _2687 = _2496;
                          _2688 = _2494;
                          _2689 = _2492;
                          _2690 = _2490;
                          _2691 = 0.0f.xxx;
                          _2692 = 0;
                        } else {
                          float3 _2681;
                          float3 _2682;
                          float3 _2683;
                          float3 _2684;
                          float3 _2685;
                          int _2686;
                          if (_2512 == 6) {
                            _2681 = (_2494 * (-_2508)) + (_2496 * _2504);
                            _2682 = _2494;
                            _2683 = _2492;
                            _2684 = (_2492 * (-_2497)) + (_2490 * _2500);
                            _2685 = 0.0f.xxx;
                            _2686 = 4;
                          } else {
                            float3 _2667;
                            float3 _2668;
                            float3 _2669;
                            float3 _2670;
                            float3 _2671;
                            int _2672;
                            if (_2512 == 7) {
                              float _2660 = -_2508;
                              _2667 = (_2494 * _2660) + (_2496 * _2504);
                              _2668 = _2494;
                              _2669 = _2492;
                              _2670 = _2490;
                              _2671 = (_2490 * _2660) + (_2496 * _2497);
                              _2672 = 5;
                            } else {
                              float3 _2654;
                              float3 _2655;
                              float3 _2656;
                              float3 _2657;
                              float3 _2658;
                              int _2659;
                              if (_2512 == 8) {
                                _2654 = _2496;
                                _2655 = _2496;
                                _2656 = (_2496 * (-_2504)) + (_2494 * _2508);
                                _2657 = (_2496 * (-_2497)) + (_2490 * _2508);
                                _2658 = 0.0f.xxx;
                                _2659 = 3;
                              } else {
                                float3 _2640;
                                float3 _2641;
                                float3 _2642;
                                float3 _2643;
                                float3 _2644;
                                int _2645;
                                if (_2512 == 9) {
                                  _2640 = _2496;
                                  _2641 = (_2496 * (-_2504)) + (_2494 * _2508);
                                  _2642 = (_2490 * (-_2500)) + (_2492 * _2497);
                                  _2643 = _2490;
                                  _2644 = 0.0f.xxx;
                                  _2645 = 4;
                                } else {
                                  float3 _2626;
                                  float3 _2627;
                                  float3 _2628;
                                  float3 _2629;
                                  float3 _2630;
                                  int _2631;
                                  if (_2512 == 10) {
                                    _2626 = _2496;
                                    _2627 = _2494;
                                    _2628 = _2492;
                                    _2629 = _2490;
                                    _2630 = 0.0f.xxx;
                                    _2631 = 0;
                                  } else {
                                    float3 _2620;
                                    float3 _2621;
                                    float3 _2622;
                                    float3 _2623;
                                    float3 _2624;
                                    int _2625;
                                    if (_2512 == 11) {
                                      float _2613 = -_2504;
                                      _2620 = (_2496 * _2613) + (_2494 * _2508);
                                      _2621 = (_2492 * _2613) + (_2494 * _2500);
                                      _2622 = _2492;
                                      _2623 = _2490;
                                      _2624 = _2496;
                                      _2625 = 5;
                                    } else {
                                      float3 _2607;
                                      float3 _2608;
                                      float3 _2609;
                                      float3 _2610;
                                      float3 _2611;
                                      int _2612;
                                      if (_2512 == 12) {
                                        _2607 = _2496;
                                        _2608 = _2494;
                                        _2609 = (_2494 * (-_2500)) + (_2492 * _2504);
                                        _2610 = (_2496 * (-_2497)) + (_2490 * _2508);
                                        _2611 = 0.0f.xxx;
                                        _2612 = 4;
                                      } else {
                                        bool _2565 = _2512 == 13;
                                        float3 _2592;
                                        float3 _2593;
                                        float3 _2594;
                                        float3 _2595;
                                        int _2596;
                                        if (_2565) {
                                          float _2585 = -_2500;
                                          _2592 = (_2494 * _2585) + (_2492 * _2504);
                                          _2593 = (_2490 * _2585) + (_2492 * _2497);
                                          _2594 = _2490;
                                          _2595 = _2496;
                                          _2596 = 5;
                                        } else {
                                          float3 _2582;
                                          float3 _2583;
                                          int _2584;
                                          if (_2512 == 14) {
                                            float _2575 = -_2497;
                                            _2582 = (_2492 * _2575) + (_2490 * _2500);
                                            _2583 = (_2496 * _2575) + (_2490 * _2508);
                                            _2584 = 5;
                                          } else {
                                            _2582 = _2490;
                                            _2583 = 0.0f.xxx;
                                            _2584 = (_2512 == 15) ? 4 : 0;
                                          }
                                          _2592 = _2494;
                                          _2593 = _2492;
                                          _2594 = _2582;
                                          _2595 = _2583;
                                          _2596 = _2584;
                                        }
                                        bool3 _2597 = _2565.xxx;
                                        _2607 = float3(_2597.x ? _2494.x : _2496.x, _2597.y ? _2494.y : _2496.y, _2597.z ? _2494.z : _2496.z);
                                        _2608 = _2592;
                                        _2609 = _2593;
                                        _2610 = _2594;
                                        _2611 = _2595;
                                        _2612 = _2596;
                                      }
                                      _2620 = _2607;
                                      _2621 = _2608;
                                      _2622 = _2609;
                                      _2623 = _2610;
                                      _2624 = _2611;
                                      _2625 = _2612;
                                    }
                                    _2626 = _2620;
                                    _2627 = _2621;
                                    _2628 = _2622;
                                    _2629 = _2623;
                                    _2630 = _2624;
                                    _2631 = _2625;
                                  }
                                  _2640 = _2626;
                                  _2641 = _2627;
                                  _2642 = _2628;
                                  _2643 = _2629;
                                  _2644 = _2630;
                                  _2645 = _2631;
                                }
                                _2654 = _2640;
                                _2655 = _2641;
                                _2656 = _2642;
                                _2657 = _2643;
                                _2658 = _2644;
                                _2659 = _2645;
                              }
                              _2667 = _2654;
                              _2668 = _2655;
                              _2669 = _2656;
                              _2670 = _2657;
                              _2671 = _2658;
                              _2672 = _2659;
                            }
                            _2681 = _2667;
                            _2682 = _2668;
                            _2683 = _2669;
                            _2684 = _2670;
                            _2685 = _2671;
                            _2686 = _2672;
                          }
                          _2687 = _2681;
                          _2688 = _2682;
                          _2689 = _2683;
                          _2690 = _2684;
                          _2691 = _2685;
                          _2692 = _2686;
                        }
                        _2701 = _2687;
                        _2702 = _2688;
                        _2703 = _2689;
                        _2704 = _2690;
                        _2705 = _2691;
                        _2706 = _2692;
                      }
                      _2715 = _2701;
                      _2716 = _2702;
                      _2717 = _2703;
                      _2718 = _2704;
                      _2719 = _2705;
                      _2720 = _2706;
                    }
                    _2729 = _2715;
                    _2730 = _2716;
                    _2731 = _2717;
                    _2732 = _2718;
                    _2733 = _2719;
                    _2734 = _2720;
                  }
                  _2743 = _2729;
                  _2744 = _2730;
                  _2745 = _2731;
                  _2746 = _2732;
                  _2747 = _2733;
                  _2748 = _2734;
                }
                _2749 = _2743;
                _2750 = _2744;
                _2751 = _2745;
                _2752 = _2746;
                _2753 = _2747;
                _2754 = _2748;
              }
              bool3 _2756 = (_2754 == 3).xxx;
              bool3 _2759 = (_2754 == 4).xxx;
              if (_2754 == 0) {
                _2843 = 0.0f;
                break;
              }
              float3 _2764 = normalize(_2752);
              float3 _2765 = normalize(_2751);
              float3 _2766 = normalize(_2750);
              float3 _2767 = normalize(float3(_2756.x ? _2752.x : _2749.x, _2756.y ? _2752.y : _2749.y, _2756.z ? _2752.z : _2749.z));
              float3 _2768 = normalize(float3(_2759.x ? _2752.x : _2753.x, _2759.y ? _2752.y : _2753.y, _2759.z ? _2752.z : _2753.z));
              float _2770 = clamp(dot(_2764, _2765), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2774 = sqrt(1.0f - (_2770 * _2770));
              float _2782 = clamp(dot(_2765, _2766), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2786 = sqrt(1.0f - (_2782 * _2782));
              float _2795 = clamp(dot(_2766, _2767), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2799 = sqrt(1.0f - (_2795 * _2795));
              float _2806 = ((cross(_2764, _2765).z * ((_2774 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2770) / _2774))) + (cross(_2765, _2766).z * ((_2786 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2782) / _2786)))) + (cross(_2766, _2767).z * ((_2799 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2795) / _2799)));
              float _2823;
              if (_2754 >= 4) {
                float _2811 = clamp(dot(_2767, _2768), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2815 = sqrt(1.0f - (_2811 * _2811));
                _2823 = _2806 + (cross(_2767, _2768).z * ((_2815 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2811) / _2815)));
              } else {
                _2823 = _2806;
              }
              float _2840;
              if (_2754 == 5) {
                float _2828 = clamp(dot(_2768, _2764), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2832 = sqrt(1.0f - (_2828 * _2828));
                _2840 = _2823 + (cross(_2768, _2764).z * ((_2832 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2828) / _2832)));
              } else {
                _2840 = _2823;
              }
              _2843 = max(_2840, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3231;
            do {
              float3 _2877;
              if (_2461) {
                _2877 = _2459 * rsqrt(_2460);
              } else {
                float _2860 = (_604.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2862 = (-1.0f) / (_2860 + _604.z);
                _2877 = float3(1.0f + (((_2860 * _2862) * _604.x) * _604.x), ((_2860 * _604.x) * _604.y) * _2862, (-_2860) * _604.x);
              }
              float3x3 _2880 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2877, cross(_604, _2877), _604));
              float3 _2881 = mul(_2880, _2489);
              float3 _2882 = mul(_2880, _2491);
              float3 _2883 = mul(_2880, _2493);
              float3 _2884 = mul(_2880, _2495);
              float _2885 = _2881.z;
              float _2888 = _2882.z;
              float _2892 = _2883.z;
              float _2896 = _2884.z;
              int _2900 = (((int(_2885 > 0.0f) | ((_2888 > 0.0f) ? 2 : 0)) | ((_2892 > 0.0f) ? 4 : 0)) | ((_2896 > 0.0f) ? 8 : 0));
              float3 _3137;
              float3 _3138;
              float3 _3139;
              float3 _3140;
              float3 _3141;
              int _3142;
              if (_2900 == 0) {
                _3137 = _2884;
                _3138 = _2883;
                _3139 = _2882;
                _3140 = _2881;
                _3141 = 0.0f.xxx;
                _3142 = 0;
              } else {
                float3 _3131;
                float3 _3132;
                float3 _3133;
                float3 _3134;
                float3 _3135;
                int _3136;
                if (_2900 == 1) {
                  _3131 = _2884;
                  _3132 = (_2881 * (-_2896)) + (_2884 * _2885);
                  _3133 = (_2881 * (-_2888)) + (_2882 * _2885);
                  _3134 = _2881;
                  _3135 = 0.0f.xxx;
                  _3136 = 3;
                } else {
                  float3 _3117;
                  float3 _3118;
                  float3 _3119;
                  float3 _3120;
                  float3 _3121;
                  int _3122;
                  if (_2900 == 2) {
                    _3117 = _2884;
                    _3118 = (_2882 * (-_2892)) + (_2883 * _2888);
                    _3119 = _2882;
                    _3120 = (_2882 * (-_2885)) + (_2881 * _2888);
                    _3121 = 0.0f.xxx;
                    _3122 = 3;
                  } else {
                    float3 _3103;
                    float3 _3104;
                    float3 _3105;
                    float3 _3106;
                    float3 _3107;
                    int _3108;
                    if (_2900 == 3) {
                      _3103 = (_2881 * (-_2896)) + (_2884 * _2885);
                      _3104 = (_2882 * (-_2892)) + (_2883 * _2888);
                      _3105 = _2882;
                      _3106 = _2881;
                      _3107 = 0.0f.xxx;
                      _3108 = 4;
                    } else {
                      float3 _3089;
                      float3 _3090;
                      float3 _3091;
                      float3 _3092;
                      float3 _3093;
                      int _3094;
                      if (_2900 == 4) {
                        _3089 = _2884;
                        _3090 = _2883;
                        _3091 = (_2883 * (-_2888)) + (_2882 * _2892);
                        _3092 = (_2883 * (-_2896)) + (_2884 * _2892);
                        _3093 = 0.0f.xxx;
                        _3094 = 3;
                      } else {
                        float3 _3075;
                        float3 _3076;
                        float3 _3077;
                        float3 _3078;
                        float3 _3079;
                        int _3080;
                        if (_2900 == 5) {
                          _3075 = _2884;
                          _3076 = _2883;
                          _3077 = _2882;
                          _3078 = _2881;
                          _3079 = 0.0f.xxx;
                          _3080 = 0;
                        } else {
                          float3 _3069;
                          float3 _3070;
                          float3 _3071;
                          float3 _3072;
                          float3 _3073;
                          int _3074;
                          if (_2900 == 6) {
                            _3069 = (_2883 * (-_2896)) + (_2884 * _2892);
                            _3070 = _2883;
                            _3071 = _2882;
                            _3072 = (_2882 * (-_2885)) + (_2881 * _2888);
                            _3073 = 0.0f.xxx;
                            _3074 = 4;
                          } else {
                            float3 _3055;
                            float3 _3056;
                            float3 _3057;
                            float3 _3058;
                            float3 _3059;
                            int _3060;
                            if (_2900 == 7) {
                              float _3048 = -_2896;
                              _3055 = (_2883 * _3048) + (_2884 * _2892);
                              _3056 = _2883;
                              _3057 = _2882;
                              _3058 = _2881;
                              _3059 = (_2881 * _3048) + (_2884 * _2885);
                              _3060 = 5;
                            } else {
                              float3 _3042;
                              float3 _3043;
                              float3 _3044;
                              float3 _3045;
                              float3 _3046;
                              int _3047;
                              if (_2900 == 8) {
                                _3042 = _2884;
                                _3043 = _2884;
                                _3044 = (_2884 * (-_2892)) + (_2883 * _2896);
                                _3045 = (_2884 * (-_2885)) + (_2881 * _2896);
                                _3046 = 0.0f.xxx;
                                _3047 = 3;
                              } else {
                                float3 _3028;
                                float3 _3029;
                                float3 _3030;
                                float3 _3031;
                                float3 _3032;
                                int _3033;
                                if (_2900 == 9) {
                                  _3028 = _2884;
                                  _3029 = (_2884 * (-_2892)) + (_2883 * _2896);
                                  _3030 = (_2881 * (-_2888)) + (_2882 * _2885);
                                  _3031 = _2881;
                                  _3032 = 0.0f.xxx;
                                  _3033 = 4;
                                } else {
                                  float3 _3014;
                                  float3 _3015;
                                  float3 _3016;
                                  float3 _3017;
                                  float3 _3018;
                                  int _3019;
                                  if (_2900 == 10) {
                                    _3014 = _2884;
                                    _3015 = _2883;
                                    _3016 = _2882;
                                    _3017 = _2881;
                                    _3018 = 0.0f.xxx;
                                    _3019 = 0;
                                  } else {
                                    float3 _3008;
                                    float3 _3009;
                                    float3 _3010;
                                    float3 _3011;
                                    float3 _3012;
                                    int _3013;
                                    if (_2900 == 11) {
                                      float _3001 = -_2892;
                                      _3008 = (_2884 * _3001) + (_2883 * _2896);
                                      _3009 = (_2882 * _3001) + (_2883 * _2888);
                                      _3010 = _2882;
                                      _3011 = _2881;
                                      _3012 = _2884;
                                      _3013 = 5;
                                    } else {
                                      float3 _2995;
                                      float3 _2996;
                                      float3 _2997;
                                      float3 _2998;
                                      float3 _2999;
                                      int _3000;
                                      if (_2900 == 12) {
                                        _2995 = _2884;
                                        _2996 = _2883;
                                        _2997 = (_2883 * (-_2888)) + (_2882 * _2892);
                                        _2998 = (_2884 * (-_2885)) + (_2881 * _2896);
                                        _2999 = 0.0f.xxx;
                                        _3000 = 4;
                                      } else {
                                        bool _2953 = _2900 == 13;
                                        float3 _2980;
                                        float3 _2981;
                                        float3 _2982;
                                        float3 _2983;
                                        int _2984;
                                        if (_2953) {
                                          float _2973 = -_2888;
                                          _2980 = (_2883 * _2973) + (_2882 * _2892);
                                          _2981 = (_2881 * _2973) + (_2882 * _2885);
                                          _2982 = _2881;
                                          _2983 = _2884;
                                          _2984 = 5;
                                        } else {
                                          float3 _2970;
                                          float3 _2971;
                                          int _2972;
                                          if (_2900 == 14) {
                                            float _2963 = -_2885;
                                            _2970 = (_2882 * _2963) + (_2881 * _2888);
                                            _2971 = (_2884 * _2963) + (_2881 * _2896);
                                            _2972 = 5;
                                          } else {
                                            _2970 = _2881;
                                            _2971 = 0.0f.xxx;
                                            _2972 = (_2900 == 15) ? 4 : 0;
                                          }
                                          _2980 = _2883;
                                          _2981 = _2882;
                                          _2982 = _2970;
                                          _2983 = _2971;
                                          _2984 = _2972;
                                        }
                                        bool3 _2985 = _2953.xxx;
                                        _2995 = float3(_2985.x ? _2883.x : _2884.x, _2985.y ? _2883.y : _2884.y, _2985.z ? _2883.z : _2884.z);
                                        _2996 = _2980;
                                        _2997 = _2981;
                                        _2998 = _2982;
                                        _2999 = _2983;
                                        _3000 = _2984;
                                      }
                                      _3008 = _2995;
                                      _3009 = _2996;
                                      _3010 = _2997;
                                      _3011 = _2998;
                                      _3012 = _2999;
                                      _3013 = _3000;
                                    }
                                    _3014 = _3008;
                                    _3015 = _3009;
                                    _3016 = _3010;
                                    _3017 = _3011;
                                    _3018 = _3012;
                                    _3019 = _3013;
                                  }
                                  _3028 = _3014;
                                  _3029 = _3015;
                                  _3030 = _3016;
                                  _3031 = _3017;
                                  _3032 = _3018;
                                  _3033 = _3019;
                                }
                                _3042 = _3028;
                                _3043 = _3029;
                                _3044 = _3030;
                                _3045 = _3031;
                                _3046 = _3032;
                                _3047 = _3033;
                              }
                              _3055 = _3042;
                              _3056 = _3043;
                              _3057 = _3044;
                              _3058 = _3045;
                              _3059 = _3046;
                              _3060 = _3047;
                            }
                            _3069 = _3055;
                            _3070 = _3056;
                            _3071 = _3057;
                            _3072 = _3058;
                            _3073 = _3059;
                            _3074 = _3060;
                          }
                          _3075 = _3069;
                          _3076 = _3070;
                          _3077 = _3071;
                          _3078 = _3072;
                          _3079 = _3073;
                          _3080 = _3074;
                        }
                        _3089 = _3075;
                        _3090 = _3076;
                        _3091 = _3077;
                        _3092 = _3078;
                        _3093 = _3079;
                        _3094 = _3080;
                      }
                      _3103 = _3089;
                      _3104 = _3090;
                      _3105 = _3091;
                      _3106 = _3092;
                      _3107 = _3093;
                      _3108 = _3094;
                    }
                    _3117 = _3103;
                    _3118 = _3104;
                    _3119 = _3105;
                    _3120 = _3106;
                    _3121 = _3107;
                    _3122 = _3108;
                  }
                  _3131 = _3117;
                  _3132 = _3118;
                  _3133 = _3119;
                  _3134 = _3120;
                  _3135 = _3121;
                  _3136 = _3122;
                }
                _3137 = _3131;
                _3138 = _3132;
                _3139 = _3133;
                _3140 = _3134;
                _3141 = _3135;
                _3142 = _3136;
              }
              bool3 _3144 = (_3142 == 3).xxx;
              bool3 _3147 = (_3142 == 4).xxx;
              if (_3142 == 0) {
                _3231 = 0.0f;
                break;
              }
              float3 _3152 = normalize(_3140);
              float3 _3153 = normalize(_3139);
              float3 _3154 = normalize(_3138);
              float3 _3155 = normalize(float3(_3144.x ? _3140.x : _3137.x, _3144.y ? _3140.y : _3137.y, _3144.z ? _3140.z : _3137.z));
              float3 _3156 = normalize(float3(_3147.x ? _3140.x : _3141.x, _3147.y ? _3140.y : _3141.y, _3147.z ? _3140.z : _3141.z));
              float _3158 = clamp(dot(_3152, _3153), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3162 = sqrt(1.0f - (_3158 * _3158));
              float _3170 = clamp(dot(_3153, _3154), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3174 = sqrt(1.0f - (_3170 * _3170));
              float _3183 = clamp(dot(_3154, _3155), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3187 = sqrt(1.0f - (_3183 * _3183));
              float _3194 = ((cross(_3152, _3153).z * ((_3162 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3158) / _3162))) + (cross(_3153, _3154).z * ((_3174 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3170) / _3174)))) + (cross(_3154, _3155).z * ((_3187 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3183) / _3187)));
              float _3211;
              if (_3142 >= 4) {
                float _3199 = clamp(dot(_3155, _3156), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3203 = sqrt(1.0f - (_3199 * _3199));
                _3211 = _3194 + (cross(_3155, _3156).z * ((_3203 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3199) / _3203)));
              } else {
                _3211 = _3194;
              }
              float _3228;
              if (_3142 == 5) {
                float _3216 = clamp(dot(_3156, _3152), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3220 = sqrt(1.0f - (_3216 * _3216));
                _3228 = _3211 + (cross(_3156, _3152).z * ((_3220 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3216) / _3220)));
              } else {
                _3228 = _3211;
              }
              _3231 = max(_3228, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3234 = (_2309 & 2u) != 0u;
            uint _3238 = asuint(_50_m6[_2296].w);
            uint _3239 = asuint(_50_m6[_2302].w);
            float3 _3240 = _457 - _50_m6[_2287].xyz;
            float3 _3241 = abs(_3240);
            float _3242 = _3241.x;
            float _3243 = _3241.y;
            float _3245 = _3241.z;
            int _3278;
            if ((_3242 > _3243) && (_3242 > _3245)) {
              _3278 = int((_3240.x > 0.0f) ? (_3238 & 1023u) : ((_3238 >> 10u) & 1023u));
            } else {
              int _3270;
              if (_3243 > _3245) {
                _3270 = int((_3240.y > 0.0f) ? ((_3238 >> 20u) & 1023u) : (_3239 & 1023u));
              } else {
                _3270 = int((_3240.z > 0.0f) ? ((_3239 >> 10u) & 1023u) : ((_3239 >> 20u) & 1023u));
              }
              _3278 = _3270;
            }
            int _3281 = _3234 ? int(_50_m6[_2296].w) : ((_3278 == 1023) ? (-1) : _3278);
            uint _3292 = asuint(_54_m11.x) + (uint(_3281) * 96u);
            uint _3294 = (_3292 + 64u) >> 2u;
            uint _3297 = _3294 + 1u;
            uint _3300 = _3294 + 2u;
            uint _3303 = _3294 + 3u;
            float4 _3307 = asfloat(uint4(_58.Load(_3294 * 4 + 0), _58.Load(_3297 * 4 + 0), _58.Load(_3300 * 4 + 0), _58.Load(_3303 * 4 + 0)));
            uint _3315 = _3292 >> 2u;
            uint _3330 = (_3292 + 16u) >> 2u;
            uint _3345 = (_3292 + 32u) >> 2u;
            uint _3360 = (_3292 + 48u) >> 2u;
            float4 _3380 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3315 * 4 + 0), _58.Load((_3315 + 1u) * 4 + 0), _58.Load((_3315 + 2u) * 4 + 0), _58.Load((_3315 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3330 * 4 + 0), _58.Load((_3330 + 1u) * 4 + 0), _58.Load((_3330 + 2u) * 4 + 0), _58.Load((_3330 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3345 * 4 + 0), _58.Load((_3345 + 1u) * 4 + 0), _58.Load((_3345 + 2u) * 4 + 0), _58.Load((_3345 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3360 * 4 + 0), _58.Load((_3360 + 1u) * 4 + 0), _58.Load((_3360 + 2u) * 4 + 0), _58.Load((_3360 + 3u) * 4 + 0))))), float4((_457 - ((_3240 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3240, _3240)))) * _3307.x)) + (_604 * (_3307.y * 5.0f)), 1.0f));
            float3 _3384 = _3380.xyz / _3380.w.xxx;
            uint _3386 = (_3292 + 80u) >> 2u;
            float4 _3399 = asfloat(uint4(_58.Load(_3386 * 4 + 0), _58.Load((_3386 + 1u) * 4 + 0), _58.Load((_3386 + 2u) * 4 + 0), _58.Load((_3386 + 3u) * 4 + 0)));
            float2 _3400 = _3384.xy;
            float2 _3402 = _3399.xy;
            float3 _3406 = _3384.xyz;
            bool3 _3407 = bool3(_3406.x <= 0.0f.xxx.x, _3406.y <= 0.0f.xxx.y, _3406.z <= 0.0f.xxx.z);
            bool3 _3408 = bool3(_3406.x >= 1.0f.xxx.x, _3406.y >= 1.0f.xxx.y, _3406.z >= 1.0f.xxx.z);
            float _3411 = _3384.z;
            float2 _3422 = ((_3400 * (_3399.zw - _3402)) + _3402).xy * _54_m10.zw;
            float2 _3424 = floor(_3422 + 0.5f.xx);
            float2 _3425 = _3422 - _3424;
            float _3426 = _3425.x;
            float _3427 = _3426 + 0.5f;
            float _3428 = _3427 * _3427;
            float _3431 = 1.0f - _3426;
            float _3432 = min(_3426, 0.0f);
            float _3435 = _3426 + 1.0f;
            float _3436 = max(_3426, 0.0f);
            float _3447 = _3425.y;
            float _3448 = _3447 + 0.5f;
            float _3449 = _3448 * _3448;
            float _3452 = 1.0f - _3447;
            float _3453 = min(_3447, 0.0f);
            float _3456 = _3447 + 1.0f;
            float _3457 = max(_3447, 0.0f);
            float3 _3469 = float3(0.1599999964237213134765625f * _3431, 0.1599999964237213134765625f * ((_3435 - (_3436 * _3436)) + 1.0f), _3428 * 0.07999999821186065673828125f);
            float3 _3470 = float3(0.1599999964237213134765625f * ((_3428 * 0.5f) - _3426), 0.1599999964237213134765625f * ((_3431 - (_3432 * _3432)) + 1.0f), 0.1599999964237213134765625f * _3435) + _3469;
            float3 _3472 = float3(0.1599999964237213134765625f * _3452, 0.1599999964237213134765625f * ((_3456 - (_3457 * _3457)) + 1.0f), _3449 * 0.07999999821186065673828125f);
            float3 _3473 = float3(0.1599999964237213134765625f * ((_3449 * 0.5f) - _3447), 0.1599999964237213134765625f * ((_3452 - (_3453 * _3453)) + 1.0f), 0.1599999964237213134765625f * _3456) + _3472;
            float3 _3479 = ((_3469 / _3470) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _3481 = ((_3472 / _3473) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _3483 = _3424 * _54_m10.xy;
            float _3484 = _3479.x;
            float _3485 = _3481.x;
            float _3488 = _3479.y;
            float _3491 = _3479.z;
            float _3494 = _3481.y;
            float _3501 = _3481.z;
            float _3508 = _3470.x;
            float _3509 = _3473.x;
            float _3511 = _3470.y;
            float _3513 = _3470.z;
            float _3515 = _3473.y;
            float _3519 = _3473.z;
            float _3577 = (((((((_3508 * _3509) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3484, _3485), _388).xy, _3411)) + ((_3511 * _3509) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3488, _3485), _388).xy, _3411))) + ((_3513 * _3509) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3491, _3485), _388).xy, _3411))) + ((_3508 * _3515) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3484, _3494), _388).xy, _3411))) + ((_3511 * _3515) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3488, _3494), _388).xy, _3411))) + ((_3513 * _3515) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3491, _3494), _388).xy, _3411))) + ((_3508 * _3519) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3484, _3501), _388).xy, _3411));
            float4 _3600 = asfloat(uint4(_58.Load(_3294 * 4 + 0), _58.Load(_3297 * 4 + 0), _58.Load(_3300 * 4 + 0), _58.Load(_3303 * 4 + 0)));
            float _3601 = _3600.w;
            float2 _3603 = min(_3400, 1.0f.xx - _3400);
            _3620 = ((_50_m6[_2284].xyz * (((((_748 * _2448.x) + ((1.0f.xxx - _748) * _2448.y)) * _2843) * _50_m6[_2305].z) + (_744 * _3231))) * _2421) * ((_3281 >= 0) ? lerp(1.0f, (any(bool3(_3407.x || _3408.x, _3407.y || _3408.y, _3407.z || _3408.z)) || ((asuint(_3411) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3577 + ((_3511 * _3519) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3488, _3501), _388).xy, _3411))) + ((_3513 * _3519) * _56.SampleCmpLevelZero(_27, float3(_3483 + float2(_3491, _3501), _388).xy, _3411))), _3234 ? min(_3601, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3600.z - _3380.w) * 0.25f, min(_3603.x, _3603.y)))) : _3601) : 1.0f);
            break;
          } while (false);
          _4920 = _2244;
          _4921 = _3620 * _2384;
          break;
        }
        float _4918;
        float3 _4919;
        if (_50_m6[_2284].w < 1.5f) {
          float3 _4200 = float3(0.100000001490116119384765625f, _578, 1.0f);
          float _4209 = (0.5f + (0.5f * _50_m6[_2290].y)) - abs(_50_m6[_2290].x);
          float _4210 = _50_m6[_2290].y - _4209;
          float _4217 = abs(max((1.0f - abs(_4209)) - abs(_4210), 0.00048828125f));
          float3 _4221 = normalize(float3(_4209, _4210, (_50_m6[_2290].x >= 0.0f) ? _4217 : (-_4217)));
          float3 _4222 = _50_m6[_2287].xyz - _457;
          float _4223 = dot(_4222, _4222);
          float _4224 = rsqrt(_4223);
          float3 _4225 = _4222 * _4224;
          float _4229 = clamp(_50_m6[_2305].y * _4224, 0.0f, 1.0f);
          int _4234 = int(_50_m6[_2305].w);
          float3 _4235 = _4221 * _50_m6[_2290].z;
          float3 _4236 = _4235 * 0.5f;
          float3 _4237 = _4222 - _4236;
          float3 _4238 = _4222 + _4236;
          bool _4240 = (_2388 & 1u) == 0u;
          bool _4243 = _4240 || ((_2309 & 2u) != 0u);
          bool _4246 = (!_4240) && (_50_m6[_2290].z > 0.0f);
          float _4265;
          float _4266;
          if (_4246) {
            float _4250 = length(_4237);
            float _4251 = length(_4238);
            _4265 = clamp(0.5f * ((dot(_604, _4237) / _4250) + (dot(_604, _4238) / _4251)), 0.0f, 1.0f);
            _4266 = 1.0f / ((((_4250 * _4251) + dot(_4237, _4238)) * 0.5f) + 1.0f);
          } else {
            _4265 = clamp(dot(_604, _4225), 0.0f, 1.0f);
            _4266 = 1.0f;
          }
          float _4288;
          if (_50_m6[_2302].w < 0.0f) {
            float _4282 = _4223 * (_50_m6[_2287].w * _50_m6[_2287].w);
            float _4285 = clamp(1.0f - (_4282 * _4282), 0.0f, 1.0f);
            _4288 = lerp(1.0f / (_4223 + 1.0f), _4266, float(_4246)) * (_4285 * _4285);
          } else {
            float3 _4271 = _4222 * _50_m6[_2287].w;
            _4288 = _4266 * pow(1.0f - clamp(dot(_4271, _4271), 0.0f, 1.0f), _50_m6[_2302].w);
          }
          float _4294 = clamp((dot(_4225, -_4221) - _50_m6[_2290].z) * _50_m6[_2290].w, 0.0f, 1.0f);
          float _4298 = _4288 * lerp(1.0f, _4294 * _4294, float(_4240));
          float _4398;
          if ((!_4246) && (_4234 >= 0)) {
            uint _4304 = uint(_4234);
            float2 _4391;
            [branch] if (_4240) {
              float4 _4381 = mul(_74_m1[_4304], _461);
              _4391 = _74_m0[_4304].xy + (clamp(_4381.xy / _4381.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_4304].zw);
            }
            else {
              float3 _4318 = mul(float4(-_4222, 0.0f), _74_m1[_4304]).xyz;
              float3 _394 = _4318;
              float3 _393 = _4318;
              float3 _392 = abs(_4318);
              uint _4327 = uint(int(_392.y > _392.x));
              uint _4333 = (_392.z > _392[_4327]) ? 2u : _4327;
              uint _4339 = (_4333 * 2u) + uint(_393[_4333] < 0.0f);
              float _4343 = abs(_394[_4339 / 2u]);
              float _4363 = 0.5f - (0.000244140625f / _74_m0[_4304].w);
              _4391 = _74_m0[_4304].xy + (clamp(float2((float(_4339) + ((((_394[uint(_367[_4339].x)] * _368[_4339].x) / _4343) * _4363) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_394[uint(_367[_4339].y)] * _368[_4339].y) / _4343) * _4363)), 0.0f.xx, 1.0f.xx) * _74_m0[_4304].zw);
            }
            _4398 = _4298 * _72.SampleLevel(_24, _4391, 0.0f).x;
          } else {
            _4398 = _4298;
          }
          bool _4399 = _4398 > 0.0f;
          float _4783;
          if (_4399) {
            int _4452;
            if (_4243) {
              _4452 = int(_50_m6[_2293].x);
            } else {
              uint _4407 = asuint(_50_m6[_2290].w);
              uint _4408 = asuint(_50_m6[_2293].x);
              float3 _4409 = _457 - _50_m6[_2287].xyz;
              float3 _4410 = abs(_4409);
              float _4411 = _4410.x;
              float _4412 = _4410.y;
              float _4414 = _4410.z;
              int _4447;
              if ((_4411 > _4412) && (_4411 > _4414)) {
                _4447 = int((_4409.x > 0.0f) ? (_4407 & 1023u) : ((_4407 >> 10u) & 1023u));
              } else {
                int _4439;
                if (_4412 > _4414) {
                  _4439 = int((_4409.y > 0.0f) ? ((_4407 >> 20u) & 1023u) : (_4408 & 1023u));
                } else {
                  _4439 = int((_4409.z > 0.0f) ? ((_4408 >> 10u) & 1023u) : ((_4408 >> 20u) & 1023u));
                }
                _4447 = _4439;
              }
              _4452 = (_4447 == 1023) ? (-1) : _4447;
            }
            uint _4459 = asuint(_54_m11.x) + (uint(_4452) * 96u);
            uint _4461 = (_4459 + 64u) >> 2u;
            uint _4464 = _4461 + 1u;
            uint _4467 = _4461 + 2u;
            uint _4470 = _4461 + 3u;
            float4 _4474 = asfloat(uint4(_58.Load(_4461 * 4 + 0), _58.Load(_4464 * 4 + 0), _58.Load(_4467 * 4 + 0), _58.Load(_4470 * 4 + 0)));
            uint _4482 = _4459 >> 2u;
            uint _4497 = (_4459 + 16u) >> 2u;
            uint _4512 = (_4459 + 32u) >> 2u;
            uint _4527 = (_4459 + 48u) >> 2u;
            float4 _4547 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_4482 * 4 + 0), _58.Load((_4482 + 1u) * 4 + 0), _58.Load((_4482 + 2u) * 4 + 0), _58.Load((_4482 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4497 * 4 + 0), _58.Load((_4497 + 1u) * 4 + 0), _58.Load((_4497 + 2u) * 4 + 0), _58.Load((_4497 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4512 * 4 + 0), _58.Load((_4512 + 1u) * 4 + 0), _58.Load((_4512 + 2u) * 4 + 0), _58.Load((_4512 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4527 * 4 + 0), _58.Load((_4527 + 1u) * 4 + 0), _58.Load((_4527 + 2u) * 4 + 0), _58.Load((_4527 + 3u) * 4 + 0))))), float4((_457 - ((-_4225) * _4474.x)) + (_604 * (_4474.y * 5.0f)), 1.0f));
            float3 _4551 = _4547.xyz / _4547.w.xxx;
            uint _4553 = (_4459 + 80u) >> 2u;
            float4 _4566 = asfloat(uint4(_58.Load(_4553 * 4 + 0), _58.Load((_4553 + 1u) * 4 + 0), _58.Load((_4553 + 2u) * 4 + 0), _58.Load((_4553 + 3u) * 4 + 0)));
            float2 _4567 = _4551.xy;
            float2 _4569 = _4566.xy;
            float3 _4573 = _4551.xyz;
            bool3 _4574 = bool3(_4573.x <= 0.0f.xxx.x, _4573.y <= 0.0f.xxx.y, _4573.z <= 0.0f.xxx.z);
            bool3 _4575 = bool3(_4573.x >= 1.0f.xxx.x, _4573.y >= 1.0f.xxx.y, _4573.z >= 1.0f.xxx.z);
            float _4578 = _4551.z;
            float2 _4589 = ((_4567 * (_4566.zw - _4569)) + _4569).xy * _54_m10.zw;
            float2 _4591 = floor(_4589 + 0.5f.xx);
            float2 _4592 = _4589 - _4591;
            float _4593 = _4592.x;
            float _4594 = _4593 + 0.5f;
            float _4595 = _4594 * _4594;
            float _4598 = 1.0f - _4593;
            float _4599 = min(_4593, 0.0f);
            float _4602 = _4593 + 1.0f;
            float _4603 = max(_4593, 0.0f);
            float _4614 = _4592.y;
            float _4615 = _4614 + 0.5f;
            float _4616 = _4615 * _4615;
            float _4619 = 1.0f - _4614;
            float _4620 = min(_4614, 0.0f);
            float _4623 = _4614 + 1.0f;
            float _4624 = max(_4614, 0.0f);
            float3 _4636 = float3(0.1599999964237213134765625f * _4598, 0.1599999964237213134765625f * ((_4602 - (_4603 * _4603)) + 1.0f), _4595 * 0.07999999821186065673828125f);
            float3 _4637 = float3(0.1599999964237213134765625f * ((_4595 * 0.5f) - _4593), 0.1599999964237213134765625f * ((_4598 - (_4599 * _4599)) + 1.0f), 0.1599999964237213134765625f * _4602) + _4636;
            float3 _4639 = float3(0.1599999964237213134765625f * _4619, 0.1599999964237213134765625f * ((_4623 - (_4624 * _4624)) + 1.0f), _4616 * 0.07999999821186065673828125f);
            float3 _4640 = float3(0.1599999964237213134765625f * ((_4616 * 0.5f) - _4614), 0.1599999964237213134765625f * ((_4619 - (_4620 * _4620)) + 1.0f), 0.1599999964237213134765625f * _4623) + _4639;
            float3 _4646 = ((_4636 / _4637) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _4648 = ((_4639 / _4640) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _4650 = _4591 * _54_m10.xy;
            float _4651 = _4646.x;
            float _4652 = _4648.x;
            float _4655 = _4646.y;
            float _4658 = _4646.z;
            float _4661 = _4648.y;
            float _4668 = _4648.z;
            float _4675 = _4637.x;
            float _4676 = _4640.x;
            float _4678 = _4637.y;
            float _4680 = _4637.z;
            float _4682 = _4640.y;
            float _4686 = _4640.z;
            float _4744 = (((((((_4675 * _4676) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4651, _4652), _388).xy, _4578)) + ((_4678 * _4676) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4655, _4652), _388).xy, _4578))) + ((_4680 * _4676) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4658, _4652), _388).xy, _4578))) + ((_4675 * _4682) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4651, _4661), _388).xy, _4578))) + ((_4678 * _4682) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4655, _4661), _388).xy, _4578))) + ((_4680 * _4682) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4658, _4661), _388).xy, _4578))) + ((_4675 * _4686) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4651, _4668), _388).xy, _4578));
            float4 _4767 = asfloat(uint4(_58.Load(_4461 * 4 + 0), _58.Load(_4464 * 4 + 0), _58.Load(_4467 * 4 + 0), _58.Load(_4470 * 4 + 0)));
            float _4768 = _4767.w;
            float2 _4770 = min(_4567, 1.0f.xx - _4567);
            _4783 = (_4452 >= 0) ? lerp(1.0f, (any(bool3(_4574.x || _4575.x, _4574.y || _4575.y, _4574.z || _4575.z)) || ((asuint(_4578) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4744 + ((_4678 * _4686) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4655, _4668), _388).xy, _4578))) + ((_4680 * _4686) * _56.SampleCmpLevelZero(_27, float3(_4650 + float2(_4658, _4668), _388).xy, _4578))), _4243 ? min(_4768, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4767.z - _4547.w) * 0.25f, min(_4770.x, _4770.y)))) : _4768) : 1.0f;
          } else {
            _4783 = 1.0f;
          }
          float3 _4806;
          float3 _4807;
          if (_4246) {
            float3 _4786 = _4200 * _4200;
            float _4795 = dot(_1226, _4235);
            _4806 = _4786 / clamp(_4786 + (0.5f * clamp(_50_m6[_2290].z * _4224, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4807 = normalize(_4237 + (_4235 * clamp(dot(_4237, (_1226 * _4795) - _4235) / ((_50_m6[_2290].z * _50_m6[_2290].z) - (_4795 * _4795)), 0.0f, 1.0f)));
          } else {
            _4806 = 1.0f.xxx;
            _4807 = _4225;
          }
          float3 _4808 = _4807 + _494;
          float3 _4812 = _4808 * rsqrt(max(6.103515625e-05f, dot(_4808, _4808)));
          float3 _4917;
          if (_4399) {
            float _4815 = clamp(_4265, 0.0f, 1.0f);
            float _4817 = clamp(dot(_604, _4812), 0.0f, 1.0f);
            float _4819 = clamp(dot(_494, _4812), 0.0f, 1.0f);
            float _4820 = clamp(_630, 0.0f, 1.0f);
            float _4821 = _578 * _578;
            float _4831;
            if (_4229 > 0.0f) {
              _4831 = clamp(_4821 + ((_4229 * _4229) / ((_4819 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4831 = _4821;
            }
            float _4832 = _4831 * _4831;
            float _4853 = (((_4817 * _4832) - _4817) * _4817) + 1.0f;
            float _4858 = 1.0f - _4819;
            float _4859 = _4858 * _4858;
            float _4861 = (_4858 * _4859) * _4859;
            float _4885 = 1.0f - _578;
            float _4892 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4885 * (1.04997003078460693359375f + (_4885 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4885))))));
            float _4893 = 1.0f - _4892;
            float3 _4896 = _748 + ((1.0f.xxx - _748) * 0.0476190485060214996337890625f);
            float3 _4916 = ((clamp((min(((_748 * (1.0f - _4861)) + _4861.xxx) * (((_4832 / (_4853 * _4853)) * _4806.y) * (0.5f / (((_4815 * sqrt(((((-_4820) * _4832) + _4820) * _4820) + _4832)) + (_4820 * sqrt(((((-_4815) * _4832) + _4815) * _4815) + _4832))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4896 * (((_64.SampleLevel(_24, (float2(_4820, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_4815, _578) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4892) / _4893)) * _4896) / (1.0f.xxx - (_4896 * _4893)))) * _50_m6[_2305].z, 0.0f.xxx, 1000.0f.xxx) * _4265) + ((_744 * _4806.z) * _4265)) * (((_50_m6[_2284].xyz * _4398) * _4783) * _2384);
            _4917 = _4916;
          } else {
            _4917 = 0.0f.xxx;
          }
          _4918 = _2244;
          _4919 = _4917;
        } else {
          float _4198;
          do {
            if (_2391) {
              _4198 = 1.0f;
              break;
            }
            float _3637 = (0.5f + (0.5f * _50_m6[_2290].y)) - abs(_50_m6[_2290].x);
            float _3638 = _50_m6[_2290].y - _3637;
            float _3645 = abs(max((1.0f - abs(_3637)) - abs(_3638), 0.00048828125f));
            float3 _3649 = normalize(float3(_3637, _3638, (_50_m6[_2290].x >= 0.0f) ? _3645 : (-_3645)));
            float3 _3650 = _50_m6[_2287].xyz - _457;
            float _3651 = dot(_3650, _3650);
            float3 _3653 = _3650 * rsqrt(_3651);
            int _3656 = int(_50_m6[_2305].w);
            float3 _3658 = (_3649 * _50_m6[_2290].z) * 0.5f;
            float3 _3659 = _3650 - _3658;
            float3 _3660 = _3650 + _3658;
            bool _3662 = (_2388 & 1u) == 0u;
            bool _3665 = _3662 || ((_2309 & 2u) != 0u);
            bool _3668 = (!_3662) && (_50_m6[_2290].z > 0.0f);
            float _3680;
            if (_3668) {
              _3680 = 1.0f / ((((length(_3659) * length(_3660)) + dot(_3659, _3660)) * 0.5f) + 1.0f);
            } else {
              _3680 = 1.0f;
            }
            float _3702;
            if (_50_m6[_2302].w < 0.0f) {
              float _3696 = _3651 * (_50_m6[_2287].w * _50_m6[_2287].w);
              float _3699 = clamp(1.0f - (_3696 * _3696), 0.0f, 1.0f);
              _3702 = lerp(1.0f / (_3651 + 1.0f), _3680, float(_3668)) * (_3699 * _3699);
            } else {
              float3 _3685 = _3650 * _50_m6[_2287].w;
              _3702 = _3680 * pow(1.0f - clamp(dot(_3685, _3685), 0.0f, 1.0f), _50_m6[_2302].w);
            }
            float _3708 = clamp((dot(_3653, -_3649) - _50_m6[_2290].z) * _50_m6[_2290].w, 0.0f, 1.0f);
            float _3712 = _3702 * lerp(1.0f, _3708 * _3708, float(_3662));
            float _3812;
            if ((!_3668) && (_3656 >= 0)) {
              uint _3718 = uint(_3656);
              float2 _3805;
              [branch] if (_3662) {
                float4 _3795 = mul(_74_m1[_3718], _461);
                _3805 = _74_m0[_3718].xy + (clamp(_3795.xy / _3795.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_3718].zw);
              }
              else {
                float3 _3732 = mul(float4(-_3650, 0.0f), _74_m1[_3718]).xyz;
                float3 _397 = _3732;
                float3 _396 = _3732;
                float3 _395 = abs(_3732);
                uint _3741 = uint(int(_395.y > _395.x));
                uint _3747 = (_395.z > _395[_3741]) ? 2u : _3741;
                uint _3753 = (_3747 * 2u) + uint(_396[_3747] < 0.0f);
                float _3757 = abs(_397[_3753 / 2u]);
                float _3777 = 0.5f - (0.000244140625f / _74_m0[_3718].w);
                _3805 = _74_m0[_3718].xy + (clamp(float2((float(_3753) + ((((_397[uint(_367[_3753].x)] * _368[_3753].x) / _3757) * _3777) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_397[uint(_367[_3753].y)] * _368[_3753].y) / _3757) * _3777)), 0.0f.xx, 1.0f.xx) * _74_m0[_3718].zw);
              }
              _3812 = _3712 * _72.SampleLevel(_24, _3805, 0.0f).x;
            } else {
              _3812 = _3712;
            }
            float _4197;
            if (_3812 > 0.0f) {
              int _3866;
              if (_3665) {
                _3866 = int(_50_m6[_2293].x);
              } else {
                uint _3821 = asuint(_50_m6[_2290].w);
                uint _3822 = asuint(_50_m6[_2293].x);
                float3 _3823 = _457 - _50_m6[_2287].xyz;
                float3 _3824 = abs(_3823);
                float _3825 = _3824.x;
                float _3826 = _3824.y;
                float _3828 = _3824.z;
                int _3861;
                if ((_3825 > _3826) && (_3825 > _3828)) {
                  _3861 = int((_3823.x > 0.0f) ? (_3821 & 1023u) : ((_3821 >> 10u) & 1023u));
                } else {
                  int _3853;
                  if (_3826 > _3828) {
                    _3853 = int((_3823.y > 0.0f) ? ((_3821 >> 20u) & 1023u) : (_3822 & 1023u));
                  } else {
                    _3853 = int((_3823.z > 0.0f) ? ((_3822 >> 10u) & 1023u) : ((_3822 >> 20u) & 1023u));
                  }
                  _3861 = _3853;
                }
                _3866 = (_3861 == 1023) ? (-1) : _3861;
              }
              uint _3873 = asuint(_54_m11.x) + (uint(_3866) * 96u);
              uint _3875 = (_3873 + 64u) >> 2u;
              uint _3878 = _3875 + 1u;
              uint _3881 = _3875 + 2u;
              uint _3884 = _3875 + 3u;
              float4 _3888 = asfloat(uint4(_58.Load(_3875 * 4 + 0), _58.Load(_3878 * 4 + 0), _58.Load(_3881 * 4 + 0), _58.Load(_3884 * 4 + 0)));
              uint _3896 = _3873 >> 2u;
              uint _3911 = (_3873 + 16u) >> 2u;
              uint _3926 = (_3873 + 32u) >> 2u;
              uint _3941 = (_3873 + 48u) >> 2u;
              float4 _3961 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3896 * 4 + 0), _58.Load((_3896 + 1u) * 4 + 0), _58.Load((_3896 + 2u) * 4 + 0), _58.Load((_3896 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3911 * 4 + 0), _58.Load((_3911 + 1u) * 4 + 0), _58.Load((_3911 + 2u) * 4 + 0), _58.Load((_3911 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3926 * 4 + 0), _58.Load((_3926 + 1u) * 4 + 0), _58.Load((_3926 + 2u) * 4 + 0), _58.Load((_3926 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3941 * 4 + 0), _58.Load((_3941 + 1u) * 4 + 0), _58.Load((_3941 + 2u) * 4 + 0), _58.Load((_3941 + 3u) * 4 + 0))))), float4((_457 - ((-_3653) * _3888.x)) + (_604 * (_3888.y * 5.0f)), 1.0f));
              float3 _3965 = _3961.xyz / _3961.w.xxx;
              uint _3967 = (_3873 + 80u) >> 2u;
              float4 _3980 = asfloat(uint4(_58.Load(_3967 * 4 + 0), _58.Load((_3967 + 1u) * 4 + 0), _58.Load((_3967 + 2u) * 4 + 0), _58.Load((_3967 + 3u) * 4 + 0)));
              float2 _3981 = _3965.xy;
              float2 _3983 = _3980.xy;
              float3 _3987 = _3965.xyz;
              bool3 _3988 = bool3(_3987.x <= 0.0f.xxx.x, _3987.y <= 0.0f.xxx.y, _3987.z <= 0.0f.xxx.z);
              bool3 _3989 = bool3(_3987.x >= 1.0f.xxx.x, _3987.y >= 1.0f.xxx.y, _3987.z >= 1.0f.xxx.z);
              float _3992 = _3965.z;
              float2 _4003 = ((_3981 * (_3980.zw - _3983)) + _3983).xy * _54_m10.zw;
              float2 _4005 = floor(_4003 + 0.5f.xx);
              float2 _4006 = _4003 - _4005;
              float _4007 = _4006.x;
              float _4008 = _4007 + 0.5f;
              float _4009 = _4008 * _4008;
              float _4012 = 1.0f - _4007;
              float _4013 = min(_4007, 0.0f);
              float _4016 = _4007 + 1.0f;
              float _4017 = max(_4007, 0.0f);
              float _4028 = _4006.y;
              float _4029 = _4028 + 0.5f;
              float _4030 = _4029 * _4029;
              float _4033 = 1.0f - _4028;
              float _4034 = min(_4028, 0.0f);
              float _4037 = _4028 + 1.0f;
              float _4038 = max(_4028, 0.0f);
              float3 _4050 = float3(0.1599999964237213134765625f * _4012, 0.1599999964237213134765625f * ((_4016 - (_4017 * _4017)) + 1.0f), _4009 * 0.07999999821186065673828125f);
              float3 _4051 = float3(0.1599999964237213134765625f * ((_4009 * 0.5f) - _4007), 0.1599999964237213134765625f * ((_4012 - (_4013 * _4013)) + 1.0f), 0.1599999964237213134765625f * _4016) + _4050;
              float3 _4053 = float3(0.1599999964237213134765625f * _4033, 0.1599999964237213134765625f * ((_4037 - (_4038 * _4038)) + 1.0f), _4030 * 0.07999999821186065673828125f);
              float3 _4054 = float3(0.1599999964237213134765625f * ((_4030 * 0.5f) - _4028), 0.1599999964237213134765625f * ((_4033 - (_4034 * _4034)) + 1.0f), 0.1599999964237213134765625f * _4037) + _4053;
              float3 _4060 = ((_4050 / _4051) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
              float3 _4062 = ((_4053 / _4054) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
              float2 _4064 = _4005 * _54_m10.xy;
              float _4065 = _4060.x;
              float _4066 = _4062.x;
              float _4069 = _4060.y;
              float _4072 = _4060.z;
              float _4075 = _4062.y;
              float _4082 = _4062.z;
              float _4089 = _4051.x;
              float _4090 = _4054.x;
              float _4092 = _4051.y;
              float _4094 = _4051.z;
              float _4096 = _4054.y;
              float _4100 = _4054.z;
              float _4158 = (((((((_4089 * _4090) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4065, _4066), _388).xy, _3992)) + ((_4092 * _4090) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4069, _4066), _388).xy, _3992))) + ((_4094 * _4090) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4072, _4066), _388).xy, _3992))) + ((_4089 * _4096) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4065, _4075), _388).xy, _3992))) + ((_4092 * _4096) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4069, _4075), _388).xy, _3992))) + ((_4094 * _4096) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4072, _4075), _388).xy, _3992))) + ((_4089 * _4100) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4065, _4082), _388).xy, _3992));
              float4 _4181 = asfloat(uint4(_58.Load(_3875 * 4 + 0), _58.Load(_3878 * 4 + 0), _58.Load(_3881 * 4 + 0), _58.Load(_3884 * 4 + 0)));
              float _4182 = _4181.w;
              float2 _4184 = min(_3981, 1.0f.xx - _3981);
              _4197 = (_3866 >= 0) ? lerp(1.0f, (any(bool3(_3988.x || _3989.x, _3988.y || _3989.y, _3988.z || _3989.z)) || ((asuint(_3992) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4158 + ((_4092 * _4100) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4069, _4082), _388).xy, _3992))) + ((_4094 * _4100) * _56.SampleCmpLevelZero(_27, float3(_4064 + float2(_4072, _4082), _388).xy, _3992))), _3665 ? min(_4182, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4181.z - _3961.w) * 0.25f, min(_4184.x, _4184.y)))) : _4182) : 1.0f;
            } else {
              _4197 = 1.0f;
            }
            _4198 = _4197;
            break;
          } while (false);
          _4918 = _2244 * _4198;
          _4919 = 0.0f.xxx;
        }
        _4920 = _4918;
        _4921 = _4919;
        break;
      } while (false);
      _2269 = _4920;
      _2272 = _2271 + _4921;
    }
    _2241 = _2240 + _2271;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x108F1A09:
  float3 _4931 = ((((float3(_1206, _1211, _1216) * _744) * lerp(1.0f, _549, _45_m4)) * _18_m22.x) + ((_1526 * ((_748 * _762.x) + (clamp(50.0f * _748.y, 0.0f, 1.0f) * _762.y).xxx)) * 1.0f)) + lerp((_2215.xyz + (_2240 * _2243)).xyz, (_690.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _573) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  */
  float3 _4931 = ((((float3(_1206, _1211, _1216) * (_744 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _549, _45_m4)) * _18_m22.x) + (((_1526 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * ((_748 * _762.x) + (clamp(50.0f * _748.y, 0.0f, 1.0f) * _762.y).xxx)) * 1.0f)) + lerp((_2215.xyz + ((_2240 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2243)).xyz, (_690.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _573) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  // RenoDX code end
  float4 _4932 = float4(_4931.x, _4931.y, _4931.z, _389.w);
  _4932.w = _573;
  float _4949 = _457.y * _18_m46.w;
  float _4954 = max(0.00999999977648258209228515625f, _4949 + _18_m47.w);
  float3 _4968 = exp(_18_m45.xyz * ((-max(0.0f, (_495 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4954)) / _4954) * exp(_4949 + _18_m48.w))));
  float _4971 = dot(_631, _18_m44.xyz);
  float _4977 = _18_m45.w * _18_m45.w;
  float _4981 = (1.0f + _4977) - ((2.0f * _18_m45.w) * _4971);
  float3 _5311;
  float _5312;
  if (_18_m55.z > 0.0f) {
    uint3 _5139 = (uint3(int3(int(_798.x), int(_798.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5140 = _5139.y;
    uint _5141 = _5139.z;
    uint _5144 = _5139.x + (_5140 * _5141);
    uint _5146 = _5140 + (_5141 * _5144);
    uint _5148 = _5141 + (_5144 * _5146);
    uint _5150 = _5144 + (_5146 * _5148);
    float _5172 = dot(_631, -_16_m0[2].xyz);
    float3 _5182 = _457 - _16_m11.xyz;
    float _5184 = (_18_m55.w * ((_5172 > 5.9604644775390625e-08f) ? (1.0f / _5172) : 0.0f)) * (1.0f / _495);
    float _5185 = _5182.y;
    float _5186 = _5184 * _5185;
    float _5188 = _16_m11.y + _5186;
    float _5189 = _5185 - _5186;
    float _5191 = (1.0f - _5184) * _495;
    float _5205 = max(-127.0f, _18_m49.z * _5189);
    float _5229 = max(-127.0f, _18_m52.x * _5189);
    float _5240 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5188 - _18_m49.x)))) * ((abs(_5205) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5205)) / _5205) : (0.693147182464599609375f - (0.2402265071868896484375f * _5205)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5188 - _18_m52.z)))) * ((abs(_5229) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5229)) / _5229) : (0.693147182464599609375f - (0.2402265071868896484375f * _5229))));
    float _5262 = clamp((_495 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5265 = clamp((max(clamp(exp2(-(_5240 * _5191)), 0.0f, 1.0f), _18_m51.w) + clamp((_495 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5262, 0.0f, 1.0f);
    float4 _5305 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _71.SampleLevel(_24, float3((_1235 + ((((float3(uint3(_5150, _5146 + (_5148 * _5150), _390) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_799 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_799 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5311 = _5305.xyz + (((_18_m51.xyz * (1.0f - _5265)) + (((_18_m54.xyz * pow(clamp(dot(_494, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5240 * max(_5191 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5262))) * _5305.w);
    _5312 = _5305.w * _5265;
  } else {
    float3 _5011 = _457 - _16_m11.xyz;
    float _5013 = _5011.y;
    float _5027 = max(-127.0f, _18_m49.z * _5013);
    float _5051 = max(-127.0f, _18_m52.x * _5013);
    float _5062 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5027) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5027)) / _5027) : (0.693147182464599609375f - (0.2402265071868896484375f * _5027)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5051) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5051)) / _5051) : (0.693147182464599609375f - (0.2402265071868896484375f * _5051))));
    float _5084 = clamp((_495 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5087 = clamp((max(clamp(exp2(-(_5062 * _495)), 0.0f, 1.0f), _18_m51.w) + clamp((_495 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5084, 0.0f, 1.0f);
    _5311 = (_18_m51.xyz * (1.0f - _5087)) + (((_18_m54.xyz * pow(clamp(dot(_494, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5062 * max(_495 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5084));
    _5312 = _5087;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x108F1A09:
  float3 _5318 = ((_4932.xyz * (_4968 * _5312)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4971 * _4971)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4977) / max((12.56637096405029296875f * _4981) * sqrt(_4981), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4968)) * _5312) + _5311)).xyz;
  */
  float3 _5318 = ((_4932.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4968 * _5312)) : (_4968 * _5312))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4971 * _4971)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4977) / max((12.56637096405029296875f * _4981) * sqrt(_4981), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4968)) * _5312 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5311 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5328 = lerp(dot(_5318, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5318, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5338 = min(lerp(((sqrt(sqrt(abs(_716 * 0.5f))) * float2(int2(sign(_716)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _703.xx), 1.0f.xx);
  float4 _5339 = float4(_5338.x, _5338.y, _389.z, _389.w);
  _5339.z = float(clamp(max(dot(_5328.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _573, _573) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5339.w = lerp(0.0f, 0.699999988079071044921875f, _703);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x108F1A09:
  _13 = float4(_5328.x, _5328.y, _5328.z, _4932.w);
  */
  float3 renodx_output_color = float3(_5328.x, _5328.y, _5328.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4932.w);
  // RenoDX code end
  _14 = _5339;
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

#include "../shared.h"

// Ported from the native 0x75F37712 Vulkan dump.
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
  float2 _416 = gl_FragCoord.xy * _18_m0.zw;
  float2 _419 = (_416 * 2.0f) - 1.0f.xx;
  float4 _422 = float4(_419, gl_FragCoord.z, 1.0f);
  _422.y = -_419.y;
  float4 _425 = mul(_16_m6, _422);
  float3 _429 = _425.xyz / _425.w.xxx;
  float4 _433 = float4(_429, 1.0f);
  float _436 = abs(mul(_16_m0, _433).z);
  float _440 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _462;
  do {
    if (_18_m4.w == 0.0f) {
      _462 = _16_m11.xyz - _429;
      break;
    } else {
      _462 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _463 = dot(_462, _462);
  float _465 = rsqrt(max(_463, 9.9999999392252902907785028219223e-09f));
  float3 _466 = _462 * _465;
  float _467 = _463 * _465;
  float4 _500 = _36.SampleBias(_37, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
  float _502 = _500.w;
  float4 _505 = _38.SampleBias(_39, (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw, _45_m13 + _18_m16);
  float2 _508 = (_505.xy * 2.0f.xx) - 1.0f.xx;
  float2 _509 = abs(_508);
  bool2 _510 = bool2(_509.x < 0.01200000010430812835693359375f.xx.x, _509.y < 0.01200000010430812835693359375f.xx.y);
  float2 _511 = float2(_510.x ? 0.0f.xx.x : _508.x, _510.y ? 0.0f.xx.y : _508.y);
  float2 _512 = _511 * _45_m0;
  float _521 = _505.w;
  float3 _533 = lerp(clamp((_500.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx);
  float _539 = lerp(_502, _521, _45_m6) * _45_m32.w;
  float _545 = lerp(_539, _539 * _8.x, _45_m56);
  float _550 = lerp(_45_m2, _45_m3, _505.z);
  float _560 = lerp(_502, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
  float3 _572 = ((_7.xyz * _512.x) + ((cross(_6, float4(_7.xyz, _440).xyz) * _440) * _512.y)) + (_6 * (max(0.00048828125f, sqrt(clamp(1.0f - dot(_511, _511), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _576 = _572 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_572, _572)));
  float _602 = dot(_576, _466);
  float3 _603 = -_466;
  float4 _623 = _41.SampleBias(_42, (_4 * _45_m55.xy) + _45_m55.zw, _18_m16);
  float2 _631 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_603, _576, _45_m48) * lerp(_45_m49, _45_m49 / max(gl_FragCoord.z * _602, 0.5f), _45_m50)).xy, ((_623 * 2.0f) - 1.0f.xxxx).xy * _45_m47, _45_m46.xx).xy;
  float2 _632 = _416 + _631;
  float2 _634 = _416 + (_631 * 0.25f);
  float4 _662 = _40.SampleBias(_43, lerp(lerp(_416, _634, step(_436, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _634, _18_m16).x) + _18_m2.w)).xx), _632, step(_436, 1.0f / ((_18_m2.z * _29.SampleBias(_23, _632, _18_m16).x) + _18_m2.w)).xx), _18_m16);
  float _680 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _693 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _693.y = -_693.y;
  float _719 = 0.07999999821186065673828125f * _45_m1;
  float3 _720 = _533 * _560;
  float3 _721 = _533 - _720;
  float3 _725 = (_719 - (_719 * _560)).xxx + _720;
  float4 _728 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _550) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _729 = _728.x;
  float2 _739 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_729 * _729, exp2((-9.27999973297119140625f) * max(0.0f, _602))) * _729) + _728.y)) + _728.zw;
  uint2 _775;
  float _776;
  if (_18_m24.y == 1.0f) {
    float4 _756 = mul(_18_m138, _433);
    float4 _759 = _756;
    _759.y = -_756.y;
    float4 _762 = _759 * (1.0f / _756.w);
    _775 = uint2(clamp(((_762.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _776 = 1.0f / ((_18_m2.z * _762.z) + _18_m2.w);
  } else {
    _775 = uint2(gl_FragCoord.xy);
    _776 = _436;
  }
  float3 _778 = _429 + (_576 * 0.25f);
  float3 _788 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _797 = _778 - (_18_m108.xyz + (_788 * (-_18_m110.w)));
  float _812 = max(min(max((max(abs(_797.x), abs(_797.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_797.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1114;
  float4 _1115;
  float4 _1116;
  float _1117;
  float _1118;
  if ((_18_m108.w != 0.0f) && (_812 < 1.0f)) {
    float3 _825 = _778 - (_18_m108.xyz + (_788 * (-_18_m110.y)));
    float _839 = max(clamp((max(abs(_825.x), abs(_825.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_825.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _915;
    float4 _916;
    float4 _917;
    float4 _918;
    if (_839 < 1.0f) {
      float3 _848 = ((_778 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _850 = _848 - floor(_848);
      float4 _854 = _65.SampleLevel(_25, _850, 0.0f);
      float _855 = 1.0f - _839;
      float _859 = _18_m109.y * 0.5f;
      float _864 = _850.x;
      float _865 = clamp(_850.y, _859, 1.0f - _859) * 0.3333333432674407958984375f;
      float _866 = _850.z;
      float4 _869 = _66.SampleLevel(_24, float3(_864, _865, _866), 0.0f);
      float _885 = _854.x;
      float _895 = _854.y;
      float _905 = _854.z;
      _915 = _812 + (_869.w * _855);
      _916 = float4(((_66.SampleLevel(_24, float3(_864, _865 + 0.666666686534881591796875f, _866), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _905, _905) * _855;
      _917 = float4(((_66.SampleLevel(_24, float3(_864, _865 + 0.3333333432674407958984375f, _866), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _895, _895) * _855;
      _918 = float4(((_869.xyz * 4.0f) - 2.0f.xxx) * _885, _885) * _855;
    } else {
      _915 = _812;
      _916 = 0.0f.xxxx;
      _917 = 0.0f.xxxx;
      _918 = 0.0f.xxxx;
    }
    float3 _924 = _778 - (_18_m108.xyz + (_788 * (-_18_m110.z)));
    float _938 = max(clamp((max(abs(_924.x), abs(_924.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_924.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1018;
    float4 _1019;
    float4 _1020;
    float4 _1021;
    if (_938 < 1.0f) {
      float3 _947 = ((_778 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _949 = _947 - floor(_947);
      float4 _953 = _67.SampleLevel(_25, _949, 0.0f);
      float _955 = _839 * (1.0f - _938);
      float _959 = _18_m109.y * 0.5f;
      float _964 = _949.x;
      float _965 = clamp(_949.y, _959, 1.0f - _959) * 0.3333333432674407958984375f;
      float _966 = _949.z;
      float4 _969 = _68.SampleLevel(_24, float3(_964, _965, _966), 0.0f);
      float _985 = _953.x;
      float _996 = _953.y;
      float _1007 = _953.z;
      _1018 = _915 + (_969.w * _955);
      _1019 = _916 + (float4(((_68.SampleLevel(_24, float3(_964, _965 + 0.666666686534881591796875f, _966), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1007, _1007) * _955);
      _1020 = _917 + (float4(((_68.SampleLevel(_24, float3(_964, _965 + 0.3333333432674407958984375f, _966), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _996, _996) * _955);
      _1021 = _918 + (float4(((_969.xyz * 4.0f) - 2.0f.xxx) * _985, _985) * _955);
    } else {
      _1018 = _915;
      _1019 = _916;
      _1020 = _917;
      _1021 = _918;
    }
    float4 _1104;
    float4 _1105;
    float4 _1106;
    float _1107;
    if (_938 > 0.0f) {
      float3 _1030 = ((_778 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1033 = _18_m109.xyz * 0.5f;
      float3 _1035 = clamp(_1030 - floor(_1030), _1033, 1.0f.xxx - _1033);
      float4 _1039 = _69.SampleLevel(_25, _1035, 0.0f);
      float _1041 = _938 * (1.0f - _812);
      float _1045 = _18_m109.y * 0.5f;
      float _1050 = _1035.x;
      float _1051 = clamp(_1035.y, _1045, 1.0f - _1045) * 0.3333333432674407958984375f;
      float _1052 = _1035.z;
      float4 _1055 = _70.SampleLevel(_24, float3(_1050, _1051, _1052), 0.0f);
      float _1071 = _1039.x;
      float _1082 = _1039.y;
      float _1093 = _1039.z;
      _1104 = _1019 + (float4(((_70.SampleLevel(_24, float3(_1050, _1051 + 0.666666686534881591796875f, _1052), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1093, _1093) * _1041);
      _1105 = _1020 + (float4(((_70.SampleLevel(_24, float3(_1050, _1051 + 0.3333333432674407958984375f, _1052), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1082, _1082) * _1041);
      _1106 = _1021 + (float4(((_1055.xyz * 4.0f) - 2.0f.xxx) * _1071, _1071) * _1041);
      _1107 = _1018 + (_1055.w * _1041);
    } else {
      _1104 = _1019;
      _1105 = _1020;
      _1106 = _1021;
      _1107 = _1018;
    }
    float _1110 = clamp((_1107 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1114 = _1104;
    _1115 = _1105;
    _1116 = _1106;
    _1117 = _1110 - _812;
    _1118 = (_1110 + _812) * 0.5f;
  } else {
    _1114 = 0.0f.xxxx;
    _1115 = 0.0f.xxxx;
    _1116 = 0.0f.xxxx;
    _1117 = 0.0f;
    _1118 = 1.0f;
  }
  float4 _1138 = _1116 + float4(_18_m111.x * _1118, (_18_m111.y * _1118) + ((_18_m111.w * _1117) * 0.5f), _18_m111.z * _1118, (_18_m111.w * _1118) + ((_18_m111.y * _1117) * 0.375f));
  float4 _1158 = _1115 + float4(_18_m112.x * _1118, (_18_m112.y * _1118) + ((_18_m112.w * _1117) * 0.5f), _18_m112.z * _1118, (_18_m112.w * _1118) + ((_18_m112.y * _1117) * 0.375f));
  float4 _1178 = _1114 + float4(_18_m113.x * _1118, (_18_m113.y * _1118) + ((_18_m113.w * _1117) * 0.5f), _18_m113.z * _1118, (_18_m113.w * _1118) + ((_18_m113.y * _1117) * 0.375f));
  float _1183 = max(0.0f, dot(_1138.xyz, _576) + _1138.w);
  float _1188 = max(0.0f, dot(_1158.xyz, _576) + _1158.w);
  float _1193 = max(0.0f, dot(_1178.xyz, _576) + _1178.w);
  float3 _1203 = reflect(_603, _576);
  float _1211 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_550, 0.001000000047497451305389404296875f))));
  float2 _1212 = float2(_775);
  float2 _1216 = floor(_1212 * _48_m0.w);
  float _1233 = floor(_776 - _48_m2.y);
  float _1237 = clamp(_1233, 0.0f, _48_m1.x - 1.0f);
  uint _1247 = (_1233 <= _1237) ? (_35.Load(uint(_18_m21.z + int(_1216.x + (_1216.y * _48_m0.x))) * 4 + 0) & _35.Load(uint(_18_m21.w + int(_1237)) * 4 + 0)) : 0u;
  float _1250 = dot(float4(_1183, _1188, _1193, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1252;
  float _1255;
  uint _1257;
  _1252 = 0.0f.xxx;
  _1255 = 1.0f;
  _1257 = _1247;
  uint _1258;
  float3 _1253;
  float _1256;
  bool _1260;
  [loop] for (;;) {
    bool _1259 = _1257 != 0u;
    _1260 = _1255 > 0.00999999977648258209228515625f;
    if (_1259 && _1260) {
      uint _1264 = firstbitlow(_1257);
      _1258 = _1257 ^ (1u << (_1264 & 31u));
      float3 _1284 = float3(dot(_48_m4[_1264]._m2, _433), dot(_48_m4[_1264]._m3, _433), dot(_48_m4[_1264]._m4, _433));
      float3 _1285 = abs(_1284);
      if (all(bool3(_1285.x <= _48_m4[_1264]._m1.xyz.x, _1285.y <= _48_m4[_1264]._m1.xyz.y, _1285.z <= _48_m4[_1264]._m1.xyz.z))) {
        float3 _1294 = _48_m4[_1264]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1296 = _1285 * 0.100000001490116119384765625f;
        float3 _1297 = _1296 * _1296;
        float3 _1300 = (_48_m4[_1264]._m1.xyz - _1285) * _48_m4[_1264]._m5.xyz;
        float3 _1348;
        [branch] if (_48_m4[_1264]._m6.x == 1.0f) {
          float3 _1333 = float3(dot(_48_m4[_1264]._m2.xyz, _1203), dot(_48_m4[_1264]._m3.xyz, _1203), dot(_48_m4[_1264]._m4.xyz, _1203));
          float3 _1335 = (_48_m4[_1264]._m1.xyz - _1284) / _1333;
          float3 _1338 = ((-_48_m4[_1264]._m1.xyz) - _1284) / _1333;
          bool3 _1339 = bool3(_1333.x > 0.0f.xxx.x, _1333.y > 0.0f.xxx.y, _1333.z > 0.0f.xxx.z);
          float3 _1340 = float3(_1339.x ? _1335.x : _1338.x, _1339.y ? _1335.y : _1338.y, _1339.z ? _1335.z : _1338.z);
          _1348 = _1284 + (_1333 * min(min(_1340.x, _1340.y), _1340.z));
        }
        else {
          _1348 = _1203;
        }
        float3 _1349 = normalize(_1348);
        float3 _1352 = float3(int3(sign(_1349)));
        float3 _1355 = _1349 / dot(_1349, _1352).xxx;
        float3 _1369;
        if (_1355.z < 0.0f) {
          float3 _1360 = abs(_1355);
          float2 _1367 = _1352.xy * float2(1.0f - _1360.y, 1.0f - _1360.x);
          _1369 = float3(_1367.x, _1367.y, _1355.z);
        } else {
          _1369 = _1355;
        }
        float _1394 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1264]._m0, float4(_576, 1.0f))));
        float _1407 = clamp((min(_1300.x, min(_1300.y, _1300.z)) * _48_m4[_1264]._m6.y) + ((((((_1294 * _1294).x - ((_1297.x + _1297.y) + _1297.z)) * _48_m4[_1264]._m5.x) * _48_m4[_1264]._m5.x) * (1.0f - _48_m4[_1264]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1264]._m6.w;
        _1253 = _1252 + ((((_33.SampleLevel(_26, float3((((_1369.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1264]._m1.w), _1211).xyz * _48_m4[_1264]._m5.w) * ((((((clamp(abs(_1250 / _1394), 0.0f, 1.0f) * 2.0f) + _1250) / (2.0f + _1394)) - 1.0f) * _18_m23.w) + 1.0f)) * _1407) * _1255);
        _1256 = _1255 * (1.0f - _1407);
      } else {
        _1253 = _1252;
        _1256 = _1255;
      }
      _1252 = _1253;
      _1255 = _1256;
      _1257 = _1258;
      continue;
    } else {
      break;
    }
  }
  float3 _1476;
  if (_1260) {
    float3 _1415 = normalize(_1203);
    float3 _1418 = float3(int3(sign(_1415)));
    float3 _1421 = _1415 / dot(_1415, _1418).xxx;
    float3 _1435;
    if (_1421.z < 0.0f) {
      float3 _1426 = abs(_1421);
      float2 _1433 = _1418.xy * float2(1.0f - _1426.y, 1.0f - _1426.x);
      _1435 = float3(_1433.x, _1433.y, _1421.z);
    } else {
      _1435 = _1421;
    }
    float _1462 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_576, 1.0f))));
    _1476 = _1252 + ((_33.SampleLevel(_26, float3((((_1435.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1211).xyz * ((((((clamp(abs(_1250 / _1462), 0.0f, 1.0f) * 2.0f) + _1250) / (2.0f + _1462)) - 1.0f) * _18_m23.w) + 1.0f)) * _1255);
  } else {
    _1476 = _1252;
  }
  float3 _1482 = (_1476 * _18_m23.z) * _18_m22.y;
  float3 _1503;
  [branch] if (_18_m23.y != 0.0f) {
    float4 _1497 = _31.SampleBias(_24, _416, _18_m16);
    float _1498 = _1497.x;
    _1503 = (_30.SampleBias(_24, _416, _18_m16).xyz * _1498) + (_1482 * (1.0f - _1498));
  }
  else {
    _1503 = _1482;
  }
  float4 _2192;
  do {
    [branch] if (_52_m4 == 0) {
      _2192 = 0.0f.xxxx;
      break;
    }
    float2 _2047;
    do {
      if (_54_m7.w >= 0.9900000095367431640625f) {
        _2047 = float2(_54_m7.z, 1.0f);
        break;
      }
      int _1526 = int(_54_m7.x);
      bool3 _1528 = (_1526 == 2).xxx;
      float3 _1536 = _429 - float3(_1528.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1528.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1528.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
      float _1547 = max(clamp((_54_m6.w - dot(_1536, _1536)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
      float _1764;
      bool _1765;
      if (_1547 > 0.0f) {
        float _1762;
        bool _1763;
        if (_1526 > 0) {
          float3 _1554 = _429 - _54_m1[0].xyz;
          float3 _1558 = _429 - _54_m1[1].xyz;
          float3 _1562 = _429 - _54_m1[2].xyz;
          float3 _1566 = _429 - _54_m1[3].xyz;
          float4 _1571 = float4(dot(_1554, _1554), dot(_1558, _1558), dot(_1562, _1562), dot(_1566, _1566));
          float4 _1580 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
          float4 _1582 = float4(bool4(_1571.x < _1580.x, _1571.y < _1580.y, _1571.z < _1580.z, _1571.w < _1580.w));
          float3 _1586 = clamp(_1582.yzw - _1582.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1590 = clamp(4.0f - dot(float4(_1582.x, _1586.x, _1586.y, _1586.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1592 = clamp(_1590 + 1.0f, 0.0f, 3.0f);
          uint _1593 = uint(_1590);
          uint _1601 = uint(_1592);
          float _1607 = dot(_1571, _366[_1601]) / _54_m1[_1601].w;
          float _1624;
          if (((_1592 > _1590) && (_1607 >= 0.0f)) && (_1607 <= 1.0f)) {
            _1624 = _1590 + step(frac(52.98291778564453125f * frac(dot(_1212 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1571, _366[_1593]) / _54_m1[_1593].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1624 = _1590;
          }
          float _1625 = clamp(_1624, 0.0f, 4.0f);
          float4 _1629 = mul(_54_m0[uint(_1625)], _433);
          float _1632 = _1629.z;
          float4 _1633 = float4(_1629.xy, _1632, _1625);
          float3 _1634 = _1633.xyz;
          bool3 _1635 = bool3(_1634.x <= 0.0f.xxx.x, _1634.y <= 0.0f.xxx.y, _1634.z <= 0.0f.xxx.z);
          bool3 _1636 = bool3(_1634.x >= 1.0f.xxx.x, _1634.y >= 1.0f.xxx.y, _1634.z >= 1.0f.xxx.z);
          bool _1642 = any(bool3(_1635.x || _1636.x, _1635.y || _1636.y, _1635.z || _1636.z)) || ((asuint(_1632) & 2147483647u) > 2139095040u);
          int _1643 = int(_1625);
          float2 _1660 = float4(_54_m3[_1643].xy + (_1633.xy * _54_m3[_1643].zw), _1632, _1625).xy * _54_m4.zw;
          float2 _1662 = floor(_1660 + 0.5f.xx);
          float2 _1663 = _1660 - _1662;
          float _1664 = _1663.x;
          float _1665 = _1664 + 0.5f;
          float _1667 = (_1665 * _1665) * 0.5f;
          float _1670 = min(_1664, 0.0f);
          float _1674 = max(_1664, 0.0f);
          float4 _1678 = float4(_1667 - _1664, (1.0f - _1664) - (_1670 * _1670), (_1664 + 1.0f) - (_1674 * _1674), _1667) * 0.44444000720977783203125f;
          float _1679 = _1663.y;
          float _1680 = _1679 + 0.5f;
          float _1682 = (_1680 * _1680) * 0.5f;
          float _1685 = min(_1679, 0.0f);
          float _1689 = max(_1679, 0.0f);
          float4 _1693 = float4(_1682 - _1679, (1.0f - _1679) - (_1685 * _1685), (_1679 + 1.0f) - (_1689 * _1689), _1682) * 0.44444000720977783203125f;
          float2 _1695 = _1678.yw;
          float2 _1696 = _1678.xz + _1695;
          float2 _1698 = _1693.yw;
          float2 _1699 = _1693.xz + _1698;
          float2 _1705 = ((_1695 / _1696) + float2(-1.5f, 0.5f)) * _54_m4.xx;
          float2 _1707 = ((_1698 / _1699) + float2(-1.5f, 0.5f)) * _54_m4.yy;
          float2 _1709 = _1662 * _54_m4.xy;
          float _1710 = _1705.x;
          float _1711 = _1707.x;
          float _1714 = _1705.y;
          float _1717 = _1707.y;
          float _1722 = _1696.x;
          float _1723 = _1699.x;
          float _1725 = _1696.y;
          float _1727 = _1699.y;
          _1762 = _1642 ? 1.0f : (((((_1722 * _1723) * _55.SampleCmpLevelZero(_27, float3(_1709 + float2(_1710, _1711), _388).xy, _1632)) + ((_1725 * _1723) * _55.SampleCmpLevelZero(_27, float3(_1709 + float2(_1714, _1711), _388).xy, _1632))) + ((_1722 * _1727) * _55.SampleCmpLevelZero(_27, float3(_1709 + float2(_1710, _1717), _388).xy, _1632))) + ((_1725 * _1727) * _55.SampleCmpLevelZero(_27, float3(_1709 + float2(_1714, _1717), _388).xy, _1632)));
          _1763 = _1642;
        } else {
          _1762 = 1.0f;
          _1763 = false;
        }
        _1764 = _1762;
        _1765 = _1763;
      } else {
        _1764 = 1.0f;
        _1765 = false;
      }
      float _1965;
      float _1966;
      if ((_1547 < 1.0f) || (_54_m8.x > 0.5f)) {
        float _1776 = 1.0f - clamp(dot(_576, _50_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1793 = float4((_429 - (_50_m0.xyz * (_1776 * _54_m22.x))) + (_576 * (_1776 * _54_m22.y)), 1.0f);
        float4 _1794 = mul(_54_m21, _1793);
        float2 _1795 = _1794.xy;
        float _1963;
        if (all(bool2(_1795.x > 0.0f.xx.x, _1795.y > 0.0f.xx.y)) && all(bool2(_1795.x < 1.0f.xx.x, _1795.y < 1.0f.xx.y))) {
          uint _1814 = clamp(uint((floor(_1794.y * _54_m23.z) + _1794.x) * _54_m23.y), 0u, 127u);
          uint _1818 = asuint(_54_m25[_1814].x);
          float2 _1819 = spvUnpackHalf2x16(_1818);
          float _1820 = _1819.x;
          float _1962;
          if (_1820 >= 0.0f) {
            float4x4 _1829 = _54_m20;
            _1829[0].w = _54_m25[_1814].y;
            _1829[1].w = _54_m25[_1814].z;
            _1829[2].w = _54_m25[_1814].w;
            float4 _1836 = mul(_1829, _1793);
            float3 _1837 = _1836.xyz;
            float _1961;
            if (all(bool3(_1837.x > 0.0f.xxx.x, _1837.y > 0.0f.xxx.y, _1837.z > 0.0f.xxx.z)) && all(bool3(_1837.x < 1.0f.xxx.x, _1837.y < 1.0f.xxx.y, _1837.z < 1.0f.xxx.z))) {
              float _1854 = _1836.z;
              float2 _1860 = float4((_1836.xy * _54_m22.zw) + float2(_1820, spvUnpackHalf2x16(_1818 >> 16u).x), _1854, 1.0f).xy * _54_m24.zw;
              float2 _1862 = floor(_1860 + 0.5f.xx);
              float2 _1863 = _1860 - _1862;
              float _1864 = _1863.x;
              float _1865 = _1864 + 0.5f;
              float _1867 = (_1865 * _1865) * 0.5f;
              float _1870 = min(_1864, 0.0f);
              float _1874 = max(_1864, 0.0f);
              float4 _1878 = float4(_1867 - _1864, (1.0f - _1864) - (_1870 * _1870), (_1864 + 1.0f) - (_1874 * _1874), _1867) * 0.44444000720977783203125f;
              float _1879 = _1863.y;
              float _1880 = _1879 + 0.5f;
              float _1882 = (_1880 * _1880) * 0.5f;
              float _1885 = min(_1879, 0.0f);
              float _1889 = max(_1879, 0.0f);
              float4 _1893 = float4(_1882 - _1879, (1.0f - _1879) - (_1885 * _1885), (_1879 + 1.0f) - (_1889 * _1889), _1882) * 0.44444000720977783203125f;
              float2 _1895 = _1878.yw;
              float2 _1896 = _1878.xz + _1895;
              float2 _1898 = _1893.yw;
              float2 _1899 = _1893.xz + _1898;
              float2 _1905 = ((_1895 / _1896) + float2(-1.5f, 0.5f)) * _54_m24.xx;
              float2 _1907 = ((_1898 / _1899) + float2(-1.5f, 0.5f)) * _54_m24.yy;
              float2 _1909 = _1862 * _54_m24.xy;
              float _1910 = _1905.x;
              float _1911 = _1907.x;
              float _1914 = _1905.y;
              float _1917 = _1907.y;
              float _1922 = _1896.x;
              float _1923 = _1899.x;
              float _1925 = _1896.y;
              float _1927 = _1899.y;
              _1961 = ((((_1922 * _1923) * _60.SampleCmpLevelZero(_27, float3(_1909 + float2(_1910, _1911), _388).xy, _1854)) + ((_1925 * _1923) * _60.SampleCmpLevelZero(_27, float3(_1909 + float2(_1914, _1911), _388).xy, _1854))) + ((_1922 * _1927) * _60.SampleCmpLevelZero(_27, float3(_1909 + float2(_1910, _1917), _388).xy, _1854))) + ((_1925 * _1927) * _60.SampleCmpLevelZero(_27, float3(_1909 + float2(_1914, _1917), _388).xy, _1854));
            } else {
              _1961 = 1.0f;
            }
            _1962 = _1961;
          } else {
            _1962 = 1.0f;
          }
          _1963 = _1962;
        } else {
          _1963 = 1.0f;
        }
        _1965 = _1765 ? _1963 : _1764;
        _1966 = _1963;
      } else {
        _1965 = _1764;
        _1966 = 1.0f;
      }
      float _1969 = lerp(lerp(_1966, _1965, _1547), min(_1966, _1965), _54_m8.x);
      float _2042;
      if (_1969 > 0.001000000047497451305389404296875f) {
        float3 _2004 = _429 - _18_m65.xyz;
        float2 _2009 = (_2004 + (_18_m68.xyz * _2004.y)).xz * _18_m66.z;
        float2 _2010 = _18_m67.xy * _18_m77.w;
        float3 _2017 = _429 - _18_m69.xyz;
        float2 _2025 = _18_m69.w.xx;
        float4 _2032 = _59.SampleLevel(_25, lerp(_2009 * _18_m67.w, (_2017 + (_18_m68.xyz * _2017.y)).xz * _18_m70.x, _2025) + lerp(_2010, _18_m70.yz * _18_m77.w, _2025), 0.0f);
        _2042 = _1969 * lerp(1.0f, lerp(_59.SampleLevel(_25, _2009 + _2010, 0.0f).x, lerp(_2032.x, _2032.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2004.xz))), _18_m67.z);
      } else {
        _2042 = _1969;
      }
      _2047 = float2(lerp(_2042, _54_m7.z, _54_m7.w), _2042);
      break;
    } while (false);
    float _2052 = lerp(1.0f, min(1.0f, _2047.x), _54_m6.x);
    float4 _2191;
    if (_2052 > 0.001000000047497451305389404296875f) {
      float3 _2062 = -_50_m0.xyz;
      float _2067 = dot(_2062, _1203);
      float3 _2069 = _1203 - (_2062 * _2067);
      bool3 _2071 = (_2067 < _50_m4.z).xxx;
      float3 _2079 = normalize((_2062 * _50_m4.z) + ((_2069 * rsqrt(max(6.103515625e-05f, dot(_2069, _2069)))) * _50_m4.y));
      float3 _2080 = float3(_2071.x ? _2079.x : _1203.x, _2071.y ? _2079.y : _1203.y, _2071.z ? _2079.z : _1203.z);
      float3 _2084 = _2080 + _466;
      float3 _2088 = _2084 * rsqrt(max(6.103515625e-05f, dot(_2084, _2084)));
      float _2089 = clamp(dot(_2080, _576), 0.0f, 1.0f);
      float _2091 = clamp(dot(_576, _2088), 0.0f, 1.0f);
      float _2094 = clamp(_602, 0.0f, 1.0f);
      float _2095 = _550 * _550;
      float _2096 = _2095 * _2095;
      float _2117 = (((_2091 * _2096) - _2091) * _2091) + 1.0f;
      float _2120 = 1.0f - clamp(dot(_466, _2088), 0.0f, 1.0f);
      float _2121 = _2120 * _2120;
      float _2123 = (_2120 * _2121) * _2121;
      float _2147 = 1.0f - _550;
      float _2154 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2147 * (1.04997003078460693359375f + (_2147 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2147))))));
      float _2155 = 1.0f - _2154;
      float3 _2158 = _725 + ((1.0f.xxx - _725) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x75F37712:
      float3 _2177 = (clamp(clamp((min(((_725 * (1.0f - _2123)) + _2123.xxx) * ((_2096 / (_2117 * _2117)) * (0.5f / (((_2089 * sqrt(((((-_2094) * _2096) + _2094) * _2094) + _2096)) + (_2094 * sqrt(((((-_2089) * _2096) + _2089) * _2089) + _2096))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2158 * (((_64.SampleLevel(_24, (float2(_2094, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2089, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2154) / _2155)) * _2158) / (1.0f.xxx - (_2158 * _2155)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_545, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2089) + ((_721 * 1.0f) * _2089);
      */
      float3 _2177 = (clamp((clamp((min(((_725 * (1.0f - _2123)) + _2123.xxx) * ((_2096 / (_2117 * _2117)) * (0.5f / (((_2089 * sqrt(((((-_2094) * _2096) + _2094) * _2094) + _2096)) + (_2094 * sqrt(((((-_2089) * _2096) + _2089) * _2089) + _2096))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2158 * (((_64.SampleLevel(_24, (float2(_2094, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2089, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2154) / _2155)) * _2158) / (1.0f.xxx - (_2158 * _2155)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_545, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2089) + ((_721 * 1.0f) * _2089);
      // RenoDX code end
      float3 _2178 = _2177 * _50_m1.xyz;
      float3 _2189 = lerp(_2178, _2178 * _61.SampleBias(_24, float2(_2052, 0.5f), _18_m16).xyz, (1.0f - _2052).xxx) * 1.0f;
      _2191 = float4(_2189.x, _2189.y, _2189.z, 0.0f.xxxx.w);
    } else {
      _2191 = 0.0f.xxxx;
    }
    _2192 = _2191;
    break;
  } while (false);
  float2 _2194 = floor(_1212 * 0.03125f);
  int _2202 = int((_2194.x + (_2194.y * _52_m9)) * 8.0f);
  float _2209 = floor(_776 - (_18_m3.y * _52_m15));
  float _2213 = clamp(_2209, 0.0f, _52_m11 - 1.0f);
  int _2215 = int(_2213 * 8.0f);
  float3 _2217;
  float _2220;
  _2217 = 0.0f.xxx;
  _2220 = 1.0f;
  float3 _2218;
  float _2221;
  [loop] for (int _2222 = 0; _2222 <= 7; _2217 = _2218, _2220 = _2221, _2222++) {
    uint _2243 = (_2209 <= _2213) ? (_35.Load(uint((_52_m2 + _2202) + _2222) * 4 + 0) & _35.Load(uint((_52_m3 + _2215) + _2222) * 4 + 0)) : 0u;
    uint _2244 = uint(_2222);
    float3 _2248;
    _2221 = _2220;
    _2248 = 0.0f.xxx;
    uint _2251;
    float _2246;
    float3 _2249;
    [loop] for (uint _2250 = _2243; _2250 != 0u; _2221 = _2246, _2248 = _2249, _2250 = _2251) {
      uint _2255 = firstbitlow(_2250);
      _2251 = _2250 ^ (1u << (_2255 & 31u));
      int _2261 = int((32u * _2244) + _2255) * 8;
      int _2264 = _2261 + 1;
      int _2267 = _2261 + 2;
      int _2270 = _2261 + 3;
      int _2273 = _2261 + 4;
      int _2276 = _2261 + 5;
      int _2279 = _2261 + 6;
      int _2282 = _2261 + 7;
      uint _2286 = uint(_50_m6[_2276].w);
      float _2361;
      if ((_2286 & 1u) == 1u) {
        uint _2292 = asuint(_50_m6[_2276].x);
        uint _2299 = asuint(_50_m6[_2276].y);
        uint _2306 = asuint(_50_m6[_2276].z);
        uint _2313 = asuint(_50_m6[_2279].x);
        uint _2320 = asuint(_50_m6[_2279].y);
        uint _2327 = asuint(_50_m6[_2279].z);
        float3 _2346 = abs(mul(float4(_429 - _50_m6[_2264].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2292).x, spvUnpackHalf2x16(_2306).x, spvUnpackHalf2x16(_2320).x, 0.0f), float4(spvUnpackHalf2x16(_2292 >> 16u).x, spvUnpackHalf2x16(_2306 >> 16u).x, spvUnpackHalf2x16(_2320 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2299).x, spvUnpackHalf2x16(_2313).x, spvUnpackHalf2x16(_2327).x, 0.0f), float4(spvUnpackHalf2x16(_2299 >> 16u).x, spvUnpackHalf2x16(_2313 >> 16u).x, spvUnpackHalf2x16(_2327 >> 16u).x, 0.0f))).xyz);
        float _2353 = _50_m6[_2282].x * 0.5f;
        float _2359 = 1.0f - clamp((max(max(_2346.x, _2346.y), _2346.z) - (_2353 + 0.5f)) / (0.5f - _2353), 0.0f, 1.0f);
        _2361 = _2359 * _2359;
      } else {
        _2361 = 1.0f;
      }
      uint _2365 = uint(_50_m6[_2261].w);
      bool _2368 = _50_m6[_2270].z > 0.5f;
      if ((false || (_2361 < 0.001000000047497451305389404296875f)) || ((_2365 < 4u) && _2368)) {
        _2246 = _2221;
        _2249 = _2248;
        continue;
      }
      float _4897;
      float3 _4898;
      do {
        [branch] if (_2365 >= 4u) {
          float3 _3597;
          do {
            float3 _2387 = _50_m6[_2264].xyz - _429;
            if (dot(_50_m6[_2270].xyz, _2387) > 0.0f) {
              _3597 = 0.0f.xxx;
              break;
            }
            float _2394 = dot(_2387, _2387) * _50_m6[_2264].w;
            float _2397 = clamp(1.0f - (_2394 * _2394), 0.0f, 1.0f);
            float _2398 = _2397 * _2397;
            if (_2398 <= 0.0f) {
              _3597 = 0.0f.xxx;
              break;
            }
            float3 _2436;
            float _2437;
            bool _2438;
            float3 _2466;
            float3 _2468;
            float3 _2470;
            float3 _2472;
            float3 _2402 = _50_m6[_2267].xyz * _50_m6[_2267].w;
            float3 _2403 = _50_m6[_2264].xyz - _2402;
            float3 _2404 = _50_m6[_2273].xyz * _50_m6[_2270].w;
            float3 _2407 = _50_m6[_2264].xyz + _2402;
            float2 _2417 = (float2(clamp(_550, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_602, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2421 = _77.SampleLevel(_24, _2417, 0.0f);
            float4 _2425 = _78.SampleLevel(_24, _2417, 0.0f);
            float _2820;
            do {
              _2436 = _466 - (_576 * dot(_466, _576));
              _2437 = dot(_2436, _2436);
              _2438 = _2437 > 9.9999997473787516355514526367188e-05f;
              float3 _2461;
              if (_2438) {
                _2461 = _2436 * rsqrt(_2437);
              } else {
                float _2444 = (_576.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2446 = (-1.0f) / (_2444 + _576.z);
                _2461 = float3(1.0f + (((_2444 * _2446) * _576.x) * _576.x), ((_2444 * _576.x) * _576.y) * _2446, (-_2444) * _576.x);
              }
              float3x3 _2465 = mul(float3x3(float3(_2421.x, 0.0f, _2421.z), float3(0.0f, 1.0f, 0.0f), float3(_2421.y, 0.0f, _2421.w)), float3x3(_2461, cross(_576, _2461), _576));
              _2466 = (_2403 - _2404) - _429;
              float3 _2467 = mul(_2465, _2466);
              _2468 = (_2403 + _2404) - _429;
              float3 _2469 = mul(_2465, _2468);
              _2470 = (_2407 + _2404) - _429;
              float3 _2471 = mul(_2465, _2470);
              _2472 = (_2407 - _2404) - _429;
              float3 _2473 = mul(_2465, _2472);
              float _2474 = _2467.z;
              float _2477 = _2469.z;
              float _2481 = _2471.z;
              float _2485 = _2473.z;
              int _2489 = (((int(_2474 > 0.0f) | ((_2477 > 0.0f) ? 2 : 0)) | ((_2481 > 0.0f) ? 4 : 0)) | ((_2485 > 0.0f) ? 8 : 0));
              float3 _2726;
              float3 _2727;
              float3 _2728;
              float3 _2729;
              float3 _2730;
              int _2731;
              if (_2489 == 0) {
                _2726 = _2473;
                _2727 = _2471;
                _2728 = _2469;
                _2729 = _2467;
                _2730 = 0.0f.xxx;
                _2731 = 0;
              } else {
                float3 _2720;
                float3 _2721;
                float3 _2722;
                float3 _2723;
                float3 _2724;
                int _2725;
                if (_2489 == 1) {
                  _2720 = _2473;
                  _2721 = (_2467 * (-_2485)) + (_2473 * _2474);
                  _2722 = (_2467 * (-_2477)) + (_2469 * _2474);
                  _2723 = _2467;
                  _2724 = 0.0f.xxx;
                  _2725 = 3;
                } else {
                  float3 _2706;
                  float3 _2707;
                  float3 _2708;
                  float3 _2709;
                  float3 _2710;
                  int _2711;
                  if (_2489 == 2) {
                    _2706 = _2473;
                    _2707 = (_2469 * (-_2481)) + (_2471 * _2477);
                    _2708 = _2469;
                    _2709 = (_2469 * (-_2474)) + (_2467 * _2477);
                    _2710 = 0.0f.xxx;
                    _2711 = 3;
                  } else {
                    float3 _2692;
                    float3 _2693;
                    float3 _2694;
                    float3 _2695;
                    float3 _2696;
                    int _2697;
                    if (_2489 == 3) {
                      _2692 = (_2467 * (-_2485)) + (_2473 * _2474);
                      _2693 = (_2469 * (-_2481)) + (_2471 * _2477);
                      _2694 = _2469;
                      _2695 = _2467;
                      _2696 = 0.0f.xxx;
                      _2697 = 4;
                    } else {
                      float3 _2678;
                      float3 _2679;
                      float3 _2680;
                      float3 _2681;
                      float3 _2682;
                      int _2683;
                      if (_2489 == 4) {
                        _2678 = _2473;
                        _2679 = _2471;
                        _2680 = (_2471 * (-_2477)) + (_2469 * _2481);
                        _2681 = (_2471 * (-_2485)) + (_2473 * _2481);
                        _2682 = 0.0f.xxx;
                        _2683 = 3;
                      } else {
                        float3 _2664;
                        float3 _2665;
                        float3 _2666;
                        float3 _2667;
                        float3 _2668;
                        int _2669;
                        if (_2489 == 5) {
                          _2664 = _2473;
                          _2665 = _2471;
                          _2666 = _2469;
                          _2667 = _2467;
                          _2668 = 0.0f.xxx;
                          _2669 = 0;
                        } else {
                          float3 _2658;
                          float3 _2659;
                          float3 _2660;
                          float3 _2661;
                          float3 _2662;
                          int _2663;
                          if (_2489 == 6) {
                            _2658 = (_2471 * (-_2485)) + (_2473 * _2481);
                            _2659 = _2471;
                            _2660 = _2469;
                            _2661 = (_2469 * (-_2474)) + (_2467 * _2477);
                            _2662 = 0.0f.xxx;
                            _2663 = 4;
                          } else {
                            float3 _2644;
                            float3 _2645;
                            float3 _2646;
                            float3 _2647;
                            float3 _2648;
                            int _2649;
                            if (_2489 == 7) {
                              float _2637 = -_2485;
                              _2644 = (_2471 * _2637) + (_2473 * _2481);
                              _2645 = _2471;
                              _2646 = _2469;
                              _2647 = _2467;
                              _2648 = (_2467 * _2637) + (_2473 * _2474);
                              _2649 = 5;
                            } else {
                              float3 _2631;
                              float3 _2632;
                              float3 _2633;
                              float3 _2634;
                              float3 _2635;
                              int _2636;
                              if (_2489 == 8) {
                                _2631 = _2473;
                                _2632 = _2473;
                                _2633 = (_2473 * (-_2481)) + (_2471 * _2485);
                                _2634 = (_2473 * (-_2474)) + (_2467 * _2485);
                                _2635 = 0.0f.xxx;
                                _2636 = 3;
                              } else {
                                float3 _2617;
                                float3 _2618;
                                float3 _2619;
                                float3 _2620;
                                float3 _2621;
                                int _2622;
                                if (_2489 == 9) {
                                  _2617 = _2473;
                                  _2618 = (_2473 * (-_2481)) + (_2471 * _2485);
                                  _2619 = (_2467 * (-_2477)) + (_2469 * _2474);
                                  _2620 = _2467;
                                  _2621 = 0.0f.xxx;
                                  _2622 = 4;
                                } else {
                                  float3 _2603;
                                  float3 _2604;
                                  float3 _2605;
                                  float3 _2606;
                                  float3 _2607;
                                  int _2608;
                                  if (_2489 == 10) {
                                    _2603 = _2473;
                                    _2604 = _2471;
                                    _2605 = _2469;
                                    _2606 = _2467;
                                    _2607 = 0.0f.xxx;
                                    _2608 = 0;
                                  } else {
                                    float3 _2597;
                                    float3 _2598;
                                    float3 _2599;
                                    float3 _2600;
                                    float3 _2601;
                                    int _2602;
                                    if (_2489 == 11) {
                                      float _2590 = -_2481;
                                      _2597 = (_2473 * _2590) + (_2471 * _2485);
                                      _2598 = (_2469 * _2590) + (_2471 * _2477);
                                      _2599 = _2469;
                                      _2600 = _2467;
                                      _2601 = _2473;
                                      _2602 = 5;
                                    } else {
                                      float3 _2584;
                                      float3 _2585;
                                      float3 _2586;
                                      float3 _2587;
                                      float3 _2588;
                                      int _2589;
                                      if (_2489 == 12) {
                                        _2584 = _2473;
                                        _2585 = _2471;
                                        _2586 = (_2471 * (-_2477)) + (_2469 * _2481);
                                        _2587 = (_2473 * (-_2474)) + (_2467 * _2485);
                                        _2588 = 0.0f.xxx;
                                        _2589 = 4;
                                      } else {
                                        bool _2542 = _2489 == 13;
                                        float3 _2569;
                                        float3 _2570;
                                        float3 _2571;
                                        float3 _2572;
                                        int _2573;
                                        if (_2542) {
                                          float _2562 = -_2477;
                                          _2569 = (_2471 * _2562) + (_2469 * _2481);
                                          _2570 = (_2467 * _2562) + (_2469 * _2474);
                                          _2571 = _2467;
                                          _2572 = _2473;
                                          _2573 = 5;
                                        } else {
                                          float3 _2559;
                                          float3 _2560;
                                          int _2561;
                                          if (_2489 == 14) {
                                            float _2552 = -_2474;
                                            _2559 = (_2469 * _2552) + (_2467 * _2477);
                                            _2560 = (_2473 * _2552) + (_2467 * _2485);
                                            _2561 = 5;
                                          } else {
                                            _2559 = _2467;
                                            _2560 = 0.0f.xxx;
                                            _2561 = (_2489 == 15) ? 4 : 0;
                                          }
                                          _2569 = _2471;
                                          _2570 = _2469;
                                          _2571 = _2559;
                                          _2572 = _2560;
                                          _2573 = _2561;
                                        }
                                        bool3 _2574 = _2542.xxx;
                                        _2584 = float3(_2574.x ? _2471.x : _2473.x, _2574.y ? _2471.y : _2473.y, _2574.z ? _2471.z : _2473.z);
                                        _2585 = _2569;
                                        _2586 = _2570;
                                        _2587 = _2571;
                                        _2588 = _2572;
                                        _2589 = _2573;
                                      }
                                      _2597 = _2584;
                                      _2598 = _2585;
                                      _2599 = _2586;
                                      _2600 = _2587;
                                      _2601 = _2588;
                                      _2602 = _2589;
                                    }
                                    _2603 = _2597;
                                    _2604 = _2598;
                                    _2605 = _2599;
                                    _2606 = _2600;
                                    _2607 = _2601;
                                    _2608 = _2602;
                                  }
                                  _2617 = _2603;
                                  _2618 = _2604;
                                  _2619 = _2605;
                                  _2620 = _2606;
                                  _2621 = _2607;
                                  _2622 = _2608;
                                }
                                _2631 = _2617;
                                _2632 = _2618;
                                _2633 = _2619;
                                _2634 = _2620;
                                _2635 = _2621;
                                _2636 = _2622;
                              }
                              _2644 = _2631;
                              _2645 = _2632;
                              _2646 = _2633;
                              _2647 = _2634;
                              _2648 = _2635;
                              _2649 = _2636;
                            }
                            _2658 = _2644;
                            _2659 = _2645;
                            _2660 = _2646;
                            _2661 = _2647;
                            _2662 = _2648;
                            _2663 = _2649;
                          }
                          _2664 = _2658;
                          _2665 = _2659;
                          _2666 = _2660;
                          _2667 = _2661;
                          _2668 = _2662;
                          _2669 = _2663;
                        }
                        _2678 = _2664;
                        _2679 = _2665;
                        _2680 = _2666;
                        _2681 = _2667;
                        _2682 = _2668;
                        _2683 = _2669;
                      }
                      _2692 = _2678;
                      _2693 = _2679;
                      _2694 = _2680;
                      _2695 = _2681;
                      _2696 = _2682;
                      _2697 = _2683;
                    }
                    _2706 = _2692;
                    _2707 = _2693;
                    _2708 = _2694;
                    _2709 = _2695;
                    _2710 = _2696;
                    _2711 = _2697;
                  }
                  _2720 = _2706;
                  _2721 = _2707;
                  _2722 = _2708;
                  _2723 = _2709;
                  _2724 = _2710;
                  _2725 = _2711;
                }
                _2726 = _2720;
                _2727 = _2721;
                _2728 = _2722;
                _2729 = _2723;
                _2730 = _2724;
                _2731 = _2725;
              }
              bool3 _2733 = (_2731 == 3).xxx;
              bool3 _2736 = (_2731 == 4).xxx;
              if (_2731 == 0) {
                _2820 = 0.0f;
                break;
              }
              float3 _2741 = normalize(_2729);
              float3 _2742 = normalize(_2728);
              float3 _2743 = normalize(_2727);
              float3 _2744 = normalize(float3(_2733.x ? _2729.x : _2726.x, _2733.y ? _2729.y : _2726.y, _2733.z ? _2729.z : _2726.z));
              float3 _2745 = normalize(float3(_2736.x ? _2729.x : _2730.x, _2736.y ? _2729.y : _2730.y, _2736.z ? _2729.z : _2730.z));
              float _2747 = clamp(dot(_2741, _2742), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2751 = sqrt(1.0f - (_2747 * _2747));
              float _2759 = clamp(dot(_2742, _2743), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2763 = sqrt(1.0f - (_2759 * _2759));
              float _2772 = clamp(dot(_2743, _2744), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2776 = sqrt(1.0f - (_2772 * _2772));
              float _2783 = ((cross(_2741, _2742).z * ((_2751 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2747) / _2751))) + (cross(_2742, _2743).z * ((_2763 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2759) / _2763)))) + (cross(_2743, _2744).z * ((_2776 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2772) / _2776)));
              float _2800;
              if (_2731 >= 4) {
                float _2788 = clamp(dot(_2744, _2745), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2792 = sqrt(1.0f - (_2788 * _2788));
                _2800 = _2783 + (cross(_2744, _2745).z * ((_2792 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2788) / _2792)));
              } else {
                _2800 = _2783;
              }
              float _2817;
              if (_2731 == 5) {
                float _2805 = clamp(dot(_2745, _2741), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2809 = sqrt(1.0f - (_2805 * _2805));
                _2817 = _2800 + (cross(_2745, _2741).z * ((_2809 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2805) / _2809)));
              } else {
                _2817 = _2800;
              }
              _2820 = max(_2817, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3208;
            do {
              float3 _2854;
              if (_2438) {
                _2854 = _2436 * rsqrt(_2437);
              } else {
                float _2837 = (_576.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2839 = (-1.0f) / (_2837 + _576.z);
                _2854 = float3(1.0f + (((_2837 * _2839) * _576.x) * _576.x), ((_2837 * _576.x) * _576.y) * _2839, (-_2837) * _576.x);
              }
              float3x3 _2857 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2854, cross(_576, _2854), _576));
              float3 _2858 = mul(_2857, _2466);
              float3 _2859 = mul(_2857, _2468);
              float3 _2860 = mul(_2857, _2470);
              float3 _2861 = mul(_2857, _2472);
              float _2862 = _2858.z;
              float _2865 = _2859.z;
              float _2869 = _2860.z;
              float _2873 = _2861.z;
              int _2877 = (((int(_2862 > 0.0f) | ((_2865 > 0.0f) ? 2 : 0)) | ((_2869 > 0.0f) ? 4 : 0)) | ((_2873 > 0.0f) ? 8 : 0));
              float3 _3114;
              float3 _3115;
              float3 _3116;
              float3 _3117;
              float3 _3118;
              int _3119;
              if (_2877 == 0) {
                _3114 = _2861;
                _3115 = _2860;
                _3116 = _2859;
                _3117 = _2858;
                _3118 = 0.0f.xxx;
                _3119 = 0;
              } else {
                float3 _3108;
                float3 _3109;
                float3 _3110;
                float3 _3111;
                float3 _3112;
                int _3113;
                if (_2877 == 1) {
                  _3108 = _2861;
                  _3109 = (_2858 * (-_2873)) + (_2861 * _2862);
                  _3110 = (_2858 * (-_2865)) + (_2859 * _2862);
                  _3111 = _2858;
                  _3112 = 0.0f.xxx;
                  _3113 = 3;
                } else {
                  float3 _3094;
                  float3 _3095;
                  float3 _3096;
                  float3 _3097;
                  float3 _3098;
                  int _3099;
                  if (_2877 == 2) {
                    _3094 = _2861;
                    _3095 = (_2859 * (-_2869)) + (_2860 * _2865);
                    _3096 = _2859;
                    _3097 = (_2859 * (-_2862)) + (_2858 * _2865);
                    _3098 = 0.0f.xxx;
                    _3099 = 3;
                  } else {
                    float3 _3080;
                    float3 _3081;
                    float3 _3082;
                    float3 _3083;
                    float3 _3084;
                    int _3085;
                    if (_2877 == 3) {
                      _3080 = (_2858 * (-_2873)) + (_2861 * _2862);
                      _3081 = (_2859 * (-_2869)) + (_2860 * _2865);
                      _3082 = _2859;
                      _3083 = _2858;
                      _3084 = 0.0f.xxx;
                      _3085 = 4;
                    } else {
                      float3 _3066;
                      float3 _3067;
                      float3 _3068;
                      float3 _3069;
                      float3 _3070;
                      int _3071;
                      if (_2877 == 4) {
                        _3066 = _2861;
                        _3067 = _2860;
                        _3068 = (_2860 * (-_2865)) + (_2859 * _2869);
                        _3069 = (_2860 * (-_2873)) + (_2861 * _2869);
                        _3070 = 0.0f.xxx;
                        _3071 = 3;
                      } else {
                        float3 _3052;
                        float3 _3053;
                        float3 _3054;
                        float3 _3055;
                        float3 _3056;
                        int _3057;
                        if (_2877 == 5) {
                          _3052 = _2861;
                          _3053 = _2860;
                          _3054 = _2859;
                          _3055 = _2858;
                          _3056 = 0.0f.xxx;
                          _3057 = 0;
                        } else {
                          float3 _3046;
                          float3 _3047;
                          float3 _3048;
                          float3 _3049;
                          float3 _3050;
                          int _3051;
                          if (_2877 == 6) {
                            _3046 = (_2860 * (-_2873)) + (_2861 * _2869);
                            _3047 = _2860;
                            _3048 = _2859;
                            _3049 = (_2859 * (-_2862)) + (_2858 * _2865);
                            _3050 = 0.0f.xxx;
                            _3051 = 4;
                          } else {
                            float3 _3032;
                            float3 _3033;
                            float3 _3034;
                            float3 _3035;
                            float3 _3036;
                            int _3037;
                            if (_2877 == 7) {
                              float _3025 = -_2873;
                              _3032 = (_2860 * _3025) + (_2861 * _2869);
                              _3033 = _2860;
                              _3034 = _2859;
                              _3035 = _2858;
                              _3036 = (_2858 * _3025) + (_2861 * _2862);
                              _3037 = 5;
                            } else {
                              float3 _3019;
                              float3 _3020;
                              float3 _3021;
                              float3 _3022;
                              float3 _3023;
                              int _3024;
                              if (_2877 == 8) {
                                _3019 = _2861;
                                _3020 = _2861;
                                _3021 = (_2861 * (-_2869)) + (_2860 * _2873);
                                _3022 = (_2861 * (-_2862)) + (_2858 * _2873);
                                _3023 = 0.0f.xxx;
                                _3024 = 3;
                              } else {
                                float3 _3005;
                                float3 _3006;
                                float3 _3007;
                                float3 _3008;
                                float3 _3009;
                                int _3010;
                                if (_2877 == 9) {
                                  _3005 = _2861;
                                  _3006 = (_2861 * (-_2869)) + (_2860 * _2873);
                                  _3007 = (_2858 * (-_2865)) + (_2859 * _2862);
                                  _3008 = _2858;
                                  _3009 = 0.0f.xxx;
                                  _3010 = 4;
                                } else {
                                  float3 _2991;
                                  float3 _2992;
                                  float3 _2993;
                                  float3 _2994;
                                  float3 _2995;
                                  int _2996;
                                  if (_2877 == 10) {
                                    _2991 = _2861;
                                    _2992 = _2860;
                                    _2993 = _2859;
                                    _2994 = _2858;
                                    _2995 = 0.0f.xxx;
                                    _2996 = 0;
                                  } else {
                                    float3 _2985;
                                    float3 _2986;
                                    float3 _2987;
                                    float3 _2988;
                                    float3 _2989;
                                    int _2990;
                                    if (_2877 == 11) {
                                      float _2978 = -_2869;
                                      _2985 = (_2861 * _2978) + (_2860 * _2873);
                                      _2986 = (_2859 * _2978) + (_2860 * _2865);
                                      _2987 = _2859;
                                      _2988 = _2858;
                                      _2989 = _2861;
                                      _2990 = 5;
                                    } else {
                                      float3 _2972;
                                      float3 _2973;
                                      float3 _2974;
                                      float3 _2975;
                                      float3 _2976;
                                      int _2977;
                                      if (_2877 == 12) {
                                        _2972 = _2861;
                                        _2973 = _2860;
                                        _2974 = (_2860 * (-_2865)) + (_2859 * _2869);
                                        _2975 = (_2861 * (-_2862)) + (_2858 * _2873);
                                        _2976 = 0.0f.xxx;
                                        _2977 = 4;
                                      } else {
                                        bool _2930 = _2877 == 13;
                                        float3 _2957;
                                        float3 _2958;
                                        float3 _2959;
                                        float3 _2960;
                                        int _2961;
                                        if (_2930) {
                                          float _2950 = -_2865;
                                          _2957 = (_2860 * _2950) + (_2859 * _2869);
                                          _2958 = (_2858 * _2950) + (_2859 * _2862);
                                          _2959 = _2858;
                                          _2960 = _2861;
                                          _2961 = 5;
                                        } else {
                                          float3 _2947;
                                          float3 _2948;
                                          int _2949;
                                          if (_2877 == 14) {
                                            float _2940 = -_2862;
                                            _2947 = (_2859 * _2940) + (_2858 * _2865);
                                            _2948 = (_2861 * _2940) + (_2858 * _2873);
                                            _2949 = 5;
                                          } else {
                                            _2947 = _2858;
                                            _2948 = 0.0f.xxx;
                                            _2949 = (_2877 == 15) ? 4 : 0;
                                          }
                                          _2957 = _2860;
                                          _2958 = _2859;
                                          _2959 = _2947;
                                          _2960 = _2948;
                                          _2961 = _2949;
                                        }
                                        bool3 _2962 = _2930.xxx;
                                        _2972 = float3(_2962.x ? _2860.x : _2861.x, _2962.y ? _2860.y : _2861.y, _2962.z ? _2860.z : _2861.z);
                                        _2973 = _2957;
                                        _2974 = _2958;
                                        _2975 = _2959;
                                        _2976 = _2960;
                                        _2977 = _2961;
                                      }
                                      _2985 = _2972;
                                      _2986 = _2973;
                                      _2987 = _2974;
                                      _2988 = _2975;
                                      _2989 = _2976;
                                      _2990 = _2977;
                                    }
                                    _2991 = _2985;
                                    _2992 = _2986;
                                    _2993 = _2987;
                                    _2994 = _2988;
                                    _2995 = _2989;
                                    _2996 = _2990;
                                  }
                                  _3005 = _2991;
                                  _3006 = _2992;
                                  _3007 = _2993;
                                  _3008 = _2994;
                                  _3009 = _2995;
                                  _3010 = _2996;
                                }
                                _3019 = _3005;
                                _3020 = _3006;
                                _3021 = _3007;
                                _3022 = _3008;
                                _3023 = _3009;
                                _3024 = _3010;
                              }
                              _3032 = _3019;
                              _3033 = _3020;
                              _3034 = _3021;
                              _3035 = _3022;
                              _3036 = _3023;
                              _3037 = _3024;
                            }
                            _3046 = _3032;
                            _3047 = _3033;
                            _3048 = _3034;
                            _3049 = _3035;
                            _3050 = _3036;
                            _3051 = _3037;
                          }
                          _3052 = _3046;
                          _3053 = _3047;
                          _3054 = _3048;
                          _3055 = _3049;
                          _3056 = _3050;
                          _3057 = _3051;
                        }
                        _3066 = _3052;
                        _3067 = _3053;
                        _3068 = _3054;
                        _3069 = _3055;
                        _3070 = _3056;
                        _3071 = _3057;
                      }
                      _3080 = _3066;
                      _3081 = _3067;
                      _3082 = _3068;
                      _3083 = _3069;
                      _3084 = _3070;
                      _3085 = _3071;
                    }
                    _3094 = _3080;
                    _3095 = _3081;
                    _3096 = _3082;
                    _3097 = _3083;
                    _3098 = _3084;
                    _3099 = _3085;
                  }
                  _3108 = _3094;
                  _3109 = _3095;
                  _3110 = _3096;
                  _3111 = _3097;
                  _3112 = _3098;
                  _3113 = _3099;
                }
                _3114 = _3108;
                _3115 = _3109;
                _3116 = _3110;
                _3117 = _3111;
                _3118 = _3112;
                _3119 = _3113;
              }
              bool3 _3121 = (_3119 == 3).xxx;
              bool3 _3124 = (_3119 == 4).xxx;
              if (_3119 == 0) {
                _3208 = 0.0f;
                break;
              }
              float3 _3129 = normalize(_3117);
              float3 _3130 = normalize(_3116);
              float3 _3131 = normalize(_3115);
              float3 _3132 = normalize(float3(_3121.x ? _3117.x : _3114.x, _3121.y ? _3117.y : _3114.y, _3121.z ? _3117.z : _3114.z));
              float3 _3133 = normalize(float3(_3124.x ? _3117.x : _3118.x, _3124.y ? _3117.y : _3118.y, _3124.z ? _3117.z : _3118.z));
              float _3135 = clamp(dot(_3129, _3130), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3139 = sqrt(1.0f - (_3135 * _3135));
              float _3147 = clamp(dot(_3130, _3131), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3151 = sqrt(1.0f - (_3147 * _3147));
              float _3160 = clamp(dot(_3131, _3132), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3164 = sqrt(1.0f - (_3160 * _3160));
              float _3171 = ((cross(_3129, _3130).z * ((_3139 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3135) / _3139))) + (cross(_3130, _3131).z * ((_3151 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3147) / _3151)))) + (cross(_3131, _3132).z * ((_3164 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3160) / _3164)));
              float _3188;
              if (_3119 >= 4) {
                float _3176 = clamp(dot(_3132, _3133), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3180 = sqrt(1.0f - (_3176 * _3176));
                _3188 = _3171 + (cross(_3132, _3133).z * ((_3180 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3176) / _3180)));
              } else {
                _3188 = _3171;
              }
              float _3205;
              if (_3119 == 5) {
                float _3193 = clamp(dot(_3133, _3129), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3197 = sqrt(1.0f - (_3193 * _3193));
                _3205 = _3188 + (cross(_3133, _3129).z * ((_3197 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3193) / _3197)));
              } else {
                _3205 = _3188;
              }
              _3208 = max(_3205, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3211 = (_2286 & 2u) != 0u;
            uint _3215 = asuint(_50_m6[_2273].w);
            uint _3216 = asuint(_50_m6[_2279].w);
            float3 _3217 = _429 - _50_m6[_2264].xyz;
            float3 _3218 = abs(_3217);
            float _3219 = _3218.x;
            float _3220 = _3218.y;
            float _3222 = _3218.z;
            int _3255;
            if ((_3219 > _3220) && (_3219 > _3222)) {
              _3255 = int((_3217.x > 0.0f) ? (_3215 & 1023u) : ((_3215 >> 10u) & 1023u));
            } else {
              int _3247;
              if (_3220 > _3222) {
                _3247 = int((_3217.y > 0.0f) ? ((_3215 >> 20u) & 1023u) : (_3216 & 1023u));
              } else {
                _3247 = int((_3217.z > 0.0f) ? ((_3216 >> 10u) & 1023u) : ((_3216 >> 20u) & 1023u));
              }
              _3255 = _3247;
            }
            int _3258 = _3211 ? int(_50_m6[_2273].w) : ((_3255 == 1023) ? (-1) : _3255);
            uint _3269 = asuint(_54_m11.x) + (uint(_3258) * 96u);
            uint _3271 = (_3269 + 64u) >> 2u;
            uint _3274 = _3271 + 1u;
            uint _3277 = _3271 + 2u;
            uint _3280 = _3271 + 3u;
            float4 _3284 = asfloat(uint4(_58.Load(_3271 * 4 + 0), _58.Load(_3274 * 4 + 0), _58.Load(_3277 * 4 + 0), _58.Load(_3280 * 4 + 0)));
            uint _3292 = _3269 >> 2u;
            uint _3307 = (_3269 + 16u) >> 2u;
            uint _3322 = (_3269 + 32u) >> 2u;
            uint _3337 = (_3269 + 48u) >> 2u;
            float4 _3357 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3292 * 4 + 0), _58.Load((_3292 + 1u) * 4 + 0), _58.Load((_3292 + 2u) * 4 + 0), _58.Load((_3292 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3307 * 4 + 0), _58.Load((_3307 + 1u) * 4 + 0), _58.Load((_3307 + 2u) * 4 + 0), _58.Load((_3307 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3322 * 4 + 0), _58.Load((_3322 + 1u) * 4 + 0), _58.Load((_3322 + 2u) * 4 + 0), _58.Load((_3322 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3337 * 4 + 0), _58.Load((_3337 + 1u) * 4 + 0), _58.Load((_3337 + 2u) * 4 + 0), _58.Load((_3337 + 3u) * 4 + 0))))), float4((_429 - ((_3217 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3217, _3217)))) * _3284.x)) + (_576 * (_3284.y * 5.0f)), 1.0f));
            float3 _3361 = _3357.xyz / _3357.w.xxx;
            uint _3363 = (_3269 + 80u) >> 2u;
            float4 _3376 = asfloat(uint4(_58.Load(_3363 * 4 + 0), _58.Load((_3363 + 1u) * 4 + 0), _58.Load((_3363 + 2u) * 4 + 0), _58.Load((_3363 + 3u) * 4 + 0)));
            float2 _3377 = _3361.xy;
            float2 _3379 = _3376.xy;
            float3 _3383 = _3361.xyz;
            bool3 _3384 = bool3(_3383.x <= 0.0f.xxx.x, _3383.y <= 0.0f.xxx.y, _3383.z <= 0.0f.xxx.z);
            bool3 _3385 = bool3(_3383.x >= 1.0f.xxx.x, _3383.y >= 1.0f.xxx.y, _3383.z >= 1.0f.xxx.z);
            float _3388 = _3361.z;
            float2 _3399 = ((_3377 * (_3376.zw - _3379)) + _3379).xy * _54_m10.zw;
            float2 _3401 = floor(_3399 + 0.5f.xx);
            float2 _3402 = _3399 - _3401;
            float _3403 = _3402.x;
            float _3404 = _3403 + 0.5f;
            float _3405 = _3404 * _3404;
            float _3408 = 1.0f - _3403;
            float _3409 = min(_3403, 0.0f);
            float _3412 = _3403 + 1.0f;
            float _3413 = max(_3403, 0.0f);
            float _3424 = _3402.y;
            float _3425 = _3424 + 0.5f;
            float _3426 = _3425 * _3425;
            float _3429 = 1.0f - _3424;
            float _3430 = min(_3424, 0.0f);
            float _3433 = _3424 + 1.0f;
            float _3434 = max(_3424, 0.0f);
            float3 _3446 = float3(0.1599999964237213134765625f * _3408, 0.1599999964237213134765625f * ((_3412 - (_3413 * _3413)) + 1.0f), _3405 * 0.07999999821186065673828125f);
            float3 _3447 = float3(0.1599999964237213134765625f * ((_3405 * 0.5f) - _3403), 0.1599999964237213134765625f * ((_3408 - (_3409 * _3409)) + 1.0f), 0.1599999964237213134765625f * _3412) + _3446;
            float3 _3449 = float3(0.1599999964237213134765625f * _3429, 0.1599999964237213134765625f * ((_3433 - (_3434 * _3434)) + 1.0f), _3426 * 0.07999999821186065673828125f);
            float3 _3450 = float3(0.1599999964237213134765625f * ((_3426 * 0.5f) - _3424), 0.1599999964237213134765625f * ((_3429 - (_3430 * _3430)) + 1.0f), 0.1599999964237213134765625f * _3433) + _3449;
            float3 _3456 = ((_3446 / _3447) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _3458 = ((_3449 / _3450) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _3460 = _3401 * _54_m10.xy;
            float _3461 = _3456.x;
            float _3462 = _3458.x;
            float _3465 = _3456.y;
            float _3468 = _3456.z;
            float _3471 = _3458.y;
            float _3478 = _3458.z;
            float _3485 = _3447.x;
            float _3486 = _3450.x;
            float _3488 = _3447.y;
            float _3490 = _3447.z;
            float _3492 = _3450.y;
            float _3496 = _3450.z;
            float _3554 = (((((((_3485 * _3486) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3461, _3462), _388).xy, _3388)) + ((_3488 * _3486) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3465, _3462), _388).xy, _3388))) + ((_3490 * _3486) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3468, _3462), _388).xy, _3388))) + ((_3485 * _3492) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3461, _3471), _388).xy, _3388))) + ((_3488 * _3492) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3465, _3471), _388).xy, _3388))) + ((_3490 * _3492) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3468, _3471), _388).xy, _3388))) + ((_3485 * _3496) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3461, _3478), _388).xy, _3388));
            float4 _3577 = asfloat(uint4(_58.Load(_3271 * 4 + 0), _58.Load(_3274 * 4 + 0), _58.Load(_3277 * 4 + 0), _58.Load(_3280 * 4 + 0)));
            float _3578 = _3577.w;
            float2 _3580 = min(_3377, 1.0f.xx - _3377);
            _3597 = ((_50_m6[_2261].xyz * (((((_725 * _2425.x) + ((1.0f.xxx - _725) * _2425.y)) * _2820) * _50_m6[_2282].z) + (_721 * _3208))) * _2398) * ((_3258 >= 0) ? lerp(1.0f, (any(bool3(_3384.x || _3385.x, _3384.y || _3385.y, _3384.z || _3385.z)) || ((asuint(_3388) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3554 + ((_3488 * _3496) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3465, _3478), _388).xy, _3388))) + ((_3490 * _3496) * _56.SampleCmpLevelZero(_27, float3(_3460 + float2(_3468, _3478), _388).xy, _3388))), _3211 ? min(_3578, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3577.z - _3357.w) * 0.25f, min(_3580.x, _3580.y)))) : _3578) : 1.0f);
            break;
          } while (false);
          _4897 = _2221;
          _4898 = _3597 * _2361;
          break;
        }
        float _4895;
        float3 _4896;
        if (_50_m6[_2261].w < 1.5f) {
          float3 _4177 = float3(0.100000001490116119384765625f, _550, 1.0f);
          float _4186 = (0.5f + (0.5f * _50_m6[_2267].y)) - abs(_50_m6[_2267].x);
          float _4187 = _50_m6[_2267].y - _4186;
          float _4194 = abs(max((1.0f - abs(_4186)) - abs(_4187), 0.00048828125f));
          float3 _4198 = normalize(float3(_4186, _4187, (_50_m6[_2267].x >= 0.0f) ? _4194 : (-_4194)));
          float3 _4199 = _50_m6[_2264].xyz - _429;
          float _4200 = dot(_4199, _4199);
          float _4201 = rsqrt(_4200);
          float3 _4202 = _4199 * _4201;
          float _4206 = clamp(_50_m6[_2282].y * _4201, 0.0f, 1.0f);
          int _4211 = int(_50_m6[_2282].w);
          float3 _4212 = _4198 * _50_m6[_2267].z;
          float3 _4213 = _4212 * 0.5f;
          float3 _4214 = _4199 - _4213;
          float3 _4215 = _4199 + _4213;
          bool _4217 = (_2365 & 1u) == 0u;
          bool _4220 = _4217 || ((_2286 & 2u) != 0u);
          bool _4223 = (!_4217) && (_50_m6[_2267].z > 0.0f);
          float _4242;
          float _4243;
          if (_4223) {
            float _4227 = length(_4214);
            float _4228 = length(_4215);
            _4242 = clamp(0.5f * ((dot(_576, _4214) / _4227) + (dot(_576, _4215) / _4228)), 0.0f, 1.0f);
            _4243 = 1.0f / ((((_4227 * _4228) + dot(_4214, _4215)) * 0.5f) + 1.0f);
          } else {
            _4242 = clamp(dot(_576, _4202), 0.0f, 1.0f);
            _4243 = 1.0f;
          }
          float _4265;
          if (_50_m6[_2279].w < 0.0f) {
            float _4259 = _4200 * (_50_m6[_2264].w * _50_m6[_2264].w);
            float _4262 = clamp(1.0f - (_4259 * _4259), 0.0f, 1.0f);
            _4265 = lerp(1.0f / (_4200 + 1.0f), _4243, float(_4223)) * (_4262 * _4262);
          } else {
            float3 _4248 = _4199 * _50_m6[_2264].w;
            _4265 = _4243 * pow(1.0f - clamp(dot(_4248, _4248), 0.0f, 1.0f), _50_m6[_2279].w);
          }
          float _4271 = clamp((dot(_4202, -_4198) - _50_m6[_2267].z) * _50_m6[_2267].w, 0.0f, 1.0f);
          float _4275 = _4265 * lerp(1.0f, _4271 * _4271, float(_4217));
          float _4375;
          if ((!_4223) && (_4211 >= 0)) {
            uint _4281 = uint(_4211);
            float2 _4368;
            [branch] if (_4217) {
              float4 _4358 = mul(_74_m1[_4281], _433);
              _4368 = _74_m0[_4281].xy + (clamp(_4358.xy / _4358.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_4281].zw);
            }
            else {
              float3 _4295 = mul(float4(-_4199, 0.0f), _74_m1[_4281]).xyz;
              float3 _394 = _4295;
              float3 _393 = _4295;
              float3 _392 = abs(_4295);
              uint _4304 = uint(int(_392.y > _392.x));
              uint _4310 = (_392.z > _392[_4304]) ? 2u : _4304;
              uint _4316 = (_4310 * 2u) + uint(_393[_4310] < 0.0f);
              float _4320 = abs(_394[_4316 / 2u]);
              float _4340 = 0.5f - (0.000244140625f / _74_m0[_4281].w);
              _4368 = _74_m0[_4281].xy + (clamp(float2((float(_4316) + ((((_394[uint(_367[_4316].x)] * _368[_4316].x) / _4320) * _4340) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_394[uint(_367[_4316].y)] * _368[_4316].y) / _4320) * _4340)), 0.0f.xx, 1.0f.xx) * _74_m0[_4281].zw);
            }
            _4375 = _4275 * _72.SampleLevel(_24, _4368, 0.0f).x;
          } else {
            _4375 = _4275;
          }
          bool _4376 = _4375 > 0.0f;
          float _4760;
          if (_4376) {
            int _4429;
            if (_4220) {
              _4429 = int(_50_m6[_2270].x);
            } else {
              uint _4384 = asuint(_50_m6[_2267].w);
              uint _4385 = asuint(_50_m6[_2270].x);
              float3 _4386 = _429 - _50_m6[_2264].xyz;
              float3 _4387 = abs(_4386);
              float _4388 = _4387.x;
              float _4389 = _4387.y;
              float _4391 = _4387.z;
              int _4424;
              if ((_4388 > _4389) && (_4388 > _4391)) {
                _4424 = int((_4386.x > 0.0f) ? (_4384 & 1023u) : ((_4384 >> 10u) & 1023u));
              } else {
                int _4416;
                if (_4389 > _4391) {
                  _4416 = int((_4386.y > 0.0f) ? ((_4384 >> 20u) & 1023u) : (_4385 & 1023u));
                } else {
                  _4416 = int((_4386.z > 0.0f) ? ((_4385 >> 10u) & 1023u) : ((_4385 >> 20u) & 1023u));
                }
                _4424 = _4416;
              }
              _4429 = (_4424 == 1023) ? (-1) : _4424;
            }
            uint _4436 = asuint(_54_m11.x) + (uint(_4429) * 96u);
            uint _4438 = (_4436 + 64u) >> 2u;
            uint _4441 = _4438 + 1u;
            uint _4444 = _4438 + 2u;
            uint _4447 = _4438 + 3u;
            float4 _4451 = asfloat(uint4(_58.Load(_4438 * 4 + 0), _58.Load(_4441 * 4 + 0), _58.Load(_4444 * 4 + 0), _58.Load(_4447 * 4 + 0)));
            uint _4459 = _4436 >> 2u;
            uint _4474 = (_4436 + 16u) >> 2u;
            uint _4489 = (_4436 + 32u) >> 2u;
            uint _4504 = (_4436 + 48u) >> 2u;
            float4 _4524 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_4459 * 4 + 0), _58.Load((_4459 + 1u) * 4 + 0), _58.Load((_4459 + 2u) * 4 + 0), _58.Load((_4459 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4474 * 4 + 0), _58.Load((_4474 + 1u) * 4 + 0), _58.Load((_4474 + 2u) * 4 + 0), _58.Load((_4474 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4489 * 4 + 0), _58.Load((_4489 + 1u) * 4 + 0), _58.Load((_4489 + 2u) * 4 + 0), _58.Load((_4489 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4504 * 4 + 0), _58.Load((_4504 + 1u) * 4 + 0), _58.Load((_4504 + 2u) * 4 + 0), _58.Load((_4504 + 3u) * 4 + 0))))), float4((_429 - ((-_4202) * _4451.x)) + (_576 * (_4451.y * 5.0f)), 1.0f));
            float3 _4528 = _4524.xyz / _4524.w.xxx;
            uint _4530 = (_4436 + 80u) >> 2u;
            float4 _4543 = asfloat(uint4(_58.Load(_4530 * 4 + 0), _58.Load((_4530 + 1u) * 4 + 0), _58.Load((_4530 + 2u) * 4 + 0), _58.Load((_4530 + 3u) * 4 + 0)));
            float2 _4544 = _4528.xy;
            float2 _4546 = _4543.xy;
            float3 _4550 = _4528.xyz;
            bool3 _4551 = bool3(_4550.x <= 0.0f.xxx.x, _4550.y <= 0.0f.xxx.y, _4550.z <= 0.0f.xxx.z);
            bool3 _4552 = bool3(_4550.x >= 1.0f.xxx.x, _4550.y >= 1.0f.xxx.y, _4550.z >= 1.0f.xxx.z);
            float _4555 = _4528.z;
            float2 _4566 = ((_4544 * (_4543.zw - _4546)) + _4546).xy * _54_m10.zw;
            float2 _4568 = floor(_4566 + 0.5f.xx);
            float2 _4569 = _4566 - _4568;
            float _4570 = _4569.x;
            float _4571 = _4570 + 0.5f;
            float _4572 = _4571 * _4571;
            float _4575 = 1.0f - _4570;
            float _4576 = min(_4570, 0.0f);
            float _4579 = _4570 + 1.0f;
            float _4580 = max(_4570, 0.0f);
            float _4591 = _4569.y;
            float _4592 = _4591 + 0.5f;
            float _4593 = _4592 * _4592;
            float _4596 = 1.0f - _4591;
            float _4597 = min(_4591, 0.0f);
            float _4600 = _4591 + 1.0f;
            float _4601 = max(_4591, 0.0f);
            float3 _4613 = float3(0.1599999964237213134765625f * _4575, 0.1599999964237213134765625f * ((_4579 - (_4580 * _4580)) + 1.0f), _4572 * 0.07999999821186065673828125f);
            float3 _4614 = float3(0.1599999964237213134765625f * ((_4572 * 0.5f) - _4570), 0.1599999964237213134765625f * ((_4575 - (_4576 * _4576)) + 1.0f), 0.1599999964237213134765625f * _4579) + _4613;
            float3 _4616 = float3(0.1599999964237213134765625f * _4596, 0.1599999964237213134765625f * ((_4600 - (_4601 * _4601)) + 1.0f), _4593 * 0.07999999821186065673828125f);
            float3 _4617 = float3(0.1599999964237213134765625f * ((_4593 * 0.5f) - _4591), 0.1599999964237213134765625f * ((_4596 - (_4597 * _4597)) + 1.0f), 0.1599999964237213134765625f * _4600) + _4616;
            float3 _4623 = ((_4613 / _4614) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _4625 = ((_4616 / _4617) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _4627 = _4568 * _54_m10.xy;
            float _4628 = _4623.x;
            float _4629 = _4625.x;
            float _4632 = _4623.y;
            float _4635 = _4623.z;
            float _4638 = _4625.y;
            float _4645 = _4625.z;
            float _4652 = _4614.x;
            float _4653 = _4617.x;
            float _4655 = _4614.y;
            float _4657 = _4614.z;
            float _4659 = _4617.y;
            float _4663 = _4617.z;
            float _4721 = (((((((_4652 * _4653) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4628, _4629), _388).xy, _4555)) + ((_4655 * _4653) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4632, _4629), _388).xy, _4555))) + ((_4657 * _4653) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4635, _4629), _388).xy, _4555))) + ((_4652 * _4659) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4628, _4638), _388).xy, _4555))) + ((_4655 * _4659) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4632, _4638), _388).xy, _4555))) + ((_4657 * _4659) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4635, _4638), _388).xy, _4555))) + ((_4652 * _4663) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4628, _4645), _388).xy, _4555));
            float4 _4744 = asfloat(uint4(_58.Load(_4438 * 4 + 0), _58.Load(_4441 * 4 + 0), _58.Load(_4444 * 4 + 0), _58.Load(_4447 * 4 + 0)));
            float _4745 = _4744.w;
            float2 _4747 = min(_4544, 1.0f.xx - _4544);
            _4760 = (_4429 >= 0) ? lerp(1.0f, (any(bool3(_4551.x || _4552.x, _4551.y || _4552.y, _4551.z || _4552.z)) || ((asuint(_4555) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4721 + ((_4655 * _4663) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4632, _4645), _388).xy, _4555))) + ((_4657 * _4663) * _56.SampleCmpLevelZero(_27, float3(_4627 + float2(_4635, _4645), _388).xy, _4555))), _4220 ? min(_4745, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4744.z - _4524.w) * 0.25f, min(_4747.x, _4747.y)))) : _4745) : 1.0f;
          } else {
            _4760 = 1.0f;
          }
          float3 _4783;
          float3 _4784;
          if (_4223) {
            float3 _4763 = _4177 * _4177;
            float _4772 = dot(_1203, _4212);
            _4783 = _4763 / clamp(_4763 + (0.5f * clamp(_50_m6[_2267].z * _4201, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4784 = normalize(_4214 + (_4212 * clamp(dot(_4214, (_1203 * _4772) - _4212) / ((_50_m6[_2267].z * _50_m6[_2267].z) - (_4772 * _4772)), 0.0f, 1.0f)));
          } else {
            _4783 = 1.0f.xxx;
            _4784 = _4202;
          }
          float3 _4785 = _4784 + _466;
          float3 _4789 = _4785 * rsqrt(max(6.103515625e-05f, dot(_4785, _4785)));
          float3 _4894;
          if (_4376) {
            float _4792 = clamp(_4242, 0.0f, 1.0f);
            float _4794 = clamp(dot(_576, _4789), 0.0f, 1.0f);
            float _4796 = clamp(dot(_466, _4789), 0.0f, 1.0f);
            float _4797 = clamp(_602, 0.0f, 1.0f);
            float _4798 = _550 * _550;
            float _4808;
            if (_4206 > 0.0f) {
              _4808 = clamp(_4798 + ((_4206 * _4206) / ((_4796 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4808 = _4798;
            }
            float _4809 = _4808 * _4808;
            float _4830 = (((_4794 * _4809) - _4794) * _4794) + 1.0f;
            float _4835 = 1.0f - _4796;
            float _4836 = _4835 * _4835;
            float _4838 = (_4835 * _4836) * _4836;
            float _4862 = 1.0f - _550;
            float _4869 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4862 * (1.04997003078460693359375f + (_4862 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4862))))));
            float _4870 = 1.0f - _4869;
            float3 _4873 = _725 + ((1.0f.xxx - _725) * 0.0476190485060214996337890625f);
            float3 _4893 = ((clamp((min(((_725 * (1.0f - _4838)) + _4838.xxx) * (((_4809 / (_4830 * _4830)) * _4783.y) * (0.5f / (((_4792 * sqrt(((((-_4797) * _4809) + _4797) * _4797) + _4809)) + (_4797 * sqrt(((((-_4792) * _4809) + _4792) * _4792) + _4809))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4873 * (((_64.SampleLevel(_24, (float2(_4797, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_4792, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4869) / _4870)) * _4873) / (1.0f.xxx - (_4873 * _4870)))) * _50_m6[_2282].z, 0.0f.xxx, 1000.0f.xxx) * _4242) + ((_721 * _4783.z) * _4242)) * (((_50_m6[_2261].xyz * _4375) * _4760) * _2361);
            _4894 = _4893;
          } else {
            _4894 = 0.0f.xxx;
          }
          _4895 = _2221;
          _4896 = _4894;
        } else {
          float _4175;
          do {
            if (_2368) {
              _4175 = 1.0f;
              break;
            }
            float _3614 = (0.5f + (0.5f * _50_m6[_2267].y)) - abs(_50_m6[_2267].x);
            float _3615 = _50_m6[_2267].y - _3614;
            float _3622 = abs(max((1.0f - abs(_3614)) - abs(_3615), 0.00048828125f));
            float3 _3626 = normalize(float3(_3614, _3615, (_50_m6[_2267].x >= 0.0f) ? _3622 : (-_3622)));
            float3 _3627 = _50_m6[_2264].xyz - _429;
            float _3628 = dot(_3627, _3627);
            float3 _3630 = _3627 * rsqrt(_3628);
            int _3633 = int(_50_m6[_2282].w);
            float3 _3635 = (_3626 * _50_m6[_2267].z) * 0.5f;
            float3 _3636 = _3627 - _3635;
            float3 _3637 = _3627 + _3635;
            bool _3639 = (_2365 & 1u) == 0u;
            bool _3642 = _3639 || ((_2286 & 2u) != 0u);
            bool _3645 = (!_3639) && (_50_m6[_2267].z > 0.0f);
            float _3657;
            if (_3645) {
              _3657 = 1.0f / ((((length(_3636) * length(_3637)) + dot(_3636, _3637)) * 0.5f) + 1.0f);
            } else {
              _3657 = 1.0f;
            }
            float _3679;
            if (_50_m6[_2279].w < 0.0f) {
              float _3673 = _3628 * (_50_m6[_2264].w * _50_m6[_2264].w);
              float _3676 = clamp(1.0f - (_3673 * _3673), 0.0f, 1.0f);
              _3679 = lerp(1.0f / (_3628 + 1.0f), _3657, float(_3645)) * (_3676 * _3676);
            } else {
              float3 _3662 = _3627 * _50_m6[_2264].w;
              _3679 = _3657 * pow(1.0f - clamp(dot(_3662, _3662), 0.0f, 1.0f), _50_m6[_2279].w);
            }
            float _3685 = clamp((dot(_3630, -_3626) - _50_m6[_2267].z) * _50_m6[_2267].w, 0.0f, 1.0f);
            float _3689 = _3679 * lerp(1.0f, _3685 * _3685, float(_3639));
            float _3789;
            if ((!_3645) && (_3633 >= 0)) {
              uint _3695 = uint(_3633);
              float2 _3782;
              [branch] if (_3639) {
                float4 _3772 = mul(_74_m1[_3695], _433);
                _3782 = _74_m0[_3695].xy + (clamp(_3772.xy / _3772.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_3695].zw);
              }
              else {
                float3 _3709 = mul(float4(-_3627, 0.0f), _74_m1[_3695]).xyz;
                float3 _397 = _3709;
                float3 _396 = _3709;
                float3 _395 = abs(_3709);
                uint _3718 = uint(int(_395.y > _395.x));
                uint _3724 = (_395.z > _395[_3718]) ? 2u : _3718;
                uint _3730 = (_3724 * 2u) + uint(_396[_3724] < 0.0f);
                float _3734 = abs(_397[_3730 / 2u]);
                float _3754 = 0.5f - (0.000244140625f / _74_m0[_3695].w);
                _3782 = _74_m0[_3695].xy + (clamp(float2((float(_3730) + ((((_397[uint(_367[_3730].x)] * _368[_3730].x) / _3734) * _3754) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_397[uint(_367[_3730].y)] * _368[_3730].y) / _3734) * _3754)), 0.0f.xx, 1.0f.xx) * _74_m0[_3695].zw);
              }
              _3789 = _3689 * _72.SampleLevel(_24, _3782, 0.0f).x;
            } else {
              _3789 = _3689;
            }
            float _4174;
            if (_3789 > 0.0f) {
              int _3843;
              if (_3642) {
                _3843 = int(_50_m6[_2270].x);
              } else {
                uint _3798 = asuint(_50_m6[_2267].w);
                uint _3799 = asuint(_50_m6[_2270].x);
                float3 _3800 = _429 - _50_m6[_2264].xyz;
                float3 _3801 = abs(_3800);
                float _3802 = _3801.x;
                float _3803 = _3801.y;
                float _3805 = _3801.z;
                int _3838;
                if ((_3802 > _3803) && (_3802 > _3805)) {
                  _3838 = int((_3800.x > 0.0f) ? (_3798 & 1023u) : ((_3798 >> 10u) & 1023u));
                } else {
                  int _3830;
                  if (_3803 > _3805) {
                    _3830 = int((_3800.y > 0.0f) ? ((_3798 >> 20u) & 1023u) : (_3799 & 1023u));
                  } else {
                    _3830 = int((_3800.z > 0.0f) ? ((_3799 >> 10u) & 1023u) : ((_3799 >> 20u) & 1023u));
                  }
                  _3838 = _3830;
                }
                _3843 = (_3838 == 1023) ? (-1) : _3838;
              }
              uint _3850 = asuint(_54_m11.x) + (uint(_3843) * 96u);
              uint _3852 = (_3850 + 64u) >> 2u;
              uint _3855 = _3852 + 1u;
              uint _3858 = _3852 + 2u;
              uint _3861 = _3852 + 3u;
              float4 _3865 = asfloat(uint4(_58.Load(_3852 * 4 + 0), _58.Load(_3855 * 4 + 0), _58.Load(_3858 * 4 + 0), _58.Load(_3861 * 4 + 0)));
              uint _3873 = _3850 >> 2u;
              uint _3888 = (_3850 + 16u) >> 2u;
              uint _3903 = (_3850 + 32u) >> 2u;
              uint _3918 = (_3850 + 48u) >> 2u;
              float4 _3938 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3873 * 4 + 0), _58.Load((_3873 + 1u) * 4 + 0), _58.Load((_3873 + 2u) * 4 + 0), _58.Load((_3873 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3888 * 4 + 0), _58.Load((_3888 + 1u) * 4 + 0), _58.Load((_3888 + 2u) * 4 + 0), _58.Load((_3888 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3903 * 4 + 0), _58.Load((_3903 + 1u) * 4 + 0), _58.Load((_3903 + 2u) * 4 + 0), _58.Load((_3903 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3918 * 4 + 0), _58.Load((_3918 + 1u) * 4 + 0), _58.Load((_3918 + 2u) * 4 + 0), _58.Load((_3918 + 3u) * 4 + 0))))), float4((_429 - ((-_3630) * _3865.x)) + (_576 * (_3865.y * 5.0f)), 1.0f));
              float3 _3942 = _3938.xyz / _3938.w.xxx;
              uint _3944 = (_3850 + 80u) >> 2u;
              float4 _3957 = asfloat(uint4(_58.Load(_3944 * 4 + 0), _58.Load((_3944 + 1u) * 4 + 0), _58.Load((_3944 + 2u) * 4 + 0), _58.Load((_3944 + 3u) * 4 + 0)));
              float2 _3958 = _3942.xy;
              float2 _3960 = _3957.xy;
              float3 _3964 = _3942.xyz;
              bool3 _3965 = bool3(_3964.x <= 0.0f.xxx.x, _3964.y <= 0.0f.xxx.y, _3964.z <= 0.0f.xxx.z);
              bool3 _3966 = bool3(_3964.x >= 1.0f.xxx.x, _3964.y >= 1.0f.xxx.y, _3964.z >= 1.0f.xxx.z);
              float _3969 = _3942.z;
              float2 _3980 = ((_3958 * (_3957.zw - _3960)) + _3960).xy * _54_m10.zw;
              float2 _3982 = floor(_3980 + 0.5f.xx);
              float2 _3983 = _3980 - _3982;
              float _3984 = _3983.x;
              float _3985 = _3984 + 0.5f;
              float _3986 = _3985 * _3985;
              float _3989 = 1.0f - _3984;
              float _3990 = min(_3984, 0.0f);
              float _3993 = _3984 + 1.0f;
              float _3994 = max(_3984, 0.0f);
              float _4005 = _3983.y;
              float _4006 = _4005 + 0.5f;
              float _4007 = _4006 * _4006;
              float _4010 = 1.0f - _4005;
              float _4011 = min(_4005, 0.0f);
              float _4014 = _4005 + 1.0f;
              float _4015 = max(_4005, 0.0f);
              float3 _4027 = float3(0.1599999964237213134765625f * _3989, 0.1599999964237213134765625f * ((_3993 - (_3994 * _3994)) + 1.0f), _3986 * 0.07999999821186065673828125f);
              float3 _4028 = float3(0.1599999964237213134765625f * ((_3986 * 0.5f) - _3984), 0.1599999964237213134765625f * ((_3989 - (_3990 * _3990)) + 1.0f), 0.1599999964237213134765625f * _3993) + _4027;
              float3 _4030 = float3(0.1599999964237213134765625f * _4010, 0.1599999964237213134765625f * ((_4014 - (_4015 * _4015)) + 1.0f), _4007 * 0.07999999821186065673828125f);
              float3 _4031 = float3(0.1599999964237213134765625f * ((_4007 * 0.5f) - _4005), 0.1599999964237213134765625f * ((_4010 - (_4011 * _4011)) + 1.0f), 0.1599999964237213134765625f * _4014) + _4030;
              float3 _4037 = ((_4027 / _4028) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
              float3 _4039 = ((_4030 / _4031) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
              float2 _4041 = _3982 * _54_m10.xy;
              float _4042 = _4037.x;
              float _4043 = _4039.x;
              float _4046 = _4037.y;
              float _4049 = _4037.z;
              float _4052 = _4039.y;
              float _4059 = _4039.z;
              float _4066 = _4028.x;
              float _4067 = _4031.x;
              float _4069 = _4028.y;
              float _4071 = _4028.z;
              float _4073 = _4031.y;
              float _4077 = _4031.z;
              float _4135 = (((((((_4066 * _4067) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4042, _4043), _388).xy, _3969)) + ((_4069 * _4067) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4046, _4043), _388).xy, _3969))) + ((_4071 * _4067) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4049, _4043), _388).xy, _3969))) + ((_4066 * _4073) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4042, _4052), _388).xy, _3969))) + ((_4069 * _4073) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4046, _4052), _388).xy, _3969))) + ((_4071 * _4073) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4049, _4052), _388).xy, _3969))) + ((_4066 * _4077) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4042, _4059), _388).xy, _3969));
              float4 _4158 = asfloat(uint4(_58.Load(_3852 * 4 + 0), _58.Load(_3855 * 4 + 0), _58.Load(_3858 * 4 + 0), _58.Load(_3861 * 4 + 0)));
              float _4159 = _4158.w;
              float2 _4161 = min(_3958, 1.0f.xx - _3958);
              _4174 = (_3843 >= 0) ? lerp(1.0f, (any(bool3(_3965.x || _3966.x, _3965.y || _3966.y, _3965.z || _3966.z)) || ((asuint(_3969) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4135 + ((_4069 * _4077) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4046, _4059), _388).xy, _3969))) + ((_4071 * _4077) * _56.SampleCmpLevelZero(_27, float3(_4041 + float2(_4049, _4059), _388).xy, _3969))), _3642 ? min(_4159, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4158.z - _3938.w) * 0.25f, min(_4161.x, _4161.y)))) : _4159) : 1.0f;
            } else {
              _4174 = 1.0f;
            }
            _4175 = _4174;
            break;
          } while (false);
          _4895 = _2221 * _4175;
          _4896 = 0.0f.xxx;
        }
        _4897 = _4895;
        _4898 = _4896;
        break;
      } while (false);
      _2246 = _4897;
      _2249 = _2248 + _4898;
    }
    _2218 = _2217 + _2248;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x75F37712:
  float3 _4908 = ((((float3(_1183, _1188, _1193) * _721) * lerp(1.0f, _521, _45_m4)) * _18_m22.x) + ((_1503 * ((_725 * _739.x) + (clamp(50.0f * _725.y, 0.0f, 1.0f) * _739.y).xxx)) * 1.0f)) + lerp((_2192.xyz + (_2217 * _2220)).xyz, (_662.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _545) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  */
  float3 _4908 = ((((float3(_1183, _1188, _1193) * (_721 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _521, _45_m4)) * _18_m22.x) + (((_1503 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * ((_725 * _739.x) + (clamp(50.0f * _725.y, 0.0f, 1.0f) * _739.y).xxx)) * 1.0f)) + lerp((_2192.xyz + ((_2217 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2220)).xyz, (_662.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _545) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  // RenoDX code end
  float4 _4909 = float4(_4908.x, _4908.y, _4908.z, _389.w);
  _4909.w = _545;
  float _4926 = _429.y * _18_m46.w;
  float _4931 = max(0.00999999977648258209228515625f, _4926 + _18_m47.w);
  float3 _4945 = exp(_18_m45.xyz * ((-max(0.0f, (_467 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4931)) / _4931) * exp(_4926 + _18_m48.w))));
  float _4948 = dot(_603, _18_m44.xyz);
  float _4954 = _18_m45.w * _18_m45.w;
  float _4958 = (1.0f + _4954) - ((2.0f * _18_m45.w) * _4948);
  float3 _5288;
  float _5289;
  if (_18_m55.z > 0.0f) {
    uint3 _5116 = (uint3(int3(int(_775.x), int(_775.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5117 = _5116.y;
    uint _5118 = _5116.z;
    uint _5121 = _5116.x + (_5117 * _5118);
    uint _5123 = _5117 + (_5118 * _5121);
    uint _5125 = _5118 + (_5121 * _5123);
    uint _5127 = _5121 + (_5123 * _5125);
    float _5149 = dot(_603, -_16_m0[2].xyz);
    float3 _5159 = _429 - _16_m11.xyz;
    float _5161 = (_18_m55.w * ((_5149 > 5.9604644775390625e-08f) ? (1.0f / _5149) : 0.0f)) * (1.0f / _467);
    float _5162 = _5159.y;
    float _5163 = _5161 * _5162;
    float _5165 = _16_m11.y + _5163;
    float _5166 = _5162 - _5163;
    float _5168 = (1.0f - _5161) * _467;
    float _5182 = max(-127.0f, _18_m49.z * _5166);
    float _5206 = max(-127.0f, _18_m52.x * _5166);
    float _5217 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5165 - _18_m49.x)))) * ((abs(_5182) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5182)) / _5182) : (0.693147182464599609375f - (0.2402265071868896484375f * _5182)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5165 - _18_m52.z)))) * ((abs(_5206) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5206)) / _5206) : (0.693147182464599609375f - (0.2402265071868896484375f * _5206))));
    float _5239 = clamp((_467 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5242 = clamp((max(clamp(exp2(-(_5217 * _5168)), 0.0f, 1.0f), _18_m51.w) + clamp((_467 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5239, 0.0f, 1.0f);
    float4 _5282 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _71.SampleLevel(_24, float3((_1212 + ((((float3(uint3(_5127, _5123 + (_5125 * _5127), _390) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_776 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_776 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5288 = _5282.xyz + (((_18_m51.xyz * (1.0f - _5242)) + (((_18_m54.xyz * pow(clamp(dot(_466, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5217 * max(_5168 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5239))) * _5282.w);
    _5289 = _5282.w * _5242;
  } else {
    float3 _4988 = _429 - _16_m11.xyz;
    float _4990 = _4988.y;
    float _5004 = max(-127.0f, _18_m49.z * _4990);
    float _5028 = max(-127.0f, _18_m52.x * _4990);
    float _5039 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5004) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5004)) / _5004) : (0.693147182464599609375f - (0.2402265071868896484375f * _5004)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5028) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5028)) / _5028) : (0.693147182464599609375f - (0.2402265071868896484375f * _5028))));
    float _5061 = clamp((_467 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5064 = clamp((max(clamp(exp2(-(_5039 * _467)), 0.0f, 1.0f), _18_m51.w) + clamp((_467 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5061, 0.0f, 1.0f);
    _5288 = (_18_m51.xyz * (1.0f - _5064)) + (((_18_m54.xyz * pow(clamp(dot(_466, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5039 * max(_467 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5061));
    _5289 = _5064;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x75F37712:
  float3 _5295 = ((_4909.xyz * (_4945 * _5289)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4948 * _4948)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4954) / max((12.56637096405029296875f * _4958) * sqrt(_4958), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4945)) * _5289) + _5288)).xyz;
  */
  float3 _5295 = ((_4909.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4945 * _5289)) : (_4945 * _5289))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4948 * _4948)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4954) / max((12.56637096405029296875f * _4958) * sqrt(_4958), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4945)) * _5289 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5288 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5305 = lerp(dot(_5295, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5295, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5315 = min(lerp(((sqrt(sqrt(abs(_693 * 0.5f))) * float2(int2(sign(_693)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _680.xx), 1.0f.xx);
  float4 _5316 = float4(_5315.x, _5315.y, _389.z, _389.w);
  _5316.z = float(clamp(max(dot(_5305.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _545, _545) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5316.w = lerp(0.0f, 0.699999988079071044921875f, _680);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x75F37712:
  _13 = float4(_5305.x, _5305.y, _5305.z, _4909.w);
  */
  float3 renodx_output_color = float3(_5305.x, _5305.y, _5305.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4909.w);
  // RenoDX code end
  _14 = _5316;
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

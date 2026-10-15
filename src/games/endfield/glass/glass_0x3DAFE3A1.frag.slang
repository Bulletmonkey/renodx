#include "../shared.h"

// Ported from the native 0x3DAFE3A1 Vulkan dump.
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

static float _379;
static float4 _380;
static float3 _381;
static uint _384;

static const float4 _357[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _358[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _359[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(53, 0)]] ByteAddressBuffer _30 : register(t53, space0);
[[vk::binding(0, 1)]] cbuffer _36_37 : register(b0, space1) {
  float _37_m0 : packoffset(c0);
  float _37_m1 : packoffset(c0.y);
  float _37_m2 : packoffset(c0.z);
  float _37_m3 : packoffset(c0.w);
  float _37_m4 : packoffset(c1);
  float _37_m5 : packoffset(c1.y);
  float _37_m6 : packoffset(c1.z);
  float _37_m7 : packoffset(c1.w);
  float _37_m8 : packoffset(c2);
  float _37_m9 : packoffset(c2.y);
  float _37_m10 : packoffset(c2.z);
  float _37_m11 : packoffset(c2.w);
  float _37_m12 : packoffset(c3);
  float _37_m13 : packoffset(c3.y);
  float _37_m14 : packoffset(c3.z);
  float _37_m15 : packoffset(c3.w);
  float4 _37_m16 : packoffset(c4);
  float _37_m17 : packoffset(c5);
  float _37_m18 : packoffset(c5.y);
  float _37_m19 : packoffset(c5.z);
  float _37_m20 : packoffset(c5.w);
  float4 _37_m21 : packoffset(c6);
  float4 _37_m22 : packoffset(c7);
  float4 _37_m23 : packoffset(c8);
  float4 _37_m24 : packoffset(c9);
  float4 _37_m25 : packoffset(c10);
  float _37_m26 : packoffset(c11);
  float _37_m27 : packoffset(c11.y);
  float _37_m28 : packoffset(c11.z);
  float _37_m29 : packoffset(c11.w);
  float _37_m30 : packoffset(c12);
  float _37_m31 : packoffset(c12.y);
  float _37_m32 : packoffset(c12.z);
  float _37_m33 : packoffset(c12.w);
  float _37_m34 : packoffset(c13);
  float _37_m35 : packoffset(c13.y);
  float _37_m36 : packoffset(c13.z);
  float _37_m37 : packoffset(c13.w);
  float _37_m38 : packoffset(c14);
  float _37_m39 : packoffset(c14.y);
  float _37_m40 : packoffset(c14.z);
  float _37_m41 : packoffset(c14.w);
  float _37_m42 : packoffset(c15);
  float _37_m43 : packoffset(c15.y);
  float _37_m44 : packoffset(c15.z);
  float _37_m45 : packoffset(c15.w);
  float _37_m46 : packoffset(c16);
  float _37_m47 : packoffset(c16.y);
  float _37_m48 : packoffset(c16.z);
  float _37_m49 : packoffset(c16.w);
  float4 _37_m50 : packoffset(c17);
  float4 _37_m51 : packoffset(c18);
  float4 _37_m52 : packoffset(c19);
  float4 _37_m53 : packoffset(c20);
  float4 _37_m54 : packoffset(c21);
  float _37_m55 : packoffset(c22);
  float _37_m56 : packoffset(c22.y);
  float _37_m57 : packoffset(c22.z);
  float _37_m58 : packoffset(c22.w);
  float _37_m59 : packoffset(c23);
  float _37_m60 : packoffset(c23.y);
  float _37_m61 : packoffset(c23.z);
  float _37_m62 : packoffset(c23.w);
  float _37_m63 : packoffset(c24);
  float _37_m64 : packoffset(c24.y);
  float _37_m65 : packoffset(c24.z);
  float _37_m66 : packoffset(c24.w);
  float _37_m67 : packoffset(c25);
  float _37_m68 : packoffset(c25.y);
  float _37_m69 : packoffset(c25.z);
  float _37_m70 : packoffset(c25.w);
  float _37_m71 : packoffset(c26);
  float _37_m72 : packoffset(c26.y);
  float _37_m73 : packoffset(c26.z);
  float _37_m74 : packoffset(c26.w);
  float _37_m75 : packoffset(c27);
  float _37_m76 : packoffset(c27.y);
  float _37_m77 : packoffset(c27.z);
  float _37_m78 : packoffset(c27.w);
  float _37_m79 : packoffset(c28);
  float4 _37_m80 : packoffset(c29);
  float4 _37_m81 : packoffset(c30);
  float _37_m82 : packoffset(c31);
  float _37_m83 : packoffset(c31.y);
  float _37_m84 : packoffset(c31.z);
  float _37_m85 : packoffset(c31.w);
  float4 _37_m86 : packoffset(c32);
};

[[vk::binding(13, 0)]] cbuffer _47_48 : register(b13, space0) {
  float4 _48_m0 : packoffset(c0);
  float4 _48_m1 : packoffset(c1);
  float4 _48_m2 : packoffset(c2);
  float4 _48_m3 : packoffset(c3);
  float4 _48_m4 : packoffset(c4);
  uint4 _48_m5 : packoffset(c5);
  float4 _48_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _49_50 : register(b49, space0) {
  int _50_m0 : packoffset(c0);
  int _50_m1 : packoffset(c0.y);
  int _50_m2 : packoffset(c0.z);
  int _50_m3 : packoffset(c0.w);
  int _50_m4 : packoffset(c1);
  int _50_m5 : packoffset(c1.y);
  int _50_m6 : packoffset(c1.z);
  int _50_m7 : packoffset(c1.w);
  float _50_m8 : packoffset(c2);
  float _50_m9 : packoffset(c2.y);
  float _50_m10 : packoffset(c2.z);
  float _50_m11 : packoffset(c2.w);
  float _50_m12 : packoffset(c3);
  float _50_m13 : packoffset(c3.y);
  float _50_m14 : packoffset(c3.z);
  float _50_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _51_52 : register(b14, space0) {
  column_major float4x4 _52_m0[5] : packoffset(c0);
  float4 _52_m1[4] : packoffset(c20);
  float4 _52_m2[4] : packoffset(c24);
  float4 _52_m3[4] : packoffset(c28);
  float4 _52_m4 : packoffset(c32);
  float4 _52_m5 : packoffset(c33);
  float4 _52_m6 : packoffset(c34);
  float4 _52_m7 : packoffset(c35);
  float4 _52_m8 : packoffset(c36);
  float4 _52_m9[27] : packoffset(c37);
  float4 _52_m10 : packoffset(c64);
  float4 _52_m11 : packoffset(c65);
  float4 _52_m12[62] : packoffset(c66);
  column_major float4x4 _52_m13[15] : packoffset(c128);
  float4 _52_m14[15] : packoffset(c188);
  float4 _52_m15[15] : packoffset(c203);
  float4 _52_m16[15] : packoffset(c218);
  float4 _52_m17 : packoffset(c233);
  float4 _52_m18 : packoffset(c234);
  float4 _52_m19[21] : packoffset(c235);
  column_major float4x4 _52_m20 : packoffset(c256);
  column_major float4x4 _52_m21 : packoffset(c260);
  float4 _52_m22 : packoffset(c264);
  float4 _52_m23 : packoffset(c265);
  float4 _52_m24 : packoffset(c266);
  float4 _52_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _55 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _62_63 : register(b51, space0) {
  float4 _63_m0[32] : packoffset(c0);
  column_major float4x4 _63_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _24 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(47, 0)]] Texture2D<float4> _28 : register(t47, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _31 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _32 : register(s1, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _33 : register(t2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _35 : register(t4, space1);
[[vk::binding(37, 0)]] Texture3D<float4> _39 : register(t37, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _40 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _41 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _42 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _43 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _44 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _45 : register(t31, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _53 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _54 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _56 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _57 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _58 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _60 : register(t27, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _61 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _66 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _67 : register(t29, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float4 _4;
static float4 _5;
static float3 _6;
static float4 _7;
static float4 _8;
static float3 _9;
static float3 _10;
static uint _11;
static float4 _13;
static float4 _14;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float4 _4 : TEXCOORD0;
  [[vk::location(1)]] float4 _5 : TEXCOORD1;
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
  float2 _411 = gl_FragCoord.xy * _18_m0.zw;
  uint2 _412 = uint2(gl_FragCoord.xy);
  float2 _414 = (_411 * 2.0f) - 1.0f.xx;
  float4 _417 = float4(_414, gl_FragCoord.z, 1.0f);
  _417.y = -_414.y;
  float4 _420 = mul(_16_m6, _417);
  float3 _424 = _420.xyz / _420.w.xxx;
  float4 _428 = float4(_424, 1.0f);
  float _431 = abs(mul(_16_m0, _428).z);
  float _435 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _440 = float4(_7.xyz, _435).xyz;
  float3 _461;
  do {
    if (_18_m4.w == 0.0f) {
      _461 = _16_m11.xyz - _424;
      break;
    } else {
      _461 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _462 = dot(_461, _461);
  float _464 = rsqrt(max(_462, 9.9999999392252902907785028219223e-09f));
  float3 _465 = _461 * _464;
  float _466 = _462 * _464;
  float _514 = (_18_m77.w * (1.0f - _21_m0[_11]._m8.x)) + _21_m0[_11]._m8.y;
  float2 _533 = ((mul(((((_4.xy * _37_m23.x) + ((((_4.zw * _37_m4) - (_5.xy * _37_m4)) + _5.xy) * _37_m23.y)) + (_37_m21.xy * _514)) + (_37_m21.zw * (_5 * _37_m4).x)) - 0.5f.xx, float2x2(float2(_37_m22.xy), float2(_37_m22.zw))) + 0.5f.xx) * _37_m24.xy) + _37_m24.zw;
  float _541 = frac((_21_m0[_11]._m0[0].w + _21_m0[_11]._m0[1].w) + _21_m0[_11]._m0[2].w);
  float _544 = lerp(0.0f, _541, _37_m74);
  _533.y = _533.y * (1.0f + min(_544, 0.5f));
  float4 _559 = _31.SampleBias(_32, _533 + _544.xx, _18_m16);
  float4 _564 = ((_37_m16 * lerp(_8, 1.0f.xxxx, _37_m5.xxxx)) * float4(_37_m6, _37_m6, _37_m6, _37_m7)) * lerp(_559, float4(1.0f, 1.0f, 1.0f, _559.x), _37_m18.xxxx);
  float2 _573 = ((float2(_412) * _18_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _576 = float4(_573, _28.SampleLevel(_23, _411, 0.0f).x, 1.0f);
  _576.y = -_573.y;
  float4 _579 = mul(_16_m6, _576);
  float _637 = fmod(floor((_514 + lerp(0.0f, _541, _37_m47)) * _37_m44), _37_m51.y * _37_m51.x);
  float _640 = _37_m51.y - floor(_637 / _37_m51.x);
  float _643 = 1.0f / _37_m51.x;
  float _644 = 1.0f / _37_m51.y;
  float4 _647 = float4(_643, _644, (_637 - (_640 * _37_m51.x)) * _643, _640 * _644);
  float2 _651 = (_4.xy * _647.xy) + _647.zw;
  float4 _654 = _34.SampleBias(_25, _651, _18_m16);
  float4 _657 = clamp(_654 - _37_m49.xxxx, 0.0f.xxxx, 1.0f.xxxx);
  float _661 = _657.w;
  float _665 = _661 * _37_m45;
  float4 _669 = _33.SampleBias(_25, _651, _18_m16);
  _669.w = _669.w * _669.x;
  float2 _676 = (_669.wy * 2.0f) - 1.0f.xx;
  float3 _677 = float3(_676.x, _676.y, _381.z);
  float2 _678 = _676.xy;
  _677.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_678, _678), 0.0f, 1.0f)));
  float2 _686 = _677.xy * _37_m42;
  float3 _688 = mul(float3(_686.x, _686.y, _677.z), float3x3(_440 * 1.0f, (cross(_6, _440) * _435) * 1.0f, _6 * 1.0f));
  float3 _692 = _688 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_688, _688)));
  bool3 _698 = (gl_FrontFacing ? true : false).xxx;
  float3 _699 = -_692;
  float3 _700 = float3(_698.x ? _692.x : _699.x, _698.y ? _692.y : _699.y, _698.z ? _692.z : _699.z);
  float _735 = ((((clamp(((_564.w * ((_37_m26 != 0.0f) ? (clamp((_431 - _37_m27) / (_37_m28 - _37_m27), 0.0f, 1.0f) * clamp((_431 - _37_m29) / (_37_m30 - _37_m29), 0.0f, 1.0f)) : 1.0f)) * _665) - _37_m48, 0.0f, 1.0f) * _37_m45) * clamp(((abs(mul(_16_m0, float4(_579.xyz / _579.w.xxx, 1.0f)).z) - _431) + _37_m39) / _37_m38, 0.0f, 1.0f)) * lerp(1.0f, _8.w, _37_m72)) * lerp(1.0f, pow(abs(dot(_6, _465)), _37_m65), _37_m67)) * (1.0f - _21_m0[_11]._m1.y);
  float _743 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
  float _764 = clamp(_735 * (((_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _743 : (-_743))) > 0.0f) ? 1.0f : (1.0f - _37_m0)), 0.0f, 1.0f);
  float3 _765 = clamp(((_564.xyz + ((_657.xyz * _37_m50.xyz) * _661)).xyz * ((1.0f - _37_m12) + (_18_m20.y * _37_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
  float3 _768 = _765 * _37_m68;
  float3 _770 = _765 * (1.0f - _37_m68);
  float3 _808;
  if (_37_m84 > 0.0f) {
    _808 = _770 + (((_35.SampleBias(_25, (mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), _700).xy + 1.0f.xx) * 0.5f, _18_m16).xyz * _37_m82) * _37_m86.xyz) * ((1.0f - _37_m83) + (_18_m20.y * _37_m83)));
  } else {
    _808 = _770;
  }
  float _817 = (_37_m57 * (_665 * lerp(1.0f, _8.x, _37_m72))) * _768.x;
  float2 _866;
  if (clamp((_37_m3 + 1.0f) - _37_m0, 0.0f, 1.0f) > 0.5f) {
    float2 _852 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _852.y = -_852.y;
    _866 = ((sqrt(sqrt(abs(_852 * 0.5f))) * float2(int2(sign(_852)))) * 0.5f) + 0.5f.xx;
  } else {
    _866 = 0.0f.xx;
  }
  float3 _868 = (0.07999999821186065673828125f * _37_m71).xxx;
  uint2 _899;
  float _900;
  if (_18_m24.y == 1.0f) {
    float4 _876 = mul(_18_m138, _428);
    float4 _879 = _876;
    _879.y = -_876.y;
    float4 _882 = _879 * (1.0f / _876.w);
    _899 = uint2(clamp(((_882.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _900 = 1.0f / ((_18_m2.z * _882.z) + _18_m2.w);
  } else {
    _899 = _412;
    _900 = _431;
  }
  float3 _902 = _424 + (_700 * 0.25f);
  float3 _912 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _921 = _902 - (_18_m108.xyz + (_912 * (-_18_m110.w)));
  float _936 = max(min(max((max(abs(_921.x), abs(_921.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_921.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1238;
  float4 _1239;
  float4 _1240;
  float _1241;
  float _1242;
  if ((_18_m108.w != 0.0f) && (_936 < 1.0f)) {
    float3 _949 = _902 - (_18_m108.xyz + (_912 * (-_18_m110.y)));
    float _963 = max(clamp((max(abs(_949.x), abs(_949.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_949.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1039;
    float4 _1040;
    float4 _1041;
    float4 _1042;
    if (_963 < 1.0f) {
      float3 _972 = ((_902 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _974 = _972 - floor(_972);
      float4 _978 = _40.SampleLevel(_25, _974, 0.0f);
      float _979 = 1.0f - _963;
      float _983 = _18_m109.y * 0.5f;
      float _988 = _974.x;
      float _989 = clamp(_974.y, _983, 1.0f - _983) * 0.3333333432674407958984375f;
      float _990 = _974.z;
      float4 _993 = _41.SampleLevel(_24, float3(_988, _989, _990), 0.0f);
      float _1009 = _978.x;
      float _1019 = _978.y;
      float _1029 = _978.z;
      _1039 = _936 + (_993.w * _979);
      _1040 = float4(((_41.SampleLevel(_24, float3(_988, _989 + 0.666666686534881591796875f, _990), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1029, _1029) * _979;
      _1041 = float4(((_41.SampleLevel(_24, float3(_988, _989 + 0.3333333432674407958984375f, _990), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1019, _1019) * _979;
      _1042 = float4(((_993.xyz * 4.0f) - 2.0f.xxx) * _1009, _1009) * _979;
    } else {
      _1039 = _936;
      _1040 = 0.0f.xxxx;
      _1041 = 0.0f.xxxx;
      _1042 = 0.0f.xxxx;
    }
    float3 _1048 = _902 - (_18_m108.xyz + (_912 * (-_18_m110.z)));
    float _1062 = max(clamp((max(abs(_1048.x), abs(_1048.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1048.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1142;
    float4 _1143;
    float4 _1144;
    float4 _1145;
    if (_1062 < 1.0f) {
      float3 _1071 = ((_902 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1073 = _1071 - floor(_1071);
      float4 _1077 = _42.SampleLevel(_25, _1073, 0.0f);
      float _1079 = _963 * (1.0f - _1062);
      float _1083 = _18_m109.y * 0.5f;
      float _1088 = _1073.x;
      float _1089 = clamp(_1073.y, _1083, 1.0f - _1083) * 0.3333333432674407958984375f;
      float _1090 = _1073.z;
      float4 _1093 = _43.SampleLevel(_24, float3(_1088, _1089, _1090), 0.0f);
      float _1109 = _1077.x;
      float _1120 = _1077.y;
      float _1131 = _1077.z;
      _1142 = _1039 + (_1093.w * _1079);
      _1143 = _1040 + (float4(((_43.SampleLevel(_24, float3(_1088, _1089 + 0.666666686534881591796875f, _1090), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1131, _1131) * _1079);
      _1144 = _1041 + (float4(((_43.SampleLevel(_24, float3(_1088, _1089 + 0.3333333432674407958984375f, _1090), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1120, _1120) * _1079);
      _1145 = _1042 + (float4(((_1093.xyz * 4.0f) - 2.0f.xxx) * _1109, _1109) * _1079);
    } else {
      _1142 = _1039;
      _1143 = _1040;
      _1144 = _1041;
      _1145 = _1042;
    }
    float4 _1228;
    float4 _1229;
    float4 _1230;
    float _1231;
    if (_1062 > 0.0f) {
      float3 _1154 = ((_902 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1157 = _18_m109.xyz * 0.5f;
      float3 _1159 = clamp(_1154 - floor(_1154), _1157, 1.0f.xxx - _1157);
      float4 _1163 = _44.SampleLevel(_25, _1159, 0.0f);
      float _1165 = _1062 * (1.0f - _936);
      float _1169 = _18_m109.y * 0.5f;
      float _1174 = _1159.x;
      float _1175 = clamp(_1159.y, _1169, 1.0f - _1169) * 0.3333333432674407958984375f;
      float _1176 = _1159.z;
      float4 _1179 = _45.SampleLevel(_24, float3(_1174, _1175, _1176), 0.0f);
      float _1195 = _1163.x;
      float _1206 = _1163.y;
      float _1217 = _1163.z;
      _1228 = _1143 + (float4(((_45.SampleLevel(_24, float3(_1174, _1175 + 0.666666686534881591796875f, _1176), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1217, _1217) * _1165);
      _1229 = _1144 + (float4(((_45.SampleLevel(_24, float3(_1174, _1175 + 0.3333333432674407958984375f, _1176), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1206, _1206) * _1165);
      _1230 = _1145 + (float4(((_1179.xyz * 4.0f) - 2.0f.xxx) * _1195, _1195) * _1165);
      _1231 = _1142 + (_1179.w * _1165);
    } else {
      _1228 = _1143;
      _1229 = _1144;
      _1230 = _1145;
      _1231 = _1142;
    }
    float _1234 = clamp((_1231 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1238 = _1228;
    _1239 = _1229;
    _1240 = _1230;
    _1241 = _1234 - _936;
    _1242 = (_1234 + _936) * 0.5f;
  } else {
    _1238 = 0.0f.xxxx;
    _1239 = 0.0f.xxxx;
    _1240 = 0.0f.xxxx;
    _1241 = 0.0f;
    _1242 = 1.0f;
  }
  float4 _1262 = _1240 + float4(_18_m111.x * _1242, (_18_m111.y * _1242) + ((_18_m111.w * _1241) * 0.5f), _18_m111.z * _1242, (_18_m111.w * _1242) + ((_18_m111.y * _1241) * 0.375f));
  float4 _1282 = _1239 + float4(_18_m112.x * _1242, (_18_m112.y * _1242) + ((_18_m112.w * _1241) * 0.5f), _18_m112.z * _1242, (_18_m112.w * _1242) + ((_18_m112.y * _1241) * 0.375f));
  float4 _1302 = _1238 + float4(_18_m113.x * _1242, (_18_m113.y * _1242) + ((_18_m113.w * _1241) * 0.5f), _18_m113.z * _1242, (_18_m113.w * _1242) + ((_18_m113.y * _1241) * 0.375f));
  float3 _1330 = lerp(1.0f.xxx, clamp(abs((frac(float3(_37_m55, _37_m56, _817).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _37_m56.xxx) * _817;
  float3 _1337 = ((float3(max(0.0f, dot(_1262.xyz, _700) + _1262.w), max(0.0f, dot(_1282.xyz, _700) + _1282.w), max(0.0f, dot(_1302.xyz, _700) + _1302.w)) * (_768 + (_1330 * _37_m58))) * 1.0f) * _18_m22.x;
  float3 _1346 = (((_1337.x + _1337.y) + _1337.z) * 0.3333333432674407958984375f).xxx;
  float3 _1351 = (_1346 + ((_1337 - _1346) * _37_m66)) + ((-0.0f).xxx * _37_m66);
  float3 _1357 = _18_m78.w.xxx;
  float _1365 = 1.0f - _37_m11;
  float4 _2218;
  do {
    [branch] if (_50_m4 == 0) {
      _2218 = 0.0f.xxxx;
      break;
    }
    float3 _1375 = _424 + (_700 * 0.5f);
    float2 _2047;
    do {
      if (_52_m7.w >= 0.9900000095367431640625f) {
        _2047 = float2(_52_m7.z, 1.0f);
        break;
      }
      float _1971;
      if (_37_m78 > 0.0f) {
        float _1783 = 1.0f - clamp(dot(_700, _48_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1800 = float4((_1375 - (_48_m0.xyz * (_1783 * _52_m22.x))) + (_700 * (_1783 * _52_m22.y)), 1.0f);
        float4 _1801 = mul(_52_m21, _1800);
        float _1970;
        if (all(bool2(_1801.xy.x > 0.0f.xx.x, _1801.xy.y > 0.0f.xx.y)) && all(bool2(_1801.xy.x < 1.0f.xx.x, _1801.xy.y < 1.0f.xx.y))) {
          uint _1821 = clamp(uint((floor(_1801.y * _52_m23.z) + _1801.x) * _52_m23.y), 0u, 127u);
          uint _1825 = asuint(_52_m25[_1821].x);
          float2 _1826 = spvUnpackHalf2x16(_1825);
          float _1827 = _1826.x;
          float _1969;
          if (_1827 >= 0.0f) {
            float4x4 _1836 = _52_m20;
            _1836[0].w = _52_m25[_1821].y;
            _1836[1].w = _52_m25[_1821].z;
            _1836[2].w = _52_m25[_1821].w;
            float4 _1843 = mul(_1836, _1800);
            float _1968;
            if (all(bool3(_1843.xyz.x > 0.0f.xxx.x, _1843.xyz.y > 0.0f.xxx.y, _1843.xyz.z > 0.0f.xxx.z)) && all(bool3(_1843.xyz.x < 1.0f.xxx.x, _1843.xyz.y < 1.0f.xxx.y, _1843.xyz.z < 1.0f.xxx.z))) {
              float2 _1867 = float4((_1843.xy * _52_m22.zw) + float2(_1827, spvUnpackHalf2x16(_1825 >> 16u).x), _1843.z, 1.0f).xy * _52_m24.zw;
              float2 _1869 = floor(_1867 + 0.5f.xx);
              float2 _1870 = _1867 - _1869;
              float _1871 = _1870.x;
              float _1872 = _1871 + 0.5f;
              float _1874 = (_1872 * _1872) * 0.5f;
              float _1877 = min(_1871, 0.0f);
              float _1881 = max(_1871, 0.0f);
              float4 _1885 = float4(_1874 - _1871, (1.0f - _1871) - (_1877 * _1877), (_1871 + 1.0f) - (_1881 * _1881), _1874) * 0.44444000720977783203125f;
              float _1886 = _1870.y;
              float _1887 = _1886 + 0.5f;
              float _1889 = (_1887 * _1887) * 0.5f;
              float _1892 = min(_1886, 0.0f);
              float _1896 = max(_1886, 0.0f);
              float4 _1900 = float4(_1889 - _1886, (1.0f - _1886) - (_1892 * _1892), (_1886 + 1.0f) - (_1896 * _1896), _1889) * 0.44444000720977783203125f;
              float2 _1902 = _1885.yw;
              float2 _1903 = _1885.xz + _1902;
              float2 _1905 = _1900.yw;
              float2 _1906 = _1900.xz + _1905;
              float2 _1912 = ((_1902 / _1903) + float2(-1.5f, 0.5f)) * _52_m24.xx;
              float2 _1914 = ((_1905 / _1906) + float2(-1.5f, 0.5f)) * _52_m24.yy;
              float2 _1916 = _1869 * _52_m24.xy;
              float _1917 = _1912.x;
              float _1918 = _1914.x;
              float _1921 = _1912.y;
              float _1924 = _1914.y;
              float _1929 = _1903.x;
              float _1930 = _1906.x;
              float _1932 = _1903.y;
              float _1934 = _1906.y;
              _1968 = ((((_1929 * _1930) * _57.SampleCmpLevelZero(_26, float3(_1916 + float2(_1917, _1918), _379).xy, _1843.z)) + ((_1932 * _1930) * _57.SampleCmpLevelZero(_26, float3(_1916 + float2(_1921, _1918), _379).xy, _1843.z))) + ((_1929 * _1934) * _57.SampleCmpLevelZero(_26, float3(_1916 + float2(_1917, _1924), _379).xy, _1843.z))) + ((_1932 * _1934) * _57.SampleCmpLevelZero(_26, float3(_1916 + float2(_1921, _1924), _379).xy, _1843.z));
            } else {
              _1968 = 1.0f;
            }
            _1969 = _1968;
          } else {
            _1969 = 1.0f;
          }
          _1970 = _1969;
        } else {
          _1970 = 1.0f;
        }
        _1971 = _1970;
      } else {
        int _1394 = int(_52_m7.x);
        bool3 _1396 = (_1394 == 2).xxx;
        float3 _1404 = _1375 - float3(_1396.x ? _52_m1[0].xyz.x : _16_m11.xyz.x, _1396.y ? _52_m1[0].xyz.y : _16_m11.xyz.y, _1396.z ? _52_m1[0].xyz.z : _16_m11.xyz.z);
        float _1415 = max(clamp((_52_m6.w - dot(_1404, _1404)) * _52_m6.z, 0.0f, 1.0f), _52_m8.x);
        float _1572;
        bool _1573;
        if (_1415 > 0.0f) {
          float _1570;
          bool _1571;
          if (_1394 > 0) {
            float3 _1422 = _1375 - _52_m1[0].xyz;
            float3 _1426 = _1375 - _52_m1[1].xyz;
            float3 _1430 = _1375 - _52_m1[2].xyz;
            float3 _1434 = _1375 - _52_m1[3].xyz;
            float4 _1439 = float4(dot(_1422, _1422), dot(_1426, _1426), dot(_1430, _1430), dot(_1434, _1434));
            float4 _1448 = float4(_52_m1[0].w, _52_m1[1].w, _52_m1[2].w, _52_m1[3].w);
            float4 _1450 = float4(bool4(_1439.x < _1448.x, _1439.y < _1448.y, _1439.z < _1448.z, _1439.w < _1448.w));
            float3 _1454 = clamp(_1450.yzw - _1450.xyz, 0.0f.xxx, 1.0f.xxx);
            float _1458 = clamp(4.0f - dot(float4(_1450.x, _1454.x, _1454.y, _1454.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
            float _1460 = clamp(_1458 + 1.0f, 0.0f, 3.0f);
            uint _1461 = uint(_1458);
            uint _1469 = uint(_1460);
            float _1475 = dot(_1439, _357[_1469]) / _52_m1[_1469].w;
            float _1493;
            if (((_1460 > _1458) && (_1475 >= 0.0f)) && (_1475 <= 1.0f)) {
              _1493 = _1458 + step(frac(52.98291778564453125f * frac(dot(float2(_899) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1439, _357[_1461]) / _52_m1[_1461].w) - 0.89999997615814208984375f) * 12.0f);
            } else {
              _1493 = _1458;
            }
            float _1494 = clamp(_1493, 0.0f, 4.0f);
            float4 _1502 = mul(_52_m0[uint(_1494)], float4(_1375, 1.0f));
            float _1505 = _1502.z;
            float4 _1506 = float4(_1502.xy, _1505, _1494);
            float3 _1507 = _1506.xyz;
            bool3 _1508 = bool3(_1507.x <= 0.0f.xxx.x, _1507.y <= 0.0f.xxx.y, _1507.z <= 0.0f.xxx.z);
            bool3 _1509 = bool3(_1507.x >= 1.0f.xxx.x, _1507.y >= 1.0f.xxx.y, _1507.z >= 1.0f.xxx.z);
            bool _1515 = any(bool3(_1508.x || _1509.x, _1508.y || _1509.y, _1508.z || _1509.z)) || ((asuint(_1505) & 2147483647u) > 2139095040u);
            int _1516 = int(_1494);
            float2 _1531 = float4(_52_m3[_1516].xy + (_1506.xy * _52_m3[_1516].zw), _1505, _1494).xy;
            _1570 = _1515 ? 1.0f : (0.25f * (((_53.SampleCmpLevelZero(_26, float3(_1531 + (_52_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _379).xy, _1505) + _53.SampleCmpLevelZero(_26, float3(_1531 + (_52_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _379).xy, _1505)) + _53.SampleCmpLevelZero(_26, float3(_1531 + (_52_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _379).xy, _1505)) + _53.SampleCmpLevelZero(_26, float3(_1531 + (_52_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _379).xy, _1505)));
            _1571 = _1515;
          } else {
            _1570 = 1.0f;
            _1571 = false;
          }
          _1572 = _1570;
          _1573 = _1571;
        } else {
          _1572 = 1.0f;
          _1573 = false;
        }
        float _1773;
        float _1774;
        if ((_1415 < 1.0f) || (_52_m8.x > 0.5f)) {
          float _1584 = 1.0f - clamp(dot(_700, _48_m0.xyz), 0.0f, 0.89999997615814208984375f);
          float4 _1601 = float4((_1375 - (_48_m0.xyz * (_1584 * _52_m22.x))) + (_700 * (_1584 * _52_m22.y)), 1.0f);
          float4 _1602 = mul(_52_m21, _1601);
          float _1771;
          if (all(bool2(_1602.xy.x > 0.0f.xx.x, _1602.xy.y > 0.0f.xx.y)) && all(bool2(_1602.xy.x < 1.0f.xx.x, _1602.xy.y < 1.0f.xx.y))) {
            uint _1622 = clamp(uint((floor(_1602.y * _52_m23.z) + _1602.x) * _52_m23.y), 0u, 127u);
            uint _1626 = asuint(_52_m25[_1622].x);
            float2 _1627 = spvUnpackHalf2x16(_1626);
            float _1628 = _1627.x;
            float _1770;
            if (_1628 >= 0.0f) {
              float4x4 _1637 = _52_m20;
              _1637[0].w = _52_m25[_1622].y;
              _1637[1].w = _52_m25[_1622].z;
              _1637[2].w = _52_m25[_1622].w;
              float4 _1644 = mul(_1637, _1601);
              float _1769;
              if (all(bool3(_1644.xyz.x > 0.0f.xxx.x, _1644.xyz.y > 0.0f.xxx.y, _1644.xyz.z > 0.0f.xxx.z)) && all(bool3(_1644.xyz.x < 1.0f.xxx.x, _1644.xyz.y < 1.0f.xxx.y, _1644.xyz.z < 1.0f.xxx.z))) {
                float2 _1668 = float4((_1644.xy * _52_m22.zw) + float2(_1628, spvUnpackHalf2x16(_1626 >> 16u).x), _1644.z, 1.0f).xy * _52_m24.zw;
                float2 _1670 = floor(_1668 + 0.5f.xx);
                float2 _1671 = _1668 - _1670;
                float _1672 = _1671.x;
                float _1673 = _1672 + 0.5f;
                float _1675 = (_1673 * _1673) * 0.5f;
                float _1678 = min(_1672, 0.0f);
                float _1682 = max(_1672, 0.0f);
                float4 _1686 = float4(_1675 - _1672, (1.0f - _1672) - (_1678 * _1678), (_1672 + 1.0f) - (_1682 * _1682), _1675) * 0.44444000720977783203125f;
                float _1687 = _1671.y;
                float _1688 = _1687 + 0.5f;
                float _1690 = (_1688 * _1688) * 0.5f;
                float _1693 = min(_1687, 0.0f);
                float _1697 = max(_1687, 0.0f);
                float4 _1701 = float4(_1690 - _1687, (1.0f - _1687) - (_1693 * _1693), (_1687 + 1.0f) - (_1697 * _1697), _1690) * 0.44444000720977783203125f;
                float2 _1703 = _1686.yw;
                float2 _1704 = _1686.xz + _1703;
                float2 _1706 = _1701.yw;
                float2 _1707 = _1701.xz + _1706;
                float2 _1713 = ((_1703 / _1704) + float2(-1.5f, 0.5f)) * _52_m24.xx;
                float2 _1715 = ((_1706 / _1707) + float2(-1.5f, 0.5f)) * _52_m24.yy;
                float2 _1717 = _1670 * _52_m24.xy;
                float _1718 = _1713.x;
                float _1719 = _1715.x;
                float _1722 = _1713.y;
                float _1725 = _1715.y;
                float _1730 = _1704.x;
                float _1731 = _1707.x;
                float _1733 = _1704.y;
                float _1735 = _1707.y;
                _1769 = ((((_1730 * _1731) * _57.SampleCmpLevelZero(_26, float3(_1717 + float2(_1718, _1719), _379).xy, _1644.z)) + ((_1733 * _1731) * _57.SampleCmpLevelZero(_26, float3(_1717 + float2(_1722, _1719), _379).xy, _1644.z))) + ((_1730 * _1735) * _57.SampleCmpLevelZero(_26, float3(_1717 + float2(_1718, _1725), _379).xy, _1644.z))) + ((_1733 * _1735) * _57.SampleCmpLevelZero(_26, float3(_1717 + float2(_1722, _1725), _379).xy, _1644.z));
              } else {
                _1769 = 1.0f;
              }
              _1770 = _1769;
            } else {
              _1770 = 1.0f;
            }
            _1771 = _1770;
          } else {
            _1771 = 1.0f;
          }
          _1773 = _1573 ? _1771 : _1572;
          _1774 = _1771;
        } else {
          _1773 = _1572;
          _1774 = 1.0f;
        }
        _1971 = lerp(lerp(_1774, _1773, _1415), min(_1774, _1773), _52_m8.x);
      }
      float _2042;
      if (_1971 > 0.001000000047497451305389404296875f) {
        float3 _2004 = _1375 - _18_m65.xyz;
        float2 _2009 = (_2004 + (_18_m68.xyz * _2004.y)).xz * _18_m66.z;
        float2 _2010 = _18_m67.xy * _18_m77.w;
        float3 _2017 = _1375 - _18_m69.xyz;
        float2 _2025 = _18_m69.w.xx;
        float4 _2032 = _56.SampleLevel(_25, lerp(_2009 * _18_m67.w, (_2017 + (_18_m68.xyz * _2017.y)).xz * _18_m70.x, _2025) + lerp(_2010, _18_m70.yz * _18_m77.w, _2025), 0.0f);
        _2042 = _1971 * lerp(1.0f, lerp(_56.SampleLevel(_25, _2009 + _2010, 0.0f).x, lerp(_2032.x, _2032.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2004.xz))), _18_m67.z);
      } else {
        _2042 = _1971;
      }
      _2047 = float2(lerp(_2042, _52_m7.z, _52_m7.w), _2042);
      break;
    } while (false);
    float _2052 = lerp(1.0f, min(1.0f, _2047.x), _52_m6.x);
    float4 _2217;
    if (_2052 > 0.001000000047497451305389404296875f) {
      float3 _2063 = reflect(-_465, _700);
      float3 _2064 = -_48_m0.xyz;
      float _2069 = dot(_2064, _2063);
      float3 _2071 = _2063 - (_2064 * _2069);
      bool3 _2073 = (_2069 < _48_m4.z).xxx;
      float3 _2081 = normalize((_2064 * _48_m4.z) + ((_2071 * rsqrt(max(6.103515625e-05f, dot(_2071, _2071)))) * _48_m4.y));
      float3 _2082 = float3(_2073.x ? _2081.x : _2063.x, _2073.y ? _2081.y : _2063.y, _2073.z ? _2081.z : _2063.z);
      float3 _2086 = _2082 + _465;
      float3 _2090 = _2086 * rsqrt(max(6.103515625e-05f, dot(_2086, _2086)));
      float _2092 = clamp(dot(_2082, _700), 0.0f, 1.0f);
      float _2094 = clamp(dot(_700, _2090), 0.0f, 1.0f);
      float _2099 = clamp(dot(_700, _465), 0.0f, 1.0f);
      float _2100 = _37_m70 * _37_m70;
      float _2101 = _2100 * _2100;
      float _2122 = (((_2094 * _2101) - _2094) * _2094) + 1.0f;
      float _2125 = 1.0f - clamp(dot(_465, _2090), 0.0f, 1.0f);
      float _2126 = _2125 * _2125;
      float _2128 = (_2125 * _2126) * _2126;
      float _2152 = 1.0f - _37_m70;
      float _2159 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2152 * (1.04997003078460693359375f + (_2152 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2152))))));
      float _2160 = 1.0f - _2159;
      float3 _2163 = _868 + ((1.0f.xxx - _868) * 0.0476190485060214996337890625f);
      float _2174 = clamp(1.0f - _817, 0.0f, 1.0f);
      float _2182 = clamp((dot(_700, _2082) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
      float3 _2199 = clamp(clamp((min(((_868 * (1.0f - _2128)) + _2128.xxx) * ((_2101 / (_2122 * _2122)) * (0.5f / (((_2092 * sqrt(((((-_2099) * _2101) + _2099) * _2099) + _2101)) + (_2099 * sqrt(((((-_2092) * _2101) + _2092) * _2092) + _2101))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2163 * (((_60.SampleLevel(_24, (float2(_2099, _37_m70) * 0.96875f) + 0.015625f.xx, 0.0f).x * _60.SampleLevel(_24, (float2(_2092, _37_m70) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2159) / _2160)) * _2163) / (1.0f.xxx - (_2163 * _2160)))) * _48_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_764, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _37_m64;
      float3 _2204 = (((_2199 * _2092) + (_1330 * lerp(lerp(1.0f, (_2182 * sqrt(_2182)) * 1.66666662693023681640625f, _2174) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_465, _2082), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _2174)))) + ((_768 * 1.0f) * _2092)) * _48_m1.xyz;
      float3 _2215 = lerp(_2204, _2204 * _58.SampleBias(_24, float2(_2052, 0.5f), _18_m16).xyz, (1.0f - _2052).xxx) * 1.0f;
      _2217 = float4(_2215.x, _2215.y, _2215.z, 0.0f.xxxx.w);
    } else {
      _2217 = 0.0f.xxxx;
    }
    _2218 = _2217;
    break;
  } while (false);
  float2 _2219 = float2(_899);
  float2 _2221 = floor(_2219 * 0.03125f);
  int _2229 = int((_2221.x + (_2221.y * _50_m9)) * 8.0f);
  float _2236 = floor(_900 - (_18_m3.y * _50_m15));
  float _2240 = clamp(_2236, 0.0f, _50_m11 - 1.0f);
  int _2242 = int(_2240 * 8.0f);
  float3 _2244;
  float _2247;
  _2244 = 0.0f.xxx;
  _2247 = 1.0f;
  float3 _2245;
  float _2248;
  [loop] for (int _2249 = 0; _2249 <= 7; _2244 = _2245, _2247 = _2248, _2249++) {
    uint _2270 = (_2236 <= _2240) ? (_30.Load(uint((_50_m2 + _2229) + _2249) * 4 + 0) & _30.Load(uint((_50_m3 + _2242) + _2249) * 4 + 0)) : 0u;
    uint _2271 = uint(_2249);
    float3 _2275;
    _2248 = _2247;
    _2275 = 0.0f.xxx;
    uint _2278;
    float _2273;
    float3 _2276;
    [loop] for (uint _2277 = _2270; _2277 != 0u; _2248 = _2273, _2275 = _2276, _2277 = _2278) {
      uint _2282 = firstbitlow(_2277);
      _2278 = _2277 ^ (1u << (_2282 & 31u));
      int _2288 = int((32u * _2271) + _2282) * 8;
      int _2291 = _2288 + 1;
      int _2294 = _2288 + 2;
      int _2297 = _2288 + 3;
      int _2300 = _2288 + 4;
      int _2303 = _2288 + 5;
      int _2306 = _2288 + 6;
      int _2309 = _2288 + 7;
      uint _2313 = uint(_48_m6[_2303].w);
      float _2388;
      if ((_2313 & 1u) == 1u) {
        uint _2319 = asuint(_48_m6[_2303].x);
        uint _2326 = asuint(_48_m6[_2303].y);
        uint _2333 = asuint(_48_m6[_2303].z);
        uint _2340 = asuint(_48_m6[_2306].x);
        uint _2347 = asuint(_48_m6[_2306].y);
        uint _2354 = asuint(_48_m6[_2306].z);
        float3 _2373 = abs(mul(float4(_424 - _48_m6[_2291].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2319).x, spvUnpackHalf2x16(_2333).x, spvUnpackHalf2x16(_2347).x, 0.0f), float4(spvUnpackHalf2x16(_2319 >> 16u).x, spvUnpackHalf2x16(_2333 >> 16u).x, spvUnpackHalf2x16(_2347 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2326).x, spvUnpackHalf2x16(_2340).x, spvUnpackHalf2x16(_2354).x, 0.0f), float4(spvUnpackHalf2x16(_2326 >> 16u).x, spvUnpackHalf2x16(_2340 >> 16u).x, spvUnpackHalf2x16(_2354 >> 16u).x, 0.0f))).xyz);
        float _2380 = _48_m6[_2309].x * 0.5f;
        float _2386 = 1.0f - clamp((max(max(_2373.x, _2373.y), _2373.z) - (_2380 + 0.5f)) / (0.5f - _2380), 0.0f, 1.0f);
        _2388 = _2386 * _2386;
      } else {
        _2388 = 1.0f;
      }
      uint _2392 = uint(_48_m6[_2288].w);
      bool _2395 = _48_m6[_2297].z > 0.5f;
      if ((false || (_2388 < 0.001000000047497451305389404296875f)) || ((_2392 < 4u) && _2395)) {
        _2273 = _2248;
        _2276 = _2275;
        continue;
      }
      float _4948;
      float3 _4949;
      do {
        [branch] if (_2392 >= 4u) {
          float3 _3625;
          do {
            float3 _2414 = _48_m6[_2291].xyz - _424;
            if (dot(_48_m6[_2297].xyz, _2414) > 0.0f) {
              _3625 = 0.0f.xxx;
              break;
            }
            float _2421 = dot(_2414, _2414) * _48_m6[_2291].w;
            float _2424 = clamp(1.0f - (_2421 * _2421), 0.0f, 1.0f);
            float _2425 = _2424 * _2424;
            if (_2425 <= 0.0f) {
              _3625 = 0.0f.xxx;
              break;
            }
            float3 _2464;
            float _2465;
            bool _2466;
            float3 _2494;
            float3 _2496;
            float3 _2498;
            float3 _2500;
            float3 _2429 = _48_m6[_2294].xyz * _48_m6[_2294].w;
            float3 _2430 = _48_m6[_2291].xyz - _2429;
            float3 _2431 = _48_m6[_2300].xyz * _48_m6[_2297].w;
            float3 _2434 = _48_m6[_2291].xyz + _2429;
            float2 _2445 = (float2(clamp(_37_m70, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_700, _465), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2449 = _66.SampleLevel(_24, _2445, 0.0f);
            float4 _2453 = _67.SampleLevel(_24, _2445, 0.0f);
            float _2848;
            do {
              _2464 = _465 - (_700 * dot(_465, _700));
              _2465 = dot(_2464, _2464);
              _2466 = _2465 > 9.9999997473787516355514526367188e-05f;
              float3 _2489;
              if (_2466) {
                _2489 = _2464 * rsqrt(_2465);
              } else {
                float _2470 = _700.z;
                float _2472 = (_2470 >= 0.0f) ? 1.0f : (-1.0f);
                float _2474 = (-1.0f) / (_2472 + _2470);
                float _2476 = _700.x;
                _2489 = float3(1.0f + (((_2472 * _2474) * _2476) * _2476), ((_2472 * _2476) * _700.y) * _2474, (-_2472) * _2476);
              }
              float3x3 _2493 = mul(float3x3(float3(_2449.x, 0.0f, _2449.z), float3(0.0f, 1.0f, 0.0f), float3(_2449.y, 0.0f, _2449.w)), float3x3(_2489, cross(_700, _2489), _700));
              _2494 = (_2430 - _2431) - _424;
              float3 _2495 = mul(_2493, _2494);
              _2496 = (_2430 + _2431) - _424;
              float3 _2497 = mul(_2493, _2496);
              _2498 = (_2434 + _2431) - _424;
              float3 _2499 = mul(_2493, _2498);
              _2500 = (_2434 - _2431) - _424;
              float3 _2501 = mul(_2493, _2500);
              float _2502 = _2495.z;
              float _2505 = _2497.z;
              float _2509 = _2499.z;
              float _2513 = _2501.z;
              int _2517 = (((int(_2502 > 0.0f) | ((_2505 > 0.0f) ? 2 : 0)) | ((_2509 > 0.0f) ? 4 : 0)) | ((_2513 > 0.0f) ? 8 : 0));
              float3 _2754;
              float3 _2755;
              float3 _2756;
              float3 _2757;
              float3 _2758;
              int _2759;
              if (_2517 == 0) {
                _2754 = _2501;
                _2755 = _2499;
                _2756 = _2497;
                _2757 = _2495;
                _2758 = 0.0f.xxx;
                _2759 = 0;
              } else {
                float3 _2748;
                float3 _2749;
                float3 _2750;
                float3 _2751;
                float3 _2752;
                int _2753;
                if (_2517 == 1) {
                  _2748 = _2501;
                  _2749 = (_2495 * (-_2513)) + (_2501 * _2502);
                  _2750 = (_2495 * (-_2505)) + (_2497 * _2502);
                  _2751 = _2495;
                  _2752 = 0.0f.xxx;
                  _2753 = 3;
                } else {
                  float3 _2734;
                  float3 _2735;
                  float3 _2736;
                  float3 _2737;
                  float3 _2738;
                  int _2739;
                  if (_2517 == 2) {
                    _2734 = _2501;
                    _2735 = (_2497 * (-_2509)) + (_2499 * _2505);
                    _2736 = _2497;
                    _2737 = (_2497 * (-_2502)) + (_2495 * _2505);
                    _2738 = 0.0f.xxx;
                    _2739 = 3;
                  } else {
                    float3 _2720;
                    float3 _2721;
                    float3 _2722;
                    float3 _2723;
                    float3 _2724;
                    int _2725;
                    if (_2517 == 3) {
                      _2720 = (_2495 * (-_2513)) + (_2501 * _2502);
                      _2721 = (_2497 * (-_2509)) + (_2499 * _2505);
                      _2722 = _2497;
                      _2723 = _2495;
                      _2724 = 0.0f.xxx;
                      _2725 = 4;
                    } else {
                      float3 _2706;
                      float3 _2707;
                      float3 _2708;
                      float3 _2709;
                      float3 _2710;
                      int _2711;
                      if (_2517 == 4) {
                        _2706 = _2501;
                        _2707 = _2499;
                        _2708 = (_2499 * (-_2505)) + (_2497 * _2509);
                        _2709 = (_2499 * (-_2513)) + (_2501 * _2509);
                        _2710 = 0.0f.xxx;
                        _2711 = 3;
                      } else {
                        float3 _2692;
                        float3 _2693;
                        float3 _2694;
                        float3 _2695;
                        float3 _2696;
                        int _2697;
                        if (_2517 == 5) {
                          _2692 = _2501;
                          _2693 = _2499;
                          _2694 = _2497;
                          _2695 = _2495;
                          _2696 = 0.0f.xxx;
                          _2697 = 0;
                        } else {
                          float3 _2686;
                          float3 _2687;
                          float3 _2688;
                          float3 _2689;
                          float3 _2690;
                          int _2691;
                          if (_2517 == 6) {
                            _2686 = (_2499 * (-_2513)) + (_2501 * _2509);
                            _2687 = _2499;
                            _2688 = _2497;
                            _2689 = (_2497 * (-_2502)) + (_2495 * _2505);
                            _2690 = 0.0f.xxx;
                            _2691 = 4;
                          } else {
                            float3 _2672;
                            float3 _2673;
                            float3 _2674;
                            float3 _2675;
                            float3 _2676;
                            int _2677;
                            if (_2517 == 7) {
                              float _2665 = -_2513;
                              _2672 = (_2499 * _2665) + (_2501 * _2509);
                              _2673 = _2499;
                              _2674 = _2497;
                              _2675 = _2495;
                              _2676 = (_2495 * _2665) + (_2501 * _2502);
                              _2677 = 5;
                            } else {
                              float3 _2659;
                              float3 _2660;
                              float3 _2661;
                              float3 _2662;
                              float3 _2663;
                              int _2664;
                              if (_2517 == 8) {
                                _2659 = _2501;
                                _2660 = _2501;
                                _2661 = (_2501 * (-_2509)) + (_2499 * _2513);
                                _2662 = (_2501 * (-_2502)) + (_2495 * _2513);
                                _2663 = 0.0f.xxx;
                                _2664 = 3;
                              } else {
                                float3 _2645;
                                float3 _2646;
                                float3 _2647;
                                float3 _2648;
                                float3 _2649;
                                int _2650;
                                if (_2517 == 9) {
                                  _2645 = _2501;
                                  _2646 = (_2501 * (-_2509)) + (_2499 * _2513);
                                  _2647 = (_2495 * (-_2505)) + (_2497 * _2502);
                                  _2648 = _2495;
                                  _2649 = 0.0f.xxx;
                                  _2650 = 4;
                                } else {
                                  float3 _2631;
                                  float3 _2632;
                                  float3 _2633;
                                  float3 _2634;
                                  float3 _2635;
                                  int _2636;
                                  if (_2517 == 10) {
                                    _2631 = _2501;
                                    _2632 = _2499;
                                    _2633 = _2497;
                                    _2634 = _2495;
                                    _2635 = 0.0f.xxx;
                                    _2636 = 0;
                                  } else {
                                    float3 _2625;
                                    float3 _2626;
                                    float3 _2627;
                                    float3 _2628;
                                    float3 _2629;
                                    int _2630;
                                    if (_2517 == 11) {
                                      float _2618 = -_2509;
                                      _2625 = (_2501 * _2618) + (_2499 * _2513);
                                      _2626 = (_2497 * _2618) + (_2499 * _2505);
                                      _2627 = _2497;
                                      _2628 = _2495;
                                      _2629 = _2501;
                                      _2630 = 5;
                                    } else {
                                      float3 _2612;
                                      float3 _2613;
                                      float3 _2614;
                                      float3 _2615;
                                      float3 _2616;
                                      int _2617;
                                      if (_2517 == 12) {
                                        _2612 = _2501;
                                        _2613 = _2499;
                                        _2614 = (_2499 * (-_2505)) + (_2497 * _2509);
                                        _2615 = (_2501 * (-_2502)) + (_2495 * _2513);
                                        _2616 = 0.0f.xxx;
                                        _2617 = 4;
                                      } else {
                                        bool _2570 = _2517 == 13;
                                        float3 _2597;
                                        float3 _2598;
                                        float3 _2599;
                                        float3 _2600;
                                        int _2601;
                                        if (_2570) {
                                          float _2590 = -_2505;
                                          _2597 = (_2499 * _2590) + (_2497 * _2509);
                                          _2598 = (_2495 * _2590) + (_2497 * _2502);
                                          _2599 = _2495;
                                          _2600 = _2501;
                                          _2601 = 5;
                                        } else {
                                          float3 _2587;
                                          float3 _2588;
                                          int _2589;
                                          if (_2517 == 14) {
                                            float _2580 = -_2502;
                                            _2587 = (_2497 * _2580) + (_2495 * _2505);
                                            _2588 = (_2501 * _2580) + (_2495 * _2513);
                                            _2589 = 5;
                                          } else {
                                            _2587 = _2495;
                                            _2588 = 0.0f.xxx;
                                            _2589 = (_2517 == 15) ? 4 : 0;
                                          }
                                          _2597 = _2499;
                                          _2598 = _2497;
                                          _2599 = _2587;
                                          _2600 = _2588;
                                          _2601 = _2589;
                                        }
                                        bool3 _2602 = _2570.xxx;
                                        _2612 = float3(_2602.x ? _2499.x : _2501.x, _2602.y ? _2499.y : _2501.y, _2602.z ? _2499.z : _2501.z);
                                        _2613 = _2597;
                                        _2614 = _2598;
                                        _2615 = _2599;
                                        _2616 = _2600;
                                        _2617 = _2601;
                                      }
                                      _2625 = _2612;
                                      _2626 = _2613;
                                      _2627 = _2614;
                                      _2628 = _2615;
                                      _2629 = _2616;
                                      _2630 = _2617;
                                    }
                                    _2631 = _2625;
                                    _2632 = _2626;
                                    _2633 = _2627;
                                    _2634 = _2628;
                                    _2635 = _2629;
                                    _2636 = _2630;
                                  }
                                  _2645 = _2631;
                                  _2646 = _2632;
                                  _2647 = _2633;
                                  _2648 = _2634;
                                  _2649 = _2635;
                                  _2650 = _2636;
                                }
                                _2659 = _2645;
                                _2660 = _2646;
                                _2661 = _2647;
                                _2662 = _2648;
                                _2663 = _2649;
                                _2664 = _2650;
                              }
                              _2672 = _2659;
                              _2673 = _2660;
                              _2674 = _2661;
                              _2675 = _2662;
                              _2676 = _2663;
                              _2677 = _2664;
                            }
                            _2686 = _2672;
                            _2687 = _2673;
                            _2688 = _2674;
                            _2689 = _2675;
                            _2690 = _2676;
                            _2691 = _2677;
                          }
                          _2692 = _2686;
                          _2693 = _2687;
                          _2694 = _2688;
                          _2695 = _2689;
                          _2696 = _2690;
                          _2697 = _2691;
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
                    _2734 = _2720;
                    _2735 = _2721;
                    _2736 = _2722;
                    _2737 = _2723;
                    _2738 = _2724;
                    _2739 = _2725;
                  }
                  _2748 = _2734;
                  _2749 = _2735;
                  _2750 = _2736;
                  _2751 = _2737;
                  _2752 = _2738;
                  _2753 = _2739;
                }
                _2754 = _2748;
                _2755 = _2749;
                _2756 = _2750;
                _2757 = _2751;
                _2758 = _2752;
                _2759 = _2753;
              }
              bool3 _2761 = (_2759 == 3).xxx;
              bool3 _2764 = (_2759 == 4).xxx;
              if (_2759 == 0) {
                _2848 = 0.0f;
                break;
              }
              float3 _2769 = normalize(_2757);
              float3 _2770 = normalize(_2756);
              float3 _2771 = normalize(_2755);
              float3 _2772 = normalize(float3(_2761.x ? _2757.x : _2754.x, _2761.y ? _2757.y : _2754.y, _2761.z ? _2757.z : _2754.z));
              float3 _2773 = normalize(float3(_2764.x ? _2757.x : _2758.x, _2764.y ? _2757.y : _2758.y, _2764.z ? _2757.z : _2758.z));
              float _2775 = clamp(dot(_2769, _2770), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2779 = sqrt(1.0f - (_2775 * _2775));
              float _2787 = clamp(dot(_2770, _2771), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2791 = sqrt(1.0f - (_2787 * _2787));
              float _2800 = clamp(dot(_2771, _2772), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2804 = sqrt(1.0f - (_2800 * _2800));
              float _2811 = ((cross(_2769, _2770).z * ((_2779 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2775) / _2779))) + (cross(_2770, _2771).z * ((_2791 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2787) / _2791)))) + (cross(_2771, _2772).z * ((_2804 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2800) / _2804)));
              float _2828;
              if (_2759 >= 4) {
                float _2816 = clamp(dot(_2772, _2773), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2820 = sqrt(1.0f - (_2816 * _2816));
                _2828 = _2811 + (cross(_2772, _2773).z * ((_2820 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2816) / _2820)));
              } else {
                _2828 = _2811;
              }
              float _2845;
              if (_2759 == 5) {
                float _2833 = clamp(dot(_2773, _2769), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2837 = sqrt(1.0f - (_2833 * _2833));
                _2845 = _2828 + (cross(_2773, _2769).z * ((_2837 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2833) / _2837)));
              } else {
                _2845 = _2828;
              }
              _2848 = max(_2845, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3236;
            do {
              float3 _2882;
              if (_2466) {
                _2882 = _2464 * rsqrt(_2465);
              } else {
                float _2863 = _700.z;
                float _2865 = (_2863 >= 0.0f) ? 1.0f : (-1.0f);
                float _2867 = (-1.0f) / (_2865 + _2863);
                float _2869 = _700.x;
                _2882 = float3(1.0f + (((_2865 * _2867) * _2869) * _2869), ((_2865 * _2869) * _700.y) * _2867, (-_2865) * _2869);
              }
              float3x3 _2885 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2882, cross(_700, _2882), _700));
              float3 _2886 = mul(_2885, _2494);
              float3 _2887 = mul(_2885, _2496);
              float3 _2888 = mul(_2885, _2498);
              float3 _2889 = mul(_2885, _2500);
              float _2890 = _2886.z;
              float _2893 = _2887.z;
              float _2897 = _2888.z;
              float _2901 = _2889.z;
              int _2905 = (((int(_2890 > 0.0f) | ((_2893 > 0.0f) ? 2 : 0)) | ((_2897 > 0.0f) ? 4 : 0)) | ((_2901 > 0.0f) ? 8 : 0));
              float3 _3142;
              float3 _3143;
              float3 _3144;
              float3 _3145;
              float3 _3146;
              int _3147;
              if (_2905 == 0) {
                _3142 = _2889;
                _3143 = _2888;
                _3144 = _2887;
                _3145 = _2886;
                _3146 = 0.0f.xxx;
                _3147 = 0;
              } else {
                float3 _3136;
                float3 _3137;
                float3 _3138;
                float3 _3139;
                float3 _3140;
                int _3141;
                if (_2905 == 1) {
                  _3136 = _2889;
                  _3137 = (_2886 * (-_2901)) + (_2889 * _2890);
                  _3138 = (_2886 * (-_2893)) + (_2887 * _2890);
                  _3139 = _2886;
                  _3140 = 0.0f.xxx;
                  _3141 = 3;
                } else {
                  float3 _3122;
                  float3 _3123;
                  float3 _3124;
                  float3 _3125;
                  float3 _3126;
                  int _3127;
                  if (_2905 == 2) {
                    _3122 = _2889;
                    _3123 = (_2887 * (-_2897)) + (_2888 * _2893);
                    _3124 = _2887;
                    _3125 = (_2887 * (-_2890)) + (_2886 * _2893);
                    _3126 = 0.0f.xxx;
                    _3127 = 3;
                  } else {
                    float3 _3108;
                    float3 _3109;
                    float3 _3110;
                    float3 _3111;
                    float3 _3112;
                    int _3113;
                    if (_2905 == 3) {
                      _3108 = (_2886 * (-_2901)) + (_2889 * _2890);
                      _3109 = (_2887 * (-_2897)) + (_2888 * _2893);
                      _3110 = _2887;
                      _3111 = _2886;
                      _3112 = 0.0f.xxx;
                      _3113 = 4;
                    } else {
                      float3 _3094;
                      float3 _3095;
                      float3 _3096;
                      float3 _3097;
                      float3 _3098;
                      int _3099;
                      if (_2905 == 4) {
                        _3094 = _2889;
                        _3095 = _2888;
                        _3096 = (_2888 * (-_2893)) + (_2887 * _2897);
                        _3097 = (_2888 * (-_2901)) + (_2889 * _2897);
                        _3098 = 0.0f.xxx;
                        _3099 = 3;
                      } else {
                        float3 _3080;
                        float3 _3081;
                        float3 _3082;
                        float3 _3083;
                        float3 _3084;
                        int _3085;
                        if (_2905 == 5) {
                          _3080 = _2889;
                          _3081 = _2888;
                          _3082 = _2887;
                          _3083 = _2886;
                          _3084 = 0.0f.xxx;
                          _3085 = 0;
                        } else {
                          float3 _3074;
                          float3 _3075;
                          float3 _3076;
                          float3 _3077;
                          float3 _3078;
                          int _3079;
                          if (_2905 == 6) {
                            _3074 = (_2888 * (-_2901)) + (_2889 * _2897);
                            _3075 = _2888;
                            _3076 = _2887;
                            _3077 = (_2887 * (-_2890)) + (_2886 * _2893);
                            _3078 = 0.0f.xxx;
                            _3079 = 4;
                          } else {
                            float3 _3060;
                            float3 _3061;
                            float3 _3062;
                            float3 _3063;
                            float3 _3064;
                            int _3065;
                            if (_2905 == 7) {
                              float _3053 = -_2901;
                              _3060 = (_2888 * _3053) + (_2889 * _2897);
                              _3061 = _2888;
                              _3062 = _2887;
                              _3063 = _2886;
                              _3064 = (_2886 * _3053) + (_2889 * _2890);
                              _3065 = 5;
                            } else {
                              float3 _3047;
                              float3 _3048;
                              float3 _3049;
                              float3 _3050;
                              float3 _3051;
                              int _3052;
                              if (_2905 == 8) {
                                _3047 = _2889;
                                _3048 = _2889;
                                _3049 = (_2889 * (-_2897)) + (_2888 * _2901);
                                _3050 = (_2889 * (-_2890)) + (_2886 * _2901);
                                _3051 = 0.0f.xxx;
                                _3052 = 3;
                              } else {
                                float3 _3033;
                                float3 _3034;
                                float3 _3035;
                                float3 _3036;
                                float3 _3037;
                                int _3038;
                                if (_2905 == 9) {
                                  _3033 = _2889;
                                  _3034 = (_2889 * (-_2897)) + (_2888 * _2901);
                                  _3035 = (_2886 * (-_2893)) + (_2887 * _2890);
                                  _3036 = _2886;
                                  _3037 = 0.0f.xxx;
                                  _3038 = 4;
                                } else {
                                  float3 _3019;
                                  float3 _3020;
                                  float3 _3021;
                                  float3 _3022;
                                  float3 _3023;
                                  int _3024;
                                  if (_2905 == 10) {
                                    _3019 = _2889;
                                    _3020 = _2888;
                                    _3021 = _2887;
                                    _3022 = _2886;
                                    _3023 = 0.0f.xxx;
                                    _3024 = 0;
                                  } else {
                                    float3 _3013;
                                    float3 _3014;
                                    float3 _3015;
                                    float3 _3016;
                                    float3 _3017;
                                    int _3018;
                                    if (_2905 == 11) {
                                      float _3006 = -_2897;
                                      _3013 = (_2889 * _3006) + (_2888 * _2901);
                                      _3014 = (_2887 * _3006) + (_2888 * _2893);
                                      _3015 = _2887;
                                      _3016 = _2886;
                                      _3017 = _2889;
                                      _3018 = 5;
                                    } else {
                                      float3 _3000;
                                      float3 _3001;
                                      float3 _3002;
                                      float3 _3003;
                                      float3 _3004;
                                      int _3005;
                                      if (_2905 == 12) {
                                        _3000 = _2889;
                                        _3001 = _2888;
                                        _3002 = (_2888 * (-_2893)) + (_2887 * _2897);
                                        _3003 = (_2889 * (-_2890)) + (_2886 * _2901);
                                        _3004 = 0.0f.xxx;
                                        _3005 = 4;
                                      } else {
                                        bool _2958 = _2905 == 13;
                                        float3 _2985;
                                        float3 _2986;
                                        float3 _2987;
                                        float3 _2988;
                                        int _2989;
                                        if (_2958) {
                                          float _2978 = -_2893;
                                          _2985 = (_2888 * _2978) + (_2887 * _2897);
                                          _2986 = (_2886 * _2978) + (_2887 * _2890);
                                          _2987 = _2886;
                                          _2988 = _2889;
                                          _2989 = 5;
                                        } else {
                                          float3 _2975;
                                          float3 _2976;
                                          int _2977;
                                          if (_2905 == 14) {
                                            float _2968 = -_2890;
                                            _2975 = (_2887 * _2968) + (_2886 * _2893);
                                            _2976 = (_2889 * _2968) + (_2886 * _2901);
                                            _2977 = 5;
                                          } else {
                                            _2975 = _2886;
                                            _2976 = 0.0f.xxx;
                                            _2977 = (_2905 == 15) ? 4 : 0;
                                          }
                                          _2985 = _2888;
                                          _2986 = _2887;
                                          _2987 = _2975;
                                          _2988 = _2976;
                                          _2989 = _2977;
                                        }
                                        bool3 _2990 = _2958.xxx;
                                        _3000 = float3(_2990.x ? _2888.x : _2889.x, _2990.y ? _2888.y : _2889.y, _2990.z ? _2888.z : _2889.z);
                                        _3001 = _2985;
                                        _3002 = _2986;
                                        _3003 = _2987;
                                        _3004 = _2988;
                                        _3005 = _2989;
                                      }
                                      _3013 = _3000;
                                      _3014 = _3001;
                                      _3015 = _3002;
                                      _3016 = _3003;
                                      _3017 = _3004;
                                      _3018 = _3005;
                                    }
                                    _3019 = _3013;
                                    _3020 = _3014;
                                    _3021 = _3015;
                                    _3022 = _3016;
                                    _3023 = _3017;
                                    _3024 = _3018;
                                  }
                                  _3033 = _3019;
                                  _3034 = _3020;
                                  _3035 = _3021;
                                  _3036 = _3022;
                                  _3037 = _3023;
                                  _3038 = _3024;
                                }
                                _3047 = _3033;
                                _3048 = _3034;
                                _3049 = _3035;
                                _3050 = _3036;
                                _3051 = _3037;
                                _3052 = _3038;
                              }
                              _3060 = _3047;
                              _3061 = _3048;
                              _3062 = _3049;
                              _3063 = _3050;
                              _3064 = _3051;
                              _3065 = _3052;
                            }
                            _3074 = _3060;
                            _3075 = _3061;
                            _3076 = _3062;
                            _3077 = _3063;
                            _3078 = _3064;
                            _3079 = _3065;
                          }
                          _3080 = _3074;
                          _3081 = _3075;
                          _3082 = _3076;
                          _3083 = _3077;
                          _3084 = _3078;
                          _3085 = _3079;
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
                    _3122 = _3108;
                    _3123 = _3109;
                    _3124 = _3110;
                    _3125 = _3111;
                    _3126 = _3112;
                    _3127 = _3113;
                  }
                  _3136 = _3122;
                  _3137 = _3123;
                  _3138 = _3124;
                  _3139 = _3125;
                  _3140 = _3126;
                  _3141 = _3127;
                }
                _3142 = _3136;
                _3143 = _3137;
                _3144 = _3138;
                _3145 = _3139;
                _3146 = _3140;
                _3147 = _3141;
              }
              bool3 _3149 = (_3147 == 3).xxx;
              bool3 _3152 = (_3147 == 4).xxx;
              if (_3147 == 0) {
                _3236 = 0.0f;
                break;
              }
              float3 _3157 = normalize(_3145);
              float3 _3158 = normalize(_3144);
              float3 _3159 = normalize(_3143);
              float3 _3160 = normalize(float3(_3149.x ? _3145.x : _3142.x, _3149.y ? _3145.y : _3142.y, _3149.z ? _3145.z : _3142.z));
              float3 _3161 = normalize(float3(_3152.x ? _3145.x : _3146.x, _3152.y ? _3145.y : _3146.y, _3152.z ? _3145.z : _3146.z));
              float _3163 = clamp(dot(_3157, _3158), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3167 = sqrt(1.0f - (_3163 * _3163));
              float _3175 = clamp(dot(_3158, _3159), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3179 = sqrt(1.0f - (_3175 * _3175));
              float _3188 = clamp(dot(_3159, _3160), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3192 = sqrt(1.0f - (_3188 * _3188));
              float _3199 = ((cross(_3157, _3158).z * ((_3167 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3163) / _3167))) + (cross(_3158, _3159).z * ((_3179 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3175) / _3179)))) + (cross(_3159, _3160).z * ((_3192 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3188) / _3192)));
              float _3216;
              if (_3147 >= 4) {
                float _3204 = clamp(dot(_3160, _3161), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3208 = sqrt(1.0f - (_3204 * _3204));
                _3216 = _3199 + (cross(_3160, _3161).z * ((_3208 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3204) / _3208)));
              } else {
                _3216 = _3199;
              }
              float _3233;
              if (_3147 == 5) {
                float _3221 = clamp(dot(_3161, _3157), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3225 = sqrt(1.0f - (_3221 * _3221));
                _3233 = _3216 + (cross(_3161, _3157).z * ((_3225 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3221) / _3225)));
              } else {
                _3233 = _3216;
              }
              _3236 = max(_3233, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3239 = (_2313 & 2u) != 0u;
            uint _3243 = asuint(_48_m6[_2300].w);
            uint _3244 = asuint(_48_m6[_2306].w);
            float3 _3245 = _424 - _48_m6[_2291].xyz;
            float3 _3246 = abs(_3245);
            float _3247 = _3246.x;
            float _3248 = _3246.y;
            float _3250 = _3246.z;
            int _3283;
            if ((_3247 > _3248) && (_3247 > _3250)) {
              _3283 = int((_3245.x > 0.0f) ? (_3243 & 1023u) : ((_3243 >> 10u) & 1023u));
            } else {
              int _3275;
              if (_3248 > _3250) {
                _3275 = int((_3245.y > 0.0f) ? ((_3243 >> 20u) & 1023u) : (_3244 & 1023u));
              } else {
                _3275 = int((_3245.z > 0.0f) ? ((_3244 >> 10u) & 1023u) : ((_3244 >> 20u) & 1023u));
              }
              _3283 = _3275;
            }
            int _3286 = _3239 ? int(_48_m6[_2300].w) : ((_3283 == 1023) ? (-1) : _3283);
            uint _3297 = asuint(_52_m11.x) + (uint(_3286) * 96u);
            uint _3299 = (_3297 + 64u) >> 2u;
            uint _3302 = _3299 + 1u;
            uint _3305 = _3299 + 2u;
            uint _3308 = _3299 + 3u;
            float4 _3312 = asfloat(uint4(_55.Load(_3299 * 4 + 0), _55.Load(_3302 * 4 + 0), _55.Load(_3305 * 4 + 0), _55.Load(_3308 * 4 + 0)));
            float3 _3319 = (_424 - ((_3245 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3245, _3245)))) * _3312.x)) + (_700 * (_3312.y * 5.0f));
            uint _3320 = _3297 >> 2u;
            uint _3335 = (_3297 + 16u) >> 2u;
            uint _3350 = (_3297 + 32u) >> 2u;
            uint _3365 = (_3297 + 48u) >> 2u;
            float4 _3385 = mul(transpose(float4x4(asfloat(uint4(_55.Load(_3320 * 4 + 0), _55.Load((_3320 + 1u) * 4 + 0), _55.Load((_3320 + 2u) * 4 + 0), _55.Load((_3320 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_3335 * 4 + 0), _55.Load((_3335 + 1u) * 4 + 0), _55.Load((_3335 + 2u) * 4 + 0), _55.Load((_3335 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_3350 * 4 + 0), _55.Load((_3350 + 1u) * 4 + 0), _55.Load((_3350 + 2u) * 4 + 0), _55.Load((_3350 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_3365 * 4 + 0), _55.Load((_3365 + 1u) * 4 + 0), _55.Load((_3365 + 2u) * 4 + 0), _55.Load((_3365 + 3u) * 4 + 0))))), float4(_3319, 1.0f));
            float _3386 = _3385.w;
            float3 _3389 = _3385.xyz / _3386.xxx;
            uint _3391 = (_3297 + 80u) >> 2u;
            float4 _3404 = asfloat(uint4(_55.Load(_3391 * 4 + 0), _55.Load((_3391 + 1u) * 4 + 0), _55.Load((_3391 + 2u) * 4 + 0), _55.Load((_3391 + 3u) * 4 + 0)));
            float2 _3405 = _3389.xy;
            float2 _3407 = _3404.xy;
            float3 _3411 = _3389.xyz;
            bool3 _3412 = bool3(_3411.x <= 0.0f.xxx.x, _3411.y <= 0.0f.xxx.y, _3411.z <= 0.0f.xxx.z);
            bool3 _3413 = bool3(_3411.x >= 1.0f.xxx.x, _3411.y >= 1.0f.xxx.y, _3411.z >= 1.0f.xxx.z);
            float _3416 = _3389.z;
            float2 _3427 = ((_3405 * (_3404.zw - _3407)) + _3407).xy * _52_m10.zw;
            float2 _3429 = floor(_3427 + 0.5f.xx);
            float2 _3430 = _3427 - _3429;
            float _3431 = _3430.x;
            float _3432 = _3431 + 0.5f;
            float _3433 = _3432 * _3432;
            float _3436 = 1.0f - _3431;
            float _3437 = min(_3431, 0.0f);
            float _3440 = _3431 + 1.0f;
            float _3441 = max(_3431, 0.0f);
            float _3452 = _3430.y;
            float _3453 = _3452 + 0.5f;
            float _3454 = _3453 * _3453;
            float _3457 = 1.0f - _3452;
            float _3458 = min(_3452, 0.0f);
            float _3461 = _3452 + 1.0f;
            float _3462 = max(_3452, 0.0f);
            float3 _3474 = float3(0.1599999964237213134765625f * _3436, 0.1599999964237213134765625f * ((_3440 - (_3441 * _3441)) + 1.0f), _3433 * 0.07999999821186065673828125f);
            float3 _3475 = float3(0.1599999964237213134765625f * ((_3433 * 0.5f) - _3431), 0.1599999964237213134765625f * ((_3436 - (_3437 * _3437)) + 1.0f), 0.1599999964237213134765625f * _3440) + _3474;
            float3 _3477 = float3(0.1599999964237213134765625f * _3457, 0.1599999964237213134765625f * ((_3461 - (_3462 * _3462)) + 1.0f), _3454 * 0.07999999821186065673828125f);
            float3 _3478 = float3(0.1599999964237213134765625f * ((_3454 * 0.5f) - _3452), 0.1599999964237213134765625f * ((_3457 - (_3458 * _3458)) + 1.0f), 0.1599999964237213134765625f * _3461) + _3477;
            float3 _3484 = ((_3474 / _3475) + float3(-2.5f, -0.5f, 1.5f)) * _52_m10.xxx;
            float3 _3486 = ((_3477 / _3478) + float3(-2.5f, -0.5f, 1.5f)) * _52_m10.yyy;
            float2 _3488 = _3429 * _52_m10.xy;
            float _3489 = _3484.x;
            float _3490 = _3486.x;
            float2 _3492 = _3488 + float2(_3489, _3490);
            float _3493 = _3484.y;
            float2 _3495 = _3488 + float2(_3493, _3490);
            float _3496 = _3484.z;
            float2 _3498 = _3488 + float2(_3496, _3490);
            float _3499 = _3486.y;
            float2 _3501 = _3488 + float2(_3489, _3499);
            float2 _3503 = _3488 + float2(_3493, _3499);
            float2 _3505 = _3488 + float2(_3496, _3499);
            float _3506 = _3486.z;
            float2 _3508 = _3488 + float2(_3489, _3506);
            float2 _3510 = _3488 + float2(_3493, _3506);
            float2 _3512 = _3488 + float2(_3496, _3506);
            float _3513 = _3475.x;
            float _3514 = _3478.x;
            float _3516 = _3475.y;
            float _3518 = _3475.z;
            float _3520 = _3478.y;
            float _3524 = _3478.z;
            float _3590 = ((((((((_3513 * _3514) * _54.SampleCmpLevelZero(_26, float3(_3492, _379).xy, _3416)) + ((_3516 * _3514) * _54.SampleCmpLevelZero(_26, float3(_3495, _379).xy, _3416))) + ((_3518 * _3514) * _54.SampleCmpLevelZero(_26, float3(_3498, _379).xy, _3416))) + ((_3513 * _3520) * _54.SampleCmpLevelZero(_26, float3(_3501, _379).xy, _3416))) + ((_3516 * _3520) * _54.SampleCmpLevelZero(_26, float3(_3503, _379).xy, _3416))) + ((_3518 * _3520) * _54.SampleCmpLevelZero(_26, float3(_3505, _379).xy, _3416))) + ((_3513 * _3524) * _54.SampleCmpLevelZero(_26, float3(_3508, _379).xy, _3416))) + ((_3516 * _3524) * _54.SampleCmpLevelZero(_26, float3(_3510, _379).xy, _3416));
            float4 _3605 = asfloat(uint4(_55.Load(_3299 * 4 + 0), _55.Load(_3302 * 4 + 0), _55.Load(_3305 * 4 + 0), _55.Load(_3308 * 4 + 0)));
            float _3606 = _3605.w;
            float2 _3608 = min(_3405, 1.0f.xx - _3405);
            _3625 = ((_48_m6[_2288].xyz * (((((_868 * _2453.x) + ((1.0f.xxx - _868) * _2453.y)) * _2848) * _48_m6[_2309].z) + (_768 * _3236))) * _2425) * ((_3286 >= 0) ? lerp(1.0f, (any(bool3(_3412.x || _3413.x, _3412.y || _3413.y, _3412.z || _3413.z)) || ((asuint(_3416) & 2147483647u) > 2139095040u)) ? 1.0f : (_3590 + ((_3518 * _3524) * _54.SampleCmpLevelZero(_26, float3(_3512, _379).xy, _3416))), _3239 ? min(_3606, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3605.z - _3386) * 0.25f, min(_3608.x, _3608.y)))) : _3606) : 1.0f);
            break;
          } while (false);
          _4948 = _2248;
          _4949 = _3625 * _2388;
          break;
        }
        float _4946;
        float3 _4947;
        if (_48_m6[_2288].w < 1.5f) {
          float3 _4205 = float3(0.100000001490116119384765625f, _37_m70, 1.0f);
          float _4214 = (0.5f + (0.5f * _48_m6[_2294].y)) - abs(_48_m6[_2294].x);
          float _4215 = _48_m6[_2294].y - _4214;
          float _4222 = abs(max((1.0f - abs(_4214)) - abs(_4215), 0.00048828125f));
          float3 _4226 = normalize(float3(_4214, _4215, (_48_m6[_2294].x >= 0.0f) ? _4222 : (-_4222)));
          float3 _4227 = _48_m6[_2291].xyz - _424;
          float _4228 = dot(_4227, _4227);
          float _4229 = rsqrt(_4228);
          float3 _4230 = _4227 * _4229;
          float _4234 = clamp(_48_m6[_2309].y * _4229, 0.0f, 1.0f);
          int _4239 = int(_48_m6[_2309].w);
          float3 _4240 = _4226 * _48_m6[_2294].z;
          float3 _4241 = _4240 * 0.5f;
          float3 _4242 = _4227 - _4241;
          float3 _4243 = _4227 + _4241;
          bool _4245 = (_2392 & 1u) == 0u;
          bool _4248 = _4245 || ((_2313 & 2u) != 0u);
          bool _4251 = (!_4245) && (_48_m6[_2294].z > 0.0f);
          float _4270;
          float _4271;
          if (_4251) {
            float _4255 = length(_4242);
            float _4256 = length(_4243);
            _4270 = clamp(0.5f * ((dot(_700, _4242) / _4255) + (dot(_700, _4243) / _4256)), 0.0f, 1.0f);
            _4271 = 1.0f / ((((_4255 * _4256) + dot(_4242, _4243)) * 0.5f) + 1.0f);
          } else {
            _4270 = clamp(dot(_700, _4230), 0.0f, 1.0f);
            _4271 = 1.0f;
          }
          float _4293;
          if (_48_m6[_2306].w < 0.0f) {
            float _4287 = _4228 * (_48_m6[_2291].w * _48_m6[_2291].w);
            float _4290 = clamp(1.0f - (_4287 * _4287), 0.0f, 1.0f);
            _4293 = lerp(1.0f / (_4228 + 1.0f), _4271, float(_4251)) * (_4290 * _4290);
          } else {
            float3 _4276 = _4227 * _48_m6[_2291].w;
            _4293 = _4271 * pow(1.0f - clamp(dot(_4276, _4276), 0.0f, 1.0f), _48_m6[_2306].w);
          }
          float _4299 = clamp((dot(_4230, -_4226) - _48_m6[_2294].z) * _48_m6[_2294].w, 0.0f, 1.0f);
          float _4303 = _4293 * lerp(1.0f, _4299 * _4299, float(_4245));
          float _4403;
          if ((!_4251) && (_4239 >= 0)) {
            uint _4309 = uint(_4239);
            float2 _4396;
            [branch] if (_4245) {
              float4 _4386 = mul(_63_m1[_4309], _428);
              _4396 = _63_m0[_4309].xy + (clamp(_4386.xy / _4386.w.xx, 0.0f.xx, 1.0f.xx) * _63_m0[_4309].zw);
            }
            else {
              float3 _4323 = mul(float4(-_4227, 0.0f), _63_m1[_4309]).xyz;
              float3 _388 = _4323;
              float3 _387 = _4323;
              float3 _386 = abs(_4323);
              uint _4332 = uint(int(_386.y > _386.x));
              uint _4338 = (_386.z > _386[_4332]) ? 2u : _4332;
              uint _4344 = (_4338 * 2u) + uint(_387[_4338] < 0.0f);
              float _4348 = abs(_388[_4344 / 2u]);
              float _4368 = 0.5f - (0.000244140625f / _63_m0[_4309].w);
              _4396 = _63_m0[_4309].xy + (clamp(float2((float(_4344) + ((((_388[uint(_358[_4344].x)] * _359[_4344].x) / _4348) * _4368) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_388[uint(_358[_4344].y)] * _359[_4344].y) / _4348) * _4368)), 0.0f.xx, 1.0f.xx) * _63_m0[_4309].zw);
            }
            _4403 = _4303 * _61.SampleLevel(_24, _4396, 0.0f).x;
          } else {
            _4403 = _4303;
          }
          bool _4404 = _4403 > 0.0f;
          float _4788;
          if (_4404) {
            int _4457;
            if (_4248) {
              _4457 = int(_48_m6[_2297].x);
            } else {
              uint _4412 = asuint(_48_m6[_2294].w);
              uint _4413 = asuint(_48_m6[_2297].x);
              float3 _4414 = _424 - _48_m6[_2291].xyz;
              float3 _4415 = abs(_4414);
              float _4416 = _4415.x;
              float _4417 = _4415.y;
              float _4419 = _4415.z;
              int _4452;
              if ((_4416 > _4417) && (_4416 > _4419)) {
                _4452 = int((_4414.x > 0.0f) ? (_4412 & 1023u) : ((_4412 >> 10u) & 1023u));
              } else {
                int _4444;
                if (_4417 > _4419) {
                  _4444 = int((_4414.y > 0.0f) ? ((_4412 >> 20u) & 1023u) : (_4413 & 1023u));
                } else {
                  _4444 = int((_4414.z > 0.0f) ? ((_4413 >> 10u) & 1023u) : ((_4413 >> 20u) & 1023u));
                }
                _4452 = _4444;
              }
              _4457 = (_4452 == 1023) ? (-1) : _4452;
            }
            uint _4464 = asuint(_52_m11.x) + (uint(_4457) * 96u);
            uint _4466 = (_4464 + 64u) >> 2u;
            uint _4469 = _4466 + 1u;
            uint _4472 = _4466 + 2u;
            uint _4475 = _4466 + 3u;
            float4 _4479 = asfloat(uint4(_55.Load(_4466 * 4 + 0), _55.Load(_4469 * 4 + 0), _55.Load(_4472 * 4 + 0), _55.Load(_4475 * 4 + 0)));
            float3 _4486 = (_424 - ((-_4230) * _4479.x)) + (_700 * (_4479.y * 5.0f));
            uint _4487 = _4464 >> 2u;
            uint _4502 = (_4464 + 16u) >> 2u;
            uint _4517 = (_4464 + 32u) >> 2u;
            uint _4532 = (_4464 + 48u) >> 2u;
            float4 _4552 = mul(transpose(float4x4(asfloat(uint4(_55.Load(_4487 * 4 + 0), _55.Load((_4487 + 1u) * 4 + 0), _55.Load((_4487 + 2u) * 4 + 0), _55.Load((_4487 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_4502 * 4 + 0), _55.Load((_4502 + 1u) * 4 + 0), _55.Load((_4502 + 2u) * 4 + 0), _55.Load((_4502 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_4517 * 4 + 0), _55.Load((_4517 + 1u) * 4 + 0), _55.Load((_4517 + 2u) * 4 + 0), _55.Load((_4517 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_4532 * 4 + 0), _55.Load((_4532 + 1u) * 4 + 0), _55.Load((_4532 + 2u) * 4 + 0), _55.Load((_4532 + 3u) * 4 + 0))))), float4(_4486, 1.0f));
            float _4553 = _4552.w;
            float3 _4556 = _4552.xyz / _4553.xxx;
            uint _4558 = (_4464 + 80u) >> 2u;
            float4 _4571 = asfloat(uint4(_55.Load(_4558 * 4 + 0), _55.Load((_4558 + 1u) * 4 + 0), _55.Load((_4558 + 2u) * 4 + 0), _55.Load((_4558 + 3u) * 4 + 0)));
            float2 _4572 = _4556.xy;
            float2 _4574 = _4571.xy;
            float3 _4578 = _4556.xyz;
            bool3 _4579 = bool3(_4578.x <= 0.0f.xxx.x, _4578.y <= 0.0f.xxx.y, _4578.z <= 0.0f.xxx.z);
            bool3 _4580 = bool3(_4578.x >= 1.0f.xxx.x, _4578.y >= 1.0f.xxx.y, _4578.z >= 1.0f.xxx.z);
            float _4583 = _4556.z;
            float2 _4594 = ((_4572 * (_4571.zw - _4574)) + _4574).xy * _52_m10.zw;
            float2 _4596 = floor(_4594 + 0.5f.xx);
            float2 _4597 = _4594 - _4596;
            float _4598 = _4597.x;
            float _4599 = _4598 + 0.5f;
            float _4600 = _4599 * _4599;
            float _4603 = 1.0f - _4598;
            float _4604 = min(_4598, 0.0f);
            float _4607 = _4598 + 1.0f;
            float _4608 = max(_4598, 0.0f);
            float _4619 = _4597.y;
            float _4620 = _4619 + 0.5f;
            float _4621 = _4620 * _4620;
            float _4624 = 1.0f - _4619;
            float _4625 = min(_4619, 0.0f);
            float _4628 = _4619 + 1.0f;
            float _4629 = max(_4619, 0.0f);
            float3 _4641 = float3(0.1599999964237213134765625f * _4603, 0.1599999964237213134765625f * ((_4607 - (_4608 * _4608)) + 1.0f), _4600 * 0.07999999821186065673828125f);
            float3 _4642 = float3(0.1599999964237213134765625f * ((_4600 * 0.5f) - _4598), 0.1599999964237213134765625f * ((_4603 - (_4604 * _4604)) + 1.0f), 0.1599999964237213134765625f * _4607) + _4641;
            float3 _4644 = float3(0.1599999964237213134765625f * _4624, 0.1599999964237213134765625f * ((_4628 - (_4629 * _4629)) + 1.0f), _4621 * 0.07999999821186065673828125f);
            float3 _4645 = float3(0.1599999964237213134765625f * ((_4621 * 0.5f) - _4619), 0.1599999964237213134765625f * ((_4624 - (_4625 * _4625)) + 1.0f), 0.1599999964237213134765625f * _4628) + _4644;
            float3 _4651 = ((_4641 / _4642) + float3(-2.5f, -0.5f, 1.5f)) * _52_m10.xxx;
            float3 _4653 = ((_4644 / _4645) + float3(-2.5f, -0.5f, 1.5f)) * _52_m10.yyy;
            float2 _4655 = _4596 * _52_m10.xy;
            float _4656 = _4651.x;
            float _4657 = _4653.x;
            float2 _4659 = _4655 + float2(_4656, _4657);
            float _4660 = _4651.y;
            float2 _4662 = _4655 + float2(_4660, _4657);
            float _4663 = _4651.z;
            float2 _4665 = _4655 + float2(_4663, _4657);
            float _4666 = _4653.y;
            float2 _4668 = _4655 + float2(_4656, _4666);
            float2 _4670 = _4655 + float2(_4660, _4666);
            float2 _4672 = _4655 + float2(_4663, _4666);
            float _4673 = _4653.z;
            float2 _4675 = _4655 + float2(_4656, _4673);
            float2 _4677 = _4655 + float2(_4660, _4673);
            float2 _4679 = _4655 + float2(_4663, _4673);
            float _4680 = _4642.x;
            float _4681 = _4645.x;
            float _4683 = _4642.y;
            float _4685 = _4642.z;
            float _4687 = _4645.y;
            float _4691 = _4645.z;
            float _4757 = ((((((((_4680 * _4681) * _54.SampleCmpLevelZero(_26, float3(_4659, _379).xy, _4583)) + ((_4683 * _4681) * _54.SampleCmpLevelZero(_26, float3(_4662, _379).xy, _4583))) + ((_4685 * _4681) * _54.SampleCmpLevelZero(_26, float3(_4665, _379).xy, _4583))) + ((_4680 * _4687) * _54.SampleCmpLevelZero(_26, float3(_4668, _379).xy, _4583))) + ((_4683 * _4687) * _54.SampleCmpLevelZero(_26, float3(_4670, _379).xy, _4583))) + ((_4685 * _4687) * _54.SampleCmpLevelZero(_26, float3(_4672, _379).xy, _4583))) + ((_4680 * _4691) * _54.SampleCmpLevelZero(_26, float3(_4675, _379).xy, _4583))) + ((_4683 * _4691) * _54.SampleCmpLevelZero(_26, float3(_4677, _379).xy, _4583));
            float4 _4772 = asfloat(uint4(_55.Load(_4466 * 4 + 0), _55.Load(_4469 * 4 + 0), _55.Load(_4472 * 4 + 0), _55.Load(_4475 * 4 + 0)));
            float _4773 = _4772.w;
            float2 _4775 = min(_4572, 1.0f.xx - _4572);
            _4788 = (_4457 >= 0) ? lerp(1.0f, (any(bool3(_4579.x || _4580.x, _4579.y || _4580.y, _4579.z || _4580.z)) || ((asuint(_4583) & 2147483647u) > 2139095040u)) ? 1.0f : (_4757 + ((_4685 * _4691) * _54.SampleCmpLevelZero(_26, float3(_4679, _379).xy, _4583))), _4248 ? min(_4773, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4772.z - _4553) * 0.25f, min(_4775.x, _4775.y)))) : _4773) : 1.0f;
          } else {
            _4788 = 1.0f;
          }
          float3 _4813;
          float3 _4814;
          if (_4251) {
            float3 _4791 = _4205 * _4205;
            float3 _4793 = reflect(-_465, _700);
            float _4802 = dot(_4793, _4240);
            _4813 = _4791 / clamp(_4791 + (0.5f * clamp(_48_m6[_2294].z * _4229, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4814 = normalize(_4242 + (_4240 * clamp(dot(_4242, (_4793 * _4802) - _4240) / ((_48_m6[_2294].z * _48_m6[_2294].z) - (_4802 * _4802)), 0.0f, 1.0f)));
          } else {
            _4813 = 1.0f.xxx;
            _4814 = _4230;
          }
          float3 _4815 = _4814 + _465;
          float3 _4819 = _4815 * rsqrt(max(6.103515625e-05f, dot(_4815, _4815)));
          float3 _4945;
          if (_4404) {
            float _4823 = clamp(_4270, 0.0f, 1.0f);
            float _4825 = clamp(dot(_700, _4819), 0.0f, 1.0f);
            float _4827 = clamp(dot(_465, _4819), 0.0f, 1.0f);
            float _4830 = clamp(dot(_700, _465), 0.0f, 1.0f);
            float _4831 = _37_m70 * _37_m70;
            float _4841;
            if (_4234 > 0.0f) {
              _4841 = clamp(_4831 + ((_4234 * _4234) / ((_4827 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4841 = _4831;
            }
            float _4842 = _4841 * _4841;
            float _4863 = (((_4825 * _4842) - _4825) * _4825) + 1.0f;
            float _4868 = 1.0f - _4827;
            float _4869 = _4868 * _4868;
            float _4871 = (_4868 * _4869) * _4869;
            float _4895 = 1.0f - _37_m70;
            float _4902 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4895 * (1.04997003078460693359375f + (_4895 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4895))))));
            float _4903 = 1.0f - _4902;
            float3 _4906 = _868 + ((1.0f.xxx - _868) * 0.0476190485060214996337890625f);
            float _4917 = clamp(1.0f - _817, 0.0f, 1.0f);
            float _4925 = clamp((dot(_700, _4814) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
            float3 _4941 = (clamp((min(((_868 * (1.0f - _4871)) + _4871.xxx) * (((_4842 / (_4863 * _4863)) * _4813.y) * (0.5f / (((_4823 * sqrt(((((-_4830) * _4842) + _4830) * _4830) + _4842)) + (_4830 * sqrt(((((-_4823) * _4842) + _4823) * _4823) + _4842))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4906 * (((_60.SampleLevel(_24, (float2(_4830, _37_m70) * 0.96875f) + 0.015625f.xx, 0.0f).x * _60.SampleLevel(_24, (float2(_4823, _37_m70) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4902) / _4903)) * _4906) / (1.0f.xxx - (_4906 * _4903)))) * _48_m6[_2309].z, 0.0f.xxx, 1000.0f.xxx) * _4270) + (_1330 * lerp(lerp(1.0f, (_4925 * sqrt(_4925)) * 1.66666662693023681640625f, _4917) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_465, _4814), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _4917)));
            _4945 = (_4941 + ((_768 * _4813.z) * _4270)) * (((_48_m6[_2288].xyz * _4403) * _4788) * _2388);
          } else {
            _4945 = 0.0f.xxx;
          }
          _4946 = _2248;
          _4947 = _4945;
        } else {
          float _4203;
          do {
            if (_2395) {
              _4203 = 1.0f;
              break;
            }
            float _3642 = (0.5f + (0.5f * _48_m6[_2294].y)) - abs(_48_m6[_2294].x);
            float _3643 = _48_m6[_2294].y - _3642;
            float _3650 = abs(max((1.0f - abs(_3642)) - abs(_3643), 0.00048828125f));
            float3 _3654 = normalize(float3(_3642, _3643, (_48_m6[_2294].x >= 0.0f) ? _3650 : (-_3650)));
            float3 _3655 = _48_m6[_2291].xyz - _424;
            float _3656 = dot(_3655, _3655);
            float3 _3658 = _3655 * rsqrt(_3656);
            int _3661 = int(_48_m6[_2309].w);
            float3 _3663 = (_3654 * _48_m6[_2294].z) * 0.5f;
            float3 _3664 = _3655 - _3663;
            float3 _3665 = _3655 + _3663;
            bool _3667 = (_2392 & 1u) == 0u;
            bool _3670 = _3667 || ((_2313 & 2u) != 0u);
            bool _3673 = (!_3667) && (_48_m6[_2294].z > 0.0f);
            float _3685;
            if (_3673) {
              _3685 = 1.0f / ((((length(_3664) * length(_3665)) + dot(_3664, _3665)) * 0.5f) + 1.0f);
            } else {
              _3685 = 1.0f;
            }
            float _3707;
            if (_48_m6[_2306].w < 0.0f) {
              float _3701 = _3656 * (_48_m6[_2291].w * _48_m6[_2291].w);
              float _3704 = clamp(1.0f - (_3701 * _3701), 0.0f, 1.0f);
              _3707 = lerp(1.0f / (_3656 + 1.0f), _3685, float(_3673)) * (_3704 * _3704);
            } else {
              float3 _3690 = _3655 * _48_m6[_2291].w;
              _3707 = _3685 * pow(1.0f - clamp(dot(_3690, _3690), 0.0f, 1.0f), _48_m6[_2306].w);
            }
            float _3713 = clamp((dot(_3658, -_3654) - _48_m6[_2294].z) * _48_m6[_2294].w, 0.0f, 1.0f);
            float _3717 = _3707 * lerp(1.0f, _3713 * _3713, float(_3667));
            float _3817;
            if ((!_3673) && (_3661 >= 0)) {
              uint _3723 = uint(_3661);
              float2 _3810;
              [branch] if (_3667) {
                float4 _3800 = mul(_63_m1[_3723], _428);
                _3810 = _63_m0[_3723].xy + (clamp(_3800.xy / _3800.w.xx, 0.0f.xx, 1.0f.xx) * _63_m0[_3723].zw);
              }
              else {
                float3 _3737 = mul(float4(-_3655, 0.0f), _63_m1[_3723]).xyz;
                float3 _391 = _3737;
                float3 _390 = _3737;
                float3 _389 = abs(_3737);
                uint _3746 = uint(int(_389.y > _389.x));
                uint _3752 = (_389.z > _389[_3746]) ? 2u : _3746;
                uint _3758 = (_3752 * 2u) + uint(_390[_3752] < 0.0f);
                float _3762 = abs(_391[_3758 / 2u]);
                float _3782 = 0.5f - (0.000244140625f / _63_m0[_3723].w);
                _3810 = _63_m0[_3723].xy + (clamp(float2((float(_3758) + ((((_391[uint(_358[_3758].x)] * _359[_3758].x) / _3762) * _3782) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_391[uint(_358[_3758].y)] * _359[_3758].y) / _3762) * _3782)), 0.0f.xx, 1.0f.xx) * _63_m0[_3723].zw);
              }
              _3817 = _3717 * _61.SampleLevel(_24, _3810, 0.0f).x;
            } else {
              _3817 = _3717;
            }
            float _4202;
            if (_3817 > 0.0f) {
              int _3871;
              if (_3670) {
                _3871 = int(_48_m6[_2297].x);
              } else {
                uint _3826 = asuint(_48_m6[_2294].w);
                uint _3827 = asuint(_48_m6[_2297].x);
                float3 _3828 = _424 - _48_m6[_2291].xyz;
                float3 _3829 = abs(_3828);
                float _3830 = _3829.x;
                float _3831 = _3829.y;
                float _3833 = _3829.z;
                int _3866;
                if ((_3830 > _3831) && (_3830 > _3833)) {
                  _3866 = int((_3828.x > 0.0f) ? (_3826 & 1023u) : ((_3826 >> 10u) & 1023u));
                } else {
                  int _3858;
                  if (_3831 > _3833) {
                    _3858 = int((_3828.y > 0.0f) ? ((_3826 >> 20u) & 1023u) : (_3827 & 1023u));
                  } else {
                    _3858 = int((_3828.z > 0.0f) ? ((_3827 >> 10u) & 1023u) : ((_3827 >> 20u) & 1023u));
                  }
                  _3866 = _3858;
                }
                _3871 = (_3866 == 1023) ? (-1) : _3866;
              }
              uint _3878 = asuint(_52_m11.x) + (uint(_3871) * 96u);
              uint _3880 = (_3878 + 64u) >> 2u;
              uint _3883 = _3880 + 1u;
              uint _3886 = _3880 + 2u;
              uint _3889 = _3880 + 3u;
              float4 _3893 = asfloat(uint4(_55.Load(_3880 * 4 + 0), _55.Load(_3883 * 4 + 0), _55.Load(_3886 * 4 + 0), _55.Load(_3889 * 4 + 0)));
              float3 _3900 = (_424 - ((-_3658) * _3893.x)) + (_700 * (_3893.y * 5.0f));
              uint _3901 = _3878 >> 2u;
              uint _3916 = (_3878 + 16u) >> 2u;
              uint _3931 = (_3878 + 32u) >> 2u;
              uint _3946 = (_3878 + 48u) >> 2u;
              float4 _3966 = mul(transpose(float4x4(asfloat(uint4(_55.Load(_3901 * 4 + 0), _55.Load((_3901 + 1u) * 4 + 0), _55.Load((_3901 + 2u) * 4 + 0), _55.Load((_3901 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_3916 * 4 + 0), _55.Load((_3916 + 1u) * 4 + 0), _55.Load((_3916 + 2u) * 4 + 0), _55.Load((_3916 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_3931 * 4 + 0), _55.Load((_3931 + 1u) * 4 + 0), _55.Load((_3931 + 2u) * 4 + 0), _55.Load((_3931 + 3u) * 4 + 0))), asfloat(uint4(_55.Load(_3946 * 4 + 0), _55.Load((_3946 + 1u) * 4 + 0), _55.Load((_3946 + 2u) * 4 + 0), _55.Load((_3946 + 3u) * 4 + 0))))), float4(_3900, 1.0f));
              float _3967 = _3966.w;
              float3 _3970 = _3966.xyz / _3967.xxx;
              uint _3972 = (_3878 + 80u) >> 2u;
              float4 _3985 = asfloat(uint4(_55.Load(_3972 * 4 + 0), _55.Load((_3972 + 1u) * 4 + 0), _55.Load((_3972 + 2u) * 4 + 0), _55.Load((_3972 + 3u) * 4 + 0)));
              float2 _3986 = _3970.xy;
              float2 _3988 = _3985.xy;
              float3 _3992 = _3970.xyz;
              bool3 _3993 = bool3(_3992.x <= 0.0f.xxx.x, _3992.y <= 0.0f.xxx.y, _3992.z <= 0.0f.xxx.z);
              bool3 _3994 = bool3(_3992.x >= 1.0f.xxx.x, _3992.y >= 1.0f.xxx.y, _3992.z >= 1.0f.xxx.z);
              float _3997 = _3970.z;
              float2 _4008 = ((_3986 * (_3985.zw - _3988)) + _3988).xy * _52_m10.zw;
              float2 _4010 = floor(_4008 + 0.5f.xx);
              float2 _4011 = _4008 - _4010;
              float _4012 = _4011.x;
              float _4013 = _4012 + 0.5f;
              float _4014 = _4013 * _4013;
              float _4017 = 1.0f - _4012;
              float _4018 = min(_4012, 0.0f);
              float _4021 = _4012 + 1.0f;
              float _4022 = max(_4012, 0.0f);
              float _4033 = _4011.y;
              float _4034 = _4033 + 0.5f;
              float _4035 = _4034 * _4034;
              float _4038 = 1.0f - _4033;
              float _4039 = min(_4033, 0.0f);
              float _4042 = _4033 + 1.0f;
              float _4043 = max(_4033, 0.0f);
              float3 _4055 = float3(0.1599999964237213134765625f * _4017, 0.1599999964237213134765625f * ((_4021 - (_4022 * _4022)) + 1.0f), _4014 * 0.07999999821186065673828125f);
              float3 _4056 = float3(0.1599999964237213134765625f * ((_4014 * 0.5f) - _4012), 0.1599999964237213134765625f * ((_4017 - (_4018 * _4018)) + 1.0f), 0.1599999964237213134765625f * _4021) + _4055;
              float3 _4058 = float3(0.1599999964237213134765625f * _4038, 0.1599999964237213134765625f * ((_4042 - (_4043 * _4043)) + 1.0f), _4035 * 0.07999999821186065673828125f);
              float3 _4059 = float3(0.1599999964237213134765625f * ((_4035 * 0.5f) - _4033), 0.1599999964237213134765625f * ((_4038 - (_4039 * _4039)) + 1.0f), 0.1599999964237213134765625f * _4042) + _4058;
              float3 _4065 = ((_4055 / _4056) + float3(-2.5f, -0.5f, 1.5f)) * _52_m10.xxx;
              float3 _4067 = ((_4058 / _4059) + float3(-2.5f, -0.5f, 1.5f)) * _52_m10.yyy;
              float2 _4069 = _4010 * _52_m10.xy;
              float _4070 = _4065.x;
              float _4071 = _4067.x;
              float2 _4073 = _4069 + float2(_4070, _4071);
              float _4074 = _4065.y;
              float2 _4076 = _4069 + float2(_4074, _4071);
              float _4077 = _4065.z;
              float2 _4079 = _4069 + float2(_4077, _4071);
              float _4080 = _4067.y;
              float2 _4082 = _4069 + float2(_4070, _4080);
              float2 _4084 = _4069 + float2(_4074, _4080);
              float2 _4086 = _4069 + float2(_4077, _4080);
              float _4087 = _4067.z;
              float2 _4089 = _4069 + float2(_4070, _4087);
              float2 _4091 = _4069 + float2(_4074, _4087);
              float2 _4093 = _4069 + float2(_4077, _4087);
              float _4094 = _4056.x;
              float _4095 = _4059.x;
              float _4097 = _4056.y;
              float _4099 = _4056.z;
              float _4101 = _4059.y;
              float _4105 = _4059.z;
              float _4171 = ((((((((_4094 * _4095) * _54.SampleCmpLevelZero(_26, float3(_4073, _379).xy, _3997)) + ((_4097 * _4095) * _54.SampleCmpLevelZero(_26, float3(_4076, _379).xy, _3997))) + ((_4099 * _4095) * _54.SampleCmpLevelZero(_26, float3(_4079, _379).xy, _3997))) + ((_4094 * _4101) * _54.SampleCmpLevelZero(_26, float3(_4082, _379).xy, _3997))) + ((_4097 * _4101) * _54.SampleCmpLevelZero(_26, float3(_4084, _379).xy, _3997))) + ((_4099 * _4101) * _54.SampleCmpLevelZero(_26, float3(_4086, _379).xy, _3997))) + ((_4094 * _4105) * _54.SampleCmpLevelZero(_26, float3(_4089, _379).xy, _3997))) + ((_4097 * _4105) * _54.SampleCmpLevelZero(_26, float3(_4091, _379).xy, _3997));
              float4 _4186 = asfloat(uint4(_55.Load(_3880 * 4 + 0), _55.Load(_3883 * 4 + 0), _55.Load(_3886 * 4 + 0), _55.Load(_3889 * 4 + 0)));
              float _4187 = _4186.w;
              float2 _4189 = min(_3986, 1.0f.xx - _3986);
              _4202 = (_3871 >= 0) ? lerp(1.0f, (any(bool3(_3993.x || _3994.x, _3993.y || _3994.y, _3993.z || _3994.z)) || ((asuint(_3997) & 2147483647u) > 2139095040u)) ? 1.0f : (_4171 + ((_4099 * _4105) * _54.SampleCmpLevelZero(_26, float3(_4093, _379).xy, _3997))), _3670 ? min(_4187, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4186.z - _3967) * 0.25f, min(_4189.x, _4189.y)))) : _4187) : 1.0f;
            } else {
              _4202 = 1.0f;
            }
            _4203 = _4202;
            break;
          } while (false);
          _4946 = _2248 * _4203;
          _4947 = 0.0f.xxx;
        }
        _4948 = _4946;
        _4949 = _4947;
        break;
      } while (false);
      _2273 = _4948;
      _2276 = _2275 + _4949;
    }
    _2245 = _2244 + _2275;
  }
  float3 _4959 = -_465;
  float _4960 = 1.0f - _37_m1;
  float _4975 = _424.y * _18_m46.w;
  float _4980 = max(0.00999999977648258209228515625f, _4975 + _18_m47.w);
  float3 _4994 = exp(_18_m45.xyz * ((-max(0.0f, (_466 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4980)) / _4980) * exp(_4975 + _18_m48.w))));
  float _4997 = dot(_4959, _18_m44.xyz);
  float _5003 = _18_m45.w * _18_m45.w;
  float _5007 = (1.0f + _5003) - ((2.0f * _18_m45.w) * _4997);
  float3 _5339;
  float _5340;
  if (_18_m55.z > 0.0f) {
    uint3 _5165 = (uint3(int3(int(_899.x), int(_899.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5166 = _5165.y;
    uint _5167 = _5165.z;
    uint _5170 = _5165.x + (_5166 * _5167);
    uint _5172 = _5166 + (_5167 * _5170);
    uint _5174 = _5167 + (_5170 * _5172);
    uint _5176 = _5170 + (_5172 * _5174);
    float _5200 = dot(_4959, -_16_m0[2].xyz);
    float3 _5210 = _424 - _16_m11.xyz;
    float _5212 = (_18_m55.w * ((_5200 > 5.9604644775390625e-08f) ? (1.0f / _5200) : 0.0f)) * (1.0f / _466);
    float _5213 = _5210.y;
    float _5214 = _5212 * _5213;
    float _5216 = _16_m11.y + _5214;
    float _5217 = _5213 - _5214;
    float _5219 = (1.0f - _5212) * _466;
    float _5233 = max(-127.0f, _18_m49.z * _5217);
    float _5257 = max(-127.0f, _18_m52.x * _5217);
    float _5268 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5216 - _18_m49.x)))) * ((abs(_5233) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5233)) / _5233) : (0.693147182464599609375f - (0.2402265071868896484375f * _5233)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5216 - _18_m52.z)))) * ((abs(_5257) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5257)) / _5257) : (0.693147182464599609375f - (0.2402265071868896484375f * _5257))));
    float _5290 = clamp((_466 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5293 = clamp((max(clamp(exp2(-(_5268 * _5219)), 0.0f, 1.0f), _18_m51.w) + clamp((_466 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5290, 0.0f, 1.0f);
    float4 _5333 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _39.SampleLevel(_24, float3((_2219 + ((((float3(uint3(_5176, _5172 + (_5174 * _5176), _384) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_900 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_900 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5339 = _5333.xyz + (((_18_m51.xyz * (1.0f - _5293)) + (((_18_m54.xyz * pow(clamp(dot(_465, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5268 * max(_5219 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5290))) * _5333.w);
    _5340 = _5333.w * _5293;
  } else {
    float3 _5037 = _424 - _16_m11.xyz;
    float _5039 = _5037.y;
    float _5053 = max(-127.0f, _18_m49.z * _5039);
    float _5077 = max(-127.0f, _18_m52.x * _5039);
    float _5088 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5053) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5053)) / _5053) : (0.693147182464599609375f - (0.2402265071868896484375f * _5053)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5077) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5077)) / _5077) : (0.693147182464599609375f - (0.2402265071868896484375f * _5077))));
    float _5110 = clamp((_466 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5113 = clamp((max(clamp(exp2(-(_5088 * _466)), 0.0f, 1.0f), _18_m51.w) + clamp((_466 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5110, 0.0f, 1.0f);
    _5339 = (_18_m51.xyz * (1.0f - _5113)) + (((_18_m54.xyz * pow(clamp(dot(_465, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5088 * max(_466 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5110));
    _5340 = _5113;
  }
  float3 _5344 = (((((lerp(dot(_1351, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1351, _1357) * _18_m78.xyz) * _37_m11) + (_1351 * _1365)) + _808) + (_2218.xyz + (_2244 * _2247)).xyz).xyz;
  float _5351 = clamp(_900 / _37_m35, 0.0f, 1.0f);
  // RenoDX code start: retain the glass adjustment in the updated native composite.
  /* Vanilla 0x3DAFE3A1:
  float3 _5361 = lerp(_5344, ((_5344 * (_4994 * _5340)) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4997 * _4997)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _5003) / max((12.56637096405029296875f * _5007) * sqrt(_5007), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4994)) * _5340) + _5339) * _4960)).xyz, (_5351 + (_37_m34 * (1.0f - _5351))).xxx).xyz * _764;
  */
  float3 _5361 = lerp(_5344, ((_5344 * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_4994 * _5340)) : (_4994 * _5340))) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4997 * _4997)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _5003) / max((12.56637096405029296875f * _5007) * sqrt(_5007), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4994)) * _5340 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5339 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f))) * _4960)).xyz, (_5351 + (_37_m34 * (1.0f - _5351))).xxx).xyz * _764;
  // RenoDX code end
  float4 _5362 = float4(_5361.x, _5361.y, _5361.z, _380.w);
  float _5363 = _764 * _4960;
  _5362.w = _5363;
  float3 _5372 = ((lerp(dot(_5362.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5362.xyz, _1357) * _18_m78.xyz) * _37_m11) + (_5362.xyz * _1365);
  float2 _5382 = min(_866, 1.0f.xx);
  float4 _5383 = float4(_5382.x, _5382.y, _380.z, _380.w);
  _5383.z = float(clamp(max(dot(_5372.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _5363, _5363) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5383.w = (_37_m2 * _37_m0) * float(clamp(max(dot(_765, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _764, _764) * 10.0f, 0.0f, 1.0f) > 0.5f);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x3DAFE3A1:
  _13 = float4(_5372.x, _5372.y, _5372.z, _5362.w);
  */
  float3 renodx_output_color = float3(_5372.x, _5372.y, _5372.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _5362.w);
  // RenoDX code end
  _14 = _5383;
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

#include "../shared.h"

// Ported from the native 0xEBC3A5FC Vulkan dump.
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

struct _40 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _380;
static float4 _381;
static uint _382;

static const float4 _358[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _359[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _360[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(53, 0)]] ByteAddressBuffer _31 : register(t53, space0);
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
  float _37_m16 : packoffset(c4);
  float _37_m17 : packoffset(c4.y);
  float _37_m18 : packoffset(c4.z);
  float _37_m19 : packoffset(c4.w);
  float _37_m20 : packoffset(c5);
  float _37_m21 : packoffset(c5.y);
  float _37_m22 : packoffset(c5.z);
  float _37_m23 : packoffset(c5.w);
  float _37_m24 : packoffset(c6);
  float _37_m25 : packoffset(c6.y);
  float _37_m26 : packoffset(c6.z);
  float _37_m27 : packoffset(c6.w);
  float _37_m28 : packoffset(c7);
  float _37_m29 : packoffset(c7.y);
  float _37_m30 : packoffset(c7.z);
  float _37_m31 : packoffset(c7.w);
  float4 _37_m32 : packoffset(c8);
  float4 _37_m33 : packoffset(c9);
  float4 _37_m34 : packoffset(c10);
  float4 _37_m35 : packoffset(c11);
  float4 _37_m36 : packoffset(c12);
  float4 _37_m37 : packoffset(c13);
  float4 _37_m38 : packoffset(c14);
  float4 _37_m39 : packoffset(c15);
  float4 _37_m40 : packoffset(c16);
  float4 _37_m41 : packoffset(c17);
  float4 _37_m42 : packoffset(c18);
  float4 _37_m43 : packoffset(c19);
  float4 _37_m44 : packoffset(c20);
  float4 _37_m45 : packoffset(c21);
  float _37_m46 : packoffset(c22);
  float _37_m47 : packoffset(c22.y);
  float _37_m48 : packoffset(c22.z);
  float _37_m49 : packoffset(c22.w);
  float _37_m50 : packoffset(c23);
  float _37_m51 : packoffset(c23.y);
  float _37_m52 : packoffset(c23.z);
  float _37_m53 : packoffset(c23.w);
  float _37_m54 : packoffset(c24);
  float _37_m55 : packoffset(c24.y);
  float _37_m56 : packoffset(c24.z);
  float _37_m57 : packoffset(c24.w);
  float _37_m58 : packoffset(c25);
  float _37_m59 : packoffset(c25.y);
  float _37_m60 : packoffset(c25.z);
  float _37_m61 : packoffset(c25.w);
  float _37_m62 : packoffset(c26);
  float _37_m63 : packoffset(c26.y);
  float _37_m64 : packoffset(c26.z);
  float _37_m65 : packoffset(c26.w);
  float _37_m66 : packoffset(c27);
  float _37_m67 : packoffset(c27.y);
  float _37_m68 : packoffset(c27.z);
  float _37_m69 : packoffset(c27.w);
  float4 _37_m70 : packoffset(c28);
  float4 _37_m71 : packoffset(c29);
  float4 _37_m72 : packoffset(c30);
  float4 _37_m73 : packoffset(c31);
  float4 _37_m74 : packoffset(c32);
};

[[vk::binding(16, 0)]] cbuffer _39_41 : register(b16, space0) {
  float4 _41_m0 : packoffset(c0);
  float4 _41_m1 : packoffset(c1);
  float4 _41_m2 : packoffset(c2);
  float4 _41_m3 : packoffset(c3);
  _40 _41_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _42_43 : register(b13, space0) {
  float4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c1);
  float4 _43_m2 : packoffset(c2);
  float4 _43_m3 : packoffset(c3);
  float4 _43_m4 : packoffset(c4);
  uint4 _43_m5 : packoffset(c5);
  float4 _43_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _44_45 : register(b49, space0) {
  int _45_m0 : packoffset(c0);
  int _45_m1 : packoffset(c0.y);
  int _45_m2 : packoffset(c0.z);
  int _45_m3 : packoffset(c0.w);
  int _45_m4 : packoffset(c1);
  int _45_m5 : packoffset(c1.y);
  int _45_m6 : packoffset(c1.z);
  int _45_m7 : packoffset(c1.w);
  float _45_m8 : packoffset(c2);
  float _45_m9 : packoffset(c2.y);
  float _45_m10 : packoffset(c2.z);
  float _45_m11 : packoffset(c2.w);
  float _45_m12 : packoffset(c3);
  float _45_m13 : packoffset(c3.y);
  float _45_m14 : packoffset(c3.z);
  float _45_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _46_47 : register(b14, space0) {
  column_major float4x4 _47_m0[5] : packoffset(c0);
  float4 _47_m1[4] : packoffset(c20);
  float4 _47_m2[4] : packoffset(c24);
  float4 _47_m3[4] : packoffset(c28);
  float4 _47_m4 : packoffset(c32);
  float4 _47_m5 : packoffset(c33);
  float4 _47_m6 : packoffset(c34);
  float4 _47_m7 : packoffset(c35);
  float4 _47_m8 : packoffset(c36);
  float4 _47_m9[27] : packoffset(c37);
  float4 _47_m10 : packoffset(c64);
  float4 _47_m11 : packoffset(c65);
  float4 _47_m12[62] : packoffset(c66);
  column_major float4x4 _47_m13[15] : packoffset(c128);
  float4 _47_m14[15] : packoffset(c188);
  float4 _47_m15[15] : packoffset(c203);
  float4 _47_m16[15] : packoffset(c218);
  float4 _47_m17 : packoffset(c233);
  float4 _47_m18 : packoffset(c234);
  float4 _47_m19[21] : packoffset(c235);
  column_major float4x4 _47_m20 : packoffset(c256);
  column_major float4x4 _47_m21 : packoffset(c260);
  float4 _47_m22 : packoffset(c264);
  float4 _47_m23 : packoffset(c265);
  float4 _47_m24 : packoffset(c266);
  float4 _47_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _50 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _65_66 : register(b51, space0) {
  float4 _66_m0[32] : packoffset(c0);
  column_major float4x4 _66_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _29 : register(t25, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _32 : register(t4, space1);
[[vk::binding(2, 1)]] SamplerState _33 : register(s2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3, space1);
[[vk::binding(1, 1)]] SamplerState _35 : register(s1, space1);
[[vk::binding(8, 0)]] Texture2D<float4> _48 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _49 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _51 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _52 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _53 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _56 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _57 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _58 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _59 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _60 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _61 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _62 : register(t31, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _63 : register(t37, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _64 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _69 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _70 : register(t29, space0);

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
  float2 _411 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _414 = float4(_411, gl_FragCoord.z, 1.0f);
  _414.y = -_411.y;
  float4 _417 = mul(_16_m6, _414);
  float3 _421 = _417.xyz / _417.w.xxx;
  float4 _425 = float4(_421, 1.0f);
  float _432 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _454;
  do {
    if (_18_m4.w == 0.0f) {
      _454 = _16_m11.xyz - _421;
      break;
    } else {
      _454 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _455 = dot(_454, _454);
  float _457 = rsqrt(max(_455, 9.9999999392252902907785028219223e-09f));
  float3 _458 = _454 * _457;
  float _459 = _455 * _457;
  float4 _492 = _32.SampleBias(_33, (lerp(_4, _5, _37_m11.xx) * _37_m35.xy) + _37_m35.zw, _18_m16);
  float _494 = _492.w;
  float4 _497 = _34.SampleBias(_35, (lerp(_4, _5, _37_m12.xx) * _37_m36.xy) + _37_m36.zw, _37_m13 + _18_m16);
  float2 _500 = (_497.xy * 2.0f.xx) - 1.0f.xx;
  float2 _501 = abs(_500);
  bool2 _502 = bool2(_501.x < 0.01200000010430812835693359375f.xx.x, _501.y < 0.01200000010430812835693359375f.xx.y);
  float2 _503 = float2(_502.x ? 0.0f.xx.x : _500.x, _502.y ? 0.0f.xx.y : _500.y);
  float2 _504 = _503 * _37_m0;
  float _513 = _497.w;
  float3 _525 = lerp(clamp((_492.xyz * _37_m32.xyz) * _37_m18, 0.0f.xxx, 1.0f.xxx), _37_m32.xyz, _37_m16.xxx);
  float _531 = lerp(_494, _513, _37_m6) * _37_m32.w;
  float _537 = lerp(_531, _531 * _8.x, _37_m46);
  float _542 = lerp(_37_m2, _37_m3, _497.z);
  float _552 = lerp(_494, _37_m17, clamp(_37_m15 - 1.0f, 0.0f, 1.0f));
  float3 _564 = ((_7.xyz * _504.x) + ((cross(_6, float4(_7.xyz, _432).xyz) * _432) * _504.y)) + (_6 * (max(0.00048828125f, sqrt(clamp(1.0f - dot(_503, _503), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_37_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _568 = _564 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_564, _564)));
  float _580 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _593 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _593.y = -_593.y;
  float _619 = 0.07999999821186065673828125f * _37_m1;
  float3 _620 = _525 * _552;
  float3 _621 = _525 - _620;
  float3 _625 = (_619 - (_619 * _552)).xxx + _620;
  float _626 = dot(_568, _458);
  float4 _629 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _542) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _630 = _629.x;
  float2 _640 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_630 * _630, exp2((-9.27999973297119140625f) * max(0.0f, _626))) * _630) + _629.y)) + _629.zw;
  uint2 _680;
  float _681;
  if (_18_m24.y == 1.0f) {
    float4 _657 = mul(_18_m138, _425);
    float4 _660 = _657;
    _660.y = -_657.y;
    float4 _663 = _660 * (1.0f / _657.w);
    _680 = uint2(clamp(((_663.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _681 = 1.0f / ((_18_m2.z * _663.z) + _18_m2.w);
  } else {
    _680 = uint2(gl_FragCoord.xy);
    _681 = abs(mul(_16_m0, _425).z);
  }
  float3 _683 = _421 + (_568 * 0.25f);
  float3 _693 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _702 = _683 - (_18_m108.xyz + (_693 * (-_18_m110.w)));
  float _717 = max(min(max((max(abs(_702.x), abs(_702.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_702.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1019;
  float4 _1020;
  float4 _1021;
  float _1022;
  float _1023;
  if ((_18_m108.w != 0.0f) && (_717 < 1.0f)) {
    float3 _730 = _683 - (_18_m108.xyz + (_693 * (-_18_m110.y)));
    float _744 = max(clamp((max(abs(_730.x), abs(_730.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_730.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _820;
    float4 _821;
    float4 _822;
    float4 _823;
    if (_744 < 1.0f) {
      float3 _753 = ((_683 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _755 = _753 - floor(_753);
      float4 _759 = _57.SampleLevel(_24, _755, 0.0f);
      float _760 = 1.0f - _744;
      float _764 = _18_m109.y * 0.5f;
      float _769 = _755.x;
      float _770 = clamp(_755.y, _764, 1.0f - _764) * 0.3333333432674407958984375f;
      float _771 = _755.z;
      float4 _774 = _58.SampleLevel(_23, float3(_769, _770, _771), 0.0f);
      float _790 = _759.x;
      float _800 = _759.y;
      float _810 = _759.z;
      _820 = _717 + (_774.w * _760);
      _821 = float4(((_58.SampleLevel(_23, float3(_769, _770 + 0.666666686534881591796875f, _771), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _810, _810) * _760;
      _822 = float4(((_58.SampleLevel(_23, float3(_769, _770 + 0.3333333432674407958984375f, _771), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _800, _800) * _760;
      _823 = float4(((_774.xyz * 4.0f) - 2.0f.xxx) * _790, _790) * _760;
    } else {
      _820 = _717;
      _821 = 0.0f.xxxx;
      _822 = 0.0f.xxxx;
      _823 = 0.0f.xxxx;
    }
    float3 _829 = _683 - (_18_m108.xyz + (_693 * (-_18_m110.z)));
    float _843 = max(clamp((max(abs(_829.x), abs(_829.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_829.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _923;
    float4 _924;
    float4 _925;
    float4 _926;
    if (_843 < 1.0f) {
      float3 _852 = ((_683 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _854 = _852 - floor(_852);
      float4 _858 = _59.SampleLevel(_24, _854, 0.0f);
      float _860 = _744 * (1.0f - _843);
      float _864 = _18_m109.y * 0.5f;
      float _869 = _854.x;
      float _870 = clamp(_854.y, _864, 1.0f - _864) * 0.3333333432674407958984375f;
      float _871 = _854.z;
      float4 _874 = _60.SampleLevel(_23, float3(_869, _870, _871), 0.0f);
      float _890 = _858.x;
      float _901 = _858.y;
      float _912 = _858.z;
      _923 = _820 + (_874.w * _860);
      _924 = _821 + (float4(((_60.SampleLevel(_23, float3(_869, _870 + 0.666666686534881591796875f, _871), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _912, _912) * _860);
      _925 = _822 + (float4(((_60.SampleLevel(_23, float3(_869, _870 + 0.3333333432674407958984375f, _871), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _901, _901) * _860);
      _926 = _823 + (float4(((_874.xyz * 4.0f) - 2.0f.xxx) * _890, _890) * _860);
    } else {
      _923 = _820;
      _924 = _821;
      _925 = _822;
      _926 = _823;
    }
    float4 _1009;
    float4 _1010;
    float4 _1011;
    float _1012;
    if (_843 > 0.0f) {
      float3 _935 = ((_683 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _938 = _18_m109.xyz * 0.5f;
      float3 _940 = clamp(_935 - floor(_935), _938, 1.0f.xxx - _938);
      float4 _944 = _61.SampleLevel(_24, _940, 0.0f);
      float _946 = _843 * (1.0f - _717);
      float _950 = _18_m109.y * 0.5f;
      float _955 = _940.x;
      float _956 = clamp(_940.y, _950, 1.0f - _950) * 0.3333333432674407958984375f;
      float _957 = _940.z;
      float4 _960 = _62.SampleLevel(_23, float3(_955, _956, _957), 0.0f);
      float _976 = _944.x;
      float _987 = _944.y;
      float _998 = _944.z;
      _1009 = _924 + (float4(((_62.SampleLevel(_23, float3(_955, _956 + 0.666666686534881591796875f, _957), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _998, _998) * _946);
      _1010 = _925 + (float4(((_62.SampleLevel(_23, float3(_955, _956 + 0.3333333432674407958984375f, _957), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _987, _987) * _946);
      _1011 = _926 + (float4(((_960.xyz * 4.0f) - 2.0f.xxx) * _976, _976) * _946);
      _1012 = _923 + (_960.w * _946);
    } else {
      _1009 = _924;
      _1010 = _925;
      _1011 = _926;
      _1012 = _923;
    }
    float _1015 = clamp((_1012 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1019 = _1009;
    _1020 = _1010;
    _1021 = _1011;
    _1022 = _1015 - _717;
    _1023 = (_1015 + _717) * 0.5f;
  } else {
    _1019 = 0.0f.xxxx;
    _1020 = 0.0f.xxxx;
    _1021 = 0.0f.xxxx;
    _1022 = 0.0f;
    _1023 = 1.0f;
  }
  float4 _1043 = _1021 + float4(_18_m111.x * _1023, (_18_m111.y * _1023) + ((_18_m111.w * _1022) * 0.5f), _18_m111.z * _1023, (_18_m111.w * _1023) + ((_18_m111.y * _1022) * 0.375f));
  float4 _1063 = _1020 + float4(_18_m112.x * _1023, (_18_m112.y * _1023) + ((_18_m112.w * _1022) * 0.5f), _18_m112.z * _1023, (_18_m112.w * _1023) + ((_18_m112.y * _1022) * 0.375f));
  float4 _1083 = _1019 + float4(_18_m113.x * _1023, (_18_m113.y * _1023) + ((_18_m113.w * _1022) * 0.5f), _18_m113.z * _1023, (_18_m113.w * _1023) + ((_18_m113.y * _1022) * 0.375f));
  float _1088 = max(0.0f, dot(_1043.xyz, _568) + _1043.w);
  float _1093 = max(0.0f, dot(_1063.xyz, _568) + _1063.w);
  float _1098 = max(0.0f, dot(_1083.xyz, _568) + _1083.w);
  float3 _1108 = -_458;
  float3 _1109 = reflect(_1108, _568);
  float _1117 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_542, 0.001000000047497451305389404296875f))));
  float2 _1118 = float2(_680);
  float2 _1122 = floor(_1118 * _41_m0.w);
  float _1139 = floor(_681 - _41_m2.y);
  float _1143 = clamp(_1139, 0.0f, _41_m1.x - 1.0f);
  uint _1153 = (_1139 <= _1143) ? (_31.Load(uint(_18_m21.z + int(_1122.x + (_1122.y * _41_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1143)) * 4 + 0)) : 0u;
  float _1156 = dot(float4(_1088, _1093, _1098, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1158;
  float _1161;
  uint _1163;
  _1158 = 0.0f.xxx;
  _1161 = 1.0f;
  _1163 = _1153;
  uint _1164;
  float3 _1159;
  float _1162;
  bool _1166;
  [loop] for (;;) {
    bool _1165 = _1163 != 0u;
    _1166 = _1161 > 0.00999999977648258209228515625f;
    if (_1165 && _1166) {
      uint _1170 = firstbitlow(_1163);
      _1164 = _1163 ^ (1u << (_1170 & 31u));
      float3 _1190 = float3(dot(_41_m4[_1170]._m2, _425), dot(_41_m4[_1170]._m3, _425), dot(_41_m4[_1170]._m4, _425));
      float3 _1191 = abs(_1190);
      if (all(bool3(_1191.x <= _41_m4[_1170]._m1.xyz.x, _1191.y <= _41_m4[_1170]._m1.xyz.y, _1191.z <= _41_m4[_1170]._m1.xyz.z))) {
        float3 _1200 = _41_m4[_1170]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1202 = _1191 * 0.100000001490116119384765625f;
        float3 _1203 = _1202 * _1202;
        float3 _1206 = (_41_m4[_1170]._m1.xyz - _1191) * _41_m4[_1170]._m5.xyz;
        float3 _1254;
        [branch] if (_41_m4[_1170]._m6.x == 1.0f) {
          float3 _1239 = float3(dot(_41_m4[_1170]._m2.xyz, _1109), dot(_41_m4[_1170]._m3.xyz, _1109), dot(_41_m4[_1170]._m4.xyz, _1109));
          float3 _1241 = (_41_m4[_1170]._m1.xyz - _1190) / _1239;
          float3 _1244 = ((-_41_m4[_1170]._m1.xyz) - _1190) / _1239;
          bool3 _1245 = bool3(_1239.x > 0.0f.xxx.x, _1239.y > 0.0f.xxx.y, _1239.z > 0.0f.xxx.z);
          float3 _1246 = float3(_1245.x ? _1241.x : _1244.x, _1245.y ? _1241.y : _1244.y, _1245.z ? _1241.z : _1244.z);
          _1254 = _1190 + (_1239 * min(min(_1246.x, _1246.y), _1246.z));
        }
        else {
          _1254 = _1109;
        }
        float3 _1255 = normalize(_1254);
        float3 _1258 = float3(int3(sign(_1255)));
        float3 _1261 = _1255 / dot(_1255, _1258).xxx;
        float3 _1275;
        if (_1261.z < 0.0f) {
          float3 _1266 = abs(_1261);
          float2 _1273 = _1258.xy * float2(1.0f - _1266.y, 1.0f - _1266.x);
          _1275 = float3(_1273.x, _1273.y, _1261.z);
        } else {
          _1275 = _1261;
        }
        float _1300 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_41_m4[_1170]._m0, float4(_568, 1.0f))));
        float _1313 = clamp((min(_1206.x, min(_1206.y, _1206.z)) * _41_m4[_1170]._m6.y) + ((((((_1200 * _1200).x - ((_1203.x + _1203.y) + _1203.z)) * _41_m4[_1170]._m5.x) * _41_m4[_1170]._m5.x) * (1.0f - _41_m4[_1170]._m6.y)) * 100.0f), 0.0f, 1.0f) * _41_m4[_1170]._m6.w;
        _1159 = _1158 + ((((_29.SampleLevel(_25, float3((((_1275.xy * 0.5f) + 0.5f.xx) * _41_m1.w) + _41_m2.w.xx, _41_m4[_1170]._m1.w), _1117).xyz * _41_m4[_1170]._m5.w) * ((((((clamp(abs(_1156 / _1300), 0.0f, 1.0f) * 2.0f) + _1156) / (2.0f + _1300)) - 1.0f) * _18_m23.w) + 1.0f)) * _1313) * _1161);
        _1162 = _1161 * (1.0f - _1313);
      } else {
        _1159 = _1158;
        _1162 = _1161;
      }
      _1158 = _1159;
      _1161 = _1162;
      _1163 = _1164;
      continue;
    } else {
      break;
    }
  }
  float3 _1382;
  if (_1166) {
    float3 _1321 = normalize(_1109);
    float3 _1324 = float3(int3(sign(_1321)));
    float3 _1327 = _1321 / dot(_1321, _1324).xxx;
    float3 _1341;
    if (_1327.z < 0.0f) {
      float3 _1332 = abs(_1327);
      float2 _1339 = _1324.xy * float2(1.0f - _1332.y, 1.0f - _1332.x);
      _1341 = float3(_1339.x, _1339.y, _1327.z);
    } else {
      _1341 = _1327;
    }
    float _1368 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_41_m3, float4(_568, 1.0f))));
    _1382 = _1158 + ((_29.SampleLevel(_25, float3((((_1341.xy * 0.5f) + 0.5f.xx) * _41_m1.w) + _41_m2.w.xx, 0.0f), _1117).xyz * ((((((clamp(abs(_1156 / _1368), 0.0f, 1.0f) * 2.0f) + _1156) / (2.0f + _1368)) - 1.0f) * _18_m23.w) + 1.0f)) * _1161);
  } else {
    _1382 = _1158;
  }
  float4 _2073;
  do {
    [branch] if (_45_m4 == 0) {
      _2073 = 0.0f.xxxx;
      break;
    }
    float2 _1932;
    do {
      if (_47_m7.w >= 0.9900000095367431640625f) {
        _1932 = float2(_47_m7.z, 1.0f);
        break;
      }
      int _1411 = int(_47_m7.x);
      bool3 _1413 = (_1411 == 2).xxx;
      float3 _1421 = _421 - float3(_1413.x ? _47_m1[0].xyz.x : _16_m11.xyz.x, _1413.y ? _47_m1[0].xyz.y : _16_m11.xyz.y, _1413.z ? _47_m1[0].xyz.z : _16_m11.xyz.z);
      float _1432 = max(clamp((_47_m6.w - dot(_1421, _1421)) * _47_m6.z, 0.0f, 1.0f), _47_m8.x);
      float _1649;
      bool _1650;
      if (_1432 > 0.0f) {
        float _1647;
        bool _1648;
        if (_1411 > 0) {
          float3 _1439 = _421 - _47_m1[0].xyz;
          float3 _1443 = _421 - _47_m1[1].xyz;
          float3 _1447 = _421 - _47_m1[2].xyz;
          float3 _1451 = _421 - _47_m1[3].xyz;
          float4 _1456 = float4(dot(_1439, _1439), dot(_1443, _1443), dot(_1447, _1447), dot(_1451, _1451));
          float4 _1465 = float4(_47_m1[0].w, _47_m1[1].w, _47_m1[2].w, _47_m1[3].w);
          float4 _1467 = float4(bool4(_1456.x < _1465.x, _1456.y < _1465.y, _1456.z < _1465.z, _1456.w < _1465.w));
          float3 _1471 = clamp(_1467.yzw - _1467.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1475 = clamp(4.0f - dot(float4(_1467.x, _1471.x, _1471.y, _1471.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1477 = clamp(_1475 + 1.0f, 0.0f, 3.0f);
          uint _1478 = uint(_1475);
          uint _1486 = uint(_1477);
          float _1492 = dot(_1456, _358[_1486]) / _47_m1[_1486].w;
          float _1509;
          if (((_1477 > _1475) && (_1492 >= 0.0f)) && (_1492 <= 1.0f)) {
            _1509 = _1475 + step(frac(52.98291778564453125f * frac(dot(_1118 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1456, _358[_1478]) / _47_m1[_1478].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1509 = _1475;
          }
          float _1510 = clamp(_1509, 0.0f, 4.0f);
          float4 _1514 = mul(_47_m0[uint(_1510)], _425);
          float _1517 = _1514.z;
          float4 _1518 = float4(_1514.xy, _1517, _1510);
          float3 _1519 = _1518.xyz;
          bool3 _1520 = bool3(_1519.x <= 0.0f.xxx.x, _1519.y <= 0.0f.xxx.y, _1519.z <= 0.0f.xxx.z);
          bool3 _1521 = bool3(_1519.x >= 1.0f.xxx.x, _1519.y >= 1.0f.xxx.y, _1519.z >= 1.0f.xxx.z);
          bool _1527 = any(bool3(_1520.x || _1521.x, _1520.y || _1521.y, _1520.z || _1521.z)) || ((asuint(_1517) & 2147483647u) > 2139095040u);
          int _1528 = int(_1510);
          float2 _1545 = float4(_47_m3[_1528].xy + (_1518.xy * _47_m3[_1528].zw), _1517, _1510).xy * _47_m4.zw;
          float2 _1547 = floor(_1545 + 0.5f.xx);
          float2 _1548 = _1545 - _1547;
          float _1549 = _1548.x;
          float _1550 = _1549 + 0.5f;
          float _1552 = (_1550 * _1550) * 0.5f;
          float _1555 = min(_1549, 0.0f);
          float _1559 = max(_1549, 0.0f);
          float4 _1563 = float4(_1552 - _1549, (1.0f - _1549) - (_1555 * _1555), (_1549 + 1.0f) - (_1559 * _1559), _1552) * 0.44444000720977783203125f;
          float _1564 = _1548.y;
          float _1565 = _1564 + 0.5f;
          float _1567 = (_1565 * _1565) * 0.5f;
          float _1570 = min(_1564, 0.0f);
          float _1574 = max(_1564, 0.0f);
          float4 _1578 = float4(_1567 - _1564, (1.0f - _1564) - (_1570 * _1570), (_1564 + 1.0f) - (_1574 * _1574), _1567) * 0.44444000720977783203125f;
          float2 _1580 = _1563.yw;
          float2 _1581 = _1563.xz + _1580;
          float2 _1583 = _1578.yw;
          float2 _1584 = _1578.xz + _1583;
          float2 _1590 = ((_1580 / _1581) + float2(-1.5f, 0.5f)) * _47_m4.xx;
          float2 _1592 = ((_1583 / _1584) + float2(-1.5f, 0.5f)) * _47_m4.yy;
          float2 _1594 = _1547 * _47_m4.xy;
          float _1595 = _1590.x;
          float _1596 = _1592.x;
          float _1599 = _1590.y;
          float _1602 = _1592.y;
          float _1607 = _1581.x;
          float _1608 = _1584.x;
          float _1610 = _1581.y;
          float _1612 = _1584.y;
          _1647 = _1527 ? 1.0f : (((((_1607 * _1608) * _48.SampleCmpLevelZero(_26, float3(_1594 + float2(_1595, _1596), _380).xy, _1517)) + ((_1610 * _1608) * _48.SampleCmpLevelZero(_26, float3(_1594 + float2(_1599, _1596), _380).xy, _1517))) + ((_1607 * _1612) * _48.SampleCmpLevelZero(_26, float3(_1594 + float2(_1595, _1602), _380).xy, _1517))) + ((_1610 * _1612) * _48.SampleCmpLevelZero(_26, float3(_1594 + float2(_1599, _1602), _380).xy, _1517)));
          _1648 = _1527;
        } else {
          _1647 = 1.0f;
          _1648 = false;
        }
        _1649 = _1647;
        _1650 = _1648;
      } else {
        _1649 = 1.0f;
        _1650 = false;
      }
      float _1850;
      float _1851;
      if ((_1432 < 1.0f) || (_47_m8.x > 0.5f)) {
        float _1661 = 1.0f - clamp(dot(_568, _43_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1678 = float4((_421 - (_43_m0.xyz * (_1661 * _47_m22.x))) + (_568 * (_1661 * _47_m22.y)), 1.0f);
        float4 _1679 = mul(_47_m21, _1678);
        float2 _1680 = _1679.xy;
        float _1848;
        if (all(bool2(_1680.x > 0.0f.xx.x, _1680.y > 0.0f.xx.y)) && all(bool2(_1680.x < 1.0f.xx.x, _1680.y < 1.0f.xx.y))) {
          uint _1699 = clamp(uint((floor(_1679.y * _47_m23.z) + _1679.x) * _47_m23.y), 0u, 127u);
          uint _1703 = asuint(_47_m25[_1699].x);
          float2 _1704 = spvUnpackHalf2x16(_1703);
          float _1705 = _1704.x;
          float _1847;
          if (_1705 >= 0.0f) {
            float4x4 _1714 = _47_m20;
            _1714[0].w = _47_m25[_1699].y;
            _1714[1].w = _47_m25[_1699].z;
            _1714[2].w = _47_m25[_1699].w;
            float4 _1721 = mul(_1714, _1678);
            float3 _1722 = _1721.xyz;
            float _1846;
            if (all(bool3(_1722.x > 0.0f.xxx.x, _1722.y > 0.0f.xxx.y, _1722.z > 0.0f.xxx.z)) && all(bool3(_1722.x < 1.0f.xxx.x, _1722.y < 1.0f.xxx.y, _1722.z < 1.0f.xxx.z))) {
              float _1739 = _1721.z;
              float2 _1745 = float4((_1721.xy * _47_m22.zw) + float2(_1705, spvUnpackHalf2x16(_1703 >> 16u).x), _1739, 1.0f).xy * _47_m24.zw;
              float2 _1747 = floor(_1745 + 0.5f.xx);
              float2 _1748 = _1745 - _1747;
              float _1749 = _1748.x;
              float _1750 = _1749 + 0.5f;
              float _1752 = (_1750 * _1750) * 0.5f;
              float _1755 = min(_1749, 0.0f);
              float _1759 = max(_1749, 0.0f);
              float4 _1763 = float4(_1752 - _1749, (1.0f - _1749) - (_1755 * _1755), (_1749 + 1.0f) - (_1759 * _1759), _1752) * 0.44444000720977783203125f;
              float _1764 = _1748.y;
              float _1765 = _1764 + 0.5f;
              float _1767 = (_1765 * _1765) * 0.5f;
              float _1770 = min(_1764, 0.0f);
              float _1774 = max(_1764, 0.0f);
              float4 _1778 = float4(_1767 - _1764, (1.0f - _1764) - (_1770 * _1770), (_1764 + 1.0f) - (_1774 * _1774), _1767) * 0.44444000720977783203125f;
              float2 _1780 = _1763.yw;
              float2 _1781 = _1763.xz + _1780;
              float2 _1783 = _1778.yw;
              float2 _1784 = _1778.xz + _1783;
              float2 _1790 = ((_1780 / _1781) + float2(-1.5f, 0.5f)) * _47_m24.xx;
              float2 _1792 = ((_1783 / _1784) + float2(-1.5f, 0.5f)) * _47_m24.yy;
              float2 _1794 = _1747 * _47_m24.xy;
              float _1795 = _1790.x;
              float _1796 = _1792.x;
              float _1799 = _1790.y;
              float _1802 = _1792.y;
              float _1807 = _1781.x;
              float _1808 = _1784.x;
              float _1810 = _1781.y;
              float _1812 = _1784.y;
              _1846 = ((((_1807 * _1808) * _52.SampleCmpLevelZero(_26, float3(_1794 + float2(_1795, _1796), _380).xy, _1739)) + ((_1810 * _1808) * _52.SampleCmpLevelZero(_26, float3(_1794 + float2(_1799, _1796), _380).xy, _1739))) + ((_1807 * _1812) * _52.SampleCmpLevelZero(_26, float3(_1794 + float2(_1795, _1802), _380).xy, _1739))) + ((_1810 * _1812) * _52.SampleCmpLevelZero(_26, float3(_1794 + float2(_1799, _1802), _380).xy, _1739));
            } else {
              _1846 = 1.0f;
            }
            _1847 = _1846;
          } else {
            _1847 = 1.0f;
          }
          _1848 = _1847;
        } else {
          _1848 = 1.0f;
        }
        _1850 = _1650 ? _1848 : _1649;
        _1851 = _1848;
      } else {
        _1850 = _1649;
        _1851 = 1.0f;
      }
      float _1854 = lerp(lerp(_1851, _1850, _1432), min(_1851, _1850), _47_m8.x);
      float _1927;
      if (_1854 > 0.001000000047497451305389404296875f) {
        float3 _1889 = _421 - _18_m65.xyz;
        float2 _1894 = (_1889 + (_18_m68.xyz * _1889.y)).xz * _18_m66.z;
        float2 _1895 = _18_m67.xy * _18_m77.w;
        float3 _1902 = _421 - _18_m69.xyz;
        float2 _1910 = _18_m69.w.xx;
        float4 _1917 = _51.SampleLevel(_24, lerp(_1894 * _18_m67.w, (_1902 + (_18_m68.xyz * _1902.y)).xz * _18_m70.x, _1910) + lerp(_1895, _18_m70.yz * _18_m77.w, _1910), 0.0f);
        _1927 = _1854 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1894 + _1895, 0.0f).x, lerp(_1917.x, _1917.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_1889.xz))), _18_m67.z);
      } else {
        _1927 = _1854;
      }
      _1932 = float2(lerp(_1927, _47_m7.z, _47_m7.w), _1927);
      break;
    } while (false);
    float _1937 = lerp(1.0f, min(1.0f, _1932.x), _47_m6.x);
    float4 _2072;
    if (_1937 > 0.001000000047497451305389404296875f) {
      float3 _1947 = -_43_m0.xyz;
      float _1952 = dot(_1947, _1109);
      float3 _1954 = _1109 - (_1947 * _1952);
      bool3 _1956 = (_1952 < _43_m4.z).xxx;
      float3 _1964 = normalize((_1947 * _43_m4.z) + ((_1954 * rsqrt(max(6.103515625e-05f, dot(_1954, _1954)))) * _43_m4.y));
      float3 _1965 = float3(_1956.x ? _1964.x : _1109.x, _1956.y ? _1964.y : _1109.y, _1956.z ? _1964.z : _1109.z);
      float3 _1969 = _1965 + _458;
      float3 _1973 = _1969 * rsqrt(max(6.103515625e-05f, dot(_1969, _1969)));
      float _1974 = clamp(dot(_1965, _568), 0.0f, 1.0f);
      float _1976 = clamp(dot(_568, _1973), 0.0f, 1.0f);
      float _1979 = clamp(_626, 0.0f, 1.0f);
      float _1980 = _542 * _542;
      float _1981 = _1980 * _1980;
      float _2002 = (((_1976 * _1981) - _1976) * _1976) + 1.0f;
      float _2005 = 1.0f - clamp(dot(_458, _1973), 0.0f, 1.0f);
      float _2006 = _2005 * _2005;
      float _2008 = (_2005 * _2006) * _2006;
      float _2032 = 1.0f - _542;
      float _2039 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2032 * (1.04997003078460693359375f + (_2032 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2032))))));
      float _2040 = 1.0f - _2039;
      float3 _2043 = _625 + ((1.0f.xxx - _625) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0xEBC3A5FC:
      float3 _2059 = ((clamp((min(((_625 * (1.0f - _2008)) + _2008.xxx) * ((_1981 / (_2002 * _2002)) * (0.5f / (((_1974 * sqrt(((((-_1979) * _1981) + _1979) * _1979) + _1981)) + (_1979 * sqrt(((((-_1974) * _1981) + _1974) * _1974) + _1981))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2043 * (((_56.SampleLevel(_23, (float2(_1979, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_1974, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2039) / _2040)) * _2043) / (1.0f.xxx - (_2043 * _2040)))) * _43_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1974) + ((_621 * 1.0f) * _1974)) * _43_m1.xyz;
      */
      float3 _2059 = ((clamp((min(((_625 * (1.0f - _2008)) + _2008.xxx) * ((_1981 / (_2002 * _2002)) * (0.5f / (((_1974 * sqrt(((((-_1979) * _1981) + _1979) * _1979) + _1981)) + (_1979 * sqrt(((((-_1974) * _1981) + _1974) * _1974) + _1981))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2043 * (((_56.SampleLevel(_23, (float2(_1979, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_1974, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2039) / _2040)) * _2043) / (1.0f.xxx - (_2043 * _2040)))) * _43_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f) * _1974) + ((_621 * 1.0f) * _1974)) * _43_m1.xyz;
      // RenoDX code end
      float3 _2070 = lerp(_2059, _2059 * _53.SampleBias(_23, float2(_1937, 0.5f), _18_m16).xyz, (1.0f - _1937).xxx) * 1.0f;
      _2072 = float4(_2070.x, _2070.y, _2070.z, 0.0f.xxxx.w);
    } else {
      _2072 = 0.0f.xxxx;
    }
    _2073 = _2072;
    break;
  } while (false);
  float2 _2075 = floor(_1118 * 0.03125f);
  int _2083 = int((_2075.x + (_2075.y * _45_m9)) * 8.0f);
  float _2090 = floor(_681 - (_18_m3.y * _45_m15));
  float _2094 = clamp(_2090, 0.0f, _45_m11 - 1.0f);
  int _2096 = int(_2094 * 8.0f);
  float3 _2098;
  float _2101;
  _2098 = 0.0f.xxx;
  _2101 = 1.0f;
  float3 _2099;
  float _2102;
  [loop] for (int _2103 = 0; _2103 <= 7; _2098 = _2099, _2101 = _2102, _2103++) {
    uint _2124 = (_2090 <= _2094) ? (_31.Load(uint((_45_m2 + _2083) + _2103) * 4 + 0) & _31.Load(uint((_45_m3 + _2096) + _2103) * 4 + 0)) : 0u;
    uint _2125 = uint(_2103);
    float3 _2129;
    _2102 = _2101;
    _2129 = 0.0f.xxx;
    uint _2132;
    float _2127;
    float3 _2130;
    [loop] for (uint _2131 = _2124; _2131 != 0u; _2102 = _2127, _2129 = _2130, _2131 = _2132) {
      uint _2136 = firstbitlow(_2131);
      _2132 = _2131 ^ (1u << (_2136 & 31u));
      int _2142 = int((32u * _2125) + _2136) * 8;
      int _2145 = _2142 + 1;
      int _2148 = _2142 + 2;
      int _2151 = _2142 + 3;
      int _2154 = _2142 + 4;
      int _2157 = _2142 + 5;
      int _2160 = _2142 + 6;
      int _2163 = _2142 + 7;
      uint _2167 = uint(_43_m6[_2157].w);
      float _2242;
      if ((_2167 & 1u) == 1u) {
        uint _2173 = asuint(_43_m6[_2157].x);
        uint _2180 = asuint(_43_m6[_2157].y);
        uint _2187 = asuint(_43_m6[_2157].z);
        uint _2194 = asuint(_43_m6[_2160].x);
        uint _2201 = asuint(_43_m6[_2160].y);
        uint _2208 = asuint(_43_m6[_2160].z);
        float3 _2227 = abs(mul(float4(_421 - _43_m6[_2145].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2173).x, spvUnpackHalf2x16(_2187).x, spvUnpackHalf2x16(_2201).x, 0.0f), float4(spvUnpackHalf2x16(_2173 >> 16u).x, spvUnpackHalf2x16(_2187 >> 16u).x, spvUnpackHalf2x16(_2201 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2180).x, spvUnpackHalf2x16(_2194).x, spvUnpackHalf2x16(_2208).x, 0.0f), float4(spvUnpackHalf2x16(_2180 >> 16u).x, spvUnpackHalf2x16(_2194 >> 16u).x, spvUnpackHalf2x16(_2208 >> 16u).x, 0.0f))).xyz);
        float _2234 = _43_m6[_2163].x * 0.5f;
        float _2240 = 1.0f - clamp((max(max(_2227.x, _2227.y), _2227.z) - (_2234 + 0.5f)) / (0.5f - _2234), 0.0f, 1.0f);
        _2242 = _2240 * _2240;
      } else {
        _2242 = 1.0f;
      }
      uint _2246 = uint(_43_m6[_2142].w);
      bool _2249 = _43_m6[_2151].z > 0.5f;
      if ((false || (_2242 < 0.001000000047497451305389404296875f)) || ((_2246 < 4u) && _2249)) {
        _2127 = _2102;
        _2130 = _2129;
        continue;
      }
      float _4778;
      float3 _4779;
      do {
        [branch] if (_2246 >= 4u) {
          float3 _3478;
          do {
            float3 _2268 = _43_m6[_2145].xyz - _421;
            if (dot(_43_m6[_2151].xyz, _2268) > 0.0f) {
              _3478 = 0.0f.xxx;
              break;
            }
            float _2275 = dot(_2268, _2268) * _43_m6[_2145].w;
            float _2278 = clamp(1.0f - (_2275 * _2275), 0.0f, 1.0f);
            float _2279 = _2278 * _2278;
            if (_2279 <= 0.0f) {
              _3478 = 0.0f.xxx;
              break;
            }
            float3 _2317;
            float _2318;
            bool _2319;
            float3 _2347;
            float3 _2349;
            float3 _2351;
            float3 _2353;
            float3 _2283 = _43_m6[_2148].xyz * _43_m6[_2148].w;
            float3 _2284 = _43_m6[_2145].xyz - _2283;
            float3 _2285 = _43_m6[_2154].xyz * _43_m6[_2151].w;
            float3 _2288 = _43_m6[_2145].xyz + _2283;
            float2 _2298 = (float2(clamp(_542, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_626, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2302 = _69.SampleLevel(_23, _2298, 0.0f);
            float4 _2306 = _70.SampleLevel(_23, _2298, 0.0f);
            float _2701;
            do {
              _2317 = _458 - (_568 * dot(_458, _568));
              _2318 = dot(_2317, _2317);
              _2319 = _2318 > 9.9999997473787516355514526367188e-05f;
              float3 _2342;
              if (_2319) {
                _2342 = _2317 * rsqrt(_2318);
              } else {
                float _2325 = (_568.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2327 = (-1.0f) / (_2325 + _568.z);
                _2342 = float3(1.0f + (((_2325 * _2327) * _568.x) * _568.x), ((_2325 * _568.x) * _568.y) * _2327, (-_2325) * _568.x);
              }
              float3x3 _2346 = mul(float3x3(float3(_2302.x, 0.0f, _2302.z), float3(0.0f, 1.0f, 0.0f), float3(_2302.y, 0.0f, _2302.w)), float3x3(_2342, cross(_568, _2342), _568));
              _2347 = (_2284 - _2285) - _421;
              float3 _2348 = mul(_2346, _2347);
              _2349 = (_2284 + _2285) - _421;
              float3 _2350 = mul(_2346, _2349);
              _2351 = (_2288 + _2285) - _421;
              float3 _2352 = mul(_2346, _2351);
              _2353 = (_2288 - _2285) - _421;
              float3 _2354 = mul(_2346, _2353);
              float _2355 = _2348.z;
              float _2358 = _2350.z;
              float _2362 = _2352.z;
              float _2366 = _2354.z;
              int _2370 = (((int(_2355 > 0.0f) | ((_2358 > 0.0f) ? 2 : 0)) | ((_2362 > 0.0f) ? 4 : 0)) | ((_2366 > 0.0f) ? 8 : 0));
              float3 _2607;
              float3 _2608;
              float3 _2609;
              float3 _2610;
              float3 _2611;
              int _2612;
              if (_2370 == 0) {
                _2607 = _2354;
                _2608 = _2352;
                _2609 = _2350;
                _2610 = _2348;
                _2611 = 0.0f.xxx;
                _2612 = 0;
              } else {
                float3 _2601;
                float3 _2602;
                float3 _2603;
                float3 _2604;
                float3 _2605;
                int _2606;
                if (_2370 == 1) {
                  _2601 = _2354;
                  _2602 = (_2348 * (-_2366)) + (_2354 * _2355);
                  _2603 = (_2348 * (-_2358)) + (_2350 * _2355);
                  _2604 = _2348;
                  _2605 = 0.0f.xxx;
                  _2606 = 3;
                } else {
                  float3 _2587;
                  float3 _2588;
                  float3 _2589;
                  float3 _2590;
                  float3 _2591;
                  int _2592;
                  if (_2370 == 2) {
                    _2587 = _2354;
                    _2588 = (_2350 * (-_2362)) + (_2352 * _2358);
                    _2589 = _2350;
                    _2590 = (_2350 * (-_2355)) + (_2348 * _2358);
                    _2591 = 0.0f.xxx;
                    _2592 = 3;
                  } else {
                    float3 _2573;
                    float3 _2574;
                    float3 _2575;
                    float3 _2576;
                    float3 _2577;
                    int _2578;
                    if (_2370 == 3) {
                      _2573 = (_2348 * (-_2366)) + (_2354 * _2355);
                      _2574 = (_2350 * (-_2362)) + (_2352 * _2358);
                      _2575 = _2350;
                      _2576 = _2348;
                      _2577 = 0.0f.xxx;
                      _2578 = 4;
                    } else {
                      float3 _2559;
                      float3 _2560;
                      float3 _2561;
                      float3 _2562;
                      float3 _2563;
                      int _2564;
                      if (_2370 == 4) {
                        _2559 = _2354;
                        _2560 = _2352;
                        _2561 = (_2352 * (-_2358)) + (_2350 * _2362);
                        _2562 = (_2352 * (-_2366)) + (_2354 * _2362);
                        _2563 = 0.0f.xxx;
                        _2564 = 3;
                      } else {
                        float3 _2545;
                        float3 _2546;
                        float3 _2547;
                        float3 _2548;
                        float3 _2549;
                        int _2550;
                        if (_2370 == 5) {
                          _2545 = _2354;
                          _2546 = _2352;
                          _2547 = _2350;
                          _2548 = _2348;
                          _2549 = 0.0f.xxx;
                          _2550 = 0;
                        } else {
                          float3 _2539;
                          float3 _2540;
                          float3 _2541;
                          float3 _2542;
                          float3 _2543;
                          int _2544;
                          if (_2370 == 6) {
                            _2539 = (_2352 * (-_2366)) + (_2354 * _2362);
                            _2540 = _2352;
                            _2541 = _2350;
                            _2542 = (_2350 * (-_2355)) + (_2348 * _2358);
                            _2543 = 0.0f.xxx;
                            _2544 = 4;
                          } else {
                            float3 _2525;
                            float3 _2526;
                            float3 _2527;
                            float3 _2528;
                            float3 _2529;
                            int _2530;
                            if (_2370 == 7) {
                              float _2518 = -_2366;
                              _2525 = (_2352 * _2518) + (_2354 * _2362);
                              _2526 = _2352;
                              _2527 = _2350;
                              _2528 = _2348;
                              _2529 = (_2348 * _2518) + (_2354 * _2355);
                              _2530 = 5;
                            } else {
                              float3 _2512;
                              float3 _2513;
                              float3 _2514;
                              float3 _2515;
                              float3 _2516;
                              int _2517;
                              if (_2370 == 8) {
                                _2512 = _2354;
                                _2513 = _2354;
                                _2514 = (_2354 * (-_2362)) + (_2352 * _2366);
                                _2515 = (_2354 * (-_2355)) + (_2348 * _2366);
                                _2516 = 0.0f.xxx;
                                _2517 = 3;
                              } else {
                                float3 _2498;
                                float3 _2499;
                                float3 _2500;
                                float3 _2501;
                                float3 _2502;
                                int _2503;
                                if (_2370 == 9) {
                                  _2498 = _2354;
                                  _2499 = (_2354 * (-_2362)) + (_2352 * _2366);
                                  _2500 = (_2348 * (-_2358)) + (_2350 * _2355);
                                  _2501 = _2348;
                                  _2502 = 0.0f.xxx;
                                  _2503 = 4;
                                } else {
                                  float3 _2484;
                                  float3 _2485;
                                  float3 _2486;
                                  float3 _2487;
                                  float3 _2488;
                                  int _2489;
                                  if (_2370 == 10) {
                                    _2484 = _2354;
                                    _2485 = _2352;
                                    _2486 = _2350;
                                    _2487 = _2348;
                                    _2488 = 0.0f.xxx;
                                    _2489 = 0;
                                  } else {
                                    float3 _2478;
                                    float3 _2479;
                                    float3 _2480;
                                    float3 _2481;
                                    float3 _2482;
                                    int _2483;
                                    if (_2370 == 11) {
                                      float _2471 = -_2362;
                                      _2478 = (_2354 * _2471) + (_2352 * _2366);
                                      _2479 = (_2350 * _2471) + (_2352 * _2358);
                                      _2480 = _2350;
                                      _2481 = _2348;
                                      _2482 = _2354;
                                      _2483 = 5;
                                    } else {
                                      float3 _2465;
                                      float3 _2466;
                                      float3 _2467;
                                      float3 _2468;
                                      float3 _2469;
                                      int _2470;
                                      if (_2370 == 12) {
                                        _2465 = _2354;
                                        _2466 = _2352;
                                        _2467 = (_2352 * (-_2358)) + (_2350 * _2362);
                                        _2468 = (_2354 * (-_2355)) + (_2348 * _2366);
                                        _2469 = 0.0f.xxx;
                                        _2470 = 4;
                                      } else {
                                        bool _2423 = _2370 == 13;
                                        float3 _2450;
                                        float3 _2451;
                                        float3 _2452;
                                        float3 _2453;
                                        int _2454;
                                        if (_2423) {
                                          float _2443 = -_2358;
                                          _2450 = (_2352 * _2443) + (_2350 * _2362);
                                          _2451 = (_2348 * _2443) + (_2350 * _2355);
                                          _2452 = _2348;
                                          _2453 = _2354;
                                          _2454 = 5;
                                        } else {
                                          float3 _2440;
                                          float3 _2441;
                                          int _2442;
                                          if (_2370 == 14) {
                                            float _2433 = -_2355;
                                            _2440 = (_2350 * _2433) + (_2348 * _2358);
                                            _2441 = (_2354 * _2433) + (_2348 * _2366);
                                            _2442 = 5;
                                          } else {
                                            _2440 = _2348;
                                            _2441 = 0.0f.xxx;
                                            _2442 = (_2370 == 15) ? 4 : 0;
                                          }
                                          _2450 = _2352;
                                          _2451 = _2350;
                                          _2452 = _2440;
                                          _2453 = _2441;
                                          _2454 = _2442;
                                        }
                                        bool3 _2455 = _2423.xxx;
                                        _2465 = float3(_2455.x ? _2352.x : _2354.x, _2455.y ? _2352.y : _2354.y, _2455.z ? _2352.z : _2354.z);
                                        _2466 = _2450;
                                        _2467 = _2451;
                                        _2468 = _2452;
                                        _2469 = _2453;
                                        _2470 = _2454;
                                      }
                                      _2478 = _2465;
                                      _2479 = _2466;
                                      _2480 = _2467;
                                      _2481 = _2468;
                                      _2482 = _2469;
                                      _2483 = _2470;
                                    }
                                    _2484 = _2478;
                                    _2485 = _2479;
                                    _2486 = _2480;
                                    _2487 = _2481;
                                    _2488 = _2482;
                                    _2489 = _2483;
                                  }
                                  _2498 = _2484;
                                  _2499 = _2485;
                                  _2500 = _2486;
                                  _2501 = _2487;
                                  _2502 = _2488;
                                  _2503 = _2489;
                                }
                                _2512 = _2498;
                                _2513 = _2499;
                                _2514 = _2500;
                                _2515 = _2501;
                                _2516 = _2502;
                                _2517 = _2503;
                              }
                              _2525 = _2512;
                              _2526 = _2513;
                              _2527 = _2514;
                              _2528 = _2515;
                              _2529 = _2516;
                              _2530 = _2517;
                            }
                            _2539 = _2525;
                            _2540 = _2526;
                            _2541 = _2527;
                            _2542 = _2528;
                            _2543 = _2529;
                            _2544 = _2530;
                          }
                          _2545 = _2539;
                          _2546 = _2540;
                          _2547 = _2541;
                          _2548 = _2542;
                          _2549 = _2543;
                          _2550 = _2544;
                        }
                        _2559 = _2545;
                        _2560 = _2546;
                        _2561 = _2547;
                        _2562 = _2548;
                        _2563 = _2549;
                        _2564 = _2550;
                      }
                      _2573 = _2559;
                      _2574 = _2560;
                      _2575 = _2561;
                      _2576 = _2562;
                      _2577 = _2563;
                      _2578 = _2564;
                    }
                    _2587 = _2573;
                    _2588 = _2574;
                    _2589 = _2575;
                    _2590 = _2576;
                    _2591 = _2577;
                    _2592 = _2578;
                  }
                  _2601 = _2587;
                  _2602 = _2588;
                  _2603 = _2589;
                  _2604 = _2590;
                  _2605 = _2591;
                  _2606 = _2592;
                }
                _2607 = _2601;
                _2608 = _2602;
                _2609 = _2603;
                _2610 = _2604;
                _2611 = _2605;
                _2612 = _2606;
              }
              bool3 _2614 = (_2612 == 3).xxx;
              bool3 _2617 = (_2612 == 4).xxx;
              if (_2612 == 0) {
                _2701 = 0.0f;
                break;
              }
              float3 _2622 = normalize(_2610);
              float3 _2623 = normalize(_2609);
              float3 _2624 = normalize(_2608);
              float3 _2625 = normalize(float3(_2614.x ? _2610.x : _2607.x, _2614.y ? _2610.y : _2607.y, _2614.z ? _2610.z : _2607.z));
              float3 _2626 = normalize(float3(_2617.x ? _2610.x : _2611.x, _2617.y ? _2610.y : _2611.y, _2617.z ? _2610.z : _2611.z));
              float _2628 = clamp(dot(_2622, _2623), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2632 = sqrt(1.0f - (_2628 * _2628));
              float _2640 = clamp(dot(_2623, _2624), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2644 = sqrt(1.0f - (_2640 * _2640));
              float _2653 = clamp(dot(_2624, _2625), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2657 = sqrt(1.0f - (_2653 * _2653));
              float _2664 = ((cross(_2622, _2623).z * ((_2632 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2628) / _2632))) + (cross(_2623, _2624).z * ((_2644 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2640) / _2644)))) + (cross(_2624, _2625).z * ((_2657 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2653) / _2657)));
              float _2681;
              if (_2612 >= 4) {
                float _2669 = clamp(dot(_2625, _2626), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2673 = sqrt(1.0f - (_2669 * _2669));
                _2681 = _2664 + (cross(_2625, _2626).z * ((_2673 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2669) / _2673)));
              } else {
                _2681 = _2664;
              }
              float _2698;
              if (_2612 == 5) {
                float _2686 = clamp(dot(_2626, _2622), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2690 = sqrt(1.0f - (_2686 * _2686));
                _2698 = _2681 + (cross(_2626, _2622).z * ((_2690 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2686) / _2690)));
              } else {
                _2698 = _2681;
              }
              _2701 = max(_2698, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3089;
            do {
              float3 _2735;
              if (_2319) {
                _2735 = _2317 * rsqrt(_2318);
              } else {
                float _2718 = (_568.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2720 = (-1.0f) / (_2718 + _568.z);
                _2735 = float3(1.0f + (((_2718 * _2720) * _568.x) * _568.x), ((_2718 * _568.x) * _568.y) * _2720, (-_2718) * _568.x);
              }
              float3x3 _2738 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2735, cross(_568, _2735), _568));
              float3 _2739 = mul(_2738, _2347);
              float3 _2740 = mul(_2738, _2349);
              float3 _2741 = mul(_2738, _2351);
              float3 _2742 = mul(_2738, _2353);
              float _2743 = _2739.z;
              float _2746 = _2740.z;
              float _2750 = _2741.z;
              float _2754 = _2742.z;
              int _2758 = (((int(_2743 > 0.0f) | ((_2746 > 0.0f) ? 2 : 0)) | ((_2750 > 0.0f) ? 4 : 0)) | ((_2754 > 0.0f) ? 8 : 0));
              float3 _2995;
              float3 _2996;
              float3 _2997;
              float3 _2998;
              float3 _2999;
              int _3000;
              if (_2758 == 0) {
                _2995 = _2742;
                _2996 = _2741;
                _2997 = _2740;
                _2998 = _2739;
                _2999 = 0.0f.xxx;
                _3000 = 0;
              } else {
                float3 _2989;
                float3 _2990;
                float3 _2991;
                float3 _2992;
                float3 _2993;
                int _2994;
                if (_2758 == 1) {
                  _2989 = _2742;
                  _2990 = (_2739 * (-_2754)) + (_2742 * _2743);
                  _2991 = (_2739 * (-_2746)) + (_2740 * _2743);
                  _2992 = _2739;
                  _2993 = 0.0f.xxx;
                  _2994 = 3;
                } else {
                  float3 _2975;
                  float3 _2976;
                  float3 _2977;
                  float3 _2978;
                  float3 _2979;
                  int _2980;
                  if (_2758 == 2) {
                    _2975 = _2742;
                    _2976 = (_2740 * (-_2750)) + (_2741 * _2746);
                    _2977 = _2740;
                    _2978 = (_2740 * (-_2743)) + (_2739 * _2746);
                    _2979 = 0.0f.xxx;
                    _2980 = 3;
                  } else {
                    float3 _2961;
                    float3 _2962;
                    float3 _2963;
                    float3 _2964;
                    float3 _2965;
                    int _2966;
                    if (_2758 == 3) {
                      _2961 = (_2739 * (-_2754)) + (_2742 * _2743);
                      _2962 = (_2740 * (-_2750)) + (_2741 * _2746);
                      _2963 = _2740;
                      _2964 = _2739;
                      _2965 = 0.0f.xxx;
                      _2966 = 4;
                    } else {
                      float3 _2947;
                      float3 _2948;
                      float3 _2949;
                      float3 _2950;
                      float3 _2951;
                      int _2952;
                      if (_2758 == 4) {
                        _2947 = _2742;
                        _2948 = _2741;
                        _2949 = (_2741 * (-_2746)) + (_2740 * _2750);
                        _2950 = (_2741 * (-_2754)) + (_2742 * _2750);
                        _2951 = 0.0f.xxx;
                        _2952 = 3;
                      } else {
                        float3 _2933;
                        float3 _2934;
                        float3 _2935;
                        float3 _2936;
                        float3 _2937;
                        int _2938;
                        if (_2758 == 5) {
                          _2933 = _2742;
                          _2934 = _2741;
                          _2935 = _2740;
                          _2936 = _2739;
                          _2937 = 0.0f.xxx;
                          _2938 = 0;
                        } else {
                          float3 _2927;
                          float3 _2928;
                          float3 _2929;
                          float3 _2930;
                          float3 _2931;
                          int _2932;
                          if (_2758 == 6) {
                            _2927 = (_2741 * (-_2754)) + (_2742 * _2750);
                            _2928 = _2741;
                            _2929 = _2740;
                            _2930 = (_2740 * (-_2743)) + (_2739 * _2746);
                            _2931 = 0.0f.xxx;
                            _2932 = 4;
                          } else {
                            float3 _2913;
                            float3 _2914;
                            float3 _2915;
                            float3 _2916;
                            float3 _2917;
                            int _2918;
                            if (_2758 == 7) {
                              float _2906 = -_2754;
                              _2913 = (_2741 * _2906) + (_2742 * _2750);
                              _2914 = _2741;
                              _2915 = _2740;
                              _2916 = _2739;
                              _2917 = (_2739 * _2906) + (_2742 * _2743);
                              _2918 = 5;
                            } else {
                              float3 _2900;
                              float3 _2901;
                              float3 _2902;
                              float3 _2903;
                              float3 _2904;
                              int _2905;
                              if (_2758 == 8) {
                                _2900 = _2742;
                                _2901 = _2742;
                                _2902 = (_2742 * (-_2750)) + (_2741 * _2754);
                                _2903 = (_2742 * (-_2743)) + (_2739 * _2754);
                                _2904 = 0.0f.xxx;
                                _2905 = 3;
                              } else {
                                float3 _2886;
                                float3 _2887;
                                float3 _2888;
                                float3 _2889;
                                float3 _2890;
                                int _2891;
                                if (_2758 == 9) {
                                  _2886 = _2742;
                                  _2887 = (_2742 * (-_2750)) + (_2741 * _2754);
                                  _2888 = (_2739 * (-_2746)) + (_2740 * _2743);
                                  _2889 = _2739;
                                  _2890 = 0.0f.xxx;
                                  _2891 = 4;
                                } else {
                                  float3 _2872;
                                  float3 _2873;
                                  float3 _2874;
                                  float3 _2875;
                                  float3 _2876;
                                  int _2877;
                                  if (_2758 == 10) {
                                    _2872 = _2742;
                                    _2873 = _2741;
                                    _2874 = _2740;
                                    _2875 = _2739;
                                    _2876 = 0.0f.xxx;
                                    _2877 = 0;
                                  } else {
                                    float3 _2866;
                                    float3 _2867;
                                    float3 _2868;
                                    float3 _2869;
                                    float3 _2870;
                                    int _2871;
                                    if (_2758 == 11) {
                                      float _2859 = -_2750;
                                      _2866 = (_2742 * _2859) + (_2741 * _2754);
                                      _2867 = (_2740 * _2859) + (_2741 * _2746);
                                      _2868 = _2740;
                                      _2869 = _2739;
                                      _2870 = _2742;
                                      _2871 = 5;
                                    } else {
                                      float3 _2853;
                                      float3 _2854;
                                      float3 _2855;
                                      float3 _2856;
                                      float3 _2857;
                                      int _2858;
                                      if (_2758 == 12) {
                                        _2853 = _2742;
                                        _2854 = _2741;
                                        _2855 = (_2741 * (-_2746)) + (_2740 * _2750);
                                        _2856 = (_2742 * (-_2743)) + (_2739 * _2754);
                                        _2857 = 0.0f.xxx;
                                        _2858 = 4;
                                      } else {
                                        bool _2811 = _2758 == 13;
                                        float3 _2838;
                                        float3 _2839;
                                        float3 _2840;
                                        float3 _2841;
                                        int _2842;
                                        if (_2811) {
                                          float _2831 = -_2746;
                                          _2838 = (_2741 * _2831) + (_2740 * _2750);
                                          _2839 = (_2739 * _2831) + (_2740 * _2743);
                                          _2840 = _2739;
                                          _2841 = _2742;
                                          _2842 = 5;
                                        } else {
                                          float3 _2828;
                                          float3 _2829;
                                          int _2830;
                                          if (_2758 == 14) {
                                            float _2821 = -_2743;
                                            _2828 = (_2740 * _2821) + (_2739 * _2746);
                                            _2829 = (_2742 * _2821) + (_2739 * _2754);
                                            _2830 = 5;
                                          } else {
                                            _2828 = _2739;
                                            _2829 = 0.0f.xxx;
                                            _2830 = (_2758 == 15) ? 4 : 0;
                                          }
                                          _2838 = _2741;
                                          _2839 = _2740;
                                          _2840 = _2828;
                                          _2841 = _2829;
                                          _2842 = _2830;
                                        }
                                        bool3 _2843 = _2811.xxx;
                                        _2853 = float3(_2843.x ? _2741.x : _2742.x, _2843.y ? _2741.y : _2742.y, _2843.z ? _2741.z : _2742.z);
                                        _2854 = _2838;
                                        _2855 = _2839;
                                        _2856 = _2840;
                                        _2857 = _2841;
                                        _2858 = _2842;
                                      }
                                      _2866 = _2853;
                                      _2867 = _2854;
                                      _2868 = _2855;
                                      _2869 = _2856;
                                      _2870 = _2857;
                                      _2871 = _2858;
                                    }
                                    _2872 = _2866;
                                    _2873 = _2867;
                                    _2874 = _2868;
                                    _2875 = _2869;
                                    _2876 = _2870;
                                    _2877 = _2871;
                                  }
                                  _2886 = _2872;
                                  _2887 = _2873;
                                  _2888 = _2874;
                                  _2889 = _2875;
                                  _2890 = _2876;
                                  _2891 = _2877;
                                }
                                _2900 = _2886;
                                _2901 = _2887;
                                _2902 = _2888;
                                _2903 = _2889;
                                _2904 = _2890;
                                _2905 = _2891;
                              }
                              _2913 = _2900;
                              _2914 = _2901;
                              _2915 = _2902;
                              _2916 = _2903;
                              _2917 = _2904;
                              _2918 = _2905;
                            }
                            _2927 = _2913;
                            _2928 = _2914;
                            _2929 = _2915;
                            _2930 = _2916;
                            _2931 = _2917;
                            _2932 = _2918;
                          }
                          _2933 = _2927;
                          _2934 = _2928;
                          _2935 = _2929;
                          _2936 = _2930;
                          _2937 = _2931;
                          _2938 = _2932;
                        }
                        _2947 = _2933;
                        _2948 = _2934;
                        _2949 = _2935;
                        _2950 = _2936;
                        _2951 = _2937;
                        _2952 = _2938;
                      }
                      _2961 = _2947;
                      _2962 = _2948;
                      _2963 = _2949;
                      _2964 = _2950;
                      _2965 = _2951;
                      _2966 = _2952;
                    }
                    _2975 = _2961;
                    _2976 = _2962;
                    _2977 = _2963;
                    _2978 = _2964;
                    _2979 = _2965;
                    _2980 = _2966;
                  }
                  _2989 = _2975;
                  _2990 = _2976;
                  _2991 = _2977;
                  _2992 = _2978;
                  _2993 = _2979;
                  _2994 = _2980;
                }
                _2995 = _2989;
                _2996 = _2990;
                _2997 = _2991;
                _2998 = _2992;
                _2999 = _2993;
                _3000 = _2994;
              }
              bool3 _3002 = (_3000 == 3).xxx;
              bool3 _3005 = (_3000 == 4).xxx;
              if (_3000 == 0) {
                _3089 = 0.0f;
                break;
              }
              float3 _3010 = normalize(_2998);
              float3 _3011 = normalize(_2997);
              float3 _3012 = normalize(_2996);
              float3 _3013 = normalize(float3(_3002.x ? _2998.x : _2995.x, _3002.y ? _2998.y : _2995.y, _3002.z ? _2998.z : _2995.z));
              float3 _3014 = normalize(float3(_3005.x ? _2998.x : _2999.x, _3005.y ? _2998.y : _2999.y, _3005.z ? _2998.z : _2999.z));
              float _3016 = clamp(dot(_3010, _3011), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3020 = sqrt(1.0f - (_3016 * _3016));
              float _3028 = clamp(dot(_3011, _3012), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3032 = sqrt(1.0f - (_3028 * _3028));
              float _3041 = clamp(dot(_3012, _3013), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3045 = sqrt(1.0f - (_3041 * _3041));
              float _3052 = ((cross(_3010, _3011).z * ((_3020 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3016) / _3020))) + (cross(_3011, _3012).z * ((_3032 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3028) / _3032)))) + (cross(_3012, _3013).z * ((_3045 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3041) / _3045)));
              float _3069;
              if (_3000 >= 4) {
                float _3057 = clamp(dot(_3013, _3014), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3061 = sqrt(1.0f - (_3057 * _3057));
                _3069 = _3052 + (cross(_3013, _3014).z * ((_3061 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3057) / _3061)));
              } else {
                _3069 = _3052;
              }
              float _3086;
              if (_3000 == 5) {
                float _3074 = clamp(dot(_3014, _3010), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3078 = sqrt(1.0f - (_3074 * _3074));
                _3086 = _3069 + (cross(_3014, _3010).z * ((_3078 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3074) / _3078)));
              } else {
                _3086 = _3069;
              }
              _3089 = max(_3086, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3092 = (_2167 & 2u) != 0u;
            uint _3096 = asuint(_43_m6[_2154].w);
            uint _3097 = asuint(_43_m6[_2160].w);
            float3 _3098 = _421 - _43_m6[_2145].xyz;
            float3 _3099 = abs(_3098);
            float _3100 = _3099.x;
            float _3101 = _3099.y;
            float _3103 = _3099.z;
            int _3136;
            if ((_3100 > _3101) && (_3100 > _3103)) {
              _3136 = int((_3098.x > 0.0f) ? (_3096 & 1023u) : ((_3096 >> 10u) & 1023u));
            } else {
              int _3128;
              if (_3101 > _3103) {
                _3128 = int((_3098.y > 0.0f) ? ((_3096 >> 20u) & 1023u) : (_3097 & 1023u));
              } else {
                _3128 = int((_3098.z > 0.0f) ? ((_3097 >> 10u) & 1023u) : ((_3097 >> 20u) & 1023u));
              }
              _3136 = _3128;
            }
            int _3139 = _3092 ? int(_43_m6[_2154].w) : ((_3136 == 1023) ? (-1) : _3136);
            uint _3150 = asuint(_47_m11.x) + (uint(_3139) * 96u);
            uint _3152 = (_3150 + 64u) >> 2u;
            uint _3155 = _3152 + 1u;
            uint _3158 = _3152 + 2u;
            uint _3161 = _3152 + 3u;
            float4 _3165 = asfloat(uint4(_50.Load(_3152 * 4 + 0), _50.Load(_3155 * 4 + 0), _50.Load(_3158 * 4 + 0), _50.Load(_3161 * 4 + 0)));
            uint _3173 = _3150 >> 2u;
            uint _3188 = (_3150 + 16u) >> 2u;
            uint _3203 = (_3150 + 32u) >> 2u;
            uint _3218 = (_3150 + 48u) >> 2u;
            float4 _3238 = mul(transpose(float4x4(asfloat(uint4(_50.Load(_3173 * 4 + 0), _50.Load((_3173 + 1u) * 4 + 0), _50.Load((_3173 + 2u) * 4 + 0), _50.Load((_3173 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3188 * 4 + 0), _50.Load((_3188 + 1u) * 4 + 0), _50.Load((_3188 + 2u) * 4 + 0), _50.Load((_3188 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3203 * 4 + 0), _50.Load((_3203 + 1u) * 4 + 0), _50.Load((_3203 + 2u) * 4 + 0), _50.Load((_3203 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3218 * 4 + 0), _50.Load((_3218 + 1u) * 4 + 0), _50.Load((_3218 + 2u) * 4 + 0), _50.Load((_3218 + 3u) * 4 + 0))))), float4((_421 - ((_3098 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3098, _3098)))) * _3165.x)) + (_568 * (_3165.y * 5.0f)), 1.0f));
            float3 _3242 = _3238.xyz / _3238.w.xxx;
            uint _3244 = (_3150 + 80u) >> 2u;
            float4 _3257 = asfloat(uint4(_50.Load(_3244 * 4 + 0), _50.Load((_3244 + 1u) * 4 + 0), _50.Load((_3244 + 2u) * 4 + 0), _50.Load((_3244 + 3u) * 4 + 0)));
            float2 _3258 = _3242.xy;
            float2 _3260 = _3257.xy;
            float3 _3264 = _3242.xyz;
            bool3 _3265 = bool3(_3264.x <= 0.0f.xxx.x, _3264.y <= 0.0f.xxx.y, _3264.z <= 0.0f.xxx.z);
            bool3 _3266 = bool3(_3264.x >= 1.0f.xxx.x, _3264.y >= 1.0f.xxx.y, _3264.z >= 1.0f.xxx.z);
            float _3269 = _3242.z;
            float2 _3280 = ((_3258 * (_3257.zw - _3260)) + _3260).xy * _47_m10.zw;
            float2 _3282 = floor(_3280 + 0.5f.xx);
            float2 _3283 = _3280 - _3282;
            float _3284 = _3283.x;
            float _3285 = _3284 + 0.5f;
            float _3286 = _3285 * _3285;
            float _3289 = 1.0f - _3284;
            float _3290 = min(_3284, 0.0f);
            float _3293 = _3284 + 1.0f;
            float _3294 = max(_3284, 0.0f);
            float _3305 = _3283.y;
            float _3306 = _3305 + 0.5f;
            float _3307 = _3306 * _3306;
            float _3310 = 1.0f - _3305;
            float _3311 = min(_3305, 0.0f);
            float _3314 = _3305 + 1.0f;
            float _3315 = max(_3305, 0.0f);
            float3 _3327 = float3(0.1599999964237213134765625f * _3289, 0.1599999964237213134765625f * ((_3293 - (_3294 * _3294)) + 1.0f), _3286 * 0.07999999821186065673828125f);
            float3 _3328 = float3(0.1599999964237213134765625f * ((_3286 * 0.5f) - _3284), 0.1599999964237213134765625f * ((_3289 - (_3290 * _3290)) + 1.0f), 0.1599999964237213134765625f * _3293) + _3327;
            float3 _3330 = float3(0.1599999964237213134765625f * _3310, 0.1599999964237213134765625f * ((_3314 - (_3315 * _3315)) + 1.0f), _3307 * 0.07999999821186065673828125f);
            float3 _3331 = float3(0.1599999964237213134765625f * ((_3307 * 0.5f) - _3305), 0.1599999964237213134765625f * ((_3310 - (_3311 * _3311)) + 1.0f), 0.1599999964237213134765625f * _3314) + _3330;
            float3 _3337 = ((_3327 / _3328) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.xxx;
            float3 _3339 = ((_3330 / _3331) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.yyy;
            float2 _3341 = _3282 * _47_m10.xy;
            float _3342 = _3337.x;
            float _3343 = _3339.x;
            float _3346 = _3337.y;
            float _3349 = _3337.z;
            float _3352 = _3339.y;
            float _3359 = _3339.z;
            float _3366 = _3328.x;
            float _3367 = _3331.x;
            float _3369 = _3328.y;
            float _3371 = _3328.z;
            float _3373 = _3331.y;
            float _3377 = _3331.z;
            float _3435 = (((((((_3366 * _3367) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3342, _3343), _380).xy, _3269)) + ((_3369 * _3367) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3346, _3343), _380).xy, _3269))) + ((_3371 * _3367) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3349, _3343), _380).xy, _3269))) + ((_3366 * _3373) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3342, _3352), _380).xy, _3269))) + ((_3369 * _3373) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3346, _3352), _380).xy, _3269))) + ((_3371 * _3373) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3349, _3352), _380).xy, _3269))) + ((_3366 * _3377) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3342, _3359), _380).xy, _3269));
            float4 _3458 = asfloat(uint4(_50.Load(_3152 * 4 + 0), _50.Load(_3155 * 4 + 0), _50.Load(_3158 * 4 + 0), _50.Load(_3161 * 4 + 0)));
            float _3459 = _3458.w;
            float2 _3461 = min(_3258, 1.0f.xx - _3258);
            _3478 = ((_43_m6[_2142].xyz * (((((_625 * _2306.x) + ((1.0f.xxx - _625) * _2306.y)) * _2701) * _43_m6[_2163].z) + (_621 * _3089))) * _2279) * ((_3139 >= 0) ? lerp(1.0f, (any(bool3(_3265.x || _3266.x, _3265.y || _3266.y, _3265.z || _3266.z)) || ((asuint(_3269) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3435 + ((_3369 * _3377) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3346, _3359), _380).xy, _3269))) + ((_3371 * _3377) * _49.SampleCmpLevelZero(_26, float3(_3341 + float2(_3349, _3359), _380).xy, _3269))), _3092 ? min(_3459, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3458.z - _3238.w) * 0.25f, min(_3461.x, _3461.y)))) : _3459) : 1.0f);
            break;
          } while (false);
          _4778 = _2102;
          _4779 = _3478 * _2242;
          break;
        }
        float _4776;
        float3 _4777;
        if (_43_m6[_2142].w < 1.5f) {
          float3 _4058 = float3(0.100000001490116119384765625f, _542, 1.0f);
          float _4067 = (0.5f + (0.5f * _43_m6[_2148].y)) - abs(_43_m6[_2148].x);
          float _4068 = _43_m6[_2148].y - _4067;
          float _4075 = abs(max((1.0f - abs(_4067)) - abs(_4068), 0.00048828125f));
          float3 _4079 = normalize(float3(_4067, _4068, (_43_m6[_2148].x >= 0.0f) ? _4075 : (-_4075)));
          float3 _4080 = _43_m6[_2145].xyz - _421;
          float _4081 = dot(_4080, _4080);
          float _4082 = rsqrt(_4081);
          float3 _4083 = _4080 * _4082;
          float _4087 = clamp(_43_m6[_2163].y * _4082, 0.0f, 1.0f);
          int _4092 = int(_43_m6[_2163].w);
          float3 _4093 = _4079 * _43_m6[_2148].z;
          float3 _4094 = _4093 * 0.5f;
          float3 _4095 = _4080 - _4094;
          float3 _4096 = _4080 + _4094;
          bool _4098 = (_2246 & 1u) == 0u;
          bool _4101 = _4098 || ((_2167 & 2u) != 0u);
          bool _4104 = (!_4098) && (_43_m6[_2148].z > 0.0f);
          float _4123;
          float _4124;
          if (_4104) {
            float _4108 = length(_4095);
            float _4109 = length(_4096);
            _4123 = clamp(0.5f * ((dot(_568, _4095) / _4108) + (dot(_568, _4096) / _4109)), 0.0f, 1.0f);
            _4124 = 1.0f / ((((_4108 * _4109) + dot(_4095, _4096)) * 0.5f) + 1.0f);
          } else {
            _4123 = clamp(dot(_568, _4083), 0.0f, 1.0f);
            _4124 = 1.0f;
          }
          float _4146;
          if (_43_m6[_2160].w < 0.0f) {
            float _4140 = _4081 * (_43_m6[_2145].w * _43_m6[_2145].w);
            float _4143 = clamp(1.0f - (_4140 * _4140), 0.0f, 1.0f);
            _4146 = lerp(1.0f / (_4081 + 1.0f), _4124, float(_4104)) * (_4143 * _4143);
          } else {
            float3 _4129 = _4080 * _43_m6[_2145].w;
            _4146 = _4124 * pow(1.0f - clamp(dot(_4129, _4129), 0.0f, 1.0f), _43_m6[_2160].w);
          }
          float _4152 = clamp((dot(_4083, -_4079) - _43_m6[_2148].z) * _43_m6[_2148].w, 0.0f, 1.0f);
          float _4156 = _4146 * lerp(1.0f, _4152 * _4152, float(_4098));
          float _4256;
          if ((!_4104) && (_4092 >= 0)) {
            uint _4162 = uint(_4092);
            float2 _4249;
            [branch] if (_4098) {
              float4 _4239 = mul(_66_m1[_4162], _425);
              _4249 = _66_m0[_4162].xy + (clamp(_4239.xy / _4239.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_4162].zw);
            }
            else {
              float3 _4176 = mul(float4(-_4080, 0.0f), _66_m1[_4162]).xyz;
              float3 _386 = _4176;
              float3 _385 = _4176;
              float3 _384 = abs(_4176);
              uint _4185 = uint(int(_384.y > _384.x));
              uint _4191 = (_384.z > _384[_4185]) ? 2u : _4185;
              uint _4197 = (_4191 * 2u) + uint(_385[_4191] < 0.0f);
              float _4201 = abs(_386[_4197 / 2u]);
              float _4221 = 0.5f - (0.000244140625f / _66_m0[_4162].w);
              _4249 = _66_m0[_4162].xy + (clamp(float2((float(_4197) + ((((_386[uint(_359[_4197].x)] * _360[_4197].x) / _4201) * _4221) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_386[uint(_359[_4197].y)] * _360[_4197].y) / _4201) * _4221)), 0.0f.xx, 1.0f.xx) * _66_m0[_4162].zw);
            }
            _4256 = _4156 * _64.SampleLevel(_23, _4249, 0.0f).x;
          } else {
            _4256 = _4156;
          }
          bool _4257 = _4256 > 0.0f;
          float _4641;
          if (_4257) {
            int _4310;
            if (_4101) {
              _4310 = int(_43_m6[_2151].x);
            } else {
              uint _4265 = asuint(_43_m6[_2148].w);
              uint _4266 = asuint(_43_m6[_2151].x);
              float3 _4267 = _421 - _43_m6[_2145].xyz;
              float3 _4268 = abs(_4267);
              float _4269 = _4268.x;
              float _4270 = _4268.y;
              float _4272 = _4268.z;
              int _4305;
              if ((_4269 > _4270) && (_4269 > _4272)) {
                _4305 = int((_4267.x > 0.0f) ? (_4265 & 1023u) : ((_4265 >> 10u) & 1023u));
              } else {
                int _4297;
                if (_4270 > _4272) {
                  _4297 = int((_4267.y > 0.0f) ? ((_4265 >> 20u) & 1023u) : (_4266 & 1023u));
                } else {
                  _4297 = int((_4267.z > 0.0f) ? ((_4266 >> 10u) & 1023u) : ((_4266 >> 20u) & 1023u));
                }
                _4305 = _4297;
              }
              _4310 = (_4305 == 1023) ? (-1) : _4305;
            }
            uint _4317 = asuint(_47_m11.x) + (uint(_4310) * 96u);
            uint _4319 = (_4317 + 64u) >> 2u;
            uint _4322 = _4319 + 1u;
            uint _4325 = _4319 + 2u;
            uint _4328 = _4319 + 3u;
            float4 _4332 = asfloat(uint4(_50.Load(_4319 * 4 + 0), _50.Load(_4322 * 4 + 0), _50.Load(_4325 * 4 + 0), _50.Load(_4328 * 4 + 0)));
            uint _4340 = _4317 >> 2u;
            uint _4355 = (_4317 + 16u) >> 2u;
            uint _4370 = (_4317 + 32u) >> 2u;
            uint _4385 = (_4317 + 48u) >> 2u;
            float4 _4405 = mul(transpose(float4x4(asfloat(uint4(_50.Load(_4340 * 4 + 0), _50.Load((_4340 + 1u) * 4 + 0), _50.Load((_4340 + 2u) * 4 + 0), _50.Load((_4340 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_4355 * 4 + 0), _50.Load((_4355 + 1u) * 4 + 0), _50.Load((_4355 + 2u) * 4 + 0), _50.Load((_4355 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_4370 * 4 + 0), _50.Load((_4370 + 1u) * 4 + 0), _50.Load((_4370 + 2u) * 4 + 0), _50.Load((_4370 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_4385 * 4 + 0), _50.Load((_4385 + 1u) * 4 + 0), _50.Load((_4385 + 2u) * 4 + 0), _50.Load((_4385 + 3u) * 4 + 0))))), float4((_421 - ((-_4083) * _4332.x)) + (_568 * (_4332.y * 5.0f)), 1.0f));
            float3 _4409 = _4405.xyz / _4405.w.xxx;
            uint _4411 = (_4317 + 80u) >> 2u;
            float4 _4424 = asfloat(uint4(_50.Load(_4411 * 4 + 0), _50.Load((_4411 + 1u) * 4 + 0), _50.Load((_4411 + 2u) * 4 + 0), _50.Load((_4411 + 3u) * 4 + 0)));
            float2 _4425 = _4409.xy;
            float2 _4427 = _4424.xy;
            float3 _4431 = _4409.xyz;
            bool3 _4432 = bool3(_4431.x <= 0.0f.xxx.x, _4431.y <= 0.0f.xxx.y, _4431.z <= 0.0f.xxx.z);
            bool3 _4433 = bool3(_4431.x >= 1.0f.xxx.x, _4431.y >= 1.0f.xxx.y, _4431.z >= 1.0f.xxx.z);
            float _4436 = _4409.z;
            float2 _4447 = ((_4425 * (_4424.zw - _4427)) + _4427).xy * _47_m10.zw;
            float2 _4449 = floor(_4447 + 0.5f.xx);
            float2 _4450 = _4447 - _4449;
            float _4451 = _4450.x;
            float _4452 = _4451 + 0.5f;
            float _4453 = _4452 * _4452;
            float _4456 = 1.0f - _4451;
            float _4457 = min(_4451, 0.0f);
            float _4460 = _4451 + 1.0f;
            float _4461 = max(_4451, 0.0f);
            float _4472 = _4450.y;
            float _4473 = _4472 + 0.5f;
            float _4474 = _4473 * _4473;
            float _4477 = 1.0f - _4472;
            float _4478 = min(_4472, 0.0f);
            float _4481 = _4472 + 1.0f;
            float _4482 = max(_4472, 0.0f);
            float3 _4494 = float3(0.1599999964237213134765625f * _4456, 0.1599999964237213134765625f * ((_4460 - (_4461 * _4461)) + 1.0f), _4453 * 0.07999999821186065673828125f);
            float3 _4495 = float3(0.1599999964237213134765625f * ((_4453 * 0.5f) - _4451), 0.1599999964237213134765625f * ((_4456 - (_4457 * _4457)) + 1.0f), 0.1599999964237213134765625f * _4460) + _4494;
            float3 _4497 = float3(0.1599999964237213134765625f * _4477, 0.1599999964237213134765625f * ((_4481 - (_4482 * _4482)) + 1.0f), _4474 * 0.07999999821186065673828125f);
            float3 _4498 = float3(0.1599999964237213134765625f * ((_4474 * 0.5f) - _4472), 0.1599999964237213134765625f * ((_4477 - (_4478 * _4478)) + 1.0f), 0.1599999964237213134765625f * _4481) + _4497;
            float3 _4504 = ((_4494 / _4495) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.xxx;
            float3 _4506 = ((_4497 / _4498) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.yyy;
            float2 _4508 = _4449 * _47_m10.xy;
            float _4509 = _4504.x;
            float _4510 = _4506.x;
            float _4513 = _4504.y;
            float _4516 = _4504.z;
            float _4519 = _4506.y;
            float _4526 = _4506.z;
            float _4533 = _4495.x;
            float _4534 = _4498.x;
            float _4536 = _4495.y;
            float _4538 = _4495.z;
            float _4540 = _4498.y;
            float _4544 = _4498.z;
            float _4602 = (((((((_4533 * _4534) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4509, _4510), _380).xy, _4436)) + ((_4536 * _4534) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4513, _4510), _380).xy, _4436))) + ((_4538 * _4534) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4516, _4510), _380).xy, _4436))) + ((_4533 * _4540) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4509, _4519), _380).xy, _4436))) + ((_4536 * _4540) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4513, _4519), _380).xy, _4436))) + ((_4538 * _4540) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4516, _4519), _380).xy, _4436))) + ((_4533 * _4544) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4509, _4526), _380).xy, _4436));
            float4 _4625 = asfloat(uint4(_50.Load(_4319 * 4 + 0), _50.Load(_4322 * 4 + 0), _50.Load(_4325 * 4 + 0), _50.Load(_4328 * 4 + 0)));
            float _4626 = _4625.w;
            float2 _4628 = min(_4425, 1.0f.xx - _4425);
            _4641 = (_4310 >= 0) ? lerp(1.0f, (any(bool3(_4432.x || _4433.x, _4432.y || _4433.y, _4432.z || _4433.z)) || ((asuint(_4436) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4602 + ((_4536 * _4544) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4513, _4526), _380).xy, _4436))) + ((_4538 * _4544) * _49.SampleCmpLevelZero(_26, float3(_4508 + float2(_4516, _4526), _380).xy, _4436))), _4101 ? min(_4626, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4625.z - _4405.w) * 0.25f, min(_4628.x, _4628.y)))) : _4626) : 1.0f;
          } else {
            _4641 = 1.0f;
          }
          float3 _4664;
          float3 _4665;
          if (_4104) {
            float3 _4644 = _4058 * _4058;
            float _4653 = dot(_1109, _4093);
            _4664 = _4644 / clamp(_4644 + (0.5f * clamp(_43_m6[_2148].z * _4082, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4665 = normalize(_4095 + (_4093 * clamp(dot(_4095, (_1109 * _4653) - _4093) / ((_43_m6[_2148].z * _43_m6[_2148].z) - (_4653 * _4653)), 0.0f, 1.0f)));
          } else {
            _4664 = 1.0f.xxx;
            _4665 = _4083;
          }
          float3 _4666 = _4665 + _458;
          float3 _4670 = _4666 * rsqrt(max(6.103515625e-05f, dot(_4666, _4666)));
          float3 _4775;
          if (_4257) {
            float _4673 = clamp(_4123, 0.0f, 1.0f);
            float _4675 = clamp(dot(_568, _4670), 0.0f, 1.0f);
            float _4677 = clamp(dot(_458, _4670), 0.0f, 1.0f);
            float _4678 = clamp(_626, 0.0f, 1.0f);
            float _4679 = _542 * _542;
            float _4689;
            if (_4087 > 0.0f) {
              _4689 = clamp(_4679 + ((_4087 * _4087) / ((_4677 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4689 = _4679;
            }
            float _4690 = _4689 * _4689;
            float _4711 = (((_4675 * _4690) - _4675) * _4675) + 1.0f;
            float _4716 = 1.0f - _4677;
            float _4717 = _4716 * _4716;
            float _4719 = (_4716 * _4717) * _4717;
            float _4743 = 1.0f - _542;
            float _4750 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4743 * (1.04997003078460693359375f + (_4743 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4743))))));
            float _4751 = 1.0f - _4750;
            float3 _4754 = _625 + ((1.0f.xxx - _625) * 0.0476190485060214996337890625f);
            float3 _4774 = ((clamp((min(((_625 * (1.0f - _4719)) + _4719.xxx) * (((_4690 / (_4711 * _4711)) * _4664.y) * (0.5f / (((_4673 * sqrt(((((-_4678) * _4690) + _4678) * _4678) + _4690)) + (_4678 * sqrt(((((-_4673) * _4690) + _4673) * _4673) + _4690))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4754 * (((_56.SampleLevel(_23, (float2(_4678, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_4673, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4750) / _4751)) * _4754) / (1.0f.xxx - (_4754 * _4751)))) * _43_m6[_2163].z, 0.0f.xxx, 1000.0f.xxx) * _4123) + ((_621 * _4664.z) * _4123)) * (((_43_m6[_2142].xyz * _4256) * _4641) * _2242);
            _4775 = _4774;
          } else {
            _4775 = 0.0f.xxx;
          }
          _4776 = _2102;
          _4777 = _4775;
        } else {
          float _4056;
          do {
            if (_2249) {
              _4056 = 1.0f;
              break;
            }
            float _3495 = (0.5f + (0.5f * _43_m6[_2148].y)) - abs(_43_m6[_2148].x);
            float _3496 = _43_m6[_2148].y - _3495;
            float _3503 = abs(max((1.0f - abs(_3495)) - abs(_3496), 0.00048828125f));
            float3 _3507 = normalize(float3(_3495, _3496, (_43_m6[_2148].x >= 0.0f) ? _3503 : (-_3503)));
            float3 _3508 = _43_m6[_2145].xyz - _421;
            float _3509 = dot(_3508, _3508);
            float3 _3511 = _3508 * rsqrt(_3509);
            int _3514 = int(_43_m6[_2163].w);
            float3 _3516 = (_3507 * _43_m6[_2148].z) * 0.5f;
            float3 _3517 = _3508 - _3516;
            float3 _3518 = _3508 + _3516;
            bool _3520 = (_2246 & 1u) == 0u;
            bool _3523 = _3520 || ((_2167 & 2u) != 0u);
            bool _3526 = (!_3520) && (_43_m6[_2148].z > 0.0f);
            float _3538;
            if (_3526) {
              _3538 = 1.0f / ((((length(_3517) * length(_3518)) + dot(_3517, _3518)) * 0.5f) + 1.0f);
            } else {
              _3538 = 1.0f;
            }
            float _3560;
            if (_43_m6[_2160].w < 0.0f) {
              float _3554 = _3509 * (_43_m6[_2145].w * _43_m6[_2145].w);
              float _3557 = clamp(1.0f - (_3554 * _3554), 0.0f, 1.0f);
              _3560 = lerp(1.0f / (_3509 + 1.0f), _3538, float(_3526)) * (_3557 * _3557);
            } else {
              float3 _3543 = _3508 * _43_m6[_2145].w;
              _3560 = _3538 * pow(1.0f - clamp(dot(_3543, _3543), 0.0f, 1.0f), _43_m6[_2160].w);
            }
            float _3566 = clamp((dot(_3511, -_3507) - _43_m6[_2148].z) * _43_m6[_2148].w, 0.0f, 1.0f);
            float _3570 = _3560 * lerp(1.0f, _3566 * _3566, float(_3520));
            float _3670;
            if ((!_3526) && (_3514 >= 0)) {
              uint _3576 = uint(_3514);
              float2 _3663;
              [branch] if (_3520) {
                float4 _3653 = mul(_66_m1[_3576], _425);
                _3663 = _66_m0[_3576].xy + (clamp(_3653.xy / _3653.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_3576].zw);
              }
              else {
                float3 _3590 = mul(float4(-_3508, 0.0f), _66_m1[_3576]).xyz;
                float3 _389 = _3590;
                float3 _388 = _3590;
                float3 _387 = abs(_3590);
                uint _3599 = uint(int(_387.y > _387.x));
                uint _3605 = (_387.z > _387[_3599]) ? 2u : _3599;
                uint _3611 = (_3605 * 2u) + uint(_388[_3605] < 0.0f);
                float _3615 = abs(_389[_3611 / 2u]);
                float _3635 = 0.5f - (0.000244140625f / _66_m0[_3576].w);
                _3663 = _66_m0[_3576].xy + (clamp(float2((float(_3611) + ((((_389[uint(_359[_3611].x)] * _360[_3611].x) / _3615) * _3635) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_359[_3611].y)] * _360[_3611].y) / _3615) * _3635)), 0.0f.xx, 1.0f.xx) * _66_m0[_3576].zw);
              }
              _3670 = _3570 * _64.SampleLevel(_23, _3663, 0.0f).x;
            } else {
              _3670 = _3570;
            }
            float _4055;
            if (_3670 > 0.0f) {
              int _3724;
              if (_3523) {
                _3724 = int(_43_m6[_2151].x);
              } else {
                uint _3679 = asuint(_43_m6[_2148].w);
                uint _3680 = asuint(_43_m6[_2151].x);
                float3 _3681 = _421 - _43_m6[_2145].xyz;
                float3 _3682 = abs(_3681);
                float _3683 = _3682.x;
                float _3684 = _3682.y;
                float _3686 = _3682.z;
                int _3719;
                if ((_3683 > _3684) && (_3683 > _3686)) {
                  _3719 = int((_3681.x > 0.0f) ? (_3679 & 1023u) : ((_3679 >> 10u) & 1023u));
                } else {
                  int _3711;
                  if (_3684 > _3686) {
                    _3711 = int((_3681.y > 0.0f) ? ((_3679 >> 20u) & 1023u) : (_3680 & 1023u));
                  } else {
                    _3711 = int((_3681.z > 0.0f) ? ((_3680 >> 10u) & 1023u) : ((_3680 >> 20u) & 1023u));
                  }
                  _3719 = _3711;
                }
                _3724 = (_3719 == 1023) ? (-1) : _3719;
              }
              uint _3731 = asuint(_47_m11.x) + (uint(_3724) * 96u);
              uint _3733 = (_3731 + 64u) >> 2u;
              uint _3736 = _3733 + 1u;
              uint _3739 = _3733 + 2u;
              uint _3742 = _3733 + 3u;
              float4 _3746 = asfloat(uint4(_50.Load(_3733 * 4 + 0), _50.Load(_3736 * 4 + 0), _50.Load(_3739 * 4 + 0), _50.Load(_3742 * 4 + 0)));
              uint _3754 = _3731 >> 2u;
              uint _3769 = (_3731 + 16u) >> 2u;
              uint _3784 = (_3731 + 32u) >> 2u;
              uint _3799 = (_3731 + 48u) >> 2u;
              float4 _3819 = mul(transpose(float4x4(asfloat(uint4(_50.Load(_3754 * 4 + 0), _50.Load((_3754 + 1u) * 4 + 0), _50.Load((_3754 + 2u) * 4 + 0), _50.Load((_3754 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3769 * 4 + 0), _50.Load((_3769 + 1u) * 4 + 0), _50.Load((_3769 + 2u) * 4 + 0), _50.Load((_3769 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3784 * 4 + 0), _50.Load((_3784 + 1u) * 4 + 0), _50.Load((_3784 + 2u) * 4 + 0), _50.Load((_3784 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3799 * 4 + 0), _50.Load((_3799 + 1u) * 4 + 0), _50.Load((_3799 + 2u) * 4 + 0), _50.Load((_3799 + 3u) * 4 + 0))))), float4((_421 - ((-_3511) * _3746.x)) + (_568 * (_3746.y * 5.0f)), 1.0f));
              float3 _3823 = _3819.xyz / _3819.w.xxx;
              uint _3825 = (_3731 + 80u) >> 2u;
              float4 _3838 = asfloat(uint4(_50.Load(_3825 * 4 + 0), _50.Load((_3825 + 1u) * 4 + 0), _50.Load((_3825 + 2u) * 4 + 0), _50.Load((_3825 + 3u) * 4 + 0)));
              float2 _3839 = _3823.xy;
              float2 _3841 = _3838.xy;
              float3 _3845 = _3823.xyz;
              bool3 _3846 = bool3(_3845.x <= 0.0f.xxx.x, _3845.y <= 0.0f.xxx.y, _3845.z <= 0.0f.xxx.z);
              bool3 _3847 = bool3(_3845.x >= 1.0f.xxx.x, _3845.y >= 1.0f.xxx.y, _3845.z >= 1.0f.xxx.z);
              float _3850 = _3823.z;
              float2 _3861 = ((_3839 * (_3838.zw - _3841)) + _3841).xy * _47_m10.zw;
              float2 _3863 = floor(_3861 + 0.5f.xx);
              float2 _3864 = _3861 - _3863;
              float _3865 = _3864.x;
              float _3866 = _3865 + 0.5f;
              float _3867 = _3866 * _3866;
              float _3870 = 1.0f - _3865;
              float _3871 = min(_3865, 0.0f);
              float _3874 = _3865 + 1.0f;
              float _3875 = max(_3865, 0.0f);
              float _3886 = _3864.y;
              float _3887 = _3886 + 0.5f;
              float _3888 = _3887 * _3887;
              float _3891 = 1.0f - _3886;
              float _3892 = min(_3886, 0.0f);
              float _3895 = _3886 + 1.0f;
              float _3896 = max(_3886, 0.0f);
              float3 _3908 = float3(0.1599999964237213134765625f * _3870, 0.1599999964237213134765625f * ((_3874 - (_3875 * _3875)) + 1.0f), _3867 * 0.07999999821186065673828125f);
              float3 _3909 = float3(0.1599999964237213134765625f * ((_3867 * 0.5f) - _3865), 0.1599999964237213134765625f * ((_3870 - (_3871 * _3871)) + 1.0f), 0.1599999964237213134765625f * _3874) + _3908;
              float3 _3911 = float3(0.1599999964237213134765625f * _3891, 0.1599999964237213134765625f * ((_3895 - (_3896 * _3896)) + 1.0f), _3888 * 0.07999999821186065673828125f);
              float3 _3912 = float3(0.1599999964237213134765625f * ((_3888 * 0.5f) - _3886), 0.1599999964237213134765625f * ((_3891 - (_3892 * _3892)) + 1.0f), 0.1599999964237213134765625f * _3895) + _3911;
              float3 _3918 = ((_3908 / _3909) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.xxx;
              float3 _3920 = ((_3911 / _3912) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.yyy;
              float2 _3922 = _3863 * _47_m10.xy;
              float _3923 = _3918.x;
              float _3924 = _3920.x;
              float _3927 = _3918.y;
              float _3930 = _3918.z;
              float _3933 = _3920.y;
              float _3940 = _3920.z;
              float _3947 = _3909.x;
              float _3948 = _3912.x;
              float _3950 = _3909.y;
              float _3952 = _3909.z;
              float _3954 = _3912.y;
              float _3958 = _3912.z;
              float _4016 = (((((((_3947 * _3948) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3923, _3924), _380).xy, _3850)) + ((_3950 * _3948) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3927, _3924), _380).xy, _3850))) + ((_3952 * _3948) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3930, _3924), _380).xy, _3850))) + ((_3947 * _3954) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3923, _3933), _380).xy, _3850))) + ((_3950 * _3954) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3927, _3933), _380).xy, _3850))) + ((_3952 * _3954) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3930, _3933), _380).xy, _3850))) + ((_3947 * _3958) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3923, _3940), _380).xy, _3850));
              float4 _4039 = asfloat(uint4(_50.Load(_3733 * 4 + 0), _50.Load(_3736 * 4 + 0), _50.Load(_3739 * 4 + 0), _50.Load(_3742 * 4 + 0)));
              float _4040 = _4039.w;
              float2 _4042 = min(_3839, 1.0f.xx - _3839);
              _4055 = (_3724 >= 0) ? lerp(1.0f, (any(bool3(_3846.x || _3847.x, _3846.y || _3847.y, _3846.z || _3847.z)) || ((asuint(_3850) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4016 + ((_3950 * _3958) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3927, _3940), _380).xy, _3850))) + ((_3952 * _3958) * _49.SampleCmpLevelZero(_26, float3(_3922 + float2(_3930, _3940), _380).xy, _3850))), _3523 ? min(_4040, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4039.z - _3819.w) * 0.25f, min(_4042.x, _4042.y)))) : _4040) : 1.0f;
            } else {
              _4055 = 1.0f;
            }
            _4056 = _4055;
            break;
          } while (false);
          _4776 = _2102 * _4056;
          _4777 = 0.0f.xxx;
        }
        _4778 = _4776;
        _4779 = _4777;
        break;
      } while (false);
      _2127 = _4778;
      _2130 = _2129 + _4779;
    }
    _2099 = _2098 + _2129;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xEBC3A5FC:
  float3 _4785 = ((((float3(_1088, _1093, _1098) * _621) * lerp(1.0f, _513, _37_m4)) * _18_m22.x) + ((((_1382 * _18_m23.z) * _18_m22.y) * ((_625 * _640.x) + (clamp(50.0f * _625.y, 0.0f, 1.0f) * _640.y).xxx)) * 1.0f)) + (_2073.xyz + (_2098 * _2101)).xyz;
  */
  float3 _4785 = ((((float3(_1088, _1093, _1098) * (_621 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _513, _37_m4)) * _18_m22.x) + (((((_1382 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_625 * _640.x) + (clamp(50.0f * _625.y, 0.0f, 1.0f) * _640.y).xxx)) * 1.0f)) + (_2073.xyz + ((_2098 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2101)).xyz;
  // RenoDX code end
  float4 _4786 = float4(_4785.x, _4785.y, _4785.z, _381.w);
  _4786.w = _537;
  float _4803 = _421.y * _18_m46.w;
  float _4808 = max(0.00999999977648258209228515625f, _4803 + _18_m47.w);
  float3 _4822 = exp(_18_m45.xyz * ((-max(0.0f, (_459 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4808)) / _4808) * exp(_4803 + _18_m48.w))));
  float _4825 = dot(_1108, _18_m44.xyz);
  float _4831 = _18_m45.w * _18_m45.w;
  float _4835 = (1.0f + _4831) - ((2.0f * _18_m45.w) * _4825);
  float3 _5167;
  float _5168;
  if (_18_m55.z > 0.0f) {
    uint3 _4993 = (uint3(int3(int(_680.x), int(_680.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4994 = _4993.y;
    uint _4995 = _4993.z;
    uint _4998 = _4993.x + (_4994 * _4995);
    uint _5000 = _4994 + (_4995 * _4998);
    uint _5002 = _4995 + (_4998 * _5000);
    uint _5004 = _4998 + (_5000 * _5002);
    float _5028 = dot(_1108, -_16_m0[2].xyz);
    float3 _5038 = _421 - _16_m11.xyz;
    float _5040 = (_18_m55.w * ((_5028 > 5.9604644775390625e-08f) ? (1.0f / _5028) : 0.0f)) * (1.0f / _459);
    float _5041 = _5038.y;
    float _5042 = _5040 * _5041;
    float _5044 = _16_m11.y + _5042;
    float _5045 = _5041 - _5042;
    float _5047 = (1.0f - _5040) * _459;
    float _5061 = max(-127.0f, _18_m49.z * _5045);
    float _5085 = max(-127.0f, _18_m52.x * _5045);
    float _5096 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5044 - _18_m49.x)))) * ((abs(_5061) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5061)) / _5061) : (0.693147182464599609375f - (0.2402265071868896484375f * _5061)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5044 - _18_m52.z)))) * ((abs(_5085) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5085)) / _5085) : (0.693147182464599609375f - (0.2402265071868896484375f * _5085))));
    float _5118 = clamp((_459 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5121 = clamp((max(clamp(exp2(-(_5096 * _5047)), 0.0f, 1.0f), _18_m51.w) + clamp((_459 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5118, 0.0f, 1.0f);
    float4 _5161 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1118 + ((((float3(uint3(_5004, _5000 + (_5002 * _5004), _382) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_681 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_681 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5167 = _5161.xyz + (((_18_m51.xyz * (1.0f - _5121)) + (((_18_m54.xyz * pow(clamp(dot(_458, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5096 * max(_5047 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5118))) * _5161.w);
    _5168 = _5161.w * _5121;
  } else {
    float3 _4865 = _421 - _16_m11.xyz;
    float _4867 = _4865.y;
    float _4881 = max(-127.0f, _18_m49.z * _4867);
    float _4905 = max(-127.0f, _18_m52.x * _4867);
    float _4916 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_4881) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4881)) / _4881) : (0.693147182464599609375f - (0.2402265071868896484375f * _4881)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_4905) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4905)) / _4905) : (0.693147182464599609375f - (0.2402265071868896484375f * _4905))));
    float _4938 = clamp((_459 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _4941 = clamp((max(clamp(exp2(-(_4916 * _459)), 0.0f, 1.0f), _18_m51.w) + clamp((_459 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _4938, 0.0f, 1.0f);
    _5167 = (_18_m51.xyz * (1.0f - _4941)) + (((_18_m54.xyz * pow(clamp(dot(_458, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_4916 * max(_459 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4938));
    _5168 = _4941;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xEBC3A5FC:
  float3 _5174 = ((_4786.xyz * (_4822 * _5168)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4825 * _4825)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4831) / max((12.56637096405029296875f * _4835) * sqrt(_4835), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4822)) * _5168) + _5167)).xyz;
  */
  float3 _5174 = ((_4786.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4822 * _5168)) : (_4822 * _5168))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4825 * _4825)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4831) / max((12.56637096405029296875f * _4835) * sqrt(_4835), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4822)) * _5168 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5167 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5184 = lerp(dot(_5174, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5174, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5194 = min(lerp(((sqrt(sqrt(abs(_593 * 0.5f))) * float2(int2(sign(_593)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _580.xx), 1.0f.xx);
  float4 _5195 = float4(_5194.x, _5194.y, _381.z, _381.w);
  _5195.z = float(clamp(max(dot(_5184.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _537, _537) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5195.w = lerp(0.0f, 0.699999988079071044921875f, _580);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xEBC3A5FC:
  _13 = float4(_5184.x, _5184.y, _5184.z, _4786.w);
  */
  float3 renodx_output_color = float3(_5184.x, _5184.y, _5184.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4786.w);
  // RenoDX code end
  _14 = _5195;
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

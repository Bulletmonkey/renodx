#include "../shared.h"

// Ported from the native 0x85203400 Vulkan dump.
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
  float _408 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
  float _417 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_37_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _419 = abs(_417);
  if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _419 : (-_419)), (1.0f - _408) - _417) < 0.0f) {
    discard;
  }
  float2 _439 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _442 = float4(_439, gl_FragCoord.z, 1.0f);
  _442.y = -_439.y;
  float4 _445 = mul(_16_m6, _442);
  float3 _449 = _445.xyz / _445.w.xxx;
  float4 _453 = float4(_449, 1.0f);
  float _460 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _482;
  do {
    if (_18_m4.w == 0.0f) {
      _482 = _16_m11.xyz - _449;
      break;
    } else {
      _482 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _483 = dot(_482, _482);
  float _485 = rsqrt(max(_483, 9.9999999392252902907785028219223e-09f));
  float3 _486 = _482 * _485;
  float _487 = _483 * _485;
  float4 _520 = _32.SampleBias(_33, (lerp(_4, _5, _37_m11.xx) * _37_m35.xy) + _37_m35.zw, _18_m16);
  float _522 = _520.w;
  float4 _525 = _34.SampleBias(_35, (lerp(_4, _5, _37_m12.xx) * _37_m36.xy) + _37_m36.zw, _37_m13 + _18_m16);
  float2 _528 = (_525.xy * 2.0f.xx) - 1.0f.xx;
  float2 _529 = abs(_528);
  bool2 _530 = bool2(_529.x < 0.01200000010430812835693359375f.xx.x, _529.y < 0.01200000010430812835693359375f.xx.y);
  float2 _531 = float2(_530.x ? 0.0f.xx.x : _528.x, _530.y ? 0.0f.xx.y : _528.y);
  float2 _532 = _531 * _37_m0;
  float _541 = _525.w;
  float3 _553 = lerp(clamp((_520.xyz * _37_m32.xyz) * _37_m18, 0.0f.xxx, 1.0f.xxx), _37_m32.xyz, _37_m16.xxx);
  float _559 = lerp(_522, _541, _37_m6) * _37_m32.w;
  float _565 = lerp(_559, _559 * _8.x, _37_m46);
  float _570 = lerp(_37_m2, _37_m3, _525.z);
  float _580 = lerp(_522, _37_m17, clamp(_37_m15 - 1.0f, 0.0f, 1.0f));
  float3 _592 = ((_7.xyz * _532.x) + ((cross(_6, float4(_7.xyz, _460).xyz) * _460) * _532.y)) + (_6 * (max(0.00048828125f, sqrt(clamp(1.0f - dot(_531, _531), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_37_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _596 = _592 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_592, _592)));
  float _603 = clamp(float(int(sign(_408 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _616 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _616.y = -_616.y;
  float _642 = 0.07999999821186065673828125f * _37_m1;
  float3 _643 = _553 * _580;
  float3 _644 = _553 - _643;
  float3 _648 = (_642 - (_642 * _580)).xxx + _643;
  float _649 = dot(_596, _486);
  float4 _652 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _570) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _653 = _652.x;
  float2 _663 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_653 * _653, exp2((-9.27999973297119140625f) * max(0.0f, _649))) * _653) + _652.y)) + _652.zw;
  uint2 _703;
  float _704;
  if (_18_m24.y == 1.0f) {
    float4 _680 = mul(_18_m138, _453);
    float4 _683 = _680;
    _683.y = -_680.y;
    float4 _686 = _683 * (1.0f / _680.w);
    _703 = uint2(clamp(((_686.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _704 = 1.0f / ((_18_m2.z * _686.z) + _18_m2.w);
  } else {
    _703 = uint2(gl_FragCoord.xy);
    _704 = abs(mul(_16_m0, _453).z);
  }
  float3 _706 = _449 + (_596 * 0.25f);
  float3 _716 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _725 = _706 - (_18_m108.xyz + (_716 * (-_18_m110.w)));
  float _740 = max(min(max((max(abs(_725.x), abs(_725.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_725.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1042;
  float4 _1043;
  float4 _1044;
  float _1045;
  float _1046;
  if ((_18_m108.w != 0.0f) && (_740 < 1.0f)) {
    float3 _753 = _706 - (_18_m108.xyz + (_716 * (-_18_m110.y)));
    float _767 = max(clamp((max(abs(_753.x), abs(_753.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_753.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _843;
    float4 _844;
    float4 _845;
    float4 _846;
    if (_767 < 1.0f) {
      float3 _776 = ((_706 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _778 = _776 - floor(_776);
      float4 _782 = _57.SampleLevel(_24, _778, 0.0f);
      float _783 = 1.0f - _767;
      float _787 = _18_m109.y * 0.5f;
      float _792 = _778.x;
      float _793 = clamp(_778.y, _787, 1.0f - _787) * 0.3333333432674407958984375f;
      float _794 = _778.z;
      float4 _797 = _58.SampleLevel(_23, float3(_792, _793, _794), 0.0f);
      float _813 = _782.x;
      float _823 = _782.y;
      float _833 = _782.z;
      _843 = _740 + (_797.w * _783);
      _844 = float4(((_58.SampleLevel(_23, float3(_792, _793 + 0.666666686534881591796875f, _794), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _833, _833) * _783;
      _845 = float4(((_58.SampleLevel(_23, float3(_792, _793 + 0.3333333432674407958984375f, _794), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _823, _823) * _783;
      _846 = float4(((_797.xyz * 4.0f) - 2.0f.xxx) * _813, _813) * _783;
    } else {
      _843 = _740;
      _844 = 0.0f.xxxx;
      _845 = 0.0f.xxxx;
      _846 = 0.0f.xxxx;
    }
    float3 _852 = _706 - (_18_m108.xyz + (_716 * (-_18_m110.z)));
    float _866 = max(clamp((max(abs(_852.x), abs(_852.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_852.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _946;
    float4 _947;
    float4 _948;
    float4 _949;
    if (_866 < 1.0f) {
      float3 _875 = ((_706 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _877 = _875 - floor(_875);
      float4 _881 = _59.SampleLevel(_24, _877, 0.0f);
      float _883 = _767 * (1.0f - _866);
      float _887 = _18_m109.y * 0.5f;
      float _892 = _877.x;
      float _893 = clamp(_877.y, _887, 1.0f - _887) * 0.3333333432674407958984375f;
      float _894 = _877.z;
      float4 _897 = _60.SampleLevel(_23, float3(_892, _893, _894), 0.0f);
      float _913 = _881.x;
      float _924 = _881.y;
      float _935 = _881.z;
      _946 = _843 + (_897.w * _883);
      _947 = _844 + (float4(((_60.SampleLevel(_23, float3(_892, _893 + 0.666666686534881591796875f, _894), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _935, _935) * _883);
      _948 = _845 + (float4(((_60.SampleLevel(_23, float3(_892, _893 + 0.3333333432674407958984375f, _894), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _924, _924) * _883);
      _949 = _846 + (float4(((_897.xyz * 4.0f) - 2.0f.xxx) * _913, _913) * _883);
    } else {
      _946 = _843;
      _947 = _844;
      _948 = _845;
      _949 = _846;
    }
    float4 _1032;
    float4 _1033;
    float4 _1034;
    float _1035;
    if (_866 > 0.0f) {
      float3 _958 = ((_706 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _961 = _18_m109.xyz * 0.5f;
      float3 _963 = clamp(_958 - floor(_958), _961, 1.0f.xxx - _961);
      float4 _967 = _61.SampleLevel(_24, _963, 0.0f);
      float _969 = _866 * (1.0f - _740);
      float _973 = _18_m109.y * 0.5f;
      float _978 = _963.x;
      float _979 = clamp(_963.y, _973, 1.0f - _973) * 0.3333333432674407958984375f;
      float _980 = _963.z;
      float4 _983 = _62.SampleLevel(_23, float3(_978, _979, _980), 0.0f);
      float _999 = _967.x;
      float _1010 = _967.y;
      float _1021 = _967.z;
      _1032 = _947 + (float4(((_62.SampleLevel(_23, float3(_978, _979 + 0.666666686534881591796875f, _980), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1021, _1021) * _969);
      _1033 = _948 + (float4(((_62.SampleLevel(_23, float3(_978, _979 + 0.3333333432674407958984375f, _980), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1010, _1010) * _969);
      _1034 = _949 + (float4(((_983.xyz * 4.0f) - 2.0f.xxx) * _999, _999) * _969);
      _1035 = _946 + (_983.w * _969);
    } else {
      _1032 = _947;
      _1033 = _948;
      _1034 = _949;
      _1035 = _946;
    }
    float _1038 = clamp((_1035 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1042 = _1032;
    _1043 = _1033;
    _1044 = _1034;
    _1045 = _1038 - _740;
    _1046 = (_1038 + _740) * 0.5f;
  } else {
    _1042 = 0.0f.xxxx;
    _1043 = 0.0f.xxxx;
    _1044 = 0.0f.xxxx;
    _1045 = 0.0f;
    _1046 = 1.0f;
  }
  float4 _1066 = _1044 + float4(_18_m111.x * _1046, (_18_m111.y * _1046) + ((_18_m111.w * _1045) * 0.5f), _18_m111.z * _1046, (_18_m111.w * _1046) + ((_18_m111.y * _1045) * 0.375f));
  float4 _1086 = _1043 + float4(_18_m112.x * _1046, (_18_m112.y * _1046) + ((_18_m112.w * _1045) * 0.5f), _18_m112.z * _1046, (_18_m112.w * _1046) + ((_18_m112.y * _1045) * 0.375f));
  float4 _1106 = _1042 + float4(_18_m113.x * _1046, (_18_m113.y * _1046) + ((_18_m113.w * _1045) * 0.5f), _18_m113.z * _1046, (_18_m113.w * _1046) + ((_18_m113.y * _1045) * 0.375f));
  float _1111 = max(0.0f, dot(_1066.xyz, _596) + _1066.w);
  float _1116 = max(0.0f, dot(_1086.xyz, _596) + _1086.w);
  float _1121 = max(0.0f, dot(_1106.xyz, _596) + _1106.w);
  float3 _1131 = -_486;
  float3 _1132 = reflect(_1131, _596);
  float _1140 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_570, 0.001000000047497451305389404296875f))));
  float2 _1141 = float2(_703);
  float2 _1145 = floor(_1141 * _41_m0.w);
  float _1162 = floor(_704 - _41_m2.y);
  float _1166 = clamp(_1162, 0.0f, _41_m1.x - 1.0f);
  uint _1176 = (_1162 <= _1166) ? (_31.Load(uint(_18_m21.z + int(_1145.x + (_1145.y * _41_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1166)) * 4 + 0)) : 0u;
  float _1179 = dot(float4(_1111, _1116, _1121, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1181;
  float _1184;
  uint _1186;
  _1181 = 0.0f.xxx;
  _1184 = 1.0f;
  _1186 = _1176;
  uint _1187;
  float3 _1182;
  float _1185;
  bool _1189;
  [loop] for (;;) {
    bool _1188 = _1186 != 0u;
    _1189 = _1184 > 0.00999999977648258209228515625f;
    if (_1188 && _1189) {
      uint _1193 = firstbitlow(_1186);
      _1187 = _1186 ^ (1u << (_1193 & 31u));
      float3 _1213 = float3(dot(_41_m4[_1193]._m2, _453), dot(_41_m4[_1193]._m3, _453), dot(_41_m4[_1193]._m4, _453));
      float3 _1214 = abs(_1213);
      if (all(bool3(_1214.x <= _41_m4[_1193]._m1.xyz.x, _1214.y <= _41_m4[_1193]._m1.xyz.y, _1214.z <= _41_m4[_1193]._m1.xyz.z))) {
        float3 _1223 = _41_m4[_1193]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1225 = _1214 * 0.100000001490116119384765625f;
        float3 _1226 = _1225 * _1225;
        float3 _1229 = (_41_m4[_1193]._m1.xyz - _1214) * _41_m4[_1193]._m5.xyz;
        float3 _1277;
        [branch] if (_41_m4[_1193]._m6.x == 1.0f) {
          float3 _1262 = float3(dot(_41_m4[_1193]._m2.xyz, _1132), dot(_41_m4[_1193]._m3.xyz, _1132), dot(_41_m4[_1193]._m4.xyz, _1132));
          float3 _1264 = (_41_m4[_1193]._m1.xyz - _1213) / _1262;
          float3 _1267 = ((-_41_m4[_1193]._m1.xyz) - _1213) / _1262;
          bool3 _1268 = bool3(_1262.x > 0.0f.xxx.x, _1262.y > 0.0f.xxx.y, _1262.z > 0.0f.xxx.z);
          float3 _1269 = float3(_1268.x ? _1264.x : _1267.x, _1268.y ? _1264.y : _1267.y, _1268.z ? _1264.z : _1267.z);
          _1277 = _1213 + (_1262 * min(min(_1269.x, _1269.y), _1269.z));
        }
        else {
          _1277 = _1132;
        }
        float3 _1278 = normalize(_1277);
        float3 _1281 = float3(int3(sign(_1278)));
        float3 _1284 = _1278 / dot(_1278, _1281).xxx;
        float3 _1298;
        if (_1284.z < 0.0f) {
          float3 _1289 = abs(_1284);
          float2 _1296 = _1281.xy * float2(1.0f - _1289.y, 1.0f - _1289.x);
          _1298 = float3(_1296.x, _1296.y, _1284.z);
        } else {
          _1298 = _1284;
        }
        float _1323 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_41_m4[_1193]._m0, float4(_596, 1.0f))));
        float _1336 = clamp((min(_1229.x, min(_1229.y, _1229.z)) * _41_m4[_1193]._m6.y) + ((((((_1223 * _1223).x - ((_1226.x + _1226.y) + _1226.z)) * _41_m4[_1193]._m5.x) * _41_m4[_1193]._m5.x) * (1.0f - _41_m4[_1193]._m6.y)) * 100.0f), 0.0f, 1.0f) * _41_m4[_1193]._m6.w;
        _1182 = _1181 + ((((_29.SampleLevel(_25, float3((((_1298.xy * 0.5f) + 0.5f.xx) * _41_m1.w) + _41_m2.w.xx, _41_m4[_1193]._m1.w), _1140).xyz * _41_m4[_1193]._m5.w) * ((((((clamp(abs(_1179 / _1323), 0.0f, 1.0f) * 2.0f) + _1179) / (2.0f + _1323)) - 1.0f) * _18_m23.w) + 1.0f)) * _1336) * _1184);
        _1185 = _1184 * (1.0f - _1336);
      } else {
        _1182 = _1181;
        _1185 = _1184;
      }
      _1181 = _1182;
      _1184 = _1185;
      _1186 = _1187;
      continue;
    } else {
      break;
    }
  }
  float3 _1405;
  if (_1189) {
    float3 _1344 = normalize(_1132);
    float3 _1347 = float3(int3(sign(_1344)));
    float3 _1350 = _1344 / dot(_1344, _1347).xxx;
    float3 _1364;
    if (_1350.z < 0.0f) {
      float3 _1355 = abs(_1350);
      float2 _1362 = _1347.xy * float2(1.0f - _1355.y, 1.0f - _1355.x);
      _1364 = float3(_1362.x, _1362.y, _1350.z);
    } else {
      _1364 = _1350;
    }
    float _1391 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_41_m3, float4(_596, 1.0f))));
    _1405 = _1181 + ((_29.SampleLevel(_25, float3((((_1364.xy * 0.5f) + 0.5f.xx) * _41_m1.w) + _41_m2.w.xx, 0.0f), _1140).xyz * ((((((clamp(abs(_1179 / _1391), 0.0f, 1.0f) * 2.0f) + _1179) / (2.0f + _1391)) - 1.0f) * _18_m23.w) + 1.0f)) * _1184);
  } else {
    _1405 = _1181;
  }
  float4 _2096;
  do {
    [branch] if (_45_m4 == 0) {
      _2096 = 0.0f.xxxx;
      break;
    }
    float2 _1955;
    do {
      if (_47_m7.w >= 0.9900000095367431640625f) {
        _1955 = float2(_47_m7.z, 1.0f);
        break;
      }
      int _1434 = int(_47_m7.x);
      bool3 _1436 = (_1434 == 2).xxx;
      float3 _1444 = _449 - float3(_1436.x ? _47_m1[0].xyz.x : _16_m11.xyz.x, _1436.y ? _47_m1[0].xyz.y : _16_m11.xyz.y, _1436.z ? _47_m1[0].xyz.z : _16_m11.xyz.z);
      float _1455 = max(clamp((_47_m6.w - dot(_1444, _1444)) * _47_m6.z, 0.0f, 1.0f), _47_m8.x);
      float _1672;
      bool _1673;
      if (_1455 > 0.0f) {
        float _1670;
        bool _1671;
        if (_1434 > 0) {
          float3 _1462 = _449 - _47_m1[0].xyz;
          float3 _1466 = _449 - _47_m1[1].xyz;
          float3 _1470 = _449 - _47_m1[2].xyz;
          float3 _1474 = _449 - _47_m1[3].xyz;
          float4 _1479 = float4(dot(_1462, _1462), dot(_1466, _1466), dot(_1470, _1470), dot(_1474, _1474));
          float4 _1488 = float4(_47_m1[0].w, _47_m1[1].w, _47_m1[2].w, _47_m1[3].w);
          float4 _1490 = float4(bool4(_1479.x < _1488.x, _1479.y < _1488.y, _1479.z < _1488.z, _1479.w < _1488.w));
          float3 _1494 = clamp(_1490.yzw - _1490.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1498 = clamp(4.0f - dot(float4(_1490.x, _1494.x, _1494.y, _1494.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1500 = clamp(_1498 + 1.0f, 0.0f, 3.0f);
          uint _1501 = uint(_1498);
          uint _1509 = uint(_1500);
          float _1515 = dot(_1479, _358[_1509]) / _47_m1[_1509].w;
          float _1532;
          if (((_1500 > _1498) && (_1515 >= 0.0f)) && (_1515 <= 1.0f)) {
            _1532 = _1498 + step(frac(52.98291778564453125f * frac(dot(_1141 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1479, _358[_1501]) / _47_m1[_1501].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1532 = _1498;
          }
          float _1533 = clamp(_1532, 0.0f, 4.0f);
          float4 _1537 = mul(_47_m0[uint(_1533)], _453);
          float _1540 = _1537.z;
          float4 _1541 = float4(_1537.xy, _1540, _1533);
          float3 _1542 = _1541.xyz;
          bool3 _1543 = bool3(_1542.x <= 0.0f.xxx.x, _1542.y <= 0.0f.xxx.y, _1542.z <= 0.0f.xxx.z);
          bool3 _1544 = bool3(_1542.x >= 1.0f.xxx.x, _1542.y >= 1.0f.xxx.y, _1542.z >= 1.0f.xxx.z);
          bool _1550 = any(bool3(_1543.x || _1544.x, _1543.y || _1544.y, _1543.z || _1544.z)) || ((asuint(_1540) & 2147483647u) > 2139095040u);
          int _1551 = int(_1533);
          float2 _1568 = float4(_47_m3[_1551].xy + (_1541.xy * _47_m3[_1551].zw), _1540, _1533).xy * _47_m4.zw;
          float2 _1570 = floor(_1568 + 0.5f.xx);
          float2 _1571 = _1568 - _1570;
          float _1572 = _1571.x;
          float _1573 = _1572 + 0.5f;
          float _1575 = (_1573 * _1573) * 0.5f;
          float _1578 = min(_1572, 0.0f);
          float _1582 = max(_1572, 0.0f);
          float4 _1586 = float4(_1575 - _1572, (1.0f - _1572) - (_1578 * _1578), (_1572 + 1.0f) - (_1582 * _1582), _1575) * 0.44444000720977783203125f;
          float _1587 = _1571.y;
          float _1588 = _1587 + 0.5f;
          float _1590 = (_1588 * _1588) * 0.5f;
          float _1593 = min(_1587, 0.0f);
          float _1597 = max(_1587, 0.0f);
          float4 _1601 = float4(_1590 - _1587, (1.0f - _1587) - (_1593 * _1593), (_1587 + 1.0f) - (_1597 * _1597), _1590) * 0.44444000720977783203125f;
          float2 _1603 = _1586.yw;
          float2 _1604 = _1586.xz + _1603;
          float2 _1606 = _1601.yw;
          float2 _1607 = _1601.xz + _1606;
          float2 _1613 = ((_1603 / _1604) + float2(-1.5f, 0.5f)) * _47_m4.xx;
          float2 _1615 = ((_1606 / _1607) + float2(-1.5f, 0.5f)) * _47_m4.yy;
          float2 _1617 = _1570 * _47_m4.xy;
          float _1618 = _1613.x;
          float _1619 = _1615.x;
          float _1622 = _1613.y;
          float _1625 = _1615.y;
          float _1630 = _1604.x;
          float _1631 = _1607.x;
          float _1633 = _1604.y;
          float _1635 = _1607.y;
          _1670 = _1550 ? 1.0f : (((((_1630 * _1631) * _48.SampleCmpLevelZero(_26, float3(_1617 + float2(_1618, _1619), _380).xy, _1540)) + ((_1633 * _1631) * _48.SampleCmpLevelZero(_26, float3(_1617 + float2(_1622, _1619), _380).xy, _1540))) + ((_1630 * _1635) * _48.SampleCmpLevelZero(_26, float3(_1617 + float2(_1618, _1625), _380).xy, _1540))) + ((_1633 * _1635) * _48.SampleCmpLevelZero(_26, float3(_1617 + float2(_1622, _1625), _380).xy, _1540)));
          _1671 = _1550;
        } else {
          _1670 = 1.0f;
          _1671 = false;
        }
        _1672 = _1670;
        _1673 = _1671;
      } else {
        _1672 = 1.0f;
        _1673 = false;
      }
      float _1873;
      float _1874;
      if ((_1455 < 1.0f) || (_47_m8.x > 0.5f)) {
        float _1684 = 1.0f - clamp(dot(_596, _43_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1701 = float4((_449 - (_43_m0.xyz * (_1684 * _47_m22.x))) + (_596 * (_1684 * _47_m22.y)), 1.0f);
        float4 _1702 = mul(_47_m21, _1701);
        float2 _1703 = _1702.xy;
        float _1871;
        if (all(bool2(_1703.x > 0.0f.xx.x, _1703.y > 0.0f.xx.y)) && all(bool2(_1703.x < 1.0f.xx.x, _1703.y < 1.0f.xx.y))) {
          uint _1722 = clamp(uint((floor(_1702.y * _47_m23.z) + _1702.x) * _47_m23.y), 0u, 127u);
          uint _1726 = asuint(_47_m25[_1722].x);
          float2 _1727 = spvUnpackHalf2x16(_1726);
          float _1728 = _1727.x;
          float _1870;
          if (_1728 >= 0.0f) {
            float4x4 _1737 = _47_m20;
            _1737[0].w = _47_m25[_1722].y;
            _1737[1].w = _47_m25[_1722].z;
            _1737[2].w = _47_m25[_1722].w;
            float4 _1744 = mul(_1737, _1701);
            float3 _1745 = _1744.xyz;
            float _1869;
            if (all(bool3(_1745.x > 0.0f.xxx.x, _1745.y > 0.0f.xxx.y, _1745.z > 0.0f.xxx.z)) && all(bool3(_1745.x < 1.0f.xxx.x, _1745.y < 1.0f.xxx.y, _1745.z < 1.0f.xxx.z))) {
              float _1762 = _1744.z;
              float2 _1768 = float4((_1744.xy * _47_m22.zw) + float2(_1728, spvUnpackHalf2x16(_1726 >> 16u).x), _1762, 1.0f).xy * _47_m24.zw;
              float2 _1770 = floor(_1768 + 0.5f.xx);
              float2 _1771 = _1768 - _1770;
              float _1772 = _1771.x;
              float _1773 = _1772 + 0.5f;
              float _1775 = (_1773 * _1773) * 0.5f;
              float _1778 = min(_1772, 0.0f);
              float _1782 = max(_1772, 0.0f);
              float4 _1786 = float4(_1775 - _1772, (1.0f - _1772) - (_1778 * _1778), (_1772 + 1.0f) - (_1782 * _1782), _1775) * 0.44444000720977783203125f;
              float _1787 = _1771.y;
              float _1788 = _1787 + 0.5f;
              float _1790 = (_1788 * _1788) * 0.5f;
              float _1793 = min(_1787, 0.0f);
              float _1797 = max(_1787, 0.0f);
              float4 _1801 = float4(_1790 - _1787, (1.0f - _1787) - (_1793 * _1793), (_1787 + 1.0f) - (_1797 * _1797), _1790) * 0.44444000720977783203125f;
              float2 _1803 = _1786.yw;
              float2 _1804 = _1786.xz + _1803;
              float2 _1806 = _1801.yw;
              float2 _1807 = _1801.xz + _1806;
              float2 _1813 = ((_1803 / _1804) + float2(-1.5f, 0.5f)) * _47_m24.xx;
              float2 _1815 = ((_1806 / _1807) + float2(-1.5f, 0.5f)) * _47_m24.yy;
              float2 _1817 = _1770 * _47_m24.xy;
              float _1818 = _1813.x;
              float _1819 = _1815.x;
              float _1822 = _1813.y;
              float _1825 = _1815.y;
              float _1830 = _1804.x;
              float _1831 = _1807.x;
              float _1833 = _1804.y;
              float _1835 = _1807.y;
              _1869 = ((((_1830 * _1831) * _52.SampleCmpLevelZero(_26, float3(_1817 + float2(_1818, _1819), _380).xy, _1762)) + ((_1833 * _1831) * _52.SampleCmpLevelZero(_26, float3(_1817 + float2(_1822, _1819), _380).xy, _1762))) + ((_1830 * _1835) * _52.SampleCmpLevelZero(_26, float3(_1817 + float2(_1818, _1825), _380).xy, _1762))) + ((_1833 * _1835) * _52.SampleCmpLevelZero(_26, float3(_1817 + float2(_1822, _1825), _380).xy, _1762));
            } else {
              _1869 = 1.0f;
            }
            _1870 = _1869;
          } else {
            _1870 = 1.0f;
          }
          _1871 = _1870;
        } else {
          _1871 = 1.0f;
        }
        _1873 = _1673 ? _1871 : _1672;
        _1874 = _1871;
      } else {
        _1873 = _1672;
        _1874 = 1.0f;
      }
      float _1877 = lerp(lerp(_1874, _1873, _1455), min(_1874, _1873), _47_m8.x);
      float _1950;
      if (_1877 > 0.001000000047497451305389404296875f) {
        float3 _1912 = _449 - _18_m65.xyz;
        float2 _1917 = (_1912 + (_18_m68.xyz * _1912.y)).xz * _18_m66.z;
        float2 _1918 = _18_m67.xy * _18_m77.w;
        float3 _1925 = _449 - _18_m69.xyz;
        float2 _1933 = _18_m69.w.xx;
        float4 _1940 = _51.SampleLevel(_24, lerp(_1917 * _18_m67.w, (_1925 + (_18_m68.xyz * _1925.y)).xz * _18_m70.x, _1933) + lerp(_1918, _18_m70.yz * _18_m77.w, _1933), 0.0f);
        _1950 = _1877 * lerp(1.0f, lerp(_51.SampleLevel(_24, _1917 + _1918, 0.0f).x, lerp(_1940.x, _1940.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_1912.xz))), _18_m67.z);
      } else {
        _1950 = _1877;
      }
      _1955 = float2(lerp(_1950, _47_m7.z, _47_m7.w), _1950);
      break;
    } while (false);
    float _1960 = lerp(1.0f, min(1.0f, _1955.x), _47_m6.x);
    float4 _2095;
    if (_1960 > 0.001000000047497451305389404296875f) {
      float3 _1970 = -_43_m0.xyz;
      float _1975 = dot(_1970, _1132);
      float3 _1977 = _1132 - (_1970 * _1975);
      bool3 _1979 = (_1975 < _43_m4.z).xxx;
      float3 _1987 = normalize((_1970 * _43_m4.z) + ((_1977 * rsqrt(max(6.103515625e-05f, dot(_1977, _1977)))) * _43_m4.y));
      float3 _1988 = float3(_1979.x ? _1987.x : _1132.x, _1979.y ? _1987.y : _1132.y, _1979.z ? _1987.z : _1132.z);
      float3 _1992 = _1988 + _486;
      float3 _1996 = _1992 * rsqrt(max(6.103515625e-05f, dot(_1992, _1992)));
      float _1997 = clamp(dot(_1988, _596), 0.0f, 1.0f);
      float _1999 = clamp(dot(_596, _1996), 0.0f, 1.0f);
      float _2002 = clamp(_649, 0.0f, 1.0f);
      float _2003 = _570 * _570;
      float _2004 = _2003 * _2003;
      float _2025 = (((_1999 * _2004) - _1999) * _1999) + 1.0f;
      float _2028 = 1.0f - clamp(dot(_486, _1996), 0.0f, 1.0f);
      float _2029 = _2028 * _2028;
      float _2031 = (_2028 * _2029) * _2029;
      float _2055 = 1.0f - _570;
      float _2062 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2055 * (1.04997003078460693359375f + (_2055 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2055))))));
      float _2063 = 1.0f - _2062;
      float3 _2066 = _648 + ((1.0f.xxx - _648) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x85203400:
      float3 _2082 = ((clamp((min(((_648 * (1.0f - _2031)) + _2031.xxx) * ((_2004 / (_2025 * _2025)) * (0.5f / (((_1997 * sqrt(((((-_2002) * _2004) + _2002) * _2002) + _2004)) + (_2002 * sqrt(((((-_1997) * _2004) + _1997) * _1997) + _2004))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2066 * (((_56.SampleLevel(_23, (float2(_2002, _570) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_1997, _570) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2062) / _2063)) * _2066) / (1.0f.xxx - (_2066 * _2063)))) * _43_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1997) + ((_644 * 1.0f) * _1997)) * _43_m1.xyz;
      */
      float3 _2082 = ((clamp((min(((_648 * (1.0f - _2031)) + _2031.xxx) * ((_2004 / (_2025 * _2025)) * (0.5f / (((_1997 * sqrt(((((-_2002) * _2004) + _2002) * _2002) + _2004)) + (_2002 * sqrt(((((-_1997) * _2004) + _1997) * _1997) + _2004))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2066 * (((_56.SampleLevel(_23, (float2(_2002, _570) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_1997, _570) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2062) / _2063)) * _2066) / (1.0f.xxx - (_2066 * _2063)))) * _43_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f) * _1997) + ((_644 * 1.0f) * _1997)) * _43_m1.xyz;
      // RenoDX code end
      float3 _2093 = lerp(_2082, _2082 * _53.SampleBias(_23, float2(_1960, 0.5f), _18_m16).xyz, (1.0f - _1960).xxx) * 1.0f;
      _2095 = float4(_2093.x, _2093.y, _2093.z, 0.0f.xxxx.w);
    } else {
      _2095 = 0.0f.xxxx;
    }
    _2096 = _2095;
    break;
  } while (false);
  float2 _2098 = floor(_1141 * 0.03125f);
  int _2106 = int((_2098.x + (_2098.y * _45_m9)) * 8.0f);
  float _2113 = floor(_704 - (_18_m3.y * _45_m15));
  float _2117 = clamp(_2113, 0.0f, _45_m11 - 1.0f);
  int _2119 = int(_2117 * 8.0f);
  float3 _2121;
  float _2124;
  _2121 = 0.0f.xxx;
  _2124 = 1.0f;
  float3 _2122;
  float _2125;
  [loop] for (int _2126 = 0; _2126 <= 7; _2121 = _2122, _2124 = _2125, _2126++) {
    uint _2147 = (_2113 <= _2117) ? (_31.Load(uint((_45_m2 + _2106) + _2126) * 4 + 0) & _31.Load(uint((_45_m3 + _2119) + _2126) * 4 + 0)) : 0u;
    uint _2148 = uint(_2126);
    float3 _2152;
    _2125 = _2124;
    _2152 = 0.0f.xxx;
    uint _2155;
    float _2150;
    float3 _2153;
    [loop] for (uint _2154 = _2147; _2154 != 0u; _2125 = _2150, _2152 = _2153, _2154 = _2155) {
      uint _2159 = firstbitlow(_2154);
      _2155 = _2154 ^ (1u << (_2159 & 31u));
      int _2165 = int((32u * _2148) + _2159) * 8;
      int _2168 = _2165 + 1;
      int _2171 = _2165 + 2;
      int _2174 = _2165 + 3;
      int _2177 = _2165 + 4;
      int _2180 = _2165 + 5;
      int _2183 = _2165 + 6;
      int _2186 = _2165 + 7;
      uint _2190 = uint(_43_m6[_2180].w);
      float _2265;
      if ((_2190 & 1u) == 1u) {
        uint _2196 = asuint(_43_m6[_2180].x);
        uint _2203 = asuint(_43_m6[_2180].y);
        uint _2210 = asuint(_43_m6[_2180].z);
        uint _2217 = asuint(_43_m6[_2183].x);
        uint _2224 = asuint(_43_m6[_2183].y);
        uint _2231 = asuint(_43_m6[_2183].z);
        float3 _2250 = abs(mul(float4(_449 - _43_m6[_2168].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2196).x, spvUnpackHalf2x16(_2210).x, spvUnpackHalf2x16(_2224).x, 0.0f), float4(spvUnpackHalf2x16(_2196 >> 16u).x, spvUnpackHalf2x16(_2210 >> 16u).x, spvUnpackHalf2x16(_2224 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2203).x, spvUnpackHalf2x16(_2217).x, spvUnpackHalf2x16(_2231).x, 0.0f), float4(spvUnpackHalf2x16(_2203 >> 16u).x, spvUnpackHalf2x16(_2217 >> 16u).x, spvUnpackHalf2x16(_2231 >> 16u).x, 0.0f))).xyz);
        float _2257 = _43_m6[_2186].x * 0.5f;
        float _2263 = 1.0f - clamp((max(max(_2250.x, _2250.y), _2250.z) - (_2257 + 0.5f)) / (0.5f - _2257), 0.0f, 1.0f);
        _2265 = _2263 * _2263;
      } else {
        _2265 = 1.0f;
      }
      uint _2269 = uint(_43_m6[_2165].w);
      bool _2272 = _43_m6[_2174].z > 0.5f;
      if ((false || (_2265 < 0.001000000047497451305389404296875f)) || ((_2269 < 4u) && _2272)) {
        _2150 = _2125;
        _2153 = _2152;
        continue;
      }
      float _4801;
      float3 _4802;
      do {
        [branch] if (_2269 >= 4u) {
          float3 _3501;
          do {
            float3 _2291 = _43_m6[_2168].xyz - _449;
            if (dot(_43_m6[_2174].xyz, _2291) > 0.0f) {
              _3501 = 0.0f.xxx;
              break;
            }
            float _2298 = dot(_2291, _2291) * _43_m6[_2168].w;
            float _2301 = clamp(1.0f - (_2298 * _2298), 0.0f, 1.0f);
            float _2302 = _2301 * _2301;
            if (_2302 <= 0.0f) {
              _3501 = 0.0f.xxx;
              break;
            }
            float3 _2340;
            float _2341;
            bool _2342;
            float3 _2370;
            float3 _2372;
            float3 _2374;
            float3 _2376;
            float3 _2306 = _43_m6[_2171].xyz * _43_m6[_2171].w;
            float3 _2307 = _43_m6[_2168].xyz - _2306;
            float3 _2308 = _43_m6[_2177].xyz * _43_m6[_2174].w;
            float3 _2311 = _43_m6[_2168].xyz + _2306;
            float2 _2321 = (float2(clamp(_570, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_649, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2325 = _69.SampleLevel(_23, _2321, 0.0f);
            float4 _2329 = _70.SampleLevel(_23, _2321, 0.0f);
            float _2724;
            do {
              _2340 = _486 - (_596 * dot(_486, _596));
              _2341 = dot(_2340, _2340);
              _2342 = _2341 > 9.9999997473787516355514526367188e-05f;
              float3 _2365;
              if (_2342) {
                _2365 = _2340 * rsqrt(_2341);
              } else {
                float _2348 = (_596.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2350 = (-1.0f) / (_2348 + _596.z);
                _2365 = float3(1.0f + (((_2348 * _2350) * _596.x) * _596.x), ((_2348 * _596.x) * _596.y) * _2350, (-_2348) * _596.x);
              }
              float3x3 _2369 = mul(float3x3(float3(_2325.x, 0.0f, _2325.z), float3(0.0f, 1.0f, 0.0f), float3(_2325.y, 0.0f, _2325.w)), float3x3(_2365, cross(_596, _2365), _596));
              _2370 = (_2307 - _2308) - _449;
              float3 _2371 = mul(_2369, _2370);
              _2372 = (_2307 + _2308) - _449;
              float3 _2373 = mul(_2369, _2372);
              _2374 = (_2311 + _2308) - _449;
              float3 _2375 = mul(_2369, _2374);
              _2376 = (_2311 - _2308) - _449;
              float3 _2377 = mul(_2369, _2376);
              float _2378 = _2371.z;
              float _2381 = _2373.z;
              float _2385 = _2375.z;
              float _2389 = _2377.z;
              int _2393 = (((int(_2378 > 0.0f) | ((_2381 > 0.0f) ? 2 : 0)) | ((_2385 > 0.0f) ? 4 : 0)) | ((_2389 > 0.0f) ? 8 : 0));
              float3 _2630;
              float3 _2631;
              float3 _2632;
              float3 _2633;
              float3 _2634;
              int _2635;
              if (_2393 == 0) {
                _2630 = _2377;
                _2631 = _2375;
                _2632 = _2373;
                _2633 = _2371;
                _2634 = 0.0f.xxx;
                _2635 = 0;
              } else {
                float3 _2624;
                float3 _2625;
                float3 _2626;
                float3 _2627;
                float3 _2628;
                int _2629;
                if (_2393 == 1) {
                  _2624 = _2377;
                  _2625 = (_2371 * (-_2389)) + (_2377 * _2378);
                  _2626 = (_2371 * (-_2381)) + (_2373 * _2378);
                  _2627 = _2371;
                  _2628 = 0.0f.xxx;
                  _2629 = 3;
                } else {
                  float3 _2610;
                  float3 _2611;
                  float3 _2612;
                  float3 _2613;
                  float3 _2614;
                  int _2615;
                  if (_2393 == 2) {
                    _2610 = _2377;
                    _2611 = (_2373 * (-_2385)) + (_2375 * _2381);
                    _2612 = _2373;
                    _2613 = (_2373 * (-_2378)) + (_2371 * _2381);
                    _2614 = 0.0f.xxx;
                    _2615 = 3;
                  } else {
                    float3 _2596;
                    float3 _2597;
                    float3 _2598;
                    float3 _2599;
                    float3 _2600;
                    int _2601;
                    if (_2393 == 3) {
                      _2596 = (_2371 * (-_2389)) + (_2377 * _2378);
                      _2597 = (_2373 * (-_2385)) + (_2375 * _2381);
                      _2598 = _2373;
                      _2599 = _2371;
                      _2600 = 0.0f.xxx;
                      _2601 = 4;
                    } else {
                      float3 _2582;
                      float3 _2583;
                      float3 _2584;
                      float3 _2585;
                      float3 _2586;
                      int _2587;
                      if (_2393 == 4) {
                        _2582 = _2377;
                        _2583 = _2375;
                        _2584 = (_2375 * (-_2381)) + (_2373 * _2385);
                        _2585 = (_2375 * (-_2389)) + (_2377 * _2385);
                        _2586 = 0.0f.xxx;
                        _2587 = 3;
                      } else {
                        float3 _2568;
                        float3 _2569;
                        float3 _2570;
                        float3 _2571;
                        float3 _2572;
                        int _2573;
                        if (_2393 == 5) {
                          _2568 = _2377;
                          _2569 = _2375;
                          _2570 = _2373;
                          _2571 = _2371;
                          _2572 = 0.0f.xxx;
                          _2573 = 0;
                        } else {
                          float3 _2562;
                          float3 _2563;
                          float3 _2564;
                          float3 _2565;
                          float3 _2566;
                          int _2567;
                          if (_2393 == 6) {
                            _2562 = (_2375 * (-_2389)) + (_2377 * _2385);
                            _2563 = _2375;
                            _2564 = _2373;
                            _2565 = (_2373 * (-_2378)) + (_2371 * _2381);
                            _2566 = 0.0f.xxx;
                            _2567 = 4;
                          } else {
                            float3 _2548;
                            float3 _2549;
                            float3 _2550;
                            float3 _2551;
                            float3 _2552;
                            int _2553;
                            if (_2393 == 7) {
                              float _2541 = -_2389;
                              _2548 = (_2375 * _2541) + (_2377 * _2385);
                              _2549 = _2375;
                              _2550 = _2373;
                              _2551 = _2371;
                              _2552 = (_2371 * _2541) + (_2377 * _2378);
                              _2553 = 5;
                            } else {
                              float3 _2535;
                              float3 _2536;
                              float3 _2537;
                              float3 _2538;
                              float3 _2539;
                              int _2540;
                              if (_2393 == 8) {
                                _2535 = _2377;
                                _2536 = _2377;
                                _2537 = (_2377 * (-_2385)) + (_2375 * _2389);
                                _2538 = (_2377 * (-_2378)) + (_2371 * _2389);
                                _2539 = 0.0f.xxx;
                                _2540 = 3;
                              } else {
                                float3 _2521;
                                float3 _2522;
                                float3 _2523;
                                float3 _2524;
                                float3 _2525;
                                int _2526;
                                if (_2393 == 9) {
                                  _2521 = _2377;
                                  _2522 = (_2377 * (-_2385)) + (_2375 * _2389);
                                  _2523 = (_2371 * (-_2381)) + (_2373 * _2378);
                                  _2524 = _2371;
                                  _2525 = 0.0f.xxx;
                                  _2526 = 4;
                                } else {
                                  float3 _2507;
                                  float3 _2508;
                                  float3 _2509;
                                  float3 _2510;
                                  float3 _2511;
                                  int _2512;
                                  if (_2393 == 10) {
                                    _2507 = _2377;
                                    _2508 = _2375;
                                    _2509 = _2373;
                                    _2510 = _2371;
                                    _2511 = 0.0f.xxx;
                                    _2512 = 0;
                                  } else {
                                    float3 _2501;
                                    float3 _2502;
                                    float3 _2503;
                                    float3 _2504;
                                    float3 _2505;
                                    int _2506;
                                    if (_2393 == 11) {
                                      float _2494 = -_2385;
                                      _2501 = (_2377 * _2494) + (_2375 * _2389);
                                      _2502 = (_2373 * _2494) + (_2375 * _2381);
                                      _2503 = _2373;
                                      _2504 = _2371;
                                      _2505 = _2377;
                                      _2506 = 5;
                                    } else {
                                      float3 _2488;
                                      float3 _2489;
                                      float3 _2490;
                                      float3 _2491;
                                      float3 _2492;
                                      int _2493;
                                      if (_2393 == 12) {
                                        _2488 = _2377;
                                        _2489 = _2375;
                                        _2490 = (_2375 * (-_2381)) + (_2373 * _2385);
                                        _2491 = (_2377 * (-_2378)) + (_2371 * _2389);
                                        _2492 = 0.0f.xxx;
                                        _2493 = 4;
                                      } else {
                                        bool _2446 = _2393 == 13;
                                        float3 _2473;
                                        float3 _2474;
                                        float3 _2475;
                                        float3 _2476;
                                        int _2477;
                                        if (_2446) {
                                          float _2466 = -_2381;
                                          _2473 = (_2375 * _2466) + (_2373 * _2385);
                                          _2474 = (_2371 * _2466) + (_2373 * _2378);
                                          _2475 = _2371;
                                          _2476 = _2377;
                                          _2477 = 5;
                                        } else {
                                          float3 _2463;
                                          float3 _2464;
                                          int _2465;
                                          if (_2393 == 14) {
                                            float _2456 = -_2378;
                                            _2463 = (_2373 * _2456) + (_2371 * _2381);
                                            _2464 = (_2377 * _2456) + (_2371 * _2389);
                                            _2465 = 5;
                                          } else {
                                            _2463 = _2371;
                                            _2464 = 0.0f.xxx;
                                            _2465 = (_2393 == 15) ? 4 : 0;
                                          }
                                          _2473 = _2375;
                                          _2474 = _2373;
                                          _2475 = _2463;
                                          _2476 = _2464;
                                          _2477 = _2465;
                                        }
                                        bool3 _2478 = _2446.xxx;
                                        _2488 = float3(_2478.x ? _2375.x : _2377.x, _2478.y ? _2375.y : _2377.y, _2478.z ? _2375.z : _2377.z);
                                        _2489 = _2473;
                                        _2490 = _2474;
                                        _2491 = _2475;
                                        _2492 = _2476;
                                        _2493 = _2477;
                                      }
                                      _2501 = _2488;
                                      _2502 = _2489;
                                      _2503 = _2490;
                                      _2504 = _2491;
                                      _2505 = _2492;
                                      _2506 = _2493;
                                    }
                                    _2507 = _2501;
                                    _2508 = _2502;
                                    _2509 = _2503;
                                    _2510 = _2504;
                                    _2511 = _2505;
                                    _2512 = _2506;
                                  }
                                  _2521 = _2507;
                                  _2522 = _2508;
                                  _2523 = _2509;
                                  _2524 = _2510;
                                  _2525 = _2511;
                                  _2526 = _2512;
                                }
                                _2535 = _2521;
                                _2536 = _2522;
                                _2537 = _2523;
                                _2538 = _2524;
                                _2539 = _2525;
                                _2540 = _2526;
                              }
                              _2548 = _2535;
                              _2549 = _2536;
                              _2550 = _2537;
                              _2551 = _2538;
                              _2552 = _2539;
                              _2553 = _2540;
                            }
                            _2562 = _2548;
                            _2563 = _2549;
                            _2564 = _2550;
                            _2565 = _2551;
                            _2566 = _2552;
                            _2567 = _2553;
                          }
                          _2568 = _2562;
                          _2569 = _2563;
                          _2570 = _2564;
                          _2571 = _2565;
                          _2572 = _2566;
                          _2573 = _2567;
                        }
                        _2582 = _2568;
                        _2583 = _2569;
                        _2584 = _2570;
                        _2585 = _2571;
                        _2586 = _2572;
                        _2587 = _2573;
                      }
                      _2596 = _2582;
                      _2597 = _2583;
                      _2598 = _2584;
                      _2599 = _2585;
                      _2600 = _2586;
                      _2601 = _2587;
                    }
                    _2610 = _2596;
                    _2611 = _2597;
                    _2612 = _2598;
                    _2613 = _2599;
                    _2614 = _2600;
                    _2615 = _2601;
                  }
                  _2624 = _2610;
                  _2625 = _2611;
                  _2626 = _2612;
                  _2627 = _2613;
                  _2628 = _2614;
                  _2629 = _2615;
                }
                _2630 = _2624;
                _2631 = _2625;
                _2632 = _2626;
                _2633 = _2627;
                _2634 = _2628;
                _2635 = _2629;
              }
              bool3 _2637 = (_2635 == 3).xxx;
              bool3 _2640 = (_2635 == 4).xxx;
              if (_2635 == 0) {
                _2724 = 0.0f;
                break;
              }
              float3 _2645 = normalize(_2633);
              float3 _2646 = normalize(_2632);
              float3 _2647 = normalize(_2631);
              float3 _2648 = normalize(float3(_2637.x ? _2633.x : _2630.x, _2637.y ? _2633.y : _2630.y, _2637.z ? _2633.z : _2630.z));
              float3 _2649 = normalize(float3(_2640.x ? _2633.x : _2634.x, _2640.y ? _2633.y : _2634.y, _2640.z ? _2633.z : _2634.z));
              float _2651 = clamp(dot(_2645, _2646), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2655 = sqrt(1.0f - (_2651 * _2651));
              float _2663 = clamp(dot(_2646, _2647), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2667 = sqrt(1.0f - (_2663 * _2663));
              float _2676 = clamp(dot(_2647, _2648), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2680 = sqrt(1.0f - (_2676 * _2676));
              float _2687 = ((cross(_2645, _2646).z * ((_2655 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2651) / _2655))) + (cross(_2646, _2647).z * ((_2667 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2663) / _2667)))) + (cross(_2647, _2648).z * ((_2680 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2676) / _2680)));
              float _2704;
              if (_2635 >= 4) {
                float _2692 = clamp(dot(_2648, _2649), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2696 = sqrt(1.0f - (_2692 * _2692));
                _2704 = _2687 + (cross(_2648, _2649).z * ((_2696 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2692) / _2696)));
              } else {
                _2704 = _2687;
              }
              float _2721;
              if (_2635 == 5) {
                float _2709 = clamp(dot(_2649, _2645), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2713 = sqrt(1.0f - (_2709 * _2709));
                _2721 = _2704 + (cross(_2649, _2645).z * ((_2713 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2709) / _2713)));
              } else {
                _2721 = _2704;
              }
              _2724 = max(_2721, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3112;
            do {
              float3 _2758;
              if (_2342) {
                _2758 = _2340 * rsqrt(_2341);
              } else {
                float _2741 = (_596.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2743 = (-1.0f) / (_2741 + _596.z);
                _2758 = float3(1.0f + (((_2741 * _2743) * _596.x) * _596.x), ((_2741 * _596.x) * _596.y) * _2743, (-_2741) * _596.x);
              }
              float3x3 _2761 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2758, cross(_596, _2758), _596));
              float3 _2762 = mul(_2761, _2370);
              float3 _2763 = mul(_2761, _2372);
              float3 _2764 = mul(_2761, _2374);
              float3 _2765 = mul(_2761, _2376);
              float _2766 = _2762.z;
              float _2769 = _2763.z;
              float _2773 = _2764.z;
              float _2777 = _2765.z;
              int _2781 = (((int(_2766 > 0.0f) | ((_2769 > 0.0f) ? 2 : 0)) | ((_2773 > 0.0f) ? 4 : 0)) | ((_2777 > 0.0f) ? 8 : 0));
              float3 _3018;
              float3 _3019;
              float3 _3020;
              float3 _3021;
              float3 _3022;
              int _3023;
              if (_2781 == 0) {
                _3018 = _2765;
                _3019 = _2764;
                _3020 = _2763;
                _3021 = _2762;
                _3022 = 0.0f.xxx;
                _3023 = 0;
              } else {
                float3 _3012;
                float3 _3013;
                float3 _3014;
                float3 _3015;
                float3 _3016;
                int _3017;
                if (_2781 == 1) {
                  _3012 = _2765;
                  _3013 = (_2762 * (-_2777)) + (_2765 * _2766);
                  _3014 = (_2762 * (-_2769)) + (_2763 * _2766);
                  _3015 = _2762;
                  _3016 = 0.0f.xxx;
                  _3017 = 3;
                } else {
                  float3 _2998;
                  float3 _2999;
                  float3 _3000;
                  float3 _3001;
                  float3 _3002;
                  int _3003;
                  if (_2781 == 2) {
                    _2998 = _2765;
                    _2999 = (_2763 * (-_2773)) + (_2764 * _2769);
                    _3000 = _2763;
                    _3001 = (_2763 * (-_2766)) + (_2762 * _2769);
                    _3002 = 0.0f.xxx;
                    _3003 = 3;
                  } else {
                    float3 _2984;
                    float3 _2985;
                    float3 _2986;
                    float3 _2987;
                    float3 _2988;
                    int _2989;
                    if (_2781 == 3) {
                      _2984 = (_2762 * (-_2777)) + (_2765 * _2766);
                      _2985 = (_2763 * (-_2773)) + (_2764 * _2769);
                      _2986 = _2763;
                      _2987 = _2762;
                      _2988 = 0.0f.xxx;
                      _2989 = 4;
                    } else {
                      float3 _2970;
                      float3 _2971;
                      float3 _2972;
                      float3 _2973;
                      float3 _2974;
                      int _2975;
                      if (_2781 == 4) {
                        _2970 = _2765;
                        _2971 = _2764;
                        _2972 = (_2764 * (-_2769)) + (_2763 * _2773);
                        _2973 = (_2764 * (-_2777)) + (_2765 * _2773);
                        _2974 = 0.0f.xxx;
                        _2975 = 3;
                      } else {
                        float3 _2956;
                        float3 _2957;
                        float3 _2958;
                        float3 _2959;
                        float3 _2960;
                        int _2961;
                        if (_2781 == 5) {
                          _2956 = _2765;
                          _2957 = _2764;
                          _2958 = _2763;
                          _2959 = _2762;
                          _2960 = 0.0f.xxx;
                          _2961 = 0;
                        } else {
                          float3 _2950;
                          float3 _2951;
                          float3 _2952;
                          float3 _2953;
                          float3 _2954;
                          int _2955;
                          if (_2781 == 6) {
                            _2950 = (_2764 * (-_2777)) + (_2765 * _2773);
                            _2951 = _2764;
                            _2952 = _2763;
                            _2953 = (_2763 * (-_2766)) + (_2762 * _2769);
                            _2954 = 0.0f.xxx;
                            _2955 = 4;
                          } else {
                            float3 _2936;
                            float3 _2937;
                            float3 _2938;
                            float3 _2939;
                            float3 _2940;
                            int _2941;
                            if (_2781 == 7) {
                              float _2929 = -_2777;
                              _2936 = (_2764 * _2929) + (_2765 * _2773);
                              _2937 = _2764;
                              _2938 = _2763;
                              _2939 = _2762;
                              _2940 = (_2762 * _2929) + (_2765 * _2766);
                              _2941 = 5;
                            } else {
                              float3 _2923;
                              float3 _2924;
                              float3 _2925;
                              float3 _2926;
                              float3 _2927;
                              int _2928;
                              if (_2781 == 8) {
                                _2923 = _2765;
                                _2924 = _2765;
                                _2925 = (_2765 * (-_2773)) + (_2764 * _2777);
                                _2926 = (_2765 * (-_2766)) + (_2762 * _2777);
                                _2927 = 0.0f.xxx;
                                _2928 = 3;
                              } else {
                                float3 _2909;
                                float3 _2910;
                                float3 _2911;
                                float3 _2912;
                                float3 _2913;
                                int _2914;
                                if (_2781 == 9) {
                                  _2909 = _2765;
                                  _2910 = (_2765 * (-_2773)) + (_2764 * _2777);
                                  _2911 = (_2762 * (-_2769)) + (_2763 * _2766);
                                  _2912 = _2762;
                                  _2913 = 0.0f.xxx;
                                  _2914 = 4;
                                } else {
                                  float3 _2895;
                                  float3 _2896;
                                  float3 _2897;
                                  float3 _2898;
                                  float3 _2899;
                                  int _2900;
                                  if (_2781 == 10) {
                                    _2895 = _2765;
                                    _2896 = _2764;
                                    _2897 = _2763;
                                    _2898 = _2762;
                                    _2899 = 0.0f.xxx;
                                    _2900 = 0;
                                  } else {
                                    float3 _2889;
                                    float3 _2890;
                                    float3 _2891;
                                    float3 _2892;
                                    float3 _2893;
                                    int _2894;
                                    if (_2781 == 11) {
                                      float _2882 = -_2773;
                                      _2889 = (_2765 * _2882) + (_2764 * _2777);
                                      _2890 = (_2763 * _2882) + (_2764 * _2769);
                                      _2891 = _2763;
                                      _2892 = _2762;
                                      _2893 = _2765;
                                      _2894 = 5;
                                    } else {
                                      float3 _2876;
                                      float3 _2877;
                                      float3 _2878;
                                      float3 _2879;
                                      float3 _2880;
                                      int _2881;
                                      if (_2781 == 12) {
                                        _2876 = _2765;
                                        _2877 = _2764;
                                        _2878 = (_2764 * (-_2769)) + (_2763 * _2773);
                                        _2879 = (_2765 * (-_2766)) + (_2762 * _2777);
                                        _2880 = 0.0f.xxx;
                                        _2881 = 4;
                                      } else {
                                        bool _2834 = _2781 == 13;
                                        float3 _2861;
                                        float3 _2862;
                                        float3 _2863;
                                        float3 _2864;
                                        int _2865;
                                        if (_2834) {
                                          float _2854 = -_2769;
                                          _2861 = (_2764 * _2854) + (_2763 * _2773);
                                          _2862 = (_2762 * _2854) + (_2763 * _2766);
                                          _2863 = _2762;
                                          _2864 = _2765;
                                          _2865 = 5;
                                        } else {
                                          float3 _2851;
                                          float3 _2852;
                                          int _2853;
                                          if (_2781 == 14) {
                                            float _2844 = -_2766;
                                            _2851 = (_2763 * _2844) + (_2762 * _2769);
                                            _2852 = (_2765 * _2844) + (_2762 * _2777);
                                            _2853 = 5;
                                          } else {
                                            _2851 = _2762;
                                            _2852 = 0.0f.xxx;
                                            _2853 = (_2781 == 15) ? 4 : 0;
                                          }
                                          _2861 = _2764;
                                          _2862 = _2763;
                                          _2863 = _2851;
                                          _2864 = _2852;
                                          _2865 = _2853;
                                        }
                                        bool3 _2866 = _2834.xxx;
                                        _2876 = float3(_2866.x ? _2764.x : _2765.x, _2866.y ? _2764.y : _2765.y, _2866.z ? _2764.z : _2765.z);
                                        _2877 = _2861;
                                        _2878 = _2862;
                                        _2879 = _2863;
                                        _2880 = _2864;
                                        _2881 = _2865;
                                      }
                                      _2889 = _2876;
                                      _2890 = _2877;
                                      _2891 = _2878;
                                      _2892 = _2879;
                                      _2893 = _2880;
                                      _2894 = _2881;
                                    }
                                    _2895 = _2889;
                                    _2896 = _2890;
                                    _2897 = _2891;
                                    _2898 = _2892;
                                    _2899 = _2893;
                                    _2900 = _2894;
                                  }
                                  _2909 = _2895;
                                  _2910 = _2896;
                                  _2911 = _2897;
                                  _2912 = _2898;
                                  _2913 = _2899;
                                  _2914 = _2900;
                                }
                                _2923 = _2909;
                                _2924 = _2910;
                                _2925 = _2911;
                                _2926 = _2912;
                                _2927 = _2913;
                                _2928 = _2914;
                              }
                              _2936 = _2923;
                              _2937 = _2924;
                              _2938 = _2925;
                              _2939 = _2926;
                              _2940 = _2927;
                              _2941 = _2928;
                            }
                            _2950 = _2936;
                            _2951 = _2937;
                            _2952 = _2938;
                            _2953 = _2939;
                            _2954 = _2940;
                            _2955 = _2941;
                          }
                          _2956 = _2950;
                          _2957 = _2951;
                          _2958 = _2952;
                          _2959 = _2953;
                          _2960 = _2954;
                          _2961 = _2955;
                        }
                        _2970 = _2956;
                        _2971 = _2957;
                        _2972 = _2958;
                        _2973 = _2959;
                        _2974 = _2960;
                        _2975 = _2961;
                      }
                      _2984 = _2970;
                      _2985 = _2971;
                      _2986 = _2972;
                      _2987 = _2973;
                      _2988 = _2974;
                      _2989 = _2975;
                    }
                    _2998 = _2984;
                    _2999 = _2985;
                    _3000 = _2986;
                    _3001 = _2987;
                    _3002 = _2988;
                    _3003 = _2989;
                  }
                  _3012 = _2998;
                  _3013 = _2999;
                  _3014 = _3000;
                  _3015 = _3001;
                  _3016 = _3002;
                  _3017 = _3003;
                }
                _3018 = _3012;
                _3019 = _3013;
                _3020 = _3014;
                _3021 = _3015;
                _3022 = _3016;
                _3023 = _3017;
              }
              bool3 _3025 = (_3023 == 3).xxx;
              bool3 _3028 = (_3023 == 4).xxx;
              if (_3023 == 0) {
                _3112 = 0.0f;
                break;
              }
              float3 _3033 = normalize(_3021);
              float3 _3034 = normalize(_3020);
              float3 _3035 = normalize(_3019);
              float3 _3036 = normalize(float3(_3025.x ? _3021.x : _3018.x, _3025.y ? _3021.y : _3018.y, _3025.z ? _3021.z : _3018.z));
              float3 _3037 = normalize(float3(_3028.x ? _3021.x : _3022.x, _3028.y ? _3021.y : _3022.y, _3028.z ? _3021.z : _3022.z));
              float _3039 = clamp(dot(_3033, _3034), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3043 = sqrt(1.0f - (_3039 * _3039));
              float _3051 = clamp(dot(_3034, _3035), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3055 = sqrt(1.0f - (_3051 * _3051));
              float _3064 = clamp(dot(_3035, _3036), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3068 = sqrt(1.0f - (_3064 * _3064));
              float _3075 = ((cross(_3033, _3034).z * ((_3043 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3039) / _3043))) + (cross(_3034, _3035).z * ((_3055 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3051) / _3055)))) + (cross(_3035, _3036).z * ((_3068 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3064) / _3068)));
              float _3092;
              if (_3023 >= 4) {
                float _3080 = clamp(dot(_3036, _3037), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3084 = sqrt(1.0f - (_3080 * _3080));
                _3092 = _3075 + (cross(_3036, _3037).z * ((_3084 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3080) / _3084)));
              } else {
                _3092 = _3075;
              }
              float _3109;
              if (_3023 == 5) {
                float _3097 = clamp(dot(_3037, _3033), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3101 = sqrt(1.0f - (_3097 * _3097));
                _3109 = _3092 + (cross(_3037, _3033).z * ((_3101 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3097) / _3101)));
              } else {
                _3109 = _3092;
              }
              _3112 = max(_3109, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3115 = (_2190 & 2u) != 0u;
            uint _3119 = asuint(_43_m6[_2177].w);
            uint _3120 = asuint(_43_m6[_2183].w);
            float3 _3121 = _449 - _43_m6[_2168].xyz;
            float3 _3122 = abs(_3121);
            float _3123 = _3122.x;
            float _3124 = _3122.y;
            float _3126 = _3122.z;
            int _3159;
            if ((_3123 > _3124) && (_3123 > _3126)) {
              _3159 = int((_3121.x > 0.0f) ? (_3119 & 1023u) : ((_3119 >> 10u) & 1023u));
            } else {
              int _3151;
              if (_3124 > _3126) {
                _3151 = int((_3121.y > 0.0f) ? ((_3119 >> 20u) & 1023u) : (_3120 & 1023u));
              } else {
                _3151 = int((_3121.z > 0.0f) ? ((_3120 >> 10u) & 1023u) : ((_3120 >> 20u) & 1023u));
              }
              _3159 = _3151;
            }
            int _3162 = _3115 ? int(_43_m6[_2177].w) : ((_3159 == 1023) ? (-1) : _3159);
            uint _3173 = asuint(_47_m11.x) + (uint(_3162) * 96u);
            uint _3175 = (_3173 + 64u) >> 2u;
            uint _3178 = _3175 + 1u;
            uint _3181 = _3175 + 2u;
            uint _3184 = _3175 + 3u;
            float4 _3188 = asfloat(uint4(_50.Load(_3175 * 4 + 0), _50.Load(_3178 * 4 + 0), _50.Load(_3181 * 4 + 0), _50.Load(_3184 * 4 + 0)));
            uint _3196 = _3173 >> 2u;
            uint _3211 = (_3173 + 16u) >> 2u;
            uint _3226 = (_3173 + 32u) >> 2u;
            uint _3241 = (_3173 + 48u) >> 2u;
            float4 _3261 = mul(transpose(float4x4(asfloat(uint4(_50.Load(_3196 * 4 + 0), _50.Load((_3196 + 1u) * 4 + 0), _50.Load((_3196 + 2u) * 4 + 0), _50.Load((_3196 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3211 * 4 + 0), _50.Load((_3211 + 1u) * 4 + 0), _50.Load((_3211 + 2u) * 4 + 0), _50.Load((_3211 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3226 * 4 + 0), _50.Load((_3226 + 1u) * 4 + 0), _50.Load((_3226 + 2u) * 4 + 0), _50.Load((_3226 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3241 * 4 + 0), _50.Load((_3241 + 1u) * 4 + 0), _50.Load((_3241 + 2u) * 4 + 0), _50.Load((_3241 + 3u) * 4 + 0))))), float4((_449 - ((_3121 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3121, _3121)))) * _3188.x)) + (_596 * (_3188.y * 5.0f)), 1.0f));
            float3 _3265 = _3261.xyz / _3261.w.xxx;
            uint _3267 = (_3173 + 80u) >> 2u;
            float4 _3280 = asfloat(uint4(_50.Load(_3267 * 4 + 0), _50.Load((_3267 + 1u) * 4 + 0), _50.Load((_3267 + 2u) * 4 + 0), _50.Load((_3267 + 3u) * 4 + 0)));
            float2 _3281 = _3265.xy;
            float2 _3283 = _3280.xy;
            float3 _3287 = _3265.xyz;
            bool3 _3288 = bool3(_3287.x <= 0.0f.xxx.x, _3287.y <= 0.0f.xxx.y, _3287.z <= 0.0f.xxx.z);
            bool3 _3289 = bool3(_3287.x >= 1.0f.xxx.x, _3287.y >= 1.0f.xxx.y, _3287.z >= 1.0f.xxx.z);
            float _3292 = _3265.z;
            float2 _3303 = ((_3281 * (_3280.zw - _3283)) + _3283).xy * _47_m10.zw;
            float2 _3305 = floor(_3303 + 0.5f.xx);
            float2 _3306 = _3303 - _3305;
            float _3307 = _3306.x;
            float _3308 = _3307 + 0.5f;
            float _3309 = _3308 * _3308;
            float _3312 = 1.0f - _3307;
            float _3313 = min(_3307, 0.0f);
            float _3316 = _3307 + 1.0f;
            float _3317 = max(_3307, 0.0f);
            float _3328 = _3306.y;
            float _3329 = _3328 + 0.5f;
            float _3330 = _3329 * _3329;
            float _3333 = 1.0f - _3328;
            float _3334 = min(_3328, 0.0f);
            float _3337 = _3328 + 1.0f;
            float _3338 = max(_3328, 0.0f);
            float3 _3350 = float3(0.1599999964237213134765625f * _3312, 0.1599999964237213134765625f * ((_3316 - (_3317 * _3317)) + 1.0f), _3309 * 0.07999999821186065673828125f);
            float3 _3351 = float3(0.1599999964237213134765625f * ((_3309 * 0.5f) - _3307), 0.1599999964237213134765625f * ((_3312 - (_3313 * _3313)) + 1.0f), 0.1599999964237213134765625f * _3316) + _3350;
            float3 _3353 = float3(0.1599999964237213134765625f * _3333, 0.1599999964237213134765625f * ((_3337 - (_3338 * _3338)) + 1.0f), _3330 * 0.07999999821186065673828125f);
            float3 _3354 = float3(0.1599999964237213134765625f * ((_3330 * 0.5f) - _3328), 0.1599999964237213134765625f * ((_3333 - (_3334 * _3334)) + 1.0f), 0.1599999964237213134765625f * _3337) + _3353;
            float3 _3360 = ((_3350 / _3351) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.xxx;
            float3 _3362 = ((_3353 / _3354) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.yyy;
            float2 _3364 = _3305 * _47_m10.xy;
            float _3365 = _3360.x;
            float _3366 = _3362.x;
            float _3369 = _3360.y;
            float _3372 = _3360.z;
            float _3375 = _3362.y;
            float _3382 = _3362.z;
            float _3389 = _3351.x;
            float _3390 = _3354.x;
            float _3392 = _3351.y;
            float _3394 = _3351.z;
            float _3396 = _3354.y;
            float _3400 = _3354.z;
            float _3458 = (((((((_3389 * _3390) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3365, _3366), _380).xy, _3292)) + ((_3392 * _3390) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3369, _3366), _380).xy, _3292))) + ((_3394 * _3390) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3372, _3366), _380).xy, _3292))) + ((_3389 * _3396) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3365, _3375), _380).xy, _3292))) + ((_3392 * _3396) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3369, _3375), _380).xy, _3292))) + ((_3394 * _3396) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3372, _3375), _380).xy, _3292))) + ((_3389 * _3400) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3365, _3382), _380).xy, _3292));
            float4 _3481 = asfloat(uint4(_50.Load(_3175 * 4 + 0), _50.Load(_3178 * 4 + 0), _50.Load(_3181 * 4 + 0), _50.Load(_3184 * 4 + 0)));
            float _3482 = _3481.w;
            float2 _3484 = min(_3281, 1.0f.xx - _3281);
            _3501 = ((_43_m6[_2165].xyz * (((((_648 * _2329.x) + ((1.0f.xxx - _648) * _2329.y)) * _2724) * _43_m6[_2186].z) + (_644 * _3112))) * _2302) * ((_3162 >= 0) ? lerp(1.0f, (any(bool3(_3288.x || _3289.x, _3288.y || _3289.y, _3288.z || _3289.z)) || ((asuint(_3292) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3458 + ((_3392 * _3400) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3369, _3382), _380).xy, _3292))) + ((_3394 * _3400) * _49.SampleCmpLevelZero(_26, float3(_3364 + float2(_3372, _3382), _380).xy, _3292))), _3115 ? min(_3482, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3481.z - _3261.w) * 0.25f, min(_3484.x, _3484.y)))) : _3482) : 1.0f);
            break;
          } while (false);
          _4801 = _2125;
          _4802 = _3501 * _2265;
          break;
        }
        float _4799;
        float3 _4800;
        if (_43_m6[_2165].w < 1.5f) {
          float3 _4081 = float3(0.100000001490116119384765625f, _570, 1.0f);
          float _4090 = (0.5f + (0.5f * _43_m6[_2171].y)) - abs(_43_m6[_2171].x);
          float _4091 = _43_m6[_2171].y - _4090;
          float _4098 = abs(max((1.0f - abs(_4090)) - abs(_4091), 0.00048828125f));
          float3 _4102 = normalize(float3(_4090, _4091, (_43_m6[_2171].x >= 0.0f) ? _4098 : (-_4098)));
          float3 _4103 = _43_m6[_2168].xyz - _449;
          float _4104 = dot(_4103, _4103);
          float _4105 = rsqrt(_4104);
          float3 _4106 = _4103 * _4105;
          float _4110 = clamp(_43_m6[_2186].y * _4105, 0.0f, 1.0f);
          int _4115 = int(_43_m6[_2186].w);
          float3 _4116 = _4102 * _43_m6[_2171].z;
          float3 _4117 = _4116 * 0.5f;
          float3 _4118 = _4103 - _4117;
          float3 _4119 = _4103 + _4117;
          bool _4121 = (_2269 & 1u) == 0u;
          bool _4124 = _4121 || ((_2190 & 2u) != 0u);
          bool _4127 = (!_4121) && (_43_m6[_2171].z > 0.0f);
          float _4146;
          float _4147;
          if (_4127) {
            float _4131 = length(_4118);
            float _4132 = length(_4119);
            _4146 = clamp(0.5f * ((dot(_596, _4118) / _4131) + (dot(_596, _4119) / _4132)), 0.0f, 1.0f);
            _4147 = 1.0f / ((((_4131 * _4132) + dot(_4118, _4119)) * 0.5f) + 1.0f);
          } else {
            _4146 = clamp(dot(_596, _4106), 0.0f, 1.0f);
            _4147 = 1.0f;
          }
          float _4169;
          if (_43_m6[_2183].w < 0.0f) {
            float _4163 = _4104 * (_43_m6[_2168].w * _43_m6[_2168].w);
            float _4166 = clamp(1.0f - (_4163 * _4163), 0.0f, 1.0f);
            _4169 = lerp(1.0f / (_4104 + 1.0f), _4147, float(_4127)) * (_4166 * _4166);
          } else {
            float3 _4152 = _4103 * _43_m6[_2168].w;
            _4169 = _4147 * pow(1.0f - clamp(dot(_4152, _4152), 0.0f, 1.0f), _43_m6[_2183].w);
          }
          float _4175 = clamp((dot(_4106, -_4102) - _43_m6[_2171].z) * _43_m6[_2171].w, 0.0f, 1.0f);
          float _4179 = _4169 * lerp(1.0f, _4175 * _4175, float(_4121));
          float _4279;
          if ((!_4127) && (_4115 >= 0)) {
            uint _4185 = uint(_4115);
            float2 _4272;
            [branch] if (_4121) {
              float4 _4262 = mul(_66_m1[_4185], _453);
              _4272 = _66_m0[_4185].xy + (clamp(_4262.xy / _4262.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_4185].zw);
            }
            else {
              float3 _4199 = mul(float4(-_4103, 0.0f), _66_m1[_4185]).xyz;
              float3 _386 = _4199;
              float3 _385 = _4199;
              float3 _384 = abs(_4199);
              uint _4208 = uint(int(_384.y > _384.x));
              uint _4214 = (_384.z > _384[_4208]) ? 2u : _4208;
              uint _4220 = (_4214 * 2u) + uint(_385[_4214] < 0.0f);
              float _4224 = abs(_386[_4220 / 2u]);
              float _4244 = 0.5f - (0.000244140625f / _66_m0[_4185].w);
              _4272 = _66_m0[_4185].xy + (clamp(float2((float(_4220) + ((((_386[uint(_359[_4220].x)] * _360[_4220].x) / _4224) * _4244) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_386[uint(_359[_4220].y)] * _360[_4220].y) / _4224) * _4244)), 0.0f.xx, 1.0f.xx) * _66_m0[_4185].zw);
            }
            _4279 = _4179 * _64.SampleLevel(_23, _4272, 0.0f).x;
          } else {
            _4279 = _4179;
          }
          bool _4280 = _4279 > 0.0f;
          float _4664;
          if (_4280) {
            int _4333;
            if (_4124) {
              _4333 = int(_43_m6[_2174].x);
            } else {
              uint _4288 = asuint(_43_m6[_2171].w);
              uint _4289 = asuint(_43_m6[_2174].x);
              float3 _4290 = _449 - _43_m6[_2168].xyz;
              float3 _4291 = abs(_4290);
              float _4292 = _4291.x;
              float _4293 = _4291.y;
              float _4295 = _4291.z;
              int _4328;
              if ((_4292 > _4293) && (_4292 > _4295)) {
                _4328 = int((_4290.x > 0.0f) ? (_4288 & 1023u) : ((_4288 >> 10u) & 1023u));
              } else {
                int _4320;
                if (_4293 > _4295) {
                  _4320 = int((_4290.y > 0.0f) ? ((_4288 >> 20u) & 1023u) : (_4289 & 1023u));
                } else {
                  _4320 = int((_4290.z > 0.0f) ? ((_4289 >> 10u) & 1023u) : ((_4289 >> 20u) & 1023u));
                }
                _4328 = _4320;
              }
              _4333 = (_4328 == 1023) ? (-1) : _4328;
            }
            uint _4340 = asuint(_47_m11.x) + (uint(_4333) * 96u);
            uint _4342 = (_4340 + 64u) >> 2u;
            uint _4345 = _4342 + 1u;
            uint _4348 = _4342 + 2u;
            uint _4351 = _4342 + 3u;
            float4 _4355 = asfloat(uint4(_50.Load(_4342 * 4 + 0), _50.Load(_4345 * 4 + 0), _50.Load(_4348 * 4 + 0), _50.Load(_4351 * 4 + 0)));
            uint _4363 = _4340 >> 2u;
            uint _4378 = (_4340 + 16u) >> 2u;
            uint _4393 = (_4340 + 32u) >> 2u;
            uint _4408 = (_4340 + 48u) >> 2u;
            float4 _4428 = mul(transpose(float4x4(asfloat(uint4(_50.Load(_4363 * 4 + 0), _50.Load((_4363 + 1u) * 4 + 0), _50.Load((_4363 + 2u) * 4 + 0), _50.Load((_4363 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_4378 * 4 + 0), _50.Load((_4378 + 1u) * 4 + 0), _50.Load((_4378 + 2u) * 4 + 0), _50.Load((_4378 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_4393 * 4 + 0), _50.Load((_4393 + 1u) * 4 + 0), _50.Load((_4393 + 2u) * 4 + 0), _50.Load((_4393 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_4408 * 4 + 0), _50.Load((_4408 + 1u) * 4 + 0), _50.Load((_4408 + 2u) * 4 + 0), _50.Load((_4408 + 3u) * 4 + 0))))), float4((_449 - ((-_4106) * _4355.x)) + (_596 * (_4355.y * 5.0f)), 1.0f));
            float3 _4432 = _4428.xyz / _4428.w.xxx;
            uint _4434 = (_4340 + 80u) >> 2u;
            float4 _4447 = asfloat(uint4(_50.Load(_4434 * 4 + 0), _50.Load((_4434 + 1u) * 4 + 0), _50.Load((_4434 + 2u) * 4 + 0), _50.Load((_4434 + 3u) * 4 + 0)));
            float2 _4448 = _4432.xy;
            float2 _4450 = _4447.xy;
            float3 _4454 = _4432.xyz;
            bool3 _4455 = bool3(_4454.x <= 0.0f.xxx.x, _4454.y <= 0.0f.xxx.y, _4454.z <= 0.0f.xxx.z);
            bool3 _4456 = bool3(_4454.x >= 1.0f.xxx.x, _4454.y >= 1.0f.xxx.y, _4454.z >= 1.0f.xxx.z);
            float _4459 = _4432.z;
            float2 _4470 = ((_4448 * (_4447.zw - _4450)) + _4450).xy * _47_m10.zw;
            float2 _4472 = floor(_4470 + 0.5f.xx);
            float2 _4473 = _4470 - _4472;
            float _4474 = _4473.x;
            float _4475 = _4474 + 0.5f;
            float _4476 = _4475 * _4475;
            float _4479 = 1.0f - _4474;
            float _4480 = min(_4474, 0.0f);
            float _4483 = _4474 + 1.0f;
            float _4484 = max(_4474, 0.0f);
            float _4495 = _4473.y;
            float _4496 = _4495 + 0.5f;
            float _4497 = _4496 * _4496;
            float _4500 = 1.0f - _4495;
            float _4501 = min(_4495, 0.0f);
            float _4504 = _4495 + 1.0f;
            float _4505 = max(_4495, 0.0f);
            float3 _4517 = float3(0.1599999964237213134765625f * _4479, 0.1599999964237213134765625f * ((_4483 - (_4484 * _4484)) + 1.0f), _4476 * 0.07999999821186065673828125f);
            float3 _4518 = float3(0.1599999964237213134765625f * ((_4476 * 0.5f) - _4474), 0.1599999964237213134765625f * ((_4479 - (_4480 * _4480)) + 1.0f), 0.1599999964237213134765625f * _4483) + _4517;
            float3 _4520 = float3(0.1599999964237213134765625f * _4500, 0.1599999964237213134765625f * ((_4504 - (_4505 * _4505)) + 1.0f), _4497 * 0.07999999821186065673828125f);
            float3 _4521 = float3(0.1599999964237213134765625f * ((_4497 * 0.5f) - _4495), 0.1599999964237213134765625f * ((_4500 - (_4501 * _4501)) + 1.0f), 0.1599999964237213134765625f * _4504) + _4520;
            float3 _4527 = ((_4517 / _4518) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.xxx;
            float3 _4529 = ((_4520 / _4521) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.yyy;
            float2 _4531 = _4472 * _47_m10.xy;
            float _4532 = _4527.x;
            float _4533 = _4529.x;
            float _4536 = _4527.y;
            float _4539 = _4527.z;
            float _4542 = _4529.y;
            float _4549 = _4529.z;
            float _4556 = _4518.x;
            float _4557 = _4521.x;
            float _4559 = _4518.y;
            float _4561 = _4518.z;
            float _4563 = _4521.y;
            float _4567 = _4521.z;
            float _4625 = (((((((_4556 * _4557) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4532, _4533), _380).xy, _4459)) + ((_4559 * _4557) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4536, _4533), _380).xy, _4459))) + ((_4561 * _4557) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4539, _4533), _380).xy, _4459))) + ((_4556 * _4563) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4532, _4542), _380).xy, _4459))) + ((_4559 * _4563) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4536, _4542), _380).xy, _4459))) + ((_4561 * _4563) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4539, _4542), _380).xy, _4459))) + ((_4556 * _4567) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4532, _4549), _380).xy, _4459));
            float4 _4648 = asfloat(uint4(_50.Load(_4342 * 4 + 0), _50.Load(_4345 * 4 + 0), _50.Load(_4348 * 4 + 0), _50.Load(_4351 * 4 + 0)));
            float _4649 = _4648.w;
            float2 _4651 = min(_4448, 1.0f.xx - _4448);
            _4664 = (_4333 >= 0) ? lerp(1.0f, (any(bool3(_4455.x || _4456.x, _4455.y || _4456.y, _4455.z || _4456.z)) || ((asuint(_4459) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4625 + ((_4559 * _4567) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4536, _4549), _380).xy, _4459))) + ((_4561 * _4567) * _49.SampleCmpLevelZero(_26, float3(_4531 + float2(_4539, _4549), _380).xy, _4459))), _4124 ? min(_4649, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4648.z - _4428.w) * 0.25f, min(_4651.x, _4651.y)))) : _4649) : 1.0f;
          } else {
            _4664 = 1.0f;
          }
          float3 _4687;
          float3 _4688;
          if (_4127) {
            float3 _4667 = _4081 * _4081;
            float _4676 = dot(_1132, _4116);
            _4687 = _4667 / clamp(_4667 + (0.5f * clamp(_43_m6[_2171].z * _4105, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4688 = normalize(_4118 + (_4116 * clamp(dot(_4118, (_1132 * _4676) - _4116) / ((_43_m6[_2171].z * _43_m6[_2171].z) - (_4676 * _4676)), 0.0f, 1.0f)));
          } else {
            _4687 = 1.0f.xxx;
            _4688 = _4106;
          }
          float3 _4689 = _4688 + _486;
          float3 _4693 = _4689 * rsqrt(max(6.103515625e-05f, dot(_4689, _4689)));
          float3 _4798;
          if (_4280) {
            float _4696 = clamp(_4146, 0.0f, 1.0f);
            float _4698 = clamp(dot(_596, _4693), 0.0f, 1.0f);
            float _4700 = clamp(dot(_486, _4693), 0.0f, 1.0f);
            float _4701 = clamp(_649, 0.0f, 1.0f);
            float _4702 = _570 * _570;
            float _4712;
            if (_4110 > 0.0f) {
              _4712 = clamp(_4702 + ((_4110 * _4110) / ((_4700 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4712 = _4702;
            }
            float _4713 = _4712 * _4712;
            float _4734 = (((_4698 * _4713) - _4698) * _4698) + 1.0f;
            float _4739 = 1.0f - _4700;
            float _4740 = _4739 * _4739;
            float _4742 = (_4739 * _4740) * _4740;
            float _4766 = 1.0f - _570;
            float _4773 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4766 * (1.04997003078460693359375f + (_4766 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4766))))));
            float _4774 = 1.0f - _4773;
            float3 _4777 = _648 + ((1.0f.xxx - _648) * 0.0476190485060214996337890625f);
            float3 _4797 = ((clamp((min(((_648 * (1.0f - _4742)) + _4742.xxx) * (((_4713 / (_4734 * _4734)) * _4687.y) * (0.5f / (((_4696 * sqrt(((((-_4701) * _4713) + _4701) * _4701) + _4713)) + (_4701 * sqrt(((((-_4696) * _4713) + _4696) * _4696) + _4713))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4777 * (((_56.SampleLevel(_23, (float2(_4701, _570) * 0.96875f) + 0.015625f.xx, 0.0f).x * _56.SampleLevel(_23, (float2(_4696, _570) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4773) / _4774)) * _4777) / (1.0f.xxx - (_4777 * _4774)))) * _43_m6[_2186].z, 0.0f.xxx, 1000.0f.xxx) * _4146) + ((_644 * _4687.z) * _4146)) * (((_43_m6[_2165].xyz * _4279) * _4664) * _2265);
            _4798 = _4797;
          } else {
            _4798 = 0.0f.xxx;
          }
          _4799 = _2125;
          _4800 = _4798;
        } else {
          float _4079;
          do {
            if (_2272) {
              _4079 = 1.0f;
              break;
            }
            float _3518 = (0.5f + (0.5f * _43_m6[_2171].y)) - abs(_43_m6[_2171].x);
            float _3519 = _43_m6[_2171].y - _3518;
            float _3526 = abs(max((1.0f - abs(_3518)) - abs(_3519), 0.00048828125f));
            float3 _3530 = normalize(float3(_3518, _3519, (_43_m6[_2171].x >= 0.0f) ? _3526 : (-_3526)));
            float3 _3531 = _43_m6[_2168].xyz - _449;
            float _3532 = dot(_3531, _3531);
            float3 _3534 = _3531 * rsqrt(_3532);
            int _3537 = int(_43_m6[_2186].w);
            float3 _3539 = (_3530 * _43_m6[_2171].z) * 0.5f;
            float3 _3540 = _3531 - _3539;
            float3 _3541 = _3531 + _3539;
            bool _3543 = (_2269 & 1u) == 0u;
            bool _3546 = _3543 || ((_2190 & 2u) != 0u);
            bool _3549 = (!_3543) && (_43_m6[_2171].z > 0.0f);
            float _3561;
            if (_3549) {
              _3561 = 1.0f / ((((length(_3540) * length(_3541)) + dot(_3540, _3541)) * 0.5f) + 1.0f);
            } else {
              _3561 = 1.0f;
            }
            float _3583;
            if (_43_m6[_2183].w < 0.0f) {
              float _3577 = _3532 * (_43_m6[_2168].w * _43_m6[_2168].w);
              float _3580 = clamp(1.0f - (_3577 * _3577), 0.0f, 1.0f);
              _3583 = lerp(1.0f / (_3532 + 1.0f), _3561, float(_3549)) * (_3580 * _3580);
            } else {
              float3 _3566 = _3531 * _43_m6[_2168].w;
              _3583 = _3561 * pow(1.0f - clamp(dot(_3566, _3566), 0.0f, 1.0f), _43_m6[_2183].w);
            }
            float _3589 = clamp((dot(_3534, -_3530) - _43_m6[_2171].z) * _43_m6[_2171].w, 0.0f, 1.0f);
            float _3593 = _3583 * lerp(1.0f, _3589 * _3589, float(_3543));
            float _3693;
            if ((!_3549) && (_3537 >= 0)) {
              uint _3599 = uint(_3537);
              float2 _3686;
              [branch] if (_3543) {
                float4 _3676 = mul(_66_m1[_3599], _453);
                _3686 = _66_m0[_3599].xy + (clamp(_3676.xy / _3676.w.xx, 0.0f.xx, 1.0f.xx) * _66_m0[_3599].zw);
              }
              else {
                float3 _3613 = mul(float4(-_3531, 0.0f), _66_m1[_3599]).xyz;
                float3 _389 = _3613;
                float3 _388 = _3613;
                float3 _387 = abs(_3613);
                uint _3622 = uint(int(_387.y > _387.x));
                uint _3628 = (_387.z > _387[_3622]) ? 2u : _3622;
                uint _3634 = (_3628 * 2u) + uint(_388[_3628] < 0.0f);
                float _3638 = abs(_389[_3634 / 2u]);
                float _3658 = 0.5f - (0.000244140625f / _66_m0[_3599].w);
                _3686 = _66_m0[_3599].xy + (clamp(float2((float(_3634) + ((((_389[uint(_359[_3634].x)] * _360[_3634].x) / _3638) * _3658) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_359[_3634].y)] * _360[_3634].y) / _3638) * _3658)), 0.0f.xx, 1.0f.xx) * _66_m0[_3599].zw);
              }
              _3693 = _3593 * _64.SampleLevel(_23, _3686, 0.0f).x;
            } else {
              _3693 = _3593;
            }
            float _4078;
            if (_3693 > 0.0f) {
              int _3747;
              if (_3546) {
                _3747 = int(_43_m6[_2174].x);
              } else {
                uint _3702 = asuint(_43_m6[_2171].w);
                uint _3703 = asuint(_43_m6[_2174].x);
                float3 _3704 = _449 - _43_m6[_2168].xyz;
                float3 _3705 = abs(_3704);
                float _3706 = _3705.x;
                float _3707 = _3705.y;
                float _3709 = _3705.z;
                int _3742;
                if ((_3706 > _3707) && (_3706 > _3709)) {
                  _3742 = int((_3704.x > 0.0f) ? (_3702 & 1023u) : ((_3702 >> 10u) & 1023u));
                } else {
                  int _3734;
                  if (_3707 > _3709) {
                    _3734 = int((_3704.y > 0.0f) ? ((_3702 >> 20u) & 1023u) : (_3703 & 1023u));
                  } else {
                    _3734 = int((_3704.z > 0.0f) ? ((_3703 >> 10u) & 1023u) : ((_3703 >> 20u) & 1023u));
                  }
                  _3742 = _3734;
                }
                _3747 = (_3742 == 1023) ? (-1) : _3742;
              }
              uint _3754 = asuint(_47_m11.x) + (uint(_3747) * 96u);
              uint _3756 = (_3754 + 64u) >> 2u;
              uint _3759 = _3756 + 1u;
              uint _3762 = _3756 + 2u;
              uint _3765 = _3756 + 3u;
              float4 _3769 = asfloat(uint4(_50.Load(_3756 * 4 + 0), _50.Load(_3759 * 4 + 0), _50.Load(_3762 * 4 + 0), _50.Load(_3765 * 4 + 0)));
              uint _3777 = _3754 >> 2u;
              uint _3792 = (_3754 + 16u) >> 2u;
              uint _3807 = (_3754 + 32u) >> 2u;
              uint _3822 = (_3754 + 48u) >> 2u;
              float4 _3842 = mul(transpose(float4x4(asfloat(uint4(_50.Load(_3777 * 4 + 0), _50.Load((_3777 + 1u) * 4 + 0), _50.Load((_3777 + 2u) * 4 + 0), _50.Load((_3777 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3792 * 4 + 0), _50.Load((_3792 + 1u) * 4 + 0), _50.Load((_3792 + 2u) * 4 + 0), _50.Load((_3792 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3807 * 4 + 0), _50.Load((_3807 + 1u) * 4 + 0), _50.Load((_3807 + 2u) * 4 + 0), _50.Load((_3807 + 3u) * 4 + 0))), asfloat(uint4(_50.Load(_3822 * 4 + 0), _50.Load((_3822 + 1u) * 4 + 0), _50.Load((_3822 + 2u) * 4 + 0), _50.Load((_3822 + 3u) * 4 + 0))))), float4((_449 - ((-_3534) * _3769.x)) + (_596 * (_3769.y * 5.0f)), 1.0f));
              float3 _3846 = _3842.xyz / _3842.w.xxx;
              uint _3848 = (_3754 + 80u) >> 2u;
              float4 _3861 = asfloat(uint4(_50.Load(_3848 * 4 + 0), _50.Load((_3848 + 1u) * 4 + 0), _50.Load((_3848 + 2u) * 4 + 0), _50.Load((_3848 + 3u) * 4 + 0)));
              float2 _3862 = _3846.xy;
              float2 _3864 = _3861.xy;
              float3 _3868 = _3846.xyz;
              bool3 _3869 = bool3(_3868.x <= 0.0f.xxx.x, _3868.y <= 0.0f.xxx.y, _3868.z <= 0.0f.xxx.z);
              bool3 _3870 = bool3(_3868.x >= 1.0f.xxx.x, _3868.y >= 1.0f.xxx.y, _3868.z >= 1.0f.xxx.z);
              float _3873 = _3846.z;
              float2 _3884 = ((_3862 * (_3861.zw - _3864)) + _3864).xy * _47_m10.zw;
              float2 _3886 = floor(_3884 + 0.5f.xx);
              float2 _3887 = _3884 - _3886;
              float _3888 = _3887.x;
              float _3889 = _3888 + 0.5f;
              float _3890 = _3889 * _3889;
              float _3893 = 1.0f - _3888;
              float _3894 = min(_3888, 0.0f);
              float _3897 = _3888 + 1.0f;
              float _3898 = max(_3888, 0.0f);
              float _3909 = _3887.y;
              float _3910 = _3909 + 0.5f;
              float _3911 = _3910 * _3910;
              float _3914 = 1.0f - _3909;
              float _3915 = min(_3909, 0.0f);
              float _3918 = _3909 + 1.0f;
              float _3919 = max(_3909, 0.0f);
              float3 _3931 = float3(0.1599999964237213134765625f * _3893, 0.1599999964237213134765625f * ((_3897 - (_3898 * _3898)) + 1.0f), _3890 * 0.07999999821186065673828125f);
              float3 _3932 = float3(0.1599999964237213134765625f * ((_3890 * 0.5f) - _3888), 0.1599999964237213134765625f * ((_3893 - (_3894 * _3894)) + 1.0f), 0.1599999964237213134765625f * _3897) + _3931;
              float3 _3934 = float3(0.1599999964237213134765625f * _3914, 0.1599999964237213134765625f * ((_3918 - (_3919 * _3919)) + 1.0f), _3911 * 0.07999999821186065673828125f);
              float3 _3935 = float3(0.1599999964237213134765625f * ((_3911 * 0.5f) - _3909), 0.1599999964237213134765625f * ((_3914 - (_3915 * _3915)) + 1.0f), 0.1599999964237213134765625f * _3918) + _3934;
              float3 _3941 = ((_3931 / _3932) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.xxx;
              float3 _3943 = ((_3934 / _3935) + float3(-2.5f, -0.5f, 1.5f)) * _47_m10.yyy;
              float2 _3945 = _3886 * _47_m10.xy;
              float _3946 = _3941.x;
              float _3947 = _3943.x;
              float _3950 = _3941.y;
              float _3953 = _3941.z;
              float _3956 = _3943.y;
              float _3963 = _3943.z;
              float _3970 = _3932.x;
              float _3971 = _3935.x;
              float _3973 = _3932.y;
              float _3975 = _3932.z;
              float _3977 = _3935.y;
              float _3981 = _3935.z;
              float _4039 = (((((((_3970 * _3971) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3946, _3947), _380).xy, _3873)) + ((_3973 * _3971) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3950, _3947), _380).xy, _3873))) + ((_3975 * _3971) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3953, _3947), _380).xy, _3873))) + ((_3970 * _3977) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3946, _3956), _380).xy, _3873))) + ((_3973 * _3977) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3950, _3956), _380).xy, _3873))) + ((_3975 * _3977) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3953, _3956), _380).xy, _3873))) + ((_3970 * _3981) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3946, _3963), _380).xy, _3873));
              float4 _4062 = asfloat(uint4(_50.Load(_3756 * 4 + 0), _50.Load(_3759 * 4 + 0), _50.Load(_3762 * 4 + 0), _50.Load(_3765 * 4 + 0)));
              float _4063 = _4062.w;
              float2 _4065 = min(_3862, 1.0f.xx - _3862);
              _4078 = (_3747 >= 0) ? lerp(1.0f, (any(bool3(_3869.x || _3870.x, _3869.y || _3870.y, _3869.z || _3870.z)) || ((asuint(_3873) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4039 + ((_3973 * _3981) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3950, _3963), _380).xy, _3873))) + ((_3975 * _3981) * _49.SampleCmpLevelZero(_26, float3(_3945 + float2(_3953, _3963), _380).xy, _3873))), _3546 ? min(_4063, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4062.z - _3842.w) * 0.25f, min(_4065.x, _4065.y)))) : _4063) : 1.0f;
            } else {
              _4078 = 1.0f;
            }
            _4079 = _4078;
            break;
          } while (false);
          _4799 = _2125 * _4079;
          _4800 = 0.0f.xxx;
        }
        _4801 = _4799;
        _4802 = _4800;
        break;
      } while (false);
      _2150 = _4801;
      _2153 = _2152 + _4802;
    }
    _2122 = _2121 + _2152;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x85203400:
  float3 _4808 = ((((float3(_1111, _1116, _1121) * _644) * lerp(1.0f, _541, _37_m4)) * _18_m22.x) + ((((_1405 * _18_m23.z) * _18_m22.y) * ((_648 * _663.x) + (clamp(50.0f * _648.y, 0.0f, 1.0f) * _663.y).xxx)) * 1.0f)) + (_2096.xyz + (_2121 * _2124)).xyz;
  */
  float3 _4808 = ((((float3(_1111, _1116, _1121) * (_644 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _541, _37_m4)) * _18_m22.x) + (((((_1405 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_648 * _663.x) + (clamp(50.0f * _648.y, 0.0f, 1.0f) * _663.y).xxx)) * 1.0f)) + (_2096.xyz + ((_2121 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2124)).xyz;
  // RenoDX code end
  float4 _4809 = float4(_4808.x, _4808.y, _4808.z, _381.w);
  _4809.w = _565;
  float _4826 = _449.y * _18_m46.w;
  float _4831 = max(0.00999999977648258209228515625f, _4826 + _18_m47.w);
  float3 _4845 = exp(_18_m45.xyz * ((-max(0.0f, (_487 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4831)) / _4831) * exp(_4826 + _18_m48.w))));
  float _4848 = dot(_1131, _18_m44.xyz);
  float _4854 = _18_m45.w * _18_m45.w;
  float _4858 = (1.0f + _4854) - ((2.0f * _18_m45.w) * _4848);
  float3 _5190;
  float _5191;
  if (_18_m55.z > 0.0f) {
    uint3 _5016 = (uint3(int3(int(_703.x), int(_703.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5017 = _5016.y;
    uint _5018 = _5016.z;
    uint _5021 = _5016.x + (_5017 * _5018);
    uint _5023 = _5017 + (_5018 * _5021);
    uint _5025 = _5018 + (_5021 * _5023);
    uint _5027 = _5021 + (_5023 * _5025);
    float _5051 = dot(_1131, -_16_m0[2].xyz);
    float3 _5061 = _449 - _16_m11.xyz;
    float _5063 = (_18_m55.w * ((_5051 > 5.9604644775390625e-08f) ? (1.0f / _5051) : 0.0f)) * (1.0f / _487);
    float _5064 = _5061.y;
    float _5065 = _5063 * _5064;
    float _5067 = _16_m11.y + _5065;
    float _5068 = _5064 - _5065;
    float _5070 = (1.0f - _5063) * _487;
    float _5084 = max(-127.0f, _18_m49.z * _5068);
    float _5108 = max(-127.0f, _18_m52.x * _5068);
    float _5119 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5067 - _18_m49.x)))) * ((abs(_5084) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5084)) / _5084) : (0.693147182464599609375f - (0.2402265071868896484375f * _5084)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5067 - _18_m52.z)))) * ((abs(_5108) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5108)) / _5108) : (0.693147182464599609375f - (0.2402265071868896484375f * _5108))));
    float _5141 = clamp((_487 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5144 = clamp((max(clamp(exp2(-(_5119 * _5070)), 0.0f, 1.0f), _18_m51.w) + clamp((_487 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5141, 0.0f, 1.0f);
    float4 _5184 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_23, float3((_1141 + ((((float3(uint3(_5027, _5023 + (_5025 * _5027), _382) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_704 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_704 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5190 = _5184.xyz + (((_18_m51.xyz * (1.0f - _5144)) + (((_18_m54.xyz * pow(clamp(dot(_486, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5119 * max(_5070 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5141))) * _5184.w);
    _5191 = _5184.w * _5144;
  } else {
    float3 _4888 = _449 - _16_m11.xyz;
    float _4890 = _4888.y;
    float _4904 = max(-127.0f, _18_m49.z * _4890);
    float _4928 = max(-127.0f, _18_m52.x * _4890);
    float _4939 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_4904) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4904)) / _4904) : (0.693147182464599609375f - (0.2402265071868896484375f * _4904)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_4928) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4928)) / _4928) : (0.693147182464599609375f - (0.2402265071868896484375f * _4928))));
    float _4961 = clamp((_487 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _4964 = clamp((max(clamp(exp2(-(_4939 * _487)), 0.0f, 1.0f), _18_m51.w) + clamp((_487 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _4961, 0.0f, 1.0f);
    _5190 = (_18_m51.xyz * (1.0f - _4964)) + (((_18_m54.xyz * pow(clamp(dot(_486, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_4939 * max(_487 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4961));
    _5191 = _4964;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x85203400:
  float3 _5197 = ((_4809.xyz * (_4845 * _5191)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4848 * _4848)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4854) / max((12.56637096405029296875f * _4858) * sqrt(_4858), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4845)) * _5191) + _5190)).xyz;
  */
  float3 _5197 = ((_4809.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4845 * _5191)) : (_4845 * _5191))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4848 * _4848)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4854) / max((12.56637096405029296875f * _4858) * sqrt(_4858), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4845)) * _5191 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5190 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5207 = lerp(dot(_5197, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5197, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5217 = min(lerp(((sqrt(sqrt(abs(_616 * 0.5f))) * float2(int2(sign(_616)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _603.xx), 1.0f.xx);
  float4 _5218 = float4(_5217.x, _5217.y, _381.z, _381.w);
  _5218.z = float(clamp(max(dot(_5207.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _565, _565) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5218.w = lerp(0.0f, 0.699999988079071044921875f, _603);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x85203400:
  _13 = float4(_5207.x, _5207.y, _5207.z, _4809.w);
  */
  float3 renodx_output_color = float3(_5207.x, _5207.y, _5207.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4809.w);
  // RenoDX code end
  _14 = _5218;
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

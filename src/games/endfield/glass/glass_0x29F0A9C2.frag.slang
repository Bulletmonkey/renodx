#include "../shared.h"

// Ported from the native 0x29F0A9C2 Vulkan dump.
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
  float2 _414 = gl_FragCoord.xy * _18_m0.zw;
  float2 _417 = (_414 * 2.0f) - 1.0f.xx;
  float4 _420 = float4(_417, gl_FragCoord.z, 1.0f);
  _420.y = -_417.y;
  float4 _423 = mul(_16_m6, _420);
  float3 _427 = _423.xyz / _423.w.xxx;
  float4 _431 = float4(_427, 1.0f);
  float _434 = abs(mul(_16_m0, _431).z);
  float _438 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _460;
  do {
    if (_18_m4.w == 0.0f) {
      _460 = _16_m11.xyz - _427;
      break;
    } else {
      _460 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _461 = dot(_460, _460);
  float _463 = rsqrt(max(_461, 9.9999999392252902907785028219223e-09f));
  float3 _464 = _460 * _463;
  float _465 = _461 * _463;
  float2 _486 = (lerp(_4, _5, _45_m12.xx) * _45_m36.xy) + _45_m36.zw;
  float4 _500 = _34.SampleBias(_35, (lerp(_4, _5, _45_m11.xx) * _45_m35.xy) + _45_m35.zw, _18_m16);
  float4 _504 = _36.SampleBias(_37, _486, _45_m13 + _18_m16);
  _504.w = _504.w * _504.x;
  float2 _512 = ((_504.wy * 2.0f) - 1.0f.xx).xy;
  float2 _518 = _512 * _45_m0;
  float4 _520 = _38.SampleBias(_39, _486, _18_m16);
  float3 _535 = lerp(clamp((_500.xyz * _45_m32.xyz) * _45_m18, 0.0f.xxx, 1.0f.xxx), _45_m32.xyz, _45_m16.xxx);
  float _539 = _500.w * _45_m32.w;
  float _545 = lerp(_539, _539 * _8.x, _45_m56);
  float _550 = lerp(_45_m2, _45_m3, _520.y);
  float _560 = lerp(_520.x, _45_m17, clamp(_45_m15 - 1.0f, 0.0f, 1.0f));
  float3 _574 = ((_7.xyz * _518.x) + ((cross(_6, float4(_7.xyz, _438).xyz) * _438) * _518.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_512, _512), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_45_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _578 = _574 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_574, _574)));
  float _604 = dot(_578, _464);
  float3 _605 = -_464;
  float2 _633 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_605, _578, _45_m48) * lerp(_45_m49, _45_m49 / max(gl_FragCoord.z * _604, 0.5f), _45_m50)).xy, ((_41.SampleBias(_42, (_4 * _45_m55.xy) + _45_m55.zw, _18_m16) * 2.0f) - 1.0f.xxxx).xy * _45_m47, _45_m46.xx).xy;
  float2 _634 = _414 + _633;
  float2 _636 = _414 + (_633 * 0.25f);
  float4 _640 = _29.SampleBias(_23, _634, _18_m16);
  float4 _652 = _29.SampleBias(_23, _636, _18_m16);
  float4 _664 = _40.SampleBias(_43, lerp(lerp(_414, _636, step(_434, 1.0f / ((_18_m2.z * _652.x) + _18_m2.w)).xx), _634, step(_434, 1.0f / ((_18_m2.z * _640.x) + _18_m2.w)).xx), _18_m16);
  float _682 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _695 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _695.y = -_695.y;
  float _721 = 0.07999999821186065673828125f * _45_m1;
  float3 _722 = _535 * _560;
  float3 _723 = _535 - _722;
  float3 _727 = (_721 - (_721 * _560)).xxx + _722;
  float4 _730 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _550) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _731 = _730.x;
  float2 _741 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_731 * _731, exp2((-9.27999973297119140625f) * max(0.0f, _604))) * _731) + _730.y)) + _730.zw;
  uint2 _777;
  float _778;
  if (_18_m24.y == 1.0f) {
    float4 _758 = mul(_18_m138, _431);
    float4 _761 = _758;
    _761.y = -_758.y;
    float4 _764 = _761 * (1.0f / _758.w);
    _777 = uint2(clamp(((_764.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _778 = 1.0f / ((_18_m2.z * _764.z) + _18_m2.w);
  } else {
    _777 = uint2(gl_FragCoord.xy);
    _778 = _434;
  }
  float3 _780 = _427 + (_578 * 0.25f);
  float3 _790 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _799 = _780 - (_18_m108.xyz + (_790 * (-_18_m110.w)));
  float _814 = max(min(max((max(abs(_799.x), abs(_799.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_799.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1116;
  float4 _1117;
  float4 _1118;
  float _1119;
  float _1120;
  if ((_18_m108.w != 0.0f) && (_814 < 1.0f)) {
    float3 _827 = _780 - (_18_m108.xyz + (_790 * (-_18_m110.y)));
    float _841 = max(clamp((max(abs(_827.x), abs(_827.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_827.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _917;
    float4 _918;
    float4 _919;
    float4 _920;
    if (_841 < 1.0f) {
      float3 _850 = ((_780 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _852 = _850 - floor(_850);
      float4 _856 = _65.SampleLevel(_25, _852, 0.0f);
      float _857 = 1.0f - _841;
      float _861 = _18_m109.y * 0.5f;
      float _866 = _852.x;
      float _867 = clamp(_852.y, _861, 1.0f - _861) * 0.3333333432674407958984375f;
      float _868 = _852.z;
      float4 _871 = _66.SampleLevel(_24, float3(_866, _867, _868), 0.0f);
      _917 = _814 + (_871.w * _857);
      _918 = float4(((_66.SampleLevel(_24, float3(_866, _867 + 0.666666686534881591796875f, _868), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _856.z, _856.z) * _857;
      _919 = float4(((_66.SampleLevel(_24, float3(_866, _867 + 0.3333333432674407958984375f, _868), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _856.y, _856.y) * _857;
      _920 = float4(((_871.xyz * 4.0f) - 2.0f.xxx) * _856.x, _856.x) * _857;
    } else {
      _917 = _814;
      _918 = 0.0f.xxxx;
      _919 = 0.0f.xxxx;
      _920 = 0.0f.xxxx;
    }
    float3 _926 = _780 - (_18_m108.xyz + (_790 * (-_18_m110.z)));
    float _940 = max(clamp((max(abs(_926.x), abs(_926.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_926.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1020;
    float4 _1021;
    float4 _1022;
    float4 _1023;
    if (_940 < 1.0f) {
      float3 _949 = ((_780 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _951 = _949 - floor(_949);
      float4 _955 = _67.SampleLevel(_25, _951, 0.0f);
      float _957 = _841 * (1.0f - _940);
      float _961 = _18_m109.y * 0.5f;
      float _966 = _951.x;
      float _967 = clamp(_951.y, _961, 1.0f - _961) * 0.3333333432674407958984375f;
      float _968 = _951.z;
      float4 _971 = _68.SampleLevel(_24, float3(_966, _967, _968), 0.0f);
      _1020 = _917 + (_971.w * _957);
      _1021 = _918 + (float4(((_68.SampleLevel(_24, float3(_966, _967 + 0.666666686534881591796875f, _968), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _955.z, _955.z) * _957);
      _1022 = _919 + (float4(((_68.SampleLevel(_24, float3(_966, _967 + 0.3333333432674407958984375f, _968), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _955.y, _955.y) * _957);
      _1023 = _920 + (float4(((_971.xyz * 4.0f) - 2.0f.xxx) * _955.x, _955.x) * _957);
    } else {
      _1020 = _917;
      _1021 = _918;
      _1022 = _919;
      _1023 = _920;
    }
    float4 _1106;
    float4 _1107;
    float4 _1108;
    float _1109;
    if (_940 > 0.0f) {
      float3 _1032 = ((_780 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1035 = _18_m109.xyz * 0.5f;
      float3 _1037 = clamp(_1032 - floor(_1032), _1035, 1.0f.xxx - _1035);
      float4 _1041 = _69.SampleLevel(_25, _1037, 0.0f);
      float _1043 = _940 * (1.0f - _814);
      float _1047 = _18_m109.y * 0.5f;
      float _1053 = clamp(_1037.y, _1047, 1.0f - _1047) * 0.3333333432674407958984375f;
      float4 _1057 = _70.SampleLevel(_24, float3(_1037.x, _1053, _1037.z), 0.0f);
      float _1073 = _1041.x;
      float _1084 = _1041.y;
      float _1095 = _1041.z;
      _1106 = _1021 + (float4(((_70.SampleLevel(_24, float3(_1037.x, _1053 + 0.666666686534881591796875f, _1037.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1095, _1095) * _1043);
      _1107 = _1022 + (float4(((_70.SampleLevel(_24, float3(_1037.x, _1053 + 0.3333333432674407958984375f, _1037.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1084, _1084) * _1043);
      _1108 = _1023 + (float4(((_1057.xyz * 4.0f) - 2.0f.xxx) * _1073, _1073) * _1043);
      _1109 = _1020 + (_1057.w * _1043);
    } else {
      _1106 = _1021;
      _1107 = _1022;
      _1108 = _1023;
      _1109 = _1020;
    }
    float _1112 = clamp((_1109 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1116 = _1106;
    _1117 = _1107;
    _1118 = _1108;
    _1119 = _1112 - _814;
    _1120 = (_1112 + _814) * 0.5f;
  } else {
    _1116 = 0.0f.xxxx;
    _1117 = 0.0f.xxxx;
    _1118 = 0.0f.xxxx;
    _1119 = 0.0f;
    _1120 = 1.0f;
  }
  float4 _1140 = _1118 + float4(_18_m111.x * _1120, (_18_m111.y * _1120) + ((_18_m111.w * _1119) * 0.5f), _18_m111.z * _1120, (_18_m111.w * _1120) + ((_18_m111.y * _1119) * 0.375f));
  float4 _1160 = _1117 + float4(_18_m112.x * _1120, (_18_m112.y * _1120) + ((_18_m112.w * _1119) * 0.5f), _18_m112.z * _1120, (_18_m112.w * _1120) + ((_18_m112.y * _1119) * 0.375f));
  float4 _1180 = _1116 + float4(_18_m113.x * _1120, (_18_m113.y * _1120) + ((_18_m113.w * _1119) * 0.5f), _18_m113.z * _1120, (_18_m113.w * _1120) + ((_18_m113.y * _1119) * 0.375f));
  float _1185 = max(0.0f, dot(_1140.xyz, _578) + _1140.w);
  float _1190 = max(0.0f, dot(_1160.xyz, _578) + _1160.w);
  float _1195 = max(0.0f, dot(_1180.xyz, _578) + _1180.w);
  float3 _1205 = reflect(_605, _578);
  float _1213 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_550, 0.001000000047497451305389404296875f))));
  float2 _1214 = float2(_777);
  float2 _1218 = floor(_1214 * _48_m0.w);
  float _1235 = floor(_778 - _48_m2.y);
  float _1239 = clamp(_1235, 0.0f, _48_m1.x - 1.0f);
  uint _1249 = (_1235 <= _1239) ? (_33.Load(uint(_18_m21.z + int(_1218.x + (_1218.y * _48_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1239)) * 4 + 0)) : 0u;
  float _1252 = dot(float4(_1185, _1190, _1195, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1254;
  float _1257;
  uint _1259;
  _1254 = 0.0f.xxx;
  _1257 = 1.0f;
  _1259 = _1249;
  uint _1260;
  float3 _1255;
  float _1258;
  bool _1262;
  [loop] for (;;) {
    bool _1261 = _1259 != 0u;
    _1262 = _1257 > 0.00999999977648258209228515625f;
    if (_1261 && _1262) {
      uint _1266 = firstbitlow(_1259);
      _1260 = _1259 ^ (1u << (_1266 & 31u));
      float3 _1286 = float3(dot(_48_m4[_1266]._m2, _431), dot(_48_m4[_1266]._m3, _431), dot(_48_m4[_1266]._m4, _431));
      float3 _1287 = abs(_1286);
      if (all(bool3(_1287.x <= _48_m4[_1266]._m1.xyz.x, _1287.y <= _48_m4[_1266]._m1.xyz.y, _1287.z <= _48_m4[_1266]._m1.xyz.z))) {
        float3 _1296 = _48_m4[_1266]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1298 = _1287 * 0.100000001490116119384765625f;
        float3 _1299 = _1298 * _1298;
        float3 _1302 = (_48_m4[_1266]._m1.xyz - _1287) * _48_m4[_1266]._m5.xyz;
        float3 _1350;
        [branch] if (_48_m4[_1266]._m6.x == 1.0f) {
          float3 _1335 = float3(dot(_48_m4[_1266]._m2.xyz, _1205), dot(_48_m4[_1266]._m3.xyz, _1205), dot(_48_m4[_1266]._m4.xyz, _1205));
          float3 _1337 = (_48_m4[_1266]._m1.xyz - _1286) / _1335;
          float3 _1340 = ((-_48_m4[_1266]._m1.xyz) - _1286) / _1335;
          bool3 _1341 = bool3(_1335.x > 0.0f.xxx.x, _1335.y > 0.0f.xxx.y, _1335.z > 0.0f.xxx.z);
          float3 _1342 = float3(_1341.x ? _1337.x : _1340.x, _1341.y ? _1337.y : _1340.y, _1341.z ? _1337.z : _1340.z);
          _1350 = _1286 + (_1335 * min(min(_1342.x, _1342.y), _1342.z));
        }
        else {
          _1350 = _1205;
        }
        float3 _1351 = normalize(_1350);
        float3 _1354 = float3(int3(sign(_1351)));
        float3 _1357 = _1351 / dot(_1351, _1354).xxx;
        float3 _1371;
        if (_1357.z < 0.0f) {
          float3 _1362 = abs(_1357);
          float2 _1369 = _1354.xy * float2(1.0f - _1362.y, 1.0f - _1362.x);
          _1371 = float3(_1369.x, _1369.y, _1357.z);
        } else {
          _1371 = _1357;
        }
        float _1396 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m4[_1266]._m0, float4(_578, 1.0f))));
        float _1409 = clamp((min(_1302.x, min(_1302.y, _1302.z)) * _48_m4[_1266]._m6.y) + ((((((_1296 * _1296).x - ((_1299.x + _1299.y) + _1299.z)) * _48_m4[_1266]._m5.x) * _48_m4[_1266]._m5.x) * (1.0f - _48_m4[_1266]._m6.y)) * 100.0f), 0.0f, 1.0f) * _48_m4[_1266]._m6.w;
        _1255 = _1254 + ((((_31.SampleLevel(_26, float3((((_1371.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, _48_m4[_1266]._m1.w), _1213).xyz * _48_m4[_1266]._m5.w) * ((((((clamp(abs(_1252 / _1396), 0.0f, 1.0f) * 2.0f) + _1252) / (2.0f + _1396)) - 1.0f) * _18_m23.w) + 1.0f)) * _1409) * _1257);
        _1258 = _1257 * (1.0f - _1409);
      } else {
        _1255 = _1254;
        _1258 = _1257;
      }
      _1254 = _1255;
      _1257 = _1258;
      _1259 = _1260;
      continue;
    } else {
      break;
    }
  }
  float3 _1478;
  if (_1262) {
    float3 _1417 = normalize(_1205);
    float3 _1420 = float3(int3(sign(_1417)));
    float3 _1423 = _1417 / dot(_1417, _1420).xxx;
    float3 _1437;
    if (_1423.z < 0.0f) {
      float3 _1428 = abs(_1423);
      float2 _1435 = _1420.xy * float2(1.0f - _1428.y, 1.0f - _1428.x);
      _1437 = float3(_1435.x, _1435.y, _1423.z);
    } else {
      _1437 = _1423;
    }
    float _1464 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_48_m3, float4(_578, 1.0f))));
    _1478 = _1254 + ((_31.SampleLevel(_26, float3((((_1437.xy * 0.5f) + 0.5f.xx) * _48_m1.w) + _48_m2.w.xx, 0.0f), _1213).xyz * ((((((clamp(abs(_1252 / _1464), 0.0f, 1.0f) * 2.0f) + _1252) / (2.0f + _1464)) - 1.0f) * _18_m23.w) + 1.0f)) * _1257);
  } else {
    _1478 = _1254;
  }
  float4 _2173;
  do {
    [branch] if (_52_m4 == 0) {
      _2173 = 0.0f.xxxx;
      break;
    }
    float2 _2028;
    do {
      if (_54_m7.w >= 0.9900000095367431640625f) {
        _2028 = float2(_54_m7.z, 1.0f);
        break;
      }
      int _1507 = int(_54_m7.x);
      bool3 _1509 = (_1507 == 2).xxx;
      float3 _1517 = _427 - float3(_1509.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1509.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1509.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
      float _1528 = max(clamp((_54_m6.w - dot(_1517, _1517)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
      float _1745;
      bool _1746;
      if (_1528 > 0.0f) {
        float _1743;
        bool _1744;
        if (_1507 > 0) {
          float3 _1535 = _427 - _54_m1[0].xyz;
          float3 _1539 = _427 - _54_m1[1].xyz;
          float3 _1543 = _427 - _54_m1[2].xyz;
          float3 _1547 = _427 - _54_m1[3].xyz;
          float4 _1552 = float4(dot(_1535, _1535), dot(_1539, _1539), dot(_1543, _1543), dot(_1547, _1547));
          float4 _1561 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
          float4 _1563 = float4(bool4(_1552.x < _1561.x, _1552.y < _1561.y, _1552.z < _1561.z, _1552.w < _1561.w));
          float3 _1567 = clamp(_1563.yzw - _1563.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1571 = clamp(4.0f - dot(float4(_1563.x, _1567.x, _1567.y, _1567.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1573 = clamp(_1571 + 1.0f, 0.0f, 3.0f);
          uint _1574 = uint(_1571);
          uint _1582 = uint(_1573);
          float _1588 = dot(_1552, _364[_1582]) / _54_m1[_1582].w;
          float _1605;
          if (((_1573 > _1571) && (_1588 >= 0.0f)) && (_1588 <= 1.0f)) {
            _1605 = _1571 + step(frac(52.98291778564453125f * frac(dot(_1214 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1552, _364[_1574]) / _54_m1[_1574].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1605 = _1571;
          }
          float _1606 = clamp(_1605, 0.0f, 4.0f);
          float4 _1610 = mul(_54_m0[uint(_1606)], _431);
          float _1613 = _1610.z;
          float4 _1614 = float4(_1610.xy, _1613, _1606);
          float3 _1615 = _1614.xyz;
          bool3 _1616 = bool3(_1615.x <= 0.0f.xxx.x, _1615.y <= 0.0f.xxx.y, _1615.z <= 0.0f.xxx.z);
          bool3 _1617 = bool3(_1615.x >= 1.0f.xxx.x, _1615.y >= 1.0f.xxx.y, _1615.z >= 1.0f.xxx.z);
          bool _1623 = any(bool3(_1616.x || _1617.x, _1616.y || _1617.y, _1616.z || _1617.z)) || ((asuint(_1613) & 2147483647u) > 2139095040u);
          int _1624 = int(_1606);
          float2 _1641 = float4(_54_m3[_1624].xy + (_1614.xy * _54_m3[_1624].zw), _1613, _1606).xy * _54_m4.zw;
          float2 _1643 = floor(_1641 + 0.5f.xx);
          float2 _1644 = _1641 - _1643;
          float _1645 = _1644.x;
          float _1646 = _1645 + 0.5f;
          float _1648 = (_1646 * _1646) * 0.5f;
          float _1651 = min(_1645, 0.0f);
          float _1655 = max(_1645, 0.0f);
          float4 _1659 = float4(_1648 - _1645, (1.0f - _1645) - (_1651 * _1651), (_1645 + 1.0f) - (_1655 * _1655), _1648) * 0.44444000720977783203125f;
          float _1660 = _1644.y;
          float _1661 = _1660 + 0.5f;
          float _1663 = (_1661 * _1661) * 0.5f;
          float _1666 = min(_1660, 0.0f);
          float _1670 = max(_1660, 0.0f);
          float4 _1674 = float4(_1663 - _1660, (1.0f - _1660) - (_1666 * _1666), (_1660 + 1.0f) - (_1670 * _1670), _1663) * 0.44444000720977783203125f;
          float2 _1676 = _1659.yw;
          float2 _1677 = _1659.xz + _1676;
          float2 _1679 = _1674.yw;
          float2 _1680 = _1674.xz + _1679;
          float2 _1686 = ((_1676 / _1677) + float2(-1.5f, 0.5f)) * _54_m4.xx;
          float2 _1688 = ((_1679 / _1680) + float2(-1.5f, 0.5f)) * _54_m4.yy;
          float2 _1690 = _1643 * _54_m4.xy;
          float _1691 = _1686.x;
          float _1692 = _1688.x;
          float _1695 = _1686.y;
          float _1698 = _1688.y;
          float _1703 = _1677.x;
          float _1704 = _1680.x;
          float _1706 = _1677.y;
          float _1708 = _1680.y;
          _1743 = _1623 ? 1.0f : (((((_1703 * _1704) * _55.SampleCmpLevelZero(_27, float3(_1690 + float2(_1691, _1692), _386).xy, _1613)) + ((_1706 * _1704) * _55.SampleCmpLevelZero(_27, float3(_1690 + float2(_1695, _1692), _386).xy, _1613))) + ((_1703 * _1708) * _55.SampleCmpLevelZero(_27, float3(_1690 + float2(_1691, _1698), _386).xy, _1613))) + ((_1706 * _1708) * _55.SampleCmpLevelZero(_27, float3(_1690 + float2(_1695, _1698), _386).xy, _1613)));
          _1744 = _1623;
        } else {
          _1743 = 1.0f;
          _1744 = false;
        }
        _1745 = _1743;
        _1746 = _1744;
      } else {
        _1745 = 1.0f;
        _1746 = false;
      }
      float _1946;
      float _1947;
      if ((_1528 < 1.0f) || (_54_m8.x > 0.5f)) {
        float _1757 = 1.0f - clamp(dot(_578, _50_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1774 = float4((_427 - (_50_m0.xyz * (_1757 * _54_m22.x))) + (_578 * (_1757 * _54_m22.y)), 1.0f);
        float4 _1775 = mul(_54_m21, _1774);
        float2 _1776 = _1775.xy;
        float _1944;
        if (all(bool2(_1776.x > 0.0f.xx.x, _1776.y > 0.0f.xx.y)) && all(bool2(_1776.x < 1.0f.xx.x, _1776.y < 1.0f.xx.y))) {
          uint _1795 = clamp(uint((floor(_1775.y * _54_m23.z) + _1775.x) * _54_m23.y), 0u, 127u);
          uint _1799 = asuint(_54_m25[_1795].x);
          float2 _1800 = spvUnpackHalf2x16(_1799);
          float _1801 = _1800.x;
          float _1943;
          if (_1801 >= 0.0f) {
            float4x4 _1810 = _54_m20;
            _1810[0].w = _54_m25[_1795].y;
            _1810[1].w = _54_m25[_1795].z;
            _1810[2].w = _54_m25[_1795].w;
            float4 _1817 = mul(_1810, _1774);
            float3 _1818 = _1817.xyz;
            float _1942;
            if (all(bool3(_1818.x > 0.0f.xxx.x, _1818.y > 0.0f.xxx.y, _1818.z > 0.0f.xxx.z)) && all(bool3(_1818.x < 1.0f.xxx.x, _1818.y < 1.0f.xxx.y, _1818.z < 1.0f.xxx.z))) {
              float _1835 = _1817.z;
              float2 _1841 = float4((_1817.xy * _54_m22.zw) + float2(_1801, spvUnpackHalf2x16(_1799 >> 16u).x), _1835, 1.0f).xy * _54_m24.zw;
              float2 _1843 = floor(_1841 + 0.5f.xx);
              float2 _1844 = _1841 - _1843;
              float _1845 = _1844.x;
              float _1846 = _1845 + 0.5f;
              float _1848 = (_1846 * _1846) * 0.5f;
              float _1851 = min(_1845, 0.0f);
              float _1855 = max(_1845, 0.0f);
              float4 _1859 = float4(_1848 - _1845, (1.0f - _1845) - (_1851 * _1851), (_1845 + 1.0f) - (_1855 * _1855), _1848) * 0.44444000720977783203125f;
              float _1860 = _1844.y;
              float _1861 = _1860 + 0.5f;
              float _1863 = (_1861 * _1861) * 0.5f;
              float _1866 = min(_1860, 0.0f);
              float _1870 = max(_1860, 0.0f);
              float4 _1874 = float4(_1863 - _1860, (1.0f - _1860) - (_1866 * _1866), (_1860 + 1.0f) - (_1870 * _1870), _1863) * 0.44444000720977783203125f;
              float2 _1877 = _1859.xz + _1859.yw;
              float2 _1880 = _1874.xz + _1874.yw;
              float2 _1886 = ((_1859.yw / _1877) + float2(-1.5f, 0.5f)) * _54_m24.xx;
              float2 _1888 = ((_1874.yw / _1880) + float2(-1.5f, 0.5f)) * _54_m24.yy;
              float2 _1890 = _1843 * _54_m24.xy;
              float _1891 = _1886.x;
              float _1892 = _1888.x;
              float2 _1894 = _1890 + float2(_1891, _1892);
              float _1895 = _1886.y;
              float2 _1897 = _1890 + float2(_1895, _1892);
              float _1898 = _1888.y;
              float2 _1900 = _1890 + float2(_1891, _1898);
              float2 _1902 = _1890 + float2(_1895, _1898);
              float _1903 = _1877.x;
              float _1904 = _1880.x;
              float _1906 = _1877.y;
              float _1908 = _1880.y;
              _1942 = ((((_1903 * _1904) * _60.SampleCmpLevelZero(_27, float3(_1894, _386).xy, _1835)) + ((_1906 * _1904) * _60.SampleCmpLevelZero(_27, float3(_1897, _386).xy, _1835))) + ((_1903 * _1908) * _60.SampleCmpLevelZero(_27, float3(_1900, _386).xy, _1835))) + ((_1906 * _1908) * _60.SampleCmpLevelZero(_27, float3(_1902, _386).xy, _1835));
            } else {
              _1942 = 1.0f;
            }
            _1943 = _1942;
          } else {
            _1943 = 1.0f;
          }
          _1944 = _1943;
        } else {
          _1944 = 1.0f;
        }
        _1946 = _1746 ? _1944 : _1745;
        _1947 = _1944;
      } else {
        _1946 = _1745;
        _1947 = 1.0f;
      }
      float _1950 = lerp(lerp(_1947, _1946, _1528), min(_1947, _1946), _54_m8.x);
      float _2023;
      if (_1950 > 0.001000000047497451305389404296875f) {
        float3 _1985 = _427 - _18_m65.xyz;
        float2 _1990 = (_1985 + (_18_m68.xyz * _1985.y)).xz * _18_m66.z;
        float2 _1991 = _18_m67.xy * _18_m77.w;
        float3 _1998 = _427 - _18_m69.xyz;
        float2 _2006 = _18_m69.w.xx;
        float4 _2013 = _59.SampleLevel(_25, lerp(_1990 * _18_m67.w, (_1998 + (_18_m68.xyz * _1998.y)).xz * _18_m70.x, _2006) + lerp(_1991, _18_m70.yz * _18_m77.w, _2006), 0.0f);
        _2023 = _1950 * lerp(1.0f, lerp(_59.SampleLevel(_25, _1990 + _1991, 0.0f).x, lerp(_2013.x, _2013.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_1985.xz))), _18_m67.z);
      } else {
        _2023 = _1950;
      }
      _2028 = float2(lerp(_2023, _54_m7.z, _54_m7.w), _2023);
      break;
    } while (false);
    float _2033 = lerp(1.0f, min(1.0f, _2028.x), _54_m6.x);
    float4 _2172;
    if (_2033 > 0.001000000047497451305389404296875f) {
      float3 _2043 = -_50_m0.xyz;
      float _2048 = dot(_2043, _1205);
      float3 _2050 = _1205 - (_2043 * _2048);
      bool3 _2052 = (_2048 < _50_m4.z).xxx;
      float3 _2060 = normalize((_2043 * _50_m4.z) + ((_2050 * rsqrt(max(6.103515625e-05f, dot(_2050, _2050)))) * _50_m4.y));
      float3 _2061 = float3(_2052.x ? _2060.x : _1205.x, _2052.y ? _2060.y : _1205.y, _2052.z ? _2060.z : _1205.z);
      float3 _2065 = _2061 + _464;
      float3 _2069 = _2065 * rsqrt(max(6.103515625e-05f, dot(_2065, _2065)));
      float _2070 = clamp(dot(_2061, _578), 0.0f, 1.0f);
      float _2072 = clamp(dot(_578, _2069), 0.0f, 1.0f);
      float _2075 = clamp(_604, 0.0f, 1.0f);
      float _2076 = _550 * _550;
      float _2077 = _2076 * _2076;
      float _2098 = (((_2072 * _2077) - _2072) * _2072) + 1.0f;
      float _2101 = 1.0f - clamp(dot(_464, _2069), 0.0f, 1.0f);
      float _2102 = _2101 * _2101;
      float _2104 = (_2101 * _2102) * _2102;
      float _2128 = 1.0f - _550;
      float _2135 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2128 * (1.04997003078460693359375f + (_2128 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2128))))));
      float _2136 = 1.0f - _2135;
      float3 _2139 = _727 + ((1.0f.xxx - _727) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x29F0A9C2:
      float3 _2158 = (clamp(clamp((min(((_727 * (1.0f - _2104)) + _2104.xxx) * ((_2077 / (_2098 * _2098)) * (0.5f / (((_2070 * sqrt(((((-_2075) * _2077) + _2075) * _2075) + _2077)) + (_2075 * sqrt(((((-_2070) * _2077) + _2070) * _2070) + _2077))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2139 * (((_64.SampleLevel(_24, (float2(_2075, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2070, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2135) / _2136)) * _2139) / (1.0f.xxx - (_2139 * _2136)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_545, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2070) + ((_723 * 1.0f) * _2070);
      */
      float3 _2158 = (clamp((clamp((min(((_727 * (1.0f - _2104)) + _2104.xxx) * ((_2077 / (_2098 * _2098)) * (0.5f / (((_2070 * sqrt(((((-_2075) * _2077) + _2075) * _2075) + _2077)) + (_2075 * sqrt(((((-_2070) * _2077) + _2070) * _2070) + _2077))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2139 * (((_64.SampleLevel(_24, (float2(_2075, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_2070, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2135) / _2136)) * _2139) / (1.0f.xxx - (_2139 * _2136)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_545, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2070) + ((_723 * 1.0f) * _2070);
      // RenoDX code end
      float3 _2159 = _2158 * _50_m1.xyz;
      float3 _2170 = lerp(_2159, _2159 * _61.SampleBias(_24, float2(_2033, 0.5f), _18_m16).xyz, (1.0f - _2033).xxx) * 1.0f;
      _2172 = float4(_2170.x, _2170.y, _2170.z, 0.0f.xxxx.w);
    } else {
      _2172 = 0.0f.xxxx;
    }
    _2173 = _2172;
    break;
  } while (false);
  float2 _2175 = floor(_1214 * 0.03125f);
  int _2183 = int((_2175.x + (_2175.y * _52_m9)) * 8.0f);
  float _2190 = floor(_778 - (_18_m3.y * _52_m15));
  float _2194 = clamp(_2190, 0.0f, _52_m11 - 1.0f);
  int _2196 = int(_2194 * 8.0f);
  float3 _2198;
  float _2201;
  _2198 = 0.0f.xxx;
  _2201 = 1.0f;
  float3 _2199;
  float _2202;
  [loop] for (int _2203 = 0; _2203 <= 7; _2198 = _2199, _2201 = _2202, _2203++) {
    uint _2224 = (_2190 <= _2194) ? (_33.Load(uint((_52_m2 + _2183) + _2203) * 4 + 0) & _33.Load(uint((_52_m3 + _2196) + _2203) * 4 + 0)) : 0u;
    uint _2225 = uint(_2203);
    float3 _2229;
    _2202 = _2201;
    _2229 = 0.0f.xxx;
    uint _2232;
    float _2227;
    float3 _2230;
    [loop] for (uint _2231 = _2224; _2231 != 0u; _2202 = _2227, _2229 = _2230, _2231 = _2232) {
      uint _2236 = firstbitlow(_2231);
      _2232 = _2231 ^ (1u << (_2236 & 31u));
      int _2242 = int((32u * _2225) + _2236) * 8;
      int _2245 = _2242 + 1;
      int _2248 = _2242 + 2;
      int _2251 = _2242 + 3;
      int _2254 = _2242 + 4;
      int _2257 = _2242 + 5;
      int _2260 = _2242 + 6;
      int _2263 = _2242 + 7;
      uint _2267 = uint(_50_m6[_2257].w);
      float _2342;
      if ((_2267 & 1u) == 1u) {
        uint _2273 = asuint(_50_m6[_2257].x);
        uint _2280 = asuint(_50_m6[_2257].y);
        uint _2287 = asuint(_50_m6[_2257].z);
        uint _2294 = asuint(_50_m6[_2260].x);
        uint _2301 = asuint(_50_m6[_2260].y);
        uint _2308 = asuint(_50_m6[_2260].z);
        float3 _2327 = abs(mul(float4(_427 - _50_m6[_2245].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2273).x, spvUnpackHalf2x16(_2287).x, spvUnpackHalf2x16(_2301).x, 0.0f), float4(spvUnpackHalf2x16(_2273 >> 16u).x, spvUnpackHalf2x16(_2287 >> 16u).x, spvUnpackHalf2x16(_2301 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2280).x, spvUnpackHalf2x16(_2294).x, spvUnpackHalf2x16(_2308).x, 0.0f), float4(spvUnpackHalf2x16(_2280 >> 16u).x, spvUnpackHalf2x16(_2294 >> 16u).x, spvUnpackHalf2x16(_2308 >> 16u).x, 0.0f))).xyz);
        float _2334 = _50_m6[_2263].x * 0.5f;
        float _2340 = 1.0f - clamp((max(max(_2327.x, _2327.y), _2327.z) - (_2334 + 0.5f)) / (0.5f - _2334), 0.0f, 1.0f);
        _2342 = _2340 * _2340;
      } else {
        _2342 = 1.0f;
      }
      uint _2346 = uint(_50_m6[_2242].w);
      bool _2349 = _50_m6[_2251].z > 0.5f;
      if ((false || (_2342 < 0.001000000047497451305389404296875f)) || ((_2346 < 4u) && _2349)) {
        _2227 = _2202;
        _2230 = _2229;
        continue;
      }
      float _4878;
      float3 _4879;
      do {
        [branch] if (_2346 >= 4u) {
          float3 _3578;
          do {
            float3 _2368 = _50_m6[_2245].xyz - _427;
            if (dot(_50_m6[_2251].xyz, _2368) > 0.0f) {
              _3578 = 0.0f.xxx;
              break;
            }
            float _2375 = dot(_2368, _2368) * _50_m6[_2245].w;
            float _2378 = clamp(1.0f - (_2375 * _2375), 0.0f, 1.0f);
            float _2379 = _2378 * _2378;
            if (_2379 <= 0.0f) {
              _3578 = 0.0f.xxx;
              break;
            }
            float3 _2417;
            float _2418;
            bool _2419;
            float3 _2447;
            float3 _2449;
            float3 _2451;
            float3 _2453;
            float3 _2383 = _50_m6[_2248].xyz * _50_m6[_2248].w;
            float3 _2384 = _50_m6[_2245].xyz - _2383;
            float3 _2385 = _50_m6[_2254].xyz * _50_m6[_2251].w;
            float3 _2388 = _50_m6[_2245].xyz + _2383;
            float2 _2398 = (float2(clamp(_550, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_604, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2402 = _77.SampleLevel(_24, _2398, 0.0f);
            float4 _2406 = _78.SampleLevel(_24, _2398, 0.0f);
            float _2801;
            do {
              _2417 = _464 - (_578 * dot(_464, _578));
              _2418 = dot(_2417, _2417);
              _2419 = _2418 > 9.9999997473787516355514526367188e-05f;
              float3 _2442;
              if (_2419) {
                _2442 = _2417 * rsqrt(_2418);
              } else {
                float _2423 = _578.z;
                float _2425 = (_2423 >= 0.0f) ? 1.0f : (-1.0f);
                float _2427 = (-1.0f) / (_2425 + _2423);
                float _2429 = _578.x;
                _2442 = float3(1.0f + (((_2425 * _2427) * _2429) * _2429), ((_2425 * _2429) * _578.y) * _2427, (-_2425) * _2429);
              }
              float3x3 _2446 = mul(float3x3(float3(_2402.x, 0.0f, _2402.z), float3(0.0f, 1.0f, 0.0f), float3(_2402.y, 0.0f, _2402.w)), float3x3(_2442, cross(_578, _2442), _578));
              _2447 = (_2384 - _2385) - _427;
              float3 _2448 = mul(_2446, _2447);
              _2449 = (_2384 + _2385) - _427;
              float3 _2450 = mul(_2446, _2449);
              _2451 = (_2388 + _2385) - _427;
              float3 _2452 = mul(_2446, _2451);
              _2453 = (_2388 - _2385) - _427;
              float3 _2454 = mul(_2446, _2453);
              float _2455 = _2448.z;
              float _2458 = _2450.z;
              float _2462 = _2452.z;
              float _2466 = _2454.z;
              int _2470 = (((int(_2455 > 0.0f) | ((_2458 > 0.0f) ? 2 : 0)) | ((_2462 > 0.0f) ? 4 : 0)) | ((_2466 > 0.0f) ? 8 : 0));
              float3 _2707;
              float3 _2708;
              float3 _2709;
              float3 _2710;
              float3 _2711;
              int _2712;
              if (_2470 == 0) {
                _2707 = _2454;
                _2708 = _2452;
                _2709 = _2450;
                _2710 = _2448;
                _2711 = 0.0f.xxx;
                _2712 = 0;
              } else {
                float3 _2701;
                float3 _2702;
                float3 _2703;
                float3 _2704;
                float3 _2705;
                int _2706;
                if (_2470 == 1) {
                  _2701 = _2454;
                  _2702 = (_2448 * (-_2466)) + (_2454 * _2455);
                  _2703 = (_2448 * (-_2458)) + (_2450 * _2455);
                  _2704 = _2448;
                  _2705 = 0.0f.xxx;
                  _2706 = 3;
                } else {
                  float3 _2687;
                  float3 _2688;
                  float3 _2689;
                  float3 _2690;
                  float3 _2691;
                  int _2692;
                  if (_2470 == 2) {
                    _2687 = _2454;
                    _2688 = (_2450 * (-_2462)) + (_2452 * _2458);
                    _2689 = _2450;
                    _2690 = (_2450 * (-_2455)) + (_2448 * _2458);
                    _2691 = 0.0f.xxx;
                    _2692 = 3;
                  } else {
                    float3 _2673;
                    float3 _2674;
                    float3 _2675;
                    float3 _2676;
                    float3 _2677;
                    int _2678;
                    if (_2470 == 3) {
                      _2673 = (_2448 * (-_2466)) + (_2454 * _2455);
                      _2674 = (_2450 * (-_2462)) + (_2452 * _2458);
                      _2675 = _2450;
                      _2676 = _2448;
                      _2677 = 0.0f.xxx;
                      _2678 = 4;
                    } else {
                      float3 _2659;
                      float3 _2660;
                      float3 _2661;
                      float3 _2662;
                      float3 _2663;
                      int _2664;
                      if (_2470 == 4) {
                        _2659 = _2454;
                        _2660 = _2452;
                        _2661 = (_2452 * (-_2458)) + (_2450 * _2462);
                        _2662 = (_2452 * (-_2466)) + (_2454 * _2462);
                        _2663 = 0.0f.xxx;
                        _2664 = 3;
                      } else {
                        float3 _2645;
                        float3 _2646;
                        float3 _2647;
                        float3 _2648;
                        float3 _2649;
                        int _2650;
                        if (_2470 == 5) {
                          _2645 = _2454;
                          _2646 = _2452;
                          _2647 = _2450;
                          _2648 = _2448;
                          _2649 = 0.0f.xxx;
                          _2650 = 0;
                        } else {
                          float3 _2639;
                          float3 _2640;
                          float3 _2641;
                          float3 _2642;
                          float3 _2643;
                          int _2644;
                          if (_2470 == 6) {
                            _2639 = (_2452 * (-_2466)) + (_2454 * _2462);
                            _2640 = _2452;
                            _2641 = _2450;
                            _2642 = (_2450 * (-_2455)) + (_2448 * _2458);
                            _2643 = 0.0f.xxx;
                            _2644 = 4;
                          } else {
                            float3 _2625;
                            float3 _2626;
                            float3 _2627;
                            float3 _2628;
                            float3 _2629;
                            int _2630;
                            if (_2470 == 7) {
                              float _2618 = -_2466;
                              _2625 = (_2452 * _2618) + (_2454 * _2462);
                              _2626 = _2452;
                              _2627 = _2450;
                              _2628 = _2448;
                              _2629 = (_2448 * _2618) + (_2454 * _2455);
                              _2630 = 5;
                            } else {
                              float3 _2612;
                              float3 _2613;
                              float3 _2614;
                              float3 _2615;
                              float3 _2616;
                              int _2617;
                              if (_2470 == 8) {
                                _2612 = _2454;
                                _2613 = _2454;
                                _2614 = (_2454 * (-_2462)) + (_2452 * _2466);
                                _2615 = (_2454 * (-_2455)) + (_2448 * _2466);
                                _2616 = 0.0f.xxx;
                                _2617 = 3;
                              } else {
                                float3 _2598;
                                float3 _2599;
                                float3 _2600;
                                float3 _2601;
                                float3 _2602;
                                int _2603;
                                if (_2470 == 9) {
                                  _2598 = _2454;
                                  _2599 = (_2454 * (-_2462)) + (_2452 * _2466);
                                  _2600 = (_2448 * (-_2458)) + (_2450 * _2455);
                                  _2601 = _2448;
                                  _2602 = 0.0f.xxx;
                                  _2603 = 4;
                                } else {
                                  float3 _2584;
                                  float3 _2585;
                                  float3 _2586;
                                  float3 _2587;
                                  float3 _2588;
                                  int _2589;
                                  if (_2470 == 10) {
                                    _2584 = _2454;
                                    _2585 = _2452;
                                    _2586 = _2450;
                                    _2587 = _2448;
                                    _2588 = 0.0f.xxx;
                                    _2589 = 0;
                                  } else {
                                    float3 _2578;
                                    float3 _2579;
                                    float3 _2580;
                                    float3 _2581;
                                    float3 _2582;
                                    int _2583;
                                    if (_2470 == 11) {
                                      float _2571 = -_2462;
                                      _2578 = (_2454 * _2571) + (_2452 * _2466);
                                      _2579 = (_2450 * _2571) + (_2452 * _2458);
                                      _2580 = _2450;
                                      _2581 = _2448;
                                      _2582 = _2454;
                                      _2583 = 5;
                                    } else {
                                      float3 _2565;
                                      float3 _2566;
                                      float3 _2567;
                                      float3 _2568;
                                      float3 _2569;
                                      int _2570;
                                      if (_2470 == 12) {
                                        _2565 = _2454;
                                        _2566 = _2452;
                                        _2567 = (_2452 * (-_2458)) + (_2450 * _2462);
                                        _2568 = (_2454 * (-_2455)) + (_2448 * _2466);
                                        _2569 = 0.0f.xxx;
                                        _2570 = 4;
                                      } else {
                                        bool _2523 = _2470 == 13;
                                        float3 _2550;
                                        float3 _2551;
                                        float3 _2552;
                                        float3 _2553;
                                        int _2554;
                                        if (_2523) {
                                          float _2543 = -_2458;
                                          _2550 = (_2452 * _2543) + (_2450 * _2462);
                                          _2551 = (_2448 * _2543) + (_2450 * _2455);
                                          _2552 = _2448;
                                          _2553 = _2454;
                                          _2554 = 5;
                                        } else {
                                          float3 _2540;
                                          float3 _2541;
                                          int _2542;
                                          if (_2470 == 14) {
                                            float _2533 = -_2455;
                                            _2540 = (_2450 * _2533) + (_2448 * _2458);
                                            _2541 = (_2454 * _2533) + (_2448 * _2466);
                                            _2542 = 5;
                                          } else {
                                            _2540 = _2448;
                                            _2541 = 0.0f.xxx;
                                            _2542 = (_2470 == 15) ? 4 : 0;
                                          }
                                          _2550 = _2452;
                                          _2551 = _2450;
                                          _2552 = _2540;
                                          _2553 = _2541;
                                          _2554 = _2542;
                                        }
                                        bool3 _2555 = _2523.xxx;
                                        _2565 = float3(_2555.x ? _2452.x : _2454.x, _2555.y ? _2452.y : _2454.y, _2555.z ? _2452.z : _2454.z);
                                        _2566 = _2550;
                                        _2567 = _2551;
                                        _2568 = _2552;
                                        _2569 = _2553;
                                        _2570 = _2554;
                                      }
                                      _2578 = _2565;
                                      _2579 = _2566;
                                      _2580 = _2567;
                                      _2581 = _2568;
                                      _2582 = _2569;
                                      _2583 = _2570;
                                    }
                                    _2584 = _2578;
                                    _2585 = _2579;
                                    _2586 = _2580;
                                    _2587 = _2581;
                                    _2588 = _2582;
                                    _2589 = _2583;
                                  }
                                  _2598 = _2584;
                                  _2599 = _2585;
                                  _2600 = _2586;
                                  _2601 = _2587;
                                  _2602 = _2588;
                                  _2603 = _2589;
                                }
                                _2612 = _2598;
                                _2613 = _2599;
                                _2614 = _2600;
                                _2615 = _2601;
                                _2616 = _2602;
                                _2617 = _2603;
                              }
                              _2625 = _2612;
                              _2626 = _2613;
                              _2627 = _2614;
                              _2628 = _2615;
                              _2629 = _2616;
                              _2630 = _2617;
                            }
                            _2639 = _2625;
                            _2640 = _2626;
                            _2641 = _2627;
                            _2642 = _2628;
                            _2643 = _2629;
                            _2644 = _2630;
                          }
                          _2645 = _2639;
                          _2646 = _2640;
                          _2647 = _2641;
                          _2648 = _2642;
                          _2649 = _2643;
                          _2650 = _2644;
                        }
                        _2659 = _2645;
                        _2660 = _2646;
                        _2661 = _2647;
                        _2662 = _2648;
                        _2663 = _2649;
                        _2664 = _2650;
                      }
                      _2673 = _2659;
                      _2674 = _2660;
                      _2675 = _2661;
                      _2676 = _2662;
                      _2677 = _2663;
                      _2678 = _2664;
                    }
                    _2687 = _2673;
                    _2688 = _2674;
                    _2689 = _2675;
                    _2690 = _2676;
                    _2691 = _2677;
                    _2692 = _2678;
                  }
                  _2701 = _2687;
                  _2702 = _2688;
                  _2703 = _2689;
                  _2704 = _2690;
                  _2705 = _2691;
                  _2706 = _2692;
                }
                _2707 = _2701;
                _2708 = _2702;
                _2709 = _2703;
                _2710 = _2704;
                _2711 = _2705;
                _2712 = _2706;
              }
              bool3 _2714 = (_2712 == 3).xxx;
              bool3 _2717 = (_2712 == 4).xxx;
              if (_2712 == 0) {
                _2801 = 0.0f;
                break;
              }
              float3 _2722 = normalize(_2710);
              float3 _2723 = normalize(_2709);
              float3 _2724 = normalize(_2708);
              float3 _2725 = normalize(float3(_2714.x ? _2710.x : _2707.x, _2714.y ? _2710.y : _2707.y, _2714.z ? _2710.z : _2707.z));
              float3 _2726 = normalize(float3(_2717.x ? _2710.x : _2711.x, _2717.y ? _2710.y : _2711.y, _2717.z ? _2710.z : _2711.z));
              float _2728 = clamp(dot(_2722, _2723), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2732 = sqrt(1.0f - (_2728 * _2728));
              float _2740 = clamp(dot(_2723, _2724), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2744 = sqrt(1.0f - (_2740 * _2740));
              float _2753 = clamp(dot(_2724, _2725), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2757 = sqrt(1.0f - (_2753 * _2753));
              float _2764 = ((cross(_2722, _2723).z * ((_2732 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2728) / _2732))) + (cross(_2723, _2724).z * ((_2744 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2740) / _2744)))) + (cross(_2724, _2725).z * ((_2757 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2753) / _2757)));
              float _2781;
              if (_2712 >= 4) {
                float _2769 = clamp(dot(_2725, _2726), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2773 = sqrt(1.0f - (_2769 * _2769));
                _2781 = _2764 + (cross(_2725, _2726).z * ((_2773 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2769) / _2773)));
              } else {
                _2781 = _2764;
              }
              float _2798;
              if (_2712 == 5) {
                float _2786 = clamp(dot(_2726, _2722), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2790 = sqrt(1.0f - (_2786 * _2786));
                _2798 = _2781 + (cross(_2726, _2722).z * ((_2790 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2786) / _2790)));
              } else {
                _2798 = _2781;
              }
              _2801 = max(_2798, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3189;
            do {
              float3 _2835;
              if (_2419) {
                _2835 = _2417 * rsqrt(_2418);
              } else {
                float _2816 = _578.z;
                float _2818 = (_2816 >= 0.0f) ? 1.0f : (-1.0f);
                float _2820 = (-1.0f) / (_2818 + _2816);
                float _2822 = _578.x;
                _2835 = float3(1.0f + (((_2818 * _2820) * _2822) * _2822), ((_2818 * _2822) * _578.y) * _2820, (-_2818) * _2822);
              }
              float3x3 _2838 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2835, cross(_578, _2835), _578));
              float3 _2839 = mul(_2838, _2447);
              float3 _2840 = mul(_2838, _2449);
              float3 _2841 = mul(_2838, _2451);
              float3 _2842 = mul(_2838, _2453);
              float _2843 = _2839.z;
              float _2846 = _2840.z;
              float _2850 = _2841.z;
              float _2854 = _2842.z;
              int _2858 = (((int(_2843 > 0.0f) | ((_2846 > 0.0f) ? 2 : 0)) | ((_2850 > 0.0f) ? 4 : 0)) | ((_2854 > 0.0f) ? 8 : 0));
              float3 _3095;
              float3 _3096;
              float3 _3097;
              float3 _3098;
              float3 _3099;
              int _3100;
              if (_2858 == 0) {
                _3095 = _2842;
                _3096 = _2841;
                _3097 = _2840;
                _3098 = _2839;
                _3099 = 0.0f.xxx;
                _3100 = 0;
              } else {
                float3 _3089;
                float3 _3090;
                float3 _3091;
                float3 _3092;
                float3 _3093;
                int _3094;
                if (_2858 == 1) {
                  _3089 = _2842;
                  _3090 = (_2839 * (-_2854)) + (_2842 * _2843);
                  _3091 = (_2839 * (-_2846)) + (_2840 * _2843);
                  _3092 = _2839;
                  _3093 = 0.0f.xxx;
                  _3094 = 3;
                } else {
                  float3 _3075;
                  float3 _3076;
                  float3 _3077;
                  float3 _3078;
                  float3 _3079;
                  int _3080;
                  if (_2858 == 2) {
                    _3075 = _2842;
                    _3076 = (_2840 * (-_2850)) + (_2841 * _2846);
                    _3077 = _2840;
                    _3078 = (_2840 * (-_2843)) + (_2839 * _2846);
                    _3079 = 0.0f.xxx;
                    _3080 = 3;
                  } else {
                    float3 _3061;
                    float3 _3062;
                    float3 _3063;
                    float3 _3064;
                    float3 _3065;
                    int _3066;
                    if (_2858 == 3) {
                      _3061 = (_2839 * (-_2854)) + (_2842 * _2843);
                      _3062 = (_2840 * (-_2850)) + (_2841 * _2846);
                      _3063 = _2840;
                      _3064 = _2839;
                      _3065 = 0.0f.xxx;
                      _3066 = 4;
                    } else {
                      float3 _3047;
                      float3 _3048;
                      float3 _3049;
                      float3 _3050;
                      float3 _3051;
                      int _3052;
                      if (_2858 == 4) {
                        _3047 = _2842;
                        _3048 = _2841;
                        _3049 = (_2841 * (-_2846)) + (_2840 * _2850);
                        _3050 = (_2841 * (-_2854)) + (_2842 * _2850);
                        _3051 = 0.0f.xxx;
                        _3052 = 3;
                      } else {
                        float3 _3033;
                        float3 _3034;
                        float3 _3035;
                        float3 _3036;
                        float3 _3037;
                        int _3038;
                        if (_2858 == 5) {
                          _3033 = _2842;
                          _3034 = _2841;
                          _3035 = _2840;
                          _3036 = _2839;
                          _3037 = 0.0f.xxx;
                          _3038 = 0;
                        } else {
                          float3 _3027;
                          float3 _3028;
                          float3 _3029;
                          float3 _3030;
                          float3 _3031;
                          int _3032;
                          if (_2858 == 6) {
                            _3027 = (_2841 * (-_2854)) + (_2842 * _2850);
                            _3028 = _2841;
                            _3029 = _2840;
                            _3030 = (_2840 * (-_2843)) + (_2839 * _2846);
                            _3031 = 0.0f.xxx;
                            _3032 = 4;
                          } else {
                            float3 _3013;
                            float3 _3014;
                            float3 _3015;
                            float3 _3016;
                            float3 _3017;
                            int _3018;
                            if (_2858 == 7) {
                              float _3006 = -_2854;
                              _3013 = (_2841 * _3006) + (_2842 * _2850);
                              _3014 = _2841;
                              _3015 = _2840;
                              _3016 = _2839;
                              _3017 = (_2839 * _3006) + (_2842 * _2843);
                              _3018 = 5;
                            } else {
                              float3 _3000;
                              float3 _3001;
                              float3 _3002;
                              float3 _3003;
                              float3 _3004;
                              int _3005;
                              if (_2858 == 8) {
                                _3000 = _2842;
                                _3001 = _2842;
                                _3002 = (_2842 * (-_2850)) + (_2841 * _2854);
                                _3003 = (_2842 * (-_2843)) + (_2839 * _2854);
                                _3004 = 0.0f.xxx;
                                _3005 = 3;
                              } else {
                                float3 _2986;
                                float3 _2987;
                                float3 _2988;
                                float3 _2989;
                                float3 _2990;
                                int _2991;
                                if (_2858 == 9) {
                                  _2986 = _2842;
                                  _2987 = (_2842 * (-_2850)) + (_2841 * _2854);
                                  _2988 = (_2839 * (-_2846)) + (_2840 * _2843);
                                  _2989 = _2839;
                                  _2990 = 0.0f.xxx;
                                  _2991 = 4;
                                } else {
                                  float3 _2972;
                                  float3 _2973;
                                  float3 _2974;
                                  float3 _2975;
                                  float3 _2976;
                                  int _2977;
                                  if (_2858 == 10) {
                                    _2972 = _2842;
                                    _2973 = _2841;
                                    _2974 = _2840;
                                    _2975 = _2839;
                                    _2976 = 0.0f.xxx;
                                    _2977 = 0;
                                  } else {
                                    float3 _2966;
                                    float3 _2967;
                                    float3 _2968;
                                    float3 _2969;
                                    float3 _2970;
                                    int _2971;
                                    if (_2858 == 11) {
                                      float _2959 = -_2850;
                                      _2966 = (_2842 * _2959) + (_2841 * _2854);
                                      _2967 = (_2840 * _2959) + (_2841 * _2846);
                                      _2968 = _2840;
                                      _2969 = _2839;
                                      _2970 = _2842;
                                      _2971 = 5;
                                    } else {
                                      float3 _2953;
                                      float3 _2954;
                                      float3 _2955;
                                      float3 _2956;
                                      float3 _2957;
                                      int _2958;
                                      if (_2858 == 12) {
                                        _2953 = _2842;
                                        _2954 = _2841;
                                        _2955 = (_2841 * (-_2846)) + (_2840 * _2850);
                                        _2956 = (_2842 * (-_2843)) + (_2839 * _2854);
                                        _2957 = 0.0f.xxx;
                                        _2958 = 4;
                                      } else {
                                        bool _2911 = _2858 == 13;
                                        float3 _2938;
                                        float3 _2939;
                                        float3 _2940;
                                        float3 _2941;
                                        int _2942;
                                        if (_2911) {
                                          float _2931 = -_2846;
                                          _2938 = (_2841 * _2931) + (_2840 * _2850);
                                          _2939 = (_2839 * _2931) + (_2840 * _2843);
                                          _2940 = _2839;
                                          _2941 = _2842;
                                          _2942 = 5;
                                        } else {
                                          float3 _2928;
                                          float3 _2929;
                                          int _2930;
                                          if (_2858 == 14) {
                                            float _2921 = -_2843;
                                            _2928 = (_2840 * _2921) + (_2839 * _2846);
                                            _2929 = (_2842 * _2921) + (_2839 * _2854);
                                            _2930 = 5;
                                          } else {
                                            _2928 = _2839;
                                            _2929 = 0.0f.xxx;
                                            _2930 = (_2858 == 15) ? 4 : 0;
                                          }
                                          _2938 = _2841;
                                          _2939 = _2840;
                                          _2940 = _2928;
                                          _2941 = _2929;
                                          _2942 = _2930;
                                        }
                                        bool3 _2943 = _2911.xxx;
                                        _2953 = float3(_2943.x ? _2841.x : _2842.x, _2943.y ? _2841.y : _2842.y, _2943.z ? _2841.z : _2842.z);
                                        _2954 = _2938;
                                        _2955 = _2939;
                                        _2956 = _2940;
                                        _2957 = _2941;
                                        _2958 = _2942;
                                      }
                                      _2966 = _2953;
                                      _2967 = _2954;
                                      _2968 = _2955;
                                      _2969 = _2956;
                                      _2970 = _2957;
                                      _2971 = _2958;
                                    }
                                    _2972 = _2966;
                                    _2973 = _2967;
                                    _2974 = _2968;
                                    _2975 = _2969;
                                    _2976 = _2970;
                                    _2977 = _2971;
                                  }
                                  _2986 = _2972;
                                  _2987 = _2973;
                                  _2988 = _2974;
                                  _2989 = _2975;
                                  _2990 = _2976;
                                  _2991 = _2977;
                                }
                                _3000 = _2986;
                                _3001 = _2987;
                                _3002 = _2988;
                                _3003 = _2989;
                                _3004 = _2990;
                                _3005 = _2991;
                              }
                              _3013 = _3000;
                              _3014 = _3001;
                              _3015 = _3002;
                              _3016 = _3003;
                              _3017 = _3004;
                              _3018 = _3005;
                            }
                            _3027 = _3013;
                            _3028 = _3014;
                            _3029 = _3015;
                            _3030 = _3016;
                            _3031 = _3017;
                            _3032 = _3018;
                          }
                          _3033 = _3027;
                          _3034 = _3028;
                          _3035 = _3029;
                          _3036 = _3030;
                          _3037 = _3031;
                          _3038 = _3032;
                        }
                        _3047 = _3033;
                        _3048 = _3034;
                        _3049 = _3035;
                        _3050 = _3036;
                        _3051 = _3037;
                        _3052 = _3038;
                      }
                      _3061 = _3047;
                      _3062 = _3048;
                      _3063 = _3049;
                      _3064 = _3050;
                      _3065 = _3051;
                      _3066 = _3052;
                    }
                    _3075 = _3061;
                    _3076 = _3062;
                    _3077 = _3063;
                    _3078 = _3064;
                    _3079 = _3065;
                    _3080 = _3066;
                  }
                  _3089 = _3075;
                  _3090 = _3076;
                  _3091 = _3077;
                  _3092 = _3078;
                  _3093 = _3079;
                  _3094 = _3080;
                }
                _3095 = _3089;
                _3096 = _3090;
                _3097 = _3091;
                _3098 = _3092;
                _3099 = _3093;
                _3100 = _3094;
              }
              bool3 _3102 = (_3100 == 3).xxx;
              bool3 _3105 = (_3100 == 4).xxx;
              if (_3100 == 0) {
                _3189 = 0.0f;
                break;
              }
              float3 _3110 = normalize(_3098);
              float3 _3111 = normalize(_3097);
              float3 _3112 = normalize(_3096);
              float3 _3113 = normalize(float3(_3102.x ? _3098.x : _3095.x, _3102.y ? _3098.y : _3095.y, _3102.z ? _3098.z : _3095.z));
              float3 _3114 = normalize(float3(_3105.x ? _3098.x : _3099.x, _3105.y ? _3098.y : _3099.y, _3105.z ? _3098.z : _3099.z));
              float _3116 = clamp(dot(_3110, _3111), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3120 = sqrt(1.0f - (_3116 * _3116));
              float _3128 = clamp(dot(_3111, _3112), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3132 = sqrt(1.0f - (_3128 * _3128));
              float _3141 = clamp(dot(_3112, _3113), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3145 = sqrt(1.0f - (_3141 * _3141));
              float _3152 = ((cross(_3110, _3111).z * ((_3120 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3116) / _3120))) + (cross(_3111, _3112).z * ((_3132 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3128) / _3132)))) + (cross(_3112, _3113).z * ((_3145 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3141) / _3145)));
              float _3169;
              if (_3100 >= 4) {
                float _3157 = clamp(dot(_3113, _3114), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3161 = sqrt(1.0f - (_3157 * _3157));
                _3169 = _3152 + (cross(_3113, _3114).z * ((_3161 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3157) / _3161)));
              } else {
                _3169 = _3152;
              }
              float _3186;
              if (_3100 == 5) {
                float _3174 = clamp(dot(_3114, _3110), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3178 = sqrt(1.0f - (_3174 * _3174));
                _3186 = _3169 + (cross(_3114, _3110).z * ((_3178 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3174) / _3178)));
              } else {
                _3186 = _3169;
              }
              _3189 = max(_3186, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3192 = (_2267 & 2u) != 0u;
            uint _3196 = asuint(_50_m6[_2254].w);
            uint _3197 = asuint(_50_m6[_2260].w);
            float3 _3198 = _427 - _50_m6[_2245].xyz;
            float3 _3199 = abs(_3198);
            float _3200 = _3199.x;
            float _3201 = _3199.y;
            float _3203 = _3199.z;
            int _3236;
            if ((_3200 > _3201) && (_3200 > _3203)) {
              _3236 = int((_3198.x > 0.0f) ? (_3196 & 1023u) : ((_3196 >> 10u) & 1023u));
            } else {
              int _3228;
              if (_3201 > _3203) {
                _3228 = int((_3198.y > 0.0f) ? ((_3196 >> 20u) & 1023u) : (_3197 & 1023u));
              } else {
                _3228 = int((_3198.z > 0.0f) ? ((_3197 >> 10u) & 1023u) : ((_3197 >> 20u) & 1023u));
              }
              _3236 = _3228;
            }
            int _3239 = _3192 ? int(_50_m6[_2254].w) : ((_3236 == 1023) ? (-1) : _3236);
            uint _3250 = asuint(_54_m11.x) + (uint(_3239) * 96u);
            uint _3252 = (_3250 + 64u) >> 2u;
            uint _3255 = _3252 + 1u;
            uint _3258 = _3252 + 2u;
            uint _3261 = _3252 + 3u;
            float4 _3265 = asfloat(uint4(_58.Load(_3252 * 4 + 0), _58.Load(_3255 * 4 + 0), _58.Load(_3258 * 4 + 0), _58.Load(_3261 * 4 + 0)));
            float3 _3272 = (_427 - ((_3198 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3198, _3198)))) * _3265.x)) + (_578 * (_3265.y * 5.0f));
            uint _3273 = _3250 >> 2u;
            uint _3288 = (_3250 + 16u) >> 2u;
            uint _3303 = (_3250 + 32u) >> 2u;
            uint _3318 = (_3250 + 48u) >> 2u;
            float4 _3338 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3273 * 4 + 0), _58.Load((_3273 + 1u) * 4 + 0), _58.Load((_3273 + 2u) * 4 + 0), _58.Load((_3273 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3288 * 4 + 0), _58.Load((_3288 + 1u) * 4 + 0), _58.Load((_3288 + 2u) * 4 + 0), _58.Load((_3288 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3303 * 4 + 0), _58.Load((_3303 + 1u) * 4 + 0), _58.Load((_3303 + 2u) * 4 + 0), _58.Load((_3303 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3318 * 4 + 0), _58.Load((_3318 + 1u) * 4 + 0), _58.Load((_3318 + 2u) * 4 + 0), _58.Load((_3318 + 3u) * 4 + 0))))), float4(_3272, 1.0f));
            float _3339 = _3338.w;
            float3 _3342 = _3338.xyz / _3339.xxx;
            uint _3344 = (_3250 + 80u) >> 2u;
            float4 _3357 = asfloat(uint4(_58.Load(_3344 * 4 + 0), _58.Load((_3344 + 1u) * 4 + 0), _58.Load((_3344 + 2u) * 4 + 0), _58.Load((_3344 + 3u) * 4 + 0)));
            float2 _3358 = _3342.xy;
            float2 _3360 = _3357.xy;
            float3 _3364 = _3342.xyz;
            bool3 _3365 = bool3(_3364.x <= 0.0f.xxx.x, _3364.y <= 0.0f.xxx.y, _3364.z <= 0.0f.xxx.z);
            bool3 _3366 = bool3(_3364.x >= 1.0f.xxx.x, _3364.y >= 1.0f.xxx.y, _3364.z >= 1.0f.xxx.z);
            float _3369 = _3342.z;
            float2 _3380 = ((_3358 * (_3357.zw - _3360)) + _3360).xy * _54_m10.zw;
            float2 _3382 = floor(_3380 + 0.5f.xx);
            float2 _3383 = _3380 - _3382;
            float _3384 = _3383.x;
            float _3385 = _3384 + 0.5f;
            float _3386 = _3385 * _3385;
            float _3389 = 1.0f - _3384;
            float _3390 = min(_3384, 0.0f);
            float _3393 = _3384 + 1.0f;
            float _3394 = max(_3384, 0.0f);
            float _3405 = _3383.y;
            float _3406 = _3405 + 0.5f;
            float _3407 = _3406 * _3406;
            float _3410 = 1.0f - _3405;
            float _3411 = min(_3405, 0.0f);
            float _3414 = _3405 + 1.0f;
            float _3415 = max(_3405, 0.0f);
            float3 _3427 = float3(0.1599999964237213134765625f * _3389, 0.1599999964237213134765625f * ((_3393 - (_3394 * _3394)) + 1.0f), _3386 * 0.07999999821186065673828125f);
            float3 _3428 = float3(0.1599999964237213134765625f * ((_3386 * 0.5f) - _3384), 0.1599999964237213134765625f * ((_3389 - (_3390 * _3390)) + 1.0f), 0.1599999964237213134765625f * _3393) + _3427;
            float3 _3430 = float3(0.1599999964237213134765625f * _3410, 0.1599999964237213134765625f * ((_3414 - (_3415 * _3415)) + 1.0f), _3407 * 0.07999999821186065673828125f);
            float3 _3431 = float3(0.1599999964237213134765625f * ((_3407 * 0.5f) - _3405), 0.1599999964237213134765625f * ((_3410 - (_3411 * _3411)) + 1.0f), 0.1599999964237213134765625f * _3414) + _3430;
            float3 _3437 = ((_3427 / _3428) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _3439 = ((_3430 / _3431) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _3441 = _3382 * _54_m10.xy;
            float _3442 = _3437.x;
            float _3443 = _3439.x;
            float2 _3445 = _3441 + float2(_3442, _3443);
            float _3446 = _3437.y;
            float2 _3448 = _3441 + float2(_3446, _3443);
            float _3449 = _3437.z;
            float2 _3451 = _3441 + float2(_3449, _3443);
            float _3452 = _3439.y;
            float2 _3454 = _3441 + float2(_3442, _3452);
            float2 _3456 = _3441 + float2(_3446, _3452);
            float2 _3458 = _3441 + float2(_3449, _3452);
            float _3459 = _3439.z;
            float2 _3461 = _3441 + float2(_3442, _3459);
            float2 _3463 = _3441 + float2(_3446, _3459);
            float2 _3465 = _3441 + float2(_3449, _3459);
            float _3466 = _3428.x;
            float _3467 = _3431.x;
            float _3469 = _3428.y;
            float _3471 = _3428.z;
            float _3473 = _3431.y;
            float _3477 = _3431.z;
            float _3543 = ((((((((_3466 * _3467) * _56.SampleCmpLevelZero(_27, float3(_3445, _386).xy, _3369)) + ((_3469 * _3467) * _56.SampleCmpLevelZero(_27, float3(_3448, _386).xy, _3369))) + ((_3471 * _3467) * _56.SampleCmpLevelZero(_27, float3(_3451, _386).xy, _3369))) + ((_3466 * _3473) * _56.SampleCmpLevelZero(_27, float3(_3454, _386).xy, _3369))) + ((_3469 * _3473) * _56.SampleCmpLevelZero(_27, float3(_3456, _386).xy, _3369))) + ((_3471 * _3473) * _56.SampleCmpLevelZero(_27, float3(_3458, _386).xy, _3369))) + ((_3466 * _3477) * _56.SampleCmpLevelZero(_27, float3(_3461, _386).xy, _3369))) + ((_3469 * _3477) * _56.SampleCmpLevelZero(_27, float3(_3463, _386).xy, _3369));
            float4 _3558 = asfloat(uint4(_58.Load(_3252 * 4 + 0), _58.Load(_3255 * 4 + 0), _58.Load(_3258 * 4 + 0), _58.Load(_3261 * 4 + 0)));
            float _3559 = _3558.w;
            float2 _3561 = min(_3358, 1.0f.xx - _3358);
            _3578 = ((_50_m6[_2242].xyz * (((((_727 * _2406.x) + ((1.0f.xxx - _727) * _2406.y)) * _2801) * _50_m6[_2263].z) + (_723 * _3189))) * _2379) * ((_3239 >= 0) ? lerp(1.0f, (any(bool3(_3365.x || _3366.x, _3365.y || _3366.y, _3365.z || _3366.z)) || ((asuint(_3369) & 2147483647u) > 2139095040u)) ? 1.0f : (_3543 + ((_3471 * _3477) * _56.SampleCmpLevelZero(_27, float3(_3465, _386).xy, _3369))), _3192 ? min(_3559, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3558.z - _3339) * 0.25f, min(_3561.x, _3561.y)))) : _3559) : 1.0f);
            break;
          } while (false);
          _4878 = _2202;
          _4879 = _3578 * _2342;
          break;
        }
        float _4876;
        float3 _4877;
        if (_50_m6[_2242].w < 1.5f) {
          float3 _4158 = float3(0.100000001490116119384765625f, _550, 1.0f);
          float _4167 = (0.5f + (0.5f * _50_m6[_2248].y)) - abs(_50_m6[_2248].x);
          float _4168 = _50_m6[_2248].y - _4167;
          float _4175 = abs(max((1.0f - abs(_4167)) - abs(_4168), 0.00048828125f));
          float3 _4179 = normalize(float3(_4167, _4168, (_50_m6[_2248].x >= 0.0f) ? _4175 : (-_4175)));
          float3 _4180 = _50_m6[_2245].xyz - _427;
          float _4181 = dot(_4180, _4180);
          float _4182 = rsqrt(_4181);
          float3 _4183 = _4180 * _4182;
          float _4187 = clamp(_50_m6[_2263].y * _4182, 0.0f, 1.0f);
          int _4192 = int(_50_m6[_2263].w);
          float3 _4193 = _4179 * _50_m6[_2248].z;
          float3 _4194 = _4193 * 0.5f;
          float3 _4195 = _4180 - _4194;
          float3 _4196 = _4180 + _4194;
          bool _4198 = (_2346 & 1u) == 0u;
          bool _4201 = _4198 || ((_2267 & 2u) != 0u);
          bool _4204 = (!_4198) && (_50_m6[_2248].z > 0.0f);
          float _4223;
          float _4224;
          if (_4204) {
            float _4208 = length(_4195);
            float _4209 = length(_4196);
            _4223 = clamp(0.5f * ((dot(_578, _4195) / _4208) + (dot(_578, _4196) / _4209)), 0.0f, 1.0f);
            _4224 = 1.0f / ((((_4208 * _4209) + dot(_4195, _4196)) * 0.5f) + 1.0f);
          } else {
            _4223 = clamp(dot(_578, _4183), 0.0f, 1.0f);
            _4224 = 1.0f;
          }
          float _4246;
          if (_50_m6[_2260].w < 0.0f) {
            float _4240 = _4181 * (_50_m6[_2245].w * _50_m6[_2245].w);
            float _4243 = clamp(1.0f - (_4240 * _4240), 0.0f, 1.0f);
            _4246 = lerp(1.0f / (_4181 + 1.0f), _4224, float(_4204)) * (_4243 * _4243);
          } else {
            float3 _4229 = _4180 * _50_m6[_2245].w;
            _4246 = _4224 * pow(1.0f - clamp(dot(_4229, _4229), 0.0f, 1.0f), _50_m6[_2260].w);
          }
          float _4252 = clamp((dot(_4183, -_4179) - _50_m6[_2248].z) * _50_m6[_2248].w, 0.0f, 1.0f);
          float _4256 = _4246 * lerp(1.0f, _4252 * _4252, float(_4198));
          float _4356;
          if ((!_4204) && (_4192 >= 0)) {
            uint _4262 = uint(_4192);
            float2 _4349;
            [branch] if (_4198) {
              float4 _4339 = mul(_74_m1[_4262], _431);
              _4349 = _74_m0[_4262].xy + (clamp(_4339.xy / _4339.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_4262].zw);
            }
            else {
              float3 _4276 = mul(float4(-_4180, 0.0f), _74_m1[_4262]).xyz;
              float3 _392 = _4276;
              float3 _391 = _4276;
              float3 _390 = abs(_4276);
              uint _4285 = uint(int(_390.y > _390.x));
              uint _4291 = (_390.z > _390[_4285]) ? 2u : _4285;
              uint _4297 = (_4291 * 2u) + uint(_391[_4291] < 0.0f);
              float _4301 = abs(_392[_4297 / 2u]);
              float _4321 = 0.5f - (0.000244140625f / _74_m0[_4262].w);
              _4349 = _74_m0[_4262].xy + (clamp(float2((float(_4297) + ((((_392[uint(_365[_4297].x)] * _366[_4297].x) / _4301) * _4321) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_392[uint(_365[_4297].y)] * _366[_4297].y) / _4301) * _4321)), 0.0f.xx, 1.0f.xx) * _74_m0[_4262].zw);
            }
            _4356 = _4256 * _72.SampleLevel(_24, _4349, 0.0f).x;
          } else {
            _4356 = _4256;
          }
          bool _4357 = _4356 > 0.0f;
          float _4741;
          if (_4357) {
            int _4410;
            if (_4201) {
              _4410 = int(_50_m6[_2251].x);
            } else {
              uint _4365 = asuint(_50_m6[_2248].w);
              uint _4366 = asuint(_50_m6[_2251].x);
              float3 _4367 = _427 - _50_m6[_2245].xyz;
              float3 _4368 = abs(_4367);
              float _4369 = _4368.x;
              float _4370 = _4368.y;
              float _4372 = _4368.z;
              int _4405;
              if ((_4369 > _4370) && (_4369 > _4372)) {
                _4405 = int((_4367.x > 0.0f) ? (_4365 & 1023u) : ((_4365 >> 10u) & 1023u));
              } else {
                int _4397;
                if (_4370 > _4372) {
                  _4397 = int((_4367.y > 0.0f) ? ((_4365 >> 20u) & 1023u) : (_4366 & 1023u));
                } else {
                  _4397 = int((_4367.z > 0.0f) ? ((_4366 >> 10u) & 1023u) : ((_4366 >> 20u) & 1023u));
                }
                _4405 = _4397;
              }
              _4410 = (_4405 == 1023) ? (-1) : _4405;
            }
            uint _4417 = asuint(_54_m11.x) + (uint(_4410) * 96u);
            uint _4419 = (_4417 + 64u) >> 2u;
            uint _4422 = _4419 + 1u;
            uint _4425 = _4419 + 2u;
            uint _4428 = _4419 + 3u;
            float4 _4432 = asfloat(uint4(_58.Load(_4419 * 4 + 0), _58.Load(_4422 * 4 + 0), _58.Load(_4425 * 4 + 0), _58.Load(_4428 * 4 + 0)));
            float3 _4439 = (_427 - ((-_4183) * _4432.x)) + (_578 * (_4432.y * 5.0f));
            uint _4440 = _4417 >> 2u;
            uint _4455 = (_4417 + 16u) >> 2u;
            uint _4470 = (_4417 + 32u) >> 2u;
            uint _4485 = (_4417 + 48u) >> 2u;
            float4 _4505 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_4440 * 4 + 0), _58.Load((_4440 + 1u) * 4 + 0), _58.Load((_4440 + 2u) * 4 + 0), _58.Load((_4440 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4455 * 4 + 0), _58.Load((_4455 + 1u) * 4 + 0), _58.Load((_4455 + 2u) * 4 + 0), _58.Load((_4455 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4470 * 4 + 0), _58.Load((_4470 + 1u) * 4 + 0), _58.Load((_4470 + 2u) * 4 + 0), _58.Load((_4470 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_4485 * 4 + 0), _58.Load((_4485 + 1u) * 4 + 0), _58.Load((_4485 + 2u) * 4 + 0), _58.Load((_4485 + 3u) * 4 + 0))))), float4(_4439, 1.0f));
            float _4506 = _4505.w;
            float3 _4509 = _4505.xyz / _4506.xxx;
            uint _4511 = (_4417 + 80u) >> 2u;
            float4 _4524 = asfloat(uint4(_58.Load(_4511 * 4 + 0), _58.Load((_4511 + 1u) * 4 + 0), _58.Load((_4511 + 2u) * 4 + 0), _58.Load((_4511 + 3u) * 4 + 0)));
            float2 _4525 = _4509.xy;
            float2 _4527 = _4524.xy;
            float3 _4531 = _4509.xyz;
            bool3 _4532 = bool3(_4531.x <= 0.0f.xxx.x, _4531.y <= 0.0f.xxx.y, _4531.z <= 0.0f.xxx.z);
            bool3 _4533 = bool3(_4531.x >= 1.0f.xxx.x, _4531.y >= 1.0f.xxx.y, _4531.z >= 1.0f.xxx.z);
            float _4536 = _4509.z;
            float2 _4547 = ((_4525 * (_4524.zw - _4527)) + _4527).xy * _54_m10.zw;
            float2 _4549 = floor(_4547 + 0.5f.xx);
            float2 _4550 = _4547 - _4549;
            float _4551 = _4550.x;
            float _4552 = _4551 + 0.5f;
            float _4553 = _4552 * _4552;
            float _4556 = 1.0f - _4551;
            float _4557 = min(_4551, 0.0f);
            float _4560 = _4551 + 1.0f;
            float _4561 = max(_4551, 0.0f);
            float _4572 = _4550.y;
            float _4573 = _4572 + 0.5f;
            float _4574 = _4573 * _4573;
            float _4577 = 1.0f - _4572;
            float _4578 = min(_4572, 0.0f);
            float _4581 = _4572 + 1.0f;
            float _4582 = max(_4572, 0.0f);
            float3 _4594 = float3(0.1599999964237213134765625f * _4556, 0.1599999964237213134765625f * ((_4560 - (_4561 * _4561)) + 1.0f), _4553 * 0.07999999821186065673828125f);
            float3 _4595 = float3(0.1599999964237213134765625f * ((_4553 * 0.5f) - _4551), 0.1599999964237213134765625f * ((_4556 - (_4557 * _4557)) + 1.0f), 0.1599999964237213134765625f * _4560) + _4594;
            float3 _4597 = float3(0.1599999964237213134765625f * _4577, 0.1599999964237213134765625f * ((_4581 - (_4582 * _4582)) + 1.0f), _4574 * 0.07999999821186065673828125f);
            float3 _4598 = float3(0.1599999964237213134765625f * ((_4574 * 0.5f) - _4572), 0.1599999964237213134765625f * ((_4577 - (_4578 * _4578)) + 1.0f), 0.1599999964237213134765625f * _4581) + _4597;
            float3 _4604 = ((_4594 / _4595) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _4606 = ((_4597 / _4598) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _4608 = _4549 * _54_m10.xy;
            float _4609 = _4604.x;
            float _4610 = _4606.x;
            float2 _4612 = _4608 + float2(_4609, _4610);
            float _4613 = _4604.y;
            float2 _4615 = _4608 + float2(_4613, _4610);
            float _4616 = _4604.z;
            float2 _4618 = _4608 + float2(_4616, _4610);
            float _4619 = _4606.y;
            float2 _4621 = _4608 + float2(_4609, _4619);
            float2 _4623 = _4608 + float2(_4613, _4619);
            float2 _4625 = _4608 + float2(_4616, _4619);
            float _4626 = _4606.z;
            float2 _4628 = _4608 + float2(_4609, _4626);
            float2 _4630 = _4608 + float2(_4613, _4626);
            float2 _4632 = _4608 + float2(_4616, _4626);
            float _4633 = _4595.x;
            float _4634 = _4598.x;
            float _4636 = _4595.y;
            float _4638 = _4595.z;
            float _4640 = _4598.y;
            float _4644 = _4598.z;
            float _4710 = ((((((((_4633 * _4634) * _56.SampleCmpLevelZero(_27, float3(_4612, _386).xy, _4536)) + ((_4636 * _4634) * _56.SampleCmpLevelZero(_27, float3(_4615, _386).xy, _4536))) + ((_4638 * _4634) * _56.SampleCmpLevelZero(_27, float3(_4618, _386).xy, _4536))) + ((_4633 * _4640) * _56.SampleCmpLevelZero(_27, float3(_4621, _386).xy, _4536))) + ((_4636 * _4640) * _56.SampleCmpLevelZero(_27, float3(_4623, _386).xy, _4536))) + ((_4638 * _4640) * _56.SampleCmpLevelZero(_27, float3(_4625, _386).xy, _4536))) + ((_4633 * _4644) * _56.SampleCmpLevelZero(_27, float3(_4628, _386).xy, _4536))) + ((_4636 * _4644) * _56.SampleCmpLevelZero(_27, float3(_4630, _386).xy, _4536));
            float4 _4725 = asfloat(uint4(_58.Load(_4419 * 4 + 0), _58.Load(_4422 * 4 + 0), _58.Load(_4425 * 4 + 0), _58.Load(_4428 * 4 + 0)));
            float _4726 = _4725.w;
            float2 _4728 = min(_4525, 1.0f.xx - _4525);
            _4741 = (_4410 >= 0) ? lerp(1.0f, (any(bool3(_4532.x || _4533.x, _4532.y || _4533.y, _4532.z || _4533.z)) || ((asuint(_4536) & 2147483647u) > 2139095040u)) ? 1.0f : (_4710 + ((_4638 * _4644) * _56.SampleCmpLevelZero(_27, float3(_4632, _386).xy, _4536))), _4201 ? min(_4726, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4725.z - _4506) * 0.25f, min(_4728.x, _4728.y)))) : _4726) : 1.0f;
          } else {
            _4741 = 1.0f;
          }
          float3 _4764;
          float3 _4765;
          if (_4204) {
            float3 _4744 = _4158 * _4158;
            float _4753 = dot(_1205, _4193);
            _4764 = _4744 / clamp(_4744 + (0.5f * clamp(_50_m6[_2248].z * _4182, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4765 = normalize(_4195 + (_4193 * clamp(dot(_4195, (_1205 * _4753) - _4193) / ((_50_m6[_2248].z * _50_m6[_2248].z) - (_4753 * _4753)), 0.0f, 1.0f)));
          } else {
            _4764 = 1.0f.xxx;
            _4765 = _4183;
          }
          float3 _4766 = _4765 + _464;
          float3 _4770 = _4766 * rsqrt(max(6.103515625e-05f, dot(_4766, _4766)));
          float3 _4875;
          if (_4357) {
            float _4773 = clamp(_4223, 0.0f, 1.0f);
            float _4775 = clamp(dot(_578, _4770), 0.0f, 1.0f);
            float _4777 = clamp(dot(_464, _4770), 0.0f, 1.0f);
            float _4778 = clamp(_604, 0.0f, 1.0f);
            float _4779 = _550 * _550;
            float _4789;
            if (_4187 > 0.0f) {
              _4789 = clamp(_4779 + ((_4187 * _4187) / ((_4777 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4789 = _4779;
            }
            float _4790 = _4789 * _4789;
            float _4811 = (((_4775 * _4790) - _4775) * _4775) + 1.0f;
            float _4816 = 1.0f - _4777;
            float _4817 = _4816 * _4816;
            float _4819 = (_4816 * _4817) * _4817;
            float _4843 = 1.0f - _550;
            float _4850 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4843 * (1.04997003078460693359375f + (_4843 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4843))))));
            float _4851 = 1.0f - _4850;
            float3 _4854 = _727 + ((1.0f.xxx - _727) * 0.0476190485060214996337890625f);
            float3 _4874 = ((clamp((min(((_727 * (1.0f - _4819)) + _4819.xxx) * (((_4790 / (_4811 * _4811)) * _4764.y) * (0.5f / (((_4773 * sqrt(((((-_4778) * _4790) + _4778) * _4778) + _4790)) + (_4778 * sqrt(((((-_4773) * _4790) + _4773) * _4773) + _4790))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4854 * (((_64.SampleLevel(_24, (float2(_4778, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x * _64.SampleLevel(_24, (float2(_4773, _550) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4850) / _4851)) * _4854) / (1.0f.xxx - (_4854 * _4851)))) * _50_m6[_2263].z, 0.0f.xxx, 1000.0f.xxx) * _4223) + ((_723 * _4764.z) * _4223)) * (((_50_m6[_2242].xyz * _4356) * _4741) * _2342);
            _4875 = _4874;
          } else {
            _4875 = 0.0f.xxx;
          }
          _4876 = _2202;
          _4877 = _4875;
        } else {
          float _4156;
          do {
            if (_2349) {
              _4156 = 1.0f;
              break;
            }
            float _3595 = (0.5f + (0.5f * _50_m6[_2248].y)) - abs(_50_m6[_2248].x);
            float _3596 = _50_m6[_2248].y - _3595;
            float _3603 = abs(max((1.0f - abs(_3595)) - abs(_3596), 0.00048828125f));
            float3 _3607 = normalize(float3(_3595, _3596, (_50_m6[_2248].x >= 0.0f) ? _3603 : (-_3603)));
            float3 _3608 = _50_m6[_2245].xyz - _427;
            float _3609 = dot(_3608, _3608);
            float3 _3611 = _3608 * rsqrt(_3609);
            int _3614 = int(_50_m6[_2263].w);
            float3 _3616 = (_3607 * _50_m6[_2248].z) * 0.5f;
            float3 _3617 = _3608 - _3616;
            float3 _3618 = _3608 + _3616;
            bool _3620 = (_2346 & 1u) == 0u;
            bool _3623 = _3620 || ((_2267 & 2u) != 0u);
            bool _3626 = (!_3620) && (_50_m6[_2248].z > 0.0f);
            float _3638;
            if (_3626) {
              _3638 = 1.0f / ((((length(_3617) * length(_3618)) + dot(_3617, _3618)) * 0.5f) + 1.0f);
            } else {
              _3638 = 1.0f;
            }
            float _3660;
            if (_50_m6[_2260].w < 0.0f) {
              float _3654 = _3609 * (_50_m6[_2245].w * _50_m6[_2245].w);
              float _3657 = clamp(1.0f - (_3654 * _3654), 0.0f, 1.0f);
              _3660 = lerp(1.0f / (_3609 + 1.0f), _3638, float(_3626)) * (_3657 * _3657);
            } else {
              float3 _3643 = _3608 * _50_m6[_2245].w;
              _3660 = _3638 * pow(1.0f - clamp(dot(_3643, _3643), 0.0f, 1.0f), _50_m6[_2260].w);
            }
            float _3666 = clamp((dot(_3611, -_3607) - _50_m6[_2248].z) * _50_m6[_2248].w, 0.0f, 1.0f);
            float _3670 = _3660 * lerp(1.0f, _3666 * _3666, float(_3620));
            float _3770;
            if ((!_3626) && (_3614 >= 0)) {
              uint _3676 = uint(_3614);
              float2 _3763;
              [branch] if (_3620) {
                float4 _3753 = mul(_74_m1[_3676], _431);
                _3763 = _74_m0[_3676].xy + (clamp(_3753.xy / _3753.w.xx, 0.0f.xx, 1.0f.xx) * _74_m0[_3676].zw);
              }
              else {
                float3 _3690 = mul(float4(-_3608, 0.0f), _74_m1[_3676]).xyz;
                float3 _395 = _3690;
                float3 _394 = _3690;
                float3 _393 = abs(_3690);
                uint _3699 = uint(int(_393.y > _393.x));
                uint _3705 = (_393.z > _393[_3699]) ? 2u : _3699;
                uint _3711 = (_3705 * 2u) + uint(_394[_3705] < 0.0f);
                float _3715 = abs(_395[_3711 / 2u]);
                float _3735 = 0.5f - (0.000244140625f / _74_m0[_3676].w);
                _3763 = _74_m0[_3676].xy + (clamp(float2((float(_3711) + ((((_395[uint(_365[_3711].x)] * _366[_3711].x) / _3715) * _3735) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_395[uint(_365[_3711].y)] * _366[_3711].y) / _3715) * _3735)), 0.0f.xx, 1.0f.xx) * _74_m0[_3676].zw);
              }
              _3770 = _3670 * _72.SampleLevel(_24, _3763, 0.0f).x;
            } else {
              _3770 = _3670;
            }
            float _4155;
            if (_3770 > 0.0f) {
              int _3824;
              if (_3623) {
                _3824 = int(_50_m6[_2251].x);
              } else {
                uint _3779 = asuint(_50_m6[_2248].w);
                uint _3780 = asuint(_50_m6[_2251].x);
                float3 _3781 = _427 - _50_m6[_2245].xyz;
                float3 _3782 = abs(_3781);
                float _3783 = _3782.x;
                float _3784 = _3782.y;
                float _3786 = _3782.z;
                int _3819;
                if ((_3783 > _3784) && (_3783 > _3786)) {
                  _3819 = int((_3781.x > 0.0f) ? (_3779 & 1023u) : ((_3779 >> 10u) & 1023u));
                } else {
                  int _3811;
                  if (_3784 > _3786) {
                    _3811 = int((_3781.y > 0.0f) ? ((_3779 >> 20u) & 1023u) : (_3780 & 1023u));
                  } else {
                    _3811 = int((_3781.z > 0.0f) ? ((_3780 >> 10u) & 1023u) : ((_3780 >> 20u) & 1023u));
                  }
                  _3819 = _3811;
                }
                _3824 = (_3819 == 1023) ? (-1) : _3819;
              }
              uint _3831 = asuint(_54_m11.x) + (uint(_3824) * 96u);
              uint _3833 = (_3831 + 64u) >> 2u;
              uint _3836 = _3833 + 1u;
              uint _3839 = _3833 + 2u;
              uint _3842 = _3833 + 3u;
              float4 _3846 = asfloat(uint4(_58.Load(_3833 * 4 + 0), _58.Load(_3836 * 4 + 0), _58.Load(_3839 * 4 + 0), _58.Load(_3842 * 4 + 0)));
              float3 _3853 = (_427 - ((-_3611) * _3846.x)) + (_578 * (_3846.y * 5.0f));
              uint _3854 = _3831 >> 2u;
              uint _3869 = (_3831 + 16u) >> 2u;
              uint _3884 = (_3831 + 32u) >> 2u;
              uint _3899 = (_3831 + 48u) >> 2u;
              float4 _3919 = mul(transpose(float4x4(asfloat(uint4(_58.Load(_3854 * 4 + 0), _58.Load((_3854 + 1u) * 4 + 0), _58.Load((_3854 + 2u) * 4 + 0), _58.Load((_3854 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3869 * 4 + 0), _58.Load((_3869 + 1u) * 4 + 0), _58.Load((_3869 + 2u) * 4 + 0), _58.Load((_3869 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3884 * 4 + 0), _58.Load((_3884 + 1u) * 4 + 0), _58.Load((_3884 + 2u) * 4 + 0), _58.Load((_3884 + 3u) * 4 + 0))), asfloat(uint4(_58.Load(_3899 * 4 + 0), _58.Load((_3899 + 1u) * 4 + 0), _58.Load((_3899 + 2u) * 4 + 0), _58.Load((_3899 + 3u) * 4 + 0))))), float4(_3853, 1.0f));
              float _3920 = _3919.w;
              float3 _3923 = _3919.xyz / _3920.xxx;
              uint _3925 = (_3831 + 80u) >> 2u;
              float4 _3938 = asfloat(uint4(_58.Load(_3925 * 4 + 0), _58.Load((_3925 + 1u) * 4 + 0), _58.Load((_3925 + 2u) * 4 + 0), _58.Load((_3925 + 3u) * 4 + 0)));
              float2 _3939 = _3923.xy;
              float2 _3941 = _3938.xy;
              float3 _3945 = _3923.xyz;
              bool3 _3946 = bool3(_3945.x <= 0.0f.xxx.x, _3945.y <= 0.0f.xxx.y, _3945.z <= 0.0f.xxx.z);
              bool3 _3947 = bool3(_3945.x >= 1.0f.xxx.x, _3945.y >= 1.0f.xxx.y, _3945.z >= 1.0f.xxx.z);
              float _3950 = _3923.z;
              float2 _3961 = ((_3939 * (_3938.zw - _3941)) + _3941).xy * _54_m10.zw;
              float2 _3963 = floor(_3961 + 0.5f.xx);
              float2 _3964 = _3961 - _3963;
              float _3965 = _3964.x;
              float _3966 = _3965 + 0.5f;
              float _3967 = _3966 * _3966;
              float _3970 = 1.0f - _3965;
              float _3971 = min(_3965, 0.0f);
              float _3974 = _3965 + 1.0f;
              float _3975 = max(_3965, 0.0f);
              float _3986 = _3964.y;
              float _3987 = _3986 + 0.5f;
              float _3988 = _3987 * _3987;
              float _3991 = 1.0f - _3986;
              float _3992 = min(_3986, 0.0f);
              float _3995 = _3986 + 1.0f;
              float _3996 = max(_3986, 0.0f);
              float3 _4008 = float3(0.1599999964237213134765625f * _3970, 0.1599999964237213134765625f * ((_3974 - (_3975 * _3975)) + 1.0f), _3967 * 0.07999999821186065673828125f);
              float3 _4009 = float3(0.1599999964237213134765625f * ((_3967 * 0.5f) - _3965), 0.1599999964237213134765625f * ((_3970 - (_3971 * _3971)) + 1.0f), 0.1599999964237213134765625f * _3974) + _4008;
              float3 _4011 = float3(0.1599999964237213134765625f * _3991, 0.1599999964237213134765625f * ((_3995 - (_3996 * _3996)) + 1.0f), _3988 * 0.07999999821186065673828125f);
              float3 _4012 = float3(0.1599999964237213134765625f * ((_3988 * 0.5f) - _3986), 0.1599999964237213134765625f * ((_3991 - (_3992 * _3992)) + 1.0f), 0.1599999964237213134765625f * _3995) + _4011;
              float3 _4018 = ((_4008 / _4009) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
              float3 _4020 = ((_4011 / _4012) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
              float2 _4022 = _3963 * _54_m10.xy;
              float _4023 = _4018.x;
              float _4024 = _4020.x;
              float2 _4026 = _4022 + float2(_4023, _4024);
              float _4027 = _4018.y;
              float2 _4029 = _4022 + float2(_4027, _4024);
              float _4030 = _4018.z;
              float2 _4032 = _4022 + float2(_4030, _4024);
              float _4033 = _4020.y;
              float2 _4035 = _4022 + float2(_4023, _4033);
              float2 _4037 = _4022 + float2(_4027, _4033);
              float2 _4039 = _4022 + float2(_4030, _4033);
              float _4040 = _4020.z;
              float2 _4042 = _4022 + float2(_4023, _4040);
              float2 _4044 = _4022 + float2(_4027, _4040);
              float2 _4046 = _4022 + float2(_4030, _4040);
              float _4047 = _4009.x;
              float _4048 = _4012.x;
              float _4050 = _4009.y;
              float _4052 = _4009.z;
              float _4054 = _4012.y;
              float _4058 = _4012.z;
              float _4124 = ((((((((_4047 * _4048) * _56.SampleCmpLevelZero(_27, float3(_4026, _386).xy, _3950)) + ((_4050 * _4048) * _56.SampleCmpLevelZero(_27, float3(_4029, _386).xy, _3950))) + ((_4052 * _4048) * _56.SampleCmpLevelZero(_27, float3(_4032, _386).xy, _3950))) + ((_4047 * _4054) * _56.SampleCmpLevelZero(_27, float3(_4035, _386).xy, _3950))) + ((_4050 * _4054) * _56.SampleCmpLevelZero(_27, float3(_4037, _386).xy, _3950))) + ((_4052 * _4054) * _56.SampleCmpLevelZero(_27, float3(_4039, _386).xy, _3950))) + ((_4047 * _4058) * _56.SampleCmpLevelZero(_27, float3(_4042, _386).xy, _3950))) + ((_4050 * _4058) * _56.SampleCmpLevelZero(_27, float3(_4044, _386).xy, _3950));
              float4 _4139 = asfloat(uint4(_58.Load(_3833 * 4 + 0), _58.Load(_3836 * 4 + 0), _58.Load(_3839 * 4 + 0), _58.Load(_3842 * 4 + 0)));
              float _4140 = _4139.w;
              float2 _4142 = min(_3939, 1.0f.xx - _3939);
              _4155 = (_3824 >= 0) ? lerp(1.0f, (any(bool3(_3946.x || _3947.x, _3946.y || _3947.y, _3946.z || _3947.z)) || ((asuint(_3950) & 2147483647u) > 2139095040u)) ? 1.0f : (_4124 + ((_4052 * _4058) * _56.SampleCmpLevelZero(_27, float3(_4046, _386).xy, _3950))), _3623 ? min(_4140, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4139.z - _3920) * 0.25f, min(_4142.x, _4142.y)))) : _4140) : 1.0f;
            } else {
              _4155 = 1.0f;
            }
            _4156 = _4155;
            break;
          } while (false);
          _4876 = _2202 * _4156;
          _4877 = 0.0f.xxx;
        }
        _4878 = _4876;
        _4879 = _4877;
        break;
      } while (false);
      _2227 = _4878;
      _2230 = _2229 + _4879;
    }
    _2199 = _2198 + _2229;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x29F0A9C2:
  float3 _4889 = ((((float3(_1185, _1190, _1195) * _723) * lerp(1.0f, _520.z, _45_m4)) * _18_m22.x) + ((((_1478 * _18_m23.z) * _18_m22.y) * ((_727 * _741.x) + (clamp(50.0f * _727.y, 0.0f, 1.0f) * _741.y).xxx)) * 1.0f)) + lerp((_2173.xyz + (_2198 * _2201)).xyz, (_664.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _545) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  */
  float3 _4889 = ((((float3(_1185, _1190, _1195) * (_723 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _520.z, _45_m4)) * _18_m22.x) + (((((_1478 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_727 * _741.x) + (clamp(50.0f * _727.y, 0.0f, 1.0f) * _741.y).xxx)) * 1.0f)) + lerp((_2173.xyz + ((_2198 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2201)).xyz, (_664.xyz * (_45_m54.xyz * _45_m52)).xyz, clamp((1.0f - _545) / max(1.0f - _45_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  // RenoDX code end
  float4 _4890 = float4(_4889.x, _4889.y, _4889.z, _387.w);
  _4890.w = _545;
  float _4907 = _427.y * _18_m46.w;
  float _4912 = max(0.00999999977648258209228515625f, _4907 + _18_m47.w);
  float3 _4926 = exp(_18_m45.xyz * ((-max(0.0f, (_465 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4912)) / _4912) * exp(_4907 + _18_m48.w))));
  float _4929 = dot(_605, _18_m44.xyz);
  float _4935 = _18_m45.w * _18_m45.w;
  float _4939 = (1.0f + _4935) - ((2.0f * _18_m45.w) * _4929);
  float3 _5269;
  float _5270;
  if (_18_m55.z > 0.0f) {
    uint3 _5097 = (uint3(int3(int(_777.x), int(_777.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5098 = _5097.y;
    uint _5099 = _5097.z;
    uint _5102 = _5097.x + (_5098 * _5099);
    uint _5104 = _5098 + (_5099 * _5102);
    uint _5106 = _5099 + (_5102 * _5104);
    uint _5108 = _5102 + (_5104 * _5106);
    float _5130 = dot(_605, -_16_m0[2].xyz);
    float3 _5140 = _427 - _16_m11.xyz;
    float _5142 = (_18_m55.w * ((_5130 > 5.9604644775390625e-08f) ? (1.0f / _5130) : 0.0f)) * (1.0f / _465);
    float _5143 = _5140.y;
    float _5144 = _5142 * _5143;
    float _5146 = _16_m11.y + _5144;
    float _5147 = _5143 - _5144;
    float _5149 = (1.0f - _5142) * _465;
    float _5163 = max(-127.0f, _18_m49.z * _5147);
    float _5187 = max(-127.0f, _18_m52.x * _5147);
    float _5198 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5146 - _18_m49.x)))) * ((abs(_5163) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5163)) / _5163) : (0.693147182464599609375f - (0.2402265071868896484375f * _5163)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5146 - _18_m52.z)))) * ((abs(_5187) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5187)) / _5187) : (0.693147182464599609375f - (0.2402265071868896484375f * _5187))));
    float _5220 = clamp((_465 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5223 = clamp((max(clamp(exp2(-(_5198 * _5149)), 0.0f, 1.0f), _18_m51.w) + clamp((_465 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5220, 0.0f, 1.0f);
    float4 _5263 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _71.SampleLevel(_24, float3((_1214 + ((((float3(uint3(_5108, _5104 + (_5106 * _5108), _388) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_778 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_778 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5269 = _5263.xyz + (((_18_m51.xyz * (1.0f - _5223)) + (((_18_m54.xyz * pow(clamp(dot(_464, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5198 * max(_5149 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5220))) * _5263.w);
    _5270 = _5263.w * _5223;
  } else {
    float3 _4969 = _427 - _16_m11.xyz;
    float _4971 = _4969.y;
    float _4985 = max(-127.0f, _18_m49.z * _4971);
    float _5009 = max(-127.0f, _18_m52.x * _4971);
    float _5020 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_4985) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4985)) / _4985) : (0.693147182464599609375f - (0.2402265071868896484375f * _4985)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5009) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5009)) / _5009) : (0.693147182464599609375f - (0.2402265071868896484375f * _5009))));
    float _5042 = clamp((_465 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5045 = clamp((max(clamp(exp2(-(_5020 * _465)), 0.0f, 1.0f), _18_m51.w) + clamp((_465 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5042, 0.0f, 1.0f);
    _5269 = (_18_m51.xyz * (1.0f - _5045)) + (((_18_m54.xyz * pow(clamp(dot(_464, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5020 * max(_465 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5042));
    _5270 = _5045;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x29F0A9C2:
  float3 _5276 = ((_4890.xyz * (_4926 * _5270)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4929 * _4929)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4935) / max((12.56637096405029296875f * _4939) * sqrt(_4939), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4926)) * _5270) + _5269)).xyz;
  */
  float3 _5276 = ((_4890.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4926 * _5270)) : (_4926 * _5270))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4929 * _4929)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4935) / max((12.56637096405029296875f * _4939) * sqrt(_4939), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4926)) * _5270 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5269 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5286 = lerp(dot(_5276, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5276, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5296 = min(lerp(((sqrt(sqrt(abs(_695 * 0.5f))) * float2(int2(sign(_695)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _682.xx), 1.0f.xx);
  float4 _5297 = float4(_5296.x, _5296.y, _387.z, _387.w);
  _5297.z = float(clamp(max(dot(_5286.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _545, _545) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5297.w = lerp(0.0f, 0.699999988079071044921875f, _682);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x29F0A9C2:
  _13 = float4(_5286.x, _5286.y, _5286.z, _4890.w);
  */
  float3 renodx_output_color = float3(_5286.x, _5286.y, _5286.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4890.w);
  // RenoDX code end
  _14 = _5297;
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

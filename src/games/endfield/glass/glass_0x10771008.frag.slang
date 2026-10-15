#include "../shared.h"

// Ported from the native 0x10771008 Vulkan dump.
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

struct _41 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _383;
static float4 _384;
static uint _385;

static const float4 _361[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _362[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _363[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
[[vk::binding(6, 1)]] cbuffer _38_39 : register(b6, space1) {
  float _39_m0 : packoffset(c0);
  float _39_m1 : packoffset(c0.y);
  float _39_m2 : packoffset(c0.z);
  float _39_m3 : packoffset(c0.w);
  float _39_m4 : packoffset(c1);
  float _39_m5 : packoffset(c1.y);
  float _39_m6 : packoffset(c1.z);
  float _39_m7 : packoffset(c1.w);
  float _39_m8 : packoffset(c2);
  float _39_m9 : packoffset(c2.y);
  float _39_m10 : packoffset(c2.z);
  float _39_m11 : packoffset(c2.w);
  float _39_m12 : packoffset(c3);
  float _39_m13 : packoffset(c3.y);
  float _39_m14 : packoffset(c3.z);
  float _39_m15 : packoffset(c3.w);
  float _39_m16 : packoffset(c4);
  float _39_m17 : packoffset(c4.y);
  float _39_m18 : packoffset(c4.z);
  float _39_m19 : packoffset(c4.w);
  float _39_m20 : packoffset(c5);
  float _39_m21 : packoffset(c5.y);
  float _39_m22 : packoffset(c5.z);
  float _39_m23 : packoffset(c5.w);
  float _39_m24 : packoffset(c6);
  float _39_m25 : packoffset(c6.y);
  float _39_m26 : packoffset(c6.z);
  float _39_m27 : packoffset(c6.w);
  float _39_m28 : packoffset(c7);
  float _39_m29 : packoffset(c7.y);
  float _39_m30 : packoffset(c7.z);
  float _39_m31 : packoffset(c7.w);
  float4 _39_m32 : packoffset(c8);
  float4 _39_m33 : packoffset(c9);
  float4 _39_m34 : packoffset(c10);
  float4 _39_m35 : packoffset(c11);
  float4 _39_m36 : packoffset(c12);
  float4 _39_m37 : packoffset(c13);
  float4 _39_m38 : packoffset(c14);
  float4 _39_m39 : packoffset(c15);
  float4 _39_m40 : packoffset(c16);
  float4 _39_m41 : packoffset(c17);
  float4 _39_m42 : packoffset(c18);
  float4 _39_m43 : packoffset(c19);
  float4 _39_m44 : packoffset(c20);
  float4 _39_m45 : packoffset(c21);
  float _39_m46 : packoffset(c22);
  float _39_m47 : packoffset(c22.y);
  float _39_m48 : packoffset(c22.z);
  float _39_m49 : packoffset(c22.w);
  float _39_m50 : packoffset(c23);
  float _39_m51 : packoffset(c23.y);
  float _39_m52 : packoffset(c23.z);
  float _39_m53 : packoffset(c23.w);
  float4 _39_m54 : packoffset(c24);
  float4 _39_m55 : packoffset(c25);
  float _39_m56 : packoffset(c26);
  float _39_m57 : packoffset(c26.y);
  float _39_m58 : packoffset(c26.z);
  float _39_m59 : packoffset(c26.w);
  float _39_m60 : packoffset(c27);
  float _39_m61 : packoffset(c27.y);
  float _39_m62 : packoffset(c27.z);
  float _39_m63 : packoffset(c27.w);
};

[[vk::binding(16, 0)]] cbuffer _40_42 : register(b16, space0) {
  float4 _42_m0 : packoffset(c0);
  float4 _42_m1 : packoffset(c1);
  float4 _42_m2 : packoffset(c2);
  float4 _42_m3 : packoffset(c3);
  _41 _42_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _43_44 : register(b13, space0) {
  float4 _44_m0 : packoffset(c0);
  float4 _44_m1 : packoffset(c1);
  float4 _44_m2 : packoffset(c2);
  float4 _44_m3 : packoffset(c3);
  float4 _44_m4 : packoffset(c4);
  uint4 _44_m5 : packoffset(c5);
  float4 _44_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _45_46 : register(b49, space0) {
  int _46_m0 : packoffset(c0);
  int _46_m1 : packoffset(c0.y);
  int _46_m2 : packoffset(c0.z);
  int _46_m3 : packoffset(c0.w);
  int _46_m4 : packoffset(c1);
  int _46_m5 : packoffset(c1.y);
  int _46_m6 : packoffset(c1.z);
  int _46_m7 : packoffset(c1.w);
  float _46_m8 : packoffset(c2);
  float _46_m9 : packoffset(c2.y);
  float _46_m10 : packoffset(c2.z);
  float _46_m11 : packoffset(c2.w);
  float _46_m12 : packoffset(c3);
  float _46_m13 : packoffset(c3.y);
  float _46_m14 : packoffset(c3.z);
  float _46_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _47_48 : register(b14, space0) {
  column_major float4x4 _48_m0[5] : packoffset(c0);
  float4 _48_m1[4] : packoffset(c20);
  float4 _48_m2[4] : packoffset(c24);
  float4 _48_m3[4] : packoffset(c28);
  float4 _48_m4 : packoffset(c32);
  float4 _48_m5 : packoffset(c33);
  float4 _48_m6 : packoffset(c34);
  float4 _48_m7 : packoffset(c35);
  float4 _48_m8 : packoffset(c36);
  float4 _48_m9[27] : packoffset(c37);
  float4 _48_m10 : packoffset(c64);
  float4 _48_m11 : packoffset(c65);
  float4 _48_m12[62] : packoffset(c66);
  column_major float4x4 _48_m13[15] : packoffset(c128);
  float4 _48_m14[15] : packoffset(c188);
  float4 _48_m15[15] : packoffset(c203);
  float4 _48_m16[15] : packoffset(c218);
  float4 _48_m17 : packoffset(c233);
  float4 _48_m18 : packoffset(c234);
  float4 _48_m19[21] : packoffset(c235);
  column_major float4x4 _48_m20 : packoffset(c256);
  column_major float4x4 _48_m21 : packoffset(c260);
  float4 _48_m22 : packoffset(c264);
  float4 _48_m23 : packoffset(c265);
  float4 _48_m24 : packoffset(c266);
  float4 _48_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _52 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _67_68 : register(b51, space0) {
  float4 _68_m0[32] : packoffset(c0);
  column_major float4x4 _68_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _29 : register(t25, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _32 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _33 : register(s2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3, space1);
[[vk::binding(0, 1)]] SamplerState _35 : register(s0, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _36 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1, space1);
[[vk::binding(8, 0)]] Texture2D<float4> _49 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _50 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _53 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _54 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _55 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _58 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _59 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _60 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _61 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _62 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _63 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _64 : register(t31, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _65 : register(t37, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _66 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _71 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _72 : register(t29, space0);

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
  float _411 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
  float _420 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_39_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _422 = abs(_420);
  if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _422 : (-_422)), (1.0f - _411) - _420) < 0.0f) {
    discard;
  }
  float2 _442 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _445 = float4(_442, gl_FragCoord.z, 1.0f);
  _445.y = -_442.y;
  float4 _448 = mul(_16_m6, _445);
  float3 _452 = _448.xyz / _448.w.xxx;
  float4 _456 = float4(_452, 1.0f);
  float _463 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _470 = cross(_6, float4(_7.xyz, _463).xyz) * _463;
  float3 _485;
  do {
    if (_18_m4.w == 0.0f) {
      _485 = _16_m11.xyz - _452;
      break;
    } else {
      _485 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _486 = dot(_485, _485);
  float _488 = rsqrt(max(_486, 9.9999999392252902907785028219223e-09f));
  float3 _489 = _485 * _488;
  float _490 = _486 * _488;
  float2 _511 = (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw;
  float4 _525 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
  float4 _529 = _34.SampleBias(_35, _511, _39_m13 + _18_m16);
  _529.w = _529.w * _529.x;
  float2 _537 = ((_529.wy * 2.0f) - 1.0f.xx).xy;
  float _542 = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_537, _537), 0.0f, 1.0f)));
  float2 _543 = _537 * _39_m0;
  float4 _545 = _36.SampleBias(_37, _511, _18_m16);
  float _561 = _525.w;
  float _564 = _561 * _39_m32.w;
  float _570 = lerp(_564, _564 * _8.x, _39_m60);
  float _575 = lerp(_39_m2, _39_m3, _545.y);
  float _585 = lerp(_545.x, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
  float _593 = clamp(_39_m57, 0.0f, 1.0f);
  float _601 = clamp((lerp(1.0f, lerp(_561, _545.w, clamp(_39_m57 - 2.0f, 0.0f, 1.0f)), _593) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
  float3 _633 = lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _601) * _39_m56, _593.xxx);
  float _637 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _601);
  float3 _642 = lerp(clamp((_525.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _637).xxx + (_21_m0[_11]._m9.xyz * _637));
  float3 _670;
  [branch] if (_39_m49 > 0.5f) {
    _670 = _633 + ((_39_m55.xyz * ((1.0f - pow(clamp(abs(dot(_489, lerp(normalize(((_7.xyz * _543.x) + (_470 * _543.y)) + (_6 * _542)), _6, _39_m53.xxx))) + _39_m50, 0.0f, 1.0f), _39_m51)) * lerp(1.0f, _8.y, _39_m52))) * 1.0f);
  }
  else {
    _670 = _633;
  }
  float3 _693 = ((_7.xyz * _543.x) + (_470 * _543.y)) + (_6 * (_542 * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _697 = _693 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_693, _693)));
  float _704 = clamp(float(int(sign(_411 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _717 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _717.y = -_717.y;
  float _743 = 0.07999999821186065673828125f * _39_m1;
  float3 _744 = _642 * _585;
  float3 _745 = _642 - _744;
  float3 _749 = (_743 - (_743 * _585)).xxx + _744;
  float _750 = dot(_697, _489);
  float4 _753 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _575) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _754 = _753.x;
  float2 _764 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_754 * _754, exp2((-9.27999973297119140625f) * max(0.0f, _750))) * _754) + _753.y)) + _753.zw;
  uint2 _804;
  float _805;
  if (_18_m24.y == 1.0f) {
    float4 _781 = mul(_18_m138, _456);
    float4 _784 = _781;
    _784.y = -_781.y;
    float4 _787 = _784 * (1.0f / _781.w);
    _804 = uint2(clamp(((_787.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _805 = 1.0f / ((_18_m2.z * _787.z) + _18_m2.w);
  } else {
    _804 = uint2(gl_FragCoord.xy);
    _805 = abs(mul(_16_m0, _456).z);
  }
  float3 _807 = _452 + (_697 * 0.25f);
  float3 _817 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _826 = _807 - (_18_m108.xyz + (_817 * (-_18_m110.w)));
  float _841 = max(min(max((max(abs(_826.x), abs(_826.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_826.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1143;
  float4 _1144;
  float4 _1145;
  float _1146;
  float _1147;
  if ((_18_m108.w != 0.0f) && (_841 < 1.0f)) {
    float3 _854 = _807 - (_18_m108.xyz + (_817 * (-_18_m110.y)));
    float _868 = max(clamp((max(abs(_854.x), abs(_854.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_854.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _944;
    float4 _945;
    float4 _946;
    float4 _947;
    if (_868 < 1.0f) {
      float3 _877 = ((_807 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _879 = _877 - floor(_877);
      float4 _883 = _59.SampleLevel(_24, _879, 0.0f);
      float _884 = 1.0f - _868;
      float _888 = _18_m109.y * 0.5f;
      float _893 = _879.x;
      float _894 = clamp(_879.y, _888, 1.0f - _888) * 0.3333333432674407958984375f;
      float _895 = _879.z;
      float4 _898 = _60.SampleLevel(_23, float3(_893, _894, _895), 0.0f);
      _944 = _841 + (_898.w * _884);
      _945 = float4(((_60.SampleLevel(_23, float3(_893, _894 + 0.666666686534881591796875f, _895), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _883.z, _883.z) * _884;
      _946 = float4(((_60.SampleLevel(_23, float3(_893, _894 + 0.3333333432674407958984375f, _895), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _883.y, _883.y) * _884;
      _947 = float4(((_898.xyz * 4.0f) - 2.0f.xxx) * _883.x, _883.x) * _884;
    } else {
      _944 = _841;
      _945 = 0.0f.xxxx;
      _946 = 0.0f.xxxx;
      _947 = 0.0f.xxxx;
    }
    float3 _953 = _807 - (_18_m108.xyz + (_817 * (-_18_m110.z)));
    float _967 = max(clamp((max(abs(_953.x), abs(_953.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_953.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1047;
    float4 _1048;
    float4 _1049;
    float4 _1050;
    if (_967 < 1.0f) {
      float3 _976 = ((_807 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _978 = _976 - floor(_976);
      float4 _982 = _61.SampleLevel(_24, _978, 0.0f);
      float _984 = _868 * (1.0f - _967);
      float _988 = _18_m109.y * 0.5f;
      float _993 = _978.x;
      float _994 = clamp(_978.y, _988, 1.0f - _988) * 0.3333333432674407958984375f;
      float _995 = _978.z;
      float4 _998 = _62.SampleLevel(_23, float3(_993, _994, _995), 0.0f);
      _1047 = _944 + (_998.w * _984);
      _1048 = _945 + (float4(((_62.SampleLevel(_23, float3(_993, _994 + 0.666666686534881591796875f, _995), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _982.z, _982.z) * _984);
      _1049 = _946 + (float4(((_62.SampleLevel(_23, float3(_993, _994 + 0.3333333432674407958984375f, _995), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _982.y, _982.y) * _984);
      _1050 = _947 + (float4(((_998.xyz * 4.0f) - 2.0f.xxx) * _982.x, _982.x) * _984);
    } else {
      _1047 = _944;
      _1048 = _945;
      _1049 = _946;
      _1050 = _947;
    }
    float4 _1133;
    float4 _1134;
    float4 _1135;
    float _1136;
    if (_967 > 0.0f) {
      float3 _1059 = ((_807 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1062 = _18_m109.xyz * 0.5f;
      float3 _1064 = clamp(_1059 - floor(_1059), _1062, 1.0f.xxx - _1062);
      float4 _1068 = _63.SampleLevel(_24, _1064, 0.0f);
      float _1070 = _967 * (1.0f - _841);
      float _1074 = _18_m109.y * 0.5f;
      float _1080 = clamp(_1064.y, _1074, 1.0f - _1074) * 0.3333333432674407958984375f;
      float4 _1084 = _64.SampleLevel(_23, float3(_1064.x, _1080, _1064.z), 0.0f);
      float _1100 = _1068.x;
      float _1111 = _1068.y;
      float _1122 = _1068.z;
      _1133 = _1048 + (float4(((_64.SampleLevel(_23, float3(_1064.x, _1080 + 0.666666686534881591796875f, _1064.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1122, _1122) * _1070);
      _1134 = _1049 + (float4(((_64.SampleLevel(_23, float3(_1064.x, _1080 + 0.3333333432674407958984375f, _1064.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1111, _1111) * _1070);
      _1135 = _1050 + (float4(((_1084.xyz * 4.0f) - 2.0f.xxx) * _1100, _1100) * _1070);
      _1136 = _1047 + (_1084.w * _1070);
    } else {
      _1133 = _1048;
      _1134 = _1049;
      _1135 = _1050;
      _1136 = _1047;
    }
    float _1139 = clamp((_1136 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1143 = _1133;
    _1144 = _1134;
    _1145 = _1135;
    _1146 = _1139 - _841;
    _1147 = (_1139 + _841) * 0.5f;
  } else {
    _1143 = 0.0f.xxxx;
    _1144 = 0.0f.xxxx;
    _1145 = 0.0f.xxxx;
    _1146 = 0.0f;
    _1147 = 1.0f;
  }
  float4 _1167 = _1145 + float4(_18_m111.x * _1147, (_18_m111.y * _1147) + ((_18_m111.w * _1146) * 0.5f), _18_m111.z * _1147, (_18_m111.w * _1147) + ((_18_m111.y * _1146) * 0.375f));
  float4 _1187 = _1144 + float4(_18_m112.x * _1147, (_18_m112.y * _1147) + ((_18_m112.w * _1146) * 0.5f), _18_m112.z * _1147, (_18_m112.w * _1147) + ((_18_m112.y * _1146) * 0.375f));
  float4 _1207 = _1143 + float4(_18_m113.x * _1147, (_18_m113.y * _1147) + ((_18_m113.w * _1146) * 0.5f), _18_m113.z * _1147, (_18_m113.w * _1147) + ((_18_m113.y * _1146) * 0.375f));
  float _1212 = max(0.0f, dot(_1167.xyz, _697) + _1167.w);
  float _1217 = max(0.0f, dot(_1187.xyz, _697) + _1187.w);
  float _1222 = max(0.0f, dot(_1207.xyz, _697) + _1207.w);
  float3 _1232 = -_489;
  float3 _1233 = reflect(_1232, _697);
  float _1241 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_575, 0.001000000047497451305389404296875f))));
  float2 _1242 = float2(_804);
  float2 _1246 = floor(_1242 * _42_m0.w);
  float _1263 = floor(_805 - _42_m2.y);
  float _1267 = clamp(_1263, 0.0f, _42_m1.x - 1.0f);
  uint _1277 = (_1263 <= _1267) ? (_31.Load(uint(_18_m21.z + int(_1246.x + (_1246.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1267)) * 4 + 0)) : 0u;
  float _1280 = dot(float4(_1212, _1217, _1222, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1282;
  float _1285;
  uint _1287;
  _1282 = 0.0f.xxx;
  _1285 = 1.0f;
  _1287 = _1277;
  uint _1288;
  float3 _1283;
  float _1286;
  bool _1290;
  [loop] for (;;) {
    bool _1289 = _1287 != 0u;
    _1290 = _1285 > 0.00999999977648258209228515625f;
    if (_1289 && _1290) {
      uint _1294 = firstbitlow(_1287);
      _1288 = _1287 ^ (1u << (_1294 & 31u));
      float3 _1314 = float3(dot(_42_m4[_1294]._m2, _456), dot(_42_m4[_1294]._m3, _456), dot(_42_m4[_1294]._m4, _456));
      float3 _1315 = abs(_1314);
      if (all(bool3(_1315.x <= _42_m4[_1294]._m1.xyz.x, _1315.y <= _42_m4[_1294]._m1.xyz.y, _1315.z <= _42_m4[_1294]._m1.xyz.z))) {
        float3 _1324 = _42_m4[_1294]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1326 = _1315 * 0.100000001490116119384765625f;
        float3 _1327 = _1326 * _1326;
        float3 _1330 = (_42_m4[_1294]._m1.xyz - _1315) * _42_m4[_1294]._m5.xyz;
        float3 _1378;
        [branch] if (_42_m4[_1294]._m6.x == 1.0f) {
          float3 _1363 = float3(dot(_42_m4[_1294]._m2.xyz, _1233), dot(_42_m4[_1294]._m3.xyz, _1233), dot(_42_m4[_1294]._m4.xyz, _1233));
          float3 _1365 = (_42_m4[_1294]._m1.xyz - _1314) / _1363;
          float3 _1368 = ((-_42_m4[_1294]._m1.xyz) - _1314) / _1363;
          bool3 _1369 = bool3(_1363.x > 0.0f.xxx.x, _1363.y > 0.0f.xxx.y, _1363.z > 0.0f.xxx.z);
          float3 _1370 = float3(_1369.x ? _1365.x : _1368.x, _1369.y ? _1365.y : _1368.y, _1369.z ? _1365.z : _1368.z);
          _1378 = _1314 + (_1363 * min(min(_1370.x, _1370.y), _1370.z));
        }
        else {
          _1378 = _1233;
        }
        float3 _1379 = normalize(_1378);
        float3 _1382 = float3(int3(sign(_1379)));
        float3 _1385 = _1379 / dot(_1379, _1382).xxx;
        float3 _1399;
        if (_1385.z < 0.0f) {
          float3 _1390 = abs(_1385);
          float2 _1397 = _1382.xy * float2(1.0f - _1390.y, 1.0f - _1390.x);
          _1399 = float3(_1397.x, _1397.y, _1385.z);
        } else {
          _1399 = _1385;
        }
        float _1424 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1294]._m0, float4(_697, 1.0f))));
        float _1437 = clamp((min(_1330.x, min(_1330.y, _1330.z)) * _42_m4[_1294]._m6.y) + ((((((_1324 * _1324).x - ((_1327.x + _1327.y) + _1327.z)) * _42_m4[_1294]._m5.x) * _42_m4[_1294]._m5.x) * (1.0f - _42_m4[_1294]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1294]._m6.w;
        _1283 = _1282 + ((((_29.SampleLevel(_25, float3((((_1399.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1294]._m1.w), _1241).xyz * _42_m4[_1294]._m5.w) * ((((((clamp(abs(_1280 / _1424), 0.0f, 1.0f) * 2.0f) + _1280) / (2.0f + _1424)) - 1.0f) * _18_m23.w) + 1.0f)) * _1437) * _1285);
        _1286 = _1285 * (1.0f - _1437);
      } else {
        _1283 = _1282;
        _1286 = _1285;
      }
      _1282 = _1283;
      _1285 = _1286;
      _1287 = _1288;
      continue;
    } else {
      break;
    }
  }
  float3 _1506;
  if (_1290) {
    float3 _1445 = normalize(_1233);
    float3 _1448 = float3(int3(sign(_1445)));
    float3 _1451 = _1445 / dot(_1445, _1448).xxx;
    float3 _1465;
    if (_1451.z < 0.0f) {
      float3 _1456 = abs(_1451);
      float2 _1463 = _1448.xy * float2(1.0f - _1456.y, 1.0f - _1456.x);
      _1465 = float3(_1463.x, _1463.y, _1451.z);
    } else {
      _1465 = _1451;
    }
    float _1492 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_697, 1.0f))));
    _1506 = _1282 + ((_29.SampleLevel(_25, float3((((_1465.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1241).xyz * ((((((clamp(abs(_1280 / _1492), 0.0f, 1.0f) * 2.0f) + _1280) / (2.0f + _1492)) - 1.0f) * _18_m23.w) + 1.0f)) * _1285);
  } else {
    _1506 = _1282;
  }
  float4 _2197;
  do {
    [branch] if (_46_m4 == 0) {
      _2197 = 0.0f.xxxx;
      break;
    }
    float2 _2056;
    do {
      if (_48_m7.w >= 0.9900000095367431640625f) {
        _2056 = float2(_48_m7.z, 1.0f);
        break;
      }
      int _1535 = int(_48_m7.x);
      bool3 _1537 = (_1535 == 2).xxx;
      float3 _1545 = _452 - float3(_1537.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1537.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1537.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
      float _1556 = max(clamp((_48_m6.w - dot(_1545, _1545)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
      float _1773;
      bool _1774;
      if (_1556 > 0.0f) {
        float _1771;
        bool _1772;
        if (_1535 > 0) {
          float3 _1563 = _452 - _48_m1[0].xyz;
          float3 _1567 = _452 - _48_m1[1].xyz;
          float3 _1571 = _452 - _48_m1[2].xyz;
          float3 _1575 = _452 - _48_m1[3].xyz;
          float4 _1580 = float4(dot(_1563, _1563), dot(_1567, _1567), dot(_1571, _1571), dot(_1575, _1575));
          float4 _1589 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
          float4 _1591 = float4(bool4(_1580.x < _1589.x, _1580.y < _1589.y, _1580.z < _1589.z, _1580.w < _1589.w));
          float3 _1595 = clamp(_1591.yzw - _1591.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1599 = clamp(4.0f - dot(float4(_1591.x, _1595.x, _1595.y, _1595.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1601 = clamp(_1599 + 1.0f, 0.0f, 3.0f);
          uint _1602 = uint(_1599);
          uint _1610 = uint(_1601);
          float _1616 = dot(_1580, _361[_1610]) / _48_m1[_1610].w;
          float _1633;
          if (((_1601 > _1599) && (_1616 >= 0.0f)) && (_1616 <= 1.0f)) {
            _1633 = _1599 + step(frac(52.98291778564453125f * frac(dot(_1242 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1580, _361[_1602]) / _48_m1[_1602].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1633 = _1599;
          }
          float _1634 = clamp(_1633, 0.0f, 4.0f);
          float4 _1638 = mul(_48_m0[uint(_1634)], _456);
          float _1641 = _1638.z;
          float4 _1642 = float4(_1638.xy, _1641, _1634);
          float3 _1643 = _1642.xyz;
          bool3 _1644 = bool3(_1643.x <= 0.0f.xxx.x, _1643.y <= 0.0f.xxx.y, _1643.z <= 0.0f.xxx.z);
          bool3 _1645 = bool3(_1643.x >= 1.0f.xxx.x, _1643.y >= 1.0f.xxx.y, _1643.z >= 1.0f.xxx.z);
          bool _1651 = any(bool3(_1644.x || _1645.x, _1644.y || _1645.y, _1644.z || _1645.z)) || ((asuint(_1641) & 2147483647u) > 2139095040u);
          int _1652 = int(_1634);
          float2 _1669 = float4(_48_m3[_1652].xy + (_1642.xy * _48_m3[_1652].zw), _1641, _1634).xy * _48_m4.zw;
          float2 _1671 = floor(_1669 + 0.5f.xx);
          float2 _1672 = _1669 - _1671;
          float _1673 = _1672.x;
          float _1674 = _1673 + 0.5f;
          float _1676 = (_1674 * _1674) * 0.5f;
          float _1679 = min(_1673, 0.0f);
          float _1683 = max(_1673, 0.0f);
          float4 _1687 = float4(_1676 - _1673, (1.0f - _1673) - (_1679 * _1679), (_1673 + 1.0f) - (_1683 * _1683), _1676) * 0.44444000720977783203125f;
          float _1688 = _1672.y;
          float _1689 = _1688 + 0.5f;
          float _1691 = (_1689 * _1689) * 0.5f;
          float _1694 = min(_1688, 0.0f);
          float _1698 = max(_1688, 0.0f);
          float4 _1702 = float4(_1691 - _1688, (1.0f - _1688) - (_1694 * _1694), (_1688 + 1.0f) - (_1698 * _1698), _1691) * 0.44444000720977783203125f;
          float2 _1704 = _1687.yw;
          float2 _1705 = _1687.xz + _1704;
          float2 _1707 = _1702.yw;
          float2 _1708 = _1702.xz + _1707;
          float2 _1714 = ((_1704 / _1705) + float2(-1.5f, 0.5f)) * _48_m4.xx;
          float2 _1716 = ((_1707 / _1708) + float2(-1.5f, 0.5f)) * _48_m4.yy;
          float2 _1718 = _1671 * _48_m4.xy;
          float _1719 = _1714.x;
          float _1720 = _1716.x;
          float _1723 = _1714.y;
          float _1726 = _1716.y;
          float _1731 = _1705.x;
          float _1732 = _1708.x;
          float _1734 = _1705.y;
          float _1736 = _1708.y;
          _1771 = _1651 ? 1.0f : (((((_1731 * _1732) * _49.SampleCmpLevelZero(_26, float3(_1718 + float2(_1719, _1720), _383).xy, _1641)) + ((_1734 * _1732) * _49.SampleCmpLevelZero(_26, float3(_1718 + float2(_1723, _1720), _383).xy, _1641))) + ((_1731 * _1736) * _49.SampleCmpLevelZero(_26, float3(_1718 + float2(_1719, _1726), _383).xy, _1641))) + ((_1734 * _1736) * _49.SampleCmpLevelZero(_26, float3(_1718 + float2(_1723, _1726), _383).xy, _1641)));
          _1772 = _1651;
        } else {
          _1771 = 1.0f;
          _1772 = false;
        }
        _1773 = _1771;
        _1774 = _1772;
      } else {
        _1773 = 1.0f;
        _1774 = false;
      }
      float _1974;
      float _1975;
      if ((_1556 < 1.0f) || (_48_m8.x > 0.5f)) {
        float _1785 = 1.0f - clamp(dot(_697, _44_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1802 = float4((_452 - (_44_m0.xyz * (_1785 * _48_m22.x))) + (_697 * (_1785 * _48_m22.y)), 1.0f);
        float4 _1803 = mul(_48_m21, _1802);
        float2 _1804 = _1803.xy;
        float _1972;
        if (all(bool2(_1804.x > 0.0f.xx.x, _1804.y > 0.0f.xx.y)) && all(bool2(_1804.x < 1.0f.xx.x, _1804.y < 1.0f.xx.y))) {
          uint _1823 = clamp(uint((floor(_1803.y * _48_m23.z) + _1803.x) * _48_m23.y), 0u, 127u);
          uint _1827 = asuint(_48_m25[_1823].x);
          float2 _1828 = spvUnpackHalf2x16(_1827);
          float _1829 = _1828.x;
          float _1971;
          if (_1829 >= 0.0f) {
            float4x4 _1838 = _48_m20;
            _1838[0].w = _48_m25[_1823].y;
            _1838[1].w = _48_m25[_1823].z;
            _1838[2].w = _48_m25[_1823].w;
            float4 _1845 = mul(_1838, _1802);
            float3 _1846 = _1845.xyz;
            float _1970;
            if (all(bool3(_1846.x > 0.0f.xxx.x, _1846.y > 0.0f.xxx.y, _1846.z > 0.0f.xxx.z)) && all(bool3(_1846.x < 1.0f.xxx.x, _1846.y < 1.0f.xxx.y, _1846.z < 1.0f.xxx.z))) {
              float _1863 = _1845.z;
              float2 _1869 = float4((_1845.xy * _48_m22.zw) + float2(_1829, spvUnpackHalf2x16(_1827 >> 16u).x), _1863, 1.0f).xy * _48_m24.zw;
              float2 _1871 = floor(_1869 + 0.5f.xx);
              float2 _1872 = _1869 - _1871;
              float _1873 = _1872.x;
              float _1874 = _1873 + 0.5f;
              float _1876 = (_1874 * _1874) * 0.5f;
              float _1879 = min(_1873, 0.0f);
              float _1883 = max(_1873, 0.0f);
              float4 _1887 = float4(_1876 - _1873, (1.0f - _1873) - (_1879 * _1879), (_1873 + 1.0f) - (_1883 * _1883), _1876) * 0.44444000720977783203125f;
              float _1888 = _1872.y;
              float _1889 = _1888 + 0.5f;
              float _1891 = (_1889 * _1889) * 0.5f;
              float _1894 = min(_1888, 0.0f);
              float _1898 = max(_1888, 0.0f);
              float4 _1902 = float4(_1891 - _1888, (1.0f - _1888) - (_1894 * _1894), (_1888 + 1.0f) - (_1898 * _1898), _1891) * 0.44444000720977783203125f;
              float2 _1905 = _1887.xz + _1887.yw;
              float2 _1908 = _1902.xz + _1902.yw;
              float2 _1914 = ((_1887.yw / _1905) + float2(-1.5f, 0.5f)) * _48_m24.xx;
              float2 _1916 = ((_1902.yw / _1908) + float2(-1.5f, 0.5f)) * _48_m24.yy;
              float2 _1918 = _1871 * _48_m24.xy;
              float _1919 = _1914.x;
              float _1920 = _1916.x;
              float2 _1922 = _1918 + float2(_1919, _1920);
              float _1923 = _1914.y;
              float2 _1925 = _1918 + float2(_1923, _1920);
              float _1926 = _1916.y;
              float2 _1928 = _1918 + float2(_1919, _1926);
              float2 _1930 = _1918 + float2(_1923, _1926);
              float _1931 = _1905.x;
              float _1932 = _1908.x;
              float _1934 = _1905.y;
              float _1936 = _1908.y;
              _1970 = ((((_1931 * _1932) * _54.SampleCmpLevelZero(_26, float3(_1922, _383).xy, _1863)) + ((_1934 * _1932) * _54.SampleCmpLevelZero(_26, float3(_1925, _383).xy, _1863))) + ((_1931 * _1936) * _54.SampleCmpLevelZero(_26, float3(_1928, _383).xy, _1863))) + ((_1934 * _1936) * _54.SampleCmpLevelZero(_26, float3(_1930, _383).xy, _1863));
            } else {
              _1970 = 1.0f;
            }
            _1971 = _1970;
          } else {
            _1971 = 1.0f;
          }
          _1972 = _1971;
        } else {
          _1972 = 1.0f;
        }
        _1974 = _1774 ? _1972 : _1773;
        _1975 = _1972;
      } else {
        _1974 = _1773;
        _1975 = 1.0f;
      }
      float _1978 = lerp(lerp(_1975, _1974, _1556), min(_1975, _1974), _48_m8.x);
      float _2051;
      if (_1978 > 0.001000000047497451305389404296875f) {
        float3 _2013 = _452 - _18_m65.xyz;
        float2 _2018 = (_2013 + (_18_m68.xyz * _2013.y)).xz * _18_m66.z;
        float2 _2019 = _18_m67.xy * _18_m77.w;
        float3 _2026 = _452 - _18_m69.xyz;
        float2 _2034 = _18_m69.w.xx;
        float4 _2041 = _53.SampleLevel(_24, lerp(_2018 * _18_m67.w, (_2026 + (_18_m68.xyz * _2026.y)).xz * _18_m70.x, _2034) + lerp(_2019, _18_m70.yz * _18_m77.w, _2034), 0.0f);
        _2051 = _1978 * lerp(1.0f, lerp(_53.SampleLevel(_24, _2018 + _2019, 0.0f).x, lerp(_2041.x, _2041.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2013.xz))), _18_m67.z);
      } else {
        _2051 = _1978;
      }
      _2056 = float2(lerp(_2051, _48_m7.z, _48_m7.w), _2051);
      break;
    } while (false);
    float _2061 = lerp(1.0f, min(1.0f, _2056.x), _48_m6.x);
    float4 _2196;
    if (_2061 > 0.001000000047497451305389404296875f) {
      float3 _2071 = -_44_m0.xyz;
      float _2076 = dot(_2071, _1233);
      float3 _2078 = _1233 - (_2071 * _2076);
      bool3 _2080 = (_2076 < _44_m4.z).xxx;
      float3 _2088 = normalize((_2071 * _44_m4.z) + ((_2078 * rsqrt(max(6.103515625e-05f, dot(_2078, _2078)))) * _44_m4.y));
      float3 _2089 = float3(_2080.x ? _2088.x : _1233.x, _2080.y ? _2088.y : _1233.y, _2080.z ? _2088.z : _1233.z);
      float3 _2093 = _2089 + _489;
      float3 _2097 = _2093 * rsqrt(max(6.103515625e-05f, dot(_2093, _2093)));
      float _2098 = clamp(dot(_2089, _697), 0.0f, 1.0f);
      float _2100 = clamp(dot(_697, _2097), 0.0f, 1.0f);
      float _2103 = clamp(_750, 0.0f, 1.0f);
      float _2104 = _575 * _575;
      float _2105 = _2104 * _2104;
      float _2126 = (((_2100 * _2105) - _2100) * _2100) + 1.0f;
      float _2129 = 1.0f - clamp(dot(_489, _2097), 0.0f, 1.0f);
      float _2130 = _2129 * _2129;
      float _2132 = (_2129 * _2130) * _2130;
      float _2156 = 1.0f - _575;
      float _2163 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2156 * (1.04997003078460693359375f + (_2156 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2156))))));
      float _2164 = 1.0f - _2163;
      float3 _2167 = _749 + ((1.0f.xxx - _749) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x10771008:
      float3 _2183 = ((clamp((min(((_749 * (1.0f - _2132)) + _2132.xxx) * ((_2105 / (_2126 * _2126)) * (0.5f / (((_2098 * sqrt(((((-_2103) * _2105) + _2103) * _2103) + _2105)) + (_2103 * sqrt(((((-_2098) * _2105) + _2098) * _2098) + _2105))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2167 * (((_58.SampleLevel(_23, (float2(_2103, _575) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2098, _575) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2163) / _2164)) * _2167) / (1.0f.xxx - (_2167 * _2164)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * _2098) + ((_745 * 1.0f) * _2098)) * _44_m1.xyz;
      */
      float3 _2183 = (((clamp((min(((_749 * (1.0f - _2132)) + _2132.xxx) * ((_2105 / (_2126 * _2126)) * (0.5f / (((_2098 * sqrt(((((-_2103) * _2105) + _2103) * _2103) + _2105)) + (_2103 * sqrt(((((-_2098) * _2105) + _2098) * _2098) + _2105))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2167 * (((_58.SampleLevel(_23, (float2(_2103, _575) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2098, _575) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2163) / _2164)) * _2167) / (1.0f.xxx - (_2167 * _2164)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2098) + ((_745 * 1.0f) * _2098)) * _44_m1.xyz;
      // RenoDX code end
      float3 _2194 = lerp(_2183, _2183 * _55.SampleBias(_23, float2(_2061, 0.5f), _18_m16).xyz, (1.0f - _2061).xxx) * 1.0f;
      _2196 = float4(_2194.x, _2194.y, _2194.z, 0.0f.xxxx.w);
    } else {
      _2196 = 0.0f.xxxx;
    }
    _2197 = _2196;
    break;
  } while (false);
  float2 _2199 = floor(_1242 * 0.03125f);
  int _2207 = int((_2199.x + (_2199.y * _46_m9)) * 8.0f);
  float _2214 = floor(_805 - (_18_m3.y * _46_m15));
  float _2218 = clamp(_2214, 0.0f, _46_m11 - 1.0f);
  int _2220 = int(_2218 * 8.0f);
  float3 _2222;
  float _2225;
  _2222 = 0.0f.xxx;
  _2225 = 1.0f;
  float3 _2223;
  float _2226;
  [loop] for (int _2227 = 0; _2227 <= 7; _2222 = _2223, _2225 = _2226, _2227++) {
    uint _2248 = (_2214 <= _2218) ? (_31.Load(uint((_46_m2 + _2207) + _2227) * 4 + 0) & _31.Load(uint((_46_m3 + _2220) + _2227) * 4 + 0)) : 0u;
    uint _2249 = uint(_2227);
    float3 _2253;
    _2226 = _2225;
    _2253 = 0.0f.xxx;
    uint _2256;
    float _2251;
    float3 _2254;
    [loop] for (uint _2255 = _2248; _2255 != 0u; _2226 = _2251, _2253 = _2254, _2255 = _2256) {
      uint _2260 = firstbitlow(_2255);
      _2256 = _2255 ^ (1u << (_2260 & 31u));
      int _2266 = int((32u * _2249) + _2260) * 8;
      int _2269 = _2266 + 1;
      int _2272 = _2266 + 2;
      int _2275 = _2266 + 3;
      int _2278 = _2266 + 4;
      int _2281 = _2266 + 5;
      int _2284 = _2266 + 6;
      int _2287 = _2266 + 7;
      uint _2291 = uint(_44_m6[_2281].w);
      float _2366;
      if ((_2291 & 1u) == 1u) {
        uint _2297 = asuint(_44_m6[_2281].x);
        uint _2304 = asuint(_44_m6[_2281].y);
        uint _2311 = asuint(_44_m6[_2281].z);
        uint _2318 = asuint(_44_m6[_2284].x);
        uint _2325 = asuint(_44_m6[_2284].y);
        uint _2332 = asuint(_44_m6[_2284].z);
        float3 _2351 = abs(mul(float4(_452 - _44_m6[_2269].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2297).x, spvUnpackHalf2x16(_2311).x, spvUnpackHalf2x16(_2325).x, 0.0f), float4(spvUnpackHalf2x16(_2297 >> 16u).x, spvUnpackHalf2x16(_2311 >> 16u).x, spvUnpackHalf2x16(_2325 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2304).x, spvUnpackHalf2x16(_2318).x, spvUnpackHalf2x16(_2332).x, 0.0f), float4(spvUnpackHalf2x16(_2304 >> 16u).x, spvUnpackHalf2x16(_2318 >> 16u).x, spvUnpackHalf2x16(_2332 >> 16u).x, 0.0f))).xyz);
        float _2358 = _44_m6[_2287].x * 0.5f;
        float _2364 = 1.0f - clamp((max(max(_2351.x, _2351.y), _2351.z) - (_2358 + 0.5f)) / (0.5f - _2358), 0.0f, 1.0f);
        _2366 = _2364 * _2364;
      } else {
        _2366 = 1.0f;
      }
      uint _2370 = uint(_44_m6[_2266].w);
      bool _2373 = _44_m6[_2275].z > 0.5f;
      if ((false || (_2366 < 0.001000000047497451305389404296875f)) || ((_2370 < 4u) && _2373)) {
        _2251 = _2226;
        _2254 = _2253;
        continue;
      }
      float _4902;
      float3 _4903;
      do {
        [branch] if (_2370 >= 4u) {
          float3 _3602;
          do {
            float3 _2392 = _44_m6[_2269].xyz - _452;
            if (dot(_44_m6[_2275].xyz, _2392) > 0.0f) {
              _3602 = 0.0f.xxx;
              break;
            }
            float _2399 = dot(_2392, _2392) * _44_m6[_2269].w;
            float _2402 = clamp(1.0f - (_2399 * _2399), 0.0f, 1.0f);
            float _2403 = _2402 * _2402;
            if (_2403 <= 0.0f) {
              _3602 = 0.0f.xxx;
              break;
            }
            float3 _2441;
            float _2442;
            bool _2443;
            float3 _2471;
            float3 _2473;
            float3 _2475;
            float3 _2477;
            float3 _2407 = _44_m6[_2272].xyz * _44_m6[_2272].w;
            float3 _2408 = _44_m6[_2269].xyz - _2407;
            float3 _2409 = _44_m6[_2278].xyz * _44_m6[_2275].w;
            float3 _2412 = _44_m6[_2269].xyz + _2407;
            float2 _2422 = (float2(clamp(_575, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_750, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2426 = _71.SampleLevel(_23, _2422, 0.0f);
            float4 _2430 = _72.SampleLevel(_23, _2422, 0.0f);
            float _2825;
            do {
              _2441 = _489 - (_697 * dot(_489, _697));
              _2442 = dot(_2441, _2441);
              _2443 = _2442 > 9.9999997473787516355514526367188e-05f;
              float3 _2466;
              if (_2443) {
                _2466 = _2441 * rsqrt(_2442);
              } else {
                float _2447 = _697.z;
                float _2449 = (_2447 >= 0.0f) ? 1.0f : (-1.0f);
                float _2451 = (-1.0f) / (_2449 + _2447);
                float _2453 = _697.x;
                _2466 = float3(1.0f + (((_2449 * _2451) * _2453) * _2453), ((_2449 * _2453) * _697.y) * _2451, (-_2449) * _2453);
              }
              float3x3 _2470 = mul(float3x3(float3(_2426.x, 0.0f, _2426.z), float3(0.0f, 1.0f, 0.0f), float3(_2426.y, 0.0f, _2426.w)), float3x3(_2466, cross(_697, _2466), _697));
              _2471 = (_2408 - _2409) - _452;
              float3 _2472 = mul(_2470, _2471);
              _2473 = (_2408 + _2409) - _452;
              float3 _2474 = mul(_2470, _2473);
              _2475 = (_2412 + _2409) - _452;
              float3 _2476 = mul(_2470, _2475);
              _2477 = (_2412 - _2409) - _452;
              float3 _2478 = mul(_2470, _2477);
              float _2479 = _2472.z;
              float _2482 = _2474.z;
              float _2486 = _2476.z;
              float _2490 = _2478.z;
              int _2494 = (((int(_2479 > 0.0f) | ((_2482 > 0.0f) ? 2 : 0)) | ((_2486 > 0.0f) ? 4 : 0)) | ((_2490 > 0.0f) ? 8 : 0));
              float3 _2731;
              float3 _2732;
              float3 _2733;
              float3 _2734;
              float3 _2735;
              int _2736;
              if (_2494 == 0) {
                _2731 = _2478;
                _2732 = _2476;
                _2733 = _2474;
                _2734 = _2472;
                _2735 = 0.0f.xxx;
                _2736 = 0;
              } else {
                float3 _2725;
                float3 _2726;
                float3 _2727;
                float3 _2728;
                float3 _2729;
                int _2730;
                if (_2494 == 1) {
                  _2725 = _2478;
                  _2726 = (_2472 * (-_2490)) + (_2478 * _2479);
                  _2727 = (_2472 * (-_2482)) + (_2474 * _2479);
                  _2728 = _2472;
                  _2729 = 0.0f.xxx;
                  _2730 = 3;
                } else {
                  float3 _2711;
                  float3 _2712;
                  float3 _2713;
                  float3 _2714;
                  float3 _2715;
                  int _2716;
                  if (_2494 == 2) {
                    _2711 = _2478;
                    _2712 = (_2474 * (-_2486)) + (_2476 * _2482);
                    _2713 = _2474;
                    _2714 = (_2474 * (-_2479)) + (_2472 * _2482);
                    _2715 = 0.0f.xxx;
                    _2716 = 3;
                  } else {
                    float3 _2697;
                    float3 _2698;
                    float3 _2699;
                    float3 _2700;
                    float3 _2701;
                    int _2702;
                    if (_2494 == 3) {
                      _2697 = (_2472 * (-_2490)) + (_2478 * _2479);
                      _2698 = (_2474 * (-_2486)) + (_2476 * _2482);
                      _2699 = _2474;
                      _2700 = _2472;
                      _2701 = 0.0f.xxx;
                      _2702 = 4;
                    } else {
                      float3 _2683;
                      float3 _2684;
                      float3 _2685;
                      float3 _2686;
                      float3 _2687;
                      int _2688;
                      if (_2494 == 4) {
                        _2683 = _2478;
                        _2684 = _2476;
                        _2685 = (_2476 * (-_2482)) + (_2474 * _2486);
                        _2686 = (_2476 * (-_2490)) + (_2478 * _2486);
                        _2687 = 0.0f.xxx;
                        _2688 = 3;
                      } else {
                        float3 _2669;
                        float3 _2670;
                        float3 _2671;
                        float3 _2672;
                        float3 _2673;
                        int _2674;
                        if (_2494 == 5) {
                          _2669 = _2478;
                          _2670 = _2476;
                          _2671 = _2474;
                          _2672 = _2472;
                          _2673 = 0.0f.xxx;
                          _2674 = 0;
                        } else {
                          float3 _2663;
                          float3 _2664;
                          float3 _2665;
                          float3 _2666;
                          float3 _2667;
                          int _2668;
                          if (_2494 == 6) {
                            _2663 = (_2476 * (-_2490)) + (_2478 * _2486);
                            _2664 = _2476;
                            _2665 = _2474;
                            _2666 = (_2474 * (-_2479)) + (_2472 * _2482);
                            _2667 = 0.0f.xxx;
                            _2668 = 4;
                          } else {
                            float3 _2649;
                            float3 _2650;
                            float3 _2651;
                            float3 _2652;
                            float3 _2653;
                            int _2654;
                            if (_2494 == 7) {
                              float _2642 = -_2490;
                              _2649 = (_2476 * _2642) + (_2478 * _2486);
                              _2650 = _2476;
                              _2651 = _2474;
                              _2652 = _2472;
                              _2653 = (_2472 * _2642) + (_2478 * _2479);
                              _2654 = 5;
                            } else {
                              float3 _2636;
                              float3 _2637;
                              float3 _2638;
                              float3 _2639;
                              float3 _2640;
                              int _2641;
                              if (_2494 == 8) {
                                _2636 = _2478;
                                _2637 = _2478;
                                _2638 = (_2478 * (-_2486)) + (_2476 * _2490);
                                _2639 = (_2478 * (-_2479)) + (_2472 * _2490);
                                _2640 = 0.0f.xxx;
                                _2641 = 3;
                              } else {
                                float3 _2622;
                                float3 _2623;
                                float3 _2624;
                                float3 _2625;
                                float3 _2626;
                                int _2627;
                                if (_2494 == 9) {
                                  _2622 = _2478;
                                  _2623 = (_2478 * (-_2486)) + (_2476 * _2490);
                                  _2624 = (_2472 * (-_2482)) + (_2474 * _2479);
                                  _2625 = _2472;
                                  _2626 = 0.0f.xxx;
                                  _2627 = 4;
                                } else {
                                  float3 _2608;
                                  float3 _2609;
                                  float3 _2610;
                                  float3 _2611;
                                  float3 _2612;
                                  int _2613;
                                  if (_2494 == 10) {
                                    _2608 = _2478;
                                    _2609 = _2476;
                                    _2610 = _2474;
                                    _2611 = _2472;
                                    _2612 = 0.0f.xxx;
                                    _2613 = 0;
                                  } else {
                                    float3 _2602;
                                    float3 _2603;
                                    float3 _2604;
                                    float3 _2605;
                                    float3 _2606;
                                    int _2607;
                                    if (_2494 == 11) {
                                      float _2595 = -_2486;
                                      _2602 = (_2478 * _2595) + (_2476 * _2490);
                                      _2603 = (_2474 * _2595) + (_2476 * _2482);
                                      _2604 = _2474;
                                      _2605 = _2472;
                                      _2606 = _2478;
                                      _2607 = 5;
                                    } else {
                                      float3 _2589;
                                      float3 _2590;
                                      float3 _2591;
                                      float3 _2592;
                                      float3 _2593;
                                      int _2594;
                                      if (_2494 == 12) {
                                        _2589 = _2478;
                                        _2590 = _2476;
                                        _2591 = (_2476 * (-_2482)) + (_2474 * _2486);
                                        _2592 = (_2478 * (-_2479)) + (_2472 * _2490);
                                        _2593 = 0.0f.xxx;
                                        _2594 = 4;
                                      } else {
                                        bool _2547 = _2494 == 13;
                                        float3 _2574;
                                        float3 _2575;
                                        float3 _2576;
                                        float3 _2577;
                                        int _2578;
                                        if (_2547) {
                                          float _2567 = -_2482;
                                          _2574 = (_2476 * _2567) + (_2474 * _2486);
                                          _2575 = (_2472 * _2567) + (_2474 * _2479);
                                          _2576 = _2472;
                                          _2577 = _2478;
                                          _2578 = 5;
                                        } else {
                                          float3 _2564;
                                          float3 _2565;
                                          int _2566;
                                          if (_2494 == 14) {
                                            float _2557 = -_2479;
                                            _2564 = (_2474 * _2557) + (_2472 * _2482);
                                            _2565 = (_2478 * _2557) + (_2472 * _2490);
                                            _2566 = 5;
                                          } else {
                                            _2564 = _2472;
                                            _2565 = 0.0f.xxx;
                                            _2566 = (_2494 == 15) ? 4 : 0;
                                          }
                                          _2574 = _2476;
                                          _2575 = _2474;
                                          _2576 = _2564;
                                          _2577 = _2565;
                                          _2578 = _2566;
                                        }
                                        bool3 _2579 = _2547.xxx;
                                        _2589 = float3(_2579.x ? _2476.x : _2478.x, _2579.y ? _2476.y : _2478.y, _2579.z ? _2476.z : _2478.z);
                                        _2590 = _2574;
                                        _2591 = _2575;
                                        _2592 = _2576;
                                        _2593 = _2577;
                                        _2594 = _2578;
                                      }
                                      _2602 = _2589;
                                      _2603 = _2590;
                                      _2604 = _2591;
                                      _2605 = _2592;
                                      _2606 = _2593;
                                      _2607 = _2594;
                                    }
                                    _2608 = _2602;
                                    _2609 = _2603;
                                    _2610 = _2604;
                                    _2611 = _2605;
                                    _2612 = _2606;
                                    _2613 = _2607;
                                  }
                                  _2622 = _2608;
                                  _2623 = _2609;
                                  _2624 = _2610;
                                  _2625 = _2611;
                                  _2626 = _2612;
                                  _2627 = _2613;
                                }
                                _2636 = _2622;
                                _2637 = _2623;
                                _2638 = _2624;
                                _2639 = _2625;
                                _2640 = _2626;
                                _2641 = _2627;
                              }
                              _2649 = _2636;
                              _2650 = _2637;
                              _2651 = _2638;
                              _2652 = _2639;
                              _2653 = _2640;
                              _2654 = _2641;
                            }
                            _2663 = _2649;
                            _2664 = _2650;
                            _2665 = _2651;
                            _2666 = _2652;
                            _2667 = _2653;
                            _2668 = _2654;
                          }
                          _2669 = _2663;
                          _2670 = _2664;
                          _2671 = _2665;
                          _2672 = _2666;
                          _2673 = _2667;
                          _2674 = _2668;
                        }
                        _2683 = _2669;
                        _2684 = _2670;
                        _2685 = _2671;
                        _2686 = _2672;
                        _2687 = _2673;
                        _2688 = _2674;
                      }
                      _2697 = _2683;
                      _2698 = _2684;
                      _2699 = _2685;
                      _2700 = _2686;
                      _2701 = _2687;
                      _2702 = _2688;
                    }
                    _2711 = _2697;
                    _2712 = _2698;
                    _2713 = _2699;
                    _2714 = _2700;
                    _2715 = _2701;
                    _2716 = _2702;
                  }
                  _2725 = _2711;
                  _2726 = _2712;
                  _2727 = _2713;
                  _2728 = _2714;
                  _2729 = _2715;
                  _2730 = _2716;
                }
                _2731 = _2725;
                _2732 = _2726;
                _2733 = _2727;
                _2734 = _2728;
                _2735 = _2729;
                _2736 = _2730;
              }
              bool3 _2738 = (_2736 == 3).xxx;
              bool3 _2741 = (_2736 == 4).xxx;
              if (_2736 == 0) {
                _2825 = 0.0f;
                break;
              }
              float3 _2746 = normalize(_2734);
              float3 _2747 = normalize(_2733);
              float3 _2748 = normalize(_2732);
              float3 _2749 = normalize(float3(_2738.x ? _2734.x : _2731.x, _2738.y ? _2734.y : _2731.y, _2738.z ? _2734.z : _2731.z));
              float3 _2750 = normalize(float3(_2741.x ? _2734.x : _2735.x, _2741.y ? _2734.y : _2735.y, _2741.z ? _2734.z : _2735.z));
              float _2752 = clamp(dot(_2746, _2747), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2756 = sqrt(1.0f - (_2752 * _2752));
              float _2764 = clamp(dot(_2747, _2748), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2768 = sqrt(1.0f - (_2764 * _2764));
              float _2777 = clamp(dot(_2748, _2749), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2781 = sqrt(1.0f - (_2777 * _2777));
              float _2788 = ((cross(_2746, _2747).z * ((_2756 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2752) / _2756))) + (cross(_2747, _2748).z * ((_2768 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2764) / _2768)))) + (cross(_2748, _2749).z * ((_2781 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2777) / _2781)));
              float _2805;
              if (_2736 >= 4) {
                float _2793 = clamp(dot(_2749, _2750), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2797 = sqrt(1.0f - (_2793 * _2793));
                _2805 = _2788 + (cross(_2749, _2750).z * ((_2797 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2793) / _2797)));
              } else {
                _2805 = _2788;
              }
              float _2822;
              if (_2736 == 5) {
                float _2810 = clamp(dot(_2750, _2746), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2814 = sqrt(1.0f - (_2810 * _2810));
                _2822 = _2805 + (cross(_2750, _2746).z * ((_2814 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2810) / _2814)));
              } else {
                _2822 = _2805;
              }
              _2825 = max(_2822, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3213;
            do {
              float3 _2859;
              if (_2443) {
                _2859 = _2441 * rsqrt(_2442);
              } else {
                float _2840 = _697.z;
                float _2842 = (_2840 >= 0.0f) ? 1.0f : (-1.0f);
                float _2844 = (-1.0f) / (_2842 + _2840);
                float _2846 = _697.x;
                _2859 = float3(1.0f + (((_2842 * _2844) * _2846) * _2846), ((_2842 * _2846) * _697.y) * _2844, (-_2842) * _2846);
              }
              float3x3 _2862 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2859, cross(_697, _2859), _697));
              float3 _2863 = mul(_2862, _2471);
              float3 _2864 = mul(_2862, _2473);
              float3 _2865 = mul(_2862, _2475);
              float3 _2866 = mul(_2862, _2477);
              float _2867 = _2863.z;
              float _2870 = _2864.z;
              float _2874 = _2865.z;
              float _2878 = _2866.z;
              int _2882 = (((int(_2867 > 0.0f) | ((_2870 > 0.0f) ? 2 : 0)) | ((_2874 > 0.0f) ? 4 : 0)) | ((_2878 > 0.0f) ? 8 : 0));
              float3 _3119;
              float3 _3120;
              float3 _3121;
              float3 _3122;
              float3 _3123;
              int _3124;
              if (_2882 == 0) {
                _3119 = _2866;
                _3120 = _2865;
                _3121 = _2864;
                _3122 = _2863;
                _3123 = 0.0f.xxx;
                _3124 = 0;
              } else {
                float3 _3113;
                float3 _3114;
                float3 _3115;
                float3 _3116;
                float3 _3117;
                int _3118;
                if (_2882 == 1) {
                  _3113 = _2866;
                  _3114 = (_2863 * (-_2878)) + (_2866 * _2867);
                  _3115 = (_2863 * (-_2870)) + (_2864 * _2867);
                  _3116 = _2863;
                  _3117 = 0.0f.xxx;
                  _3118 = 3;
                } else {
                  float3 _3099;
                  float3 _3100;
                  float3 _3101;
                  float3 _3102;
                  float3 _3103;
                  int _3104;
                  if (_2882 == 2) {
                    _3099 = _2866;
                    _3100 = (_2864 * (-_2874)) + (_2865 * _2870);
                    _3101 = _2864;
                    _3102 = (_2864 * (-_2867)) + (_2863 * _2870);
                    _3103 = 0.0f.xxx;
                    _3104 = 3;
                  } else {
                    float3 _3085;
                    float3 _3086;
                    float3 _3087;
                    float3 _3088;
                    float3 _3089;
                    int _3090;
                    if (_2882 == 3) {
                      _3085 = (_2863 * (-_2878)) + (_2866 * _2867);
                      _3086 = (_2864 * (-_2874)) + (_2865 * _2870);
                      _3087 = _2864;
                      _3088 = _2863;
                      _3089 = 0.0f.xxx;
                      _3090 = 4;
                    } else {
                      float3 _3071;
                      float3 _3072;
                      float3 _3073;
                      float3 _3074;
                      float3 _3075;
                      int _3076;
                      if (_2882 == 4) {
                        _3071 = _2866;
                        _3072 = _2865;
                        _3073 = (_2865 * (-_2870)) + (_2864 * _2874);
                        _3074 = (_2865 * (-_2878)) + (_2866 * _2874);
                        _3075 = 0.0f.xxx;
                        _3076 = 3;
                      } else {
                        float3 _3057;
                        float3 _3058;
                        float3 _3059;
                        float3 _3060;
                        float3 _3061;
                        int _3062;
                        if (_2882 == 5) {
                          _3057 = _2866;
                          _3058 = _2865;
                          _3059 = _2864;
                          _3060 = _2863;
                          _3061 = 0.0f.xxx;
                          _3062 = 0;
                        } else {
                          float3 _3051;
                          float3 _3052;
                          float3 _3053;
                          float3 _3054;
                          float3 _3055;
                          int _3056;
                          if (_2882 == 6) {
                            _3051 = (_2865 * (-_2878)) + (_2866 * _2874);
                            _3052 = _2865;
                            _3053 = _2864;
                            _3054 = (_2864 * (-_2867)) + (_2863 * _2870);
                            _3055 = 0.0f.xxx;
                            _3056 = 4;
                          } else {
                            float3 _3037;
                            float3 _3038;
                            float3 _3039;
                            float3 _3040;
                            float3 _3041;
                            int _3042;
                            if (_2882 == 7) {
                              float _3030 = -_2878;
                              _3037 = (_2865 * _3030) + (_2866 * _2874);
                              _3038 = _2865;
                              _3039 = _2864;
                              _3040 = _2863;
                              _3041 = (_2863 * _3030) + (_2866 * _2867);
                              _3042 = 5;
                            } else {
                              float3 _3024;
                              float3 _3025;
                              float3 _3026;
                              float3 _3027;
                              float3 _3028;
                              int _3029;
                              if (_2882 == 8) {
                                _3024 = _2866;
                                _3025 = _2866;
                                _3026 = (_2866 * (-_2874)) + (_2865 * _2878);
                                _3027 = (_2866 * (-_2867)) + (_2863 * _2878);
                                _3028 = 0.0f.xxx;
                                _3029 = 3;
                              } else {
                                float3 _3010;
                                float3 _3011;
                                float3 _3012;
                                float3 _3013;
                                float3 _3014;
                                int _3015;
                                if (_2882 == 9) {
                                  _3010 = _2866;
                                  _3011 = (_2866 * (-_2874)) + (_2865 * _2878);
                                  _3012 = (_2863 * (-_2870)) + (_2864 * _2867);
                                  _3013 = _2863;
                                  _3014 = 0.0f.xxx;
                                  _3015 = 4;
                                } else {
                                  float3 _2996;
                                  float3 _2997;
                                  float3 _2998;
                                  float3 _2999;
                                  float3 _3000;
                                  int _3001;
                                  if (_2882 == 10) {
                                    _2996 = _2866;
                                    _2997 = _2865;
                                    _2998 = _2864;
                                    _2999 = _2863;
                                    _3000 = 0.0f.xxx;
                                    _3001 = 0;
                                  } else {
                                    float3 _2990;
                                    float3 _2991;
                                    float3 _2992;
                                    float3 _2993;
                                    float3 _2994;
                                    int _2995;
                                    if (_2882 == 11) {
                                      float _2983 = -_2874;
                                      _2990 = (_2866 * _2983) + (_2865 * _2878);
                                      _2991 = (_2864 * _2983) + (_2865 * _2870);
                                      _2992 = _2864;
                                      _2993 = _2863;
                                      _2994 = _2866;
                                      _2995 = 5;
                                    } else {
                                      float3 _2977;
                                      float3 _2978;
                                      float3 _2979;
                                      float3 _2980;
                                      float3 _2981;
                                      int _2982;
                                      if (_2882 == 12) {
                                        _2977 = _2866;
                                        _2978 = _2865;
                                        _2979 = (_2865 * (-_2870)) + (_2864 * _2874);
                                        _2980 = (_2866 * (-_2867)) + (_2863 * _2878);
                                        _2981 = 0.0f.xxx;
                                        _2982 = 4;
                                      } else {
                                        bool _2935 = _2882 == 13;
                                        float3 _2962;
                                        float3 _2963;
                                        float3 _2964;
                                        float3 _2965;
                                        int _2966;
                                        if (_2935) {
                                          float _2955 = -_2870;
                                          _2962 = (_2865 * _2955) + (_2864 * _2874);
                                          _2963 = (_2863 * _2955) + (_2864 * _2867);
                                          _2964 = _2863;
                                          _2965 = _2866;
                                          _2966 = 5;
                                        } else {
                                          float3 _2952;
                                          float3 _2953;
                                          int _2954;
                                          if (_2882 == 14) {
                                            float _2945 = -_2867;
                                            _2952 = (_2864 * _2945) + (_2863 * _2870);
                                            _2953 = (_2866 * _2945) + (_2863 * _2878);
                                            _2954 = 5;
                                          } else {
                                            _2952 = _2863;
                                            _2953 = 0.0f.xxx;
                                            _2954 = (_2882 == 15) ? 4 : 0;
                                          }
                                          _2962 = _2865;
                                          _2963 = _2864;
                                          _2964 = _2952;
                                          _2965 = _2953;
                                          _2966 = _2954;
                                        }
                                        bool3 _2967 = _2935.xxx;
                                        _2977 = float3(_2967.x ? _2865.x : _2866.x, _2967.y ? _2865.y : _2866.y, _2967.z ? _2865.z : _2866.z);
                                        _2978 = _2962;
                                        _2979 = _2963;
                                        _2980 = _2964;
                                        _2981 = _2965;
                                        _2982 = _2966;
                                      }
                                      _2990 = _2977;
                                      _2991 = _2978;
                                      _2992 = _2979;
                                      _2993 = _2980;
                                      _2994 = _2981;
                                      _2995 = _2982;
                                    }
                                    _2996 = _2990;
                                    _2997 = _2991;
                                    _2998 = _2992;
                                    _2999 = _2993;
                                    _3000 = _2994;
                                    _3001 = _2995;
                                  }
                                  _3010 = _2996;
                                  _3011 = _2997;
                                  _3012 = _2998;
                                  _3013 = _2999;
                                  _3014 = _3000;
                                  _3015 = _3001;
                                }
                                _3024 = _3010;
                                _3025 = _3011;
                                _3026 = _3012;
                                _3027 = _3013;
                                _3028 = _3014;
                                _3029 = _3015;
                              }
                              _3037 = _3024;
                              _3038 = _3025;
                              _3039 = _3026;
                              _3040 = _3027;
                              _3041 = _3028;
                              _3042 = _3029;
                            }
                            _3051 = _3037;
                            _3052 = _3038;
                            _3053 = _3039;
                            _3054 = _3040;
                            _3055 = _3041;
                            _3056 = _3042;
                          }
                          _3057 = _3051;
                          _3058 = _3052;
                          _3059 = _3053;
                          _3060 = _3054;
                          _3061 = _3055;
                          _3062 = _3056;
                        }
                        _3071 = _3057;
                        _3072 = _3058;
                        _3073 = _3059;
                        _3074 = _3060;
                        _3075 = _3061;
                        _3076 = _3062;
                      }
                      _3085 = _3071;
                      _3086 = _3072;
                      _3087 = _3073;
                      _3088 = _3074;
                      _3089 = _3075;
                      _3090 = _3076;
                    }
                    _3099 = _3085;
                    _3100 = _3086;
                    _3101 = _3087;
                    _3102 = _3088;
                    _3103 = _3089;
                    _3104 = _3090;
                  }
                  _3113 = _3099;
                  _3114 = _3100;
                  _3115 = _3101;
                  _3116 = _3102;
                  _3117 = _3103;
                  _3118 = _3104;
                }
                _3119 = _3113;
                _3120 = _3114;
                _3121 = _3115;
                _3122 = _3116;
                _3123 = _3117;
                _3124 = _3118;
              }
              bool3 _3126 = (_3124 == 3).xxx;
              bool3 _3129 = (_3124 == 4).xxx;
              if (_3124 == 0) {
                _3213 = 0.0f;
                break;
              }
              float3 _3134 = normalize(_3122);
              float3 _3135 = normalize(_3121);
              float3 _3136 = normalize(_3120);
              float3 _3137 = normalize(float3(_3126.x ? _3122.x : _3119.x, _3126.y ? _3122.y : _3119.y, _3126.z ? _3122.z : _3119.z));
              float3 _3138 = normalize(float3(_3129.x ? _3122.x : _3123.x, _3129.y ? _3122.y : _3123.y, _3129.z ? _3122.z : _3123.z));
              float _3140 = clamp(dot(_3134, _3135), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3144 = sqrt(1.0f - (_3140 * _3140));
              float _3152 = clamp(dot(_3135, _3136), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3156 = sqrt(1.0f - (_3152 * _3152));
              float _3165 = clamp(dot(_3136, _3137), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3169 = sqrt(1.0f - (_3165 * _3165));
              float _3176 = ((cross(_3134, _3135).z * ((_3144 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3140) / _3144))) + (cross(_3135, _3136).z * ((_3156 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3152) / _3156)))) + (cross(_3136, _3137).z * ((_3169 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3165) / _3169)));
              float _3193;
              if (_3124 >= 4) {
                float _3181 = clamp(dot(_3137, _3138), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3185 = sqrt(1.0f - (_3181 * _3181));
                _3193 = _3176 + (cross(_3137, _3138).z * ((_3185 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3181) / _3185)));
              } else {
                _3193 = _3176;
              }
              float _3210;
              if (_3124 == 5) {
                float _3198 = clamp(dot(_3138, _3134), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3202 = sqrt(1.0f - (_3198 * _3198));
                _3210 = _3193 + (cross(_3138, _3134).z * ((_3202 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3198) / _3202)));
              } else {
                _3210 = _3193;
              }
              _3213 = max(_3210, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3216 = (_2291 & 2u) != 0u;
            uint _3220 = asuint(_44_m6[_2278].w);
            uint _3221 = asuint(_44_m6[_2284].w);
            float3 _3222 = _452 - _44_m6[_2269].xyz;
            float3 _3223 = abs(_3222);
            float _3224 = _3223.x;
            float _3225 = _3223.y;
            float _3227 = _3223.z;
            int _3260;
            if ((_3224 > _3225) && (_3224 > _3227)) {
              _3260 = int((_3222.x > 0.0f) ? (_3220 & 1023u) : ((_3220 >> 10u) & 1023u));
            } else {
              int _3252;
              if (_3225 > _3227) {
                _3252 = int((_3222.y > 0.0f) ? ((_3220 >> 20u) & 1023u) : (_3221 & 1023u));
              } else {
                _3252 = int((_3222.z > 0.0f) ? ((_3221 >> 10u) & 1023u) : ((_3221 >> 20u) & 1023u));
              }
              _3260 = _3252;
            }
            int _3263 = _3216 ? int(_44_m6[_2278].w) : ((_3260 == 1023) ? (-1) : _3260);
            uint _3274 = asuint(_48_m11.x) + (uint(_3263) * 96u);
            uint _3276 = (_3274 + 64u) >> 2u;
            uint _3279 = _3276 + 1u;
            uint _3282 = _3276 + 2u;
            uint _3285 = _3276 + 3u;
            float4 _3289 = asfloat(uint4(_52.Load(_3276 * 4 + 0), _52.Load(_3279 * 4 + 0), _52.Load(_3282 * 4 + 0), _52.Load(_3285 * 4 + 0)));
            float3 _3296 = (_452 - ((_3222 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3222, _3222)))) * _3289.x)) + (_697 * (_3289.y * 5.0f));
            uint _3297 = _3274 >> 2u;
            uint _3312 = (_3274 + 16u) >> 2u;
            uint _3327 = (_3274 + 32u) >> 2u;
            uint _3342 = (_3274 + 48u) >> 2u;
            float4 _3362 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3297 * 4 + 0), _52.Load((_3297 + 1u) * 4 + 0), _52.Load((_3297 + 2u) * 4 + 0), _52.Load((_3297 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3312 * 4 + 0), _52.Load((_3312 + 1u) * 4 + 0), _52.Load((_3312 + 2u) * 4 + 0), _52.Load((_3312 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3327 * 4 + 0), _52.Load((_3327 + 1u) * 4 + 0), _52.Load((_3327 + 2u) * 4 + 0), _52.Load((_3327 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3342 * 4 + 0), _52.Load((_3342 + 1u) * 4 + 0), _52.Load((_3342 + 2u) * 4 + 0), _52.Load((_3342 + 3u) * 4 + 0))))), float4(_3296, 1.0f));
            float _3363 = _3362.w;
            float3 _3366 = _3362.xyz / _3363.xxx;
            uint _3368 = (_3274 + 80u) >> 2u;
            float4 _3381 = asfloat(uint4(_52.Load(_3368 * 4 + 0), _52.Load((_3368 + 1u) * 4 + 0), _52.Load((_3368 + 2u) * 4 + 0), _52.Load((_3368 + 3u) * 4 + 0)));
            float2 _3382 = _3366.xy;
            float2 _3384 = _3381.xy;
            float3 _3388 = _3366.xyz;
            bool3 _3389 = bool3(_3388.x <= 0.0f.xxx.x, _3388.y <= 0.0f.xxx.y, _3388.z <= 0.0f.xxx.z);
            bool3 _3390 = bool3(_3388.x >= 1.0f.xxx.x, _3388.y >= 1.0f.xxx.y, _3388.z >= 1.0f.xxx.z);
            float _3393 = _3366.z;
            float2 _3404 = ((_3382 * (_3381.zw - _3384)) + _3384).xy * _48_m10.zw;
            float2 _3406 = floor(_3404 + 0.5f.xx);
            float2 _3407 = _3404 - _3406;
            float _3408 = _3407.x;
            float _3409 = _3408 + 0.5f;
            float _3410 = _3409 * _3409;
            float _3413 = 1.0f - _3408;
            float _3414 = min(_3408, 0.0f);
            float _3417 = _3408 + 1.0f;
            float _3418 = max(_3408, 0.0f);
            float _3429 = _3407.y;
            float _3430 = _3429 + 0.5f;
            float _3431 = _3430 * _3430;
            float _3434 = 1.0f - _3429;
            float _3435 = min(_3429, 0.0f);
            float _3438 = _3429 + 1.0f;
            float _3439 = max(_3429, 0.0f);
            float3 _3451 = float3(0.1599999964237213134765625f * _3413, 0.1599999964237213134765625f * ((_3417 - (_3418 * _3418)) + 1.0f), _3410 * 0.07999999821186065673828125f);
            float3 _3452 = float3(0.1599999964237213134765625f * ((_3410 * 0.5f) - _3408), 0.1599999964237213134765625f * ((_3413 - (_3414 * _3414)) + 1.0f), 0.1599999964237213134765625f * _3417) + _3451;
            float3 _3454 = float3(0.1599999964237213134765625f * _3434, 0.1599999964237213134765625f * ((_3438 - (_3439 * _3439)) + 1.0f), _3431 * 0.07999999821186065673828125f);
            float3 _3455 = float3(0.1599999964237213134765625f * ((_3431 * 0.5f) - _3429), 0.1599999964237213134765625f * ((_3434 - (_3435 * _3435)) + 1.0f), 0.1599999964237213134765625f * _3438) + _3454;
            float3 _3461 = ((_3451 / _3452) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
            float3 _3463 = ((_3454 / _3455) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
            float2 _3465 = _3406 * _48_m10.xy;
            float _3466 = _3461.x;
            float _3467 = _3463.x;
            float2 _3469 = _3465 + float2(_3466, _3467);
            float _3470 = _3461.y;
            float2 _3472 = _3465 + float2(_3470, _3467);
            float _3473 = _3461.z;
            float2 _3475 = _3465 + float2(_3473, _3467);
            float _3476 = _3463.y;
            float2 _3478 = _3465 + float2(_3466, _3476);
            float2 _3480 = _3465 + float2(_3470, _3476);
            float2 _3482 = _3465 + float2(_3473, _3476);
            float _3483 = _3463.z;
            float2 _3485 = _3465 + float2(_3466, _3483);
            float2 _3487 = _3465 + float2(_3470, _3483);
            float2 _3489 = _3465 + float2(_3473, _3483);
            float _3490 = _3452.x;
            float _3491 = _3455.x;
            float _3493 = _3452.y;
            float _3495 = _3452.z;
            float _3497 = _3455.y;
            float _3501 = _3455.z;
            float _3567 = ((((((((_3490 * _3491) * _50.SampleCmpLevelZero(_26, float3(_3469, _383).xy, _3393)) + ((_3493 * _3491) * _50.SampleCmpLevelZero(_26, float3(_3472, _383).xy, _3393))) + ((_3495 * _3491) * _50.SampleCmpLevelZero(_26, float3(_3475, _383).xy, _3393))) + ((_3490 * _3497) * _50.SampleCmpLevelZero(_26, float3(_3478, _383).xy, _3393))) + ((_3493 * _3497) * _50.SampleCmpLevelZero(_26, float3(_3480, _383).xy, _3393))) + ((_3495 * _3497) * _50.SampleCmpLevelZero(_26, float3(_3482, _383).xy, _3393))) + ((_3490 * _3501) * _50.SampleCmpLevelZero(_26, float3(_3485, _383).xy, _3393))) + ((_3493 * _3501) * _50.SampleCmpLevelZero(_26, float3(_3487, _383).xy, _3393));
            float4 _3582 = asfloat(uint4(_52.Load(_3276 * 4 + 0), _52.Load(_3279 * 4 + 0), _52.Load(_3282 * 4 + 0), _52.Load(_3285 * 4 + 0)));
            float _3583 = _3582.w;
            float2 _3585 = min(_3382, 1.0f.xx - _3382);
            _3602 = ((_44_m6[_2266].xyz * (((((_749 * _2430.x) + ((1.0f.xxx - _749) * _2430.y)) * _2825) * _44_m6[_2287].z) + (_745 * _3213))) * _2403) * ((_3263 >= 0) ? lerp(1.0f, (any(bool3(_3389.x || _3390.x, _3389.y || _3390.y, _3389.z || _3390.z)) || ((asuint(_3393) & 2147483647u) > 2139095040u)) ? 1.0f : (_3567 + ((_3495 * _3501) * _50.SampleCmpLevelZero(_26, float3(_3489, _383).xy, _3393))), _3216 ? min(_3583, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3582.z - _3363) * 0.25f, min(_3585.x, _3585.y)))) : _3583) : 1.0f);
            break;
          } while (false);
          _4902 = _2226;
          _4903 = _3602 * _2366;
          break;
        }
        float _4900;
        float3 _4901;
        if (_44_m6[_2266].w < 1.5f) {
          float3 _4182 = float3(0.100000001490116119384765625f, _575, 1.0f);
          float _4191 = (0.5f + (0.5f * _44_m6[_2272].y)) - abs(_44_m6[_2272].x);
          float _4192 = _44_m6[_2272].y - _4191;
          float _4199 = abs(max((1.0f - abs(_4191)) - abs(_4192), 0.00048828125f));
          float3 _4203 = normalize(float3(_4191, _4192, (_44_m6[_2272].x >= 0.0f) ? _4199 : (-_4199)));
          float3 _4204 = _44_m6[_2269].xyz - _452;
          float _4205 = dot(_4204, _4204);
          float _4206 = rsqrt(_4205);
          float3 _4207 = _4204 * _4206;
          float _4211 = clamp(_44_m6[_2287].y * _4206, 0.0f, 1.0f);
          int _4216 = int(_44_m6[_2287].w);
          float3 _4217 = _4203 * _44_m6[_2272].z;
          float3 _4218 = _4217 * 0.5f;
          float3 _4219 = _4204 - _4218;
          float3 _4220 = _4204 + _4218;
          bool _4222 = (_2370 & 1u) == 0u;
          bool _4225 = _4222 || ((_2291 & 2u) != 0u);
          bool _4228 = (!_4222) && (_44_m6[_2272].z > 0.0f);
          float _4247;
          float _4248;
          if (_4228) {
            float _4232 = length(_4219);
            float _4233 = length(_4220);
            _4247 = clamp(0.5f * ((dot(_697, _4219) / _4232) + (dot(_697, _4220) / _4233)), 0.0f, 1.0f);
            _4248 = 1.0f / ((((_4232 * _4233) + dot(_4219, _4220)) * 0.5f) + 1.0f);
          } else {
            _4247 = clamp(dot(_697, _4207), 0.0f, 1.0f);
            _4248 = 1.0f;
          }
          float _4270;
          if (_44_m6[_2284].w < 0.0f) {
            float _4264 = _4205 * (_44_m6[_2269].w * _44_m6[_2269].w);
            float _4267 = clamp(1.0f - (_4264 * _4264), 0.0f, 1.0f);
            _4270 = lerp(1.0f / (_4205 + 1.0f), _4248, float(_4228)) * (_4267 * _4267);
          } else {
            float3 _4253 = _4204 * _44_m6[_2269].w;
            _4270 = _4248 * pow(1.0f - clamp(dot(_4253, _4253), 0.0f, 1.0f), _44_m6[_2284].w);
          }
          float _4276 = clamp((dot(_4207, -_4203) - _44_m6[_2272].z) * _44_m6[_2272].w, 0.0f, 1.0f);
          float _4280 = _4270 * lerp(1.0f, _4276 * _4276, float(_4222));
          float _4380;
          if ((!_4228) && (_4216 >= 0)) {
            uint _4286 = uint(_4216);
            float2 _4373;
            [branch] if (_4222) {
              float4 _4363 = mul(_68_m1[_4286], _456);
              _4373 = _68_m0[_4286].xy + (clamp(_4363.xy / _4363.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_4286].zw);
            }
            else {
              float3 _4300 = mul(float4(-_4204, 0.0f), _68_m1[_4286]).xyz;
              float3 _389 = _4300;
              float3 _388 = _4300;
              float3 _387 = abs(_4300);
              uint _4309 = uint(int(_387.y > _387.x));
              uint _4315 = (_387.z > _387[_4309]) ? 2u : _4309;
              uint _4321 = (_4315 * 2u) + uint(_388[_4315] < 0.0f);
              float _4325 = abs(_389[_4321 / 2u]);
              float _4345 = 0.5f - (0.000244140625f / _68_m0[_4286].w);
              _4373 = _68_m0[_4286].xy + (clamp(float2((float(_4321) + ((((_389[uint(_362[_4321].x)] * _363[_4321].x) / _4325) * _4345) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_362[_4321].y)] * _363[_4321].y) / _4325) * _4345)), 0.0f.xx, 1.0f.xx) * _68_m0[_4286].zw);
            }
            _4380 = _4280 * _66.SampleLevel(_23, _4373, 0.0f).x;
          } else {
            _4380 = _4280;
          }
          bool _4381 = _4380 > 0.0f;
          float _4765;
          if (_4381) {
            int _4434;
            if (_4225) {
              _4434 = int(_44_m6[_2275].x);
            } else {
              uint _4389 = asuint(_44_m6[_2272].w);
              uint _4390 = asuint(_44_m6[_2275].x);
              float3 _4391 = _452 - _44_m6[_2269].xyz;
              float3 _4392 = abs(_4391);
              float _4393 = _4392.x;
              float _4394 = _4392.y;
              float _4396 = _4392.z;
              int _4429;
              if ((_4393 > _4394) && (_4393 > _4396)) {
                _4429 = int((_4391.x > 0.0f) ? (_4389 & 1023u) : ((_4389 >> 10u) & 1023u));
              } else {
                int _4421;
                if (_4394 > _4396) {
                  _4421 = int((_4391.y > 0.0f) ? ((_4389 >> 20u) & 1023u) : (_4390 & 1023u));
                } else {
                  _4421 = int((_4391.z > 0.0f) ? ((_4390 >> 10u) & 1023u) : ((_4390 >> 20u) & 1023u));
                }
                _4429 = _4421;
              }
              _4434 = (_4429 == 1023) ? (-1) : _4429;
            }
            uint _4441 = asuint(_48_m11.x) + (uint(_4434) * 96u);
            uint _4443 = (_4441 + 64u) >> 2u;
            uint _4446 = _4443 + 1u;
            uint _4449 = _4443 + 2u;
            uint _4452 = _4443 + 3u;
            float4 _4456 = asfloat(uint4(_52.Load(_4443 * 4 + 0), _52.Load(_4446 * 4 + 0), _52.Load(_4449 * 4 + 0), _52.Load(_4452 * 4 + 0)));
            float3 _4463 = (_452 - ((-_4207) * _4456.x)) + (_697 * (_4456.y * 5.0f));
            uint _4464 = _4441 >> 2u;
            uint _4479 = (_4441 + 16u) >> 2u;
            uint _4494 = (_4441 + 32u) >> 2u;
            uint _4509 = (_4441 + 48u) >> 2u;
            float4 _4529 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_4464 * 4 + 0), _52.Load((_4464 + 1u) * 4 + 0), _52.Load((_4464 + 2u) * 4 + 0), _52.Load((_4464 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4479 * 4 + 0), _52.Load((_4479 + 1u) * 4 + 0), _52.Load((_4479 + 2u) * 4 + 0), _52.Load((_4479 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4494 * 4 + 0), _52.Load((_4494 + 1u) * 4 + 0), _52.Load((_4494 + 2u) * 4 + 0), _52.Load((_4494 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4509 * 4 + 0), _52.Load((_4509 + 1u) * 4 + 0), _52.Load((_4509 + 2u) * 4 + 0), _52.Load((_4509 + 3u) * 4 + 0))))), float4(_4463, 1.0f));
            float _4530 = _4529.w;
            float3 _4533 = _4529.xyz / _4530.xxx;
            uint _4535 = (_4441 + 80u) >> 2u;
            float4 _4548 = asfloat(uint4(_52.Load(_4535 * 4 + 0), _52.Load((_4535 + 1u) * 4 + 0), _52.Load((_4535 + 2u) * 4 + 0), _52.Load((_4535 + 3u) * 4 + 0)));
            float2 _4549 = _4533.xy;
            float2 _4551 = _4548.xy;
            float3 _4555 = _4533.xyz;
            bool3 _4556 = bool3(_4555.x <= 0.0f.xxx.x, _4555.y <= 0.0f.xxx.y, _4555.z <= 0.0f.xxx.z);
            bool3 _4557 = bool3(_4555.x >= 1.0f.xxx.x, _4555.y >= 1.0f.xxx.y, _4555.z >= 1.0f.xxx.z);
            float _4560 = _4533.z;
            float2 _4571 = ((_4549 * (_4548.zw - _4551)) + _4551).xy * _48_m10.zw;
            float2 _4573 = floor(_4571 + 0.5f.xx);
            float2 _4574 = _4571 - _4573;
            float _4575 = _4574.x;
            float _4576 = _4575 + 0.5f;
            float _4577 = _4576 * _4576;
            float _4580 = 1.0f - _4575;
            float _4581 = min(_4575, 0.0f);
            float _4584 = _4575 + 1.0f;
            float _4585 = max(_4575, 0.0f);
            float _4596 = _4574.y;
            float _4597 = _4596 + 0.5f;
            float _4598 = _4597 * _4597;
            float _4601 = 1.0f - _4596;
            float _4602 = min(_4596, 0.0f);
            float _4605 = _4596 + 1.0f;
            float _4606 = max(_4596, 0.0f);
            float3 _4618 = float3(0.1599999964237213134765625f * _4580, 0.1599999964237213134765625f * ((_4584 - (_4585 * _4585)) + 1.0f), _4577 * 0.07999999821186065673828125f);
            float3 _4619 = float3(0.1599999964237213134765625f * ((_4577 * 0.5f) - _4575), 0.1599999964237213134765625f * ((_4580 - (_4581 * _4581)) + 1.0f), 0.1599999964237213134765625f * _4584) + _4618;
            float3 _4621 = float3(0.1599999964237213134765625f * _4601, 0.1599999964237213134765625f * ((_4605 - (_4606 * _4606)) + 1.0f), _4598 * 0.07999999821186065673828125f);
            float3 _4622 = float3(0.1599999964237213134765625f * ((_4598 * 0.5f) - _4596), 0.1599999964237213134765625f * ((_4601 - (_4602 * _4602)) + 1.0f), 0.1599999964237213134765625f * _4605) + _4621;
            float3 _4628 = ((_4618 / _4619) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
            float3 _4630 = ((_4621 / _4622) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
            float2 _4632 = _4573 * _48_m10.xy;
            float _4633 = _4628.x;
            float _4634 = _4630.x;
            float2 _4636 = _4632 + float2(_4633, _4634);
            float _4637 = _4628.y;
            float2 _4639 = _4632 + float2(_4637, _4634);
            float _4640 = _4628.z;
            float2 _4642 = _4632 + float2(_4640, _4634);
            float _4643 = _4630.y;
            float2 _4645 = _4632 + float2(_4633, _4643);
            float2 _4647 = _4632 + float2(_4637, _4643);
            float2 _4649 = _4632 + float2(_4640, _4643);
            float _4650 = _4630.z;
            float2 _4652 = _4632 + float2(_4633, _4650);
            float2 _4654 = _4632 + float2(_4637, _4650);
            float2 _4656 = _4632 + float2(_4640, _4650);
            float _4657 = _4619.x;
            float _4658 = _4622.x;
            float _4660 = _4619.y;
            float _4662 = _4619.z;
            float _4664 = _4622.y;
            float _4668 = _4622.z;
            float _4734 = ((((((((_4657 * _4658) * _50.SampleCmpLevelZero(_26, float3(_4636, _383).xy, _4560)) + ((_4660 * _4658) * _50.SampleCmpLevelZero(_26, float3(_4639, _383).xy, _4560))) + ((_4662 * _4658) * _50.SampleCmpLevelZero(_26, float3(_4642, _383).xy, _4560))) + ((_4657 * _4664) * _50.SampleCmpLevelZero(_26, float3(_4645, _383).xy, _4560))) + ((_4660 * _4664) * _50.SampleCmpLevelZero(_26, float3(_4647, _383).xy, _4560))) + ((_4662 * _4664) * _50.SampleCmpLevelZero(_26, float3(_4649, _383).xy, _4560))) + ((_4657 * _4668) * _50.SampleCmpLevelZero(_26, float3(_4652, _383).xy, _4560))) + ((_4660 * _4668) * _50.SampleCmpLevelZero(_26, float3(_4654, _383).xy, _4560));
            float4 _4749 = asfloat(uint4(_52.Load(_4443 * 4 + 0), _52.Load(_4446 * 4 + 0), _52.Load(_4449 * 4 + 0), _52.Load(_4452 * 4 + 0)));
            float _4750 = _4749.w;
            float2 _4752 = min(_4549, 1.0f.xx - _4549);
            _4765 = (_4434 >= 0) ? lerp(1.0f, (any(bool3(_4556.x || _4557.x, _4556.y || _4557.y, _4556.z || _4557.z)) || ((asuint(_4560) & 2147483647u) > 2139095040u)) ? 1.0f : (_4734 + ((_4662 * _4668) * _50.SampleCmpLevelZero(_26, float3(_4656, _383).xy, _4560))), _4225 ? min(_4750, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4749.z - _4530) * 0.25f, min(_4752.x, _4752.y)))) : _4750) : 1.0f;
          } else {
            _4765 = 1.0f;
          }
          float3 _4788;
          float3 _4789;
          if (_4228) {
            float3 _4768 = _4182 * _4182;
            float _4777 = dot(_1233, _4217);
            _4788 = _4768 / clamp(_4768 + (0.5f * clamp(_44_m6[_2272].z * _4206, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4789 = normalize(_4219 + (_4217 * clamp(dot(_4219, (_1233 * _4777) - _4217) / ((_44_m6[_2272].z * _44_m6[_2272].z) - (_4777 * _4777)), 0.0f, 1.0f)));
          } else {
            _4788 = 1.0f.xxx;
            _4789 = _4207;
          }
          float3 _4790 = _4789 + _489;
          float3 _4794 = _4790 * rsqrt(max(6.103515625e-05f, dot(_4790, _4790)));
          float3 _4899;
          if (_4381) {
            float _4797 = clamp(_4247, 0.0f, 1.0f);
            float _4799 = clamp(dot(_697, _4794), 0.0f, 1.0f);
            float _4801 = clamp(dot(_489, _4794), 0.0f, 1.0f);
            float _4802 = clamp(_750, 0.0f, 1.0f);
            float _4803 = _575 * _575;
            float _4813;
            if (_4211 > 0.0f) {
              _4813 = clamp(_4803 + ((_4211 * _4211) / ((_4801 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4813 = _4803;
            }
            float _4814 = _4813 * _4813;
            float _4835 = (((_4799 * _4814) - _4799) * _4799) + 1.0f;
            float _4840 = 1.0f - _4801;
            float _4841 = _4840 * _4840;
            float _4843 = (_4840 * _4841) * _4841;
            float _4867 = 1.0f - _575;
            float _4874 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4867 * (1.04997003078460693359375f + (_4867 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4867))))));
            float _4875 = 1.0f - _4874;
            float3 _4878 = _749 + ((1.0f.xxx - _749) * 0.0476190485060214996337890625f);
            float3 _4898 = ((clamp((min(((_749 * (1.0f - _4843)) + _4843.xxx) * (((_4814 / (_4835 * _4835)) * _4788.y) * (0.5f / (((_4797 * sqrt(((((-_4802) * _4814) + _4802) * _4802) + _4814)) + (_4802 * sqrt(((((-_4797) * _4814) + _4797) * _4797) + _4814))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4878 * (((_58.SampleLevel(_23, (float2(_4802, _575) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_4797, _575) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4874) / _4875)) * _4878) / (1.0f.xxx - (_4878 * _4875)))) * _44_m6[_2287].z, 0.0f.xxx, 1000.0f.xxx) * _4247) + ((_745 * _4788.z) * _4247)) * (((_44_m6[_2266].xyz * _4380) * _4765) * _2366);
            _4899 = _4898;
          } else {
            _4899 = 0.0f.xxx;
          }
          _4900 = _2226;
          _4901 = _4899;
        } else {
          float _4180;
          do {
            if (_2373) {
              _4180 = 1.0f;
              break;
            }
            float _3619 = (0.5f + (0.5f * _44_m6[_2272].y)) - abs(_44_m6[_2272].x);
            float _3620 = _44_m6[_2272].y - _3619;
            float _3627 = abs(max((1.0f - abs(_3619)) - abs(_3620), 0.00048828125f));
            float3 _3631 = normalize(float3(_3619, _3620, (_44_m6[_2272].x >= 0.0f) ? _3627 : (-_3627)));
            float3 _3632 = _44_m6[_2269].xyz - _452;
            float _3633 = dot(_3632, _3632);
            float3 _3635 = _3632 * rsqrt(_3633);
            int _3638 = int(_44_m6[_2287].w);
            float3 _3640 = (_3631 * _44_m6[_2272].z) * 0.5f;
            float3 _3641 = _3632 - _3640;
            float3 _3642 = _3632 + _3640;
            bool _3644 = (_2370 & 1u) == 0u;
            bool _3647 = _3644 || ((_2291 & 2u) != 0u);
            bool _3650 = (!_3644) && (_44_m6[_2272].z > 0.0f);
            float _3662;
            if (_3650) {
              _3662 = 1.0f / ((((length(_3641) * length(_3642)) + dot(_3641, _3642)) * 0.5f) + 1.0f);
            } else {
              _3662 = 1.0f;
            }
            float _3684;
            if (_44_m6[_2284].w < 0.0f) {
              float _3678 = _3633 * (_44_m6[_2269].w * _44_m6[_2269].w);
              float _3681 = clamp(1.0f - (_3678 * _3678), 0.0f, 1.0f);
              _3684 = lerp(1.0f / (_3633 + 1.0f), _3662, float(_3650)) * (_3681 * _3681);
            } else {
              float3 _3667 = _3632 * _44_m6[_2269].w;
              _3684 = _3662 * pow(1.0f - clamp(dot(_3667, _3667), 0.0f, 1.0f), _44_m6[_2284].w);
            }
            float _3690 = clamp((dot(_3635, -_3631) - _44_m6[_2272].z) * _44_m6[_2272].w, 0.0f, 1.0f);
            float _3694 = _3684 * lerp(1.0f, _3690 * _3690, float(_3644));
            float _3794;
            if ((!_3650) && (_3638 >= 0)) {
              uint _3700 = uint(_3638);
              float2 _3787;
              [branch] if (_3644) {
                float4 _3777 = mul(_68_m1[_3700], _456);
                _3787 = _68_m0[_3700].xy + (clamp(_3777.xy / _3777.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_3700].zw);
              }
              else {
                float3 _3714 = mul(float4(-_3632, 0.0f), _68_m1[_3700]).xyz;
                float3 _392 = _3714;
                float3 _391 = _3714;
                float3 _390 = abs(_3714);
                uint _3723 = uint(int(_390.y > _390.x));
                uint _3729 = (_390.z > _390[_3723]) ? 2u : _3723;
                uint _3735 = (_3729 * 2u) + uint(_391[_3729] < 0.0f);
                float _3739 = abs(_392[_3735 / 2u]);
                float _3759 = 0.5f - (0.000244140625f / _68_m0[_3700].w);
                _3787 = _68_m0[_3700].xy + (clamp(float2((float(_3735) + ((((_392[uint(_362[_3735].x)] * _363[_3735].x) / _3739) * _3759) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_392[uint(_362[_3735].y)] * _363[_3735].y) / _3739) * _3759)), 0.0f.xx, 1.0f.xx) * _68_m0[_3700].zw);
              }
              _3794 = _3694 * _66.SampleLevel(_23, _3787, 0.0f).x;
            } else {
              _3794 = _3694;
            }
            float _4179;
            if (_3794 > 0.0f) {
              int _3848;
              if (_3647) {
                _3848 = int(_44_m6[_2275].x);
              } else {
                uint _3803 = asuint(_44_m6[_2272].w);
                uint _3804 = asuint(_44_m6[_2275].x);
                float3 _3805 = _452 - _44_m6[_2269].xyz;
                float3 _3806 = abs(_3805);
                float _3807 = _3806.x;
                float _3808 = _3806.y;
                float _3810 = _3806.z;
                int _3843;
                if ((_3807 > _3808) && (_3807 > _3810)) {
                  _3843 = int((_3805.x > 0.0f) ? (_3803 & 1023u) : ((_3803 >> 10u) & 1023u));
                } else {
                  int _3835;
                  if (_3808 > _3810) {
                    _3835 = int((_3805.y > 0.0f) ? ((_3803 >> 20u) & 1023u) : (_3804 & 1023u));
                  } else {
                    _3835 = int((_3805.z > 0.0f) ? ((_3804 >> 10u) & 1023u) : ((_3804 >> 20u) & 1023u));
                  }
                  _3843 = _3835;
                }
                _3848 = (_3843 == 1023) ? (-1) : _3843;
              }
              uint _3855 = asuint(_48_m11.x) + (uint(_3848) * 96u);
              uint _3857 = (_3855 + 64u) >> 2u;
              uint _3860 = _3857 + 1u;
              uint _3863 = _3857 + 2u;
              uint _3866 = _3857 + 3u;
              float4 _3870 = asfloat(uint4(_52.Load(_3857 * 4 + 0), _52.Load(_3860 * 4 + 0), _52.Load(_3863 * 4 + 0), _52.Load(_3866 * 4 + 0)));
              float3 _3877 = (_452 - ((-_3635) * _3870.x)) + (_697 * (_3870.y * 5.0f));
              uint _3878 = _3855 >> 2u;
              uint _3893 = (_3855 + 16u) >> 2u;
              uint _3908 = (_3855 + 32u) >> 2u;
              uint _3923 = (_3855 + 48u) >> 2u;
              float4 _3943 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3878 * 4 + 0), _52.Load((_3878 + 1u) * 4 + 0), _52.Load((_3878 + 2u) * 4 + 0), _52.Load((_3878 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3893 * 4 + 0), _52.Load((_3893 + 1u) * 4 + 0), _52.Load((_3893 + 2u) * 4 + 0), _52.Load((_3893 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3908 * 4 + 0), _52.Load((_3908 + 1u) * 4 + 0), _52.Load((_3908 + 2u) * 4 + 0), _52.Load((_3908 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3923 * 4 + 0), _52.Load((_3923 + 1u) * 4 + 0), _52.Load((_3923 + 2u) * 4 + 0), _52.Load((_3923 + 3u) * 4 + 0))))), float4(_3877, 1.0f));
              float _3944 = _3943.w;
              float3 _3947 = _3943.xyz / _3944.xxx;
              uint _3949 = (_3855 + 80u) >> 2u;
              float4 _3962 = asfloat(uint4(_52.Load(_3949 * 4 + 0), _52.Load((_3949 + 1u) * 4 + 0), _52.Load((_3949 + 2u) * 4 + 0), _52.Load((_3949 + 3u) * 4 + 0)));
              float2 _3963 = _3947.xy;
              float2 _3965 = _3962.xy;
              float3 _3969 = _3947.xyz;
              bool3 _3970 = bool3(_3969.x <= 0.0f.xxx.x, _3969.y <= 0.0f.xxx.y, _3969.z <= 0.0f.xxx.z);
              bool3 _3971 = bool3(_3969.x >= 1.0f.xxx.x, _3969.y >= 1.0f.xxx.y, _3969.z >= 1.0f.xxx.z);
              float _3974 = _3947.z;
              float2 _3985 = ((_3963 * (_3962.zw - _3965)) + _3965).xy * _48_m10.zw;
              float2 _3987 = floor(_3985 + 0.5f.xx);
              float2 _3988 = _3985 - _3987;
              float _3989 = _3988.x;
              float _3990 = _3989 + 0.5f;
              float _3991 = _3990 * _3990;
              float _3994 = 1.0f - _3989;
              float _3995 = min(_3989, 0.0f);
              float _3998 = _3989 + 1.0f;
              float _3999 = max(_3989, 0.0f);
              float _4010 = _3988.y;
              float _4011 = _4010 + 0.5f;
              float _4012 = _4011 * _4011;
              float _4015 = 1.0f - _4010;
              float _4016 = min(_4010, 0.0f);
              float _4019 = _4010 + 1.0f;
              float _4020 = max(_4010, 0.0f);
              float3 _4032 = float3(0.1599999964237213134765625f * _3994, 0.1599999964237213134765625f * ((_3998 - (_3999 * _3999)) + 1.0f), _3991 * 0.07999999821186065673828125f);
              float3 _4033 = float3(0.1599999964237213134765625f * ((_3991 * 0.5f) - _3989), 0.1599999964237213134765625f * ((_3994 - (_3995 * _3995)) + 1.0f), 0.1599999964237213134765625f * _3998) + _4032;
              float3 _4035 = float3(0.1599999964237213134765625f * _4015, 0.1599999964237213134765625f * ((_4019 - (_4020 * _4020)) + 1.0f), _4012 * 0.07999999821186065673828125f);
              float3 _4036 = float3(0.1599999964237213134765625f * ((_4012 * 0.5f) - _4010), 0.1599999964237213134765625f * ((_4015 - (_4016 * _4016)) + 1.0f), 0.1599999964237213134765625f * _4019) + _4035;
              float3 _4042 = ((_4032 / _4033) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
              float3 _4044 = ((_4035 / _4036) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
              float2 _4046 = _3987 * _48_m10.xy;
              float _4047 = _4042.x;
              float _4048 = _4044.x;
              float2 _4050 = _4046 + float2(_4047, _4048);
              float _4051 = _4042.y;
              float2 _4053 = _4046 + float2(_4051, _4048);
              float _4054 = _4042.z;
              float2 _4056 = _4046 + float2(_4054, _4048);
              float _4057 = _4044.y;
              float2 _4059 = _4046 + float2(_4047, _4057);
              float2 _4061 = _4046 + float2(_4051, _4057);
              float2 _4063 = _4046 + float2(_4054, _4057);
              float _4064 = _4044.z;
              float2 _4066 = _4046 + float2(_4047, _4064);
              float2 _4068 = _4046 + float2(_4051, _4064);
              float2 _4070 = _4046 + float2(_4054, _4064);
              float _4071 = _4033.x;
              float _4072 = _4036.x;
              float _4074 = _4033.y;
              float _4076 = _4033.z;
              float _4078 = _4036.y;
              float _4082 = _4036.z;
              float _4148 = ((((((((_4071 * _4072) * _50.SampleCmpLevelZero(_26, float3(_4050, _383).xy, _3974)) + ((_4074 * _4072) * _50.SampleCmpLevelZero(_26, float3(_4053, _383).xy, _3974))) + ((_4076 * _4072) * _50.SampleCmpLevelZero(_26, float3(_4056, _383).xy, _3974))) + ((_4071 * _4078) * _50.SampleCmpLevelZero(_26, float3(_4059, _383).xy, _3974))) + ((_4074 * _4078) * _50.SampleCmpLevelZero(_26, float3(_4061, _383).xy, _3974))) + ((_4076 * _4078) * _50.SampleCmpLevelZero(_26, float3(_4063, _383).xy, _3974))) + ((_4071 * _4082) * _50.SampleCmpLevelZero(_26, float3(_4066, _383).xy, _3974))) + ((_4074 * _4082) * _50.SampleCmpLevelZero(_26, float3(_4068, _383).xy, _3974));
              float4 _4163 = asfloat(uint4(_52.Load(_3857 * 4 + 0), _52.Load(_3860 * 4 + 0), _52.Load(_3863 * 4 + 0), _52.Load(_3866 * 4 + 0)));
              float _4164 = _4163.w;
              float2 _4166 = min(_3963, 1.0f.xx - _3963);
              _4179 = (_3848 >= 0) ? lerp(1.0f, (any(bool3(_3970.x || _3971.x, _3970.y || _3971.y, _3970.z || _3971.z)) || ((asuint(_3974) & 2147483647u) > 2139095040u)) ? 1.0f : (_4148 + ((_4076 * _4082) * _50.SampleCmpLevelZero(_26, float3(_4070, _383).xy, _3974))), _3647 ? min(_4164, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4163.z - _3944) * 0.25f, min(_4166.x, _4166.y)))) : _4164) : 1.0f;
            } else {
              _4179 = 1.0f;
            }
            _4180 = _4179;
            break;
          } while (false);
          _4900 = _2226 * _4180;
          _4901 = 0.0f.xxx;
        }
        _4902 = _4900;
        _4903 = _4901;
        break;
      } while (false);
      _2251 = _4902;
      _2254 = _2253 + _4903;
    }
    _2223 = _2222 + _2253;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x10771008:
  float3 _4910 = (((((float3(_1212, _1217, _1222) * _745) * lerp(1.0f, _545.z, _39_m4)) * _18_m22.x) + ((((_1506 * _18_m23.z) * _18_m22.y) * ((_749 * _764.x) + (clamp(50.0f * _749.y, 0.0f, 1.0f) * _764.y).xxx)) * 1.0f)) + (((_670 * lerp(_642, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2197.xyz + (_2222 * _2225)).xyz;
  */
  float3 _4910 = (((((float3(_1212, _1217, _1222) * (_745 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _545.z, _39_m4)) * _18_m22.x) + (((((_1506 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_749 * _764.x) + (clamp(50.0f * _749.y, 0.0f, 1.0f) * _764.y).xxx)) * 1.0f)) + (((_670 * lerp(_642, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2197.xyz + ((_2222 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2225)).xyz;
  // RenoDX code end
  float4 _4911 = float4(_4910.x, _4910.y, _4910.z, _384.w);
  _4911.w = _570;
  float _4928 = _452.y * _18_m46.w;
  float _4933 = max(0.00999999977648258209228515625f, _4928 + _18_m47.w);
  float3 _4947 = exp(_18_m45.xyz * ((-max(0.0f, (_490 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4933)) / _4933) * exp(_4928 + _18_m48.w))));
  float _4950 = dot(_1232, _18_m44.xyz);
  float _4956 = _18_m45.w * _18_m45.w;
  float _4960 = (1.0f + _4956) - ((2.0f * _18_m45.w) * _4950);
  float3 _5292;
  float _5293;
  if (_18_m55.z > 0.0f) {
    uint3 _5118 = (uint3(int3(int(_804.x), int(_804.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5119 = _5118.y;
    uint _5120 = _5118.z;
    uint _5123 = _5118.x + (_5119 * _5120);
    uint _5125 = _5119 + (_5120 * _5123);
    uint _5127 = _5120 + (_5123 * _5125);
    uint _5129 = _5123 + (_5125 * _5127);
    float _5153 = dot(_1232, -_16_m0[2].xyz);
    float3 _5163 = _452 - _16_m11.xyz;
    float _5165 = (_18_m55.w * ((_5153 > 5.9604644775390625e-08f) ? (1.0f / _5153) : 0.0f)) * (1.0f / _490);
    float _5166 = _5163.y;
    float _5167 = _5165 * _5166;
    float _5169 = _16_m11.y + _5167;
    float _5170 = _5166 - _5167;
    float _5172 = (1.0f - _5165) * _490;
    float _5186 = max(-127.0f, _18_m49.z * _5170);
    float _5210 = max(-127.0f, _18_m52.x * _5170);
    float _5221 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5169 - _18_m49.x)))) * ((abs(_5186) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5186)) / _5186) : (0.693147182464599609375f - (0.2402265071868896484375f * _5186)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5169 - _18_m52.z)))) * ((abs(_5210) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5210)) / _5210) : (0.693147182464599609375f - (0.2402265071868896484375f * _5210))));
    float _5243 = clamp((_490 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5246 = clamp((max(clamp(exp2(-(_5221 * _5172)), 0.0f, 1.0f), _18_m51.w) + clamp((_490 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5243, 0.0f, 1.0f);
    float4 _5286 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_23, float3((_1242 + ((((float3(uint3(_5129, _5125 + (_5127 * _5129), _385) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_805 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_805 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5292 = _5286.xyz + (((_18_m51.xyz * (1.0f - _5246)) + (((_18_m54.xyz * pow(clamp(dot(_489, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5221 * max(_5172 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5243))) * _5286.w);
    _5293 = _5286.w * _5246;
  } else {
    float3 _4990 = _452 - _16_m11.xyz;
    float _4992 = _4990.y;
    float _5006 = max(-127.0f, _18_m49.z * _4992);
    float _5030 = max(-127.0f, _18_m52.x * _4992);
    float _5041 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5006) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5006)) / _5006) : (0.693147182464599609375f - (0.2402265071868896484375f * _5006)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5030) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5030)) / _5030) : (0.693147182464599609375f - (0.2402265071868896484375f * _5030))));
    float _5063 = clamp((_490 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5066 = clamp((max(clamp(exp2(-(_5041 * _490)), 0.0f, 1.0f), _18_m51.w) + clamp((_490 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5063, 0.0f, 1.0f);
    _5292 = (_18_m51.xyz * (1.0f - _5066)) + (((_18_m54.xyz * pow(clamp(dot(_489, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5041 * max(_490 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5063));
    _5293 = _5066;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x10771008:
  float3 _5299 = ((_4911.xyz * (_4947 * _5293)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4950 * _4950)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4956) / max((12.56637096405029296875f * _4960) * sqrt(_4960), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4947)) * _5293) + _5292)).xyz;
  */
  float3 _5299 = ((_4911.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_4947 * _5293)) : (_4947 * _5293))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4950 * _4950)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4956) / max((12.56637096405029296875f * _4960) * sqrt(_4960), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4947)) * _5293 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5292 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5309 = lerp(dot(_5299, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5299, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5319 = min(lerp(((sqrt(sqrt(abs(_717 * 0.5f))) * float2(int2(sign(_717)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _704.xx), 1.0f.xx);
  float4 _5320 = float4(_5319.x, _5319.y, _384.z, _384.w);
  _5320.z = float(clamp(max(dot(_5309.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _570, _570) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5320.w = lerp(0.0f, 0.699999988079071044921875f, _704);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x10771008:
  _13 = float4(_5309.x, _5309.y, _5309.z, _4911.w);
  */
  float3 renodx_output_color = float3(_5309.x, _5309.y, _5309.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4911.w);
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

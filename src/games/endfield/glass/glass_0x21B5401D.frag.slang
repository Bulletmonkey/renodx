#include "../shared.h"

// Ported from the native 0x21B5401D Vulkan dump.
struct _19 {
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

static float _378;
static float4 _379;
static uint _382;

static const float4 _357[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _358[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _359[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _14_15 : register(b11, space0) {
  column_major float4x4 _15_m0 : packoffset(c0);
  column_major float4x4 _15_m1 : packoffset(c4);
  column_major float4x4 _15_m2 : packoffset(c8);
  column_major float4x4 _15_m3 : packoffset(c12);
  column_major float4x4 _15_m4 : packoffset(c16);
  column_major float4x4 _15_m5 : packoffset(c20);
  column_major float4x4 _15_m6 : packoffset(c24);
  column_major float4x4 _15_m7 : packoffset(c28);
  column_major float4x4 _15_m8 : packoffset(c32);
  column_major float4x4 _15_m9 : packoffset(c36);
  column_major float4x4 _15_m10 : packoffset(c40);
  float4 _15_m11 : packoffset(c44);
  column_major float4x4 _15_m12 : packoffset(c45);
  column_major float4x4 _15_m13 : packoffset(c49);
  column_major float4x4 _15_m14 : packoffset(c53);
  column_major float4x4 _15_m15 : packoffset(c57);
  column_major float4x4 _15_m16 : packoffset(c61);
  column_major float4x4 _15_m17 : packoffset(c65);
  column_major float4x4 _15_m18 : packoffset(c69);
  column_major float4x4 _15_m19 : packoffset(c73);
  column_major float4x4 _15_m20 : packoffset(c77);
  float4 _15_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _16_17 : register(b15, space0) {
  float4 _17_m0 : packoffset(c0);
  float4 _17_m1 : packoffset(c1);
  float4 _17_m2 : packoffset(c2);
  float4 _17_m3 : packoffset(c3);
  float4 _17_m4 : packoffset(c4);
  float4 _17_m5 : packoffset(c5);
  float4 _17_m6[6] : packoffset(c6);
  float4 _17_m7[6] : packoffset(c12);
  float4 _17_m8 : packoffset(c18);
  float4 _17_m9 : packoffset(c19);
  float4 _17_m10 : packoffset(c20);
  float4 _17_m11 : packoffset(c21);
  float4 _17_m12 : packoffset(c22);
  float4 _17_m13 : packoffset(c23);
  float4 _17_m14 : packoffset(c24);
  float4 _17_m15 : packoffset(c25);
  float _17_m16 : packoffset(c26);
  float _17_m17 : packoffset(c26.y);
  float _17_m18 : packoffset(c26.z);
  uint _17_m19 : packoffset(c26.w);
  float4 _17_m20 : packoffset(c27);
  int4 _17_m21 : packoffset(c28);
  float4 _17_m22 : packoffset(c29);
  float4 _17_m23 : packoffset(c30);
  float4 _17_m24 : packoffset(c31);
  float4 _17_m25 : packoffset(c32);
  float4 _17_m26 : packoffset(c33);
  float4 _17_m27 : packoffset(c34);
  float4 _17_m28 : packoffset(c35);
  float4 _17_m29 : packoffset(c36);
  float4 _17_m30 : packoffset(c37);
  float4 _17_m31 : packoffset(c38);
  float4 _17_m32[4] : packoffset(c39);
  float4 _17_m33[4] : packoffset(c43);
  float4 _17_m34[4] : packoffset(c47);
  float4 _17_m35[4] : packoffset(c51);
  float4 _17_m36 : packoffset(c55);
  float4 _17_m37 : packoffset(c56);
  float4 _17_m38[4] : packoffset(c57);
  float4 _17_m39[4] : packoffset(c61);
  float4 _17_m40[4] : packoffset(c65);
  float4 _17_m41 : packoffset(c69);
  float4 _17_m42 : packoffset(c70);
  float4 _17_m43 : packoffset(c71);
  float4 _17_m44 : packoffset(c72);
  float4 _17_m45 : packoffset(c73);
  float4 _17_m46 : packoffset(c74);
  float4 _17_m47 : packoffset(c75);
  float4 _17_m48 : packoffset(c76);
  float4 _17_m49 : packoffset(c77);
  float4 _17_m50 : packoffset(c78);
  float4 _17_m51 : packoffset(c79);
  float4 _17_m52 : packoffset(c80);
  float4 _17_m53 : packoffset(c81);
  float4 _17_m54 : packoffset(c82);
  float4 _17_m55 : packoffset(c83);
  float4 _17_m56 : packoffset(c84);
  float4 _17_m57 : packoffset(c85);
  float4 _17_m58 : packoffset(c86);
  float4 _17_m59 : packoffset(c87);
  float4 _17_m60 : packoffset(c88);
  float4 _17_m61 : packoffset(c89);
  float4 _17_m62 : packoffset(c90);
  float4 _17_m63 : packoffset(c91);
  float4 _17_m64 : packoffset(c92);
  float4 _17_m65 : packoffset(c93);
  float4 _17_m66 : packoffset(c94);
  float4 _17_m67 : packoffset(c95);
  float4 _17_m68 : packoffset(c96);
  float4 _17_m69 : packoffset(c97);
  float4 _17_m70 : packoffset(c98);
  float4 _17_m71 : packoffset(c99);
  float4 _17_m72 : packoffset(c100);
  float4 _17_m73 : packoffset(c101);
  float4 _17_m74 : packoffset(c102);
  float4 _17_m75 : packoffset(c103);
  float4 _17_m76 : packoffset(c104);
  float4 _17_m77 : packoffset(c105);
  float4 _17_m78 : packoffset(c106);
  float4 _17_m79 : packoffset(c107);
  float4 _17_m80 : packoffset(c108);
  float4 _17_m81 : packoffset(c109);
  float4 _17_m82 : packoffset(c110);
  float4 _17_m83 : packoffset(c111);
  float4 _17_m84 : packoffset(c112);
  float4 _17_m85 : packoffset(c113);
  float4 _17_m86 : packoffset(c114);
  float4 _17_m87 : packoffset(c115);
  float4 _17_m88 : packoffset(c116);
  float4 _17_m89 : packoffset(c117);
  float4 _17_m90 : packoffset(c118);
  float4 _17_m91 : packoffset(c119);
  float4 _17_m92 : packoffset(c120);
  float4 _17_m93 : packoffset(c121);
  float4 _17_m94 : packoffset(c122);
  float4 _17_m95 : packoffset(c123);
  float4 _17_m96 : packoffset(c124);
  float4 _17_m97 : packoffset(c125);
  float4 _17_m98 : packoffset(c126);
  float4 _17_m99 : packoffset(c127);
  float4 _17_m100 : packoffset(c128);
  float4 _17_m101 : packoffset(c129);
  float4 _17_m102[2] : packoffset(c130);
  float4 _17_m103[2] : packoffset(c132);
  float _17_m104 : packoffset(c134);
  float _17_m105 : packoffset(c134.y);
  float _17_m106 : packoffset(c134.z);
  float _17_m107 : packoffset(c134.w);
  float4 _17_m108 : packoffset(c135);
  float4 _17_m109 : packoffset(c136);
  float4 _17_m110 : packoffset(c137);
  float4 _17_m111 : packoffset(c138);
  float4 _17_m112 : packoffset(c139);
  float4 _17_m113 : packoffset(c140);
  float4 _17_m114 : packoffset(c141);
  float4 _17_m115 : packoffset(c142);
  float4 _17_m116 : packoffset(c143);
  float4 _17_m117 : packoffset(c144);
  float4 _17_m118 : packoffset(c145);
  float4 _17_m119 : packoffset(c146);
  float4 _17_m120 : packoffset(c147);
  float4 _17_m121 : packoffset(c148);
  float4 _17_m122 : packoffset(c149);
  float4 _17_m123 : packoffset(c150);
  float4 _17_m124 : packoffset(c151);
  float4 _17_m125 : packoffset(c152);
  float4 _17_m126 : packoffset(c153);
  float4 _17_m127 : packoffset(c154);
  float4 _17_m128 : packoffset(c155);
  float4 _17_m129 : packoffset(c156);
  float4 _17_m130 : packoffset(c157);
  float4 _17_m131 : packoffset(c158);
  float4 _17_m132 : packoffset(c159);
  float4 _17_m133 : packoffset(c160);
  float4 _17_m134 : packoffset(c161);
  float4 _17_m135 : packoffset(c162);
  float4 _17_m136 : packoffset(c163);
  float4 _17_m137 : packoffset(c164);
  column_major float4x4 _17_m138 : packoffset(c165);
  float4 _17_m139 : packoffset(c169);
  float4 _17_m140 : packoffset(c170);
  float4 _17_m141 : packoffset(c171);
  float4 _17_m142 : packoffset(c172);
  int4 _17_m143 : packoffset(c173);
  int4 _17_m144 : packoffset(c174);
  int4 _17_m145 : packoffset(c175);
  float4 _17_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _18_20 : register(b0, space2) {
  _19 _20_m0[256] : packoffset(c0);
};

[[vk::binding(55, 0)]] ByteAddressBuffer _27 : register(t55, space0);
[[vk::binding(2, 1)]] cbuffer _33_34 : register(b2, space1) {
  float _34_m0 : packoffset(c0);
  float _34_m1 : packoffset(c0.y);
  float _34_m2 : packoffset(c0.z);
  float _34_m3 : packoffset(c0.w);
  float _34_m4 : packoffset(c1);
  float _34_m5 : packoffset(c1.y);
  float _34_m6 : packoffset(c1.z);
  float _34_m7 : packoffset(c1.w);
  float _34_m8 : packoffset(c2);
  float _34_m9 : packoffset(c2.y);
  float _34_m10 : packoffset(c2.z);
  float _34_m11 : packoffset(c2.w);
  float _34_m12 : packoffset(c3);
  float _34_m13 : packoffset(c3.y);
  float _34_m14 : packoffset(c3.z);
  float _34_m15 : packoffset(c3.w);
  float4 _34_m16 : packoffset(c4);
  float _34_m17 : packoffset(c5);
  float _34_m18 : packoffset(c5.y);
  float _34_m19 : packoffset(c5.z);
  float _34_m20 : packoffset(c5.w);
  float4 _34_m21 : packoffset(c6);
  float4 _34_m22 : packoffset(c7);
  float4 _34_m23 : packoffset(c8);
  float4 _34_m24 : packoffset(c9);
  float4 _34_m25 : packoffset(c10);
  float _34_m26 : packoffset(c11);
  float _34_m27 : packoffset(c11.y);
  float _34_m28 : packoffset(c11.z);
  float _34_m29 : packoffset(c11.w);
  float _34_m30 : packoffset(c12);
  float _34_m31 : packoffset(c12.y);
  float _34_m32 : packoffset(c12.z);
  float _34_m33 : packoffset(c12.w);
  float4 _34_m34 : packoffset(c13);
  float4 _34_m35 : packoffset(c14);
  float4 _34_m36 : packoffset(c15);
  float4 _34_m37 : packoffset(c16);
  float _34_m38 : packoffset(c17);
  float _34_m39 : packoffset(c17.y);
  float _34_m40 : packoffset(c17.z);
  float _34_m41 : packoffset(c17.w);
  float _34_m42 : packoffset(c18);
  float _34_m43 : packoffset(c18.y);
  float _34_m44 : packoffset(c18.z);
  float _34_m45 : packoffset(c18.w);
  float4 _34_m46 : packoffset(c19);
  float4 _34_m47 : packoffset(c20);
  float4 _34_m48 : packoffset(c21);
  float _34_m49 : packoffset(c22);
  float _34_m50 : packoffset(c22.y);
  float _34_m51 : packoffset(c22.z);
  float _34_m52 : packoffset(c22.w);
  float _34_m53 : packoffset(c23);
  float _34_m54 : packoffset(c23.y);
  float _34_m55 : packoffset(c23.z);
  float _34_m56 : packoffset(c23.w);
  float _34_m57 : packoffset(c24);
  float _34_m58 : packoffset(c24.y);
  float _34_m59 : packoffset(c24.z);
  float _34_m60 : packoffset(c24.w);
  float _34_m61 : packoffset(c25);
  float _34_m62 : packoffset(c25.y);
  float _34_m63 : packoffset(c25.z);
  float _34_m64 : packoffset(c25.w);
  float _34_m65 : packoffset(c26);
  float _34_m66 : packoffset(c26.y);
  float _34_m67 : packoffset(c26.z);
  float _34_m68 : packoffset(c26.w);
  float _34_m69 : packoffset(c27);
  float _34_m70 : packoffset(c27.y);
  float _34_m71 : packoffset(c27.z);
  float _34_m72 : packoffset(c27.w);
  float _34_m73 : packoffset(c28);
  float _34_m74 : packoffset(c28.y);
  float _34_m75 : packoffset(c28.z);
  float _34_m76 : packoffset(c28.w);
  float _34_m77 : packoffset(c29);
  float _34_m78 : packoffset(c29.y);
  float _34_m79 : packoffset(c29.z);
  float _34_m80 : packoffset(c29.w);
  float4 _34_m81 : packoffset(c30);
  float4 _34_m82 : packoffset(c31);
  float _34_m83 : packoffset(c32);
  float _34_m84 : packoffset(c32.y);
  float _34_m85 : packoffset(c32.z);
  float _34_m86 : packoffset(c32.w);
  float4 _34_m87 : packoffset(c33);
};

[[vk::binding(13, 0)]] cbuffer _44_45 : register(b13, space0) {
  float4 _45_m0 : packoffset(c0);
  float4 _45_m1 : packoffset(c1);
  float4 _45_m2 : packoffset(c2);
  float4 _45_m3 : packoffset(c3);
  float4 _45_m4 : packoffset(c4);
  uint4 _45_m5 : packoffset(c5);
  float4 _45_m6[2048] : packoffset(c6);
};

[[vk::binding(51, 0)]] cbuffer _46_47 : register(b51, space0) {
  int _47_m0 : packoffset(c0);
  int _47_m1 : packoffset(c0.y);
  int _47_m2 : packoffset(c0.z);
  int _47_m3 : packoffset(c0.w);
  int _47_m4 : packoffset(c1);
  int _47_m5 : packoffset(c1.y);
  int _47_m6 : packoffset(c1.z);
  int _47_m7 : packoffset(c1.w);
  float _47_m8 : packoffset(c2);
  float _47_m9 : packoffset(c2.y);
  float _47_m10 : packoffset(c2.z);
  float _47_m11 : packoffset(c2.w);
  float _47_m12 : packoffset(c3);
  float _47_m13 : packoffset(c3.y);
  float _47_m14 : packoffset(c3.z);
  float _47_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _48_49 : register(b14, space0) {
  column_major float4x4 _49_m0[5] : packoffset(c0);
  float4 _49_m1[4] : packoffset(c20);
  float4 _49_m2[4] : packoffset(c24);
  float4 _49_m3[4] : packoffset(c28);
  float4 _49_m4 : packoffset(c32);
  float4 _49_m5 : packoffset(c33);
  float4 _49_m6 : packoffset(c34);
  float4 _49_m7 : packoffset(c35);
  float4 _49_m8 : packoffset(c36);
  float4 _49_m9[27] : packoffset(c37);
  float4 _49_m10 : packoffset(c64);
  float4 _49_m11 : packoffset(c65);
  float4 _49_m12[62] : packoffset(c66);
  column_major float4x4 _49_m13[15] : packoffset(c128);
  float4 _49_m14[15] : packoffset(c188);
  float4 _49_m15[15] : packoffset(c203);
  float4 _49_m16[15] : packoffset(c218);
  float4 _49_m17 : packoffset(c233);
  float4 _49_m18 : packoffset(c234);
  float4 _49_m19[21] : packoffset(c235);
  column_major float4x4 _49_m20 : packoffset(c256);
  column_major float4x4 _49_m21 : packoffset(c260);
  float4 _49_m22 : packoffset(c264);
  float4 _49_m23 : packoffset(c265);
  float4 _49_m24 : packoffset(c266);
  float4 _49_m25[128] : packoffset(c267);
};

[[vk::binding(54, 0)]] ByteAddressBuffer _52 : register(t54, space0);
[[vk::binding(53, 0)]] cbuffer _61_62 : register(b53, space0) {
  float4 _62_m0[32] : packoffset(c0);
  column_major float4x4 _62_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _22 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _23 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _24 : register(s6, space0);
[[vk::binding(6, 1)]] Texture2D<float4> _28 : register(t6, space1);
[[vk::binding(3, 1)]] SamplerState _29 : register(s3, space1);
[[vk::binding(7, 1)]] Texture2D<float4> _30 : register(t7, space1);
[[vk::binding(4, 1)]] SamplerState _31 : register(s4, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _32 : register(t5, space1);
[[vk::binding(39, 0)]] Texture3D<float4> _36 : register(t39, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _37 : register(t38, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _38 : register(t35, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _39 : register(t37, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _40 : register(t34, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _41 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _42 : register(t33, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _50 : register(t8, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _51 : register(t28, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _53 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _54 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _55 : register(t9, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _57 : register(t29, space0);
[[vk::binding(22, 0)]] Texture2D<float4> _58 : register(t22, space0);
[[vk::binding(21, 0)]] Texture2D<float4> _59 : register(t21, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _60 : register(t30, space0);
[[vk::binding(32, 0)]] Texture2D<float4> _65 : register(t32, space0);
[[vk::binding(31, 0)]] Texture2D<float4> _66 : register(t31, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float4 _4;
static float4 _5;
static float3 _6;
static float4 _7;
static float3 _8;
static float3 _9;
static uint _10;
static float4 _12;
static float4 _13;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float4 _4 : TEXCOORD0;
  [[vk::location(1)]] float4 _5 : TEXCOORD1;
  [[vk::location(2)]] float3 _6 : TEXCOORD2;
  [[vk::location(4)]] float4 _7 : TEXCOORD4;
  [[vk::location(5)]] float3 _8 : TEXCOORD5;
  [[vk::location(6)]] float3 _9 : TEXCOORD6;
  [[vk::location(7)]] nointerpolation uint _10 : TEXCOORD7;
  float4 gl_FragCoord : SV_Position;
  bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _12 : SV_Target0;
  [[vk::location(1)]] float4 _13 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main() {
  float2 _408 = gl_FragCoord.xy * _17_m0.zw;
  float2 _411 = (_408 * 2.0f) - 1.0f.xx;
  float4 _414 = float4(_411, gl_FragCoord.z, 1.0f);
  _414.y = -_411.y;
  float4 _417 = mul(_15_m6, _414);
  float3 _421 = _417.xyz / _417.w.xxx;
  float4 _425 = float4(_421, 1.0f);
  float _428 = abs(mul(_15_m0, _425).z);
  float3 _429 = _6 * 1.0f;
  float3 _444;
  do {
    if (_17_m4.w == 0.0f) {
      _444 = _15_m11.xyz - _421;
      break;
    } else {
      _444 = _15_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _445 = dot(_444, _444);
  float _447 = rsqrt(max(_445, 9.9999999392252902907785028219223e-09f));
  float3 _448 = _444 * _447;
  float _449 = _445 * _447;
  float2 _472 = ((_4.zw * _34_m4) - (_5.xy * _34_m4)) + _5.xy;
  float4 _473 = _5 * _34_m4;
  float _497 = (_17_m77.w * (1.0f - _20_m0[_10]._m8.x)) + _20_m0[_10]._m8.y;
  float2 _516 = ((mul(((((_4.xy * _34_m23.x) + (_472 * _34_m23.y)) + (_34_m21.xy * _497)) + (_34_m21.zw * _473.x)) - 0.5f.xx, float2x2(float2(_34_m22.xy), float2(_34_m22.zw))) + 0.5f.xx) * _34_m24.xy) + _34_m24.zw;
  float _561 = lerp(0.0f, frac((_20_m0[_10]._m0[0].w + _20_m0[_10]._m0[1].w) + _20_m0[_10]._m0[2].w), _34_m75);
  _516.y = _516.y * (1.0f + min(_561, 0.5f));
  float4 _586 = _30.SampleBias(_31, float4(((mul(((((_4.xy * _34_m37.x) + (_472 * _34_m37.y)) + (_34_m35.xy * _497)) + (_34_m35.zw * _473.y)) - 0.5f.xx, float2x2(float2(_34_m36.xy), float2(_34_m36.zw))) + 0.5f.xx) * _34_m34.xy) + _34_m34.zw, 0.0f, 0.0f).xy, _17_m16);
  float _590 = (_586.x * (_34_m26 + 1.0f)) - _34_m26;
  float2 _593 = float2(_590 * _34_m28, _590 * _34_m29);
  _586.w = _586.w * _590;
  float2 _602 = (((_586.wy * 2.0f) - 1.0f.xx).xy * _34_m28).xy;
  bool2 _604 = (_34_m27 != 0.0f).xx;
  float4 _616 = _28.SampleBias(_29, (_516 + _561.xx) + ((float2(_604.x ? _602.x : _593.x, _604.y ? _602.y : _593.y) * 1.0f) * _34_m17), _17_m16);
  float4 _621 = ((_34_m16 * lerp(_7, 1.0f.xxxx, _34_m5.xxxx)) * float4(_34_m6, _34_m6, _34_m6, _34_m7)) * lerp(_616, float4(1.0f, 1.0f, 1.0f, _616.x), _34_m18.xxxx);
  bool3 _645 = (gl_FrontFacing ? true : false).xxx;
  float3 _646 = -_429;
  float3 _647 = float3(_645.x ? _429.x : _646.x, _645.y ? _429.y : _646.y, _645.z ? _429.z : _646.z);
  float _677 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
  float _698 = clamp(((((_621.w * ((_34_m49 != 0.0f) ? (clamp((_428 - _34_m50) / (_34_m51 - _34_m50), 0.0f, 1.0f) * clamp((_428 - _34_m52) / (_34_m53 - _34_m52), 0.0f, 1.0f)) : 1.0f)) * lerp(1.0f, _7.w, _34_m73)) * lerp(1.0f, pow(abs(dot(_6, _448)), _34_m66), _34_m68)) * (1.0f - _20_m0[_10]._m1.y)) * (((_20_m0[_10]._m1.x - ((_20_m0[_10]._m1.x >= 0.0f) ? _677 : (-_677))) > 0.0f) ? 1.0f : (1.0f - _34_m0)), 0.0f, 1.0f);
  float3 _699 = clamp((_621.xyz * ((1.0f - _34_m12) + (_17_m20.y * _34_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
  float3 _702 = _699 * _34_m69;
  float3 _704 = _699 * (1.0f - _34_m69);
  float3 _744;
  if (_34_m85 > 0.0f) {
    _744 = _704 + (((_32.SampleBias(_23, (mul(float3x3(_15_m0[0].xyz, _15_m0[1].xyz, _15_m0[2].xyz), _647).xy + 1.0f.xx) * 0.5f, _17_m16).xyz * _34_m83) * _34_m87.xyz) * ((1.0f - _34_m84) + (_17_m20.y * _34_m84)));
  } else {
    _744 = _704;
  }
  float2 _791;
  if (clamp((_34_m3 + 1.0f) - _34_m0, 0.0f, 1.0f) > 0.5f) {
    float2 _777 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
    _777.y = -_777.y;
    _791 = ((sqrt(sqrt(abs(_777 * 0.5f))) * float2(int2(sign(_777)))) * 0.5f) + 0.5f.xx;
  } else {
    _791 = 0.0f.xx;
  }
  float _792 = 0.07999999821186065673828125f * _34_m72;
  float3 _793 = _702 * _34_m70;
  float3 _794 = _702 - _793;
  float3 _798 = (_792 - (_792 * _34_m70)).xxx + _793;
  uint2 _829;
  float _830;
  if (_17_m24.y == 1.0f) {
    float4 _806 = mul(_17_m138, _425);
    float4 _809 = _806;
    _809.y = -_806.y;
    float4 _812 = _809 * (1.0f / _806.w);
    _829 = uint2(clamp(((_812.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _17_m0.xy);
    _830 = 1.0f / ((_17_m2.z * _812.z) + _17_m2.w);
  } else {
    _829 = uint2(gl_FragCoord.xy);
    _830 = _428;
  }
  float3 _832 = _421 + (_647 * 0.25f);
  float3 _842 = mul(float3x3(_15_m1[0].xyz, _15_m1[1].xyz, _15_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _851 = _832 - (_17_m108.xyz + (_842 * (-_17_m110.w)));
  float _866 = max(min(max((max(abs(_851.x), abs(_851.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_851.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1168;
  float4 _1169;
  float4 _1170;
  float _1171;
  float _1172;
  if ((_17_m108.w != 0.0f) && (_866 < 1.0f)) {
    float3 _879 = _832 - (_17_m108.xyz + (_842 * (-_17_m110.y)));
    float _893 = max(clamp((max(abs(_879.x), abs(_879.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_879.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _969;
    float4 _970;
    float4 _971;
    float4 _972;
    if (_893 < 1.0f) {
      float3 _902 = ((_832 * 2.0f) + 0.5f.xxx) * _17_m109.xyz;
      float3 _904 = _902 - floor(_902);
      float4 _908 = _37.SampleLevel(_23, _904, 0.0f);
      float _909 = 1.0f - _893;
      float _913 = _17_m109.y * 0.5f;
      float _918 = _904.x;
      float _919 = clamp(_904.y, _913, 1.0f - _913) * 0.3333333432674407958984375f;
      float _920 = _904.z;
      float4 _923 = _38.SampleLevel(_22, float3(_918, _919, _920), 0.0f);
      float _939 = _908.x;
      float _949 = _908.y;
      float _959 = _908.z;
      _969 = _866 + (_923.w * _909);
      _970 = float4(((_38.SampleLevel(_22, float3(_918, _919 + 0.666666686534881591796875f, _920), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _959, _959) * _909;
      _971 = float4(((_38.SampleLevel(_22, float3(_918, _919 + 0.3333333432674407958984375f, _920), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _949, _949) * _909;
      _972 = float4(((_923.xyz * 4.0f) - 2.0f.xxx) * _939, _939) * _909;
    } else {
      _969 = _866;
      _970 = 0.0f.xxxx;
      _971 = 0.0f.xxxx;
      _972 = 0.0f.xxxx;
    }
    float3 _978 = _832 - (_17_m108.xyz + (_842 * (-_17_m110.z)));
    float _992 = max(clamp((max(abs(_978.x), abs(_978.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_978.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1072;
    float4 _1073;
    float4 _1074;
    float4 _1075;
    if (_992 < 1.0f) {
      float3 _1001 = ((_832 * 0.5f) + 0.5f.xxx) * _17_m109.xyz;
      float3 _1003 = _1001 - floor(_1001);
      float4 _1007 = _39.SampleLevel(_23, _1003, 0.0f);
      float _1009 = _893 * (1.0f - _992);
      float _1013 = _17_m109.y * 0.5f;
      float _1018 = _1003.x;
      float _1019 = clamp(_1003.y, _1013, 1.0f - _1013) * 0.3333333432674407958984375f;
      float _1020 = _1003.z;
      float4 _1023 = _40.SampleLevel(_22, float3(_1018, _1019, _1020), 0.0f);
      float _1039 = _1007.x;
      float _1050 = _1007.y;
      float _1061 = _1007.z;
      _1072 = _969 + (_1023.w * _1009);
      _1073 = _970 + (float4(((_40.SampleLevel(_22, float3(_1018, _1019 + 0.666666686534881591796875f, _1020), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1061, _1061) * _1009);
      _1074 = _971 + (float4(((_40.SampleLevel(_22, float3(_1018, _1019 + 0.3333333432674407958984375f, _1020), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1050, _1050) * _1009);
      _1075 = _972 + (float4(((_1023.xyz * 4.0f) - 2.0f.xxx) * _1039, _1039) * _1009);
    } else {
      _1072 = _969;
      _1073 = _970;
      _1074 = _971;
      _1075 = _972;
    }
    float4 _1158;
    float4 _1159;
    float4 _1160;
    float _1161;
    if (_992 > 0.0f) {
      float3 _1084 = ((_832 * 0.125f) + 0.5f.xxx) * _17_m109.xyz;
      float3 _1087 = _17_m109.xyz * 0.5f;
      float3 _1089 = clamp(_1084 - floor(_1084), _1087, 1.0f.xxx - _1087);
      float4 _1093 = _41.SampleLevel(_23, _1089, 0.0f);
      float _1095 = _992 * (1.0f - _866);
      float _1099 = _17_m109.y * 0.5f;
      float _1104 = _1089.x;
      float _1105 = clamp(_1089.y, _1099, 1.0f - _1099) * 0.3333333432674407958984375f;
      float _1106 = _1089.z;
      float4 _1109 = _42.SampleLevel(_22, float3(_1104, _1105, _1106), 0.0f);
      float _1125 = _1093.x;
      float _1136 = _1093.y;
      float _1147 = _1093.z;
      _1158 = _1073 + (float4(((_42.SampleLevel(_22, float3(_1104, _1105 + 0.666666686534881591796875f, _1106), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1147, _1147) * _1095);
      _1159 = _1074 + (float4(((_42.SampleLevel(_22, float3(_1104, _1105 + 0.3333333432674407958984375f, _1106), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1136, _1136) * _1095);
      _1160 = _1075 + (float4(((_1109.xyz * 4.0f) - 2.0f.xxx) * _1125, _1125) * _1095);
      _1161 = _1072 + (_1109.w * _1095);
    } else {
      _1158 = _1073;
      _1159 = _1074;
      _1160 = _1075;
      _1161 = _1072;
    }
    float _1164 = clamp((_1161 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1168 = _1158;
    _1169 = _1159;
    _1170 = _1160;
    _1171 = _1164 - _866;
    _1172 = (_1164 + _866) * 0.5f;
  } else {
    _1168 = 0.0f.xxxx;
    _1169 = 0.0f.xxxx;
    _1170 = 0.0f.xxxx;
    _1171 = 0.0f;
    _1172 = 1.0f;
  }
  float4 _1192 = _1170 + float4(_17_m111.x * _1172, (_17_m111.y * _1172) + ((_17_m111.w * _1171) * 0.5f), _17_m111.z * _1172, (_17_m111.w * _1172) + ((_17_m111.y * _1171) * 0.375f));
  float4 _1212 = _1169 + float4(_17_m112.x * _1172, (_17_m112.y * _1172) + ((_17_m112.w * _1171) * 0.5f), _17_m112.z * _1172, (_17_m112.w * _1172) + ((_17_m112.y * _1171) * 0.375f));
  float4 _1232 = _1168 + float4(_17_m113.x * _1172, (_17_m113.y * _1172) + ((_17_m113.w * _1171) * 0.5f), _17_m113.z * _1172, (_17_m113.w * _1172) + ((_17_m113.y * _1171) * 0.375f));
  float3 _1253 = ((float3(max(0.0f, dot(_1192.xyz, _647) + _1192.w), max(0.0f, dot(_1212.xyz, _647) + _1212.w), max(0.0f, dot(_1232.xyz, _647) + _1232.w)) * _794) * 1.0f) * _17_m22.x;
  float3 _1262 = (((_1253.x + _1253.y) + _1253.z) * 0.3333333432674407958984375f).xxx;
  float3 _1267 = (_1262 + ((_1253 - _1262) * _34_m67)) + ((-0.0f).xxx * _34_m67);
  float3 _1273 = _17_m78.w.xxx;
  float _1281 = 1.0f - _34_m11;
  float4 _2114;
  do {
    [branch] if (_47_m4 == 0) {
      _2114 = 0.0f.xxxx;
      break;
    }
    float3 _1291 = _421 + (_647 * 0.5f);
    float2 _1963;
    do {
      if (_49_m7.w >= 0.9900000095367431640625f) {
        _1963 = float2(_49_m7.z, 1.0f);
        break;
      }
      float _1887;
      if (_34_m79 > 0.0f) {
        float _1699 = 1.0f - clamp(dot(_647, _45_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1716 = float4((_1291 - (_45_m0.xyz * (_1699 * _49_m22.x))) + (_647 * (_1699 * _49_m22.y)), 1.0f);
        float4 _1717 = mul(_49_m21, _1716);
        float2 _1718 = _1717.xy;
        float _1886;
        if (all(bool2(_1718.x > 0.0f.xx.x, _1718.y > 0.0f.xx.y)) && all(bool2(_1718.x < 1.0f.xx.x, _1718.y < 1.0f.xx.y))) {
          uint _1737 = clamp(uint((floor(_1717.y * _49_m23.z) + _1717.x) * _49_m23.y), 0u, 127u);
          uint _1741 = asuint(_49_m25[_1737].x);
          float2 _1742 = spvUnpackHalf2x16(_1741);
          float _1743 = _1742.x;
          float _1885;
          if (_1743 >= 0.0f) {
            float4x4 _1752 = _49_m20;
            _1752[0].w = _49_m25[_1737].y;
            _1752[1].w = _49_m25[_1737].z;
            _1752[2].w = _49_m25[_1737].w;
            float4 _1759 = mul(_1752, _1716);
            float3 _1760 = _1759.xyz;
            float _1884;
            if (all(bool3(_1760.x > 0.0f.xxx.x, _1760.y > 0.0f.xxx.y, _1760.z > 0.0f.xxx.z)) && all(bool3(_1760.x < 1.0f.xxx.x, _1760.y < 1.0f.xxx.y, _1760.z < 1.0f.xxx.z))) {
              float2 _1772 = (_1759.xy * _49_m22.zw) + float2(_1743, spvUnpackHalf2x16(_1741 >> 16u).x);
              float _1777 = _1759.z;
              float2 _1783 = float4(_1772, _1777, 1.0f).xy * _49_m24.zw;
              float2 _1785 = floor(_1783 + 0.5f.xx);
              float2 _1786 = _1783 - _1785;
              float _1787 = _1786.x;
              float _1788 = _1787 + 0.5f;
              float _1790 = (_1788 * _1788) * 0.5f;
              float _1793 = min(_1787, 0.0f);
              float _1797 = max(_1787, 0.0f);
              float4 _1801 = float4(_1790 - _1787, (1.0f - _1787) - (_1793 * _1793), (_1787 + 1.0f) - (_1797 * _1797), _1790) * 0.44444000720977783203125f;
              float _1802 = _1786.y;
              float _1803 = _1802 + 0.5f;
              float _1805 = (_1803 * _1803) * 0.5f;
              float _1808 = min(_1802, 0.0f);
              float _1812 = max(_1802, 0.0f);
              float4 _1816 = float4(_1805 - _1802, (1.0f - _1802) - (_1808 * _1808), (_1802 + 1.0f) - (_1812 * _1812), _1805) * 0.44444000720977783203125f;
              float2 _1818 = _1801.yw;
              float2 _1819 = _1801.xz + _1818;
              float2 _1821 = _1816.yw;
              float2 _1822 = _1816.xz + _1821;
              float2 _1828 = ((_1818 / _1819) + float2(-1.5f, 0.5f)) * _49_m24.xx;
              float2 _1830 = ((_1821 / _1822) + float2(-1.5f, 0.5f)) * _49_m24.yy;
              float2 _1832 = _1785 * _49_m24.xy;
              float _1833 = _1828.x;
              float _1834 = _1830.x;
              float2 _1836 = _1832 + float2(_1833, _1834);
              float _1837 = _1828.y;
              float2 _1839 = _1832 + float2(_1837, _1834);
              float _1840 = _1830.y;
              float2 _1842 = _1832 + float2(_1833, _1840);
              float2 _1844 = _1832 + float2(_1837, _1840);
              float _1845 = _1819.x;
              float _1846 = _1822.x;
              float _1848 = _1819.y;
              float _1850 = _1822.y;
              _1884 = ((((_1845 * _1846) * _54.SampleCmpLevelZero(_24, float3(_1836, _378).xy, _1777)) + ((_1848 * _1846) * _54.SampleCmpLevelZero(_24, float3(_1839, _378).xy, _1777))) + ((_1845 * _1850) * _54.SampleCmpLevelZero(_24, float3(_1842, _378).xy, _1777))) + ((_1848 * _1850) * _54.SampleCmpLevelZero(_24, float3(_1844, _378).xy, _1777));
            } else {
              _1884 = 1.0f;
            }
            _1885 = _1884;
          } else {
            _1885 = 1.0f;
          }
          _1886 = _1885;
        } else {
          _1886 = 1.0f;
        }
        _1887 = _1886;
      } else {
        int _1310 = int(_49_m7.x);
        bool3 _1312 = (_1310 == 2).xxx;
        float3 _1320 = _1291 - float3(_1312.x ? _49_m1[0].xyz.x : _15_m11.xyz.x, _1312.y ? _49_m1[0].xyz.y : _15_m11.xyz.y, _1312.z ? _49_m1[0].xyz.z : _15_m11.xyz.z);
        float _1331 = max(clamp((_49_m6.w - dot(_1320, _1320)) * _49_m6.z, 0.0f, 1.0f), _49_m8.x);
        float _1488;
        bool _1489;
        if (_1331 > 0.0f) {
          float _1486;
          bool _1487;
          if (_1310 > 0) {
            float3 _1338 = _1291 - _49_m1[0].xyz;
            float3 _1342 = _1291 - _49_m1[1].xyz;
            float3 _1346 = _1291 - _49_m1[2].xyz;
            float3 _1350 = _1291 - _49_m1[3].xyz;
            float4 _1355 = float4(dot(_1338, _1338), dot(_1342, _1342), dot(_1346, _1346), dot(_1350, _1350));
            float4 _1364 = float4(_49_m1[0].w, _49_m1[1].w, _49_m1[2].w, _49_m1[3].w);
            float4 _1366 = float4(bool4(_1355.x < _1364.x, _1355.y < _1364.y, _1355.z < _1364.z, _1355.w < _1364.w));
            float3 _1370 = clamp(_1366.yzw - _1366.xyz, 0.0f.xxx, 1.0f.xxx);
            float _1374 = clamp(4.0f - dot(float4(_1366.x, _1370.x, _1370.y, _1370.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
            float _1376 = clamp(_1374 + 1.0f, 0.0f, 3.0f);
            uint _1377 = uint(_1374);
            uint _1385 = uint(_1376);
            float _1391 = dot(_1355, _357[_1385]) / _49_m1[_1385].w;
            float _1409;
            if (((_1376 > _1374) && (_1391 >= 0.0f)) && (_1391 <= 1.0f)) {
              _1409 = _1374 + step(frac(52.98291778564453125f * frac(dot(float2(_829) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1355, _357[_1377]) / _49_m1[_1377].w) - 0.89999997615814208984375f) * 12.0f);
            } else {
              _1409 = _1374;
            }
            float _1410 = clamp(_1409, 0.0f, 4.0f);
            float4 _1418 = mul(_49_m0[uint(_1410)], float4(_1291, 1.0f));
            float _1421 = _1418.z;
            float4 _1422 = float4(_1418.xy, _1421, _1410);
            float3 _1423 = _1422.xyz;
            bool3 _1424 = bool3(_1423.x <= 0.0f.xxx.x, _1423.y <= 0.0f.xxx.y, _1423.z <= 0.0f.xxx.z);
            bool3 _1425 = bool3(_1423.x >= 1.0f.xxx.x, _1423.y >= 1.0f.xxx.y, _1423.z >= 1.0f.xxx.z);
            bool _1431 = any(bool3(_1424.x || _1425.x, _1424.y || _1425.y, _1424.z || _1425.z)) || ((asuint(_1421) & 2147483647u) > 2139095040u);
            int _1432 = int(_1410);
            float2 _1447 = float4(_49_m3[_1432].xy + (_1422.xy * _49_m3[_1432].zw), _1421, _1410).xy;
            _1486 = _1431 ? 1.0f : (0.25f * (((_50.SampleCmpLevelZero(_24, float3(_1447 + (_49_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _378).xy, _1421) + _50.SampleCmpLevelZero(_24, float3(_1447 + (_49_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _378).xy, _1421)) + _50.SampleCmpLevelZero(_24, float3(_1447 + (_49_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _378).xy, _1421)) + _50.SampleCmpLevelZero(_24, float3(_1447 + (_49_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _378).xy, _1421)));
            _1487 = _1431;
          } else {
            _1486 = 1.0f;
            _1487 = false;
          }
          _1488 = _1486;
          _1489 = _1487;
        } else {
          _1488 = 1.0f;
          _1489 = false;
        }
        float _1689;
        float _1690;
        if ((_1331 < 1.0f) || (_49_m8.x > 0.5f)) {
          float _1500 = 1.0f - clamp(dot(_647, _45_m0.xyz), 0.0f, 0.89999997615814208984375f);
          float4 _1517 = float4((_1291 - (_45_m0.xyz * (_1500 * _49_m22.x))) + (_647 * (_1500 * _49_m22.y)), 1.0f);
          float4 _1518 = mul(_49_m21, _1517);
          float2 _1519 = _1518.xy;
          float _1687;
          if (all(bool2(_1519.x > 0.0f.xx.x, _1519.y > 0.0f.xx.y)) && all(bool2(_1519.x < 1.0f.xx.x, _1519.y < 1.0f.xx.y))) {
            uint _1538 = clamp(uint((floor(_1518.y * _49_m23.z) + _1518.x) * _49_m23.y), 0u, 127u);
            uint _1542 = asuint(_49_m25[_1538].x);
            float2 _1543 = spvUnpackHalf2x16(_1542);
            float _1544 = _1543.x;
            float _1686;
            if (_1544 >= 0.0f) {
              float4x4 _1553 = _49_m20;
              _1553[0].w = _49_m25[_1538].y;
              _1553[1].w = _49_m25[_1538].z;
              _1553[2].w = _49_m25[_1538].w;
              float4 _1560 = mul(_1553, _1517);
              float3 _1561 = _1560.xyz;
              float _1685;
              if (all(bool3(_1561.x > 0.0f.xxx.x, _1561.y > 0.0f.xxx.y, _1561.z > 0.0f.xxx.z)) && all(bool3(_1561.x < 1.0f.xxx.x, _1561.y < 1.0f.xxx.y, _1561.z < 1.0f.xxx.z))) {
                float2 _1573 = (_1560.xy * _49_m22.zw) + float2(_1544, spvUnpackHalf2x16(_1542 >> 16u).x);
                float _1578 = _1560.z;
                float2 _1584 = float4(_1573, _1578, 1.0f).xy * _49_m24.zw;
                float2 _1586 = floor(_1584 + 0.5f.xx);
                float2 _1587 = _1584 - _1586;
                float _1588 = _1587.x;
                float _1589 = _1588 + 0.5f;
                float _1591 = (_1589 * _1589) * 0.5f;
                float _1594 = min(_1588, 0.0f);
                float _1598 = max(_1588, 0.0f);
                float4 _1602 = float4(_1591 - _1588, (1.0f - _1588) - (_1594 * _1594), (_1588 + 1.0f) - (_1598 * _1598), _1591) * 0.44444000720977783203125f;
                float _1603 = _1587.y;
                float _1604 = _1603 + 0.5f;
                float _1606 = (_1604 * _1604) * 0.5f;
                float _1609 = min(_1603, 0.0f);
                float _1613 = max(_1603, 0.0f);
                float4 _1617 = float4(_1606 - _1603, (1.0f - _1603) - (_1609 * _1609), (_1603 + 1.0f) - (_1613 * _1613), _1606) * 0.44444000720977783203125f;
                float2 _1619 = _1602.yw;
                float2 _1620 = _1602.xz + _1619;
                float2 _1622 = _1617.yw;
                float2 _1623 = _1617.xz + _1622;
                float2 _1629 = ((_1619 / _1620) + float2(-1.5f, 0.5f)) * _49_m24.xx;
                float2 _1631 = ((_1622 / _1623) + float2(-1.5f, 0.5f)) * _49_m24.yy;
                float2 _1633 = _1586 * _49_m24.xy;
                float _1634 = _1629.x;
                float _1635 = _1631.x;
                float2 _1637 = _1633 + float2(_1634, _1635);
                float _1638 = _1629.y;
                float2 _1640 = _1633 + float2(_1638, _1635);
                float _1641 = _1631.y;
                float2 _1643 = _1633 + float2(_1634, _1641);
                float2 _1645 = _1633 + float2(_1638, _1641);
                float _1646 = _1620.x;
                float _1647 = _1623.x;
                float _1649 = _1620.y;
                float _1651 = _1623.y;
                _1685 = ((((_1646 * _1647) * _54.SampleCmpLevelZero(_24, float3(_1637, _378).xy, _1578)) + ((_1649 * _1647) * _54.SampleCmpLevelZero(_24, float3(_1640, _378).xy, _1578))) + ((_1646 * _1651) * _54.SampleCmpLevelZero(_24, float3(_1643, _378).xy, _1578))) + ((_1649 * _1651) * _54.SampleCmpLevelZero(_24, float3(_1645, _378).xy, _1578));
              } else {
                _1685 = 1.0f;
              }
              _1686 = _1685;
            } else {
              _1686 = 1.0f;
            }
            _1687 = _1686;
          } else {
            _1687 = 1.0f;
          }
          _1689 = _1489 ? _1687 : _1488;
          _1690 = _1687;
        } else {
          _1689 = _1488;
          _1690 = 1.0f;
        }
        _1887 = lerp(lerp(_1690, _1689, _1331), min(_1690, _1689), _49_m8.x);
      }
      float _1958;
      if (_1887 > 0.001000000047497451305389404296875f) {
        float3 _1920 = _1291 - _17_m65.xyz;
        float2 _1925 = (_1920 + (_17_m68.xyz * _1920.y)).xz * _17_m66.z;
        float2 _1926 = _17_m67.xy * _17_m77.w;
        float3 _1933 = _1291 - _17_m69.xyz;
        float2 _1941 = _17_m69.w.xx;
        float4 _1948 = _53.SampleLevel(_23, lerp(_1925 * _17_m67.w, (_1933 + (_17_m68.xyz * _1933.y)).xz * _17_m70.x, _1941) + lerp(_1926, _17_m70.yz * _17_m77.w, _1941), 0.0f);
        _1958 = _1887 * lerp(1.0f, lerp(_53.SampleLevel(_23, _1925 + _1926, 0.0f).x, lerp(_1948.x, _1948.y, _17_m69.w), smoothstep(_17_m66.x, _17_m66.y, length(_1920.xz))), _17_m67.z);
      } else {
        _1958 = _1887;
      }
      _1963 = float2(lerp(_1958, _49_m7.z, _49_m7.w), _1958);
      break;
    } while (false);
    float _1968 = lerp(1.0f, min(1.0f, _1963.x), _49_m6.x);
    float4 _2113;
    if (_1968 > 0.001000000047497451305389404296875f) {
      float3 _1979 = reflect(-_448, _647);
      float3 _1980 = -_45_m0.xyz;
      float _1985 = dot(_1980, _1979);
      float3 _1987 = _1979 - (_1980 * _1985);
      bool3 _1989 = (_1985 < _45_m4.z).xxx;
      float3 _1997 = normalize((_1980 * _45_m4.z) + ((_1987 * rsqrt(max(6.103515625e-05f, dot(_1987, _1987)))) * _45_m4.y));
      float3 _1998 = float3(_1989.x ? _1997.x : _1979.x, _1989.y ? _1997.y : _1979.y, _1989.z ? _1997.z : _1979.z);
      float3 _2002 = _1998 + _448;
      float3 _2006 = _2002 * rsqrt(max(6.103515625e-05f, dot(_2002, _2002)));
      float _2007 = clamp(dot(_1998, _647), 0.0f, 1.0f);
      float _2009 = clamp(dot(_647, _2006), 0.0f, 1.0f);
      float _2013 = clamp(dot(_647, _448), 0.0f, 1.0f);
      float _2014 = _34_m71 * _34_m71;
      float _2015 = _2014 * _2014;
      float _2036 = (((_2009 * _2015) - _2009) * _2009) + 1.0f;
      float _2039 = 1.0f - clamp(dot(_448, _2006), 0.0f, 1.0f);
      float _2040 = _2039 * _2039;
      float _2042 = (_2039 * _2040) * _2040;
      float _2066 = 1.0f - _34_m71;
      float _2073 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2066 * (1.04997003078460693359375f + (_2066 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2066))))));
      float _2074 = 1.0f - _2073;
      float3 _2077 = _798 + ((1.0f.xxx - _798) * 0.0476190485060214996337890625f);
      float3 _2096 = clamp(clamp((min(((_798 * (1.0f - _2042)) + _2042.xxx) * ((_2015 / (_2036 * _2036)) * (0.5f / (((_2007 * sqrt(((((-_2013) * _2015) + _2013) * _2013) + _2015)) + (_2013 * sqrt(((((-_2007) * _2015) + _2007) * _2007) + _2015))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2077 * (((_57.SampleLevel(_22, (float2(_2013, _34_m71) * 0.96875f) + 0.015625f.xx, 0.0f).x * _57.SampleLevel(_22, (float2(_2007, _34_m71) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2073) / _2074)) * _2077) / (1.0f.xxx - (_2077 * _2074)))) * _45_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_698, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _34_m65;
      float3 _2100 = ((_2096 * _2007) + ((_794 * 1.0f) * _2007)) * _45_m1.xyz;
      float3 _2111 = lerp(_2100, _2100 * _55.SampleBias(_22, float2(_1968, 0.5f), _17_m16).xyz, (1.0f - _1968).xxx) * 1.0f;
      _2113 = float4(_2111.x, _2111.y, _2111.z, 0.0f.xxxx.w);
    } else {
      _2113 = 0.0f.xxxx;
    }
    _2114 = _2113;
    break;
  } while (false);
  float2 _2115 = float2(_829);
  float2 _2117 = floor(_2115 * 0.03125f);
  int _2125 = int((_2117.x + (_2117.y * _47_m9)) * 8.0f);
  float _2132 = floor(_830 - (_17_m3.y * _47_m15));
  float _2136 = clamp(_2132, 0.0f, _47_m11 - 1.0f);
  int _2138 = int(_2136 * 8.0f);
  float3 _2140;
  float _2143;
  _2140 = 0.0f.xxx;
  _2143 = 1.0f;
  float3 _2141;
  float _2144;
  [loop] for (int _2145 = 0; _2145 <= 7; _2140 = _2141, _2143 = _2144, _2145++) {
    uint _2166 = (_2132 <= _2136) ? (_27.Load(uint((_47_m2 + _2125) + _2145) * 4 + 0) & _27.Load(uint((_47_m3 + _2138) + _2145) * 4 + 0)) : 0u;
    uint _2167 = uint(_2145);
    float3 _2171;
    _2144 = _2143;
    _2171 = 0.0f.xxx;
    uint _2174;
    float _2169;
    float3 _2172;
    [loop] for (uint _2173 = _2166; _2173 != 0u; _2144 = _2169, _2171 = _2172, _2173 = _2174) {
      uint _2178 = firstbitlow(_2173);
      _2174 = _2173 ^ (1u << (_2178 & 31u));
      int _2184 = int((32u * _2167) + _2178) * 8;
      int _2187 = _2184 + 1;
      int _2190 = _2184 + 2;
      int _2193 = _2184 + 3;
      int _2196 = _2184 + 4;
      int _2199 = _2184 + 5;
      int _2202 = _2184 + 6;
      int _2205 = _2184 + 7;
      uint _2209 = uint(_45_m6[_2199].w);
      float _2284;
      if ((_2209 & 1u) == 1u) {
        uint _2215 = asuint(_45_m6[_2199].x);
        uint _2222 = asuint(_45_m6[_2199].y);
        uint _2229 = asuint(_45_m6[_2199].z);
        uint _2236 = asuint(_45_m6[_2202].x);
        uint _2243 = asuint(_45_m6[_2202].y);
        uint _2250 = asuint(_45_m6[_2202].z);
        float3 _2269 = abs(mul(float4(_421 - _45_m6[_2187].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2215).x, spvUnpackHalf2x16(_2229).x, spvUnpackHalf2x16(_2243).x, 0.0f), float4(spvUnpackHalf2x16(_2215 >> 16u).x, spvUnpackHalf2x16(_2229 >> 16u).x, spvUnpackHalf2x16(_2243 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2222).x, spvUnpackHalf2x16(_2236).x, spvUnpackHalf2x16(_2250).x, 0.0f), float4(spvUnpackHalf2x16(_2222 >> 16u).x, spvUnpackHalf2x16(_2236 >> 16u).x, spvUnpackHalf2x16(_2250 >> 16u).x, 0.0f))).xyz);
        float _2276 = _45_m6[_2205].x * 0.5f;
        float _2282 = 1.0f - clamp((max(max(_2269.x, _2269.y), _2269.z) - (_2276 + 0.5f)) / (0.5f - _2276), 0.0f, 1.0f);
        _2284 = _2282 * _2282;
      } else {
        _2284 = 1.0f;
      }
      uint _2288 = uint(_45_m6[_2184].w);
      bool _2291 = _45_m6[_2193].z > 0.5f;
      if ((false || (_2284 < 0.001000000047497451305389404296875f)) || ((_2288 < 4u) && _2291)) {
        _2169 = _2144;
        _2172 = _2171;
        continue;
      }
      float _4824;
      float3 _4825;
      do {
        [branch] if (_2288 >= 4u) {
          float3 _3521;
          do {
            float3 _2310 = _45_m6[_2187].xyz - _421;
            if (dot(_45_m6[_2193].xyz, _2310) > 0.0f) {
              _3521 = 0.0f.xxx;
              break;
            }
            float _2317 = dot(_2310, _2310) * _45_m6[_2187].w;
            float _2320 = clamp(1.0f - (_2317 * _2317), 0.0f, 1.0f);
            float _2321 = _2320 * _2320;
            if (_2321 <= 0.0f) {
              _3521 = 0.0f.xxx;
              break;
            }
            float3 _2360;
            float _2361;
            bool _2362;
            float3 _2390;
            float3 _2392;
            float3 _2394;
            float3 _2396;
            float3 _2325 = _45_m6[_2190].xyz * _45_m6[_2190].w;
            float3 _2326 = _45_m6[_2187].xyz - _2325;
            float3 _2327 = _45_m6[_2196].xyz * _45_m6[_2193].w;
            float3 _2330 = _45_m6[_2187].xyz + _2325;
            float2 _2341 = (float2(clamp(_34_m71, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_647, _448), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2345 = _65.SampleLevel(_22, _2341, 0.0f);
            float4 _2349 = _66.SampleLevel(_22, _2341, 0.0f);
            float _2744;
            do {
              _2360 = _448 - (_647 * dot(_448, _647));
              _2361 = dot(_2360, _2360);
              _2362 = _2361 > 9.9999997473787516355514526367188e-05f;
              float3 _2385;
              if (_2362) {
                _2385 = _2360 * rsqrt(_2361);
              } else {
                float _2366 = _647.z;
                float _2368 = (_2366 >= 0.0f) ? 1.0f : (-1.0f);
                float _2370 = (-1.0f) / (_2368 + _2366);
                float _2372 = _647.x;
                _2385 = float3(1.0f + (((_2368 * _2370) * _2372) * _2372), ((_2368 * _2372) * _647.y) * _2370, (-_2368) * _2372);
              }
              float3x3 _2389 = mul(float3x3(float3(_2345.x, 0.0f, _2345.z), float3(0.0f, 1.0f, 0.0f), float3(_2345.y, 0.0f, _2345.w)), float3x3(_2385, cross(_647, _2385), _647));
              _2390 = (_2326 - _2327) - _421;
              float3 _2391 = mul(_2389, _2390);
              _2392 = (_2326 + _2327) - _421;
              float3 _2393 = mul(_2389, _2392);
              _2394 = (_2330 + _2327) - _421;
              float3 _2395 = mul(_2389, _2394);
              _2396 = (_2330 - _2327) - _421;
              float3 _2397 = mul(_2389, _2396);
              float _2398 = _2391.z;
              float _2401 = _2393.z;
              float _2405 = _2395.z;
              float _2409 = _2397.z;
              int _2413 = (((int(_2398 > 0.0f) | ((_2401 > 0.0f) ? 2 : 0)) | ((_2405 > 0.0f) ? 4 : 0)) | ((_2409 > 0.0f) ? 8 : 0));
              float3 _2650;
              float3 _2651;
              float3 _2652;
              float3 _2653;
              float3 _2654;
              int _2655;
              if (_2413 == 0) {
                _2650 = _2397;
                _2651 = _2395;
                _2652 = _2393;
                _2653 = _2391;
                _2654 = 0.0f.xxx;
                _2655 = 0;
              } else {
                float3 _2644;
                float3 _2645;
                float3 _2646;
                float3 _2647;
                float3 _2648;
                int _2649;
                if (_2413 == 1) {
                  _2644 = _2397;
                  _2645 = (_2391 * (-_2409)) + (_2397 * _2398);
                  _2646 = (_2391 * (-_2401)) + (_2393 * _2398);
                  _2647 = _2391;
                  _2648 = 0.0f.xxx;
                  _2649 = 3;
                } else {
                  float3 _2630;
                  float3 _2631;
                  float3 _2632;
                  float3 _2633;
                  float3 _2634;
                  int _2635;
                  if (_2413 == 2) {
                    _2630 = _2397;
                    _2631 = (_2393 * (-_2405)) + (_2395 * _2401);
                    _2632 = _2393;
                    _2633 = (_2393 * (-_2398)) + (_2391 * _2401);
                    _2634 = 0.0f.xxx;
                    _2635 = 3;
                  } else {
                    float3 _2616;
                    float3 _2617;
                    float3 _2618;
                    float3 _2619;
                    float3 _2620;
                    int _2621;
                    if (_2413 == 3) {
                      _2616 = (_2391 * (-_2409)) + (_2397 * _2398);
                      _2617 = (_2393 * (-_2405)) + (_2395 * _2401);
                      _2618 = _2393;
                      _2619 = _2391;
                      _2620 = 0.0f.xxx;
                      _2621 = 4;
                    } else {
                      float3 _2602;
                      float3 _2603;
                      float3 _2604;
                      float3 _2605;
                      float3 _2606;
                      int _2607;
                      if (_2413 == 4) {
                        _2602 = _2397;
                        _2603 = _2395;
                        _2604 = (_2395 * (-_2401)) + (_2393 * _2405);
                        _2605 = (_2395 * (-_2409)) + (_2397 * _2405);
                        _2606 = 0.0f.xxx;
                        _2607 = 3;
                      } else {
                        float3 _2588;
                        float3 _2589;
                        float3 _2590;
                        float3 _2591;
                        float3 _2592;
                        int _2593;
                        if (_2413 == 5) {
                          _2588 = _2397;
                          _2589 = _2395;
                          _2590 = _2393;
                          _2591 = _2391;
                          _2592 = 0.0f.xxx;
                          _2593 = 0;
                        } else {
                          float3 _2582;
                          float3 _2583;
                          float3 _2584;
                          float3 _2585;
                          float3 _2586;
                          int _2587;
                          if (_2413 == 6) {
                            _2582 = (_2395 * (-_2409)) + (_2397 * _2405);
                            _2583 = _2395;
                            _2584 = _2393;
                            _2585 = (_2393 * (-_2398)) + (_2391 * _2401);
                            _2586 = 0.0f.xxx;
                            _2587 = 4;
                          } else {
                            float3 _2568;
                            float3 _2569;
                            float3 _2570;
                            float3 _2571;
                            float3 _2572;
                            int _2573;
                            if (_2413 == 7) {
                              float _2561 = -_2409;
                              _2568 = (_2395 * _2561) + (_2397 * _2405);
                              _2569 = _2395;
                              _2570 = _2393;
                              _2571 = _2391;
                              _2572 = (_2391 * _2561) + (_2397 * _2398);
                              _2573 = 5;
                            } else {
                              float3 _2555;
                              float3 _2556;
                              float3 _2557;
                              float3 _2558;
                              float3 _2559;
                              int _2560;
                              if (_2413 == 8) {
                                _2555 = _2397;
                                _2556 = _2397;
                                _2557 = (_2397 * (-_2405)) + (_2395 * _2409);
                                _2558 = (_2397 * (-_2398)) + (_2391 * _2409);
                                _2559 = 0.0f.xxx;
                                _2560 = 3;
                              } else {
                                float3 _2541;
                                float3 _2542;
                                float3 _2543;
                                float3 _2544;
                                float3 _2545;
                                int _2546;
                                if (_2413 == 9) {
                                  _2541 = _2397;
                                  _2542 = (_2397 * (-_2405)) + (_2395 * _2409);
                                  _2543 = (_2391 * (-_2401)) + (_2393 * _2398);
                                  _2544 = _2391;
                                  _2545 = 0.0f.xxx;
                                  _2546 = 4;
                                } else {
                                  float3 _2527;
                                  float3 _2528;
                                  float3 _2529;
                                  float3 _2530;
                                  float3 _2531;
                                  int _2532;
                                  if (_2413 == 10) {
                                    _2527 = _2397;
                                    _2528 = _2395;
                                    _2529 = _2393;
                                    _2530 = _2391;
                                    _2531 = 0.0f.xxx;
                                    _2532 = 0;
                                  } else {
                                    float3 _2521;
                                    float3 _2522;
                                    float3 _2523;
                                    float3 _2524;
                                    float3 _2525;
                                    int _2526;
                                    if (_2413 == 11) {
                                      float _2514 = -_2405;
                                      _2521 = (_2397 * _2514) + (_2395 * _2409);
                                      _2522 = (_2393 * _2514) + (_2395 * _2401);
                                      _2523 = _2393;
                                      _2524 = _2391;
                                      _2525 = _2397;
                                      _2526 = 5;
                                    } else {
                                      float3 _2508;
                                      float3 _2509;
                                      float3 _2510;
                                      float3 _2511;
                                      float3 _2512;
                                      int _2513;
                                      if (_2413 == 12) {
                                        _2508 = _2397;
                                        _2509 = _2395;
                                        _2510 = (_2395 * (-_2401)) + (_2393 * _2405);
                                        _2511 = (_2397 * (-_2398)) + (_2391 * _2409);
                                        _2512 = 0.0f.xxx;
                                        _2513 = 4;
                                      } else {
                                        bool _2466 = _2413 == 13;
                                        float3 _2493;
                                        float3 _2494;
                                        float3 _2495;
                                        float3 _2496;
                                        int _2497;
                                        if (_2466) {
                                          float _2486 = -_2401;
                                          _2493 = (_2395 * _2486) + (_2393 * _2405);
                                          _2494 = (_2391 * _2486) + (_2393 * _2398);
                                          _2495 = _2391;
                                          _2496 = _2397;
                                          _2497 = 5;
                                        } else {
                                          float3 _2483;
                                          float3 _2484;
                                          int _2485;
                                          if (_2413 == 14) {
                                            float _2476 = -_2398;
                                            _2483 = (_2393 * _2476) + (_2391 * _2401);
                                            _2484 = (_2397 * _2476) + (_2391 * _2409);
                                            _2485 = 5;
                                          } else {
                                            _2483 = _2391;
                                            _2484 = 0.0f.xxx;
                                            _2485 = (_2413 == 15) ? 4 : 0;
                                          }
                                          _2493 = _2395;
                                          _2494 = _2393;
                                          _2495 = _2483;
                                          _2496 = _2484;
                                          _2497 = _2485;
                                        }
                                        bool3 _2498 = _2466.xxx;
                                        _2508 = float3(_2498.x ? _2395.x : _2397.x, _2498.y ? _2395.y : _2397.y, _2498.z ? _2395.z : _2397.z);
                                        _2509 = _2493;
                                        _2510 = _2494;
                                        _2511 = _2495;
                                        _2512 = _2496;
                                        _2513 = _2497;
                                      }
                                      _2521 = _2508;
                                      _2522 = _2509;
                                      _2523 = _2510;
                                      _2524 = _2511;
                                      _2525 = _2512;
                                      _2526 = _2513;
                                    }
                                    _2527 = _2521;
                                    _2528 = _2522;
                                    _2529 = _2523;
                                    _2530 = _2524;
                                    _2531 = _2525;
                                    _2532 = _2526;
                                  }
                                  _2541 = _2527;
                                  _2542 = _2528;
                                  _2543 = _2529;
                                  _2544 = _2530;
                                  _2545 = _2531;
                                  _2546 = _2532;
                                }
                                _2555 = _2541;
                                _2556 = _2542;
                                _2557 = _2543;
                                _2558 = _2544;
                                _2559 = _2545;
                                _2560 = _2546;
                              }
                              _2568 = _2555;
                              _2569 = _2556;
                              _2570 = _2557;
                              _2571 = _2558;
                              _2572 = _2559;
                              _2573 = _2560;
                            }
                            _2582 = _2568;
                            _2583 = _2569;
                            _2584 = _2570;
                            _2585 = _2571;
                            _2586 = _2572;
                            _2587 = _2573;
                          }
                          _2588 = _2582;
                          _2589 = _2583;
                          _2590 = _2584;
                          _2591 = _2585;
                          _2592 = _2586;
                          _2593 = _2587;
                        }
                        _2602 = _2588;
                        _2603 = _2589;
                        _2604 = _2590;
                        _2605 = _2591;
                        _2606 = _2592;
                        _2607 = _2593;
                      }
                      _2616 = _2602;
                      _2617 = _2603;
                      _2618 = _2604;
                      _2619 = _2605;
                      _2620 = _2606;
                      _2621 = _2607;
                    }
                    _2630 = _2616;
                    _2631 = _2617;
                    _2632 = _2618;
                    _2633 = _2619;
                    _2634 = _2620;
                    _2635 = _2621;
                  }
                  _2644 = _2630;
                  _2645 = _2631;
                  _2646 = _2632;
                  _2647 = _2633;
                  _2648 = _2634;
                  _2649 = _2635;
                }
                _2650 = _2644;
                _2651 = _2645;
                _2652 = _2646;
                _2653 = _2647;
                _2654 = _2648;
                _2655 = _2649;
              }
              bool3 _2657 = (_2655 == 3).xxx;
              bool3 _2660 = (_2655 == 4).xxx;
              if (_2655 == 0) {
                _2744 = 0.0f;
                break;
              }
              float3 _2665 = normalize(_2653);
              float3 _2666 = normalize(_2652);
              float3 _2667 = normalize(_2651);
              float3 _2668 = normalize(float3(_2657.x ? _2653.x : _2650.x, _2657.y ? _2653.y : _2650.y, _2657.z ? _2653.z : _2650.z));
              float3 _2669 = normalize(float3(_2660.x ? _2653.x : _2654.x, _2660.y ? _2653.y : _2654.y, _2660.z ? _2653.z : _2654.z));
              float _2671 = clamp(dot(_2665, _2666), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2675 = sqrt(1.0f - (_2671 * _2671));
              float _2683 = clamp(dot(_2666, _2667), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2687 = sqrt(1.0f - (_2683 * _2683));
              float _2696 = clamp(dot(_2667, _2668), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2700 = sqrt(1.0f - (_2696 * _2696));
              float _2707 = ((cross(_2665, _2666).z * ((_2675 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2671) / _2675))) + (cross(_2666, _2667).z * ((_2687 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2683) / _2687)))) + (cross(_2667, _2668).z * ((_2700 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2696) / _2700)));
              float _2724;
              if (_2655 >= 4) {
                float _2712 = clamp(dot(_2668, _2669), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2716 = sqrt(1.0f - (_2712 * _2712));
                _2724 = _2707 + (cross(_2668, _2669).z * ((_2716 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2712) / _2716)));
              } else {
                _2724 = _2707;
              }
              float _2741;
              if (_2655 == 5) {
                float _2729 = clamp(dot(_2669, _2665), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2733 = sqrt(1.0f - (_2729 * _2729));
                _2741 = _2724 + (cross(_2669, _2665).z * ((_2733 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2729) / _2733)));
              } else {
                _2741 = _2724;
              }
              _2744 = max(_2741, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3132;
            do {
              float3 _2778;
              if (_2362) {
                _2778 = _2360 * rsqrt(_2361);
              } else {
                float _2759 = _647.z;
                float _2761 = (_2759 >= 0.0f) ? 1.0f : (-1.0f);
                float _2763 = (-1.0f) / (_2761 + _2759);
                float _2765 = _647.x;
                _2778 = float3(1.0f + (((_2761 * _2763) * _2765) * _2765), ((_2761 * _2765) * _647.y) * _2763, (-_2761) * _2765);
              }
              float3x3 _2781 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2778, cross(_647, _2778), _647));
              float3 _2782 = mul(_2781, _2390);
              float3 _2783 = mul(_2781, _2392);
              float3 _2784 = mul(_2781, _2394);
              float3 _2785 = mul(_2781, _2396);
              float _2786 = _2782.z;
              float _2789 = _2783.z;
              float _2793 = _2784.z;
              float _2797 = _2785.z;
              int _2801 = (((int(_2786 > 0.0f) | ((_2789 > 0.0f) ? 2 : 0)) | ((_2793 > 0.0f) ? 4 : 0)) | ((_2797 > 0.0f) ? 8 : 0));
              float3 _3038;
              float3 _3039;
              float3 _3040;
              float3 _3041;
              float3 _3042;
              int _3043;
              if (_2801 == 0) {
                _3038 = _2785;
                _3039 = _2784;
                _3040 = _2783;
                _3041 = _2782;
                _3042 = 0.0f.xxx;
                _3043 = 0;
              } else {
                float3 _3032;
                float3 _3033;
                float3 _3034;
                float3 _3035;
                float3 _3036;
                int _3037;
                if (_2801 == 1) {
                  _3032 = _2785;
                  _3033 = (_2782 * (-_2797)) + (_2785 * _2786);
                  _3034 = (_2782 * (-_2789)) + (_2783 * _2786);
                  _3035 = _2782;
                  _3036 = 0.0f.xxx;
                  _3037 = 3;
                } else {
                  float3 _3018;
                  float3 _3019;
                  float3 _3020;
                  float3 _3021;
                  float3 _3022;
                  int _3023;
                  if (_2801 == 2) {
                    _3018 = _2785;
                    _3019 = (_2783 * (-_2793)) + (_2784 * _2789);
                    _3020 = _2783;
                    _3021 = (_2783 * (-_2786)) + (_2782 * _2789);
                    _3022 = 0.0f.xxx;
                    _3023 = 3;
                  } else {
                    float3 _3004;
                    float3 _3005;
                    float3 _3006;
                    float3 _3007;
                    float3 _3008;
                    int _3009;
                    if (_2801 == 3) {
                      _3004 = (_2782 * (-_2797)) + (_2785 * _2786);
                      _3005 = (_2783 * (-_2793)) + (_2784 * _2789);
                      _3006 = _2783;
                      _3007 = _2782;
                      _3008 = 0.0f.xxx;
                      _3009 = 4;
                    } else {
                      float3 _2990;
                      float3 _2991;
                      float3 _2992;
                      float3 _2993;
                      float3 _2994;
                      int _2995;
                      if (_2801 == 4) {
                        _2990 = _2785;
                        _2991 = _2784;
                        _2992 = (_2784 * (-_2789)) + (_2783 * _2793);
                        _2993 = (_2784 * (-_2797)) + (_2785 * _2793);
                        _2994 = 0.0f.xxx;
                        _2995 = 3;
                      } else {
                        float3 _2976;
                        float3 _2977;
                        float3 _2978;
                        float3 _2979;
                        float3 _2980;
                        int _2981;
                        if (_2801 == 5) {
                          _2976 = _2785;
                          _2977 = _2784;
                          _2978 = _2783;
                          _2979 = _2782;
                          _2980 = 0.0f.xxx;
                          _2981 = 0;
                        } else {
                          float3 _2970;
                          float3 _2971;
                          float3 _2972;
                          float3 _2973;
                          float3 _2974;
                          int _2975;
                          if (_2801 == 6) {
                            _2970 = (_2784 * (-_2797)) + (_2785 * _2793);
                            _2971 = _2784;
                            _2972 = _2783;
                            _2973 = (_2783 * (-_2786)) + (_2782 * _2789);
                            _2974 = 0.0f.xxx;
                            _2975 = 4;
                          } else {
                            float3 _2956;
                            float3 _2957;
                            float3 _2958;
                            float3 _2959;
                            float3 _2960;
                            int _2961;
                            if (_2801 == 7) {
                              float _2949 = -_2797;
                              _2956 = (_2784 * _2949) + (_2785 * _2793);
                              _2957 = _2784;
                              _2958 = _2783;
                              _2959 = _2782;
                              _2960 = (_2782 * _2949) + (_2785 * _2786);
                              _2961 = 5;
                            } else {
                              float3 _2943;
                              float3 _2944;
                              float3 _2945;
                              float3 _2946;
                              float3 _2947;
                              int _2948;
                              if (_2801 == 8) {
                                _2943 = _2785;
                                _2944 = _2785;
                                _2945 = (_2785 * (-_2793)) + (_2784 * _2797);
                                _2946 = (_2785 * (-_2786)) + (_2782 * _2797);
                                _2947 = 0.0f.xxx;
                                _2948 = 3;
                              } else {
                                float3 _2929;
                                float3 _2930;
                                float3 _2931;
                                float3 _2932;
                                float3 _2933;
                                int _2934;
                                if (_2801 == 9) {
                                  _2929 = _2785;
                                  _2930 = (_2785 * (-_2793)) + (_2784 * _2797);
                                  _2931 = (_2782 * (-_2789)) + (_2783 * _2786);
                                  _2932 = _2782;
                                  _2933 = 0.0f.xxx;
                                  _2934 = 4;
                                } else {
                                  float3 _2915;
                                  float3 _2916;
                                  float3 _2917;
                                  float3 _2918;
                                  float3 _2919;
                                  int _2920;
                                  if (_2801 == 10) {
                                    _2915 = _2785;
                                    _2916 = _2784;
                                    _2917 = _2783;
                                    _2918 = _2782;
                                    _2919 = 0.0f.xxx;
                                    _2920 = 0;
                                  } else {
                                    float3 _2909;
                                    float3 _2910;
                                    float3 _2911;
                                    float3 _2912;
                                    float3 _2913;
                                    int _2914;
                                    if (_2801 == 11) {
                                      float _2902 = -_2793;
                                      _2909 = (_2785 * _2902) + (_2784 * _2797);
                                      _2910 = (_2783 * _2902) + (_2784 * _2789);
                                      _2911 = _2783;
                                      _2912 = _2782;
                                      _2913 = _2785;
                                      _2914 = 5;
                                    } else {
                                      float3 _2896;
                                      float3 _2897;
                                      float3 _2898;
                                      float3 _2899;
                                      float3 _2900;
                                      int _2901;
                                      if (_2801 == 12) {
                                        _2896 = _2785;
                                        _2897 = _2784;
                                        _2898 = (_2784 * (-_2789)) + (_2783 * _2793);
                                        _2899 = (_2785 * (-_2786)) + (_2782 * _2797);
                                        _2900 = 0.0f.xxx;
                                        _2901 = 4;
                                      } else {
                                        bool _2854 = _2801 == 13;
                                        float3 _2881;
                                        float3 _2882;
                                        float3 _2883;
                                        float3 _2884;
                                        int _2885;
                                        if (_2854) {
                                          float _2874 = -_2789;
                                          _2881 = (_2784 * _2874) + (_2783 * _2793);
                                          _2882 = (_2782 * _2874) + (_2783 * _2786);
                                          _2883 = _2782;
                                          _2884 = _2785;
                                          _2885 = 5;
                                        } else {
                                          float3 _2871;
                                          float3 _2872;
                                          int _2873;
                                          if (_2801 == 14) {
                                            float _2864 = -_2786;
                                            _2871 = (_2783 * _2864) + (_2782 * _2789);
                                            _2872 = (_2785 * _2864) + (_2782 * _2797);
                                            _2873 = 5;
                                          } else {
                                            _2871 = _2782;
                                            _2872 = 0.0f.xxx;
                                            _2873 = (_2801 == 15) ? 4 : 0;
                                          }
                                          _2881 = _2784;
                                          _2882 = _2783;
                                          _2883 = _2871;
                                          _2884 = _2872;
                                          _2885 = _2873;
                                        }
                                        bool3 _2886 = _2854.xxx;
                                        _2896 = float3(_2886.x ? _2784.x : _2785.x, _2886.y ? _2784.y : _2785.y, _2886.z ? _2784.z : _2785.z);
                                        _2897 = _2881;
                                        _2898 = _2882;
                                        _2899 = _2883;
                                        _2900 = _2884;
                                        _2901 = _2885;
                                      }
                                      _2909 = _2896;
                                      _2910 = _2897;
                                      _2911 = _2898;
                                      _2912 = _2899;
                                      _2913 = _2900;
                                      _2914 = _2901;
                                    }
                                    _2915 = _2909;
                                    _2916 = _2910;
                                    _2917 = _2911;
                                    _2918 = _2912;
                                    _2919 = _2913;
                                    _2920 = _2914;
                                  }
                                  _2929 = _2915;
                                  _2930 = _2916;
                                  _2931 = _2917;
                                  _2932 = _2918;
                                  _2933 = _2919;
                                  _2934 = _2920;
                                }
                                _2943 = _2929;
                                _2944 = _2930;
                                _2945 = _2931;
                                _2946 = _2932;
                                _2947 = _2933;
                                _2948 = _2934;
                              }
                              _2956 = _2943;
                              _2957 = _2944;
                              _2958 = _2945;
                              _2959 = _2946;
                              _2960 = _2947;
                              _2961 = _2948;
                            }
                            _2970 = _2956;
                            _2971 = _2957;
                            _2972 = _2958;
                            _2973 = _2959;
                            _2974 = _2960;
                            _2975 = _2961;
                          }
                          _2976 = _2970;
                          _2977 = _2971;
                          _2978 = _2972;
                          _2979 = _2973;
                          _2980 = _2974;
                          _2981 = _2975;
                        }
                        _2990 = _2976;
                        _2991 = _2977;
                        _2992 = _2978;
                        _2993 = _2979;
                        _2994 = _2980;
                        _2995 = _2981;
                      }
                      _3004 = _2990;
                      _3005 = _2991;
                      _3006 = _2992;
                      _3007 = _2993;
                      _3008 = _2994;
                      _3009 = _2995;
                    }
                    _3018 = _3004;
                    _3019 = _3005;
                    _3020 = _3006;
                    _3021 = _3007;
                    _3022 = _3008;
                    _3023 = _3009;
                  }
                  _3032 = _3018;
                  _3033 = _3019;
                  _3034 = _3020;
                  _3035 = _3021;
                  _3036 = _3022;
                  _3037 = _3023;
                }
                _3038 = _3032;
                _3039 = _3033;
                _3040 = _3034;
                _3041 = _3035;
                _3042 = _3036;
                _3043 = _3037;
              }
              bool3 _3045 = (_3043 == 3).xxx;
              bool3 _3048 = (_3043 == 4).xxx;
              if (_3043 == 0) {
                _3132 = 0.0f;
                break;
              }
              float3 _3053 = normalize(_3041);
              float3 _3054 = normalize(_3040);
              float3 _3055 = normalize(_3039);
              float3 _3056 = normalize(float3(_3045.x ? _3041.x : _3038.x, _3045.y ? _3041.y : _3038.y, _3045.z ? _3041.z : _3038.z));
              float3 _3057 = normalize(float3(_3048.x ? _3041.x : _3042.x, _3048.y ? _3041.y : _3042.y, _3048.z ? _3041.z : _3042.z));
              float _3059 = clamp(dot(_3053, _3054), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3063 = sqrt(1.0f - (_3059 * _3059));
              float _3071 = clamp(dot(_3054, _3055), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3075 = sqrt(1.0f - (_3071 * _3071));
              float _3084 = clamp(dot(_3055, _3056), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3088 = sqrt(1.0f - (_3084 * _3084));
              float _3095 = ((cross(_3053, _3054).z * ((_3063 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3059) / _3063))) + (cross(_3054, _3055).z * ((_3075 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3071) / _3075)))) + (cross(_3055, _3056).z * ((_3088 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3084) / _3088)));
              float _3112;
              if (_3043 >= 4) {
                float _3100 = clamp(dot(_3056, _3057), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3104 = sqrt(1.0f - (_3100 * _3100));
                _3112 = _3095 + (cross(_3056, _3057).z * ((_3104 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3100) / _3104)));
              } else {
                _3112 = _3095;
              }
              float _3129;
              if (_3043 == 5) {
                float _3117 = clamp(dot(_3057, _3053), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3121 = sqrt(1.0f - (_3117 * _3117));
                _3129 = _3112 + (cross(_3057, _3053).z * ((_3121 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3117) / _3121)));
              } else {
                _3129 = _3112;
              }
              _3132 = max(_3129, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3135 = (_2209 & 2u) != 0u;
            uint _3139 = asuint(_45_m6[_2196].w);
            uint _3140 = asuint(_45_m6[_2202].w);
            float3 _3141 = _421 - _45_m6[_2187].xyz;
            float3 _3142 = abs(_3141);
            float _3143 = _3142.x;
            float _3144 = _3142.y;
            float _3146 = _3142.z;
            int _3179;
            if ((_3143 > _3144) && (_3143 > _3146)) {
              _3179 = int((_3141.x > 0.0f) ? (_3139 & 1023u) : ((_3139 >> 10u) & 1023u));
            } else {
              int _3171;
              if (_3144 > _3146) {
                _3171 = int((_3141.y > 0.0f) ? ((_3139 >> 20u) & 1023u) : (_3140 & 1023u));
              } else {
                _3171 = int((_3141.z > 0.0f) ? ((_3140 >> 10u) & 1023u) : ((_3140 >> 20u) & 1023u));
              }
              _3179 = _3171;
            }
            int _3182 = _3135 ? int(_45_m6[_2196].w) : ((_3179 == 1023) ? (-1) : _3179);
            uint _3193 = asuint(_49_m11.x) + (uint(_3182) * 96u);
            uint _3195 = (_3193 + 64u) >> 2u;
            uint _3198 = _3195 + 1u;
            uint _3201 = _3195 + 2u;
            uint _3204 = _3195 + 3u;
            float4 _3208 = asfloat(uint4(_52.Load(_3195 * 4 + 0), _52.Load(_3198 * 4 + 0), _52.Load(_3201 * 4 + 0), _52.Load(_3204 * 4 + 0)));
            uint _3216 = _3193 >> 2u;
            uint _3231 = (_3193 + 16u) >> 2u;
            uint _3246 = (_3193 + 32u) >> 2u;
            uint _3261 = (_3193 + 48u) >> 2u;
            float4 _3281 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3216 * 4 + 0), _52.Load((_3216 + 1u) * 4 + 0), _52.Load((_3216 + 2u) * 4 + 0), _52.Load((_3216 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3231 * 4 + 0), _52.Load((_3231 + 1u) * 4 + 0), _52.Load((_3231 + 2u) * 4 + 0), _52.Load((_3231 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3246 * 4 + 0), _52.Load((_3246 + 1u) * 4 + 0), _52.Load((_3246 + 2u) * 4 + 0), _52.Load((_3246 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3261 * 4 + 0), _52.Load((_3261 + 1u) * 4 + 0), _52.Load((_3261 + 2u) * 4 + 0), _52.Load((_3261 + 3u) * 4 + 0))))), float4((_421 - ((_3141 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3141, _3141)))) * _3208.x)) + (_647 * (_3208.y * 5.0f)), 1.0f));
            float3 _3285 = _3281.xyz / _3281.w.xxx;
            uint _3287 = (_3193 + 80u) >> 2u;
            float4 _3300 = asfloat(uint4(_52.Load(_3287 * 4 + 0), _52.Load((_3287 + 1u) * 4 + 0), _52.Load((_3287 + 2u) * 4 + 0), _52.Load((_3287 + 3u) * 4 + 0)));
            float2 _3301 = _3285.xy;
            float2 _3303 = _3300.xy;
            float3 _3307 = _3285.xyz;
            bool3 _3308 = bool3(_3307.x <= 0.0f.xxx.x, _3307.y <= 0.0f.xxx.y, _3307.z <= 0.0f.xxx.z);
            bool3 _3309 = bool3(_3307.x >= 1.0f.xxx.x, _3307.y >= 1.0f.xxx.y, _3307.z >= 1.0f.xxx.z);
            float _3312 = _3285.z;
            float2 _3323 = ((_3301 * (_3300.zw - _3303)) + _3303).xy * _49_m10.zw;
            float2 _3325 = floor(_3323 + 0.5f.xx);
            float2 _3326 = _3323 - _3325;
            float _3327 = _3326.x;
            float _3328 = _3327 + 0.5f;
            float _3329 = _3328 * _3328;
            float _3332 = 1.0f - _3327;
            float _3333 = min(_3327, 0.0f);
            float _3336 = _3327 + 1.0f;
            float _3337 = max(_3327, 0.0f);
            float _3348 = _3326.y;
            float _3349 = _3348 + 0.5f;
            float _3350 = _3349 * _3349;
            float _3353 = 1.0f - _3348;
            float _3354 = min(_3348, 0.0f);
            float _3357 = _3348 + 1.0f;
            float _3358 = max(_3348, 0.0f);
            float3 _3370 = float3(0.1599999964237213134765625f * _3332, 0.1599999964237213134765625f * ((_3336 - (_3337 * _3337)) + 1.0f), _3329 * 0.07999999821186065673828125f);
            float3 _3371 = float3(0.1599999964237213134765625f * ((_3329 * 0.5f) - _3327), 0.1599999964237213134765625f * ((_3332 - (_3333 * _3333)) + 1.0f), 0.1599999964237213134765625f * _3336) + _3370;
            float3 _3373 = float3(0.1599999964237213134765625f * _3353, 0.1599999964237213134765625f * ((_3357 - (_3358 * _3358)) + 1.0f), _3350 * 0.07999999821186065673828125f);
            float3 _3374 = float3(0.1599999964237213134765625f * ((_3350 * 0.5f) - _3348), 0.1599999964237213134765625f * ((_3353 - (_3354 * _3354)) + 1.0f), 0.1599999964237213134765625f * _3357) + _3373;
            float3 _3380 = ((_3370 / _3371) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.xxx;
            float3 _3382 = ((_3373 / _3374) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.yyy;
            float2 _3384 = _3325 * _49_m10.xy;
            float _3385 = _3380.x;
            float _3386 = _3382.x;
            float _3389 = _3380.y;
            float _3392 = _3380.z;
            float _3395 = _3382.y;
            float _3402 = _3382.z;
            float _3409 = _3371.x;
            float _3410 = _3374.x;
            float _3412 = _3371.y;
            float _3414 = _3371.z;
            float _3416 = _3374.y;
            float _3420 = _3374.z;
            float _3478 = (((((((_3409 * _3410) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3385, _3386), _378).xy, _3312)) + ((_3412 * _3410) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3389, _3386), _378).xy, _3312))) + ((_3414 * _3410) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3392, _3386), _378).xy, _3312))) + ((_3409 * _3416) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3385, _3395), _378).xy, _3312))) + ((_3412 * _3416) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3389, _3395), _378).xy, _3312))) + ((_3414 * _3416) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3392, _3395), _378).xy, _3312))) + ((_3409 * _3420) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3385, _3402), _378).xy, _3312));
            float4 _3501 = asfloat(uint4(_52.Load(_3195 * 4 + 0), _52.Load(_3198 * 4 + 0), _52.Load(_3201 * 4 + 0), _52.Load(_3204 * 4 + 0)));
            float _3502 = _3501.w;
            float2 _3504 = min(_3301, 1.0f.xx - _3301);
            _3521 = ((_45_m6[_2184].xyz * (((((_798 * _2349.x) + ((1.0f.xxx - _798) * _2349.y)) * _2744) * _45_m6[_2205].z) + (_794 * _3132))) * _2321) * ((_3182 >= 0) ? lerp(1.0f, (any(bool3(_3308.x || _3309.x, _3308.y || _3309.y, _3308.z || _3309.z)) || ((asuint(_3312) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3478 + ((_3412 * _3420) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3389, _3402), _378).xy, _3312))) + ((_3414 * _3420) * _51.SampleCmpLevelZero(_24, float3(_3384 + float2(_3392, _3402), _378).xy, _3312))), _3135 ? min(_3502, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3501.z - _3281.w) * 0.25f, min(_3504.x, _3504.y)))) : _3502) : 1.0f);
            break;
          } while (false);
          _4824 = _2144;
          _4825 = _3521 * _2284;
          break;
        }
        float _4822;
        float3 _4823;
        if (_45_m6[_2184].w < 1.5f) {
          float3 _4101 = float3(0.100000001490116119384765625f, _34_m71, 1.0f);
          float _4110 = (0.5f + (0.5f * _45_m6[_2190].y)) - abs(_45_m6[_2190].x);
          float _4111 = _45_m6[_2190].y - _4110;
          float _4118 = abs(max((1.0f - abs(_4110)) - abs(_4111), 0.00048828125f));
          float3 _4122 = normalize(float3(_4110, _4111, (_45_m6[_2190].x >= 0.0f) ? _4118 : (-_4118)));
          float3 _4123 = _45_m6[_2187].xyz - _421;
          float _4124 = dot(_4123, _4123);
          float _4125 = rsqrt(_4124);
          float3 _4126 = _4123 * _4125;
          float _4130 = clamp(_45_m6[_2205].y * _4125, 0.0f, 1.0f);
          int _4135 = int(_45_m6[_2205].w);
          float3 _4136 = _4122 * _45_m6[_2190].z;
          float3 _4137 = _4136 * 0.5f;
          float3 _4138 = _4123 - _4137;
          float3 _4139 = _4123 + _4137;
          bool _4141 = (_2288 & 1u) == 0u;
          bool _4144 = _4141 || ((_2209 & 2u) != 0u);
          bool _4147 = (!_4141) && (_45_m6[_2190].z > 0.0f);
          float _4166;
          float _4167;
          if (_4147) {
            float _4151 = length(_4138);
            float _4152 = length(_4139);
            _4166 = clamp(0.5f * ((dot(_647, _4138) / _4151) + (dot(_647, _4139) / _4152)), 0.0f, 1.0f);
            _4167 = 1.0f / ((((_4151 * _4152) + dot(_4138, _4139)) * 0.5f) + 1.0f);
          } else {
            _4166 = clamp(dot(_647, _4126), 0.0f, 1.0f);
            _4167 = 1.0f;
          }
          float _4189;
          if (_45_m6[_2202].w < 0.0f) {
            float _4183 = _4124 * (_45_m6[_2187].w * _45_m6[_2187].w);
            float _4186 = clamp(1.0f - (_4183 * _4183), 0.0f, 1.0f);
            _4189 = lerp(1.0f / (_4124 + 1.0f), _4167, float(_4147)) * (_4186 * _4186);
          } else {
            float3 _4172 = _4123 * _45_m6[_2187].w;
            _4189 = _4167 * pow(1.0f - clamp(dot(_4172, _4172), 0.0f, 1.0f), _45_m6[_2202].w);
          }
          float _4195 = clamp((dot(_4126, -_4122) - _45_m6[_2190].z) * _45_m6[_2190].w, 0.0f, 1.0f);
          float _4199 = _4189 * lerp(1.0f, _4195 * _4195, float(_4141));
          float _4299;
          if ((!_4147) && (_4135 >= 0)) {
            uint _4205 = uint(_4135);
            float2 _4292;
            [branch] if (_4141) {
              float4 _4282 = mul(_62_m1[_4205], _425);
              _4292 = _62_m0[_4205].xy + (clamp(_4282.xy / _4282.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_4205].zw);
            }
            else {
              float3 _4219 = mul(float4(-_4123, 0.0f), _62_m1[_4205]).xyz;
              float3 _386 = _4219;
              float3 _385 = _4219;
              float3 _384 = abs(_4219);
              uint _4228 = uint(int(_384.y > _384.x));
              uint _4234 = (_384.z > _384[_4228]) ? 2u : _4228;
              uint _4240 = (_4234 * 2u) + uint(_385[_4234] < 0.0f);
              float _4244 = abs(_386[_4240 / 2u]);
              float _4264 = 0.5f - (0.000244140625f / _62_m0[_4205].w);
              _4292 = _62_m0[_4205].xy + (clamp(float2((float(_4240) + ((((_386[uint(_358[_4240].x)] * _359[_4240].x) / _4244) * _4264) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_386[uint(_358[_4240].y)] * _359[_4240].y) / _4244) * _4264)), 0.0f.xx, 1.0f.xx) * _62_m0[_4205].zw);
            }
            _4299 = _4199 * _60.SampleLevel(_22, _4292, 0.0f).x;
          } else {
            _4299 = _4199;
          }
          bool _4300 = _4299 > 0.0f;
          float _4684;
          if (_4300) {
            int _4353;
            if (_4144) {
              _4353 = int(_45_m6[_2193].x);
            } else {
              uint _4308 = asuint(_45_m6[_2190].w);
              uint _4309 = asuint(_45_m6[_2193].x);
              float3 _4310 = _421 - _45_m6[_2187].xyz;
              float3 _4311 = abs(_4310);
              float _4312 = _4311.x;
              float _4313 = _4311.y;
              float _4315 = _4311.z;
              int _4348;
              if ((_4312 > _4313) && (_4312 > _4315)) {
                _4348 = int((_4310.x > 0.0f) ? (_4308 & 1023u) : ((_4308 >> 10u) & 1023u));
              } else {
                int _4340;
                if (_4313 > _4315) {
                  _4340 = int((_4310.y > 0.0f) ? ((_4308 >> 20u) & 1023u) : (_4309 & 1023u));
                } else {
                  _4340 = int((_4310.z > 0.0f) ? ((_4309 >> 10u) & 1023u) : ((_4309 >> 20u) & 1023u));
                }
                _4348 = _4340;
              }
              _4353 = (_4348 == 1023) ? (-1) : _4348;
            }
            uint _4360 = asuint(_49_m11.x) + (uint(_4353) * 96u);
            uint _4362 = (_4360 + 64u) >> 2u;
            uint _4365 = _4362 + 1u;
            uint _4368 = _4362 + 2u;
            uint _4371 = _4362 + 3u;
            float4 _4375 = asfloat(uint4(_52.Load(_4362 * 4 + 0), _52.Load(_4365 * 4 + 0), _52.Load(_4368 * 4 + 0), _52.Load(_4371 * 4 + 0)));
            uint _4383 = _4360 >> 2u;
            uint _4398 = (_4360 + 16u) >> 2u;
            uint _4413 = (_4360 + 32u) >> 2u;
            uint _4428 = (_4360 + 48u) >> 2u;
            float4 _4448 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_4383 * 4 + 0), _52.Load((_4383 + 1u) * 4 + 0), _52.Load((_4383 + 2u) * 4 + 0), _52.Load((_4383 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4398 * 4 + 0), _52.Load((_4398 + 1u) * 4 + 0), _52.Load((_4398 + 2u) * 4 + 0), _52.Load((_4398 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4413 * 4 + 0), _52.Load((_4413 + 1u) * 4 + 0), _52.Load((_4413 + 2u) * 4 + 0), _52.Load((_4413 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4428 * 4 + 0), _52.Load((_4428 + 1u) * 4 + 0), _52.Load((_4428 + 2u) * 4 + 0), _52.Load((_4428 + 3u) * 4 + 0))))), float4((_421 - ((-_4126) * _4375.x)) + (_647 * (_4375.y * 5.0f)), 1.0f));
            float3 _4452 = _4448.xyz / _4448.w.xxx;
            uint _4454 = (_4360 + 80u) >> 2u;
            float4 _4467 = asfloat(uint4(_52.Load(_4454 * 4 + 0), _52.Load((_4454 + 1u) * 4 + 0), _52.Load((_4454 + 2u) * 4 + 0), _52.Load((_4454 + 3u) * 4 + 0)));
            float2 _4468 = _4452.xy;
            float2 _4470 = _4467.xy;
            float3 _4474 = _4452.xyz;
            bool3 _4475 = bool3(_4474.x <= 0.0f.xxx.x, _4474.y <= 0.0f.xxx.y, _4474.z <= 0.0f.xxx.z);
            bool3 _4476 = bool3(_4474.x >= 1.0f.xxx.x, _4474.y >= 1.0f.xxx.y, _4474.z >= 1.0f.xxx.z);
            float _4479 = _4452.z;
            float2 _4490 = ((_4468 * (_4467.zw - _4470)) + _4470).xy * _49_m10.zw;
            float2 _4492 = floor(_4490 + 0.5f.xx);
            float2 _4493 = _4490 - _4492;
            float _4494 = _4493.x;
            float _4495 = _4494 + 0.5f;
            float _4496 = _4495 * _4495;
            float _4499 = 1.0f - _4494;
            float _4500 = min(_4494, 0.0f);
            float _4503 = _4494 + 1.0f;
            float _4504 = max(_4494, 0.0f);
            float _4515 = _4493.y;
            float _4516 = _4515 + 0.5f;
            float _4517 = _4516 * _4516;
            float _4520 = 1.0f - _4515;
            float _4521 = min(_4515, 0.0f);
            float _4524 = _4515 + 1.0f;
            float _4525 = max(_4515, 0.0f);
            float3 _4537 = float3(0.1599999964237213134765625f * _4499, 0.1599999964237213134765625f * ((_4503 - (_4504 * _4504)) + 1.0f), _4496 * 0.07999999821186065673828125f);
            float3 _4538 = float3(0.1599999964237213134765625f * ((_4496 * 0.5f) - _4494), 0.1599999964237213134765625f * ((_4499 - (_4500 * _4500)) + 1.0f), 0.1599999964237213134765625f * _4503) + _4537;
            float3 _4540 = float3(0.1599999964237213134765625f * _4520, 0.1599999964237213134765625f * ((_4524 - (_4525 * _4525)) + 1.0f), _4517 * 0.07999999821186065673828125f);
            float3 _4541 = float3(0.1599999964237213134765625f * ((_4517 * 0.5f) - _4515), 0.1599999964237213134765625f * ((_4520 - (_4521 * _4521)) + 1.0f), 0.1599999964237213134765625f * _4524) + _4540;
            float3 _4547 = ((_4537 / _4538) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.xxx;
            float3 _4549 = ((_4540 / _4541) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.yyy;
            float2 _4551 = _4492 * _49_m10.xy;
            float _4552 = _4547.x;
            float _4553 = _4549.x;
            float _4556 = _4547.y;
            float _4559 = _4547.z;
            float _4562 = _4549.y;
            float _4569 = _4549.z;
            float _4576 = _4538.x;
            float _4577 = _4541.x;
            float _4579 = _4538.y;
            float _4581 = _4538.z;
            float _4583 = _4541.y;
            float _4587 = _4541.z;
            float _4645 = (((((((_4576 * _4577) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4552, _4553), _378).xy, _4479)) + ((_4579 * _4577) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4556, _4553), _378).xy, _4479))) + ((_4581 * _4577) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4559, _4553), _378).xy, _4479))) + ((_4576 * _4583) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4552, _4562), _378).xy, _4479))) + ((_4579 * _4583) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4556, _4562), _378).xy, _4479))) + ((_4581 * _4583) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4559, _4562), _378).xy, _4479))) + ((_4576 * _4587) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4552, _4569), _378).xy, _4479));
            float4 _4668 = asfloat(uint4(_52.Load(_4362 * 4 + 0), _52.Load(_4365 * 4 + 0), _52.Load(_4368 * 4 + 0), _52.Load(_4371 * 4 + 0)));
            float _4669 = _4668.w;
            float2 _4671 = min(_4468, 1.0f.xx - _4468);
            _4684 = (_4353 >= 0) ? lerp(1.0f, (any(bool3(_4475.x || _4476.x, _4475.y || _4476.y, _4475.z || _4476.z)) || ((asuint(_4479) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4645 + ((_4579 * _4587) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4556, _4569), _378).xy, _4479))) + ((_4581 * _4587) * _51.SampleCmpLevelZero(_24, float3(_4551 + float2(_4559, _4569), _378).xy, _4479))), _4144 ? min(_4669, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4668.z - _4448.w) * 0.25f, min(_4671.x, _4671.y)))) : _4669) : 1.0f;
          } else {
            _4684 = 1.0f;
          }
          float3 _4709;
          float3 _4710;
          if (_4147) {
            float3 _4687 = _4101 * _4101;
            float3 _4689 = reflect(-_448, _647);
            float _4698 = dot(_4689, _4136);
            _4709 = _4687 / clamp(_4687 + (0.5f * clamp(_45_m6[_2190].z * _4125, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4710 = normalize(_4138 + (_4136 * clamp(dot(_4138, (_4689 * _4698) - _4136) / ((_45_m6[_2190].z * _45_m6[_2190].z) - (_4698 * _4698)), 0.0f, 1.0f)));
          } else {
            _4709 = 1.0f.xxx;
            _4710 = _4126;
          }
          float3 _4711 = _4710 + _448;
          float3 _4715 = _4711 * rsqrt(max(6.103515625e-05f, dot(_4711, _4711)));
          float3 _4821;
          if (_4300) {
            float _4718 = clamp(_4166, 0.0f, 1.0f);
            float _4720 = clamp(dot(_647, _4715), 0.0f, 1.0f);
            float _4722 = clamp(dot(_448, _4715), 0.0f, 1.0f);
            float _4724 = clamp(dot(_647, _448), 0.0f, 1.0f);
            float _4725 = _34_m71 * _34_m71;
            float _4735;
            if (_4130 > 0.0f) {
              _4735 = clamp(_4725 + ((_4130 * _4130) / ((_4722 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4735 = _4725;
            }
            float _4736 = _4735 * _4735;
            float _4757 = (((_4720 * _4736) - _4720) * _4720) + 1.0f;
            float _4762 = 1.0f - _4722;
            float _4763 = _4762 * _4762;
            float _4765 = (_4762 * _4763) * _4763;
            float _4789 = 1.0f - _34_m71;
            float _4796 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4789 * (1.04997003078460693359375f + (_4789 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4789))))));
            float _4797 = 1.0f - _4796;
            float3 _4800 = _798 + ((1.0f.xxx - _798) * 0.0476190485060214996337890625f);
            float3 _4819 = (clamp((min(((_798 * (1.0f - _4765)) + _4765.xxx) * (((_4736 / (_4757 * _4757)) * _4709.y) * (0.5f / (((_4718 * sqrt(((((-_4724) * _4736) + _4724) * _4724) + _4736)) + (_4724 * sqrt(((((-_4718) * _4736) + _4718) * _4718) + _4736))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4800 * (((_57.SampleLevel(_22, (float2(_4724, _34_m71) * 0.96875f) + 0.015625f.xx, 0.0f).x * _57.SampleLevel(_22, (float2(_4718, _34_m71) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4796) / _4797)) * _4800) / (1.0f.xxx - (_4800 * _4797)))) * _45_m6[_2205].z, 0.0f.xxx, 1000.0f.xxx) * _4166) + ((_794 * _4709.z) * _4166);
            _4821 = _4819 * (((_45_m6[_2184].xyz * _4299) * _4684) * _2284);
          } else {
            _4821 = 0.0f.xxx;
          }
          _4822 = _2144;
          _4823 = _4821;
        } else {
          float _4099;
          do {
            if (_2291) {
              _4099 = 1.0f;
              break;
            }
            float _3538 = (0.5f + (0.5f * _45_m6[_2190].y)) - abs(_45_m6[_2190].x);
            float _3539 = _45_m6[_2190].y - _3538;
            float _3546 = abs(max((1.0f - abs(_3538)) - abs(_3539), 0.00048828125f));
            float3 _3550 = normalize(float3(_3538, _3539, (_45_m6[_2190].x >= 0.0f) ? _3546 : (-_3546)));
            float3 _3551 = _45_m6[_2187].xyz - _421;
            float _3552 = dot(_3551, _3551);
            float3 _3554 = _3551 * rsqrt(_3552);
            int _3557 = int(_45_m6[_2205].w);
            float3 _3559 = (_3550 * _45_m6[_2190].z) * 0.5f;
            float3 _3560 = _3551 - _3559;
            float3 _3561 = _3551 + _3559;
            bool _3563 = (_2288 & 1u) == 0u;
            bool _3566 = _3563 || ((_2209 & 2u) != 0u);
            bool _3569 = (!_3563) && (_45_m6[_2190].z > 0.0f);
            float _3581;
            if (_3569) {
              _3581 = 1.0f / ((((length(_3560) * length(_3561)) + dot(_3560, _3561)) * 0.5f) + 1.0f);
            } else {
              _3581 = 1.0f;
            }
            float _3603;
            if (_45_m6[_2202].w < 0.0f) {
              float _3597 = _3552 * (_45_m6[_2187].w * _45_m6[_2187].w);
              float _3600 = clamp(1.0f - (_3597 * _3597), 0.0f, 1.0f);
              _3603 = lerp(1.0f / (_3552 + 1.0f), _3581, float(_3569)) * (_3600 * _3600);
            } else {
              float3 _3586 = _3551 * _45_m6[_2187].w;
              _3603 = _3581 * pow(1.0f - clamp(dot(_3586, _3586), 0.0f, 1.0f), _45_m6[_2202].w);
            }
            float _3609 = clamp((dot(_3554, -_3550) - _45_m6[_2190].z) * _45_m6[_2190].w, 0.0f, 1.0f);
            float _3613 = _3603 * lerp(1.0f, _3609 * _3609, float(_3563));
            float _3713;
            if ((!_3569) && (_3557 >= 0)) {
              uint _3619 = uint(_3557);
              float2 _3706;
              [branch] if (_3563) {
                float4 _3696 = mul(_62_m1[_3619], _425);
                _3706 = _62_m0[_3619].xy + (clamp(_3696.xy / _3696.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_3619].zw);
              }
              else {
                float3 _3633 = mul(float4(-_3551, 0.0f), _62_m1[_3619]).xyz;
                float3 _389 = _3633;
                float3 _388 = _3633;
                float3 _387 = abs(_3633);
                uint _3642 = uint(int(_387.y > _387.x));
                uint _3648 = (_387.z > _387[_3642]) ? 2u : _3642;
                uint _3654 = (_3648 * 2u) + uint(_388[_3648] < 0.0f);
                float _3658 = abs(_389[_3654 / 2u]);
                float _3678 = 0.5f - (0.000244140625f / _62_m0[_3619].w);
                _3706 = _62_m0[_3619].xy + (clamp(float2((float(_3654) + ((((_389[uint(_358[_3654].x)] * _359[_3654].x) / _3658) * _3678) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_358[_3654].y)] * _359[_3654].y) / _3658) * _3678)), 0.0f.xx, 1.0f.xx) * _62_m0[_3619].zw);
              }
              _3713 = _3613 * _60.SampleLevel(_22, _3706, 0.0f).x;
            } else {
              _3713 = _3613;
            }
            float _4098;
            if (_3713 > 0.0f) {
              int _3767;
              if (_3566) {
                _3767 = int(_45_m6[_2193].x);
              } else {
                uint _3722 = asuint(_45_m6[_2190].w);
                uint _3723 = asuint(_45_m6[_2193].x);
                float3 _3724 = _421 - _45_m6[_2187].xyz;
                float3 _3725 = abs(_3724);
                float _3726 = _3725.x;
                float _3727 = _3725.y;
                float _3729 = _3725.z;
                int _3762;
                if ((_3726 > _3727) && (_3726 > _3729)) {
                  _3762 = int((_3724.x > 0.0f) ? (_3722 & 1023u) : ((_3722 >> 10u) & 1023u));
                } else {
                  int _3754;
                  if (_3727 > _3729) {
                    _3754 = int((_3724.y > 0.0f) ? ((_3722 >> 20u) & 1023u) : (_3723 & 1023u));
                  } else {
                    _3754 = int((_3724.z > 0.0f) ? ((_3723 >> 10u) & 1023u) : ((_3723 >> 20u) & 1023u));
                  }
                  _3762 = _3754;
                }
                _3767 = (_3762 == 1023) ? (-1) : _3762;
              }
              uint _3774 = asuint(_49_m11.x) + (uint(_3767) * 96u);
              uint _3776 = (_3774 + 64u) >> 2u;
              uint _3779 = _3776 + 1u;
              uint _3782 = _3776 + 2u;
              uint _3785 = _3776 + 3u;
              float4 _3789 = asfloat(uint4(_52.Load(_3776 * 4 + 0), _52.Load(_3779 * 4 + 0), _52.Load(_3782 * 4 + 0), _52.Load(_3785 * 4 + 0)));
              uint _3797 = _3774 >> 2u;
              uint _3812 = (_3774 + 16u) >> 2u;
              uint _3827 = (_3774 + 32u) >> 2u;
              uint _3842 = (_3774 + 48u) >> 2u;
              float4 _3862 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3797 * 4 + 0), _52.Load((_3797 + 1u) * 4 + 0), _52.Load((_3797 + 2u) * 4 + 0), _52.Load((_3797 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3812 * 4 + 0), _52.Load((_3812 + 1u) * 4 + 0), _52.Load((_3812 + 2u) * 4 + 0), _52.Load((_3812 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3827 * 4 + 0), _52.Load((_3827 + 1u) * 4 + 0), _52.Load((_3827 + 2u) * 4 + 0), _52.Load((_3827 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3842 * 4 + 0), _52.Load((_3842 + 1u) * 4 + 0), _52.Load((_3842 + 2u) * 4 + 0), _52.Load((_3842 + 3u) * 4 + 0))))), float4((_421 - ((-_3554) * _3789.x)) + (_647 * (_3789.y * 5.0f)), 1.0f));
              float3 _3866 = _3862.xyz / _3862.w.xxx;
              uint _3868 = (_3774 + 80u) >> 2u;
              float4 _3881 = asfloat(uint4(_52.Load(_3868 * 4 + 0), _52.Load((_3868 + 1u) * 4 + 0), _52.Load((_3868 + 2u) * 4 + 0), _52.Load((_3868 + 3u) * 4 + 0)));
              float2 _3882 = _3866.xy;
              float2 _3884 = _3881.xy;
              float3 _3888 = _3866.xyz;
              bool3 _3889 = bool3(_3888.x <= 0.0f.xxx.x, _3888.y <= 0.0f.xxx.y, _3888.z <= 0.0f.xxx.z);
              bool3 _3890 = bool3(_3888.x >= 1.0f.xxx.x, _3888.y >= 1.0f.xxx.y, _3888.z >= 1.0f.xxx.z);
              float _3893 = _3866.z;
              float2 _3904 = ((_3882 * (_3881.zw - _3884)) + _3884).xy * _49_m10.zw;
              float2 _3906 = floor(_3904 + 0.5f.xx);
              float2 _3907 = _3904 - _3906;
              float _3908 = _3907.x;
              float _3909 = _3908 + 0.5f;
              float _3910 = _3909 * _3909;
              float _3913 = 1.0f - _3908;
              float _3914 = min(_3908, 0.0f);
              float _3917 = _3908 + 1.0f;
              float _3918 = max(_3908, 0.0f);
              float _3929 = _3907.y;
              float _3930 = _3929 + 0.5f;
              float _3931 = _3930 * _3930;
              float _3934 = 1.0f - _3929;
              float _3935 = min(_3929, 0.0f);
              float _3938 = _3929 + 1.0f;
              float _3939 = max(_3929, 0.0f);
              float3 _3951 = float3(0.1599999964237213134765625f * _3913, 0.1599999964237213134765625f * ((_3917 - (_3918 * _3918)) + 1.0f), _3910 * 0.07999999821186065673828125f);
              float3 _3952 = float3(0.1599999964237213134765625f * ((_3910 * 0.5f) - _3908), 0.1599999964237213134765625f * ((_3913 - (_3914 * _3914)) + 1.0f), 0.1599999964237213134765625f * _3917) + _3951;
              float3 _3954 = float3(0.1599999964237213134765625f * _3934, 0.1599999964237213134765625f * ((_3938 - (_3939 * _3939)) + 1.0f), _3931 * 0.07999999821186065673828125f);
              float3 _3955 = float3(0.1599999964237213134765625f * ((_3931 * 0.5f) - _3929), 0.1599999964237213134765625f * ((_3934 - (_3935 * _3935)) + 1.0f), 0.1599999964237213134765625f * _3938) + _3954;
              float3 _3961 = ((_3951 / _3952) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.xxx;
              float3 _3963 = ((_3954 / _3955) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.yyy;
              float2 _3965 = _3906 * _49_m10.xy;
              float _3966 = _3961.x;
              float _3967 = _3963.x;
              float _3970 = _3961.y;
              float _3973 = _3961.z;
              float _3976 = _3963.y;
              float _3983 = _3963.z;
              float _3990 = _3952.x;
              float _3991 = _3955.x;
              float _3993 = _3952.y;
              float _3995 = _3952.z;
              float _3997 = _3955.y;
              float _4001 = _3955.z;
              float _4059 = (((((((_3990 * _3991) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3966, _3967), _378).xy, _3893)) + ((_3993 * _3991) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3970, _3967), _378).xy, _3893))) + ((_3995 * _3991) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3973, _3967), _378).xy, _3893))) + ((_3990 * _3997) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3966, _3976), _378).xy, _3893))) + ((_3993 * _3997) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3970, _3976), _378).xy, _3893))) + ((_3995 * _3997) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3973, _3976), _378).xy, _3893))) + ((_3990 * _4001) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3966, _3983), _378).xy, _3893));
              float4 _4082 = asfloat(uint4(_52.Load(_3776 * 4 + 0), _52.Load(_3779 * 4 + 0), _52.Load(_3782 * 4 + 0), _52.Load(_3785 * 4 + 0)));
              float _4083 = _4082.w;
              float2 _4085 = min(_3882, 1.0f.xx - _3882);
              _4098 = (_3767 >= 0) ? lerp(1.0f, (any(bool3(_3889.x || _3890.x, _3889.y || _3890.y, _3889.z || _3890.z)) || ((asuint(_3893) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4059 + ((_3993 * _4001) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3970, _3983), _378).xy, _3893))) + ((_3995 * _4001) * _51.SampleCmpLevelZero(_24, float3(_3965 + float2(_3973, _3983), _378).xy, _3893))), _3566 ? min(_4083, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4082.z - _3862.w) * 0.25f, min(_4085.x, _4085.y)))) : _4083) : 1.0f;
            } else {
              _4098 = 1.0f;
            }
            _4099 = _4098;
            break;
          } while (false);
          _4822 = _2144 * _4099;
          _4823 = 0.0f.xxx;
        }
        _4824 = _4822;
        _4825 = _4823;
        break;
      } while (false);
      _2169 = _4824;
      _2172 = _2171 + _4825;
    }
    _2141 = _2140 + _2171;
  }
  float3 _4835 = -_448;
  float _4836 = 1.0f - _34_m1;
  float _4851 = _421.y * _17_m46.w;
  float _4856 = max(0.00999999977648258209228515625f, _4851 + _17_m47.w);
  float3 _4870 = exp(_17_m45.xyz * ((-max(0.0f, (_449 * _17_m44.w) - _17_m43.w)) * (((1.0f - exp(-_4856)) / _4856) * exp(_4851 + _17_m48.w))));
  float _4873 = dot(_4835, _17_m44.xyz);
  float _4879 = _17_m45.w * _17_m45.w;
  float _4883 = (1.0f + _4879) - ((2.0f * _17_m45.w) * _4873);
  float3 _5215;
  float _5216;
  if (_17_m55.z > 0.0f) {
    uint3 _5041 = (uint3(int3(int(_829.x), int(_829.y), int(_17_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5042 = _5041.y;
    uint _5043 = _5041.z;
    uint _5046 = _5041.x + (_5042 * _5043);
    uint _5048 = _5042 + (_5043 * _5046);
    uint _5050 = _5043 + (_5046 * _5048);
    uint _5052 = _5046 + (_5048 * _5050);
    float _5076 = dot(_4835, -_15_m0[2].xyz);
    float3 _5086 = _421 - _15_m11.xyz;
    float _5088 = (_17_m55.w * ((_5076 > 5.9604644775390625e-08f) ? (1.0f / _5076) : 0.0f)) * (1.0f / _449);
    float _5089 = _5086.y;
    float _5090 = _5088 * _5089;
    float _5092 = _15_m11.y + _5090;
    float _5093 = _5089 - _5090;
    float _5095 = (1.0f - _5088) * _449;
    float _5109 = max(-127.0f, _17_m49.z * _5093);
    float _5133 = max(-127.0f, _17_m52.x * _5093);
    float _5144 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_5092 - _17_m49.x)))) * ((abs(_5109) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5109)) / _5109) : (0.693147182464599609375f - (0.2402265071868896484375f * _5109)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_5092 - _17_m52.z)))) * ((abs(_5133) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5133)) / _5133) : (0.693147182464599609375f - (0.2402265071868896484375f * _5133))));
    float _5166 = clamp((_449 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
    float _5169 = clamp((max(clamp(exp2(-(_5144 * _5095)), 0.0f, 1.0f), _17_m51.w) + clamp((_449 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _5166, 0.0f, 1.0f);
    float4 _5209 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _36.SampleLevel(_22, float3((_2115 + ((((float3(uint3(_5052, _5048 + (_5050 * _5052), _382) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _17_m59.w).xy) * _17_m57.xy, (log2((_830 * _17_m56.x) + _17_m56.y) * _17_m56.z) / _17_m55.z), 0.0f), clamp((_830 - _17_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5215 = _5209.xyz + (((_17_m51.xyz * (1.0f - _5169)) + (((_17_m54.xyz * pow(clamp(dot(_448, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_5144 * max(_5095 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5166))) * _5209.w);
    _5216 = _5209.w * _5169;
  } else {
    float3 _4913 = _421 - _15_m11.xyz;
    float _4915 = _4913.y;
    float _4929 = max(-127.0f, _17_m49.z * _4915);
    float _4953 = max(-127.0f, _17_m52.x * _4915);
    float _4964 = ((_17_m49.y * exp2(-max(-127.0f, _17_m49.z * (_15_m11.y - _17_m49.x)))) * ((abs(_4929) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4929)) / _4929) : (0.693147182464599609375f - (0.2402265071868896484375f * _4929)))) + ((_17_m52.y * exp2(-max(-127.0f, _17_m52.x * (_15_m11.y - _17_m52.z)))) * ((abs(_4953) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4953)) / _4953) : (0.693147182464599609375f - (0.2402265071868896484375f * _4953))));
    float _4986 = clamp((_449 * _17_m50.w) + _17_m50.z, 0.0f, 1.0f);
    float _4989 = clamp((max(clamp(exp2(-(_4964 * _449)), 0.0f, 1.0f), _17_m51.w) + clamp((_449 * _17_m50.y) + _17_m50.x, 0.0f, 1.0f)) + _4986, 0.0f, 1.0f);
    _5215 = (_17_m51.xyz * (1.0f - _4989)) + (((_17_m54.xyz * pow(clamp(dot(_448, _17_m53.xyz), 0.0f, 1.0f), _17_m54.w)) * (1.0f - clamp(exp2(-(_4964 * max(_449 - _17_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4986));
    _5216 = _4989;
  }
  float3 _5220 = (((((lerp(dot(_1267, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1267, _1273) * _17_m78.xyz) * _34_m11) + (_1267 * _1281)) + _744) + (_2114.xyz + (_2140 * _2143)).xyz).xyz;
  float _5227 = clamp(_830 / _34_m58, 0.0f, 1.0f);
  // RenoDX code start: retain the glass adjustment in the updated native composite.
  /* Vanilla 0x21B5401D:
  float3 _5237 = lerp(_5220, ((_5220 * (_4870 * _5216)) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4873 * _4873)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _4879) / max((12.56637096405029296875f * _4883) * sqrt(_4883), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4870)) * _5216) + _5215) * _4836)).xyz, (_5227 + (_34_m57 * (1.0f - _5227))).xxx).xyz * _698;
  */
  float3 _5237 = lerp(_5220, ((_5220 * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_4870 * _5216)) : (_4870 * _5216))) + (((((clamp(((_17_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4873 * _4873)))) + _17_m48.xyz) + (_17_m47.xyz * ((1.0f - _4879) / max((12.56637096405029296875f * _4883) * sqrt(_4883), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4870)) * _5216 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5215 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f))) * _4836)).xyz, (_5227 + (_34_m57 * (1.0f - _5227))).xxx).xyz * _698;
  // RenoDX code end
  float4 _5238 = float4(_5237.x, _5237.y, _5237.z, _379.w);
  float _5239 = _698 * _4836;
  _5238.w = _5239;
  float4 _5297;
  [branch] if (_17_m140.x > 0.0f) {
    float4 _5250 = _59.SampleLevel(_22, _408, 0.0f);
    float _5251 = _5250.x;
    float _5260 = (0.100000001490116119384765625f + ((9999.900390625f * (1.0f - _5251)) / (1.0f + (50.0f * _5251)))) + _17_m140.w;
    float _5270 = min((gl_FragCoord.z == 0.0f) ? 10000.0f : (1.0f / ((_17_m2.z * gl_FragCoord.z) + _17_m2.w)), 10000.0f);
    float4 _5281 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _58.SampleLevel(_22, _408, 0.0f), clamp((_5270 - _5260) * _17_m140.z, 0.0f, 1.0f).xxxx);
    float4 _5296;
    [flatten] if (_5270 > _5260) {
      float3 _5294 = ((_5281.xyz * _5239) * max(0.0f, 1.0f - float(int(_34_m1)))) + (_5238.xyz * _5281.w);
      _5296 = float4(_5294.x, _5294.y, _5294.z, _5238.w);
    }
    else {
      _5296 = _5238;
    }
    _5297 = _5296;
  }
  else {
    _5297 = _5238;
  }
  float3 _5305 = ((lerp(dot(_5297.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5297.xyz, _1273) * _17_m78.xyz) * _34_m11) + (_5297.xyz * _1281);
  float2 _5316 = min(_791, 1.0f.xx);
  float4 _5317 = float4(_5316.x, _5316.y, _379.z, _379.w);
  _5317.z = float(clamp(max(dot(_5305.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _5297.w, _5297.w) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5317.w = (_34_m2 * _34_m0) * float(clamp(max(dot(_699, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _698, _698) * 10.0f, 0.0f, 1.0f) > 0.5f);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x21B5401D:
  _12 = float4(_5305.x, _5305.y, _5305.z, _5297.w);
  */
  float3 renodx_output_color = float3(_5305.x, _5305.y, _5305.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _12 = float4(renodx_output_color, _5297.w);
  // RenoDX code end
  _13 = _5317;
  // RenoDX code start: preserve the existing glass controls.
  if (GLASS_TRANSPARENCY > 0.5f) _13.w = 0.0f;
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
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._12 = _12;
  stage_output._13 = _13;
  return stage_output;
}

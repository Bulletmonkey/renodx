#include "../shared.h"

// Ported from the native 0x88A94925 Vulkan dump.
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

struct _49 {
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
[[vk::binding(8, 1)]] cbuffer _46_47 : register(b8, space1) {
  float _47_m0 : packoffset(c0);
  float _47_m1 : packoffset(c0.y);
  float _47_m2 : packoffset(c0.z);
  float _47_m3 : packoffset(c0.w);
  float _47_m4 : packoffset(c1);
  float _47_m5 : packoffset(c1.y);
  float _47_m6 : packoffset(c1.z);
  float _47_m7 : packoffset(c1.w);
  float _47_m8 : packoffset(c2);
  float _47_m9 : packoffset(c2.y);
  float _47_m10 : packoffset(c2.z);
  float _47_m11 : packoffset(c2.w);
  float _47_m12 : packoffset(c3);
  float _47_m13 : packoffset(c3.y);
  float _47_m14 : packoffset(c3.z);
  float _47_m15 : packoffset(c3.w);
  float _47_m16 : packoffset(c4);
  float _47_m17 : packoffset(c4.y);
  float _47_m18 : packoffset(c4.z);
  float _47_m19 : packoffset(c4.w);
  float _47_m20 : packoffset(c5);
  float _47_m21 : packoffset(c5.y);
  float _47_m22 : packoffset(c5.z);
  float _47_m23 : packoffset(c5.w);
  float _47_m24 : packoffset(c6);
  float _47_m25 : packoffset(c6.y);
  float _47_m26 : packoffset(c6.z);
  float _47_m27 : packoffset(c6.w);
  float _47_m28 : packoffset(c7);
  float _47_m29 : packoffset(c7.y);
  float _47_m30 : packoffset(c7.z);
  float _47_m31 : packoffset(c7.w);
  float4 _47_m32 : packoffset(c8);
  float4 _47_m33 : packoffset(c9);
  float4 _47_m34 : packoffset(c10);
  float4 _47_m35 : packoffset(c11);
  float4 _47_m36 : packoffset(c12);
  float4 _47_m37 : packoffset(c13);
  float4 _47_m38 : packoffset(c14);
  float4 _47_m39 : packoffset(c15);
  float4 _47_m40 : packoffset(c16);
  float4 _47_m41 : packoffset(c17);
  float4 _47_m42 : packoffset(c18);
  float4 _47_m43 : packoffset(c19);
  float4 _47_m44 : packoffset(c20);
  float4 _47_m45 : packoffset(c21);
  float _47_m46 : packoffset(c22);
  float _47_m47 : packoffset(c22.y);
  float _47_m48 : packoffset(c22.z);
  float _47_m49 : packoffset(c22.w);
  float _47_m50 : packoffset(c23);
  float _47_m51 : packoffset(c23.y);
  float _47_m52 : packoffset(c23.z);
  float _47_m53 : packoffset(c23.w);
  float4 _47_m54 : packoffset(c24);
  float4 _47_m55 : packoffset(c25);
  float _47_m56 : packoffset(c26);
  float _47_m57 : packoffset(c26.y);
  float _47_m58 : packoffset(c26.z);
  float _47_m59 : packoffset(c26.w);
};

[[vk::binding(16, 0)]] cbuffer _48_50 : register(b16, space0) {
  float4 _50_m0 : packoffset(c0);
  float4 _50_m1 : packoffset(c1);
  float4 _50_m2 : packoffset(c2);
  float4 _50_m3 : packoffset(c3);
  _49 _50_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _51_52 : register(b13, space0) {
  float4 _52_m0 : packoffset(c0);
  float4 _52_m1 : packoffset(c1);
  float4 _52_m2 : packoffset(c2);
  float4 _52_m3 : packoffset(c3);
  float4 _52_m4 : packoffset(c4);
  uint4 _52_m5 : packoffset(c5);
  float4 _52_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _53_54 : register(b49, space0) {
  int _54_m0 : packoffset(c0);
  int _54_m1 : packoffset(c0.y);
  int _54_m2 : packoffset(c0.z);
  int _54_m3 : packoffset(c0.w);
  int _54_m4 : packoffset(c1);
  int _54_m5 : packoffset(c1.y);
  int _54_m6 : packoffset(c1.z);
  int _54_m7 : packoffset(c1.w);
  float _54_m8 : packoffset(c2);
  float _54_m9 : packoffset(c2.y);
  float _54_m10 : packoffset(c2.z);
  float _54_m11 : packoffset(c2.w);
  float _54_m12 : packoffset(c3);
  float _54_m13 : packoffset(c3.y);
  float _54_m14 : packoffset(c3.z);
  float _54_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _55_56 : register(b14, space0) {
  column_major float4x4 _56_m0[5] : packoffset(c0);
  float4 _56_m1[4] : packoffset(c20);
  float4 _56_m2[4] : packoffset(c24);
  float4 _56_m3[4] : packoffset(c28);
  float4 _56_m4 : packoffset(c32);
  float4 _56_m5 : packoffset(c33);
  float4 _56_m6 : packoffset(c34);
  float4 _56_m7 : packoffset(c35);
  float4 _56_m8 : packoffset(c36);
  float4 _56_m9[27] : packoffset(c37);
  float4 _56_m10 : packoffset(c64);
  float4 _56_m11 : packoffset(c65);
  float4 _56_m12[62] : packoffset(c66);
  column_major float4x4 _56_m13[15] : packoffset(c128);
  float4 _56_m14[15] : packoffset(c188);
  float4 _56_m15[15] : packoffset(c203);
  float4 _56_m16[15] : packoffset(c218);
  float4 _56_m17 : packoffset(c233);
  float4 _56_m18 : packoffset(c234);
  float4 _56_m19[21] : packoffset(c235);
  column_major float4x4 _56_m20 : packoffset(c256);
  column_major float4x4 _56_m21 : packoffset(c260);
  float4 _56_m22 : packoffset(c264);
  float4 _56_m23 : packoffset(c265);
  float4 _56_m24 : packoffset(c266);
  float4 _56_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _60 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _75_76 : register(b51, space0) {
  float4 _76_m0[32] : packoffset(c0);
  column_major float4x4 _76_m1[32] : packoffset(c32);
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
[[vk::binding(7, 1)]] Texture2D<float4> _36 : register(t7, space1);
[[vk::binding(3, 1)]] SamplerState _37 : register(s3, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _38 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _39 : register(s1, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _40 : register(t6, space1);
[[vk::binding(2, 1)]] SamplerState _41 : register(s2, space1);
[[vk::binding(22, 0)]] Texture2D<float4> _42 : register(t22, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _43 : register(t4, space1);
[[vk::binding(0, 1)]] SamplerState _44 : register(s0, space1);
[[vk::binding(20, 0)]] SamplerState _45 : register(s20, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _57 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _58 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _61 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _62 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _63 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _66 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _67 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _68 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _69 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _70 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _71 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _72 : register(t31, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _73 : register(t37, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _74 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _79 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _80 : register(t29, space0);

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
  float _425 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_47_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
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
  float2 _516 = (lerp(_4, _5, _47_m12.xx) * _47_m36.xy) + _47_m36.zw;
  float4 _530 = _36.SampleBias(_37, (lerp(_4, _5, _47_m11.xx) * _47_m35.xy) + _47_m35.zw, _18_m16);
  float4 _534 = _38.SampleBias(_39, _516, _47_m13 + _18_m16);
  _534.w = _534.w * _534.x;
  float2 _542 = ((_534.wy * 2.0f) - 1.0f.xx).xy;
  float2 _548 = _542 * _47_m0;
  float4 _550 = _40.SampleBias(_41, _516, _18_m16);
  float3 _565 = lerp(clamp((_530.xyz * _47_m32.xyz) * _47_m18, 0.0f.xxx, 1.0f.xxx), _47_m32.xyz, _47_m16.xxx);
  float _569 = _530.w * _47_m32.w;
  float _575 = lerp(_569, _569 * _8.x, _47_m56);
  float _580 = lerp(_47_m2, _47_m3, _550.y);
  float _590 = lerp(_550.x, _47_m17, clamp(_47_m15 - 1.0f, 0.0f, 1.0f));
  float3 _604 = ((_7.xyz * _548.x) + ((cross(_6, float4(_7.xyz, _468).xyz) * _468) * _548.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_542, _542), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_47_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _608 = _604 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_604, _604)));
  float _634 = dot(_608, _494);
  float3 _635 = -_494;
  float2 _663 = lerp(mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_635, _608, _47_m48) * lerp(_47_m49, _47_m49 / max(gl_FragCoord.z * _634, 0.5f), _47_m50)).xy, ((_43.SampleBias(_44, (_4 * _47_m55.xy) + _47_m55.zw, _18_m16) * 2.0f) - 1.0f.xxxx).xy * _47_m47, _47_m46.xx).xy;
  float2 _664 = _444 + _663;
  float2 _666 = _444 + (_663 * 0.25f);
  float4 _670 = _29.SampleBias(_23, _664, _18_m16);
  float4 _682 = _29.SampleBias(_23, _666, _18_m16);
  float4 _694 = _42.SampleBias(_45, lerp(lerp(_444, _666, step(_464, 1.0f / ((_18_m2.z * _682.x) + _18_m2.w)).xx), _664, step(_464, 1.0f / ((_18_m2.z * _670.x) + _18_m2.w)).xx), _18_m16);
  float _707 = clamp(float(int(sign(_416 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _720 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _720.y = -_720.y;
  float _746 = 0.07999999821186065673828125f * _47_m1;
  float3 _747 = _565 * _590;
  float3 _748 = _565 - _747;
  float3 _752 = (_746 - (_746 * _590)).xxx + _747;
  float4 _755 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _580) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _756 = _755.x;
  float2 _766 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_756 * _756, exp2((-9.27999973297119140625f) * max(0.0f, _634))) * _756) + _755.y)) + _755.zw;
  uint2 _802;
  float _803;
  if (_18_m24.y == 1.0f) {
    float4 _783 = mul(_18_m138, _461);
    float4 _786 = _783;
    _786.y = -_783.y;
    float4 _789 = _786 * (1.0f / _783.w);
    _802 = uint2(clamp(((_789.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _803 = 1.0f / ((_18_m2.z * _789.z) + _18_m2.w);
  } else {
    _802 = uint2(gl_FragCoord.xy);
    _803 = _464;
  }
  float3 _805 = _457 + (_608 * 0.25f);
  float3 _815 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _824 = _805 - (_18_m108.xyz + (_815 * (-_18_m110.w)));
  float _839 = max(min(max((max(abs(_824.x), abs(_824.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_824.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1141;
  float4 _1142;
  float4 _1143;
  float _1144;
  float _1145;
  if ((_18_m108.w != 0.0f) && (_839 < 1.0f)) {
    float3 _852 = _805 - (_18_m108.xyz + (_815 * (-_18_m110.y)));
    float _866 = max(clamp((max(abs(_852.x), abs(_852.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_852.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _942;
    float4 _943;
    float4 _944;
    float4 _945;
    if (_866 < 1.0f) {
      float3 _875 = ((_805 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _877 = _875 - floor(_875);
      float4 _881 = _67.SampleLevel(_25, _877, 0.0f);
      float _882 = 1.0f - _866;
      float _886 = _18_m109.y * 0.5f;
      float _891 = _877.x;
      float _892 = clamp(_877.y, _886, 1.0f - _886) * 0.3333333432674407958984375f;
      float _893 = _877.z;
      float4 _896 = _68.SampleLevel(_24, float3(_891, _892, _893), 0.0f);
      _942 = _839 + (_896.w * _882);
      _943 = float4(((_68.SampleLevel(_24, float3(_891, _892 + 0.666666686534881591796875f, _893), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _881.z, _881.z) * _882;
      _944 = float4(((_68.SampleLevel(_24, float3(_891, _892 + 0.3333333432674407958984375f, _893), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _881.y, _881.y) * _882;
      _945 = float4(((_896.xyz * 4.0f) - 2.0f.xxx) * _881.x, _881.x) * _882;
    } else {
      _942 = _839;
      _943 = 0.0f.xxxx;
      _944 = 0.0f.xxxx;
      _945 = 0.0f.xxxx;
    }
    float3 _951 = _805 - (_18_m108.xyz + (_815 * (-_18_m110.z)));
    float _965 = max(clamp((max(abs(_951.x), abs(_951.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_951.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1045;
    float4 _1046;
    float4 _1047;
    float4 _1048;
    if (_965 < 1.0f) {
      float3 _974 = ((_805 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _976 = _974 - floor(_974);
      float4 _980 = _69.SampleLevel(_25, _976, 0.0f);
      float _982 = _866 * (1.0f - _965);
      float _986 = _18_m109.y * 0.5f;
      float _991 = _976.x;
      float _992 = clamp(_976.y, _986, 1.0f - _986) * 0.3333333432674407958984375f;
      float _993 = _976.z;
      float4 _996 = _70.SampleLevel(_24, float3(_991, _992, _993), 0.0f);
      _1045 = _942 + (_996.w * _982);
      _1046 = _943 + (float4(((_70.SampleLevel(_24, float3(_991, _992 + 0.666666686534881591796875f, _993), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _980.z, _980.z) * _982);
      _1047 = _944 + (float4(((_70.SampleLevel(_24, float3(_991, _992 + 0.3333333432674407958984375f, _993), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _980.y, _980.y) * _982);
      _1048 = _945 + (float4(((_996.xyz * 4.0f) - 2.0f.xxx) * _980.x, _980.x) * _982);
    } else {
      _1045 = _942;
      _1046 = _943;
      _1047 = _944;
      _1048 = _945;
    }
    float4 _1131;
    float4 _1132;
    float4 _1133;
    float _1134;
    if (_965 > 0.0f) {
      float3 _1057 = ((_805 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1060 = _18_m109.xyz * 0.5f;
      float3 _1062 = clamp(_1057 - floor(_1057), _1060, 1.0f.xxx - _1060);
      float4 _1066 = _71.SampleLevel(_25, _1062, 0.0f);
      float _1068 = _965 * (1.0f - _839);
      float _1072 = _18_m109.y * 0.5f;
      float _1078 = clamp(_1062.y, _1072, 1.0f - _1072) * 0.3333333432674407958984375f;
      float4 _1082 = _72.SampleLevel(_24, float3(_1062.x, _1078, _1062.z), 0.0f);
      float _1098 = _1066.x;
      float _1109 = _1066.y;
      float _1120 = _1066.z;
      _1131 = _1046 + (float4(((_72.SampleLevel(_24, float3(_1062.x, _1078 + 0.666666686534881591796875f, _1062.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1120, _1120) * _1068);
      _1132 = _1047 + (float4(((_72.SampleLevel(_24, float3(_1062.x, _1078 + 0.3333333432674407958984375f, _1062.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1109, _1109) * _1068);
      _1133 = _1048 + (float4(((_1082.xyz * 4.0f) - 2.0f.xxx) * _1098, _1098) * _1068);
      _1134 = _1045 + (_1082.w * _1068);
    } else {
      _1131 = _1046;
      _1132 = _1047;
      _1133 = _1048;
      _1134 = _1045;
    }
    float _1137 = clamp((_1134 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1141 = _1131;
    _1142 = _1132;
    _1143 = _1133;
    _1144 = _1137 - _839;
    _1145 = (_1137 + _839) * 0.5f;
  } else {
    _1141 = 0.0f.xxxx;
    _1142 = 0.0f.xxxx;
    _1143 = 0.0f.xxxx;
    _1144 = 0.0f;
    _1145 = 1.0f;
  }
  float4 _1165 = _1143 + float4(_18_m111.x * _1145, (_18_m111.y * _1145) + ((_18_m111.w * _1144) * 0.5f), _18_m111.z * _1145, (_18_m111.w * _1145) + ((_18_m111.y * _1144) * 0.375f));
  float4 _1185 = _1142 + float4(_18_m112.x * _1145, (_18_m112.y * _1145) + ((_18_m112.w * _1144) * 0.5f), _18_m112.z * _1145, (_18_m112.w * _1145) + ((_18_m112.y * _1144) * 0.375f));
  float4 _1205 = _1141 + float4(_18_m113.x * _1145, (_18_m113.y * _1145) + ((_18_m113.w * _1144) * 0.5f), _18_m113.z * _1145, (_18_m113.w * _1145) + ((_18_m113.y * _1144) * 0.375f));
  float _1210 = max(0.0f, dot(_1165.xyz, _608) + _1165.w);
  float _1215 = max(0.0f, dot(_1185.xyz, _608) + _1185.w);
  float _1220 = max(0.0f, dot(_1205.xyz, _608) + _1205.w);
  float3 _1230 = reflect(_635, _608);
  float _1238 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_580, 0.001000000047497451305389404296875f))));
  float2 _1239 = float2(_802);
  float2 _1243 = floor(_1239 * _50_m0.w);
  float _1260 = floor(_803 - _50_m2.y);
  float _1264 = clamp(_1260, 0.0f, _50_m1.x - 1.0f);
  uint _1274 = (_1260 <= _1264) ? (_35.Load(uint(_18_m21.z + int(_1243.x + (_1243.y * _50_m0.x))) * 4 + 0) & _35.Load(uint(_18_m21.w + int(_1264)) * 4 + 0)) : 0u;
  float _1277 = dot(float4(_1210, _1215, _1220, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1279;
  float _1282;
  uint _1284;
  _1279 = 0.0f.xxx;
  _1282 = 1.0f;
  _1284 = _1274;
  uint _1285;
  float3 _1280;
  float _1283;
  bool _1287;
  [loop] for (;;) {
    bool _1286 = _1284 != 0u;
    _1287 = _1282 > 0.00999999977648258209228515625f;
    if (_1286 && _1287) {
      uint _1291 = firstbitlow(_1284);
      _1285 = _1284 ^ (1u << (_1291 & 31u));
      float3 _1311 = float3(dot(_50_m4[_1291]._m2, _461), dot(_50_m4[_1291]._m3, _461), dot(_50_m4[_1291]._m4, _461));
      float3 _1312 = abs(_1311);
      if (all(bool3(_1312.x <= _50_m4[_1291]._m1.xyz.x, _1312.y <= _50_m4[_1291]._m1.xyz.y, _1312.z <= _50_m4[_1291]._m1.xyz.z))) {
        float3 _1321 = _50_m4[_1291]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1323 = _1312 * 0.100000001490116119384765625f;
        float3 _1324 = _1323 * _1323;
        float3 _1327 = (_50_m4[_1291]._m1.xyz - _1312) * _50_m4[_1291]._m5.xyz;
        float3 _1375;
        [branch] if (_50_m4[_1291]._m6.x == 1.0f) {
          float3 _1360 = float3(dot(_50_m4[_1291]._m2.xyz, _1230), dot(_50_m4[_1291]._m3.xyz, _1230), dot(_50_m4[_1291]._m4.xyz, _1230));
          float3 _1362 = (_50_m4[_1291]._m1.xyz - _1311) / _1360;
          float3 _1365 = ((-_50_m4[_1291]._m1.xyz) - _1311) / _1360;
          bool3 _1366 = bool3(_1360.x > 0.0f.xxx.x, _1360.y > 0.0f.xxx.y, _1360.z > 0.0f.xxx.z);
          float3 _1367 = float3(_1366.x ? _1362.x : _1365.x, _1366.y ? _1362.y : _1365.y, _1366.z ? _1362.z : _1365.z);
          _1375 = _1311 + (_1360 * min(min(_1367.x, _1367.y), _1367.z));
        }
        else {
          _1375 = _1230;
        }
        float3 _1376 = normalize(_1375);
        float3 _1379 = float3(int3(sign(_1376)));
        float3 _1382 = _1376 / dot(_1376, _1379).xxx;
        float3 _1396;
        if (_1382.z < 0.0f) {
          float3 _1387 = abs(_1382);
          float2 _1394 = _1379.xy * float2(1.0f - _1387.y, 1.0f - _1387.x);
          _1396 = float3(_1394.x, _1394.y, _1382.z);
        } else {
          _1396 = _1382;
        }
        float _1421 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_50_m4[_1291]._m0, float4(_608, 1.0f))));
        float _1434 = clamp((min(_1327.x, min(_1327.y, _1327.z)) * _50_m4[_1291]._m6.y) + ((((((_1321 * _1321).x - ((_1324.x + _1324.y) + _1324.z)) * _50_m4[_1291]._m5.x) * _50_m4[_1291]._m5.x) * (1.0f - _50_m4[_1291]._m6.y)) * 100.0f), 0.0f, 1.0f) * _50_m4[_1291]._m6.w;
        _1280 = _1279 + ((((_33.SampleLevel(_26, float3((((_1396.xy * 0.5f) + 0.5f.xx) * _50_m1.w) + _50_m2.w.xx, _50_m4[_1291]._m1.w), _1238).xyz * _50_m4[_1291]._m5.w) * ((((((clamp(abs(_1277 / _1421), 0.0f, 1.0f) * 2.0f) + _1277) / (2.0f + _1421)) - 1.0f) * _18_m23.w) + 1.0f)) * _1434) * _1282);
        _1283 = _1282 * (1.0f - _1434);
      } else {
        _1280 = _1279;
        _1283 = _1282;
      }
      _1279 = _1280;
      _1282 = _1283;
      _1284 = _1285;
      continue;
    } else {
      break;
    }
  }
  float3 _1503;
  if (_1287) {
    float3 _1442 = normalize(_1230);
    float3 _1445 = float3(int3(sign(_1442)));
    float3 _1448 = _1442 / dot(_1442, _1445).xxx;
    float3 _1462;
    if (_1448.z < 0.0f) {
      float3 _1453 = abs(_1448);
      float2 _1460 = _1445.xy * float2(1.0f - _1453.y, 1.0f - _1453.x);
      _1462 = float3(_1460.x, _1460.y, _1448.z);
    } else {
      _1462 = _1448;
    }
    float _1489 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_50_m3, float4(_608, 1.0f))));
    _1503 = _1279 + ((_33.SampleLevel(_26, float3((((_1462.xy * 0.5f) + 0.5f.xx) * _50_m1.w) + _50_m2.w.xx, 0.0f), _1238).xyz * ((((((clamp(abs(_1277 / _1489), 0.0f, 1.0f) * 2.0f) + _1277) / (2.0f + _1489)) - 1.0f) * _18_m23.w) + 1.0f)) * _1282);
  } else {
    _1503 = _1279;
  }
  float3 _1509 = (_1503 * _18_m23.z) * _18_m22.y;
  float3 _1530;
  [branch] if (_18_m23.y != 0.0f) {
    float4 _1524 = _31.SampleBias(_24, _444, _18_m16);
    float _1525 = _1524.x;
    _1530 = (_30.SampleBias(_24, _444, _18_m16).xyz * _1525) + (_1509 * (1.0f - _1525));
  }
  else {
    _1530 = _1509;
  }
  float4 _2219;
  do {
    [branch] if (_54_m4 == 0) {
      _2219 = 0.0f.xxxx;
      break;
    }
    float2 _2074;
    do {
      if (_56_m7.w >= 0.9900000095367431640625f) {
        _2074 = float2(_56_m7.z, 1.0f);
        break;
      }
      int _1553 = int(_56_m7.x);
      bool3 _1555 = (_1553 == 2).xxx;
      float3 _1563 = _457 - float3(_1555.x ? _56_m1[0].xyz.x : _16_m11.xyz.x, _1555.y ? _56_m1[0].xyz.y : _16_m11.xyz.y, _1555.z ? _56_m1[0].xyz.z : _16_m11.xyz.z);
      float _1574 = max(clamp((_56_m6.w - dot(_1563, _1563)) * _56_m6.z, 0.0f, 1.0f), _56_m8.x);
      float _1791;
      bool _1792;
      if (_1574 > 0.0f) {
        float _1789;
        bool _1790;
        if (_1553 > 0) {
          float3 _1581 = _457 - _56_m1[0].xyz;
          float3 _1585 = _457 - _56_m1[1].xyz;
          float3 _1589 = _457 - _56_m1[2].xyz;
          float3 _1593 = _457 - _56_m1[3].xyz;
          float4 _1598 = float4(dot(_1581, _1581), dot(_1585, _1585), dot(_1589, _1589), dot(_1593, _1593));
          float4 _1607 = float4(_56_m1[0].w, _56_m1[1].w, _56_m1[2].w, _56_m1[3].w);
          float4 _1609 = float4(bool4(_1598.x < _1607.x, _1598.y < _1607.y, _1598.z < _1607.z, _1598.w < _1607.w));
          float3 _1613 = clamp(_1609.yzw - _1609.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1617 = clamp(4.0f - dot(float4(_1609.x, _1613.x, _1613.y, _1613.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1619 = clamp(_1617 + 1.0f, 0.0f, 3.0f);
          uint _1620 = uint(_1617);
          uint _1628 = uint(_1619);
          float _1634 = dot(_1598, _366[_1628]) / _56_m1[_1628].w;
          float _1651;
          if (((_1619 > _1617) && (_1634 >= 0.0f)) && (_1634 <= 1.0f)) {
            _1651 = _1617 + step(frac(52.98291778564453125f * frac(dot(_1239 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1598, _366[_1620]) / _56_m1[_1620].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1651 = _1617;
          }
          float _1652 = clamp(_1651, 0.0f, 4.0f);
          float4 _1656 = mul(_56_m0[uint(_1652)], _461);
          float _1659 = _1656.z;
          float4 _1660 = float4(_1656.xy, _1659, _1652);
          float3 _1661 = _1660.xyz;
          bool3 _1662 = bool3(_1661.x <= 0.0f.xxx.x, _1661.y <= 0.0f.xxx.y, _1661.z <= 0.0f.xxx.z);
          bool3 _1663 = bool3(_1661.x >= 1.0f.xxx.x, _1661.y >= 1.0f.xxx.y, _1661.z >= 1.0f.xxx.z);
          bool _1669 = any(bool3(_1662.x || _1663.x, _1662.y || _1663.y, _1662.z || _1663.z)) || ((asuint(_1659) & 2147483647u) > 2139095040u);
          int _1670 = int(_1652);
          float2 _1687 = float4(_56_m3[_1670].xy + (_1660.xy * _56_m3[_1670].zw), _1659, _1652).xy * _56_m4.zw;
          float2 _1689 = floor(_1687 + 0.5f.xx);
          float2 _1690 = _1687 - _1689;
          float _1691 = _1690.x;
          float _1692 = _1691 + 0.5f;
          float _1694 = (_1692 * _1692) * 0.5f;
          float _1697 = min(_1691, 0.0f);
          float _1701 = max(_1691, 0.0f);
          float4 _1705 = float4(_1694 - _1691, (1.0f - _1691) - (_1697 * _1697), (_1691 + 1.0f) - (_1701 * _1701), _1694) * 0.44444000720977783203125f;
          float _1706 = _1690.y;
          float _1707 = _1706 + 0.5f;
          float _1709 = (_1707 * _1707) * 0.5f;
          float _1712 = min(_1706, 0.0f);
          float _1716 = max(_1706, 0.0f);
          float4 _1720 = float4(_1709 - _1706, (1.0f - _1706) - (_1712 * _1712), (_1706 + 1.0f) - (_1716 * _1716), _1709) * 0.44444000720977783203125f;
          float2 _1722 = _1705.yw;
          float2 _1723 = _1705.xz + _1722;
          float2 _1725 = _1720.yw;
          float2 _1726 = _1720.xz + _1725;
          float2 _1732 = ((_1722 / _1723) + float2(-1.5f, 0.5f)) * _56_m4.xx;
          float2 _1734 = ((_1725 / _1726) + float2(-1.5f, 0.5f)) * _56_m4.yy;
          float2 _1736 = _1689 * _56_m4.xy;
          float _1737 = _1732.x;
          float _1738 = _1734.x;
          float _1741 = _1732.y;
          float _1744 = _1734.y;
          float _1749 = _1723.x;
          float _1750 = _1726.x;
          float _1752 = _1723.y;
          float _1754 = _1726.y;
          _1789 = _1669 ? 1.0f : (((((_1749 * _1750) * _57.SampleCmpLevelZero(_27, float3(_1736 + float2(_1737, _1738), _388).xy, _1659)) + ((_1752 * _1750) * _57.SampleCmpLevelZero(_27, float3(_1736 + float2(_1741, _1738), _388).xy, _1659))) + ((_1749 * _1754) * _57.SampleCmpLevelZero(_27, float3(_1736 + float2(_1737, _1744), _388).xy, _1659))) + ((_1752 * _1754) * _57.SampleCmpLevelZero(_27, float3(_1736 + float2(_1741, _1744), _388).xy, _1659)));
          _1790 = _1669;
        } else {
          _1789 = 1.0f;
          _1790 = false;
        }
        _1791 = _1789;
        _1792 = _1790;
      } else {
        _1791 = 1.0f;
        _1792 = false;
      }
      float _1992;
      float _1993;
      if ((_1574 < 1.0f) || (_56_m8.x > 0.5f)) {
        float _1803 = 1.0f - clamp(dot(_608, _52_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1820 = float4((_457 - (_52_m0.xyz * (_1803 * _56_m22.x))) + (_608 * (_1803 * _56_m22.y)), 1.0f);
        float4 _1821 = mul(_56_m21, _1820);
        float2 _1822 = _1821.xy;
        float _1990;
        if (all(bool2(_1822.x > 0.0f.xx.x, _1822.y > 0.0f.xx.y)) && all(bool2(_1822.x < 1.0f.xx.x, _1822.y < 1.0f.xx.y))) {
          uint _1841 = clamp(uint((floor(_1821.y * _56_m23.z) + _1821.x) * _56_m23.y), 0u, 127u);
          uint _1845 = asuint(_56_m25[_1841].x);
          float2 _1846 = spvUnpackHalf2x16(_1845);
          float _1847 = _1846.x;
          float _1989;
          if (_1847 >= 0.0f) {
            float4x4 _1856 = _56_m20;
            _1856[0].w = _56_m25[_1841].y;
            _1856[1].w = _56_m25[_1841].z;
            _1856[2].w = _56_m25[_1841].w;
            float4 _1863 = mul(_1856, _1820);
            float3 _1864 = _1863.xyz;
            float _1988;
            if (all(bool3(_1864.x > 0.0f.xxx.x, _1864.y > 0.0f.xxx.y, _1864.z > 0.0f.xxx.z)) && all(bool3(_1864.x < 1.0f.xxx.x, _1864.y < 1.0f.xxx.y, _1864.z < 1.0f.xxx.z))) {
              float _1881 = _1863.z;
              float2 _1887 = float4((_1863.xy * _56_m22.zw) + float2(_1847, spvUnpackHalf2x16(_1845 >> 16u).x), _1881, 1.0f).xy * _56_m24.zw;
              float2 _1889 = floor(_1887 + 0.5f.xx);
              float2 _1890 = _1887 - _1889;
              float _1891 = _1890.x;
              float _1892 = _1891 + 0.5f;
              float _1894 = (_1892 * _1892) * 0.5f;
              float _1897 = min(_1891, 0.0f);
              float _1901 = max(_1891, 0.0f);
              float4 _1905 = float4(_1894 - _1891, (1.0f - _1891) - (_1897 * _1897), (_1891 + 1.0f) - (_1901 * _1901), _1894) * 0.44444000720977783203125f;
              float _1906 = _1890.y;
              float _1907 = _1906 + 0.5f;
              float _1909 = (_1907 * _1907) * 0.5f;
              float _1912 = min(_1906, 0.0f);
              float _1916 = max(_1906, 0.0f);
              float4 _1920 = float4(_1909 - _1906, (1.0f - _1906) - (_1912 * _1912), (_1906 + 1.0f) - (_1916 * _1916), _1909) * 0.44444000720977783203125f;
              float2 _1923 = _1905.xz + _1905.yw;
              float2 _1926 = _1920.xz + _1920.yw;
              float2 _1932 = ((_1905.yw / _1923) + float2(-1.5f, 0.5f)) * _56_m24.xx;
              float2 _1934 = ((_1920.yw / _1926) + float2(-1.5f, 0.5f)) * _56_m24.yy;
              float2 _1936 = _1889 * _56_m24.xy;
              float _1937 = _1932.x;
              float _1938 = _1934.x;
              float2 _1940 = _1936 + float2(_1937, _1938);
              float _1941 = _1932.y;
              float2 _1943 = _1936 + float2(_1941, _1938);
              float _1944 = _1934.y;
              float2 _1946 = _1936 + float2(_1937, _1944);
              float2 _1948 = _1936 + float2(_1941, _1944);
              float _1949 = _1923.x;
              float _1950 = _1926.x;
              float _1952 = _1923.y;
              float _1954 = _1926.y;
              _1988 = ((((_1949 * _1950) * _62.SampleCmpLevelZero(_27, float3(_1940, _388).xy, _1881)) + ((_1952 * _1950) * _62.SampleCmpLevelZero(_27, float3(_1943, _388).xy, _1881))) + ((_1949 * _1954) * _62.SampleCmpLevelZero(_27, float3(_1946, _388).xy, _1881))) + ((_1952 * _1954) * _62.SampleCmpLevelZero(_27, float3(_1948, _388).xy, _1881));
            } else {
              _1988 = 1.0f;
            }
            _1989 = _1988;
          } else {
            _1989 = 1.0f;
          }
          _1990 = _1989;
        } else {
          _1990 = 1.0f;
        }
        _1992 = _1792 ? _1990 : _1791;
        _1993 = _1990;
      } else {
        _1992 = _1791;
        _1993 = 1.0f;
      }
      float _1996 = lerp(lerp(_1993, _1992, _1574), min(_1993, _1992), _56_m8.x);
      float _2069;
      if (_1996 > 0.001000000047497451305389404296875f) {
        float3 _2031 = _457 - _18_m65.xyz;
        float2 _2036 = (_2031 + (_18_m68.xyz * _2031.y)).xz * _18_m66.z;
        float2 _2037 = _18_m67.xy * _18_m77.w;
        float3 _2044 = _457 - _18_m69.xyz;
        float2 _2052 = _18_m69.w.xx;
        float4 _2059 = _61.SampleLevel(_25, lerp(_2036 * _18_m67.w, (_2044 + (_18_m68.xyz * _2044.y)).xz * _18_m70.x, _2052) + lerp(_2037, _18_m70.yz * _18_m77.w, _2052), 0.0f);
        _2069 = _1996 * lerp(1.0f, lerp(_61.SampleLevel(_25, _2036 + _2037, 0.0f).x, lerp(_2059.x, _2059.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2031.xz))), _18_m67.z);
      } else {
        _2069 = _1996;
      }
      _2074 = float2(lerp(_2069, _56_m7.z, _56_m7.w), _2069);
      break;
    } while (false);
    float _2079 = lerp(1.0f, min(1.0f, _2074.x), _56_m6.x);
    float4 _2218;
    if (_2079 > 0.001000000047497451305389404296875f) {
      float3 _2089 = -_52_m0.xyz;
      float _2094 = dot(_2089, _1230);
      float3 _2096 = _1230 - (_2089 * _2094);
      bool3 _2098 = (_2094 < _52_m4.z).xxx;
      float3 _2106 = normalize((_2089 * _52_m4.z) + ((_2096 * rsqrt(max(6.103515625e-05f, dot(_2096, _2096)))) * _52_m4.y));
      float3 _2107 = float3(_2098.x ? _2106.x : _1230.x, _2098.y ? _2106.y : _1230.y, _2098.z ? _2106.z : _1230.z);
      float3 _2111 = _2107 + _494;
      float3 _2115 = _2111 * rsqrt(max(6.103515625e-05f, dot(_2111, _2111)));
      float _2116 = clamp(dot(_2107, _608), 0.0f, 1.0f);
      float _2118 = clamp(dot(_608, _2115), 0.0f, 1.0f);
      float _2121 = clamp(_634, 0.0f, 1.0f);
      float _2122 = _580 * _580;
      float _2123 = _2122 * _2122;
      float _2144 = (((_2118 * _2123) - _2118) * _2118) + 1.0f;
      float _2147 = 1.0f - clamp(dot(_494, _2115), 0.0f, 1.0f);
      float _2148 = _2147 * _2147;
      float _2150 = (_2147 * _2148) * _2148;
      float _2174 = 1.0f - _580;
      float _2181 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2174 * (1.04997003078460693359375f + (_2174 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2174))))));
      float _2182 = 1.0f - _2181;
      float3 _2185 = _752 + ((1.0f.xxx - _752) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x88A94925:
      float3 _2204 = (clamp(clamp((min(((_752 * (1.0f - _2150)) + _2150.xxx) * ((_2123 / (_2144 * _2144)) * (0.5f / (((_2116 * sqrt(((((-_2121) * _2123) + _2121) * _2121) + _2123)) + (_2121 * sqrt(((((-_2116) * _2123) + _2116) * _2116) + _2123))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2185 * (((_66.SampleLevel(_24, (float2(_2121, _580) * 0.96875f) + 0.015625f.xx, 0.0f).x * _66.SampleLevel(_24, (float2(_2116, _580) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2181) / _2182)) * _2185) / (1.0f.xxx - (_2185 * _2182)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_575, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2116) + ((_748 * 1.0f) * _2116);
      */
      float3 _2204 = (clamp((clamp((min(((_752 * (1.0f - _2150)) + _2150.xxx) * ((_2123 / (_2144 * _2144)) * (0.5f / (((_2116 * sqrt(((((-_2121) * _2123) + _2121) * _2121) + _2123)) + (_2121 * sqrt(((((-_2116) * _2123) + _2116) * _2116) + _2123))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2185 * (((_66.SampleLevel(_24, (float2(_2121, _580) * 0.96875f) + 0.015625f.xx, 0.0f).x * _66.SampleLevel(_24, (float2(_2116, _580) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2181) / _2182)) * _2185) / (1.0f.xxx - (_2185 * _2182)))) * _52_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) / max(_575, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _2116) + ((_748 * 1.0f) * _2116);
      // RenoDX code end
      float3 _2205 = _2204 * _52_m1.xyz;
      float3 _2216 = lerp(_2205, _2205 * _63.SampleBias(_24, float2(_2079, 0.5f), _18_m16).xyz, (1.0f - _2079).xxx) * 1.0f;
      _2218 = float4(_2216.x, _2216.y, _2216.z, 0.0f.xxxx.w);
    } else {
      _2218 = 0.0f.xxxx;
    }
    _2219 = _2218;
    break;
  } while (false);
  float2 _2221 = floor(_1239 * 0.03125f);
  int _2229 = int((_2221.x + (_2221.y * _54_m9)) * 8.0f);
  float _2236 = floor(_803 - (_18_m3.y * _54_m15));
  float _2240 = clamp(_2236, 0.0f, _54_m11 - 1.0f);
  int _2242 = int(_2240 * 8.0f);
  float3 _2244;
  float _2247;
  _2244 = 0.0f.xxx;
  _2247 = 1.0f;
  float3 _2245;
  float _2248;
  [loop] for (int _2249 = 0; _2249 <= 7; _2244 = _2245, _2247 = _2248, _2249++) {
    uint _2270 = (_2236 <= _2240) ? (_35.Load(uint((_54_m2 + _2229) + _2249) * 4 + 0) & _35.Load(uint((_54_m3 + _2242) + _2249) * 4 + 0)) : 0u;
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
      uint _2313 = uint(_52_m6[_2303].w);
      float _2388;
      if ((_2313 & 1u) == 1u) {
        uint _2319 = asuint(_52_m6[_2303].x);
        uint _2326 = asuint(_52_m6[_2303].y);
        uint _2333 = asuint(_52_m6[_2303].z);
        uint _2340 = asuint(_52_m6[_2306].x);
        uint _2347 = asuint(_52_m6[_2306].y);
        uint _2354 = asuint(_52_m6[_2306].z);
        float3 _2373 = abs(mul(float4(_457 - _52_m6[_2291].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2319).x, spvUnpackHalf2x16(_2333).x, spvUnpackHalf2x16(_2347).x, 0.0f), float4(spvUnpackHalf2x16(_2319 >> 16u).x, spvUnpackHalf2x16(_2333 >> 16u).x, spvUnpackHalf2x16(_2347 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2326).x, spvUnpackHalf2x16(_2340).x, spvUnpackHalf2x16(_2354).x, 0.0f), float4(spvUnpackHalf2x16(_2326 >> 16u).x, spvUnpackHalf2x16(_2340 >> 16u).x, spvUnpackHalf2x16(_2354 >> 16u).x, 0.0f))).xyz);
        float _2380 = _52_m6[_2309].x * 0.5f;
        float _2386 = 1.0f - clamp((max(max(_2373.x, _2373.y), _2373.z) - (_2380 + 0.5f)) / (0.5f - _2380), 0.0f, 1.0f);
        _2388 = _2386 * _2386;
      } else {
        _2388 = 1.0f;
      }
      uint _2392 = uint(_52_m6[_2288].w);
      bool _2395 = _52_m6[_2297].z > 0.5f;
      if ((false || (_2388 < 0.001000000047497451305389404296875f)) || ((_2392 < 4u) && _2395)) {
        _2273 = _2248;
        _2276 = _2275;
        continue;
      }
      float _4924;
      float3 _4925;
      do {
        [branch] if (_2392 >= 4u) {
          float3 _3624;
          do {
            float3 _2414 = _52_m6[_2291].xyz - _457;
            if (dot(_52_m6[_2297].xyz, _2414) > 0.0f) {
              _3624 = 0.0f.xxx;
              break;
            }
            float _2421 = dot(_2414, _2414) * _52_m6[_2291].w;
            float _2424 = clamp(1.0f - (_2421 * _2421), 0.0f, 1.0f);
            float _2425 = _2424 * _2424;
            if (_2425 <= 0.0f) {
              _3624 = 0.0f.xxx;
              break;
            }
            float3 _2463;
            float _2464;
            bool _2465;
            float3 _2493;
            float3 _2495;
            float3 _2497;
            float3 _2499;
            float3 _2429 = _52_m6[_2294].xyz * _52_m6[_2294].w;
            float3 _2430 = _52_m6[_2291].xyz - _2429;
            float3 _2431 = _52_m6[_2300].xyz * _52_m6[_2297].w;
            float3 _2434 = _52_m6[_2291].xyz + _2429;
            float2 _2444 = (float2(clamp(_580, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_634, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2448 = _79.SampleLevel(_24, _2444, 0.0f);
            float4 _2452 = _80.SampleLevel(_24, _2444, 0.0f);
            float _2847;
            do {
              _2463 = _494 - (_608 * dot(_494, _608));
              _2464 = dot(_2463, _2463);
              _2465 = _2464 > 9.9999997473787516355514526367188e-05f;
              float3 _2488;
              if (_2465) {
                _2488 = _2463 * rsqrt(_2464);
              } else {
                float _2469 = _608.z;
                float _2471 = (_2469 >= 0.0f) ? 1.0f : (-1.0f);
                float _2473 = (-1.0f) / (_2471 + _2469);
                float _2475 = _608.x;
                _2488 = float3(1.0f + (((_2471 * _2473) * _2475) * _2475), ((_2471 * _2475) * _608.y) * _2473, (-_2471) * _2475);
              }
              float3x3 _2492 = mul(float3x3(float3(_2448.x, 0.0f, _2448.z), float3(0.0f, 1.0f, 0.0f), float3(_2448.y, 0.0f, _2448.w)), float3x3(_2488, cross(_608, _2488), _608));
              _2493 = (_2430 - _2431) - _457;
              float3 _2494 = mul(_2492, _2493);
              _2495 = (_2430 + _2431) - _457;
              float3 _2496 = mul(_2492, _2495);
              _2497 = (_2434 + _2431) - _457;
              float3 _2498 = mul(_2492, _2497);
              _2499 = (_2434 - _2431) - _457;
              float3 _2500 = mul(_2492, _2499);
              float _2501 = _2494.z;
              float _2504 = _2496.z;
              float _2508 = _2498.z;
              float _2512 = _2500.z;
              int _2516 = (((int(_2501 > 0.0f) | ((_2504 > 0.0f) ? 2 : 0)) | ((_2508 > 0.0f) ? 4 : 0)) | ((_2512 > 0.0f) ? 8 : 0));
              float3 _2753;
              float3 _2754;
              float3 _2755;
              float3 _2756;
              float3 _2757;
              int _2758;
              if (_2516 == 0) {
                _2753 = _2500;
                _2754 = _2498;
                _2755 = _2496;
                _2756 = _2494;
                _2757 = 0.0f.xxx;
                _2758 = 0;
              } else {
                float3 _2747;
                float3 _2748;
                float3 _2749;
                float3 _2750;
                float3 _2751;
                int _2752;
                if (_2516 == 1) {
                  _2747 = _2500;
                  _2748 = (_2494 * (-_2512)) + (_2500 * _2501);
                  _2749 = (_2494 * (-_2504)) + (_2496 * _2501);
                  _2750 = _2494;
                  _2751 = 0.0f.xxx;
                  _2752 = 3;
                } else {
                  float3 _2733;
                  float3 _2734;
                  float3 _2735;
                  float3 _2736;
                  float3 _2737;
                  int _2738;
                  if (_2516 == 2) {
                    _2733 = _2500;
                    _2734 = (_2496 * (-_2508)) + (_2498 * _2504);
                    _2735 = _2496;
                    _2736 = (_2496 * (-_2501)) + (_2494 * _2504);
                    _2737 = 0.0f.xxx;
                    _2738 = 3;
                  } else {
                    float3 _2719;
                    float3 _2720;
                    float3 _2721;
                    float3 _2722;
                    float3 _2723;
                    int _2724;
                    if (_2516 == 3) {
                      _2719 = (_2494 * (-_2512)) + (_2500 * _2501);
                      _2720 = (_2496 * (-_2508)) + (_2498 * _2504);
                      _2721 = _2496;
                      _2722 = _2494;
                      _2723 = 0.0f.xxx;
                      _2724 = 4;
                    } else {
                      float3 _2705;
                      float3 _2706;
                      float3 _2707;
                      float3 _2708;
                      float3 _2709;
                      int _2710;
                      if (_2516 == 4) {
                        _2705 = _2500;
                        _2706 = _2498;
                        _2707 = (_2498 * (-_2504)) + (_2496 * _2508);
                        _2708 = (_2498 * (-_2512)) + (_2500 * _2508);
                        _2709 = 0.0f.xxx;
                        _2710 = 3;
                      } else {
                        float3 _2691;
                        float3 _2692;
                        float3 _2693;
                        float3 _2694;
                        float3 _2695;
                        int _2696;
                        if (_2516 == 5) {
                          _2691 = _2500;
                          _2692 = _2498;
                          _2693 = _2496;
                          _2694 = _2494;
                          _2695 = 0.0f.xxx;
                          _2696 = 0;
                        } else {
                          float3 _2685;
                          float3 _2686;
                          float3 _2687;
                          float3 _2688;
                          float3 _2689;
                          int _2690;
                          if (_2516 == 6) {
                            _2685 = (_2498 * (-_2512)) + (_2500 * _2508);
                            _2686 = _2498;
                            _2687 = _2496;
                            _2688 = (_2496 * (-_2501)) + (_2494 * _2504);
                            _2689 = 0.0f.xxx;
                            _2690 = 4;
                          } else {
                            float3 _2671;
                            float3 _2672;
                            float3 _2673;
                            float3 _2674;
                            float3 _2675;
                            int _2676;
                            if (_2516 == 7) {
                              float _2664 = -_2512;
                              _2671 = (_2498 * _2664) + (_2500 * _2508);
                              _2672 = _2498;
                              _2673 = _2496;
                              _2674 = _2494;
                              _2675 = (_2494 * _2664) + (_2500 * _2501);
                              _2676 = 5;
                            } else {
                              float3 _2658;
                              float3 _2659;
                              float3 _2660;
                              float3 _2661;
                              float3 _2662;
                              int _2663;
                              if (_2516 == 8) {
                                _2658 = _2500;
                                _2659 = _2500;
                                _2660 = (_2500 * (-_2508)) + (_2498 * _2512);
                                _2661 = (_2500 * (-_2501)) + (_2494 * _2512);
                                _2662 = 0.0f.xxx;
                                _2663 = 3;
                              } else {
                                float3 _2644;
                                float3 _2645;
                                float3 _2646;
                                float3 _2647;
                                float3 _2648;
                                int _2649;
                                if (_2516 == 9) {
                                  _2644 = _2500;
                                  _2645 = (_2500 * (-_2508)) + (_2498 * _2512);
                                  _2646 = (_2494 * (-_2504)) + (_2496 * _2501);
                                  _2647 = _2494;
                                  _2648 = 0.0f.xxx;
                                  _2649 = 4;
                                } else {
                                  float3 _2630;
                                  float3 _2631;
                                  float3 _2632;
                                  float3 _2633;
                                  float3 _2634;
                                  int _2635;
                                  if (_2516 == 10) {
                                    _2630 = _2500;
                                    _2631 = _2498;
                                    _2632 = _2496;
                                    _2633 = _2494;
                                    _2634 = 0.0f.xxx;
                                    _2635 = 0;
                                  } else {
                                    float3 _2624;
                                    float3 _2625;
                                    float3 _2626;
                                    float3 _2627;
                                    float3 _2628;
                                    int _2629;
                                    if (_2516 == 11) {
                                      float _2617 = -_2508;
                                      _2624 = (_2500 * _2617) + (_2498 * _2512);
                                      _2625 = (_2496 * _2617) + (_2498 * _2504);
                                      _2626 = _2496;
                                      _2627 = _2494;
                                      _2628 = _2500;
                                      _2629 = 5;
                                    } else {
                                      float3 _2611;
                                      float3 _2612;
                                      float3 _2613;
                                      float3 _2614;
                                      float3 _2615;
                                      int _2616;
                                      if (_2516 == 12) {
                                        _2611 = _2500;
                                        _2612 = _2498;
                                        _2613 = (_2498 * (-_2504)) + (_2496 * _2508);
                                        _2614 = (_2500 * (-_2501)) + (_2494 * _2512);
                                        _2615 = 0.0f.xxx;
                                        _2616 = 4;
                                      } else {
                                        bool _2569 = _2516 == 13;
                                        float3 _2596;
                                        float3 _2597;
                                        float3 _2598;
                                        float3 _2599;
                                        int _2600;
                                        if (_2569) {
                                          float _2589 = -_2504;
                                          _2596 = (_2498 * _2589) + (_2496 * _2508);
                                          _2597 = (_2494 * _2589) + (_2496 * _2501);
                                          _2598 = _2494;
                                          _2599 = _2500;
                                          _2600 = 5;
                                        } else {
                                          float3 _2586;
                                          float3 _2587;
                                          int _2588;
                                          if (_2516 == 14) {
                                            float _2579 = -_2501;
                                            _2586 = (_2496 * _2579) + (_2494 * _2504);
                                            _2587 = (_2500 * _2579) + (_2494 * _2512);
                                            _2588 = 5;
                                          } else {
                                            _2586 = _2494;
                                            _2587 = 0.0f.xxx;
                                            _2588 = (_2516 == 15) ? 4 : 0;
                                          }
                                          _2596 = _2498;
                                          _2597 = _2496;
                                          _2598 = _2586;
                                          _2599 = _2587;
                                          _2600 = _2588;
                                        }
                                        bool3 _2601 = _2569.xxx;
                                        _2611 = float3(_2601.x ? _2498.x : _2500.x, _2601.y ? _2498.y : _2500.y, _2601.z ? _2498.z : _2500.z);
                                        _2612 = _2596;
                                        _2613 = _2597;
                                        _2614 = _2598;
                                        _2615 = _2599;
                                        _2616 = _2600;
                                      }
                                      _2624 = _2611;
                                      _2625 = _2612;
                                      _2626 = _2613;
                                      _2627 = _2614;
                                      _2628 = _2615;
                                      _2629 = _2616;
                                    }
                                    _2630 = _2624;
                                    _2631 = _2625;
                                    _2632 = _2626;
                                    _2633 = _2627;
                                    _2634 = _2628;
                                    _2635 = _2629;
                                  }
                                  _2644 = _2630;
                                  _2645 = _2631;
                                  _2646 = _2632;
                                  _2647 = _2633;
                                  _2648 = _2634;
                                  _2649 = _2635;
                                }
                                _2658 = _2644;
                                _2659 = _2645;
                                _2660 = _2646;
                                _2661 = _2647;
                                _2662 = _2648;
                                _2663 = _2649;
                              }
                              _2671 = _2658;
                              _2672 = _2659;
                              _2673 = _2660;
                              _2674 = _2661;
                              _2675 = _2662;
                              _2676 = _2663;
                            }
                            _2685 = _2671;
                            _2686 = _2672;
                            _2687 = _2673;
                            _2688 = _2674;
                            _2689 = _2675;
                            _2690 = _2676;
                          }
                          _2691 = _2685;
                          _2692 = _2686;
                          _2693 = _2687;
                          _2694 = _2688;
                          _2695 = _2689;
                          _2696 = _2690;
                        }
                        _2705 = _2691;
                        _2706 = _2692;
                        _2707 = _2693;
                        _2708 = _2694;
                        _2709 = _2695;
                        _2710 = _2696;
                      }
                      _2719 = _2705;
                      _2720 = _2706;
                      _2721 = _2707;
                      _2722 = _2708;
                      _2723 = _2709;
                      _2724 = _2710;
                    }
                    _2733 = _2719;
                    _2734 = _2720;
                    _2735 = _2721;
                    _2736 = _2722;
                    _2737 = _2723;
                    _2738 = _2724;
                  }
                  _2747 = _2733;
                  _2748 = _2734;
                  _2749 = _2735;
                  _2750 = _2736;
                  _2751 = _2737;
                  _2752 = _2738;
                }
                _2753 = _2747;
                _2754 = _2748;
                _2755 = _2749;
                _2756 = _2750;
                _2757 = _2751;
                _2758 = _2752;
              }
              bool3 _2760 = (_2758 == 3).xxx;
              bool3 _2763 = (_2758 == 4).xxx;
              if (_2758 == 0) {
                _2847 = 0.0f;
                break;
              }
              float3 _2768 = normalize(_2756);
              float3 _2769 = normalize(_2755);
              float3 _2770 = normalize(_2754);
              float3 _2771 = normalize(float3(_2760.x ? _2756.x : _2753.x, _2760.y ? _2756.y : _2753.y, _2760.z ? _2756.z : _2753.z));
              float3 _2772 = normalize(float3(_2763.x ? _2756.x : _2757.x, _2763.y ? _2756.y : _2757.y, _2763.z ? _2756.z : _2757.z));
              float _2774 = clamp(dot(_2768, _2769), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2778 = sqrt(1.0f - (_2774 * _2774));
              float _2786 = clamp(dot(_2769, _2770), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2790 = sqrt(1.0f - (_2786 * _2786));
              float _2799 = clamp(dot(_2770, _2771), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2803 = sqrt(1.0f - (_2799 * _2799));
              float _2810 = ((cross(_2768, _2769).z * ((_2778 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2774) / _2778))) + (cross(_2769, _2770).z * ((_2790 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2786) / _2790)))) + (cross(_2770, _2771).z * ((_2803 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2799) / _2803)));
              float _2827;
              if (_2758 >= 4) {
                float _2815 = clamp(dot(_2771, _2772), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2819 = sqrt(1.0f - (_2815 * _2815));
                _2827 = _2810 + (cross(_2771, _2772).z * ((_2819 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2815) / _2819)));
              } else {
                _2827 = _2810;
              }
              float _2844;
              if (_2758 == 5) {
                float _2832 = clamp(dot(_2772, _2768), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2836 = sqrt(1.0f - (_2832 * _2832));
                _2844 = _2827 + (cross(_2772, _2768).z * ((_2836 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2832) / _2836)));
              } else {
                _2844 = _2827;
              }
              _2847 = max(_2844, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3235;
            do {
              float3 _2881;
              if (_2465) {
                _2881 = _2463 * rsqrt(_2464);
              } else {
                float _2862 = _608.z;
                float _2864 = (_2862 >= 0.0f) ? 1.0f : (-1.0f);
                float _2866 = (-1.0f) / (_2864 + _2862);
                float _2868 = _608.x;
                _2881 = float3(1.0f + (((_2864 * _2866) * _2868) * _2868), ((_2864 * _2868) * _608.y) * _2866, (-_2864) * _2868);
              }
              float3x3 _2884 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2881, cross(_608, _2881), _608));
              float3 _2885 = mul(_2884, _2493);
              float3 _2886 = mul(_2884, _2495);
              float3 _2887 = mul(_2884, _2497);
              float3 _2888 = mul(_2884, _2499);
              float _2889 = _2885.z;
              float _2892 = _2886.z;
              float _2896 = _2887.z;
              float _2900 = _2888.z;
              int _2904 = (((int(_2889 > 0.0f) | ((_2892 > 0.0f) ? 2 : 0)) | ((_2896 > 0.0f) ? 4 : 0)) | ((_2900 > 0.0f) ? 8 : 0));
              float3 _3141;
              float3 _3142;
              float3 _3143;
              float3 _3144;
              float3 _3145;
              int _3146;
              if (_2904 == 0) {
                _3141 = _2888;
                _3142 = _2887;
                _3143 = _2886;
                _3144 = _2885;
                _3145 = 0.0f.xxx;
                _3146 = 0;
              } else {
                float3 _3135;
                float3 _3136;
                float3 _3137;
                float3 _3138;
                float3 _3139;
                int _3140;
                if (_2904 == 1) {
                  _3135 = _2888;
                  _3136 = (_2885 * (-_2900)) + (_2888 * _2889);
                  _3137 = (_2885 * (-_2892)) + (_2886 * _2889);
                  _3138 = _2885;
                  _3139 = 0.0f.xxx;
                  _3140 = 3;
                } else {
                  float3 _3121;
                  float3 _3122;
                  float3 _3123;
                  float3 _3124;
                  float3 _3125;
                  int _3126;
                  if (_2904 == 2) {
                    _3121 = _2888;
                    _3122 = (_2886 * (-_2896)) + (_2887 * _2892);
                    _3123 = _2886;
                    _3124 = (_2886 * (-_2889)) + (_2885 * _2892);
                    _3125 = 0.0f.xxx;
                    _3126 = 3;
                  } else {
                    float3 _3107;
                    float3 _3108;
                    float3 _3109;
                    float3 _3110;
                    float3 _3111;
                    int _3112;
                    if (_2904 == 3) {
                      _3107 = (_2885 * (-_2900)) + (_2888 * _2889);
                      _3108 = (_2886 * (-_2896)) + (_2887 * _2892);
                      _3109 = _2886;
                      _3110 = _2885;
                      _3111 = 0.0f.xxx;
                      _3112 = 4;
                    } else {
                      float3 _3093;
                      float3 _3094;
                      float3 _3095;
                      float3 _3096;
                      float3 _3097;
                      int _3098;
                      if (_2904 == 4) {
                        _3093 = _2888;
                        _3094 = _2887;
                        _3095 = (_2887 * (-_2892)) + (_2886 * _2896);
                        _3096 = (_2887 * (-_2900)) + (_2888 * _2896);
                        _3097 = 0.0f.xxx;
                        _3098 = 3;
                      } else {
                        float3 _3079;
                        float3 _3080;
                        float3 _3081;
                        float3 _3082;
                        float3 _3083;
                        int _3084;
                        if (_2904 == 5) {
                          _3079 = _2888;
                          _3080 = _2887;
                          _3081 = _2886;
                          _3082 = _2885;
                          _3083 = 0.0f.xxx;
                          _3084 = 0;
                        } else {
                          float3 _3073;
                          float3 _3074;
                          float3 _3075;
                          float3 _3076;
                          float3 _3077;
                          int _3078;
                          if (_2904 == 6) {
                            _3073 = (_2887 * (-_2900)) + (_2888 * _2896);
                            _3074 = _2887;
                            _3075 = _2886;
                            _3076 = (_2886 * (-_2889)) + (_2885 * _2892);
                            _3077 = 0.0f.xxx;
                            _3078 = 4;
                          } else {
                            float3 _3059;
                            float3 _3060;
                            float3 _3061;
                            float3 _3062;
                            float3 _3063;
                            int _3064;
                            if (_2904 == 7) {
                              float _3052 = -_2900;
                              _3059 = (_2887 * _3052) + (_2888 * _2896);
                              _3060 = _2887;
                              _3061 = _2886;
                              _3062 = _2885;
                              _3063 = (_2885 * _3052) + (_2888 * _2889);
                              _3064 = 5;
                            } else {
                              float3 _3046;
                              float3 _3047;
                              float3 _3048;
                              float3 _3049;
                              float3 _3050;
                              int _3051;
                              if (_2904 == 8) {
                                _3046 = _2888;
                                _3047 = _2888;
                                _3048 = (_2888 * (-_2896)) + (_2887 * _2900);
                                _3049 = (_2888 * (-_2889)) + (_2885 * _2900);
                                _3050 = 0.0f.xxx;
                                _3051 = 3;
                              } else {
                                float3 _3032;
                                float3 _3033;
                                float3 _3034;
                                float3 _3035;
                                float3 _3036;
                                int _3037;
                                if (_2904 == 9) {
                                  _3032 = _2888;
                                  _3033 = (_2888 * (-_2896)) + (_2887 * _2900);
                                  _3034 = (_2885 * (-_2892)) + (_2886 * _2889);
                                  _3035 = _2885;
                                  _3036 = 0.0f.xxx;
                                  _3037 = 4;
                                } else {
                                  float3 _3018;
                                  float3 _3019;
                                  float3 _3020;
                                  float3 _3021;
                                  float3 _3022;
                                  int _3023;
                                  if (_2904 == 10) {
                                    _3018 = _2888;
                                    _3019 = _2887;
                                    _3020 = _2886;
                                    _3021 = _2885;
                                    _3022 = 0.0f.xxx;
                                    _3023 = 0;
                                  } else {
                                    float3 _3012;
                                    float3 _3013;
                                    float3 _3014;
                                    float3 _3015;
                                    float3 _3016;
                                    int _3017;
                                    if (_2904 == 11) {
                                      float _3005 = -_2896;
                                      _3012 = (_2888 * _3005) + (_2887 * _2900);
                                      _3013 = (_2886 * _3005) + (_2887 * _2892);
                                      _3014 = _2886;
                                      _3015 = _2885;
                                      _3016 = _2888;
                                      _3017 = 5;
                                    } else {
                                      float3 _2999;
                                      float3 _3000;
                                      float3 _3001;
                                      float3 _3002;
                                      float3 _3003;
                                      int _3004;
                                      if (_2904 == 12) {
                                        _2999 = _2888;
                                        _3000 = _2887;
                                        _3001 = (_2887 * (-_2892)) + (_2886 * _2896);
                                        _3002 = (_2888 * (-_2889)) + (_2885 * _2900);
                                        _3003 = 0.0f.xxx;
                                        _3004 = 4;
                                      } else {
                                        bool _2957 = _2904 == 13;
                                        float3 _2984;
                                        float3 _2985;
                                        float3 _2986;
                                        float3 _2987;
                                        int _2988;
                                        if (_2957) {
                                          float _2977 = -_2892;
                                          _2984 = (_2887 * _2977) + (_2886 * _2896);
                                          _2985 = (_2885 * _2977) + (_2886 * _2889);
                                          _2986 = _2885;
                                          _2987 = _2888;
                                          _2988 = 5;
                                        } else {
                                          float3 _2974;
                                          float3 _2975;
                                          int _2976;
                                          if (_2904 == 14) {
                                            float _2967 = -_2889;
                                            _2974 = (_2886 * _2967) + (_2885 * _2892);
                                            _2975 = (_2888 * _2967) + (_2885 * _2900);
                                            _2976 = 5;
                                          } else {
                                            _2974 = _2885;
                                            _2975 = 0.0f.xxx;
                                            _2976 = (_2904 == 15) ? 4 : 0;
                                          }
                                          _2984 = _2887;
                                          _2985 = _2886;
                                          _2986 = _2974;
                                          _2987 = _2975;
                                          _2988 = _2976;
                                        }
                                        bool3 _2989 = _2957.xxx;
                                        _2999 = float3(_2989.x ? _2887.x : _2888.x, _2989.y ? _2887.y : _2888.y, _2989.z ? _2887.z : _2888.z);
                                        _3000 = _2984;
                                        _3001 = _2985;
                                        _3002 = _2986;
                                        _3003 = _2987;
                                        _3004 = _2988;
                                      }
                                      _3012 = _2999;
                                      _3013 = _3000;
                                      _3014 = _3001;
                                      _3015 = _3002;
                                      _3016 = _3003;
                                      _3017 = _3004;
                                    }
                                    _3018 = _3012;
                                    _3019 = _3013;
                                    _3020 = _3014;
                                    _3021 = _3015;
                                    _3022 = _3016;
                                    _3023 = _3017;
                                  }
                                  _3032 = _3018;
                                  _3033 = _3019;
                                  _3034 = _3020;
                                  _3035 = _3021;
                                  _3036 = _3022;
                                  _3037 = _3023;
                                }
                                _3046 = _3032;
                                _3047 = _3033;
                                _3048 = _3034;
                                _3049 = _3035;
                                _3050 = _3036;
                                _3051 = _3037;
                              }
                              _3059 = _3046;
                              _3060 = _3047;
                              _3061 = _3048;
                              _3062 = _3049;
                              _3063 = _3050;
                              _3064 = _3051;
                            }
                            _3073 = _3059;
                            _3074 = _3060;
                            _3075 = _3061;
                            _3076 = _3062;
                            _3077 = _3063;
                            _3078 = _3064;
                          }
                          _3079 = _3073;
                          _3080 = _3074;
                          _3081 = _3075;
                          _3082 = _3076;
                          _3083 = _3077;
                          _3084 = _3078;
                        }
                        _3093 = _3079;
                        _3094 = _3080;
                        _3095 = _3081;
                        _3096 = _3082;
                        _3097 = _3083;
                        _3098 = _3084;
                      }
                      _3107 = _3093;
                      _3108 = _3094;
                      _3109 = _3095;
                      _3110 = _3096;
                      _3111 = _3097;
                      _3112 = _3098;
                    }
                    _3121 = _3107;
                    _3122 = _3108;
                    _3123 = _3109;
                    _3124 = _3110;
                    _3125 = _3111;
                    _3126 = _3112;
                  }
                  _3135 = _3121;
                  _3136 = _3122;
                  _3137 = _3123;
                  _3138 = _3124;
                  _3139 = _3125;
                  _3140 = _3126;
                }
                _3141 = _3135;
                _3142 = _3136;
                _3143 = _3137;
                _3144 = _3138;
                _3145 = _3139;
                _3146 = _3140;
              }
              bool3 _3148 = (_3146 == 3).xxx;
              bool3 _3151 = (_3146 == 4).xxx;
              if (_3146 == 0) {
                _3235 = 0.0f;
                break;
              }
              float3 _3156 = normalize(_3144);
              float3 _3157 = normalize(_3143);
              float3 _3158 = normalize(_3142);
              float3 _3159 = normalize(float3(_3148.x ? _3144.x : _3141.x, _3148.y ? _3144.y : _3141.y, _3148.z ? _3144.z : _3141.z));
              float3 _3160 = normalize(float3(_3151.x ? _3144.x : _3145.x, _3151.y ? _3144.y : _3145.y, _3151.z ? _3144.z : _3145.z));
              float _3162 = clamp(dot(_3156, _3157), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3166 = sqrt(1.0f - (_3162 * _3162));
              float _3174 = clamp(dot(_3157, _3158), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3178 = sqrt(1.0f - (_3174 * _3174));
              float _3187 = clamp(dot(_3158, _3159), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3191 = sqrt(1.0f - (_3187 * _3187));
              float _3198 = ((cross(_3156, _3157).z * ((_3166 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3162) / _3166))) + (cross(_3157, _3158).z * ((_3178 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3174) / _3178)))) + (cross(_3158, _3159).z * ((_3191 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3187) / _3191)));
              float _3215;
              if (_3146 >= 4) {
                float _3203 = clamp(dot(_3159, _3160), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3207 = sqrt(1.0f - (_3203 * _3203));
                _3215 = _3198 + (cross(_3159, _3160).z * ((_3207 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3203) / _3207)));
              } else {
                _3215 = _3198;
              }
              float _3232;
              if (_3146 == 5) {
                float _3220 = clamp(dot(_3160, _3156), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3224 = sqrt(1.0f - (_3220 * _3220));
                _3232 = _3215 + (cross(_3160, _3156).z * ((_3224 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3220) / _3224)));
              } else {
                _3232 = _3215;
              }
              _3235 = max(_3232, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3238 = (_2313 & 2u) != 0u;
            uint _3242 = asuint(_52_m6[_2300].w);
            uint _3243 = asuint(_52_m6[_2306].w);
            float3 _3244 = _457 - _52_m6[_2291].xyz;
            float3 _3245 = abs(_3244);
            float _3246 = _3245.x;
            float _3247 = _3245.y;
            float _3249 = _3245.z;
            int _3282;
            if ((_3246 > _3247) && (_3246 > _3249)) {
              _3282 = int((_3244.x > 0.0f) ? (_3242 & 1023u) : ((_3242 >> 10u) & 1023u));
            } else {
              int _3274;
              if (_3247 > _3249) {
                _3274 = int((_3244.y > 0.0f) ? ((_3242 >> 20u) & 1023u) : (_3243 & 1023u));
              } else {
                _3274 = int((_3244.z > 0.0f) ? ((_3243 >> 10u) & 1023u) : ((_3243 >> 20u) & 1023u));
              }
              _3282 = _3274;
            }
            int _3285 = _3238 ? int(_52_m6[_2300].w) : ((_3282 == 1023) ? (-1) : _3282);
            uint _3296 = asuint(_56_m11.x) + (uint(_3285) * 96u);
            uint _3298 = (_3296 + 64u) >> 2u;
            uint _3301 = _3298 + 1u;
            uint _3304 = _3298 + 2u;
            uint _3307 = _3298 + 3u;
            float4 _3311 = asfloat(uint4(_60.Load(_3298 * 4 + 0), _60.Load(_3301 * 4 + 0), _60.Load(_3304 * 4 + 0), _60.Load(_3307 * 4 + 0)));
            float3 _3318 = (_457 - ((_3244 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3244, _3244)))) * _3311.x)) + (_608 * (_3311.y * 5.0f));
            uint _3319 = _3296 >> 2u;
            uint _3334 = (_3296 + 16u) >> 2u;
            uint _3349 = (_3296 + 32u) >> 2u;
            uint _3364 = (_3296 + 48u) >> 2u;
            float4 _3384 = mul(transpose(float4x4(asfloat(uint4(_60.Load(_3319 * 4 + 0), _60.Load((_3319 + 1u) * 4 + 0), _60.Load((_3319 + 2u) * 4 + 0), _60.Load((_3319 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3334 * 4 + 0), _60.Load((_3334 + 1u) * 4 + 0), _60.Load((_3334 + 2u) * 4 + 0), _60.Load((_3334 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3349 * 4 + 0), _60.Load((_3349 + 1u) * 4 + 0), _60.Load((_3349 + 2u) * 4 + 0), _60.Load((_3349 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3364 * 4 + 0), _60.Load((_3364 + 1u) * 4 + 0), _60.Load((_3364 + 2u) * 4 + 0), _60.Load((_3364 + 3u) * 4 + 0))))), float4(_3318, 1.0f));
            float _3385 = _3384.w;
            float3 _3388 = _3384.xyz / _3385.xxx;
            uint _3390 = (_3296 + 80u) >> 2u;
            float4 _3403 = asfloat(uint4(_60.Load(_3390 * 4 + 0), _60.Load((_3390 + 1u) * 4 + 0), _60.Load((_3390 + 2u) * 4 + 0), _60.Load((_3390 + 3u) * 4 + 0)));
            float2 _3404 = _3388.xy;
            float2 _3406 = _3403.xy;
            float3 _3410 = _3388.xyz;
            bool3 _3411 = bool3(_3410.x <= 0.0f.xxx.x, _3410.y <= 0.0f.xxx.y, _3410.z <= 0.0f.xxx.z);
            bool3 _3412 = bool3(_3410.x >= 1.0f.xxx.x, _3410.y >= 1.0f.xxx.y, _3410.z >= 1.0f.xxx.z);
            float _3415 = _3388.z;
            float2 _3426 = ((_3404 * (_3403.zw - _3406)) + _3406).xy * _56_m10.zw;
            float2 _3428 = floor(_3426 + 0.5f.xx);
            float2 _3429 = _3426 - _3428;
            float _3430 = _3429.x;
            float _3431 = _3430 + 0.5f;
            float _3432 = _3431 * _3431;
            float _3435 = 1.0f - _3430;
            float _3436 = min(_3430, 0.0f);
            float _3439 = _3430 + 1.0f;
            float _3440 = max(_3430, 0.0f);
            float _3451 = _3429.y;
            float _3452 = _3451 + 0.5f;
            float _3453 = _3452 * _3452;
            float _3456 = 1.0f - _3451;
            float _3457 = min(_3451, 0.0f);
            float _3460 = _3451 + 1.0f;
            float _3461 = max(_3451, 0.0f);
            float3 _3473 = float3(0.1599999964237213134765625f * _3435, 0.1599999964237213134765625f * ((_3439 - (_3440 * _3440)) + 1.0f), _3432 * 0.07999999821186065673828125f);
            float3 _3474 = float3(0.1599999964237213134765625f * ((_3432 * 0.5f) - _3430), 0.1599999964237213134765625f * ((_3435 - (_3436 * _3436)) + 1.0f), 0.1599999964237213134765625f * _3439) + _3473;
            float3 _3476 = float3(0.1599999964237213134765625f * _3456, 0.1599999964237213134765625f * ((_3460 - (_3461 * _3461)) + 1.0f), _3453 * 0.07999999821186065673828125f);
            float3 _3477 = float3(0.1599999964237213134765625f * ((_3453 * 0.5f) - _3451), 0.1599999964237213134765625f * ((_3456 - (_3457 * _3457)) + 1.0f), 0.1599999964237213134765625f * _3460) + _3476;
            float3 _3483 = ((_3473 / _3474) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.xxx;
            float3 _3485 = ((_3476 / _3477) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.yyy;
            float2 _3487 = _3428 * _56_m10.xy;
            float _3488 = _3483.x;
            float _3489 = _3485.x;
            float2 _3491 = _3487 + float2(_3488, _3489);
            float _3492 = _3483.y;
            float2 _3494 = _3487 + float2(_3492, _3489);
            float _3495 = _3483.z;
            float2 _3497 = _3487 + float2(_3495, _3489);
            float _3498 = _3485.y;
            float2 _3500 = _3487 + float2(_3488, _3498);
            float2 _3502 = _3487 + float2(_3492, _3498);
            float2 _3504 = _3487 + float2(_3495, _3498);
            float _3505 = _3485.z;
            float2 _3507 = _3487 + float2(_3488, _3505);
            float2 _3509 = _3487 + float2(_3492, _3505);
            float2 _3511 = _3487 + float2(_3495, _3505);
            float _3512 = _3474.x;
            float _3513 = _3477.x;
            float _3515 = _3474.y;
            float _3517 = _3474.z;
            float _3519 = _3477.y;
            float _3523 = _3477.z;
            float _3589 = ((((((((_3512 * _3513) * _58.SampleCmpLevelZero(_27, float3(_3491, _388).xy, _3415)) + ((_3515 * _3513) * _58.SampleCmpLevelZero(_27, float3(_3494, _388).xy, _3415))) + ((_3517 * _3513) * _58.SampleCmpLevelZero(_27, float3(_3497, _388).xy, _3415))) + ((_3512 * _3519) * _58.SampleCmpLevelZero(_27, float3(_3500, _388).xy, _3415))) + ((_3515 * _3519) * _58.SampleCmpLevelZero(_27, float3(_3502, _388).xy, _3415))) + ((_3517 * _3519) * _58.SampleCmpLevelZero(_27, float3(_3504, _388).xy, _3415))) + ((_3512 * _3523) * _58.SampleCmpLevelZero(_27, float3(_3507, _388).xy, _3415))) + ((_3515 * _3523) * _58.SampleCmpLevelZero(_27, float3(_3509, _388).xy, _3415));
            float4 _3604 = asfloat(uint4(_60.Load(_3298 * 4 + 0), _60.Load(_3301 * 4 + 0), _60.Load(_3304 * 4 + 0), _60.Load(_3307 * 4 + 0)));
            float _3605 = _3604.w;
            float2 _3607 = min(_3404, 1.0f.xx - _3404);
            _3624 = ((_52_m6[_2288].xyz * (((((_752 * _2452.x) + ((1.0f.xxx - _752) * _2452.y)) * _2847) * _52_m6[_2309].z) + (_748 * _3235))) * _2425) * ((_3285 >= 0) ? lerp(1.0f, (any(bool3(_3411.x || _3412.x, _3411.y || _3412.y, _3411.z || _3412.z)) || ((asuint(_3415) & 2147483647u) > 2139095040u)) ? 1.0f : (_3589 + ((_3517 * _3523) * _58.SampleCmpLevelZero(_27, float3(_3511, _388).xy, _3415))), _3238 ? min(_3605, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3604.z - _3385) * 0.25f, min(_3607.x, _3607.y)))) : _3605) : 1.0f);
            break;
          } while (false);
          _4924 = _2248;
          _4925 = _3624 * _2388;
          break;
        }
        float _4922;
        float3 _4923;
        if (_52_m6[_2288].w < 1.5f) {
          float3 _4204 = float3(0.100000001490116119384765625f, _580, 1.0f);
          float _4213 = (0.5f + (0.5f * _52_m6[_2294].y)) - abs(_52_m6[_2294].x);
          float _4214 = _52_m6[_2294].y - _4213;
          float _4221 = abs(max((1.0f - abs(_4213)) - abs(_4214), 0.00048828125f));
          float3 _4225 = normalize(float3(_4213, _4214, (_52_m6[_2294].x >= 0.0f) ? _4221 : (-_4221)));
          float3 _4226 = _52_m6[_2291].xyz - _457;
          float _4227 = dot(_4226, _4226);
          float _4228 = rsqrt(_4227);
          float3 _4229 = _4226 * _4228;
          float _4233 = clamp(_52_m6[_2309].y * _4228, 0.0f, 1.0f);
          int _4238 = int(_52_m6[_2309].w);
          float3 _4239 = _4225 * _52_m6[_2294].z;
          float3 _4240 = _4239 * 0.5f;
          float3 _4241 = _4226 - _4240;
          float3 _4242 = _4226 + _4240;
          bool _4244 = (_2392 & 1u) == 0u;
          bool _4247 = _4244 || ((_2313 & 2u) != 0u);
          bool _4250 = (!_4244) && (_52_m6[_2294].z > 0.0f);
          float _4269;
          float _4270;
          if (_4250) {
            float _4254 = length(_4241);
            float _4255 = length(_4242);
            _4269 = clamp(0.5f * ((dot(_608, _4241) / _4254) + (dot(_608, _4242) / _4255)), 0.0f, 1.0f);
            _4270 = 1.0f / ((((_4254 * _4255) + dot(_4241, _4242)) * 0.5f) + 1.0f);
          } else {
            _4269 = clamp(dot(_608, _4229), 0.0f, 1.0f);
            _4270 = 1.0f;
          }
          float _4292;
          if (_52_m6[_2306].w < 0.0f) {
            float _4286 = _4227 * (_52_m6[_2291].w * _52_m6[_2291].w);
            float _4289 = clamp(1.0f - (_4286 * _4286), 0.0f, 1.0f);
            _4292 = lerp(1.0f / (_4227 + 1.0f), _4270, float(_4250)) * (_4289 * _4289);
          } else {
            float3 _4275 = _4226 * _52_m6[_2291].w;
            _4292 = _4270 * pow(1.0f - clamp(dot(_4275, _4275), 0.0f, 1.0f), _52_m6[_2306].w);
          }
          float _4298 = clamp((dot(_4229, -_4225) - _52_m6[_2294].z) * _52_m6[_2294].w, 0.0f, 1.0f);
          float _4302 = _4292 * lerp(1.0f, _4298 * _4298, float(_4244));
          float _4402;
          if ((!_4250) && (_4238 >= 0)) {
            uint _4308 = uint(_4238);
            float2 _4395;
            [branch] if (_4244) {
              float4 _4385 = mul(_76_m1[_4308], _461);
              _4395 = _76_m0[_4308].xy + (clamp(_4385.xy / _4385.w.xx, 0.0f.xx, 1.0f.xx) * _76_m0[_4308].zw);
            }
            else {
              float3 _4322 = mul(float4(-_4226, 0.0f), _76_m1[_4308]).xyz;
              float3 _394 = _4322;
              float3 _393 = _4322;
              float3 _392 = abs(_4322);
              uint _4331 = uint(int(_392.y > _392.x));
              uint _4337 = (_392.z > _392[_4331]) ? 2u : _4331;
              uint _4343 = (_4337 * 2u) + uint(_393[_4337] < 0.0f);
              float _4347 = abs(_394[_4343 / 2u]);
              float _4367 = 0.5f - (0.000244140625f / _76_m0[_4308].w);
              _4395 = _76_m0[_4308].xy + (clamp(float2((float(_4343) + ((((_394[uint(_367[_4343].x)] * _368[_4343].x) / _4347) * _4367) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_394[uint(_367[_4343].y)] * _368[_4343].y) / _4347) * _4367)), 0.0f.xx, 1.0f.xx) * _76_m0[_4308].zw);
            }
            _4402 = _4302 * _74.SampleLevel(_24, _4395, 0.0f).x;
          } else {
            _4402 = _4302;
          }
          bool _4403 = _4402 > 0.0f;
          float _4787;
          if (_4403) {
            int _4456;
            if (_4247) {
              _4456 = int(_52_m6[_2297].x);
            } else {
              uint _4411 = asuint(_52_m6[_2294].w);
              uint _4412 = asuint(_52_m6[_2297].x);
              float3 _4413 = _457 - _52_m6[_2291].xyz;
              float3 _4414 = abs(_4413);
              float _4415 = _4414.x;
              float _4416 = _4414.y;
              float _4418 = _4414.z;
              int _4451;
              if ((_4415 > _4416) && (_4415 > _4418)) {
                _4451 = int((_4413.x > 0.0f) ? (_4411 & 1023u) : ((_4411 >> 10u) & 1023u));
              } else {
                int _4443;
                if (_4416 > _4418) {
                  _4443 = int((_4413.y > 0.0f) ? ((_4411 >> 20u) & 1023u) : (_4412 & 1023u));
                } else {
                  _4443 = int((_4413.z > 0.0f) ? ((_4412 >> 10u) & 1023u) : ((_4412 >> 20u) & 1023u));
                }
                _4451 = _4443;
              }
              _4456 = (_4451 == 1023) ? (-1) : _4451;
            }
            uint _4463 = asuint(_56_m11.x) + (uint(_4456) * 96u);
            uint _4465 = (_4463 + 64u) >> 2u;
            uint _4468 = _4465 + 1u;
            uint _4471 = _4465 + 2u;
            uint _4474 = _4465 + 3u;
            float4 _4478 = asfloat(uint4(_60.Load(_4465 * 4 + 0), _60.Load(_4468 * 4 + 0), _60.Load(_4471 * 4 + 0), _60.Load(_4474 * 4 + 0)));
            float3 _4485 = (_457 - ((-_4229) * _4478.x)) + (_608 * (_4478.y * 5.0f));
            uint _4486 = _4463 >> 2u;
            uint _4501 = (_4463 + 16u) >> 2u;
            uint _4516 = (_4463 + 32u) >> 2u;
            uint _4531 = (_4463 + 48u) >> 2u;
            float4 _4551 = mul(transpose(float4x4(asfloat(uint4(_60.Load(_4486 * 4 + 0), _60.Load((_4486 + 1u) * 4 + 0), _60.Load((_4486 + 2u) * 4 + 0), _60.Load((_4486 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4501 * 4 + 0), _60.Load((_4501 + 1u) * 4 + 0), _60.Load((_4501 + 2u) * 4 + 0), _60.Load((_4501 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4516 * 4 + 0), _60.Load((_4516 + 1u) * 4 + 0), _60.Load((_4516 + 2u) * 4 + 0), _60.Load((_4516 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_4531 * 4 + 0), _60.Load((_4531 + 1u) * 4 + 0), _60.Load((_4531 + 2u) * 4 + 0), _60.Load((_4531 + 3u) * 4 + 0))))), float4(_4485, 1.0f));
            float _4552 = _4551.w;
            float3 _4555 = _4551.xyz / _4552.xxx;
            uint _4557 = (_4463 + 80u) >> 2u;
            float4 _4570 = asfloat(uint4(_60.Load(_4557 * 4 + 0), _60.Load((_4557 + 1u) * 4 + 0), _60.Load((_4557 + 2u) * 4 + 0), _60.Load((_4557 + 3u) * 4 + 0)));
            float2 _4571 = _4555.xy;
            float2 _4573 = _4570.xy;
            float3 _4577 = _4555.xyz;
            bool3 _4578 = bool3(_4577.x <= 0.0f.xxx.x, _4577.y <= 0.0f.xxx.y, _4577.z <= 0.0f.xxx.z);
            bool3 _4579 = bool3(_4577.x >= 1.0f.xxx.x, _4577.y >= 1.0f.xxx.y, _4577.z >= 1.0f.xxx.z);
            float _4582 = _4555.z;
            float2 _4593 = ((_4571 * (_4570.zw - _4573)) + _4573).xy * _56_m10.zw;
            float2 _4595 = floor(_4593 + 0.5f.xx);
            float2 _4596 = _4593 - _4595;
            float _4597 = _4596.x;
            float _4598 = _4597 + 0.5f;
            float _4599 = _4598 * _4598;
            float _4602 = 1.0f - _4597;
            float _4603 = min(_4597, 0.0f);
            float _4606 = _4597 + 1.0f;
            float _4607 = max(_4597, 0.0f);
            float _4618 = _4596.y;
            float _4619 = _4618 + 0.5f;
            float _4620 = _4619 * _4619;
            float _4623 = 1.0f - _4618;
            float _4624 = min(_4618, 0.0f);
            float _4627 = _4618 + 1.0f;
            float _4628 = max(_4618, 0.0f);
            float3 _4640 = float3(0.1599999964237213134765625f * _4602, 0.1599999964237213134765625f * ((_4606 - (_4607 * _4607)) + 1.0f), _4599 * 0.07999999821186065673828125f);
            float3 _4641 = float3(0.1599999964237213134765625f * ((_4599 * 0.5f) - _4597), 0.1599999964237213134765625f * ((_4602 - (_4603 * _4603)) + 1.0f), 0.1599999964237213134765625f * _4606) + _4640;
            float3 _4643 = float3(0.1599999964237213134765625f * _4623, 0.1599999964237213134765625f * ((_4627 - (_4628 * _4628)) + 1.0f), _4620 * 0.07999999821186065673828125f);
            float3 _4644 = float3(0.1599999964237213134765625f * ((_4620 * 0.5f) - _4618), 0.1599999964237213134765625f * ((_4623 - (_4624 * _4624)) + 1.0f), 0.1599999964237213134765625f * _4627) + _4643;
            float3 _4650 = ((_4640 / _4641) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.xxx;
            float3 _4652 = ((_4643 / _4644) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.yyy;
            float2 _4654 = _4595 * _56_m10.xy;
            float _4655 = _4650.x;
            float _4656 = _4652.x;
            float2 _4658 = _4654 + float2(_4655, _4656);
            float _4659 = _4650.y;
            float2 _4661 = _4654 + float2(_4659, _4656);
            float _4662 = _4650.z;
            float2 _4664 = _4654 + float2(_4662, _4656);
            float _4665 = _4652.y;
            float2 _4667 = _4654 + float2(_4655, _4665);
            float2 _4669 = _4654 + float2(_4659, _4665);
            float2 _4671 = _4654 + float2(_4662, _4665);
            float _4672 = _4652.z;
            float2 _4674 = _4654 + float2(_4655, _4672);
            float2 _4676 = _4654 + float2(_4659, _4672);
            float2 _4678 = _4654 + float2(_4662, _4672);
            float _4679 = _4641.x;
            float _4680 = _4644.x;
            float _4682 = _4641.y;
            float _4684 = _4641.z;
            float _4686 = _4644.y;
            float _4690 = _4644.z;
            float _4756 = ((((((((_4679 * _4680) * _58.SampleCmpLevelZero(_27, float3(_4658, _388).xy, _4582)) + ((_4682 * _4680) * _58.SampleCmpLevelZero(_27, float3(_4661, _388).xy, _4582))) + ((_4684 * _4680) * _58.SampleCmpLevelZero(_27, float3(_4664, _388).xy, _4582))) + ((_4679 * _4686) * _58.SampleCmpLevelZero(_27, float3(_4667, _388).xy, _4582))) + ((_4682 * _4686) * _58.SampleCmpLevelZero(_27, float3(_4669, _388).xy, _4582))) + ((_4684 * _4686) * _58.SampleCmpLevelZero(_27, float3(_4671, _388).xy, _4582))) + ((_4679 * _4690) * _58.SampleCmpLevelZero(_27, float3(_4674, _388).xy, _4582))) + ((_4682 * _4690) * _58.SampleCmpLevelZero(_27, float3(_4676, _388).xy, _4582));
            float4 _4771 = asfloat(uint4(_60.Load(_4465 * 4 + 0), _60.Load(_4468 * 4 + 0), _60.Load(_4471 * 4 + 0), _60.Load(_4474 * 4 + 0)));
            float _4772 = _4771.w;
            float2 _4774 = min(_4571, 1.0f.xx - _4571);
            _4787 = (_4456 >= 0) ? lerp(1.0f, (any(bool3(_4578.x || _4579.x, _4578.y || _4579.y, _4578.z || _4579.z)) || ((asuint(_4582) & 2147483647u) > 2139095040u)) ? 1.0f : (_4756 + ((_4684 * _4690) * _58.SampleCmpLevelZero(_27, float3(_4678, _388).xy, _4582))), _4247 ? min(_4772, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4771.z - _4552) * 0.25f, min(_4774.x, _4774.y)))) : _4772) : 1.0f;
          } else {
            _4787 = 1.0f;
          }
          float3 _4810;
          float3 _4811;
          if (_4250) {
            float3 _4790 = _4204 * _4204;
            float _4799 = dot(_1230, _4239);
            _4810 = _4790 / clamp(_4790 + (0.5f * clamp(_52_m6[_2294].z * _4228, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4811 = normalize(_4241 + (_4239 * clamp(dot(_4241, (_1230 * _4799) - _4239) / ((_52_m6[_2294].z * _52_m6[_2294].z) - (_4799 * _4799)), 0.0f, 1.0f)));
          } else {
            _4810 = 1.0f.xxx;
            _4811 = _4229;
          }
          float3 _4812 = _4811 + _494;
          float3 _4816 = _4812 * rsqrt(max(6.103515625e-05f, dot(_4812, _4812)));
          float3 _4921;
          if (_4403) {
            float _4819 = clamp(_4269, 0.0f, 1.0f);
            float _4821 = clamp(dot(_608, _4816), 0.0f, 1.0f);
            float _4823 = clamp(dot(_494, _4816), 0.0f, 1.0f);
            float _4824 = clamp(_634, 0.0f, 1.0f);
            float _4825 = _580 * _580;
            float _4835;
            if (_4233 > 0.0f) {
              _4835 = clamp(_4825 + ((_4233 * _4233) / ((_4823 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4835 = _4825;
            }
            float _4836 = _4835 * _4835;
            float _4857 = (((_4821 * _4836) - _4821) * _4821) + 1.0f;
            float _4862 = 1.0f - _4823;
            float _4863 = _4862 * _4862;
            float _4865 = (_4862 * _4863) * _4863;
            float _4889 = 1.0f - _580;
            float _4896 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4889 * (1.04997003078460693359375f + (_4889 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4889))))));
            float _4897 = 1.0f - _4896;
            float3 _4900 = _752 + ((1.0f.xxx - _752) * 0.0476190485060214996337890625f);
            float3 _4920 = ((clamp((min(((_752 * (1.0f - _4865)) + _4865.xxx) * (((_4836 / (_4857 * _4857)) * _4810.y) * (0.5f / (((_4819 * sqrt(((((-_4824) * _4836) + _4824) * _4824) + _4836)) + (_4824 * sqrt(((((-_4819) * _4836) + _4819) * _4819) + _4836))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4900 * (((_66.SampleLevel(_24, (float2(_4824, _580) * 0.96875f) + 0.015625f.xx, 0.0f).x * _66.SampleLevel(_24, (float2(_4819, _580) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4896) / _4897)) * _4900) / (1.0f.xxx - (_4900 * _4897)))) * _52_m6[_2309].z, 0.0f.xxx, 1000.0f.xxx) * _4269) + ((_748 * _4810.z) * _4269)) * (((_52_m6[_2288].xyz * _4402) * _4787) * _2388);
            _4921 = _4920;
          } else {
            _4921 = 0.0f.xxx;
          }
          _4922 = _2248;
          _4923 = _4921;
        } else {
          float _4202;
          do {
            if (_2395) {
              _4202 = 1.0f;
              break;
            }
            float _3641 = (0.5f + (0.5f * _52_m6[_2294].y)) - abs(_52_m6[_2294].x);
            float _3642 = _52_m6[_2294].y - _3641;
            float _3649 = abs(max((1.0f - abs(_3641)) - abs(_3642), 0.00048828125f));
            float3 _3653 = normalize(float3(_3641, _3642, (_52_m6[_2294].x >= 0.0f) ? _3649 : (-_3649)));
            float3 _3654 = _52_m6[_2291].xyz - _457;
            float _3655 = dot(_3654, _3654);
            float3 _3657 = _3654 * rsqrt(_3655);
            int _3660 = int(_52_m6[_2309].w);
            float3 _3662 = (_3653 * _52_m6[_2294].z) * 0.5f;
            float3 _3663 = _3654 - _3662;
            float3 _3664 = _3654 + _3662;
            bool _3666 = (_2392 & 1u) == 0u;
            bool _3669 = _3666 || ((_2313 & 2u) != 0u);
            bool _3672 = (!_3666) && (_52_m6[_2294].z > 0.0f);
            float _3684;
            if (_3672) {
              _3684 = 1.0f / ((((length(_3663) * length(_3664)) + dot(_3663, _3664)) * 0.5f) + 1.0f);
            } else {
              _3684 = 1.0f;
            }
            float _3706;
            if (_52_m6[_2306].w < 0.0f) {
              float _3700 = _3655 * (_52_m6[_2291].w * _52_m6[_2291].w);
              float _3703 = clamp(1.0f - (_3700 * _3700), 0.0f, 1.0f);
              _3706 = lerp(1.0f / (_3655 + 1.0f), _3684, float(_3672)) * (_3703 * _3703);
            } else {
              float3 _3689 = _3654 * _52_m6[_2291].w;
              _3706 = _3684 * pow(1.0f - clamp(dot(_3689, _3689), 0.0f, 1.0f), _52_m6[_2306].w);
            }
            float _3712 = clamp((dot(_3657, -_3653) - _52_m6[_2294].z) * _52_m6[_2294].w, 0.0f, 1.0f);
            float _3716 = _3706 * lerp(1.0f, _3712 * _3712, float(_3666));
            float _3816;
            if ((!_3672) && (_3660 >= 0)) {
              uint _3722 = uint(_3660);
              float2 _3809;
              [branch] if (_3666) {
                float4 _3799 = mul(_76_m1[_3722], _461);
                _3809 = _76_m0[_3722].xy + (clamp(_3799.xy / _3799.w.xx, 0.0f.xx, 1.0f.xx) * _76_m0[_3722].zw);
              }
              else {
                float3 _3736 = mul(float4(-_3654, 0.0f), _76_m1[_3722]).xyz;
                float3 _397 = _3736;
                float3 _396 = _3736;
                float3 _395 = abs(_3736);
                uint _3745 = uint(int(_395.y > _395.x));
                uint _3751 = (_395.z > _395[_3745]) ? 2u : _3745;
                uint _3757 = (_3751 * 2u) + uint(_396[_3751] < 0.0f);
                float _3761 = abs(_397[_3757 / 2u]);
                float _3781 = 0.5f - (0.000244140625f / _76_m0[_3722].w);
                _3809 = _76_m0[_3722].xy + (clamp(float2((float(_3757) + ((((_397[uint(_367[_3757].x)] * _368[_3757].x) / _3761) * _3781) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_397[uint(_367[_3757].y)] * _368[_3757].y) / _3761) * _3781)), 0.0f.xx, 1.0f.xx) * _76_m0[_3722].zw);
              }
              _3816 = _3716 * _74.SampleLevel(_24, _3809, 0.0f).x;
            } else {
              _3816 = _3716;
            }
            float _4201;
            if (_3816 > 0.0f) {
              int _3870;
              if (_3669) {
                _3870 = int(_52_m6[_2297].x);
              } else {
                uint _3825 = asuint(_52_m6[_2294].w);
                uint _3826 = asuint(_52_m6[_2297].x);
                float3 _3827 = _457 - _52_m6[_2291].xyz;
                float3 _3828 = abs(_3827);
                float _3829 = _3828.x;
                float _3830 = _3828.y;
                float _3832 = _3828.z;
                int _3865;
                if ((_3829 > _3830) && (_3829 > _3832)) {
                  _3865 = int((_3827.x > 0.0f) ? (_3825 & 1023u) : ((_3825 >> 10u) & 1023u));
                } else {
                  int _3857;
                  if (_3830 > _3832) {
                    _3857 = int((_3827.y > 0.0f) ? ((_3825 >> 20u) & 1023u) : (_3826 & 1023u));
                  } else {
                    _3857 = int((_3827.z > 0.0f) ? ((_3826 >> 10u) & 1023u) : ((_3826 >> 20u) & 1023u));
                  }
                  _3865 = _3857;
                }
                _3870 = (_3865 == 1023) ? (-1) : _3865;
              }
              uint _3877 = asuint(_56_m11.x) + (uint(_3870) * 96u);
              uint _3879 = (_3877 + 64u) >> 2u;
              uint _3882 = _3879 + 1u;
              uint _3885 = _3879 + 2u;
              uint _3888 = _3879 + 3u;
              float4 _3892 = asfloat(uint4(_60.Load(_3879 * 4 + 0), _60.Load(_3882 * 4 + 0), _60.Load(_3885 * 4 + 0), _60.Load(_3888 * 4 + 0)));
              float3 _3899 = (_457 - ((-_3657) * _3892.x)) + (_608 * (_3892.y * 5.0f));
              uint _3900 = _3877 >> 2u;
              uint _3915 = (_3877 + 16u) >> 2u;
              uint _3930 = (_3877 + 32u) >> 2u;
              uint _3945 = (_3877 + 48u) >> 2u;
              float4 _3965 = mul(transpose(float4x4(asfloat(uint4(_60.Load(_3900 * 4 + 0), _60.Load((_3900 + 1u) * 4 + 0), _60.Load((_3900 + 2u) * 4 + 0), _60.Load((_3900 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3915 * 4 + 0), _60.Load((_3915 + 1u) * 4 + 0), _60.Load((_3915 + 2u) * 4 + 0), _60.Load((_3915 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3930 * 4 + 0), _60.Load((_3930 + 1u) * 4 + 0), _60.Load((_3930 + 2u) * 4 + 0), _60.Load((_3930 + 3u) * 4 + 0))), asfloat(uint4(_60.Load(_3945 * 4 + 0), _60.Load((_3945 + 1u) * 4 + 0), _60.Load((_3945 + 2u) * 4 + 0), _60.Load((_3945 + 3u) * 4 + 0))))), float4(_3899, 1.0f));
              float _3966 = _3965.w;
              float3 _3969 = _3965.xyz / _3966.xxx;
              uint _3971 = (_3877 + 80u) >> 2u;
              float4 _3984 = asfloat(uint4(_60.Load(_3971 * 4 + 0), _60.Load((_3971 + 1u) * 4 + 0), _60.Load((_3971 + 2u) * 4 + 0), _60.Load((_3971 + 3u) * 4 + 0)));
              float2 _3985 = _3969.xy;
              float2 _3987 = _3984.xy;
              float3 _3991 = _3969.xyz;
              bool3 _3992 = bool3(_3991.x <= 0.0f.xxx.x, _3991.y <= 0.0f.xxx.y, _3991.z <= 0.0f.xxx.z);
              bool3 _3993 = bool3(_3991.x >= 1.0f.xxx.x, _3991.y >= 1.0f.xxx.y, _3991.z >= 1.0f.xxx.z);
              float _3996 = _3969.z;
              float2 _4007 = ((_3985 * (_3984.zw - _3987)) + _3987).xy * _56_m10.zw;
              float2 _4009 = floor(_4007 + 0.5f.xx);
              float2 _4010 = _4007 - _4009;
              float _4011 = _4010.x;
              float _4012 = _4011 + 0.5f;
              float _4013 = _4012 * _4012;
              float _4016 = 1.0f - _4011;
              float _4017 = min(_4011, 0.0f);
              float _4020 = _4011 + 1.0f;
              float _4021 = max(_4011, 0.0f);
              float _4032 = _4010.y;
              float _4033 = _4032 + 0.5f;
              float _4034 = _4033 * _4033;
              float _4037 = 1.0f - _4032;
              float _4038 = min(_4032, 0.0f);
              float _4041 = _4032 + 1.0f;
              float _4042 = max(_4032, 0.0f);
              float3 _4054 = float3(0.1599999964237213134765625f * _4016, 0.1599999964237213134765625f * ((_4020 - (_4021 * _4021)) + 1.0f), _4013 * 0.07999999821186065673828125f);
              float3 _4055 = float3(0.1599999964237213134765625f * ((_4013 * 0.5f) - _4011), 0.1599999964237213134765625f * ((_4016 - (_4017 * _4017)) + 1.0f), 0.1599999964237213134765625f * _4020) + _4054;
              float3 _4057 = float3(0.1599999964237213134765625f * _4037, 0.1599999964237213134765625f * ((_4041 - (_4042 * _4042)) + 1.0f), _4034 * 0.07999999821186065673828125f);
              float3 _4058 = float3(0.1599999964237213134765625f * ((_4034 * 0.5f) - _4032), 0.1599999964237213134765625f * ((_4037 - (_4038 * _4038)) + 1.0f), 0.1599999964237213134765625f * _4041) + _4057;
              float3 _4064 = ((_4054 / _4055) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.xxx;
              float3 _4066 = ((_4057 / _4058) + float3(-2.5f, -0.5f, 1.5f)) * _56_m10.yyy;
              float2 _4068 = _4009 * _56_m10.xy;
              float _4069 = _4064.x;
              float _4070 = _4066.x;
              float2 _4072 = _4068 + float2(_4069, _4070);
              float _4073 = _4064.y;
              float2 _4075 = _4068 + float2(_4073, _4070);
              float _4076 = _4064.z;
              float2 _4078 = _4068 + float2(_4076, _4070);
              float _4079 = _4066.y;
              float2 _4081 = _4068 + float2(_4069, _4079);
              float2 _4083 = _4068 + float2(_4073, _4079);
              float2 _4085 = _4068 + float2(_4076, _4079);
              float _4086 = _4066.z;
              float2 _4088 = _4068 + float2(_4069, _4086);
              float2 _4090 = _4068 + float2(_4073, _4086);
              float2 _4092 = _4068 + float2(_4076, _4086);
              float _4093 = _4055.x;
              float _4094 = _4058.x;
              float _4096 = _4055.y;
              float _4098 = _4055.z;
              float _4100 = _4058.y;
              float _4104 = _4058.z;
              float _4170 = ((((((((_4093 * _4094) * _58.SampleCmpLevelZero(_27, float3(_4072, _388).xy, _3996)) + ((_4096 * _4094) * _58.SampleCmpLevelZero(_27, float3(_4075, _388).xy, _3996))) + ((_4098 * _4094) * _58.SampleCmpLevelZero(_27, float3(_4078, _388).xy, _3996))) + ((_4093 * _4100) * _58.SampleCmpLevelZero(_27, float3(_4081, _388).xy, _3996))) + ((_4096 * _4100) * _58.SampleCmpLevelZero(_27, float3(_4083, _388).xy, _3996))) + ((_4098 * _4100) * _58.SampleCmpLevelZero(_27, float3(_4085, _388).xy, _3996))) + ((_4093 * _4104) * _58.SampleCmpLevelZero(_27, float3(_4088, _388).xy, _3996))) + ((_4096 * _4104) * _58.SampleCmpLevelZero(_27, float3(_4090, _388).xy, _3996));
              float4 _4185 = asfloat(uint4(_60.Load(_3879 * 4 + 0), _60.Load(_3882 * 4 + 0), _60.Load(_3885 * 4 + 0), _60.Load(_3888 * 4 + 0)));
              float _4186 = _4185.w;
              float2 _4188 = min(_3985, 1.0f.xx - _3985);
              _4201 = (_3870 >= 0) ? lerp(1.0f, (any(bool3(_3992.x || _3993.x, _3992.y || _3993.y, _3992.z || _3993.z)) || ((asuint(_3996) & 2147483647u) > 2139095040u)) ? 1.0f : (_4170 + ((_4098 * _4104) * _58.SampleCmpLevelZero(_27, float3(_4092, _388).xy, _3996))), _3669 ? min(_4186, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4185.z - _3966) * 0.25f, min(_4188.x, _4188.y)))) : _4186) : 1.0f;
            } else {
              _4201 = 1.0f;
            }
            _4202 = _4201;
            break;
          } while (false);
          _4922 = _2248 * _4202;
          _4923 = 0.0f.xxx;
        }
        _4924 = _4922;
        _4925 = _4923;
        break;
      } while (false);
      _2273 = _4924;
      _2276 = _2275 + _4925;
    }
    _2245 = _2244 + _2275;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x88A94925:
  float3 _4935 = ((((float3(_1210, _1215, _1220) * _748) * lerp(1.0f, _550.z, _47_m4)) * _18_m22.x) + ((_1530 * ((_752 * _766.x) + (clamp(50.0f * _752.y, 0.0f, 1.0f) * _766.y).xxx)) * 1.0f)) + lerp((_2219.xyz + (_2244 * _2247)).xyz, (_694.xyz * (_47_m54.xyz * _47_m52)).xyz, clamp((1.0f - _575) / max(1.0f - _47_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  */
  float3 _4935 = ((((float3(_1210, _1215, _1220) * (_748 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _550.z, _47_m4)) * _18_m22.x) + (((_1530 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * ((_752 * _766.x) + (clamp(50.0f * _752.y, 0.0f, 1.0f) * _766.y).xxx)) * 1.0f)) + lerp((_2219.xyz + ((_2244 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2247)).xyz, (_694.xyz * (_47_m54.xyz * _47_m52)).xyz, clamp((1.0f - _575) / max(1.0f - _47_m51, 0.00999999977648258209228515625f), 0.0f, 1.0f).xxx).xyz;
  // RenoDX code end
  float4 _4936 = float4(_4935.x, _4935.y, _4935.z, _389.w);
  _4936.w = _575;
  float _4953 = _457.y * _18_m46.w;
  float _4958 = max(0.00999999977648258209228515625f, _4953 + _18_m47.w);
  float3 _4972 = exp(_18_m45.xyz * ((-max(0.0f, (_495 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4958)) / _4958) * exp(_4953 + _18_m48.w))));
  float _4975 = dot(_635, _18_m44.xyz);
  float _4981 = _18_m45.w * _18_m45.w;
  float _4985 = (1.0f + _4981) - ((2.0f * _18_m45.w) * _4975);
  float3 _5315;
  float _5316;
  if (_18_m55.z > 0.0f) {
    uint3 _5143 = (uint3(int3(int(_802.x), int(_802.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5144 = _5143.y;
    uint _5145 = _5143.z;
    uint _5148 = _5143.x + (_5144 * _5145);
    uint _5150 = _5144 + (_5145 * _5148);
    uint _5152 = _5145 + (_5148 * _5150);
    uint _5154 = _5148 + (_5150 * _5152);
    float _5176 = dot(_635, -_16_m0[2].xyz);
    float3 _5186 = _457 - _16_m11.xyz;
    float _5188 = (_18_m55.w * ((_5176 > 5.9604644775390625e-08f) ? (1.0f / _5176) : 0.0f)) * (1.0f / _495);
    float _5189 = _5186.y;
    float _5190 = _5188 * _5189;
    float _5192 = _16_m11.y + _5190;
    float _5193 = _5189 - _5190;
    float _5195 = (1.0f - _5188) * _495;
    float _5209 = max(-127.0f, _18_m49.z * _5193);
    float _5233 = max(-127.0f, _18_m52.x * _5193);
    float _5244 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5192 - _18_m49.x)))) * ((abs(_5209) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5209)) / _5209) : (0.693147182464599609375f - (0.2402265071868896484375f * _5209)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5192 - _18_m52.z)))) * ((abs(_5233) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5233)) / _5233) : (0.693147182464599609375f - (0.2402265071868896484375f * _5233))));
    float _5266 = clamp((_495 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5269 = clamp((max(clamp(exp2(-(_5244 * _5195)), 0.0f, 1.0f), _18_m51.w) + clamp((_495 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5266, 0.0f, 1.0f);
    float4 _5309 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _73.SampleLevel(_24, float3((_1239 + ((((float3(uint3(_5154, _5150 + (_5152 * _5154), _390) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_803 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_803 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5315 = _5309.xyz + (((_18_m51.xyz * (1.0f - _5269)) + (((_18_m54.xyz * pow(clamp(dot(_494, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5244 * max(_5195 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5266))) * _5309.w);
    _5316 = _5309.w * _5269;
  } else {
    float3 _5015 = _457 - _16_m11.xyz;
    float _5017 = _5015.y;
    float _5031 = max(-127.0f, _18_m49.z * _5017);
    float _5055 = max(-127.0f, _18_m52.x * _5017);
    float _5066 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5031) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5031)) / _5031) : (0.693147182464599609375f - (0.2402265071868896484375f * _5031)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5055) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5055)) / _5055) : (0.693147182464599609375f - (0.2402265071868896484375f * _5055))));
    float _5088 = clamp((_495 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5091 = clamp((max(clamp(exp2(-(_5066 * _495)), 0.0f, 1.0f), _18_m51.w) + clamp((_495 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5088, 0.0f, 1.0f);
    _5315 = (_18_m51.xyz * (1.0f - _5091)) + (((_18_m54.xyz * pow(clamp(dot(_494, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5066 * max(_495 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5088));
    _5316 = _5091;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x88A94925:
  float3 _5322 = ((_4936.xyz * (_4972 * _5316)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4975 * _4975)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4981) / max((12.56637096405029296875f * _4985) * sqrt(_4985), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4972)) * _5316) + _5315)).xyz;
  */
  float3 _5322 = ((_4936.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4972 * _5316)) : (_4972 * _5316))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4975 * _4975)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4981) / max((12.56637096405029296875f * _4985) * sqrt(_4985), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4972)) * _5316 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5315 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5332 = lerp(dot(_5322, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5322, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5342 = min(lerp(((sqrt(sqrt(abs(_720 * 0.5f))) * float2(int2(sign(_720)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _707.xx), 1.0f.xx);
  float4 _5343 = float4(_5342.x, _5342.y, _389.z, _389.w);
  _5343.z = float(clamp(max(dot(_5332.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _575, _575) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5343.w = lerp(0.0f, 0.699999988079071044921875f, _707);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x88A94925:
  _13 = float4(_5332.x, _5332.y, _5332.z, _4936.w);
  */
  float3 renodx_output_color = float3(_5332.x, _5332.y, _5332.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4936.w);
  // RenoDX code end
  _14 = _5343;
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

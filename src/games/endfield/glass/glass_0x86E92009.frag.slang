#include "../shared.h"

// Ported from the native 0x86E92009 Vulkan dump.
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

struct _42 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _387;
static float4 _388;
static uint _389;

static const float4 _365[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _366[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _367[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
[[vk::binding(0, 1)]] cbuffer _38_39 : register(b0, space1) {
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
  float _39_m64 : packoffset(c28);
  float _39_m65 : packoffset(c28.y);
  float _39_m66 : packoffset(c28.z);
  float _39_m67 : packoffset(c28.w);
  float _39_m68 : packoffset(c29);
  float _39_m69 : packoffset(c29.y);
  float _39_m70 : packoffset(c29.z);
  float _39_m71 : packoffset(c29.w);
  float _39_m72 : packoffset(c30);
  float _39_m73 : packoffset(c30.y);
  float _39_m74 : packoffset(c30.z);
  float _39_m75 : packoffset(c30.w);
  float _39_m76 : packoffset(c31);
  float _39_m77 : packoffset(c31.y);
  float _39_m78 : packoffset(c31.z);
  float _39_m79 : packoffset(c31.w);
  float _39_m80 : packoffset(c32);
  float _39_m81 : packoffset(c32.y);
  float _39_m82 : packoffset(c32.z);
  float _39_m83 : packoffset(c32.w);
  float _39_m84 : packoffset(c33);
  float _39_m85 : packoffset(c33.y);
  float _39_m86 : packoffset(c33.z);
  float _39_m87 : packoffset(c33.w);
  float4 _39_m88 : packoffset(c34);
  float4 _39_m89 : packoffset(c35);
  float4 _39_m90 : packoffset(c36);
  float4 _39_m91 : packoffset(c37);
  float4 _39_m92 : packoffset(c38);
};

[[vk::binding(16, 0)]] cbuffer _41_43 : register(b16, space0) {
  float4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c1);
  float4 _43_m2 : packoffset(c2);
  float4 _43_m3 : packoffset(c3);
  _42 _43_m4[32] : packoffset(c4);
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

[[vk::binding(49, 0)]] cbuffer _46_47 : register(b49, space0) {
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
[[vk::binding(4, 1)]] Texture2D<float4> _32 : register(t4, space1);
[[vk::binding(2, 1)]] SamplerState _33 : register(s2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3, space1);
[[vk::binding(1, 1)]] SamplerState _35 : register(s1, space1);
[[vk::binding(22, 0)]] Texture2D<float4> _36 : register(t22, space0);
[[vk::binding(20, 0)]] SamplerState _37 : register(s20, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _50 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _51 : register(t26, space0);
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
  float _415 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
  float _424 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_39_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _426 = abs(_424);
  if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _426 : (-_426)), (1.0f - _415) - _424) < 0.0f) {
    discard;
  }
  float2 _443 = gl_FragCoord.xy * _18_m0.zw;
  float2 _446 = (_443 * 2.0f) - 1.0f.xx;
  float4 _449 = float4(_446, gl_FragCoord.z, 1.0f);
  _449.y = -_446.y;
  float4 _452 = mul(_16_m6, _449);
  float3 _456 = _452.xyz / _452.w.xxx;
  float4 _460 = float4(_456, 1.0f);
  float _467 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _474 = cross(_6, float4(_7.xyz, _467).xyz) * _467;
  float3 _489;
  do {
    if (_18_m4.w == 0.0f) {
      _489 = _16_m11.xyz - _456;
      break;
    } else {
      _489 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _490 = dot(_489, _489);
  float _492 = rsqrt(max(_490, 9.9999999392252902907785028219223e-09f));
  float3 _493 = _489 * _492;
  float _494 = _490 * _492;
  float4 _527 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
  float _529 = _527.w;
  float4 _532 = _34.SampleBias(_35, (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw, _39_m13 + _18_m16);
  float2 _535 = (_532.xy * 2.0f.xx) - 1.0f.xx;
  float2 _536 = abs(_535);
  bool2 _537 = bool2(_536.x < 0.01200000010430812835693359375f.xx.x, _536.y < 0.01200000010430812835693359375f.xx.y);
  float2 _538 = float2(_537.x ? 0.0f.xx.x : _535.x, _537.y ? 0.0f.xx.y : _535.y);
  float2 _539 = _538 * _39_m0;
  float _544 = max(0.00048828125f, sqrt(clamp(1.0f - dot(_538, _538), 0.0f, 1.0f)));
  float _545 = _539.x;
  float _546 = _539.y;
  float _547 = _532.z;
  float _548 = _532.w;
  float _566 = lerp(_529, _548, _39_m6) * _39_m32.w;
  float _572 = lerp(_566, _566 * _8.x, _39_m64);
  float _577 = lerp(_39_m2, _39_m3, _547);
  float _587 = lerp(_529, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
  float _595 = clamp(_39_m57, 0.0f, 1.0f);
  float _605 = clamp((lerp(1.0f, lerp(lerp(_529, _547, clamp(_39_m57 - 1.0f, 0.0f, 1.0f)), _548, clamp(_39_m57 - 2.0f, 0.0f, 1.0f)), _595) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
  float3 _637 = lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _605) * _39_m56, _595.xxx);
  float _641 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _605);
  float3 _646 = lerp(clamp((_527.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _641).xxx + (_21_m0[_11]._m9.xyz * _641));
  float3 _672;
  [branch] if (_39_m49 > 0.5f) {
    _672 = _637 + ((_39_m55.xyz * ((1.0f - pow(clamp(abs(dot(_493, lerp(normalize(((_7.xyz * _545) + (_474 * _546)) + (_6 * _544)), _6, _39_m53.xxx))) + _39_m50, 0.0f, 1.0f), _39_m51)) * lerp(1.0f, _8.y, _39_m52))) * 1.0f);
  }
  else {
    _672 = _637;
  }
  float3 _693 = ((_7.xyz * _545) + (_474 * _546)) + (_6 * (_544 * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _697 = _693 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_693, _693)));
  float3 _700 = -_493;
  float4 _721 = _36.SampleBias(_37, _443 + ((mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), refract(_700, _697, _39_m60)) * _39_m61).xy * _572), _18_m16);
  float _726 = clamp(float(int(sign(_415 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _739 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _739.y = -_739.y;
  float _765 = 0.07999999821186065673828125f * _39_m1;
  float3 _766 = _646 * _587;
  float3 _767 = _646 - _766;
  float3 _771 = (_765 - (_765 * _587)).xxx + _766;
  float _772 = dot(_697, _493);
  float4 _775 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _577) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _776 = _775.x;
  float2 _786 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_776 * _776, exp2((-9.27999973297119140625f) * max(0.0f, _772))) * _776) + _775.y)) + _775.zw;
  uint2 _826;
  float _827;
  if (_18_m24.y == 1.0f) {
    float4 _803 = mul(_18_m138, _460);
    float4 _806 = _803;
    _806.y = -_803.y;
    float4 _809 = _806 * (1.0f / _803.w);
    _826 = uint2(clamp(((_809.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _827 = 1.0f / ((_18_m2.z * _809.z) + _18_m2.w);
  } else {
    _826 = uint2(gl_FragCoord.xy);
    _827 = abs(mul(_16_m0, _460).z);
  }
  float3 _829 = _456 + (_697 * 0.25f);
  float3 _839 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _848 = _829 - (_18_m108.xyz + (_839 * (-_18_m110.w)));
  float _863 = max(min(max((max(abs(_848.x), abs(_848.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_848.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1165;
  float4 _1166;
  float4 _1167;
  float _1168;
  float _1169;
  if ((_18_m108.w != 0.0f) && (_863 < 1.0f)) {
    float3 _876 = _829 - (_18_m108.xyz + (_839 * (-_18_m110.y)));
    float _890 = max(clamp((max(abs(_876.x), abs(_876.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_876.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _966;
    float4 _967;
    float4 _968;
    float4 _969;
    if (_890 < 1.0f) {
      float3 _899 = ((_829 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _901 = _899 - floor(_899);
      float4 _905 = _59.SampleLevel(_24, _901, 0.0f);
      float _906 = 1.0f - _890;
      float _910 = _18_m109.y * 0.5f;
      float _915 = _901.x;
      float _916 = clamp(_901.y, _910, 1.0f - _910) * 0.3333333432674407958984375f;
      float _917 = _901.z;
      float4 _920 = _60.SampleLevel(_23, float3(_915, _916, _917), 0.0f);
      float _936 = _905.x;
      float _946 = _905.y;
      float _956 = _905.z;
      _966 = _863 + (_920.w * _906);
      _967 = float4(((_60.SampleLevel(_23, float3(_915, _916 + 0.666666686534881591796875f, _917), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _956, _956) * _906;
      _968 = float4(((_60.SampleLevel(_23, float3(_915, _916 + 0.3333333432674407958984375f, _917), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _946, _946) * _906;
      _969 = float4(((_920.xyz * 4.0f) - 2.0f.xxx) * _936, _936) * _906;
    } else {
      _966 = _863;
      _967 = 0.0f.xxxx;
      _968 = 0.0f.xxxx;
      _969 = 0.0f.xxxx;
    }
    float3 _975 = _829 - (_18_m108.xyz + (_839 * (-_18_m110.z)));
    float _989 = max(clamp((max(abs(_975.x), abs(_975.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_975.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1069;
    float4 _1070;
    float4 _1071;
    float4 _1072;
    if (_989 < 1.0f) {
      float3 _998 = ((_829 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1000 = _998 - floor(_998);
      float4 _1004 = _61.SampleLevel(_24, _1000, 0.0f);
      float _1006 = _890 * (1.0f - _989);
      float _1010 = _18_m109.y * 0.5f;
      float _1015 = _1000.x;
      float _1016 = clamp(_1000.y, _1010, 1.0f - _1010) * 0.3333333432674407958984375f;
      float _1017 = _1000.z;
      float4 _1020 = _62.SampleLevel(_23, float3(_1015, _1016, _1017), 0.0f);
      float _1036 = _1004.x;
      float _1047 = _1004.y;
      float _1058 = _1004.z;
      _1069 = _966 + (_1020.w * _1006);
      _1070 = _967 + (float4(((_62.SampleLevel(_23, float3(_1015, _1016 + 0.666666686534881591796875f, _1017), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1058, _1058) * _1006);
      _1071 = _968 + (float4(((_62.SampleLevel(_23, float3(_1015, _1016 + 0.3333333432674407958984375f, _1017), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1047, _1047) * _1006);
      _1072 = _969 + (float4(((_1020.xyz * 4.0f) - 2.0f.xxx) * _1036, _1036) * _1006);
    } else {
      _1069 = _966;
      _1070 = _967;
      _1071 = _968;
      _1072 = _969;
    }
    float4 _1155;
    float4 _1156;
    float4 _1157;
    float _1158;
    if (_989 > 0.0f) {
      float3 _1081 = ((_829 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1084 = _18_m109.xyz * 0.5f;
      float3 _1086 = clamp(_1081 - floor(_1081), _1084, 1.0f.xxx - _1084);
      float4 _1090 = _63.SampleLevel(_24, _1086, 0.0f);
      float _1092 = _989 * (1.0f - _863);
      float _1096 = _18_m109.y * 0.5f;
      float _1101 = _1086.x;
      float _1102 = clamp(_1086.y, _1096, 1.0f - _1096) * 0.3333333432674407958984375f;
      float _1103 = _1086.z;
      float4 _1106 = _64.SampleLevel(_23, float3(_1101, _1102, _1103), 0.0f);
      float _1122 = _1090.x;
      float _1133 = _1090.y;
      float _1144 = _1090.z;
      _1155 = _1070 + (float4(((_64.SampleLevel(_23, float3(_1101, _1102 + 0.666666686534881591796875f, _1103), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1144, _1144) * _1092);
      _1156 = _1071 + (float4(((_64.SampleLevel(_23, float3(_1101, _1102 + 0.3333333432674407958984375f, _1103), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1133, _1133) * _1092);
      _1157 = _1072 + (float4(((_1106.xyz * 4.0f) - 2.0f.xxx) * _1122, _1122) * _1092);
      _1158 = _1069 + (_1106.w * _1092);
    } else {
      _1155 = _1070;
      _1156 = _1071;
      _1157 = _1072;
      _1158 = _1069;
    }
    float _1161 = clamp((_1158 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1165 = _1155;
    _1166 = _1156;
    _1167 = _1157;
    _1168 = _1161 - _863;
    _1169 = (_1161 + _863) * 0.5f;
  } else {
    _1165 = 0.0f.xxxx;
    _1166 = 0.0f.xxxx;
    _1167 = 0.0f.xxxx;
    _1168 = 0.0f;
    _1169 = 1.0f;
  }
  float4 _1189 = _1167 + float4(_18_m111.x * _1169, (_18_m111.y * _1169) + ((_18_m111.w * _1168) * 0.5f), _18_m111.z * _1169, (_18_m111.w * _1169) + ((_18_m111.y * _1168) * 0.375f));
  float4 _1209 = _1166 + float4(_18_m112.x * _1169, (_18_m112.y * _1169) + ((_18_m112.w * _1168) * 0.5f), _18_m112.z * _1169, (_18_m112.w * _1169) + ((_18_m112.y * _1168) * 0.375f));
  float4 _1229 = _1165 + float4(_18_m113.x * _1169, (_18_m113.y * _1169) + ((_18_m113.w * _1168) * 0.5f), _18_m113.z * _1169, (_18_m113.w * _1169) + ((_18_m113.y * _1168) * 0.375f));
  float _1234 = max(0.0f, dot(_1189.xyz, _697) + _1189.w);
  float _1239 = max(0.0f, dot(_1209.xyz, _697) + _1209.w);
  float _1244 = max(0.0f, dot(_1229.xyz, _697) + _1229.w);
  float3 _1254 = reflect(_700, _697);
  float _1262 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_577, 0.001000000047497451305389404296875f))));
  float2 _1263 = float2(_826);
  float2 _1267 = floor(_1263 * _43_m0.w);
  float _1284 = floor(_827 - _43_m2.y);
  float _1288 = clamp(_1284, 0.0f, _43_m1.x - 1.0f);
  uint _1298 = (_1284 <= _1288) ? (_31.Load(uint(_18_m21.z + int(_1267.x + (_1267.y * _43_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1288)) * 4 + 0)) : 0u;
  float _1301 = dot(float4(_1234, _1239, _1244, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1303;
  float _1306;
  uint _1308;
  _1303 = 0.0f.xxx;
  _1306 = 1.0f;
  _1308 = _1298;
  uint _1309;
  float3 _1304;
  float _1307;
  bool _1311;
  [loop] for (;;) {
    bool _1310 = _1308 != 0u;
    _1311 = _1306 > 0.00999999977648258209228515625f;
    if (_1310 && _1311) {
      uint _1315 = firstbitlow(_1308);
      _1309 = _1308 ^ (1u << (_1315 & 31u));
      float3 _1335 = float3(dot(_43_m4[_1315]._m2, _460), dot(_43_m4[_1315]._m3, _460), dot(_43_m4[_1315]._m4, _460));
      float3 _1336 = abs(_1335);
      if (all(bool3(_1336.x <= _43_m4[_1315]._m1.xyz.x, _1336.y <= _43_m4[_1315]._m1.xyz.y, _1336.z <= _43_m4[_1315]._m1.xyz.z))) {
        float3 _1345 = _43_m4[_1315]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1347 = _1336 * 0.100000001490116119384765625f;
        float3 _1348 = _1347 * _1347;
        float3 _1351 = (_43_m4[_1315]._m1.xyz - _1336) * _43_m4[_1315]._m5.xyz;
        float3 _1399;
        [branch] if (_43_m4[_1315]._m6.x == 1.0f) {
          float3 _1384 = float3(dot(_43_m4[_1315]._m2.xyz, _1254), dot(_43_m4[_1315]._m3.xyz, _1254), dot(_43_m4[_1315]._m4.xyz, _1254));
          float3 _1386 = (_43_m4[_1315]._m1.xyz - _1335) / _1384;
          float3 _1389 = ((-_43_m4[_1315]._m1.xyz) - _1335) / _1384;
          bool3 _1390 = bool3(_1384.x > 0.0f.xxx.x, _1384.y > 0.0f.xxx.y, _1384.z > 0.0f.xxx.z);
          float3 _1391 = float3(_1390.x ? _1386.x : _1389.x, _1390.y ? _1386.y : _1389.y, _1390.z ? _1386.z : _1389.z);
          _1399 = _1335 + (_1384 * min(min(_1391.x, _1391.y), _1391.z));
        }
        else {
          _1399 = _1254;
        }
        float3 _1400 = normalize(_1399);
        float3 _1403 = float3(int3(sign(_1400)));
        float3 _1406 = _1400 / dot(_1400, _1403).xxx;
        float3 _1420;
        if (_1406.z < 0.0f) {
          float3 _1411 = abs(_1406);
          float2 _1418 = _1403.xy * float2(1.0f - _1411.y, 1.0f - _1411.x);
          _1420 = float3(_1418.x, _1418.y, _1406.z);
        } else {
          _1420 = _1406;
        }
        float _1445 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_43_m4[_1315]._m0, float4(_697, 1.0f))));
        float _1458 = clamp((min(_1351.x, min(_1351.y, _1351.z)) * _43_m4[_1315]._m6.y) + ((((((_1345 * _1345).x - ((_1348.x + _1348.y) + _1348.z)) * _43_m4[_1315]._m5.x) * _43_m4[_1315]._m5.x) * (1.0f - _43_m4[_1315]._m6.y)) * 100.0f), 0.0f, 1.0f) * _43_m4[_1315]._m6.w;
        _1304 = _1303 + ((((_29.SampleLevel(_25, float3((((_1420.xy * 0.5f) + 0.5f.xx) * _43_m1.w) + _43_m2.w.xx, _43_m4[_1315]._m1.w), _1262).xyz * _43_m4[_1315]._m5.w) * ((((((clamp(abs(_1301 / _1445), 0.0f, 1.0f) * 2.0f) + _1301) / (2.0f + _1445)) - 1.0f) * _18_m23.w) + 1.0f)) * _1458) * _1306);
        _1307 = _1306 * (1.0f - _1458);
      } else {
        _1304 = _1303;
        _1307 = _1306;
      }
      _1303 = _1304;
      _1306 = _1307;
      _1308 = _1309;
      continue;
    } else {
      break;
    }
  }
  float3 _1527;
  if (_1311) {
    float3 _1466 = normalize(_1254);
    float3 _1469 = float3(int3(sign(_1466)));
    float3 _1472 = _1466 / dot(_1466, _1469).xxx;
    float3 _1486;
    if (_1472.z < 0.0f) {
      float3 _1477 = abs(_1472);
      float2 _1484 = _1469.xy * float2(1.0f - _1477.y, 1.0f - _1477.x);
      _1486 = float3(_1484.x, _1484.y, _1472.z);
    } else {
      _1486 = _1472;
    }
    float _1513 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_43_m3, float4(_697, 1.0f))));
    _1527 = _1303 + ((_29.SampleLevel(_25, float3((((_1486.xy * 0.5f) + 0.5f.xx) * _43_m1.w) + _43_m2.w.xx, 0.0f), _1262).xyz * ((((((clamp(abs(_1301 / _1513), 0.0f, 1.0f) * 2.0f) + _1301) / (2.0f + _1513)) - 1.0f) * _18_m23.w) + 1.0f)) * _1306);
  } else {
    _1527 = _1303;
  }
  float4 _2218;
  do {
    [branch] if (_47_m4 == 0) {
      _2218 = 0.0f.xxxx;
      break;
    }
    float2 _2077;
    do {
      if (_49_m7.w >= 0.9900000095367431640625f) {
        _2077 = float2(_49_m7.z, 1.0f);
        break;
      }
      int _1556 = int(_49_m7.x);
      bool3 _1558 = (_1556 == 2).xxx;
      float3 _1566 = _456 - float3(_1558.x ? _49_m1[0].xyz.x : _16_m11.xyz.x, _1558.y ? _49_m1[0].xyz.y : _16_m11.xyz.y, _1558.z ? _49_m1[0].xyz.z : _16_m11.xyz.z);
      float _1577 = max(clamp((_49_m6.w - dot(_1566, _1566)) * _49_m6.z, 0.0f, 1.0f), _49_m8.x);
      float _1794;
      bool _1795;
      if (_1577 > 0.0f) {
        float _1792;
        bool _1793;
        if (_1556 > 0) {
          float3 _1584 = _456 - _49_m1[0].xyz;
          float3 _1588 = _456 - _49_m1[1].xyz;
          float3 _1592 = _456 - _49_m1[2].xyz;
          float3 _1596 = _456 - _49_m1[3].xyz;
          float4 _1601 = float4(dot(_1584, _1584), dot(_1588, _1588), dot(_1592, _1592), dot(_1596, _1596));
          float4 _1610 = float4(_49_m1[0].w, _49_m1[1].w, _49_m1[2].w, _49_m1[3].w);
          float4 _1612 = float4(bool4(_1601.x < _1610.x, _1601.y < _1610.y, _1601.z < _1610.z, _1601.w < _1610.w));
          float3 _1616 = clamp(_1612.yzw - _1612.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1620 = clamp(4.0f - dot(float4(_1612.x, _1616.x, _1616.y, _1616.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1622 = clamp(_1620 + 1.0f, 0.0f, 3.0f);
          uint _1623 = uint(_1620);
          uint _1631 = uint(_1622);
          float _1637 = dot(_1601, _365[_1631]) / _49_m1[_1631].w;
          float _1654;
          if (((_1622 > _1620) && (_1637 >= 0.0f)) && (_1637 <= 1.0f)) {
            _1654 = _1620 + step(frac(52.98291778564453125f * frac(dot(_1263 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1601, _365[_1623]) / _49_m1[_1623].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1654 = _1620;
          }
          float _1655 = clamp(_1654, 0.0f, 4.0f);
          float4 _1659 = mul(_49_m0[uint(_1655)], _460);
          float _1662 = _1659.z;
          float4 _1663 = float4(_1659.xy, _1662, _1655);
          float3 _1664 = _1663.xyz;
          bool3 _1665 = bool3(_1664.x <= 0.0f.xxx.x, _1664.y <= 0.0f.xxx.y, _1664.z <= 0.0f.xxx.z);
          bool3 _1666 = bool3(_1664.x >= 1.0f.xxx.x, _1664.y >= 1.0f.xxx.y, _1664.z >= 1.0f.xxx.z);
          bool _1672 = any(bool3(_1665.x || _1666.x, _1665.y || _1666.y, _1665.z || _1666.z)) || ((asuint(_1662) & 2147483647u) > 2139095040u);
          int _1673 = int(_1655);
          float2 _1690 = float4(_49_m3[_1673].xy + (_1663.xy * _49_m3[_1673].zw), _1662, _1655).xy * _49_m4.zw;
          float2 _1692 = floor(_1690 + 0.5f.xx);
          float2 _1693 = _1690 - _1692;
          float _1694 = _1693.x;
          float _1695 = _1694 + 0.5f;
          float _1697 = (_1695 * _1695) * 0.5f;
          float _1700 = min(_1694, 0.0f);
          float _1704 = max(_1694, 0.0f);
          float4 _1708 = float4(_1697 - _1694, (1.0f - _1694) - (_1700 * _1700), (_1694 + 1.0f) - (_1704 * _1704), _1697) * 0.44444000720977783203125f;
          float _1709 = _1693.y;
          float _1710 = _1709 + 0.5f;
          float _1712 = (_1710 * _1710) * 0.5f;
          float _1715 = min(_1709, 0.0f);
          float _1719 = max(_1709, 0.0f);
          float4 _1723 = float4(_1712 - _1709, (1.0f - _1709) - (_1715 * _1715), (_1709 + 1.0f) - (_1719 * _1719), _1712) * 0.44444000720977783203125f;
          float2 _1725 = _1708.yw;
          float2 _1726 = _1708.xz + _1725;
          float2 _1728 = _1723.yw;
          float2 _1729 = _1723.xz + _1728;
          float2 _1735 = ((_1725 / _1726) + float2(-1.5f, 0.5f)) * _49_m4.xx;
          float2 _1737 = ((_1728 / _1729) + float2(-1.5f, 0.5f)) * _49_m4.yy;
          float2 _1739 = _1692 * _49_m4.xy;
          float _1740 = _1735.x;
          float _1741 = _1737.x;
          float _1744 = _1735.y;
          float _1747 = _1737.y;
          float _1752 = _1726.x;
          float _1753 = _1729.x;
          float _1755 = _1726.y;
          float _1757 = _1729.y;
          _1792 = _1672 ? 1.0f : (((((_1752 * _1753) * _50.SampleCmpLevelZero(_26, float3(_1739 + float2(_1740, _1741), _387).xy, _1662)) + ((_1755 * _1753) * _50.SampleCmpLevelZero(_26, float3(_1739 + float2(_1744, _1741), _387).xy, _1662))) + ((_1752 * _1757) * _50.SampleCmpLevelZero(_26, float3(_1739 + float2(_1740, _1747), _387).xy, _1662))) + ((_1755 * _1757) * _50.SampleCmpLevelZero(_26, float3(_1739 + float2(_1744, _1747), _387).xy, _1662)));
          _1793 = _1672;
        } else {
          _1792 = 1.0f;
          _1793 = false;
        }
        _1794 = _1792;
        _1795 = _1793;
      } else {
        _1794 = 1.0f;
        _1795 = false;
      }
      float _1995;
      float _1996;
      if ((_1577 < 1.0f) || (_49_m8.x > 0.5f)) {
        float _1806 = 1.0f - clamp(dot(_697, _45_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1823 = float4((_456 - (_45_m0.xyz * (_1806 * _49_m22.x))) + (_697 * (_1806 * _49_m22.y)), 1.0f);
        float4 _1824 = mul(_49_m21, _1823);
        float2 _1825 = _1824.xy;
        float _1993;
        if (all(bool2(_1825.x > 0.0f.xx.x, _1825.y > 0.0f.xx.y)) && all(bool2(_1825.x < 1.0f.xx.x, _1825.y < 1.0f.xx.y))) {
          uint _1844 = clamp(uint((floor(_1824.y * _49_m23.z) + _1824.x) * _49_m23.y), 0u, 127u);
          uint _1848 = asuint(_49_m25[_1844].x);
          float2 _1849 = spvUnpackHalf2x16(_1848);
          float _1850 = _1849.x;
          float _1992;
          if (_1850 >= 0.0f) {
            float4x4 _1859 = _49_m20;
            _1859[0].w = _49_m25[_1844].y;
            _1859[1].w = _49_m25[_1844].z;
            _1859[2].w = _49_m25[_1844].w;
            float4 _1866 = mul(_1859, _1823);
            float3 _1867 = _1866.xyz;
            float _1991;
            if (all(bool3(_1867.x > 0.0f.xxx.x, _1867.y > 0.0f.xxx.y, _1867.z > 0.0f.xxx.z)) && all(bool3(_1867.x < 1.0f.xxx.x, _1867.y < 1.0f.xxx.y, _1867.z < 1.0f.xxx.z))) {
              float _1884 = _1866.z;
              float2 _1890 = float4((_1866.xy * _49_m22.zw) + float2(_1850, spvUnpackHalf2x16(_1848 >> 16u).x), _1884, 1.0f).xy * _49_m24.zw;
              float2 _1892 = floor(_1890 + 0.5f.xx);
              float2 _1893 = _1890 - _1892;
              float _1894 = _1893.x;
              float _1895 = _1894 + 0.5f;
              float _1897 = (_1895 * _1895) * 0.5f;
              float _1900 = min(_1894, 0.0f);
              float _1904 = max(_1894, 0.0f);
              float4 _1908 = float4(_1897 - _1894, (1.0f - _1894) - (_1900 * _1900), (_1894 + 1.0f) - (_1904 * _1904), _1897) * 0.44444000720977783203125f;
              float _1909 = _1893.y;
              float _1910 = _1909 + 0.5f;
              float _1912 = (_1910 * _1910) * 0.5f;
              float _1915 = min(_1909, 0.0f);
              float _1919 = max(_1909, 0.0f);
              float4 _1923 = float4(_1912 - _1909, (1.0f - _1909) - (_1915 * _1915), (_1909 + 1.0f) - (_1919 * _1919), _1912) * 0.44444000720977783203125f;
              float2 _1925 = _1908.yw;
              float2 _1926 = _1908.xz + _1925;
              float2 _1928 = _1923.yw;
              float2 _1929 = _1923.xz + _1928;
              float2 _1935 = ((_1925 / _1926) + float2(-1.5f, 0.5f)) * _49_m24.xx;
              float2 _1937 = ((_1928 / _1929) + float2(-1.5f, 0.5f)) * _49_m24.yy;
              float2 _1939 = _1892 * _49_m24.xy;
              float _1940 = _1935.x;
              float _1941 = _1937.x;
              float _1944 = _1935.y;
              float _1947 = _1937.y;
              float _1952 = _1926.x;
              float _1953 = _1929.x;
              float _1955 = _1926.y;
              float _1957 = _1929.y;
              _1991 = ((((_1952 * _1953) * _54.SampleCmpLevelZero(_26, float3(_1939 + float2(_1940, _1941), _387).xy, _1884)) + ((_1955 * _1953) * _54.SampleCmpLevelZero(_26, float3(_1939 + float2(_1944, _1941), _387).xy, _1884))) + ((_1952 * _1957) * _54.SampleCmpLevelZero(_26, float3(_1939 + float2(_1940, _1947), _387).xy, _1884))) + ((_1955 * _1957) * _54.SampleCmpLevelZero(_26, float3(_1939 + float2(_1944, _1947), _387).xy, _1884));
            } else {
              _1991 = 1.0f;
            }
            _1992 = _1991;
          } else {
            _1992 = 1.0f;
          }
          _1993 = _1992;
        } else {
          _1993 = 1.0f;
        }
        _1995 = _1795 ? _1993 : _1794;
        _1996 = _1993;
      } else {
        _1995 = _1794;
        _1996 = 1.0f;
      }
      float _1999 = lerp(lerp(_1996, _1995, _1577), min(_1996, _1995), _49_m8.x);
      float _2072;
      if (_1999 > 0.001000000047497451305389404296875f) {
        float3 _2034 = _456 - _18_m65.xyz;
        float2 _2039 = (_2034 + (_18_m68.xyz * _2034.y)).xz * _18_m66.z;
        float2 _2040 = _18_m67.xy * _18_m77.w;
        float3 _2047 = _456 - _18_m69.xyz;
        float2 _2055 = _18_m69.w.xx;
        float4 _2062 = _53.SampleLevel(_24, lerp(_2039 * _18_m67.w, (_2047 + (_18_m68.xyz * _2047.y)).xz * _18_m70.x, _2055) + lerp(_2040, _18_m70.yz * _18_m77.w, _2055), 0.0f);
        _2072 = _1999 * lerp(1.0f, lerp(_53.SampleLevel(_24, _2039 + _2040, 0.0f).x, lerp(_2062.x, _2062.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2034.xz))), _18_m67.z);
      } else {
        _2072 = _1999;
      }
      _2077 = float2(lerp(_2072, _49_m7.z, _49_m7.w), _2072);
      break;
    } while (false);
    float _2082 = lerp(1.0f, min(1.0f, _2077.x), _49_m6.x);
    float4 _2217;
    if (_2082 > 0.001000000047497451305389404296875f) {
      float3 _2092 = -_45_m0.xyz;
      float _2097 = dot(_2092, _1254);
      float3 _2099 = _1254 - (_2092 * _2097);
      bool3 _2101 = (_2097 < _45_m4.z).xxx;
      float3 _2109 = normalize((_2092 * _45_m4.z) + ((_2099 * rsqrt(max(6.103515625e-05f, dot(_2099, _2099)))) * _45_m4.y));
      float3 _2110 = float3(_2101.x ? _2109.x : _1254.x, _2101.y ? _2109.y : _1254.y, _2101.z ? _2109.z : _1254.z);
      float3 _2114 = _2110 + _493;
      float3 _2118 = _2114 * rsqrt(max(6.103515625e-05f, dot(_2114, _2114)));
      float _2119 = clamp(dot(_2110, _697), 0.0f, 1.0f);
      float _2121 = clamp(dot(_697, _2118), 0.0f, 1.0f);
      float _2124 = clamp(_772, 0.0f, 1.0f);
      float _2125 = _577 * _577;
      float _2126 = _2125 * _2125;
      float _2147 = (((_2121 * _2126) - _2121) * _2121) + 1.0f;
      float _2150 = 1.0f - clamp(dot(_493, _2118), 0.0f, 1.0f);
      float _2151 = _2150 * _2150;
      float _2153 = (_2150 * _2151) * _2151;
      float _2177 = 1.0f - _577;
      float _2184 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2177 * (1.04997003078460693359375f + (_2177 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2177))))));
      float _2185 = 1.0f - _2184;
      float3 _2188 = _771 + ((1.0f.xxx - _771) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0x86E92009:
      float3 _2204 = ((clamp((min(((_771 * (1.0f - _2153)) + _2153.xxx) * ((_2126 / (_2147 * _2147)) * (0.5f / (((_2119 * sqrt(((((-_2124) * _2126) + _2124) * _2124) + _2126)) + (_2124 * sqrt(((((-_2119) * _2126) + _2119) * _2119) + _2126))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2188 * (((_58.SampleLevel(_23, (float2(_2124, _577) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2119, _577) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2184) / _2185)) * _2188) / (1.0f.xxx - (_2188 * _2185)))) * _45_m4.x, 0.0f.xxx, 1000.0f.xxx) * _2119) + ((_767 * 1.0f) * _2119)) * _45_m1.xyz;
      */
      float3 _2204 = (((clamp((min(((_771 * (1.0f - _2153)) + _2153.xxx) * ((_2126 / (_2147 * _2147)) * (0.5f / (((_2119 * sqrt(((((-_2124) * _2126) + _2124) * _2124) + _2126)) + (_2124 * sqrt(((((-_2119) * _2126) + _2119) * _2119) + _2126))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2188 * (((_58.SampleLevel(_23, (float2(_2124, _577) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2119, _577) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2184) / _2185)) * _2188) / (1.0f.xxx - (_2188 * _2185)))) * _45_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2119) + ((_767 * 1.0f) * _2119)) * _45_m1.xyz;
      // RenoDX code end
      float3 _2215 = lerp(_2204, _2204 * _55.SampleBias(_23, float2(_2082, 0.5f), _18_m16).xyz, (1.0f - _2082).xxx) * 1.0f;
      _2217 = float4(_2215.x, _2215.y, _2215.z, 0.0f.xxxx.w);
    } else {
      _2217 = 0.0f.xxxx;
    }
    _2218 = _2217;
    break;
  } while (false);
  float2 _2220 = floor(_1263 * 0.03125f);
  int _2228 = int((_2220.x + (_2220.y * _47_m9)) * 8.0f);
  float _2235 = floor(_827 - (_18_m3.y * _47_m15));
  float _2239 = clamp(_2235, 0.0f, _47_m11 - 1.0f);
  int _2241 = int(_2239 * 8.0f);
  float3 _2243;
  float _2246;
  _2243 = 0.0f.xxx;
  _2246 = 1.0f;
  float3 _2244;
  float _2247;
  [loop] for (int _2248 = 0; _2248 <= 7; _2243 = _2244, _2246 = _2247, _2248++) {
    uint _2269 = (_2235 <= _2239) ? (_31.Load(uint((_47_m2 + _2228) + _2248) * 4 + 0) & _31.Load(uint((_47_m3 + _2241) + _2248) * 4 + 0)) : 0u;
    uint _2270 = uint(_2248);
    float3 _2274;
    _2247 = _2246;
    _2274 = 0.0f.xxx;
    uint _2277;
    float _2272;
    float3 _2275;
    [loop] for (uint _2276 = _2269; _2276 != 0u; _2247 = _2272, _2274 = _2275, _2276 = _2277) {
      uint _2281 = firstbitlow(_2276);
      _2277 = _2276 ^ (1u << (_2281 & 31u));
      int _2287 = int((32u * _2270) + _2281) * 8;
      int _2290 = _2287 + 1;
      int _2293 = _2287 + 2;
      int _2296 = _2287 + 3;
      int _2299 = _2287 + 4;
      int _2302 = _2287 + 5;
      int _2305 = _2287 + 6;
      int _2308 = _2287 + 7;
      uint _2312 = uint(_45_m6[_2302].w);
      float _2387;
      if ((_2312 & 1u) == 1u) {
        uint _2318 = asuint(_45_m6[_2302].x);
        uint _2325 = asuint(_45_m6[_2302].y);
        uint _2332 = asuint(_45_m6[_2302].z);
        uint _2339 = asuint(_45_m6[_2305].x);
        uint _2346 = asuint(_45_m6[_2305].y);
        uint _2353 = asuint(_45_m6[_2305].z);
        float3 _2372 = abs(mul(float4(_456 - _45_m6[_2290].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2318).x, spvUnpackHalf2x16(_2332).x, spvUnpackHalf2x16(_2346).x, 0.0f), float4(spvUnpackHalf2x16(_2318 >> 16u).x, spvUnpackHalf2x16(_2332 >> 16u).x, spvUnpackHalf2x16(_2346 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2325).x, spvUnpackHalf2x16(_2339).x, spvUnpackHalf2x16(_2353).x, 0.0f), float4(spvUnpackHalf2x16(_2325 >> 16u).x, spvUnpackHalf2x16(_2339 >> 16u).x, spvUnpackHalf2x16(_2353 >> 16u).x, 0.0f))).xyz);
        float _2379 = _45_m6[_2308].x * 0.5f;
        float _2385 = 1.0f - clamp((max(max(_2372.x, _2372.y), _2372.z) - (_2379 + 0.5f)) / (0.5f - _2379), 0.0f, 1.0f);
        _2387 = _2385 * _2385;
      } else {
        _2387 = 1.0f;
      }
      uint _2391 = uint(_45_m6[_2287].w);
      bool _2394 = _45_m6[_2296].z > 0.5f;
      if ((false || (_2387 < 0.001000000047497451305389404296875f)) || ((_2391 < 4u) && _2394)) {
        _2272 = _2247;
        _2275 = _2274;
        continue;
      }
      float _4923;
      float3 _4924;
      do {
        [branch] if (_2391 >= 4u) {
          float3 _3623;
          do {
            float3 _2413 = _45_m6[_2290].xyz - _456;
            if (dot(_45_m6[_2296].xyz, _2413) > 0.0f) {
              _3623 = 0.0f.xxx;
              break;
            }
            float _2420 = dot(_2413, _2413) * _45_m6[_2290].w;
            float _2423 = clamp(1.0f - (_2420 * _2420), 0.0f, 1.0f);
            float _2424 = _2423 * _2423;
            if (_2424 <= 0.0f) {
              _3623 = 0.0f.xxx;
              break;
            }
            float3 _2462;
            float _2463;
            bool _2464;
            float3 _2492;
            float3 _2494;
            float3 _2496;
            float3 _2498;
            float3 _2428 = _45_m6[_2293].xyz * _45_m6[_2293].w;
            float3 _2429 = _45_m6[_2290].xyz - _2428;
            float3 _2430 = _45_m6[_2299].xyz * _45_m6[_2296].w;
            float3 _2433 = _45_m6[_2290].xyz + _2428;
            float2 _2443 = (float2(clamp(_577, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_772, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2447 = _71.SampleLevel(_23, _2443, 0.0f);
            float4 _2451 = _72.SampleLevel(_23, _2443, 0.0f);
            float _2846;
            do {
              _2462 = _493 - (_697 * dot(_493, _697));
              _2463 = dot(_2462, _2462);
              _2464 = _2463 > 9.9999997473787516355514526367188e-05f;
              float3 _2487;
              if (_2464) {
                _2487 = _2462 * rsqrt(_2463);
              } else {
                float _2470 = (_697.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2472 = (-1.0f) / (_2470 + _697.z);
                _2487 = float3(1.0f + (((_2470 * _2472) * _697.x) * _697.x), ((_2470 * _697.x) * _697.y) * _2472, (-_2470) * _697.x);
              }
              float3x3 _2491 = mul(float3x3(float3(_2447.x, 0.0f, _2447.z), float3(0.0f, 1.0f, 0.0f), float3(_2447.y, 0.0f, _2447.w)), float3x3(_2487, cross(_697, _2487), _697));
              _2492 = (_2429 - _2430) - _456;
              float3 _2493 = mul(_2491, _2492);
              _2494 = (_2429 + _2430) - _456;
              float3 _2495 = mul(_2491, _2494);
              _2496 = (_2433 + _2430) - _456;
              float3 _2497 = mul(_2491, _2496);
              _2498 = (_2433 - _2430) - _456;
              float3 _2499 = mul(_2491, _2498);
              float _2500 = _2493.z;
              float _2503 = _2495.z;
              float _2507 = _2497.z;
              float _2511 = _2499.z;
              int _2515 = (((int(_2500 > 0.0f) | ((_2503 > 0.0f) ? 2 : 0)) | ((_2507 > 0.0f) ? 4 : 0)) | ((_2511 > 0.0f) ? 8 : 0));
              float3 _2752;
              float3 _2753;
              float3 _2754;
              float3 _2755;
              float3 _2756;
              int _2757;
              if (_2515 == 0) {
                _2752 = _2499;
                _2753 = _2497;
                _2754 = _2495;
                _2755 = _2493;
                _2756 = 0.0f.xxx;
                _2757 = 0;
              } else {
                float3 _2746;
                float3 _2747;
                float3 _2748;
                float3 _2749;
                float3 _2750;
                int _2751;
                if (_2515 == 1) {
                  _2746 = _2499;
                  _2747 = (_2493 * (-_2511)) + (_2499 * _2500);
                  _2748 = (_2493 * (-_2503)) + (_2495 * _2500);
                  _2749 = _2493;
                  _2750 = 0.0f.xxx;
                  _2751 = 3;
                } else {
                  float3 _2732;
                  float3 _2733;
                  float3 _2734;
                  float3 _2735;
                  float3 _2736;
                  int _2737;
                  if (_2515 == 2) {
                    _2732 = _2499;
                    _2733 = (_2495 * (-_2507)) + (_2497 * _2503);
                    _2734 = _2495;
                    _2735 = (_2495 * (-_2500)) + (_2493 * _2503);
                    _2736 = 0.0f.xxx;
                    _2737 = 3;
                  } else {
                    float3 _2718;
                    float3 _2719;
                    float3 _2720;
                    float3 _2721;
                    float3 _2722;
                    int _2723;
                    if (_2515 == 3) {
                      _2718 = (_2493 * (-_2511)) + (_2499 * _2500);
                      _2719 = (_2495 * (-_2507)) + (_2497 * _2503);
                      _2720 = _2495;
                      _2721 = _2493;
                      _2722 = 0.0f.xxx;
                      _2723 = 4;
                    } else {
                      float3 _2704;
                      float3 _2705;
                      float3 _2706;
                      float3 _2707;
                      float3 _2708;
                      int _2709;
                      if (_2515 == 4) {
                        _2704 = _2499;
                        _2705 = _2497;
                        _2706 = (_2497 * (-_2503)) + (_2495 * _2507);
                        _2707 = (_2497 * (-_2511)) + (_2499 * _2507);
                        _2708 = 0.0f.xxx;
                        _2709 = 3;
                      } else {
                        float3 _2690;
                        float3 _2691;
                        float3 _2692;
                        float3 _2693;
                        float3 _2694;
                        int _2695;
                        if (_2515 == 5) {
                          _2690 = _2499;
                          _2691 = _2497;
                          _2692 = _2495;
                          _2693 = _2493;
                          _2694 = 0.0f.xxx;
                          _2695 = 0;
                        } else {
                          float3 _2684;
                          float3 _2685;
                          float3 _2686;
                          float3 _2687;
                          float3 _2688;
                          int _2689;
                          if (_2515 == 6) {
                            _2684 = (_2497 * (-_2511)) + (_2499 * _2507);
                            _2685 = _2497;
                            _2686 = _2495;
                            _2687 = (_2495 * (-_2500)) + (_2493 * _2503);
                            _2688 = 0.0f.xxx;
                            _2689 = 4;
                          } else {
                            float3 _2670;
                            float3 _2671;
                            float3 _2672;
                            float3 _2673;
                            float3 _2674;
                            int _2675;
                            if (_2515 == 7) {
                              float _2663 = -_2511;
                              _2670 = (_2497 * _2663) + (_2499 * _2507);
                              _2671 = _2497;
                              _2672 = _2495;
                              _2673 = _2493;
                              _2674 = (_2493 * _2663) + (_2499 * _2500);
                              _2675 = 5;
                            } else {
                              float3 _2657;
                              float3 _2658;
                              float3 _2659;
                              float3 _2660;
                              float3 _2661;
                              int _2662;
                              if (_2515 == 8) {
                                _2657 = _2499;
                                _2658 = _2499;
                                _2659 = (_2499 * (-_2507)) + (_2497 * _2511);
                                _2660 = (_2499 * (-_2500)) + (_2493 * _2511);
                                _2661 = 0.0f.xxx;
                                _2662 = 3;
                              } else {
                                float3 _2643;
                                float3 _2644;
                                float3 _2645;
                                float3 _2646;
                                float3 _2647;
                                int _2648;
                                if (_2515 == 9) {
                                  _2643 = _2499;
                                  _2644 = (_2499 * (-_2507)) + (_2497 * _2511);
                                  _2645 = (_2493 * (-_2503)) + (_2495 * _2500);
                                  _2646 = _2493;
                                  _2647 = 0.0f.xxx;
                                  _2648 = 4;
                                } else {
                                  float3 _2629;
                                  float3 _2630;
                                  float3 _2631;
                                  float3 _2632;
                                  float3 _2633;
                                  int _2634;
                                  if (_2515 == 10) {
                                    _2629 = _2499;
                                    _2630 = _2497;
                                    _2631 = _2495;
                                    _2632 = _2493;
                                    _2633 = 0.0f.xxx;
                                    _2634 = 0;
                                  } else {
                                    float3 _2623;
                                    float3 _2624;
                                    float3 _2625;
                                    float3 _2626;
                                    float3 _2627;
                                    int _2628;
                                    if (_2515 == 11) {
                                      float _2616 = -_2507;
                                      _2623 = (_2499 * _2616) + (_2497 * _2511);
                                      _2624 = (_2495 * _2616) + (_2497 * _2503);
                                      _2625 = _2495;
                                      _2626 = _2493;
                                      _2627 = _2499;
                                      _2628 = 5;
                                    } else {
                                      float3 _2610;
                                      float3 _2611;
                                      float3 _2612;
                                      float3 _2613;
                                      float3 _2614;
                                      int _2615;
                                      if (_2515 == 12) {
                                        _2610 = _2499;
                                        _2611 = _2497;
                                        _2612 = (_2497 * (-_2503)) + (_2495 * _2507);
                                        _2613 = (_2499 * (-_2500)) + (_2493 * _2511);
                                        _2614 = 0.0f.xxx;
                                        _2615 = 4;
                                      } else {
                                        bool _2568 = _2515 == 13;
                                        float3 _2595;
                                        float3 _2596;
                                        float3 _2597;
                                        float3 _2598;
                                        int _2599;
                                        if (_2568) {
                                          float _2588 = -_2503;
                                          _2595 = (_2497 * _2588) + (_2495 * _2507);
                                          _2596 = (_2493 * _2588) + (_2495 * _2500);
                                          _2597 = _2493;
                                          _2598 = _2499;
                                          _2599 = 5;
                                        } else {
                                          float3 _2585;
                                          float3 _2586;
                                          int _2587;
                                          if (_2515 == 14) {
                                            float _2578 = -_2500;
                                            _2585 = (_2495 * _2578) + (_2493 * _2503);
                                            _2586 = (_2499 * _2578) + (_2493 * _2511);
                                            _2587 = 5;
                                          } else {
                                            _2585 = _2493;
                                            _2586 = 0.0f.xxx;
                                            _2587 = (_2515 == 15) ? 4 : 0;
                                          }
                                          _2595 = _2497;
                                          _2596 = _2495;
                                          _2597 = _2585;
                                          _2598 = _2586;
                                          _2599 = _2587;
                                        }
                                        bool3 _2600 = _2568.xxx;
                                        _2610 = float3(_2600.x ? _2497.x : _2499.x, _2600.y ? _2497.y : _2499.y, _2600.z ? _2497.z : _2499.z);
                                        _2611 = _2595;
                                        _2612 = _2596;
                                        _2613 = _2597;
                                        _2614 = _2598;
                                        _2615 = _2599;
                                      }
                                      _2623 = _2610;
                                      _2624 = _2611;
                                      _2625 = _2612;
                                      _2626 = _2613;
                                      _2627 = _2614;
                                      _2628 = _2615;
                                    }
                                    _2629 = _2623;
                                    _2630 = _2624;
                                    _2631 = _2625;
                                    _2632 = _2626;
                                    _2633 = _2627;
                                    _2634 = _2628;
                                  }
                                  _2643 = _2629;
                                  _2644 = _2630;
                                  _2645 = _2631;
                                  _2646 = _2632;
                                  _2647 = _2633;
                                  _2648 = _2634;
                                }
                                _2657 = _2643;
                                _2658 = _2644;
                                _2659 = _2645;
                                _2660 = _2646;
                                _2661 = _2647;
                                _2662 = _2648;
                              }
                              _2670 = _2657;
                              _2671 = _2658;
                              _2672 = _2659;
                              _2673 = _2660;
                              _2674 = _2661;
                              _2675 = _2662;
                            }
                            _2684 = _2670;
                            _2685 = _2671;
                            _2686 = _2672;
                            _2687 = _2673;
                            _2688 = _2674;
                            _2689 = _2675;
                          }
                          _2690 = _2684;
                          _2691 = _2685;
                          _2692 = _2686;
                          _2693 = _2687;
                          _2694 = _2688;
                          _2695 = _2689;
                        }
                        _2704 = _2690;
                        _2705 = _2691;
                        _2706 = _2692;
                        _2707 = _2693;
                        _2708 = _2694;
                        _2709 = _2695;
                      }
                      _2718 = _2704;
                      _2719 = _2705;
                      _2720 = _2706;
                      _2721 = _2707;
                      _2722 = _2708;
                      _2723 = _2709;
                    }
                    _2732 = _2718;
                    _2733 = _2719;
                    _2734 = _2720;
                    _2735 = _2721;
                    _2736 = _2722;
                    _2737 = _2723;
                  }
                  _2746 = _2732;
                  _2747 = _2733;
                  _2748 = _2734;
                  _2749 = _2735;
                  _2750 = _2736;
                  _2751 = _2737;
                }
                _2752 = _2746;
                _2753 = _2747;
                _2754 = _2748;
                _2755 = _2749;
                _2756 = _2750;
                _2757 = _2751;
              }
              bool3 _2759 = (_2757 == 3).xxx;
              bool3 _2762 = (_2757 == 4).xxx;
              if (_2757 == 0) {
                _2846 = 0.0f;
                break;
              }
              float3 _2767 = normalize(_2755);
              float3 _2768 = normalize(_2754);
              float3 _2769 = normalize(_2753);
              float3 _2770 = normalize(float3(_2759.x ? _2755.x : _2752.x, _2759.y ? _2755.y : _2752.y, _2759.z ? _2755.z : _2752.z));
              float3 _2771 = normalize(float3(_2762.x ? _2755.x : _2756.x, _2762.y ? _2755.y : _2756.y, _2762.z ? _2755.z : _2756.z));
              float _2773 = clamp(dot(_2767, _2768), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2777 = sqrt(1.0f - (_2773 * _2773));
              float _2785 = clamp(dot(_2768, _2769), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2789 = sqrt(1.0f - (_2785 * _2785));
              float _2798 = clamp(dot(_2769, _2770), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2802 = sqrt(1.0f - (_2798 * _2798));
              float _2809 = ((cross(_2767, _2768).z * ((_2777 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2773) / _2777))) + (cross(_2768, _2769).z * ((_2789 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2785) / _2789)))) + (cross(_2769, _2770).z * ((_2802 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2798) / _2802)));
              float _2826;
              if (_2757 >= 4) {
                float _2814 = clamp(dot(_2770, _2771), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2818 = sqrt(1.0f - (_2814 * _2814));
                _2826 = _2809 + (cross(_2770, _2771).z * ((_2818 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2814) / _2818)));
              } else {
                _2826 = _2809;
              }
              float _2843;
              if (_2757 == 5) {
                float _2831 = clamp(dot(_2771, _2767), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2835 = sqrt(1.0f - (_2831 * _2831));
                _2843 = _2826 + (cross(_2771, _2767).z * ((_2835 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2831) / _2835)));
              } else {
                _2843 = _2826;
              }
              _2846 = max(_2843, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3234;
            do {
              float3 _2880;
              if (_2464) {
                _2880 = _2462 * rsqrt(_2463);
              } else {
                float _2863 = (_697.z >= 0.0f) ? 1.0f : (-1.0f);
                float _2865 = (-1.0f) / (_2863 + _697.z);
                _2880 = float3(1.0f + (((_2863 * _2865) * _697.x) * _697.x), ((_2863 * _697.x) * _697.y) * _2865, (-_2863) * _697.x);
              }
              float3x3 _2883 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2880, cross(_697, _2880), _697));
              float3 _2884 = mul(_2883, _2492);
              float3 _2885 = mul(_2883, _2494);
              float3 _2886 = mul(_2883, _2496);
              float3 _2887 = mul(_2883, _2498);
              float _2888 = _2884.z;
              float _2891 = _2885.z;
              float _2895 = _2886.z;
              float _2899 = _2887.z;
              int _2903 = (((int(_2888 > 0.0f) | ((_2891 > 0.0f) ? 2 : 0)) | ((_2895 > 0.0f) ? 4 : 0)) | ((_2899 > 0.0f) ? 8 : 0));
              float3 _3140;
              float3 _3141;
              float3 _3142;
              float3 _3143;
              float3 _3144;
              int _3145;
              if (_2903 == 0) {
                _3140 = _2887;
                _3141 = _2886;
                _3142 = _2885;
                _3143 = _2884;
                _3144 = 0.0f.xxx;
                _3145 = 0;
              } else {
                float3 _3134;
                float3 _3135;
                float3 _3136;
                float3 _3137;
                float3 _3138;
                int _3139;
                if (_2903 == 1) {
                  _3134 = _2887;
                  _3135 = (_2884 * (-_2899)) + (_2887 * _2888);
                  _3136 = (_2884 * (-_2891)) + (_2885 * _2888);
                  _3137 = _2884;
                  _3138 = 0.0f.xxx;
                  _3139 = 3;
                } else {
                  float3 _3120;
                  float3 _3121;
                  float3 _3122;
                  float3 _3123;
                  float3 _3124;
                  int _3125;
                  if (_2903 == 2) {
                    _3120 = _2887;
                    _3121 = (_2885 * (-_2895)) + (_2886 * _2891);
                    _3122 = _2885;
                    _3123 = (_2885 * (-_2888)) + (_2884 * _2891);
                    _3124 = 0.0f.xxx;
                    _3125 = 3;
                  } else {
                    float3 _3106;
                    float3 _3107;
                    float3 _3108;
                    float3 _3109;
                    float3 _3110;
                    int _3111;
                    if (_2903 == 3) {
                      _3106 = (_2884 * (-_2899)) + (_2887 * _2888);
                      _3107 = (_2885 * (-_2895)) + (_2886 * _2891);
                      _3108 = _2885;
                      _3109 = _2884;
                      _3110 = 0.0f.xxx;
                      _3111 = 4;
                    } else {
                      float3 _3092;
                      float3 _3093;
                      float3 _3094;
                      float3 _3095;
                      float3 _3096;
                      int _3097;
                      if (_2903 == 4) {
                        _3092 = _2887;
                        _3093 = _2886;
                        _3094 = (_2886 * (-_2891)) + (_2885 * _2895);
                        _3095 = (_2886 * (-_2899)) + (_2887 * _2895);
                        _3096 = 0.0f.xxx;
                        _3097 = 3;
                      } else {
                        float3 _3078;
                        float3 _3079;
                        float3 _3080;
                        float3 _3081;
                        float3 _3082;
                        int _3083;
                        if (_2903 == 5) {
                          _3078 = _2887;
                          _3079 = _2886;
                          _3080 = _2885;
                          _3081 = _2884;
                          _3082 = 0.0f.xxx;
                          _3083 = 0;
                        } else {
                          float3 _3072;
                          float3 _3073;
                          float3 _3074;
                          float3 _3075;
                          float3 _3076;
                          int _3077;
                          if (_2903 == 6) {
                            _3072 = (_2886 * (-_2899)) + (_2887 * _2895);
                            _3073 = _2886;
                            _3074 = _2885;
                            _3075 = (_2885 * (-_2888)) + (_2884 * _2891);
                            _3076 = 0.0f.xxx;
                            _3077 = 4;
                          } else {
                            float3 _3058;
                            float3 _3059;
                            float3 _3060;
                            float3 _3061;
                            float3 _3062;
                            int _3063;
                            if (_2903 == 7) {
                              float _3051 = -_2899;
                              _3058 = (_2886 * _3051) + (_2887 * _2895);
                              _3059 = _2886;
                              _3060 = _2885;
                              _3061 = _2884;
                              _3062 = (_2884 * _3051) + (_2887 * _2888);
                              _3063 = 5;
                            } else {
                              float3 _3045;
                              float3 _3046;
                              float3 _3047;
                              float3 _3048;
                              float3 _3049;
                              int _3050;
                              if (_2903 == 8) {
                                _3045 = _2887;
                                _3046 = _2887;
                                _3047 = (_2887 * (-_2895)) + (_2886 * _2899);
                                _3048 = (_2887 * (-_2888)) + (_2884 * _2899);
                                _3049 = 0.0f.xxx;
                                _3050 = 3;
                              } else {
                                float3 _3031;
                                float3 _3032;
                                float3 _3033;
                                float3 _3034;
                                float3 _3035;
                                int _3036;
                                if (_2903 == 9) {
                                  _3031 = _2887;
                                  _3032 = (_2887 * (-_2895)) + (_2886 * _2899);
                                  _3033 = (_2884 * (-_2891)) + (_2885 * _2888);
                                  _3034 = _2884;
                                  _3035 = 0.0f.xxx;
                                  _3036 = 4;
                                } else {
                                  float3 _3017;
                                  float3 _3018;
                                  float3 _3019;
                                  float3 _3020;
                                  float3 _3021;
                                  int _3022;
                                  if (_2903 == 10) {
                                    _3017 = _2887;
                                    _3018 = _2886;
                                    _3019 = _2885;
                                    _3020 = _2884;
                                    _3021 = 0.0f.xxx;
                                    _3022 = 0;
                                  } else {
                                    float3 _3011;
                                    float3 _3012;
                                    float3 _3013;
                                    float3 _3014;
                                    float3 _3015;
                                    int _3016;
                                    if (_2903 == 11) {
                                      float _3004 = -_2895;
                                      _3011 = (_2887 * _3004) + (_2886 * _2899);
                                      _3012 = (_2885 * _3004) + (_2886 * _2891);
                                      _3013 = _2885;
                                      _3014 = _2884;
                                      _3015 = _2887;
                                      _3016 = 5;
                                    } else {
                                      float3 _2998;
                                      float3 _2999;
                                      float3 _3000;
                                      float3 _3001;
                                      float3 _3002;
                                      int _3003;
                                      if (_2903 == 12) {
                                        _2998 = _2887;
                                        _2999 = _2886;
                                        _3000 = (_2886 * (-_2891)) + (_2885 * _2895);
                                        _3001 = (_2887 * (-_2888)) + (_2884 * _2899);
                                        _3002 = 0.0f.xxx;
                                        _3003 = 4;
                                      } else {
                                        bool _2956 = _2903 == 13;
                                        float3 _2983;
                                        float3 _2984;
                                        float3 _2985;
                                        float3 _2986;
                                        int _2987;
                                        if (_2956) {
                                          float _2976 = -_2891;
                                          _2983 = (_2886 * _2976) + (_2885 * _2895);
                                          _2984 = (_2884 * _2976) + (_2885 * _2888);
                                          _2985 = _2884;
                                          _2986 = _2887;
                                          _2987 = 5;
                                        } else {
                                          float3 _2973;
                                          float3 _2974;
                                          int _2975;
                                          if (_2903 == 14) {
                                            float _2966 = -_2888;
                                            _2973 = (_2885 * _2966) + (_2884 * _2891);
                                            _2974 = (_2887 * _2966) + (_2884 * _2899);
                                            _2975 = 5;
                                          } else {
                                            _2973 = _2884;
                                            _2974 = 0.0f.xxx;
                                            _2975 = (_2903 == 15) ? 4 : 0;
                                          }
                                          _2983 = _2886;
                                          _2984 = _2885;
                                          _2985 = _2973;
                                          _2986 = _2974;
                                          _2987 = _2975;
                                        }
                                        bool3 _2988 = _2956.xxx;
                                        _2998 = float3(_2988.x ? _2886.x : _2887.x, _2988.y ? _2886.y : _2887.y, _2988.z ? _2886.z : _2887.z);
                                        _2999 = _2983;
                                        _3000 = _2984;
                                        _3001 = _2985;
                                        _3002 = _2986;
                                        _3003 = _2987;
                                      }
                                      _3011 = _2998;
                                      _3012 = _2999;
                                      _3013 = _3000;
                                      _3014 = _3001;
                                      _3015 = _3002;
                                      _3016 = _3003;
                                    }
                                    _3017 = _3011;
                                    _3018 = _3012;
                                    _3019 = _3013;
                                    _3020 = _3014;
                                    _3021 = _3015;
                                    _3022 = _3016;
                                  }
                                  _3031 = _3017;
                                  _3032 = _3018;
                                  _3033 = _3019;
                                  _3034 = _3020;
                                  _3035 = _3021;
                                  _3036 = _3022;
                                }
                                _3045 = _3031;
                                _3046 = _3032;
                                _3047 = _3033;
                                _3048 = _3034;
                                _3049 = _3035;
                                _3050 = _3036;
                              }
                              _3058 = _3045;
                              _3059 = _3046;
                              _3060 = _3047;
                              _3061 = _3048;
                              _3062 = _3049;
                              _3063 = _3050;
                            }
                            _3072 = _3058;
                            _3073 = _3059;
                            _3074 = _3060;
                            _3075 = _3061;
                            _3076 = _3062;
                            _3077 = _3063;
                          }
                          _3078 = _3072;
                          _3079 = _3073;
                          _3080 = _3074;
                          _3081 = _3075;
                          _3082 = _3076;
                          _3083 = _3077;
                        }
                        _3092 = _3078;
                        _3093 = _3079;
                        _3094 = _3080;
                        _3095 = _3081;
                        _3096 = _3082;
                        _3097 = _3083;
                      }
                      _3106 = _3092;
                      _3107 = _3093;
                      _3108 = _3094;
                      _3109 = _3095;
                      _3110 = _3096;
                      _3111 = _3097;
                    }
                    _3120 = _3106;
                    _3121 = _3107;
                    _3122 = _3108;
                    _3123 = _3109;
                    _3124 = _3110;
                    _3125 = _3111;
                  }
                  _3134 = _3120;
                  _3135 = _3121;
                  _3136 = _3122;
                  _3137 = _3123;
                  _3138 = _3124;
                  _3139 = _3125;
                }
                _3140 = _3134;
                _3141 = _3135;
                _3142 = _3136;
                _3143 = _3137;
                _3144 = _3138;
                _3145 = _3139;
              }
              bool3 _3147 = (_3145 == 3).xxx;
              bool3 _3150 = (_3145 == 4).xxx;
              if (_3145 == 0) {
                _3234 = 0.0f;
                break;
              }
              float3 _3155 = normalize(_3143);
              float3 _3156 = normalize(_3142);
              float3 _3157 = normalize(_3141);
              float3 _3158 = normalize(float3(_3147.x ? _3143.x : _3140.x, _3147.y ? _3143.y : _3140.y, _3147.z ? _3143.z : _3140.z));
              float3 _3159 = normalize(float3(_3150.x ? _3143.x : _3144.x, _3150.y ? _3143.y : _3144.y, _3150.z ? _3143.z : _3144.z));
              float _3161 = clamp(dot(_3155, _3156), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3165 = sqrt(1.0f - (_3161 * _3161));
              float _3173 = clamp(dot(_3156, _3157), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3177 = sqrt(1.0f - (_3173 * _3173));
              float _3186 = clamp(dot(_3157, _3158), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3190 = sqrt(1.0f - (_3186 * _3186));
              float _3197 = ((cross(_3155, _3156).z * ((_3165 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3161) / _3165))) + (cross(_3156, _3157).z * ((_3177 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3173) / _3177)))) + (cross(_3157, _3158).z * ((_3190 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3186) / _3190)));
              float _3214;
              if (_3145 >= 4) {
                float _3202 = clamp(dot(_3158, _3159), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3206 = sqrt(1.0f - (_3202 * _3202));
                _3214 = _3197 + (cross(_3158, _3159).z * ((_3206 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3202) / _3206)));
              } else {
                _3214 = _3197;
              }
              float _3231;
              if (_3145 == 5) {
                float _3219 = clamp(dot(_3159, _3155), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3223 = sqrt(1.0f - (_3219 * _3219));
                _3231 = _3214 + (cross(_3159, _3155).z * ((_3223 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3219) / _3223)));
              } else {
                _3231 = _3214;
              }
              _3234 = max(_3231, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3237 = (_2312 & 2u) != 0u;
            uint _3241 = asuint(_45_m6[_2299].w);
            uint _3242 = asuint(_45_m6[_2305].w);
            float3 _3243 = _456 - _45_m6[_2290].xyz;
            float3 _3244 = abs(_3243);
            float _3245 = _3244.x;
            float _3246 = _3244.y;
            float _3248 = _3244.z;
            int _3281;
            if ((_3245 > _3246) && (_3245 > _3248)) {
              _3281 = int((_3243.x > 0.0f) ? (_3241 & 1023u) : ((_3241 >> 10u) & 1023u));
            } else {
              int _3273;
              if (_3246 > _3248) {
                _3273 = int((_3243.y > 0.0f) ? ((_3241 >> 20u) & 1023u) : (_3242 & 1023u));
              } else {
                _3273 = int((_3243.z > 0.0f) ? ((_3242 >> 10u) & 1023u) : ((_3242 >> 20u) & 1023u));
              }
              _3281 = _3273;
            }
            int _3284 = _3237 ? int(_45_m6[_2299].w) : ((_3281 == 1023) ? (-1) : _3281);
            uint _3295 = asuint(_49_m11.x) + (uint(_3284) * 96u);
            uint _3297 = (_3295 + 64u) >> 2u;
            uint _3300 = _3297 + 1u;
            uint _3303 = _3297 + 2u;
            uint _3306 = _3297 + 3u;
            float4 _3310 = asfloat(uint4(_52.Load(_3297 * 4 + 0), _52.Load(_3300 * 4 + 0), _52.Load(_3303 * 4 + 0), _52.Load(_3306 * 4 + 0)));
            uint _3318 = _3295 >> 2u;
            uint _3333 = (_3295 + 16u) >> 2u;
            uint _3348 = (_3295 + 32u) >> 2u;
            uint _3363 = (_3295 + 48u) >> 2u;
            float4 _3383 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3318 * 4 + 0), _52.Load((_3318 + 1u) * 4 + 0), _52.Load((_3318 + 2u) * 4 + 0), _52.Load((_3318 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3333 * 4 + 0), _52.Load((_3333 + 1u) * 4 + 0), _52.Load((_3333 + 2u) * 4 + 0), _52.Load((_3333 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3348 * 4 + 0), _52.Load((_3348 + 1u) * 4 + 0), _52.Load((_3348 + 2u) * 4 + 0), _52.Load((_3348 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3363 * 4 + 0), _52.Load((_3363 + 1u) * 4 + 0), _52.Load((_3363 + 2u) * 4 + 0), _52.Load((_3363 + 3u) * 4 + 0))))), float4((_456 - ((_3243 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3243, _3243)))) * _3310.x)) + (_697 * (_3310.y * 5.0f)), 1.0f));
            float3 _3387 = _3383.xyz / _3383.w.xxx;
            uint _3389 = (_3295 + 80u) >> 2u;
            float4 _3402 = asfloat(uint4(_52.Load(_3389 * 4 + 0), _52.Load((_3389 + 1u) * 4 + 0), _52.Load((_3389 + 2u) * 4 + 0), _52.Load((_3389 + 3u) * 4 + 0)));
            float2 _3403 = _3387.xy;
            float2 _3405 = _3402.xy;
            float3 _3409 = _3387.xyz;
            bool3 _3410 = bool3(_3409.x <= 0.0f.xxx.x, _3409.y <= 0.0f.xxx.y, _3409.z <= 0.0f.xxx.z);
            bool3 _3411 = bool3(_3409.x >= 1.0f.xxx.x, _3409.y >= 1.0f.xxx.y, _3409.z >= 1.0f.xxx.z);
            float _3414 = _3387.z;
            float2 _3425 = ((_3403 * (_3402.zw - _3405)) + _3405).xy * _49_m10.zw;
            float2 _3427 = floor(_3425 + 0.5f.xx);
            float2 _3428 = _3425 - _3427;
            float _3429 = _3428.x;
            float _3430 = _3429 + 0.5f;
            float _3431 = _3430 * _3430;
            float _3434 = 1.0f - _3429;
            float _3435 = min(_3429, 0.0f);
            float _3438 = _3429 + 1.0f;
            float _3439 = max(_3429, 0.0f);
            float _3450 = _3428.y;
            float _3451 = _3450 + 0.5f;
            float _3452 = _3451 * _3451;
            float _3455 = 1.0f - _3450;
            float _3456 = min(_3450, 0.0f);
            float _3459 = _3450 + 1.0f;
            float _3460 = max(_3450, 0.0f);
            float3 _3472 = float3(0.1599999964237213134765625f * _3434, 0.1599999964237213134765625f * ((_3438 - (_3439 * _3439)) + 1.0f), _3431 * 0.07999999821186065673828125f);
            float3 _3473 = float3(0.1599999964237213134765625f * ((_3431 * 0.5f) - _3429), 0.1599999964237213134765625f * ((_3434 - (_3435 * _3435)) + 1.0f), 0.1599999964237213134765625f * _3438) + _3472;
            float3 _3475 = float3(0.1599999964237213134765625f * _3455, 0.1599999964237213134765625f * ((_3459 - (_3460 * _3460)) + 1.0f), _3452 * 0.07999999821186065673828125f);
            float3 _3476 = float3(0.1599999964237213134765625f * ((_3452 * 0.5f) - _3450), 0.1599999964237213134765625f * ((_3455 - (_3456 * _3456)) + 1.0f), 0.1599999964237213134765625f * _3459) + _3475;
            float3 _3482 = ((_3472 / _3473) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.xxx;
            float3 _3484 = ((_3475 / _3476) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.yyy;
            float2 _3486 = _3427 * _49_m10.xy;
            float _3487 = _3482.x;
            float _3488 = _3484.x;
            float _3491 = _3482.y;
            float _3494 = _3482.z;
            float _3497 = _3484.y;
            float _3504 = _3484.z;
            float _3511 = _3473.x;
            float _3512 = _3476.x;
            float _3514 = _3473.y;
            float _3516 = _3473.z;
            float _3518 = _3476.y;
            float _3522 = _3476.z;
            float _3580 = (((((((_3511 * _3512) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3487, _3488), _387).xy, _3414)) + ((_3514 * _3512) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3491, _3488), _387).xy, _3414))) + ((_3516 * _3512) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3494, _3488), _387).xy, _3414))) + ((_3511 * _3518) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3487, _3497), _387).xy, _3414))) + ((_3514 * _3518) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3491, _3497), _387).xy, _3414))) + ((_3516 * _3518) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3494, _3497), _387).xy, _3414))) + ((_3511 * _3522) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3487, _3504), _387).xy, _3414));
            float4 _3603 = asfloat(uint4(_52.Load(_3297 * 4 + 0), _52.Load(_3300 * 4 + 0), _52.Load(_3303 * 4 + 0), _52.Load(_3306 * 4 + 0)));
            float _3604 = _3603.w;
            float2 _3606 = min(_3403, 1.0f.xx - _3403);
            _3623 = ((_45_m6[_2287].xyz * (((((_771 * _2451.x) + ((1.0f.xxx - _771) * _2451.y)) * _2846) * _45_m6[_2308].z) + (_767 * _3234))) * _2424) * ((_3284 >= 0) ? lerp(1.0f, (any(bool3(_3410.x || _3411.x, _3410.y || _3411.y, _3410.z || _3411.z)) || ((asuint(_3414) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3580 + ((_3514 * _3522) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3491, _3504), _387).xy, _3414))) + ((_3516 * _3522) * _51.SampleCmpLevelZero(_26, float3(_3486 + float2(_3494, _3504), _387).xy, _3414))), _3237 ? min(_3604, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3603.z - _3383.w) * 0.25f, min(_3606.x, _3606.y)))) : _3604) : 1.0f);
            break;
          } while (false);
          _4923 = _2247;
          _4924 = _3623 * _2387;
          break;
        }
        float _4921;
        float3 _4922;
        if (_45_m6[_2287].w < 1.5f) {
          float3 _4203 = float3(0.100000001490116119384765625f, _577, 1.0f);
          float _4212 = (0.5f + (0.5f * _45_m6[_2293].y)) - abs(_45_m6[_2293].x);
          float _4213 = _45_m6[_2293].y - _4212;
          float _4220 = abs(max((1.0f - abs(_4212)) - abs(_4213), 0.00048828125f));
          float3 _4224 = normalize(float3(_4212, _4213, (_45_m6[_2293].x >= 0.0f) ? _4220 : (-_4220)));
          float3 _4225 = _45_m6[_2290].xyz - _456;
          float _4226 = dot(_4225, _4225);
          float _4227 = rsqrt(_4226);
          float3 _4228 = _4225 * _4227;
          float _4232 = clamp(_45_m6[_2308].y * _4227, 0.0f, 1.0f);
          int _4237 = int(_45_m6[_2308].w);
          float3 _4238 = _4224 * _45_m6[_2293].z;
          float3 _4239 = _4238 * 0.5f;
          float3 _4240 = _4225 - _4239;
          float3 _4241 = _4225 + _4239;
          bool _4243 = (_2391 & 1u) == 0u;
          bool _4246 = _4243 || ((_2312 & 2u) != 0u);
          bool _4249 = (!_4243) && (_45_m6[_2293].z > 0.0f);
          float _4268;
          float _4269;
          if (_4249) {
            float _4253 = length(_4240);
            float _4254 = length(_4241);
            _4268 = clamp(0.5f * ((dot(_697, _4240) / _4253) + (dot(_697, _4241) / _4254)), 0.0f, 1.0f);
            _4269 = 1.0f / ((((_4253 * _4254) + dot(_4240, _4241)) * 0.5f) + 1.0f);
          } else {
            _4268 = clamp(dot(_697, _4228), 0.0f, 1.0f);
            _4269 = 1.0f;
          }
          float _4291;
          if (_45_m6[_2305].w < 0.0f) {
            float _4285 = _4226 * (_45_m6[_2290].w * _45_m6[_2290].w);
            float _4288 = clamp(1.0f - (_4285 * _4285), 0.0f, 1.0f);
            _4291 = lerp(1.0f / (_4226 + 1.0f), _4269, float(_4249)) * (_4288 * _4288);
          } else {
            float3 _4274 = _4225 * _45_m6[_2290].w;
            _4291 = _4269 * pow(1.0f - clamp(dot(_4274, _4274), 0.0f, 1.0f), _45_m6[_2305].w);
          }
          float _4297 = clamp((dot(_4228, -_4224) - _45_m6[_2293].z) * _45_m6[_2293].w, 0.0f, 1.0f);
          float _4301 = _4291 * lerp(1.0f, _4297 * _4297, float(_4243));
          float _4401;
          if ((!_4249) && (_4237 >= 0)) {
            uint _4307 = uint(_4237);
            float2 _4394;
            [branch] if (_4243) {
              float4 _4384 = mul(_68_m1[_4307], _460);
              _4394 = _68_m0[_4307].xy + (clamp(_4384.xy / _4384.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_4307].zw);
            }
            else {
              float3 _4321 = mul(float4(-_4225, 0.0f), _68_m1[_4307]).xyz;
              float3 _393 = _4321;
              float3 _392 = _4321;
              float3 _391 = abs(_4321);
              uint _4330 = uint(int(_391.y > _391.x));
              uint _4336 = (_391.z > _391[_4330]) ? 2u : _4330;
              uint _4342 = (_4336 * 2u) + uint(_392[_4336] < 0.0f);
              float _4346 = abs(_393[_4342 / 2u]);
              float _4366 = 0.5f - (0.000244140625f / _68_m0[_4307].w);
              _4394 = _68_m0[_4307].xy + (clamp(float2((float(_4342) + ((((_393[uint(_366[_4342].x)] * _367[_4342].x) / _4346) * _4366) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_393[uint(_366[_4342].y)] * _367[_4342].y) / _4346) * _4366)), 0.0f.xx, 1.0f.xx) * _68_m0[_4307].zw);
            }
            _4401 = _4301 * _66.SampleLevel(_23, _4394, 0.0f).x;
          } else {
            _4401 = _4301;
          }
          bool _4402 = _4401 > 0.0f;
          float _4786;
          if (_4402) {
            int _4455;
            if (_4246) {
              _4455 = int(_45_m6[_2296].x);
            } else {
              uint _4410 = asuint(_45_m6[_2293].w);
              uint _4411 = asuint(_45_m6[_2296].x);
              float3 _4412 = _456 - _45_m6[_2290].xyz;
              float3 _4413 = abs(_4412);
              float _4414 = _4413.x;
              float _4415 = _4413.y;
              float _4417 = _4413.z;
              int _4450;
              if ((_4414 > _4415) && (_4414 > _4417)) {
                _4450 = int((_4412.x > 0.0f) ? (_4410 & 1023u) : ((_4410 >> 10u) & 1023u));
              } else {
                int _4442;
                if (_4415 > _4417) {
                  _4442 = int((_4412.y > 0.0f) ? ((_4410 >> 20u) & 1023u) : (_4411 & 1023u));
                } else {
                  _4442 = int((_4412.z > 0.0f) ? ((_4411 >> 10u) & 1023u) : ((_4411 >> 20u) & 1023u));
                }
                _4450 = _4442;
              }
              _4455 = (_4450 == 1023) ? (-1) : _4450;
            }
            uint _4462 = asuint(_49_m11.x) + (uint(_4455) * 96u);
            uint _4464 = (_4462 + 64u) >> 2u;
            uint _4467 = _4464 + 1u;
            uint _4470 = _4464 + 2u;
            uint _4473 = _4464 + 3u;
            float4 _4477 = asfloat(uint4(_52.Load(_4464 * 4 + 0), _52.Load(_4467 * 4 + 0), _52.Load(_4470 * 4 + 0), _52.Load(_4473 * 4 + 0)));
            uint _4485 = _4462 >> 2u;
            uint _4500 = (_4462 + 16u) >> 2u;
            uint _4515 = (_4462 + 32u) >> 2u;
            uint _4530 = (_4462 + 48u) >> 2u;
            float4 _4550 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_4485 * 4 + 0), _52.Load((_4485 + 1u) * 4 + 0), _52.Load((_4485 + 2u) * 4 + 0), _52.Load((_4485 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4500 * 4 + 0), _52.Load((_4500 + 1u) * 4 + 0), _52.Load((_4500 + 2u) * 4 + 0), _52.Load((_4500 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4515 * 4 + 0), _52.Load((_4515 + 1u) * 4 + 0), _52.Load((_4515 + 2u) * 4 + 0), _52.Load((_4515 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4530 * 4 + 0), _52.Load((_4530 + 1u) * 4 + 0), _52.Load((_4530 + 2u) * 4 + 0), _52.Load((_4530 + 3u) * 4 + 0))))), float4((_456 - ((-_4228) * _4477.x)) + (_697 * (_4477.y * 5.0f)), 1.0f));
            float3 _4554 = _4550.xyz / _4550.w.xxx;
            uint _4556 = (_4462 + 80u) >> 2u;
            float4 _4569 = asfloat(uint4(_52.Load(_4556 * 4 + 0), _52.Load((_4556 + 1u) * 4 + 0), _52.Load((_4556 + 2u) * 4 + 0), _52.Load((_4556 + 3u) * 4 + 0)));
            float2 _4570 = _4554.xy;
            float2 _4572 = _4569.xy;
            float3 _4576 = _4554.xyz;
            bool3 _4577 = bool3(_4576.x <= 0.0f.xxx.x, _4576.y <= 0.0f.xxx.y, _4576.z <= 0.0f.xxx.z);
            bool3 _4578 = bool3(_4576.x >= 1.0f.xxx.x, _4576.y >= 1.0f.xxx.y, _4576.z >= 1.0f.xxx.z);
            float _4581 = _4554.z;
            float2 _4592 = ((_4570 * (_4569.zw - _4572)) + _4572).xy * _49_m10.zw;
            float2 _4594 = floor(_4592 + 0.5f.xx);
            float2 _4595 = _4592 - _4594;
            float _4596 = _4595.x;
            float _4597 = _4596 + 0.5f;
            float _4598 = _4597 * _4597;
            float _4601 = 1.0f - _4596;
            float _4602 = min(_4596, 0.0f);
            float _4605 = _4596 + 1.0f;
            float _4606 = max(_4596, 0.0f);
            float _4617 = _4595.y;
            float _4618 = _4617 + 0.5f;
            float _4619 = _4618 * _4618;
            float _4622 = 1.0f - _4617;
            float _4623 = min(_4617, 0.0f);
            float _4626 = _4617 + 1.0f;
            float _4627 = max(_4617, 0.0f);
            float3 _4639 = float3(0.1599999964237213134765625f * _4601, 0.1599999964237213134765625f * ((_4605 - (_4606 * _4606)) + 1.0f), _4598 * 0.07999999821186065673828125f);
            float3 _4640 = float3(0.1599999964237213134765625f * ((_4598 * 0.5f) - _4596), 0.1599999964237213134765625f * ((_4601 - (_4602 * _4602)) + 1.0f), 0.1599999964237213134765625f * _4605) + _4639;
            float3 _4642 = float3(0.1599999964237213134765625f * _4622, 0.1599999964237213134765625f * ((_4626 - (_4627 * _4627)) + 1.0f), _4619 * 0.07999999821186065673828125f);
            float3 _4643 = float3(0.1599999964237213134765625f * ((_4619 * 0.5f) - _4617), 0.1599999964237213134765625f * ((_4622 - (_4623 * _4623)) + 1.0f), 0.1599999964237213134765625f * _4626) + _4642;
            float3 _4649 = ((_4639 / _4640) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.xxx;
            float3 _4651 = ((_4642 / _4643) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.yyy;
            float2 _4653 = _4594 * _49_m10.xy;
            float _4654 = _4649.x;
            float _4655 = _4651.x;
            float _4658 = _4649.y;
            float _4661 = _4649.z;
            float _4664 = _4651.y;
            float _4671 = _4651.z;
            float _4678 = _4640.x;
            float _4679 = _4643.x;
            float _4681 = _4640.y;
            float _4683 = _4640.z;
            float _4685 = _4643.y;
            float _4689 = _4643.z;
            float _4747 = (((((((_4678 * _4679) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4654, _4655), _387).xy, _4581)) + ((_4681 * _4679) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4658, _4655), _387).xy, _4581))) + ((_4683 * _4679) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4661, _4655), _387).xy, _4581))) + ((_4678 * _4685) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4654, _4664), _387).xy, _4581))) + ((_4681 * _4685) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4658, _4664), _387).xy, _4581))) + ((_4683 * _4685) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4661, _4664), _387).xy, _4581))) + ((_4678 * _4689) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4654, _4671), _387).xy, _4581));
            float4 _4770 = asfloat(uint4(_52.Load(_4464 * 4 + 0), _52.Load(_4467 * 4 + 0), _52.Load(_4470 * 4 + 0), _52.Load(_4473 * 4 + 0)));
            float _4771 = _4770.w;
            float2 _4773 = min(_4570, 1.0f.xx - _4570);
            _4786 = (_4455 >= 0) ? lerp(1.0f, (any(bool3(_4577.x || _4578.x, _4577.y || _4578.y, _4577.z || _4578.z)) || ((asuint(_4581) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4747 + ((_4681 * _4689) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4658, _4671), _387).xy, _4581))) + ((_4683 * _4689) * _51.SampleCmpLevelZero(_26, float3(_4653 + float2(_4661, _4671), _387).xy, _4581))), _4246 ? min(_4771, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4770.z - _4550.w) * 0.25f, min(_4773.x, _4773.y)))) : _4771) : 1.0f;
          } else {
            _4786 = 1.0f;
          }
          float3 _4809;
          float3 _4810;
          if (_4249) {
            float3 _4789 = _4203 * _4203;
            float _4798 = dot(_1254, _4238);
            _4809 = _4789 / clamp(_4789 + (0.5f * clamp(_45_m6[_2293].z * _4227, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4810 = normalize(_4240 + (_4238 * clamp(dot(_4240, (_1254 * _4798) - _4238) / ((_45_m6[_2293].z * _45_m6[_2293].z) - (_4798 * _4798)), 0.0f, 1.0f)));
          } else {
            _4809 = 1.0f.xxx;
            _4810 = _4228;
          }
          float3 _4811 = _4810 + _493;
          float3 _4815 = _4811 * rsqrt(max(6.103515625e-05f, dot(_4811, _4811)));
          float3 _4920;
          if (_4402) {
            float _4818 = clamp(_4268, 0.0f, 1.0f);
            float _4820 = clamp(dot(_697, _4815), 0.0f, 1.0f);
            float _4822 = clamp(dot(_493, _4815), 0.0f, 1.0f);
            float _4823 = clamp(_772, 0.0f, 1.0f);
            float _4824 = _577 * _577;
            float _4834;
            if (_4232 > 0.0f) {
              _4834 = clamp(_4824 + ((_4232 * _4232) / ((_4822 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4834 = _4824;
            }
            float _4835 = _4834 * _4834;
            float _4856 = (((_4820 * _4835) - _4820) * _4820) + 1.0f;
            float _4861 = 1.0f - _4822;
            float _4862 = _4861 * _4861;
            float _4864 = (_4861 * _4862) * _4862;
            float _4888 = 1.0f - _577;
            float _4895 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4888 * (1.04997003078460693359375f + (_4888 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4888))))));
            float _4896 = 1.0f - _4895;
            float3 _4899 = _771 + ((1.0f.xxx - _771) * 0.0476190485060214996337890625f);
            float3 _4919 = ((clamp((min(((_771 * (1.0f - _4864)) + _4864.xxx) * (((_4835 / (_4856 * _4856)) * _4809.y) * (0.5f / (((_4818 * sqrt(((((-_4823) * _4835) + _4823) * _4823) + _4835)) + (_4823 * sqrt(((((-_4818) * _4835) + _4818) * _4818) + _4835))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4899 * (((_58.SampleLevel(_23, (float2(_4823, _577) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_4818, _577) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4895) / _4896)) * _4899) / (1.0f.xxx - (_4899 * _4896)))) * _45_m6[_2308].z, 0.0f.xxx, 1000.0f.xxx) * _4268) + ((_767 * _4809.z) * _4268)) * (((_45_m6[_2287].xyz * _4401) * _4786) * _2387);
            _4920 = _4919;
          } else {
            _4920 = 0.0f.xxx;
          }
          _4921 = _2247;
          _4922 = _4920;
        } else {
          float _4201;
          do {
            if (_2394) {
              _4201 = 1.0f;
              break;
            }
            float _3640 = (0.5f + (0.5f * _45_m6[_2293].y)) - abs(_45_m6[_2293].x);
            float _3641 = _45_m6[_2293].y - _3640;
            float _3648 = abs(max((1.0f - abs(_3640)) - abs(_3641), 0.00048828125f));
            float3 _3652 = normalize(float3(_3640, _3641, (_45_m6[_2293].x >= 0.0f) ? _3648 : (-_3648)));
            float3 _3653 = _45_m6[_2290].xyz - _456;
            float _3654 = dot(_3653, _3653);
            float3 _3656 = _3653 * rsqrt(_3654);
            int _3659 = int(_45_m6[_2308].w);
            float3 _3661 = (_3652 * _45_m6[_2293].z) * 0.5f;
            float3 _3662 = _3653 - _3661;
            float3 _3663 = _3653 + _3661;
            bool _3665 = (_2391 & 1u) == 0u;
            bool _3668 = _3665 || ((_2312 & 2u) != 0u);
            bool _3671 = (!_3665) && (_45_m6[_2293].z > 0.0f);
            float _3683;
            if (_3671) {
              _3683 = 1.0f / ((((length(_3662) * length(_3663)) + dot(_3662, _3663)) * 0.5f) + 1.0f);
            } else {
              _3683 = 1.0f;
            }
            float _3705;
            if (_45_m6[_2305].w < 0.0f) {
              float _3699 = _3654 * (_45_m6[_2290].w * _45_m6[_2290].w);
              float _3702 = clamp(1.0f - (_3699 * _3699), 0.0f, 1.0f);
              _3705 = lerp(1.0f / (_3654 + 1.0f), _3683, float(_3671)) * (_3702 * _3702);
            } else {
              float3 _3688 = _3653 * _45_m6[_2290].w;
              _3705 = _3683 * pow(1.0f - clamp(dot(_3688, _3688), 0.0f, 1.0f), _45_m6[_2305].w);
            }
            float _3711 = clamp((dot(_3656, -_3652) - _45_m6[_2293].z) * _45_m6[_2293].w, 0.0f, 1.0f);
            float _3715 = _3705 * lerp(1.0f, _3711 * _3711, float(_3665));
            float _3815;
            if ((!_3671) && (_3659 >= 0)) {
              uint _3721 = uint(_3659);
              float2 _3808;
              [branch] if (_3665) {
                float4 _3798 = mul(_68_m1[_3721], _460);
                _3808 = _68_m0[_3721].xy + (clamp(_3798.xy / _3798.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_3721].zw);
              }
              else {
                float3 _3735 = mul(float4(-_3653, 0.0f), _68_m1[_3721]).xyz;
                float3 _396 = _3735;
                float3 _395 = _3735;
                float3 _394 = abs(_3735);
                uint _3744 = uint(int(_394.y > _394.x));
                uint _3750 = (_394.z > _394[_3744]) ? 2u : _3744;
                uint _3756 = (_3750 * 2u) + uint(_395[_3750] < 0.0f);
                float _3760 = abs(_396[_3756 / 2u]);
                float _3780 = 0.5f - (0.000244140625f / _68_m0[_3721].w);
                _3808 = _68_m0[_3721].xy + (clamp(float2((float(_3756) + ((((_396[uint(_366[_3756].x)] * _367[_3756].x) / _3760) * _3780) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_396[uint(_366[_3756].y)] * _367[_3756].y) / _3760) * _3780)), 0.0f.xx, 1.0f.xx) * _68_m0[_3721].zw);
              }
              _3815 = _3715 * _66.SampleLevel(_23, _3808, 0.0f).x;
            } else {
              _3815 = _3715;
            }
            float _4200;
            if (_3815 > 0.0f) {
              int _3869;
              if (_3668) {
                _3869 = int(_45_m6[_2296].x);
              } else {
                uint _3824 = asuint(_45_m6[_2293].w);
                uint _3825 = asuint(_45_m6[_2296].x);
                float3 _3826 = _456 - _45_m6[_2290].xyz;
                float3 _3827 = abs(_3826);
                float _3828 = _3827.x;
                float _3829 = _3827.y;
                float _3831 = _3827.z;
                int _3864;
                if ((_3828 > _3829) && (_3828 > _3831)) {
                  _3864 = int((_3826.x > 0.0f) ? (_3824 & 1023u) : ((_3824 >> 10u) & 1023u));
                } else {
                  int _3856;
                  if (_3829 > _3831) {
                    _3856 = int((_3826.y > 0.0f) ? ((_3824 >> 20u) & 1023u) : (_3825 & 1023u));
                  } else {
                    _3856 = int((_3826.z > 0.0f) ? ((_3825 >> 10u) & 1023u) : ((_3825 >> 20u) & 1023u));
                  }
                  _3864 = _3856;
                }
                _3869 = (_3864 == 1023) ? (-1) : _3864;
              }
              uint _3876 = asuint(_49_m11.x) + (uint(_3869) * 96u);
              uint _3878 = (_3876 + 64u) >> 2u;
              uint _3881 = _3878 + 1u;
              uint _3884 = _3878 + 2u;
              uint _3887 = _3878 + 3u;
              float4 _3891 = asfloat(uint4(_52.Load(_3878 * 4 + 0), _52.Load(_3881 * 4 + 0), _52.Load(_3884 * 4 + 0), _52.Load(_3887 * 4 + 0)));
              uint _3899 = _3876 >> 2u;
              uint _3914 = (_3876 + 16u) >> 2u;
              uint _3929 = (_3876 + 32u) >> 2u;
              uint _3944 = (_3876 + 48u) >> 2u;
              float4 _3964 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3899 * 4 + 0), _52.Load((_3899 + 1u) * 4 + 0), _52.Load((_3899 + 2u) * 4 + 0), _52.Load((_3899 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3914 * 4 + 0), _52.Load((_3914 + 1u) * 4 + 0), _52.Load((_3914 + 2u) * 4 + 0), _52.Load((_3914 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3929 * 4 + 0), _52.Load((_3929 + 1u) * 4 + 0), _52.Load((_3929 + 2u) * 4 + 0), _52.Load((_3929 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3944 * 4 + 0), _52.Load((_3944 + 1u) * 4 + 0), _52.Load((_3944 + 2u) * 4 + 0), _52.Load((_3944 + 3u) * 4 + 0))))), float4((_456 - ((-_3656) * _3891.x)) + (_697 * (_3891.y * 5.0f)), 1.0f));
              float3 _3968 = _3964.xyz / _3964.w.xxx;
              uint _3970 = (_3876 + 80u) >> 2u;
              float4 _3983 = asfloat(uint4(_52.Load(_3970 * 4 + 0), _52.Load((_3970 + 1u) * 4 + 0), _52.Load((_3970 + 2u) * 4 + 0), _52.Load((_3970 + 3u) * 4 + 0)));
              float2 _3984 = _3968.xy;
              float2 _3986 = _3983.xy;
              float3 _3990 = _3968.xyz;
              bool3 _3991 = bool3(_3990.x <= 0.0f.xxx.x, _3990.y <= 0.0f.xxx.y, _3990.z <= 0.0f.xxx.z);
              bool3 _3992 = bool3(_3990.x >= 1.0f.xxx.x, _3990.y >= 1.0f.xxx.y, _3990.z >= 1.0f.xxx.z);
              float _3995 = _3968.z;
              float2 _4006 = ((_3984 * (_3983.zw - _3986)) + _3986).xy * _49_m10.zw;
              float2 _4008 = floor(_4006 + 0.5f.xx);
              float2 _4009 = _4006 - _4008;
              float _4010 = _4009.x;
              float _4011 = _4010 + 0.5f;
              float _4012 = _4011 * _4011;
              float _4015 = 1.0f - _4010;
              float _4016 = min(_4010, 0.0f);
              float _4019 = _4010 + 1.0f;
              float _4020 = max(_4010, 0.0f);
              float _4031 = _4009.y;
              float _4032 = _4031 + 0.5f;
              float _4033 = _4032 * _4032;
              float _4036 = 1.0f - _4031;
              float _4037 = min(_4031, 0.0f);
              float _4040 = _4031 + 1.0f;
              float _4041 = max(_4031, 0.0f);
              float3 _4053 = float3(0.1599999964237213134765625f * _4015, 0.1599999964237213134765625f * ((_4019 - (_4020 * _4020)) + 1.0f), _4012 * 0.07999999821186065673828125f);
              float3 _4054 = float3(0.1599999964237213134765625f * ((_4012 * 0.5f) - _4010), 0.1599999964237213134765625f * ((_4015 - (_4016 * _4016)) + 1.0f), 0.1599999964237213134765625f * _4019) + _4053;
              float3 _4056 = float3(0.1599999964237213134765625f * _4036, 0.1599999964237213134765625f * ((_4040 - (_4041 * _4041)) + 1.0f), _4033 * 0.07999999821186065673828125f);
              float3 _4057 = float3(0.1599999964237213134765625f * ((_4033 * 0.5f) - _4031), 0.1599999964237213134765625f * ((_4036 - (_4037 * _4037)) + 1.0f), 0.1599999964237213134765625f * _4040) + _4056;
              float3 _4063 = ((_4053 / _4054) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.xxx;
              float3 _4065 = ((_4056 / _4057) + float3(-2.5f, -0.5f, 1.5f)) * _49_m10.yyy;
              float2 _4067 = _4008 * _49_m10.xy;
              float _4068 = _4063.x;
              float _4069 = _4065.x;
              float _4072 = _4063.y;
              float _4075 = _4063.z;
              float _4078 = _4065.y;
              float _4085 = _4065.z;
              float _4092 = _4054.x;
              float _4093 = _4057.x;
              float _4095 = _4054.y;
              float _4097 = _4054.z;
              float _4099 = _4057.y;
              float _4103 = _4057.z;
              float _4161 = (((((((_4092 * _4093) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4068, _4069), _387).xy, _3995)) + ((_4095 * _4093) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4072, _4069), _387).xy, _3995))) + ((_4097 * _4093) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4075, _4069), _387).xy, _3995))) + ((_4092 * _4099) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4068, _4078), _387).xy, _3995))) + ((_4095 * _4099) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4072, _4078), _387).xy, _3995))) + ((_4097 * _4099) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4075, _4078), _387).xy, _3995))) + ((_4092 * _4103) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4068, _4085), _387).xy, _3995));
              float4 _4184 = asfloat(uint4(_52.Load(_3878 * 4 + 0), _52.Load(_3881 * 4 + 0), _52.Load(_3884 * 4 + 0), _52.Load(_3887 * 4 + 0)));
              float _4185 = _4184.w;
              float2 _4187 = min(_3984, 1.0f.xx - _3984);
              _4200 = (_3869 >= 0) ? lerp(1.0f, (any(bool3(_3991.x || _3992.x, _3991.y || _3992.y, _3991.z || _3992.z)) || ((asuint(_3995) & 2147483647u) > 2139095040u)) ? 1.0f : ((_4161 + ((_4095 * _4103) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4072, _4085), _387).xy, _3995))) + ((_4097 * _4103) * _51.SampleCmpLevelZero(_26, float3(_4067 + float2(_4075, _4085), _387).xy, _3995))), _3668 ? min(_4185, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4184.z - _3964.w) * 0.25f, min(_4187.x, _4187.y)))) : _4185) : 1.0f;
            } else {
              _4200 = 1.0f;
            }
            _4201 = _4200;
            break;
          } while (false);
          _4921 = _2247 * _4201;
          _4922 = 0.0f.xxx;
        }
        _4923 = _4921;
        _4924 = _4922;
        break;
      } while (false);
      _2272 = _4923;
      _2275 = _2274 + _4924;
    }
    _2244 = _2243 + _2274;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x86E92009:
  float3 _4931 = (((((float3(_1234, _1239, _1244) * _767) * lerp(1.0f, _548, _39_m4)) * _18_m22.x) + ((((_1527 * _18_m23.z) * _18_m22.y) * ((_771 * _786.x) + (clamp(50.0f * _771.y, 0.0f, 1.0f) * _786.y).xxx)) * 1.0f)) + (((_672 * lerp(_646, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2218.xyz + (_2243 * _2246)).xyz;
  */
  float3 _4931 = (((((float3(_1234, _1239, _1244) * (_767 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _548, _39_m4)) * _18_m22.x) + (((((_1527 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_771 * _786.x) + (clamp(50.0f * _771.y, 0.0f, 1.0f) * _786.y).xxx)) * 1.0f)) + (((_672 * lerp(_646, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2218.xyz + ((_2243 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2246)).xyz;
  // RenoDX code end
  float4 _4932 = float4(_4931.x, _4931.y, _4931.z, _388.w);
  _4932.w = _572;
  float _4949 = _456.y * _18_m46.w;
  float _4954 = max(0.00999999977648258209228515625f, _4949 + _18_m47.w);
  float3 _4968 = exp(_18_m45.xyz * ((-max(0.0f, (_494 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4954)) / _4954) * exp(_4949 + _18_m48.w))));
  float _4971 = dot(_700, _18_m44.xyz);
  float _4977 = _18_m45.w * _18_m45.w;
  float _4981 = (1.0f + _4977) - ((2.0f * _18_m45.w) * _4971);
  float3 _5311;
  float _5312;
  if (_18_m55.z > 0.0f) {
    uint3 _5139 = (uint3(int3(int(_826.x), int(_826.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5140 = _5139.y;
    uint _5141 = _5139.z;
    uint _5144 = _5139.x + (_5140 * _5141);
    uint _5146 = _5140 + (_5141 * _5144);
    uint _5148 = _5141 + (_5144 * _5146);
    uint _5150 = _5144 + (_5146 * _5148);
    float _5172 = dot(_700, -_16_m0[2].xyz);
    float3 _5182 = _456 - _16_m11.xyz;
    float _5184 = (_18_m55.w * ((_5172 > 5.9604644775390625e-08f) ? (1.0f / _5172) : 0.0f)) * (1.0f / _494);
    float _5185 = _5182.y;
    float _5186 = _5184 * _5185;
    float _5188 = _16_m11.y + _5186;
    float _5189 = _5185 - _5186;
    float _5191 = (1.0f - _5184) * _494;
    float _5205 = max(-127.0f, _18_m49.z * _5189);
    float _5229 = max(-127.0f, _18_m52.x * _5189);
    float _5240 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5188 - _18_m49.x)))) * ((abs(_5205) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5205)) / _5205) : (0.693147182464599609375f - (0.2402265071868896484375f * _5205)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5188 - _18_m52.z)))) * ((abs(_5229) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5229)) / _5229) : (0.693147182464599609375f - (0.2402265071868896484375f * _5229))));
    float _5262 = clamp((_494 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5265 = clamp((max(clamp(exp2(-(_5240 * _5191)), 0.0f, 1.0f), _18_m51.w) + clamp((_494 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5262, 0.0f, 1.0f);
    float4 _5305 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_23, float3((_1263 + ((((float3(uint3(_5150, _5146 + (_5148 * _5150), _389) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_827 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_827 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5311 = _5305.xyz + (((_18_m51.xyz * (1.0f - _5265)) + (((_18_m54.xyz * pow(clamp(dot(_493, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5240 * max(_5191 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5262))) * _5305.w);
    _5312 = _5305.w * _5265;
  } else {
    float3 _5011 = _456 - _16_m11.xyz;
    float _5013 = _5011.y;
    float _5027 = max(-127.0f, _18_m49.z * _5013);
    float _5051 = max(-127.0f, _18_m52.x * _5013);
    float _5062 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5027) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5027)) / _5027) : (0.693147182464599609375f - (0.2402265071868896484375f * _5027)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5051) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5051)) / _5051) : (0.693147182464599609375f - (0.2402265071868896484375f * _5051))));
    float _5084 = clamp((_494 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5087 = clamp((max(clamp(exp2(-(_5062 * _494)), 0.0f, 1.0f), _18_m51.w) + clamp((_494 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5084, 0.0f, 1.0f);
    _5311 = (_18_m51.xyz * (1.0f - _5087)) + (((_18_m54.xyz * pow(clamp(dot(_493, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5062 * max(_494 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5084));
    _5312 = _5087;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x86E92009:
  float3 _5322 = lerp(_721.xyz, ((_4932.xyz * (_4968 * _5312)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4971 * _4971)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4977) / max((12.56637096405029296875f * _4981) * sqrt(_4981), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4968)) * _5312) + _5311)).xyz, _572.xxx).xyz;
  */
  float3 _5322 = lerp(_721.xyz, ((_4932.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_4968 * _5312)) : (_4968 * _5312))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4971 * _4971)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4977) / max((12.56637096405029296875f * _4981) * sqrt(_4981), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4968)) * _5312 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5311 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz, _572.xxx).xyz;
  // RenoDX code end
  float3 _5332 = lerp(dot(_5322, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5322, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5342 = min(lerp(((sqrt(sqrt(abs(_739 * 0.5f))) * float2(int2(sign(_739)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _726.xx), 1.0f.xx);
  float4 _5343 = float4(_5342.x, _5342.y, _388.z, _388.w);
  _5343.z = float(clamp(max(dot(_5332.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _572, _572) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5343.w = lerp(0.0f, 0.699999988079071044921875f, _726);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x86E92009:
  _13 = float4(_5332.x, _5332.y, _5332.z, _4932.w);
  */
  float3 renodx_output_color = float3(_5332.x, _5332.y, _5332.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4932.w);
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

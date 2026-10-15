#include "../common.hlsl"

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

static float _389;
static float4 _390;
static float3 _391;
static uint _394;

static const float4 _367[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _368[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _369[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
  float4 _39_m16 : packoffset(c4);
  float _39_m17 : packoffset(c5);
  float _39_m18 : packoffset(c5.y);
  float _39_m19 : packoffset(c5.z);
  float _39_m20 : packoffset(c5.w);
  float4 _39_m21 : packoffset(c6);
  float4 _39_m22 : packoffset(c7);
  float4 _39_m23 : packoffset(c8);
  float4 _39_m24 : packoffset(c9);
  float4 _39_m25 : packoffset(c10);
  float _39_m26 : packoffset(c11);
  float _39_m27 : packoffset(c11.y);
  float _39_m28 : packoffset(c11.z);
  float _39_m29 : packoffset(c11.w);
  float4 _39_m30 : packoffset(c12);
  float4 _39_m31 : packoffset(c13);
  float4 _39_m32 : packoffset(c14);
  float4 _39_m33 : packoffset(c15);
  float _39_m34 : packoffset(c16);
  float _39_m35 : packoffset(c16.y);
  float _39_m36 : packoffset(c16.z);
  float _39_m37 : packoffset(c16.w);
  float _39_m38 : packoffset(c17);
  float _39_m39 : packoffset(c17.y);
  float _39_m40 : packoffset(c17.z);
  float _39_m41 : packoffset(c17.w);
  float _39_m42 : packoffset(c18);
  float _39_m43 : packoffset(c18.y);
  float _39_m44 : packoffset(c18.z);
  float _39_m45 : packoffset(c18.w);
  float _39_m46 : packoffset(c19);
  float _39_m47 : packoffset(c19.y);
  float _39_m48 : packoffset(c19.z);
  float _39_m49 : packoffset(c19.w);
  float _39_m50 : packoffset(c20);
  float _39_m51 : packoffset(c20.y);
  float _39_m52 : packoffset(c20.z);
  float _39_m53 : packoffset(c20.w);
  float _39_m54 : packoffset(c21);
  float _39_m55 : packoffset(c21.y);
  float _39_m56 : packoffset(c21.z);
  float _39_m57 : packoffset(c21.w);
  float4 _39_m58 : packoffset(c22);
  float4 _39_m59 : packoffset(c23);
  float4 _39_m60 : packoffset(c24);
  float4 _39_m61 : packoffset(c25);
  float4 _39_m62 : packoffset(c26);
  float _39_m63 : packoffset(c27);
  float _39_m64 : packoffset(c27.y);
  float _39_m65 : packoffset(c27.z);
  float _39_m66 : packoffset(c27.w);
  float _39_m67 : packoffset(c28);
  float _39_m68 : packoffset(c28.y);
  float _39_m69 : packoffset(c28.z);
  float _39_m70 : packoffset(c28.w);
  float _39_m71 : packoffset(c29);
  float _39_m72 : packoffset(c29.y);
  float _39_m73 : packoffset(c29.z);
  float _39_m74 : packoffset(c29.w);
  float _39_m75 : packoffset(c30);
  float _39_m76 : packoffset(c30.y);
  float _39_m77 : packoffset(c30.z);
  float _39_m78 : packoffset(c30.w);
  float _39_m79 : packoffset(c31);
  float _39_m80 : packoffset(c31.y);
  float _39_m81 : packoffset(c31.z);
  float _39_m82 : packoffset(c31.w);
  float _39_m83 : packoffset(c32);
  float _39_m84 : packoffset(c32.y);
  float _39_m85 : packoffset(c32.z);
  float _39_m86 : packoffset(c32.w);
  float _39_m87 : packoffset(c33);
  float4 _39_m88 : packoffset(c34);
  float4 _39_m89 : packoffset(c35);
  float _39_m90 : packoffset(c36);
  float _39_m91 : packoffset(c36.y);
  float _39_m92 : packoffset(c36.z);
  float _39_m93 : packoffset(c36.w);
  float4 _39_m94 : packoffset(c37);
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

[[vk::binding(52, 0)]] ByteAddressBuffer _57 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _64_65 : register(b51, space0) {
  float4 _65_m0[32] : packoffset(c0);
  column_major float4x4 _65_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _23 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _24 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(47, 0)]] Texture2D<float4> _28 : register(t47, space0);
[[vk::binding(7, 1)]] Texture2D<float4> _31 : register(t7, space1);
[[vk::binding(2, 1)]] SamplerState _32 : register(s2, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _33 : register(t6, space1);
[[vk::binding(1, 1)]] SamplerState _34 : register(s1, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _35 : register(t3, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _36 : register(t4, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _37 : register(t5, space1);
[[vk::binding(37, 0)]] Texture3D<float4> _41 : register(t37, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _42 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _43 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _44 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _45 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _46 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _47 : register(t31, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _55 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _56 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _58 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _59 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _60 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _62 : register(t27, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _63 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _68 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _69 : register(t29, space0);

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
  float2 _421 = gl_FragCoord.xy * _18_m0.zw;
  uint2 _422 = uint2(gl_FragCoord.xy);
  float2 _424 = (_421 * 2.0f) - 1.0f.xx;
  float4 _427 = float4(_424, gl_FragCoord.z, 1.0f);
  _427.y = -_424.y;
  float4 _430 = mul(_16_m6, _427);
  float3 _434 = _430.xyz / _430.w.xxx;
  float4 _438 = float4(_434, 1.0f);
  float _441 = abs(mul(_16_m0, _438).z);
  float _445 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _450 = float4(_7.xyz, _445).xyz;
  float3 _471;
  do {
    if (_18_m4.w == 0.0f) {
      _471 = _16_m11.xyz - _434;
      break;
    } else {
      _471 = _16_m0[2].xyz;
      break;
    }
    break;  // unreachable workaround
  } while (false);
  float _472 = dot(_471, _471);
  float _474 = rsqrt(max(_472, 9.9999999392252902907785028219223e-09f));
  float3 _475 = _471 * _474;
  float _476 = _472 * _474;
  float2 _499 = ((_4.zw * _39_m4) - (_5.xy * _39_m4)) + _5.xy;
  float4 _500 = _5 * _39_m4;
  float _524 = (_18_m77.w * (1.0f - _21_m0[_11]._m8.x)) + _21_m0[_11]._m8.y;
  float2 _543 = ((mul(((((_4.xy * _39_m23.x) + (_499 * _39_m23.y)) + (_39_m21.xy * _524)) + (_39_m21.zw * _500.x)) - 0.5f.xx, float2x2(float2(_39_m22.xy), float2(_39_m22.zw))) + 0.5f.xx) * _39_m24.xy) + _39_m24.zw;
  float _585 = frac((_21_m0[_11]._m0[0].w + _21_m0[_11]._m0[1].w) + _21_m0[_11]._m0[2].w);
  float _588 = lerp(0.0f, _585, _39_m82);
  _543.y = _543.y * (1.0f + min(_588, 0.5f));
  float4 _603 = _31.SampleBias(_32, _543 + _588.xx, _18_m16);
  float4 _614 = _33.SampleBias(_34, ((mul(((((_4.xy * _39_m33.x) + (_499 * _39_m33.y)) + (_39_m31.xy * _524)) + (_39_m31.zw * _500.y)) - 0.5f.xx, float2x2(float2(_39_m32.xy), float2(_39_m32.zw))) + 0.5f.xx) * _39_m30.xy) + _39_m30.zw, _18_m16);
  float4 _619 = (((_39_m16 * lerp(_8, 1.0f.xxxx, _39_m5.xxxx)) * float4(_39_m6, _39_m6, _39_m6, _39_m7)) * lerp(_603, float4(1.0f, 1.0f, 1.0f, _603.x), _39_m18.xxxx)) * lerp(_614, float4(1.0f, 1.0f, 1.0f, _614.x), _39_m26.xxxx);
  float2 _628 = ((float2(_422) * _18_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _631 = float4(_628, _28.SampleLevel(_23, _421, 0.0f).x, 1.0f);
  _631.y = -_628.y;
  float4 _634 = mul(_16_m6, _631);
  float _692 = fmod(floor((_524 + lerp(0.0f, _585, _39_m55)) * _39_m52), _39_m59.y * _39_m59.x);
  float _695 = _39_m59.y - floor(_692 / _39_m59.x);
  float _698 = 1.0f / _39_m59.x;
  float _699 = 1.0f / _39_m59.y;
  float4 _702 = float4(_698, _699, (_692 - (_695 * _39_m59.x)) * _698, _695 * _699);
  float2 _706 = (_4.xy * _702.xy) + _702.zw;
  float4 _709 = _36.SampleBias(_25, _706, _18_m16);
  float4 _712 = clamp(_709 - _39_m57.xxxx, 0.0f.xxxx, 1.0f.xxxx);
  float _716 = _712.w;
  float _720 = _716 * _39_m53;
  float4 _724 = _35.SampleBias(_25, _706, _18_m16);
  _724.w = _724.w * _724.x;
  float2 _731 = (_724.wy * 2.0f) - 1.0f.xx;
  float3 _732 = float3(_731.x, _731.y, _391.z);
  float2 _733 = _731.xy;
  _732.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_733, _733), 0.0f, 1.0f)));
  float2 _741 = _732.xy * _39_m50;
  float3 _743 = mul(float3(_741.x, _741.y, _732.z), float3x3(_450 * 1.0f, (cross(_6, _450) * _445) * 1.0f, _6 * 1.0f));
  float3 _747 = _743 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_743, _743)));
  bool3 _753 = (gl_FrontFacing ? true : false).xxx;
  float3 _754 = -_747;
  float3 _755 = float3(_753.x ? _747.x : _754.x, _753.y ? _747.y : _754.y, _753.z ? _747.z : _754.z);
  float _790 = ((((clamp(((_619.w * ((_39_m34 != 0.0f) ? (clamp((_441 - _39_m35) / (_39_m36 - _39_m35), 0.0f, 1.0f) * clamp((_441 - _39_m37) / (_39_m38 - _39_m37), 0.0f, 1.0f)) : 1.0f)) * _720) - _39_m56, 0.0f, 1.0f) * _39_m53) * clamp(((abs(mul(_16_m0, float4(_634.xyz / _634.w.xxx, 1.0f)).z) - _441) + _39_m47) / _39_m46, 0.0f, 1.0f)) * lerp(1.0f, _8.w, _39_m80)) * lerp(1.0f, pow(abs(dot(_6, _475)), _39_m73), _39_m75)) * (1.0f - _21_m0[_11]._m1.y);
  float _798 = abs(frac(52.98291778564453125f * frac(dot(gl_FragCoord.xy, float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))));
  float _819 = clamp(_790 * (((_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _798 : (-_798))) > 0.0f) ? 1.0f : (1.0f - _39_m0)), 0.0f, 1.0f);
  float3 _820 = clamp(((_619.xyz + ((_712.xyz * _39_m58.xyz) * _716)).xyz * ((1.0f - _39_m12) + (_18_m20.y * _39_m12))).xyz, 0.0f.xxx, 1000.0f.xxx).xyz;
  float3 _823 = _820 * _39_m76;
  float3 _825 = _820 * (1.0f - _39_m76);
  float3 _863;
  if (_39_m92 > 0.0f) {
    _863 = _825 + (((_37.SampleBias(_25, (mul(float3x3(_16_m0[0].xyz, _16_m0[1].xyz, _16_m0[2].xyz), _755).xy + 1.0f.xx) * 0.5f, _18_m16).xyz * _39_m90) * _39_m94.xyz) * ((1.0f - _39_m91) + (_18_m20.y * _39_m91)));
  } else {
    _863 = _825;
  }
  float _872 = (_39_m65 * (_720 * lerp(1.0f, _8.x, _39_m80))) * _823.x;
  float2 _921;
  if (clamp((_39_m3 + 1.0f) - _39_m0, 0.0f, 1.0f) > 0.5f) {
    float2 _907 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
    _907.y = -_907.y;
    _921 = ((sqrt(sqrt(abs(_907 * 0.5f))) * float2(int2(sign(_907)))) * 0.5f) + 0.5f.xx;
  } else {
    _921 = 0.0f.xx;
  }
  float3 _923 = (0.07999999821186065673828125f * _39_m79).xxx;
  uint2 _954;
  float _955;
  if (_18_m24.y == 1.0f) {
    float4 _931 = mul(_18_m138, _438);
    float4 _934 = _931;
    _934.y = -_931.y;
    float4 _937 = _934 * (1.0f / _931.w);
    _954 = uint2(clamp(((_937.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _955 = 1.0f / ((_18_m2.z * _937.z) + _18_m2.w);
  } else {
    _954 = _422;
    _955 = _441;
  }
  float3 _957 = _434 + (_755 * 0.25f);
  float3 _967 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _976 = _957 - (_18_m108.xyz + (_967 * (-_18_m110.w)));
  float _991 = max(min(max((max(abs(_976.x), abs(_976.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_976.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1293;
  float4 _1294;
  float4 _1295;
  float _1296;
  float _1297;
  if ((_18_m108.w != 0.0f) && (_991 < 1.0f)) {
    float3 _1004 = _957 - (_18_m108.xyz + (_967 * (-_18_m110.y)));
    float _1018 = max(clamp((max(abs(_1004.x), abs(_1004.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1004.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1094;
    float4 _1095;
    float4 _1096;
    float4 _1097;
    if (_1018 < 1.0f) {
      float3 _1027 = ((_957 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1029 = _1027 - floor(_1027);
      float4 _1033 = _42.SampleLevel(_25, _1029, 0.0f);
      float _1034 = 1.0f - _1018;
      float _1038 = _18_m109.y * 0.5f;
      float _1043 = _1029.x;
      float _1044 = clamp(_1029.y, _1038, 1.0f - _1038) * 0.3333333432674407958984375f;
      float _1045 = _1029.z;
      float4 _1048 = _43.SampleLevel(_24, float3(_1043, _1044, _1045), 0.0f);
      float _1064 = _1033.x;
      float _1074 = _1033.y;
      float _1084 = _1033.z;
      _1094 = _991 + (_1048.w * _1034);
      _1095 = float4(((_43.SampleLevel(_24, float3(_1043, _1044 + 0.666666686534881591796875f, _1045), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1084, _1084) * _1034;
      _1096 = float4(((_43.SampleLevel(_24, float3(_1043, _1044 + 0.3333333432674407958984375f, _1045), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1074, _1074) * _1034;
      _1097 = float4(((_1048.xyz * 4.0f) - 2.0f.xxx) * _1064, _1064) * _1034;
    } else {
      _1094 = _991;
      _1095 = 0.0f.xxxx;
      _1096 = 0.0f.xxxx;
      _1097 = 0.0f.xxxx;
    }
    float3 _1103 = _957 - (_18_m108.xyz + (_967 * (-_18_m110.z)));
    float _1117 = max(clamp((max(abs(_1103.x), abs(_1103.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1103.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1197;
    float4 _1198;
    float4 _1199;
    float4 _1200;
    if (_1117 < 1.0f) {
      float3 _1126 = ((_957 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1128 = _1126 - floor(_1126);
      float4 _1132 = _44.SampleLevel(_25, _1128, 0.0f);
      float _1134 = _1018 * (1.0f - _1117);
      float _1138 = _18_m109.y * 0.5f;
      float _1143 = _1128.x;
      float _1144 = clamp(_1128.y, _1138, 1.0f - _1138) * 0.3333333432674407958984375f;
      float _1145 = _1128.z;
      float4 _1148 = _45.SampleLevel(_24, float3(_1143, _1144, _1145), 0.0f);
      float _1164 = _1132.x;
      float _1175 = _1132.y;
      float _1186 = _1132.z;
      _1197 = _1094 + (_1148.w * _1134);
      _1198 = _1095 + (float4(((_45.SampleLevel(_24, float3(_1143, _1144 + 0.666666686534881591796875f, _1145), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1186, _1186) * _1134);
      _1199 = _1096 + (float4(((_45.SampleLevel(_24, float3(_1143, _1144 + 0.3333333432674407958984375f, _1145), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1175, _1175) * _1134);
      _1200 = _1097 + (float4(((_1148.xyz * 4.0f) - 2.0f.xxx) * _1164, _1164) * _1134);
    } else {
      _1197 = _1094;
      _1198 = _1095;
      _1199 = _1096;
      _1200 = _1097;
    }
    float4 _1283;
    float4 _1284;
    float4 _1285;
    float _1286;
    if (_1117 > 0.0f) {
      float3 _1209 = ((_957 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1212 = _18_m109.xyz * 0.5f;
      float3 _1214 = clamp(_1209 - floor(_1209), _1212, 1.0f.xxx - _1212);
      float4 _1218 = _46.SampleLevel(_25, _1214, 0.0f);
      float _1220 = _1117 * (1.0f - _991);
      float _1224 = _18_m109.y * 0.5f;
      float _1229 = _1214.x;
      float _1230 = clamp(_1214.y, _1224, 1.0f - _1224) * 0.3333333432674407958984375f;
      float _1231 = _1214.z;
      float4 _1234 = _47.SampleLevel(_24, float3(_1229, _1230, _1231), 0.0f);
      float _1250 = _1218.x;
      float _1261 = _1218.y;
      float _1272 = _1218.z;
      _1283 = _1198 + (float4(((_47.SampleLevel(_24, float3(_1229, _1230 + 0.666666686534881591796875f, _1231), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1272, _1272) * _1220);
      _1284 = _1199 + (float4(((_47.SampleLevel(_24, float3(_1229, _1230 + 0.3333333432674407958984375f, _1231), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1261, _1261) * _1220);
      _1285 = _1200 + (float4(((_1234.xyz * 4.0f) - 2.0f.xxx) * _1250, _1250) * _1220);
      _1286 = _1197 + (_1234.w * _1220);
    } else {
      _1283 = _1198;
      _1284 = _1199;
      _1285 = _1200;
      _1286 = _1197;
    }
    float _1289 = clamp((_1286 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1293 = _1283;
    _1294 = _1284;
    _1295 = _1285;
    _1296 = _1289 - _991;
    _1297 = (_1289 + _991) * 0.5f;
  } else {
    _1293 = 0.0f.xxxx;
    _1294 = 0.0f.xxxx;
    _1295 = 0.0f.xxxx;
    _1296 = 0.0f;
    _1297 = 1.0f;
  }
  float4 _1317 = _1295 + float4(_18_m111.x * _1297, (_18_m111.y * _1297) + ((_18_m111.w * _1296) * 0.5f), _18_m111.z * _1297, (_18_m111.w * _1297) + ((_18_m111.y * _1296) * 0.375f));
  float4 _1337 = _1294 + float4(_18_m112.x * _1297, (_18_m112.y * _1297) + ((_18_m112.w * _1296) * 0.5f), _18_m112.z * _1297, (_18_m112.w * _1297) + ((_18_m112.y * _1296) * 0.375f));
  float4 _1357 = _1293 + float4(_18_m113.x * _1297, (_18_m113.y * _1297) + ((_18_m113.w * _1296) * 0.5f), _18_m113.z * _1297, (_18_m113.w * _1297) + ((_18_m113.y * _1296) * 0.375f));
  float3 _1385 = lerp(1.0f.xxx, clamp(abs((frac(float3(_39_m63, _39_m64, _872).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _39_m64.xxx) * _872;
  float3 _1392 = ((float3(max(0.0f, dot(_1317.xyz, _755) + _1317.w), max(0.0f, dot(_1337.xyz, _755) + _1337.w), max(0.0f, dot(_1357.xyz, _755) + _1357.w)) * (_823 + (_1385 * _39_m66))) * 1.0f) * _18_m22.x;
  float3 _1401 = (((_1392.x + _1392.y) + _1392.z) * 0.3333333432674407958984375f).xxx;
  float3 _1406 = (_1401 + ((_1392 - _1401) * _39_m74)) + ((-0.0f).xxx * _39_m74);
  float3 _1412 = _18_m78.w.xxx;
  float _1420 = 1.0f - _39_m11;
  float4 _2273;
  do {
    [branch] if (_52_m4 == 0) {
      _2273 = 0.0f.xxxx;
      break;
    }
    float3 _1430 = _434 + (_755 * 0.5f);
    float2 _2102;
    do {
      if (_54_m7.w >= 0.9900000095367431640625f) {
        _2102 = float2(_54_m7.z, 1.0f);
        break;
      }
      float _2026;
      if (_39_m86 > 0.0f) {
        float _1838 = 1.0f - clamp(dot(_755, _50_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1855 = float4((_1430 - (_50_m0.xyz * (_1838 * _54_m22.x))) + (_755 * (_1838 * _54_m22.y)), 1.0f);
        float4 _1856 = mul(_54_m21, _1855);
        float _2025;
        if (all(bool2(_1856.xy.x > 0.0f.xx.x, _1856.xy.y > 0.0f.xx.y)) && all(bool2(_1856.xy.x < 1.0f.xx.x, _1856.xy.y < 1.0f.xx.y))) {
          uint _1876 = clamp(uint((floor(_1856.y * _54_m23.z) + _1856.x) * _54_m23.y), 0u, 127u);
          uint _1880 = asuint(_54_m25[_1876].x);
          float2 _1881 = spvUnpackHalf2x16(_1880);
          float _1882 = _1881.x;
          float _2024;
          if (_1882 >= 0.0f) {
            float4x4 _1891 = _54_m20;
            _1891[0].w = _54_m25[_1876].y;
            _1891[1].w = _54_m25[_1876].z;
            _1891[2].w = _54_m25[_1876].w;
            float4 _1898 = mul(_1891, _1855);
            float _2023;
            if (all(bool3(_1898.xyz.x > 0.0f.xxx.x, _1898.xyz.y > 0.0f.xxx.y, _1898.xyz.z > 0.0f.xxx.z)) && all(bool3(_1898.xyz.x < 1.0f.xxx.x, _1898.xyz.y < 1.0f.xxx.y, _1898.xyz.z < 1.0f.xxx.z))) {
              float2 _1922 = float4((_1898.xy * _54_m22.zw) + float2(_1882, spvUnpackHalf2x16(_1880 >> 16u).x), _1898.z, 1.0f).xy * _54_m24.zw;
              float2 _1924 = floor(_1922 + 0.5f.xx);
              float2 _1925 = _1922 - _1924;
              float _1926 = _1925.x;
              float _1927 = _1926 + 0.5f;
              float _1929 = (_1927 * _1927) * 0.5f;
              float _1932 = min(_1926, 0.0f);
              float _1936 = max(_1926, 0.0f);
              float4 _1940 = float4(_1929 - _1926, (1.0f - _1926) - (_1932 * _1932), (_1926 + 1.0f) - (_1936 * _1936), _1929) * 0.44444000720977783203125f;
              float _1941 = _1925.y;
              float _1942 = _1941 + 0.5f;
              float _1944 = (_1942 * _1942) * 0.5f;
              float _1947 = min(_1941, 0.0f);
              float _1951 = max(_1941, 0.0f);
              float4 _1955 = float4(_1944 - _1941, (1.0f - _1941) - (_1947 * _1947), (_1941 + 1.0f) - (_1951 * _1951), _1944) * 0.44444000720977783203125f;
              float2 _1957 = _1940.yw;
              float2 _1958 = _1940.xz + _1957;
              float2 _1960 = _1955.yw;
              float2 _1961 = _1955.xz + _1960;
              float2 _1967 = ((_1957 / _1958) + float2(-1.5f, 0.5f)) * _54_m24.xx;
              float2 _1969 = ((_1960 / _1961) + float2(-1.5f, 0.5f)) * _54_m24.yy;
              float2 _1971 = _1924 * _54_m24.xy;
              float _1972 = _1967.x;
              float _1973 = _1969.x;
              float _1976 = _1967.y;
              float _1979 = _1969.y;
              float _1984 = _1958.x;
              float _1985 = _1961.x;
              float _1987 = _1958.y;
              float _1989 = _1961.y;
              _2023 = ((((_1984 * _1985) * _59.SampleCmpLevelZero(_26, float3(_1971 + float2(_1972, _1973), _389).xy, _1898.z)) + ((_1987 * _1985) * _59.SampleCmpLevelZero(_26, float3(_1971 + float2(_1976, _1973), _389).xy, _1898.z))) + ((_1984 * _1989) * _59.SampleCmpLevelZero(_26, float3(_1971 + float2(_1972, _1979), _389).xy, _1898.z))) + ((_1987 * _1989) * _59.SampleCmpLevelZero(_26, float3(_1971 + float2(_1976, _1979), _389).xy, _1898.z));
            } else {
              _2023 = 1.0f;
            }
            _2024 = _2023;
          } else {
            _2024 = 1.0f;
          }
          _2025 = _2024;
        } else {
          _2025 = 1.0f;
        }
        _2026 = _2025;
      } else {
        int _1449 = int(_54_m7.x);
        bool3 _1451 = (_1449 == 2).xxx;
        float3 _1459 = _1430 - float3(_1451.x ? _54_m1[0].xyz.x : _16_m11.xyz.x, _1451.y ? _54_m1[0].xyz.y : _16_m11.xyz.y, _1451.z ? _54_m1[0].xyz.z : _16_m11.xyz.z);
        float _1470 = max(clamp((_54_m6.w - dot(_1459, _1459)) * _54_m6.z, 0.0f, 1.0f), _54_m8.x);
        float _1627;
        bool _1628;
        if (_1470 > 0.0f) {
          float _1625;
          bool _1626;
          if (_1449 > 0) {
            float3 _1477 = _1430 - _54_m1[0].xyz;
            float3 _1481 = _1430 - _54_m1[1].xyz;
            float3 _1485 = _1430 - _54_m1[2].xyz;
            float3 _1489 = _1430 - _54_m1[3].xyz;
            float4 _1494 = float4(dot(_1477, _1477), dot(_1481, _1481), dot(_1485, _1485), dot(_1489, _1489));
            float4 _1503 = float4(_54_m1[0].w, _54_m1[1].w, _54_m1[2].w, _54_m1[3].w);
            float4 _1505 = float4(bool4(_1494.x < _1503.x, _1494.y < _1503.y, _1494.z < _1503.z, _1494.w < _1503.w));
            float3 _1509 = clamp(_1505.yzw - _1505.xyz, 0.0f.xxx, 1.0f.xxx);
            float _1513 = clamp(4.0f - dot(float4(_1505.x, _1509.x, _1509.y, _1509.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
            float _1515 = clamp(_1513 + 1.0f, 0.0f, 3.0f);
            uint _1516 = uint(_1513);
            uint _1524 = uint(_1515);
            float _1530 = dot(_1494, _367[_1524]) / _54_m1[_1524].w;
            float _1548;
            if (((_1515 > _1513) && (_1530 >= 0.0f)) && (_1530 <= 1.0f)) {
              _1548 = _1513 + step(frac(52.98291778564453125f * frac(dot(float2(_954) + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1494, _367[_1516]) / _54_m1[_1516].w) - 0.89999997615814208984375f) * 12.0f);
            } else {
              _1548 = _1513;
            }
            float _1549 = clamp(_1548, 0.0f, 4.0f);
            float4 _1557 = mul(_54_m0[uint(_1549)], float4(_1430, 1.0f));
            float _1560 = _1557.z;
            float4 _1561 = float4(_1557.xy, _1560, _1549);
            float3 _1562 = _1561.xyz;
            bool3 _1563 = bool3(_1562.x <= 0.0f.xxx.x, _1562.y <= 0.0f.xxx.y, _1562.z <= 0.0f.xxx.z);
            bool3 _1564 = bool3(_1562.x >= 1.0f.xxx.x, _1562.y >= 1.0f.xxx.y, _1562.z >= 1.0f.xxx.z);
            bool _1570 = any(bool3(_1563.x || _1564.x, _1563.y || _1564.y, _1563.z || _1564.z)) || ((asuint(_1560) & 2147483647u) > 2139095040u);
            int _1571 = int(_1549);
            float2 _1586 = float4(_54_m3[_1571].xy + (_1561.xy * _54_m3[_1571].zw), _1560, _1549).xy;
            _1625 = _1570 ? 1.0f : (0.25f * (((_55.SampleCmpLevelZero(_26, float3(_1586 + (_54_m4.xy * float2(-0.7070000171661376953125f, 0.0f)), _389).xy, _1560) + _55.SampleCmpLevelZero(_26, float3(_1586 + (_54_m4.xy * float2(0.7070000171661376953125f, 0.0f)), _389).xy, _1560)) + _55.SampleCmpLevelZero(_26, float3(_1586 + (_54_m4.xy * float2(0.0f, -0.7070000171661376953125f)), _389).xy, _1560)) + _55.SampleCmpLevelZero(_26, float3(_1586 + (_54_m4.xy * float2(0.0f, 0.7070000171661376953125f)), _389).xy, _1560)));
            _1626 = _1570;
          } else {
            _1625 = 1.0f;
            _1626 = false;
          }
          _1627 = _1625;
          _1628 = _1626;
        } else {
          _1627 = 1.0f;
          _1628 = false;
        }
        float _1828;
        float _1829;
        if ((_1470 < 1.0f) || (_54_m8.x > 0.5f)) {
          float _1639 = 1.0f - clamp(dot(_755, _50_m0.xyz), 0.0f, 0.89999997615814208984375f);
          float4 _1656 = float4((_1430 - (_50_m0.xyz * (_1639 * _54_m22.x))) + (_755 * (_1639 * _54_m22.y)), 1.0f);
          float4 _1657 = mul(_54_m21, _1656);
          float _1826;
          if (all(bool2(_1657.xy.x > 0.0f.xx.x, _1657.xy.y > 0.0f.xx.y)) && all(bool2(_1657.xy.x < 1.0f.xx.x, _1657.xy.y < 1.0f.xx.y))) {
            uint _1677 = clamp(uint((floor(_1657.y * _54_m23.z) + _1657.x) * _54_m23.y), 0u, 127u);
            uint _1681 = asuint(_54_m25[_1677].x);
            float2 _1682 = spvUnpackHalf2x16(_1681);
            float _1683 = _1682.x;
            float _1825;
            if (_1683 >= 0.0f) {
              float4x4 _1692 = _54_m20;
              _1692[0].w = _54_m25[_1677].y;
              _1692[1].w = _54_m25[_1677].z;
              _1692[2].w = _54_m25[_1677].w;
              float4 _1699 = mul(_1692, _1656);
              float _1824;
              if (all(bool3(_1699.xyz.x > 0.0f.xxx.x, _1699.xyz.y > 0.0f.xxx.y, _1699.xyz.z > 0.0f.xxx.z)) && all(bool3(_1699.xyz.x < 1.0f.xxx.x, _1699.xyz.y < 1.0f.xxx.y, _1699.xyz.z < 1.0f.xxx.z))) {
                float2 _1723 = float4((_1699.xy * _54_m22.zw) + float2(_1683, spvUnpackHalf2x16(_1681 >> 16u).x), _1699.z, 1.0f).xy * _54_m24.zw;
                float2 _1725 = floor(_1723 + 0.5f.xx);
                float2 _1726 = _1723 - _1725;
                float _1727 = _1726.x;
                float _1728 = _1727 + 0.5f;
                float _1730 = (_1728 * _1728) * 0.5f;
                float _1733 = min(_1727, 0.0f);
                float _1737 = max(_1727, 0.0f);
                float4 _1741 = float4(_1730 - _1727, (1.0f - _1727) - (_1733 * _1733), (_1727 + 1.0f) - (_1737 * _1737), _1730) * 0.44444000720977783203125f;
                float _1742 = _1726.y;
                float _1743 = _1742 + 0.5f;
                float _1745 = (_1743 * _1743) * 0.5f;
                float _1748 = min(_1742, 0.0f);
                float _1752 = max(_1742, 0.0f);
                float4 _1756 = float4(_1745 - _1742, (1.0f - _1742) - (_1748 * _1748), (_1742 + 1.0f) - (_1752 * _1752), _1745) * 0.44444000720977783203125f;
                float2 _1758 = _1741.yw;
                float2 _1759 = _1741.xz + _1758;
                float2 _1761 = _1756.yw;
                float2 _1762 = _1756.xz + _1761;
                float2 _1768 = ((_1758 / _1759) + float2(-1.5f, 0.5f)) * _54_m24.xx;
                float2 _1770 = ((_1761 / _1762) + float2(-1.5f, 0.5f)) * _54_m24.yy;
                float2 _1772 = _1725 * _54_m24.xy;
                float _1773 = _1768.x;
                float _1774 = _1770.x;
                float _1777 = _1768.y;
                float _1780 = _1770.y;
                float _1785 = _1759.x;
                float _1786 = _1762.x;
                float _1788 = _1759.y;
                float _1790 = _1762.y;
                _1824 = ((((_1785 * _1786) * _59.SampleCmpLevelZero(_26, float3(_1772 + float2(_1773, _1774), _389).xy, _1699.z)) + ((_1788 * _1786) * _59.SampleCmpLevelZero(_26, float3(_1772 + float2(_1777, _1774), _389).xy, _1699.z))) + ((_1785 * _1790) * _59.SampleCmpLevelZero(_26, float3(_1772 + float2(_1773, _1780), _389).xy, _1699.z))) + ((_1788 * _1790) * _59.SampleCmpLevelZero(_26, float3(_1772 + float2(_1777, _1780), _389).xy, _1699.z));
              } else {
                _1824 = 1.0f;
              }
              _1825 = _1824;
            } else {
              _1825 = 1.0f;
            }
            _1826 = _1825;
          } else {
            _1826 = 1.0f;
          }
          _1828 = _1628 ? _1826 : _1627;
          _1829 = _1826;
        } else {
          _1828 = _1627;
          _1829 = 1.0f;
        }
        _2026 = lerp(lerp(_1829, _1828, _1470), min(_1829, _1828), _54_m8.x);
      }
      float _2097;
      if (_2026 > 0.001000000047497451305389404296875f) {
        float3 _2059 = _1430 - _18_m65.xyz;
        float2 _2064 = (_2059 + (_18_m68.xyz * _2059.y)).xz * _18_m66.z;
        float2 _2065 = _18_m67.xy * _18_m77.w;
        float3 _2072 = _1430 - _18_m69.xyz;
        float2 _2080 = _18_m69.w.xx;
        float4 _2087 = _58.SampleLevel(_25, lerp(_2064 * _18_m67.w, (_2072 + (_18_m68.xyz * _2072.y)).xz * _18_m70.x, _2080) + lerp(_2065, _18_m70.yz * _18_m77.w, _2080), 0.0f);
        _2097 = _2026 * lerp(1.0f, lerp(_58.SampleLevel(_25, _2064 + _2065, 0.0f).x, lerp(_2087.x, _2087.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_2059.xz))), _18_m67.z);
      } else {
        _2097 = _2026;
      }
      _2102 = float2(lerp(_2097, _54_m7.z, _54_m7.w), _2097);
      break;
    } while (false);
    float _2107 = lerp(1.0f, min(1.0f, _2102.x), _54_m6.x);
    float4 _2272;
    if (_2107 > 0.001000000047497451305389404296875f) {
      float3 _2118 = reflect(-_475, _755);
      float3 _2119 = -_50_m0.xyz;
      float _2124 = dot(_2119, _2118);
      float3 _2126 = _2118 - (_2119 * _2124);
      bool3 _2128 = (_2124 < _50_m4.z).xxx;
      float3 _2136 = normalize((_2119 * _50_m4.z) + ((_2126 * rsqrt(max(6.103515625e-05f, dot(_2126, _2126)))) * _50_m4.y));
      float3 _2137 = float3(_2128.x ? _2136.x : _2118.x, _2128.y ? _2136.y : _2118.y, _2128.z ? _2136.z : _2118.z);
      float3 _2141 = _2137 + _475;
      float3 _2145 = _2141 * rsqrt(max(6.103515625e-05f, dot(_2141, _2141)));
      float _2147 = clamp(dot(_2137, _755), 0.0f, 1.0f);
      float _2149 = clamp(dot(_755, _2145), 0.0f, 1.0f);
      float _2154 = clamp(dot(_755, _475), 0.0f, 1.0f);
      float _2155 = _39_m78 * _39_m78;
      float _2156 = _2155 * _2155;
      float _2177 = (((_2149 * _2156) - _2149) * _2149) + 1.0f;
      float _2180 = 1.0f - clamp(dot(_475, _2145), 0.0f, 1.0f);
      float _2181 = _2180 * _2180;
      float _2183 = (_2180 * _2181) * _2181;
      float _2207 = 1.0f - _39_m78;
      float _2214 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2207 * (1.04997003078460693359375f + (_2207 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2207))))));
      float _2215 = 1.0f - _2214;
      float3 _2218 = _923 + ((1.0f.xxx - _923) * 0.0476190485060214996337890625f);
      float _2229 = clamp(1.0f - _872, 0.0f, 1.0f);
      float _2237 = clamp((dot(_755, _2137) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
      float3 _2254 = clamp(clamp((min(((_923 * (1.0f - _2183)) + _2183.xxx) * ((_2156 / (_2177 * _2177)) * (0.5f / (((_2147 * sqrt(((((-_2154) * _2156) + _2154) * _2154) + _2156)) + (_2154 * sqrt(((((-_2147) * _2156) + _2147) * _2147) + _2156))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2218 * (((_62.SampleLevel(_24, (float2(_2154, _39_m78) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_2147, _39_m78) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2214) / _2215)) * _2218) / (1.0f.xxx - (_2218 * _2215)))) * _50_m4.x, 0.0f.xxx, 1000.0f.xxx) / max(_819, 0.00999999977648258209228515625f).xxx, 0.0f.xxx, 1000.0f.xxx) * _39_m72;
      // RenoDX: reduce waterfall specular intensity when enabled.
      _2254 *= FOG_MODIFICATION > 0.5f ? 0.5f : 1.0f;
      float3 _2259 = (((_2254 * _2147) + (_1385 * lerp(lerp(1.0f, (_2237 * sqrt(_2237)) * 1.66666662693023681640625f, _2229) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_475, _2137), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _2229)))) + ((_823 * 1.0f) * _2147)) * _50_m1.xyz;
      float3 _2270 = lerp(_2259, _2259 * _60.SampleBias(_24, float2(_2107, 0.5f), _18_m16).xyz, (1.0f - _2107).xxx) * 1.0f;
      _2272 = float4(_2270.x, _2270.y, _2270.z, 0.0f.xxxx.w);
    } else {
      _2272 = 0.0f.xxxx;
    }
    _2273 = _2272;
    break;
  } while (false);
  float2 _2274 = float2(_954);
  float2 _2276 = floor(_2274 * 0.03125f);
  int _2284 = int((_2276.x + (_2276.y * _52_m9)) * 8.0f);
  float _2291 = floor(_955 - (_18_m3.y * _52_m15));
  float _2295 = clamp(_2291, 0.0f, _52_m11 - 1.0f);
  int _2297 = int(_2295 * 8.0f);
  float3 _2299;
  float _2302;
  _2299 = 0.0f.xxx;
  _2302 = 1.0f;
  float3 _2300;
  float _2303;
  [loop] for (int _2304 = 0; _2304 <= 7; _2299 = _2300, _2302 = _2303, _2304++) {
    uint _2325 = (_2291 <= _2295) ? (_30.Load(uint((_52_m2 + _2284) + _2304) * 4 + 0) & _30.Load(uint((_52_m3 + _2297) + _2304) * 4 + 0)) : 0u;
    uint _2326 = uint(_2304);
    float3 _2330;
    _2303 = _2302;
    _2330 = 0.0f.xxx;
    uint _2333;
    float _2328;
    float3 _2331;
    [loop] for (uint _2332 = _2325; _2332 != 0u; _2303 = _2328, _2330 = _2331, _2332 = _2333) {
      uint _2337 = firstbitlow(_2332);
      _2333 = _2332 ^ (1u << (_2337 & 31u));
      int _2343 = int((32u * _2326) + _2337) * 8;
      int _2346 = _2343 + 1;
      int _2349 = _2343 + 2;
      int _2352 = _2343 + 3;
      int _2355 = _2343 + 4;
      int _2358 = _2343 + 5;
      int _2361 = _2343 + 6;
      int _2364 = _2343 + 7;
      uint _2368 = uint(_50_m6[_2358].w);
      float _2443;
      if ((_2368 & 1u) == 1u) {
        uint _2374 = asuint(_50_m6[_2358].x);
        uint _2381 = asuint(_50_m6[_2358].y);
        uint _2388 = asuint(_50_m6[_2358].z);
        uint _2395 = asuint(_50_m6[_2361].x);
        uint _2402 = asuint(_50_m6[_2361].y);
        uint _2409 = asuint(_50_m6[_2361].z);
        float3 _2428 = abs(mul(float4(_434 - _50_m6[_2346].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2374).x, spvUnpackHalf2x16(_2388).x, spvUnpackHalf2x16(_2402).x, 0.0f), float4(spvUnpackHalf2x16(_2374 >> 16u).x, spvUnpackHalf2x16(_2388 >> 16u).x, spvUnpackHalf2x16(_2402 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2381).x, spvUnpackHalf2x16(_2395).x, spvUnpackHalf2x16(_2409).x, 0.0f), float4(spvUnpackHalf2x16(_2381 >> 16u).x, spvUnpackHalf2x16(_2395 >> 16u).x, spvUnpackHalf2x16(_2409 >> 16u).x, 0.0f))).xyz);
        float _2435 = _50_m6[_2364].x * 0.5f;
        float _2441 = 1.0f - clamp((max(max(_2428.x, _2428.y), _2428.z) - (_2435 + 0.5f)) / (0.5f - _2435), 0.0f, 1.0f);
        _2443 = _2441 * _2441;
      } else {
        _2443 = 1.0f;
      }
      uint _2447 = uint(_50_m6[_2343].w);
      bool _2450 = _50_m6[_2352].z > 0.5f;
      if ((false || (_2443 < 0.001000000047497451305389404296875f)) || ((_2447 < 4u) && _2450)) {
        _2328 = _2303;
        _2331 = _2330;
        continue;
      }
      float _5003;
      float3 _5004;
      do {
        [branch] if (_2447 >= 4u) {
          float3 _3680;
          do {
            float3 _2469 = _50_m6[_2346].xyz - _434;
            if (dot(_50_m6[_2352].xyz, _2469) > 0.0f) {
              _3680 = 0.0f.xxx;
              break;
            }
            float _2476 = dot(_2469, _2469) * _50_m6[_2346].w;
            float _2479 = clamp(1.0f - (_2476 * _2476), 0.0f, 1.0f);
            float _2480 = _2479 * _2479;
            if (_2480 <= 0.0f) {
              _3680 = 0.0f.xxx;
              break;
            }
            float3 _2519;
            float _2520;
            bool _2521;
            float3 _2549;
            float3 _2551;
            float3 _2553;
            float3 _2555;
            float3 _2484 = _50_m6[_2349].xyz * _50_m6[_2349].w;
            float3 _2485 = _50_m6[_2346].xyz - _2484;
            float3 _2486 = _50_m6[_2355].xyz * _50_m6[_2352].w;
            float3 _2489 = _50_m6[_2346].xyz + _2484;
            float2 _2500 = (float2(clamp(_39_m78, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_755, _475), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2504 = _68.SampleLevel(_24, _2500, 0.0f);
            float4 _2508 = _69.SampleLevel(_24, _2500, 0.0f);
            float _2903;
            do {
              _2519 = _475 - (_755 * dot(_475, _755));
              _2520 = dot(_2519, _2519);
              _2521 = _2520 > 9.9999997473787516355514526367188e-05f;
              float3 _2544;
              if (_2521) {
                _2544 = _2519 * rsqrt(_2520);
              } else {
                float _2525 = _755.z;
                float _2527 = (_2525 >= 0.0f) ? 1.0f : (-1.0f);
                float _2529 = (-1.0f) / (_2527 + _2525);
                float _2531 = _755.x;
                _2544 = float3(1.0f + (((_2527 * _2529) * _2531) * _2531), ((_2527 * _2531) * _755.y) * _2529, (-_2527) * _2531);
              }
              float3x3 _2548 = mul(float3x3(float3(_2504.x, 0.0f, _2504.z), float3(0.0f, 1.0f, 0.0f), float3(_2504.y, 0.0f, _2504.w)), float3x3(_2544, cross(_755, _2544), _755));
              _2549 = (_2485 - _2486) - _434;
              float3 _2550 = mul(_2548, _2549);
              _2551 = (_2485 + _2486) - _434;
              float3 _2552 = mul(_2548, _2551);
              _2553 = (_2489 + _2486) - _434;
              float3 _2554 = mul(_2548, _2553);
              _2555 = (_2489 - _2486) - _434;
              float3 _2556 = mul(_2548, _2555);
              float _2557 = _2550.z;
              float _2560 = _2552.z;
              float _2564 = _2554.z;
              float _2568 = _2556.z;
              int _2572 = (((int(_2557 > 0.0f) | ((_2560 > 0.0f) ? 2 : 0)) | ((_2564 > 0.0f) ? 4 : 0)) | ((_2568 > 0.0f) ? 8 : 0));
              float3 _2809;
              float3 _2810;
              float3 _2811;
              float3 _2812;
              float3 _2813;
              int _2814;
              if (_2572 == 0) {
                _2809 = _2556;
                _2810 = _2554;
                _2811 = _2552;
                _2812 = _2550;
                _2813 = 0.0f.xxx;
                _2814 = 0;
              } else {
                float3 _2803;
                float3 _2804;
                float3 _2805;
                float3 _2806;
                float3 _2807;
                int _2808;
                if (_2572 == 1) {
                  _2803 = _2556;
                  _2804 = (_2550 * (-_2568)) + (_2556 * _2557);
                  _2805 = (_2550 * (-_2560)) + (_2552 * _2557);
                  _2806 = _2550;
                  _2807 = 0.0f.xxx;
                  _2808 = 3;
                } else {
                  float3 _2789;
                  float3 _2790;
                  float3 _2791;
                  float3 _2792;
                  float3 _2793;
                  int _2794;
                  if (_2572 == 2) {
                    _2789 = _2556;
                    _2790 = (_2552 * (-_2564)) + (_2554 * _2560);
                    _2791 = _2552;
                    _2792 = (_2552 * (-_2557)) + (_2550 * _2560);
                    _2793 = 0.0f.xxx;
                    _2794 = 3;
                  } else {
                    float3 _2775;
                    float3 _2776;
                    float3 _2777;
                    float3 _2778;
                    float3 _2779;
                    int _2780;
                    if (_2572 == 3) {
                      _2775 = (_2550 * (-_2568)) + (_2556 * _2557);
                      _2776 = (_2552 * (-_2564)) + (_2554 * _2560);
                      _2777 = _2552;
                      _2778 = _2550;
                      _2779 = 0.0f.xxx;
                      _2780 = 4;
                    } else {
                      float3 _2761;
                      float3 _2762;
                      float3 _2763;
                      float3 _2764;
                      float3 _2765;
                      int _2766;
                      if (_2572 == 4) {
                        _2761 = _2556;
                        _2762 = _2554;
                        _2763 = (_2554 * (-_2560)) + (_2552 * _2564);
                        _2764 = (_2554 * (-_2568)) + (_2556 * _2564);
                        _2765 = 0.0f.xxx;
                        _2766 = 3;
                      } else {
                        float3 _2747;
                        float3 _2748;
                        float3 _2749;
                        float3 _2750;
                        float3 _2751;
                        int _2752;
                        if (_2572 == 5) {
                          _2747 = _2556;
                          _2748 = _2554;
                          _2749 = _2552;
                          _2750 = _2550;
                          _2751 = 0.0f.xxx;
                          _2752 = 0;
                        } else {
                          float3 _2741;
                          float3 _2742;
                          float3 _2743;
                          float3 _2744;
                          float3 _2745;
                          int _2746;
                          if (_2572 == 6) {
                            _2741 = (_2554 * (-_2568)) + (_2556 * _2564);
                            _2742 = _2554;
                            _2743 = _2552;
                            _2744 = (_2552 * (-_2557)) + (_2550 * _2560);
                            _2745 = 0.0f.xxx;
                            _2746 = 4;
                          } else {
                            float3 _2727;
                            float3 _2728;
                            float3 _2729;
                            float3 _2730;
                            float3 _2731;
                            int _2732;
                            if (_2572 == 7) {
                              float _2720 = -_2568;
                              _2727 = (_2554 * _2720) + (_2556 * _2564);
                              _2728 = _2554;
                              _2729 = _2552;
                              _2730 = _2550;
                              _2731 = (_2550 * _2720) + (_2556 * _2557);
                              _2732 = 5;
                            } else {
                              float3 _2714;
                              float3 _2715;
                              float3 _2716;
                              float3 _2717;
                              float3 _2718;
                              int _2719;
                              if (_2572 == 8) {
                                _2714 = _2556;
                                _2715 = _2556;
                                _2716 = (_2556 * (-_2564)) + (_2554 * _2568);
                                _2717 = (_2556 * (-_2557)) + (_2550 * _2568);
                                _2718 = 0.0f.xxx;
                                _2719 = 3;
                              } else {
                                float3 _2700;
                                float3 _2701;
                                float3 _2702;
                                float3 _2703;
                                float3 _2704;
                                int _2705;
                                if (_2572 == 9) {
                                  _2700 = _2556;
                                  _2701 = (_2556 * (-_2564)) + (_2554 * _2568);
                                  _2702 = (_2550 * (-_2560)) + (_2552 * _2557);
                                  _2703 = _2550;
                                  _2704 = 0.0f.xxx;
                                  _2705 = 4;
                                } else {
                                  float3 _2686;
                                  float3 _2687;
                                  float3 _2688;
                                  float3 _2689;
                                  float3 _2690;
                                  int _2691;
                                  if (_2572 == 10) {
                                    _2686 = _2556;
                                    _2687 = _2554;
                                    _2688 = _2552;
                                    _2689 = _2550;
                                    _2690 = 0.0f.xxx;
                                    _2691 = 0;
                                  } else {
                                    float3 _2680;
                                    float3 _2681;
                                    float3 _2682;
                                    float3 _2683;
                                    float3 _2684;
                                    int _2685;
                                    if (_2572 == 11) {
                                      float _2673 = -_2564;
                                      _2680 = (_2556 * _2673) + (_2554 * _2568);
                                      _2681 = (_2552 * _2673) + (_2554 * _2560);
                                      _2682 = _2552;
                                      _2683 = _2550;
                                      _2684 = _2556;
                                      _2685 = 5;
                                    } else {
                                      float3 _2667;
                                      float3 _2668;
                                      float3 _2669;
                                      float3 _2670;
                                      float3 _2671;
                                      int _2672;
                                      if (_2572 == 12) {
                                        _2667 = _2556;
                                        _2668 = _2554;
                                        _2669 = (_2554 * (-_2560)) + (_2552 * _2564);
                                        _2670 = (_2556 * (-_2557)) + (_2550 * _2568);
                                        _2671 = 0.0f.xxx;
                                        _2672 = 4;
                                      } else {
                                        bool _2625 = _2572 == 13;
                                        float3 _2652;
                                        float3 _2653;
                                        float3 _2654;
                                        float3 _2655;
                                        int _2656;
                                        if (_2625) {
                                          float _2645 = -_2560;
                                          _2652 = (_2554 * _2645) + (_2552 * _2564);
                                          _2653 = (_2550 * _2645) + (_2552 * _2557);
                                          _2654 = _2550;
                                          _2655 = _2556;
                                          _2656 = 5;
                                        } else {
                                          float3 _2642;
                                          float3 _2643;
                                          int _2644;
                                          if (_2572 == 14) {
                                            float _2635 = -_2557;
                                            _2642 = (_2552 * _2635) + (_2550 * _2560);
                                            _2643 = (_2556 * _2635) + (_2550 * _2568);
                                            _2644 = 5;
                                          } else {
                                            _2642 = _2550;
                                            _2643 = 0.0f.xxx;
                                            _2644 = (_2572 == 15) ? 4 : 0;
                                          }
                                          _2652 = _2554;
                                          _2653 = _2552;
                                          _2654 = _2642;
                                          _2655 = _2643;
                                          _2656 = _2644;
                                        }
                                        bool3 _2657 = _2625.xxx;
                                        _2667 = float3(_2657.x ? _2554.x : _2556.x, _2657.y ? _2554.y : _2556.y, _2657.z ? _2554.z : _2556.z);
                                        _2668 = _2652;
                                        _2669 = _2653;
                                        _2670 = _2654;
                                        _2671 = _2655;
                                        _2672 = _2656;
                                      }
                                      _2680 = _2667;
                                      _2681 = _2668;
                                      _2682 = _2669;
                                      _2683 = _2670;
                                      _2684 = _2671;
                                      _2685 = _2672;
                                    }
                                    _2686 = _2680;
                                    _2687 = _2681;
                                    _2688 = _2682;
                                    _2689 = _2683;
                                    _2690 = _2684;
                                    _2691 = _2685;
                                  }
                                  _2700 = _2686;
                                  _2701 = _2687;
                                  _2702 = _2688;
                                  _2703 = _2689;
                                  _2704 = _2690;
                                  _2705 = _2691;
                                }
                                _2714 = _2700;
                                _2715 = _2701;
                                _2716 = _2702;
                                _2717 = _2703;
                                _2718 = _2704;
                                _2719 = _2705;
                              }
                              _2727 = _2714;
                              _2728 = _2715;
                              _2729 = _2716;
                              _2730 = _2717;
                              _2731 = _2718;
                              _2732 = _2719;
                            }
                            _2741 = _2727;
                            _2742 = _2728;
                            _2743 = _2729;
                            _2744 = _2730;
                            _2745 = _2731;
                            _2746 = _2732;
                          }
                          _2747 = _2741;
                          _2748 = _2742;
                          _2749 = _2743;
                          _2750 = _2744;
                          _2751 = _2745;
                          _2752 = _2746;
                        }
                        _2761 = _2747;
                        _2762 = _2748;
                        _2763 = _2749;
                        _2764 = _2750;
                        _2765 = _2751;
                        _2766 = _2752;
                      }
                      _2775 = _2761;
                      _2776 = _2762;
                      _2777 = _2763;
                      _2778 = _2764;
                      _2779 = _2765;
                      _2780 = _2766;
                    }
                    _2789 = _2775;
                    _2790 = _2776;
                    _2791 = _2777;
                    _2792 = _2778;
                    _2793 = _2779;
                    _2794 = _2780;
                  }
                  _2803 = _2789;
                  _2804 = _2790;
                  _2805 = _2791;
                  _2806 = _2792;
                  _2807 = _2793;
                  _2808 = _2794;
                }
                _2809 = _2803;
                _2810 = _2804;
                _2811 = _2805;
                _2812 = _2806;
                _2813 = _2807;
                _2814 = _2808;
              }
              bool3 _2816 = (_2814 == 3).xxx;
              bool3 _2819 = (_2814 == 4).xxx;
              if (_2814 == 0) {
                _2903 = 0.0f;
                break;
              }
              float3 _2824 = normalize(_2812);
              float3 _2825 = normalize(_2811);
              float3 _2826 = normalize(_2810);
              float3 _2827 = normalize(float3(_2816.x ? _2812.x : _2809.x, _2816.y ? _2812.y : _2809.y, _2816.z ? _2812.z : _2809.z));
              float3 _2828 = normalize(float3(_2819.x ? _2812.x : _2813.x, _2819.y ? _2812.y : _2813.y, _2819.z ? _2812.z : _2813.z));
              float _2830 = clamp(dot(_2824, _2825), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2834 = sqrt(1.0f - (_2830 * _2830));
              float _2842 = clamp(dot(_2825, _2826), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2846 = sqrt(1.0f - (_2842 * _2842));
              float _2855 = clamp(dot(_2826, _2827), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2859 = sqrt(1.0f - (_2855 * _2855));
              float _2866 = ((cross(_2824, _2825).z * ((_2834 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2830) / _2834))) + (cross(_2825, _2826).z * ((_2846 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2842) / _2846)))) + (cross(_2826, _2827).z * ((_2859 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2855) / _2859)));
              float _2883;
              if (_2814 >= 4) {
                float _2871 = clamp(dot(_2827, _2828), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2875 = sqrt(1.0f - (_2871 * _2871));
                _2883 = _2866 + (cross(_2827, _2828).z * ((_2875 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2871) / _2875)));
              } else {
                _2883 = _2866;
              }
              float _2900;
              if (_2814 == 5) {
                float _2888 = clamp(dot(_2828, _2824), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2892 = sqrt(1.0f - (_2888 * _2888));
                _2900 = _2883 + (cross(_2828, _2824).z * ((_2892 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2888) / _2892)));
              } else {
                _2900 = _2883;
              }
              _2903 = max(_2900, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3291;
            do {
              float3 _2937;
              if (_2521) {
                _2937 = _2519 * rsqrt(_2520);
              } else {
                float _2918 = _755.z;
                float _2920 = (_2918 >= 0.0f) ? 1.0f : (-1.0f);
                float _2922 = (-1.0f) / (_2920 + _2918);
                float _2924 = _755.x;
                _2937 = float3(1.0f + (((_2920 * _2922) * _2924) * _2924), ((_2920 * _2924) * _755.y) * _2922, (-_2920) * _2924);
              }
              float3x3 _2940 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2937, cross(_755, _2937), _755));
              float3 _2941 = mul(_2940, _2549);
              float3 _2942 = mul(_2940, _2551);
              float3 _2943 = mul(_2940, _2553);
              float3 _2944 = mul(_2940, _2555);
              float _2945 = _2941.z;
              float _2948 = _2942.z;
              float _2952 = _2943.z;
              float _2956 = _2944.z;
              int _2960 = (((int(_2945 > 0.0f) | ((_2948 > 0.0f) ? 2 : 0)) | ((_2952 > 0.0f) ? 4 : 0)) | ((_2956 > 0.0f) ? 8 : 0));
              float3 _3197;
              float3 _3198;
              float3 _3199;
              float3 _3200;
              float3 _3201;
              int _3202;
              if (_2960 == 0) {
                _3197 = _2944;
                _3198 = _2943;
                _3199 = _2942;
                _3200 = _2941;
                _3201 = 0.0f.xxx;
                _3202 = 0;
              } else {
                float3 _3191;
                float3 _3192;
                float3 _3193;
                float3 _3194;
                float3 _3195;
                int _3196;
                if (_2960 == 1) {
                  _3191 = _2944;
                  _3192 = (_2941 * (-_2956)) + (_2944 * _2945);
                  _3193 = (_2941 * (-_2948)) + (_2942 * _2945);
                  _3194 = _2941;
                  _3195 = 0.0f.xxx;
                  _3196 = 3;
                } else {
                  float3 _3177;
                  float3 _3178;
                  float3 _3179;
                  float3 _3180;
                  float3 _3181;
                  int _3182;
                  if (_2960 == 2) {
                    _3177 = _2944;
                    _3178 = (_2942 * (-_2952)) + (_2943 * _2948);
                    _3179 = _2942;
                    _3180 = (_2942 * (-_2945)) + (_2941 * _2948);
                    _3181 = 0.0f.xxx;
                    _3182 = 3;
                  } else {
                    float3 _3163;
                    float3 _3164;
                    float3 _3165;
                    float3 _3166;
                    float3 _3167;
                    int _3168;
                    if (_2960 == 3) {
                      _3163 = (_2941 * (-_2956)) + (_2944 * _2945);
                      _3164 = (_2942 * (-_2952)) + (_2943 * _2948);
                      _3165 = _2942;
                      _3166 = _2941;
                      _3167 = 0.0f.xxx;
                      _3168 = 4;
                    } else {
                      float3 _3149;
                      float3 _3150;
                      float3 _3151;
                      float3 _3152;
                      float3 _3153;
                      int _3154;
                      if (_2960 == 4) {
                        _3149 = _2944;
                        _3150 = _2943;
                        _3151 = (_2943 * (-_2948)) + (_2942 * _2952);
                        _3152 = (_2943 * (-_2956)) + (_2944 * _2952);
                        _3153 = 0.0f.xxx;
                        _3154 = 3;
                      } else {
                        float3 _3135;
                        float3 _3136;
                        float3 _3137;
                        float3 _3138;
                        float3 _3139;
                        int _3140;
                        if (_2960 == 5) {
                          _3135 = _2944;
                          _3136 = _2943;
                          _3137 = _2942;
                          _3138 = _2941;
                          _3139 = 0.0f.xxx;
                          _3140 = 0;
                        } else {
                          float3 _3129;
                          float3 _3130;
                          float3 _3131;
                          float3 _3132;
                          float3 _3133;
                          int _3134;
                          if (_2960 == 6) {
                            _3129 = (_2943 * (-_2956)) + (_2944 * _2952);
                            _3130 = _2943;
                            _3131 = _2942;
                            _3132 = (_2942 * (-_2945)) + (_2941 * _2948);
                            _3133 = 0.0f.xxx;
                            _3134 = 4;
                          } else {
                            float3 _3115;
                            float3 _3116;
                            float3 _3117;
                            float3 _3118;
                            float3 _3119;
                            int _3120;
                            if (_2960 == 7) {
                              float _3108 = -_2956;
                              _3115 = (_2943 * _3108) + (_2944 * _2952);
                              _3116 = _2943;
                              _3117 = _2942;
                              _3118 = _2941;
                              _3119 = (_2941 * _3108) + (_2944 * _2945);
                              _3120 = 5;
                            } else {
                              float3 _3102;
                              float3 _3103;
                              float3 _3104;
                              float3 _3105;
                              float3 _3106;
                              int _3107;
                              if (_2960 == 8) {
                                _3102 = _2944;
                                _3103 = _2944;
                                _3104 = (_2944 * (-_2952)) + (_2943 * _2956);
                                _3105 = (_2944 * (-_2945)) + (_2941 * _2956);
                                _3106 = 0.0f.xxx;
                                _3107 = 3;
                              } else {
                                float3 _3088;
                                float3 _3089;
                                float3 _3090;
                                float3 _3091;
                                float3 _3092;
                                int _3093;
                                if (_2960 == 9) {
                                  _3088 = _2944;
                                  _3089 = (_2944 * (-_2952)) + (_2943 * _2956);
                                  _3090 = (_2941 * (-_2948)) + (_2942 * _2945);
                                  _3091 = _2941;
                                  _3092 = 0.0f.xxx;
                                  _3093 = 4;
                                } else {
                                  float3 _3074;
                                  float3 _3075;
                                  float3 _3076;
                                  float3 _3077;
                                  float3 _3078;
                                  int _3079;
                                  if (_2960 == 10) {
                                    _3074 = _2944;
                                    _3075 = _2943;
                                    _3076 = _2942;
                                    _3077 = _2941;
                                    _3078 = 0.0f.xxx;
                                    _3079 = 0;
                                  } else {
                                    float3 _3068;
                                    float3 _3069;
                                    float3 _3070;
                                    float3 _3071;
                                    float3 _3072;
                                    int _3073;
                                    if (_2960 == 11) {
                                      float _3061 = -_2952;
                                      _3068 = (_2944 * _3061) + (_2943 * _2956);
                                      _3069 = (_2942 * _3061) + (_2943 * _2948);
                                      _3070 = _2942;
                                      _3071 = _2941;
                                      _3072 = _2944;
                                      _3073 = 5;
                                    } else {
                                      float3 _3055;
                                      float3 _3056;
                                      float3 _3057;
                                      float3 _3058;
                                      float3 _3059;
                                      int _3060;
                                      if (_2960 == 12) {
                                        _3055 = _2944;
                                        _3056 = _2943;
                                        _3057 = (_2943 * (-_2948)) + (_2942 * _2952);
                                        _3058 = (_2944 * (-_2945)) + (_2941 * _2956);
                                        _3059 = 0.0f.xxx;
                                        _3060 = 4;
                                      } else {
                                        bool _3013 = _2960 == 13;
                                        float3 _3040;
                                        float3 _3041;
                                        float3 _3042;
                                        float3 _3043;
                                        int _3044;
                                        if (_3013) {
                                          float _3033 = -_2948;
                                          _3040 = (_2943 * _3033) + (_2942 * _2952);
                                          _3041 = (_2941 * _3033) + (_2942 * _2945);
                                          _3042 = _2941;
                                          _3043 = _2944;
                                          _3044 = 5;
                                        } else {
                                          float3 _3030;
                                          float3 _3031;
                                          int _3032;
                                          if (_2960 == 14) {
                                            float _3023 = -_2945;
                                            _3030 = (_2942 * _3023) + (_2941 * _2948);
                                            _3031 = (_2944 * _3023) + (_2941 * _2956);
                                            _3032 = 5;
                                          } else {
                                            _3030 = _2941;
                                            _3031 = 0.0f.xxx;
                                            _3032 = (_2960 == 15) ? 4 : 0;
                                          }
                                          _3040 = _2943;
                                          _3041 = _2942;
                                          _3042 = _3030;
                                          _3043 = _3031;
                                          _3044 = _3032;
                                        }
                                        bool3 _3045 = _3013.xxx;
                                        _3055 = float3(_3045.x ? _2943.x : _2944.x, _3045.y ? _2943.y : _2944.y, _3045.z ? _2943.z : _2944.z);
                                        _3056 = _3040;
                                        _3057 = _3041;
                                        _3058 = _3042;
                                        _3059 = _3043;
                                        _3060 = _3044;
                                      }
                                      _3068 = _3055;
                                      _3069 = _3056;
                                      _3070 = _3057;
                                      _3071 = _3058;
                                      _3072 = _3059;
                                      _3073 = _3060;
                                    }
                                    _3074 = _3068;
                                    _3075 = _3069;
                                    _3076 = _3070;
                                    _3077 = _3071;
                                    _3078 = _3072;
                                    _3079 = _3073;
                                  }
                                  _3088 = _3074;
                                  _3089 = _3075;
                                  _3090 = _3076;
                                  _3091 = _3077;
                                  _3092 = _3078;
                                  _3093 = _3079;
                                }
                                _3102 = _3088;
                                _3103 = _3089;
                                _3104 = _3090;
                                _3105 = _3091;
                                _3106 = _3092;
                                _3107 = _3093;
                              }
                              _3115 = _3102;
                              _3116 = _3103;
                              _3117 = _3104;
                              _3118 = _3105;
                              _3119 = _3106;
                              _3120 = _3107;
                            }
                            _3129 = _3115;
                            _3130 = _3116;
                            _3131 = _3117;
                            _3132 = _3118;
                            _3133 = _3119;
                            _3134 = _3120;
                          }
                          _3135 = _3129;
                          _3136 = _3130;
                          _3137 = _3131;
                          _3138 = _3132;
                          _3139 = _3133;
                          _3140 = _3134;
                        }
                        _3149 = _3135;
                        _3150 = _3136;
                        _3151 = _3137;
                        _3152 = _3138;
                        _3153 = _3139;
                        _3154 = _3140;
                      }
                      _3163 = _3149;
                      _3164 = _3150;
                      _3165 = _3151;
                      _3166 = _3152;
                      _3167 = _3153;
                      _3168 = _3154;
                    }
                    _3177 = _3163;
                    _3178 = _3164;
                    _3179 = _3165;
                    _3180 = _3166;
                    _3181 = _3167;
                    _3182 = _3168;
                  }
                  _3191 = _3177;
                  _3192 = _3178;
                  _3193 = _3179;
                  _3194 = _3180;
                  _3195 = _3181;
                  _3196 = _3182;
                }
                _3197 = _3191;
                _3198 = _3192;
                _3199 = _3193;
                _3200 = _3194;
                _3201 = _3195;
                _3202 = _3196;
              }
              bool3 _3204 = (_3202 == 3).xxx;
              bool3 _3207 = (_3202 == 4).xxx;
              if (_3202 == 0) {
                _3291 = 0.0f;
                break;
              }
              float3 _3212 = normalize(_3200);
              float3 _3213 = normalize(_3199);
              float3 _3214 = normalize(_3198);
              float3 _3215 = normalize(float3(_3204.x ? _3200.x : _3197.x, _3204.y ? _3200.y : _3197.y, _3204.z ? _3200.z : _3197.z));
              float3 _3216 = normalize(float3(_3207.x ? _3200.x : _3201.x, _3207.y ? _3200.y : _3201.y, _3207.z ? _3200.z : _3201.z));
              float _3218 = clamp(dot(_3212, _3213), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3222 = sqrt(1.0f - (_3218 * _3218));
              float _3230 = clamp(dot(_3213, _3214), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3234 = sqrt(1.0f - (_3230 * _3230));
              float _3243 = clamp(dot(_3214, _3215), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3247 = sqrt(1.0f - (_3243 * _3243));
              float _3254 = ((cross(_3212, _3213).z * ((_3222 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3218) / _3222))) + (cross(_3213, _3214).z * ((_3234 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3230) / _3234)))) + (cross(_3214, _3215).z * ((_3247 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3243) / _3247)));
              float _3271;
              if (_3202 >= 4) {
                float _3259 = clamp(dot(_3215, _3216), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3263 = sqrt(1.0f - (_3259 * _3259));
                _3271 = _3254 + (cross(_3215, _3216).z * ((_3263 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3259) / _3263)));
              } else {
                _3271 = _3254;
              }
              float _3288;
              if (_3202 == 5) {
                float _3276 = clamp(dot(_3216, _3212), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3280 = sqrt(1.0f - (_3276 * _3276));
                _3288 = _3271 + (cross(_3216, _3212).z * ((_3280 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3276) / _3280)));
              } else {
                _3288 = _3271;
              }
              _3291 = max(_3288, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3294 = (_2368 & 2u) != 0u;
            uint _3298 = asuint(_50_m6[_2355].w);
            uint _3299 = asuint(_50_m6[_2361].w);
            float3 _3300 = _434 - _50_m6[_2346].xyz;
            float3 _3301 = abs(_3300);
            float _3302 = _3301.x;
            float _3303 = _3301.y;
            float _3305 = _3301.z;
            int _3338;
            if ((_3302 > _3303) && (_3302 > _3305)) {
              _3338 = int((_3300.x > 0.0f) ? (_3298 & 1023u) : ((_3298 >> 10u) & 1023u));
            } else {
              int _3330;
              if (_3303 > _3305) {
                _3330 = int((_3300.y > 0.0f) ? ((_3298 >> 20u) & 1023u) : (_3299 & 1023u));
              } else {
                _3330 = int((_3300.z > 0.0f) ? ((_3299 >> 10u) & 1023u) : ((_3299 >> 20u) & 1023u));
              }
              _3338 = _3330;
            }
            int _3341 = _3294 ? int(_50_m6[_2355].w) : ((_3338 == 1023) ? (-1) : _3338);
            uint _3352 = asuint(_54_m11.x) + (uint(_3341) * 96u);
            uint _3354 = (_3352 + 64u) >> 2u;
            uint _3357 = _3354 + 1u;
            uint _3360 = _3354 + 2u;
            uint _3363 = _3354 + 3u;
            float4 _3367 = asfloat(uint4(_57.Load(_3354 * 4 + 0), _57.Load(_3357 * 4 + 0), _57.Load(_3360 * 4 + 0), _57.Load(_3363 * 4 + 0)));
            float3 _3374 = (_434 - ((_3300 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3300, _3300)))) * _3367.x)) + (_755 * (_3367.y * 5.0f));
            uint _3375 = _3352 >> 2u;
            uint _3390 = (_3352 + 16u) >> 2u;
            uint _3405 = (_3352 + 32u) >> 2u;
            uint _3420 = (_3352 + 48u) >> 2u;
            float4 _3440 = mul(transpose(float4x4(asfloat(uint4(_57.Load(_3375 * 4 + 0), _57.Load((_3375 + 1u) * 4 + 0), _57.Load((_3375 + 2u) * 4 + 0), _57.Load((_3375 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_3390 * 4 + 0), _57.Load((_3390 + 1u) * 4 + 0), _57.Load((_3390 + 2u) * 4 + 0), _57.Load((_3390 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_3405 * 4 + 0), _57.Load((_3405 + 1u) * 4 + 0), _57.Load((_3405 + 2u) * 4 + 0), _57.Load((_3405 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_3420 * 4 + 0), _57.Load((_3420 + 1u) * 4 + 0), _57.Load((_3420 + 2u) * 4 + 0), _57.Load((_3420 + 3u) * 4 + 0))))), float4(_3374, 1.0f));
            float _3441 = _3440.w;
            float3 _3444 = _3440.xyz / _3441.xxx;
            uint _3446 = (_3352 + 80u) >> 2u;
            float4 _3459 = asfloat(uint4(_57.Load(_3446 * 4 + 0), _57.Load((_3446 + 1u) * 4 + 0), _57.Load((_3446 + 2u) * 4 + 0), _57.Load((_3446 + 3u) * 4 + 0)));
            float2 _3460 = _3444.xy;
            float2 _3462 = _3459.xy;
            float3 _3466 = _3444.xyz;
            bool3 _3467 = bool3(_3466.x <= 0.0f.xxx.x, _3466.y <= 0.0f.xxx.y, _3466.z <= 0.0f.xxx.z);
            bool3 _3468 = bool3(_3466.x >= 1.0f.xxx.x, _3466.y >= 1.0f.xxx.y, _3466.z >= 1.0f.xxx.z);
            float _3471 = _3444.z;
            float2 _3482 = ((_3460 * (_3459.zw - _3462)) + _3462).xy * _54_m10.zw;
            float2 _3484 = floor(_3482 + 0.5f.xx);
            float2 _3485 = _3482 - _3484;
            float _3486 = _3485.x;
            float _3487 = _3486 + 0.5f;
            float _3488 = _3487 * _3487;
            float _3491 = 1.0f - _3486;
            float _3492 = min(_3486, 0.0f);
            float _3495 = _3486 + 1.0f;
            float _3496 = max(_3486, 0.0f);
            float _3507 = _3485.y;
            float _3508 = _3507 + 0.5f;
            float _3509 = _3508 * _3508;
            float _3512 = 1.0f - _3507;
            float _3513 = min(_3507, 0.0f);
            float _3516 = _3507 + 1.0f;
            float _3517 = max(_3507, 0.0f);
            float3 _3529 = float3(0.1599999964237213134765625f * _3491, 0.1599999964237213134765625f * ((_3495 - (_3496 * _3496)) + 1.0f), _3488 * 0.07999999821186065673828125f);
            float3 _3530 = float3(0.1599999964237213134765625f * ((_3488 * 0.5f) - _3486), 0.1599999964237213134765625f * ((_3491 - (_3492 * _3492)) + 1.0f), 0.1599999964237213134765625f * _3495) + _3529;
            float3 _3532 = float3(0.1599999964237213134765625f * _3512, 0.1599999964237213134765625f * ((_3516 - (_3517 * _3517)) + 1.0f), _3509 * 0.07999999821186065673828125f);
            float3 _3533 = float3(0.1599999964237213134765625f * ((_3509 * 0.5f) - _3507), 0.1599999964237213134765625f * ((_3512 - (_3513 * _3513)) + 1.0f), 0.1599999964237213134765625f * _3516) + _3532;
            float3 _3539 = ((_3529 / _3530) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _3541 = ((_3532 / _3533) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _3543 = _3484 * _54_m10.xy;
            float _3544 = _3539.x;
            float _3545 = _3541.x;
            float2 _3547 = _3543 + float2(_3544, _3545);
            float _3548 = _3539.y;
            float2 _3550 = _3543 + float2(_3548, _3545);
            float _3551 = _3539.z;
            float2 _3553 = _3543 + float2(_3551, _3545);
            float _3554 = _3541.y;
            float2 _3556 = _3543 + float2(_3544, _3554);
            float2 _3558 = _3543 + float2(_3548, _3554);
            float2 _3560 = _3543 + float2(_3551, _3554);
            float _3561 = _3541.z;
            float2 _3563 = _3543 + float2(_3544, _3561);
            float2 _3565 = _3543 + float2(_3548, _3561);
            float2 _3567 = _3543 + float2(_3551, _3561);
            float _3568 = _3530.x;
            float _3569 = _3533.x;
            float _3571 = _3530.y;
            float _3573 = _3530.z;
            float _3575 = _3533.y;
            float _3579 = _3533.z;
            float _3645 = ((((((((_3568 * _3569) * _56.SampleCmpLevelZero(_26, float3(_3547, _389).xy, _3471)) + ((_3571 * _3569) * _56.SampleCmpLevelZero(_26, float3(_3550, _389).xy, _3471))) + ((_3573 * _3569) * _56.SampleCmpLevelZero(_26, float3(_3553, _389).xy, _3471))) + ((_3568 * _3575) * _56.SampleCmpLevelZero(_26, float3(_3556, _389).xy, _3471))) + ((_3571 * _3575) * _56.SampleCmpLevelZero(_26, float3(_3558, _389).xy, _3471))) + ((_3573 * _3575) * _56.SampleCmpLevelZero(_26, float3(_3560, _389).xy, _3471))) + ((_3568 * _3579) * _56.SampleCmpLevelZero(_26, float3(_3563, _389).xy, _3471))) + ((_3571 * _3579) * _56.SampleCmpLevelZero(_26, float3(_3565, _389).xy, _3471));
            float4 _3660 = asfloat(uint4(_57.Load(_3354 * 4 + 0), _57.Load(_3357 * 4 + 0), _57.Load(_3360 * 4 + 0), _57.Load(_3363 * 4 + 0)));
            float _3661 = _3660.w;
            float2 _3663 = min(_3460, 1.0f.xx - _3460);
            _3680 = ((_50_m6[_2343].xyz * (((((_923 * _2508.x) + ((1.0f.xxx - _923) * _2508.y)) * _2903) * _50_m6[_2364].z) + (_823 * _3291))) * _2480) * ((_3341 >= 0) ? lerp(1.0f, (any(bool3(_3467.x || _3468.x, _3467.y || _3468.y, _3467.z || _3468.z)) || ((asuint(_3471) & 2147483647u) > 2139095040u)) ? 1.0f : (_3645 + ((_3573 * _3579) * _56.SampleCmpLevelZero(_26, float3(_3567, _389).xy, _3471))), _3294 ? min(_3661, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3660.z - _3441) * 0.25f, min(_3663.x, _3663.y)))) : _3661) : 1.0f);
            break;
          } while (false);
          _5003 = _2303;
          _5004 = _3680 * _2443;
          break;
        }
        float _5001;
        float3 _5002;
        if (_50_m6[_2343].w < 1.5f) {
          float3 _4260 = float3(0.100000001490116119384765625f, _39_m78, 1.0f);
          float _4269 = (0.5f + (0.5f * _50_m6[_2349].y)) - abs(_50_m6[_2349].x);
          float _4270 = _50_m6[_2349].y - _4269;
          float _4277 = abs(max((1.0f - abs(_4269)) - abs(_4270), 0.00048828125f));
          float3 _4281 = normalize(float3(_4269, _4270, (_50_m6[_2349].x >= 0.0f) ? _4277 : (-_4277)));
          float3 _4282 = _50_m6[_2346].xyz - _434;
          float _4283 = dot(_4282, _4282);
          float _4284 = rsqrt(_4283);
          float3 _4285 = _4282 * _4284;
          float _4289 = clamp(_50_m6[_2364].y * _4284, 0.0f, 1.0f);
          int _4294 = int(_50_m6[_2364].w);
          float3 _4295 = _4281 * _50_m6[_2349].z;
          float3 _4296 = _4295 * 0.5f;
          float3 _4297 = _4282 - _4296;
          float3 _4298 = _4282 + _4296;
          bool _4300 = (_2447 & 1u) == 0u;
          bool _4303 = _4300 || ((_2368 & 2u) != 0u);
          bool _4306 = (!_4300) && (_50_m6[_2349].z > 0.0f);
          float _4325;
          float _4326;
          if (_4306) {
            float _4310 = length(_4297);
            float _4311 = length(_4298);
            _4325 = clamp(0.5f * ((dot(_755, _4297) / _4310) + (dot(_755, _4298) / _4311)), 0.0f, 1.0f);
            _4326 = 1.0f / ((((_4310 * _4311) + dot(_4297, _4298)) * 0.5f) + 1.0f);
          } else {
            _4325 = clamp(dot(_755, _4285), 0.0f, 1.0f);
            _4326 = 1.0f;
          }
          float _4348;
          if (_50_m6[_2361].w < 0.0f) {
            float _4342 = _4283 * (_50_m6[_2346].w * _50_m6[_2346].w);
            float _4345 = clamp(1.0f - (_4342 * _4342), 0.0f, 1.0f);
            _4348 = lerp(1.0f / (_4283 + 1.0f), _4326, float(_4306)) * (_4345 * _4345);
          } else {
            float3 _4331 = _4282 * _50_m6[_2346].w;
            _4348 = _4326 * pow(1.0f - clamp(dot(_4331, _4331), 0.0f, 1.0f), _50_m6[_2361].w);
          }
          float _4354 = clamp((dot(_4285, -_4281) - _50_m6[_2349].z) * _50_m6[_2349].w, 0.0f, 1.0f);
          float _4358 = _4348 * lerp(1.0f, _4354 * _4354, float(_4300));
          float _4458;
          if ((!_4306) && (_4294 >= 0)) {
            uint _4364 = uint(_4294);
            float2 _4451;
            [branch] if (_4300) {
              float4 _4441 = mul(_65_m1[_4364], _438);
              _4451 = _65_m0[_4364].xy + (clamp(_4441.xy / _4441.w.xx, 0.0f.xx, 1.0f.xx) * _65_m0[_4364].zw);
            }
            else {
              float3 _4378 = mul(float4(-_4282, 0.0f), _65_m1[_4364]).xyz;
              float3 _398 = _4378;
              float3 _397 = _4378;
              float3 _396 = abs(_4378);
              uint _4387 = uint(int(_396.y > _396.x));
              uint _4393 = (_396.z > _396[_4387]) ? 2u : _4387;
              uint _4399 = (_4393 * 2u) + uint(_397[_4393] < 0.0f);
              float _4403 = abs(_398[_4399 / 2u]);
              float _4423 = 0.5f - (0.000244140625f / _65_m0[_4364].w);
              _4451 = _65_m0[_4364].xy + (clamp(float2((float(_4399) + ((((_398[uint(_368[_4399].x)] * _369[_4399].x) / _4403) * _4423) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_398[uint(_368[_4399].y)] * _369[_4399].y) / _4403) * _4423)), 0.0f.xx, 1.0f.xx) * _65_m0[_4364].zw);
            }
            _4458 = _4358 * _63.SampleLevel(_24, _4451, 0.0f).x;
          } else {
            _4458 = _4358;
          }
          bool _4459 = _4458 > 0.0f;
          float _4843;
          if (_4459) {
            int _4512;
            if (_4303) {
              _4512 = int(_50_m6[_2352].x);
            } else {
              uint _4467 = asuint(_50_m6[_2349].w);
              uint _4468 = asuint(_50_m6[_2352].x);
              float3 _4469 = _434 - _50_m6[_2346].xyz;
              float3 _4470 = abs(_4469);
              float _4471 = _4470.x;
              float _4472 = _4470.y;
              float _4474 = _4470.z;
              int _4507;
              if ((_4471 > _4472) && (_4471 > _4474)) {
                _4507 = int((_4469.x > 0.0f) ? (_4467 & 1023u) : ((_4467 >> 10u) & 1023u));
              } else {
                int _4499;
                if (_4472 > _4474) {
                  _4499 = int((_4469.y > 0.0f) ? ((_4467 >> 20u) & 1023u) : (_4468 & 1023u));
                } else {
                  _4499 = int((_4469.z > 0.0f) ? ((_4468 >> 10u) & 1023u) : ((_4468 >> 20u) & 1023u));
                }
                _4507 = _4499;
              }
              _4512 = (_4507 == 1023) ? (-1) : _4507;
            }
            uint _4519 = asuint(_54_m11.x) + (uint(_4512) * 96u);
            uint _4521 = (_4519 + 64u) >> 2u;
            uint _4524 = _4521 + 1u;
            uint _4527 = _4521 + 2u;
            uint _4530 = _4521 + 3u;
            float4 _4534 = asfloat(uint4(_57.Load(_4521 * 4 + 0), _57.Load(_4524 * 4 + 0), _57.Load(_4527 * 4 + 0), _57.Load(_4530 * 4 + 0)));
            float3 _4541 = (_434 - ((-_4285) * _4534.x)) + (_755 * (_4534.y * 5.0f));
            uint _4542 = _4519 >> 2u;
            uint _4557 = (_4519 + 16u) >> 2u;
            uint _4572 = (_4519 + 32u) >> 2u;
            uint _4587 = (_4519 + 48u) >> 2u;
            float4 _4607 = mul(transpose(float4x4(asfloat(uint4(_57.Load(_4542 * 4 + 0), _57.Load((_4542 + 1u) * 4 + 0), _57.Load((_4542 + 2u) * 4 + 0), _57.Load((_4542 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_4557 * 4 + 0), _57.Load((_4557 + 1u) * 4 + 0), _57.Load((_4557 + 2u) * 4 + 0), _57.Load((_4557 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_4572 * 4 + 0), _57.Load((_4572 + 1u) * 4 + 0), _57.Load((_4572 + 2u) * 4 + 0), _57.Load((_4572 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_4587 * 4 + 0), _57.Load((_4587 + 1u) * 4 + 0), _57.Load((_4587 + 2u) * 4 + 0), _57.Load((_4587 + 3u) * 4 + 0))))), float4(_4541, 1.0f));
            float _4608 = _4607.w;
            float3 _4611 = _4607.xyz / _4608.xxx;
            uint _4613 = (_4519 + 80u) >> 2u;
            float4 _4626 = asfloat(uint4(_57.Load(_4613 * 4 + 0), _57.Load((_4613 + 1u) * 4 + 0), _57.Load((_4613 + 2u) * 4 + 0), _57.Load((_4613 + 3u) * 4 + 0)));
            float2 _4627 = _4611.xy;
            float2 _4629 = _4626.xy;
            float3 _4633 = _4611.xyz;
            bool3 _4634 = bool3(_4633.x <= 0.0f.xxx.x, _4633.y <= 0.0f.xxx.y, _4633.z <= 0.0f.xxx.z);
            bool3 _4635 = bool3(_4633.x >= 1.0f.xxx.x, _4633.y >= 1.0f.xxx.y, _4633.z >= 1.0f.xxx.z);
            float _4638 = _4611.z;
            float2 _4649 = ((_4627 * (_4626.zw - _4629)) + _4629).xy * _54_m10.zw;
            float2 _4651 = floor(_4649 + 0.5f.xx);
            float2 _4652 = _4649 - _4651;
            float _4653 = _4652.x;
            float _4654 = _4653 + 0.5f;
            float _4655 = _4654 * _4654;
            float _4658 = 1.0f - _4653;
            float _4659 = min(_4653, 0.0f);
            float _4662 = _4653 + 1.0f;
            float _4663 = max(_4653, 0.0f);
            float _4674 = _4652.y;
            float _4675 = _4674 + 0.5f;
            float _4676 = _4675 * _4675;
            float _4679 = 1.0f - _4674;
            float _4680 = min(_4674, 0.0f);
            float _4683 = _4674 + 1.0f;
            float _4684 = max(_4674, 0.0f);
            float3 _4696 = float3(0.1599999964237213134765625f * _4658, 0.1599999964237213134765625f * ((_4662 - (_4663 * _4663)) + 1.0f), _4655 * 0.07999999821186065673828125f);
            float3 _4697 = float3(0.1599999964237213134765625f * ((_4655 * 0.5f) - _4653), 0.1599999964237213134765625f * ((_4658 - (_4659 * _4659)) + 1.0f), 0.1599999964237213134765625f * _4662) + _4696;
            float3 _4699 = float3(0.1599999964237213134765625f * _4679, 0.1599999964237213134765625f * ((_4683 - (_4684 * _4684)) + 1.0f), _4676 * 0.07999999821186065673828125f);
            float3 _4700 = float3(0.1599999964237213134765625f * ((_4676 * 0.5f) - _4674), 0.1599999964237213134765625f * ((_4679 - (_4680 * _4680)) + 1.0f), 0.1599999964237213134765625f * _4683) + _4699;
            float3 _4706 = ((_4696 / _4697) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
            float3 _4708 = ((_4699 / _4700) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
            float2 _4710 = _4651 * _54_m10.xy;
            float _4711 = _4706.x;
            float _4712 = _4708.x;
            float2 _4714 = _4710 + float2(_4711, _4712);
            float _4715 = _4706.y;
            float2 _4717 = _4710 + float2(_4715, _4712);
            float _4718 = _4706.z;
            float2 _4720 = _4710 + float2(_4718, _4712);
            float _4721 = _4708.y;
            float2 _4723 = _4710 + float2(_4711, _4721);
            float2 _4725 = _4710 + float2(_4715, _4721);
            float2 _4727 = _4710 + float2(_4718, _4721);
            float _4728 = _4708.z;
            float2 _4730 = _4710 + float2(_4711, _4728);
            float2 _4732 = _4710 + float2(_4715, _4728);
            float2 _4734 = _4710 + float2(_4718, _4728);
            float _4735 = _4697.x;
            float _4736 = _4700.x;
            float _4738 = _4697.y;
            float _4740 = _4697.z;
            float _4742 = _4700.y;
            float _4746 = _4700.z;
            float _4812 = ((((((((_4735 * _4736) * _56.SampleCmpLevelZero(_26, float3(_4714, _389).xy, _4638)) + ((_4738 * _4736) * _56.SampleCmpLevelZero(_26, float3(_4717, _389).xy, _4638))) + ((_4740 * _4736) * _56.SampleCmpLevelZero(_26, float3(_4720, _389).xy, _4638))) + ((_4735 * _4742) * _56.SampleCmpLevelZero(_26, float3(_4723, _389).xy, _4638))) + ((_4738 * _4742) * _56.SampleCmpLevelZero(_26, float3(_4725, _389).xy, _4638))) + ((_4740 * _4742) * _56.SampleCmpLevelZero(_26, float3(_4727, _389).xy, _4638))) + ((_4735 * _4746) * _56.SampleCmpLevelZero(_26, float3(_4730, _389).xy, _4638))) + ((_4738 * _4746) * _56.SampleCmpLevelZero(_26, float3(_4732, _389).xy, _4638));
            float4 _4827 = asfloat(uint4(_57.Load(_4521 * 4 + 0), _57.Load(_4524 * 4 + 0), _57.Load(_4527 * 4 + 0), _57.Load(_4530 * 4 + 0)));
            float _4828 = _4827.w;
            float2 _4830 = min(_4627, 1.0f.xx - _4627);
            _4843 = (_4512 >= 0) ? lerp(1.0f, (any(bool3(_4634.x || _4635.x, _4634.y || _4635.y, _4634.z || _4635.z)) || ((asuint(_4638) & 2147483647u) > 2139095040u)) ? 1.0f : (_4812 + ((_4740 * _4746) * _56.SampleCmpLevelZero(_26, float3(_4734, _389).xy, _4638))), _4303 ? min(_4828, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4827.z - _4608) * 0.25f, min(_4830.x, _4830.y)))) : _4828) : 1.0f;
          } else {
            _4843 = 1.0f;
          }
          float3 _4868;
          float3 _4869;
          if (_4306) {
            float3 _4846 = _4260 * _4260;
            float3 _4848 = reflect(-_475, _755);
            float _4857 = dot(_4848, _4295);
            _4868 = _4846 / clamp(_4846 + (0.5f * clamp(_50_m6[_2349].z * _4284, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4869 = normalize(_4297 + (_4295 * clamp(dot(_4297, (_4848 * _4857) - _4295) / ((_50_m6[_2349].z * _50_m6[_2349].z) - (_4857 * _4857)), 0.0f, 1.0f)));
          } else {
            _4868 = 1.0f.xxx;
            _4869 = _4285;
          }
          float3 _4870 = _4869 + _475;
          float3 _4874 = _4870 * rsqrt(max(6.103515625e-05f, dot(_4870, _4870)));
          float3 _5000;
          if (_4459) {
            float _4878 = clamp(_4325, 0.0f, 1.0f);
            float _4880 = clamp(dot(_755, _4874), 0.0f, 1.0f);
            float _4882 = clamp(dot(_475, _4874), 0.0f, 1.0f);
            float _4885 = clamp(dot(_755, _475), 0.0f, 1.0f);
            float _4886 = _39_m78 * _39_m78;
            float _4896;
            if (_4289 > 0.0f) {
              _4896 = clamp(_4886 + ((_4289 * _4289) / ((_4882 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4896 = _4886;
            }
            float _4897 = _4896 * _4896;
            float _4918 = (((_4880 * _4897) - _4880) * _4880) + 1.0f;
            float _4923 = 1.0f - _4882;
            float _4924 = _4923 * _4923;
            float _4926 = (_4923 * _4924) * _4924;
            float _4950 = 1.0f - _39_m78;
            float _4957 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4950 * (1.04997003078460693359375f + (_4950 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4950))))));
            float _4958 = 1.0f - _4957;
            float3 _4961 = _923 + ((1.0f.xxx - _923) * 0.0476190485060214996337890625f);
            float _4972 = clamp(1.0f - _872, 0.0f, 1.0f);
            float _4980 = clamp((dot(_755, _4869) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
            float3 _4996 = (clamp((min(((_923 * (1.0f - _4926)) + _4926.xxx) * (((_4897 / (_4918 * _4918)) * _4868.y) * (0.5f / (((_4878 * sqrt(((((-_4885) * _4897) + _4885) * _4885) + _4897)) + (_4885 * sqrt(((((-_4878) * _4897) + _4878) * _4878) + _4897))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4961 * (((_62.SampleLevel(_24, (float2(_4885, _39_m78) * 0.96875f) + 0.015625f.xx, 0.0f).x * _62.SampleLevel(_24, (float2(_4878, _39_m78) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4957) / _4958)) * _4961) / (1.0f.xxx - (_4961 * _4958)))) * _50_m6[_2364].z, 0.0f.xxx, 1000.0f.xxx) * _4325) + (_1385 * lerp(lerp(1.0f, (_4980 * sqrt(_4980)) * 1.66666662693023681640625f, _4972) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_475, _4869), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _4972)));
            _5000 = (_4996 + ((_823 * _4868.z) * _4325)) * (((_50_m6[_2343].xyz * _4458) * _4843) * _2443);
          } else {
            _5000 = 0.0f.xxx;
          }
          _5001 = _2303;
          _5002 = _5000;
        } else {
          float _4258;
          do {
            if (_2450) {
              _4258 = 1.0f;
              break;
            }
            float _3697 = (0.5f + (0.5f * _50_m6[_2349].y)) - abs(_50_m6[_2349].x);
            float _3698 = _50_m6[_2349].y - _3697;
            float _3705 = abs(max((1.0f - abs(_3697)) - abs(_3698), 0.00048828125f));
            float3 _3709 = normalize(float3(_3697, _3698, (_50_m6[_2349].x >= 0.0f) ? _3705 : (-_3705)));
            float3 _3710 = _50_m6[_2346].xyz - _434;
            float _3711 = dot(_3710, _3710);
            float3 _3713 = _3710 * rsqrt(_3711);
            int _3716 = int(_50_m6[_2364].w);
            float3 _3718 = (_3709 * _50_m6[_2349].z) * 0.5f;
            float3 _3719 = _3710 - _3718;
            float3 _3720 = _3710 + _3718;
            bool _3722 = (_2447 & 1u) == 0u;
            bool _3725 = _3722 || ((_2368 & 2u) != 0u);
            bool _3728 = (!_3722) && (_50_m6[_2349].z > 0.0f);
            float _3740;
            if (_3728) {
              _3740 = 1.0f / ((((length(_3719) * length(_3720)) + dot(_3719, _3720)) * 0.5f) + 1.0f);
            } else {
              _3740 = 1.0f;
            }
            float _3762;
            if (_50_m6[_2361].w < 0.0f) {
              float _3756 = _3711 * (_50_m6[_2346].w * _50_m6[_2346].w);
              float _3759 = clamp(1.0f - (_3756 * _3756), 0.0f, 1.0f);
              _3762 = lerp(1.0f / (_3711 + 1.0f), _3740, float(_3728)) * (_3759 * _3759);
            } else {
              float3 _3745 = _3710 * _50_m6[_2346].w;
              _3762 = _3740 * pow(1.0f - clamp(dot(_3745, _3745), 0.0f, 1.0f), _50_m6[_2361].w);
            }
            float _3768 = clamp((dot(_3713, -_3709) - _50_m6[_2349].z) * _50_m6[_2349].w, 0.0f, 1.0f);
            float _3772 = _3762 * lerp(1.0f, _3768 * _3768, float(_3722));
            float _3872;
            if ((!_3728) && (_3716 >= 0)) {
              uint _3778 = uint(_3716);
              float2 _3865;
              [branch] if (_3722) {
                float4 _3855 = mul(_65_m1[_3778], _438);
                _3865 = _65_m0[_3778].xy + (clamp(_3855.xy / _3855.w.xx, 0.0f.xx, 1.0f.xx) * _65_m0[_3778].zw);
              }
              else {
                float3 _3792 = mul(float4(-_3710, 0.0f), _65_m1[_3778]).xyz;
                float3 _401 = _3792;
                float3 _400 = _3792;
                float3 _399 = abs(_3792);
                uint _3801 = uint(int(_399.y > _399.x));
                uint _3807 = (_399.z > _399[_3801]) ? 2u : _3801;
                uint _3813 = (_3807 * 2u) + uint(_400[_3807] < 0.0f);
                float _3817 = abs(_401[_3813 / 2u]);
                float _3837 = 0.5f - (0.000244140625f / _65_m0[_3778].w);
                _3865 = _65_m0[_3778].xy + (clamp(float2((float(_3813) + ((((_401[uint(_368[_3813].x)] * _369[_3813].x) / _3817) * _3837) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_401[uint(_368[_3813].y)] * _369[_3813].y) / _3817) * _3837)), 0.0f.xx, 1.0f.xx) * _65_m0[_3778].zw);
              }
              _3872 = _3772 * _63.SampleLevel(_24, _3865, 0.0f).x;
            } else {
              _3872 = _3772;
            }
            float _4257;
            if (_3872 > 0.0f) {
              int _3926;
              if (_3725) {
                _3926 = int(_50_m6[_2352].x);
              } else {
                uint _3881 = asuint(_50_m6[_2349].w);
                uint _3882 = asuint(_50_m6[_2352].x);
                float3 _3883 = _434 - _50_m6[_2346].xyz;
                float3 _3884 = abs(_3883);
                float _3885 = _3884.x;
                float _3886 = _3884.y;
                float _3888 = _3884.z;
                int _3921;
                if ((_3885 > _3886) && (_3885 > _3888)) {
                  _3921 = int((_3883.x > 0.0f) ? (_3881 & 1023u) : ((_3881 >> 10u) & 1023u));
                } else {
                  int _3913;
                  if (_3886 > _3888) {
                    _3913 = int((_3883.y > 0.0f) ? ((_3881 >> 20u) & 1023u) : (_3882 & 1023u));
                  } else {
                    _3913 = int((_3883.z > 0.0f) ? ((_3882 >> 10u) & 1023u) : ((_3882 >> 20u) & 1023u));
                  }
                  _3921 = _3913;
                }
                _3926 = (_3921 == 1023) ? (-1) : _3921;
              }
              uint _3933 = asuint(_54_m11.x) + (uint(_3926) * 96u);
              uint _3935 = (_3933 + 64u) >> 2u;
              uint _3938 = _3935 + 1u;
              uint _3941 = _3935 + 2u;
              uint _3944 = _3935 + 3u;
              float4 _3948 = asfloat(uint4(_57.Load(_3935 * 4 + 0), _57.Load(_3938 * 4 + 0), _57.Load(_3941 * 4 + 0), _57.Load(_3944 * 4 + 0)));
              float3 _3955 = (_434 - ((-_3713) * _3948.x)) + (_755 * (_3948.y * 5.0f));
              uint _3956 = _3933 >> 2u;
              uint _3971 = (_3933 + 16u) >> 2u;
              uint _3986 = (_3933 + 32u) >> 2u;
              uint _4001 = (_3933 + 48u) >> 2u;
              float4 _4021 = mul(transpose(float4x4(asfloat(uint4(_57.Load(_3956 * 4 + 0), _57.Load((_3956 + 1u) * 4 + 0), _57.Load((_3956 + 2u) * 4 + 0), _57.Load((_3956 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_3971 * 4 + 0), _57.Load((_3971 + 1u) * 4 + 0), _57.Load((_3971 + 2u) * 4 + 0), _57.Load((_3971 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_3986 * 4 + 0), _57.Load((_3986 + 1u) * 4 + 0), _57.Load((_3986 + 2u) * 4 + 0), _57.Load((_3986 + 3u) * 4 + 0))), asfloat(uint4(_57.Load(_4001 * 4 + 0), _57.Load((_4001 + 1u) * 4 + 0), _57.Load((_4001 + 2u) * 4 + 0), _57.Load((_4001 + 3u) * 4 + 0))))), float4(_3955, 1.0f));
              float _4022 = _4021.w;
              float3 _4025 = _4021.xyz / _4022.xxx;
              uint _4027 = (_3933 + 80u) >> 2u;
              float4 _4040 = asfloat(uint4(_57.Load(_4027 * 4 + 0), _57.Load((_4027 + 1u) * 4 + 0), _57.Load((_4027 + 2u) * 4 + 0), _57.Load((_4027 + 3u) * 4 + 0)));
              float2 _4041 = _4025.xy;
              float2 _4043 = _4040.xy;
              float3 _4047 = _4025.xyz;
              bool3 _4048 = bool3(_4047.x <= 0.0f.xxx.x, _4047.y <= 0.0f.xxx.y, _4047.z <= 0.0f.xxx.z);
              bool3 _4049 = bool3(_4047.x >= 1.0f.xxx.x, _4047.y >= 1.0f.xxx.y, _4047.z >= 1.0f.xxx.z);
              float _4052 = _4025.z;
              float2 _4063 = ((_4041 * (_4040.zw - _4043)) + _4043).xy * _54_m10.zw;
              float2 _4065 = floor(_4063 + 0.5f.xx);
              float2 _4066 = _4063 - _4065;
              float _4067 = _4066.x;
              float _4068 = _4067 + 0.5f;
              float _4069 = _4068 * _4068;
              float _4072 = 1.0f - _4067;
              float _4073 = min(_4067, 0.0f);
              float _4076 = _4067 + 1.0f;
              float _4077 = max(_4067, 0.0f);
              float _4088 = _4066.y;
              float _4089 = _4088 + 0.5f;
              float _4090 = _4089 * _4089;
              float _4093 = 1.0f - _4088;
              float _4094 = min(_4088, 0.0f);
              float _4097 = _4088 + 1.0f;
              float _4098 = max(_4088, 0.0f);
              float3 _4110 = float3(0.1599999964237213134765625f * _4072, 0.1599999964237213134765625f * ((_4076 - (_4077 * _4077)) + 1.0f), _4069 * 0.07999999821186065673828125f);
              float3 _4111 = float3(0.1599999964237213134765625f * ((_4069 * 0.5f) - _4067), 0.1599999964237213134765625f * ((_4072 - (_4073 * _4073)) + 1.0f), 0.1599999964237213134765625f * _4076) + _4110;
              float3 _4113 = float3(0.1599999964237213134765625f * _4093, 0.1599999964237213134765625f * ((_4097 - (_4098 * _4098)) + 1.0f), _4090 * 0.07999999821186065673828125f);
              float3 _4114 = float3(0.1599999964237213134765625f * ((_4090 * 0.5f) - _4088), 0.1599999964237213134765625f * ((_4093 - (_4094 * _4094)) + 1.0f), 0.1599999964237213134765625f * _4097) + _4113;
              float3 _4120 = ((_4110 / _4111) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.xxx;
              float3 _4122 = ((_4113 / _4114) + float3(-2.5f, -0.5f, 1.5f)) * _54_m10.yyy;
              float2 _4124 = _4065 * _54_m10.xy;
              float _4125 = _4120.x;
              float _4126 = _4122.x;
              float2 _4128 = _4124 + float2(_4125, _4126);
              float _4129 = _4120.y;
              float2 _4131 = _4124 + float2(_4129, _4126);
              float _4132 = _4120.z;
              float2 _4134 = _4124 + float2(_4132, _4126);
              float _4135 = _4122.y;
              float2 _4137 = _4124 + float2(_4125, _4135);
              float2 _4139 = _4124 + float2(_4129, _4135);
              float2 _4141 = _4124 + float2(_4132, _4135);
              float _4142 = _4122.z;
              float2 _4144 = _4124 + float2(_4125, _4142);
              float2 _4146 = _4124 + float2(_4129, _4142);
              float2 _4148 = _4124 + float2(_4132, _4142);
              float _4149 = _4111.x;
              float _4150 = _4114.x;
              float _4152 = _4111.y;
              float _4154 = _4111.z;
              float _4156 = _4114.y;
              float _4160 = _4114.z;
              float _4226 = ((((((((_4149 * _4150) * _56.SampleCmpLevelZero(_26, float3(_4128, _389).xy, _4052)) + ((_4152 * _4150) * _56.SampleCmpLevelZero(_26, float3(_4131, _389).xy, _4052))) + ((_4154 * _4150) * _56.SampleCmpLevelZero(_26, float3(_4134, _389).xy, _4052))) + ((_4149 * _4156) * _56.SampleCmpLevelZero(_26, float3(_4137, _389).xy, _4052))) + ((_4152 * _4156) * _56.SampleCmpLevelZero(_26, float3(_4139, _389).xy, _4052))) + ((_4154 * _4156) * _56.SampleCmpLevelZero(_26, float3(_4141, _389).xy, _4052))) + ((_4149 * _4160) * _56.SampleCmpLevelZero(_26, float3(_4144, _389).xy, _4052))) + ((_4152 * _4160) * _56.SampleCmpLevelZero(_26, float3(_4146, _389).xy, _4052));
              float4 _4241 = asfloat(uint4(_57.Load(_3935 * 4 + 0), _57.Load(_3938 * 4 + 0), _57.Load(_3941 * 4 + 0), _57.Load(_3944 * 4 + 0)));
              float _4242 = _4241.w;
              float2 _4244 = min(_4041, 1.0f.xx - _4041);
              _4257 = (_3926 >= 0) ? lerp(1.0f, (any(bool3(_4048.x || _4049.x, _4048.y || _4049.y, _4048.z || _4049.z)) || ((asuint(_4052) & 2147483647u) > 2139095040u)) ? 1.0f : (_4226 + ((_4154 * _4160) * _56.SampleCmpLevelZero(_26, float3(_4148, _389).xy, _4052))), _3725 ? min(_4242, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4241.z - _4022) * 0.25f, min(_4244.x, _4244.y)))) : _4242) : 1.0f;
            } else {
              _4257 = 1.0f;
            }
            _4258 = _4257;
            break;
          } while (false);
          _5001 = _2303 * _4258;
          _5002 = 0.0f.xxx;
        }
        _5003 = _5001;
        _5004 = _5002;
        break;
      } while (false);
      _2328 = _5003;
      _2331 = _2330 + _5004;
    }
    _2300 = _2299 + _2330;
  }
  float3 _5014 = -_475;
  float _5015 = 1.0f - _39_m1;
  float _5030 = _434.y * _18_m46.w;
  float _5035 = max(0.00999999977648258209228515625f, _5030 + _18_m47.w);
  float3 _5049 = exp(_18_m45.xyz * ((-max(0.0f, (_476 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_5035)) / _5035) * exp(_5030 + _18_m48.w))));
  float _5052 = dot(_5014, _18_m44.xyz);
  float _5058 = _18_m45.w * _18_m45.w;
  float _5062 = (1.0f + _5058) - ((2.0f * _18_m45.w) * _5052);
  float3 _5394;
  float _5395;
  if (_18_m55.z > 0.0f) {
    uint3 _5220 = (uint3(int3(int(_954.x), int(_954.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5221 = _5220.y;
    uint _5222 = _5220.z;
    uint _5225 = _5220.x + (_5221 * _5222);
    uint _5227 = _5221 + (_5222 * _5225);
    uint _5229 = _5222 + (_5225 * _5227);
    uint _5231 = _5225 + (_5227 * _5229);
    float _5255 = dot(_5014, -_16_m0[2].xyz);
    float3 _5265 = _434 - _16_m11.xyz;
    float _5267 = (_18_m55.w * ((_5255 > 5.9604644775390625e-08f) ? (1.0f / _5255) : 0.0f)) * (1.0f / _476);
    float _5268 = _5265.y;
    float _5269 = _5267 * _5268;
    float _5271 = _16_m11.y + _5269;
    float _5272 = _5268 - _5269;
    float _5274 = (1.0f - _5267) * _476;
    float _5288 = max(-127.0f, _18_m49.z * _5272);
    float _5312 = max(-127.0f, _18_m52.x * _5272);
    float _5323 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5271 - _18_m49.x)))) * ((abs(_5288) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5288)) / _5288) : (0.693147182464599609375f - (0.2402265071868896484375f * _5288)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5271 - _18_m52.z)))) * ((abs(_5312) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5312)) / _5312) : (0.693147182464599609375f - (0.2402265071868896484375f * _5312))));
    float _5345 = clamp((_476 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5348 = clamp((max(clamp(exp2(-(_5323 * _5274)), 0.0f, 1.0f), _18_m51.w) + clamp((_476 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5345, 0.0f, 1.0f);
    float4 _5388 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _41.SampleLevel(_24, float3((_2274 + ((((float3(uint3(_5231, _5227 + (_5229 * _5231), _394) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_955 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_955 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5394 = _5388.xyz + (((_18_m51.xyz * (1.0f - _5348)) + (((_18_m54.xyz * pow(clamp(dot(_475, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5323 * max(_5274 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5345))) * _5388.w);
    _5395 = _5388.w * _5348;
  } else {
    float3 _5092 = _434 - _16_m11.xyz;
    float _5094 = _5092.y;
    float _5108 = max(-127.0f, _18_m49.z * _5094);
    float _5132 = max(-127.0f, _18_m52.x * _5094);
    float _5143 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_5108) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5108)) / _5108) : (0.693147182464599609375f - (0.2402265071868896484375f * _5108)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5132) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5132)) / _5132) : (0.693147182464599609375f - (0.2402265071868896484375f * _5132))));
    float _5165 = clamp((_476 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5168 = clamp((max(clamp(exp2(-(_5143 * _476)), 0.0f, 1.0f), _18_m51.w) + clamp((_476 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5165, 0.0f, 1.0f);
    _5394 = (_18_m51.xyz * (1.0f - _5168)) + (((_18_m54.xyz * pow(clamp(dot(_475, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5143 * max(_476 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5165));
    _5395 = _5168;
  }
  // RenoDX code start: preserve the waterfall improvement with the native material/fog blend.
  /* Vanilla 0xE8C65314:
  float3 _5399 = (((((lerp(dot(_1406, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1406, _1412) * _18_m78.xyz) * _39_m11) + (_1406 * _1420)) + _863) + (_2273.xyz + (_2299 * _2302)).xyz).xyz;
  */
  float3 _5399 = (((((lerp(dot((_1406 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.f)), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, (_1406 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.f)), _1412) * _18_m78.xyz) * _39_m11) + ((_1406 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.f)) * _1420)) + (_863 * (FOG_MODIFICATION > 0.5f ? 0.4f : 1.f))) + (_2273.xyz + ((_2299 * (FOG_MODIFICATION > 0.5f ? 0.5f : 1.f)) * _2302)).xyz).xyz;
  // RenoDX code end
  float _5406 = clamp(_955 / _39_m43, 0.0f, 1.0f);
  // RenoDX code start: preserve the waterfall improvement with the native material/fog blend.
  /* Vanilla 0xE8C65314:
  float3 _5416 = lerp(_5399, ((_5399 * (_5049 * _5395)) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5052 * _5052)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _5058) / max((12.56637096405029296875f * _5062) * sqrt(_5062), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5049)) * _5395) + _5394) * _5015)).xyz, (_5406 + (_39_m42 * (1.0f - _5406))).xxx).xyz * _819;
  */
  float3 _5416 = lerp(_5399, ((_5399 * (FOG_MODIFICATION > 0.5f ? (0.5f + 0.5f * (_5049 * _5395)) : (_5049 * _5395))) + (((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5052 * _5052)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _5058) / max((12.56637096405029296875f * _5062) * sqrt(_5062), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5049)) * _5395 * (FOG_MODIFICATION > 0.5f ? 0.35f : 1.f)) + (_5394 * (FOG_MODIFICATION > 0.5f ? 0.35f : 1.f))) * _5015)).xyz, (_5406 + (_39_m42 * (1.0f - _5406))).xxx).xyz * _819;
  // RenoDX code end
  float4 _5417 = float4(_5416.x, _5416.y, _5416.z, _390.w);
  float _5418 = _819 * _5015;
  _5417.w = _5418;
  float3 _5427 = ((lerp(dot(_5417.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5417.xyz, _1412) * _18_m78.xyz) * _39_m11) + (_5417.xyz * _1420);
  float2 _5437 = min(_921, 1.0f.xx);
  float4 _5438 = float4(_5437.x, _5437.y, _390.z, _390.w);
  _5438.z = float(clamp(max(dot(_5427.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _5418, _5418) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5438.w = (_39_m2 * _39_m0) * float(clamp(max(dot(_820, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _819, _819) * 10.0f, 0.0f, 1.0f) > 0.5f);
  // RenoDX code start: preserve the waterfall improvement with the native material/fog blend.
  /* Vanilla 0xE8C65314:
  _13 = float4(_5427.x, _5427.y, _5427.z, _5417.w);
  */
  float3 renodx_output_color = _5427;
  if (FOG_MODIFICATION > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _5417.w);
  // RenoDX code end
  _14 = _5438;
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

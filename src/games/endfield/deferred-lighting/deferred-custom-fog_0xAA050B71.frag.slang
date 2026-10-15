#include "./renodx_injection.hlsli"

// Ported from the native 0xAA050B71 Vulkan dump.
struct _22 {
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

static float3 _441;
static float _442;
static float3 _443;
static float _445;
static uint _446;

static const int2 _396[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _397[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _17_18 : register(b11, space0) {
  column_major float4x4 _18_m0 : packoffset(c0);
  column_major float4x4 _18_m1 : packoffset(c4);
  column_major float4x4 _18_m2 : packoffset(c8);
  column_major float4x4 _18_m3 : packoffset(c12);
  column_major float4x4 _18_m4 : packoffset(c16);
  column_major float4x4 _18_m5 : packoffset(c20);
  column_major float4x4 _18_m6 : packoffset(c24);
  column_major float4x4 _18_m7 : packoffset(c28);
  column_major float4x4 _18_m8 : packoffset(c32);
  column_major float4x4 _18_m9 : packoffset(c36);
  column_major float4x4 _18_m10 : packoffset(c40);
  float4 _18_m11 : packoffset(c44);
  column_major float4x4 _18_m12 : packoffset(c45);
  column_major float4x4 _18_m13 : packoffset(c49);
  column_major float4x4 _18_m14 : packoffset(c53);
  column_major float4x4 _18_m15 : packoffset(c57);
  column_major float4x4 _18_m16 : packoffset(c61);
  column_major float4x4 _18_m17 : packoffset(c65);
  column_major float4x4 _18_m18 : packoffset(c69);
  column_major float4x4 _18_m19 : packoffset(c73);
  column_major float4x4 _18_m20 : packoffset(c77);
  float4 _18_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _19_20 : register(b15, space0) {
  float4 _20_m0 : packoffset(c0);
  float4 _20_m1 : packoffset(c1);
  float4 _20_m2 : packoffset(c2);
  float4 _20_m3 : packoffset(c3);
  float4 _20_m4 : packoffset(c4);
  float4 _20_m5 : packoffset(c5);
  float4 _20_m6[6] : packoffset(c6);
  float4 _20_m7[6] : packoffset(c12);
  float4 _20_m8 : packoffset(c18);
  float4 _20_m9 : packoffset(c19);
  float4 _20_m10 : packoffset(c20);
  float4 _20_m11 : packoffset(c21);
  float4 _20_m12 : packoffset(c22);
  float4 _20_m13 : packoffset(c23);
  float4 _20_m14 : packoffset(c24);
  float4 _20_m15 : packoffset(c25);
  float _20_m16 : packoffset(c26);
  float _20_m17 : packoffset(c26.y);
  float _20_m18 : packoffset(c26.z);
  uint _20_m19 : packoffset(c26.w);
  float4 _20_m20 : packoffset(c27);
  int4 _20_m21 : packoffset(c28);
  float4 _20_m22 : packoffset(c29);
  float4 _20_m23 : packoffset(c30);
  float4 _20_m24 : packoffset(c31);
  float4 _20_m25 : packoffset(c32);
  float4 _20_m26 : packoffset(c33);
  float4 _20_m27 : packoffset(c34);
  float4 _20_m28 : packoffset(c35);
  float4 _20_m29 : packoffset(c36);
  float4 _20_m30 : packoffset(c37);
  float4 _20_m31 : packoffset(c38);
  float4 _20_m32[4] : packoffset(c39);
  float4 _20_m33[4] : packoffset(c43);
  float4 _20_m34[4] : packoffset(c47);
  float4 _20_m35[4] : packoffset(c51);
  float4 _20_m36 : packoffset(c55);
  float4 _20_m37 : packoffset(c56);
  float4 _20_m38[4] : packoffset(c57);
  float4 _20_m39[4] : packoffset(c61);
  float4 _20_m40[4] : packoffset(c65);
  float4 _20_m41 : packoffset(c69);
  float4 _20_m42 : packoffset(c70);
  float4 _20_m43 : packoffset(c71);
  float4 _20_m44 : packoffset(c72);
  float4 _20_m45 : packoffset(c73);
  float4 _20_m46 : packoffset(c74);
  float4 _20_m47 : packoffset(c75);
  float4 _20_m48 : packoffset(c76);
  float4 _20_m49 : packoffset(c77);
  float4 _20_m50 : packoffset(c78);
  float4 _20_m51 : packoffset(c79);
  float4 _20_m52 : packoffset(c80);
  float4 _20_m53 : packoffset(c81);
  float4 _20_m54 : packoffset(c82);
  float4 _20_m55 : packoffset(c83);
  float4 _20_m56 : packoffset(c84);
  float4 _20_m57 : packoffset(c85);
  float4 _20_m58 : packoffset(c86);
  float4 _20_m59 : packoffset(c87);
  float4 _20_m60 : packoffset(c88);
  float4 _20_m61 : packoffset(c89);
  float4 _20_m62 : packoffset(c90);
  float4 _20_m63 : packoffset(c91);
  float4 _20_m64 : packoffset(c92);
  float4 _20_m65 : packoffset(c93);
  float4 _20_m66 : packoffset(c94);
  float4 _20_m67 : packoffset(c95);
  float4 _20_m68 : packoffset(c96);
  float4 _20_m69 : packoffset(c97);
  float4 _20_m70 : packoffset(c98);
  float4 _20_m71 : packoffset(c99);
  float4 _20_m72 : packoffset(c100);
  float4 _20_m73 : packoffset(c101);
  float4 _20_m74 : packoffset(c102);
  float4 _20_m75 : packoffset(c103);
  float4 _20_m76 : packoffset(c104);
  float4 _20_m77 : packoffset(c105);
  float4 _20_m78 : packoffset(c106);
  float4 _20_m79 : packoffset(c107);
  float4 _20_m80 : packoffset(c108);
  float4 _20_m81 : packoffset(c109);
  float4 _20_m82 : packoffset(c110);
  float4 _20_m83 : packoffset(c111);
  float4 _20_m84 : packoffset(c112);
  float4 _20_m85 : packoffset(c113);
  float4 _20_m86 : packoffset(c114);
  float4 _20_m87 : packoffset(c115);
  float4 _20_m88 : packoffset(c116);
  float4 _20_m89 : packoffset(c117);
  float4 _20_m90 : packoffset(c118);
  float4 _20_m91 : packoffset(c119);
  float4 _20_m92 : packoffset(c120);
  float4 _20_m93 : packoffset(c121);
  float4 _20_m94 : packoffset(c122);
  float4 _20_m95 : packoffset(c123);
  float4 _20_m96 : packoffset(c124);
  float4 _20_m97 : packoffset(c125);
  float4 _20_m98 : packoffset(c126);
  float4 _20_m99 : packoffset(c127);
  float4 _20_m100 : packoffset(c128);
  float4 _20_m101 : packoffset(c129);
  float4 _20_m102[2] : packoffset(c130);
  float4 _20_m103[2] : packoffset(c132);
  float _20_m104 : packoffset(c134);
  float _20_m105 : packoffset(c134.y);
  float _20_m106 : packoffset(c134.z);
  float _20_m107 : packoffset(c134.w);
  float4 _20_m108 : packoffset(c135);
  float4 _20_m109 : packoffset(c136);
  float4 _20_m110 : packoffset(c137);
  float4 _20_m111 : packoffset(c138);
  float4 _20_m112 : packoffset(c139);
  float4 _20_m113 : packoffset(c140);
  float4 _20_m114 : packoffset(c141);
  float4 _20_m115 : packoffset(c142);
  float4 _20_m116 : packoffset(c143);
  float4 _20_m117 : packoffset(c144);
  float4 _20_m118 : packoffset(c145);
  float4 _20_m119 : packoffset(c146);
  float4 _20_m120 : packoffset(c147);
  float4 _20_m121 : packoffset(c148);
  float4 _20_m122 : packoffset(c149);
  float4 _20_m123 : packoffset(c150);
  float4 _20_m124 : packoffset(c151);
  float4 _20_m125 : packoffset(c152);
  float4 _20_m126 : packoffset(c153);
  float4 _20_m127 : packoffset(c154);
  float4 _20_m128 : packoffset(c155);
  float4 _20_m129 : packoffset(c156);
  float4 _20_m130 : packoffset(c157);
  float4 _20_m131 : packoffset(c158);
  float4 _20_m132 : packoffset(c159);
  float4 _20_m133 : packoffset(c160);
  float4 _20_m134 : packoffset(c161);
  float4 _20_m135 : packoffset(c162);
  float4 _20_m136 : packoffset(c163);
  float4 _20_m137 : packoffset(c164);
  column_major float4x4 _20_m138 : packoffset(c165);
  float4 _20_m139 : packoffset(c169);
  float4 _20_m140 : packoffset(c170);
  float4 _20_m141 : packoffset(c171);
  float4 _20_m142 : packoffset(c172);
  int4 _20_m143 : packoffset(c173);
  int4 _20_m144 : packoffset(c174);
  int4 _20_m145 : packoffset(c175);
  float4 _20_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _21_23 : register(b0, space2) {
  _22 _23_m0[256] : packoffset(c0);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _32 : register(t53, space0);
[[vk::binding(17, 0)]] StructuredBuffer<float4> _34 : register(t17, space0);
[[vk::binding(13, 0)]] cbuffer _35_36 : register(b13, space0) {
  float4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c1);
  float4 _36_m2 : packoffset(c2);
  float4 _36_m3 : packoffset(c3);
  float4 _36_m4 : packoffset(c4);
  uint4 _36_m5 : packoffset(c5);
  float4 _36_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _37_38 : register(b49, space0) {
  int _38_m0 : packoffset(c0);
  int _38_m1 : packoffset(c0.y);
  int _38_m2 : packoffset(c0.z);
  int _38_m3 : packoffset(c0.w);
  int _38_m4 : packoffset(c1);
  int _38_m5 : packoffset(c1.y);
  int _38_m6 : packoffset(c1.z);
  int _38_m7 : packoffset(c1.w);
  float _38_m8 : packoffset(c2);
  float _38_m9 : packoffset(c2.y);
  float _38_m10 : packoffset(c2.z);
  float _38_m11 : packoffset(c2.w);
  float _38_m12 : packoffset(c3);
  float _38_m13 : packoffset(c3.y);
  float _38_m14 : packoffset(c3.z);
  float _38_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _39_40 : register(b14, space0) {
  column_major float4x4 _40_m0[5] : packoffset(c0);
  float4 _40_m1[4] : packoffset(c20);
  float4 _40_m2[4] : packoffset(c24);
  float4 _40_m3[4] : packoffset(c28);
  float4 _40_m4 : packoffset(c32);
  float4 _40_m5 : packoffset(c33);
  float4 _40_m6 : packoffset(c34);
  float4 _40_m7 : packoffset(c35);
  float4 _40_m8 : packoffset(c36);
  float4 _40_m9[27] : packoffset(c37);
  float4 _40_m10 : packoffset(c64);
  float4 _40_m11 : packoffset(c65);
  float4 _40_m12[62] : packoffset(c66);
  column_major float4x4 _40_m13[15] : packoffset(c128);
  float4 _40_m14[15] : packoffset(c188);
  float4 _40_m15[15] : packoffset(c203);
  float4 _40_m16[15] : packoffset(c218);
  float4 _40_m17 : packoffset(c233);
  float4 _40_m18 : packoffset(c234);
  float4 _40_m19[21] : packoffset(c235);
  column_major float4x4 _40_m20 : packoffset(c256);
  column_major float4x4 _40_m21 : packoffset(c260);
  float4 _40_m22 : packoffset(c264);
  float4 _40_m23 : packoffset(c265);
  float4 _40_m24 : packoffset(c266);
  float4 _40_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _44 : register(t52, space0);
[[vk::binding(0, 1)]] cbuffer _54_55 : register(b0, space1) {
  float _55_m0 : packoffset(c0);
  float _55_m1 : packoffset(c0.y);
  float _55_m2 : packoffset(c0.z);
  float _55_m3 : packoffset(c0.w);
  float _55_m4 : packoffset(c1);
  float _55_m5 : packoffset(c1.y);
  float _55_m6 : packoffset(c1.z);
  float _55_m7 : packoffset(c1.w);
  float _55_m8 : packoffset(c2);
  float _55_m9 : packoffset(c2.y);
  float _55_m10 : packoffset(c2.z);
  float _55_m11 : packoffset(c2.w);
  float _55_m12 : packoffset(c3);
  float _55_m13 : packoffset(c3.y);
  float _55_m14 : packoffset(c3.z);
  float _55_m15 : packoffset(c3.w);
  float _55_m16 : packoffset(c4);
  float _55_m17 : packoffset(c4.y);
  float _55_m18 : packoffset(c4.z);
  float _55_m19 : packoffset(c4.w);
  float _55_m20 : packoffset(c5);
  float _55_m21 : packoffset(c5.y);
  float _55_m22 : packoffset(c5.z);
  float _55_m23 : packoffset(c5.w);
  float4 _55_m24 : packoffset(c6);
  float4 _55_m25 : packoffset(c7);
  float4 _55_m26 : packoffset(c8);
  float4 _55_m27 : packoffset(c9);
  float4 _55_m28 : packoffset(c10);
  float4 _55_m29 : packoffset(c11);
  float _55_m30 : packoffset(c12);
  float _55_m31 : packoffset(c12.y);
  float _55_m32 : packoffset(c12.z);
  float _55_m33 : packoffset(c12.w);
  float _55_m34 : packoffset(c13);
  float _55_m35 : packoffset(c13.y);
  float _55_m36 : packoffset(c13.z);
  float _55_m37 : packoffset(c13.w);
  float4 _55_m38 : packoffset(c14);
  float4 _55_m39 : packoffset(c15);
  float _55_m40 : packoffset(c16);
  float _55_m41 : packoffset(c16.y);
  float _55_m42 : packoffset(c16.z);
  float _55_m43 : packoffset(c16.w);
  float _55_m44 : packoffset(c17);
  float _55_m45 : packoffset(c17.y);
  float _55_m46 : packoffset(c17.z);
  float _55_m47 : packoffset(c17.w);
  float _55_m48 : packoffset(c18);
  float _55_m49 : packoffset(c18.y);
  float _55_m50 : packoffset(c18.z);
  float _55_m51 : packoffset(c18.w);
  float _55_m52 : packoffset(c19);
  float _55_m53 : packoffset(c19.y);
  float _55_m54 : packoffset(c19.z);
  float _55_m55 : packoffset(c19.w);
  float4 _55_m56 : packoffset(c20);
  float4 _55_m57 : packoffset(c21);
  float4 _55_m58 : packoffset(c22);
  float4 _55_m59 : packoffset(c23);
  float4 _55_m60 : packoffset(c24);
  float4 _55_m61 : packoffset(c25);
  float2 _55_m62 : packoffset(c26);
  float2 _55_m63 : packoffset(c26.z);
  float _55_m64 : packoffset(c27);
  float _55_m65 : packoffset(c27.y);
  float _55_m66 : packoffset(c27.z);
  float _55_m67 : packoffset(c27.w);
  float4 _55_m68 : packoffset(c28);
  float4 _55_m69 : packoffset(c29);
  float4 _55_m70 : packoffset(c30);
  float4 _55_m71 : packoffset(c31);
  float _55_m72 : packoffset(c32);
  float _55_m73 : packoffset(c32.y);
  float _55_m74 : packoffset(c32.z);
  float _55_m75 : packoffset(c32.w);
  float _55_m76 : packoffset(c33);
  float _55_m77 : packoffset(c33.y);
  float _55_m78 : packoffset(c33.z);
  float _55_m79 : packoffset(c33.w);
};

[[vk::binding(51, 0)]] cbuffer _68_69 : register(b51, space0) {
  float4 _69_m0[32] : packoffset(c0);
  column_major float4x4 _69_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _25 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _26 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _28 : register(s6, space0);
[[vk::binding(47, 0)]] Texture2D<float4> _30 : register(t47, space0);
[[vk::binding(8, 0)]] Texture2D<float4> _41 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _42 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _45 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _46 : register(t10, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _48 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _49 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _50 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _51 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _52 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _53 : register(t31, space0);
[[vk::binding(40, 0)]] Texture2D<float4> _56 : register(t40, space0);
[[vk::binding(8, 1)]] Texture2D<float4> _57 : register(t8, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _58 : register(t4, space1);
[[vk::binding(7, 1)]] Texture2D<float4> _59 : register(t7, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _60 : register(t5, space1);
[[vk::binding(46, 0)]] TextureCube<float4> _62 : register(t46, space0);
[[vk::binding(2, 1)]] Texture2D<float4> _63 : register(t2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _64 : register(t3, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _65 : register(t6, space1);
[[vk::binding(1, 1)]] SamplerState _66 : register(s1, space1);
[[vk::binding(28, 0)]] Texture2D<float4> _67 : register(t28, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _72 : register(t37, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float2 _7;
static float3 _8;
static float3 _9;
static float3 _10;
static float3 _11;
static uint _13;
static float4 _15;
static float4 _16;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
  [[vk::location(1)]] float3 _4 : TEXCOORD1;
  [[vk::location(2)]] float3 _5 : TEXCOORD2;
  [[vk::location(3)]] float4 _6 : TEXCOORD3;
  [[vk::location(4)]] float2 _7 : TEXCOORD4;
  [[vk::location(5)]] float3 _8 : TEXCOORD5;
  [[vk::location(6)]] float3 _9 : TEXCOORD6;
  [[vk::location(7)]] float3 _10 : TEXCOORD7;
  [[vk::location(8)]] float3 _11 : TEXCOORD8;
  [[vk::location(9)]] nointerpolation uint _13 : TEXCOORD9;
  float4 gl_FragCoord : SV_Position;
  bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _15 : SV_Target0;
  [[vk::location(1)]] float4 _16 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

uint4 _34_Load4(uint byte_offset) { return asuint(_34[byte_offset >> 4u]); }
void frag_main() {
  float _461 = 1.0f / gl_FragCoord.w;
  float3 _476 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
  float _477 = dot(_476, _476);
  float _479 = rsqrt(max(_477, 9.9999999392252902907785028219223e-09f));
  float3 _480 = _476 * _479;
  float _481 = _477 * _479;
  uint _484 = asuint(_23_m0[_13]._m2.x);
  bool _489 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
  float4 _502;
  float4 _503;
  if (_489) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0xAA050B71:
    _502 = asfloat(_34_Load4((_484 + 2u) * 16 + 0));
    _503 = asfloat(_34_Load4(_484 * 16 + 0));
    */
    _502 = asfloat(_34_Load4((_484 + 2u) * 16 + 0));
    _503 = asfloat(_34_Load4(_484 * 16 + 0));
    // RenoDX code end
  } else {
    _502 = _23_m0[_13]._m0[2];
    _503 = _23_m0[_13]._m0[0];
  }
  float4 _515 = _57.SampleBias(_27, _3 + (_55_m62 * _20_m77.w), _20_m16);
  float3 _520 = _515.xyz * _55_m24.xyz;
  float4 _524 = _58.SampleBias(_27, _3, _20_m16);
  float _525 = _524.x;
  float _527 = _524.z;
  float _529 = 1.0f - _524.w;
  float3 _537 = _4 + _18_m11.xyz;
  float3 _541 = _537 - float3(_503.w, _445, _502.w);
  _541.y = 6.103515625e-05f;
  float3 _544 = normalize(_541);
  float3 _552 = _5 * 1.0f;
  float4 _557 = _59.SampleBias(_27, _3, _20_m16);
  _557.w = _557.w * _557.x;
  float2 _566 = (_557.wy * 2.0f) - 1.0f.xx;
  float3 _567 = float3(_566.x, _566.y, _443.z);
  float2 _568 = _566.xy;
  _567.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_568, _568), 0.0f, 1.0f)));
  float2 _576 = _567.xy * _55_m3;
  float3 _582 = _520 * _55_m18;
  float3 _586 = lerp(dot(_582, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _582, _55_m19.xxx);
  float4 _594 = _60.SampleBias(_27, _3 + (_55_m63 * _20_m77.w), _20_m16);
  float3 _621 = mul(float3(_576.x, _576.y, _567.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _552));
  float _630 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _55_m5));
  float3 _631 = (_621 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_621, _621)))) * _630;
  float3 _632 = normalize(_5) * _630;
  uint2 _638 = uint2(gl_FragCoord.xy);
  float3 _648 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float4 _662 = float4(_445, _445, _445, float((asuint((_20_m92.x > 0.5f) ? _20_m92.y : _23_m0[_13]._m7.x) >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _663 = _662.w;
  float _671 = lerp(_20_m22.x, 1.0f, _20_m94.w) * _20_m20.x;
  float4 _1166;
  float3 _1167;
  float3 _1168;
  float _1169;
  if (_20_m83.y < 0.5f) {
    float3 _689 = _537 - (_20_m108.xyz + (_648 * (-_20_m110.w)));
    float _704 = max(min(max((max(abs(_689.x), abs(_689.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_689.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1006;
    float4 _1007;
    float4 _1008;
    float _1009;
    float _1010;
    if ((_20_m108.w != 0.0f) && (_704 < 1.0f)) {
      float3 _717 = _537 - (_20_m108.xyz + (_648 * (-_20_m110.y)));
      float _731 = max(clamp((max(abs(_717.x), abs(_717.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_717.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _807;
      float4 _808;
      float4 _809;
      float4 _810;
      if (_731 < 1.0f) {
        float3 _740 = ((_537 * 2.0f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _742 = _740 - floor(_740);
        float4 _746 = _48.SampleLevel(_27, _742, 0.0f);
        float _747 = 1.0f - _731;
        float _751 = _20_m109.y * 0.5f;
        float _756 = _742.x;
        float _757 = clamp(_742.y, _751, 1.0f - _751) * 0.3333333432674407958984375f;
        float _758 = _742.z;
        float4 _761 = _49.SampleLevel(_26, float3(_756, _757, _758), 0.0f);
        float _777 = _746.x;
        float _787 = _746.y;
        float _797 = _746.z;
        _807 = _704 + (_761.w * _747);
        _808 = float4(((_49.SampleLevel(_26, float3(_756, _757 + 0.666666686534881591796875f, _758), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _797, _797) * _747;
        _809 = float4(((_49.SampleLevel(_26, float3(_756, _757 + 0.3333333432674407958984375f, _758), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _787, _787) * _747;
        _810 = float4(((_761.xyz * 4.0f) - 2.0f.xxx) * _777, _777) * _747;
      } else {
        _807 = _704;
        _808 = 0.0f.xxxx;
        _809 = 0.0f.xxxx;
        _810 = 0.0f.xxxx;
      }
      float3 _816 = _537 - (_20_m108.xyz + (_648 * (-_20_m110.z)));
      float _830 = max(clamp((max(abs(_816.x), abs(_816.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_816.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _910;
      float4 _911;
      float4 _912;
      float4 _913;
      if (_830 < 1.0f) {
        float3 _839 = ((_537 * 0.5f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _841 = _839 - floor(_839);
        float4 _845 = _50.SampleLevel(_27, _841, 0.0f);
        float _847 = _731 * (1.0f - _830);
        float _851 = _20_m109.y * 0.5f;
        float _856 = _841.x;
        float _857 = clamp(_841.y, _851, 1.0f - _851) * 0.3333333432674407958984375f;
        float _858 = _841.z;
        float4 _861 = _51.SampleLevel(_26, float3(_856, _857, _858), 0.0f);
        float _877 = _845.x;
        float _888 = _845.y;
        float _899 = _845.z;
        _910 = _807 + (_861.w * _847);
        _911 = _808 + (float4(((_51.SampleLevel(_26, float3(_856, _857 + 0.666666686534881591796875f, _858), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _899, _899) * _847);
        _912 = _809 + (float4(((_51.SampleLevel(_26, float3(_856, _857 + 0.3333333432674407958984375f, _858), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _888, _888) * _847);
        _913 = _810 + (float4(((_861.xyz * 4.0f) - 2.0f.xxx) * _877, _877) * _847);
      } else {
        _910 = _807;
        _911 = _808;
        _912 = _809;
        _913 = _810;
      }
      float4 _996;
      float4 _997;
      float4 _998;
      float _999;
      if (_830 > 0.0f) {
        float3 _922 = ((_537 * 0.125f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _925 = _20_m109.xyz * 0.5f;
        float3 _927 = clamp(_922 - floor(_922), _925, 1.0f.xxx - _925);
        float4 _931 = _52.SampleLevel(_27, _927, 0.0f);
        float _933 = _830 * (1.0f - _704);
        float _937 = _20_m109.y * 0.5f;
        float _942 = _927.x;
        float _943 = clamp(_927.y, _937, 1.0f - _937) * 0.3333333432674407958984375f;
        float _944 = _927.z;
        float4 _947 = _53.SampleLevel(_26, float3(_942, _943, _944), 0.0f);
        float _963 = _931.x;
        float _974 = _931.y;
        float _985 = _931.z;
        _996 = _911 + (float4(((_53.SampleLevel(_26, float3(_942, _943 + 0.666666686534881591796875f, _944), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _985, _985) * _933);
        _997 = _912 + (float4(((_53.SampleLevel(_26, float3(_942, _943 + 0.3333333432674407958984375f, _944), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _974, _974) * _933);
        _998 = _913 + (float4(((_947.xyz * 4.0f) - 2.0f.xxx) * _963, _963) * _933);
        _999 = _910 + (_947.w * _933);
      } else {
        _996 = _911;
        _997 = _912;
        _998 = _913;
        _999 = _910;
      }
      float _1002 = clamp((_999 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1006 = _996;
      _1007 = _997;
      _1008 = _998;
      _1009 = _1002 - _704;
      _1010 = (_1002 + _704) * 0.5f;
    } else {
      _1006 = 0.0f.xxxx;
      _1007 = 0.0f.xxxx;
      _1008 = 0.0f.xxxx;
      _1009 = 0.0f;
      _1010 = 1.0f;
    }
    float4 _1030 = _1008 + float4(_20_m111.x * _1010, (_20_m111.y * _1010) + ((_20_m111.w * _1009) * 0.5f), _20_m111.z * _1010, (_20_m111.w * _1010) + ((_20_m111.y * _1009) * 0.375f));
    float4 _1050 = _1007 + float4(_20_m112.x * _1010, (_20_m112.y * _1010) + ((_20_m112.w * _1009) * 0.5f), _20_m112.z * _1010, (_20_m112.w * _1010) + ((_20_m112.y * _1009) * 0.375f));
    float4 _1070 = _1006 + float4(_20_m113.x * _1010, (_20_m113.y * _1010) + ((_20_m113.w * _1009) * 0.5f), _20_m113.z * _1010, (_20_m113.w * _1010) + ((_20_m113.y * _1009) * 0.375f));
    float4 _1074 = float4(_631, 1.0f);
    float3 _1080 = max(float3(dot(_1030, _1074), dot(_1050, _1074), dot(_1070, _1074)), 0.0f.xxx) * _671;
    float3 _1088 = ((_1030.xyz * 0.2125999927520751953125f) + (_1050.xyz * 0.715200006961822509765625f)) + (_1070.xyz * 0.072200000286102294921875f);
    float3 _1092 = _1088 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1088, _1088)));
    float _1094 = abs(_1092.y);
    float3 _1095 = _1092;
    _1095.y = _1094;
    float4 _1096 = float4(_1095.x, _1095.y, _1095.z, 0.0f.xxxx.w);
    _1096.w = 1.0f;
    float4 _1100 = float4(_1092.x, _1094, _1092.z, 1.0f);
    float3 _1105 = max(float3(dot(_1030, _1100), dot(_1050, _1100), dot(_1070, _1100)), 0.0f.xxx);
    float _1113 = _1080.z;
    float _1114 = _1080.y;
    float4 _1119 = lerp(float4(_1113, _1114, -1.0f, 0.666666686534881591796875f), float4(_1114, _1113, 0.0f, -0.3333333432674407958984375f), step(_1113, _1114).xxxx);
    float _1120 = _1080.x;
    float _1121 = _1119.x;
    float4 _1129 = lerp(float4(_1121, _1119.yw, _1120), float4(_1120, _1119.yz, _1121), step(_1121, _1120).xxxx);
    float _1130 = _1129.x;
    float _1131 = _1129.w;
    float _1132 = _1129.y;
    float _1134 = _1130 - min(_1131, _1132);
    float _1144 = frac(abs(_1129.z + ((_1131 - _1132) / ((6.0f * _1134) + 9.9999997473787516355514526367188e-05f))));
    float _1151 = min(_1134 / (_1130 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1144 - 0.5f))) * clamp(_1130, 0.0f, 1.0f));
    float _1153 = 2.0f / (2.0f - _1151);
    _1166 = _1096;
    _1167 = _1080;
    _1168 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1144, _1151, _1153).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1151.xxx) * _1153;
    _1169 = max(max(max(_1105.x, _1105.y), _1105.z), 0.0f) * _671;
  } else {
    _1166 = 0.0f.xxxx;
    _1167 = 1.0f.xxx;
    _1168 = _20_m84.xyz;
    _1169 = _671;
  }
  float3 _1268;
  float3 _1269;
  float _1270;
  float3 _1271;
  float _1272;
  [branch] if ((_663 - _55_m20) > 0.00999999977648258209228515625f) {
    float4 _1202 = _56.SampleBias(_27, _3 * _20_m92.z, _20_m16);
    float _1208 = _663 * (2.0f - _663);
    float _1215 = smoothstep(2.0f - _1208, 2.349999904632568359375f - _1208, (((_489 ? _10.z : _10.y) * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1202.z) * ((_527 * _527) * float(gl_FrontFacing));
    float3 _1217 = _1215.xxx;
    float2 _1223 = (_1202.xy * 2.0f) - 1.0f.xx;
    float3 _1224 = float3(_1223.x, _1223.y, _443.z);
    float2 _1225 = _1223.xy;
    _1224.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1225, _1225), 0.0f, 1.0f)));
    float2 _1233 = _1224.xy * 2.0f;
    float3 _1235 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1233.x, _1233.y, _1224.z), _1217);
    float3 _1239 = _1235 * rsqrt(max(6.103515625e-05f, dot(_1235, _1235)));
    float _1240 = _631.y;
    float _1243 = step(0.00999999977648258209228515625f, 1.0f - (_1240 * _1240));
    float _1247 = lerp(_631.z, _1240, _1243);
    float3 _1254 = (float3(0.0f, _1243, 1.0f - _1243) - (_631 * _1247)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1247 * _1247)));
    _1268 = lerp(_520 * 1.0f, 0.87999999523162841796875f.xxx, _1217);
    _1269 = ((cross(_1254, _631) * _1239.x) + (_1254 * _1239.y)) + (_631 * _1239.z);
    _1270 = lerp(_525, 0.0f, _1215);
    _1271 = lerp(_586 * 1.0f, 0.3079999983310699462890625f.xxx, _1217);
    _1272 = lerp(_529, 0.89999997615814208984375f, clamp(_1215 * 4.0f, 0.0f, 1.0f));
  }
  else {
    _1268 = _520;
    _1269 = _631;
    _1270 = _525;
    _1271 = _586;
    _1272 = _529;
  }
  bool2 _1276 = (_55_m76 != 0.0f).xx;
  float _1329 = (_55_m77 * (_55_m78 - dot(_537, _55_m71.xyz))) + ((_65.SampleBias(_66, (lerp(float2(_1276.x ? _7.x : _3.x, _1276.y ? _7.y : _3.y), mul(float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz), _537 - mul(_23_m0[_13]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _55_m72.xx) * _55_m68.xy) + _55_m68.zw, _20_m16).x - ((max(_55_m74, _23_m0[_13]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _55_m79);
  if ((clamp(_1329 * _55_m73, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f) {
    discard;
  }
  float _1362 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(1.0f, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _1364 = abs(_1362);
  if (min(_23_m0[_13]._m1.x - ((_23_m0[_13]._m1.x >= 0.0f) ? _1364 : (-_1364)), (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) - _1362) < 0.0f) {
    discard;
  }
  float3 _1379 = _55_m59.xyz * _55_m46;
  float4 _1380 = float4(_1379.x, _1379.y, _1379.z, _55_m59.w);
  _1380.w = _55_m59.w * _55_m47;
  float2 _1466;
  if (_55_m45 < 1.5f) {
    _1466 = lerp(_3, _7, _55_m45.xx);
  } else {
    float2 _1463;
    if (_55_m45 < 2.5f) {
      bool3 _1428 = _489.xxx;
      float3 _1430 = float3(_1428.x ? _11.xzy.x : _11.x, _1428.y ? _11.xzy.y : _11.y, _1428.z ? _11.xzy.z : _11.z);
      float3 _1434 = _1430 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1430, _1430)));
      float _1435 = _1434.z;
      float _1436 = _1434.x;
      float _1437 = _1435 / _1436;
      float _1438 = abs(_1437);
      bool _1439 = _1438 < 1.0f;
      float _1441 = _1439 ? _1438 : (1.0f / _1438);
      float _1442 = _1441 * _1441;
      float _1447 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _1442)) * _1442)) * _1441;
      float _1449 = _1439 ? _1447 : (1.57079637050628662109375f - _1447);
      _1463 = float2(((((_1437 < 0.0f) ? (-_1449) : _1449) + (((_1435 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_1436 < 0.0f))) * 0.159154951572418212890625f) + 0.5f, _1430.y);
    } else {
      float2 _1402 = ((float2(_638) / _20_m5.xy) * 2.0f) - 1.0f.xx;
      _1463 = float2(_1402.x, (_1402.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _55_m55);
    }
    _1466 = _1463;
  }
  bool2 _1470 = (_55_m48 > 0.5f).xx;
  float2 _1551;
  if (_55_m49 < 1.5f) {
    _1551 = lerp(_3, _7, _55_m49.xx);
  } else {
    float2 _1548;
    if (_55_m49 < 2.5f) {
      bool3 _1513 = _489.xxx;
      float3 _1515 = float3(_1513.x ? _11.xzy.x : _11.x, _1513.y ? _11.xzy.y : _11.y, _1513.z ? _11.xzy.z : _11.z);
      float3 _1519 = _1515 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1515, _1515)));
      float _1520 = _1519.z;
      float _1521 = _1519.x;
      float _1522 = _1520 / _1521;
      float _1523 = abs(_1522);
      bool _1524 = _1523 < 1.0f;
      float _1526 = _1524 ? _1523 : (1.0f / _1523);
      float _1527 = _1526 * _1526;
      float _1532 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _1527)) * _1527)) * _1526;
      float _1534 = _1524 ? _1532 : (1.57079637050628662109375f - _1532);
      _1548 = float2(((((_1522 < 0.0f) ? (-_1534) : _1534) + (((_1520 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_1521 < 0.0f))) * 0.159154951572418212890625f) + 0.5f, _1515.y);
    } else {
      float2 _1487 = ((float2(_638) / _20_m5.xy) * 2.0f) - 1.0f.xx;
      _1548 = float2(_1487.x, (_1487.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _55_m55);
    }
    _1551 = _1548;
  }
  float4 _1567 = _64.SampleLevel(_27, ((float2(_1470.x ? _1551.x : _1466.x, _1470.y ? _1551.y : _1466.y) + (_55_m56.zw * _20_m77.w)) * _55_m61.xy) + _55_m61.zw, 0.0f);
  float _1570 = _1567.x;
  float4 _1586 = _63.SampleLevel(_27, (((_1466 + (_55_m54 * _1570).xx) + (_55_m56.xy * _20_m77.w)) * _55_m60.xy) + _55_m60.zw, 0.0f);
  float4 _1593 = _1380 * lerp(_1586, float4(1.0f, 1.0f, 1.0f, _1586.x), _55_m44.xxxx);
  float _1596 = _1593.w;
  float _1609 = _1570 - ((_55_m53 * 2.019999980926513671875f) - 1.0099999904632568359375f);
  float _1611 = clamp(-_1609, 0.0f, 1.0f);
  float _1613 = _1596 * clamp(_1609, 0.0f, 1.0f);
  bool3 _1630 = (_55_m52 < 0.5f).xxx;
  float _1644 = pow(clamp(dot(_480, float3(_1630.x ? _552.x : _1269.x, _1630.y ? _552.y : _1269.y, _1630.z ? _552.z : _1269.z).xyz) + _55_m40, 0.0f, 1.0f), _55_m42);
  float _1646 = lerp(1.0f - _1644, _1644, _55_m43);
  float2 _1666 = float2(_638);
  float2 _1671 = ((_1666 * _20_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _1674 = float4(_1671, _30.SampleBias(_25, gl_FragCoord.xy * _20_m0.zw, _20_m16).x, 1.0f);
  _1674.y = -_1671.y;
  float4 _1677 = mul(_18_m6, _1674);
  float _1700 = max((_515.w * _55_m24.w) * ((_55_m50 > 0.5f) ? _1613 : 1.0f), clamp(1.0f - exp2((-_55_m31) * (abs(mul(_18_m0, float4(_1677.xyz / _1677.w.xxx, 1.0f)).z) - _461)), 0.0f, 1.0f) * _55_m30);
  float _1702 = 0.959999978542327880859375f - (_1270 * 0.959999978542327880859375f);
  float3 _1703 = _1268 * _1702;
  float3 _1706 = lerp(0.039999999105930328369140625f.xxx * _524.y, _1268, _1270.xxx);
  float3 _1707 = _1271 * _1702;
  float _1708 = _1272 * _1272;
  float _1709 = max(_1708, 0.0078125f);
  float2 _1722 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
  _1722.y = -_1722.y;
  float2 _1735 = ((sqrt(sqrt(abs(_1722 * 0.5f))) * float2(int2(sign(_1722)))) * 0.5f) + 0.5f.xx;
  float4 _1736 = float4(_1735.x, _1735.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _1736.z = 1.0f;
  _1736.w = 0.4000000059604644775390625f;
  float3 _1749 = lerp(-_36_m0.xyz, _20_m93.xyz, _20_m83.w.xxx);
  float3 _1753 = normalize(float3(_1749.x, 6.103515625e-05f, _1749.z));
  float3 _1763 = lerp(_36_m3.xyz, _20_m87.xyz, _20_m94.y.xxx);
  float3 _1769 = _1763 * lerp(_36_m3.w, _20_m87.w, _20_m94.w);
  float2 _2268;
  do {
    if (_40_m7.w >= 0.9900000095367431640625f) {
      _2268 = float2(_40_m7.z, 1.0f);
      break;
    }
    int _1783 = int(_40_m7.x);
    bool3 _1785 = (_1783 == 2).xxx;
    float3 _1790 = _537 - float3(_1785.x ? _40_m1[0].xyz.x : _18_m11.xyz.x, _1785.y ? _40_m1[0].xyz.y : _18_m11.xyz.y, _1785.z ? _40_m1[0].xyz.z : _18_m11.xyz.z);
    float _1801 = max(clamp((_40_m6.w - dot(_1790, _1790)) * _40_m6.z, 0.0f, 1.0f), _40_m8.x);
    float _1990;
    bool _1991;
    if (_1801 > 0.0f) {
      float _1988;
      bool _1989;
      if (_1783 > 0) {
        float3 _1808 = _537 - _40_m1[0].xyz;
        float3 _1812 = _537 - _40_m1[1].xyz;
        float3 _1816 = _537 - _40_m1[2].xyz;
        float3 _1820 = _537 - _40_m1[3].xyz;
        float4 _1825 = float4(dot(_1808, _1808), dot(_1812, _1812), dot(_1816, _1816), dot(_1820, _1820));
        float4 _1834 = float4(_40_m1[0].w, _40_m1[1].w, _40_m1[2].w, _40_m1[3].w);
        float4 _1836 = float4(bool4(_1825.x < _1834.x, _1825.y < _1834.y, _1825.z < _1834.z, _1825.w < _1834.w));
        float3 _1840 = clamp(_1836.yzw - _1836.xyz, 0.0f.xxx, 1.0f.xxx);
        float _1847 = max(clamp(4.0f - dot(float4(_1836.x, _1840.x, _1840.y, _1840.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f), _40_m6.y);
        float4 _1855 = mul(_40_m0[uint(_1847)], float4(_537, 1.0f));
        float _1858 = _1855.z;
        float4 _1859 = float4(_1855.xy, _1858, _1847);
        float3 _1860 = _1859.xyz;
        bool3 _1861 = bool3(_1860.x <= 0.0f.xxx.x, _1860.y <= 0.0f.xxx.y, _1860.z <= 0.0f.xxx.z);
        bool3 _1862 = bool3(_1860.x >= 1.0f.xxx.x, _1860.y >= 1.0f.xxx.y, _1860.z >= 1.0f.xxx.z);
        bool _1868 = any(bool3(_1861.x || _1862.x, _1861.y || _1862.y, _1861.z || _1862.z)) || ((asuint(_1858) & 2147483647u) > 2139095040u);
        int _1869 = int(_1847);
        float2 _1886 = float4(_40_m3[_1869].xy + (_1859.xy * _40_m3[_1869].zw), _1858, _1847).xy * _40_m4.zw;
        float2 _1888 = floor(_1886 + 0.5f.xx);
        float2 _1889 = _1886 - _1888;
        float _1890 = _1889.x;
        float _1891 = _1890 + 0.5f;
        float _1893 = (_1891 * _1891) * 0.5f;
        float _1896 = min(_1890, 0.0f);
        float _1900 = max(_1890, 0.0f);
        float4 _1904 = float4(_1893 - _1890, (1.0f - _1890) - (_1896 * _1896), (_1890 + 1.0f) - (_1900 * _1900), _1893) * 0.44444000720977783203125f;
        float _1905 = _1889.y;
        float _1906 = _1905 + 0.5f;
        float _1908 = (_1906 * _1906) * 0.5f;
        float _1911 = min(_1905, 0.0f);
        float _1915 = max(_1905, 0.0f);
        float4 _1919 = float4(_1908 - _1905, (1.0f - _1905) - (_1911 * _1911), (_1905 + 1.0f) - (_1915 * _1915), _1908) * 0.44444000720977783203125f;
        float2 _1921 = _1904.yw;
        float2 _1922 = _1904.xz + _1921;
        float2 _1924 = _1919.yw;
        float2 _1925 = _1919.xz + _1924;
        float2 _1931 = ((_1921 / _1922) + float2(-1.5f, 0.5f)) * _40_m4.xx;
        float2 _1933 = ((_1924 / _1925) + float2(-1.5f, 0.5f)) * _40_m4.yy;
        float2 _1935 = _1888 * _40_m4.xy;
        float _1936 = _1931.x;
        float _1937 = _1933.x;
        float _1940 = _1931.y;
        float _1943 = _1933.y;
        float _1948 = _1922.x;
        float _1949 = _1925.x;
        float _1951 = _1922.y;
        float _1953 = _1925.y;
        _1988 = _1868 ? 1.0f : (((((_1948 * _1949) * _41.SampleCmpLevelZero(_28, float3(_1935 + float2(_1936, _1937), _442).xy, _1858)) + ((_1951 * _1949) * _41.SampleCmpLevelZero(_28, float3(_1935 + float2(_1940, _1937), _442).xy, _1858))) + ((_1948 * _1953) * _41.SampleCmpLevelZero(_28, float3(_1935 + float2(_1936, _1943), _442).xy, _1858))) + ((_1951 * _1953) * _41.SampleCmpLevelZero(_28, float3(_1935 + float2(_1940, _1943), _442).xy, _1858)));
        _1989 = _1868;
      } else {
        _1988 = 1.0f;
        _1989 = false;
      }
      _1990 = _1988;
      _1991 = _1989;
    } else {
      _1990 = 1.0f;
      _1991 = false;
    }
    float _2188;
    float _2189;
    if ((_1801 < 1.0f) || (_40_m8.x > 0.5f)) {
      float _1999 = 1.0f - clamp(dot(_632, _36_m0.xyz), 0.0f, 0.89999997615814208984375f);
      float4 _2016 = float4((_537 - (_36_m0.xyz * (_1999 * _40_m22.x))) + (_632 * (_1999 * _40_m22.y)), 1.0f);
      float4 _2017 = mul(_40_m21, _2016);
      float2 _2018 = _2017.xy;
      float _2186;
      if (all(bool2(_2018.x > 0.0f.xx.x, _2018.y > 0.0f.xx.y)) && all(bool2(_2018.x < 1.0f.xx.x, _2018.y < 1.0f.xx.y))) {
        uint _2037 = clamp(uint((floor(_2017.y * _40_m23.z) + _2017.x) * _40_m23.y), 0u, 127u);
        uint _2041 = asuint(_40_m25[_2037].x);
        float2 _2042 = spvUnpackHalf2x16(_2041);
        float _2043 = _2042.x;
        float _2185;
        if (_2043 >= 0.0f) {
          float4x4 _2052 = _40_m20;
          _2052[0].w = _40_m25[_2037].y;
          _2052[1].w = _40_m25[_2037].z;
          _2052[2].w = _40_m25[_2037].w;
          float4 _2059 = mul(_2052, _2016);
          float3 _2060 = _2059.xyz;
          float _2184;
          if (all(bool3(_2060.x > 0.0f.xxx.x, _2060.y > 0.0f.xxx.y, _2060.z > 0.0f.xxx.z)) && all(bool3(_2060.x < 1.0f.xxx.x, _2060.y < 1.0f.xxx.y, _2060.z < 1.0f.xxx.z))) {
            float2 _2072 = (_2059.xy * _40_m22.zw) + float2(_2043, spvUnpackHalf2x16(_2041 >> 16u).x);
            float _2077 = _2059.z;
            float2 _2083 = float4(_2072, _2077, 1.0f).xy * _40_m24.zw;
            float2 _2085 = floor(_2083 + 0.5f.xx);
            float2 _2086 = _2083 - _2085;
            float _2087 = _2086.x;
            float _2088 = _2087 + 0.5f;
            float _2090 = (_2088 * _2088) * 0.5f;
            float _2093 = min(_2087, 0.0f);
            float _2097 = max(_2087, 0.0f);
            float4 _2101 = float4(_2090 - _2087, (1.0f - _2087) - (_2093 * _2093), (_2087 + 1.0f) - (_2097 * _2097), _2090) * 0.44444000720977783203125f;
            float _2102 = _2086.y;
            float _2103 = _2102 + 0.5f;
            float _2105 = (_2103 * _2103) * 0.5f;
            float _2108 = min(_2102, 0.0f);
            float _2112 = max(_2102, 0.0f);
            float4 _2116 = float4(_2105 - _2102, (1.0f - _2102) - (_2108 * _2108), (_2102 + 1.0f) - (_2112 * _2112), _2105) * 0.44444000720977783203125f;
            float2 _2118 = _2101.yw;
            float2 _2119 = _2101.xz + _2118;
            float2 _2121 = _2116.yw;
            float2 _2122 = _2116.xz + _2121;
            float2 _2128 = ((_2118 / _2119) + float2(-1.5f, 0.5f)) * _40_m24.xx;
            float2 _2130 = ((_2121 / _2122) + float2(-1.5f, 0.5f)) * _40_m24.yy;
            float2 _2132 = _2085 * _40_m24.xy;
            float _2133 = _2128.x;
            float _2134 = _2130.x;
            float _2137 = _2128.y;
            float _2140 = _2130.y;
            _2184 = ((((_2119.x * _2122.x) * _46.SampleCmpLevelZero(_28, float3(_2132 + float2(_2133, _2134), _442).xy, _2077)) + ((_2119.y * _2122.x) * _46.SampleCmpLevelZero(_28, float3(_2132 + float2(_2137, _2134), _442).xy, _2077))) + ((_2119.x * _2122.y) * _46.SampleCmpLevelZero(_28, float3(_2132 + float2(_2133, _2140), _442).xy, _2077))) + ((_2119.y * _2122.y) * _46.SampleCmpLevelZero(_28, float3(_2132 + float2(_2137, _2140), _442).xy, _2077));
          } else {
            _2184 = 1.0f;
          }
          _2185 = _2184;
        } else {
          _2185 = 1.0f;
        }
        _2186 = _2185;
      } else {
        _2186 = 1.0f;
      }
      _2188 = _1991 ? _2186 : _1990;
      _2189 = _2186;
    } else {
      _2188 = _1990;
      _2189 = 1.0f;
    }
    float _2192 = lerp(lerp(_2189, _2188, _1801), min(_2189, _2188), _40_m8.x);
    float _2263;
    if (_2192 > 0.001000000047497451305389404296875f) {
      float3 _2225 = _537 - _20_m65.xyz;
      float2 _2230 = (_2225 + (_20_m68.xyz * _2225.y)).xz * _20_m66.z;
      float2 _2231 = _20_m67.xy * _20_m77.w;
      float3 _2238 = _537 - _20_m69.xyz;
      float2 _2246 = _20_m69.w.xx;
      float4 _2253 = _45.SampleLevel(_27, lerp(_2230 * _20_m67.w, (_2238 + (_20_m68.xyz * _2238.y)).xz * _20_m70.x, _2246) + lerp(_2231, _20_m70.yz * _20_m77.w, _2246), 0.0f);
      _2263 = _2192 * lerp(1.0f, lerp(_45.SampleLevel(_27, _2230 + _2231, 0.0f).x, lerp(_2253.x, _2253.y, _20_m69.w), smoothstep(_20_m66.x, _20_m66.y, length(_2225.xz))), _20_m67.z);
    } else {
      _2263 = _2192;
    }
    _2268 = float2(lerp(_2263, _40_m7.z, _40_m7.w), _2263);
    break;
  } while (false);
  float _2275 = lerp(lerp(1.0f, _2268.x, _40_m6.x), 1.0f, _20_m83.z);
  float _2276 = dot(_1269, _1749);
  float3 _2283 = _1707 * _20_m82.z;
  float3 _2284 = _2283 * 0.64999997615814208984375f;
  float _2288 = dot(_1703, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2301 = clamp(-dot(_1753.xz, normalize(_648.xz)), 0.0f, 1.0f);
  float _2305 = 1.0f - _20_m94.x;
  float _2313 = smoothstep(0.25f, 1.0f, clamp(lerp(_2276, ((-_2276) * ((_2276 * 0.5f) - 1.0f)) + 0.5f, (_2301 * smoothstep(0.25f, 0.75f, 1.0f - abs(_648.y))) * _2305) + (_20_m93.w * _20_m94.x), -1.0f, 1.0f));
  float _2320 = max(max(_2313, _2313), _2313) - min(min(_2313, _2313), _2313);
  float _2322 = smoothstep(0.25f, 1.0f, dot(_1269, _648));
  float _2329 = min(min(1.0f, _527), _2313);
  float _2330 = _2322 * _527;
  float3 _2334 = ((clamp(dot(_631, _20_m88.xyz) + _20_m89.x, 0.0f, 1.0f) * _20_m89.y) + _20_m89.z).xxx * lerp(_1168, 1.0f.xxx, (_20_m83.y * _2329).xxx);
  float3 _2336 = _2329.xxx;
  float3 _2359 = _2275.xxx;
  float3 _2360 = lerp((_2334 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1169), 1.5f), clamp(_1169, 1.25f, 1.75f), _20_m83.x)) * _20_m82.w, (lerp(dot(_1769, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1769, _2336) + ((_2334 * clamp(_1169, 0.0f, 1.5f)) * ((1.0f - _20_m94.y).xxx + (_1763 * _20_m94.y)))) * _20_m82.y, _2359);
  float3 _2361 = lerp(lerp(lerp(dot(_2284, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2284, 1.2000000476837158203125f.xxx), _2283, clamp((_527 * _2322) + _2313, 0.0f, 1.0f).xxx), _1703, _2336);
  float3 _2367 = _2361 * ((1.0f - _2320).xxx + (_2313.xxxx.xyz * _2320));
  float3 _2376 = lerp(lerp(_2283, lerp(_2288.xxx, _1703, 1.2000000476837158203125f.xxx), _2330.xxx), _2367 * clamp(dot(_2361, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2367, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2359);
  float4 _2380 = float4(_2376, _2275);
  float _2382 = lerp(_2330, _2329, _2275);
  float _2385 = lerp(_20_m82.z, 1.0f, _2382);
  float3 _2393 = float3(_648.x, lerp(0.5f, _1749.y, _2275), _648.z);
  float _2406 = clamp(dot(_631, _480), 0.0f, 1.0f);
  float _2407 = dot(_631, normalize(((_1749 * _2275) + ((_2393 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2393, _2393)))) * 2.0f)) + (_480 * (2.0f + _2275))));
  float _2408 = _1709 * _1709;
  float _2412 = (((_2407 * _2408) - _2407) * _2407) + 1.0f;
  float _2413 = _2412 * _2412;
  float _2417 = 2.0f * _2406;
  float _2419 = (1.0f + _2406) - _2406;
  float _2436 = (1.0f - _55_m6) + (_1700 * _55_m6);
  float3 _2438 = ((_2360 * _2376) * _2436) + (((_1706 * clamp((((_2408 != _2413) ? (_2408 / _2413) : 1.0f) * (0.5f / ((_2417 + (_1709 * _2419)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2360 * (((_2382 * 0.5f) + 0.5f) * _2385)) * 1.0f)) * _20_m95.w);
  float _2439 = dot(_2438, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2442 = clamp(_2439 - 0.5f, 0.0f, 0.5f);
  float3 _2478 = normalize(cross(_648, lerp(float3(_20_m91.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m91.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m91.y), _20_m97.w.xxx)));
  float _2484 = dot(_480, _1269);
  float _2486 = 1.0f - abs(_2484);
  float _2508 = dot(_1753, _1269);
  float _2520 = 1.0f - _2275;
  float _2547 = _2406 * _2406;
  float _2548 = _2547 * _2406;
  float2 _2549 = float2(1.0f, _2406);
  float2 _2552 = float2(1.0f, _1708);
  float3 _2555 = float3(1.0f, _1708, (_1708 * _1708) * _1708);
  float _2560 = dot(mul(_2549, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2552) / dot(mul(float3(1.0f, _2547, _2548), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2555);
  float _2565 = dot(mul(_2549, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2552) / dot(mul(float3(1.0f, _2406, _2548), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2555);
  float3 _2568 = (_1706 * _2560) + _2565.xxx;
  float _2569 = _2560 + _2565;
  float3 _2575 = -_480;
  float3 _2576 = reflect(_2575, _631);
  float _2581 = _2576.x;
  float _2583 = _2576.z;
  float3 _2586 = _2576;
  _2586.x = (_2581 * _20_m98.y) + (_2583 * _20_m98.x);
  _2586.z = (_2583 * _20_m98.y) - (_2581 * _20_m98.x);
  float3 _2607 = (((((_594.xyz * _55_m25.xyz) * _55_m7) * ((_55_m64 > 0.5f) ? lerp(1.0f, lerp(_55_m66, _55_m67, (sin(_55_m65 * _20_m77.w) * 0.5f) + 0.5f), _594.w) : 1.0f)) + (_55_m70.xyz * clamp((_55_m75 - _1329) * _55_m73, 0.0f, 1.0f))) + (lerp(lerp((((_1567 * clamp((_1596 + _1567.w) * _55_m57.w, 0.0f, 1.0f)) * _55_m57) + _1593).xyz, (_55_m58.xyz * _1611) * _55_m46, _1611.xxx).xyz, _55_m58.xyz, (_55_m58.w * _1646).xxx).xyz * (clamp(_1613, 0.0f, 1.0f) * ((1.0f - _55_m41) + (_1646 * _55_m41)))).xyz) * _2436;
  float3 _2608 = lerp(_2439.xxx, _2438, ((_2442 * _2442) + 1.0f).xxx) + (((((_20_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m91.w), lerp(0.89999997615814208984375f, 0.5f, _20_m91.w), _2486)) * _20_m90.w) * min(min(clamp(dot(_544, _2478) + 1.0f, 0.0f, 1.0f), _527), 1.0f)) * (lerp(0.25f.xxx, _1703, _20_m91.z.xxx) * clamp(dot(_2478, _1269), 0.0f, 1.0f))) + ((((((lerp(_1167 * (1.0f / max(max(max(_1167.x, _1167.y), _1167.z) * 0.5f, 1.0f)), _1769, _2359) * clamp(lerp(dot(_1166.xyz, _1269) * _1166.w, ((-_2508) * ((_2508 * 0.5f) - 1.0f)) + 0.5f, _2275), 0.0f, 1.0f)) * ((_2520 + (_2301 * _2275)) * _2305)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2486)) * min(_527, 1.0f)) * (_2520 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2288) * _2275))) * max(0.1500000059604644775390625f.xxx, _1703)));
  float2 _2612 = floor(_1666 * 0.03125f);
  int _2620 = int((_2612.x + (_2612.y * _38_m9)) * 8.0f);
  float _2627 = floor(_461 - (_20_m3.y * _38_m15));
  float _2631 = clamp(_2627, 0.0f, _38_m11 - 1.0f);
  int _2633 = int(_2631 * 8.0f);
  float3 _2635;
  _2635 = (_2608 + _2607) + (((_62.SampleLevel(_26, _2586, (1.2000000476837158203125f * log2(max(_1272, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2568 + ((_1706 * ((1.0f - _2569) / _2569)) * _2568)) * 1.0f)) * ((clamp(_1169, 0.5f, 1.5f) * _20_m82.w) * _2385)) * _1168);
  float3 _2636;
  [loop] for (int _2638 = 0; _2638 <= 7; _2635 = _2636, _2638++) {
    uint _2659 = (_2627 <= _2631) ? (_32.Load(uint((_38_m2 + _2620) + _2638) * 4 + 0) & _32.Load(uint((_38_m3 + _2633) + _2638) * 4 + 0)) : 0u;
    uint _2660 = uint(_2638);
    _2636 = _2635;
    uint _2665;
    float3 _2662;
    [loop] for (uint _2664 = _2659; _2664 != 0u; _2636 = _2662, _2664 = _2665) {
      uint _2669 = firstbitlow(_2664);
      _2665 = _2664 ^ (1u << (_2669 & 31u));
      int _2675 = int((32u * _2660) + _2669) * 8;
      int _2678 = _2675 + 1;
      int _2681 = _2675 + 2;
      int _2684 = _2675 + 3;
      int _2687 = _2675 + 4;
      int _2690 = _2675 + 5;
      int _2693 = _2675 + 6;
      int _2696 = _2675 + 7;
      uint _2700 = uint(_36_m6[_2690].w);
      float _2775;
      if ((_2700 & 1u) == 1u) {
        uint _2706 = asuint(_36_m6[_2690].x);
        uint _2713 = asuint(_36_m6[_2690].y);
        uint _2720 = asuint(_36_m6[_2690].z);
        uint _2727 = asuint(_36_m6[_2693].x);
        uint _2734 = asuint(_36_m6[_2693].y);
        uint _2741 = asuint(_36_m6[_2693].z);
        float3 _2760 = abs(mul(float4(_537 - _36_m6[_2678].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2706).x, spvUnpackHalf2x16(_2720).x, spvUnpackHalf2x16(_2734).x, 0.0f), float4(spvUnpackHalf2x16(_2706 >> 16u).x, spvUnpackHalf2x16(_2720 >> 16u).x, spvUnpackHalf2x16(_2734 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2713).x, spvUnpackHalf2x16(_2727).x, spvUnpackHalf2x16(_2741).x, 0.0f), float4(spvUnpackHalf2x16(_2713 >> 16u).x, spvUnpackHalf2x16(_2727 >> 16u).x, spvUnpackHalf2x16(_2741 >> 16u).x, 0.0f))).xyz);
        float _2767 = _36_m6[_2696].x * 0.5f;
        float _2773 = 1.0f - clamp((max(max(_2760.x, _2760.y), _2760.z) - (_2767 + 0.5f)) / (0.5f - _2767), 0.0f, 1.0f);
        _2775 = _2773 * _2773;
      } else {
        _2775 = 1.0f;
      }
      if (false || (_2775 < 0.001000000047497451305389404296875f)) {
        _2662 = _2636;
        continue;
      }
      float3 _3571;
      do {
        uint _2783 = uint(_36_m6[_2675].w);
        [branch] if (_2783 >= 4u) {
          _3571 = _2636;
          break;
        }
        float3 _3570;
        if (_36_m6[_2675].w < 1.5f) {
          float3 _3569;
          do {
            uint _2794 = asuint(_36_m6[_2684].w);
            if ((_2794 == 16u) || ((_36_m6[_2684].z + _20_m94.z) < 0.5f)) {
              _3569 = _2636;
              break;
            }
            bool _2805 = (_2783 & 1u) == 0u;
            bool _2809 = (!_2805) && (_36_m6[_2681].z > 0.0f);
            bool _2810 = _2794 == 4u;
            float _2811 = float(_2805);
            float _2819 = (0.5f + (0.5f * _36_m6[_2681].y)) - abs(_36_m6[_2681].x);
            float _2820 = _36_m6[_2681].y - _2819;
            float _2827 = abs(max((1.0f - abs(_2819)) - abs(_2820), 0.00048828125f));
            float3 _2831 = normalize(float3(_2819, _2820, (_36_m6[_2681].x >= 0.0f) ? _2827 : (-_2827)));
            float _2837 = lerp(_36_m6[_2693].w, max(2.0f * _36_m6[_2687].y, 0.100000001490116119384765625f), float(_2810));
            float3 _2842 = _36_m6[_2678].xyz - _537;
            float3 _2843 = -_2831;
            float3 _2848 = lerp(_2842, _2843 * dot(_2842, _2843), (float(_2810 && (_36_m6[_2687].z > 0.5f)) * _2811).xxx);
            float _2849 = dot(_2848, _2848);
            float _2850 = rsqrt(_2849);
            float3 _2851 = _2848 * _2850;
            float3 _2884;
            float _2885;
            if (_2809) {
              float3 _2855 = (_2831 * _36_m6[_2681].z) * 0.5f;
              float3 _2856 = _2848 - _2855;
              float3 _2857 = _2848 + _2855;
              float _2858 = length(_2856);
              float _2859 = length(_2857);
              float3 _2868 = normalize(cross(cross(_2831, _2851), _2831));
              _2884 = _2868;
              _2885 = ((1.0f / ((((_2858 * _2859) + dot(_2856, _2857)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2868, _2856) / _2858) + (dot(_2868, _2857) / _2859)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2681].z * _2850, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2884 = _2851;
              _2885 = 1.0f;
            }
            float _2907;
            if (_2837 < 0.0f) {
              float _2901 = _2849 * (_36_m6[_2678].w * _36_m6[_2678].w);
              float _2904 = clamp(1.0f - (_2901 * _2901), 0.0f, 1.0f);
              _2907 = lerp(1.0f / (_2849 + 1.0f), _2885, float(_2809)) * (_2904 * _2904);
            } else {
              float3 _2890 = _2848 * _36_m6[_2678].w;
              _2907 = _2885 * pow(1.0f - clamp(dot(_2890, _2890), 0.0f, 1.0f), _2837);
            }
            float _2912 = clamp((dot(_2884, _2843) - _36_m6[_2681].z) * _36_m6[_2681].w, 0.0f, 1.0f);
            float _2915 = _2907 * lerp(1.0f, _2912 * _2912, _2811);
            int _2917 = int(_36_m6[_2696].w);
            float _3022;
            if ((!_2809) && (_2917 >= 0)) {
              uint _2923 = uint(_2917);
              float2 _3015;
              [branch] if (_2811 != 0.0f) {
                float4 _3005 = mul(_69_m1[_2923], float4(_537, 1.0f));
                _3015 = _69_m0[_2923].xy + (clamp(_3005.xy / _3005.w.xx, 0.0f.xx, 1.0f.xx) * _69_m0[_2923].zw);
              }
              else {
                float3 _2938 = mul(float4(-_2848, 0.0f), _69_m1[_2923]).xyz;
                float3 _450 = _2938;
                float3 _449 = _2938;
                float3 _448 = abs(_2938);
                uint _2947 = uint(int(_448.y > _448.x));
                uint _2953 = (_448.z > _448[_2947]) ? 2u : _2947;
                uint _2959 = (_2953 * 2u) + uint(_449[_2953] < 0.0f);
                float _2963 = abs(_450[_2959 / 2u]);
                float _2983 = 0.5f - (0.000244140625f / _69_m0[_2923].w);
                _3015 = _69_m0[_2923].xy + (clamp(float2((float(_2959) + ((((_450[uint(_396[_2959].x)] * _397[_2959].x) / _2963) * _2983) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_450[uint(_396[_2959].y)] * _397[_2959].y) / _2963) * _2983)), 0.0f.xx, 1.0f.xx) * _69_m0[_2923].zw);
              }
              _3022 = _2915 * _67.SampleLevel(_26, _3015, 0.0f).x;
            } else {
              _3022 = _2915;
            }
            float _3023 = _3022 * _2775;
            float3 _3568;
            do {
              float3 _3567;
              [branch] if (_3023 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2810) {
                  _3568 = lerp(_2636, _36_m6[_2675].xyz, (_3023 * (_36_m6[_2687].x * ((1.0f - _36_m6[_2687].w) + (smoothstep(-0.5f, 0.5f, dot(_632, _2884)) * _36_m6[_2687].w)))).xxx);
                  break;
                }
                float _3043 = dot(_1269, _2884);
                float _3044 = clamp(_3043, 0.0f, 1.0f);
                float _3443;
                if (_2794 != 0u) {
                  bool _3050 = _2805 || ((_2700 & 2u) != 0u);
                  int _3100;
                  if (_3050) {
                    _3100 = int(_36_m6[_2684].x);
                  } else {
                    uint _3055 = asuint(_36_m6[_2681].w);
                    uint _3056 = asuint(_36_m6[_2684].x);
                    float3 _3057 = _537 - _36_m6[_2678].xyz;
                    float3 _3058 = abs(_3057);
                    float _3059 = _3058.x;
                    float _3060 = _3058.y;
                    float _3062 = _3058.z;
                    int _3095;
                    if ((_3059 > _3060) && (_3059 > _3062)) {
                      _3095 = int((_3057.x > 0.0f) ? (_3055 & 1023u) : ((_3055 >> 10u) & 1023u));
                    } else {
                      int _3087;
                      if (_3060 > _3062) {
                        _3087 = int((_3057.y > 0.0f) ? ((_3055 >> 20u) & 1023u) : (_3056 & 1023u));
                      } else {
                        _3087 = int((_3057.z > 0.0f) ? ((_3056 >> 10u) & 1023u) : ((_3056 >> 20u) & 1023u));
                      }
                      _3095 = _3087;
                    }
                    _3100 = (_3095 == 1023) ? (-1) : _3095;
                  }
                  bool _3101 = _3100 >= 0;
                  float _3442;
                  if (_3101) {
                    float3 _3108 = _537 - _36_m6[_2678].xyz;
                    uint _3118 = asuint(_40_m11.x) + (uint(_3100) * 96u);
                    uint _3120 = (_3118 + 64u) >> 2u;
                    uint _3123 = _3120 + 1u;
                    uint _3126 = _3120 + 2u;
                    uint _3129 = _3120 + 3u;
                    float4 _3133 = asfloat(uint4(_44.Load(_3120 * 4 + 0), _44.Load(_3123 * 4 + 0), _44.Load(_3126 * 4 + 0), _44.Load(_3129 * 4 + 0)));
                    uint _3141 = _3118 >> 2u;
                    uint _3156 = (_3118 + 16u) >> 2u;
                    uint _3171 = (_3118 + 32u) >> 2u;
                    uint _3186 = (_3118 + 48u) >> 2u;
                    float4 _3206 = mul(transpose(float4x4(asfloat(uint4(_44.Load(_3141 * 4 + 0), _44.Load((_3141 + 1u) * 4 + 0), _44.Load((_3141 + 2u) * 4 + 0), _44.Load((_3141 + 3u) * 4 + 0))), asfloat(uint4(_44.Load(_3156 * 4 + 0), _44.Load((_3156 + 1u) * 4 + 0), _44.Load((_3156 + 2u) * 4 + 0), _44.Load((_3156 + 3u) * 4 + 0))), asfloat(uint4(_44.Load(_3171 * 4 + 0), _44.Load((_3171 + 1u) * 4 + 0), _44.Load((_3171 + 2u) * 4 + 0), _44.Load((_3171 + 3u) * 4 + 0))), asfloat(uint4(_44.Load(_3186 * 4 + 0), _44.Load((_3186 + 1u) * 4 + 0), _44.Load((_3186 + 2u) * 4 + 0), _44.Load((_3186 + 3u) * 4 + 0))))), float4((_537 - ((_3108 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3108, _3108)))) * _3133.x)) + (_632 * (_3133.y * 5.0f)), 1.0f));
                    float3 _3210 = _3206.xyz / _3206.w.xxx;
                    uint _3212 = (_3118 + 80u) >> 2u;
                    float4 _3225 = asfloat(uint4(_44.Load(_3212 * 4 + 0), _44.Load((_3212 + 1u) * 4 + 0), _44.Load((_3212 + 2u) * 4 + 0), _44.Load((_3212 + 3u) * 4 + 0)));
                    float2 _3226 = _3210.xy;
                    float2 _3228 = _3225.xy;
                    float3 _3232 = _3210.xyz;
                    bool3 _3233 = bool3(_3232.x <= 0.0f.xxx.x, _3232.y <= 0.0f.xxx.y, _3232.z <= 0.0f.xxx.z);
                    bool3 _3234 = bool3(_3232.x >= 1.0f.xxx.x, _3232.y >= 1.0f.xxx.y, _3232.z >= 1.0f.xxx.z);
                    float _3237 = _3210.z;
                    float2 _3248 = ((_3226 * (_3225.zw - _3228)) + _3228).xy * _40_m10.zw;
                    float2 _3250 = floor(_3248 + 0.5f.xx);
                    float2 _3251 = _3248 - _3250;
                    float _3252 = _3251.x;
                    float _3253 = _3252 + 0.5f;
                    float _3254 = _3253 * _3253;
                    float _3257 = 1.0f - _3252;
                    float _3258 = min(_3252, 0.0f);
                    float _3261 = _3252 + 1.0f;
                    float _3262 = max(_3252, 0.0f);
                    float _3273 = _3251.y;
                    float _3274 = _3273 + 0.5f;
                    float _3275 = _3274 * _3274;
                    float _3278 = 1.0f - _3273;
                    float _3279 = min(_3273, 0.0f);
                    float _3282 = _3273 + 1.0f;
                    float _3283 = max(_3273, 0.0f);
                    float3 _3295 = float3(0.1599999964237213134765625f * _3257, 0.1599999964237213134765625f * ((_3261 - (_3262 * _3262)) + 1.0f), _3254 * 0.07999999821186065673828125f);
                    float3 _3296 = float3(0.1599999964237213134765625f * ((_3254 * 0.5f) - _3252), 0.1599999964237213134765625f * ((_3257 - (_3258 * _3258)) + 1.0f), 0.1599999964237213134765625f * _3261) + _3295;
                    float3 _3298 = float3(0.1599999964237213134765625f * _3278, 0.1599999964237213134765625f * ((_3282 - (_3283 * _3283)) + 1.0f), _3275 * 0.07999999821186065673828125f);
                    float3 _3299 = float3(0.1599999964237213134765625f * ((_3275 * 0.5f) - _3273), 0.1599999964237213134765625f * ((_3278 - (_3279 * _3279)) + 1.0f), 0.1599999964237213134765625f * _3282) + _3298;
                    float3 _3305 = ((_3295 / _3296) + float3(-2.5f, -0.5f, 1.5f)) * _40_m10.xxx;
                    float3 _3307 = ((_3298 / _3299) + float3(-2.5f, -0.5f, 1.5f)) * _40_m10.yyy;
                    float2 _3309 = _3250 * _40_m10.xy;
                    float _3310 = _3305.x;
                    float _3311 = _3307.x;
                    float _3314 = _3305.y;
                    float _3317 = _3305.z;
                    float _3320 = _3307.y;
                    float _3327 = _3307.z;
                    float _3334 = _3296.x;
                    float _3335 = _3299.x;
                    float _3337 = _3296.y;
                    float _3339 = _3296.z;
                    float _3341 = _3299.y;
                    float _3345 = _3299.z;
                    float _3403 = (((((((_3334 * _3335) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3310, _3311), _442).xy, _3237)) + ((_3337 * _3335) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3314, _3311), _442).xy, _3237))) + ((_3339 * _3335) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3317, _3311), _442).xy, _3237))) + ((_3334 * _3341) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3310, _3320), _442).xy, _3237))) + ((_3337 * _3341) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3314, _3320), _442).xy, _3237))) + ((_3339 * _3341) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3317, _3320), _442).xy, _3237))) + ((_3334 * _3345) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3310, _3327), _442).xy, _3237));
                    float4 _3426 = asfloat(uint4(_44.Load(_3120 * 4 + 0), _44.Load(_3123 * 4 + 0), _44.Load(_3126 * 4 + 0), _44.Load(_3129 * 4 + 0)));
                    float _3427 = _3426.w;
                    float2 _3429 = min(_3226, 1.0f.xx - _3226);
                    _3442 = _3101 ? lerp(1.0f, (any(bool3(_3233.x || _3234.x, _3233.y || _3234.y, _3233.z || _3234.z)) || ((asuint(_3237) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3403 + ((_3337 * _3345) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3314, _3327), _442).xy, _3237))) + ((_3339 * _3345) * _42.SampleCmpLevelZero(_28, float3(_3309 + float2(_3317, _3327), _442).xy, _3237))), _3050 ? min(_3427, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3426.z - _3206.w) * 0.25f, min(_3429.x, _3429.y)))) : _3427) : 1.0f;
                  } else {
                    _3442 = clamp(dot(_544, _2884) + 1.0f, 0.0f, 1.0f);
                  }
                  _3443 = _3442;
                } else {
                  _3443 = 1.0f;
                }
                float _3523;
                float3 _3524;
                float _3525;
                float3 _3526;
                float3 _3527;
                float _3528;
                float _3529;
                [branch] if (_2794 == 0u) {
                  float3 _3503 = _36_m6[_2675].xyz * _3023;
                  float3 _3516 = _2380.xyz;
                  _3523 = _3023;
                  _3524 = (_36_m6[_2675].xyz * ((1.0f - _36_m6[_2687].y) + ((1.0f / max(1.0f, max(max(_3503.x, _3503.y), _3503.z) * lerp(0.75f, 0.5f, _2520))) * _36_m6[_2687].y))) * lerp(0.25f * _36_m6[_2687].x, 1.0f, clamp(_3043 + 0.5f, 0.0f, 1.0f));
                  _3525 = _3044;
                  _3526 = _3516;
                  _3527 = _3516;
                  _3528 = 1.0f;
                  _3529 = 0.0f;
                }
                else {
                  float _3496;
                  float _3497;
                  float3 _3498;
                  float3 _3499;
                  float _3500;
                  float _3501;
                  if (_2794 == 3u) {
                    _3496 = _3023 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _36_m6[_2687].x), lerp(0.89999997615814208984375f, 0.5f, _36_m6[_2687].x), _2486) * _3443);
                    _3497 = clamp(dot(_1269, -normalize(cross(_648, cross(_648, _2884)))), 0.0f, 1.0f);
                    _3498 = lerp(0.5f.xxx, _1703, _36_m6[_2687].y.xxx);
                    _3499 = 0.0f.xxx;
                    _3500 = 1.0f;
                    _3501 = 0.0f;
                  } else {
                    bool _3452 = _2794 == 1u;
                    float _3476;
                    float3 _3477;
                    float _3478;
                    float _3479;
                    if (_3452) {
                      _3476 = clamp(clamp(_3043 + _36_m6[_2687].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3443;
                      _3477 = _1707 * _36_m6[_2687].y;
                      _3478 = 1.0f;
                      _3479 = 0.0f;
                    } else {
                      bool _3456 = _2794 == 2u;
                      float _3468;
                      if (_3456) {
                        _3468 = smoothstep(_36_m6[_2687].x + 0.0500000007450580596923828125f, _36_m6[_2687].x - 0.0500000007450580596923828125f, _1272) * ((1.0f - _36_m6[_2687].z) + (step(0.5f, _1270) * _36_m6[_2687].z));
                      } else {
                        _3468 = 1.0f;
                      }
                      _3476 = _3044;
                      _3477 = 0.0f.xxx;
                      _3478 = _3468;
                      _3479 = _3456 ? _36_m6[_2687].y : 0.0f;
                    }
                    bool3 _3480 = _3452.xxx;
                    _3496 = _3023;
                    _3497 = _3476;
                    _3498 = float3(_3480.x ? _1703.x : 0.0f.xxx.x, _3480.y ? _1703.y : 0.0f.xxx.y, _3480.z ? _1703.z : 0.0f.xxx.z);
                    _3499 = _3477;
                    _3500 = _3478;
                    _3501 = _3479;
                  }
                  _3523 = _3496;
                  _3524 = _36_m6[_2675].xyz;
                  _3525 = _3497;
                  _3526 = _3498;
                  _3527 = _3499;
                  _3528 = _3500;
                  _3529 = _3501;
                }
                float3 _3557;
                [branch] if (_2794 != 3u) {
                  float _3534 = lerp(_1709, 0.00999999977648258209228515625f, _3529);
                  float _3537 = dot(_631, normalize(_2884 + _480));
                  float _3538 = _3534 * _3534;
                  float _3542 = (((_3537 * _3538) - _3537) * _3537) + 1.0f;
                  float _3543 = _3542 * _3542;
                  _3557 = ((_1706 * clamp((((_3538 != _3543) ? (_3538 / _3543) : 1.0f) * (0.5f / ((_2417 + (_3534 * _2419)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3528) * _36_m6[_2696].z;
                }
                else {
                  _3557 = 0.0f.xxx;
                }
                float3 _3560 = _3524 * _3523;
                _3567 = _2636 + (((_3560 * lerp(_3527, _3526, _3525.xxx)) * _2436) + ((_3560 * _3557) * _3525));
              }
              else {
                _3567 = _2636;
              }
              _3568 = _3567;
              break;
            } while (false);
            _3569 = _3568;
            break;
          } while (false);
          _3570 = _3569;
        } else {
          _3570 = _2636;
        }
        _3571 = _3570;
        break;
      } while (false);
      _2662 = _3571;
    }
  }
  float3 _3611;
  [branch] if (_55_m12 > 0.5f) {
    _3611 = lerp(lerp(0.5f.xxx, lerp(dot(_2635, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2635, _55_m14.xxx), _55_m15.xxx) * _55_m13, _55_m26.xyz, _55_m26.w.xxx) + ((_55_m27.xyz * smoothstep(1.0f - _55_m16, 1.0f, 1.0f - clamp(_2484, 0.0f, 1.0f))) * _55_m17);
  }
  else {
    _3611 = _2635;
  }
  float4 _3618 = float4(_3611 * _20_m20.y, _1700);
  _3618.w = (_55_m8 == 1.0f) ? _1700 : 1.0f;
  float4 _4007;
  [branch] if (_20_m94.w < 0.5f) {
    float _3643 = _537.y * _20_m46.w;
    float _3648 = max(0.00999999977648258209228515625f, _3643 + _20_m47.w);
    float3 _3662 = exp(_20_m45.xyz * ((-max(0.0f, (_481 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3648)) / _3648) * exp(_3643 + _20_m48.w))));
    float _3665 = dot(_2575, _20_m44.xyz);
    float _3671 = _20_m45.w * _20_m45.w;
    float _3675 = (1.0f + _3671) - ((2.0f * _20_m45.w) * _3665);
    float3 _3999;
    float _4000;
    if (_20_m55.z > 0.0f) {
      uint3 _3830 = (uint3(int3(int(_638.x), int(_638.y), int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3831 = _3830.y;
      uint _3832 = _3830.z;
      uint _3835 = _3830.x + (_3831 * _3832);
      uint _3837 = _3831 + (_3832 * _3835);
      uint _3839 = _3832 + (_3835 * _3837);
      uint _3841 = _3835 + (_3837 * _3839);
      float _3863 = dot(_2575, -_18_m0[2].xyz);
      float3 _3870 = _537 - _18_m11.xyz;
      float _3872 = (_20_m55.w * ((_3863 > 5.9604644775390625e-08f) ? (1.0f / _3863) : 0.0f)) * (1.0f / _481);
      float _3873 = _3870.y;
      float _3874 = _3872 * _3873;
      float _3876 = _18_m11.y + _3874;
      float _3877 = _3873 - _3874;
      float _3879 = (1.0f - _3872) * _481;
      float _3893 = max(-127.0f, _20_m49.z * _3877);
      float _3917 = max(-127.0f, _20_m52.x * _3877);
      float _3928 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3876 - _20_m49.x)))) * ((abs(_3893) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3893)) / _3893) : (0.693147182464599609375f - (0.2402265071868896484375f * _3893)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3876 - _20_m52.z)))) * ((abs(_3917) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3917)) / _3917) : (0.693147182464599609375f - (0.2402265071868896484375f * _3917))));
      float _3950 = clamp((_481 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3953 = clamp((max(clamp(exp2(-(_3928 * _3879)), 0.0f, 1.0f), _20_m51.w) + clamp((_481 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3950, 0.0f, 1.0f);
      float4 _3993 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _72.SampleLevel(_26, float3((_1666 + ((((float3(uint3(_3841, _3837 + (_3839 * _3841), _446) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_461 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_461 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3999 = _3993.xyz + (((_20_m51.xyz * (1.0f - _3953)) + (((_20_m54.xyz * pow(clamp(dot(_480, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3928 * max(_3879 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3950))) * _3993.w);
      _4000 = _3993.w * _3953;
    } else {
      float3 _3702 = _537 - _18_m11.xyz;
      float _3704 = _3702.y;
      float _3718 = max(-127.0f, _20_m49.z * _3704);
      float _3742 = max(-127.0f, _20_m52.x * _3704);
      float _3753 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3718) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3718)) / _3718) : (0.693147182464599609375f - (0.2402265071868896484375f * _3718)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3742) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3742)) / _3742) : (0.693147182464599609375f - (0.2402265071868896484375f * _3742))));
      float _3775 = clamp((_481 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3778 = clamp((max(clamp(exp2(-(_3753 * _481)), 0.0f, 1.0f), _20_m51.w) + clamp((_481 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3775, 0.0f, 1.0f);
      _3999 = (_20_m51.xyz * (1.0f - _3778)) + (((_20_m54.xyz * pow(clamp(dot(_480, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3753 * max(_481 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3775));
      _4000 = _3778;
    }
    float3 _4005 = (_3618.xyz * (_3662 * _4000)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3665 * _3665)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3671) / max((12.56637096405029296875f * _3675) * sqrt(_3675), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3662)) * _4000) + _3999);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _4005 = (_4005 * 0.65f) + (_3618.xyz * 0.35f);
    }
    // RenoDX code end
    _4007 = float4(_4005.x, _4005.y, _4005.z, _3618.w);
  }
  else {
    _4007 = _3618;
  }
  _15 = _4007;
  _16 = _1736;
}
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  gl_FragCoord = stage_input.gl_FragCoord;
  gl_FragCoord.w = 1.0 / gl_FragCoord.w;
  gl_FrontFacing = stage_input.gl_FrontFacing;
  _3 = stage_input._3;
  _4 = stage_input._4;
  _5 = stage_input._5;
  _6 = stage_input._6;
  _7 = stage_input._7;
  _8 = stage_input._8;
  _9 = stage_input._9;
  _10 = stage_input._10;
  _11 = stage_input._11;
  _13 = stage_input._13;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._15 = _15;
  stage_output._16 = _16;
  return stage_output;
}

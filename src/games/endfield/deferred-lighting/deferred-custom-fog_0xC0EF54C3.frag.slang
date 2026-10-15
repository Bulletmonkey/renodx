#include "./renodx_injection.hlsli"

// Ported from the native 0xC0EF54C3 Vulkan dump.
struct _21 {
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

static float _421;
static float3 _422;
static float _424;
static uint _425;

static const int2 _379[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _380[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(11, 0)]] cbuffer _16_17 : register(b11, space0) {
  column_major float4x4 _17_m0 : packoffset(c0);
  column_major float4x4 _17_m1 : packoffset(c4);
  column_major float4x4 _17_m2 : packoffset(c8);
  column_major float4x4 _17_m3 : packoffset(c12);
  column_major float4x4 _17_m4 : packoffset(c16);
  column_major float4x4 _17_m5 : packoffset(c20);
  column_major float4x4 _17_m6 : packoffset(c24);
  column_major float4x4 _17_m7 : packoffset(c28);
  column_major float4x4 _17_m8 : packoffset(c32);
  column_major float4x4 _17_m9 : packoffset(c36);
  column_major float4x4 _17_m10 : packoffset(c40);
  float4 _17_m11 : packoffset(c44);
  column_major float4x4 _17_m12 : packoffset(c45);
  column_major float4x4 _17_m13 : packoffset(c49);
  column_major float4x4 _17_m14 : packoffset(c53);
  column_major float4x4 _17_m15 : packoffset(c57);
  column_major float4x4 _17_m16 : packoffset(c61);
  column_major float4x4 _17_m17 : packoffset(c65);
  column_major float4x4 _17_m18 : packoffset(c69);
  column_major float4x4 _17_m19 : packoffset(c73);
  column_major float4x4 _17_m20 : packoffset(c77);
  float4 _17_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _18_19 : register(b15, space0) {
  float4 _19_m0 : packoffset(c0);
  float4 _19_m1 : packoffset(c1);
  float4 _19_m2 : packoffset(c2);
  float4 _19_m3 : packoffset(c3);
  float4 _19_m4 : packoffset(c4);
  float4 _19_m5 : packoffset(c5);
  float4 _19_m6[6] : packoffset(c6);
  float4 _19_m7[6] : packoffset(c12);
  float4 _19_m8 : packoffset(c18);
  float4 _19_m9 : packoffset(c19);
  float4 _19_m10 : packoffset(c20);
  float4 _19_m11 : packoffset(c21);
  float4 _19_m12 : packoffset(c22);
  float4 _19_m13 : packoffset(c23);
  float4 _19_m14 : packoffset(c24);
  float4 _19_m15 : packoffset(c25);
  float _19_m16 : packoffset(c26);
  float _19_m17 : packoffset(c26.y);
  float _19_m18 : packoffset(c26.z);
  uint _19_m19 : packoffset(c26.w);
  float4 _19_m20 : packoffset(c27);
  int4 _19_m21 : packoffset(c28);
  float4 _19_m22 : packoffset(c29);
  float4 _19_m23 : packoffset(c30);
  float4 _19_m24 : packoffset(c31);
  float4 _19_m25 : packoffset(c32);
  float4 _19_m26 : packoffset(c33);
  float4 _19_m27 : packoffset(c34);
  float4 _19_m28 : packoffset(c35);
  float4 _19_m29 : packoffset(c36);
  float4 _19_m30 : packoffset(c37);
  float4 _19_m31 : packoffset(c38);
  float4 _19_m32[4] : packoffset(c39);
  float4 _19_m33[4] : packoffset(c43);
  float4 _19_m34[4] : packoffset(c47);
  float4 _19_m35[4] : packoffset(c51);
  float4 _19_m36 : packoffset(c55);
  float4 _19_m37 : packoffset(c56);
  float4 _19_m38[4] : packoffset(c57);
  float4 _19_m39[4] : packoffset(c61);
  float4 _19_m40[4] : packoffset(c65);
  float4 _19_m41 : packoffset(c69);
  float4 _19_m42 : packoffset(c70);
  float4 _19_m43 : packoffset(c71);
  float4 _19_m44 : packoffset(c72);
  float4 _19_m45 : packoffset(c73);
  float4 _19_m46 : packoffset(c74);
  float4 _19_m47 : packoffset(c75);
  float4 _19_m48 : packoffset(c76);
  float4 _19_m49 : packoffset(c77);
  float4 _19_m50 : packoffset(c78);
  float4 _19_m51 : packoffset(c79);
  float4 _19_m52 : packoffset(c80);
  float4 _19_m53 : packoffset(c81);
  float4 _19_m54 : packoffset(c82);
  float4 _19_m55 : packoffset(c83);
  float4 _19_m56 : packoffset(c84);
  float4 _19_m57 : packoffset(c85);
  float4 _19_m58 : packoffset(c86);
  float4 _19_m59 : packoffset(c87);
  float4 _19_m60 : packoffset(c88);
  float4 _19_m61 : packoffset(c89);
  float4 _19_m62 : packoffset(c90);
  float4 _19_m63 : packoffset(c91);
  float4 _19_m64 : packoffset(c92);
  float4 _19_m65 : packoffset(c93);
  float4 _19_m66 : packoffset(c94);
  float4 _19_m67 : packoffset(c95);
  float4 _19_m68 : packoffset(c96);
  float4 _19_m69 : packoffset(c97);
  float4 _19_m70 : packoffset(c98);
  float4 _19_m71 : packoffset(c99);
  float4 _19_m72 : packoffset(c100);
  float4 _19_m73 : packoffset(c101);
  float4 _19_m74 : packoffset(c102);
  float4 _19_m75 : packoffset(c103);
  float4 _19_m76 : packoffset(c104);
  float4 _19_m77 : packoffset(c105);
  float4 _19_m78 : packoffset(c106);
  float4 _19_m79 : packoffset(c107);
  float4 _19_m80 : packoffset(c108);
  float4 _19_m81 : packoffset(c109);
  float4 _19_m82 : packoffset(c110);
  float4 _19_m83 : packoffset(c111);
  float4 _19_m84 : packoffset(c112);
  float4 _19_m85 : packoffset(c113);
  float4 _19_m86 : packoffset(c114);
  float4 _19_m87 : packoffset(c115);
  float4 _19_m88 : packoffset(c116);
  float4 _19_m89 : packoffset(c117);
  float4 _19_m90 : packoffset(c118);
  float4 _19_m91 : packoffset(c119);
  float4 _19_m92 : packoffset(c120);
  float4 _19_m93 : packoffset(c121);
  float4 _19_m94 : packoffset(c122);
  float4 _19_m95 : packoffset(c123);
  float4 _19_m96 : packoffset(c124);
  float4 _19_m97 : packoffset(c125);
  float4 _19_m98 : packoffset(c126);
  float4 _19_m99 : packoffset(c127);
  float4 _19_m100 : packoffset(c128);
  float4 _19_m101 : packoffset(c129);
  float4 _19_m102[2] : packoffset(c130);
  float4 _19_m103[2] : packoffset(c132);
  float _19_m104 : packoffset(c134);
  float _19_m105 : packoffset(c134.y);
  float _19_m106 : packoffset(c134.z);
  float _19_m107 : packoffset(c134.w);
  float4 _19_m108 : packoffset(c135);
  float4 _19_m109 : packoffset(c136);
  float4 _19_m110 : packoffset(c137);
  float4 _19_m111 : packoffset(c138);
  float4 _19_m112 : packoffset(c139);
  float4 _19_m113 : packoffset(c140);
  float4 _19_m114 : packoffset(c141);
  float4 _19_m115 : packoffset(c142);
  float4 _19_m116 : packoffset(c143);
  float4 _19_m117 : packoffset(c144);
  float4 _19_m118 : packoffset(c145);
  float4 _19_m119 : packoffset(c146);
  float4 _19_m120 : packoffset(c147);
  float4 _19_m121 : packoffset(c148);
  float4 _19_m122 : packoffset(c149);
  float4 _19_m123 : packoffset(c150);
  float4 _19_m124 : packoffset(c151);
  float4 _19_m125 : packoffset(c152);
  float4 _19_m126 : packoffset(c153);
  float4 _19_m127 : packoffset(c154);
  float4 _19_m128 : packoffset(c155);
  float4 _19_m129 : packoffset(c156);
  float4 _19_m130 : packoffset(c157);
  float4 _19_m131 : packoffset(c158);
  float4 _19_m132 : packoffset(c159);
  float4 _19_m133 : packoffset(c160);
  float4 _19_m134 : packoffset(c161);
  float4 _19_m135 : packoffset(c162);
  float4 _19_m136 : packoffset(c163);
  float4 _19_m137 : packoffset(c164);
  column_major float4x4 _19_m138 : packoffset(c165);
  float4 _19_m139 : packoffset(c169);
  float4 _19_m140 : packoffset(c170);
  float4 _19_m141 : packoffset(c171);
  float4 _19_m142 : packoffset(c172);
  int4 _19_m143 : packoffset(c173);
  int4 _19_m144 : packoffset(c174);
  int4 _19_m145 : packoffset(c175);
  float4 _19_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _20_22 : register(b0, space2) {
  _21 _22_m0[256] : packoffset(c0);
};

[[vk::binding(54, 0)]] ByteAddressBuffer _29 : register(t54, space0);
[[vk::binding(17, 0)]] StructuredBuffer<float4> _31 : register(t17, space0);
[[vk::binding(13, 0)]] cbuffer _32_33 : register(b13, space0) {
  float4 _33_m0 : packoffset(c0);
  float4 _33_m1 : packoffset(c1);
  float4 _33_m2 : packoffset(c2);
  float4 _33_m3 : packoffset(c3);
  float4 _33_m4 : packoffset(c4);
  uint4 _33_m5 : packoffset(c5);
  float4 _33_m6[2048] : packoffset(c6);
};

[[vk::binding(50, 0)]] cbuffer _34_35 : register(b50, space0) {
  int _35_m0 : packoffset(c0);
  int _35_m1 : packoffset(c0.y);
  int _35_m2 : packoffset(c0.z);
  int _35_m3 : packoffset(c0.w);
  int _35_m4 : packoffset(c1);
  int _35_m5 : packoffset(c1.y);
  int _35_m6 : packoffset(c1.z);
  int _35_m7 : packoffset(c1.w);
  float _35_m8 : packoffset(c2);
  float _35_m9 : packoffset(c2.y);
  float _35_m10 : packoffset(c2.z);
  float _35_m11 : packoffset(c2.w);
  float _35_m12 : packoffset(c3);
  float _35_m13 : packoffset(c3.y);
  float _35_m14 : packoffset(c3.z);
  float _35_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _36_37 : register(b14, space0) {
  column_major float4x4 _37_m0[5] : packoffset(c0);
  float4 _37_m1[4] : packoffset(c20);
  float4 _37_m2[4] : packoffset(c24);
  float4 _37_m3[4] : packoffset(c28);
  float4 _37_m4 : packoffset(c32);
  float4 _37_m5 : packoffset(c33);
  float4 _37_m6 : packoffset(c34);
  float4 _37_m7 : packoffset(c35);
  float4 _37_m8 : packoffset(c36);
  float4 _37_m9[27] : packoffset(c37);
  float4 _37_m10 : packoffset(c64);
  float4 _37_m11 : packoffset(c65);
  float4 _37_m12[62] : packoffset(c66);
  column_major float4x4 _37_m13[15] : packoffset(c128);
  float4 _37_m14[15] : packoffset(c188);
  float4 _37_m15[15] : packoffset(c203);
  float4 _37_m16[15] : packoffset(c218);
  float4 _37_m17 : packoffset(c233);
  float4 _37_m18 : packoffset(c234);
  float4 _37_m19[21] : packoffset(c235);
  column_major float4x4 _37_m20 : packoffset(c256);
  column_major float4x4 _37_m21 : packoffset(c260);
  float4 _37_m22 : packoffset(c264);
  float4 _37_m23 : packoffset(c265);
  float4 _37_m24 : packoffset(c266);
  float4 _37_m25[128] : packoffset(c267);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _40 : register(t53, space0);
[[vk::binding(0, 1)]] cbuffer _49_50 : register(b0, space1) {
  float _50_m0 : packoffset(c0);
  float _50_m1 : packoffset(c0.y);
  float _50_m2 : packoffset(c0.z);
  float _50_m3 : packoffset(c0.w);
  float _50_m4 : packoffset(c1);
  float _50_m5 : packoffset(c1.y);
  float _50_m6 : packoffset(c1.z);
  float _50_m7 : packoffset(c1.w);
  float _50_m8 : packoffset(c2);
  float _50_m9 : packoffset(c2.y);
  float _50_m10 : packoffset(c2.z);
  float _50_m11 : packoffset(c2.w);
  float _50_m12 : packoffset(c3);
  float _50_m13 : packoffset(c3.y);
  float _50_m14 : packoffset(c3.z);
  float _50_m15 : packoffset(c3.w);
  float _50_m16 : packoffset(c4);
  float _50_m17 : packoffset(c4.y);
  float _50_m18 : packoffset(c4.z);
  float _50_m19 : packoffset(c4.w);
  float _50_m20 : packoffset(c5);
  float _50_m21 : packoffset(c5.y);
  float _50_m22 : packoffset(c5.z);
  float _50_m23 : packoffset(c5.w);
  float4 _50_m24 : packoffset(c6);
  float4 _50_m25 : packoffset(c7);
  float4 _50_m26 : packoffset(c8);
  float4 _50_m27 : packoffset(c9);
  float4 _50_m28 : packoffset(c10);
  float4 _50_m29 : packoffset(c11);
  float _50_m30 : packoffset(c12);
  float _50_m31 : packoffset(c12.y);
  float _50_m32 : packoffset(c12.z);
  float _50_m33 : packoffset(c12.w);
  float _50_m34 : packoffset(c13);
  float _50_m35 : packoffset(c13.y);
  float _50_m36 : packoffset(c13.z);
  float _50_m37 : packoffset(c13.w);
  float4 _50_m38 : packoffset(c14);
  float _50_m39 : packoffset(c15);
  float _50_m40 : packoffset(c15.y);
  float _50_m41 : packoffset(c15.z);
  float _50_m42 : packoffset(c15.w);
  float4 _50_m43 : packoffset(c16);
  float4 _50_m44 : packoffset(c17);
  float4 _50_m45 : packoffset(c18);
  float4 _50_m46 : packoffset(c19);
  float4 _50_m47 : packoffset(c20);
  float4 _50_m48 : packoffset(c21);
  float _50_m49 : packoffset(c22);
  float _50_m50 : packoffset(c22.y);
  float _50_m51 : packoffset(c22.z);
  float _50_m52 : packoffset(c22.w);
  float _50_m53 : packoffset(c23);
  float _50_m54 : packoffset(c23.y);
  float _50_m55 : packoffset(c23.z);
  float _50_m56 : packoffset(c23.w);
};

[[vk::binding(52, 0)]] cbuffer _63_64 : register(b52, space0) {
  float4 _64_m0[32] : packoffset(c0);
  column_major float4x4 _64_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _24 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _38 : register(t27, space0);
[[vk::binding(22, 0)]] Texture2D<float4> _41 : register(t22, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _43 : register(t37, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _44 : register(t34, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _45 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _46 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _47 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _48 : register(t32, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _51 : register(t4, space1);
[[vk::binding(1, 1)]] Texture2D<float4> _52 : register(t1, space1);
[[vk::binding(46, 0)]] Texture2D<float4> _53 : register(t46, space0);
[[vk::binding(43, 0)]] Texture2D<float4> _54 : register(t43, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _55 : register(t41, space0);
[[vk::binding(6, 1)]] Texture2D<float4> _56 : register(t6, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _57 : register(t2, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _58 : register(t5, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _59 : register(t3, space1);
[[vk::binding(47, 0)]] TextureCube<float4> _61 : register(t47, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _62 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _67 : register(t38, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static float3 _10;
static uint _12;
static float4 _14;
static float4 _15;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
  [[vk::location(1)]] float3 _4 : TEXCOORD1;
  [[vk::location(2)]] float3 _5 : TEXCOORD2;
  [[vk::location(3)]] float4 _6 : TEXCOORD3;
  [[vk::location(4)]] float3 _7 : TEXCOORD4;
  [[vk::location(5)]] float3 _8 : TEXCOORD5;
  [[vk::location(6)]] float3 _9 : TEXCOORD6;
  [[vk::location(7)]] float3 _10 : TEXCOORD7;
  [[vk::location(8)]] nointerpolation uint _12 : TEXCOORD8;
  float4 gl_FragCoord : SV_Position;
  bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _14 : SV_Target0;
  [[vk::location(1)]] float4 _15 : SV_Target1;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

uint4 _31_Load4(uint byte_offset) { return asuint(_31[byte_offset >> 4u]); }
void frag_main() {
  float _440 = 1.0f / gl_FragCoord.w;
  float3 _455 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
  float _456 = dot(_455, _455);
  float _458 = rsqrt(max(_456, 9.9999999392252902907785028219223e-09f));
  float3 _459 = _455 * _458;
  float _460 = _456 * _458;
  uint _463 = asuint(_22_m0[_12]._m2.x);
  bool _468 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
  float4 _481;
  float4 _482;
  if (_468) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0xC0EF54C3:
    _481 = asfloat(_31_Load4((_463 + 2u) * 16 + 0));
    _482 = asfloat(_31_Load4(_463 * 16 + 0));
    */
    _481 = asfloat(_31_Load4((_463 + 2u) * 16 + 0));
    _482 = asfloat(_31_Load4(_463 * 16 + 0));
    // RenoDX code end
  } else {
    _481 = _22_m0[_12]._m0[2];
    _482 = _22_m0[_12]._m0[0];
  }
  float4 _488 = _56.SampleBias(_25, _3, _19_m16);
  float3 _493 = _488.xyz * _50_m24.xyz;
  float4 _497 = _57.SampleBias(_25, _3, _19_m16);
  float _498 = _497.x;
  float _499 = _497.y;
  float _500 = _497.z;
  float _502 = 1.0f - _497.w;
  float _506 = _488.w * _50_m24.w;
  float3 _510 = _4 + _17_m11.xyz;
  float3 _514 = _510 - float3(_482.w, _424, _481.w);
  _514.y = 6.103515625e-05f;
  float3 _517 = normalize(_514);
  float4 _530 = _58.SampleBias(_25, _3, _19_m16);
  _530.w = _530.w * _530.x;
  float2 _539 = (_530.wy * 2.0f) - 1.0f.xx;
  float3 _540 = float3(_539.x, _539.y, _422.z);
  float2 _541 = _539.xy;
  _540.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_541, _541), 0.0f, 1.0f)));
  float2 _549 = _540.xy * _50_m3;
  float3 _555 = _493 * _50_m18;
  float3 _559 = lerp(dot(_555, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _555, _50_m19.xxx);
  float4 _563 = _59.SampleBias(_25, _3, _19_m16);
  float3 _572 = mul(float3(_549.x, _549.y, _540.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
  float _581 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
  float3 _582 = (_572 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_572, _572)))) * _581;
  float3 _583 = normalize(_5) * _581;
  bool3 _587 = (_50_m34 > 0.5f).xxx;
  float3 _588 = cross(_5, float3(0.0f, 1.0f, 0.0f));
  float3 _592 = _588 * rsqrt(max(6.103515625e-05f, dot(_588, _588)));
  float3 _594 = float3(_587.x ? _6.xyz.x : _592.x, _587.y ? _6.xyz.y : _592.y, _587.z ? _6.xyz.z : _592.z).xyz;
  float3 _598 = normalize(_594 - (_582 * dot(_594, _582)));
  float3 _599 = _598.xyz;
  float3 _602 = cross(_582, _599) * _6.w;
  uint2 _604 = uint2(gl_FragCoord.xy);
  float3 _614 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _623 = asuint((_19_m92.x > 0.5f) ? _19_m92.y : _22_m0[_12]._m7.x);
  float4 _636 = float4(float(_623 & 255u), float((_623 >> 8u) & 255u), float((_623 >> 16u) & 255u), float((_623 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _637 = _636.x;
  float _640 = _636.w;
  float _646 = _510.y;
  float _649 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m92.w, _19_m92.x) - _646) * _636.y;
  float _650 = max(_636.z, _649);
  float _659 = lerp(_19_m22.x, 1.0f, _19_m94.w) * _19_m20.x;
  float4 _1154;
  float3 _1155;
  float3 _1156;
  float _1157;
  if (_19_m83.y < 0.5f) {
    float3 _674 = _510 - (_19_m108.xyz + (_614 * (-_19_m110.w)));
    float _689 = max(min(max((max(abs(_674.x), abs(_674.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_674.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _991;
    float4 _992;
    float4 _993;
    float _994;
    float _995;
    if ((_19_m108.w != 0.0f) && (_689 < 1.0f)) {
      float3 _702 = _510 - (_19_m108.xyz + (_614 * (-_19_m110.y)));
      float _716 = max(clamp((max(abs(_702.x), abs(_702.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_702.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _792;
      float4 _793;
      float4 _794;
      float4 _795;
      if (_716 < 1.0f) {
        float3 _725 = ((_510 * 2.0f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _727 = _725 - floor(_725);
        float4 _731 = _43.SampleLevel(_25, _727, 0.0f);
        float _732 = 1.0f - _716;
        float _736 = _19_m109.y * 0.5f;
        float _741 = _727.x;
        float _742 = clamp(_727.y, _736, 1.0f - _736) * 0.3333333432674407958984375f;
        float _743 = _727.z;
        float4 _746 = _44.SampleLevel(_24, float3(_741, _742, _743), 0.0f);
        float _762 = _731.x;
        float _772 = _731.y;
        float _782 = _731.z;
        _792 = _689 + (_746.w * _732);
        _793 = float4(((_44.SampleLevel(_24, float3(_741, _742 + 0.666666686534881591796875f, _743), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _782, _782) * _732;
        _794 = float4(((_44.SampleLevel(_24, float3(_741, _742 + 0.3333333432674407958984375f, _743), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _772, _772) * _732;
        _795 = float4(((_746.xyz * 4.0f) - 2.0f.xxx) * _762, _762) * _732;
      } else {
        _792 = _689;
        _793 = 0.0f.xxxx;
        _794 = 0.0f.xxxx;
        _795 = 0.0f.xxxx;
      }
      float3 _801 = _510 - (_19_m108.xyz + (_614 * (-_19_m110.z)));
      float _815 = max(clamp((max(abs(_801.x), abs(_801.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_801.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _895;
      float4 _896;
      float4 _897;
      float4 _898;
      if (_815 < 1.0f) {
        float3 _824 = ((_510 * 0.5f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _826 = _824 - floor(_824);
        float4 _830 = _45.SampleLevel(_25, _826, 0.0f);
        float _832 = _716 * (1.0f - _815);
        float _836 = _19_m109.y * 0.5f;
        float _841 = _826.x;
        float _842 = clamp(_826.y, _836, 1.0f - _836) * 0.3333333432674407958984375f;
        float _843 = _826.z;
        float4 _846 = _46.SampleLevel(_24, float3(_841, _842, _843), 0.0f);
        float _862 = _830.x;
        float _873 = _830.y;
        float _884 = _830.z;
        _895 = _792 + (_846.w * _832);
        _896 = _793 + (float4(((_46.SampleLevel(_24, float3(_841, _842 + 0.666666686534881591796875f, _843), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _884, _884) * _832);
        _897 = _794 + (float4(((_46.SampleLevel(_24, float3(_841, _842 + 0.3333333432674407958984375f, _843), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _873, _873) * _832);
        _898 = _795 + (float4(((_846.xyz * 4.0f) - 2.0f.xxx) * _862, _862) * _832);
      } else {
        _895 = _792;
        _896 = _793;
        _897 = _794;
        _898 = _795;
      }
      float4 _981;
      float4 _982;
      float4 _983;
      float _984;
      if (_815 > 0.0f) {
        float3 _907 = ((_510 * 0.125f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _910 = _19_m109.xyz * 0.5f;
        float3 _912 = clamp(_907 - floor(_907), _910, 1.0f.xxx - _910);
        float4 _916 = _47.SampleLevel(_25, _912, 0.0f);
        float _918 = _815 * (1.0f - _689);
        float _922 = _19_m109.y * 0.5f;
        float _927 = _912.x;
        float _928 = clamp(_912.y, _922, 1.0f - _922) * 0.3333333432674407958984375f;
        float _929 = _912.z;
        float4 _932 = _48.SampleLevel(_24, float3(_927, _928, _929), 0.0f);
        float _948 = _916.x;
        float _959 = _916.y;
        float _970 = _916.z;
        _981 = _896 + (float4(((_48.SampleLevel(_24, float3(_927, _928 + 0.666666686534881591796875f, _929), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _970, _970) * _918);
        _982 = _897 + (float4(((_48.SampleLevel(_24, float3(_927, _928 + 0.3333333432674407958984375f, _929), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _959, _959) * _918);
        _983 = _898 + (float4(((_932.xyz * 4.0f) - 2.0f.xxx) * _948, _948) * _918);
        _984 = _895 + (_932.w * _918);
      } else {
        _981 = _896;
        _982 = _897;
        _983 = _898;
        _984 = _895;
      }
      float _987 = clamp((_984 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _991 = _981;
      _992 = _982;
      _993 = _983;
      _994 = _987 - _689;
      _995 = (_987 + _689) * 0.5f;
    } else {
      _991 = 0.0f.xxxx;
      _992 = 0.0f.xxxx;
      _993 = 0.0f.xxxx;
      _994 = 0.0f;
      _995 = 1.0f;
    }
    float4 _1015 = _993 + float4(_19_m111.x * _995, (_19_m111.y * _995) + ((_19_m111.w * _994) * 0.5f), _19_m111.z * _995, (_19_m111.w * _995) + ((_19_m111.y * _994) * 0.375f));
    float4 _1035 = _992 + float4(_19_m112.x * _995, (_19_m112.y * _995) + ((_19_m112.w * _994) * 0.5f), _19_m112.z * _995, (_19_m112.w * _995) + ((_19_m112.y * _994) * 0.375f));
    float4 _1055 = _991 + float4(_19_m113.x * _995, (_19_m113.y * _995) + ((_19_m113.w * _994) * 0.5f), _19_m113.z * _995, (_19_m113.w * _995) + ((_19_m113.y * _994) * 0.375f));
    float4 _1059 = float4(_582, 1.0f);
    float3 _1065 = max(float3(dot(_1015, _1059), dot(_1035, _1059), dot(_1055, _1059)), 0.0f.xxx) * _659;
    float3 _1073 = ((_1015.xyz * 0.2125999927520751953125f) + (_1035.xyz * 0.715200006961822509765625f)) + (_1055.xyz * 0.072200000286102294921875f);
    float3 _1077 = _1073 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1073, _1073)));
    float _1079 = abs(_1077.y);
    float3 _1080 = _1077;
    _1080.y = _1079;
    float4 _1081 = float4(_1080.x, _1080.y, _1080.z, 0.0f.xxxx.w);
    _1081.w = 1.0f;
    float4 _1085 = float4(_1077.x, _1079, _1077.z, 1.0f);
    float3 _1090 = max(float3(dot(_1015, _1085), dot(_1035, _1085), dot(_1055, _1085)), 0.0f.xxx);
    float _1098 = _1065.z;
    float _1099 = _1065.y;
    float4 _1104 = lerp(float4(_1098, _1099, -1.0f, 0.666666686534881591796875f), float4(_1099, _1098, 0.0f, -0.3333333432674407958984375f), step(_1098, _1099).xxxx);
    float _1105 = _1065.x;
    float _1106 = _1104.x;
    float4 _1114 = lerp(float4(_1106, _1104.yw, _1105), float4(_1105, _1104.yz, _1106), step(_1106, _1105).xxxx);
    float _1115 = _1114.x;
    float _1116 = _1114.w;
    float _1117 = _1114.y;
    float _1119 = _1115 - min(_1116, _1117);
    float _1129 = frac(abs(_1114.z + ((_1116 - _1117) / ((6.0f * _1119) + 9.9999997473787516355514526367188e-05f))));
    float _1136 = min(_1119 / (_1115 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1129 - 0.5f))) * clamp(_1115, 0.0f, 1.0f));
    float _1138 = 2.0f / (2.0f - _1136);
    _1154 = _1081;
    _1155 = _1065;
    _1156 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1129, _1136, _1138).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1136.xxx) * _1138;
    _1157 = max(max(max(_1090.x, _1090.y), _1090.z), 0.0f) * _659;
  } else {
    _1154 = 0.0f.xxxx;
    _1155 = 1.0f.xxx;
    _1156 = _19_m84.xyz;
    _1157 = _659;
  }
  float3 _1877;
  float _1878;
  float _1879;
  float _1880;
  float3 _1881;
  float3 _1882;
  [branch] if ((clamp(_637 + _650, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f) {
    float _1185 = 1.0f - _498;
    float _1188 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_493 * _1185, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
    bool3 _1191 = _468.xxx;
    float3 _1193 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1197 = float3(_1191.x ? _1193.x : _10.x, _1191.y ? _1193.y : _10.y, _1191.z ? _1193.z : _10.z) * _19_m92.z;
    float3 _1199 = float3(_1191.x ? _9.xzy.x : _9.x, _1191.y ? _9.xzy.y : _9.y, _1191.z ? _9.xzy.z : _9.z);
    float3 _1201 = abs(_1199) - 0.20000000298023223876953125f.xxx;
    float3 _1204 = max((_1201 * _1201) * _1201, 6.103515625e-05f.xxx);
    float3 _1207 = _1204 / dot(_1204, 1.0f.xxx).xxx;
    float2 _1215 = _1197.xy;
    float2 _1220 = _1197.zy;
    float4 _1230 = ((_53.SampleBias(_25, _1197.xz, _19_m16) * _1207.y) + (_53.SampleBias(_25, _1215, _19_m16) * _1207.z)) + (_53.SampleBias(_25, _1220, _19_m16) * _1207.x);
    float _1231 = _1230.w;
    float _1233 = 1.10000002384185791015625f - _1231;
    float _1242 = max(smoothstep(0.800000011920928955078125f - _1231, _1233, clamp((_637 * _1185) + (_582.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1231, _1233, clamp(_649 * _1185, 0.0f, 1.0f)));
    float _1249 = smoothstep(0.5f, 0.75f, _498);
    float _1251 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _502) * _1188;
    float _1254 = clamp(_1251 + _1249, 0.0f, 1.0f) * max(_637, _650);
    bool _1258 = !((step(_637, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _650)) != 0.0f);
    bool2 _1259 = _1258.xx;
    float2 _1261 = (1.0f - _650).xx;
    float2 _1262 = float2(_1259.x ? float2(3.0f, 4.345600128173828125f).x : _1261.x, _1259.y ? float2(3.0f, 4.345600128173828125f).y : _1261.y);
    float _1263 = 1.0f - _1254;
    float _1266 = _1258 ? _19_m10.x : 1.0f;
    float _1268 = _1266 * _1262.x;
    float _1270 = _1266 * _1262.y;
    float3 _1271 = _1197 * 20.0f;
    float3 _1272 = _1197 * 34.345600128173828125f;
    float3 _1274 = pow(max(_1201, 0.0f.xxx), 10.0f.xxx);
    float3 _1278 = _1274 / max(dot(_1274, 1.0f.xxx), 6.103515625e-05f).xxx;
    float _1280 = _1278.y;
    float2 _1281 = _1271.xz * 1.0f;
    float2 _1282 = floor(_1281);
    float2 _1285 = frac(_1282 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1289 = _1285 + dot(_1285, _1285 + 34.345001220703125f.xx).xx;
    float _1290 = _1289.x;
    float _1291 = _1289.y;
    float2 _1295 = frac(float2(_1290 * _1291, _1290 + _1291));
    float2 _1298 = frac((_1282 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1302 = _1298 + dot(_1298, _1298 + 34.345001220703125f.xx).xx;
    float _1303 = _1302.x;
    float _1304 = _1302.y;
    float2 _1308 = frac(float2(_1303 * _1304, _1303 + _1304));
    float _1314 = _1295.x;
    float _1316 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1314);
    float2 _1317 = ((_1281 - _1282) + ((((_1308 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1320 = _1317.y;
    float2 _1324 = float2(_1317.x * 1.25f, _1320 * ((_1320 < 0.0f) ? 1.25f : 0.75f));
    float _1327 = _1268 + _1314;
    float _1331 = _1258 ? frac(_1327) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1327, 0.0f, 1.0f));
    float _1343 = _1295.y;
    float _1346 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1331) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1331)) * step(0.001000000047497451305389404296875f, smoothstep(_1316, 0.0f, length(_1324)))) * step(_1263, _1343 - 0.100000001490116119384765625f);
    float _1349 = _1346 * _1280;
    float _1357 = _1278.z;
    float2 _1358 = _1271.xy * 1.0f;
    float2 _1359 = floor(_1358);
    float2 _1362 = frac(_1359 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1366 = _1362 + dot(_1362, _1362 + 34.345001220703125f.xx).xx;
    float _1367 = _1366.x;
    float _1368 = _1366.y;
    float2 _1372 = frac(float2(_1367 * _1368, _1367 + _1368));
    float2 _1375 = frac((_1359 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1379 = _1375 + dot(_1375, _1375 + 34.345001220703125f.xx).xx;
    float _1380 = _1379.x;
    float _1381 = _1379.y;
    float2 _1385 = frac(float2(_1380 * _1381, _1380 + _1381));
    float _1391 = _1372.x;
    float _1393 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1391);
    float2 _1394 = ((_1358 - _1359) + ((((_1385 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1397 = _1394.y;
    float2 _1401 = float2(_1394.x * 1.25f, _1397 * ((_1397 < 0.0f) ? 1.25f : 0.75f));
    float _1404 = _1268 + _1391;
    float _1408 = _1258 ? frac(_1404) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1404, 0.0f, 1.0f));
    float _1420 = _1372.y;
    float _1423 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1408) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1408)) * step(0.001000000047497451305389404296875f, smoothstep(_1393, 0.0f, length(_1401)))) * step(_1263, _1420 - 0.100000001490116119384765625f);
    float _1426 = _1423 * _1357;
    float _1434 = _1278.x;
    float2 _1435 = _1271.zy * 1.0f;
    float2 _1436 = floor(_1435);
    float2 _1439 = frac(_1436 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1443 = _1439 + dot(_1439, _1439 + 34.345001220703125f.xx).xx;
    float _1444 = _1443.x;
    float _1445 = _1443.y;
    float2 _1449 = frac(float2(_1444 * _1445, _1444 + _1445));
    float2 _1452 = frac((_1436 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1456 = _1452 + dot(_1452, _1452 + 34.345001220703125f.xx).xx;
    float _1457 = _1456.x;
    float _1458 = _1456.y;
    float2 _1462 = frac(float2(_1457 * _1458, _1457 + _1458));
    float _1468 = _1449.x;
    float _1470 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1468);
    float2 _1471 = ((_1435 - _1436) + ((((_1462 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1474 = _1471.y;
    float2 _1478 = float2(_1471.x * 1.25f, _1474 * ((_1474 < 0.0f) ? 1.25f : 0.75f));
    float _1481 = _1268 + _1468;
    float _1485 = _1258 ? frac(_1481) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1481, 0.0f, 1.0f));
    float _1497 = _1449.y;
    float _1500 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1485) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1485)) * step(0.001000000047497451305389404296875f, smoothstep(_1470, 0.0f, length(_1478)))) * step(_1263, _1497 - 0.100000001490116119384765625f);
    float _1503 = _1500 * _1434;
    float2 _1516 = (float4(((clamp(_1324 / _1316.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1308.x)) * _1346) * _1280, _1349, _1343).xy + float4(((clamp(_1401 / _1393.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1385.x)) * _1423) * _1357, _1426, _1420).xy) + float4(((clamp(_1478 / _1470.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1462.x)) * _1500) * _1434, _1503, _1497).xy;
    float _1518 = max(_1503, max(_1349, _1426));
    float4 _1521 = float4(_1516, _1518, 0.0f);
    float2 _1523 = _1272.xz * 1.0f;
    float2 _1524 = floor(_1523);
    float2 _1527 = frac(_1524 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1531 = _1527 + dot(_1527, _1527 + 34.345001220703125f.xx).xx;
    float _1532 = _1531.x;
    float _1533 = _1531.y;
    float2 _1537 = frac(float2(_1532 * _1533, _1532 + _1533));
    float2 _1540 = frac((_1524 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1544 = _1540 + dot(_1540, _1540 + 34.345001220703125f.xx).xx;
    float _1545 = _1544.x;
    float _1546 = _1544.y;
    float2 _1550 = frac(float2(_1545 * _1546, _1545 + _1546));
    float _1556 = _1537.x;
    float _1558 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1556);
    float2 _1559 = ((_1523 - _1524) + ((((_1550 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1562 = _1559.y;
    float2 _1566 = float2(_1559.x * 1.25f, _1562 * ((_1562 < 0.0f) ? 1.25f : 0.75f));
    float _1569 = _1270 + _1556;
    float _1573 = _1258 ? frac(_1569) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1569, 0.0f, 1.0f));
    float _1585 = _1537.y;
    float _1588 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1573) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1573)) * step(0.001000000047497451305389404296875f, smoothstep(_1558, 0.0f, length(_1566)))) * step(_1263, _1585 - 0.100000001490116119384765625f);
    float _1591 = _1588 * _1280;
    float2 _1596 = _1272.xy * 1.0f;
    float2 _1597 = floor(_1596);
    float2 _1600 = frac(_1597 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1604 = _1600 + dot(_1600, _1600 + 34.345001220703125f.xx).xx;
    float _1605 = _1604.x;
    float _1606 = _1604.y;
    float2 _1610 = frac(float2(_1605 * _1606, _1605 + _1606));
    float2 _1613 = frac((_1597 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1617 = _1613 + dot(_1613, _1613 + 34.345001220703125f.xx).xx;
    float _1618 = _1617.x;
    float _1619 = _1617.y;
    float2 _1623 = frac(float2(_1618 * _1619, _1618 + _1619));
    float _1629 = _1610.x;
    float _1631 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1629);
    float2 _1632 = ((_1596 - _1597) + ((((_1623 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1635 = _1632.y;
    float2 _1639 = float2(_1632.x * 1.25f, _1635 * ((_1635 < 0.0f) ? 1.25f : 0.75f));
    float _1642 = _1270 + _1629;
    float _1646 = _1258 ? frac(_1642) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1642, 0.0f, 1.0f));
    float _1658 = _1610.y;
    float _1661 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1646) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1646)) * step(0.001000000047497451305389404296875f, smoothstep(_1631, 0.0f, length(_1639)))) * step(_1263, _1658 - 0.100000001490116119384765625f);
    float _1664 = _1661 * _1357;
    float2 _1669 = _1272.zy * 1.0f;
    float2 _1670 = floor(_1669);
    float2 _1673 = frac(_1670 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1677 = _1673 + dot(_1673, _1673 + 34.345001220703125f.xx).xx;
    float _1678 = _1677.x;
    float _1679 = _1677.y;
    float2 _1683 = frac(float2(_1678 * _1679, _1678 + _1679));
    float2 _1686 = frac((_1670 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1690 = _1686 + dot(_1686, _1686 + 34.345001220703125f.xx).xx;
    float _1691 = _1690.x;
    float _1692 = _1690.y;
    float2 _1696 = frac(float2(_1691 * _1692, _1691 + _1692));
    float _1702 = _1683.x;
    float _1704 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1702);
    float2 _1705 = ((_1669 - _1670) + ((((_1696 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1708 = _1705.y;
    float2 _1712 = float2(_1705.x * 1.25f, _1708 * ((_1708 < 0.0f) ? 1.25f : 0.75f));
    float _1715 = _1270 + _1702;
    float _1719 = _1258 ? frac(_1715) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1715, 0.0f, 1.0f));
    float _1731 = _1683.y;
    float _1734 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1719) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1719)) * step(0.001000000047497451305389404296875f, smoothstep(_1704, 0.0f, length(_1712)))) * step(_1263, _1731 - 0.100000001490116119384765625f);
    float _1737 = _1734 * _1434;
    float2 _1745 = (float4(((clamp(_1566 / _1558.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1550.x)) * _1588) * _1280, _1591, _1585).xy + float4(((clamp(_1639 / _1631.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1623.x)) * _1661) * _1357, _1664, _1658).xy) + float4(((clamp(_1712 / _1704.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1696.x)) * _1734) * _1434, _1737, _1731).xy;
    float4 _1750 = float4(_1745, max(_1737, max(_1591, _1664)), 0.0f);
    float _1752 = step(max(float2(_1316 * _1346, _424) * _1280, max(float2(_1393 * _1423, _424) * _1357, float2(_1470 * _1500, _424) * _1434)).x, 0.00999999977648258209228515625f);
    float2 _1756 = _1521.xy + (_1750.xy * _1752);
    float3 _1765 = float3((_1230.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1756.x, _1756.y, 0.0f.xxx.z);
    float2 _1769 = float2(0.0f, (_19_m10.x * _19_m92.z) * 0.75f);
    float3 _1772 = float3(_1199.x, 0.0f, _1199.z);
    float3 _1778 = abs(_1772 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1772, _1772)))) - 0.20000000298023223876953125f.xxx;
    float3 _1781 = max((_1778 * _1778) * _1778, 6.103515625e-05f.xxx);
    float3 _1784 = _1781 / dot(_1781, 1.0f.xxx).xxx;
    float _1803 = _1784.z;
    float _1805 = _1784.x;
    float4 _1807 = (_54.SampleBias(_25, _1215, _19_m16) * _1803) + (_54.SampleBias(_25, _1220, _19_m16) * _1805);
    float2 _1819 = _1765.xy + ((((_1807.xy * 2.0f) - 1.0f.xx) * ((_54.SampleBias(_25, _1215 + _1769, _19_m16).w * _1803) + (_54.SampleBias(_25, _1220 + _1769, _19_m16).w * _1805))) * _1254);
    float3 _1820 = float3(_1819.x, _1819.y, _1765.z);
    float _1821 = _1807.z;
    float _1826 = max(max(max(_1521.zw * step(0.00999999977648258209228515625f, _1518), _1750.zw * _1752).x, step(1.0099999904632568359375f - _1254, _1230.z)), smoothstep(1.0f - _1821, 1.10000002384185791015625f - _1821, _1254) * _1254);
    float2 _1827 = _1819.xy;
    _1820.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1827, _1827), 0.0f, 1.0f)));
    float3 _1834 = normalize(_1820);
    float3 _1835 = cross(_582, float3(0.0f, 1.0f, 0.0f));
    bool3 _1838 = (dot(_1835, _1835) > 6.103515625e-05f).xxx;
    float3 _1839 = normalize(_1835);
    float3 _1840 = float3(_1838.x ? _1839.x : float3(1.0f, 0.0f, 0.0f).x, _1838.y ? _1839.y : float3(1.0f, 0.0f, 0.0f).y, _1838.z ? _1839.z : float3(1.0f, 0.0f, 0.0f).z);
    float _1851 = min(_502, 0.0500000007450580596923828125f);
    float _1852 = lerp(_502, _1851, _1826);
    float _1869 = lerp(1.0f, 0.5f, (_1242 * (1.0f - _1188)) * (1.0f - _1251));
    _1877 = normalize(lerp(_582, normalize(((_1840 * _1834.x) + (cross(_1840, _582) * _1834.y)) + (_582 * _1834.z)), _1826.xxx));
    _1878 = _1826;
    _1879 = _1851;
    _1880 = max(_1852 - ((0.20000000298023223876953125f * _1188) * _1242), min(0.20000000298023223876953125f, _1852));
    _1881 = _559 * _1869;
    _1882 = lerp(_493, _493 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_493, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1826 * _1249).xxx) * _1869;
  }
  else {
    _1877 = _582;
    _1878 = 0.0f;
    _1879 = 0.00999999977648258209228515625f;
    _1880 = _502;
    _1881 = _559;
    _1882 = _493;
  }
  float3 _2012;
  float _2013;
  float3 _2014;
  float3 _2015;
  float _2016;
  [branch] if ((_640 - _50_m20) > 0.00999999977648258209228515625f) {
    bool3 _1887 = _468.xxx;
    float3 _1889 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1890 = float3(_1887.x ? _1889.x : _10.x, _1887.y ? _1889.y : _10.y, _1887.z ? _1889.z : _10.z);
    float3 _1893 = _1890 * _19_m92.z;
    float3 _1895 = float3(_1887.x ? _9.xzy.x : _9.x, _1887.y ? _9.xzy.y : _9.y, _1887.z ? _9.xzy.z : _9.z);
    float3 _1897 = abs(_1895) - 0.20000000298023223876953125f.xxx;
    float3 _1900 = max((_1897 * _1897) * _1897, 6.103515625e-05f.xxx);
    float3 _1903 = _1900 / dot(_1900, 1.0f.xxx).xxx;
    float4 _1926 = ((_55.SampleBias(_25, _1893.xz, _19_m16) * _1903.y) + (_55.SampleBias(_25, _1893.xy, _19_m16) * _1903.z)) + (_55.SampleBias(_25, _1893.zy, _19_m16) * _1903.x);
    float _1927 = _1895.y;
    float _1934 = clamp(_640 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1890.y) * clamp(_640 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1940 = _1934 * (2.0f - _1934);
    float _1947 = smoothstep(2.0f - _1940, 2.349999904632568359375f - _1940, ((_1927 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1926.z) * ((_500 * _500) * float(gl_FrontFacing));
    float _1959 = lerp(1.0f, 0.5f, ((_1934 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1882 * (1.0f - _498), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1926.w) * ((_1927 * 0.25f) + 0.75f));
    float3 _1961 = _1947.xxx;
    float2 _1967 = (_1926.xy * 2.0f) - 1.0f.xx;
    float3 _1968 = float3(_1967.x, _1967.y, _422.z);
    float2 _1969 = _1967.xy;
    _1968.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1969, _1969), 0.0f, 1.0f)));
    float2 _1977 = _1968.xy * 2.0f;
    float3 _1979 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1977.x, _1977.y, _1968.z), _1961);
    float3 _1983 = _1979 * rsqrt(max(6.103515625e-05f, dot(_1979, _1979)));
    float _1984 = _582.y;
    float _1987 = step(0.00999999977648258209228515625f, 1.0f - (_1984 * _1984));
    float _1991 = lerp(_582.z, _1984, _1987);
    float3 _1998 = (float3(0.0f, _1987, 1.0f - _1987) - (_582 * _1991)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1991 * _1991)));
    _2012 = ((cross(_1998, _582) * _1983.x) + (_1998 * _1983.y)) + (_582 * _1983.z);
    _2013 = lerp(_1880, 0.89999997615814208984375f, clamp(_1947 * 4.0f, 0.0f, 1.0f));
    _2014 = lerp(_1881 * _1959, 0.3079999983310699462890625f.xxx, _1961);
    _2015 = lerp(_1882 * _1959, 0.87999999523162841796875f.xxx, _1961);
    _2016 = lerp(_498, 0.0f, _1947);
  }
  else {
    _2012 = _582;
    _2013 = _1880;
    _2014 = _1881;
    _2015 = _1882;
    _2016 = _498;
  }
  float _2018 = 0.959999978542327880859375f - (_2016 * 0.959999978542327880859375f);
  float _2021 = _50_m30 * _499;
  float3 _2031 = _2015 * _2018;
  float3 _2034 = lerp(0.039999999105930328369140625f.xxx * lerp(1.0f, _50_m33, _499), _2015, _2016.xxx);
  float3 _2035 = _2014 * _2018;
  float _2037 = max(_2013 * _2013, 0.0078125f);
  float2 _2039 = float4(_2021, _50_m31 * _499, _50_m32, _499).xy;
  float2 _2041 = (1.0f.xx + _2039) * _2037;
  float2 _2043 = (1.0f.xx - _2039) * _2037;
  bool _2055 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
  float2 _2068 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _2068.y = -_2068.y;
  float2 _2084 = lerp(((sqrt(sqrt(abs(_2068 * 0.5f))) * float2(int2(sign(_2068)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2055).xx);
  float4 _2086 = float4(_2084.x, _2084.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2086.z = 1.0f;
  _2086.w = _2055 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2099 = lerp(-_33_m0.xyz, _19_m93.xyz, _19_m83.w.xxx);
  float3 _2103 = normalize(float3(_2099.x, 6.103515625e-05f, _2099.z));
  float3 _2113 = lerp(_33_m3.xyz, _19_m87.xyz, _19_m94.y.xxx);
  float3 _2119 = _2113 * lerp(_33_m3.w, _19_m87.w, _19_m94.w);
  int _2123 = int(_604.x);
  int _2124 = int(_604.y);
  float4 _2128 = _41.Load(int3(int3(_2123, _2124, 0).xy, 0));
  float _2133 = _2128.y;
  float _2136 = lerp(lerp(1.0f, _2128.x, _37_m6.x), 1.0f, _19_m83.z);
  float _2137 = dot(_2012, _2099);
  float3 _2144 = _2035 * _19_m82.z;
  float3 _2145 = _2144 * 0.64999997615814208984375f;
  float _2149 = dot(_2031, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2162 = clamp(-dot(_2103.xz, normalize(_614.xz)), 0.0f, 1.0f);
  float _2166 = 1.0f - _19_m94.x;
  float4 _2180 = _51.SampleLevel(_24, float2((clamp(lerp(_2137, ((-_2137) * ((_2137 * 0.5f) - 1.0f)) + 0.5f, (_2162 * smoothstep(0.25f, 0.75f, 1.0f - abs(_614.y))) * _2166) + (_19_m93.w * _19_m94.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2181 = _2180.w;
  float _2183 = _2180.x;
  float _2184 = _2180.y;
  float _2185 = _2180.z;
  float _2190 = max(max(_2183, _2184), _2185) - min(min(_2183, _2184), _2185);
  float4 _2198 = _51.SampleLevel(_24, float2((dot(_2012, _614) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2199 = _2198.w;
  float _2200 = _500 * _2133;
  float _2207 = min(min(_2133, _500), _2181);
  float _2208 = _2199 * _2200;
  float3 _2212 = ((clamp(dot(_582, _19_m88.xyz) + _19_m89.x, 0.0f, 1.0f) * _19_m89.y) + _19_m89.z).xxx * lerp(_1156, 1.0f.xxx, (_19_m83.y * _2207).xxx);
  float3 _2214 = _2207.xxx;
  float3 _2237 = _2136.xxx;
  float3 _2238 = lerp((_2212 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1157), 1.5f), clamp(_1157, 1.25f, 1.75f), _19_m83.x)) * _19_m82.w, (lerp(dot(_2119, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2119, _2214) + ((_2212 * clamp(_1157, 0.0f, 1.5f)) * ((1.0f - _19_m94.y).xxx + (_2113 * _19_m94.y)))) * _19_m82.y, _2237);
  float3 _2239 = lerp(lerp(lerp(dot(_2145, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2145, 1.2000000476837158203125f.xxx), _2144, clamp((_2200 * _2199) + _2181, 0.0f, 1.0f).xxx), _2031, _2214);
  float3 _2245 = _2239 * ((1.0f - _2190).xxx + (_2180.xyz * _2190));
  float3 _2254 = lerp(lerp(_2144, lerp(_2149.xxx, _2031, 1.2000000476837158203125f.xxx), _2208.xxx), _2245 * clamp(dot(_2239, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2245, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2237);
  float4 _2258 = float4(_2254, _2136);
  float _2260 = lerp(_2208, _2207, _2136);
  float _2263 = lerp(_19_m82.z, 1.0f, _2260);
  float3 _2271 = float3(_614.x, lerp(0.5f, _2099.y, _2136), _614.z);
  float3 _2282 = normalize(((_2099 * _2136) + ((_2271 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2271, _2271)))) * 2.0f)) + (_459 * (2.0f + _2136)));
  float _2284 = clamp(dot(_1877, _459), 0.0f, 1.0f);
  float _2288 = _2041.x;
  float _2289 = _2043.x;
  float _2290 = _2288 * _2289;
  float3 _2294 = float3(_2289 * dot(_599, _2282), _2288 * dot(_602, _2282), _2290 * dot(_1877, _2282));
  float _2295 = dot(_2294, _2294);
  float _2297 = (_2290 * _2290) * _2290;
  float _2298 = _2295 * _2295;
  float _2301 = (_2297 != _2298) ? (_2297 / _2298) : 1.0f;
  float _2302 = 2.0f * _2284;
  float _2304 = (1.0f + _2284) - _2284;
  float _2313 = _2284 * _2284;
  float3 _2325 = _2034 * _52.SampleLevel(_24, float2(lerp(_2301 / min(1.0f / ((_2037 * _2037) + 9.9999997473787516355514526367188e-05f), 65504.0f), _2313, _50_m4), _2013 * (1.0f - _2016)), 0.0f).xyz;
  float3 _2327 = lerp(_2034, _2325, _50_m4.xxx);
  float3 _2334 = normalize(_2282 + (_459 * _50_m32));
  float _2338 = _2041.y;
  float _2339 = _2043.y;
  float _2340 = _2338 * _2339;
  float3 _2344 = float3(_2339 * dot(_599, _2334), _2338 * dot(_602, _2334), _2340 * dot(_1877, _2334));
  float _2345 = dot(_2344, _2344);
  float _2347 = (_2340 * _2340) * _2340;
  float _2348 = _2345 * _2345;
  float _2363 = (1.0f - _50_m6) + (_506 * _50_m6);
  float3 _2365 = ((_2238 * _2254) * _2363) + ((((_2325 * clamp((_2301 * (0.5f / ((_2302 + (_2037 * _2304)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) + (((_2034 * _50_m38.xyz) * _499) * clamp((_2347 != _2348) ? (_2347 / _2348) : 1.0f, 0.0f, 20.0f))) * ((_2238 * (((_2260 * 0.5f) + 0.5f) * _2263)) * 1.0f)) * _19_m95.w);
  float _2366 = dot(_2365, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2369 = clamp(_2366 - 0.5f, 0.0f, 0.5f);
  float3 _2405 = normalize(cross(_614, lerp(float3(_19_m91.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m91.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m91.y), _19_m97.w.xxx)));
  float _2411 = dot(_459, _2012);
  float _2413 = 1.0f - abs(_2411);
  float _2435 = dot(_2103, _2012);
  float _2447 = 1.0f - _2136;
  float _2474 = lerp(_2013, _1879, _1878);
  float _2475 = _2474 * _2474;
  float _2476 = _2313 * _2284;
  float2 _2477 = float2(1.0f, _2284);
  float2 _2480 = float2(1.0f, _2475);
  float3 _2483 = float3(1.0f, _2475, (_2475 * _2475) * _2475);
  float _2488 = dot(mul(_2477, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2480) / dot(mul(float3(1.0f, _2313, _2476), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2483);
  float _2493 = dot(mul(_2477, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2480) / dot(mul(float3(1.0f, _2284, _2476), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2483);
  float3 _2496 = (_2327 * _2488) + _2493.xxx;
  float _2497 = _2488 + _2493;
  bool3 _2504 = (_2021 > 0.0f).xxx;
  float3 _2505 = float3(_2504.x ? _602.x : _598.x, _2504.y ? _602.y : _598.y, _2504.z ? _602.z : _598.z);
  float3 _2510 = lerp(_1877, cross(cross(_2505, _459), _2505), abs(_2021).xxx);
  float3 _2515 = -_459;
  float3 _2516 = reflect(_2515, _2510 * rsqrt(max(6.103515625e-05f, dot(_2510, _2510))));
  float _2521 = _2516.x;
  float _2523 = _2516.z;
  float3 _2526 = _2516;
  _2526.x = (_2521 * _19_m98.y) + (_2523 * _19_m98.x);
  _2526.z = (_2523 * _19_m98.y) - (_2521 * _19_m98.x);
  float3 _2548 = lerp(_2366.xxx, _2365, ((_2369 * _2369) + 1.0f).xxx) + (((((_19_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m91.w), lerp(0.89999997615814208984375f, 0.5f, _19_m91.w), _2413)) * _19_m90.w) * min(min(clamp(dot(_517, _2405) + 1.0f, 0.0f, 1.0f), _500), _2133)) * (lerp(0.25f.xxx, _2031, _19_m91.z.xxx) * clamp(dot(_2405, _2012), 0.0f, 1.0f))) + ((((((lerp(_1155 * (1.0f / max(max(max(_1155.x, _1155.y), _1155.z) * 0.5f, 1.0f)), _2119, _2237) * clamp(lerp(dot(_1154.xyz, _2012) * _1154.w, ((-_2435) * ((_2435 * 0.5f) - 1.0f)) + 0.5f, _2136), 0.0f, 1.0f)) * ((_2447 + (_2162 * _2136)) * _2166)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2413)) * min(_500, _2133)) * (_2447 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2149) * _2136))) * max(0.1500000059604644775390625f.xxx, _2031)));
  float2 _2551 = float2(_604);
  float2 _2553 = floor(_2551 * 0.03125f);
  int _2561 = int((_2553.x + (_2553.y * _35_m9)) * 8.0f);
  float _2568 = floor(_440 - (_19_m3.y * _35_m15));
  float _2572 = clamp(_2568, 0.0f, _35_m11 - 1.0f);
  int _2574 = int(_2572 * 8.0f);
  float3 _2576;
  _2576 = (_2548 + (((_563.xyz * _50_m25.xyz) * _50_m7) * _2363)) + (((_61.SampleLevel(_24, _2526, (1.2000000476837158203125f * log2(max(_2474, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2496 + ((_2327 * ((1.0f - _2497) / _2497)) * _2496)) * 1.0f)) * ((clamp(_1157, 0.5f, 1.5f) * _19_m82.w) * _2263)) * _1156);
  float3 _2577;
  [loop] for (int _2579 = 0; _2579 <= 7; _2576 = _2577, _2579++) {
    uint _2600 = (_2568 <= _2572) ? (_29.Load(uint((_35_m2 + _2561) + _2579) * 4 + 0) & _29.Load(uint((_35_m3 + _2574) + _2579) * 4 + 0)) : 0u;
    uint _2601 = uint(_2579);
    _2577 = _2576;
    uint _2606;
    float3 _2603;
    [loop] for (uint _2605 = _2600; _2605 != 0u; _2577 = _2603, _2605 = _2606) {
      uint _2610 = firstbitlow(_2605);
      _2606 = _2605 ^ (1u << (_2610 & 31u));
      int _2616 = int((32u * _2601) + _2610) * 8;
      int _2619 = _2616 + 1;
      int _2622 = _2616 + 2;
      int _2625 = _2616 + 3;
      int _2628 = _2616 + 4;
      int _2631 = _2616 + 5;
      int _2634 = _2616 + 6;
      int _2637 = _2616 + 7;
      uint _2641 = uint(_33_m6[_2631].w);
      float _2716;
      if ((_2641 & 1u) == 1u) {
        uint _2647 = asuint(_33_m6[_2631].x);
        uint _2654 = asuint(_33_m6[_2631].y);
        uint _2661 = asuint(_33_m6[_2631].z);
        uint _2668 = asuint(_33_m6[_2634].x);
        uint _2675 = asuint(_33_m6[_2634].y);
        uint _2682 = asuint(_33_m6[_2634].z);
        float3 _2701 = abs(mul(float4(_510 - _33_m6[_2619].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2647).x, spvUnpackHalf2x16(_2661).x, spvUnpackHalf2x16(_2675).x, 0.0f), float4(spvUnpackHalf2x16(_2647 >> 16u).x, spvUnpackHalf2x16(_2661 >> 16u).x, spvUnpackHalf2x16(_2675 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2654).x, spvUnpackHalf2x16(_2668).x, spvUnpackHalf2x16(_2682).x, 0.0f), float4(spvUnpackHalf2x16(_2654 >> 16u).x, spvUnpackHalf2x16(_2668 >> 16u).x, spvUnpackHalf2x16(_2682 >> 16u).x, 0.0f))).xyz);
        float _2708 = _33_m6[_2637].x * 0.5f;
        float _2714 = 1.0f - clamp((max(max(_2701.x, _2701.y), _2701.z) - (_2708 + 0.5f)) / (0.5f - _2708), 0.0f, 1.0f);
        _2716 = _2714 * _2714;
      } else {
        _2716 = 1.0f;
      }
      if (false || (_2716 < 0.001000000047497451305389404296875f)) {
        _2603 = _2577;
        continue;
      }
      float3 _3513;
      do {
        uint _2724 = uint(_33_m6[_2616].w);
        [branch] if (_2724 >= 4u) {
          _3513 = _2577;
          break;
        }
        float3 _3512;
        if (_33_m6[_2616].w < 1.5f) {
          float3 _3511;
          do {
            uint _2735 = asuint(_33_m6[_2625].w);
            if ((_2735 == 16u) || ((_33_m6[_2625].z + _19_m94.z) < 0.5f)) {
              _3511 = _2577;
              break;
            }
            bool _2746 = (_2724 & 1u) == 0u;
            bool _2750 = (!_2746) && (_33_m6[_2622].z > 0.0f);
            bool _2751 = _2735 == 4u;
            float _2752 = float(_2746);
            float _2760 = (0.5f + (0.5f * _33_m6[_2622].y)) - abs(_33_m6[_2622].x);
            float _2761 = _33_m6[_2622].y - _2760;
            float _2768 = abs(max((1.0f - abs(_2760)) - abs(_2761), 0.00048828125f));
            float3 _2772 = normalize(float3(_2760, _2761, (_33_m6[_2622].x >= 0.0f) ? _2768 : (-_2768)));
            float _2778 = lerp(_33_m6[_2634].w, max(2.0f * _33_m6[_2628].y, 0.100000001490116119384765625f), float(_2751));
            float3 _2783 = _33_m6[_2619].xyz - _510;
            float3 _2784 = -_2772;
            float3 _2789 = lerp(_2783, _2784 * dot(_2783, _2784), (float(_2751 && (_33_m6[_2628].z > 0.5f)) * _2752).xxx);
            float _2790 = dot(_2789, _2789);
            float _2791 = rsqrt(_2790);
            float3 _2792 = _2789 * _2791;
            float3 _2825;
            float _2826;
            if (_2750) {
              float3 _2796 = (_2772 * _33_m6[_2622].z) * 0.5f;
              float3 _2797 = _2789 - _2796;
              float3 _2798 = _2789 + _2796;
              float _2799 = length(_2797);
              float _2800 = length(_2798);
              float3 _2809 = normalize(cross(cross(_2772, _2792), _2772));
              _2825 = _2809;
              _2826 = ((1.0f / ((((_2799 * _2800) + dot(_2797, _2798)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2809, _2797) / _2799) + (dot(_2809, _2798) / _2800)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_33_m6[_2622].z * _2791, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2825 = _2792;
              _2826 = 1.0f;
            }
            float _2848;
            if (_2778 < 0.0f) {
              float _2836 = _2790 * (_33_m6[_2619].w * _33_m6[_2619].w);
              float _2839 = clamp(1.0f - (_2836 * _2836), 0.0f, 1.0f);
              _2848 = lerp(1.0f / (_2790 + 1.0f), _2826, float(_2750)) * (_2839 * _2839);
            } else {
              float3 _2842 = _2789 * _33_m6[_2619].w;
              _2848 = _2826 * pow(1.0f - clamp(dot(_2842, _2842), 0.0f, 1.0f), _2778);
            }
            float _2853 = clamp((dot(_2825, _2784) - _33_m6[_2622].z) * _33_m6[_2622].w, 0.0f, 1.0f);
            float _2856 = _2848 * lerp(1.0f, _2853 * _2853, _2752);
            int _2858 = int(_33_m6[_2637].w);
            float _2962;
            if ((!_2750) && (_2858 >= 0)) {
              uint _2864 = uint(_2858);
              float2 _2955;
              [branch] if (_2752 != 0.0f) {
                float4 _2876 = mul(_64_m1[_2864], float4(_510.x, _646, _510.z, 1.0f));
                _2955 = _64_m0[_2864].xy + (clamp(_2876.xy / _2876.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2864].zw);
              }
              else {
                float3 _2896 = mul(float4(-_2789, 0.0f), _64_m1[_2864]).xyz;
                float3 _429 = _2896;
                float3 _428 = _2896;
                float3 _427 = abs(_2896);
                uint _2905 = uint(int(_427.y > _427.x));
                uint _2911 = (_427.z > _427[_2905]) ? 2u : _2905;
                uint _2917 = (_2911 * 2u) + uint(_428[_2911] < 0.0f);
                float _2921 = abs(_429[_2917 / 2u]);
                float _2941 = 0.5f - (0.000244140625f / _64_m0[_2864].w);
                _2955 = _64_m0[_2864].xy + (clamp(float2((float(_2917) + ((((_429[uint(_379[_2917].x)] * _380[_2917].x) / _2921) * _2941) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_429[uint(_379[_2917].y)] * _380[_2917].y) / _2921) * _2941)), 0.0f.xx, 1.0f.xx) * _64_m0[_2864].zw);
              }
              _2962 = _2856 * _62.SampleLevel(_24, _2955, 0.0f).x;
            } else {
              _2962 = _2856;
            }
            float _2963 = _2962 * _2716;
            float3 _3510;
            do {
              float3 _3509;
              [branch] if (_2963 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2751) {
                  _3510 = lerp(_2577, _33_m6[_2616].xyz, (_2963 * (_33_m6[_2628].x * ((1.0f - _33_m6[_2628].w) + (smoothstep(-0.5f, 0.5f, dot(_583, _2825)) * _33_m6[_2628].w)))).xxx);
                  break;
                }
                float _2983 = dot(_2012, _2825);
                float _2984 = clamp(_2983, 0.0f, 1.0f);
                float _3383;
                if (_2735 != 0u) {
                  bool _2990 = _2746 || ((_2641 & 2u) != 0u);
                  int _3040;
                  if (_2990) {
                    _3040 = int(_33_m6[_2625].x);
                  } else {
                    uint _2997 = asuint(_33_m6[_2622].w);
                    uint _2998 = asuint(_33_m6[_2625].x);
                    float3 _2999 = _510 - _33_m6[_2619].xyz;
                    float3 _3000 = abs(_2999);
                    float _3001 = _3000.x;
                    float _3002 = _3000.y;
                    float _3004 = _3000.z;
                    int _3037;
                    if ((_3001 > _3002) && (_3001 > _3004)) {
                      _3037 = int((_2999.x > 0.0f) ? (_2997 & 1023u) : ((_2997 >> 10u) & 1023u));
                    } else {
                      int _3036;
                      if (_3002 > _3004) {
                        _3036 = int((_2999.y > 0.0f) ? ((_2997 >> 20u) & 1023u) : (_2998 & 1023u));
                      } else {
                        _3036 = int((_2999.z > 0.0f) ? ((_2998 >> 10u) & 1023u) : ((_2998 >> 20u) & 1023u));
                      }
                      _3037 = _3036;
                    }
                    _3040 = (_3037 == 1023) ? (-1) : _3037;
                  }
                  bool _3041 = _3040 >= 0;
                  float _3382;
                  if (_3041) {
                    float3 _3045 = _510 - _33_m6[_2619].xyz;
                    uint _3055 = asuint(_37_m11.x) + (uint(_3040) * 96u);
                    uint _3057 = (_3055 + 64u) >> 2u;
                    uint _3060 = _3057 + 1u;
                    uint _3063 = _3057 + 2u;
                    uint _3066 = _3057 + 3u;
                    float4 _3070 = asfloat(uint4(_40.Load(_3057 * 4 + 0), _40.Load(_3060 * 4 + 0), _40.Load(_3063 * 4 + 0), _40.Load(_3066 * 4 + 0)));
                    uint _3078 = _3055 >> 2u;
                    uint _3093 = (_3055 + 16u) >> 2u;
                    uint _3108 = (_3055 + 32u) >> 2u;
                    uint _3123 = (_3055 + 48u) >> 2u;
                    float4 _3143 = mul(transpose(float4x4(asfloat(uint4(_40.Load(_3078 * 4 + 0), _40.Load((_3078 + 1u) * 4 + 0), _40.Load((_3078 + 2u) * 4 + 0), _40.Load((_3078 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3093 * 4 + 0), _40.Load((_3093 + 1u) * 4 + 0), _40.Load((_3093 + 2u) * 4 + 0), _40.Load((_3093 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3108 * 4 + 0), _40.Load((_3108 + 1u) * 4 + 0), _40.Load((_3108 + 2u) * 4 + 0), _40.Load((_3108 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3123 * 4 + 0), _40.Load((_3123 + 1u) * 4 + 0), _40.Load((_3123 + 2u) * 4 + 0), _40.Load((_3123 + 3u) * 4 + 0))))), float4((_510 - ((_3045 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3045, _3045)))) * _3070.x)) + (_583 * (_3070.y * 5.0f)), 1.0f));
                    float3 _3147 = _3143.xyz / _3143.w.xxx;
                    uint _3149 = (_3055 + 80u) >> 2u;
                    float4 _3162 = asfloat(uint4(_40.Load(_3149 * 4 + 0), _40.Load((_3149 + 1u) * 4 + 0), _40.Load((_3149 + 2u) * 4 + 0), _40.Load((_3149 + 3u) * 4 + 0)));
                    float2 _3163 = _3147.xy;
                    float2 _3165 = _3162.xy;
                    float3 _3169 = _3147.xyz;
                    bool3 _3170 = bool3(_3169.x <= 0.0f.xxx.x, _3169.y <= 0.0f.xxx.y, _3169.z <= 0.0f.xxx.z);
                    bool3 _3171 = bool3(_3169.x >= 1.0f.xxx.x, _3169.y >= 1.0f.xxx.y, _3169.z >= 1.0f.xxx.z);
                    float _3174 = _3147.z;
                    float2 _3185 = ((_3163 * (_3162.zw - _3165)) + _3165).xy * _37_m10.zw;
                    float2 _3187 = floor(_3185 + 0.5f.xx);
                    float2 _3188 = _3185 - _3187;
                    float _3189 = _3188.x;
                    float _3190 = _3189 + 0.5f;
                    float _3191 = _3190 * _3190;
                    float _3194 = 1.0f - _3189;
                    float _3195 = min(_3189, 0.0f);
                    float _3198 = _3189 + 1.0f;
                    float _3199 = max(_3189, 0.0f);
                    float _3210 = _3188.y;
                    float _3211 = _3210 + 0.5f;
                    float _3212 = _3211 * _3211;
                    float _3215 = 1.0f - _3210;
                    float _3216 = min(_3210, 0.0f);
                    float _3219 = _3210 + 1.0f;
                    float _3220 = max(_3210, 0.0f);
                    float3 _3232 = float3(0.1599999964237213134765625f * _3194, 0.1599999964237213134765625f * ((_3198 - (_3199 * _3199)) + 1.0f), _3191 * 0.07999999821186065673828125f);
                    float3 _3233 = float3(0.1599999964237213134765625f * ((_3191 * 0.5f) - _3189), 0.1599999964237213134765625f * ((_3194 - (_3195 * _3195)) + 1.0f), 0.1599999964237213134765625f * _3198) + _3232;
                    float3 _3235 = float3(0.1599999964237213134765625f * _3215, 0.1599999964237213134765625f * ((_3219 - (_3220 * _3220)) + 1.0f), _3212 * 0.07999999821186065673828125f);
                    float3 _3236 = float3(0.1599999964237213134765625f * ((_3212 * 0.5f) - _3210), 0.1599999964237213134765625f * ((_3215 - (_3216 * _3216)) + 1.0f), 0.1599999964237213134765625f * _3219) + _3235;
                    float3 _3242 = ((_3232 / _3233) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.xxx;
                    float3 _3244 = ((_3235 / _3236) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.yyy;
                    float2 _3246 = _3187 * _37_m10.xy;
                    float _3247 = _3242.x;
                    float _3248 = _3244.x;
                    float _3251 = _3242.y;
                    float _3254 = _3242.z;
                    float _3257 = _3244.y;
                    float _3264 = _3244.z;
                    float _3271 = _3233.x;
                    float _3272 = _3236.x;
                    float _3274 = _3233.y;
                    float _3276 = _3233.z;
                    float _3278 = _3236.y;
                    float _3282 = _3236.z;
                    float _3340 = (((((((_3271 * _3272) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3247, _3248), _421).xy, _3174)) + ((_3274 * _3272) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3251, _3248), _421).xy, _3174))) + ((_3276 * _3272) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3254, _3248), _421).xy, _3174))) + ((_3271 * _3278) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3247, _3257), _421).xy, _3174))) + ((_3274 * _3278) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3251, _3257), _421).xy, _3174))) + ((_3276 * _3278) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3254, _3257), _421).xy, _3174))) + ((_3271 * _3282) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3247, _3264), _421).xy, _3174));
                    float4 _3363 = asfloat(uint4(_40.Load(_3057 * 4 + 0), _40.Load(_3060 * 4 + 0), _40.Load(_3063 * 4 + 0), _40.Load(_3066 * 4 + 0)));
                    float _3364 = _3363.w;
                    float2 _3366 = min(_3163, 1.0f.xx - _3163);
                    _3382 = _3041 ? lerp(1.0f, (any(bool3(_3170.x || _3171.x, _3170.y || _3171.y, _3170.z || _3171.z)) || ((asuint(_3174) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3340 + ((_3274 * _3282) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3251, _3264), _421).xy, _3174))) + ((_3276 * _3282) * _38.SampleCmpLevelZero(_26, float3(_3246 + float2(_3254, _3264), _421).xy, _3174))), _2990 ? min(_3364, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3363.z - _3143.w) * 0.25f, min(_3366.x, _3366.y)))) : _3364) : 1.0f;
                  } else {
                    _3382 = clamp(dot(_517, _2825) + 1.0f, 0.0f, 1.0f);
                  }
                  _3383 = _3382;
                } else {
                  _3383 = 1.0f;
                }
                float _3463;
                float3 _3464;
                float _3465;
                float3 _3466;
                float3 _3467;
                float _3468;
                float _3469;
                [branch] if (_2735 == 0u) {
                  float3 _3389 = _33_m6[_2616].xyz * _2963;
                  float3 _3402 = _2258.xyz;
                  _3463 = _2963;
                  _3464 = (_33_m6[_2616].xyz * ((1.0f - _33_m6[_2628].y) + ((1.0f / max(1.0f, max(max(_3389.x, _3389.y), _3389.z) * lerp(0.75f, 0.5f, _2447))) * _33_m6[_2628].y))) * lerp(0.25f * _33_m6[_2628].x, 1.0f, clamp(_2983 + 0.5f, 0.0f, 1.0f));
                  _3465 = _2984;
                  _3466 = _3402;
                  _3467 = _3402;
                  _3468 = 1.0f;
                  _3469 = 0.0f;
                }
                else {
                  float _3457;
                  float _3458;
                  float3 _3459;
                  float3 _3460;
                  float _3461;
                  float _3462;
                  if (_2735 == 3u) {
                    _3457 = _2963 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _33_m6[_2628].x), lerp(0.89999997615814208984375f, 0.5f, _33_m6[_2628].x), _2413) * _3383);
                    _3458 = clamp(dot(_2012, -normalize(cross(_614, cross(_614, _2825)))), 0.0f, 1.0f);
                    _3459 = lerp(0.5f.xxx, _2031, _33_m6[_2628].y.xxx);
                    _3460 = 0.0f.xxx;
                    _3461 = 1.0f;
                    _3462 = 0.0f;
                  } else {
                    bool _3427 = _2735 == 1u;
                    float _3451;
                    float3 _3452;
                    float _3453;
                    float _3454;
                    if (_3427) {
                      _3451 = clamp(clamp(_2983 + _33_m6[_2628].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3383;
                      _3452 = _2035 * _33_m6[_2628].y;
                      _3453 = 1.0f;
                      _3454 = 0.0f;
                    } else {
                      bool _3437 = _2735 == 2u;
                      float _3449;
                      if (_3437) {
                        _3449 = smoothstep(_33_m6[_2628].x + 0.0500000007450580596923828125f, _33_m6[_2628].x - 0.0500000007450580596923828125f, _2013) * ((1.0f - _33_m6[_2628].z) + (step(0.5f, _2016) * _33_m6[_2628].z));
                      } else {
                        _3449 = 1.0f;
                      }
                      _3451 = _2984;
                      _3452 = 0.0f.xxx;
                      _3453 = _3449;
                      _3454 = _3437 ? _33_m6[_2628].y : 0.0f;
                    }
                    bool3 _3455 = _3427.xxx;
                    _3457 = _2963;
                    _3458 = _3451;
                    _3459 = float3(_3455.x ? _2031.x : 0.0f.xxx.x, _3455.y ? _2031.y : 0.0f.xxx.y, _3455.z ? _2031.z : 0.0f.xxx.z);
                    _3460 = _3452;
                    _3461 = _3453;
                    _3462 = _3454;
                  }
                  _3463 = _3457;
                  _3464 = _33_m6[_2616].xyz;
                  _3465 = _3458;
                  _3466 = _3459;
                  _3467 = _3460;
                  _3468 = _3461;
                  _3469 = _3462;
                }
                float3 _3499;
                [branch] if (_2735 != 3u) {
                  float3 _3476 = normalize(_2825 + _459);
                  float3 _3483 = float3(_2289 * dot(_599, _3476), _2288 * dot(_602, _3476), _2290 * dot(_1877, _3476));
                  float _3484 = dot(_3483, _3483);
                  float _3485 = _3484 * _3484;
                  _3499 = ((_2325 * clamp((((_2297 != _3485) ? (_2297 / _3485) : 1.0f) * (0.5f / ((_2302 + (lerp(_2037, 0.00999999977648258209228515625f, _3469) * _2304)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3468) * _33_m6[_2637].z;
                }
                else {
                  _3499 = 0.0f.xxx;
                }
                float3 _3502 = _3464 * _3463;
                _3509 = _2577 + (((_3502 * lerp(_3467, _3466, _3465.xxx)) * _2363) + ((_3502 * _3499) * _3465));
              }
              else {
                _3509 = _2577;
              }
              _3510 = _3509;
              break;
            } while (false);
            _3511 = _3510;
            break;
          } while (false);
          _3512 = _3511;
        } else {
          _3512 = _2577;
        }
        _3513 = _3512;
        break;
      } while (false);
      _2603 = _3513;
    }
  }
  float3 _3553;
  [branch] if (_50_m12 > 0.5f) {
    _3553 = lerp(lerp(0.5f.xxx, lerp(dot(_2576, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2576, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_2411, 0.0f, 1.0f))) * _50_m17);
  }
  else {
    _3553 = _2576;
  }
  float4 _3560 = float4(_3553 * _19_m20.y, _506);
  _3560.w = (_50_m8 == 1.0f) ? _506 : 1.0f;
  float4 _3947;
  [branch] if (_19_m94.w < 0.5f) {
    float _3584 = _646 * _19_m46.w;
    float _3589 = max(0.00999999977648258209228515625f, _3584 + _19_m47.w);
    float3 _3603 = exp(_19_m45.xyz * ((-max(0.0f, (_460 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3589)) / _3589) * exp(_3584 + _19_m48.w))));
    float _3606 = dot(_2515, _19_m44.xyz);
    float _3612 = _19_m45.w * _19_m45.w;
    float _3616 = (1.0f + _3612) - ((2.0f * _19_m45.w) * _3606);
    float3 _3939;
    float _3940;
    if (_19_m55.z > 0.0f) {
      uint3 _3661 = (uint3(int3(_2123, _2124, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3662 = _3661.y;
      uint _3663 = _3661.z;
      uint _3666 = _3661.x + (_3662 * _3663);
      uint _3668 = _3662 + (_3663 * _3666);
      uint _3670 = _3663 + (_3666 * _3668);
      uint _3672 = _3666 + (_3668 * _3670);
      float _3697 = dot(_2515, -_17_m0[2].xyz);
      float3 _3704 = _510 - _17_m11.xyz;
      float _3706 = (_19_m55.w * ((_3697 > 5.9604644775390625e-08f) ? (1.0f / _3697) : 0.0f)) * (1.0f / _460);
      float _3707 = _3704.y;
      float _3708 = _3706 * _3707;
      float _3710 = _17_m11.y + _3708;
      float _3711 = _3707 - _3708;
      float _3713 = (1.0f - _3706) * _460;
      float _3727 = max(-127.0f, _19_m49.z * _3711);
      float _3751 = max(-127.0f, _19_m52.x * _3711);
      float _3762 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3710 - _19_m49.x)))) * ((abs(_3727) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3727)) / _3727) : (0.693147182464599609375f - (0.2402265071868896484375f * _3727)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3710 - _19_m52.z)))) * ((abs(_3751) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3751)) / _3751) : (0.693147182464599609375f - (0.2402265071868896484375f * _3751))));
      float _3784 = clamp((_460 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3787 = clamp((max(clamp(exp2(-(_3762 * _3713)), 0.0f, 1.0f), _19_m51.w) + clamp((_460 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3784, 0.0f, 1.0f);
      float4 _3827 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_24, float3((_2551 + ((((float3(uint3(_3672, _3668 + (_3670 * _3672), _425) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_440 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_440 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3939 = _3827.xyz + (((_19_m51.xyz * (1.0f - _3787)) + (((_19_m54.xyz * pow(clamp(dot(_459, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3762 * max(_3713 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3784))) * _3827.w);
      _3940 = _3827.w * _3787;
    } else {
      float3 _3833 = _510 - _17_m11.xyz;
      float _3835 = _3833.y;
      float _3849 = max(-127.0f, _19_m49.z * _3835);
      float _3873 = max(-127.0f, _19_m52.x * _3835);
      float _3884 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3849) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3849)) / _3849) : (0.693147182464599609375f - (0.2402265071868896484375f * _3849)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3873) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3873)) / _3873) : (0.693147182464599609375f - (0.2402265071868896484375f * _3873))));
      float _3906 = clamp((_460 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3909 = clamp((max(clamp(exp2(-(_3884 * _460)), 0.0f, 1.0f), _19_m51.w) + clamp((_460 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3906, 0.0f, 1.0f);
      _3939 = (_19_m51.xyz * (1.0f - _3909)) + (((_19_m54.xyz * pow(clamp(dot(_459, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3884 * max(_460 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3906));
      _3940 = _3909;
    }
    float3 _3945 = (_3560.xyz * (_3603 * _3940)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3606 * _3606)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3612) / max((12.56637096405029296875f * _3616) * sqrt(_3616), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3603)) * _3940) + _3939);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3945 = (_3945 * 0.65f) + (_3560.xyz * 0.35f);
    }
    // RenoDX code end
    _3947 = float4(_3945.x, _3945.y, _3945.z, _3560.w);
  }
  else {
    _3947 = _3560;
  }
  _14 = _3947;
  _15 = _2086;
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
  _12 = stage_input._12;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._14 = _14;
  stage_output._15 = _15;
  return stage_output;
}

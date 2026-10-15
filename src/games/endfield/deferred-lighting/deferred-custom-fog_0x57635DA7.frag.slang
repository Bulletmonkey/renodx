#include "./renodx_injection.hlsli"

// Ported from the native 0x57635DA7 Vulkan dump.
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

static float _418;
static float3 _419;
static float _421;
static uint _422;

static const int2 _376[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _377[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
  float4 _50_m34 : packoffset(c13);
  float _50_m35 : packoffset(c14);
  float _50_m36 : packoffset(c14.y);
  float _50_m37 : packoffset(c14.z);
  float _50_m38 : packoffset(c14.w);
  float4 _50_m39 : packoffset(c15);
  float4 _50_m40 : packoffset(c16);
  float4 _50_m41 : packoffset(c17);
  float4 _50_m42 : packoffset(c18);
  float4 _50_m43 : packoffset(c19);
  float4 _50_m44 : packoffset(c20);
  float _50_m45 : packoffset(c21);
  float _50_m46 : packoffset(c21.y);
  float _50_m47 : packoffset(c21.z);
  float _50_m48 : packoffset(c21.w);
  float _50_m49 : packoffset(c22);
  float _50_m50 : packoffset(c22.y);
  float _50_m51 : packoffset(c22.z);
  float _50_m52 : packoffset(c22.w);
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
[[vk::binding(3, 1)]] Texture2D<float4> _51 : register(t3, space1);
[[vk::binding(1, 1)]] Texture2D<float4> _52 : register(t1, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _53 : register(t4, space1);
[[vk::binding(46, 0)]] Texture2D<float4> _54 : register(t46, space0);
[[vk::binding(43, 0)]] Texture2D<float4> _55 : register(t43, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _56 : register(t41, space0);
[[vk::binding(6, 1)]] Texture2D<float4> _57 : register(t6, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _58 : register(t2, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _59 : register(t5, space1);
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
  float _437 = 1.0f / gl_FragCoord.w;
  float3 _452 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
  float _453 = dot(_452, _452);
  float _455 = rsqrt(max(_453, 9.9999999392252902907785028219223e-09f));
  float3 _456 = _452 * _455;
  float _457 = _453 * _455;
  uint _460 = asuint(_22_m0[_12]._m2.x);
  bool _465 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
  float4 _478;
  float4 _479;
  if (_465) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0x57635DA7:
    _478 = asfloat(_31_Load4((_460 + 2u) * 16 + 0));
    _479 = asfloat(_31_Load4(_460 * 16 + 0));
    */
    _478 = asfloat(_31_Load4((_460 + 2u) * 16 + 0));
    _479 = asfloat(_31_Load4(_460 * 16 + 0));
    // RenoDX code end
  } else {
    _478 = _22_m0[_12]._m0[2];
    _479 = _22_m0[_12]._m0[0];
  }
  float4 _485 = _57.SampleBias(_25, _3, _19_m16);
  float3 _490 = _485.xyz * _50_m24.xyz;
  float4 _494 = _58.SampleBias(_25, _3, _19_m16);
  float _495 = _494.x;
  float _497 = _494.z;
  float _499 = 1.0f - _494.w;
  float _503 = _485.w * _50_m24.w;
  float3 _507 = _4 + _17_m11.xyz;
  float3 _511 = _507 - float3(_479.w, _421, _478.w);
  _511.y = 6.103515625e-05f;
  float3 _514 = normalize(_511);
  float4 _527 = _59.SampleBias(_25, _3, _19_m16);
  _527.w = _527.w * _527.x;
  float2 _536 = (_527.wy * 2.0f) - 1.0f.xx;
  float3 _537 = float3(_536.x, _536.y, _419.z);
  float2 _538 = _536.xy;
  _537.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_538, _538), 0.0f, 1.0f)));
  float2 _546 = _537.xy * _50_m3;
  float3 _552 = _490 * _50_m18;
  float3 _556 = lerp(dot(_552, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _552, _50_m19.xxx);
  float3 _557 = mul(float3(_546.x, _546.y, _537.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
  float _566 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
  float3 _567 = (_557 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_557, _557)))) * _566;
  float3 _568 = normalize(_5) * _566;
  uint2 _570 = uint2(gl_FragCoord.xy);
  float3 _580 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _589 = asuint((_19_m92.x > 0.5f) ? _19_m92.y : _22_m0[_12]._m7.x);
  float4 _602 = float4(float(_589 & 255u), float((_589 >> 8u) & 255u), float((_589 >> 16u) & 255u), float((_589 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _603 = _602.x;
  float _606 = _602.w;
  float _612 = _507.y;
  float _615 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m92.w, _19_m92.x) - _612) * _602.y;
  float _616 = max(_602.z, _615);
  float _625 = lerp(_19_m22.x, 1.0f, _19_m94.w) * _19_m20.x;
  float4 _1120;
  float3 _1121;
  float3 _1122;
  float _1123;
  if (_19_m83.y < 0.5f) {
    float3 _640 = _507 - (_19_m108.xyz + (_580 * (-_19_m110.w)));
    float _655 = max(min(max((max(abs(_640.x), abs(_640.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_640.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _957;
    float4 _958;
    float4 _959;
    float _960;
    float _961;
    if ((_19_m108.w != 0.0f) && (_655 < 1.0f)) {
      float3 _668 = _507 - (_19_m108.xyz + (_580 * (-_19_m110.y)));
      float _682 = max(clamp((max(abs(_668.x), abs(_668.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_668.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _758;
      float4 _759;
      float4 _760;
      float4 _761;
      if (_682 < 1.0f) {
        float3 _691 = ((_507 * 2.0f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _693 = _691 - floor(_691);
        float4 _697 = _43.SampleLevel(_25, _693, 0.0f);
        float _698 = 1.0f - _682;
        float _702 = _19_m109.y * 0.5f;
        float _707 = _693.x;
        float _708 = clamp(_693.y, _702, 1.0f - _702) * 0.3333333432674407958984375f;
        float _709 = _693.z;
        float4 _712 = _44.SampleLevel(_24, float3(_707, _708, _709), 0.0f);
        float _728 = _697.x;
        float _738 = _697.y;
        float _748 = _697.z;
        _758 = _655 + (_712.w * _698);
        _759 = float4(((_44.SampleLevel(_24, float3(_707, _708 + 0.666666686534881591796875f, _709), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _748, _748) * _698;
        _760 = float4(((_44.SampleLevel(_24, float3(_707, _708 + 0.3333333432674407958984375f, _709), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _738, _738) * _698;
        _761 = float4(((_712.xyz * 4.0f) - 2.0f.xxx) * _728, _728) * _698;
      } else {
        _758 = _655;
        _759 = 0.0f.xxxx;
        _760 = 0.0f.xxxx;
        _761 = 0.0f.xxxx;
      }
      float3 _767 = _507 - (_19_m108.xyz + (_580 * (-_19_m110.z)));
      float _781 = max(clamp((max(abs(_767.x), abs(_767.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_767.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _861;
      float4 _862;
      float4 _863;
      float4 _864;
      if (_781 < 1.0f) {
        float3 _790 = ((_507 * 0.5f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _792 = _790 - floor(_790);
        float4 _796 = _45.SampleLevel(_25, _792, 0.0f);
        float _798 = _682 * (1.0f - _781);
        float _802 = _19_m109.y * 0.5f;
        float _807 = _792.x;
        float _808 = clamp(_792.y, _802, 1.0f - _802) * 0.3333333432674407958984375f;
        float _809 = _792.z;
        float4 _812 = _46.SampleLevel(_24, float3(_807, _808, _809), 0.0f);
        float _828 = _796.x;
        float _839 = _796.y;
        float _850 = _796.z;
        _861 = _758 + (_812.w * _798);
        _862 = _759 + (float4(((_46.SampleLevel(_24, float3(_807, _808 + 0.666666686534881591796875f, _809), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _850, _850) * _798);
        _863 = _760 + (float4(((_46.SampleLevel(_24, float3(_807, _808 + 0.3333333432674407958984375f, _809), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _839, _839) * _798);
        _864 = _761 + (float4(((_812.xyz * 4.0f) - 2.0f.xxx) * _828, _828) * _798);
      } else {
        _861 = _758;
        _862 = _759;
        _863 = _760;
        _864 = _761;
      }
      float4 _947;
      float4 _948;
      float4 _949;
      float _950;
      if (_781 > 0.0f) {
        float3 _873 = ((_507 * 0.125f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _876 = _19_m109.xyz * 0.5f;
        float3 _878 = clamp(_873 - floor(_873), _876, 1.0f.xxx - _876);
        float4 _882 = _47.SampleLevel(_25, _878, 0.0f);
        float _884 = _781 * (1.0f - _655);
        float _888 = _19_m109.y * 0.5f;
        float _893 = _878.x;
        float _894 = clamp(_878.y, _888, 1.0f - _888) * 0.3333333432674407958984375f;
        float _895 = _878.z;
        float4 _898 = _48.SampleLevel(_24, float3(_893, _894, _895), 0.0f);
        float _914 = _882.x;
        float _925 = _882.y;
        float _936 = _882.z;
        _947 = _862 + (float4(((_48.SampleLevel(_24, float3(_893, _894 + 0.666666686534881591796875f, _895), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _936, _936) * _884);
        _948 = _863 + (float4(((_48.SampleLevel(_24, float3(_893, _894 + 0.3333333432674407958984375f, _895), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _925, _925) * _884);
        _949 = _864 + (float4(((_898.xyz * 4.0f) - 2.0f.xxx) * _914, _914) * _884);
        _950 = _861 + (_898.w * _884);
      } else {
        _947 = _862;
        _948 = _863;
        _949 = _864;
        _950 = _861;
      }
      float _953 = clamp((_950 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _957 = _947;
      _958 = _948;
      _959 = _949;
      _960 = _953 - _655;
      _961 = (_953 + _655) * 0.5f;
    } else {
      _957 = 0.0f.xxxx;
      _958 = 0.0f.xxxx;
      _959 = 0.0f.xxxx;
      _960 = 0.0f;
      _961 = 1.0f;
    }
    float4 _981 = _959 + float4(_19_m111.x * _961, (_19_m111.y * _961) + ((_19_m111.w * _960) * 0.5f), _19_m111.z * _961, (_19_m111.w * _961) + ((_19_m111.y * _960) * 0.375f));
    float4 _1001 = _958 + float4(_19_m112.x * _961, (_19_m112.y * _961) + ((_19_m112.w * _960) * 0.5f), _19_m112.z * _961, (_19_m112.w * _961) + ((_19_m112.y * _960) * 0.375f));
    float4 _1021 = _957 + float4(_19_m113.x * _961, (_19_m113.y * _961) + ((_19_m113.w * _960) * 0.5f), _19_m113.z * _961, (_19_m113.w * _961) + ((_19_m113.y * _960) * 0.375f));
    float4 _1025 = float4(_567, 1.0f);
    float3 _1031 = max(float3(dot(_981, _1025), dot(_1001, _1025), dot(_1021, _1025)), 0.0f.xxx) * _625;
    float3 _1039 = ((_981.xyz * 0.2125999927520751953125f) + (_1001.xyz * 0.715200006961822509765625f)) + (_1021.xyz * 0.072200000286102294921875f);
    float3 _1043 = _1039 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1039, _1039)));
    float _1045 = abs(_1043.y);
    float3 _1046 = _1043;
    _1046.y = _1045;
    float4 _1047 = float4(_1046.x, _1046.y, _1046.z, 0.0f.xxxx.w);
    _1047.w = 1.0f;
    float4 _1051 = float4(_1043.x, _1045, _1043.z, 1.0f);
    float3 _1056 = max(float3(dot(_981, _1051), dot(_1001, _1051), dot(_1021, _1051)), 0.0f.xxx);
    float _1064 = _1031.z;
    float _1065 = _1031.y;
    float4 _1070 = lerp(float4(_1064, _1065, -1.0f, 0.666666686534881591796875f), float4(_1065, _1064, 0.0f, -0.3333333432674407958984375f), step(_1064, _1065).xxxx);
    float _1071 = _1031.x;
    float _1072 = _1070.x;
    float4 _1080 = lerp(float4(_1072, _1070.yw, _1071), float4(_1071, _1070.yz, _1072), step(_1072, _1071).xxxx);
    float _1081 = _1080.x;
    float _1082 = _1080.w;
    float _1083 = _1080.y;
    float _1085 = _1081 - min(_1082, _1083);
    float _1095 = frac(abs(_1080.z + ((_1082 - _1083) / ((6.0f * _1085) + 9.9999997473787516355514526367188e-05f))));
    float _1102 = min(_1085 / (_1081 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1095 - 0.5f))) * clamp(_1081, 0.0f, 1.0f));
    float _1104 = 2.0f / (2.0f - _1102);
    _1120 = _1047;
    _1121 = _1031;
    _1122 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1095, _1102, _1104).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1102.xxx) * _1104;
    _1123 = max(max(max(_1056.x, _1056.y), _1056.z), 0.0f) * _625;
  } else {
    _1120 = 0.0f.xxxx;
    _1121 = 1.0f.xxx;
    _1122 = _19_m84.xyz;
    _1123 = _625;
  }
  float _1141 = 1.0f - _50_m30;
  float _1142 = _1141 * _1141;
  float _1143 = max(_1142, 0.0078125f);
  float4 _1147 = _53.SampleBias(_25, _3, _19_m16);
  float _1148 = _1147.x;
  float3 _1155 = _50_m34.xyz * lerp(0.039999999105930328369140625f, 1.0f, _50_m31);
  float3 _1159 = lerp(_568, _567, _50_m32.xxx);
  float3 _1867;
  float _1868;
  float _1869;
  float _1870;
  float3 _1871;
  float3 _1872;
  [branch] if ((clamp(_603 + _616, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f) {
    float _1172 = 1.0f - _495;
    bool3 _1178 = _465.xxx;
    float3 _1180 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1184 = float3(_1178.x ? _1180.x : _10.x, _1178.y ? _1180.y : _10.y, _1178.z ? _1180.z : _10.z) * _19_m92.z;
    float3 _1186 = float3(_1178.x ? _9.xzy.x : _9.x, _1178.y ? _9.xzy.y : _9.y, _1178.z ? _9.xzy.z : _9.z);
    float3 _1188 = abs(_1186) - 0.20000000298023223876953125f.xxx;
    float3 _1191 = max((_1188 * _1188) * _1188, 6.103515625e-05f.xxx);
    float3 _1194 = _1191 / dot(_1191, 1.0f.xxx).xxx;
    float2 _1202 = _1184.xy;
    float2 _1207 = _1184.zy;
    float4 _1217 = ((_54.SampleBias(_25, _1184.xz, _19_m16) * _1194.y) + (_54.SampleBias(_25, _1202, _19_m16) * _1194.z)) + (_54.SampleBias(_25, _1207, _19_m16) * _1194.x);
    float _1218 = _1217.w;
    float _1220 = 1.10000002384185791015625f - _1218;
    float _1229 = max(smoothstep(0.800000011920928955078125f - _1218, _1220, clamp((_603 * _1172) + (_567.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1218, _1220, clamp(_615 * _1172, 0.0f, 1.0f)));
    float _1236 = smoothstep(0.5f, 0.75f, _495);
    float _1237 = lerp(0.0f, smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_490 * _1172, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))), _1148);
    float _1239 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, lerp(_499, _1141, _1148));
    float _1242 = clamp(_1239 + _1236, 0.0f, 1.0f) * max(_603, _616);
    bool _1246 = !((step(_603, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _616)) != 0.0f);
    bool2 _1247 = _1246.xx;
    float2 _1249 = (1.0f - _616).xx;
    float2 _1250 = float2(_1247.x ? float2(3.0f, 4.345600128173828125f).x : _1249.x, _1247.y ? float2(3.0f, 4.345600128173828125f).y : _1249.y);
    float _1251 = 1.0f - _1242;
    float _1254 = _1246 ? _19_m10.x : 1.0f;
    float _1256 = _1254 * _1250.x;
    float _1258 = _1254 * _1250.y;
    float3 _1259 = _1184 * 20.0f;
    float3 _1260 = _1184 * 34.345600128173828125f;
    float3 _1262 = pow(max(_1188, 0.0f.xxx), 10.0f.xxx);
    float3 _1266 = _1262 / max(dot(_1262, 1.0f.xxx), 6.103515625e-05f).xxx;
    float _1268 = _1266.y;
    float2 _1269 = _1259.xz * 1.0f;
    float2 _1270 = floor(_1269);
    float2 _1273 = frac(_1270 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1277 = _1273 + dot(_1273, _1273 + 34.345001220703125f.xx).xx;
    float _1278 = _1277.x;
    float _1279 = _1277.y;
    float2 _1283 = frac(float2(_1278 * _1279, _1278 + _1279));
    float2 _1286 = frac((_1270 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1290 = _1286 + dot(_1286, _1286 + 34.345001220703125f.xx).xx;
    float _1291 = _1290.x;
    float _1292 = _1290.y;
    float2 _1296 = frac(float2(_1291 * _1292, _1291 + _1292));
    float _1302 = _1283.x;
    float _1304 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1302);
    float2 _1305 = ((_1269 - _1270) + ((((_1296 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1308 = _1305.y;
    float2 _1312 = float2(_1305.x * 1.25f, _1308 * ((_1308 < 0.0f) ? 1.25f : 0.75f));
    float _1315 = _1256 + _1302;
    float _1319 = _1246 ? frac(_1315) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1315, 0.0f, 1.0f));
    float _1331 = _1283.y;
    float _1334 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1319) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1319)) * step(0.001000000047497451305389404296875f, smoothstep(_1304, 0.0f, length(_1312)))) * step(_1251, _1331 - 0.100000001490116119384765625f);
    float _1337 = _1334 * _1268;
    float _1345 = _1266.z;
    float2 _1346 = _1259.xy * 1.0f;
    float2 _1347 = floor(_1346);
    float2 _1350 = frac(_1347 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1354 = _1350 + dot(_1350, _1350 + 34.345001220703125f.xx).xx;
    float _1355 = _1354.x;
    float _1356 = _1354.y;
    float2 _1360 = frac(float2(_1355 * _1356, _1355 + _1356));
    float2 _1363 = frac((_1347 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1367 = _1363 + dot(_1363, _1363 + 34.345001220703125f.xx).xx;
    float _1368 = _1367.x;
    float _1369 = _1367.y;
    float2 _1373 = frac(float2(_1368 * _1369, _1368 + _1369));
    float _1379 = _1360.x;
    float _1381 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1379);
    float2 _1382 = ((_1346 - _1347) + ((((_1373 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1385 = _1382.y;
    float2 _1389 = float2(_1382.x * 1.25f, _1385 * ((_1385 < 0.0f) ? 1.25f : 0.75f));
    float _1392 = _1256 + _1379;
    float _1396 = _1246 ? frac(_1392) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1392, 0.0f, 1.0f));
    float _1408 = _1360.y;
    float _1411 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1396) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1396)) * step(0.001000000047497451305389404296875f, smoothstep(_1381, 0.0f, length(_1389)))) * step(_1251, _1408 - 0.100000001490116119384765625f);
    float _1414 = _1411 * _1345;
    float _1422 = _1266.x;
    float2 _1423 = _1259.zy * 1.0f;
    float2 _1424 = floor(_1423);
    float2 _1427 = frac(_1424 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1431 = _1427 + dot(_1427, _1427 + 34.345001220703125f.xx).xx;
    float _1432 = _1431.x;
    float _1433 = _1431.y;
    float2 _1437 = frac(float2(_1432 * _1433, _1432 + _1433));
    float2 _1440 = frac((_1424 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1444 = _1440 + dot(_1440, _1440 + 34.345001220703125f.xx).xx;
    float _1445 = _1444.x;
    float _1446 = _1444.y;
    float2 _1450 = frac(float2(_1445 * _1446, _1445 + _1446));
    float _1456 = _1437.x;
    float _1458 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1456);
    float2 _1459 = ((_1423 - _1424) + ((((_1450 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1462 = _1459.y;
    float2 _1466 = float2(_1459.x * 1.25f, _1462 * ((_1462 < 0.0f) ? 1.25f : 0.75f));
    float _1469 = _1256 + _1456;
    float _1473 = _1246 ? frac(_1469) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1469, 0.0f, 1.0f));
    float _1485 = _1437.y;
    float _1488 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1473) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1473)) * step(0.001000000047497451305389404296875f, smoothstep(_1458, 0.0f, length(_1466)))) * step(_1251, _1485 - 0.100000001490116119384765625f);
    float _1491 = _1488 * _1422;
    float2 _1504 = (float4(((clamp(_1312 / _1304.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1296.x)) * _1334) * _1268, _1337, _1331).xy + float4(((clamp(_1389 / _1381.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1373.x)) * _1411) * _1345, _1414, _1408).xy) + float4(((clamp(_1466 / _1458.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1450.x)) * _1488) * _1422, _1491, _1485).xy;
    float _1506 = max(_1491, max(_1337, _1414));
    float4 _1509 = float4(_1504, _1506, 0.0f);
    float2 _1511 = _1260.xz * 1.0f;
    float2 _1512 = floor(_1511);
    float2 _1515 = frac(_1512 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1519 = _1515 + dot(_1515, _1515 + 34.345001220703125f.xx).xx;
    float _1520 = _1519.x;
    float _1521 = _1519.y;
    float2 _1525 = frac(float2(_1520 * _1521, _1520 + _1521));
    float2 _1528 = frac((_1512 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1532 = _1528 + dot(_1528, _1528 + 34.345001220703125f.xx).xx;
    float _1533 = _1532.x;
    float _1534 = _1532.y;
    float2 _1538 = frac(float2(_1533 * _1534, _1533 + _1534));
    float _1544 = _1525.x;
    float _1546 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1544);
    float2 _1547 = ((_1511 - _1512) + ((((_1538 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1550 = _1547.y;
    float2 _1554 = float2(_1547.x * 1.25f, _1550 * ((_1550 < 0.0f) ? 1.25f : 0.75f));
    float _1557 = _1258 + _1544;
    float _1561 = _1246 ? frac(_1557) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1557, 0.0f, 1.0f));
    float _1573 = _1525.y;
    float _1576 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1561) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1561)) * step(0.001000000047497451305389404296875f, smoothstep(_1546, 0.0f, length(_1554)))) * step(_1251, _1573 - 0.100000001490116119384765625f);
    float _1579 = _1576 * _1268;
    float2 _1584 = _1260.xy * 1.0f;
    float2 _1585 = floor(_1584);
    float2 _1588 = frac(_1585 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1592 = _1588 + dot(_1588, _1588 + 34.345001220703125f.xx).xx;
    float _1593 = _1592.x;
    float _1594 = _1592.y;
    float2 _1598 = frac(float2(_1593 * _1594, _1593 + _1594));
    float2 _1601 = frac((_1585 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1605 = _1601 + dot(_1601, _1601 + 34.345001220703125f.xx).xx;
    float _1606 = _1605.x;
    float _1607 = _1605.y;
    float2 _1611 = frac(float2(_1606 * _1607, _1606 + _1607));
    float _1617 = _1598.x;
    float _1619 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1617);
    float2 _1620 = ((_1584 - _1585) + ((((_1611 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1623 = _1620.y;
    float2 _1627 = float2(_1620.x * 1.25f, _1623 * ((_1623 < 0.0f) ? 1.25f : 0.75f));
    float _1630 = _1258 + _1617;
    float _1634 = _1246 ? frac(_1630) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1630, 0.0f, 1.0f));
    float _1646 = _1598.y;
    float _1649 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1634) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1634)) * step(0.001000000047497451305389404296875f, smoothstep(_1619, 0.0f, length(_1627)))) * step(_1251, _1646 - 0.100000001490116119384765625f);
    float _1652 = _1649 * _1345;
    float2 _1657 = _1260.zy * 1.0f;
    float2 _1658 = floor(_1657);
    float2 _1661 = frac(_1658 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1665 = _1661 + dot(_1661, _1661 + 34.345001220703125f.xx).xx;
    float _1666 = _1665.x;
    float _1667 = _1665.y;
    float2 _1671 = frac(float2(_1666 * _1667, _1666 + _1667));
    float2 _1674 = frac((_1658 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1678 = _1674 + dot(_1674, _1674 + 34.345001220703125f.xx).xx;
    float _1679 = _1678.x;
    float _1680 = _1678.y;
    float2 _1684 = frac(float2(_1679 * _1680, _1679 + _1680));
    float _1690 = _1671.x;
    float _1692 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1690);
    float2 _1693 = ((_1657 - _1658) + ((((_1684 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1696 = _1693.y;
    float2 _1700 = float2(_1693.x * 1.25f, _1696 * ((_1696 < 0.0f) ? 1.25f : 0.75f));
    float _1703 = _1258 + _1690;
    float _1707 = _1246 ? frac(_1703) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1703, 0.0f, 1.0f));
    float _1719 = _1671.y;
    float _1722 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1707) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1707)) * step(0.001000000047497451305389404296875f, smoothstep(_1692, 0.0f, length(_1700)))) * step(_1251, _1719 - 0.100000001490116119384765625f);
    float _1725 = _1722 * _1422;
    float2 _1733 = (float4(((clamp(_1554 / _1546.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1538.x)) * _1576) * _1268, _1579, _1573).xy + float4(((clamp(_1627 / _1619.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1611.x)) * _1649) * _1345, _1652, _1646).xy) + float4(((clamp(_1700 / _1692.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1684.x)) * _1722) * _1422, _1725, _1719).xy;
    float4 _1738 = float4(_1733, max(_1725, max(_1579, _1652)), 0.0f);
    float _1740 = step(max(float2(_1304 * _1334, _421) * _1268, max(float2(_1381 * _1411, _421) * _1345, float2(_1458 * _1488, _421) * _1422)).x, 0.00999999977648258209228515625f);
    float2 _1744 = _1509.xy + (_1738.xy * _1740);
    float3 _1753 = float3((_1217.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1744.x, _1744.y, 0.0f.xxx.z);
    float2 _1757 = float2(0.0f, (_19_m10.x * _19_m92.z) * 0.75f);
    float3 _1760 = float3(_1186.x, 0.0f, _1186.z);
    float3 _1766 = abs(_1760 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1760, _1760)))) - 0.20000000298023223876953125f.xxx;
    float3 _1769 = max((_1766 * _1766) * _1766, 6.103515625e-05f.xxx);
    float3 _1772 = _1769 / dot(_1769, 1.0f.xxx).xxx;
    float _1791 = _1772.z;
    float _1793 = _1772.x;
    float4 _1795 = (_55.SampleBias(_25, _1202, _19_m16) * _1791) + (_55.SampleBias(_25, _1207, _19_m16) * _1793);
    float2 _1807 = _1753.xy + ((((_1795.xy * 2.0f) - 1.0f.xx) * ((_55.SampleBias(_25, _1202 + _1757, _19_m16).w * _1791) + (_55.SampleBias(_25, _1207 + _1757, _19_m16).w * _1793))) * _1242);
    float3 _1808 = float3(_1807.x, _1807.y, _1753.z);
    float _1809 = _1795.z;
    float _1814 = max(max(max(_1509.zw * step(0.00999999977648258209228515625f, _1506), _1738.zw * _1740).x, step(1.0099999904632568359375f - _1242, _1217.z)), smoothstep(1.0f - _1809, 1.10000002384185791015625f - _1809, _1242) * _1242);
    float2 _1815 = _1807.xy;
    _1808.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1815, _1815), 0.0f, 1.0f)));
    float3 _1822 = normalize(_1808);
    float3 _1823 = cross(_567, float3(0.0f, 1.0f, 0.0f));
    bool3 _1826 = (dot(_1823, _1823) > 6.103515625e-05f).xxx;
    float3 _1827 = normalize(_1823);
    float3 _1828 = float3(_1826.x ? _1827.x : float3(1.0f, 0.0f, 0.0f).x, _1826.y ? _1827.y : float3(1.0f, 0.0f, 0.0f).y, _1826.z ? _1827.z : float3(1.0f, 0.0f, 0.0f).z);
    float _1839 = min(_499, 0.0500000007450580596923828125f);
    float _1840 = lerp(_499, _1839, _1814);
    float _1859 = lerp(1.0f, 0.5f, (_1229 * (1.0f - _1237)) * (1.0f - _1239));
    _1867 = normalize(lerp(_567, normalize(((_1828 * _1822.x) + (cross(_1828, _567) * _1822.y)) + (_567 * _1822.z)), _1814.xxx));
    _1868 = _1814;
    _1869 = lerp(_1839, min(_1141, _1839), _1148);
    _1870 = max(_1840 - ((0.20000000298023223876953125f * _1237) * _1229), min(0.20000000298023223876953125f, _1840));
    _1871 = _556 * _1859;
    _1872 = lerp(_490, _490 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_490, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1814 * _1236).xxx) * _1859;
  }
  else {
    _1867 = _567;
    _1868 = 0.0f;
    _1869 = 0.00999999977648258209228515625f;
    _1870 = _499;
    _1871 = _556;
    _1872 = _490;
  }
  float3 _2002;
  float _2003;
  float3 _2004;
  float3 _2005;
  float _2006;
  [branch] if ((_606 - _50_m20) > 0.00999999977648258209228515625f) {
    bool3 _1877 = _465.xxx;
    float3 _1879 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1880 = float3(_1877.x ? _1879.x : _10.x, _1877.y ? _1879.y : _10.y, _1877.z ? _1879.z : _10.z);
    float3 _1883 = _1880 * _19_m92.z;
    float3 _1885 = float3(_1877.x ? _9.xzy.x : _9.x, _1877.y ? _9.xzy.y : _9.y, _1877.z ? _9.xzy.z : _9.z);
    float3 _1887 = abs(_1885) - 0.20000000298023223876953125f.xxx;
    float3 _1890 = max((_1887 * _1887) * _1887, 6.103515625e-05f.xxx);
    float3 _1893 = _1890 / dot(_1890, 1.0f.xxx).xxx;
    float4 _1916 = ((_56.SampleBias(_25, _1883.xz, _19_m16) * _1893.y) + (_56.SampleBias(_25, _1883.xy, _19_m16) * _1893.z)) + (_56.SampleBias(_25, _1883.zy, _19_m16) * _1893.x);
    float _1917 = _1885.y;
    float _1924 = clamp(_606 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1880.y) * clamp(_606 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1930 = _1924 * (2.0f - _1924);
    float _1937 = smoothstep(2.0f - _1930, 2.349999904632568359375f - _1930, ((_1917 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1916.z) * ((_497 * _497) * float(gl_FrontFacing));
    float _1949 = lerp(1.0f, 0.5f, ((_1924 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1872 * (1.0f - _495), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1916.w) * ((_1917 * 0.25f) + 0.75f));
    float3 _1951 = _1937.xxx;
    float2 _1957 = (_1916.xy * 2.0f) - 1.0f.xx;
    float3 _1958 = float3(_1957.x, _1957.y, _419.z);
    float2 _1959 = _1957.xy;
    _1958.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1959, _1959), 0.0f, 1.0f)));
    float2 _1967 = _1958.xy * 2.0f;
    float3 _1969 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1967.x, _1967.y, _1958.z), _1951);
    float3 _1973 = _1969 * rsqrt(max(6.103515625e-05f, dot(_1969, _1969)));
    float _1974 = _567.y;
    float _1977 = step(0.00999999977648258209228515625f, 1.0f - (_1974 * _1974));
    float _1981 = lerp(_567.z, _1974, _1977);
    float3 _1988 = (float3(0.0f, _1977, 1.0f - _1977) - (_567 * _1981)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1981 * _1981)));
    _2002 = ((cross(_1988, _567) * _1973.x) + (_1988 * _1973.y)) + (_567 * _1973.z);
    _2003 = lerp(_1870, 0.89999997615814208984375f, clamp(_1937 * 4.0f, 0.0f, 1.0f));
    _2004 = lerp(_1871 * _1949, 0.3079999983310699462890625f.xxx, _1951);
    _2005 = lerp(_1872 * _1949, 0.87999999523162841796875f.xxx, _1951);
    _2006 = lerp(_495, 0.0f, _1937);
  }
  else {
    _2002 = _567;
    _2003 = _1870;
    _2004 = _1871;
    _2005 = _1872;
    _2006 = _495;
  }
  float _2008 = 0.959999978542327880859375f - (_2006 * 0.959999978542327880859375f);
  float3 _2009 = _2005 * _2008;
  float3 _2012 = lerp(0.039999999105930328369140625f.xxx * _494.y, _2005, _2006.xxx);
  float3 _2013 = _2004 * _2008;
  float _2015 = max(_2003 * _2003, 0.0078125f);
  bool _2022 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
  float2 _2035 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _2035.y = -_2035.y;
  float2 _2051 = lerp(((sqrt(sqrt(abs(_2035 * 0.5f))) * float2(int2(sign(_2035)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2022).xx);
  float4 _2053 = float4(_2051.x, _2051.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2053.z = 1.0f;
  _2053.w = _2022 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2066 = lerp(-_33_m0.xyz, _19_m93.xyz, _19_m83.w.xxx);
  float3 _2070 = normalize(float3(_2066.x, 6.103515625e-05f, _2066.z));
  float3 _2080 = lerp(_33_m3.xyz, _19_m87.xyz, _19_m94.y.xxx);
  float3 _2086 = _2080 * lerp(_33_m3.w, _19_m87.w, _19_m94.w);
  int _2090 = int(_570.x);
  int _2091 = int(_570.y);
  float4 _2095 = _41.Load(int3(int3(_2090, _2091, 0).xy, 0));
  float _2100 = _2095.y;
  float _2103 = lerp(lerp(1.0f, _2095.x, _37_m6.x), 1.0f, _19_m83.z);
  float _2104 = dot(_2002, _2066);
  float3 _2111 = _2013 * _19_m82.z;
  float3 _2112 = _2111 * 0.64999997615814208984375f;
  float _2116 = dot(_2009, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2129 = clamp(-dot(_2070.xz, normalize(_580.xz)), 0.0f, 1.0f);
  float _2133 = 1.0f - _19_m94.x;
  float4 _2147 = _51.SampleLevel(_24, float2((clamp(lerp(_2104, ((-_2104) * ((_2104 * 0.5f) - 1.0f)) + 0.5f, (_2129 * smoothstep(0.25f, 0.75f, 1.0f - abs(_580.y))) * _2133) + (_19_m93.w * _19_m94.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2148 = _2147.w;
  float _2150 = _2147.x;
  float _2151 = _2147.y;
  float _2152 = _2147.z;
  float _2157 = max(max(_2150, _2151), _2152) - min(min(_2150, _2151), _2152);
  float4 _2165 = _51.SampleLevel(_24, float2((dot(_2002, _580) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2166 = _2165.w;
  float _2167 = _497 * _2100;
  float _2174 = min(min(_2100, _497), _2148);
  float _2175 = _2166 * _2167;
  float3 _2179 = ((clamp(dot(_567, _19_m88.xyz) + _19_m89.x, 0.0f, 1.0f) * _19_m89.y) + _19_m89.z).xxx * lerp(_1122, 1.0f.xxx, (_19_m83.y * _2174).xxx);
  float3 _2181 = _2174.xxx;
  float3 _2204 = _2103.xxx;
  float3 _2205 = lerp((_2179 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1123), 1.5f), clamp(_1123, 1.25f, 1.75f), _19_m83.x)) * _19_m82.w, (lerp(dot(_2086, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2086, _2181) + ((_2179 * clamp(_1123, 0.0f, 1.5f)) * ((1.0f - _19_m94.y).xxx + (_2080 * _19_m94.y)))) * _19_m82.y, _2204);
  float3 _2206 = lerp(lerp(lerp(dot(_2112, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2112, 1.2000000476837158203125f.xxx), _2111, clamp((_2167 * _2166) + _2148, 0.0f, 1.0f).xxx), _2009, _2181);
  float3 _2212 = _2206 * ((1.0f - _2157).xxx + (_2147.xyz * _2157));
  float3 _2221 = lerp(lerp(_2111, lerp(_2116.xxx, _2009, 1.2000000476837158203125f.xxx), _2175.xxx), _2212 * clamp(dot(_2206, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2212, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2204);
  float4 _2225 = float4(_2221, _2103);
  float _2227 = lerp(_2175, _2174, _2103);
  float _2230 = lerp(_19_m82.z, 1.0f, _2227);
  float3 _2238 = float3(_580.x, lerp(0.5f, _2066.y, _2103), _580.z);
  float3 _2249 = normalize(((_2066 * _2103) + ((_2238 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2238, _2238)))) * 2.0f)) + (_456 * (2.0f + _2103)));
  float _2251 = clamp(dot(_1867, _456), 0.0f, 1.0f);
  float _2252 = dot(_1867, _2249);
  float _2253 = _2015 * _2015;
  float _2257 = (((_2252 * _2253) - _2252) * _2252) + 1.0f;
  float _2258 = _2257 * _2257;
  float _2262 = 2.0f * _2251;
  float _2264 = (1.0f + _2251) - _2251;
  float3 _2272 = _2012 * clamp((((_2253 != _2258) ? (_2253 / _2258) : 1.0f) * (0.5f / ((_2262 + (_2015 * _2264)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
  bool _2273 = _1148 > 0.001000000047497451305389404296875f;
  float3 _2323;
  float3 _2324;
  float3 _2325;
  if (_2273) {
    float _2278 = dot(_1159, _2249);
    float _2280 = clamp(dot(_1159, _456), 0.0f, 1.0f);
    float3 _2288 = _1155 * _52.SampleLevel(_24, float2(_2280 * _2280, 0.5f), 0.0f).xyz;
    float _2289 = 1.0f - clamp(dot(_456, _2249), 0.0f, 1.0f);
    float _2290 = _2289 * _2289;
    float _2292 = (_2289 * _2290) * _2290;
    float3 _2297 = ((_2288 * (1.0f - _2292)) + _2292.xxx) * _1148;
    float3 _2298 = 1.0f.xxx - _2297;
    float _2301 = _1143 * _1143;
    float _2305 = (((_2278 * _2301) - _2278) * _2278) + 1.0f;
    float _2306 = _2305 * _2305;
    _2323 = _2288;
    _2324 = lerp(1.0f.xxx, _2298, _1148.xxx);
    _2325 = (_2272 * (_2298 * _2298)) + clamp((_2297 * ((_2301 != _2306) ? (_2301 / _2306) : 1.0f)) * (0.5f / (((2.0f * _2280) + (_1143 * ((1.0f + _2280) - _2280))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
  } else {
    _2323 = _1155;
    _2324 = 1.0f.xxx;
    _2325 = _2272;
  }
  float _2335 = (1.0f - _50_m6) + (_503 * _50_m6);
  float3 _2337 = (((_2205 * _2221) * _2324) * _2335) + ((_2325 * ((_2205 * (((_2227 * 0.5f) + 0.5f) * _2230)) * 1.0f)) * _19_m95.w);
  float _2338 = dot(_2337, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2341 = clamp(_2338 - 0.5f, 0.0f, 0.5f);
  float3 _2377 = normalize(cross(_580, lerp(float3(_19_m91.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m91.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m91.y), _19_m97.w.xxx)));
  float _2383 = dot(_456, _2002);
  float _2385 = 1.0f - abs(_2383);
  float _2407 = dot(_2070, _2002);
  float _2419 = 1.0f - _2103;
  float _2446 = lerp(_2003, _1869, _1868);
  float _2447 = _2446 * _2446;
  float _2448 = _2251 * _2251;
  float _2449 = _2448 * _2251;
  float2 _2450 = float2(1.0f, _2251);
  float2 _2453 = float2(1.0f, _2447);
  float3 _2456 = float3(1.0f, _2447, (_2447 * _2447) * _2447);
  float _2461 = dot(mul(_2450, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2453) / dot(mul(float3(1.0f, _2448, _2449), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2456);
  float _2466 = dot(mul(_2450, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2453) / dot(mul(float3(1.0f, _2251, _2449), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2456);
  float3 _2469 = (_2012 * _2461) + _2466.xxx;
  float _2470 = _2461 + _2466;
  float3 _2476 = -_456;
  float3 _2477 = reflect(_2476, _1867);
  float _2482 = _2477.x;
  float _2484 = _2477.z;
  float3 _2487 = _2477;
  _2487.x = (_2482 * _19_m98.y) + (_2484 * _19_m98.x);
  _2487.z = (_2484 * _19_m98.y) - (_2482 * _19_m98.x);
  float3 _2502 = _61.SampleLevel(_24, _2487, (1.2000000476837158203125f * log2(max(_2446, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2469 + ((_2012 * ((1.0f - _2470) / _2470)) * _2469)) * 1.0f);
  float3 _2558;
  if (_2273) {
    float3 _2505 = reflect(_2476, _1159);
    float _2506 = _2505.x;
    float _2508 = _2505.z;
    float3 _2511 = _2505;
    _2511.x = (_2506 * _19_m98.y) + (_2508 * _19_m98.x);
    _2511.z = (_2508 * _19_m98.y) - (_2506 * _19_m98.x);
    float _2526 = clamp(dot(_1159, _456), 0.0f, 1.0f);
    float _2527 = _2526 * _2526;
    float _2528 = _2527 * _2526;
    float2 _2529 = float2(1.0f, _2526);
    float2 _2532 = float2(1.0f, _1142);
    float3 _2535 = float3(1.0f, _1142, (_1142 * _1142) * _1142);
    float _2540 = dot(mul(_2529, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2532) / dot(mul(float3(1.0f, _2527, _2528), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2535);
    float _2545 = dot(mul(_2529, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2532) / dot(mul(float3(1.0f, _2526, _2528), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2535);
    float3 _2548 = (_2323 * _2540) + _2545.xxx;
    float _2549 = _2540 + _2545;
    _2558 = _2502 + ((_61.SampleLevel(_24, _2511, (1.2000000476837158203125f * log2(max(_1141, 0.001000000047497451305389404296875f))) + 5.0f).xyz * (_2548 + ((_2323 * ((1.0f - _2549) / _2549)) * _2548))) * _1148);
  } else {
    _2558 = _2502;
  }
  float3 _2564 = lerp(_2338.xxx, _2337, ((_2341 * _2341) + 1.0f).xxx) + (((((_19_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m91.w), lerp(0.89999997615814208984375f, 0.5f, _19_m91.w), _2385)) * _19_m90.w) * min(min(clamp(dot(_514, _2377) + 1.0f, 0.0f, 1.0f), _497), _2100)) * (lerp(0.25f.xxx, _2009, _19_m91.z.xxx) * clamp(dot(_2377, _2002), 0.0f, 1.0f))) + ((((((lerp(_1121 * (1.0f / max(max(max(_1121.x, _1121.y), _1121.z) * 0.5f, 1.0f)), _2086, _2204) * clamp(lerp(dot(_1120.xyz, _2002) * _1120.w, ((-_2407) * ((_2407 * 0.5f) - 1.0f)) + 0.5f, _2103), 0.0f, 1.0f)) * ((_2419 + (_2129 * _2103)) * _2133)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2385)) * min(_497, _2100)) * (_2419 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2116) * _2103))) * max(0.1500000059604644775390625f.xxx, _2009)));
  float2 _2566 = float2(_570);
  float2 _2568 = floor(_2566 * 0.03125f);
  int _2576 = int((_2568.x + (_2568.y * _35_m9)) * 8.0f);
  float _2583 = floor(_437 - (_19_m3.y * _35_m15));
  float _2587 = clamp(_2583, 0.0f, _35_m11 - 1.0f);
  int _2589 = int(_2587 * 8.0f);
  float3 _2591;
  _2591 = _2564 + ((_2558 * ((clamp(_1123, 0.5f, 1.5f) * _19_m82.w) * _2230)) * _1122);
  float3 _2592;
  [loop] for (int _2594 = 0; _2594 <= 7; _2591 = _2592, _2594++) {
    uint _2615 = (_2583 <= _2587) ? (_29.Load(uint((_35_m2 + _2576) + _2594) * 4 + 0) & _29.Load(uint((_35_m3 + _2589) + _2594) * 4 + 0)) : 0u;
    uint _2616 = uint(_2594);
    _2592 = _2591;
    uint _2621;
    float3 _2618;
    [loop] for (uint _2620 = _2615; _2620 != 0u; _2592 = _2618, _2620 = _2621) {
      uint _2625 = firstbitlow(_2620);
      _2621 = _2620 ^ (1u << (_2625 & 31u));
      int _2631 = int((32u * _2616) + _2625) * 8;
      int _2634 = _2631 + 1;
      int _2637 = _2631 + 2;
      int _2640 = _2631 + 3;
      int _2643 = _2631 + 4;
      int _2646 = _2631 + 5;
      int _2649 = _2631 + 6;
      int _2652 = _2631 + 7;
      uint _2656 = uint(_33_m6[_2646].w);
      float _2731;
      if ((_2656 & 1u) == 1u) {
        uint _2662 = asuint(_33_m6[_2646].x);
        uint _2669 = asuint(_33_m6[_2646].y);
        uint _2676 = asuint(_33_m6[_2646].z);
        uint _2683 = asuint(_33_m6[_2649].x);
        uint _2690 = asuint(_33_m6[_2649].y);
        uint _2697 = asuint(_33_m6[_2649].z);
        float3 _2716 = abs(mul(float4(_507 - _33_m6[_2634].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2662).x, spvUnpackHalf2x16(_2676).x, spvUnpackHalf2x16(_2690).x, 0.0f), float4(spvUnpackHalf2x16(_2662 >> 16u).x, spvUnpackHalf2x16(_2676 >> 16u).x, spvUnpackHalf2x16(_2690 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2669).x, spvUnpackHalf2x16(_2683).x, spvUnpackHalf2x16(_2697).x, 0.0f), float4(spvUnpackHalf2x16(_2669 >> 16u).x, spvUnpackHalf2x16(_2683 >> 16u).x, spvUnpackHalf2x16(_2697 >> 16u).x, 0.0f))).xyz);
        float _2723 = _33_m6[_2652].x * 0.5f;
        float _2729 = 1.0f - clamp((max(max(_2716.x, _2716.y), _2716.z) - (_2723 + 0.5f)) / (0.5f - _2723), 0.0f, 1.0f);
        _2731 = _2729 * _2729;
      } else {
        _2731 = 1.0f;
      }
      if (false || (_2731 < 0.001000000047497451305389404296875f)) {
        _2618 = _2592;
        continue;
      }
      float3 _3563;
      do {
        uint _2739 = uint(_33_m6[_2631].w);
        [branch] if (_2739 >= 4u) {
          _3563 = _2592;
          break;
        }
        float3 _3562;
        if (_33_m6[_2631].w < 1.5f) {
          float3 _3561;
          do {
            uint _2750 = asuint(_33_m6[_2640].w);
            if ((_2750 == 16u) || ((_33_m6[_2640].z + _19_m94.z) < 0.5f)) {
              _3561 = _2592;
              break;
            }
            bool _2761 = (_2739 & 1u) == 0u;
            bool _2765 = (!_2761) && (_33_m6[_2637].z > 0.0f);
            bool _2766 = _2750 == 4u;
            float _2767 = float(_2761);
            float _2775 = (0.5f + (0.5f * _33_m6[_2637].y)) - abs(_33_m6[_2637].x);
            float _2776 = _33_m6[_2637].y - _2775;
            float _2783 = abs(max((1.0f - abs(_2775)) - abs(_2776), 0.00048828125f));
            float3 _2787 = normalize(float3(_2775, _2776, (_33_m6[_2637].x >= 0.0f) ? _2783 : (-_2783)));
            float _2793 = lerp(_33_m6[_2649].w, max(2.0f * _33_m6[_2643].y, 0.100000001490116119384765625f), float(_2766));
            float3 _2798 = _33_m6[_2634].xyz - _507;
            float3 _2799 = -_2787;
            float3 _2804 = lerp(_2798, _2799 * dot(_2798, _2799), (float(_2766 && (_33_m6[_2643].z > 0.5f)) * _2767).xxx);
            float _2805 = dot(_2804, _2804);
            float _2806 = rsqrt(_2805);
            float3 _2807 = _2804 * _2806;
            float3 _2840;
            float _2841;
            if (_2765) {
              float3 _2811 = (_2787 * _33_m6[_2637].z) * 0.5f;
              float3 _2812 = _2804 - _2811;
              float3 _2813 = _2804 + _2811;
              float _2814 = length(_2812);
              float _2815 = length(_2813);
              float3 _2824 = normalize(cross(cross(_2787, _2807), _2787));
              _2840 = _2824;
              _2841 = ((1.0f / ((((_2814 * _2815) + dot(_2812, _2813)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2824, _2812) / _2814) + (dot(_2824, _2813) / _2815)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_33_m6[_2637].z * _2806, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2840 = _2807;
              _2841 = 1.0f;
            }
            float _2863;
            if (_2793 < 0.0f) {
              float _2851 = _2805 * (_33_m6[_2634].w * _33_m6[_2634].w);
              float _2854 = clamp(1.0f - (_2851 * _2851), 0.0f, 1.0f);
              _2863 = lerp(1.0f / (_2805 + 1.0f), _2841, float(_2765)) * (_2854 * _2854);
            } else {
              float3 _2857 = _2804 * _33_m6[_2634].w;
              _2863 = _2841 * pow(1.0f - clamp(dot(_2857, _2857), 0.0f, 1.0f), _2793);
            }
            float _2868 = clamp((dot(_2840, _2799) - _33_m6[_2637].z) * _33_m6[_2637].w, 0.0f, 1.0f);
            float _2871 = _2863 * lerp(1.0f, _2868 * _2868, _2767);
            int _2873 = int(_33_m6[_2652].w);
            float _2977;
            if ((!_2765) && (_2873 >= 0)) {
              uint _2879 = uint(_2873);
              float2 _2970;
              [branch] if (_2767 != 0.0f) {
                float4 _2891 = mul(_64_m1[_2879], float4(_507.x, _612, _507.z, 1.0f));
                _2970 = _64_m0[_2879].xy + (clamp(_2891.xy / _2891.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2879].zw);
              }
              else {
                float3 _2911 = mul(float4(-_2804, 0.0f), _64_m1[_2879]).xyz;
                float3 _426 = _2911;
                float3 _425 = _2911;
                float3 _424 = abs(_2911);
                uint _2920 = uint(int(_424.y > _424.x));
                uint _2926 = (_424.z > _424[_2920]) ? 2u : _2920;
                uint _2932 = (_2926 * 2u) + uint(_425[_2926] < 0.0f);
                float _2936 = abs(_426[_2932 / 2u]);
                float _2956 = 0.5f - (0.000244140625f / _64_m0[_2879].w);
                _2970 = _64_m0[_2879].xy + (clamp(float2((float(_2932) + ((((_426[uint(_376[_2932].x)] * _377[_2932].x) / _2936) * _2956) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_426[uint(_376[_2932].y)] * _377[_2932].y) / _2936) * _2956)), 0.0f.xx, 1.0f.xx) * _64_m0[_2879].zw);
              }
              _2977 = _2871 * _62.SampleLevel(_24, _2970, 0.0f).x;
            } else {
              _2977 = _2871;
            }
            float _2978 = _2977 * _2731;
            float3 _3560;
            do {
              float3 _3559;
              [branch] if (_2978 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2766) {
                  _3560 = lerp(_2592, _33_m6[_2631].xyz, (_2978 * (_33_m6[_2643].x * ((1.0f - _33_m6[_2643].w) + (smoothstep(-0.5f, 0.5f, dot(_568, _2840)) * _33_m6[_2643].w)))).xxx);
                  break;
                }
                float _2998 = dot(_2002, _2840);
                float _2999 = clamp(_2998, 0.0f, 1.0f);
                float _3398;
                if (_2750 != 0u) {
                  bool _3005 = _2761 || ((_2656 & 2u) != 0u);
                  int _3055;
                  if (_3005) {
                    _3055 = int(_33_m6[_2640].x);
                  } else {
                    uint _3012 = asuint(_33_m6[_2637].w);
                    uint _3013 = asuint(_33_m6[_2640].x);
                    float3 _3014 = _507 - _33_m6[_2634].xyz;
                    float3 _3015 = abs(_3014);
                    float _3016 = _3015.x;
                    float _3017 = _3015.y;
                    float _3019 = _3015.z;
                    int _3052;
                    if ((_3016 > _3017) && (_3016 > _3019)) {
                      _3052 = int((_3014.x > 0.0f) ? (_3012 & 1023u) : ((_3012 >> 10u) & 1023u));
                    } else {
                      int _3051;
                      if (_3017 > _3019) {
                        _3051 = int((_3014.y > 0.0f) ? ((_3012 >> 20u) & 1023u) : (_3013 & 1023u));
                      } else {
                        _3051 = int((_3014.z > 0.0f) ? ((_3013 >> 10u) & 1023u) : ((_3013 >> 20u) & 1023u));
                      }
                      _3052 = _3051;
                    }
                    _3055 = (_3052 == 1023) ? (-1) : _3052;
                  }
                  bool _3056 = _3055 >= 0;
                  float _3397;
                  if (_3056) {
                    float3 _3060 = _507 - _33_m6[_2634].xyz;
                    uint _3070 = asuint(_37_m11.x) + (uint(_3055) * 96u);
                    uint _3072 = (_3070 + 64u) >> 2u;
                    uint _3075 = _3072 + 1u;
                    uint _3078 = _3072 + 2u;
                    uint _3081 = _3072 + 3u;
                    float4 _3085 = asfloat(uint4(_40.Load(_3072 * 4 + 0), _40.Load(_3075 * 4 + 0), _40.Load(_3078 * 4 + 0), _40.Load(_3081 * 4 + 0)));
                    uint _3093 = _3070 >> 2u;
                    uint _3108 = (_3070 + 16u) >> 2u;
                    uint _3123 = (_3070 + 32u) >> 2u;
                    uint _3138 = (_3070 + 48u) >> 2u;
                    float4 _3158 = mul(transpose(float4x4(asfloat(uint4(_40.Load(_3093 * 4 + 0), _40.Load((_3093 + 1u) * 4 + 0), _40.Load((_3093 + 2u) * 4 + 0), _40.Load((_3093 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3108 * 4 + 0), _40.Load((_3108 + 1u) * 4 + 0), _40.Load((_3108 + 2u) * 4 + 0), _40.Load((_3108 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3123 * 4 + 0), _40.Load((_3123 + 1u) * 4 + 0), _40.Load((_3123 + 2u) * 4 + 0), _40.Load((_3123 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3138 * 4 + 0), _40.Load((_3138 + 1u) * 4 + 0), _40.Load((_3138 + 2u) * 4 + 0), _40.Load((_3138 + 3u) * 4 + 0))))), float4((_507 - ((_3060 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3060, _3060)))) * _3085.x)) + (_568 * (_3085.y * 5.0f)), 1.0f));
                    float3 _3162 = _3158.xyz / _3158.w.xxx;
                    uint _3164 = (_3070 + 80u) >> 2u;
                    float4 _3177 = asfloat(uint4(_40.Load(_3164 * 4 + 0), _40.Load((_3164 + 1u) * 4 + 0), _40.Load((_3164 + 2u) * 4 + 0), _40.Load((_3164 + 3u) * 4 + 0)));
                    float2 _3178 = _3162.xy;
                    float2 _3180 = _3177.xy;
                    float3 _3184 = _3162.xyz;
                    bool3 _3185 = bool3(_3184.x <= 0.0f.xxx.x, _3184.y <= 0.0f.xxx.y, _3184.z <= 0.0f.xxx.z);
                    bool3 _3186 = bool3(_3184.x >= 1.0f.xxx.x, _3184.y >= 1.0f.xxx.y, _3184.z >= 1.0f.xxx.z);
                    float _3189 = _3162.z;
                    float2 _3200 = ((_3178 * (_3177.zw - _3180)) + _3180).xy * _37_m10.zw;
                    float2 _3202 = floor(_3200 + 0.5f.xx);
                    float2 _3203 = _3200 - _3202;
                    float _3204 = _3203.x;
                    float _3205 = _3204 + 0.5f;
                    float _3206 = _3205 * _3205;
                    float _3209 = 1.0f - _3204;
                    float _3210 = min(_3204, 0.0f);
                    float _3213 = _3204 + 1.0f;
                    float _3214 = max(_3204, 0.0f);
                    float _3225 = _3203.y;
                    float _3226 = _3225 + 0.5f;
                    float _3227 = _3226 * _3226;
                    float _3230 = 1.0f - _3225;
                    float _3231 = min(_3225, 0.0f);
                    float _3234 = _3225 + 1.0f;
                    float _3235 = max(_3225, 0.0f);
                    float3 _3247 = float3(0.1599999964237213134765625f * _3209, 0.1599999964237213134765625f * ((_3213 - (_3214 * _3214)) + 1.0f), _3206 * 0.07999999821186065673828125f);
                    float3 _3248 = float3(0.1599999964237213134765625f * ((_3206 * 0.5f) - _3204), 0.1599999964237213134765625f * ((_3209 - (_3210 * _3210)) + 1.0f), 0.1599999964237213134765625f * _3213) + _3247;
                    float3 _3250 = float3(0.1599999964237213134765625f * _3230, 0.1599999964237213134765625f * ((_3234 - (_3235 * _3235)) + 1.0f), _3227 * 0.07999999821186065673828125f);
                    float3 _3251 = float3(0.1599999964237213134765625f * ((_3227 * 0.5f) - _3225), 0.1599999964237213134765625f * ((_3230 - (_3231 * _3231)) + 1.0f), 0.1599999964237213134765625f * _3234) + _3250;
                    float3 _3257 = ((_3247 / _3248) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.xxx;
                    float3 _3259 = ((_3250 / _3251) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.yyy;
                    float2 _3261 = _3202 * _37_m10.xy;
                    float _3262 = _3257.x;
                    float _3263 = _3259.x;
                    float _3266 = _3257.y;
                    float _3269 = _3257.z;
                    float _3272 = _3259.y;
                    float _3279 = _3259.z;
                    float _3286 = _3248.x;
                    float _3287 = _3251.x;
                    float _3289 = _3248.y;
                    float _3291 = _3248.z;
                    float _3293 = _3251.y;
                    float _3297 = _3251.z;
                    float _3355 = (((((((_3286 * _3287) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3262, _3263), _418).xy, _3189)) + ((_3289 * _3287) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3266, _3263), _418).xy, _3189))) + ((_3291 * _3287) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3269, _3263), _418).xy, _3189))) + ((_3286 * _3293) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3262, _3272), _418).xy, _3189))) + ((_3289 * _3293) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3266, _3272), _418).xy, _3189))) + ((_3291 * _3293) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3269, _3272), _418).xy, _3189))) + ((_3286 * _3297) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3262, _3279), _418).xy, _3189));
                    float4 _3378 = asfloat(uint4(_40.Load(_3072 * 4 + 0), _40.Load(_3075 * 4 + 0), _40.Load(_3078 * 4 + 0), _40.Load(_3081 * 4 + 0)));
                    float _3379 = _3378.w;
                    float2 _3381 = min(_3178, 1.0f.xx - _3178);
                    _3397 = _3056 ? lerp(1.0f, (any(bool3(_3185.x || _3186.x, _3185.y || _3186.y, _3185.z || _3186.z)) || ((asuint(_3189) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3355 + ((_3289 * _3297) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3266, _3279), _418).xy, _3189))) + ((_3291 * _3297) * _38.SampleCmpLevelZero(_26, float3(_3261 + float2(_3269, _3279), _418).xy, _3189))), _3005 ? min(_3379, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3378.z - _3158.w) * 0.25f, min(_3381.x, _3381.y)))) : _3379) : 1.0f;
                  } else {
                    _3397 = clamp(dot(_514, _2840) + 1.0f, 0.0f, 1.0f);
                  }
                  _3398 = _3397;
                } else {
                  _3398 = 1.0f;
                }
                float _3478;
                float3 _3479;
                float _3480;
                float3 _3481;
                float3 _3482;
                float _3483;
                float _3484;
                [branch] if (_2750 == 0u) {
                  float3 _3404 = _33_m6[_2631].xyz * _2978;
                  float3 _3417 = _2225.xyz;
                  _3478 = _2978;
                  _3479 = (_33_m6[_2631].xyz * ((1.0f - _33_m6[_2643].y) + ((1.0f / max(1.0f, max(max(_3404.x, _3404.y), _3404.z) * lerp(0.75f, 0.5f, _2419))) * _33_m6[_2643].y))) * lerp(0.25f * _33_m6[_2643].x, 1.0f, clamp(_2998 + 0.5f, 0.0f, 1.0f));
                  _3480 = _2999;
                  _3481 = _3417;
                  _3482 = _3417;
                  _3483 = 1.0f;
                  _3484 = 0.0f;
                }
                else {
                  float _3472;
                  float _3473;
                  float3 _3474;
                  float3 _3475;
                  float _3476;
                  float _3477;
                  if (_2750 == 3u) {
                    _3472 = _2978 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _33_m6[_2643].x), lerp(0.89999997615814208984375f, 0.5f, _33_m6[_2643].x), _2385) * _3398);
                    _3473 = clamp(dot(_2002, -normalize(cross(_580, cross(_580, _2840)))), 0.0f, 1.0f);
                    _3474 = lerp(0.5f.xxx, _2009, _33_m6[_2643].y.xxx);
                    _3475 = 0.0f.xxx;
                    _3476 = 1.0f;
                    _3477 = 0.0f;
                  } else {
                    bool _3442 = _2750 == 1u;
                    float _3466;
                    float3 _3467;
                    float _3468;
                    float _3469;
                    if (_3442) {
                      _3466 = clamp(clamp(_2998 + _33_m6[_2643].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3398;
                      _3467 = _2013 * _33_m6[_2643].y;
                      _3468 = 1.0f;
                      _3469 = 0.0f;
                    } else {
                      bool _3452 = _2750 == 2u;
                      float _3464;
                      if (_3452) {
                        _3464 = smoothstep(_33_m6[_2643].x + 0.0500000007450580596923828125f, _33_m6[_2643].x - 0.0500000007450580596923828125f, _2003) * ((1.0f - _33_m6[_2643].z) + (step(0.5f, _2006) * _33_m6[_2643].z));
                      } else {
                        _3464 = 1.0f;
                      }
                      _3466 = _2999;
                      _3467 = 0.0f.xxx;
                      _3468 = _3464;
                      _3469 = _3452 ? _33_m6[_2643].y : 0.0f;
                    }
                    bool3 _3470 = _3442.xxx;
                    _3472 = _2978;
                    _3473 = _3466;
                    _3474 = float3(_3470.x ? _2009.x : 0.0f.xxx.x, _3470.y ? _2009.y : 0.0f.xxx.y, _3470.z ? _2009.z : 0.0f.xxx.z);
                    _3475 = _3467;
                    _3476 = _3468;
                    _3477 = _3469;
                  }
                  _3478 = _3472;
                  _3479 = _33_m6[_2631].xyz;
                  _3480 = _3473;
                  _3481 = _3474;
                  _3482 = _3475;
                  _3483 = _3476;
                  _3484 = _3477;
                }
                float3 _3549;
                [branch] if (_2750 != 3u) {
                  float _3489 = lerp(_2015, 0.00999999977648258209228515625f, _3484);
                  float3 _3491 = normalize(_2840 + _456);
                  float _3492 = dot(_1867, _3491);
                  float _3493 = _3489 * _3489;
                  float _3497 = (((_3492 * _3493) - _3492) * _3492) + 1.0f;
                  float _3498 = _3497 * _3497;
                  float3 _3509 = _2012 * clamp((((_3493 != _3498) ? (_3493 / _3498) : 1.0f) * (0.5f / ((_2262 + (_3489 * _2264)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
                  float3 _3546;
                  if (_2273) {
                    float _3514 = dot(_1159, _3491);
                    float _3516 = clamp(dot(_1159, _456), 0.0f, 1.0f);
                    float _3517 = 1.0f - clamp(dot(_456, _3491), 0.0f, 1.0f);
                    float _3518 = _3517 * _3517;
                    float _3520 = (_3517 * _3518) * _3518;
                    float _3526 = _1143 * _1143;
                    float _3530 = (((_3514 * _3526) - _3514) * _3514) + 1.0f;
                    float _3531 = _3530 * _3530;
                    _3546 = _3509 + clamp(((((_2323 * (1.0f - _3520)) + _3520.xxx) * _1148) * ((_3526 != _3531) ? (_3526 / _3531) : 1.0f)) * (0.5f / (((2.0f * _3516) + (_1143 * ((1.0f + _3516) - _3516))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
                  } else {
                    _3546 = _3509;
                  }
                  _3549 = (_3546 * _3483) * _33_m6[_2652].z;
                }
                else {
                  _3549 = 0.0f.xxx;
                }
                float3 _3552 = _3479 * _3478;
                _3559 = _2592 + (((_3552 * lerp(_3482, _3481, _3480.xxx)) * _2335) + ((_3552 * _3549) * _3480));
              }
              else {
                _3559 = _2592;
              }
              _3560 = _3559;
              break;
            } while (false);
            _3561 = _3560;
            break;
          } while (false);
          _3562 = _3561;
        } else {
          _3562 = _2592;
        }
        _3563 = _3562;
        break;
      } while (false);
      _2618 = _3563;
    }
  }
  float3 _3603;
  [branch] if (_50_m12 > 0.5f) {
    _3603 = lerp(lerp(0.5f.xxx, lerp(dot(_2591, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2591, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_2383, 0.0f, 1.0f))) * _50_m17);
  }
  else {
    _3603 = _2591;
  }
  float4 _3610 = float4(_3603 * _19_m20.y, _503);
  _3610.w = (_50_m8 == 1.0f) ? _503 : 1.0f;
  float4 _3997;
  [branch] if (_19_m94.w < 0.5f) {
    float _3634 = _612 * _19_m46.w;
    float _3639 = max(0.00999999977648258209228515625f, _3634 + _19_m47.w);
    float3 _3653 = exp(_19_m45.xyz * ((-max(0.0f, (_457 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3639)) / _3639) * exp(_3634 + _19_m48.w))));
    float _3656 = dot(_2476, _19_m44.xyz);
    float _3662 = _19_m45.w * _19_m45.w;
    float _3666 = (1.0f + _3662) - ((2.0f * _19_m45.w) * _3656);
    float3 _3989;
    float _3990;
    if (_19_m55.z > 0.0f) {
      uint3 _3711 = (uint3(int3(_2090, _2091, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3712 = _3711.y;
      uint _3713 = _3711.z;
      uint _3716 = _3711.x + (_3712 * _3713);
      uint _3718 = _3712 + (_3713 * _3716);
      uint _3720 = _3713 + (_3716 * _3718);
      uint _3722 = _3716 + (_3718 * _3720);
      float _3747 = dot(_2476, -_17_m0[2].xyz);
      float3 _3754 = _507 - _17_m11.xyz;
      float _3756 = (_19_m55.w * ((_3747 > 5.9604644775390625e-08f) ? (1.0f / _3747) : 0.0f)) * (1.0f / _457);
      float _3757 = _3754.y;
      float _3758 = _3756 * _3757;
      float _3760 = _17_m11.y + _3758;
      float _3761 = _3757 - _3758;
      float _3763 = (1.0f - _3756) * _457;
      float _3777 = max(-127.0f, _19_m49.z * _3761);
      float _3801 = max(-127.0f, _19_m52.x * _3761);
      float _3812 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3760 - _19_m49.x)))) * ((abs(_3777) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3777)) / _3777) : (0.693147182464599609375f - (0.2402265071868896484375f * _3777)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3760 - _19_m52.z)))) * ((abs(_3801) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3801)) / _3801) : (0.693147182464599609375f - (0.2402265071868896484375f * _3801))));
      float _3834 = clamp((_457 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3837 = clamp((max(clamp(exp2(-(_3812 * _3763)), 0.0f, 1.0f), _19_m51.w) + clamp((_457 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3834, 0.0f, 1.0f);
      float4 _3877 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_24, float3((_2566 + ((((float3(uint3(_3722, _3718 + (_3720 * _3722), _422) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_437 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_437 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3989 = _3877.xyz + (((_19_m51.xyz * (1.0f - _3837)) + (((_19_m54.xyz * pow(clamp(dot(_456, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3812 * max(_3763 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3834))) * _3877.w);
      _3990 = _3877.w * _3837;
    } else {
      float3 _3883 = _507 - _17_m11.xyz;
      float _3885 = _3883.y;
      float _3899 = max(-127.0f, _19_m49.z * _3885);
      float _3923 = max(-127.0f, _19_m52.x * _3885);
      float _3934 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3899) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3899)) / _3899) : (0.693147182464599609375f - (0.2402265071868896484375f * _3899)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_3923) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3923)) / _3923) : (0.693147182464599609375f - (0.2402265071868896484375f * _3923))));
      float _3956 = clamp((_457 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3959 = clamp((max(clamp(exp2(-(_3934 * _457)), 0.0f, 1.0f), _19_m51.w) + clamp((_457 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3956, 0.0f, 1.0f);
      _3989 = (_19_m51.xyz * (1.0f - _3959)) + (((_19_m54.xyz * pow(clamp(dot(_456, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3934 * max(_457 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3956));
      _3990 = _3959;
    }
    float3 _3995 = (_3610.xyz * (_3653 * _3990)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3656 * _3656)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3662) / max((12.56637096405029296875f * _3666) * sqrt(_3666), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3653)) * _3990) + _3989);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3995 = (_3995 * 0.65f) + (_3610.xyz * 0.35f);
    }
    // RenoDX code end
    _3997 = float4(_3995.x, _3995.y, _3995.z, _3610.w);
  }
  else {
    _3997 = _3610;
  }
  _14 = _3997;
  _15 = _2053;
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

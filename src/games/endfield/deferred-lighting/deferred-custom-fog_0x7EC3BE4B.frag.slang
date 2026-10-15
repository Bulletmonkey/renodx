#include "./renodx_injection.hlsli"

// Ported from the native 0x7EC3BE4B Vulkan dump.
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

static float3 _355;
static float _356;
static float3 _357;
static float _359;
static uint _360;

static const int2 _334[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _335[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(52, 0)]] cbuffer _59_60 : register(b52, space0) {
  float4 _60_m0[32] : packoffset(c0);
  column_major float4x4 _60_m1[32] : packoffset(c32);
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
[[vk::binding(45, 0)]] Texture2D<float4> _52 : register(t45, space0);
[[vk::binding(44, 0)]] Texture2D<float4> _53 : register(t44, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _54 : register(t41, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _55 : register(t4, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _56 : register(t2, space1);
[[vk::binding(1, 1)]] Texture2D<float4> _57 : register(t1, space1);
[[vk::binding(29, 0)]] Texture2D<float4> _58 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _63 : register(t38, space0);

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
  float2 _365 = _3;
  float _375 = 1.0f / gl_FragCoord.w;
  float3 _390 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
  float _391 = dot(_390, _390);
  float _393 = rsqrt(max(_391, 9.9999999392252902907785028219223e-09f));
  float3 _394 = _390 * _393;
  float _395 = _391 * _393;
  uint _398 = asuint(_22_m0[_12]._m2.x);
  bool _403 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
  float4 _420;
  float4 _421;
  float4 _422;
  if (_403) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0x7EC3BE4B:
    _420 = asfloat(_31_Load4((_398 + 2u) * 16 + 0));
    _421 = asfloat(_31_Load4((_398 + 1u) * 16 + 0));
    _422 = asfloat(_31_Load4(_398 * 16 + 0));
    */
    _420 = asfloat(_31_Load4((_398 + 2u) * 16 + 0));
    _421 = asfloat(_31_Load4((_398 + 1u) * 16 + 0));
    _422 = asfloat(_31_Load4(_398 * 16 + 0));
    // RenoDX code end
  } else {
    _420 = _22_m0[_12]._m0[2];
    _421 = _22_m0[_12]._m0[1];
    _422 = _22_m0[_12]._m0[0];
  }
  float4 _428 = _55.SampleBias(_25, _365, _19_m16);
  float3 _433 = _428.xyz * _50_m24.xyz;
  float _440 = 1.0f - _50_m0;
  float _441 = _428.w;
  float3 _445 = _4 + _17_m11.xyz;
  float3 _449 = _445 - float3(_422.w, _359, _420.w);
  _449.y = 6.103515625e-05f;
  float3 _452 = normalize(_449);
  float3 _466 = _433 * _50_m18;
  float3 _470 = lerp(dot(_466, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _466, _50_m19.xxx);
  float4 _474 = _57.SampleBias(_24, _365, _19_m16);
  float _476 = _474.y;
  float _477 = _474.z;
  float _478 = _474.w;
  float _483 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
  float3 _484 = normalize(_5) * _483;
  uint2 _486 = uint2(gl_FragCoord.xy);
  float3 _496 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3x3 _500 = float3x3(_422.xyz, _421.xyz, _420.xyz);
  float3 _501 = mul(_496, _500);
  float2 _507 = normalize((_501 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_501, _501)))).xz);
  float _508 = _507.y;
  uint _517 = asuint((_19_m92.x > 0.5f) ? _19_m92.y : _22_m0[_12]._m7.x);
  float4 _530 = float4(float(_517 & 255u), float((_517 >> 8u) & 255u), float((_517 >> 16u) & 255u), float((_517 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _531 = _530.x;
  float _534 = _530.w;
  float _540 = _445.y;
  float _544 = max(_530.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m92.w, _19_m92.x) - _540) * _530.y);
  float _545 = max(_531, _544);
  float _553 = lerp(_19_m22.x, 1.0f, _19_m94.w) * _19_m20.x;
  float _555 = _484.z;
  float3 _558 = _476.xxx;
  float3 _560 = normalize(lerp(_452, normalize(float3(_484.x, 6.103515625e-05f, _555)), _558));
  float3 _1052;
  float _1053;
  if (_19_m83.y < 0.5f) {
    float3 _578 = _445 - (_19_m108.xyz + (_496 * (-_19_m110.w)));
    float _593 = max(min(max((max(abs(_578.x), abs(_578.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_578.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _895;
    float4 _896;
    float4 _897;
    float _898;
    float _899;
    if ((_19_m108.w != 0.0f) && (_593 < 1.0f)) {
      float3 _606 = _445 - (_19_m108.xyz + (_496 * (-_19_m110.y)));
      float _620 = max(clamp((max(abs(_606.x), abs(_606.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_606.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _696;
      float4 _697;
      float4 _698;
      float4 _699;
      if (_620 < 1.0f) {
        float3 _629 = ((_445 * 2.0f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _631 = _629 - floor(_629);
        float4 _635 = _43.SampleLevel(_25, _631, 0.0f);
        float _636 = 1.0f - _620;
        float _640 = _19_m109.y * 0.5f;
        float _645 = _631.x;
        float _646 = clamp(_631.y, _640, 1.0f - _640) * 0.3333333432674407958984375f;
        float _647 = _631.z;
        float4 _650 = _44.SampleLevel(_24, float3(_645, _646, _647), 0.0f);
        float _666 = _635.x;
        float _676 = _635.y;
        float _686 = _635.z;
        _696 = _593 + (_650.w * _636);
        _697 = float4(((_44.SampleLevel(_24, float3(_645, _646 + 0.666666686534881591796875f, _647), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _686, _686) * _636;
        _698 = float4(((_44.SampleLevel(_24, float3(_645, _646 + 0.3333333432674407958984375f, _647), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _676, _676) * _636;
        _699 = float4(((_650.xyz * 4.0f) - 2.0f.xxx) * _666, _666) * _636;
      } else {
        _696 = _593;
        _697 = 0.0f.xxxx;
        _698 = 0.0f.xxxx;
        _699 = 0.0f.xxxx;
      }
      float3 _705 = _445 - (_19_m108.xyz + (_496 * (-_19_m110.z)));
      float _719 = max(clamp((max(abs(_705.x), abs(_705.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_705.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _799;
      float4 _800;
      float4 _801;
      float4 _802;
      if (_719 < 1.0f) {
        float3 _728 = ((_445 * 0.5f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _730 = _728 - floor(_728);
        float4 _734 = _45.SampleLevel(_25, _730, 0.0f);
        float _736 = _620 * (1.0f - _719);
        float _740 = _19_m109.y * 0.5f;
        float _745 = _730.x;
        float _746 = clamp(_730.y, _740, 1.0f - _740) * 0.3333333432674407958984375f;
        float _747 = _730.z;
        float4 _750 = _46.SampleLevel(_24, float3(_745, _746, _747), 0.0f);
        float _766 = _734.x;
        float _777 = _734.y;
        float _788 = _734.z;
        _799 = _696 + (_750.w * _736);
        _800 = _697 + (float4(((_46.SampleLevel(_24, float3(_745, _746 + 0.666666686534881591796875f, _747), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _788, _788) * _736);
        _801 = _698 + (float4(((_46.SampleLevel(_24, float3(_745, _746 + 0.3333333432674407958984375f, _747), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _777, _777) * _736);
        _802 = _699 + (float4(((_750.xyz * 4.0f) - 2.0f.xxx) * _766, _766) * _736);
      } else {
        _799 = _696;
        _800 = _697;
        _801 = _698;
        _802 = _699;
      }
      float4 _885;
      float4 _886;
      float4 _887;
      float _888;
      if (_719 > 0.0f) {
        float3 _811 = ((_445 * 0.125f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _814 = _19_m109.xyz * 0.5f;
        float3 _816 = clamp(_811 - floor(_811), _814, 1.0f.xxx - _814);
        float4 _820 = _47.SampleLevel(_25, _816, 0.0f);
        float _822 = _719 * (1.0f - _593);
        float _826 = _19_m109.y * 0.5f;
        float _831 = _816.x;
        float _832 = clamp(_816.y, _826, 1.0f - _826) * 0.3333333432674407958984375f;
        float _833 = _816.z;
        float4 _836 = _48.SampleLevel(_24, float3(_831, _832, _833), 0.0f);
        float _852 = _820.x;
        float _863 = _820.y;
        float _874 = _820.z;
        _885 = _800 + (float4(((_48.SampleLevel(_24, float3(_831, _832 + 0.666666686534881591796875f, _833), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _874, _874) * _822);
        _886 = _801 + (float4(((_48.SampleLevel(_24, float3(_831, _832 + 0.3333333432674407958984375f, _833), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _863, _863) * _822);
        _887 = _802 + (float4(((_836.xyz * 4.0f) - 2.0f.xxx) * _852, _852) * _822);
        _888 = _799 + (_836.w * _822);
      } else {
        _885 = _800;
        _886 = _801;
        _887 = _802;
        _888 = _799;
      }
      float _891 = clamp((_888 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _895 = _885;
      _896 = _886;
      _897 = _887;
      _898 = _891 - _593;
      _899 = (_891 + _593) * 0.5f;
    } else {
      _895 = 0.0f.xxxx;
      _896 = 0.0f.xxxx;
      _897 = 0.0f.xxxx;
      _898 = 0.0f;
      _899 = 1.0f;
    }
    float4 _919 = _897 + float4(_19_m111.x * _899, (_19_m111.y * _899) + ((_19_m111.w * _898) * 0.5f), _19_m111.z * _899, (_19_m111.w * _899) + ((_19_m111.y * _898) * 0.375f));
    float4 _939 = _896 + float4(_19_m112.x * _899, (_19_m112.y * _899) + ((_19_m112.w * _898) * 0.5f), _19_m112.z * _899, (_19_m112.w * _899) + ((_19_m112.y * _898) * 0.375f));
    float4 _959 = _895 + float4(_19_m113.x * _899, (_19_m113.y * _899) + ((_19_m113.w * _898) * 0.5f), _19_m113.z * _899, (_19_m113.w * _899) + ((_19_m113.y * _898) * 0.375f));
    float4 _963 = float4(_560, 1.0f);
    float3 _969 = max(float3(dot(_919, _963), dot(_939, _963), dot(_959, _963)), 0.0f.xxx) * _553;
    float3 _977 = ((_919.xyz * 0.2125999927520751953125f) + (_939.xyz * 0.715200006961822509765625f)) + (_959.xyz * 0.072200000286102294921875f);
    float3 _981 = _977 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_977, _977)));
    float4 _986 = float4(_981.x, abs(_981.y), _981.z, 1.0f);
    float3 _991 = max(float3(dot(_919, _986), dot(_939, _986), dot(_959, _986)), 0.0f.xxx);
    float _999 = _969.z;
    float _1000 = _969.y;
    float4 _1005 = lerp(float4(_999, _1000, -1.0f, 0.666666686534881591796875f), float4(_1000, _999, 0.0f, -0.3333333432674407958984375f), step(_999, _1000).xxxx);
    float _1006 = _969.x;
    float _1007 = _1005.x;
    float4 _1015 = lerp(float4(_1007, _1005.yw, _1006), float4(_1006, _1005.yz, _1007), step(_1007, _1006).xxxx);
    float _1016 = _1015.x;
    float _1017 = _1015.w;
    float _1018 = _1015.y;
    float _1020 = _1016 - min(_1017, _1018);
    float _1030 = frac(abs(_1015.z + ((_1017 - _1018) / ((6.0f * _1020) + 9.9999997473787516355514526367188e-05f))));
    float _1037 = min(_1020 / (_1016 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1030 - 0.5f))) * clamp(_1016, 0.0f, 1.0f));
    float _1039 = 2.0f / (2.0f - _1037);
    _1052 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1030, _1037, _1039).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1037.xxx) * _1039;
    _1053 = max(max(max(_991.x, _991.y), _991.z), 0.0f) * _553;
  } else {
    _1052 = _19_m85.xyz;
    _1053 = _553;
  }
  float _1072 = _474.x * lerp(clamp(_508 + 0.5f, 0.0f, 1.0f), 1.0f, _476);
  float _1086 = clamp((1.0f - clamp((clamp(dot(_484, _394), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1072 * lerp(_50_m31, _50_m30, _477)), 0.0f, 1.0f);
  float3 _1094 = _433 * ((1.0f - _1086).xxx + (_50_m34.xyz * _1086));
  float _1095 = lerp(0.0f, _50_m1, _476);
  float _1181;
  float _1182;
  float3 _1183;
  float _1184;
  float _1185;
  [branch] if ((clamp(_531 + _544, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f) {
    float _1108 = _19_m10.x * 0.800000011920928955078125f;
    float4 _1113 = _52.SampleBias(_25, _365 + float2(0.0f, frac(_1108)), _19_m16);
    float4 _1127 = float4(_1113.xy, _52.SampleBias(_25, _365 + float2(0.0f, frac(_1108 + 0.004999999888241291046142578125f)), _19_m16).w, _1113.w);
    float4 _1131 = _53.SampleBias(_25, _365, _19_m16);
    float _1132 = _1131.z;
    float2 _1134 = _1127.zw * _1132;
    float _1136 = _1134.y;
    float2 _1139 = (_1127.xy * 2.0f) - 1.0f.xx;
    float _1140 = _1134.x;
    float _1143 = clamp(_1140 + _1136, 0.0f, 1.0f) * _545;
    float _1144 = (_1113.z * _1132) * _545;
    float3 _1147 = float3(_1139, 0.0f);
    float2 _1148 = _1147.xy;
    _1147.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1148, _1148), 0.0f, 1.0f)));
    float _1162 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1139.y * 0.5f) + 0.5f), 1.0f, clamp(_1140 - _1136, 0.0f, 1.0f));
    _1181 = lerp(_1095, 3.0f, clamp((_1143 * 2.0f) + _1144, 0.0f, 1.0f) * _545);
    _1182 = _441 * ((1.0f - _1143) + (lerp((1.0f - _1162) + (0.800000011920928955078125f * _1162), 0.89999997615814208984375f, _476) * _1143));
    _1183 = normalize(mul(_1147, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _483;
    _1184 = lerp(_440, 0.5f, _545);
    _1185 = clamp(clamp(_1143 + _1144, 0.0f, 1.0f), 0.0f, 1.0f);
  }
  else {
    _1181 = _1095;
    _1182 = _441;
    _1183 = _484;
    _1184 = _440;
    _1185 = 0.0f;
  }
  float3 _1304;
  float _1305;
  float3 _1306;
  float3 _1307;
  float _1308;
  [branch] if ((_534 - _50_m20) > 0.00999999977648258209228515625f) {
    bool3 _1190 = _403.xxx;
    float3 _1192 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1193 = float3(_1190.x ? _1192.x : _10.x, _1190.y ? _1192.y : _10.y, _1190.z ? _1192.z : _10.z);
    float3 _1196 = _1193 * _19_m92.z;
    float3 _1198 = float3(_1190.x ? _9.xzy.x : _9.x, _1190.y ? _9.xzy.y : _9.y, _1190.z ? _9.xzy.z : _9.z);
    float3 _1200 = abs(_1198) - 0.20000000298023223876953125f.xxx;
    float3 _1203 = max((_1200 * _1200) * _1200, 6.103515625e-05f.xxx);
    float3 _1206 = _1203 / dot(_1203, 1.0f.xxx).xxx;
    float4 _1229 = ((_54.SampleBias(_25, _1196.xz, _19_m16) * _1206.y) + (_54.SampleBias(_25, _1196.xy, _19_m16) * _1206.z)) + (_54.SampleBias(_25, _1196.zy, _19_m16) * _1206.x);
    float _1237 = clamp(_534 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1193.y) * clamp(_534 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1245 = _1237 * (2.0f - _1237);
    float _1252 = smoothstep(2.0f - _1245, 2.349999904632568359375f - _1245, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1198.y) + _1229.z) * 0.60000002384185791015625f, _476 * _1072)) * ((_1182 * _1182) * float(gl_FrontFacing));
    float3 _1254 = _1252.xxx;
    float2 _1260 = (_1229.xy * 2.0f) - 1.0f.xx;
    float3 _1261 = float3(_1260.x, _1260.y, _357.z);
    float2 _1262 = _1260.xy;
    _1261.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1262, _1262), 0.0f, 1.0f)));
    float2 _1270 = _1261.xy * 2.0f;
    float3 _1272 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1270.x, _1270.y, _1261.z), _1254);
    float3 _1276 = _1272 * rsqrt(max(6.103515625e-05f, dot(_1272, _1272)));
    float _1277 = _484.y;
    float _1280 = step(0.00999999977648258209228515625f, 1.0f - (_1277 * _1277));
    float _1283 = lerp(_555, _1277, _1280);
    float3 _1290 = (float3(0.0f, _1280, 1.0f - _1280) - (_484 * _1283)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1283 * _1283)));
    _1304 = ((cross(_1290, _484) * _1276.x) + (_1290 * _1276.y)) + (_484 * _1276.z);
    _1305 = lerp(_1184, 0.89999997615814208984375f, clamp(_1252 * 4.0f, 0.0f, 1.0f));
    _1306 = lerp(_470 * 1.0f, 0.3079999983310699462890625f.xxx, _1254);
    _1307 = lerp(_1094 * 1.0f, 0.87999999523162841796875f.xxx, _1254);
    _1308 = lerp(_50_m2, 0.0f, _1252);
  }
  else {
    _1304 = _484;
    _1305 = _1184;
    _1306 = _470;
    _1307 = _1094;
    _1308 = _50_m2;
  }
  float _1310 = 0.959999978542327880859375f - (_1308 * 0.959999978542327880859375f);
  float3 _1311 = _1307 * _1310;
  float3 _1314 = lerp(0.039999999105930328369140625f.xxx * _1181, _1307, _1308.xxx);
  float3 _1315 = _1306 * _1310;
  float _1317 = max(_1305 * _1305, 0.0078125f);
  bool _1324 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
  float2 _1337 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _1337.y = -_1337.y;
  float2 _1353 = lerp(((sqrt(sqrt(abs(_1337 * 0.5f))) * float2(int2(sign(_1337)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1324).xx);
  float4 _1355 = float4(_1353.x, _1353.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _1355.z = 1.0f;
  _1355.w = _1324 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _1368 = lerp(-_33_m0.xyz, _19_m93.xyz, _19_m83.w.xxx);
  float3 _1382 = lerp(_33_m3.xyz, _19_m86.xyz, _19_m94.y.xxx);
  float3 _1388 = _1382 * lerp(_33_m3.w, _19_m87.w, _19_m94.w);
  int _1392 = int(_486.x);
  int _1393 = int(_486.y);
  float4 _1397 = _41.Load(int3(int3(_1392, _1393, 0).xy, 0));
  float _1402 = _1397.y;
  float _1405 = lerp(lerp(1.0f, _1397.x, _37_m6.x), 1.0f, _19_m83.z);
  float3 _1413 = _1315 * _19_m82.z;
  float3 _1414 = _1413 * 0.64999997615814208984375f;
  float3 _1428 = mul(_1368, _500);
  float3 _1429 = float3(_1428.x, _1428.y, _1428.z);
  _1429.y = 6.103515625e-05f;
  float3 _1431 = normalize(_1429);
  float _1434 = float(_1431.x > 0.0f);
  float2 _1438 = _365;
  _1438.x = lerp(1.0f - _365.x, _365.x, _1434);
  float4 _1442 = _56.SampleLevel(_24, _1438, 0.0f);
  float _1444 = _1442.z * 2.0f;
  float _1447 = lerp(1.0f - _1444, _1444 - 1.0f, _1434);
  float3 _1452 = mul(_500, normalize(float3(_1447, 6.103515625e-05f, 1.0f - abs(_1447))));
  float3 _1459 = normalize(lerp((_1452 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1452, _1452)))).xyz, _1304, _558));
  float _1460 = _1442.w;
  float _1461 = _1431.z;
  float _1462 = -_1461;
  float _1482 = clamp(lerp(_1461, (_1462 * ((_1461 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1368.x, 6.103515625e-05f, _1368.z)).xz, normalize(_496.xz)), 0.0f, 1.0f) * clamp(_1462, 0.0f, 1.0f)) * (1.0f - _19_m94.x)) + (_19_m98.w * _19_m83.w), -1.0f, 1.0f) * 0.5f;
  float _1484 = clamp(0.5f - _1482, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
  float _1490 = (_1442.x + _1442.y) * 0.5f;
  float _1501 = _19_m97.z * 0.5f;
  float _1503 = clamp(0.5f - _1501, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
  float4 _1524 = _51.SampleLevel(_24, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1484 - (1.0f - _1484), 0.0f), min(_1484 + _1484, 1.0f), _1490)) - (_1482 * ceil(_1482)))), clamp(dot(_1304, _1368) + (_19_m93.w * _19_m94.x), -1.0f, 1.0f), _476) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _1525 = _1524.w;
  float _1527 = _1524.x;
  float _1528 = _1524.y;
  float _1529 = _1524.z;
  float _1534 = max(max(_1527, _1528), _1529) - min(min(_1527, _1528), _1529);
  float _1537 = max(_476, _477 * smoothstep(0.75f, 0.25f, _508));
  float _1540 = (1.0f - _1537) + (_1402 * _1537);
  float _1541 = 1.0f - _476;
  float _1550 = min(min(_1540, _1182), _1525);
  float _1551 = _1182 * _1540;
  float3 _1555 = ((clamp(dot(_560, _19_m88.xyz) + _19_m89.x, 0.0f, 1.0f) * _19_m89.y) + _19_m89.z).xxx * lerp(_1052, 1.0f.xxx, (_19_m83.y * _1550).xxx);
  float3 _1557 = _1550.xxx;
  float3 _1580 = _1405.xxx;
  float3 _1581 = lerp((_1555 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1053), 1.5f), clamp(_1053, 1.25f, 1.75f), _19_m83.x)) * _19_m82.w, (lerp(dot(_1388, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1388, _1557) + ((_1555 * clamp(_1053, 0.0f, 1.5f)) * ((1.0f - _19_m94.y).xxx + (_1382 * _19_m94.y)))) * _19_m82.y, _1580);
  float3 _1582 = lerp(lerp(lerp(dot(_1414, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1414, 1.2000000476837158203125f.xxx), _1413, clamp((_1182 * (_1541 + (_1540 * _476))) + _1525, 0.0f, 1.0f).xxx), _1311, _1557);
  float3 _1588 = _1582 * ((1.0f - _1534).xxx + (_1524.xyz * _1534));
  float3 _1597 = lerp(lerp(_1413, lerp(dot(_1311, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1311, 1.2000000476837158203125f.xxx), _1551.xxx), _1588 * clamp(dot(_1582, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1588, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1580);
  float4 _1601 = float4(_1597, _1405);
  float _1603 = lerp(_1551, _1550, _1405);
  float3 _1614 = float3(_496.x, lerp(0.5f, _1368.y, _1405), _496.z);
  float _1627 = clamp(dot(_1183, _394), 0.0f, 1.0f);
  float _1628 = dot(_1183, normalize(((_1368 * _1405) + ((_1614 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1614, _1614)))) * 2.0f)) + (_394 * (2.0f + _1405))));
  float _1629 = _1317 * _1317;
  float _1633 = (((_1628 * _1629) - _1628) * _1628) + 1.0f;
  float _1634 = _1633 * _1633;
  float _1638 = 2.0f * _1627;
  float _1640 = (1.0f + _1627) - _1627;
  float3 _1681;
  if (_1185 > 0.001000000047497451305389404296875f) {
    _1681 = ((_53.SampleBias(_24, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1183)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1540) * (clamp(_1053, 0.5f, 1.5f) * _19_m82.w)) * (_1185 * _1185);
  } else {
    _1681 = 0.0f.xxx;
  }
  float3 _1684 = ((_1581 * _1597) * 1.0f) + ((((_1314 * clamp((((_1629 != _1634) ? (_1629 / _1634) : 1.0f) * (0.5f / ((_1638 + (_1317 * _1640)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1581 * (((_1603 * 0.5f) + 0.5f) * lerp(_19_m82.z, 1.0f, _1603))) * 1.0f)) * _19_m95.w) + _1681);
  float _1685 = dot(_1684, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _1688 = clamp(_1685 - 0.5f, 0.0f, 0.5f);
  float3 _1724 = normalize(cross(_496, lerp(float3(_19_m91.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m91.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m91.y), _19_m97.w.xxx)));
  float _1730 = dot(_394, _1459);
  float _1732 = 1.0f - abs(_1730);
  float _1737 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_508));
  float3 _1781 = lerp(_1685.xxx, _1684, ((_1688 * _1688) + 1.0f).xxx) + ((((((_19_m90.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m91.w), lerp(0.89999997615814208984375f, 0.5f, _19_m91.w), _1732) * _1737, max(_1737, float(dot(_496, _1724) < (-0.00999999977648258209228515625f))) * _478, clamp((_19_m91.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m90.w) * min(min(clamp(dot(_452, _1724) + 1.0f, 0.0f, 1.0f), _1182), _1402)) * (lerp(0.25f.xxx, _1311, _19_m91.z.xxx) * clamp(dot(_1724, _1459), 0.0f, 1.0f))) * (1.0f - (_19_m98.z * _1541))) + (((_19_m96.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1503 - (1.0f - _1503), 0.0f), min(_1503 + _1503, 1.0f), _1490)) - (_1501 * ceil(_1501))))) * _1541)) * _19_m96.w) * _1311));
  float2 _1782 = float2(_486);
  float2 _1784 = floor(_1782 * 0.03125f);
  int _1792 = int((_1784.x + (_1784.y * _35_m9)) * 8.0f);
  float _1799 = floor(_375 - (_19_m3.y * _35_m15));
  float _1803 = clamp(_1799, 0.0f, _35_m11 - 1.0f);
  int _1805 = int(_1803 * 8.0f);
  float3 _1807;
  _1807 = _1781;
  float3 _1808;
  [loop] for (int _1810 = 0; _1810 <= 7; _1807 = _1808, _1810++) {
    uint _1831 = (_1799 <= _1803) ? (_29.Load(uint((_35_m2 + _1792) + _1810) * 4 + 0) & _29.Load(uint((_35_m3 + _1805) + _1810) * 4 + 0)) : 0u;
    uint _1832 = uint(_1810);
    _1808 = _1807;
    uint _1837;
    float3 _1834;
    [loop] for (uint _1836 = _1831; _1836 != 0u; _1808 = _1834, _1836 = _1837) {
      uint _1841 = firstbitlow(_1836);
      _1837 = _1836 ^ (1u << (_1841 & 31u));
      int _1847 = int((32u * _1832) + _1841) * 8;
      int _1850 = _1847 + 1;
      int _1853 = _1847 + 2;
      int _1856 = _1847 + 3;
      int _1859 = _1847 + 4;
      int _1862 = _1847 + 5;
      int _1865 = _1847 + 6;
      int _1868 = _1847 + 7;
      uint _1872 = uint(_33_m6[_1862].w);
      float _1947;
      if ((_1872 & 1u) == 1u) {
        uint _1878 = asuint(_33_m6[_1862].x);
        uint _1885 = asuint(_33_m6[_1862].y);
        uint _1892 = asuint(_33_m6[_1862].z);
        uint _1899 = asuint(_33_m6[_1865].x);
        uint _1906 = asuint(_33_m6[_1865].y);
        uint _1913 = asuint(_33_m6[_1865].z);
        float3 _1932 = abs(mul(float4(_445 - _33_m6[_1850].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1878).x, spvUnpackHalf2x16(_1892).x, spvUnpackHalf2x16(_1906).x, 0.0f), float4(spvUnpackHalf2x16(_1878 >> 16u).x, spvUnpackHalf2x16(_1892 >> 16u).x, spvUnpackHalf2x16(_1906 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1885).x, spvUnpackHalf2x16(_1899).x, spvUnpackHalf2x16(_1913).x, 0.0f), float4(spvUnpackHalf2x16(_1885 >> 16u).x, spvUnpackHalf2x16(_1899 >> 16u).x, spvUnpackHalf2x16(_1913 >> 16u).x, 0.0f))).xyz);
        float _1939 = _33_m6[_1868].x * 0.5f;
        float _1945 = 1.0f - clamp((max(max(_1932.x, _1932.y), _1932.z) - (_1939 + 0.5f)) / (0.5f - _1939), 0.0f, 1.0f);
        _1947 = _1945 * _1945;
      } else {
        _1947 = 1.0f;
      }
      if (false || (_1947 < 0.001000000047497451305389404296875f)) {
        _1834 = _1808;
        continue;
      }
      float3 _2766;
      do {
        uint _1955 = uint(_33_m6[_1847].w);
        [branch] if (_1955 >= 4u) {
          _2766 = _1808;
          break;
        }
        float3 _2765;
        if (_33_m6[_1847].w < 1.5f) {
          float3 _2764;
          do {
            uint _1966 = asuint(_33_m6[_1856].w);
            if ((_1966 == 16u) || ((_33_m6[_1856].z + _19_m94.z) < 0.5f)) {
              _2764 = _1808;
              break;
            }
            bool _1977 = (_1955 & 1u) == 0u;
            bool _1981 = (!_1977) && (_33_m6[_1853].z > 0.0f);
            bool _1982 = _1966 == 4u;
            float _1983 = float(_1977);
            float _1991 = (0.5f + (0.5f * _33_m6[_1853].y)) - abs(_33_m6[_1853].x);
            float _1992 = _33_m6[_1853].y - _1991;
            float _1999 = abs(max((1.0f - abs(_1991)) - abs(_1992), 0.00048828125f));
            float3 _2003 = normalize(float3(_1991, _1992, (_33_m6[_1853].x >= 0.0f) ? _1999 : (-_1999)));
            float _2009 = lerp(_33_m6[_1865].w, max(2.0f * _33_m6[_1859].y, 0.100000001490116119384765625f), float(_1982));
            float3 _2014 = _33_m6[_1850].xyz - _445;
            float3 _2015 = -_2003;
            float3 _2020 = lerp(_2014, _2015 * dot(_2014, _2015), (float(_1982 && (_33_m6[_1859].z > 0.5f)) * _1983).xxx);
            float _2021 = dot(_2020, _2020);
            float _2022 = rsqrt(_2021);
            float3 _2023 = _2020 * _2022;
            float3 _2056;
            float _2057;
            if (_1981) {
              float3 _2027 = (_2003 * _33_m6[_1853].z) * 0.5f;
              float3 _2028 = _2020 - _2027;
              float3 _2029 = _2020 + _2027;
              float _2030 = length(_2028);
              float _2031 = length(_2029);
              float3 _2040 = normalize(cross(cross(_2003, _2023), _2003));
              _2056 = _2040;
              _2057 = ((1.0f / ((((_2030 * _2031) + dot(_2028, _2029)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2040, _2028) / _2030) + (dot(_2040, _2029) / _2031)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_33_m6[_1853].z * _2022, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2056 = _2023;
              _2057 = 1.0f;
            }
            float _2079;
            if (_2009 < 0.0f) {
              float _2073 = _2021 * (_33_m6[_1850].w * _33_m6[_1850].w);
              float _2076 = clamp(1.0f - (_2073 * _2073), 0.0f, 1.0f);
              _2079 = lerp(1.0f / (_2021 + 1.0f), _2057, float(_1981)) * (_2076 * _2076);
            } else {
              float3 _2062 = _2020 * _33_m6[_1850].w;
              _2079 = _2057 * pow(1.0f - clamp(dot(_2062, _2062), 0.0f, 1.0f), _2009);
            }
            float _2084 = clamp((dot(_2056, _2015) - _33_m6[_1853].z) * _33_m6[_1853].w, 0.0f, 1.0f);
            float _2087 = _2079 * lerp(1.0f, _2084 * _2084, _1983);
            int _2089 = int(_33_m6[_1868].w);
            float _2193;
            if ((!_1981) && (_2089 >= 0)) {
              uint _2095 = uint(_2089);
              float2 _2186;
              [branch] if (_1983 != 0.0f) {
                float4 _2176 = mul(_60_m1[_2095], float4(_445.x, _540, _445.z, 1.0f));
                _2186 = _60_m0[_2095].xy + (clamp(_2176.xy / _2176.w.xx, 0.0f.xx, 1.0f.xx) * _60_m0[_2095].zw);
              }
              else {
                float3 _2110 = mul(float4(-_2020, 0.0f), _60_m1[_2095]).xyz;
                float3 _364 = _2110;
                float3 _363 = _2110;
                float3 _362 = abs(_2110);
                uint _2119 = uint(int(_362.y > _362.x));
                uint _2125 = (_362.z > _362[_2119]) ? 2u : _2119;
                uint _2131 = (_2125 * 2u) + uint(_363[_2125] < 0.0f);
                float _2135 = abs(_364[_2131 / 2u]);
                float _2155 = 0.5f - (0.000244140625f / _60_m0[_2095].w);
                _2186 = _60_m0[_2095].xy + (clamp(float2((float(_2131) + ((((_364[uint(_334[_2131].x)] * _335[_2131].x) / _2135) * _2155) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_364[uint(_334[_2131].y)] * _335[_2131].y) / _2135) * _2155)), 0.0f.xx, 1.0f.xx) * _60_m0[_2095].zw);
              }
              _2193 = _2087 * _58.SampleLevel(_24, _2186, 0.0f).x;
            } else {
              _2193 = _2087;
            }
            float _2194 = _2193 * _1947;
            float3 _2763;
            do {
              float3 _2762;
              [branch] if (_2194 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_1982) {
                  _2763 = lerp(_1808, _33_m6[_1847].xyz, (_2194 * (_33_m6[_1859].x * ((1.0f - _33_m6[_1859].w) + (smoothstep(-0.5f, 0.5f, dot(_484, _2056)) * _33_m6[_1859].w)))).xxx);
                  break;
                }
                float _2214 = dot(_1459, _2056);
                float _2215 = clamp(_2214, 0.0f, 1.0f);
                float _2614;
                if (_1966 != 0u) {
                  bool _2221 = _1977 || ((_1872 & 2u) != 0u);
                  int _2271;
                  if (_2221) {
                    _2271 = int(_33_m6[_1856].x);
                  } else {
                    uint _2226 = asuint(_33_m6[_1853].w);
                    uint _2227 = asuint(_33_m6[_1856].x);
                    float3 _2228 = _445 - _33_m6[_1850].xyz;
                    float3 _2229 = abs(_2228);
                    float _2230 = _2229.x;
                    float _2231 = _2229.y;
                    float _2233 = _2229.z;
                    int _2266;
                    if ((_2230 > _2231) && (_2230 > _2233)) {
                      _2266 = int((_2228.x > 0.0f) ? (_2226 & 1023u) : ((_2226 >> 10u) & 1023u));
                    } else {
                      int _2258;
                      if (_2231 > _2233) {
                        _2258 = int((_2228.y > 0.0f) ? ((_2226 >> 20u) & 1023u) : (_2227 & 1023u));
                      } else {
                        _2258 = int((_2228.z > 0.0f) ? ((_2227 >> 10u) & 1023u) : ((_2227 >> 20u) & 1023u));
                      }
                      _2266 = _2258;
                    }
                    _2271 = (_2266 == 1023) ? (-1) : _2266;
                  }
                  bool _2272 = _2271 >= 0;
                  float _2613;
                  if (_2272) {
                    float3 _2279 = _445 - _33_m6[_1850].xyz;
                    uint _2289 = asuint(_37_m11.x) + (uint(_2271) * 96u);
                    uint _2291 = (_2289 + 64u) >> 2u;
                    uint _2294 = _2291 + 1u;
                    uint _2297 = _2291 + 2u;
                    uint _2300 = _2291 + 3u;
                    float4 _2304 = asfloat(uint4(_40.Load(_2291 * 4 + 0), _40.Load(_2294 * 4 + 0), _40.Load(_2297 * 4 + 0), _40.Load(_2300 * 4 + 0)));
                    uint _2312 = _2289 >> 2u;
                    uint _2327 = (_2289 + 16u) >> 2u;
                    uint _2342 = (_2289 + 32u) >> 2u;
                    uint _2357 = (_2289 + 48u) >> 2u;
                    float4 _2377 = mul(transpose(float4x4(asfloat(uint4(_40.Load(_2312 * 4 + 0), _40.Load((_2312 + 1u) * 4 + 0), _40.Load((_2312 + 2u) * 4 + 0), _40.Load((_2312 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2327 * 4 + 0), _40.Load((_2327 + 1u) * 4 + 0), _40.Load((_2327 + 2u) * 4 + 0), _40.Load((_2327 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2342 * 4 + 0), _40.Load((_2342 + 1u) * 4 + 0), _40.Load((_2342 + 2u) * 4 + 0), _40.Load((_2342 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2357 * 4 + 0), _40.Load((_2357 + 1u) * 4 + 0), _40.Load((_2357 + 2u) * 4 + 0), _40.Load((_2357 + 3u) * 4 + 0))))), float4((_445 - ((_2279 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2279, _2279)))) * _2304.x)) + (_484 * (_2304.y * 5.0f)), 1.0f));
                    float3 _2381 = _2377.xyz / _2377.w.xxx;
                    uint _2383 = (_2289 + 80u) >> 2u;
                    float4 _2396 = asfloat(uint4(_40.Load(_2383 * 4 + 0), _40.Load((_2383 + 1u) * 4 + 0), _40.Load((_2383 + 2u) * 4 + 0), _40.Load((_2383 + 3u) * 4 + 0)));
                    float2 _2397 = _2381.xy;
                    float2 _2399 = _2396.xy;
                    float3 _2403 = _2381.xyz;
                    bool3 _2404 = bool3(_2403.x <= 0.0f.xxx.x, _2403.y <= 0.0f.xxx.y, _2403.z <= 0.0f.xxx.z);
                    bool3 _2405 = bool3(_2403.x >= 1.0f.xxx.x, _2403.y >= 1.0f.xxx.y, _2403.z >= 1.0f.xxx.z);
                    float _2408 = _2381.z;
                    float2 _2419 = ((_2397 * (_2396.zw - _2399)) + _2399).xy * _37_m10.zw;
                    float2 _2421 = floor(_2419 + 0.5f.xx);
                    float2 _2422 = _2419 - _2421;
                    float _2423 = _2422.x;
                    float _2424 = _2423 + 0.5f;
                    float _2425 = _2424 * _2424;
                    float _2428 = 1.0f - _2423;
                    float _2429 = min(_2423, 0.0f);
                    float _2432 = _2423 + 1.0f;
                    float _2433 = max(_2423, 0.0f);
                    float _2444 = _2422.y;
                    float _2445 = _2444 + 0.5f;
                    float _2446 = _2445 * _2445;
                    float _2449 = 1.0f - _2444;
                    float _2450 = min(_2444, 0.0f);
                    float _2453 = _2444 + 1.0f;
                    float _2454 = max(_2444, 0.0f);
                    float3 _2466 = float3(0.1599999964237213134765625f * _2428, 0.1599999964237213134765625f * ((_2432 - (_2433 * _2433)) + 1.0f), _2425 * 0.07999999821186065673828125f);
                    float3 _2467 = float3(0.1599999964237213134765625f * ((_2425 * 0.5f) - _2423), 0.1599999964237213134765625f * ((_2428 - (_2429 * _2429)) + 1.0f), 0.1599999964237213134765625f * _2432) + _2466;
                    float3 _2469 = float3(0.1599999964237213134765625f * _2449, 0.1599999964237213134765625f * ((_2453 - (_2454 * _2454)) + 1.0f), _2446 * 0.07999999821186065673828125f);
                    float3 _2470 = float3(0.1599999964237213134765625f * ((_2446 * 0.5f) - _2444), 0.1599999964237213134765625f * ((_2449 - (_2450 * _2450)) + 1.0f), 0.1599999964237213134765625f * _2453) + _2469;
                    float3 _2476 = ((_2466 / _2467) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.xxx;
                    float3 _2478 = ((_2469 / _2470) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.yyy;
                    float2 _2480 = _2421 * _37_m10.xy;
                    float _2481 = _2476.x;
                    float _2482 = _2478.x;
                    float _2485 = _2476.y;
                    float _2488 = _2476.z;
                    float _2491 = _2478.y;
                    float _2498 = _2478.z;
                    float _2505 = _2467.x;
                    float _2506 = _2470.x;
                    float _2508 = _2467.y;
                    float _2510 = _2467.z;
                    float _2512 = _2470.y;
                    float _2516 = _2470.z;
                    float _2574 = (((((((_2505 * _2506) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2481, _2482), _356).xy, _2408)) + ((_2508 * _2506) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2485, _2482), _356).xy, _2408))) + ((_2510 * _2506) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2488, _2482), _356).xy, _2408))) + ((_2505 * _2512) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2481, _2491), _356).xy, _2408))) + ((_2508 * _2512) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2485, _2491), _356).xy, _2408))) + ((_2510 * _2512) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2488, _2491), _356).xy, _2408))) + ((_2505 * _2516) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2481, _2498), _356).xy, _2408));
                    float4 _2597 = asfloat(uint4(_40.Load(_2291 * 4 + 0), _40.Load(_2294 * 4 + 0), _40.Load(_2297 * 4 + 0), _40.Load(_2300 * 4 + 0)));
                    float _2598 = _2597.w;
                    float2 _2600 = min(_2397, 1.0f.xx - _2397);
                    _2613 = _2272 ? lerp(1.0f, (any(bool3(_2404.x || _2405.x, _2404.y || _2405.y, _2404.z || _2405.z)) || ((asuint(_2408) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2574 + ((_2508 * _2516) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2485, _2498), _356).xy, _2408))) + ((_2510 * _2516) * _38.SampleCmpLevelZero(_26, float3(_2480 + float2(_2488, _2498), _356).xy, _2408))), _2221 ? min(_2598, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2597.z - _2377.w) * 0.25f, min(_2600.x, _2600.y)))) : _2598) : 1.0f;
                  } else {
                    _2613 = clamp(dot(_452, _2056) + 1.0f, 0.0f, 1.0f);
                  }
                  _2614 = _2613;
                } else {
                  _2614 = 1.0f;
                }
                float _2718;
                float3 _2719;
                float _2720;
                float3 _2721;
                float3 _2722;
                float _2723;
                float _2724;
                [branch] if (_1966 == 0u) {
                  float3 _2692 = _33_m6[_1847].xyz * _2194;
                  float3 _2705 = _1601.xyz;
                  _2718 = _2194;
                  _2719 = (_33_m6[_1847].xyz * ((1.0f - _33_m6[_1859].y) + ((1.0f / max(1.0f, max(max(_2692.x, _2692.y), _2692.z) * lerp(0.75f, 0.5f, 1.0f - _1405))) * _33_m6[_1859].y))) * lerp(0.5f * _33_m6[_1859].x, 1.0f, clamp(dot(normalize(lerp(float3(_452.x, 6.103515625e-05f, _452.z), _1459, _558)), _2056) + 0.5f, 0.0f, 1.0f));
                  _2720 = _2215;
                  _2721 = _2705;
                  _2722 = _2705;
                  _2723 = 1.0f;
                  _2724 = 0.0f;
                }
                else {
                  float _2684;
                  float _2685;
                  float3 _2686;
                  float3 _2687;
                  float _2688;
                  float _2689;
                  if (_1966 == 3u) {
                    float3 _2664 = -normalize(cross(_496, cross(_496, _2056)));
                    _2684 = _2194 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _33_m6[_1859].x), lerp(0.89999997615814208984375f, 0.5f, _33_m6[_1859].x), _1732) * _1737, max(_1737, float(dot(_496, _2664) < (-0.00999999977648258209228515625f))) * _478, clamp((_33_m6[_1859].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2614);
                    _2685 = clamp(dot(_1459, _2664), 0.0f, 1.0f);
                    _2686 = lerp(0.5f.xxx, _1311, _33_m6[_1859].y.xxx);
                    _2687 = 0.0f.xxx;
                    _2688 = 1.0f;
                    _2689 = 0.0f;
                  } else {
                    bool _2623 = _1966 == 1u;
                    float _2654;
                    float3 _2655;
                    float _2656;
                    float _2657;
                    if (_2623) {
                      _2654 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1460 - _33_m6[_1859].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _476), clamp(_2214 + _33_m6[_1859].x, -1.0f, 1.0f) + (_33_m6[_1859].z * _1541)) * _2614);
                      _2655 = _1315 * _33_m6[_1859].y;
                      _2656 = 1.0f;
                      _2657 = 0.0f;
                    } else {
                      bool _2627 = _1966 == 2u;
                      float _2639;
                      if (_2627) {
                        _2639 = smoothstep(_33_m6[_1859].x + 0.0500000007450580596923828125f, _33_m6[_1859].x - 0.0500000007450580596923828125f, _1305) * ((1.0f - _33_m6[_1859].z) + (step(0.5f, _1308) * _33_m6[_1859].z));
                      } else {
                        _2639 = 1.0f;
                      }
                      _2654 = _2215;
                      _2655 = 0.0f.xxx;
                      _2656 = _2639;
                      _2657 = _2627 ? _33_m6[_1859].y : 0.0f;
                    }
                    bool3 _2658 = _2623.xxx;
                    _2684 = _2194;
                    _2685 = _2654;
                    _2686 = float3(_2658.x ? _1311.x : 0.0f.xxx.x, _2658.y ? _1311.y : 0.0f.xxx.y, _2658.z ? _1311.z : 0.0f.xxx.z);
                    _2687 = _2655;
                    _2688 = _2656;
                    _2689 = _2657;
                  }
                  _2718 = _2684;
                  _2719 = _33_m6[_1847].xyz;
                  _2720 = _2685;
                  _2721 = _2686;
                  _2722 = _2687;
                  _2723 = _2688;
                  _2724 = _2689;
                }
                float3 _2752;
                [branch] if (_1966 != 3u) {
                  float _2729 = lerp(_1317, 0.00999999977648258209228515625f, _2724);
                  float _2732 = dot(_1183, normalize(_2056 + _394));
                  float _2733 = _2729 * _2729;
                  float _2737 = (((_2732 * _2733) - _2732) * _2732) + 1.0f;
                  float _2738 = _2737 * _2737;
                  _2752 = ((_1314 * clamp((((_2733 != _2738) ? (_2733 / _2738) : 1.0f) * (0.5f / ((_1638 + (_2729 * _1640)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2723) * _33_m6[_1868].z;
                }
                else {
                  _2752 = 0.0f.xxx;
                }
                float3 _2755 = _2719 * _2718;
                _2762 = _1808 + (((_2755 * lerp(_2722, _2721, _2720.xxx)) * 1.0f) + ((_2755 * _2752) * _2720));
              }
              else {
                _2762 = _1808;
              }
              _2763 = _2762;
              break;
            } while (false);
            _2764 = _2763;
            break;
          } while (false);
          _2765 = _2764;
        } else {
          _2765 = _1808;
        }
        _2766 = _2765;
        break;
      } while (false);
      _1834 = _2766;
    }
  }
  float3 _2807;
  [branch] if (_50_m12 > 0.5f) {
    _2807 = lerp(lerp(0.5f.xxx, lerp(dot(_1807, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1807, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * (smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_1730, 0.0f, 1.0f)) * _1072)) * _50_m17);
  }
  else {
    _2807 = _1807;
  }
  float4 _2814 = float4(_2807 * _19_m20.y, 1.0f);
  _2814.w = 1.0f;
  float4 _3198;
  [branch] if (_19_m94.w < 0.5f) {
    float3 _2819 = -_394;
    float _2835 = _540 * _19_m46.w;
    float _2840 = max(0.00999999977648258209228515625f, _2835 + _19_m47.w);
    float3 _2854 = exp(_19_m45.xyz * ((-max(0.0f, (_395 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2840)) / _2840) * exp(_2835 + _19_m48.w))));
    float _2857 = dot(_2819, _19_m44.xyz);
    float _2863 = _19_m45.w * _19_m45.w;
    float _2867 = (1.0f + _2863) - ((2.0f * _19_m45.w) * _2857);
    float3 _3190;
    float _3191;
    if (_19_m55.z > 0.0f) {
      uint3 _3018 = (uint3(int3(_1392, _1393, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3019 = _3018.y;
      uint _3020 = _3018.z;
      uint _3023 = _3018.x + (_3019 * _3020);
      uint _3025 = _3019 + (_3020 * _3023);
      uint _3027 = _3020 + (_3023 * _3025);
      uint _3029 = _3023 + (_3025 * _3027);
      float _3054 = dot(_2819, -_17_m0[2].xyz);
      float3 _3061 = _445 - _17_m11.xyz;
      float _3063 = (_19_m55.w * ((_3054 > 5.9604644775390625e-08f) ? (1.0f / _3054) : 0.0f)) * (1.0f / _395);
      float _3064 = _3061.y;
      float _3065 = _3063 * _3064;
      float _3067 = _17_m11.y + _3065;
      float _3068 = _3064 - _3065;
      float _3070 = (1.0f - _3063) * _395;
      float _3084 = max(-127.0f, _19_m49.z * _3068);
      float _3108 = max(-127.0f, _19_m52.x * _3068);
      float _3119 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3067 - _19_m49.x)))) * ((abs(_3084) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3084)) / _3084) : (0.693147182464599609375f - (0.2402265071868896484375f * _3084)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3067 - _19_m52.z)))) * ((abs(_3108) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3108)) / _3108) : (0.693147182464599609375f - (0.2402265071868896484375f * _3108))));
      float _3141 = clamp((_395 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3144 = clamp((max(clamp(exp2(-(_3119 * _3070)), 0.0f, 1.0f), _19_m51.w) + clamp((_395 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3141, 0.0f, 1.0f);
      float4 _3184 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _63.SampleLevel(_24, float3((_1782 + ((((float3(uint3(_3029, _3025 + (_3027 * _3029), _360) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_375 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_375 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3190 = _3184.xyz + (((_19_m51.xyz * (1.0f - _3144)) + (((_19_m54.xyz * pow(clamp(dot(_394, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3119 * max(_3070 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3141))) * _3184.w);
      _3191 = _3184.w * _3144;
    } else {
      float3 _2894 = _445 - _17_m11.xyz;
      float _2896 = _2894.y;
      float _2910 = max(-127.0f, _19_m49.z * _2896);
      float _2934 = max(-127.0f, _19_m52.x * _2896);
      float _2945 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2910) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2910)) / _2910) : (0.693147182464599609375f - (0.2402265071868896484375f * _2910)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2934) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2934)) / _2934) : (0.693147182464599609375f - (0.2402265071868896484375f * _2934))));
      float _2967 = clamp((_395 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _2970 = clamp((max(clamp(exp2(-(_2945 * _395)), 0.0f, 1.0f), _19_m51.w) + clamp((_395 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2967, 0.0f, 1.0f);
      _3190 = (_19_m51.xyz * (1.0f - _2970)) + (((_19_m54.xyz * pow(clamp(dot(_394, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2945 * max(_395 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2967));
      _3191 = _2970;
    }
    float3 _3196 = (_2814.xyz * (_2854 * _3191)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2857 * _2857)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2863) / max((12.56637096405029296875f * _2867) * sqrt(_2867), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2854)) * _3191) + _3190);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3196 = (_3196 * 0.65f) + (_2814.xyz * 0.35f);
    }
    // RenoDX code end
    _3198 = float4(_3196.x, _3196.y, _3196.z, _2814.w);
  }
  else {
    _3198 = _2814;
  }
  _14 = _3198;
  _15 = _1355;
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

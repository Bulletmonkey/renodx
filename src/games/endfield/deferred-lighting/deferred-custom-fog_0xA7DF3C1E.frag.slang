#include "./renodx_injection.hlsli"

// Ported from the native 0xA7DF3C1E Vulkan dump.
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

static float3 _368;
static float _369;
static float3 _370;
static float _373;
static uint _374;

static const int2 _344[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _345[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(52, 0)]] cbuffer _60_61 : register(b52, space0) {
  float4 _61_m0[32] : packoffset(c0);
  column_major float4x4 _61_m1[32] : packoffset(c32);
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
[[vk::binding(45, 0)]] Texture2D<float4> _53 : register(t45, space0);
[[vk::binding(44, 0)]] Texture2D<float4> _54 : register(t44, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _55 : register(t41, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _56 : register(t5, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _57 : register(t3, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _58 : register(t2, space1);
[[vk::binding(29, 0)]] Texture2D<float4> _59 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _64 : register(t38, space0);

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
  float2 _379 = _3;
  float _389 = 1.0f / gl_FragCoord.w;
  float3 _404 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
  float _405 = dot(_404, _404);
  float _407 = rsqrt(max(_405, 9.9999999392252902907785028219223e-09f));
  float3 _408 = _404 * _407;
  float _409 = _405 * _407;
  uint _412 = asuint(_22_m0[_12]._m2.x);
  bool _417 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
  float4 _434;
  float4 _435;
  float4 _436;
  if (_417) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0xA7DF3C1E:
    _434 = asfloat(_31_Load4((_412 + 2u) * 16 + 0));
    _435 = asfloat(_31_Load4((_412 + 1u) * 16 + 0));
    _436 = asfloat(_31_Load4(_412 * 16 + 0));
    */
    _434 = asfloat(_31_Load4((_412 + 2u) * 16 + 0));
    _435 = asfloat(_31_Load4((_412 + 1u) * 16 + 0));
    _436 = asfloat(_31_Load4(_412 * 16 + 0));
    // RenoDX code end
  } else {
    _434 = _22_m0[_12]._m0[2];
    _435 = _22_m0[_12]._m0[1];
    _436 = _22_m0[_12]._m0[0];
  }
  float4 _442 = _56.SampleBias(_25, _379, _19_m16);
  float3 _447 = _442.xyz * _50_m24.xyz;
  float _454 = 1.0f - _50_m0;
  float _455 = _442.w;
  float3 _459 = _4 + _17_m11.xyz;
  float3 _463 = _459 - float3(_436.w, _373, _434.w);
  _463.y = 6.103515625e-05f;
  float3 _466 = normalize(_463);
  float3 _476 = _447 * 12.9200000762939453125f;
  float3 _480 = (pow(abs(_447), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
  bool3 _481 = bool3(_447.x <= 0.003130800090730190277099609375f.xxx.x, _447.y <= 0.003130800090730190277099609375f.xxx.y, _447.z <= 0.003130800090730190277099609375f.xxx.z);
  float3 _483 = clamp(float3(_481.x ? _476.x : _480.x, _481.y ? _476.y : _480.y, _481.z ? _476.z : _480.z), 0.0f.xxx, 1.0f.xxx);
  float _487 = _483.z * 31.0f;
  float _488 = floor(_487);
  float2 _492 = ((_483.xy * 31.0f) * float2(0.0009765625f, 0.03125f)) + float2(0.00048828125f, 0.015625f);
  float3 _493 = float3(_492.x, _492.y, _483.z);
  _493.x = _492.x + (_488 * 0.03125f);
  float3 _508 = lerp(_52.SampleLevel(_24, _493.xy, 0.0f).xyz, _52.SampleLevel(_24, _493.xy + float2(0.03125f, 0.0f), 0.0f).xyz, (_487 - _488).xxx);
  float4 _512 = _58.SampleBias(_24, _379, _19_m16);
  float _514 = _512.y;
  float _515 = _512.z;
  float _516 = _512.w;
  float _521 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
  float3 _522 = normalize(_5) * _521;
  uint2 _524 = uint2(gl_FragCoord.xy);
  float3 _534 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3x3 _538 = float3x3(_436.xyz, _435.xyz, _434.xyz);
  float3 _539 = mul(_534, _538);
  float2 _545 = normalize((_539 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_539, _539)))).xz);
  float _546 = _545.y;
  uint _555 = asuint((_19_m92.x > 0.5f) ? _19_m92.y : _22_m0[_12]._m7.x);
  float4 _568 = float4(float(_555 & 255u), float((_555 >> 8u) & 255u), float((_555 >> 16u) & 255u), float((_555 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _569 = _568.x;
  float _572 = _568.w;
  float _578 = _459.y;
  float _582 = max(_568.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m92.w, _19_m92.x) - _578) * _568.y);
  float _583 = max(_569, _582);
  float _591 = lerp(_19_m22.x, 1.0f, _19_m94.w) * _19_m20.x;
  float _593 = _522.z;
  float3 _596 = _514.xxx;
  float3 _598 = normalize(lerp(_466, normalize(float3(_522.x, 6.103515625e-05f, _593)), _596));
  float3 _1090;
  float _1091;
  if (_19_m83.y < 0.5f) {
    float3 _616 = _459 - (_19_m108.xyz + (_534 * (-_19_m110.w)));
    float _631 = max(min(max((max(abs(_616.x), abs(_616.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_616.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _933;
    float4 _934;
    float4 _935;
    float _936;
    float _937;
    if ((_19_m108.w != 0.0f) && (_631 < 1.0f)) {
      float3 _644 = _459 - (_19_m108.xyz + (_534 * (-_19_m110.y)));
      float _658 = max(clamp((max(abs(_644.x), abs(_644.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_644.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _734;
      float4 _735;
      float4 _736;
      float4 _737;
      if (_658 < 1.0f) {
        float3 _667 = ((_459 * 2.0f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _669 = _667 - floor(_667);
        float4 _673 = _43.SampleLevel(_25, _669, 0.0f);
        float _674 = 1.0f - _658;
        float _678 = _19_m109.y * 0.5f;
        float _683 = _669.x;
        float _684 = clamp(_669.y, _678, 1.0f - _678) * 0.3333333432674407958984375f;
        float _685 = _669.z;
        float4 _688 = _44.SampleLevel(_24, float3(_683, _684, _685), 0.0f);
        float _704 = _673.x;
        float _714 = _673.y;
        float _724 = _673.z;
        _734 = _631 + (_688.w * _674);
        _735 = float4(((_44.SampleLevel(_24, float3(_683, _684 + 0.666666686534881591796875f, _685), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _724, _724) * _674;
        _736 = float4(((_44.SampleLevel(_24, float3(_683, _684 + 0.3333333432674407958984375f, _685), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _714, _714) * _674;
        _737 = float4(((_688.xyz * 4.0f) - 2.0f.xxx) * _704, _704) * _674;
      } else {
        _734 = _631;
        _735 = 0.0f.xxxx;
        _736 = 0.0f.xxxx;
        _737 = 0.0f.xxxx;
      }
      float3 _743 = _459 - (_19_m108.xyz + (_534 * (-_19_m110.z)));
      float _757 = max(clamp((max(abs(_743.x), abs(_743.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_743.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _837;
      float4 _838;
      float4 _839;
      float4 _840;
      if (_757 < 1.0f) {
        float3 _766 = ((_459 * 0.5f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _768 = _766 - floor(_766);
        float4 _772 = _45.SampleLevel(_25, _768, 0.0f);
        float _774 = _658 * (1.0f - _757);
        float _778 = _19_m109.y * 0.5f;
        float _783 = _768.x;
        float _784 = clamp(_768.y, _778, 1.0f - _778) * 0.3333333432674407958984375f;
        float _785 = _768.z;
        float4 _788 = _46.SampleLevel(_24, float3(_783, _784, _785), 0.0f);
        float _804 = _772.x;
        float _815 = _772.y;
        float _826 = _772.z;
        _837 = _734 + (_788.w * _774);
        _838 = _735 + (float4(((_46.SampleLevel(_24, float3(_783, _784 + 0.666666686534881591796875f, _785), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _826, _826) * _774);
        _839 = _736 + (float4(((_46.SampleLevel(_24, float3(_783, _784 + 0.3333333432674407958984375f, _785), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _815, _815) * _774);
        _840 = _737 + (float4(((_788.xyz * 4.0f) - 2.0f.xxx) * _804, _804) * _774);
      } else {
        _837 = _734;
        _838 = _735;
        _839 = _736;
        _840 = _737;
      }
      float4 _923;
      float4 _924;
      float4 _925;
      float _926;
      if (_757 > 0.0f) {
        float3 _849 = ((_459 * 0.125f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _852 = _19_m109.xyz * 0.5f;
        float3 _854 = clamp(_849 - floor(_849), _852, 1.0f.xxx - _852);
        float4 _858 = _47.SampleLevel(_25, _854, 0.0f);
        float _860 = _757 * (1.0f - _631);
        float _864 = _19_m109.y * 0.5f;
        float _869 = _854.x;
        float _870 = clamp(_854.y, _864, 1.0f - _864) * 0.3333333432674407958984375f;
        float _871 = _854.z;
        float4 _874 = _48.SampleLevel(_24, float3(_869, _870, _871), 0.0f);
        float _890 = _858.x;
        float _901 = _858.y;
        float _912 = _858.z;
        _923 = _838 + (float4(((_48.SampleLevel(_24, float3(_869, _870 + 0.666666686534881591796875f, _871), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _912, _912) * _860);
        _924 = _839 + (float4(((_48.SampleLevel(_24, float3(_869, _870 + 0.3333333432674407958984375f, _871), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _901, _901) * _860);
        _925 = _840 + (float4(((_874.xyz * 4.0f) - 2.0f.xxx) * _890, _890) * _860);
        _926 = _837 + (_874.w * _860);
      } else {
        _923 = _838;
        _924 = _839;
        _925 = _840;
        _926 = _837;
      }
      float _929 = clamp((_926 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _933 = _923;
      _934 = _924;
      _935 = _925;
      _936 = _929 - _631;
      _937 = (_929 + _631) * 0.5f;
    } else {
      _933 = 0.0f.xxxx;
      _934 = 0.0f.xxxx;
      _935 = 0.0f.xxxx;
      _936 = 0.0f;
      _937 = 1.0f;
    }
    float4 _957 = _935 + float4(_19_m111.x * _937, (_19_m111.y * _937) + ((_19_m111.w * _936) * 0.5f), _19_m111.z * _937, (_19_m111.w * _937) + ((_19_m111.y * _936) * 0.375f));
    float4 _977 = _934 + float4(_19_m112.x * _937, (_19_m112.y * _937) + ((_19_m112.w * _936) * 0.5f), _19_m112.z * _937, (_19_m112.w * _937) + ((_19_m112.y * _936) * 0.375f));
    float4 _997 = _933 + float4(_19_m113.x * _937, (_19_m113.y * _937) + ((_19_m113.w * _936) * 0.5f), _19_m113.z * _937, (_19_m113.w * _937) + ((_19_m113.y * _936) * 0.375f));
    float4 _1001 = float4(_598, 1.0f);
    float3 _1007 = max(float3(dot(_957, _1001), dot(_977, _1001), dot(_997, _1001)), 0.0f.xxx) * _591;
    float3 _1015 = ((_957.xyz * 0.2125999927520751953125f) + (_977.xyz * 0.715200006961822509765625f)) + (_997.xyz * 0.072200000286102294921875f);
    float3 _1019 = _1015 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1015, _1015)));
    float4 _1024 = float4(_1019.x, abs(_1019.y), _1019.z, 1.0f);
    float3 _1029 = max(float3(dot(_957, _1024), dot(_977, _1024), dot(_997, _1024)), 0.0f.xxx);
    float _1037 = _1007.z;
    float _1038 = _1007.y;
    float4 _1043 = lerp(float4(_1037, _1038, -1.0f, 0.666666686534881591796875f), float4(_1038, _1037, 0.0f, -0.3333333432674407958984375f), step(_1037, _1038).xxxx);
    float _1044 = _1007.x;
    float _1045 = _1043.x;
    float4 _1053 = lerp(float4(_1045, _1043.yw, _1044), float4(_1044, _1043.yz, _1045), step(_1045, _1044).xxxx);
    float _1054 = _1053.x;
    float _1055 = _1053.w;
    float _1056 = _1053.y;
    float _1058 = _1054 - min(_1055, _1056);
    float _1068 = frac(abs(_1053.z + ((_1055 - _1056) / ((6.0f * _1058) + 9.9999997473787516355514526367188e-05f))));
    float _1075 = min(_1058 / (_1054 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1068 - 0.5f))) * clamp(_1054, 0.0f, 1.0f));
    float _1077 = 2.0f / (2.0f - _1075);
    _1090 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1068, _1075, _1077).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1075.xxx) * _1077;
    _1091 = max(max(max(_1029.x, _1029.y), _1029.z), 0.0f) * _591;
  } else {
    _1090 = _19_m85.xyz;
    _1091 = _591;
  }
  float _1110 = _512.x * lerp(clamp(_546 + 0.5f, 0.0f, 1.0f), 1.0f, _514);
  float _1124 = clamp((1.0f - clamp((clamp(dot(_522, _408), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1110 * lerp(_50_m31, _50_m30, _515)), 0.0f, 1.0f);
  float3 _1132 = _447 * ((1.0f - _1124).xxx + (_50_m34.xyz * _1124));
  float _1133 = lerp(0.0f, _50_m1, _514);
  float _1219;
  float _1220;
  float3 _1221;
  float _1222;
  float _1223;
  [branch] if ((clamp(_569 + _582, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f) {
    float _1146 = _19_m10.x * 0.800000011920928955078125f;
    float4 _1151 = _53.SampleBias(_25, _379 + float2(0.0f, frac(_1146)), _19_m16);
    float4 _1165 = float4(_1151.xy, _53.SampleBias(_25, _379 + float2(0.0f, frac(_1146 + 0.004999999888241291046142578125f)), _19_m16).w, _1151.w);
    float4 _1169 = _54.SampleBias(_25, _379, _19_m16);
    float _1170 = _1169.z;
    float2 _1172 = _1165.zw * _1170;
    float _1174 = _1172.y;
    float2 _1177 = (_1165.xy * 2.0f) - 1.0f.xx;
    float _1178 = _1172.x;
    float _1181 = clamp(_1178 + _1174, 0.0f, 1.0f) * _583;
    float _1182 = (_1151.z * _1170) * _583;
    float3 _1185 = float3(_1177, 0.0f);
    float2 _1186 = _1185.xy;
    _1185.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1186, _1186), 0.0f, 1.0f)));
    float _1200 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1177.y * 0.5f) + 0.5f), 1.0f, clamp(_1178 - _1174, 0.0f, 1.0f));
    _1219 = lerp(_1133, 3.0f, clamp((_1181 * 2.0f) + _1182, 0.0f, 1.0f) * _583);
    _1220 = _455 * ((1.0f - _1181) + (lerp((1.0f - _1200) + (0.800000011920928955078125f * _1200), 0.89999997615814208984375f, _514) * _1181));
    _1221 = normalize(mul(_1185, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _521;
    _1222 = lerp(_454, 0.5f, _583);
    _1223 = clamp(clamp(_1181 + _1182, 0.0f, 1.0f), 0.0f, 1.0f);
  }
  else {
    _1219 = _1133;
    _1220 = _455;
    _1221 = _522;
    _1222 = _454;
    _1223 = 0.0f;
  }
  float3 _1342;
  float _1343;
  float3 _1344;
  float3 _1345;
  float _1346;
  [branch] if ((_572 - _50_m20) > 0.00999999977648258209228515625f) {
    bool3 _1228 = _417.xxx;
    float3 _1230 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1231 = float3(_1228.x ? _1230.x : _10.x, _1228.y ? _1230.y : _10.y, _1228.z ? _1230.z : _10.z);
    float3 _1234 = _1231 * _19_m92.z;
    float3 _1236 = float3(_1228.x ? _9.xzy.x : _9.x, _1228.y ? _9.xzy.y : _9.y, _1228.z ? _9.xzy.z : _9.z);
    float3 _1238 = abs(_1236) - 0.20000000298023223876953125f.xxx;
    float3 _1241 = max((_1238 * _1238) * _1238, 6.103515625e-05f.xxx);
    float3 _1244 = _1241 / dot(_1241, 1.0f.xxx).xxx;
    float4 _1267 = ((_55.SampleBias(_25, _1234.xz, _19_m16) * _1244.y) + (_55.SampleBias(_25, _1234.xy, _19_m16) * _1244.z)) + (_55.SampleBias(_25, _1234.zy, _19_m16) * _1244.x);
    float _1275 = clamp(_572 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1231.y) * clamp(_572 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1283 = _1275 * (2.0f - _1275);
    float _1290 = smoothstep(2.0f - _1283, 2.349999904632568359375f - _1283, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1236.y) + _1267.z) * 0.60000002384185791015625f, _514 * _1110)) * ((_1220 * _1220) * float(gl_FrontFacing));
    float3 _1292 = _1290.xxx;
    float2 _1298 = (_1267.xy * 2.0f) - 1.0f.xx;
    float3 _1299 = float3(_1298.x, _1298.y, _370.z);
    float2 _1300 = _1298.xy;
    _1299.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1300, _1300), 0.0f, 1.0f)));
    float2 _1308 = _1299.xy * 2.0f;
    float3 _1310 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1308.x, _1308.y, _1299.z), _1292);
    float3 _1314 = _1310 * rsqrt(max(6.103515625e-05f, dot(_1310, _1310)));
    float _1315 = _522.y;
    float _1318 = step(0.00999999977648258209228515625f, 1.0f - (_1315 * _1315));
    float _1321 = lerp(_593, _1315, _1318);
    float3 _1328 = (float3(0.0f, _1318, 1.0f - _1318) - (_522 * _1321)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1321 * _1321)));
    _1342 = ((cross(_1328, _522) * _1314.x) + (_1328 * _1314.y)) + (_522 * _1314.z);
    _1343 = lerp(_1222, 0.89999997615814208984375f, clamp(_1290 * 4.0f, 0.0f, 1.0f));
    _1344 = lerp(_508 * 1.0f, 0.3079999983310699462890625f.xxx, _1292);
    _1345 = lerp(_1132 * 1.0f, 0.87999999523162841796875f.xxx, _1292);
    _1346 = lerp(_50_m2, 0.0f, _1290);
  }
  else {
    _1342 = _522;
    _1343 = _1222;
    _1344 = _508;
    _1345 = _1132;
    _1346 = _50_m2;
  }
  float _1348 = 0.959999978542327880859375f - (_1346 * 0.959999978542327880859375f);
  float3 _1349 = _1345 * _1348;
  float3 _1352 = lerp(0.039999999105930328369140625f.xxx * _1219, _1345, _1346.xxx);
  float3 _1353 = _1344 * _1348;
  float _1355 = max(_1343 * _1343, 0.0078125f);
  bool _1362 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
  float2 _1375 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _1375.y = -_1375.y;
  float2 _1391 = lerp(((sqrt(sqrt(abs(_1375 * 0.5f))) * float2(int2(sign(_1375)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1362).xx);
  float4 _1393 = float4(_1391.x, _1391.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _1393.z = 1.0f;
  _1393.w = _1362 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _1406 = lerp(-_33_m0.xyz, _19_m93.xyz, _19_m83.w.xxx);
  float3 _1420 = lerp(_33_m3.xyz, _19_m86.xyz, _19_m94.y.xxx);
  float3 _1426 = _1420 * lerp(_33_m3.w, _19_m87.w, _19_m94.w);
  int _1430 = int(_524.x);
  int _1431 = int(_524.y);
  float4 _1435 = _41.Load(int3(int3(_1430, _1431, 0).xy, 0));
  float _1440 = _1435.y;
  float _1443 = lerp(lerp(1.0f, _1435.x, _37_m6.x), 1.0f, _19_m83.z);
  float3 _1451 = _1353 * _19_m82.z;
  float3 _1452 = _1451 * 0.64999997615814208984375f;
  float3 _1466 = mul(_1406, _538);
  float3 _1467 = float3(_1466.x, _1466.y, _1466.z);
  _1467.y = 6.103515625e-05f;
  float3 _1469 = normalize(_1467);
  float _1472 = float(_1469.x > 0.0f);
  float2 _1476 = _379;
  _1476.x = lerp(1.0f - _379.x, _379.x, _1472);
  float4 _1480 = _57.SampleLevel(_24, _1476, 0.0f);
  float _1482 = _1480.z * 2.0f;
  float _1485 = lerp(1.0f - _1482, _1482 - 1.0f, _1472);
  float3 _1490 = mul(_538, normalize(float3(_1485, 6.103515625e-05f, 1.0f - abs(_1485))));
  float3 _1497 = normalize(lerp((_1490 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1490, _1490)))).xyz, _1342, _596));
  float _1498 = _1480.w;
  float _1499 = _1469.z;
  float _1500 = -_1499;
  float _1520 = clamp(lerp(_1499, (_1500 * ((_1499 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1406.x, 6.103515625e-05f, _1406.z)).xz, normalize(_534.xz)), 0.0f, 1.0f) * clamp(_1500, 0.0f, 1.0f)) * (1.0f - _19_m94.x)) + (_19_m98.w * _19_m83.w), -1.0f, 1.0f) * 0.5f;
  float _1522 = clamp(0.5f - _1520, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
  float _1528 = (_1480.x + _1480.y) * 0.5f;
  float _1539 = _19_m97.z * 0.5f;
  float _1541 = clamp(0.5f - _1539, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
  float4 _1562 = _51.SampleLevel(_24, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1522 - (1.0f - _1522), 0.0f), min(_1522 + _1522, 1.0f), _1528)) - (_1520 * ceil(_1520)))), clamp(dot(_1342, _1406) + (_19_m93.w * _19_m94.x), -1.0f, 1.0f), _514) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _1563 = _1562.w;
  float _1565 = _1562.x;
  float _1566 = _1562.y;
  float _1567 = _1562.z;
  float _1572 = max(max(_1565, _1566), _1567) - min(min(_1565, _1566), _1567);
  float _1575 = max(_514, _515 * smoothstep(0.75f, 0.25f, _546));
  float _1578 = (1.0f - _1575) + (_1440 * _1575);
  float _1579 = 1.0f - _514;
  float _1588 = min(min(_1578, _1220), _1563);
  float _1589 = _1220 * _1578;
  float3 _1593 = ((clamp(dot(_598, _19_m88.xyz) + _19_m89.x, 0.0f, 1.0f) * _19_m89.y) + _19_m89.z).xxx * lerp(_1090, 1.0f.xxx, (_19_m83.y * _1588).xxx);
  float3 _1595 = _1588.xxx;
  float3 _1618 = _1443.xxx;
  float3 _1619 = lerp((_1593 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1091), 1.5f), clamp(_1091, 1.25f, 1.75f), _19_m83.x)) * _19_m82.w, (lerp(dot(_1426, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1426, _1595) + ((_1593 * clamp(_1091, 0.0f, 1.5f)) * ((1.0f - _19_m94.y).xxx + (_1420 * _19_m94.y)))) * _19_m82.y, _1618);
  float3 _1620 = lerp(lerp(lerp(dot(_1452, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1452, 1.2000000476837158203125f.xxx), _1451, clamp((_1220 * (_1579 + (_1578 * _514))) + _1563, 0.0f, 1.0f).xxx), _1349, _1595);
  float3 _1626 = _1620 * ((1.0f - _1572).xxx + (_1562.xyz * _1572));
  float3 _1635 = lerp(lerp(_1451, lerp(dot(_1349, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1349, 1.2000000476837158203125f.xxx), _1589.xxx), _1626 * clamp(dot(_1620, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1626, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1618);
  float4 _1639 = float4(_1635, _1443);
  float _1641 = lerp(_1589, _1588, _1443);
  float3 _1652 = float3(_534.x, lerp(0.5f, _1406.y, _1443), _534.z);
  float _1665 = clamp(dot(_1221, _408), 0.0f, 1.0f);
  float _1666 = dot(_1221, normalize(((_1406 * _1443) + ((_1652 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1652, _1652)))) * 2.0f)) + (_408 * (2.0f + _1443))));
  float _1667 = _1355 * _1355;
  float _1671 = (((_1666 * _1667) - _1666) * _1666) + 1.0f;
  float _1672 = _1671 * _1671;
  float _1676 = 2.0f * _1665;
  float _1678 = (1.0f + _1665) - _1665;
  float3 _1719;
  if (_1223 > 0.001000000047497451305389404296875f) {
    _1719 = ((_54.SampleBias(_24, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1221)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1578) * (clamp(_1091, 0.5f, 1.5f) * _19_m82.w)) * (_1223 * _1223);
  } else {
    _1719 = 0.0f.xxx;
  }
  float3 _1722 = ((_1619 * _1635) * 1.0f) + ((((_1352 * clamp((((_1667 != _1672) ? (_1667 / _1672) : 1.0f) * (0.5f / ((_1676 + (_1355 * _1678)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1619 * (((_1641 * 0.5f) + 0.5f) * lerp(_19_m82.z, 1.0f, _1641))) * 1.0f)) * _19_m95.w) + _1719);
  float _1723 = dot(_1722, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _1726 = clamp(_1723 - 0.5f, 0.0f, 0.5f);
  float3 _1762 = normalize(cross(_534, lerp(float3(_19_m91.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m91.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m91.y), _19_m97.w.xxx)));
  float _1768 = dot(_408, _1497);
  float _1770 = 1.0f - abs(_1768);
  float _1775 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_546));
  float3 _1819 = lerp(_1723.xxx, _1722, ((_1726 * _1726) + 1.0f).xxx) + ((((((_19_m90.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m91.w), lerp(0.89999997615814208984375f, 0.5f, _19_m91.w), _1770) * _1775, max(_1775, float(dot(_534, _1762) < (-0.00999999977648258209228515625f))) * _516, clamp((_19_m91.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m90.w) * min(min(clamp(dot(_466, _1762) + 1.0f, 0.0f, 1.0f), _1220), _1440)) * (lerp(0.25f.xxx, _1349, _19_m91.z.xxx) * clamp(dot(_1762, _1497), 0.0f, 1.0f))) * (1.0f - (_19_m98.z * _1579))) + (((_19_m96.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1541 - (1.0f - _1541), 0.0f), min(_1541 + _1541, 1.0f), _1528)) - (_1539 * ceil(_1539))))) * _1579)) * _19_m96.w) * _1349));
  float2 _1820 = float2(_524);
  float2 _1822 = floor(_1820 * 0.03125f);
  int _1830 = int((_1822.x + (_1822.y * _35_m9)) * 8.0f);
  float _1837 = floor(_389 - (_19_m3.y * _35_m15));
  float _1841 = clamp(_1837, 0.0f, _35_m11 - 1.0f);
  int _1843 = int(_1841 * 8.0f);
  float3 _1845;
  _1845 = _1819;
  float3 _1846;
  [loop] for (int _1848 = 0; _1848 <= 7; _1845 = _1846, _1848++) {
    uint _1869 = (_1837 <= _1841) ? (_29.Load(uint((_35_m2 + _1830) + _1848) * 4 + 0) & _29.Load(uint((_35_m3 + _1843) + _1848) * 4 + 0)) : 0u;
    uint _1870 = uint(_1848);
    _1846 = _1845;
    uint _1875;
    float3 _1872;
    [loop] for (uint _1874 = _1869; _1874 != 0u; _1846 = _1872, _1874 = _1875) {
      uint _1879 = firstbitlow(_1874);
      _1875 = _1874 ^ (1u << (_1879 & 31u));
      int _1885 = int((32u * _1870) + _1879) * 8;
      int _1888 = _1885 + 1;
      int _1891 = _1885 + 2;
      int _1894 = _1885 + 3;
      int _1897 = _1885 + 4;
      int _1900 = _1885 + 5;
      int _1903 = _1885 + 6;
      int _1906 = _1885 + 7;
      uint _1910 = uint(_33_m6[_1900].w);
      float _1985;
      if ((_1910 & 1u) == 1u) {
        uint _1916 = asuint(_33_m6[_1900].x);
        uint _1923 = asuint(_33_m6[_1900].y);
        uint _1930 = asuint(_33_m6[_1900].z);
        uint _1937 = asuint(_33_m6[_1903].x);
        uint _1944 = asuint(_33_m6[_1903].y);
        uint _1951 = asuint(_33_m6[_1903].z);
        float3 _1970 = abs(mul(float4(_459 - _33_m6[_1888].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1916).x, spvUnpackHalf2x16(_1930).x, spvUnpackHalf2x16(_1944).x, 0.0f), float4(spvUnpackHalf2x16(_1916 >> 16u).x, spvUnpackHalf2x16(_1930 >> 16u).x, spvUnpackHalf2x16(_1944 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1923).x, spvUnpackHalf2x16(_1937).x, spvUnpackHalf2x16(_1951).x, 0.0f), float4(spvUnpackHalf2x16(_1923 >> 16u).x, spvUnpackHalf2x16(_1937 >> 16u).x, spvUnpackHalf2x16(_1951 >> 16u).x, 0.0f))).xyz);
        float _1977 = _33_m6[_1906].x * 0.5f;
        float _1983 = 1.0f - clamp((max(max(_1970.x, _1970.y), _1970.z) - (_1977 + 0.5f)) / (0.5f - _1977), 0.0f, 1.0f);
        _1985 = _1983 * _1983;
      } else {
        _1985 = 1.0f;
      }
      if (false || (_1985 < 0.001000000047497451305389404296875f)) {
        _1872 = _1846;
        continue;
      }
      float3 _2804;
      do {
        uint _1993 = uint(_33_m6[_1885].w);
        [branch] if (_1993 >= 4u) {
          _2804 = _1846;
          break;
        }
        float3 _2803;
        if (_33_m6[_1885].w < 1.5f) {
          float3 _2802;
          do {
            uint _2004 = asuint(_33_m6[_1894].w);
            if ((_2004 == 16u) || ((_33_m6[_1894].z + _19_m94.z) < 0.5f)) {
              _2802 = _1846;
              break;
            }
            bool _2015 = (_1993 & 1u) == 0u;
            bool _2019 = (!_2015) && (_33_m6[_1891].z > 0.0f);
            bool _2020 = _2004 == 4u;
            float _2021 = float(_2015);
            float _2029 = (0.5f + (0.5f * _33_m6[_1891].y)) - abs(_33_m6[_1891].x);
            float _2030 = _33_m6[_1891].y - _2029;
            float _2037 = abs(max((1.0f - abs(_2029)) - abs(_2030), 0.00048828125f));
            float3 _2041 = normalize(float3(_2029, _2030, (_33_m6[_1891].x >= 0.0f) ? _2037 : (-_2037)));
            float _2047 = lerp(_33_m6[_1903].w, max(2.0f * _33_m6[_1897].y, 0.100000001490116119384765625f), float(_2020));
            float3 _2052 = _33_m6[_1888].xyz - _459;
            float3 _2053 = -_2041;
            float3 _2058 = lerp(_2052, _2053 * dot(_2052, _2053), (float(_2020 && (_33_m6[_1897].z > 0.5f)) * _2021).xxx);
            float _2059 = dot(_2058, _2058);
            float _2060 = rsqrt(_2059);
            float3 _2061 = _2058 * _2060;
            float3 _2094;
            float _2095;
            if (_2019) {
              float3 _2065 = (_2041 * _33_m6[_1891].z) * 0.5f;
              float3 _2066 = _2058 - _2065;
              float3 _2067 = _2058 + _2065;
              float _2068 = length(_2066);
              float _2069 = length(_2067);
              float3 _2078 = normalize(cross(cross(_2041, _2061), _2041));
              _2094 = _2078;
              _2095 = ((1.0f / ((((_2068 * _2069) + dot(_2066, _2067)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2078, _2066) / _2068) + (dot(_2078, _2067) / _2069)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_33_m6[_1891].z * _2060, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2094 = _2061;
              _2095 = 1.0f;
            }
            float _2117;
            if (_2047 < 0.0f) {
              float _2111 = _2059 * (_33_m6[_1888].w * _33_m6[_1888].w);
              float _2114 = clamp(1.0f - (_2111 * _2111), 0.0f, 1.0f);
              _2117 = lerp(1.0f / (_2059 + 1.0f), _2095, float(_2019)) * (_2114 * _2114);
            } else {
              float3 _2100 = _2058 * _33_m6[_1888].w;
              _2117 = _2095 * pow(1.0f - clamp(dot(_2100, _2100), 0.0f, 1.0f), _2047);
            }
            float _2122 = clamp((dot(_2094, _2053) - _33_m6[_1891].z) * _33_m6[_1891].w, 0.0f, 1.0f);
            float _2125 = _2117 * lerp(1.0f, _2122 * _2122, _2021);
            int _2127 = int(_33_m6[_1906].w);
            float _2231;
            if ((!_2019) && (_2127 >= 0)) {
              uint _2133 = uint(_2127);
              float2 _2224;
              [branch] if (_2021 != 0.0f) {
                float4 _2214 = mul(_61_m1[_2133], float4(_459.x, _578, _459.z, 1.0f));
                _2224 = _61_m0[_2133].xy + (clamp(_2214.xy / _2214.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2133].zw);
              }
              else {
                float3 _2148 = mul(float4(-_2058, 0.0f), _61_m1[_2133]).xyz;
                float3 _378 = _2148;
                float3 _377 = _2148;
                float3 _376 = abs(_2148);
                uint _2157 = uint(int(_376.y > _376.x));
                uint _2163 = (_376.z > _376[_2157]) ? 2u : _2157;
                uint _2169 = (_2163 * 2u) + uint(_377[_2163] < 0.0f);
                float _2173 = abs(_378[_2169 / 2u]);
                float _2193 = 0.5f - (0.000244140625f / _61_m0[_2133].w);
                _2224 = _61_m0[_2133].xy + (clamp(float2((float(_2169) + ((((_378[uint(_344[_2169].x)] * _345[_2169].x) / _2173) * _2193) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_378[uint(_344[_2169].y)] * _345[_2169].y) / _2173) * _2193)), 0.0f.xx, 1.0f.xx) * _61_m0[_2133].zw);
              }
              _2231 = _2125 * _59.SampleLevel(_24, _2224, 0.0f).x;
            } else {
              _2231 = _2125;
            }
            float _2232 = _2231 * _1985;
            float3 _2801;
            do {
              float3 _2800;
              [branch] if (_2232 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2020) {
                  _2801 = lerp(_1846, _33_m6[_1885].xyz, (_2232 * (_33_m6[_1897].x * ((1.0f - _33_m6[_1897].w) + (smoothstep(-0.5f, 0.5f, dot(_522, _2094)) * _33_m6[_1897].w)))).xxx);
                  break;
                }
                float _2252 = dot(_1497, _2094);
                float _2253 = clamp(_2252, 0.0f, 1.0f);
                float _2652;
                if (_2004 != 0u) {
                  bool _2259 = _2015 || ((_1910 & 2u) != 0u);
                  int _2309;
                  if (_2259) {
                    _2309 = int(_33_m6[_1894].x);
                  } else {
                    uint _2264 = asuint(_33_m6[_1891].w);
                    uint _2265 = asuint(_33_m6[_1894].x);
                    float3 _2266 = _459 - _33_m6[_1888].xyz;
                    float3 _2267 = abs(_2266);
                    float _2268 = _2267.x;
                    float _2269 = _2267.y;
                    float _2271 = _2267.z;
                    int _2304;
                    if ((_2268 > _2269) && (_2268 > _2271)) {
                      _2304 = int((_2266.x > 0.0f) ? (_2264 & 1023u) : ((_2264 >> 10u) & 1023u));
                    } else {
                      int _2296;
                      if (_2269 > _2271) {
                        _2296 = int((_2266.y > 0.0f) ? ((_2264 >> 20u) & 1023u) : (_2265 & 1023u));
                      } else {
                        _2296 = int((_2266.z > 0.0f) ? ((_2265 >> 10u) & 1023u) : ((_2265 >> 20u) & 1023u));
                      }
                      _2304 = _2296;
                    }
                    _2309 = (_2304 == 1023) ? (-1) : _2304;
                  }
                  bool _2310 = _2309 >= 0;
                  float _2651;
                  if (_2310) {
                    float3 _2317 = _459 - _33_m6[_1888].xyz;
                    uint _2327 = asuint(_37_m11.x) + (uint(_2309) * 96u);
                    uint _2329 = (_2327 + 64u) >> 2u;
                    uint _2332 = _2329 + 1u;
                    uint _2335 = _2329 + 2u;
                    uint _2338 = _2329 + 3u;
                    float4 _2342 = asfloat(uint4(_40.Load(_2329 * 4 + 0), _40.Load(_2332 * 4 + 0), _40.Load(_2335 * 4 + 0), _40.Load(_2338 * 4 + 0)));
                    uint _2350 = _2327 >> 2u;
                    uint _2365 = (_2327 + 16u) >> 2u;
                    uint _2380 = (_2327 + 32u) >> 2u;
                    uint _2395 = (_2327 + 48u) >> 2u;
                    float4 _2415 = mul(transpose(float4x4(asfloat(uint4(_40.Load(_2350 * 4 + 0), _40.Load((_2350 + 1u) * 4 + 0), _40.Load((_2350 + 2u) * 4 + 0), _40.Load((_2350 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2365 * 4 + 0), _40.Load((_2365 + 1u) * 4 + 0), _40.Load((_2365 + 2u) * 4 + 0), _40.Load((_2365 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2380 * 4 + 0), _40.Load((_2380 + 1u) * 4 + 0), _40.Load((_2380 + 2u) * 4 + 0), _40.Load((_2380 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2395 * 4 + 0), _40.Load((_2395 + 1u) * 4 + 0), _40.Load((_2395 + 2u) * 4 + 0), _40.Load((_2395 + 3u) * 4 + 0))))), float4((_459 - ((_2317 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2317, _2317)))) * _2342.x)) + (_522 * (_2342.y * 5.0f)), 1.0f));
                    float3 _2419 = _2415.xyz / _2415.w.xxx;
                    uint _2421 = (_2327 + 80u) >> 2u;
                    float4 _2434 = asfloat(uint4(_40.Load(_2421 * 4 + 0), _40.Load((_2421 + 1u) * 4 + 0), _40.Load((_2421 + 2u) * 4 + 0), _40.Load((_2421 + 3u) * 4 + 0)));
                    float2 _2435 = _2419.xy;
                    float2 _2437 = _2434.xy;
                    float3 _2441 = _2419.xyz;
                    bool3 _2442 = bool3(_2441.x <= 0.0f.xxx.x, _2441.y <= 0.0f.xxx.y, _2441.z <= 0.0f.xxx.z);
                    bool3 _2443 = bool3(_2441.x >= 1.0f.xxx.x, _2441.y >= 1.0f.xxx.y, _2441.z >= 1.0f.xxx.z);
                    float _2446 = _2419.z;
                    float2 _2457 = ((_2435 * (_2434.zw - _2437)) + _2437).xy * _37_m10.zw;
                    float2 _2459 = floor(_2457 + 0.5f.xx);
                    float2 _2460 = _2457 - _2459;
                    float _2461 = _2460.x;
                    float _2462 = _2461 + 0.5f;
                    float _2463 = _2462 * _2462;
                    float _2466 = 1.0f - _2461;
                    float _2467 = min(_2461, 0.0f);
                    float _2470 = _2461 + 1.0f;
                    float _2471 = max(_2461, 0.0f);
                    float _2482 = _2460.y;
                    float _2483 = _2482 + 0.5f;
                    float _2484 = _2483 * _2483;
                    float _2487 = 1.0f - _2482;
                    float _2488 = min(_2482, 0.0f);
                    float _2491 = _2482 + 1.0f;
                    float _2492 = max(_2482, 0.0f);
                    float3 _2504 = float3(0.1599999964237213134765625f * _2466, 0.1599999964237213134765625f * ((_2470 - (_2471 * _2471)) + 1.0f), _2463 * 0.07999999821186065673828125f);
                    float3 _2505 = float3(0.1599999964237213134765625f * ((_2463 * 0.5f) - _2461), 0.1599999964237213134765625f * ((_2466 - (_2467 * _2467)) + 1.0f), 0.1599999964237213134765625f * _2470) + _2504;
                    float3 _2507 = float3(0.1599999964237213134765625f * _2487, 0.1599999964237213134765625f * ((_2491 - (_2492 * _2492)) + 1.0f), _2484 * 0.07999999821186065673828125f);
                    float3 _2508 = float3(0.1599999964237213134765625f * ((_2484 * 0.5f) - _2482), 0.1599999964237213134765625f * ((_2487 - (_2488 * _2488)) + 1.0f), 0.1599999964237213134765625f * _2491) + _2507;
                    float3 _2514 = ((_2504 / _2505) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.xxx;
                    float3 _2516 = ((_2507 / _2508) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.yyy;
                    float2 _2518 = _2459 * _37_m10.xy;
                    float _2519 = _2514.x;
                    float _2520 = _2516.x;
                    float _2523 = _2514.y;
                    float _2526 = _2514.z;
                    float _2529 = _2516.y;
                    float _2536 = _2516.z;
                    float _2543 = _2505.x;
                    float _2544 = _2508.x;
                    float _2546 = _2505.y;
                    float _2548 = _2505.z;
                    float _2550 = _2508.y;
                    float _2554 = _2508.z;
                    float _2612 = (((((((_2543 * _2544) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2519, _2520), _369).xy, _2446)) + ((_2546 * _2544) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2523, _2520), _369).xy, _2446))) + ((_2548 * _2544) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2526, _2520), _369).xy, _2446))) + ((_2543 * _2550) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2519, _2529), _369).xy, _2446))) + ((_2546 * _2550) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2523, _2529), _369).xy, _2446))) + ((_2548 * _2550) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2526, _2529), _369).xy, _2446))) + ((_2543 * _2554) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2519, _2536), _369).xy, _2446));
                    float4 _2635 = asfloat(uint4(_40.Load(_2329 * 4 + 0), _40.Load(_2332 * 4 + 0), _40.Load(_2335 * 4 + 0), _40.Load(_2338 * 4 + 0)));
                    float _2636 = _2635.w;
                    float2 _2638 = min(_2435, 1.0f.xx - _2435);
                    _2651 = _2310 ? lerp(1.0f, (any(bool3(_2442.x || _2443.x, _2442.y || _2443.y, _2442.z || _2443.z)) || ((asuint(_2446) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2612 + ((_2546 * _2554) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2523, _2536), _369).xy, _2446))) + ((_2548 * _2554) * _38.SampleCmpLevelZero(_26, float3(_2518 + float2(_2526, _2536), _369).xy, _2446))), _2259 ? min(_2636, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2635.z - _2415.w) * 0.25f, min(_2638.x, _2638.y)))) : _2636) : 1.0f;
                  } else {
                    _2651 = clamp(dot(_466, _2094) + 1.0f, 0.0f, 1.0f);
                  }
                  _2652 = _2651;
                } else {
                  _2652 = 1.0f;
                }
                float _2756;
                float3 _2757;
                float _2758;
                float3 _2759;
                float3 _2760;
                float _2761;
                float _2762;
                [branch] if (_2004 == 0u) {
                  float3 _2730 = _33_m6[_1885].xyz * _2232;
                  float3 _2743 = _1639.xyz;
                  _2756 = _2232;
                  _2757 = (_33_m6[_1885].xyz * ((1.0f - _33_m6[_1897].y) + ((1.0f / max(1.0f, max(max(_2730.x, _2730.y), _2730.z) * lerp(0.75f, 0.5f, 1.0f - _1443))) * _33_m6[_1897].y))) * lerp(0.5f * _33_m6[_1897].x, 1.0f, clamp(dot(normalize(lerp(float3(_466.x, 6.103515625e-05f, _466.z), _1497, _596)), _2094) + 0.5f, 0.0f, 1.0f));
                  _2758 = _2253;
                  _2759 = _2743;
                  _2760 = _2743;
                  _2761 = 1.0f;
                  _2762 = 0.0f;
                }
                else {
                  float _2722;
                  float _2723;
                  float3 _2724;
                  float3 _2725;
                  float _2726;
                  float _2727;
                  if (_2004 == 3u) {
                    float3 _2702 = -normalize(cross(_534, cross(_534, _2094)));
                    _2722 = _2232 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _33_m6[_1897].x), lerp(0.89999997615814208984375f, 0.5f, _33_m6[_1897].x), _1770) * _1775, max(_1775, float(dot(_534, _2702) < (-0.00999999977648258209228515625f))) * _516, clamp((_33_m6[_1897].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2652);
                    _2723 = clamp(dot(_1497, _2702), 0.0f, 1.0f);
                    _2724 = lerp(0.5f.xxx, _1349, _33_m6[_1897].y.xxx);
                    _2725 = 0.0f.xxx;
                    _2726 = 1.0f;
                    _2727 = 0.0f;
                  } else {
                    bool _2661 = _2004 == 1u;
                    float _2692;
                    float3 _2693;
                    float _2694;
                    float _2695;
                    if (_2661) {
                      _2692 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1498 - _33_m6[_1897].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _514), clamp(_2252 + _33_m6[_1897].x, -1.0f, 1.0f) + (_33_m6[_1897].z * _1579)) * _2652);
                      _2693 = _1353 * _33_m6[_1897].y;
                      _2694 = 1.0f;
                      _2695 = 0.0f;
                    } else {
                      bool _2665 = _2004 == 2u;
                      float _2677;
                      if (_2665) {
                        _2677 = smoothstep(_33_m6[_1897].x + 0.0500000007450580596923828125f, _33_m6[_1897].x - 0.0500000007450580596923828125f, _1343) * ((1.0f - _33_m6[_1897].z) + (step(0.5f, _1346) * _33_m6[_1897].z));
                      } else {
                        _2677 = 1.0f;
                      }
                      _2692 = _2253;
                      _2693 = 0.0f.xxx;
                      _2694 = _2677;
                      _2695 = _2665 ? _33_m6[_1897].y : 0.0f;
                    }
                    bool3 _2696 = _2661.xxx;
                    _2722 = _2232;
                    _2723 = _2692;
                    _2724 = float3(_2696.x ? _1349.x : 0.0f.xxx.x, _2696.y ? _1349.y : 0.0f.xxx.y, _2696.z ? _1349.z : 0.0f.xxx.z);
                    _2725 = _2693;
                    _2726 = _2694;
                    _2727 = _2695;
                  }
                  _2756 = _2722;
                  _2757 = _33_m6[_1885].xyz;
                  _2758 = _2723;
                  _2759 = _2724;
                  _2760 = _2725;
                  _2761 = _2726;
                  _2762 = _2727;
                }
                float3 _2790;
                [branch] if (_2004 != 3u) {
                  float _2767 = lerp(_1355, 0.00999999977648258209228515625f, _2762);
                  float _2770 = dot(_1221, normalize(_2094 + _408));
                  float _2771 = _2767 * _2767;
                  float _2775 = (((_2770 * _2771) - _2770) * _2770) + 1.0f;
                  float _2776 = _2775 * _2775;
                  _2790 = ((_1352 * clamp((((_2771 != _2776) ? (_2771 / _2776) : 1.0f) * (0.5f / ((_1676 + (_2767 * _1678)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2761) * _33_m6[_1906].z;
                }
                else {
                  _2790 = 0.0f.xxx;
                }
                float3 _2793 = _2757 * _2756;
                _2800 = _1846 + (((_2793 * lerp(_2760, _2759, _2758.xxx)) * 1.0f) + ((_2793 * _2790) * _2758));
              }
              else {
                _2800 = _1846;
              }
              _2801 = _2800;
              break;
            } while (false);
            _2802 = _2801;
            break;
          } while (false);
          _2803 = _2802;
        } else {
          _2803 = _1846;
        }
        _2804 = _2803;
        break;
      } while (false);
      _1872 = _2804;
    }
  }
  float3 _2845;
  [branch] if (_50_m12 > 0.5f) {
    _2845 = lerp(lerp(0.5f.xxx, lerp(dot(_1845, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1845, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * (smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_1768, 0.0f, 1.0f)) * _1110)) * _50_m17);
  }
  else {
    _2845 = _1845;
  }
  float4 _2852 = float4(_2845 * _19_m20.y, 1.0f);
  _2852.w = 1.0f;
  float4 _3236;
  [branch] if (_19_m94.w < 0.5f) {
    float3 _2857 = -_408;
    float _2873 = _578 * _19_m46.w;
    float _2878 = max(0.00999999977648258209228515625f, _2873 + _19_m47.w);
    float3 _2892 = exp(_19_m45.xyz * ((-max(0.0f, (_409 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2878)) / _2878) * exp(_2873 + _19_m48.w))));
    float _2895 = dot(_2857, _19_m44.xyz);
    float _2901 = _19_m45.w * _19_m45.w;
    float _2905 = (1.0f + _2901) - ((2.0f * _19_m45.w) * _2895);
    float3 _3228;
    float _3229;
    if (_19_m55.z > 0.0f) {
      uint3 _3056 = (uint3(int3(_1430, _1431, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3057 = _3056.y;
      uint _3058 = _3056.z;
      uint _3061 = _3056.x + (_3057 * _3058);
      uint _3063 = _3057 + (_3058 * _3061);
      uint _3065 = _3058 + (_3061 * _3063);
      uint _3067 = _3061 + (_3063 * _3065);
      float _3092 = dot(_2857, -_17_m0[2].xyz);
      float3 _3099 = _459 - _17_m11.xyz;
      float _3101 = (_19_m55.w * ((_3092 > 5.9604644775390625e-08f) ? (1.0f / _3092) : 0.0f)) * (1.0f / _409);
      float _3102 = _3099.y;
      float _3103 = _3101 * _3102;
      float _3105 = _17_m11.y + _3103;
      float _3106 = _3102 - _3103;
      float _3108 = (1.0f - _3101) * _409;
      float _3122 = max(-127.0f, _19_m49.z * _3106);
      float _3146 = max(-127.0f, _19_m52.x * _3106);
      float _3157 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3105 - _19_m49.x)))) * ((abs(_3122) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3122)) / _3122) : (0.693147182464599609375f - (0.2402265071868896484375f * _3122)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3105 - _19_m52.z)))) * ((abs(_3146) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3146)) / _3146) : (0.693147182464599609375f - (0.2402265071868896484375f * _3146))));
      float _3179 = clamp((_409 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3182 = clamp((max(clamp(exp2(-(_3157 * _3108)), 0.0f, 1.0f), _19_m51.w) + clamp((_409 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3179, 0.0f, 1.0f);
      float4 _3222 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _64.SampleLevel(_24, float3((_1820 + ((((float3(uint3(_3067, _3063 + (_3065 * _3067), _374) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_389 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_389 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3228 = _3222.xyz + (((_19_m51.xyz * (1.0f - _3182)) + (((_19_m54.xyz * pow(clamp(dot(_408, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3157 * max(_3108 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3179))) * _3222.w);
      _3229 = _3222.w * _3182;
    } else {
      float3 _2932 = _459 - _17_m11.xyz;
      float _2934 = _2932.y;
      float _2948 = max(-127.0f, _19_m49.z * _2934);
      float _2972 = max(-127.0f, _19_m52.x * _2934);
      float _2983 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2948) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2948)) / _2948) : (0.693147182464599609375f - (0.2402265071868896484375f * _2948)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2972) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2972)) / _2972) : (0.693147182464599609375f - (0.2402265071868896484375f * _2972))));
      float _3005 = clamp((_409 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3008 = clamp((max(clamp(exp2(-(_2983 * _409)), 0.0f, 1.0f), _19_m51.w) + clamp((_409 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3005, 0.0f, 1.0f);
      _3228 = (_19_m51.xyz * (1.0f - _3008)) + (((_19_m54.xyz * pow(clamp(dot(_408, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2983 * max(_409 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3005));
      _3229 = _3008;
    }
    float3 _3234 = (_2852.xyz * (_2892 * _3229)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2895 * _2895)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2901) / max((12.56637096405029296875f * _2905) * sqrt(_2905), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2892)) * _3229) + _3228);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3234 = (_3234 * 0.65f) + (_2852.xyz * 0.35f);
    }
    // RenoDX code end
    _3236 = float4(_3234.x, _3234.y, _3234.z, _2852.w);
  }
  else {
    _3236 = _2852;
  }
  _14 = _3236;
  _15 = _1393;
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

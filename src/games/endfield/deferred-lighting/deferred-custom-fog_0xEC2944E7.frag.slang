#include "./renodx_injection.hlsli"

// Ported from the native 0xEC2944E7 Vulkan dump.
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

static float3 _367;
static float _368;
static float3 _369;
static float _372;
static uint _373;

static const int2 _343[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _344[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
  float2 _378 = _3;
  float _388 = 1.0f / gl_FragCoord.w;
  float3 _403 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
  float _404 = dot(_403, _403);
  float _406 = rsqrt(max(_404, 9.9999999392252902907785028219223e-09f));
  float3 _407 = _403 * _406;
  float _408 = _404 * _406;
  uint _411 = asuint(_22_m0[_12]._m2.x);
  bool _416 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
  float4 _433;
  float4 _434;
  float4 _435;
  if (_416) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0xEC2944E7:
    _433 = asfloat(_31_Load4((_411 + 2u) * 16 + 0));
    _434 = asfloat(_31_Load4((_411 + 1u) * 16 + 0));
    _435 = asfloat(_31_Load4(_411 * 16 + 0));
    */
    _433 = asfloat(_31_Load4((_411 + 2u) * 16 + 0));
    _434 = asfloat(_31_Load4((_411 + 1u) * 16 + 0));
    _435 = asfloat(_31_Load4(_411 * 16 + 0));
    // RenoDX code end
  } else {
    _433 = _22_m0[_12]._m0[2];
    _434 = _22_m0[_12]._m0[1];
    _435 = _22_m0[_12]._m0[0];
  }
  float4 _441 = _56.SampleBias(_25, _378, _19_m16);
  float3 _446 = _441.xyz * _50_m24.xyz;
  float _453 = 1.0f - _50_m0;
  float _454 = _441.w;
  float3 _458 = _4 + _17_m11.xyz;
  float3 _462 = _458 - float3(_435.w, _372, _433.w);
  _462.y = 6.103515625e-05f;
  float3 _465 = normalize(_462);
  float3 _475 = _446 * 12.9200000762939453125f;
  float3 _479 = (pow(abs(_446), 0.4166666567325592041015625f.xxx) * 1.05499994754791259765625f) - 0.054999999701976776123046875f.xxx;
  bool3 _480 = bool3(_446.x <= 0.003130800090730190277099609375f.xxx.x, _446.y <= 0.003130800090730190277099609375f.xxx.y, _446.z <= 0.003130800090730190277099609375f.xxx.z);
  float3 _482 = clamp(float3(_480.x ? _475.x : _479.x, _480.y ? _475.y : _479.y, _480.z ? _475.z : _479.z), 0.0f.xxx, 1.0f.xxx);
  float _486 = _482.z * 31.0f;
  float _487 = floor(_486);
  float2 _491 = ((_482.xy * 31.0f) * float2(0.0009765625f, 0.03125f)) + float2(0.00048828125f, 0.015625f);
  float3 _492 = float3(_491.x, _491.y, _482.z);
  _492.x = _491.x + (_487 * 0.03125f);
  float3 _507 = lerp(_52.SampleLevel(_24, _492.xy, 0.0f).xyz, _52.SampleLevel(_24, _492.xy + float2(0.03125f, 0.0f), 0.0f).xyz, (_486 - _487).xxx);
  float4 _511 = _58.SampleBias(_24, _378, _19_m16);
  float _513 = _511.y;
  float _514 = _511.z;
  float _515 = _511.w;
  float _520 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
  float3 _521 = normalize(_5) * _520;
  uint2 _523 = uint2(gl_FragCoord.xy);
  float3 _533 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3x3 _537 = float3x3(_435.xyz, _434.xyz, _433.xyz);
  float3 _538 = mul(_533, _537);
  float2 _544 = normalize((_538 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_538, _538)))).xz);
  float _545 = _544.y;
  uint _554 = asuint((_19_m92.x > 0.5f) ? _19_m92.y : _22_m0[_12]._m7.x);
  float4 _567 = float4(float(_554 & 255u), float((_554 >> 8u) & 255u), float((_554 >> 16u) & 255u), float((_554 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _568 = _567.x;
  float _571 = _567.w;
  float _577 = _458.y;
  float _581 = max(_567.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m92.w, _19_m92.x) - _577) * _567.y);
  float _582 = max(_568, _581);
  float _590 = lerp(_19_m22.x, 1.0f, _19_m94.w) * _19_m20.x;
  float _592 = _521.z;
  float3 _595 = _513.xxx;
  float3 _597 = normalize(lerp(_465, normalize(float3(_521.x, 6.103515625e-05f, _592)), _595));
  float3 _1089;
  float _1090;
  if (_19_m83.y < 0.5f) {
    float3 _615 = _458 - (_19_m108.xyz + (_533 * (-_19_m110.w)));
    float _630 = max(min(max((max(abs(_615.x), abs(_615.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_615.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _932;
    float4 _933;
    float4 _934;
    float _935;
    float _936;
    if ((_19_m108.w != 0.0f) && (_630 < 1.0f)) {
      float3 _643 = _458 - (_19_m108.xyz + (_533 * (-_19_m110.y)));
      float _657 = max(clamp((max(abs(_643.x), abs(_643.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_643.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _733;
      float4 _734;
      float4 _735;
      float4 _736;
      if (_657 < 1.0f) {
        float3 _666 = ((_458 * 2.0f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _668 = _666 - floor(_666);
        float4 _672 = _43.SampleLevel(_25, _668, 0.0f);
        float _673 = 1.0f - _657;
        float _677 = _19_m109.y * 0.5f;
        float _682 = _668.x;
        float _683 = clamp(_668.y, _677, 1.0f - _677) * 0.3333333432674407958984375f;
        float _684 = _668.z;
        float4 _687 = _44.SampleLevel(_24, float3(_682, _683, _684), 0.0f);
        float _703 = _672.x;
        float _713 = _672.y;
        float _723 = _672.z;
        _733 = _630 + (_687.w * _673);
        _734 = float4(((_44.SampleLevel(_24, float3(_682, _683 + 0.666666686534881591796875f, _684), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _723, _723) * _673;
        _735 = float4(((_44.SampleLevel(_24, float3(_682, _683 + 0.3333333432674407958984375f, _684), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _713, _713) * _673;
        _736 = float4(((_687.xyz * 4.0f) - 2.0f.xxx) * _703, _703) * _673;
      } else {
        _733 = _630;
        _734 = 0.0f.xxxx;
        _735 = 0.0f.xxxx;
        _736 = 0.0f.xxxx;
      }
      float3 _742 = _458 - (_19_m108.xyz + (_533 * (-_19_m110.z)));
      float _756 = max(clamp((max(abs(_742.x), abs(_742.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_742.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _836;
      float4 _837;
      float4 _838;
      float4 _839;
      if (_756 < 1.0f) {
        float3 _765 = ((_458 * 0.5f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _767 = _765 - floor(_765);
        float4 _771 = _45.SampleLevel(_25, _767, 0.0f);
        float _773 = _657 * (1.0f - _756);
        float _777 = _19_m109.y * 0.5f;
        float _782 = _767.x;
        float _783 = clamp(_767.y, _777, 1.0f - _777) * 0.3333333432674407958984375f;
        float _784 = _767.z;
        float4 _787 = _46.SampleLevel(_24, float3(_782, _783, _784), 0.0f);
        float _803 = _771.x;
        float _814 = _771.y;
        float _825 = _771.z;
        _836 = _733 + (_787.w * _773);
        _837 = _734 + (float4(((_46.SampleLevel(_24, float3(_782, _783 + 0.666666686534881591796875f, _784), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _825, _825) * _773);
        _838 = _735 + (float4(((_46.SampleLevel(_24, float3(_782, _783 + 0.3333333432674407958984375f, _784), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _814, _814) * _773);
        _839 = _736 + (float4(((_787.xyz * 4.0f) - 2.0f.xxx) * _803, _803) * _773);
      } else {
        _836 = _733;
        _837 = _734;
        _838 = _735;
        _839 = _736;
      }
      float4 _922;
      float4 _923;
      float4 _924;
      float _925;
      if (_756 > 0.0f) {
        float3 _848 = ((_458 * 0.125f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _851 = _19_m109.xyz * 0.5f;
        float3 _853 = clamp(_848 - floor(_848), _851, 1.0f.xxx - _851);
        float4 _857 = _47.SampleLevel(_25, _853, 0.0f);
        float _859 = _756 * (1.0f - _630);
        float _863 = _19_m109.y * 0.5f;
        float _868 = _853.x;
        float _869 = clamp(_853.y, _863, 1.0f - _863) * 0.3333333432674407958984375f;
        float _870 = _853.z;
        float4 _873 = _48.SampleLevel(_24, float3(_868, _869, _870), 0.0f);
        float _889 = _857.x;
        float _900 = _857.y;
        float _911 = _857.z;
        _922 = _837 + (float4(((_48.SampleLevel(_24, float3(_868, _869 + 0.666666686534881591796875f, _870), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _911, _911) * _859);
        _923 = _838 + (float4(((_48.SampleLevel(_24, float3(_868, _869 + 0.3333333432674407958984375f, _870), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _900, _900) * _859);
        _924 = _839 + (float4(((_873.xyz * 4.0f) - 2.0f.xxx) * _889, _889) * _859);
        _925 = _836 + (_873.w * _859);
      } else {
        _922 = _837;
        _923 = _838;
        _924 = _839;
        _925 = _836;
      }
      float _928 = clamp((_925 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _932 = _922;
      _933 = _923;
      _934 = _924;
      _935 = _928 - _630;
      _936 = (_928 + _630) * 0.5f;
    } else {
      _932 = 0.0f.xxxx;
      _933 = 0.0f.xxxx;
      _934 = 0.0f.xxxx;
      _935 = 0.0f;
      _936 = 1.0f;
    }
    float4 _956 = _934 + float4(_19_m111.x * _936, (_19_m111.y * _936) + ((_19_m111.w * _935) * 0.5f), _19_m111.z * _936, (_19_m111.w * _936) + ((_19_m111.y * _935) * 0.375f));
    float4 _976 = _933 + float4(_19_m112.x * _936, (_19_m112.y * _936) + ((_19_m112.w * _935) * 0.5f), _19_m112.z * _936, (_19_m112.w * _936) + ((_19_m112.y * _935) * 0.375f));
    float4 _996 = _932 + float4(_19_m113.x * _936, (_19_m113.y * _936) + ((_19_m113.w * _935) * 0.5f), _19_m113.z * _936, (_19_m113.w * _936) + ((_19_m113.y * _935) * 0.375f));
    float4 _1000 = float4(_597, 1.0f);
    float3 _1006 = max(float3(dot(_956, _1000), dot(_976, _1000), dot(_996, _1000)), 0.0f.xxx) * _590;
    float3 _1014 = ((_956.xyz * 0.2125999927520751953125f) + (_976.xyz * 0.715200006961822509765625f)) + (_996.xyz * 0.072200000286102294921875f);
    float3 _1018 = _1014 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1014, _1014)));
    float4 _1023 = float4(_1018.x, abs(_1018.y), _1018.z, 1.0f);
    float3 _1028 = max(float3(dot(_956, _1023), dot(_976, _1023), dot(_996, _1023)), 0.0f.xxx);
    float _1036 = _1006.z;
    float _1037 = _1006.y;
    float4 _1042 = lerp(float4(_1036, _1037, -1.0f, 0.666666686534881591796875f), float4(_1037, _1036, 0.0f, -0.3333333432674407958984375f), step(_1036, _1037).xxxx);
    float _1043 = _1006.x;
    float _1044 = _1042.x;
    float4 _1052 = lerp(float4(_1044, _1042.yw, _1043), float4(_1043, _1042.yz, _1044), step(_1044, _1043).xxxx);
    float _1053 = _1052.x;
    float _1054 = _1052.w;
    float _1055 = _1052.y;
    float _1057 = _1053 - min(_1054, _1055);
    float _1067 = frac(abs(_1052.z + ((_1054 - _1055) / ((6.0f * _1057) + 9.9999997473787516355514526367188e-05f))));
    float _1074 = min(_1057 / (_1053 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1067 - 0.5f))) * clamp(_1053, 0.0f, 1.0f));
    float _1076 = 2.0f / (2.0f - _1074);
    _1089 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1067, _1074, _1076).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1074.xxx) * _1076;
    _1090 = max(max(max(_1028.x, _1028.y), _1028.z), 0.0f) * _590;
  } else {
    _1089 = _19_m85.xyz;
    _1090 = _590;
  }
  float _1109 = _511.x * lerp(clamp(_545 + 0.5f, 0.0f, 1.0f), 1.0f, _513);
  float _1123 = clamp((1.0f - clamp((clamp(dot(_521, _407), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1109 * lerp(_50_m31, _50_m30, _514)), 0.0f, 1.0f);
  float3 _1131 = _446 * ((1.0f - _1123).xxx + (_50_m34.xyz * _1123));
  float _1132 = lerp(0.0f, _50_m1, _513);
  float _1218;
  float _1219;
  float3 _1220;
  float _1221;
  float _1222;
  [branch] if ((clamp(_568 + _581, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f) {
    float _1145 = _19_m10.x * 0.800000011920928955078125f;
    float4 _1150 = _53.SampleBias(_25, _378 + float2(0.0f, frac(_1145)), _19_m16);
    float4 _1164 = float4(_1150.xy, _53.SampleBias(_25, _378 + float2(0.0f, frac(_1145 + 0.004999999888241291046142578125f)), _19_m16).w, _1150.w);
    float4 _1168 = _54.SampleBias(_25, _378, _19_m16);
    float _1169 = _1168.z;
    float2 _1171 = _1164.zw * _1169;
    float _1173 = _1171.y;
    float2 _1176 = (_1164.xy * 2.0f) - 1.0f.xx;
    float _1177 = _1171.x;
    float _1180 = clamp(_1177 + _1173, 0.0f, 1.0f) * _582;
    float _1181 = (_1150.z * _1169) * _582;
    float3 _1184 = float3(_1176, 0.0f);
    float2 _1185 = _1184.xy;
    _1184.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1185, _1185), 0.0f, 1.0f)));
    float _1199 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1176.y * 0.5f) + 0.5f), 1.0f, clamp(_1177 - _1173, 0.0f, 1.0f));
    _1218 = lerp(_1132, 3.0f, clamp((_1180 * 2.0f) + _1181, 0.0f, 1.0f) * _582);
    _1219 = _454 * ((1.0f - _1180) + (lerp((1.0f - _1199) + (0.800000011920928955078125f * _1199), 0.89999997615814208984375f, _513) * _1180));
    _1220 = normalize(mul(_1184, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _520;
    _1221 = lerp(_453, 0.5f, _582);
    _1222 = clamp(clamp(_1180 + _1181, 0.0f, 1.0f), 0.0f, 1.0f);
  }
  else {
    _1218 = _1132;
    _1219 = _454;
    _1220 = _521;
    _1221 = _453;
    _1222 = 0.0f;
  }
  float3 _1341;
  float _1342;
  float3 _1343;
  float3 _1344;
  float _1345;
  [branch] if ((_571 - _50_m20) > 0.00999999977648258209228515625f) {
    bool3 _1227 = _416.xxx;
    float3 _1229 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1230 = float3(_1227.x ? _1229.x : _10.x, _1227.y ? _1229.y : _10.y, _1227.z ? _1229.z : _10.z);
    float3 _1233 = _1230 * _19_m92.z;
    float3 _1235 = float3(_1227.x ? _9.xzy.x : _9.x, _1227.y ? _9.xzy.y : _9.y, _1227.z ? _9.xzy.z : _9.z);
    float3 _1237 = abs(_1235) - 0.20000000298023223876953125f.xxx;
    float3 _1240 = max((_1237 * _1237) * _1237, 6.103515625e-05f.xxx);
    float3 _1243 = _1240 / dot(_1240, 1.0f.xxx).xxx;
    float4 _1266 = ((_55.SampleBias(_25, _1233.xz, _19_m16) * _1243.y) + (_55.SampleBias(_25, _1233.xy, _19_m16) * _1243.z)) + (_55.SampleBias(_25, _1233.zy, _19_m16) * _1243.x);
    float _1274 = clamp(_571 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1230.y) * clamp(_571 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1282 = _1274 * (2.0f - _1274);
    float _1289 = smoothstep(2.0f - _1282, 2.349999904632568359375f - _1282, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1235.y) + _1266.z) * 0.60000002384185791015625f, _513 * _1109)) * ((_1219 * _1219) * float(gl_FrontFacing));
    float3 _1291 = _1289.xxx;
    float2 _1297 = (_1266.xy * 2.0f) - 1.0f.xx;
    float3 _1298 = float3(_1297.x, _1297.y, _369.z);
    float2 _1299 = _1297.xy;
    _1298.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1299, _1299), 0.0f, 1.0f)));
    float2 _1307 = _1298.xy * 2.0f;
    float3 _1309 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1307.x, _1307.y, _1298.z), _1291);
    float3 _1313 = _1309 * rsqrt(max(6.103515625e-05f, dot(_1309, _1309)));
    float _1314 = _521.y;
    float _1317 = step(0.00999999977648258209228515625f, 1.0f - (_1314 * _1314));
    float _1320 = lerp(_592, _1314, _1317);
    float3 _1327 = (float3(0.0f, _1317, 1.0f - _1317) - (_521 * _1320)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1320 * _1320)));
    _1341 = ((cross(_1327, _521) * _1313.x) + (_1327 * _1313.y)) + (_521 * _1313.z);
    _1342 = lerp(_1221, 0.89999997615814208984375f, clamp(_1289 * 4.0f, 0.0f, 1.0f));
    _1343 = lerp(_507 * 1.0f, 0.3079999983310699462890625f.xxx, _1291);
    _1344 = lerp(_1131 * 1.0f, 0.87999999523162841796875f.xxx, _1291);
    _1345 = lerp(_50_m2, 0.0f, _1289);
  }
  else {
    _1341 = _521;
    _1342 = _1221;
    _1343 = _507;
    _1344 = _1131;
    _1345 = _50_m2;
  }
  float _1347 = 0.959999978542327880859375f - (_1345 * 0.959999978542327880859375f);
  float3 _1348 = _1344 * _1347;
  float3 _1351 = lerp(0.039999999105930328369140625f.xxx * _1218, _1344, _1345.xxx);
  float3 _1352 = _1343 * _1347;
  float _1354 = max(_1342 * _1342, 0.0078125f);
  float2 _1367 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _1367.y = -_1367.y;
  float2 _1380 = ((sqrt(sqrt(abs(_1367 * 0.5f))) * float2(int2(sign(_1367)))) * 0.5f) + 0.5f.xx;
  float4 _1381 = float4(_1380.x, _1380.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _1381.z = 1.0f;
  _1381.w = 0.4000000059604644775390625f;
  float3 _1394 = lerp(-_33_m0.xyz, _19_m93.xyz, _19_m83.w.xxx);
  float3 _1408 = lerp(_33_m3.xyz, _19_m86.xyz, _19_m94.y.xxx);
  float3 _1414 = _1408 * lerp(_33_m3.w, _19_m87.w, _19_m94.w);
  int _1418 = int(_523.x);
  int _1419 = int(_523.y);
  float4 _1423 = _41.Load(int3(int3(_1418, _1419, 0).xy, 0));
  float _1428 = _1423.y;
  float _1431 = lerp(lerp(1.0f, _1423.x, _37_m6.x), 1.0f, _19_m83.z);
  float3 _1439 = _1352 * _19_m82.z;
  float3 _1440 = _1439 * 0.64999997615814208984375f;
  float3 _1454 = mul(_1394, _537);
  float3 _1455 = float3(_1454.x, _1454.y, _1454.z);
  _1455.y = 6.103515625e-05f;
  float3 _1457 = normalize(_1455);
  float _1460 = float(_1457.x > 0.0f);
  float2 _1464 = _378;
  _1464.x = lerp(1.0f - _378.x, _378.x, _1460);
  float4 _1468 = _57.SampleLevel(_24, _1464, 0.0f);
  float _1470 = _1468.z * 2.0f;
  float _1473 = lerp(1.0f - _1470, _1470 - 1.0f, _1460);
  float3 _1478 = mul(_537, normalize(float3(_1473, 6.103515625e-05f, 1.0f - abs(_1473))));
  float3 _1485 = normalize(lerp((_1478 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1478, _1478)))).xyz, _1341, _595));
  float _1486 = _1468.w;
  float _1487 = _1457.z;
  float _1488 = -_1487;
  float _1508 = clamp(lerp(_1487, (_1488 * ((_1487 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1394.x, 6.103515625e-05f, _1394.z)).xz, normalize(_533.xz)), 0.0f, 1.0f) * clamp(_1488, 0.0f, 1.0f)) * (1.0f - _19_m94.x)) + (_19_m98.w * _19_m83.w), -1.0f, 1.0f) * 0.5f;
  float _1510 = clamp(0.5f - _1508, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
  float _1516 = (_1468.x + _1468.y) * 0.5f;
  float _1527 = _19_m97.z * 0.5f;
  float _1529 = clamp(0.5f - _1527, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
  float4 _1550 = _51.SampleLevel(_24, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1510 - (1.0f - _1510), 0.0f), min(_1510 + _1510, 1.0f), _1516)) - (_1508 * ceil(_1508)))), clamp(dot(_1341, _1394) + (_19_m93.w * _19_m94.x), -1.0f, 1.0f), _513) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _1551 = _1550.w;
  float _1553 = _1550.x;
  float _1554 = _1550.y;
  float _1555 = _1550.z;
  float _1560 = max(max(_1553, _1554), _1555) - min(min(_1553, _1554), _1555);
  float _1563 = max(_513, _514 * smoothstep(0.75f, 0.25f, _545));
  float _1566 = (1.0f - _1563) + (_1428 * _1563);
  float _1567 = 1.0f - _513;
  float _1576 = min(min(_1566, _1219), _1551);
  float _1577 = _1219 * _1566;
  float3 _1581 = ((clamp(dot(_597, _19_m88.xyz) + _19_m89.x, 0.0f, 1.0f) * _19_m89.y) + _19_m89.z).xxx * lerp(_1089, 1.0f.xxx, (_19_m83.y * _1576).xxx);
  float3 _1583 = _1576.xxx;
  float3 _1606 = _1431.xxx;
  float3 _1607 = lerp((_1581 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1090), 1.5f), clamp(_1090, 1.25f, 1.75f), _19_m83.x)) * _19_m82.w, (lerp(dot(_1414, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1414, _1583) + ((_1581 * clamp(_1090, 0.0f, 1.5f)) * ((1.0f - _19_m94.y).xxx + (_1408 * _19_m94.y)))) * _19_m82.y, _1606);
  float3 _1608 = lerp(lerp(lerp(dot(_1440, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1440, 1.2000000476837158203125f.xxx), _1439, clamp((_1219 * (_1567 + (_1566 * _513))) + _1551, 0.0f, 1.0f).xxx), _1348, _1583);
  float3 _1614 = _1608 * ((1.0f - _1560).xxx + (_1550.xyz * _1560));
  float3 _1623 = lerp(lerp(_1439, lerp(dot(_1348, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1348, 1.2000000476837158203125f.xxx), _1577.xxx), _1614 * clamp(dot(_1608, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1614, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1606);
  float4 _1627 = float4(_1623, _1431);
  float _1629 = lerp(_1577, _1576, _1431);
  float3 _1640 = float3(_533.x, lerp(0.5f, _1394.y, _1431), _533.z);
  float _1653 = clamp(dot(_1220, _407), 0.0f, 1.0f);
  float _1654 = dot(_1220, normalize(((_1394 * _1431) + ((_1640 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1640, _1640)))) * 2.0f)) + (_407 * (2.0f + _1431))));
  float _1655 = _1354 * _1354;
  float _1659 = (((_1654 * _1655) - _1654) * _1654) + 1.0f;
  float _1660 = _1659 * _1659;
  float _1664 = 2.0f * _1653;
  float _1666 = (1.0f + _1653) - _1653;
  float3 _1707;
  if (_1222 > 0.001000000047497451305389404296875f) {
    _1707 = ((_54.SampleBias(_24, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1220)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1566) * (clamp(_1090, 0.5f, 1.5f) * _19_m82.w)) * (_1222 * _1222);
  } else {
    _1707 = 0.0f.xxx;
  }
  float3 _1710 = ((_1607 * _1623) * 1.0f) + ((((_1351 * clamp((((_1655 != _1660) ? (_1655 / _1660) : 1.0f) * (0.5f / ((_1664 + (_1354 * _1666)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1607 * (((_1629 * 0.5f) + 0.5f) * lerp(_19_m82.z, 1.0f, _1629))) * 1.0f)) * _19_m95.w) + _1707);
  float _1711 = dot(_1710, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _1714 = clamp(_1711 - 0.5f, 0.0f, 0.5f);
  float3 _1750 = normalize(cross(_533, lerp(float3(_19_m91.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m91.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m91.y), _19_m97.w.xxx)));
  float _1756 = dot(_407, _1485);
  float _1758 = 1.0f - abs(_1756);
  float _1763 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_545));
  float3 _1807 = lerp(_1711.xxx, _1710, ((_1714 * _1714) + 1.0f).xxx) + ((((((_19_m90.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m91.w), lerp(0.89999997615814208984375f, 0.5f, _19_m91.w), _1758) * _1763, max(_1763, float(dot(_533, _1750) < (-0.00999999977648258209228515625f))) * _515, clamp((_19_m91.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m90.w) * min(min(clamp(dot(_465, _1750) + 1.0f, 0.0f, 1.0f), _1219), _1428)) * (lerp(0.25f.xxx, _1348, _19_m91.z.xxx) * clamp(dot(_1750, _1485), 0.0f, 1.0f))) * (1.0f - (_19_m98.z * _1567))) + (((_19_m96.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1529 - (1.0f - _1529), 0.0f), min(_1529 + _1529, 1.0f), _1516)) - (_1527 * ceil(_1527))))) * _1567)) * _19_m96.w) * _1348));
  float2 _1808 = float2(_523);
  float2 _1810 = floor(_1808 * 0.03125f);
  int _1818 = int((_1810.x + (_1810.y * _35_m9)) * 8.0f);
  float _1825 = floor(_388 - (_19_m3.y * _35_m15));
  float _1829 = clamp(_1825, 0.0f, _35_m11 - 1.0f);
  int _1831 = int(_1829 * 8.0f);
  float3 _1833;
  _1833 = _1807;
  float3 _1834;
  [loop] for (int _1836 = 0; _1836 <= 7; _1833 = _1834, _1836++) {
    uint _1857 = (_1825 <= _1829) ? (_29.Load(uint((_35_m2 + _1818) + _1836) * 4 + 0) & _29.Load(uint((_35_m3 + _1831) + _1836) * 4 + 0)) : 0u;
    uint _1858 = uint(_1836);
    _1834 = _1833;
    uint _1863;
    float3 _1860;
    [loop] for (uint _1862 = _1857; _1862 != 0u; _1834 = _1860, _1862 = _1863) {
      uint _1867 = firstbitlow(_1862);
      _1863 = _1862 ^ (1u << (_1867 & 31u));
      int _1873 = int((32u * _1858) + _1867) * 8;
      int _1876 = _1873 + 1;
      int _1879 = _1873 + 2;
      int _1882 = _1873 + 3;
      int _1885 = _1873 + 4;
      int _1888 = _1873 + 5;
      int _1891 = _1873 + 6;
      int _1894 = _1873 + 7;
      uint _1898 = uint(_33_m6[_1888].w);
      float _1973;
      if ((_1898 & 1u) == 1u) {
        uint _1904 = asuint(_33_m6[_1888].x);
        uint _1911 = asuint(_33_m6[_1888].y);
        uint _1918 = asuint(_33_m6[_1888].z);
        uint _1925 = asuint(_33_m6[_1891].x);
        uint _1932 = asuint(_33_m6[_1891].y);
        uint _1939 = asuint(_33_m6[_1891].z);
        float3 _1958 = abs(mul(float4(_458 - _33_m6[_1876].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1904).x, spvUnpackHalf2x16(_1918).x, spvUnpackHalf2x16(_1932).x, 0.0f), float4(spvUnpackHalf2x16(_1904 >> 16u).x, spvUnpackHalf2x16(_1918 >> 16u).x, spvUnpackHalf2x16(_1932 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1911).x, spvUnpackHalf2x16(_1925).x, spvUnpackHalf2x16(_1939).x, 0.0f), float4(spvUnpackHalf2x16(_1911 >> 16u).x, spvUnpackHalf2x16(_1925 >> 16u).x, spvUnpackHalf2x16(_1939 >> 16u).x, 0.0f))).xyz);
        float _1965 = _33_m6[_1894].x * 0.5f;
        float _1971 = 1.0f - clamp((max(max(_1958.x, _1958.y), _1958.z) - (_1965 + 0.5f)) / (0.5f - _1965), 0.0f, 1.0f);
        _1973 = _1971 * _1971;
      } else {
        _1973 = 1.0f;
      }
      if (false || (_1973 < 0.001000000047497451305389404296875f)) {
        _1860 = _1834;
        continue;
      }
      float3 _2792;
      do {
        uint _1981 = uint(_33_m6[_1873].w);
        [branch] if (_1981 >= 4u) {
          _2792 = _1834;
          break;
        }
        float3 _2791;
        if (_33_m6[_1873].w < 1.5f) {
          float3 _2790;
          do {
            uint _1992 = asuint(_33_m6[_1882].w);
            if ((_1992 == 16u) || ((_33_m6[_1882].z + _19_m94.z) < 0.5f)) {
              _2790 = _1834;
              break;
            }
            bool _2003 = (_1981 & 1u) == 0u;
            bool _2007 = (!_2003) && (_33_m6[_1879].z > 0.0f);
            bool _2008 = _1992 == 4u;
            float _2009 = float(_2003);
            float _2017 = (0.5f + (0.5f * _33_m6[_1879].y)) - abs(_33_m6[_1879].x);
            float _2018 = _33_m6[_1879].y - _2017;
            float _2025 = abs(max((1.0f - abs(_2017)) - abs(_2018), 0.00048828125f));
            float3 _2029 = normalize(float3(_2017, _2018, (_33_m6[_1879].x >= 0.0f) ? _2025 : (-_2025)));
            float _2035 = lerp(_33_m6[_1891].w, max(2.0f * _33_m6[_1885].y, 0.100000001490116119384765625f), float(_2008));
            float3 _2040 = _33_m6[_1876].xyz - _458;
            float3 _2041 = -_2029;
            float3 _2046 = lerp(_2040, _2041 * dot(_2040, _2041), (float(_2008 && (_33_m6[_1885].z > 0.5f)) * _2009).xxx);
            float _2047 = dot(_2046, _2046);
            float _2048 = rsqrt(_2047);
            float3 _2049 = _2046 * _2048;
            float3 _2082;
            float _2083;
            if (_2007) {
              float3 _2053 = (_2029 * _33_m6[_1879].z) * 0.5f;
              float3 _2054 = _2046 - _2053;
              float3 _2055 = _2046 + _2053;
              float _2056 = length(_2054);
              float _2057 = length(_2055);
              float3 _2066 = normalize(cross(cross(_2029, _2049), _2029));
              _2082 = _2066;
              _2083 = ((1.0f / ((((_2056 * _2057) + dot(_2054, _2055)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2066, _2054) / _2056) + (dot(_2066, _2055) / _2057)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_33_m6[_1879].z * _2048, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2082 = _2049;
              _2083 = 1.0f;
            }
            float _2105;
            if (_2035 < 0.0f) {
              float _2099 = _2047 * (_33_m6[_1876].w * _33_m6[_1876].w);
              float _2102 = clamp(1.0f - (_2099 * _2099), 0.0f, 1.0f);
              _2105 = lerp(1.0f / (_2047 + 1.0f), _2083, float(_2007)) * (_2102 * _2102);
            } else {
              float3 _2088 = _2046 * _33_m6[_1876].w;
              _2105 = _2083 * pow(1.0f - clamp(dot(_2088, _2088), 0.0f, 1.0f), _2035);
            }
            float _2110 = clamp((dot(_2082, _2041) - _33_m6[_1879].z) * _33_m6[_1879].w, 0.0f, 1.0f);
            float _2113 = _2105 * lerp(1.0f, _2110 * _2110, _2009);
            int _2115 = int(_33_m6[_1894].w);
            float _2219;
            if ((!_2007) && (_2115 >= 0)) {
              uint _2121 = uint(_2115);
              float2 _2212;
              [branch] if (_2009 != 0.0f) {
                float4 _2202 = mul(_61_m1[_2121], float4(_458.x, _577, _458.z, 1.0f));
                _2212 = _61_m0[_2121].xy + (clamp(_2202.xy / _2202.w.xx, 0.0f.xx, 1.0f.xx) * _61_m0[_2121].zw);
              }
              else {
                float3 _2136 = mul(float4(-_2046, 0.0f), _61_m1[_2121]).xyz;
                float3 _377 = _2136;
                float3 _376 = _2136;
                float3 _375 = abs(_2136);
                uint _2145 = uint(int(_375.y > _375.x));
                uint _2151 = (_375.z > _375[_2145]) ? 2u : _2145;
                uint _2157 = (_2151 * 2u) + uint(_376[_2151] < 0.0f);
                float _2161 = abs(_377[_2157 / 2u]);
                float _2181 = 0.5f - (0.000244140625f / _61_m0[_2121].w);
                _2212 = _61_m0[_2121].xy + (clamp(float2((float(_2157) + ((((_377[uint(_343[_2157].x)] * _344[_2157].x) / _2161) * _2181) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_377[uint(_343[_2157].y)] * _344[_2157].y) / _2161) * _2181)), 0.0f.xx, 1.0f.xx) * _61_m0[_2121].zw);
              }
              _2219 = _2113 * _59.SampleLevel(_24, _2212, 0.0f).x;
            } else {
              _2219 = _2113;
            }
            float _2220 = _2219 * _1973;
            float3 _2789;
            do {
              float3 _2788;
              [branch] if (_2220 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2008) {
                  _2789 = lerp(_1834, _33_m6[_1873].xyz, (_2220 * (_33_m6[_1885].x * ((1.0f - _33_m6[_1885].w) + (smoothstep(-0.5f, 0.5f, dot(_521, _2082)) * _33_m6[_1885].w)))).xxx);
                  break;
                }
                float _2240 = dot(_1485, _2082);
                float _2241 = clamp(_2240, 0.0f, 1.0f);
                float _2640;
                if (_1992 != 0u) {
                  bool _2247 = _2003 || ((_1898 & 2u) != 0u);
                  int _2297;
                  if (_2247) {
                    _2297 = int(_33_m6[_1882].x);
                  } else {
                    uint _2252 = asuint(_33_m6[_1879].w);
                    uint _2253 = asuint(_33_m6[_1882].x);
                    float3 _2254 = _458 - _33_m6[_1876].xyz;
                    float3 _2255 = abs(_2254);
                    float _2256 = _2255.x;
                    float _2257 = _2255.y;
                    float _2259 = _2255.z;
                    int _2292;
                    if ((_2256 > _2257) && (_2256 > _2259)) {
                      _2292 = int((_2254.x > 0.0f) ? (_2252 & 1023u) : ((_2252 >> 10u) & 1023u));
                    } else {
                      int _2284;
                      if (_2257 > _2259) {
                        _2284 = int((_2254.y > 0.0f) ? ((_2252 >> 20u) & 1023u) : (_2253 & 1023u));
                      } else {
                        _2284 = int((_2254.z > 0.0f) ? ((_2253 >> 10u) & 1023u) : ((_2253 >> 20u) & 1023u));
                      }
                      _2292 = _2284;
                    }
                    _2297 = (_2292 == 1023) ? (-1) : _2292;
                  }
                  bool _2298 = _2297 >= 0;
                  float _2639;
                  if (_2298) {
                    float3 _2305 = _458 - _33_m6[_1876].xyz;
                    uint _2315 = asuint(_37_m11.x) + (uint(_2297) * 96u);
                    uint _2317 = (_2315 + 64u) >> 2u;
                    uint _2320 = _2317 + 1u;
                    uint _2323 = _2317 + 2u;
                    uint _2326 = _2317 + 3u;
                    float4 _2330 = asfloat(uint4(_40.Load(_2317 * 4 + 0), _40.Load(_2320 * 4 + 0), _40.Load(_2323 * 4 + 0), _40.Load(_2326 * 4 + 0)));
                    uint _2338 = _2315 >> 2u;
                    uint _2353 = (_2315 + 16u) >> 2u;
                    uint _2368 = (_2315 + 32u) >> 2u;
                    uint _2383 = (_2315 + 48u) >> 2u;
                    float4 _2403 = mul(transpose(float4x4(asfloat(uint4(_40.Load(_2338 * 4 + 0), _40.Load((_2338 + 1u) * 4 + 0), _40.Load((_2338 + 2u) * 4 + 0), _40.Load((_2338 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2353 * 4 + 0), _40.Load((_2353 + 1u) * 4 + 0), _40.Load((_2353 + 2u) * 4 + 0), _40.Load((_2353 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2368 * 4 + 0), _40.Load((_2368 + 1u) * 4 + 0), _40.Load((_2368 + 2u) * 4 + 0), _40.Load((_2368 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_2383 * 4 + 0), _40.Load((_2383 + 1u) * 4 + 0), _40.Load((_2383 + 2u) * 4 + 0), _40.Load((_2383 + 3u) * 4 + 0))))), float4((_458 - ((_2305 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2305, _2305)))) * _2330.x)) + (_521 * (_2330.y * 5.0f)), 1.0f));
                    float3 _2407 = _2403.xyz / _2403.w.xxx;
                    uint _2409 = (_2315 + 80u) >> 2u;
                    float4 _2422 = asfloat(uint4(_40.Load(_2409 * 4 + 0), _40.Load((_2409 + 1u) * 4 + 0), _40.Load((_2409 + 2u) * 4 + 0), _40.Load((_2409 + 3u) * 4 + 0)));
                    float2 _2423 = _2407.xy;
                    float2 _2425 = _2422.xy;
                    float3 _2429 = _2407.xyz;
                    bool3 _2430 = bool3(_2429.x <= 0.0f.xxx.x, _2429.y <= 0.0f.xxx.y, _2429.z <= 0.0f.xxx.z);
                    bool3 _2431 = bool3(_2429.x >= 1.0f.xxx.x, _2429.y >= 1.0f.xxx.y, _2429.z >= 1.0f.xxx.z);
                    float _2434 = _2407.z;
                    float2 _2445 = ((_2423 * (_2422.zw - _2425)) + _2425).xy * _37_m10.zw;
                    float2 _2447 = floor(_2445 + 0.5f.xx);
                    float2 _2448 = _2445 - _2447;
                    float _2449 = _2448.x;
                    float _2450 = _2449 + 0.5f;
                    float _2451 = _2450 * _2450;
                    float _2454 = 1.0f - _2449;
                    float _2455 = min(_2449, 0.0f);
                    float _2458 = _2449 + 1.0f;
                    float _2459 = max(_2449, 0.0f);
                    float _2470 = _2448.y;
                    float _2471 = _2470 + 0.5f;
                    float _2472 = _2471 * _2471;
                    float _2475 = 1.0f - _2470;
                    float _2476 = min(_2470, 0.0f);
                    float _2479 = _2470 + 1.0f;
                    float _2480 = max(_2470, 0.0f);
                    float3 _2492 = float3(0.1599999964237213134765625f * _2454, 0.1599999964237213134765625f * ((_2458 - (_2459 * _2459)) + 1.0f), _2451 * 0.07999999821186065673828125f);
                    float3 _2493 = float3(0.1599999964237213134765625f * ((_2451 * 0.5f) - _2449), 0.1599999964237213134765625f * ((_2454 - (_2455 * _2455)) + 1.0f), 0.1599999964237213134765625f * _2458) + _2492;
                    float3 _2495 = float3(0.1599999964237213134765625f * _2475, 0.1599999964237213134765625f * ((_2479 - (_2480 * _2480)) + 1.0f), _2472 * 0.07999999821186065673828125f);
                    float3 _2496 = float3(0.1599999964237213134765625f * ((_2472 * 0.5f) - _2470), 0.1599999964237213134765625f * ((_2475 - (_2476 * _2476)) + 1.0f), 0.1599999964237213134765625f * _2479) + _2495;
                    float3 _2502 = ((_2492 / _2493) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.xxx;
                    float3 _2504 = ((_2495 / _2496) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.yyy;
                    float2 _2506 = _2447 * _37_m10.xy;
                    float _2507 = _2502.x;
                    float _2508 = _2504.x;
                    float _2511 = _2502.y;
                    float _2514 = _2502.z;
                    float _2517 = _2504.y;
                    float _2524 = _2504.z;
                    float _2531 = _2493.x;
                    float _2532 = _2496.x;
                    float _2534 = _2493.y;
                    float _2536 = _2493.z;
                    float _2538 = _2496.y;
                    float _2542 = _2496.z;
                    float _2600 = (((((((_2531 * _2532) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2507, _2508), _368).xy, _2434)) + ((_2534 * _2532) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2511, _2508), _368).xy, _2434))) + ((_2536 * _2532) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2514, _2508), _368).xy, _2434))) + ((_2531 * _2538) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2507, _2517), _368).xy, _2434))) + ((_2534 * _2538) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2511, _2517), _368).xy, _2434))) + ((_2536 * _2538) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2514, _2517), _368).xy, _2434))) + ((_2531 * _2542) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2507, _2524), _368).xy, _2434));
                    float4 _2623 = asfloat(uint4(_40.Load(_2317 * 4 + 0), _40.Load(_2320 * 4 + 0), _40.Load(_2323 * 4 + 0), _40.Load(_2326 * 4 + 0)));
                    float _2624 = _2623.w;
                    float2 _2626 = min(_2423, 1.0f.xx - _2423);
                    _2639 = _2298 ? lerp(1.0f, (any(bool3(_2430.x || _2431.x, _2430.y || _2431.y, _2430.z || _2431.z)) || ((asuint(_2434) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2600 + ((_2534 * _2542) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2511, _2524), _368).xy, _2434))) + ((_2536 * _2542) * _38.SampleCmpLevelZero(_26, float3(_2506 + float2(_2514, _2524), _368).xy, _2434))), _2247 ? min(_2624, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2623.z - _2403.w) * 0.25f, min(_2626.x, _2626.y)))) : _2624) : 1.0f;
                  } else {
                    _2639 = clamp(dot(_465, _2082) + 1.0f, 0.0f, 1.0f);
                  }
                  _2640 = _2639;
                } else {
                  _2640 = 1.0f;
                }
                float _2744;
                float3 _2745;
                float _2746;
                float3 _2747;
                float3 _2748;
                float _2749;
                float _2750;
                [branch] if (_1992 == 0u) {
                  float3 _2718 = _33_m6[_1873].xyz * _2220;
                  float3 _2731 = _1627.xyz;
                  _2744 = _2220;
                  _2745 = (_33_m6[_1873].xyz * ((1.0f - _33_m6[_1885].y) + ((1.0f / max(1.0f, max(max(_2718.x, _2718.y), _2718.z) * lerp(0.75f, 0.5f, 1.0f - _1431))) * _33_m6[_1885].y))) * lerp(0.5f * _33_m6[_1885].x, 1.0f, clamp(dot(normalize(lerp(float3(_465.x, 6.103515625e-05f, _465.z), _1485, _595)), _2082) + 0.5f, 0.0f, 1.0f));
                  _2746 = _2241;
                  _2747 = _2731;
                  _2748 = _2731;
                  _2749 = 1.0f;
                  _2750 = 0.0f;
                }
                else {
                  float _2710;
                  float _2711;
                  float3 _2712;
                  float3 _2713;
                  float _2714;
                  float _2715;
                  if (_1992 == 3u) {
                    float3 _2690 = -normalize(cross(_533, cross(_533, _2082)));
                    _2710 = _2220 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _33_m6[_1885].x), lerp(0.89999997615814208984375f, 0.5f, _33_m6[_1885].x), _1758) * _1763, max(_1763, float(dot(_533, _2690) < (-0.00999999977648258209228515625f))) * _515, clamp((_33_m6[_1885].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2640);
                    _2711 = clamp(dot(_1485, _2690), 0.0f, 1.0f);
                    _2712 = lerp(0.5f.xxx, _1348, _33_m6[_1885].y.xxx);
                    _2713 = 0.0f.xxx;
                    _2714 = 1.0f;
                    _2715 = 0.0f;
                  } else {
                    bool _2649 = _1992 == 1u;
                    float _2680;
                    float3 _2681;
                    float _2682;
                    float _2683;
                    if (_2649) {
                      _2680 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1486 - _33_m6[_1885].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _513), clamp(_2240 + _33_m6[_1885].x, -1.0f, 1.0f) + (_33_m6[_1885].z * _1567)) * _2640);
                      _2681 = _1352 * _33_m6[_1885].y;
                      _2682 = 1.0f;
                      _2683 = 0.0f;
                    } else {
                      bool _2653 = _1992 == 2u;
                      float _2665;
                      if (_2653) {
                        _2665 = smoothstep(_33_m6[_1885].x + 0.0500000007450580596923828125f, _33_m6[_1885].x - 0.0500000007450580596923828125f, _1342) * ((1.0f - _33_m6[_1885].z) + (step(0.5f, _1345) * _33_m6[_1885].z));
                      } else {
                        _2665 = 1.0f;
                      }
                      _2680 = _2241;
                      _2681 = 0.0f.xxx;
                      _2682 = _2665;
                      _2683 = _2653 ? _33_m6[_1885].y : 0.0f;
                    }
                    bool3 _2684 = _2649.xxx;
                    _2710 = _2220;
                    _2711 = _2680;
                    _2712 = float3(_2684.x ? _1348.x : 0.0f.xxx.x, _2684.y ? _1348.y : 0.0f.xxx.y, _2684.z ? _1348.z : 0.0f.xxx.z);
                    _2713 = _2681;
                    _2714 = _2682;
                    _2715 = _2683;
                  }
                  _2744 = _2710;
                  _2745 = _33_m6[_1873].xyz;
                  _2746 = _2711;
                  _2747 = _2712;
                  _2748 = _2713;
                  _2749 = _2714;
                  _2750 = _2715;
                }
                float3 _2778;
                [branch] if (_1992 != 3u) {
                  float _2755 = lerp(_1354, 0.00999999977648258209228515625f, _2750);
                  float _2758 = dot(_1220, normalize(_2082 + _407));
                  float _2759 = _2755 * _2755;
                  float _2763 = (((_2758 * _2759) - _2758) * _2758) + 1.0f;
                  float _2764 = _2763 * _2763;
                  _2778 = ((_1351 * clamp((((_2759 != _2764) ? (_2759 / _2764) : 1.0f) * (0.5f / ((_1664 + (_2755 * _1666)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2749) * _33_m6[_1894].z;
                }
                else {
                  _2778 = 0.0f.xxx;
                }
                float3 _2781 = _2745 * _2744;
                _2788 = _1834 + (((_2781 * lerp(_2748, _2747, _2746.xxx)) * 1.0f) + ((_2781 * _2778) * _2746));
              }
              else {
                _2788 = _1834;
              }
              _2789 = _2788;
              break;
            } while (false);
            _2790 = _2789;
            break;
          } while (false);
          _2791 = _2790;
        } else {
          _2791 = _1834;
        }
        _2792 = _2791;
        break;
      } while (false);
      _1860 = _2792;
    }
  }
  float3 _2833;
  [branch] if (_50_m12 > 0.5f) {
    _2833 = lerp(lerp(0.5f.xxx, lerp(dot(_1833, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1833, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * (smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_1756, 0.0f, 1.0f)) * _1109)) * _50_m17);
  }
  else {
    _2833 = _1833;
  }
  float4 _2840 = float4(_2833 * _19_m20.y, 1.0f);
  _2840.w = 1.0f;
  float4 _3224;
  [branch] if (_19_m94.w < 0.5f) {
    float3 _2845 = -_407;
    float _2861 = _577 * _19_m46.w;
    float _2866 = max(0.00999999977648258209228515625f, _2861 + _19_m47.w);
    float3 _2880 = exp(_19_m45.xyz * ((-max(0.0f, (_408 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2866)) / _2866) * exp(_2861 + _19_m48.w))));
    float _2883 = dot(_2845, _19_m44.xyz);
    float _2889 = _19_m45.w * _19_m45.w;
    float _2893 = (1.0f + _2889) - ((2.0f * _19_m45.w) * _2883);
    float3 _3216;
    float _3217;
    if (_19_m55.z > 0.0f) {
      uint3 _3044 = (uint3(int3(_1418, _1419, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3045 = _3044.y;
      uint _3046 = _3044.z;
      uint _3049 = _3044.x + (_3045 * _3046);
      uint _3051 = _3045 + (_3046 * _3049);
      uint _3053 = _3046 + (_3049 * _3051);
      uint _3055 = _3049 + (_3051 * _3053);
      float _3080 = dot(_2845, -_17_m0[2].xyz);
      float3 _3087 = _458 - _17_m11.xyz;
      float _3089 = (_19_m55.w * ((_3080 > 5.9604644775390625e-08f) ? (1.0f / _3080) : 0.0f)) * (1.0f / _408);
      float _3090 = _3087.y;
      float _3091 = _3089 * _3090;
      float _3093 = _17_m11.y + _3091;
      float _3094 = _3090 - _3091;
      float _3096 = (1.0f - _3089) * _408;
      float _3110 = max(-127.0f, _19_m49.z * _3094);
      float _3134 = max(-127.0f, _19_m52.x * _3094);
      float _3145 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3093 - _19_m49.x)))) * ((abs(_3110) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3110)) / _3110) : (0.693147182464599609375f - (0.2402265071868896484375f * _3110)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3093 - _19_m52.z)))) * ((abs(_3134) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3134)) / _3134) : (0.693147182464599609375f - (0.2402265071868896484375f * _3134))));
      float _3167 = clamp((_408 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3170 = clamp((max(clamp(exp2(-(_3145 * _3096)), 0.0f, 1.0f), _19_m51.w) + clamp((_408 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3167, 0.0f, 1.0f);
      float4 _3210 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _64.SampleLevel(_24, float3((_1808 + ((((float3(uint3(_3055, _3051 + (_3053 * _3055), _373) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_388 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_388 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3216 = _3210.xyz + (((_19_m51.xyz * (1.0f - _3170)) + (((_19_m54.xyz * pow(clamp(dot(_407, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3145 * max(_3096 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3167))) * _3210.w);
      _3217 = _3210.w * _3170;
    } else {
      float3 _2920 = _458 - _17_m11.xyz;
      float _2922 = _2920.y;
      float _2936 = max(-127.0f, _19_m49.z * _2922);
      float _2960 = max(-127.0f, _19_m52.x * _2922);
      float _2971 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2936) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2936)) / _2936) : (0.693147182464599609375f - (0.2402265071868896484375f * _2936)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2960) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2960)) / _2960) : (0.693147182464599609375f - (0.2402265071868896484375f * _2960))));
      float _2993 = clamp((_408 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _2996 = clamp((max(clamp(exp2(-(_2971 * _408)), 0.0f, 1.0f), _19_m51.w) + clamp((_408 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2993, 0.0f, 1.0f);
      _3216 = (_19_m51.xyz * (1.0f - _2996)) + (((_19_m54.xyz * pow(clamp(dot(_407, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2971 * max(_408 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2993));
      _3217 = _2996;
    }
    float3 _3222 = (_2840.xyz * (_2880 * _3217)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2883 * _2883)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2889) / max((12.56637096405029296875f * _2893) * sqrt(_2893), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2880)) * _3217) + _3216);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3222 = (_3222 * 0.65f) + (_2840.xyz * 0.35f);
    }
    // RenoDX code end
    _3224 = float4(_3222.x, _3222.y, _3222.z, _2840.w);
  }
  else {
    _3224 = _2840;
  }
  _14 = _3224;
  _15 = _1381;
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

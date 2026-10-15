#include "./renodx_injection.hlsli"

// Ported from the native 0x7A0592E5 Vulkan dump.
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

static float _418;
static float3 _419;
static float _421;
static uint _422;

static const int2 _374[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _375[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(54, 0)]] ByteAddressBuffer _30 : register(t54, space0);
[[vk::binding(17, 0)]] StructuredBuffer<float4> _32 : register(t17, space0);
[[vk::binding(13, 0)]] cbuffer _33_34 : register(b13, space0) {
  float4 _34_m0 : packoffset(c0);
  float4 _34_m1 : packoffset(c1);
  float4 _34_m2 : packoffset(c2);
  float4 _34_m3 : packoffset(c3);
  float4 _34_m4 : packoffset(c4);
  uint4 _34_m5 : packoffset(c5);
  float4 _34_m6[2048] : packoffset(c6);
};

[[vk::binding(50, 0)]] cbuffer _35_36 : register(b50, space0) {
  int _36_m0 : packoffset(c0);
  int _36_m1 : packoffset(c0.y);
  int _36_m2 : packoffset(c0.z);
  int _36_m3 : packoffset(c0.w);
  int _36_m4 : packoffset(c1);
  int _36_m5 : packoffset(c1.y);
  int _36_m6 : packoffset(c1.z);
  int _36_m7 : packoffset(c1.w);
  float _36_m8 : packoffset(c2);
  float _36_m9 : packoffset(c2.y);
  float _36_m10 : packoffset(c2.z);
  float _36_m11 : packoffset(c2.w);
  float _36_m12 : packoffset(c3);
  float _36_m13 : packoffset(c3.y);
  float _36_m14 : packoffset(c3.z);
  float _36_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _37_38 : register(b14, space0) {
  column_major float4x4 _38_m0[5] : packoffset(c0);
  float4 _38_m1[4] : packoffset(c20);
  float4 _38_m2[4] : packoffset(c24);
  float4 _38_m3[4] : packoffset(c28);
  float4 _38_m4 : packoffset(c32);
  float4 _38_m5 : packoffset(c33);
  float4 _38_m6 : packoffset(c34);
  float4 _38_m7 : packoffset(c35);
  float4 _38_m8 : packoffset(c36);
  float4 _38_m9[27] : packoffset(c37);
  float4 _38_m10 : packoffset(c64);
  float4 _38_m11 : packoffset(c65);
  float4 _38_m12[62] : packoffset(c66);
  column_major float4x4 _38_m13[15] : packoffset(c128);
  float4 _38_m14[15] : packoffset(c188);
  float4 _38_m15[15] : packoffset(c203);
  float4 _38_m16[15] : packoffset(c218);
  float4 _38_m17 : packoffset(c233);
  float4 _38_m18 : packoffset(c234);
  float4 _38_m19[21] : packoffset(c235);
  column_major float4x4 _38_m20 : packoffset(c256);
  column_major float4x4 _38_m21 : packoffset(c260);
  float4 _38_m22 : packoffset(c264);
  float4 _38_m23 : packoffset(c265);
  float4 _38_m24 : packoffset(c266);
  float4 _38_m25[128] : packoffset(c267);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _41 : register(t53, space0);
[[vk::binding(0, 1)]] cbuffer _50_51 : register(b0, space1) {
  float _51_m0 : packoffset(c0);
  float _51_m1 : packoffset(c0.y);
  float _51_m2 : packoffset(c0.z);
  float _51_m3 : packoffset(c0.w);
  float _51_m4 : packoffset(c1);
  float _51_m5 : packoffset(c1.y);
  float _51_m6 : packoffset(c1.z);
  float _51_m7 : packoffset(c1.w);
  float _51_m8 : packoffset(c2);
  float _51_m9 : packoffset(c2.y);
  float _51_m10 : packoffset(c2.z);
  float _51_m11 : packoffset(c2.w);
  float _51_m12 : packoffset(c3);
  float _51_m13 : packoffset(c3.y);
  float _51_m14 : packoffset(c3.z);
  float _51_m15 : packoffset(c3.w);
  float _51_m16 : packoffset(c4);
  float _51_m17 : packoffset(c4.y);
  float _51_m18 : packoffset(c4.z);
  float _51_m19 : packoffset(c4.w);
  float _51_m20 : packoffset(c5);
  float _51_m21 : packoffset(c5.y);
  float _51_m22 : packoffset(c5.z);
  float _51_m23 : packoffset(c5.w);
  float4 _51_m24 : packoffset(c6);
  float4 _51_m25 : packoffset(c7);
  float4 _51_m26 : packoffset(c8);
  float4 _51_m27 : packoffset(c9);
  float4 _51_m28 : packoffset(c10);
  float4 _51_m29 : packoffset(c11);
  float _51_m30 : packoffset(c12);
  float _51_m31 : packoffset(c12.y);
  float _51_m32 : packoffset(c12.z);
  float _51_m33 : packoffset(c12.w);
  float4 _51_m34 : packoffset(c13);
  float4 _51_m35 : packoffset(c14);
  float _51_m36 : packoffset(c15);
  float _51_m37 : packoffset(c15.y);
  float _51_m38 : packoffset(c15.z);
  float _51_m39 : packoffset(c15.w);
  float4 _51_m40 : packoffset(c16);
  float4 _51_m41 : packoffset(c17);
  float4 _51_m42 : packoffset(c18);
  float4 _51_m43 : packoffset(c19);
  float4 _51_m44 : packoffset(c20);
  float _51_m45 : packoffset(c21);
  float _51_m46 : packoffset(c21.y);
  float _51_m47 : packoffset(c21.z);
  float _51_m48 : packoffset(c21.w);
  float _51_m49 : packoffset(c22);
  float _51_m50 : packoffset(c22.y);
  float _51_m51 : packoffset(c22.z);
  float _51_m52 : packoffset(c22.w);
};

[[vk::binding(52, 0)]] cbuffer _63_64 : register(b52, space0) {
  float4 _64_m0[32] : packoffset(c0);
  column_major float4x4 _64_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _25 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _26 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _27 : register(s6, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _39 : register(t27, space0);
[[vk::binding(22, 0)]] Texture2D<float4> _42 : register(t22, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _44 : register(t37, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _45 : register(t34, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _46 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _47 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _48 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _49 : register(t32, space0);
[[vk::binding(46, 0)]] Texture2D<float4> _52 : register(t46, space0);
[[vk::binding(43, 0)]] Texture2D<float4> _53 : register(t43, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _54 : register(t41, space0);
[[vk::binding(7, 1)]] Texture2D<float4> _55 : register(t7, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _56 : register(t2, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _57 : register(t6, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _58 : register(t4, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _59 : register(t3, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _60 : register(t5, space1);
[[vk::binding(1, 1)]] SamplerState _61 : register(s1, space1);
[[vk::binding(29, 0)]] Texture2D<float4> _62 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _67 : register(t38, space0);

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

uint4 _32_Load4(uint byte_offset) { return asuint(_32[byte_offset >> 4u]); }
void frag_main() {
  float _438 = 1.0f / gl_FragCoord.w;
  float3 _453 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
  float _454 = dot(_453, _453);
  float _456 = rsqrt(max(_454, 9.9999999392252902907785028219223e-09f));
  float3 _457 = _453 * _456;
  float _458 = _454 * _456;
  uint _461 = asuint(_23_m0[_13]._m2.x);
  bool _466 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
  float4 _479;
  float4 _480;
  if (_466) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0x7A0592E5:
    _479 = asfloat(_32_Load4((_461 + 2u) * 16 + 0));
    _480 = asfloat(_32_Load4(_461 * 16 + 0));
    */
    _479 = asfloat(_32_Load4((_461 + 2u) * 16 + 0));
    _480 = asfloat(_32_Load4(_461 * 16 + 0));
    // RenoDX code end
  } else {
    _479 = _23_m0[_13]._m0[2];
    _480 = _23_m0[_13]._m0[0];
  }
  float4 _486 = _55.SampleBias(_26, _3, _20_m16);
  float3 _491 = _486.xyz * _51_m24.xyz;
  float4 _495 = _56.SampleBias(_26, _3, _20_m16);
  float _496 = _495.x;
  float _498 = _495.z;
  float _500 = 1.0f - _495.w;
  float _504 = _486.w * _51_m24.w;
  float3 _508 = _4 + _18_m11.xyz;
  float3 _512 = _508 - float3(_480.w, _421, _479.w);
  _512.y = 6.103515625e-05f;
  float3 _515 = normalize(_512);
  float4 _528 = _57.SampleBias(_26, _3, _20_m16);
  _528.w = _528.w * _528.x;
  float2 _537 = (_528.wy * 2.0f) - 1.0f.xx;
  float3 _538 = float3(_537.x, _537.y, _419.z);
  float2 _539 = _537.xy;
  _538.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_539, _539), 0.0f, 1.0f)));
  float2 _547 = _538.xy * _51_m3;
  float3 _553 = _491 * _51_m18;
  float3 _557 = lerp(dot(_553, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _553, _51_m19.xxx);
  float4 _561 = _58.SampleBias(_26, _3, _20_m16);
  float3 _570 = mul(float3(_547.x, _547.y, _538.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
  float _579 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _51_m5));
  float3 _580 = (_570 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_570, _570)))) * _579;
  float3 _581 = normalize(_5) * _579;
  uint2 _583 = uint2(gl_FragCoord.xy);
  float3 _593 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _602 = asuint((_20_m92.x > 0.5f) ? _20_m92.y : _23_m0[_13]._m7.x);
  float4 _615 = float4(float(_602 & 255u), float((_602 >> 8u) & 255u), float((_602 >> 16u) & 255u), float((_602 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _616 = _615.x;
  float _619 = _615.w;
  float _625 = _508.y;
  float _628 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m92.w, _20_m92.x) - _625) * _615.y;
  float _629 = max(_615.z, _628);
  float _638 = lerp(_20_m22.x, 1.0f, _20_m94.w) * _20_m20.x;
  float4 _1133;
  float3 _1134;
  float3 _1135;
  float _1136;
  if (_20_m83.y < 0.5f) {
    float3 _656 = _508 - (_20_m108.xyz + (_593 * (-_20_m110.w)));
    float _671 = max(min(max((max(abs(_656.x), abs(_656.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_656.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _973;
    float4 _974;
    float4 _975;
    float _976;
    float _977;
    if ((_20_m108.w != 0.0f) && (_671 < 1.0f)) {
      float3 _684 = _508 - (_20_m108.xyz + (_593 * (-_20_m110.y)));
      float _698 = max(clamp((max(abs(_684.x), abs(_684.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_684.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _774;
      float4 _775;
      float4 _776;
      float4 _777;
      if (_698 < 1.0f) {
        float3 _707 = ((_508 * 2.0f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _709 = _707 - floor(_707);
        float4 _713 = _44.SampleLevel(_26, _709, 0.0f);
        float _714 = 1.0f - _698;
        float _718 = _20_m109.y * 0.5f;
        float _723 = _709.x;
        float _724 = clamp(_709.y, _718, 1.0f - _718) * 0.3333333432674407958984375f;
        float _725 = _709.z;
        float4 _728 = _45.SampleLevel(_25, float3(_723, _724, _725), 0.0f);
        float _744 = _713.x;
        float _754 = _713.y;
        float _764 = _713.z;
        _774 = _671 + (_728.w * _714);
        _775 = float4(((_45.SampleLevel(_25, float3(_723, _724 + 0.666666686534881591796875f, _725), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _764, _764) * _714;
        _776 = float4(((_45.SampleLevel(_25, float3(_723, _724 + 0.3333333432674407958984375f, _725), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _754, _754) * _714;
        _777 = float4(((_728.xyz * 4.0f) - 2.0f.xxx) * _744, _744) * _714;
      } else {
        _774 = _671;
        _775 = 0.0f.xxxx;
        _776 = 0.0f.xxxx;
        _777 = 0.0f.xxxx;
      }
      float3 _783 = _508 - (_20_m108.xyz + (_593 * (-_20_m110.z)));
      float _797 = max(clamp((max(abs(_783.x), abs(_783.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_783.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _877;
      float4 _878;
      float4 _879;
      float4 _880;
      if (_797 < 1.0f) {
        float3 _806 = ((_508 * 0.5f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _808 = _806 - floor(_806);
        float4 _812 = _46.SampleLevel(_26, _808, 0.0f);
        float _814 = _698 * (1.0f - _797);
        float _818 = _20_m109.y * 0.5f;
        float _823 = _808.x;
        float _824 = clamp(_808.y, _818, 1.0f - _818) * 0.3333333432674407958984375f;
        float _825 = _808.z;
        float4 _828 = _47.SampleLevel(_25, float3(_823, _824, _825), 0.0f);
        float _844 = _812.x;
        float _855 = _812.y;
        float _866 = _812.z;
        _877 = _774 + (_828.w * _814);
        _878 = _775 + (float4(((_47.SampleLevel(_25, float3(_823, _824 + 0.666666686534881591796875f, _825), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _866, _866) * _814);
        _879 = _776 + (float4(((_47.SampleLevel(_25, float3(_823, _824 + 0.3333333432674407958984375f, _825), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _855, _855) * _814);
        _880 = _777 + (float4(((_828.xyz * 4.0f) - 2.0f.xxx) * _844, _844) * _814);
      } else {
        _877 = _774;
        _878 = _775;
        _879 = _776;
        _880 = _777;
      }
      float4 _963;
      float4 _964;
      float4 _965;
      float _966;
      if (_797 > 0.0f) {
        float3 _889 = ((_508 * 0.125f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _892 = _20_m109.xyz * 0.5f;
        float3 _894 = clamp(_889 - floor(_889), _892, 1.0f.xxx - _892);
        float4 _898 = _48.SampleLevel(_26, _894, 0.0f);
        float _900 = _797 * (1.0f - _671);
        float _904 = _20_m109.y * 0.5f;
        float _909 = _894.x;
        float _910 = clamp(_894.y, _904, 1.0f - _904) * 0.3333333432674407958984375f;
        float _911 = _894.z;
        float4 _914 = _49.SampleLevel(_25, float3(_909, _910, _911), 0.0f);
        float _930 = _898.x;
        float _941 = _898.y;
        float _952 = _898.z;
        _963 = _878 + (float4(((_49.SampleLevel(_25, float3(_909, _910 + 0.666666686534881591796875f, _911), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _952, _952) * _900);
        _964 = _879 + (float4(((_49.SampleLevel(_25, float3(_909, _910 + 0.3333333432674407958984375f, _911), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _941, _941) * _900);
        _965 = _880 + (float4(((_914.xyz * 4.0f) - 2.0f.xxx) * _930, _930) * _900);
        _966 = _877 + (_914.w * _900);
      } else {
        _963 = _878;
        _964 = _879;
        _965 = _880;
        _966 = _877;
      }
      float _969 = clamp((_966 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _973 = _963;
      _974 = _964;
      _975 = _965;
      _976 = _969 - _671;
      _977 = (_969 + _671) * 0.5f;
    } else {
      _973 = 0.0f.xxxx;
      _974 = 0.0f.xxxx;
      _975 = 0.0f.xxxx;
      _976 = 0.0f;
      _977 = 1.0f;
    }
    float4 _997 = _975 + float4(_20_m111.x * _977, (_20_m111.y * _977) + ((_20_m111.w * _976) * 0.5f), _20_m111.z * _977, (_20_m111.w * _977) + ((_20_m111.y * _976) * 0.375f));
    float4 _1017 = _974 + float4(_20_m112.x * _977, (_20_m112.y * _977) + ((_20_m112.w * _976) * 0.5f), _20_m112.z * _977, (_20_m112.w * _977) + ((_20_m112.y * _976) * 0.375f));
    float4 _1037 = _973 + float4(_20_m113.x * _977, (_20_m113.y * _977) + ((_20_m113.w * _976) * 0.5f), _20_m113.z * _977, (_20_m113.w * _977) + ((_20_m113.y * _976) * 0.375f));
    float4 _1041 = float4(_580, 1.0f);
    float3 _1047 = max(float3(dot(_997, _1041), dot(_1017, _1041), dot(_1037, _1041)), 0.0f.xxx) * _638;
    float3 _1055 = ((_997.xyz * 0.2125999927520751953125f) + (_1017.xyz * 0.715200006961822509765625f)) + (_1037.xyz * 0.072200000286102294921875f);
    float3 _1059 = _1055 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1055, _1055)));
    float _1061 = abs(_1059.y);
    float3 _1062 = _1059;
    _1062.y = _1061;
    float4 _1063 = float4(_1062.x, _1062.y, _1062.z, 0.0f.xxxx.w);
    _1063.w = 1.0f;
    float4 _1067 = float4(_1059.x, _1061, _1059.z, 1.0f);
    float3 _1072 = max(float3(dot(_997, _1067), dot(_1017, _1067), dot(_1037, _1067)), 0.0f.xxx);
    float _1080 = _1047.z;
    float _1081 = _1047.y;
    float4 _1086 = lerp(float4(_1080, _1081, -1.0f, 0.666666686534881591796875f), float4(_1081, _1080, 0.0f, -0.3333333432674407958984375f), step(_1080, _1081).xxxx);
    float _1087 = _1047.x;
    float _1088 = _1086.x;
    float4 _1096 = lerp(float4(_1088, _1086.yw, _1087), float4(_1087, _1086.yz, _1088), step(_1088, _1087).xxxx);
    float _1097 = _1096.x;
    float _1098 = _1096.w;
    float _1099 = _1096.y;
    float _1101 = _1097 - min(_1098, _1099);
    float _1111 = frac(abs(_1096.z + ((_1098 - _1099) / ((6.0f * _1101) + 9.9999997473787516355514526367188e-05f))));
    float _1118 = min(_1101 / (_1097 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1111 - 0.5f))) * clamp(_1097, 0.0f, 1.0f));
    float _1120 = 2.0f / (2.0f - _1118);
    _1133 = _1063;
    _1134 = _1047;
    _1135 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1111, _1118, _1120).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1118.xxx) * _1120;
    _1136 = max(max(max(_1072.x, _1072.y), _1072.z), 0.0f) * _638;
  } else {
    _1133 = 0.0f.xxxx;
    _1134 = 1.0f.xxx;
    _1135 = _20_m84.xyz;
    _1136 = _638;
  }
  float3 _1856;
  float _1857;
  float _1858;
  float _1859;
  float _1860;
  float3 _1861;
  float3 _1862;
  [branch] if ((clamp(_616 + _629, 0.0f, 1.0f) - _51_m20) > 0.00999999977648258209228515625f) {
    float _1164 = 1.0f - _496;
    float _1167 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_491 * _1164, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
    bool3 _1170 = _466.xxx;
    float3 _1172 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1176 = float3(_1170.x ? _1172.x : _11.x, _1170.y ? _1172.y : _11.y, _1170.z ? _1172.z : _11.z) * _20_m92.z;
    float3 _1178 = float3(_1170.x ? _10.xzy.x : _10.x, _1170.y ? _10.xzy.y : _10.y, _1170.z ? _10.xzy.z : _10.z);
    float3 _1180 = abs(_1178) - 0.20000000298023223876953125f.xxx;
    float3 _1183 = max((_1180 * _1180) * _1180, 6.103515625e-05f.xxx);
    float3 _1186 = _1183 / dot(_1183, 1.0f.xxx).xxx;
    float2 _1194 = _1176.xy;
    float2 _1199 = _1176.zy;
    float4 _1209 = ((_52.SampleBias(_26, _1176.xz, _20_m16) * _1186.y) + (_52.SampleBias(_26, _1194, _20_m16) * _1186.z)) + (_52.SampleBias(_26, _1199, _20_m16) * _1186.x);
    float _1210 = _1209.w;
    float _1212 = 1.10000002384185791015625f - _1210;
    float _1221 = max(smoothstep(0.800000011920928955078125f - _1210, _1212, clamp((_616 * _1164) + (_580.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1210, _1212, clamp(_628 * _1164, 0.0f, 1.0f)));
    float _1228 = smoothstep(0.5f, 0.75f, _496);
    float _1230 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _500) * _1167;
    float _1233 = clamp(_1230 + _1228, 0.0f, 1.0f) * max(_616, _629);
    bool _1237 = !((step(_616, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _629)) != 0.0f);
    bool2 _1238 = _1237.xx;
    float2 _1240 = (1.0f - _629).xx;
    float2 _1241 = float2(_1238.x ? float2(3.0f, 4.345600128173828125f).x : _1240.x, _1238.y ? float2(3.0f, 4.345600128173828125f).y : _1240.y);
    float _1242 = 1.0f - _1233;
    float _1245 = _1237 ? _20_m10.x : 1.0f;
    float _1247 = _1245 * _1241.x;
    float _1249 = _1245 * _1241.y;
    float3 _1250 = _1176 * 20.0f;
    float3 _1251 = _1176 * 34.345600128173828125f;
    float3 _1253 = pow(max(_1180, 0.0f.xxx), 10.0f.xxx);
    float3 _1257 = _1253 / max(dot(_1253, 1.0f.xxx), 6.103515625e-05f).xxx;
    float _1259 = _1257.y;
    float2 _1260 = _1250.xz * 1.0f;
    float2 _1261 = floor(_1260);
    float2 _1264 = frac(_1261 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1268 = _1264 + dot(_1264, _1264 + 34.345001220703125f.xx).xx;
    float _1269 = _1268.x;
    float _1270 = _1268.y;
    float2 _1274 = frac(float2(_1269 * _1270, _1269 + _1270));
    float2 _1277 = frac((_1261 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1281 = _1277 + dot(_1277, _1277 + 34.345001220703125f.xx).xx;
    float _1282 = _1281.x;
    float _1283 = _1281.y;
    float2 _1287 = frac(float2(_1282 * _1283, _1282 + _1283));
    float _1293 = _1274.x;
    float _1295 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1293);
    float2 _1296 = ((_1260 - _1261) + ((((_1287 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1299 = _1296.y;
    float2 _1303 = float2(_1296.x * 1.25f, _1299 * ((_1299 < 0.0f) ? 1.25f : 0.75f));
    float _1306 = _1247 + _1293;
    float _1310 = _1237 ? frac(_1306) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1306, 0.0f, 1.0f));
    float _1322 = _1274.y;
    float _1325 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1310) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1310)) * step(0.001000000047497451305389404296875f, smoothstep(_1295, 0.0f, length(_1303)))) * step(_1242, _1322 - 0.100000001490116119384765625f);
    float _1328 = _1325 * _1259;
    float _1336 = _1257.z;
    float2 _1337 = _1250.xy * 1.0f;
    float2 _1338 = floor(_1337);
    float2 _1341 = frac(_1338 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1345 = _1341 + dot(_1341, _1341 + 34.345001220703125f.xx).xx;
    float _1346 = _1345.x;
    float _1347 = _1345.y;
    float2 _1351 = frac(float2(_1346 * _1347, _1346 + _1347));
    float2 _1354 = frac((_1338 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1358 = _1354 + dot(_1354, _1354 + 34.345001220703125f.xx).xx;
    float _1359 = _1358.x;
    float _1360 = _1358.y;
    float2 _1364 = frac(float2(_1359 * _1360, _1359 + _1360));
    float _1370 = _1351.x;
    float _1372 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1370);
    float2 _1373 = ((_1337 - _1338) + ((((_1364 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1376 = _1373.y;
    float2 _1380 = float2(_1373.x * 1.25f, _1376 * ((_1376 < 0.0f) ? 1.25f : 0.75f));
    float _1383 = _1247 + _1370;
    float _1387 = _1237 ? frac(_1383) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1383, 0.0f, 1.0f));
    float _1399 = _1351.y;
    float _1402 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1387) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1387)) * step(0.001000000047497451305389404296875f, smoothstep(_1372, 0.0f, length(_1380)))) * step(_1242, _1399 - 0.100000001490116119384765625f);
    float _1405 = _1402 * _1336;
    float _1413 = _1257.x;
    float2 _1414 = _1250.zy * 1.0f;
    float2 _1415 = floor(_1414);
    float2 _1418 = frac(_1415 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1422 = _1418 + dot(_1418, _1418 + 34.345001220703125f.xx).xx;
    float _1423 = _1422.x;
    float _1424 = _1422.y;
    float2 _1428 = frac(float2(_1423 * _1424, _1423 + _1424));
    float2 _1431 = frac((_1415 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1435 = _1431 + dot(_1431, _1431 + 34.345001220703125f.xx).xx;
    float _1436 = _1435.x;
    float _1437 = _1435.y;
    float2 _1441 = frac(float2(_1436 * _1437, _1436 + _1437));
    float _1447 = _1428.x;
    float _1449 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1447);
    float2 _1450 = ((_1414 - _1415) + ((((_1441 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1453 = _1450.y;
    float2 _1457 = float2(_1450.x * 1.25f, _1453 * ((_1453 < 0.0f) ? 1.25f : 0.75f));
    float _1460 = _1247 + _1447;
    float _1464 = _1237 ? frac(_1460) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1460, 0.0f, 1.0f));
    float _1476 = _1428.y;
    float _1479 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1464) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1464)) * step(0.001000000047497451305389404296875f, smoothstep(_1449, 0.0f, length(_1457)))) * step(_1242, _1476 - 0.100000001490116119384765625f);
    float _1482 = _1479 * _1413;
    float2 _1495 = (float4(((clamp(_1303 / _1295.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1287.x)) * _1325) * _1259, _1328, _1322).xy + float4(((clamp(_1380 / _1372.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1364.x)) * _1402) * _1336, _1405, _1399).xy) + float4(((clamp(_1457 / _1449.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1441.x)) * _1479) * _1413, _1482, _1476).xy;
    float _1497 = max(_1482, max(_1328, _1405));
    float4 _1500 = float4(_1495, _1497, 0.0f);
    float2 _1502 = _1251.xz * 1.0f;
    float2 _1503 = floor(_1502);
    float2 _1506 = frac(_1503 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1510 = _1506 + dot(_1506, _1506 + 34.345001220703125f.xx).xx;
    float _1511 = _1510.x;
    float _1512 = _1510.y;
    float2 _1516 = frac(float2(_1511 * _1512, _1511 + _1512));
    float2 _1519 = frac((_1503 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1523 = _1519 + dot(_1519, _1519 + 34.345001220703125f.xx).xx;
    float _1524 = _1523.x;
    float _1525 = _1523.y;
    float2 _1529 = frac(float2(_1524 * _1525, _1524 + _1525));
    float _1535 = _1516.x;
    float _1537 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1535);
    float2 _1538 = ((_1502 - _1503) + ((((_1529 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1541 = _1538.y;
    float2 _1545 = float2(_1538.x * 1.25f, _1541 * ((_1541 < 0.0f) ? 1.25f : 0.75f));
    float _1548 = _1249 + _1535;
    float _1552 = _1237 ? frac(_1548) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1548, 0.0f, 1.0f));
    float _1564 = _1516.y;
    float _1567 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1552) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1552)) * step(0.001000000047497451305389404296875f, smoothstep(_1537, 0.0f, length(_1545)))) * step(_1242, _1564 - 0.100000001490116119384765625f);
    float _1570 = _1567 * _1259;
    float2 _1575 = _1251.xy * 1.0f;
    float2 _1576 = floor(_1575);
    float2 _1579 = frac(_1576 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1583 = _1579 + dot(_1579, _1579 + 34.345001220703125f.xx).xx;
    float _1584 = _1583.x;
    float _1585 = _1583.y;
    float2 _1589 = frac(float2(_1584 * _1585, _1584 + _1585));
    float2 _1592 = frac((_1576 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1596 = _1592 + dot(_1592, _1592 + 34.345001220703125f.xx).xx;
    float _1597 = _1596.x;
    float _1598 = _1596.y;
    float2 _1602 = frac(float2(_1597 * _1598, _1597 + _1598));
    float _1608 = _1589.x;
    float _1610 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1608);
    float2 _1611 = ((_1575 - _1576) + ((((_1602 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1614 = _1611.y;
    float2 _1618 = float2(_1611.x * 1.25f, _1614 * ((_1614 < 0.0f) ? 1.25f : 0.75f));
    float _1621 = _1249 + _1608;
    float _1625 = _1237 ? frac(_1621) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1621, 0.0f, 1.0f));
    float _1637 = _1589.y;
    float _1640 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1625) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1625)) * step(0.001000000047497451305389404296875f, smoothstep(_1610, 0.0f, length(_1618)))) * step(_1242, _1637 - 0.100000001490116119384765625f);
    float _1643 = _1640 * _1336;
    float2 _1648 = _1251.zy * 1.0f;
    float2 _1649 = floor(_1648);
    float2 _1652 = frac(_1649 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1656 = _1652 + dot(_1652, _1652 + 34.345001220703125f.xx).xx;
    float _1657 = _1656.x;
    float _1658 = _1656.y;
    float2 _1662 = frac(float2(_1657 * _1658, _1657 + _1658));
    float2 _1665 = frac((_1649 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1669 = _1665 + dot(_1665, _1665 + 34.345001220703125f.xx).xx;
    float _1670 = _1669.x;
    float _1671 = _1669.y;
    float2 _1675 = frac(float2(_1670 * _1671, _1670 + _1671));
    float _1681 = _1662.x;
    float _1683 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1681);
    float2 _1684 = ((_1648 - _1649) + ((((_1675 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1687 = _1684.y;
    float2 _1691 = float2(_1684.x * 1.25f, _1687 * ((_1687 < 0.0f) ? 1.25f : 0.75f));
    float _1694 = _1249 + _1681;
    float _1698 = _1237 ? frac(_1694) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1694, 0.0f, 1.0f));
    float _1710 = _1662.y;
    float _1713 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1698) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1698)) * step(0.001000000047497451305389404296875f, smoothstep(_1683, 0.0f, length(_1691)))) * step(_1242, _1710 - 0.100000001490116119384765625f);
    float _1716 = _1713 * _1413;
    float2 _1724 = (float4(((clamp(_1545 / _1537.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1529.x)) * _1567) * _1259, _1570, _1564).xy + float4(((clamp(_1618 / _1610.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1602.x)) * _1640) * _1336, _1643, _1637).xy) + float4(((clamp(_1691 / _1683.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1675.x)) * _1713) * _1413, _1716, _1710).xy;
    float4 _1729 = float4(_1724, max(_1716, max(_1570, _1643)), 0.0f);
    float _1731 = step(max(float2(_1295 * _1325, _421) * _1259, max(float2(_1372 * _1402, _421) * _1336, float2(_1449 * _1479, _421) * _1413)).x, 0.00999999977648258209228515625f);
    float2 _1735 = _1500.xy + (_1729.xy * _1731);
    float3 _1744 = float3((_1209.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1735.x, _1735.y, 0.0f.xxx.z);
    float2 _1748 = float2(0.0f, (_20_m10.x * _20_m92.z) * 0.75f);
    float3 _1751 = float3(_1178.x, 0.0f, _1178.z);
    float3 _1757 = abs(_1751 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1751, _1751)))) - 0.20000000298023223876953125f.xxx;
    float3 _1760 = max((_1757 * _1757) * _1757, 6.103515625e-05f.xxx);
    float3 _1763 = _1760 / dot(_1760, 1.0f.xxx).xxx;
    float _1782 = _1763.z;
    float _1784 = _1763.x;
    float4 _1786 = (_53.SampleBias(_26, _1194, _20_m16) * _1782) + (_53.SampleBias(_26, _1199, _20_m16) * _1784);
    float2 _1798 = _1744.xy + ((((_1786.xy * 2.0f) - 1.0f.xx) * ((_53.SampleBias(_26, _1194 + _1748, _20_m16).w * _1782) + (_53.SampleBias(_26, _1199 + _1748, _20_m16).w * _1784))) * _1233);
    float3 _1799 = float3(_1798.x, _1798.y, _1744.z);
    float _1800 = _1786.z;
    float _1805 = max(max(max(_1500.zw * step(0.00999999977648258209228515625f, _1497), _1729.zw * _1731).x, step(1.0099999904632568359375f - _1233, _1209.z)), smoothstep(1.0f - _1800, 1.10000002384185791015625f - _1800, _1233) * _1233);
    float2 _1806 = _1798.xy;
    _1799.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1806, _1806), 0.0f, 1.0f)));
    float3 _1813 = normalize(_1799);
    float3 _1814 = cross(_580, float3(0.0f, 1.0f, 0.0f));
    bool3 _1817 = (dot(_1814, _1814) > 6.103515625e-05f).xxx;
    float3 _1818 = normalize(_1814);
    float3 _1819 = float3(_1817.x ? _1818.x : float3(1.0f, 0.0f, 0.0f).x, _1817.y ? _1818.y : float3(1.0f, 0.0f, 0.0f).y, _1817.z ? _1818.z : float3(1.0f, 0.0f, 0.0f).z);
    float _1830 = min(_500, 0.0500000007450580596923828125f);
    float _1831 = lerp(_500, _1830, _1805);
    float _1848 = lerp(1.0f, 0.5f, (_1221 * (1.0f - _1167)) * (1.0f - _1230));
    _1856 = normalize(lerp(_580, normalize(((_1819 * _1813.x) + (cross(_1819, _580) * _1813.y)) + (_580 * _1813.z)), _1805.xxx));
    _1857 = _1805;
    _1858 = _1830;
    _1859 = _1805;
    _1860 = max(_1831 - ((0.20000000298023223876953125f * _1167) * _1221), min(0.20000000298023223876953125f, _1831));
    _1861 = _557 * _1848;
    _1862 = lerp(_491, _491 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_491, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1805 * _1228).xxx) * _1848;
  }
  else {
    _1856 = _580;
    _1857 = 0.0f;
    _1858 = 0.00999999977648258209228515625f;
    _1859 = 0.0f;
    _1860 = _500;
    _1861 = _557;
    _1862 = _491;
  }
  float3 _1992;
  float _1993;
  float3 _1994;
  float3 _1995;
  float _1996;
  [branch] if ((_619 - _51_m20) > 0.00999999977648258209228515625f) {
    bool3 _1867 = _466.xxx;
    float3 _1869 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1870 = float3(_1867.x ? _1869.x : _11.x, _1867.y ? _1869.y : _11.y, _1867.z ? _1869.z : _11.z);
    float3 _1873 = _1870 * _20_m92.z;
    float3 _1875 = float3(_1867.x ? _10.xzy.x : _10.x, _1867.y ? _10.xzy.y : _10.y, _1867.z ? _10.xzy.z : _10.z);
    float3 _1877 = abs(_1875) - 0.20000000298023223876953125f.xxx;
    float3 _1880 = max((_1877 * _1877) * _1877, 6.103515625e-05f.xxx);
    float3 _1883 = _1880 / dot(_1880, 1.0f.xxx).xxx;
    float4 _1906 = ((_54.SampleBias(_26, _1873.xz, _20_m16) * _1883.y) + (_54.SampleBias(_26, _1873.xy, _20_m16) * _1883.z)) + (_54.SampleBias(_26, _1873.zy, _20_m16) * _1883.x);
    float _1907 = _1875.y;
    float _1914 = clamp(_619 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1870.y) * clamp(_619 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1920 = _1914 * (2.0f - _1914);
    float _1927 = smoothstep(2.0f - _1920, 2.349999904632568359375f - _1920, ((_1907 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1906.z) * ((_498 * _498) * float(gl_FrontFacing));
    float _1939 = lerp(1.0f, 0.5f, ((_1914 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1862 * (1.0f - _496), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1906.w) * ((_1907 * 0.25f) + 0.75f));
    float3 _1941 = _1927.xxx;
    float2 _1947 = (_1906.xy * 2.0f) - 1.0f.xx;
    float3 _1948 = float3(_1947.x, _1947.y, _419.z);
    float2 _1949 = _1947.xy;
    _1948.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1949, _1949), 0.0f, 1.0f)));
    float2 _1957 = _1948.xy * 2.0f;
    float3 _1959 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1957.x, _1957.y, _1948.z), _1941);
    float3 _1963 = _1959 * rsqrt(max(6.103515625e-05f, dot(_1959, _1959)));
    float _1964 = _580.y;
    float _1967 = step(0.00999999977648258209228515625f, 1.0f - (_1964 * _1964));
    float _1971 = lerp(_580.z, _1964, _1967);
    float3 _1978 = (float3(0.0f, _1967, 1.0f - _1967) - (_580 * _1971)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1971 * _1971)));
    _1992 = ((cross(_1978, _580) * _1963.x) + (_1978 * _1963.y)) + (_580 * _1963.z);
    _1993 = lerp(_1860, 0.89999997615814208984375f, clamp(_1927 * 4.0f, 0.0f, 1.0f));
    _1994 = lerp(_1861 * _1939, 0.3079999983310699462890625f.xxx, _1941);
    _1995 = lerp(_1862 * _1939, 0.87999999523162841796875f.xxx, _1941);
    _1996 = lerp(_496, 0.0f, _1927);
  }
  else {
    _1992 = _580;
    _1993 = _1860;
    _1994 = _1861;
    _1995 = _1862;
    _1996 = _496;
  }
  bool2 _2000 = (_51_m49 != 0.0f).xx;
  float3x3 _2014 = float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz);
  float _2053 = (_51_m50 * (_51_m51 - dot(_508, _51_m44.xyz))) + ((_60.SampleBias(_61, (lerp(float2(_2000.x ? _7.x : _3.x, _2000.y ? _7.y : _3.y), mul(_2014, _508 - mul(_23_m0[_13]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _51_m45.xx) * _51_m41.xy) + _51_m41.zw, _20_m16).x - ((max(_51_m47, _23_m0[_13]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _51_m52);
  if ((clamp(_2053 * _51_m46, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f) {
    discard;
  }
  float _2086 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(1.0f, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _2088 = abs(_2086);
  if (min(_23_m0[_13]._m1.x - ((_23_m0[_13]._m1.x >= 0.0f) ? _2088 : (-_2088)), (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) - _2086) < 0.0f) {
    discard;
  }
  float _2099 = 0.959999978542327880859375f - (_1996 * 0.959999978542327880859375f);
  float3 _2100 = _1995 * _2099;
  float3 _2103 = lerp(0.039999999105930328369140625f.xxx * _495.y, _1995, _1996.xxx);
  float3 _2104 = _2103 * _498;
  float3 _2105 = _1994 * _2099;
  float _2107 = max(_1993 * _1993, 0.0078125f);
  float2 _2120 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
  _2120.y = -_2120.y;
  float2 _2133 = ((sqrt(sqrt(abs(_2120 * 0.5f))) * float2(int2(sign(_2120)))) * 0.5f) + 0.5f.xx;
  float4 _2136 = float4(_2133.x, _2133.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2136.z = 1.0f;
  _2136.w = (_1859 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2149 = lerp(-_34_m0.xyz, _20_m93.xyz, _20_m83.w.xxx);
  float3 _2153 = normalize(float3(_2149.x, 6.103515625e-05f, _2149.z));
  float3 _2163 = lerp(_34_m3.xyz, _20_m87.xyz, _20_m94.y.xxx);
  float3 _2169 = _2163 * lerp(_34_m3.w, _20_m87.w, _20_m94.w);
  int _2173 = int(_583.x);
  int _2174 = int(_583.y);
  float4 _2178 = _42.Load(int3(int3(_2173, _2174, 0).xy, 0));
  float _2183 = _2178.y;
  float _2186 = lerp(lerp(1.0f, _2178.x, _38_m6.x), 1.0f, _20_m83.z);
  float _2187 = dot(_1992, _2149);
  float3 _2194 = _2105 * _20_m82.z;
  float3 _2195 = _2194 * 0.64999997615814208984375f;
  float _2199 = dot(_2100, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2212 = clamp(-dot(_2153.xz, normalize(_593.xz)), 0.0f, 1.0f);
  float _2216 = 1.0f - _20_m94.x;
  float _2224 = smoothstep(0.25f, 1.0f, clamp(lerp(_2187, ((-_2187) * ((_2187 * 0.5f) - 1.0f)) + 0.5f, (_2212 * smoothstep(0.25f, 0.75f, 1.0f - abs(_593.y))) * _2216) + (_20_m93.w * _20_m94.x), -1.0f, 1.0f));
  float _2231 = max(max(_2224, _2224), _2224) - min(min(_2224, _2224), _2224);
  float _2233 = smoothstep(0.25f, 1.0f, dot(_1992, _593));
  float _2240 = min(min(_2183, 1.0f), _2224);
  float _2241 = _2233 * _2183;
  float3 _2245 = ((clamp(dot(_580, _20_m88.xyz) + _20_m89.x, 0.0f, 1.0f) * _20_m89.y) + _20_m89.z).xxx * lerp(_1135, 1.0f.xxx, (_20_m83.y * _2240).xxx);
  float3 _2247 = _2240.xxx;
  float3 _2270 = _2186.xxx;
  float3 _2271 = lerp((_2245 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1136), 1.5f), clamp(_1136, 1.25f, 1.75f), _20_m83.x)) * _20_m82.w, (lerp(dot(_2169, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2169, _2247) + ((_2245 * clamp(_1136, 0.0f, 1.5f)) * ((1.0f - _20_m94.y).xxx + (_2163 * _20_m94.y)))) * _20_m82.y, _2270);
  float3 _2272 = lerp(lerp(lerp(dot(_2195, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2195, 1.2000000476837158203125f.xxx), _2194, clamp((_2183 * _2233) + _2224, 0.0f, 1.0f).xxx), _2100, _2247);
  float3 _2278 = _2272 * ((1.0f - _2231).xxx + (_2224.xxxx.xyz * _2231));
  float3 _2287 = lerp(lerp(_2194, lerp(_2199.xxx, _2100, 1.2000000476837158203125f.xxx), _2241.xxx), _2278 * clamp(dot(_2272, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2278, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2270);
  float4 _2291 = float4(_2287, _2186);
  float _2293 = lerp(_2241, _2240, _2186);
  float _2296 = lerp(_20_m82.z, 1.0f, _2293);
  float3 _2304 = float3(_593.x, lerp(0.5f, _2149.y, _2186), _593.z);
  float _2317 = clamp(dot(_1856, _457), 0.0f, 1.0f);
  float _2318 = dot(_1856, normalize(((_2149 * _2186) + ((_2304 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2304, _2304)))) * 2.0f)) + (_457 * (2.0f + _2186))));
  float _2319 = _2107 * _2107;
  float _2323 = (((_2318 * _2319) - _2318) * _2318) + 1.0f;
  float _2324 = _2323 * _2323;
  float _2328 = 2.0f * _2317;
  float _2330 = (1.0f + _2317) - _2317;
  float _2347 = (1.0f - _51_m6) + (_504 * _51_m6);
  float3 _2349 = ((_2271 * _2287) * _2347) + (((_2103 * clamp((((_2319 != _2324) ? (_2319 / _2324) : 1.0f) * (0.5f / ((_2328 + (_2107 * _2330)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2271 * (((_2293 * 0.5f) + 0.5f) * _2296)) * 1.0f)) * _20_m95.w);
  float _2350 = dot(_2349, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2353 = clamp(_2350 - 0.5f, 0.0f, 0.5f);
  float3 _2389 = normalize(cross(_593, lerp(float3(_20_m91.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m91.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m91.y), _20_m97.w.xxx)));
  float _2395 = dot(_457, _1992);
  float _2397 = 1.0f - abs(_2395);
  float _2419 = dot(_2153, _1992);
  float _2431 = 1.0f - _2186;
  float _2458 = lerp(_1993, _1858, _1857);
  float _2459 = _2458 * _2458;
  float _2460 = _2317 * _2317;
  float _2461 = _2460 * _2317;
  float2 _2462 = float2(1.0f, _2317);
  float2 _2465 = float2(1.0f, _2459);
  float3 _2468 = float3(1.0f, _2459, (_2459 * _2459) * _2459);
  float _2473 = dot(mul(_2462, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2465) / dot(mul(float3(1.0f, _2460, _2461), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2468);
  float _2478 = dot(mul(_2462, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2465) / dot(mul(float3(1.0f, _2317, _2461), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2468);
  float3 _2481 = (_2104 * _2473) + _2478.xxx;
  float _2482 = _2473 + _2478;
  float3 _2510 = lerp(_2350.xxx, _2349, ((_2353 * _2353) + 1.0f).xxx) + (((((_20_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m91.w), lerp(0.89999997615814208984375f, 0.5f, _20_m91.w), _2397)) * _20_m90.w) * min(min(clamp(dot(_515, _2389) + 1.0f, 0.0f, 1.0f), 1.0f), _2183)) * (lerp(0.25f.xxx, _2100, _20_m91.z.xxx) * clamp(dot(_2389, _1992), 0.0f, 1.0f))) + ((((((lerp(_1134 * (1.0f / max(max(max(_1134.x, _1134.y), _1134.z) * 0.5f, 1.0f)), _2169, _2270) * clamp(lerp(dot(_1133.xyz, _1992) * _1133.w, ((-_2419) * ((_2419 * 0.5f) - 1.0f)) + 0.5f, _2186), 0.0f, 1.0f)) * ((_2431 + (_2212 * _2186)) * _2216)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2397)) * min(1.0f, _2183)) * (_2431 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2199) * _2186))) * max(0.1500000059604644775390625f.xxx, _2100)));
  float2 _2513 = float2(_583);
  float2 _2515 = floor(_2513 * 0.03125f);
  int _2523 = int((_2515.x + (_2515.y * _36_m9)) * 8.0f);
  float _2530 = floor(_438 - (_20_m3.y * _36_m15));
  float _2534 = clamp(_2530, 0.0f, _36_m11 - 1.0f);
  int _2536 = int(_2534 * 8.0f);
  float3 _2538;
  _2538 = (_2510 + ((((_561.xyz * _51_m25.xyz) * _51_m7) + (_51_m43.xyz * clamp((_51_m48 - _2053) * _51_m46, 0.0f, 1.0f))) * _2347)) + ((((_59.SampleBias(_25, (normalize(mul(_2014, _1856)).xy * 0.5f) + 0.5f.xx, _20_m16).xyz * _51_m40.xyz) * ((_2481 + ((_2104 * ((1.0f - _2482) / _2482)) * _2481)) * 1.0f)) * ((clamp(_1136, 0.5f, 1.5f) * _20_m82.w) * _2296)) * _1135);
  float3 _2539;
  [loop] for (int _2541 = 0; _2541 <= 7; _2538 = _2539, _2541++) {
    uint _2562 = (_2530 <= _2534) ? (_30.Load(uint((_36_m2 + _2523) + _2541) * 4 + 0) & _30.Load(uint((_36_m3 + _2536) + _2541) * 4 + 0)) : 0u;
    uint _2563 = uint(_2541);
    _2539 = _2538;
    uint _2568;
    float3 _2565;
    [loop] for (uint _2567 = _2562; _2567 != 0u; _2539 = _2565, _2567 = _2568) {
      uint _2572 = firstbitlow(_2567);
      _2568 = _2567 ^ (1u << (_2572 & 31u));
      int _2578 = int((32u * _2563) + _2572) * 8;
      int _2581 = _2578 + 1;
      int _2584 = _2578 + 2;
      int _2587 = _2578 + 3;
      int _2590 = _2578 + 4;
      int _2593 = _2578 + 5;
      int _2596 = _2578 + 6;
      int _2599 = _2578 + 7;
      uint _2603 = uint(_34_m6[_2593].w);
      float _2678;
      if ((_2603 & 1u) == 1u) {
        uint _2609 = asuint(_34_m6[_2593].x);
        uint _2616 = asuint(_34_m6[_2593].y);
        uint _2623 = asuint(_34_m6[_2593].z);
        uint _2630 = asuint(_34_m6[_2596].x);
        uint _2637 = asuint(_34_m6[_2596].y);
        uint _2644 = asuint(_34_m6[_2596].z);
        float3 _2663 = abs(mul(float4(_508 - _34_m6[_2581].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2609).x, spvUnpackHalf2x16(_2623).x, spvUnpackHalf2x16(_2637).x, 0.0f), float4(spvUnpackHalf2x16(_2609 >> 16u).x, spvUnpackHalf2x16(_2623 >> 16u).x, spvUnpackHalf2x16(_2637 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2616).x, spvUnpackHalf2x16(_2630).x, spvUnpackHalf2x16(_2644).x, 0.0f), float4(spvUnpackHalf2x16(_2616 >> 16u).x, spvUnpackHalf2x16(_2630 >> 16u).x, spvUnpackHalf2x16(_2644 >> 16u).x, 0.0f))).xyz);
        float _2670 = _34_m6[_2599].x * 0.5f;
        float _2676 = 1.0f - clamp((max(max(_2663.x, _2663.y), _2663.z) - (_2670 + 0.5f)) / (0.5f - _2670), 0.0f, 1.0f);
        _2678 = _2676 * _2676;
      } else {
        _2678 = 1.0f;
      }
      if (false || (_2678 < 0.001000000047497451305389404296875f)) {
        _2565 = _2539;
        continue;
      }
      float3 _3473;
      do {
        uint _2686 = uint(_34_m6[_2578].w);
        [branch] if (_2686 >= 4u) {
          _3473 = _2539;
          break;
        }
        float3 _3472;
        if (_34_m6[_2578].w < 1.5f) {
          float3 _3471;
          do {
            uint _2697 = asuint(_34_m6[_2587].w);
            if ((_2697 == 16u) || ((_34_m6[_2587].z + _20_m94.z) < 0.5f)) {
              _3471 = _2539;
              break;
            }
            bool _2708 = (_2686 & 1u) == 0u;
            bool _2712 = (!_2708) && (_34_m6[_2584].z > 0.0f);
            bool _2713 = _2697 == 4u;
            float _2714 = float(_2708);
            float _2722 = (0.5f + (0.5f * _34_m6[_2584].y)) - abs(_34_m6[_2584].x);
            float _2723 = _34_m6[_2584].y - _2722;
            float _2730 = abs(max((1.0f - abs(_2722)) - abs(_2723), 0.00048828125f));
            float3 _2734 = normalize(float3(_2722, _2723, (_34_m6[_2584].x >= 0.0f) ? _2730 : (-_2730)));
            float _2740 = lerp(_34_m6[_2596].w, max(2.0f * _34_m6[_2590].y, 0.100000001490116119384765625f), float(_2713));
            float3 _2745 = _34_m6[_2581].xyz - _508;
            float3 _2746 = -_2734;
            float3 _2751 = lerp(_2745, _2746 * dot(_2745, _2746), (float(_2713 && (_34_m6[_2590].z > 0.5f)) * _2714).xxx);
            float _2752 = dot(_2751, _2751);
            float _2753 = rsqrt(_2752);
            float3 _2754 = _2751 * _2753;
            float3 _2787;
            float _2788;
            if (_2712) {
              float3 _2758 = (_2734 * _34_m6[_2584].z) * 0.5f;
              float3 _2759 = _2751 - _2758;
              float3 _2760 = _2751 + _2758;
              float _2761 = length(_2759);
              float _2762 = length(_2760);
              float3 _2771 = normalize(cross(cross(_2734, _2754), _2734));
              _2787 = _2771;
              _2788 = ((1.0f / ((((_2761 * _2762) + dot(_2759, _2760)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2771, _2759) / _2761) + (dot(_2771, _2760) / _2762)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_34_m6[_2584].z * _2753, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2787 = _2754;
              _2788 = 1.0f;
            }
            float _2810;
            if (_2740 < 0.0f) {
              float _2804 = _2752 * (_34_m6[_2581].w * _34_m6[_2581].w);
              float _2807 = clamp(1.0f - (_2804 * _2804), 0.0f, 1.0f);
              _2810 = lerp(1.0f / (_2752 + 1.0f), _2788, float(_2712)) * (_2807 * _2807);
            } else {
              float3 _2793 = _2751 * _34_m6[_2581].w;
              _2810 = _2788 * pow(1.0f - clamp(dot(_2793, _2793), 0.0f, 1.0f), _2740);
            }
            float _2815 = clamp((dot(_2787, _2746) - _34_m6[_2584].z) * _34_m6[_2584].w, 0.0f, 1.0f);
            float _2818 = _2810 * lerp(1.0f, _2815 * _2815, _2714);
            int _2820 = int(_34_m6[_2599].w);
            float _2924;
            if ((!_2712) && (_2820 >= 0)) {
              uint _2826 = uint(_2820);
              float2 _2917;
              [branch] if (_2714 != 0.0f) {
                float4 _2907 = mul(_64_m1[_2826], float4(_508.x, _625, _508.z, 1.0f));
                _2917 = _64_m0[_2826].xy + (clamp(_2907.xy / _2907.w.xx, 0.0f.xx, 1.0f.xx) * _64_m0[_2826].zw);
              }
              else {
                float3 _2841 = mul(float4(-_2751, 0.0f), _64_m1[_2826]).xyz;
                float3 _426 = _2841;
                float3 _425 = _2841;
                float3 _424 = abs(_2841);
                uint _2850 = uint(int(_424.y > _424.x));
                uint _2856 = (_424.z > _424[_2850]) ? 2u : _2850;
                uint _2862 = (_2856 * 2u) + uint(_425[_2856] < 0.0f);
                float _2866 = abs(_426[_2862 / 2u]);
                float _2886 = 0.5f - (0.000244140625f / _64_m0[_2826].w);
                _2917 = _64_m0[_2826].xy + (clamp(float2((float(_2862) + ((((_426[uint(_374[_2862].x)] * _375[_2862].x) / _2866) * _2886) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_426[uint(_374[_2862].y)] * _375[_2862].y) / _2866) * _2886)), 0.0f.xx, 1.0f.xx) * _64_m0[_2826].zw);
              }
              _2924 = _2818 * _62.SampleLevel(_25, _2917, 0.0f).x;
            } else {
              _2924 = _2818;
            }
            float _2925 = _2924 * _2678;
            float3 _3470;
            do {
              float3 _3469;
              [branch] if (_2925 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2713) {
                  _3470 = lerp(_2539, _34_m6[_2578].xyz, (_2925 * (_34_m6[_2590].x * ((1.0f - _34_m6[_2590].w) + (smoothstep(-0.5f, 0.5f, dot(_581, _2787)) * _34_m6[_2590].w)))).xxx);
                  break;
                }
                float _2945 = dot(_1992, _2787);
                float _2946 = clamp(_2945, 0.0f, 1.0f);
                float _3345;
                if (_2697 != 0u) {
                  bool _2952 = _2708 || ((_2603 & 2u) != 0u);
                  int _3002;
                  if (_2952) {
                    _3002 = int(_34_m6[_2587].x);
                  } else {
                    uint _2957 = asuint(_34_m6[_2584].w);
                    uint _2958 = asuint(_34_m6[_2587].x);
                    float3 _2959 = _508 - _34_m6[_2581].xyz;
                    float3 _2960 = abs(_2959);
                    float _2961 = _2960.x;
                    float _2962 = _2960.y;
                    float _2964 = _2960.z;
                    int _2997;
                    if ((_2961 > _2962) && (_2961 > _2964)) {
                      _2997 = int((_2959.x > 0.0f) ? (_2957 & 1023u) : ((_2957 >> 10u) & 1023u));
                    } else {
                      int _2989;
                      if (_2962 > _2964) {
                        _2989 = int((_2959.y > 0.0f) ? ((_2957 >> 20u) & 1023u) : (_2958 & 1023u));
                      } else {
                        _2989 = int((_2959.z > 0.0f) ? ((_2958 >> 10u) & 1023u) : ((_2958 >> 20u) & 1023u));
                      }
                      _2997 = _2989;
                    }
                    _3002 = (_2997 == 1023) ? (-1) : _2997;
                  }
                  bool _3003 = _3002 >= 0;
                  float _3344;
                  if (_3003) {
                    float3 _3010 = _508 - _34_m6[_2581].xyz;
                    uint _3020 = asuint(_38_m11.x) + (uint(_3002) * 96u);
                    uint _3022 = (_3020 + 64u) >> 2u;
                    uint _3025 = _3022 + 1u;
                    uint _3028 = _3022 + 2u;
                    uint _3031 = _3022 + 3u;
                    float4 _3035 = asfloat(uint4(_41.Load(_3022 * 4 + 0), _41.Load(_3025 * 4 + 0), _41.Load(_3028 * 4 + 0), _41.Load(_3031 * 4 + 0)));
                    uint _3043 = _3020 >> 2u;
                    uint _3058 = (_3020 + 16u) >> 2u;
                    uint _3073 = (_3020 + 32u) >> 2u;
                    uint _3088 = (_3020 + 48u) >> 2u;
                    float4 _3108 = mul(transpose(float4x4(asfloat(uint4(_41.Load(_3043 * 4 + 0), _41.Load((_3043 + 1u) * 4 + 0), _41.Load((_3043 + 2u) * 4 + 0), _41.Load((_3043 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_3058 * 4 + 0), _41.Load((_3058 + 1u) * 4 + 0), _41.Load((_3058 + 2u) * 4 + 0), _41.Load((_3058 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_3073 * 4 + 0), _41.Load((_3073 + 1u) * 4 + 0), _41.Load((_3073 + 2u) * 4 + 0), _41.Load((_3073 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_3088 * 4 + 0), _41.Load((_3088 + 1u) * 4 + 0), _41.Load((_3088 + 2u) * 4 + 0), _41.Load((_3088 + 3u) * 4 + 0))))), float4((_508 - ((_3010 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3010, _3010)))) * _3035.x)) + (_581 * (_3035.y * 5.0f)), 1.0f));
                    float3 _3112 = _3108.xyz / _3108.w.xxx;
                    uint _3114 = (_3020 + 80u) >> 2u;
                    float4 _3127 = asfloat(uint4(_41.Load(_3114 * 4 + 0), _41.Load((_3114 + 1u) * 4 + 0), _41.Load((_3114 + 2u) * 4 + 0), _41.Load((_3114 + 3u) * 4 + 0)));
                    float2 _3128 = _3112.xy;
                    float2 _3130 = _3127.xy;
                    float3 _3134 = _3112.xyz;
                    bool3 _3135 = bool3(_3134.x <= 0.0f.xxx.x, _3134.y <= 0.0f.xxx.y, _3134.z <= 0.0f.xxx.z);
                    bool3 _3136 = bool3(_3134.x >= 1.0f.xxx.x, _3134.y >= 1.0f.xxx.y, _3134.z >= 1.0f.xxx.z);
                    float _3139 = _3112.z;
                    float2 _3150 = ((_3128 * (_3127.zw - _3130)) + _3130).xy * _38_m10.zw;
                    float2 _3152 = floor(_3150 + 0.5f.xx);
                    float2 _3153 = _3150 - _3152;
                    float _3154 = _3153.x;
                    float _3155 = _3154 + 0.5f;
                    float _3156 = _3155 * _3155;
                    float _3159 = 1.0f - _3154;
                    float _3160 = min(_3154, 0.0f);
                    float _3163 = _3154 + 1.0f;
                    float _3164 = max(_3154, 0.0f);
                    float _3175 = _3153.y;
                    float _3176 = _3175 + 0.5f;
                    float _3177 = _3176 * _3176;
                    float _3180 = 1.0f - _3175;
                    float _3181 = min(_3175, 0.0f);
                    float _3184 = _3175 + 1.0f;
                    float _3185 = max(_3175, 0.0f);
                    float3 _3197 = float3(0.1599999964237213134765625f * _3159, 0.1599999964237213134765625f * ((_3163 - (_3164 * _3164)) + 1.0f), _3156 * 0.07999999821186065673828125f);
                    float3 _3198 = float3(0.1599999964237213134765625f * ((_3156 * 0.5f) - _3154), 0.1599999964237213134765625f * ((_3159 - (_3160 * _3160)) + 1.0f), 0.1599999964237213134765625f * _3163) + _3197;
                    float3 _3200 = float3(0.1599999964237213134765625f * _3180, 0.1599999964237213134765625f * ((_3184 - (_3185 * _3185)) + 1.0f), _3177 * 0.07999999821186065673828125f);
                    float3 _3201 = float3(0.1599999964237213134765625f * ((_3177 * 0.5f) - _3175), 0.1599999964237213134765625f * ((_3180 - (_3181 * _3181)) + 1.0f), 0.1599999964237213134765625f * _3184) + _3200;
                    float3 _3207 = ((_3197 / _3198) + float3(-2.5f, -0.5f, 1.5f)) * _38_m10.xxx;
                    float3 _3209 = ((_3200 / _3201) + float3(-2.5f, -0.5f, 1.5f)) * _38_m10.yyy;
                    float2 _3211 = _3152 * _38_m10.xy;
                    float _3212 = _3207.x;
                    float _3213 = _3209.x;
                    float _3216 = _3207.y;
                    float _3219 = _3207.z;
                    float _3222 = _3209.y;
                    float _3229 = _3209.z;
                    float _3236 = _3198.x;
                    float _3237 = _3201.x;
                    float _3239 = _3198.y;
                    float _3241 = _3198.z;
                    float _3243 = _3201.y;
                    float _3247 = _3201.z;
                    float _3305 = (((((((_3236 * _3237) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3212, _3213), _418).xy, _3139)) + ((_3239 * _3237) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3216, _3213), _418).xy, _3139))) + ((_3241 * _3237) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3219, _3213), _418).xy, _3139))) + ((_3236 * _3243) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3212, _3222), _418).xy, _3139))) + ((_3239 * _3243) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3216, _3222), _418).xy, _3139))) + ((_3241 * _3243) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3219, _3222), _418).xy, _3139))) + ((_3236 * _3247) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3212, _3229), _418).xy, _3139));
                    float4 _3328 = asfloat(uint4(_41.Load(_3022 * 4 + 0), _41.Load(_3025 * 4 + 0), _41.Load(_3028 * 4 + 0), _41.Load(_3031 * 4 + 0)));
                    float _3329 = _3328.w;
                    float2 _3331 = min(_3128, 1.0f.xx - _3128);
                    _3344 = _3003 ? lerp(1.0f, (any(bool3(_3135.x || _3136.x, _3135.y || _3136.y, _3135.z || _3136.z)) || ((asuint(_3139) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3305 + ((_3239 * _3247) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3216, _3229), _418).xy, _3139))) + ((_3241 * _3247) * _39.SampleCmpLevelZero(_27, float3(_3211 + float2(_3219, _3229), _418).xy, _3139))), _2952 ? min(_3329, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3328.z - _3108.w) * 0.25f, min(_3331.x, _3331.y)))) : _3329) : 1.0f;
                  } else {
                    _3344 = clamp(dot(_515, _2787) + 1.0f, 0.0f, 1.0f);
                  }
                  _3345 = _3344;
                } else {
                  _3345 = 1.0f;
                }
                float _3425;
                float3 _3426;
                float _3427;
                float3 _3428;
                float3 _3429;
                float _3430;
                float _3431;
                [branch] if (_2697 == 0u) {
                  float3 _3405 = _34_m6[_2578].xyz * _2925;
                  float3 _3418 = _2291.xyz;
                  _3425 = _2925;
                  _3426 = (_34_m6[_2578].xyz * ((1.0f - _34_m6[_2590].y) + ((1.0f / max(1.0f, max(max(_3405.x, _3405.y), _3405.z) * lerp(0.75f, 0.5f, _2431))) * _34_m6[_2590].y))) * lerp(0.25f * _34_m6[_2590].x, 1.0f, clamp(_2945 + 0.5f, 0.0f, 1.0f));
                  _3427 = _2946;
                  _3428 = _3418;
                  _3429 = _3418;
                  _3430 = 1.0f;
                  _3431 = 0.0f;
                }
                else {
                  float _3398;
                  float _3399;
                  float3 _3400;
                  float3 _3401;
                  float _3402;
                  float _3403;
                  if (_2697 == 3u) {
                    _3398 = _2925 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _34_m6[_2590].x), lerp(0.89999997615814208984375f, 0.5f, _34_m6[_2590].x), _2397) * _3345);
                    _3399 = clamp(dot(_1992, -normalize(cross(_593, cross(_593, _2787)))), 0.0f, 1.0f);
                    _3400 = lerp(0.5f.xxx, _2100, _34_m6[_2590].y.xxx);
                    _3401 = 0.0f.xxx;
                    _3402 = 1.0f;
                    _3403 = 0.0f;
                  } else {
                    bool _3354 = _2697 == 1u;
                    float _3378;
                    float3 _3379;
                    float _3380;
                    float _3381;
                    if (_3354) {
                      _3378 = clamp(clamp(_2945 + _34_m6[_2590].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3345;
                      _3379 = _2105 * _34_m6[_2590].y;
                      _3380 = 1.0f;
                      _3381 = 0.0f;
                    } else {
                      bool _3358 = _2697 == 2u;
                      float _3370;
                      if (_3358) {
                        _3370 = smoothstep(_34_m6[_2590].x + 0.0500000007450580596923828125f, _34_m6[_2590].x - 0.0500000007450580596923828125f, _1993) * ((1.0f - _34_m6[_2590].z) + (step(0.5f, _1996) * _34_m6[_2590].z));
                      } else {
                        _3370 = 1.0f;
                      }
                      _3378 = _2946;
                      _3379 = 0.0f.xxx;
                      _3380 = _3370;
                      _3381 = _3358 ? _34_m6[_2590].y : 0.0f;
                    }
                    bool3 _3382 = _3354.xxx;
                    _3398 = _2925;
                    _3399 = _3378;
                    _3400 = float3(_3382.x ? _2100.x : 0.0f.xxx.x, _3382.y ? _2100.y : 0.0f.xxx.y, _3382.z ? _2100.z : 0.0f.xxx.z);
                    _3401 = _3379;
                    _3402 = _3380;
                    _3403 = _3381;
                  }
                  _3425 = _3398;
                  _3426 = _34_m6[_2578].xyz;
                  _3427 = _3399;
                  _3428 = _3400;
                  _3429 = _3401;
                  _3430 = _3402;
                  _3431 = _3403;
                }
                float3 _3459;
                [branch] if (_2697 != 3u) {
                  float _3436 = lerp(_2107, 0.00999999977648258209228515625f, _3431);
                  float _3439 = dot(_1856, normalize(_2787 + _457));
                  float _3440 = _3436 * _3436;
                  float _3444 = (((_3439 * _3440) - _3439) * _3439) + 1.0f;
                  float _3445 = _3444 * _3444;
                  _3459 = ((_2103 * clamp((((_3440 != _3445) ? (_3440 / _3445) : 1.0f) * (0.5f / ((_2328 + (_3436 * _2330)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3430) * _34_m6[_2599].z;
                }
                else {
                  _3459 = 0.0f.xxx;
                }
                float3 _3462 = _3426 * _3425;
                _3469 = _2539 + (((_3462 * lerp(_3429, _3428, _3427.xxx)) * _2347) + ((_3462 * _3459) * _3427));
              }
              else {
                _3469 = _2539;
              }
              _3470 = _3469;
              break;
            } while (false);
            _3471 = _3470;
            break;
          } while (false);
          _3472 = _3471;
        } else {
          _3472 = _2539;
        }
        _3473 = _3472;
        break;
      } while (false);
      _2565 = _3473;
    }
  }
  float3 _3513;
  [branch] if (_51_m12 > 0.5f) {
    _3513 = lerp(lerp(0.5f.xxx, lerp(dot(_2538, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2538, _51_m14.xxx), _51_m15.xxx) * _51_m13, _51_m26.xyz, _51_m26.w.xxx) + ((_51_m27.xyz * smoothstep(1.0f - _51_m16, 1.0f, 1.0f - clamp(_2395, 0.0f, 1.0f))) * _51_m17);
  }
  else {
    _3513 = _2538;
  }
  float4 _3520 = float4(_3513 * _20_m20.y, _504);
  _3520.w = (_51_m8 == 1.0f) ? _504 : 1.0f;
  float4 _3905;
  [branch] if (_20_m94.w < 0.5f) {
    float3 _3529 = -_457;
    float _3545 = _625 * _20_m46.w;
    float _3550 = max(0.00999999977648258209228515625f, _3545 + _20_m47.w);
    float3 _3564 = exp(_20_m45.xyz * ((-max(0.0f, (_458 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3550)) / _3550) * exp(_3545 + _20_m48.w))));
    float _3567 = dot(_3529, _20_m44.xyz);
    float _3573 = _20_m45.w * _20_m45.w;
    float _3577 = (1.0f + _3573) - ((2.0f * _20_m45.w) * _3567);
    float3 _3897;
    float _3898;
    if (_20_m55.z > 0.0f) {
      uint3 _3728 = (uint3(int3(_2173, _2174, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3729 = _3728.y;
      uint _3730 = _3728.z;
      uint _3733 = _3728.x + (_3729 * _3730);
      uint _3735 = _3729 + (_3730 * _3733);
      uint _3737 = _3730 + (_3733 * _3735);
      uint _3739 = _3733 + (_3735 * _3737);
      float _3761 = dot(_3529, -_18_m0[2].xyz);
      float3 _3768 = _508 - _18_m11.xyz;
      float _3770 = (_20_m55.w * ((_3761 > 5.9604644775390625e-08f) ? (1.0f / _3761) : 0.0f)) * (1.0f / _458);
      float _3771 = _3768.y;
      float _3772 = _3770 * _3771;
      float _3774 = _18_m11.y + _3772;
      float _3775 = _3771 - _3772;
      float _3777 = (1.0f - _3770) * _458;
      float _3791 = max(-127.0f, _20_m49.z * _3775);
      float _3815 = max(-127.0f, _20_m52.x * _3775);
      float _3826 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3774 - _20_m49.x)))) * ((abs(_3791) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3791)) / _3791) : (0.693147182464599609375f - (0.2402265071868896484375f * _3791)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3774 - _20_m52.z)))) * ((abs(_3815) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3815)) / _3815) : (0.693147182464599609375f - (0.2402265071868896484375f * _3815))));
      float _3848 = clamp((_458 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3851 = clamp((max(clamp(exp2(-(_3826 * _3777)), 0.0f, 1.0f), _20_m51.w) + clamp((_458 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3848, 0.0f, 1.0f);
      float4 _3891 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_25, float3((_2513 + ((((float3(uint3(_3739, _3735 + (_3737 * _3739), _422) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_438 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_438 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3897 = _3891.xyz + (((_20_m51.xyz * (1.0f - _3851)) + (((_20_m54.xyz * pow(clamp(dot(_457, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3826 * max(_3777 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3848))) * _3891.w);
      _3898 = _3891.w * _3851;
    } else {
      float3 _3604 = _508 - _18_m11.xyz;
      float _3606 = _3604.y;
      float _3620 = max(-127.0f, _20_m49.z * _3606);
      float _3644 = max(-127.0f, _20_m52.x * _3606);
      float _3655 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3620) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3620)) / _3620) : (0.693147182464599609375f - (0.2402265071868896484375f * _3620)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3644) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3644)) / _3644) : (0.693147182464599609375f - (0.2402265071868896484375f * _3644))));
      float _3677 = clamp((_458 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3680 = clamp((max(clamp(exp2(-(_3655 * _458)), 0.0f, 1.0f), _20_m51.w) + clamp((_458 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3677, 0.0f, 1.0f);
      _3897 = (_20_m51.xyz * (1.0f - _3680)) + (((_20_m54.xyz * pow(clamp(dot(_457, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3655 * max(_458 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3677));
      _3898 = _3680;
    }
    float3 _3903 = (_3520.xyz * (_3564 * _3898)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3567 * _3567)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3573) / max((12.56637096405029296875f * _3577) * sqrt(_3577), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3564)) * _3898) + _3897);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3903 = (_3903 * 0.65f) + (_3520.xyz * 0.35f);
    }
    // RenoDX code end
    _3905 = float4(_3903.x, _3903.y, _3903.z, _3520.w);
  }
  else {
    _3905 = _3520;
  }
  _15 = _3905;
  _16 = _2136;
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

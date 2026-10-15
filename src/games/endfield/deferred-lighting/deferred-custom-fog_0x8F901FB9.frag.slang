#include "./renodx_injection.hlsli"

// Ported from the native 0x8F901FB9 Vulkan dump.
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

static float _409;
static float3 _410;
static float _412;
static uint _413;

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

[[vk::binding(54, 0)]] ByteAddressBuffer _28 : register(t54, space0);
[[vk::binding(17, 0)]] StructuredBuffer<float4> _30 : register(t17, space0);
[[vk::binding(13, 0)]] cbuffer _31_32 : register(b13, space0) {
  float4 _32_m0 : packoffset(c0);
  float4 _32_m1 : packoffset(c1);
  float4 _32_m2 : packoffset(c2);
  float4 _32_m3 : packoffset(c3);
  float4 _32_m4 : packoffset(c4);
  uint4 _32_m5 : packoffset(c5);
  float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(50, 0)]] cbuffer _33_34 : register(b50, space0) {
  int _34_m0 : packoffset(c0);
  int _34_m1 : packoffset(c0.y);
  int _34_m2 : packoffset(c0.z);
  int _34_m3 : packoffset(c0.w);
  int _34_m4 : packoffset(c1);
  int _34_m5 : packoffset(c1.y);
  int _34_m6 : packoffset(c1.z);
  int _34_m7 : packoffset(c1.w);
  float _34_m8 : packoffset(c2);
  float _34_m9 : packoffset(c2.y);
  float _34_m10 : packoffset(c2.z);
  float _34_m11 : packoffset(c2.w);
  float _34_m12 : packoffset(c3);
  float _34_m13 : packoffset(c3.y);
  float _34_m14 : packoffset(c3.z);
  float _34_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _35_36 : register(b14, space0) {
  column_major float4x4 _36_m0[5] : packoffset(c0);
  float4 _36_m1[4] : packoffset(c20);
  float4 _36_m2[4] : packoffset(c24);
  float4 _36_m3[4] : packoffset(c28);
  float4 _36_m4 : packoffset(c32);
  float4 _36_m5 : packoffset(c33);
  float4 _36_m6 : packoffset(c34);
  float4 _36_m7 : packoffset(c35);
  float4 _36_m8 : packoffset(c36);
  float4 _36_m9[27] : packoffset(c37);
  float4 _36_m10 : packoffset(c64);
  float4 _36_m11 : packoffset(c65);
  float4 _36_m12[62] : packoffset(c66);
  column_major float4x4 _36_m13[15] : packoffset(c128);
  float4 _36_m14[15] : packoffset(c188);
  float4 _36_m15[15] : packoffset(c203);
  float4 _36_m16[15] : packoffset(c218);
  float4 _36_m17 : packoffset(c233);
  float4 _36_m18 : packoffset(c234);
  float4 _36_m19[21] : packoffset(c235);
  column_major float4x4 _36_m20 : packoffset(c256);
  column_major float4x4 _36_m21 : packoffset(c260);
  float4 _36_m22 : packoffset(c264);
  float4 _36_m23 : packoffset(c265);
  float4 _36_m24 : packoffset(c266);
  float4 _36_m25[128] : packoffset(c267);
};

[[vk::binding(53, 0)]] ByteAddressBuffer _39 : register(t53, space0);
[[vk::binding(0, 1)]] cbuffer _48_49 : register(b0, space1) {
  float _49_m0 : packoffset(c0);
  float _49_m1 : packoffset(c0.y);
  float _49_m2 : packoffset(c0.z);
  float _49_m3 : packoffset(c0.w);
  float _49_m4 : packoffset(c1);
  float _49_m5 : packoffset(c1.y);
  float _49_m6 : packoffset(c1.z);
  float _49_m7 : packoffset(c1.w);
  float _49_m8 : packoffset(c2);
  float _49_m9 : packoffset(c2.y);
  float _49_m10 : packoffset(c2.z);
  float _49_m11 : packoffset(c2.w);
  float _49_m12 : packoffset(c3);
  float _49_m13 : packoffset(c3.y);
  float _49_m14 : packoffset(c3.z);
  float _49_m15 : packoffset(c3.w);
  float _49_m16 : packoffset(c4);
  float _49_m17 : packoffset(c4.y);
  float _49_m18 : packoffset(c4.z);
  float _49_m19 : packoffset(c4.w);
  float _49_m20 : packoffset(c5);
  float _49_m21 : packoffset(c5.y);
  float _49_m22 : packoffset(c5.z);
  float _49_m23 : packoffset(c5.w);
  float4 _49_m24 : packoffset(c6);
  float4 _49_m25 : packoffset(c7);
  float4 _49_m26 : packoffset(c8);
  float4 _49_m27 : packoffset(c9);
  float4 _49_m28 : packoffset(c10);
  float4 _49_m29 : packoffset(c11);
  float _49_m30 : packoffset(c12);
  float _49_m31 : packoffset(c12.y);
  float _49_m32 : packoffset(c12.z);
  float _49_m33 : packoffset(c12.w);
  float4 _49_m34 : packoffset(c13);
  float4 _49_m35 : packoffset(c14);
  float4 _49_m36 : packoffset(c15);
  float4 _49_m37 : packoffset(c16);
  float4 _49_m38 : packoffset(c17);
  float4 _49_m39 : packoffset(c18);
  float _49_m40 : packoffset(c19);
  float _49_m41 : packoffset(c19.y);
  float _49_m42 : packoffset(c19.z);
  float _49_m43 : packoffset(c19.w);
  float _49_m44 : packoffset(c20);
  float _49_m45 : packoffset(c20.y);
  float _49_m46 : packoffset(c20.z);
  float _49_m47 : packoffset(c20.w);
};

[[vk::binding(52, 0)]] cbuffer _58_59 : register(b52, space0) {
  float4 _59_m0[32] : packoffset(c0);
  column_major float4x4 _59_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _25 : register(s6, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _37 : register(t27, space0);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _42 : register(t37, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _43 : register(t34, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _44 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _45 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _46 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _47 : register(t32, space0);
[[vk::binding(46, 0)]] Texture2D<float4> _50 : register(t46, space0);
[[vk::binding(43, 0)]] Texture2D<float4> _51 : register(t43, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _52 : register(t41, space0);
[[vk::binding(2, 1)]] Texture2D<float4> _53 : register(t2, space1);
[[vk::binding(1, 1)]] Texture2D<float4> _54 : register(t1, space1);
[[vk::binding(47, 0)]] TextureCube<float4> _56 : register(t47, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _57 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _62 : register(t38, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float3 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static uint _11;
static float4 _13;
static float4 _14;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
  [[vk::location(1)]] float3 _4 : TEXCOORD1;
  [[vk::location(2)]] float3 _5 : TEXCOORD2;
  [[vk::location(4)]] float3 _6 : TEXCOORD4;
  [[vk::location(5)]] float3 _7 : TEXCOORD5;
  [[vk::location(6)]] float3 _8 : TEXCOORD6;
  [[vk::location(7)]] float3 _9 : TEXCOORD7;
  [[vk::location(8)]] nointerpolation uint _11 : TEXCOORD8;
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

uint4 _30_Load4(uint byte_offset) { return asuint(_30[byte_offset >> 4u]); }
void frag_main() {
  float _427 = 1.0f / gl_FragCoord.w;
  float3 _442 = lerp(-_4, float3(_16_m0[2u].x, _16_m0[2u].y, _16_m0[2u].z), _18_m4.w.xxx);
  float _443 = dot(_442, _442);
  float _445 = rsqrt(max(_443, 9.9999999392252902907785028219223e-09f));
  float3 _446 = _442 * _445;
  float _447 = _443 * _445;
  uint _450 = asuint(_21_m0[_11]._m2.x);
  bool _455 = (asuint(_21_m0[_11]._m1.w) & 16u) != 0u;
  float4 _468;
  float4 _469;
  if (_455) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0x8F901FB9:
    _468 = asfloat(_30_Load4((_450 + 2u) * 16 + 0));
    _469 = asfloat(_30_Load4(_450 * 16 + 0));
    */
    _468 = asfloat(_30_Load4((_450 + 2u) * 16 + 0));
    _469 = asfloat(_30_Load4(_450 * 16 + 0));
    // RenoDX code end
  } else {
    _468 = _21_m0[_11]._m0[2];
    _469 = _21_m0[_11]._m0[0];
  }
  float4 _475 = _53.SampleBias(_24, _3, _18_m16);
  float3 _480 = _475.xyz * _49_m24.xyz;
  float _487 = 1.0f - _49_m0;
  float _491 = _475.w * _49_m24.w;
  float3 _495 = _4 + _16_m11.xyz;
  float3 _499 = _495 - float3(_469.w, _412, _468.w);
  _499.y = 6.103515625e-05f;
  float3 _502 = normalize(_499);
  float3 _507 = _480 * _49_m18;
  float3 _511 = lerp(dot(_507, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _507, _49_m19.xxx);
  float4 _515 = _54.SampleBias(_24, _3, _18_m16);
  float3 _529 = normalize(_5) * (gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5)));
  uint2 _531 = uint2(gl_FragCoord.xy);
  float3 _541 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _550 = asuint((_18_m92.x > 0.5f) ? _18_m92.y : _21_m0[_11]._m7.x);
  float4 _563 = float4(float(_550 & 255u), float((_550 >> 8u) & 255u), float((_550 >> 16u) & 255u), float((_550 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _564 = _563.x;
  float _567 = _563.w;
  float _573 = _495.y;
  float _576 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_21_m0[_11]._m7.y, _18_m92.w, _18_m92.x) - _573) * _563.y;
  float _577 = max(_563.z, _576);
  float _586 = lerp(_18_m22.x, 1.0f, _18_m94.w) * _18_m20.x;
  float4 _1081;
  float3 _1082;
  float3 _1083;
  float _1084;
  if (_18_m83.y < 0.5f) {
    float3 _601 = _495 - (_18_m108.xyz + (_541 * (-_18_m110.w)));
    float _616 = max(min(max((max(abs(_601.x), abs(_601.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_601.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _918;
    float4 _919;
    float4 _920;
    float _921;
    float _922;
    if ((_18_m108.w != 0.0f) && (_616 < 1.0f)) {
      float3 _629 = _495 - (_18_m108.xyz + (_541 * (-_18_m110.y)));
      float _643 = max(clamp((max(abs(_629.x), abs(_629.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_629.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _719;
      float4 _720;
      float4 _721;
      float4 _722;
      if (_643 < 1.0f) {
        float3 _652 = ((_495 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
        float3 _654 = _652 - floor(_652);
        float4 _658 = _42.SampleLevel(_24, _654, 0.0f);
        float _659 = 1.0f - _643;
        float _663 = _18_m109.y * 0.5f;
        float _668 = _654.x;
        float _669 = clamp(_654.y, _663, 1.0f - _663) * 0.3333333432674407958984375f;
        float _670 = _654.z;
        float4 _673 = _43.SampleLevel(_23, float3(_668, _669, _670), 0.0f);
        float _689 = _658.x;
        float _699 = _658.y;
        float _709 = _658.z;
        _719 = _616 + (_673.w * _659);
        _720 = float4(((_43.SampleLevel(_23, float3(_668, _669 + 0.666666686534881591796875f, _670), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _709, _709) * _659;
        _721 = float4(((_43.SampleLevel(_23, float3(_668, _669 + 0.3333333432674407958984375f, _670), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _699, _699) * _659;
        _722 = float4(((_673.xyz * 4.0f) - 2.0f.xxx) * _689, _689) * _659;
      } else {
        _719 = _616;
        _720 = 0.0f.xxxx;
        _721 = 0.0f.xxxx;
        _722 = 0.0f.xxxx;
      }
      float3 _728 = _495 - (_18_m108.xyz + (_541 * (-_18_m110.z)));
      float _742 = max(clamp((max(abs(_728.x), abs(_728.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_728.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _822;
      float4 _823;
      float4 _824;
      float4 _825;
      if (_742 < 1.0f) {
        float3 _751 = ((_495 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
        float3 _753 = _751 - floor(_751);
        float4 _757 = _44.SampleLevel(_24, _753, 0.0f);
        float _759 = _643 * (1.0f - _742);
        float _763 = _18_m109.y * 0.5f;
        float _768 = _753.x;
        float _769 = clamp(_753.y, _763, 1.0f - _763) * 0.3333333432674407958984375f;
        float _770 = _753.z;
        float4 _773 = _45.SampleLevel(_23, float3(_768, _769, _770), 0.0f);
        float _789 = _757.x;
        float _800 = _757.y;
        float _811 = _757.z;
        _822 = _719 + (_773.w * _759);
        _823 = _720 + (float4(((_45.SampleLevel(_23, float3(_768, _769 + 0.666666686534881591796875f, _770), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _811, _811) * _759);
        _824 = _721 + (float4(((_45.SampleLevel(_23, float3(_768, _769 + 0.3333333432674407958984375f, _770), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _800, _800) * _759);
        _825 = _722 + (float4(((_773.xyz * 4.0f) - 2.0f.xxx) * _789, _789) * _759);
      } else {
        _822 = _719;
        _823 = _720;
        _824 = _721;
        _825 = _722;
      }
      float4 _908;
      float4 _909;
      float4 _910;
      float _911;
      if (_742 > 0.0f) {
        float3 _834 = ((_495 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
        float3 _837 = _18_m109.xyz * 0.5f;
        float3 _839 = clamp(_834 - floor(_834), _837, 1.0f.xxx - _837);
        float4 _843 = _46.SampleLevel(_24, _839, 0.0f);
        float _845 = _742 * (1.0f - _616);
        float _849 = _18_m109.y * 0.5f;
        float _854 = _839.x;
        float _855 = clamp(_839.y, _849, 1.0f - _849) * 0.3333333432674407958984375f;
        float _856 = _839.z;
        float4 _859 = _47.SampleLevel(_23, float3(_854, _855, _856), 0.0f);
        float _875 = _843.x;
        float _886 = _843.y;
        float _897 = _843.z;
        _908 = _823 + (float4(((_47.SampleLevel(_23, float3(_854, _855 + 0.666666686534881591796875f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _897, _897) * _845);
        _909 = _824 + (float4(((_47.SampleLevel(_23, float3(_854, _855 + 0.3333333432674407958984375f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _886, _886) * _845);
        _910 = _825 + (float4(((_859.xyz * 4.0f) - 2.0f.xxx) * _875, _875) * _845);
        _911 = _822 + (_859.w * _845);
      } else {
        _908 = _823;
        _909 = _824;
        _910 = _825;
        _911 = _822;
      }
      float _914 = clamp((_911 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _918 = _908;
      _919 = _909;
      _920 = _910;
      _921 = _914 - _616;
      _922 = (_914 + _616) * 0.5f;
    } else {
      _918 = 0.0f.xxxx;
      _919 = 0.0f.xxxx;
      _920 = 0.0f.xxxx;
      _921 = 0.0f;
      _922 = 1.0f;
    }
    float4 _942 = _920 + float4(_18_m111.x * _922, (_18_m111.y * _922) + ((_18_m111.w * _921) * 0.5f), _18_m111.z * _922, (_18_m111.w * _922) + ((_18_m111.y * _921) * 0.375f));
    float4 _962 = _919 + float4(_18_m112.x * _922, (_18_m112.y * _922) + ((_18_m112.w * _921) * 0.5f), _18_m112.z * _922, (_18_m112.w * _922) + ((_18_m112.y * _921) * 0.375f));
    float4 _982 = _918 + float4(_18_m113.x * _922, (_18_m113.y * _922) + ((_18_m113.w * _921) * 0.5f), _18_m113.z * _922, (_18_m113.w * _922) + ((_18_m113.y * _921) * 0.375f));
    float4 _986 = float4(_529, 1.0f);
    float3 _992 = max(float3(dot(_942, _986), dot(_962, _986), dot(_982, _986)), 0.0f.xxx) * _586;
    float3 _1000 = ((_942.xyz * 0.2125999927520751953125f) + (_962.xyz * 0.715200006961822509765625f)) + (_982.xyz * 0.072200000286102294921875f);
    float3 _1004 = _1000 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1000, _1000)));
    float _1006 = abs(_1004.y);
    float3 _1007 = _1004;
    _1007.y = _1006;
    float4 _1008 = float4(_1007.x, _1007.y, _1007.z, 0.0f.xxxx.w);
    _1008.w = 1.0f;
    float4 _1012 = float4(_1004.x, _1006, _1004.z, 1.0f);
    float3 _1017 = max(float3(dot(_942, _1012), dot(_962, _1012), dot(_982, _1012)), 0.0f.xxx);
    float _1025 = _992.z;
    float _1026 = _992.y;
    float4 _1031 = lerp(float4(_1025, _1026, -1.0f, 0.666666686534881591796875f), float4(_1026, _1025, 0.0f, -0.3333333432674407958984375f), step(_1025, _1026).xxxx);
    float _1032 = _992.x;
    float _1033 = _1031.x;
    float4 _1041 = lerp(float4(_1033, _1031.yw, _1032), float4(_1032, _1031.yz, _1033), step(_1033, _1032).xxxx);
    float _1042 = _1041.x;
    float _1043 = _1041.w;
    float _1044 = _1041.y;
    float _1046 = _1042 - min(_1043, _1044);
    float _1056 = frac(abs(_1041.z + ((_1043 - _1044) / ((6.0f * _1046) + 9.9999997473787516355514526367188e-05f))));
    float _1063 = min(_1046 / (_1042 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1056 - 0.5f))) * clamp(_1042, 0.0f, 1.0f));
    float _1065 = 2.0f / (2.0f - _1063);
    _1081 = _1008;
    _1082 = _992;
    _1083 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1056, _1063, _1065).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1063.xxx) * _1065;
    _1084 = max(max(max(_1017.x, _1017.y), _1017.z), 0.0f) * _586;
  } else {
    _1081 = 0.0f.xxxx;
    _1082 = 1.0f.xxx;
    _1083 = _18_m84.xyz;
    _1084 = _586;
  }
  float3 _1804;
  float _1805;
  float _1806;
  float _1807;
  float3 _1808;
  float3 _1809;
  [branch] if ((clamp(_564 + _577, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f) {
    float _1112 = 1.0f - _49_m2;
    float _1115 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_480 * _1112, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
    bool3 _1118 = _455.xxx;
    float3 _1120 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1124 = float3(_1118.x ? _1120.x : _9.x, _1118.y ? _1120.y : _9.y, _1118.z ? _1120.z : _9.z) * _18_m92.z;
    float3 _1126 = float3(_1118.x ? _8.xzy.x : _8.x, _1118.y ? _8.xzy.y : _8.y, _1118.z ? _8.xzy.z : _8.z);
    float3 _1128 = abs(_1126) - 0.20000000298023223876953125f.xxx;
    float3 _1131 = max((_1128 * _1128) * _1128, 6.103515625e-05f.xxx);
    float3 _1134 = _1131 / dot(_1131, 1.0f.xxx).xxx;
    float2 _1142 = _1124.xy;
    float2 _1147 = _1124.zy;
    float4 _1157 = ((_50.SampleBias(_24, _1124.xz, _18_m16) * _1134.y) + (_50.SampleBias(_24, _1142, _18_m16) * _1134.z)) + (_50.SampleBias(_24, _1147, _18_m16) * _1134.x);
    float _1158 = _1157.w;
    float _1160 = 1.10000002384185791015625f - _1158;
    float _1169 = max(smoothstep(0.800000011920928955078125f - _1158, _1160, clamp((_564 * _1112) + (_529.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1158, _1160, clamp(_576 * _1112, 0.0f, 1.0f)));
    float _1176 = smoothstep(0.5f, 0.75f, _49_m2);
    float _1178 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _487) * _1115;
    float _1181 = clamp(_1178 + _1176, 0.0f, 1.0f) * max(_564, _577);
    bool _1185 = !((step(_564, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _577)) != 0.0f);
    bool2 _1186 = _1185.xx;
    float2 _1188 = (1.0f - _577).xx;
    float2 _1189 = float2(_1186.x ? float2(3.0f, 4.345600128173828125f).x : _1188.x, _1186.y ? float2(3.0f, 4.345600128173828125f).y : _1188.y);
    float _1190 = 1.0f - _1181;
    float _1193 = _1185 ? _18_m10.x : 1.0f;
    float _1195 = _1193 * _1189.x;
    float _1197 = _1193 * _1189.y;
    float3 _1198 = _1124 * 20.0f;
    float3 _1199 = _1124 * 34.345600128173828125f;
    float3 _1201 = pow(max(_1128, 0.0f.xxx), 10.0f.xxx);
    float3 _1205 = _1201 / max(dot(_1201, 1.0f.xxx), 6.103515625e-05f).xxx;
    float _1207 = _1205.y;
    float2 _1208 = _1198.xz * 1.0f;
    float2 _1209 = floor(_1208);
    float2 _1212 = frac(_1209 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1216 = _1212 + dot(_1212, _1212 + 34.345001220703125f.xx).xx;
    float _1217 = _1216.x;
    float _1218 = _1216.y;
    float2 _1222 = frac(float2(_1217 * _1218, _1217 + _1218));
    float2 _1225 = frac((_1209 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1229 = _1225 + dot(_1225, _1225 + 34.345001220703125f.xx).xx;
    float _1230 = _1229.x;
    float _1231 = _1229.y;
    float2 _1235 = frac(float2(_1230 * _1231, _1230 + _1231));
    float _1241 = _1222.x;
    float _1243 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1241);
    float2 _1244 = ((_1208 - _1209) + ((((_1235 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1247 = _1244.y;
    float2 _1251 = float2(_1244.x * 1.25f, _1247 * ((_1247 < 0.0f) ? 1.25f : 0.75f));
    float _1254 = _1195 + _1241;
    float _1258 = _1185 ? frac(_1254) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1254, 0.0f, 1.0f));
    float _1270 = _1222.y;
    float _1273 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1258) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1258)) * step(0.001000000047497451305389404296875f, smoothstep(_1243, 0.0f, length(_1251)))) * step(_1190, _1270 - 0.100000001490116119384765625f);
    float _1276 = _1273 * _1207;
    float _1284 = _1205.z;
    float2 _1285 = _1198.xy * 1.0f;
    float2 _1286 = floor(_1285);
    float2 _1289 = frac(_1286 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1293 = _1289 + dot(_1289, _1289 + 34.345001220703125f.xx).xx;
    float _1294 = _1293.x;
    float _1295 = _1293.y;
    float2 _1299 = frac(float2(_1294 * _1295, _1294 + _1295));
    float2 _1302 = frac((_1286 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1306 = _1302 + dot(_1302, _1302 + 34.345001220703125f.xx).xx;
    float _1307 = _1306.x;
    float _1308 = _1306.y;
    float2 _1312 = frac(float2(_1307 * _1308, _1307 + _1308));
    float _1318 = _1299.x;
    float _1320 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1318);
    float2 _1321 = ((_1285 - _1286) + ((((_1312 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1324 = _1321.y;
    float2 _1328 = float2(_1321.x * 1.25f, _1324 * ((_1324 < 0.0f) ? 1.25f : 0.75f));
    float _1331 = _1195 + _1318;
    float _1335 = _1185 ? frac(_1331) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1331, 0.0f, 1.0f));
    float _1347 = _1299.y;
    float _1350 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1335) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1335)) * step(0.001000000047497451305389404296875f, smoothstep(_1320, 0.0f, length(_1328)))) * step(_1190, _1347 - 0.100000001490116119384765625f);
    float _1353 = _1350 * _1284;
    float _1361 = _1205.x;
    float2 _1362 = _1198.zy * 1.0f;
    float2 _1363 = floor(_1362);
    float2 _1366 = frac(_1363 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1370 = _1366 + dot(_1366, _1366 + 34.345001220703125f.xx).xx;
    float _1371 = _1370.x;
    float _1372 = _1370.y;
    float2 _1376 = frac(float2(_1371 * _1372, _1371 + _1372));
    float2 _1379 = frac((_1363 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1383 = _1379 + dot(_1379, _1379 + 34.345001220703125f.xx).xx;
    float _1384 = _1383.x;
    float _1385 = _1383.y;
    float2 _1389 = frac(float2(_1384 * _1385, _1384 + _1385));
    float _1395 = _1376.x;
    float _1397 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1395);
    float2 _1398 = ((_1362 - _1363) + ((((_1389 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1401 = _1398.y;
    float2 _1405 = float2(_1398.x * 1.25f, _1401 * ((_1401 < 0.0f) ? 1.25f : 0.75f));
    float _1408 = _1195 + _1395;
    float _1412 = _1185 ? frac(_1408) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1408, 0.0f, 1.0f));
    float _1424 = _1376.y;
    float _1427 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1412) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1412)) * step(0.001000000047497451305389404296875f, smoothstep(_1397, 0.0f, length(_1405)))) * step(_1190, _1424 - 0.100000001490116119384765625f);
    float _1430 = _1427 * _1361;
    float2 _1443 = (float4(((clamp(_1251 / _1243.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1235.x)) * _1273) * _1207, _1276, _1270).xy + float4(((clamp(_1328 / _1320.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1312.x)) * _1350) * _1284, _1353, _1347).xy) + float4(((clamp(_1405 / _1397.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1389.x)) * _1427) * _1361, _1430, _1424).xy;
    float _1445 = max(_1430, max(_1276, _1353));
    float4 _1448 = float4(_1443, _1445, 0.0f);
    float2 _1450 = _1199.xz * 1.0f;
    float2 _1451 = floor(_1450);
    float2 _1454 = frac(_1451 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1458 = _1454 + dot(_1454, _1454 + 34.345001220703125f.xx).xx;
    float _1459 = _1458.x;
    float _1460 = _1458.y;
    float2 _1464 = frac(float2(_1459 * _1460, _1459 + _1460));
    float2 _1467 = frac((_1451 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1471 = _1467 + dot(_1467, _1467 + 34.345001220703125f.xx).xx;
    float _1472 = _1471.x;
    float _1473 = _1471.y;
    float2 _1477 = frac(float2(_1472 * _1473, _1472 + _1473));
    float _1483 = _1464.x;
    float _1485 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1483);
    float2 _1486 = ((_1450 - _1451) + ((((_1477 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1489 = _1486.y;
    float2 _1493 = float2(_1486.x * 1.25f, _1489 * ((_1489 < 0.0f) ? 1.25f : 0.75f));
    float _1496 = _1197 + _1483;
    float _1500 = _1185 ? frac(_1496) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1496, 0.0f, 1.0f));
    float _1512 = _1464.y;
    float _1515 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1500) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1500)) * step(0.001000000047497451305389404296875f, smoothstep(_1485, 0.0f, length(_1493)))) * step(_1190, _1512 - 0.100000001490116119384765625f);
    float _1518 = _1515 * _1207;
    float2 _1523 = _1199.xy * 1.0f;
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
    float _1569 = _1197 + _1556;
    float _1573 = _1185 ? frac(_1569) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1569, 0.0f, 1.0f));
    float _1585 = _1537.y;
    float _1588 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1573) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1573)) * step(0.001000000047497451305389404296875f, smoothstep(_1558, 0.0f, length(_1566)))) * step(_1190, _1585 - 0.100000001490116119384765625f);
    float _1591 = _1588 * _1284;
    float2 _1596 = _1199.zy * 1.0f;
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
    float _1642 = _1197 + _1629;
    float _1646 = _1185 ? frac(_1642) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1642, 0.0f, 1.0f));
    float _1658 = _1610.y;
    float _1661 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1646) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1646)) * step(0.001000000047497451305389404296875f, smoothstep(_1631, 0.0f, length(_1639)))) * step(_1190, _1658 - 0.100000001490116119384765625f);
    float _1664 = _1661 * _1361;
    float2 _1672 = (float4(((clamp(_1493 / _1485.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1477.x)) * _1515) * _1207, _1518, _1512).xy + float4(((clamp(_1566 / _1558.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1550.x)) * _1588) * _1284, _1591, _1585).xy) + float4(((clamp(_1639 / _1631.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1623.x)) * _1661) * _1361, _1664, _1658).xy;
    float4 _1677 = float4(_1672, max(_1664, max(_1518, _1591)), 0.0f);
    float _1679 = step(max(float2(_1243 * _1273, _412) * _1207, max(float2(_1320 * _1350, _412) * _1284, float2(_1397 * _1427, _412) * _1361)).x, 0.00999999977648258209228515625f);
    float2 _1683 = _1448.xy + (_1677.xy * _1679);
    float3 _1692 = float3((_1157.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1683.x, _1683.y, 0.0f.xxx.z);
    float2 _1696 = float2(0.0f, (_18_m10.x * _18_m92.z) * 0.75f);
    float3 _1699 = float3(_1126.x, 0.0f, _1126.z);
    float3 _1705 = abs(_1699 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1699, _1699)))) - 0.20000000298023223876953125f.xxx;
    float3 _1708 = max((_1705 * _1705) * _1705, 6.103515625e-05f.xxx);
    float3 _1711 = _1708 / dot(_1708, 1.0f.xxx).xxx;
    float _1730 = _1711.z;
    float _1732 = _1711.x;
    float4 _1734 = (_51.SampleBias(_24, _1142, _18_m16) * _1730) + (_51.SampleBias(_24, _1147, _18_m16) * _1732);
    float2 _1746 = _1692.xy + ((((_1734.xy * 2.0f) - 1.0f.xx) * ((_51.SampleBias(_24, _1142 + _1696, _18_m16).w * _1730) + (_51.SampleBias(_24, _1147 + _1696, _18_m16).w * _1732))) * _1181);
    float3 _1747 = float3(_1746.x, _1746.y, _1692.z);
    float _1748 = _1734.z;
    float _1753 = max(max(max(_1448.zw * step(0.00999999977648258209228515625f, _1445), _1677.zw * _1679).x, step(1.0099999904632568359375f - _1181, _1157.z)), smoothstep(1.0f - _1748, 1.10000002384185791015625f - _1748, _1181) * _1181);
    float2 _1754 = _1746.xy;
    _1747.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1754, _1754), 0.0f, 1.0f)));
    float3 _1761 = normalize(_1747);
    float3 _1762 = cross(_529, float3(0.0f, 1.0f, 0.0f));
    bool3 _1765 = (dot(_1762, _1762) > 6.103515625e-05f).xxx;
    float3 _1766 = normalize(_1762);
    float3 _1767 = float3(_1765.x ? _1766.x : float3(1.0f, 0.0f, 0.0f).x, _1765.y ? _1766.y : float3(1.0f, 0.0f, 0.0f).y, _1765.z ? _1766.z : float3(1.0f, 0.0f, 0.0f).z);
    float _1778 = min(_487, 0.0500000007450580596923828125f);
    float _1779 = lerp(_487, _1778, _1753);
    float _1796 = lerp(1.0f, 0.5f, (_1169 * (1.0f - _1115)) * (1.0f - _1178));
    _1804 = normalize(lerp(_529, normalize(((_1767 * _1761.x) + (cross(_1767, _529) * _1761.y)) + (_529 * _1761.z)), _1753.xxx));
    _1805 = _1753;
    _1806 = _1778;
    _1807 = max(_1779 - ((0.20000000298023223876953125f * _1115) * _1169), min(0.20000000298023223876953125f, _1779));
    _1808 = _511 * _1796;
    _1809 = lerp(_480, _480 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_480, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1753 * _1176).xxx) * _1796;
  }
  else {
    _1804 = _529;
    _1805 = 0.0f;
    _1806 = 0.00999999977648258209228515625f;
    _1807 = _487;
    _1808 = _511;
    _1809 = _480;
  }
  float3 _1937;
  float _1938;
  float3 _1939;
  float3 _1940;
  float _1941;
  [branch] if ((_567 - _49_m20) > 0.00999999977648258209228515625f) {
    bool3 _1814 = _455.xxx;
    float3 _1816 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1817 = float3(_1814.x ? _1816.x : _9.x, _1814.y ? _1816.y : _9.y, _1814.z ? _1816.z : _9.z);
    float3 _1820 = _1817 * _18_m92.z;
    float3 _1822 = float3(_1814.x ? _8.xzy.x : _8.x, _1814.y ? _8.xzy.y : _8.y, _1814.z ? _8.xzy.z : _8.z);
    float3 _1824 = abs(_1822) - 0.20000000298023223876953125f.xxx;
    float3 _1827 = max((_1824 * _1824) * _1824, 6.103515625e-05f.xxx);
    float3 _1830 = _1827 / dot(_1827, 1.0f.xxx).xxx;
    float4 _1853 = ((_52.SampleBias(_24, _1820.xz, _18_m16) * _1830.y) + (_52.SampleBias(_24, _1820.xy, _18_m16) * _1830.z)) + (_52.SampleBias(_24, _1820.zy, _18_m16) * _1830.x);
    float _1854 = _1822.y;
    float _1861 = clamp(_567 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1817.y) * clamp(_567 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1867 = _1861 * (2.0f - _1861);
    float _1872 = smoothstep(2.0f - _1867, 2.349999904632568359375f - _1867, ((_1854 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1853.z) * float(gl_FrontFacing);
    float _1884 = lerp(1.0f, 0.5f, ((_1861 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1809 * (1.0f - _49_m2), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1853.w) * ((_1854 * 0.25f) + 0.75f));
    float3 _1886 = _1872.xxx;
    float2 _1892 = (_1853.xy * 2.0f) - 1.0f.xx;
    float3 _1893 = float3(_1892.x, _1892.y, _410.z);
    float2 _1894 = _1892.xy;
    _1893.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1894, _1894), 0.0f, 1.0f)));
    float2 _1902 = _1893.xy * 2.0f;
    float3 _1904 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1902.x, _1902.y, _1893.z), _1886);
    float3 _1908 = _1904 * rsqrt(max(6.103515625e-05f, dot(_1904, _1904)));
    float _1909 = _529.y;
    float _1912 = step(0.00999999977648258209228515625f, 1.0f - (_1909 * _1909));
    float _1916 = lerp(_529.z, _1909, _1912);
    float3 _1923 = (float3(0.0f, _1912, 1.0f - _1912) - (_529 * _1916)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1916 * _1916)));
    _1937 = ((cross(_1923, _529) * _1908.x) + (_1923 * _1908.y)) + (_529 * _1908.z);
    _1938 = lerp(_1807, 0.89999997615814208984375f, clamp(_1872 * 4.0f, 0.0f, 1.0f));
    _1939 = lerp(_1808 * _1884, 0.3079999983310699462890625f.xxx, _1886);
    _1940 = lerp(_1809 * _1884, 0.87999999523162841796875f.xxx, _1886);
    _1941 = lerp(_49_m2, 0.0f, _1872);
  }
  else {
    _1937 = _529;
    _1938 = _1807;
    _1939 = _1808;
    _1940 = _1809;
    _1941 = _49_m2;
  }
  float _1943 = 0.959999978542327880859375f - (_1941 * 0.959999978542327880859375f);
  float3 _1944 = _1940 * _1943;
  float3 _1947 = lerp(0.039999999105930328369140625f.xxx * _49_m1, _1940, _1941.xxx);
  float3 _1948 = _1939 * _1943;
  float _1950 = max(_1938 * _1938, 0.0078125f);
  bool _1957 = (1.0f - max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z)) < 0.9900000095367431640625f;
  float2 _1970 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
  _1970.y = -_1970.y;
  float2 _1986 = lerp(((sqrt(sqrt(abs(_1970 * 0.5f))) * float2(int2(sign(_1970)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1957).xx);
  float4 _1988 = float4(_1986.x, _1986.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _1988.z = 1.0f;
  _1988.w = _1957 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2001 = lerp(-_32_m0.xyz, _18_m93.xyz, _18_m83.w.xxx);
  float3 _2005 = normalize(float3(_2001.x, 6.103515625e-05f, _2001.z));
  float3 _2015 = lerp(_32_m3.xyz, _18_m87.xyz, _18_m94.y.xxx);
  float3 _2021 = _2015 * lerp(_32_m3.w, _18_m87.w, _18_m94.w);
  int _2025 = int(_531.x);
  int _2026 = int(_531.y);
  float4 _2030 = _40.Load(int3(int3(_2025, _2026, 0).xy, 0));
  float _2035 = _2030.y;
  float _2038 = lerp(lerp(1.0f, _2030.x, _36_m6.x), 1.0f, _18_m83.z);
  float _2039 = dot(_1937, _2001);
  float3 _2046 = _1948 * _18_m82.z;
  float3 _2047 = _2046 * 0.64999997615814208984375f;
  float _2051 = dot(_1944, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2064 = clamp(-dot(_2005.xz, normalize(_541.xz)), 0.0f, 1.0f);
  float _2068 = 1.0f - _18_m94.x;
  float _2076 = smoothstep(0.25f, 1.0f, clamp(lerp(_2039, ((-_2039) * ((_2039 * 0.5f) - 1.0f)) + 0.5f, (_2064 * smoothstep(0.25f, 0.75f, 1.0f - abs(_541.y))) * _2068) + (_18_m93.w * _18_m94.x), -1.0f, 1.0f));
  float _2083 = max(max(_2076, _2076), _2076) - min(min(_2076, _2076), _2076);
  float _2085 = smoothstep(0.25f, 1.0f, dot(_1937, _541));
  float _2092 = min(min(_2035, 1.0f), _2076);
  float _2093 = _2085 * _2035;
  float3 _2097 = ((clamp(dot(_529, _18_m88.xyz) + _18_m89.x, 0.0f, 1.0f) * _18_m89.y) + _18_m89.z).xxx * lerp(_1083, 1.0f.xxx, (_18_m83.y * _2092).xxx);
  float3 _2099 = _2092.xxx;
  float3 _2122 = _2038.xxx;
  float3 _2123 = lerp((_2097 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1084), 1.5f), clamp(_1084, 1.25f, 1.75f), _18_m83.x)) * _18_m82.w, (lerp(dot(_2021, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2021, _2099) + ((_2097 * clamp(_1084, 0.0f, 1.5f)) * ((1.0f - _18_m94.y).xxx + (_2015 * _18_m94.y)))) * _18_m82.y, _2122);
  float3 _2124 = lerp(lerp(lerp(dot(_2047, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2047, 1.2000000476837158203125f.xxx), _2046, clamp((_2035 * _2085) + _2076, 0.0f, 1.0f).xxx), _1944, _2099);
  float3 _2130 = _2124 * ((1.0f - _2083).xxx + (_2076.xxxx.xyz * _2083));
  float3 _2139 = lerp(lerp(_2046, lerp(_2051.xxx, _1944, 1.2000000476837158203125f.xxx), _2093.xxx), _2130 * clamp(dot(_2124, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2130, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2122);
  float4 _2143 = float4(_2139, _2038);
  float _2145 = lerp(_2093, _2092, _2038);
  float _2148 = lerp(_18_m82.z, 1.0f, _2145);
  float3 _2156 = float3(_541.x, lerp(0.5f, _2001.y, _2038), _541.z);
  float _2169 = clamp(dot(_1804, _446), 0.0f, 1.0f);
  float _2170 = dot(_1804, normalize(((_2001 * _2038) + ((_2156 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2156, _2156)))) * 2.0f)) + (_446 * (2.0f + _2038))));
  float _2171 = _1950 * _1950;
  float _2175 = (((_2170 * _2171) - _2170) * _2170) + 1.0f;
  float _2176 = _2175 * _2175;
  float _2180 = 2.0f * _2169;
  float _2182 = (1.0f + _2169) - _2169;
  float _2199 = (1.0f - _49_m6) + (_491 * _49_m6);
  float3 _2201 = ((_2123 * _2139) * _2199) + (((_1947 * clamp((((_2171 != _2176) ? (_2171 / _2176) : 1.0f) * (0.5f / ((_2180 + (_1950 * _2182)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2123 * (((_2145 * 0.5f) + 0.5f) * _2148)) * 1.0f)) * _18_m95.w);
  float _2202 = dot(_2201, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2205 = clamp(_2202 - 0.5f, 0.0f, 0.5f);
  float3 _2241 = normalize(cross(_541, lerp(float3(_18_m91.xy, 0.0f), (float3(_16_m0[0].x, _16_m0[0].y, _16_m0[0].z) * _18_m91.x) + (float3(_16_m0[1].x, _16_m0[1].y, _16_m0[1].z) * _18_m91.y), _18_m97.w.xxx)));
  float _2247 = dot(_446, _1937);
  float _2249 = 1.0f - abs(_2247);
  float _2271 = dot(_2005, _1937);
  float _2283 = 1.0f - _2038;
  float _2310 = lerp(_1938, _1806, _1805);
  float _2311 = _2310 * _2310;
  float _2312 = _2169 * _2169;
  float _2313 = _2312 * _2169;
  float2 _2314 = float2(1.0f, _2169);
  float2 _2317 = float2(1.0f, _2311);
  float3 _2320 = float3(1.0f, _2311, (_2311 * _2311) * _2311);
  float _2325 = dot(mul(_2314, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2317) / dot(mul(float3(1.0f, _2312, _2313), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2320);
  float _2330 = dot(mul(_2314, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2317) / dot(mul(float3(1.0f, _2169, _2313), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2320);
  float3 _2333 = (_1947 * _2325) + _2330.xxx;
  float _2334 = _2325 + _2330;
  float3 _2340 = -_446;
  float3 _2341 = reflect(_2340, _1804);
  float _2346 = _2341.x;
  float _2348 = _2341.z;
  float3 _2351 = _2341;
  _2351.x = (_2346 * _18_m98.y) + (_2348 * _18_m98.x);
  _2351.z = (_2348 * _18_m98.y) - (_2346 * _18_m98.x);
  float3 _2373 = lerp(_2202.xxx, _2201, ((_2205 * _2205) + 1.0f).xxx) + (((((_18_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _18_m91.w), lerp(0.89999997615814208984375f, 0.5f, _18_m91.w), _2249)) * _18_m90.w) * min(min(clamp(dot(_502, _2241) + 1.0f, 0.0f, 1.0f), 1.0f), _2035)) * (lerp(0.25f.xxx, _1944, _18_m91.z.xxx) * clamp(dot(_2241, _1937), 0.0f, 1.0f))) + ((((((lerp(_1082 * (1.0f / max(max(max(_1082.x, _1082.y), _1082.z) * 0.5f, 1.0f)), _2021, _2122) * clamp(lerp(dot(_1081.xyz, _1937) * _1081.w, ((-_2271) * ((_2271 * 0.5f) - 1.0f)) + 0.5f, _2038), 0.0f, 1.0f)) * ((_2283 + (_2064 * _2038)) * _2068)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2249)) * min(1.0f, _2035)) * (_2283 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2051) * _2038))) * max(0.1500000059604644775390625f.xxx, _1944)));
  float2 _2376 = float2(_531);
  float2 _2378 = floor(_2376 * 0.03125f);
  int _2386 = int((_2378.x + (_2378.y * _34_m9)) * 8.0f);
  float _2393 = floor(_427 - (_18_m3.y * _34_m15));
  float _2397 = clamp(_2393, 0.0f, _34_m11 - 1.0f);
  int _2399 = int(_2397 * 8.0f);
  float3 _2401;
  _2401 = (_2373 + (((_515.xyz * _49_m25.xyz) * _49_m7) * _2199)) + (((_56.SampleLevel(_23, _2351, (1.2000000476837158203125f * log2(max(_2310, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2333 + ((_1947 * ((1.0f - _2334) / _2334)) * _2333)) * 1.0f)) * ((clamp(_1084, 0.5f, 1.5f) * _18_m82.w) * _2148)) * _1083);
  float3 _2402;
  [loop] for (int _2404 = 0; _2404 <= 7; _2401 = _2402, _2404++) {
    uint _2425 = (_2393 <= _2397) ? (_28.Load(uint((_34_m2 + _2386) + _2404) * 4 + 0) & _28.Load(uint((_34_m3 + _2399) + _2404) * 4 + 0)) : 0u;
    uint _2426 = uint(_2404);
    _2402 = _2401;
    uint _2431;
    float3 _2428;
    [loop] for (uint _2430 = _2425; _2430 != 0u; _2402 = _2428, _2430 = _2431) {
      uint _2435 = firstbitlow(_2430);
      _2431 = _2430 ^ (1u << (_2435 & 31u));
      int _2441 = int((32u * _2426) + _2435) * 8;
      int _2444 = _2441 + 1;
      int _2447 = _2441 + 2;
      int _2450 = _2441 + 3;
      int _2453 = _2441 + 4;
      int _2456 = _2441 + 5;
      int _2459 = _2441 + 6;
      int _2462 = _2441 + 7;
      uint _2466 = uint(_32_m6[_2456].w);
      float _2541;
      if ((_2466 & 1u) == 1u) {
        uint _2472 = asuint(_32_m6[_2456].x);
        uint _2479 = asuint(_32_m6[_2456].y);
        uint _2486 = asuint(_32_m6[_2456].z);
        uint _2493 = asuint(_32_m6[_2459].x);
        uint _2500 = asuint(_32_m6[_2459].y);
        uint _2507 = asuint(_32_m6[_2459].z);
        float3 _2526 = abs(mul(float4(_495 - _32_m6[_2444].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2472).x, spvUnpackHalf2x16(_2486).x, spvUnpackHalf2x16(_2500).x, 0.0f), float4(spvUnpackHalf2x16(_2472 >> 16u).x, spvUnpackHalf2x16(_2486 >> 16u).x, spvUnpackHalf2x16(_2500 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2479).x, spvUnpackHalf2x16(_2493).x, spvUnpackHalf2x16(_2507).x, 0.0f), float4(spvUnpackHalf2x16(_2479 >> 16u).x, spvUnpackHalf2x16(_2493 >> 16u).x, spvUnpackHalf2x16(_2507 >> 16u).x, 0.0f))).xyz);
        float _2533 = _32_m6[_2462].x * 0.5f;
        float _2539 = 1.0f - clamp((max(max(_2526.x, _2526.y), _2526.z) - (_2533 + 0.5f)) / (0.5f - _2533), 0.0f, 1.0f);
        _2541 = _2539 * _2539;
      } else {
        _2541 = 1.0f;
      }
      if (false || (_2541 < 0.001000000047497451305389404296875f)) {
        _2428 = _2402;
        continue;
      }
      float3 _3336;
      do {
        uint _2549 = uint(_32_m6[_2441].w);
        [branch] if (_2549 >= 4u) {
          _3336 = _2402;
          break;
        }
        float3 _3335;
        if (_32_m6[_2441].w < 1.5f) {
          float3 _3334;
          do {
            uint _2560 = asuint(_32_m6[_2450].w);
            if ((_2560 == 16u) || ((_32_m6[_2450].z + _18_m94.z) < 0.5f)) {
              _3334 = _2402;
              break;
            }
            bool _2571 = (_2549 & 1u) == 0u;
            bool _2575 = (!_2571) && (_32_m6[_2447].z > 0.0f);
            bool _2576 = _2560 == 4u;
            float _2577 = float(_2571);
            float _2585 = (0.5f + (0.5f * _32_m6[_2447].y)) - abs(_32_m6[_2447].x);
            float _2586 = _32_m6[_2447].y - _2585;
            float _2593 = abs(max((1.0f - abs(_2585)) - abs(_2586), 0.00048828125f));
            float3 _2597 = normalize(float3(_2585, _2586, (_32_m6[_2447].x >= 0.0f) ? _2593 : (-_2593)));
            float _2603 = lerp(_32_m6[_2459].w, max(2.0f * _32_m6[_2453].y, 0.100000001490116119384765625f), float(_2576));
            float3 _2608 = _32_m6[_2444].xyz - _495;
            float3 _2609 = -_2597;
            float3 _2614 = lerp(_2608, _2609 * dot(_2608, _2609), (float(_2576 && (_32_m6[_2453].z > 0.5f)) * _2577).xxx);
            float _2615 = dot(_2614, _2614);
            float _2616 = rsqrt(_2615);
            float3 _2617 = _2614 * _2616;
            float3 _2650;
            float _2651;
            if (_2575) {
              float3 _2621 = (_2597 * _32_m6[_2447].z) * 0.5f;
              float3 _2622 = _2614 - _2621;
              float3 _2623 = _2614 + _2621;
              float _2624 = length(_2622);
              float _2625 = length(_2623);
              float3 _2634 = normalize(cross(cross(_2597, _2617), _2597));
              _2650 = _2634;
              _2651 = ((1.0f / ((((_2624 * _2625) + dot(_2622, _2623)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2634, _2622) / _2624) + (dot(_2634, _2623) / _2625)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_32_m6[_2447].z * _2616, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2650 = _2617;
              _2651 = 1.0f;
            }
            float _2673;
            if (_2603 < 0.0f) {
              float _2661 = _2615 * (_32_m6[_2444].w * _32_m6[_2444].w);
              float _2664 = clamp(1.0f - (_2661 * _2661), 0.0f, 1.0f);
              _2673 = lerp(1.0f / (_2615 + 1.0f), _2651, float(_2575)) * (_2664 * _2664);
            } else {
              float3 _2667 = _2614 * _32_m6[_2444].w;
              _2673 = _2651 * pow(1.0f - clamp(dot(_2667, _2667), 0.0f, 1.0f), _2603);
            }
            float _2678 = clamp((dot(_2650, _2609) - _32_m6[_2447].z) * _32_m6[_2447].w, 0.0f, 1.0f);
            float _2681 = _2673 * lerp(1.0f, _2678 * _2678, _2577);
            int _2683 = int(_32_m6[_2462].w);
            float _2787;
            if ((!_2575) && (_2683 >= 0)) {
              uint _2689 = uint(_2683);
              float2 _2780;
              [branch] if (_2577 != 0.0f) {
                float4 _2701 = mul(_59_m1[_2689], float4(_495.x, _573, _495.z, 1.0f));
                _2780 = _59_m0[_2689].xy + (clamp(_2701.xy / _2701.w.xx, 0.0f.xx, 1.0f.xx) * _59_m0[_2689].zw);
              }
              else {
                float3 _2721 = mul(float4(-_2614, 0.0f), _59_m1[_2689]).xyz;
                float3 _417 = _2721;
                float3 _416 = _2721;
                float3 _415 = abs(_2721);
                uint _2730 = uint(int(_415.y > _415.x));
                uint _2736 = (_415.z > _415[_2730]) ? 2u : _2730;
                uint _2742 = (_2736 * 2u) + uint(_416[_2736] < 0.0f);
                float _2746 = abs(_417[_2742 / 2u]);
                float _2766 = 0.5f - (0.000244140625f / _59_m0[_2689].w);
                _2780 = _59_m0[_2689].xy + (clamp(float2((float(_2742) + ((((_417[uint(_367[_2742].x)] * _368[_2742].x) / _2746) * _2766) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_417[uint(_367[_2742].y)] * _368[_2742].y) / _2746) * _2766)), 0.0f.xx, 1.0f.xx) * _59_m0[_2689].zw);
              }
              _2787 = _2681 * _57.SampleLevel(_23, _2780, 0.0f).x;
            } else {
              _2787 = _2681;
            }
            float _2788 = _2787 * _2541;
            float3 _3333;
            do {
              float3 _3332;
              [branch] if (_2788 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2576) {
                  _3333 = lerp(_2402, _32_m6[_2441].xyz, (_2788 * (_32_m6[_2453].x * ((1.0f - _32_m6[_2453].w) + (smoothstep(-0.5f, 0.5f, dot(_529, _2650)) * _32_m6[_2453].w)))).xxx);
                  break;
                }
                float _2808 = dot(_1937, _2650);
                float _2809 = clamp(_2808, 0.0f, 1.0f);
                float _3208;
                if (_2560 != 0u) {
                  bool _2815 = _2571 || ((_2466 & 2u) != 0u);
                  int _2865;
                  if (_2815) {
                    _2865 = int(_32_m6[_2450].x);
                  } else {
                    uint _2822 = asuint(_32_m6[_2447].w);
                    uint _2823 = asuint(_32_m6[_2450].x);
                    float3 _2824 = _495 - _32_m6[_2444].xyz;
                    float3 _2825 = abs(_2824);
                    float _2826 = _2825.x;
                    float _2827 = _2825.y;
                    float _2829 = _2825.z;
                    int _2862;
                    if ((_2826 > _2827) && (_2826 > _2829)) {
                      _2862 = int((_2824.x > 0.0f) ? (_2822 & 1023u) : ((_2822 >> 10u) & 1023u));
                    } else {
                      int _2861;
                      if (_2827 > _2829) {
                        _2861 = int((_2824.y > 0.0f) ? ((_2822 >> 20u) & 1023u) : (_2823 & 1023u));
                      } else {
                        _2861 = int((_2824.z > 0.0f) ? ((_2823 >> 10u) & 1023u) : ((_2823 >> 20u) & 1023u));
                      }
                      _2862 = _2861;
                    }
                    _2865 = (_2862 == 1023) ? (-1) : _2862;
                  }
                  bool _2866 = _2865 >= 0;
                  float _3207;
                  if (_2866) {
                    float3 _2870 = _495 - _32_m6[_2444].xyz;
                    uint _2880 = asuint(_36_m11.x) + (uint(_2865) * 96u);
                    uint _2882 = (_2880 + 64u) >> 2u;
                    uint _2885 = _2882 + 1u;
                    uint _2888 = _2882 + 2u;
                    uint _2891 = _2882 + 3u;
                    float4 _2895 = asfloat(uint4(_39.Load(_2882 * 4 + 0), _39.Load(_2885 * 4 + 0), _39.Load(_2888 * 4 + 0), _39.Load(_2891 * 4 + 0)));
                    uint _2903 = _2880 >> 2u;
                    uint _2918 = (_2880 + 16u) >> 2u;
                    uint _2933 = (_2880 + 32u) >> 2u;
                    uint _2948 = (_2880 + 48u) >> 2u;
                    float4 _2968 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_2903 * 4 + 0), _39.Load((_2903 + 1u) * 4 + 0), _39.Load((_2903 + 2u) * 4 + 0), _39.Load((_2903 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2918 * 4 + 0), _39.Load((_2918 + 1u) * 4 + 0), _39.Load((_2918 + 2u) * 4 + 0), _39.Load((_2918 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2933 * 4 + 0), _39.Load((_2933 + 1u) * 4 + 0), _39.Load((_2933 + 2u) * 4 + 0), _39.Load((_2933 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2948 * 4 + 0), _39.Load((_2948 + 1u) * 4 + 0), _39.Load((_2948 + 2u) * 4 + 0), _39.Load((_2948 + 3u) * 4 + 0))))), float4((_495 - ((_2870 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2870, _2870)))) * _2895.x)) + (_529 * (_2895.y * 5.0f)), 1.0f));
                    float3 _2972 = _2968.xyz / _2968.w.xxx;
                    uint _2974 = (_2880 + 80u) >> 2u;
                    float4 _2987 = asfloat(uint4(_39.Load(_2974 * 4 + 0), _39.Load((_2974 + 1u) * 4 + 0), _39.Load((_2974 + 2u) * 4 + 0), _39.Load((_2974 + 3u) * 4 + 0)));
                    float2 _2988 = _2972.xy;
                    float2 _2990 = _2987.xy;
                    float3 _2994 = _2972.xyz;
                    bool3 _2995 = bool3(_2994.x <= 0.0f.xxx.x, _2994.y <= 0.0f.xxx.y, _2994.z <= 0.0f.xxx.z);
                    bool3 _2996 = bool3(_2994.x >= 1.0f.xxx.x, _2994.y >= 1.0f.xxx.y, _2994.z >= 1.0f.xxx.z);
                    float _2999 = _2972.z;
                    float2 _3010 = ((_2988 * (_2987.zw - _2990)) + _2990).xy * _36_m10.zw;
                    float2 _3012 = floor(_3010 + 0.5f.xx);
                    float2 _3013 = _3010 - _3012;
                    float _3014 = _3013.x;
                    float _3015 = _3014 + 0.5f;
                    float _3016 = _3015 * _3015;
                    float _3019 = 1.0f - _3014;
                    float _3020 = min(_3014, 0.0f);
                    float _3023 = _3014 + 1.0f;
                    float _3024 = max(_3014, 0.0f);
                    float _3035 = _3013.y;
                    float _3036 = _3035 + 0.5f;
                    float _3037 = _3036 * _3036;
                    float _3040 = 1.0f - _3035;
                    float _3041 = min(_3035, 0.0f);
                    float _3044 = _3035 + 1.0f;
                    float _3045 = max(_3035, 0.0f);
                    float3 _3057 = float3(0.1599999964237213134765625f * _3019, 0.1599999964237213134765625f * ((_3023 - (_3024 * _3024)) + 1.0f), _3016 * 0.07999999821186065673828125f);
                    float3 _3058 = float3(0.1599999964237213134765625f * ((_3016 * 0.5f) - _3014), 0.1599999964237213134765625f * ((_3019 - (_3020 * _3020)) + 1.0f), 0.1599999964237213134765625f * _3023) + _3057;
                    float3 _3060 = float3(0.1599999964237213134765625f * _3040, 0.1599999964237213134765625f * ((_3044 - (_3045 * _3045)) + 1.0f), _3037 * 0.07999999821186065673828125f);
                    float3 _3061 = float3(0.1599999964237213134765625f * ((_3037 * 0.5f) - _3035), 0.1599999964237213134765625f * ((_3040 - (_3041 * _3041)) + 1.0f), 0.1599999964237213134765625f * _3044) + _3060;
                    float3 _3067 = ((_3057 / _3058) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
                    float3 _3069 = ((_3060 / _3061) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
                    float2 _3071 = _3012 * _36_m10.xy;
                    float _3072 = _3067.x;
                    float _3073 = _3069.x;
                    float _3076 = _3067.y;
                    float _3079 = _3067.z;
                    float _3082 = _3069.y;
                    float _3089 = _3069.z;
                    float _3096 = _3058.x;
                    float _3097 = _3061.x;
                    float _3099 = _3058.y;
                    float _3101 = _3058.z;
                    float _3103 = _3061.y;
                    float _3107 = _3061.z;
                    float _3165 = (((((((_3096 * _3097) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3072, _3073), _409).xy, _2999)) + ((_3099 * _3097) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3076, _3073), _409).xy, _2999))) + ((_3101 * _3097) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3079, _3073), _409).xy, _2999))) + ((_3096 * _3103) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3072, _3082), _409).xy, _2999))) + ((_3099 * _3103) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3076, _3082), _409).xy, _2999))) + ((_3101 * _3103) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3079, _3082), _409).xy, _2999))) + ((_3096 * _3107) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3072, _3089), _409).xy, _2999));
                    float4 _3188 = asfloat(uint4(_39.Load(_2882 * 4 + 0), _39.Load(_2885 * 4 + 0), _39.Load(_2888 * 4 + 0), _39.Load(_2891 * 4 + 0)));
                    float _3189 = _3188.w;
                    float2 _3191 = min(_2988, 1.0f.xx - _2988);
                    _3207 = _2866 ? lerp(1.0f, (any(bool3(_2995.x || _2996.x, _2995.y || _2996.y, _2995.z || _2996.z)) || ((asuint(_2999) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3165 + ((_3099 * _3107) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3076, _3089), _409).xy, _2999))) + ((_3101 * _3107) * _37.SampleCmpLevelZero(_25, float3(_3071 + float2(_3079, _3089), _409).xy, _2999))), _2815 ? min(_3189, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3188.z - _2968.w) * 0.25f, min(_3191.x, _3191.y)))) : _3189) : 1.0f;
                  } else {
                    _3207 = clamp(dot(_502, _2650) + 1.0f, 0.0f, 1.0f);
                  }
                  _3208 = _3207;
                } else {
                  _3208 = 1.0f;
                }
                float _3288;
                float3 _3289;
                float _3290;
                float3 _3291;
                float3 _3292;
                float _3293;
                float _3294;
                [branch] if (_2560 == 0u) {
                  float3 _3214 = _32_m6[_2441].xyz * _2788;
                  float3 _3227 = _2143.xyz;
                  _3288 = _2788;
                  _3289 = (_32_m6[_2441].xyz * ((1.0f - _32_m6[_2453].y) + ((1.0f / max(1.0f, max(max(_3214.x, _3214.y), _3214.z) * lerp(0.75f, 0.5f, _2283))) * _32_m6[_2453].y))) * lerp(0.25f * _32_m6[_2453].x, 1.0f, clamp(_2808 + 0.5f, 0.0f, 1.0f));
                  _3290 = _2809;
                  _3291 = _3227;
                  _3292 = _3227;
                  _3293 = 1.0f;
                  _3294 = 0.0f;
                }
                else {
                  float _3282;
                  float _3283;
                  float3 _3284;
                  float3 _3285;
                  float _3286;
                  float _3287;
                  if (_2560 == 3u) {
                    _3282 = _2788 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _32_m6[_2453].x), lerp(0.89999997615814208984375f, 0.5f, _32_m6[_2453].x), _2249) * _3208);
                    _3283 = clamp(dot(_1937, -normalize(cross(_541, cross(_541, _2650)))), 0.0f, 1.0f);
                    _3284 = lerp(0.5f.xxx, _1944, _32_m6[_2453].y.xxx);
                    _3285 = 0.0f.xxx;
                    _3286 = 1.0f;
                    _3287 = 0.0f;
                  } else {
                    bool _3252 = _2560 == 1u;
                    float _3276;
                    float3 _3277;
                    float _3278;
                    float _3279;
                    if (_3252) {
                      _3276 = clamp(clamp(_2808 + _32_m6[_2453].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3208;
                      _3277 = _1948 * _32_m6[_2453].y;
                      _3278 = 1.0f;
                      _3279 = 0.0f;
                    } else {
                      bool _3262 = _2560 == 2u;
                      float _3274;
                      if (_3262) {
                        _3274 = smoothstep(_32_m6[_2453].x + 0.0500000007450580596923828125f, _32_m6[_2453].x - 0.0500000007450580596923828125f, _1938) * ((1.0f - _32_m6[_2453].z) + (step(0.5f, _1941) * _32_m6[_2453].z));
                      } else {
                        _3274 = 1.0f;
                      }
                      _3276 = _2809;
                      _3277 = 0.0f.xxx;
                      _3278 = _3274;
                      _3279 = _3262 ? _32_m6[_2453].y : 0.0f;
                    }
                    bool3 _3280 = _3252.xxx;
                    _3282 = _2788;
                    _3283 = _3276;
                    _3284 = float3(_3280.x ? _1944.x : 0.0f.xxx.x, _3280.y ? _1944.y : 0.0f.xxx.y, _3280.z ? _1944.z : 0.0f.xxx.z);
                    _3285 = _3277;
                    _3286 = _3278;
                    _3287 = _3279;
                  }
                  _3288 = _3282;
                  _3289 = _32_m6[_2441].xyz;
                  _3290 = _3283;
                  _3291 = _3284;
                  _3292 = _3285;
                  _3293 = _3286;
                  _3294 = _3287;
                }
                float3 _3322;
                [branch] if (_2560 != 3u) {
                  float _3299 = lerp(_1950, 0.00999999977648258209228515625f, _3294);
                  float _3302 = dot(_1804, normalize(_2650 + _446));
                  float _3303 = _3299 * _3299;
                  float _3307 = (((_3302 * _3303) - _3302) * _3302) + 1.0f;
                  float _3308 = _3307 * _3307;
                  _3322 = ((_1947 * clamp((((_3303 != _3308) ? (_3303 / _3308) : 1.0f) * (0.5f / ((_2180 + (_3299 * _2182)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3293) * _32_m6[_2462].z;
                }
                else {
                  _3322 = 0.0f.xxx;
                }
                float3 _3325 = _3289 * _3288;
                _3332 = _2402 + (((_3325 * lerp(_3292, _3291, _3290.xxx)) * _2199) + ((_3325 * _3322) * _3290));
              }
              else {
                _3332 = _2402;
              }
              _3333 = _3332;
              break;
            } while (false);
            _3334 = _3333;
            break;
          } while (false);
          _3335 = _3334;
        } else {
          _3335 = _2402;
        }
        _3336 = _3335;
        break;
      } while (false);
      _2428 = _3336;
    }
  }
  float3 _3376;
  [branch] if (_49_m12 > 0.5f) {
    _3376 = lerp(lerp(0.5f.xxx, lerp(dot(_2401, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2401, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2247, 0.0f, 1.0f))) * _49_m17);
  }
  else {
    _3376 = _2401;
  }
  float4 _3383 = float4(_3376 * _18_m20.y, _491);
  _3383.w = (_49_m8 == 1.0f) ? _491 : 1.0f;
  float4 _3770;
  [branch] if (_18_m94.w < 0.5f) {
    float _3407 = _573 * _18_m46.w;
    float _3412 = max(0.00999999977648258209228515625f, _3407 + _18_m47.w);
    float3 _3426 = exp(_18_m45.xyz * ((-max(0.0f, (_447 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3412)) / _3412) * exp(_3407 + _18_m48.w))));
    float _3429 = dot(_2340, _18_m44.xyz);
    float _3435 = _18_m45.w * _18_m45.w;
    float _3439 = (1.0f + _3435) - ((2.0f * _18_m45.w) * _3429);
    float3 _3762;
    float _3763;
    if (_18_m55.z > 0.0f) {
      uint3 _3484 = (uint3(int3(_2025, _2026, int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3485 = _3484.y;
      uint _3486 = _3484.z;
      uint _3489 = _3484.x + (_3485 * _3486);
      uint _3491 = _3485 + (_3486 * _3489);
      uint _3493 = _3486 + (_3489 * _3491);
      uint _3495 = _3489 + (_3491 * _3493);
      float _3520 = dot(_2340, -_16_m0[2].xyz);
      float3 _3527 = _495 - _16_m11.xyz;
      float _3529 = (_18_m55.w * ((_3520 > 5.9604644775390625e-08f) ? (1.0f / _3520) : 0.0f)) * (1.0f / _447);
      float _3530 = _3527.y;
      float _3531 = _3529 * _3530;
      float _3533 = _16_m11.y + _3531;
      float _3534 = _3530 - _3531;
      float _3536 = (1.0f - _3529) * _447;
      float _3550 = max(-127.0f, _18_m49.z * _3534);
      float _3574 = max(-127.0f, _18_m52.x * _3534);
      float _3585 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3533 - _18_m49.x)))) * ((abs(_3550) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3550)) / _3550) : (0.693147182464599609375f - (0.2402265071868896484375f * _3550)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3533 - _18_m52.z)))) * ((abs(_3574) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3574)) / _3574) : (0.693147182464599609375f - (0.2402265071868896484375f * _3574))));
      float _3607 = clamp((_447 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
      float _3610 = clamp((max(clamp(exp2(-(_3585 * _3536)), 0.0f, 1.0f), _18_m51.w) + clamp((_447 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3607, 0.0f, 1.0f);
      float4 _3650 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _62.SampleLevel(_23, float3((_2376 + ((((float3(uint3(_3495, _3491 + (_3493 * _3495), _413) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_427 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_427 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3762 = _3650.xyz + (((_18_m51.xyz * (1.0f - _3610)) + (((_18_m54.xyz * pow(clamp(dot(_446, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3585 * max(_3536 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3607))) * _3650.w);
      _3763 = _3650.w * _3610;
    } else {
      float3 _3656 = _495 - _16_m11.xyz;
      float _3658 = _3656.y;
      float _3672 = max(-127.0f, _18_m49.z * _3658);
      float _3696 = max(-127.0f, _18_m52.x * _3658);
      float _3707 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3672) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3672)) / _3672) : (0.693147182464599609375f - (0.2402265071868896484375f * _3672)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3696) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3696)) / _3696) : (0.693147182464599609375f - (0.2402265071868896484375f * _3696))));
      float _3729 = clamp((_447 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
      float _3732 = clamp((max(clamp(exp2(-(_3707 * _447)), 0.0f, 1.0f), _18_m51.w) + clamp((_447 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3729, 0.0f, 1.0f);
      _3762 = (_18_m51.xyz * (1.0f - _3732)) + (((_18_m54.xyz * pow(clamp(dot(_446, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3707 * max(_447 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3729));
      _3763 = _3732;
    }
    float3 _3768 = (_3383.xyz * (_3426 * _3763)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3429 * _3429)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3435) / max((12.56637096405029296875f * _3439) * sqrt(_3439), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3426)) * _3763) + _3762);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3768 = (_3768 * 0.65f) + (_3383.xyz * 0.35f);
    }
    // RenoDX code end
    _3770 = float4(_3768.x, _3768.y, _3768.z, _3383.w);
  }
  else {
    _3770 = _3383;
  }
  _13 = _3770;
  _14 = _1988;
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
  _11 = stage_input._11;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._13 = _13;
  stage_output._14 = _14;
  return stage_output;
}

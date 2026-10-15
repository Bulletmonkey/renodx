#include "./renodx_injection.hlsli"

// Ported from the native 0xC68306DB Vulkan dump.
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

static float _425;
static float3 _426;
static float _428;
static uint _429;

static const int2 _383[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _384[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(52, 0)]] cbuffer _64_65 : register(b52, space0) {
  float4 _65_m0[32] : packoffset(c0);
  column_major float4x4 _65_m1[32] : packoffset(c32);
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
[[vk::binding(5, 1)]] Texture2D<float4> _51 : register(t5, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _52 : register(t2, space1);
[[vk::binding(1, 1)]] SamplerState _53 : register(s1, space1);
[[vk::binding(46, 0)]] Texture2D<float4> _54 : register(t46, space0);
[[vk::binding(43, 0)]] Texture2D<float4> _55 : register(t43, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _56 : register(t41, space0);
[[vk::binding(7, 1)]] Texture2D<float4> _57 : register(t7, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _58 : register(t3, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _59 : register(t6, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _60 : register(t4, space1);
[[vk::binding(47, 0)]] TextureCube<float4> _62 : register(t47, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _63 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _68 : register(t38, space0);

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
  float _444 = 1.0f / gl_FragCoord.w;
  float3 _459 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
  float _460 = dot(_459, _459);
  float _462 = rsqrt(max(_460, 9.9999999392252902907785028219223e-09f));
  float3 _463 = _459 * _462;
  float _464 = _460 * _462;
  uint _467 = asuint(_22_m0[_12]._m2.x);
  bool _472 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
  float4 _485;
  float4 _486;
  if (_472) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0xC68306DB:
    _485 = asfloat(_31_Load4((_467 + 2u) * 16 + 0));
    _486 = asfloat(_31_Load4(_467 * 16 + 0));
    */
    _485 = asfloat(_31_Load4((_467 + 2u) * 16 + 0));
    _486 = asfloat(_31_Load4(_467 * 16 + 0));
    // RenoDX code end
  } else {
    _485 = _22_m0[_12]._m0[2];
    _486 = _22_m0[_12]._m0[0];
  }
  float4 _492 = _57.SampleBias(_25, _3, _19_m16);
  float3 _497 = _492.xyz * _50_m24.xyz;
  float4 _501 = _58.SampleBias(_25, _3, _19_m16);
  float _502 = _501.x;
  float _504 = _501.z;
  float _506 = 1.0f - _501.w;
  float _510 = _492.w * _50_m24.w;
  float3 _514 = _4 + _17_m11.xyz;
  float3 _518 = _514 - float3(_486.w, _428, _485.w);
  _518.y = 6.103515625e-05f;
  float3 _521 = normalize(_518);
  float4 _534 = _59.SampleBias(_25, _3, _19_m16);
  _534.w = _534.w * _534.x;
  float2 _543 = (_534.wy * 2.0f) - 1.0f.xx;
  float3 _544 = float3(_543.x, _543.y, _426.z);
  float2 _545 = _543.xy;
  _544.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_545, _545), 0.0f, 1.0f)));
  float2 _553 = _544.xy * _50_m3;
  float3 _559 = _497 * _50_m18;
  float3 _563 = lerp(dot(_559, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _559, _50_m19.xxx);
  float4 _567 = _60.SampleBias(_25, _3, _19_m16);
  float3 _576 = mul(float3(_553.x, _553.y, _544.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f));
  float _585 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _50_m5));
  float3 _586 = (_576 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_576, _576)))) * _585;
  float3 _587 = normalize(_5) * _585;
  uint2 _589 = uint2(gl_FragCoord.xy);
  float3 _599 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _608 = asuint((_19_m92.x > 0.5f) ? _19_m92.y : _22_m0[_12]._m7.x);
  float4 _621 = float4(float(_608 & 255u), float((_608 >> 8u) & 255u), float((_608 >> 16u) & 255u), float((_608 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _622 = _621.x;
  float _625 = _621.w;
  float _631 = _514.y;
  float _634 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m92.w, _19_m92.x) - _631) * _621.y;
  float _635 = max(_621.z, _634);
  float _644 = lerp(_19_m22.x, 1.0f, _19_m94.w) * _19_m20.x;
  float4 _1139;
  float3 _1140;
  float3 _1141;
  float _1142;
  if (_19_m83.y < 0.5f) {
    float3 _659 = _514 - (_19_m108.xyz + (_599 * (-_19_m110.w)));
    float _674 = max(min(max((max(abs(_659.x), abs(_659.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_659.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _976;
    float4 _977;
    float4 _978;
    float _979;
    float _980;
    if ((_19_m108.w != 0.0f) && (_674 < 1.0f)) {
      float3 _687 = _514 - (_19_m108.xyz + (_599 * (-_19_m110.y)));
      float _701 = max(clamp((max(abs(_687.x), abs(_687.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_687.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _777;
      float4 _778;
      float4 _779;
      float4 _780;
      if (_701 < 1.0f) {
        float3 _710 = ((_514 * 2.0f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _712 = _710 - floor(_710);
        float4 _716 = _43.SampleLevel(_25, _712, 0.0f);
        float _717 = 1.0f - _701;
        float _721 = _19_m109.y * 0.5f;
        float _726 = _712.x;
        float _727 = clamp(_712.y, _721, 1.0f - _721) * 0.3333333432674407958984375f;
        float _728 = _712.z;
        float4 _731 = _44.SampleLevel(_24, float3(_726, _727, _728), 0.0f);
        float _747 = _716.x;
        float _757 = _716.y;
        float _767 = _716.z;
        _777 = _674 + (_731.w * _717);
        _778 = float4(((_44.SampleLevel(_24, float3(_726, _727 + 0.666666686534881591796875f, _728), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _767, _767) * _717;
        _779 = float4(((_44.SampleLevel(_24, float3(_726, _727 + 0.3333333432674407958984375f, _728), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _757, _757) * _717;
        _780 = float4(((_731.xyz * 4.0f) - 2.0f.xxx) * _747, _747) * _717;
      } else {
        _777 = _674;
        _778 = 0.0f.xxxx;
        _779 = 0.0f.xxxx;
        _780 = 0.0f.xxxx;
      }
      float3 _786 = _514 - (_19_m108.xyz + (_599 * (-_19_m110.z)));
      float _800 = max(clamp((max(abs(_786.x), abs(_786.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_786.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _880;
      float4 _881;
      float4 _882;
      float4 _883;
      if (_800 < 1.0f) {
        float3 _809 = ((_514 * 0.5f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _811 = _809 - floor(_809);
        float4 _815 = _45.SampleLevel(_25, _811, 0.0f);
        float _817 = _701 * (1.0f - _800);
        float _821 = _19_m109.y * 0.5f;
        float _826 = _811.x;
        float _827 = clamp(_811.y, _821, 1.0f - _821) * 0.3333333432674407958984375f;
        float _828 = _811.z;
        float4 _831 = _46.SampleLevel(_24, float3(_826, _827, _828), 0.0f);
        float _847 = _815.x;
        float _858 = _815.y;
        float _869 = _815.z;
        _880 = _777 + (_831.w * _817);
        _881 = _778 + (float4(((_46.SampleLevel(_24, float3(_826, _827 + 0.666666686534881591796875f, _828), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _869, _869) * _817);
        _882 = _779 + (float4(((_46.SampleLevel(_24, float3(_826, _827 + 0.3333333432674407958984375f, _828), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _858, _858) * _817);
        _883 = _780 + (float4(((_831.xyz * 4.0f) - 2.0f.xxx) * _847, _847) * _817);
      } else {
        _880 = _777;
        _881 = _778;
        _882 = _779;
        _883 = _780;
      }
      float4 _966;
      float4 _967;
      float4 _968;
      float _969;
      if (_800 > 0.0f) {
        float3 _892 = ((_514 * 0.125f) + 0.5f.xxx) * _19_m109.xyz;
        float3 _895 = _19_m109.xyz * 0.5f;
        float3 _897 = clamp(_892 - floor(_892), _895, 1.0f.xxx - _895);
        float4 _901 = _47.SampleLevel(_25, _897, 0.0f);
        float _903 = _800 * (1.0f - _674);
        float _907 = _19_m109.y * 0.5f;
        float _912 = _897.x;
        float _913 = clamp(_897.y, _907, 1.0f - _907) * 0.3333333432674407958984375f;
        float _914 = _897.z;
        float4 _917 = _48.SampleLevel(_24, float3(_912, _913, _914), 0.0f);
        float _933 = _901.x;
        float _944 = _901.y;
        float _955 = _901.z;
        _966 = _881 + (float4(((_48.SampleLevel(_24, float3(_912, _913 + 0.666666686534881591796875f, _914), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _955, _955) * _903);
        _967 = _882 + (float4(((_48.SampleLevel(_24, float3(_912, _913 + 0.3333333432674407958984375f, _914), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _944, _944) * _903);
        _968 = _883 + (float4(((_917.xyz * 4.0f) - 2.0f.xxx) * _933, _933) * _903);
        _969 = _880 + (_917.w * _903);
      } else {
        _966 = _881;
        _967 = _882;
        _968 = _883;
        _969 = _880;
      }
      float _972 = clamp((_969 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _976 = _966;
      _977 = _967;
      _978 = _968;
      _979 = _972 - _674;
      _980 = (_972 + _674) * 0.5f;
    } else {
      _976 = 0.0f.xxxx;
      _977 = 0.0f.xxxx;
      _978 = 0.0f.xxxx;
      _979 = 0.0f;
      _980 = 1.0f;
    }
    float4 _1000 = _978 + float4(_19_m111.x * _980, (_19_m111.y * _980) + ((_19_m111.w * _979) * 0.5f), _19_m111.z * _980, (_19_m111.w * _980) + ((_19_m111.y * _979) * 0.375f));
    float4 _1020 = _977 + float4(_19_m112.x * _980, (_19_m112.y * _980) + ((_19_m112.w * _979) * 0.5f), _19_m112.z * _980, (_19_m112.w * _980) + ((_19_m112.y * _979) * 0.375f));
    float4 _1040 = _976 + float4(_19_m113.x * _980, (_19_m113.y * _980) + ((_19_m113.w * _979) * 0.5f), _19_m113.z * _980, (_19_m113.w * _980) + ((_19_m113.y * _979) * 0.375f));
    float4 _1044 = float4(_586, 1.0f);
    float3 _1050 = max(float3(dot(_1000, _1044), dot(_1020, _1044), dot(_1040, _1044)), 0.0f.xxx) * _644;
    float3 _1058 = ((_1000.xyz * 0.2125999927520751953125f) + (_1020.xyz * 0.715200006961822509765625f)) + (_1040.xyz * 0.072200000286102294921875f);
    float3 _1062 = _1058 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1058, _1058)));
    float _1064 = abs(_1062.y);
    float3 _1065 = _1062;
    _1065.y = _1064;
    float4 _1066 = float4(_1065.x, _1065.y, _1065.z, 0.0f.xxxx.w);
    _1066.w = 1.0f;
    float4 _1070 = float4(_1062.x, _1064, _1062.z, 1.0f);
    float3 _1075 = max(float3(dot(_1000, _1070), dot(_1020, _1070), dot(_1040, _1070)), 0.0f.xxx);
    float _1083 = _1050.z;
    float _1084 = _1050.y;
    float4 _1089 = lerp(float4(_1083, _1084, -1.0f, 0.666666686534881591796875f), float4(_1084, _1083, 0.0f, -0.3333333432674407958984375f), step(_1083, _1084).xxxx);
    float _1090 = _1050.x;
    float _1091 = _1089.x;
    float4 _1099 = lerp(float4(_1091, _1089.yw, _1090), float4(_1090, _1089.yz, _1091), step(_1091, _1090).xxxx);
    float _1100 = _1099.x;
    float _1101 = _1099.w;
    float _1102 = _1099.y;
    float _1104 = _1100 - min(_1101, _1102);
    float _1114 = frac(abs(_1099.z + ((_1101 - _1102) / ((6.0f * _1104) + 9.9999997473787516355514526367188e-05f))));
    float _1121 = min(_1104 / (_1100 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1114 - 0.5f))) * clamp(_1100, 0.0f, 1.0f));
    float _1123 = 2.0f / (2.0f - _1121);
    _1139 = _1066;
    _1140 = _1050;
    _1141 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1114, _1121, _1123).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1121.xxx) * _1123;
    _1142 = max(max(max(_1075.x, _1075.y), _1075.z), 0.0f) * _644;
  } else {
    _1139 = 0.0f.xxxx;
    _1140 = 1.0f.xxx;
    _1141 = _19_m84.xyz;
    _1142 = _644;
  }
  bool3 _1161 = (_50_m37 > 0.5f).xxx;
  float3 _1162 = _5 * _585;
  float3 _1163 = float3(_1161.x ? _586.x : _1162.x, _1161.y ? _586.y : _1162.y, _1161.z ? _586.z : _1162.z);
  float _1165 = 1.0f / length(_1163);
  float3 _1175 = normalize(mul(float3x3(_6.xyz * _1165, (cross(_1163, _6.xyz) * ((_6.w > 0.0f) ? 1.0f : (-1.0f))) * _1165, _1163 * _1165), _463));
  float2 _1181 = (_3 * _50_m40.xy) + _50_m40.zw;
  float2 _1182 = ddx(_3);
  float2 _1183 = ddy(_3);
  float _1190 = min(_50_m35, 20.0f);
  float _1191 = 1.0f / _1190;
  float2 _1199 = ((_1175.xy / max(_1175.z, 0.001000000047497451305389404296875f).xx) * ((-1.0f) * _50_m36)) * _1191;
  float _1202;
  float _1202_copy;
  float2 _1205;
  float2 _1205_copy;
  float2 _1209;
  float _1210;
  float _1212;
  _1202 = 1.0f - _1191;
  _1205 = _1199;
  _1209 = 0.0f.xx;
  _1210 = 0.0f;
  _1212 = 1.0f;
  float _1203;
  float2 _1206;
  float _1208;
  float _1211;
  float _1227;
  float _1207 = 0.0f;
  [loop] for (;;) {
    if (_1207 < (_1190 + 1.0f)) {
      _1211 = _52.SampleGrad(_53, _1181 + _1205, _1182 * _19_m17, _1183 * _19_m17).x;
      if (_1211 > _1202) {
        _1227 = _1211;
        break;
      }
      _1208 = _1207 + 1.0f;
      _1206 = _1205 + _1199;
      _1203 = _1202 - _1191;
      _1202_copy = _1202;
      _1202 = _1203;
      _1205_copy = _1205;
      _1205 = _1206;
      _1207 = _1208;
      _1209 = _1205_copy;
      _1210 = _1211;
      _1212 = _1202_copy;
      continue;
    } else {
      _1227 = _1210;
      break;
    }
  }
  float4 _1239 = _52.SampleBias(_53, (_1209 + (_1199 * ((_1210 - _1212) / (((_1210 - _1227) + _1202) - _1212)))) + _1181, _19_m16);
  float _1249 = 1.0f - _50_m30;
  float _1250 = _1249 * _1249;
  float _1251 = max(_1250, 0.0078125f);
  float4 _1255 = _51.SampleBias(_25, _3, _19_m16);
  float _1256 = _1255.x;
  float3 _1263 = _50_m34.xyz * lerp(0.039999999105930328369140625f, 1.0f, _50_m31);
  float3 _1267 = lerp(_587, _586, _50_m32.xxx);
  float3 _1975;
  float _1976;
  float _1977;
  float _1978;
  float3 _1979;
  float3 _1980;
  [branch] if ((clamp(_622 + _635, 0.0f, 1.0f) - _50_m20) > 0.00999999977648258209228515625f) {
    float _1280 = 1.0f - _502;
    bool3 _1286 = _472.xxx;
    float3 _1288 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1292 = float3(_1286.x ? _1288.x : _10.x, _1286.y ? _1288.y : _10.y, _1286.z ? _1288.z : _10.z) * _19_m92.z;
    float3 _1294 = float3(_1286.x ? _9.xzy.x : _9.x, _1286.y ? _9.xzy.y : _9.y, _1286.z ? _9.xzy.z : _9.z);
    float3 _1296 = abs(_1294) - 0.20000000298023223876953125f.xxx;
    float3 _1299 = max((_1296 * _1296) * _1296, 6.103515625e-05f.xxx);
    float3 _1302 = _1299 / dot(_1299, 1.0f.xxx).xxx;
    float2 _1310 = _1292.xy;
    float2 _1315 = _1292.zy;
    float4 _1325 = ((_54.SampleBias(_25, _1292.xz, _19_m16) * _1302.y) + (_54.SampleBias(_25, _1310, _19_m16) * _1302.z)) + (_54.SampleBias(_25, _1315, _19_m16) * _1302.x);
    float _1326 = _1325.w;
    float _1328 = 1.10000002384185791015625f - _1326;
    float _1337 = max(smoothstep(0.800000011920928955078125f - _1326, _1328, clamp((_622 * _1280) + (_586.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1326, _1328, clamp(_634 * _1280, 0.0f, 1.0f)));
    float _1344 = smoothstep(0.5f, 0.75f, _502);
    float _1345 = lerp(0.0f, smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_497 * _1280, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))), _1256);
    float _1347 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, lerp(_506, _1249, _1256));
    float _1350 = clamp(_1347 + _1344, 0.0f, 1.0f) * max(_622, _635);
    bool _1354 = !((step(_622, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _635)) != 0.0f);
    bool2 _1355 = _1354.xx;
    float2 _1357 = (1.0f - _635).xx;
    float2 _1358 = float2(_1355.x ? float2(3.0f, 4.345600128173828125f).x : _1357.x, _1355.y ? float2(3.0f, 4.345600128173828125f).y : _1357.y);
    float _1359 = 1.0f - _1350;
    float _1362 = _1354 ? _19_m10.x : 1.0f;
    float _1364 = _1362 * _1358.x;
    float _1366 = _1362 * _1358.y;
    float3 _1367 = _1292 * 20.0f;
    float3 _1368 = _1292 * 34.345600128173828125f;
    float3 _1370 = pow(max(_1296, 0.0f.xxx), 10.0f.xxx);
    float3 _1374 = _1370 / max(dot(_1370, 1.0f.xxx), 6.103515625e-05f).xxx;
    float _1376 = _1374.y;
    float2 _1377 = _1367.xz * 1.0f;
    float2 _1378 = floor(_1377);
    float2 _1381 = frac(_1378 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1385 = _1381 + dot(_1381, _1381 + 34.345001220703125f.xx).xx;
    float _1386 = _1385.x;
    float _1387 = _1385.y;
    float2 _1391 = frac(float2(_1386 * _1387, _1386 + _1387));
    float2 _1394 = frac((_1378 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1398 = _1394 + dot(_1394, _1394 + 34.345001220703125f.xx).xx;
    float _1399 = _1398.x;
    float _1400 = _1398.y;
    float2 _1404 = frac(float2(_1399 * _1400, _1399 + _1400));
    float _1410 = _1391.x;
    float _1412 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1410);
    float2 _1413 = ((_1377 - _1378) + ((((_1404 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1416 = _1413.y;
    float2 _1420 = float2(_1413.x * 1.25f, _1416 * ((_1416 < 0.0f) ? 1.25f : 0.75f));
    float _1423 = _1364 + _1410;
    float _1427 = _1354 ? frac(_1423) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1423, 0.0f, 1.0f));
    float _1439 = _1391.y;
    float _1442 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1427) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1427)) * step(0.001000000047497451305389404296875f, smoothstep(_1412, 0.0f, length(_1420)))) * step(_1359, _1439 - 0.100000001490116119384765625f);
    float _1445 = _1442 * _1376;
    float _1453 = _1374.z;
    float2 _1454 = _1367.xy * 1.0f;
    float2 _1455 = floor(_1454);
    float2 _1458 = frac(_1455 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1462 = _1458 + dot(_1458, _1458 + 34.345001220703125f.xx).xx;
    float _1463 = _1462.x;
    float _1464 = _1462.y;
    float2 _1468 = frac(float2(_1463 * _1464, _1463 + _1464));
    float2 _1471 = frac((_1455 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1475 = _1471 + dot(_1471, _1471 + 34.345001220703125f.xx).xx;
    float _1476 = _1475.x;
    float _1477 = _1475.y;
    float2 _1481 = frac(float2(_1476 * _1477, _1476 + _1477));
    float _1487 = _1468.x;
    float _1489 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1487);
    float2 _1490 = ((_1454 - _1455) + ((((_1481 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1493 = _1490.y;
    float2 _1497 = float2(_1490.x * 1.25f, _1493 * ((_1493 < 0.0f) ? 1.25f : 0.75f));
    float _1500 = _1364 + _1487;
    float _1504 = _1354 ? frac(_1500) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1500, 0.0f, 1.0f));
    float _1516 = _1468.y;
    float _1519 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1504) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1504)) * step(0.001000000047497451305389404296875f, smoothstep(_1489, 0.0f, length(_1497)))) * step(_1359, _1516 - 0.100000001490116119384765625f);
    float _1522 = _1519 * _1453;
    float _1530 = _1374.x;
    float2 _1531 = _1367.zy * 1.0f;
    float2 _1532 = floor(_1531);
    float2 _1535 = frac(_1532 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1539 = _1535 + dot(_1535, _1535 + 34.345001220703125f.xx).xx;
    float _1540 = _1539.x;
    float _1541 = _1539.y;
    float2 _1545 = frac(float2(_1540 * _1541, _1540 + _1541));
    float2 _1548 = frac((_1532 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1552 = _1548 + dot(_1548, _1548 + 34.345001220703125f.xx).xx;
    float _1553 = _1552.x;
    float _1554 = _1552.y;
    float2 _1558 = frac(float2(_1553 * _1554, _1553 + _1554));
    float _1564 = _1545.x;
    float _1566 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1564);
    float2 _1567 = ((_1531 - _1532) + ((((_1558 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1570 = _1567.y;
    float2 _1574 = float2(_1567.x * 1.25f, _1570 * ((_1570 < 0.0f) ? 1.25f : 0.75f));
    float _1577 = _1364 + _1564;
    float _1581 = _1354 ? frac(_1577) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1577, 0.0f, 1.0f));
    float _1593 = _1545.y;
    float _1596 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1581) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1581)) * step(0.001000000047497451305389404296875f, smoothstep(_1566, 0.0f, length(_1574)))) * step(_1359, _1593 - 0.100000001490116119384765625f);
    float _1599 = _1596 * _1530;
    float2 _1612 = (float4(((clamp(_1420 / _1412.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1404.x)) * _1442) * _1376, _1445, _1439).xy + float4(((clamp(_1497 / _1489.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1481.x)) * _1519) * _1453, _1522, _1516).xy) + float4(((clamp(_1574 / _1566.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1558.x)) * _1596) * _1530, _1599, _1593).xy;
    float _1614 = max(_1599, max(_1445, _1522));
    float4 _1617 = float4(_1612, _1614, 0.0f);
    float2 _1619 = _1368.xz * 1.0f;
    float2 _1620 = floor(_1619);
    float2 _1623 = frac(_1620 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1627 = _1623 + dot(_1623, _1623 + 34.345001220703125f.xx).xx;
    float _1628 = _1627.x;
    float _1629 = _1627.y;
    float2 _1633 = frac(float2(_1628 * _1629, _1628 + _1629));
    float2 _1636 = frac((_1620 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1640 = _1636 + dot(_1636, _1636 + 34.345001220703125f.xx).xx;
    float _1641 = _1640.x;
    float _1642 = _1640.y;
    float2 _1646 = frac(float2(_1641 * _1642, _1641 + _1642));
    float _1652 = _1633.x;
    float _1654 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1652);
    float2 _1655 = ((_1619 - _1620) + ((((_1646 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1658 = _1655.y;
    float2 _1662 = float2(_1655.x * 1.25f, _1658 * ((_1658 < 0.0f) ? 1.25f : 0.75f));
    float _1665 = _1366 + _1652;
    float _1669 = _1354 ? frac(_1665) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1665, 0.0f, 1.0f));
    float _1681 = _1633.y;
    float _1684 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1669) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1669)) * step(0.001000000047497451305389404296875f, smoothstep(_1654, 0.0f, length(_1662)))) * step(_1359, _1681 - 0.100000001490116119384765625f);
    float _1687 = _1684 * _1376;
    float2 _1692 = _1368.xy * 1.0f;
    float2 _1693 = floor(_1692);
    float2 _1696 = frac(_1693 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1700 = _1696 + dot(_1696, _1696 + 34.345001220703125f.xx).xx;
    float _1701 = _1700.x;
    float _1702 = _1700.y;
    float2 _1706 = frac(float2(_1701 * _1702, _1701 + _1702));
    float2 _1709 = frac((_1693 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1713 = _1709 + dot(_1709, _1709 + 34.345001220703125f.xx).xx;
    float _1714 = _1713.x;
    float _1715 = _1713.y;
    float2 _1719 = frac(float2(_1714 * _1715, _1714 + _1715));
    float _1725 = _1706.x;
    float _1727 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1725);
    float2 _1728 = ((_1692 - _1693) + ((((_1719 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1731 = _1728.y;
    float2 _1735 = float2(_1728.x * 1.25f, _1731 * ((_1731 < 0.0f) ? 1.25f : 0.75f));
    float _1738 = _1366 + _1725;
    float _1742 = _1354 ? frac(_1738) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1738, 0.0f, 1.0f));
    float _1754 = _1706.y;
    float _1757 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1742) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1742)) * step(0.001000000047497451305389404296875f, smoothstep(_1727, 0.0f, length(_1735)))) * step(_1359, _1754 - 0.100000001490116119384765625f);
    float _1760 = _1757 * _1453;
    float2 _1765 = _1368.zy * 1.0f;
    float2 _1766 = floor(_1765);
    float2 _1769 = frac(_1766 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1773 = _1769 + dot(_1769, _1769 + 34.345001220703125f.xx).xx;
    float _1774 = _1773.x;
    float _1775 = _1773.y;
    float2 _1779 = frac(float2(_1774 * _1775, _1774 + _1775));
    float2 _1782 = frac((_1766 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1786 = _1782 + dot(_1782, _1782 + 34.345001220703125f.xx).xx;
    float _1787 = _1786.x;
    float _1788 = _1786.y;
    float2 _1792 = frac(float2(_1787 * _1788, _1787 + _1788));
    float _1798 = _1779.x;
    float _1800 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1798);
    float2 _1801 = ((_1765 - _1766) + ((((_1792 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1804 = _1801.y;
    float2 _1808 = float2(_1801.x * 1.25f, _1804 * ((_1804 < 0.0f) ? 1.25f : 0.75f));
    float _1811 = _1366 + _1798;
    float _1815 = _1354 ? frac(_1811) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1811, 0.0f, 1.0f));
    float _1827 = _1779.y;
    float _1830 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1815) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1815)) * step(0.001000000047497451305389404296875f, smoothstep(_1800, 0.0f, length(_1808)))) * step(_1359, _1827 - 0.100000001490116119384765625f);
    float _1833 = _1830 * _1530;
    float2 _1841 = (float4(((clamp(_1662 / _1654.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1646.x)) * _1684) * _1376, _1687, _1681).xy + float4(((clamp(_1735 / _1727.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1719.x)) * _1757) * _1453, _1760, _1754).xy) + float4(((clamp(_1808 / _1800.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1792.x)) * _1830) * _1530, _1833, _1827).xy;
    float4 _1846 = float4(_1841, max(_1833, max(_1687, _1760)), 0.0f);
    float _1848 = step(max(float2(_1412 * _1442, _428) * _1376, max(float2(_1489 * _1519, _428) * _1453, float2(_1566 * _1596, _428) * _1530)).x, 0.00999999977648258209228515625f);
    float2 _1852 = _1617.xy + (_1846.xy * _1848);
    float3 _1861 = float3((_1325.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1852.x, _1852.y, 0.0f.xxx.z);
    float2 _1865 = float2(0.0f, (_19_m10.x * _19_m92.z) * 0.75f);
    float3 _1868 = float3(_1294.x, 0.0f, _1294.z);
    float3 _1874 = abs(_1868 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1868, _1868)))) - 0.20000000298023223876953125f.xxx;
    float3 _1877 = max((_1874 * _1874) * _1874, 6.103515625e-05f.xxx);
    float3 _1880 = _1877 / dot(_1877, 1.0f.xxx).xxx;
    float _1899 = _1880.z;
    float _1901 = _1880.x;
    float4 _1903 = (_55.SampleBias(_25, _1310, _19_m16) * _1899) + (_55.SampleBias(_25, _1315, _19_m16) * _1901);
    float2 _1915 = _1861.xy + ((((_1903.xy * 2.0f) - 1.0f.xx) * ((_55.SampleBias(_25, _1310 + _1865, _19_m16).w * _1899) + (_55.SampleBias(_25, _1315 + _1865, _19_m16).w * _1901))) * _1350);
    float3 _1916 = float3(_1915.x, _1915.y, _1861.z);
    float _1917 = _1903.z;
    float _1922 = max(max(max(_1617.zw * step(0.00999999977648258209228515625f, _1614), _1846.zw * _1848).x, step(1.0099999904632568359375f - _1350, _1325.z)), smoothstep(1.0f - _1917, 1.10000002384185791015625f - _1917, _1350) * _1350);
    float2 _1923 = _1915.xy;
    _1916.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1923, _1923), 0.0f, 1.0f)));
    float3 _1930 = normalize(_1916);
    float3 _1931 = cross(_586, float3(0.0f, 1.0f, 0.0f));
    bool3 _1934 = (dot(_1931, _1931) > 6.103515625e-05f).xxx;
    float3 _1935 = normalize(_1931);
    float3 _1936 = float3(_1934.x ? _1935.x : float3(1.0f, 0.0f, 0.0f).x, _1934.y ? _1935.y : float3(1.0f, 0.0f, 0.0f).y, _1934.z ? _1935.z : float3(1.0f, 0.0f, 0.0f).z);
    float _1947 = min(_506, 0.0500000007450580596923828125f);
    float _1948 = lerp(_506, _1947, _1922);
    float _1967 = lerp(1.0f, 0.5f, (_1337 * (1.0f - _1345)) * (1.0f - _1347));
    _1975 = normalize(lerp(_586, normalize(((_1936 * _1930.x) + (cross(_1936, _586) * _1930.y)) + (_586 * _1930.z)), _1922.xxx));
    _1976 = _1922;
    _1977 = lerp(_1947, min(_1249, _1947), _1256);
    _1978 = max(_1948 - ((0.20000000298023223876953125f * _1345) * _1337), min(0.20000000298023223876953125f, _1948));
    _1979 = _563 * _1967;
    _1980 = lerp(_497, _497 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_497, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1922 * _1344).xxx) * _1967;
  }
  else {
    _1975 = _586;
    _1976 = 0.0f;
    _1977 = 0.00999999977648258209228515625f;
    _1978 = _506;
    _1979 = _563;
    _1980 = _497;
  }
  float3 _2110;
  float _2111;
  float3 _2112;
  float3 _2113;
  float _2114;
  [branch] if ((_625 - _50_m20) > 0.00999999977648258209228515625f) {
    bool3 _1985 = _472.xxx;
    float3 _1987 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1988 = float3(_1985.x ? _1987.x : _10.x, _1985.y ? _1987.y : _10.y, _1985.z ? _1987.z : _10.z);
    float3 _1991 = _1988 * _19_m92.z;
    float3 _1993 = float3(_1985.x ? _9.xzy.x : _9.x, _1985.y ? _9.xzy.y : _9.y, _1985.z ? _9.xzy.z : _9.z);
    float3 _1995 = abs(_1993) - 0.20000000298023223876953125f.xxx;
    float3 _1998 = max((_1995 * _1995) * _1995, 6.103515625e-05f.xxx);
    float3 _2001 = _1998 / dot(_1998, 1.0f.xxx).xxx;
    float4 _2024 = ((_56.SampleBias(_25, _1991.xz, _19_m16) * _2001.y) + (_56.SampleBias(_25, _1991.xy, _19_m16) * _2001.z)) + (_56.SampleBias(_25, _1991.zy, _19_m16) * _2001.x);
    float _2025 = _1993.y;
    float _2032 = clamp(_625 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1988.y) * clamp(_625 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _2038 = _2032 * (2.0f - _2032);
    float _2045 = smoothstep(2.0f - _2038, 2.349999904632568359375f - _2038, ((_2025 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _2024.z) * ((_504 * _504) * float(gl_FrontFacing));
    float _2057 = lerp(1.0f, 0.5f, ((_2032 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1980 * (1.0f - _502), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _2024.w) * ((_2025 * 0.25f) + 0.75f));
    float3 _2059 = _2045.xxx;
    float2 _2065 = (_2024.xy * 2.0f) - 1.0f.xx;
    float3 _2066 = float3(_2065.x, _2065.y, _426.z);
    float2 _2067 = _2065.xy;
    _2066.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2067, _2067), 0.0f, 1.0f)));
    float2 _2075 = _2066.xy * 2.0f;
    float3 _2077 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2075.x, _2075.y, _2066.z), _2059);
    float3 _2081 = _2077 * rsqrt(max(6.103515625e-05f, dot(_2077, _2077)));
    float _2082 = _586.y;
    float _2085 = step(0.00999999977648258209228515625f, 1.0f - (_2082 * _2082));
    float _2089 = lerp(_586.z, _2082, _2085);
    float3 _2096 = (float3(0.0f, _2085, 1.0f - _2085) - (_586 * _2089)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2089 * _2089)));
    _2110 = ((cross(_2096, _586) * _2081.x) + (_2096 * _2081.y)) + (_586 * _2081.z);
    _2111 = lerp(_1978, 0.89999997615814208984375f, clamp(_2045 * 4.0f, 0.0f, 1.0f));
    _2112 = lerp(_1979 * _2057, 0.3079999983310699462890625f.xxx, _2059);
    _2113 = lerp(_1980 * _2057, 0.87999999523162841796875f.xxx, _2059);
    _2114 = lerp(_502, 0.0f, _2045);
  }
  else {
    _2110 = _586;
    _2111 = _1978;
    _2112 = _1979;
    _2113 = _1980;
    _2114 = _502;
  }
  float _2116 = 0.959999978542327880859375f - (_2114 * 0.959999978542327880859375f);
  float3 _2117 = _2113 * _2116;
  float3 _2120 = lerp(0.039999999105930328369140625f.xxx * _501.y, _2113, _2114.xxx);
  float3 _2121 = _2112 * _2116;
  float _2123 = max(_2111 * _2111, 0.0078125f);
  bool _2130 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
  float2 _2143 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _2143.y = -_2143.y;
  float2 _2159 = lerp(((sqrt(sqrt(abs(_2143 * 0.5f))) * float2(int2(sign(_2143)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2130).xx);
  float4 _2161 = float4(_2159.x, _2159.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2161.z = 1.0f;
  _2161.w = _2130 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2174 = lerp(-_33_m0.xyz, _19_m93.xyz, _19_m83.w.xxx);
  float3 _2178 = normalize(float3(_2174.x, 6.103515625e-05f, _2174.z));
  float3 _2188 = lerp(_33_m3.xyz, _19_m87.xyz, _19_m94.y.xxx);
  float3 _2194 = _2188 * lerp(_33_m3.w, _19_m87.w, _19_m94.w);
  int _2198 = int(_589.x);
  int _2199 = int(_589.y);
  float4 _2203 = _41.Load(int3(int3(_2198, _2199, 0).xy, 0));
  float _2208 = _2203.y;
  float _2211 = lerp(lerp(1.0f, _2203.x, _37_m6.x), 1.0f, _19_m83.z);
  float _2212 = dot(_2110, _2174);
  float3 _2219 = _2121 * _19_m82.z;
  float3 _2220 = _2219 * 0.64999997615814208984375f;
  float _2224 = dot(_2117, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2237 = clamp(-dot(_2178.xz, normalize(_599.xz)), 0.0f, 1.0f);
  float _2241 = 1.0f - _19_m94.x;
  float _2249 = smoothstep(0.25f, 1.0f, clamp(lerp(_2212, ((-_2212) * ((_2212 * 0.5f) - 1.0f)) + 0.5f, (_2237 * smoothstep(0.25f, 0.75f, 1.0f - abs(_599.y))) * _2241) + (_19_m93.w * _19_m94.x), -1.0f, 1.0f));
  float _2256 = max(max(_2249, _2249), _2249) - min(min(_2249, _2249), _2249);
  float _2258 = smoothstep(0.25f, 1.0f, dot(_2110, _599));
  float _2259 = _504 * _2208;
  float _2266 = min(min(_2208, _504), _2249);
  float _2267 = _2258 * _2259;
  float3 _2271 = ((clamp(dot(_586, _19_m88.xyz) + _19_m89.x, 0.0f, 1.0f) * _19_m89.y) + _19_m89.z).xxx * lerp(_1141, 1.0f.xxx, (_19_m83.y * _2266).xxx);
  float3 _2273 = _2266.xxx;
  float3 _2296 = _2211.xxx;
  float3 _2297 = lerp((_2271 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1142), 1.5f), clamp(_1142, 1.25f, 1.75f), _19_m83.x)) * _19_m82.w, (lerp(dot(_2194, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2194, _2273) + ((_2271 * clamp(_1142, 0.0f, 1.5f)) * ((1.0f - _19_m94.y).xxx + (_2188 * _19_m94.y)))) * _19_m82.y, _2296);
  float3 _2298 = lerp(lerp(lerp(dot(_2220, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2220, 1.2000000476837158203125f.xxx), _2219, clamp((_2259 * _2258) + _2249, 0.0f, 1.0f).xxx), _2117, _2273);
  float3 _2304 = _2298 * ((1.0f - _2256).xxx + (_2249.xxxx.xyz * _2256));
  float3 _2313 = lerp(lerp(_2219, lerp(_2224.xxx, _2117, 1.2000000476837158203125f.xxx), _2267.xxx), _2304 * clamp(dot(_2298, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2304, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2296);
  float4 _2317 = float4(_2313, _2211);
  float _2319 = lerp(_2267, _2266, _2211);
  float _2322 = lerp(_19_m82.z, 1.0f, _2319);
  float3 _2330 = float3(_599.x, lerp(0.5f, _2174.y, _2211), _599.z);
  float3 _2341 = normalize(((_2174 * _2211) + ((_2330 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2330, _2330)))) * 2.0f)) + (_463 * (2.0f + _2211)));
  float _2343 = clamp(dot(_1975, _463), 0.0f, 1.0f);
  float _2344 = dot(_1975, _2341);
  float _2345 = _2123 * _2123;
  float _2349 = (((_2344 * _2345) - _2344) * _2344) + 1.0f;
  float _2350 = _2349 * _2349;
  float _2354 = 2.0f * _2343;
  float _2356 = (1.0f + _2343) - _2343;
  float3 _2364 = _2120 * clamp((((_2345 != _2350) ? (_2345 / _2350) : 1.0f) * (0.5f / ((_2354 + (_2123 * _2356)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
  bool _2365 = _1256 > 0.001000000047497451305389404296875f;
  float3 _2407;
  float3 _2408;
  if (_2365) {
    float _2370 = dot(_1267, _2341);
    float _2372 = clamp(dot(_1267, _463), 0.0f, 1.0f);
    float _2373 = 1.0f - clamp(dot(_463, _2341), 0.0f, 1.0f);
    float _2374 = _2373 * _2373;
    float _2376 = (_2373 * _2374) * _2374;
    float3 _2381 = ((_1263 * (1.0f - _2376)) + _2376.xxx) * _1256;
    float3 _2382 = 1.0f.xxx - _2381;
    float _2385 = _1251 * _1251;
    float _2389 = (((_2370 * _2385) - _2370) * _2370) + 1.0f;
    float _2390 = _2389 * _2389;
    _2407 = lerp(1.0f.xxx, _2382, _1256.xxx);
    _2408 = (_2364 * (_2382 * _2382)) + clamp((_2381 * ((_2385 != _2390) ? (_2385 / _2390) : 1.0f)) * (0.5f / (((2.0f * _2372) + (_1251 * ((1.0f + _2372) - _2372))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
  } else {
    _2407 = 1.0f.xxx;
    _2408 = _2364;
  }
  float _2418 = (1.0f - _50_m6) + (_510 * _50_m6);
  float3 _2420 = (((_2297 * _2313) * _2407) * _2418) + ((_2408 * ((_2297 * (((_2319 * 0.5f) + 0.5f) * _2322)) * 1.0f)) * _19_m95.w);
  float _2421 = dot(_2420, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2424 = clamp(_2421 - 0.5f, 0.0f, 0.5f);
  float3 _2460 = normalize(cross(_599, lerp(float3(_19_m91.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m91.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m91.y), _19_m97.w.xxx)));
  float _2466 = dot(_463, _2110);
  float _2468 = 1.0f - abs(_2466);
  float _2490 = dot(_2178, _2110);
  float _2502 = 1.0f - _2211;
  float _2529 = lerp(_2111, _1977, _1976);
  float _2530 = _2529 * _2529;
  float _2531 = _2343 * _2343;
  float _2532 = _2531 * _2343;
  float2 _2533 = float2(1.0f, _2343);
  float2 _2536 = float2(1.0f, _2530);
  float3 _2539 = float3(1.0f, _2530, (_2530 * _2530) * _2530);
  float _2544 = dot(mul(_2533, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2536) / dot(mul(float3(1.0f, _2531, _2532), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2539);
  float _2549 = dot(mul(_2533, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2536) / dot(mul(float3(1.0f, _2343, _2532), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2539);
  float3 _2552 = (_2120 * _2544) + _2549.xxx;
  float _2553 = _2544 + _2549;
  float3 _2559 = -_463;
  float3 _2560 = reflect(_2559, _1975);
  float _2565 = _2560.x;
  float _2567 = _2560.z;
  float3 _2570 = _2560;
  _2570.x = (_2565 * _19_m98.y) + (_2567 * _19_m98.x);
  _2570.z = (_2567 * _19_m98.y) - (_2565 * _19_m98.x);
  float3 _2585 = _62.SampleLevel(_24, _2570, (1.2000000476837158203125f * log2(max(_2529, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2552 + ((_2120 * ((1.0f - _2553) / _2553)) * _2552)) * 1.0f);
  float3 _2641;
  if (_2365) {
    float3 _2588 = reflect(_2559, _1267);
    float _2589 = _2588.x;
    float _2591 = _2588.z;
    float3 _2594 = _2588;
    _2594.x = (_2589 * _19_m98.y) + (_2591 * _19_m98.x);
    _2594.z = (_2591 * _19_m98.y) - (_2589 * _19_m98.x);
    float _2609 = clamp(dot(_1267, _463), 0.0f, 1.0f);
    float _2610 = _2609 * _2609;
    float _2611 = _2610 * _2609;
    float2 _2612 = float2(1.0f, _2609);
    float2 _2615 = float2(1.0f, _1250);
    float3 _2618 = float3(1.0f, _1250, (_1250 * _1250) * _1250);
    float _2623 = dot(mul(_2612, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2615) / dot(mul(float3(1.0f, _2610, _2611), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2618);
    float _2628 = dot(mul(_2612, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2615) / dot(mul(float3(1.0f, _2609, _2611), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2618);
    float3 _2631 = (_1263 * _2623) + _2628.xxx;
    float _2632 = _2623 + _2628;
    _2641 = _2585 + ((_62.SampleLevel(_24, _2594, (1.2000000476837158203125f * log2(max(_1249, 0.001000000047497451305389404296875f))) + 5.0f).xyz * (_2631 + ((_1263 * ((1.0f - _2632) / _2632)) * _2631))) * _1256);
  } else {
    _2641 = _2585;
  }
  float3 _2648 = lerp(_2421.xxx, _2420, ((_2424 * _2424) + 1.0f).xxx) + (((((_19_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m91.w), lerp(0.89999997615814208984375f, 0.5f, _19_m91.w), _2468)) * _19_m90.w) * min(min(clamp(dot(_521, _2460) + 1.0f, 0.0f, 1.0f), _504), _2208)) * (lerp(0.25f.xxx, _2117, _19_m91.z.xxx) * clamp(dot(_2460, _2110), 0.0f, 1.0f))) + ((((((lerp(_1140 * (1.0f / max(max(max(_1140.x, _1140.y), _1140.z) * 0.5f, 1.0f)), _2194, _2296) * clamp(lerp(dot(_1139.xyz, _2110) * _1139.w, ((-_2490) * ((_2490 * 0.5f) - 1.0f)) + 0.5f, _2211), 0.0f, 1.0f)) * ((_2502 + (_2237 * _2211)) * _2241)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2468)) * min(_504, _2208)) * (_2502 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2224) * _2211))) * max(0.1500000059604644775390625f.xxx, _2117)));
  float2 _2651 = float2(_589);
  float2 _2653 = floor(_2651 * 0.03125f);
  int _2661 = int((_2653.x + (_2653.y * _35_m9)) * 8.0f);
  float _2668 = floor(_444 - (_19_m3.y * _35_m15));
  float _2672 = clamp(_2668, 0.0f, _35_m11 - 1.0f);
  int _2674 = int(_2672 * 8.0f);
  float3 _2676;
  _2676 = (_2648 + ((((_567.xyz * _50_m25.xyz) * _50_m7) + ((_50_m39.xyz * _1239.x) * _510)) * _2418)) + ((_2641 * ((clamp(_1142, 0.5f, 1.5f) * _19_m82.w) * _2322)) * _1141);
  float3 _2677;
  [loop] for (int _2679 = 0; _2679 <= 7; _2676 = _2677, _2679++) {
    uint _2700 = (_2668 <= _2672) ? (_29.Load(uint((_35_m2 + _2661) + _2679) * 4 + 0) & _29.Load(uint((_35_m3 + _2674) + _2679) * 4 + 0)) : 0u;
    uint _2701 = uint(_2679);
    _2677 = _2676;
    uint _2706;
    float3 _2703;
    [loop] for (uint _2705 = _2700; _2705 != 0u; _2677 = _2703, _2705 = _2706) {
      uint _2710 = firstbitlow(_2705);
      _2706 = _2705 ^ (1u << (_2710 & 31u));
      int _2716 = int((32u * _2701) + _2710) * 8;
      int _2719 = _2716 + 1;
      int _2722 = _2716 + 2;
      int _2725 = _2716 + 3;
      int _2728 = _2716 + 4;
      int _2731 = _2716 + 5;
      int _2734 = _2716 + 6;
      int _2737 = _2716 + 7;
      uint _2741 = uint(_33_m6[_2731].w);
      float _2816;
      if ((_2741 & 1u) == 1u) {
        uint _2747 = asuint(_33_m6[_2731].x);
        uint _2754 = asuint(_33_m6[_2731].y);
        uint _2761 = asuint(_33_m6[_2731].z);
        uint _2768 = asuint(_33_m6[_2734].x);
        uint _2775 = asuint(_33_m6[_2734].y);
        uint _2782 = asuint(_33_m6[_2734].z);
        float3 _2801 = abs(mul(float4(_514 - _33_m6[_2719].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2747).x, spvUnpackHalf2x16(_2761).x, spvUnpackHalf2x16(_2775).x, 0.0f), float4(spvUnpackHalf2x16(_2747 >> 16u).x, spvUnpackHalf2x16(_2761 >> 16u).x, spvUnpackHalf2x16(_2775 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2754).x, spvUnpackHalf2x16(_2768).x, spvUnpackHalf2x16(_2782).x, 0.0f), float4(spvUnpackHalf2x16(_2754 >> 16u).x, spvUnpackHalf2x16(_2768 >> 16u).x, spvUnpackHalf2x16(_2782 >> 16u).x, 0.0f))).xyz);
        float _2808 = _33_m6[_2737].x * 0.5f;
        float _2814 = 1.0f - clamp((max(max(_2801.x, _2801.y), _2801.z) - (_2808 + 0.5f)) / (0.5f - _2808), 0.0f, 1.0f);
        _2816 = _2814 * _2814;
      } else {
        _2816 = 1.0f;
      }
      if (false || (_2816 < 0.001000000047497451305389404296875f)) {
        _2703 = _2677;
        continue;
      }
      float3 _3648;
      do {
        uint _2824 = uint(_33_m6[_2716].w);
        [branch] if (_2824 >= 4u) {
          _3648 = _2677;
          break;
        }
        float3 _3647;
        if (_33_m6[_2716].w < 1.5f) {
          float3 _3646;
          do {
            uint _2835 = asuint(_33_m6[_2725].w);
            if ((_2835 == 16u) || ((_33_m6[_2725].z + _19_m94.z) < 0.5f)) {
              _3646 = _2677;
              break;
            }
            bool _2846 = (_2824 & 1u) == 0u;
            bool _2850 = (!_2846) && (_33_m6[_2722].z > 0.0f);
            bool _2851 = _2835 == 4u;
            float _2852 = float(_2846);
            float _2860 = (0.5f + (0.5f * _33_m6[_2722].y)) - abs(_33_m6[_2722].x);
            float _2861 = _33_m6[_2722].y - _2860;
            float _2868 = abs(max((1.0f - abs(_2860)) - abs(_2861), 0.00048828125f));
            float3 _2872 = normalize(float3(_2860, _2861, (_33_m6[_2722].x >= 0.0f) ? _2868 : (-_2868)));
            float _2878 = lerp(_33_m6[_2734].w, max(2.0f * _33_m6[_2728].y, 0.100000001490116119384765625f), float(_2851));
            float3 _2883 = _33_m6[_2719].xyz - _514;
            float3 _2884 = -_2872;
            float3 _2889 = lerp(_2883, _2884 * dot(_2883, _2884), (float(_2851 && (_33_m6[_2728].z > 0.5f)) * _2852).xxx);
            float _2890 = dot(_2889, _2889);
            float _2891 = rsqrt(_2890);
            float3 _2892 = _2889 * _2891;
            float3 _2925;
            float _2926;
            if (_2850) {
              float3 _2896 = (_2872 * _33_m6[_2722].z) * 0.5f;
              float3 _2897 = _2889 - _2896;
              float3 _2898 = _2889 + _2896;
              float _2899 = length(_2897);
              float _2900 = length(_2898);
              float3 _2909 = normalize(cross(cross(_2872, _2892), _2872));
              _2925 = _2909;
              _2926 = ((1.0f / ((((_2899 * _2900) + dot(_2897, _2898)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2909, _2897) / _2899) + (dot(_2909, _2898) / _2900)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_33_m6[_2722].z * _2891, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2925 = _2892;
              _2926 = 1.0f;
            }
            float _2948;
            if (_2878 < 0.0f) {
              float _2936 = _2890 * (_33_m6[_2719].w * _33_m6[_2719].w);
              float _2939 = clamp(1.0f - (_2936 * _2936), 0.0f, 1.0f);
              _2948 = lerp(1.0f / (_2890 + 1.0f), _2926, float(_2850)) * (_2939 * _2939);
            } else {
              float3 _2942 = _2889 * _33_m6[_2719].w;
              _2948 = _2926 * pow(1.0f - clamp(dot(_2942, _2942), 0.0f, 1.0f), _2878);
            }
            float _2953 = clamp((dot(_2925, _2884) - _33_m6[_2722].z) * _33_m6[_2722].w, 0.0f, 1.0f);
            float _2956 = _2948 * lerp(1.0f, _2953 * _2953, _2852);
            int _2958 = int(_33_m6[_2737].w);
            float _3062;
            if ((!_2850) && (_2958 >= 0)) {
              uint _2964 = uint(_2958);
              float2 _3055;
              [branch] if (_2852 != 0.0f) {
                float4 _2976 = mul(_65_m1[_2964], float4(_514.x, _631, _514.z, 1.0f));
                _3055 = _65_m0[_2964].xy + (clamp(_2976.xy / _2976.w.xx, 0.0f.xx, 1.0f.xx) * _65_m0[_2964].zw);
              }
              else {
                float3 _2996 = mul(float4(-_2889, 0.0f), _65_m1[_2964]).xyz;
                float3 _433 = _2996;
                float3 _432 = _2996;
                float3 _431 = abs(_2996);
                uint _3005 = uint(int(_431.y > _431.x));
                uint _3011 = (_431.z > _431[_3005]) ? 2u : _3005;
                uint _3017 = (_3011 * 2u) + uint(_432[_3011] < 0.0f);
                float _3021 = abs(_433[_3017 / 2u]);
                float _3041 = 0.5f - (0.000244140625f / _65_m0[_2964].w);
                _3055 = _65_m0[_2964].xy + (clamp(float2((float(_3017) + ((((_433[uint(_383[_3017].x)] * _384[_3017].x) / _3021) * _3041) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_433[uint(_383[_3017].y)] * _384[_3017].y) / _3021) * _3041)), 0.0f.xx, 1.0f.xx) * _65_m0[_2964].zw);
              }
              _3062 = _2956 * _63.SampleLevel(_24, _3055, 0.0f).x;
            } else {
              _3062 = _2956;
            }
            float _3063 = _3062 * _2816;
            float3 _3645;
            do {
              float3 _3644;
              [branch] if (_3063 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2851) {
                  _3645 = lerp(_2677, _33_m6[_2716].xyz, (_3063 * (_33_m6[_2728].x * ((1.0f - _33_m6[_2728].w) + (smoothstep(-0.5f, 0.5f, dot(_587, _2925)) * _33_m6[_2728].w)))).xxx);
                  break;
                }
                float _3083 = dot(_2110, _2925);
                float _3084 = clamp(_3083, 0.0f, 1.0f);
                float _3483;
                if (_2835 != 0u) {
                  bool _3090 = _2846 || ((_2741 & 2u) != 0u);
                  int _3140;
                  if (_3090) {
                    _3140 = int(_33_m6[_2725].x);
                  } else {
                    uint _3097 = asuint(_33_m6[_2722].w);
                    uint _3098 = asuint(_33_m6[_2725].x);
                    float3 _3099 = _514 - _33_m6[_2719].xyz;
                    float3 _3100 = abs(_3099);
                    float _3101 = _3100.x;
                    float _3102 = _3100.y;
                    float _3104 = _3100.z;
                    int _3137;
                    if ((_3101 > _3102) && (_3101 > _3104)) {
                      _3137 = int((_3099.x > 0.0f) ? (_3097 & 1023u) : ((_3097 >> 10u) & 1023u));
                    } else {
                      int _3136;
                      if (_3102 > _3104) {
                        _3136 = int((_3099.y > 0.0f) ? ((_3097 >> 20u) & 1023u) : (_3098 & 1023u));
                      } else {
                        _3136 = int((_3099.z > 0.0f) ? ((_3098 >> 10u) & 1023u) : ((_3098 >> 20u) & 1023u));
                      }
                      _3137 = _3136;
                    }
                    _3140 = (_3137 == 1023) ? (-1) : _3137;
                  }
                  bool _3141 = _3140 >= 0;
                  float _3482;
                  if (_3141) {
                    float3 _3145 = _514 - _33_m6[_2719].xyz;
                    uint _3155 = asuint(_37_m11.x) + (uint(_3140) * 96u);
                    uint _3157 = (_3155 + 64u) >> 2u;
                    uint _3160 = _3157 + 1u;
                    uint _3163 = _3157 + 2u;
                    uint _3166 = _3157 + 3u;
                    float4 _3170 = asfloat(uint4(_40.Load(_3157 * 4 + 0), _40.Load(_3160 * 4 + 0), _40.Load(_3163 * 4 + 0), _40.Load(_3166 * 4 + 0)));
                    uint _3178 = _3155 >> 2u;
                    uint _3193 = (_3155 + 16u) >> 2u;
                    uint _3208 = (_3155 + 32u) >> 2u;
                    uint _3223 = (_3155 + 48u) >> 2u;
                    float4 _3243 = mul(transpose(float4x4(asfloat(uint4(_40.Load(_3178 * 4 + 0), _40.Load((_3178 + 1u) * 4 + 0), _40.Load((_3178 + 2u) * 4 + 0), _40.Load((_3178 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3193 * 4 + 0), _40.Load((_3193 + 1u) * 4 + 0), _40.Load((_3193 + 2u) * 4 + 0), _40.Load((_3193 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3208 * 4 + 0), _40.Load((_3208 + 1u) * 4 + 0), _40.Load((_3208 + 2u) * 4 + 0), _40.Load((_3208 + 3u) * 4 + 0))), asfloat(uint4(_40.Load(_3223 * 4 + 0), _40.Load((_3223 + 1u) * 4 + 0), _40.Load((_3223 + 2u) * 4 + 0), _40.Load((_3223 + 3u) * 4 + 0))))), float4((_514 - ((_3145 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3145, _3145)))) * _3170.x)) + (_587 * (_3170.y * 5.0f)), 1.0f));
                    float3 _3247 = _3243.xyz / _3243.w.xxx;
                    uint _3249 = (_3155 + 80u) >> 2u;
                    float4 _3262 = asfloat(uint4(_40.Load(_3249 * 4 + 0), _40.Load((_3249 + 1u) * 4 + 0), _40.Load((_3249 + 2u) * 4 + 0), _40.Load((_3249 + 3u) * 4 + 0)));
                    float2 _3263 = _3247.xy;
                    float2 _3265 = _3262.xy;
                    float3 _3269 = _3247.xyz;
                    bool3 _3270 = bool3(_3269.x <= 0.0f.xxx.x, _3269.y <= 0.0f.xxx.y, _3269.z <= 0.0f.xxx.z);
                    bool3 _3271 = bool3(_3269.x >= 1.0f.xxx.x, _3269.y >= 1.0f.xxx.y, _3269.z >= 1.0f.xxx.z);
                    float _3274 = _3247.z;
                    float2 _3285 = ((_3263 * (_3262.zw - _3265)) + _3265).xy * _37_m10.zw;
                    float2 _3287 = floor(_3285 + 0.5f.xx);
                    float2 _3288 = _3285 - _3287;
                    float _3289 = _3288.x;
                    float _3290 = _3289 + 0.5f;
                    float _3291 = _3290 * _3290;
                    float _3294 = 1.0f - _3289;
                    float _3295 = min(_3289, 0.0f);
                    float _3298 = _3289 + 1.0f;
                    float _3299 = max(_3289, 0.0f);
                    float _3310 = _3288.y;
                    float _3311 = _3310 + 0.5f;
                    float _3312 = _3311 * _3311;
                    float _3315 = 1.0f - _3310;
                    float _3316 = min(_3310, 0.0f);
                    float _3319 = _3310 + 1.0f;
                    float _3320 = max(_3310, 0.0f);
                    float3 _3332 = float3(0.1599999964237213134765625f * _3294, 0.1599999964237213134765625f * ((_3298 - (_3299 * _3299)) + 1.0f), _3291 * 0.07999999821186065673828125f);
                    float3 _3333 = float3(0.1599999964237213134765625f * ((_3291 * 0.5f) - _3289), 0.1599999964237213134765625f * ((_3294 - (_3295 * _3295)) + 1.0f), 0.1599999964237213134765625f * _3298) + _3332;
                    float3 _3335 = float3(0.1599999964237213134765625f * _3315, 0.1599999964237213134765625f * ((_3319 - (_3320 * _3320)) + 1.0f), _3312 * 0.07999999821186065673828125f);
                    float3 _3336 = float3(0.1599999964237213134765625f * ((_3312 * 0.5f) - _3310), 0.1599999964237213134765625f * ((_3315 - (_3316 * _3316)) + 1.0f), 0.1599999964237213134765625f * _3319) + _3335;
                    float3 _3342 = ((_3332 / _3333) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.xxx;
                    float3 _3344 = ((_3335 / _3336) + float3(-2.5f, -0.5f, 1.5f)) * _37_m10.yyy;
                    float2 _3346 = _3287 * _37_m10.xy;
                    float _3347 = _3342.x;
                    float _3348 = _3344.x;
                    float _3351 = _3342.y;
                    float _3354 = _3342.z;
                    float _3357 = _3344.y;
                    float _3364 = _3344.z;
                    float _3371 = _3333.x;
                    float _3372 = _3336.x;
                    float _3374 = _3333.y;
                    float _3376 = _3333.z;
                    float _3378 = _3336.y;
                    float _3382 = _3336.z;
                    float _3440 = (((((((_3371 * _3372) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3347, _3348), _425).xy, _3274)) + ((_3374 * _3372) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3351, _3348), _425).xy, _3274))) + ((_3376 * _3372) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3354, _3348), _425).xy, _3274))) + ((_3371 * _3378) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3347, _3357), _425).xy, _3274))) + ((_3374 * _3378) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3351, _3357), _425).xy, _3274))) + ((_3376 * _3378) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3354, _3357), _425).xy, _3274))) + ((_3371 * _3382) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3347, _3364), _425).xy, _3274));
                    float4 _3463 = asfloat(uint4(_40.Load(_3157 * 4 + 0), _40.Load(_3160 * 4 + 0), _40.Load(_3163 * 4 + 0), _40.Load(_3166 * 4 + 0)));
                    float _3464 = _3463.w;
                    float2 _3466 = min(_3263, 1.0f.xx - _3263);
                    _3482 = _3141 ? lerp(1.0f, (any(bool3(_3270.x || _3271.x, _3270.y || _3271.y, _3270.z || _3271.z)) || ((asuint(_3274) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3440 + ((_3374 * _3382) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3351, _3364), _425).xy, _3274))) + ((_3376 * _3382) * _38.SampleCmpLevelZero(_26, float3(_3346 + float2(_3354, _3364), _425).xy, _3274))), _3090 ? min(_3464, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3463.z - _3243.w) * 0.25f, min(_3466.x, _3466.y)))) : _3464) : 1.0f;
                  } else {
                    _3482 = clamp(dot(_521, _2925) + 1.0f, 0.0f, 1.0f);
                  }
                  _3483 = _3482;
                } else {
                  _3483 = 1.0f;
                }
                float _3563;
                float3 _3564;
                float _3565;
                float3 _3566;
                float3 _3567;
                float _3568;
                float _3569;
                [branch] if (_2835 == 0u) {
                  float3 _3489 = _33_m6[_2716].xyz * _3063;
                  float3 _3502 = _2317.xyz;
                  _3563 = _3063;
                  _3564 = (_33_m6[_2716].xyz * ((1.0f - _33_m6[_2728].y) + ((1.0f / max(1.0f, max(max(_3489.x, _3489.y), _3489.z) * lerp(0.75f, 0.5f, _2502))) * _33_m6[_2728].y))) * lerp(0.25f * _33_m6[_2728].x, 1.0f, clamp(_3083 + 0.5f, 0.0f, 1.0f));
                  _3565 = _3084;
                  _3566 = _3502;
                  _3567 = _3502;
                  _3568 = 1.0f;
                  _3569 = 0.0f;
                }
                else {
                  float _3557;
                  float _3558;
                  float3 _3559;
                  float3 _3560;
                  float _3561;
                  float _3562;
                  if (_2835 == 3u) {
                    _3557 = _3063 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _33_m6[_2728].x), lerp(0.89999997615814208984375f, 0.5f, _33_m6[_2728].x), _2468) * _3483);
                    _3558 = clamp(dot(_2110, -normalize(cross(_599, cross(_599, _2925)))), 0.0f, 1.0f);
                    _3559 = lerp(0.5f.xxx, _2117, _33_m6[_2728].y.xxx);
                    _3560 = 0.0f.xxx;
                    _3561 = 1.0f;
                    _3562 = 0.0f;
                  } else {
                    bool _3527 = _2835 == 1u;
                    float _3551;
                    float3 _3552;
                    float _3553;
                    float _3554;
                    if (_3527) {
                      _3551 = clamp(clamp(_3083 + _33_m6[_2728].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3483;
                      _3552 = _2121 * _33_m6[_2728].y;
                      _3553 = 1.0f;
                      _3554 = 0.0f;
                    } else {
                      bool _3537 = _2835 == 2u;
                      float _3549;
                      if (_3537) {
                        _3549 = smoothstep(_33_m6[_2728].x + 0.0500000007450580596923828125f, _33_m6[_2728].x - 0.0500000007450580596923828125f, _2111) * ((1.0f - _33_m6[_2728].z) + (step(0.5f, _2114) * _33_m6[_2728].z));
                      } else {
                        _3549 = 1.0f;
                      }
                      _3551 = _3084;
                      _3552 = 0.0f.xxx;
                      _3553 = _3549;
                      _3554 = _3537 ? _33_m6[_2728].y : 0.0f;
                    }
                    bool3 _3555 = _3527.xxx;
                    _3557 = _3063;
                    _3558 = _3551;
                    _3559 = float3(_3555.x ? _2117.x : 0.0f.xxx.x, _3555.y ? _2117.y : 0.0f.xxx.y, _3555.z ? _2117.z : 0.0f.xxx.z);
                    _3560 = _3552;
                    _3561 = _3553;
                    _3562 = _3554;
                  }
                  _3563 = _3557;
                  _3564 = _33_m6[_2716].xyz;
                  _3565 = _3558;
                  _3566 = _3559;
                  _3567 = _3560;
                  _3568 = _3561;
                  _3569 = _3562;
                }
                float3 _3634;
                [branch] if (_2835 != 3u) {
                  float _3574 = lerp(_2123, 0.00999999977648258209228515625f, _3569);
                  float3 _3576 = normalize(_2925 + _463);
                  float _3577 = dot(_1975, _3576);
                  float _3578 = _3574 * _3574;
                  float _3582 = (((_3577 * _3578) - _3577) * _3577) + 1.0f;
                  float _3583 = _3582 * _3582;
                  float3 _3594 = _2120 * clamp((((_3578 != _3583) ? (_3578 / _3583) : 1.0f) * (0.5f / ((_2354 + (_3574 * _2356)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f);
                  float3 _3631;
                  if (_2365) {
                    float _3599 = dot(_1267, _3576);
                    float _3601 = clamp(dot(_1267, _463), 0.0f, 1.0f);
                    float _3602 = 1.0f - clamp(dot(_463, _3576), 0.0f, 1.0f);
                    float _3603 = _3602 * _3602;
                    float _3605 = (_3602 * _3603) * _3603;
                    float _3611 = _1251 * _1251;
                    float _3615 = (((_3599 * _3611) - _3599) * _3599) + 1.0f;
                    float _3616 = _3615 * _3615;
                    _3631 = _3594 + clamp(((((_1263 * (1.0f - _3605)) + _3605.xxx) * _1256) * ((_3611 != _3616) ? (_3611 / _3616) : 1.0f)) * (0.5f / (((2.0f * _3601) + (_1251 * ((1.0f + _3601) - _3601))) + 9.9999997473787516355514526367188e-05f)), 0.0f.xxx, 20.0f.xxx);
                  } else {
                    _3631 = _3594;
                  }
                  _3634 = (_3631 * _3568) * _33_m6[_2737].z;
                }
                else {
                  _3634 = 0.0f.xxx;
                }
                float3 _3637 = _3564 * _3563;
                _3644 = _2677 + (((_3637 * lerp(_3567, _3566, _3565.xxx)) * _2418) + ((_3637 * _3634) * _3565));
              }
              else {
                _3644 = _2677;
              }
              _3645 = _3644;
              break;
            } while (false);
            _3646 = _3645;
            break;
          } while (false);
          _3647 = _3646;
        } else {
          _3647 = _2677;
        }
        _3648 = _3647;
        break;
      } while (false);
      _2703 = _3648;
    }
  }
  float3 _3688;
  [branch] if (_50_m12 > 0.5f) {
    _3688 = lerp(lerp(0.5f.xxx, lerp(dot(_2676, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2676, _50_m14.xxx), _50_m15.xxx) * _50_m13, _50_m26.xyz, _50_m26.w.xxx) + ((_50_m27.xyz * smoothstep(1.0f - _50_m16, 1.0f, 1.0f - clamp(_2466, 0.0f, 1.0f))) * _50_m17);
  }
  else {
    _3688 = _2676;
  }
  float4 _3695 = float4(_3688 * _19_m20.y, _510);
  _3695.w = (_50_m8 == 1.0f) ? _510 : 1.0f;
  float4 _4082;
  [branch] if (_19_m94.w < 0.5f) {
    float _3719 = _631 * _19_m46.w;
    float _3724 = max(0.00999999977648258209228515625f, _3719 + _19_m47.w);
    float3 _3738 = exp(_19_m45.xyz * ((-max(0.0f, (_464 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_3724)) / _3724) * exp(_3719 + _19_m48.w))));
    float _3741 = dot(_2559, _19_m44.xyz);
    float _3747 = _19_m45.w * _19_m45.w;
    float _3751 = (1.0f + _3747) - ((2.0f * _19_m45.w) * _3741);
    float3 _4074;
    float _4075;
    if (_19_m55.z > 0.0f) {
      uint3 _3796 = (uint3(int3(_2198, _2199, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3797 = _3796.y;
      uint _3798 = _3796.z;
      uint _3801 = _3796.x + (_3797 * _3798);
      uint _3803 = _3797 + (_3798 * _3801);
      uint _3805 = _3798 + (_3801 * _3803);
      uint _3807 = _3801 + (_3803 * _3805);
      float _3832 = dot(_2559, -_17_m0[2].xyz);
      float3 _3839 = _514 - _17_m11.xyz;
      float _3841 = (_19_m55.w * ((_3832 > 5.9604644775390625e-08f) ? (1.0f / _3832) : 0.0f)) * (1.0f / _464);
      float _3842 = _3839.y;
      float _3843 = _3841 * _3842;
      float _3845 = _17_m11.y + _3843;
      float _3846 = _3842 - _3843;
      float _3848 = (1.0f - _3841) * _464;
      float _3862 = max(-127.0f, _19_m49.z * _3846);
      float _3886 = max(-127.0f, _19_m52.x * _3846);
      float _3897 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_3845 - _19_m49.x)))) * ((abs(_3862) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3862)) / _3862) : (0.693147182464599609375f - (0.2402265071868896484375f * _3862)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_3845 - _19_m52.z)))) * ((abs(_3886) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3886)) / _3886) : (0.693147182464599609375f - (0.2402265071868896484375f * _3886))));
      float _3919 = clamp((_464 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _3922 = clamp((max(clamp(exp2(-(_3897 * _3848)), 0.0f, 1.0f), _19_m51.w) + clamp((_464 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3919, 0.0f, 1.0f);
      float4 _3962 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _68.SampleLevel(_24, float3((_2651 + ((((float3(uint3(_3807, _3803 + (_3805 * _3807), _429) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_444 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_444 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _4074 = _3962.xyz + (((_19_m51.xyz * (1.0f - _3922)) + (((_19_m54.xyz * pow(clamp(dot(_463, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_3897 * max(_3848 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3919))) * _3962.w);
      _4075 = _3962.w * _3922;
    } else {
      float3 _3968 = _514 - _17_m11.xyz;
      float _3970 = _3968.y;
      float _3984 = max(-127.0f, _19_m49.z * _3970);
      float _4008 = max(-127.0f, _19_m52.x * _3970);
      float _4019 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_3984) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3984)) / _3984) : (0.693147182464599609375f - (0.2402265071868896484375f * _3984)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_4008) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4008)) / _4008) : (0.693147182464599609375f - (0.2402265071868896484375f * _4008))));
      float _4041 = clamp((_464 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
      float _4044 = clamp((max(clamp(exp2(-(_4019 * _464)), 0.0f, 1.0f), _19_m51.w) + clamp((_464 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _4041, 0.0f, 1.0f);
      _4074 = (_19_m51.xyz * (1.0f - _4044)) + (((_19_m54.xyz * pow(clamp(dot(_463, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_4019 * max(_464 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4041));
      _4075 = _4044;
    }
    float3 _4080 = (_3695.xyz * (_3738 * _4075)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3741 * _3741)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _3747) / max((12.56637096405029296875f * _3751) * sqrt(_3751), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3738)) * _4075) + _4074);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _4080 = (_4080 * 0.65f) + (_3695.xyz * 0.35f);
    }
    // RenoDX code end
    _4082 = float4(_4080.x, _4080.y, _4080.z, _3695.w);
  }
  else {
    _4082 = _3695;
  }
  _14 = _4082;
  _15 = _2161;
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

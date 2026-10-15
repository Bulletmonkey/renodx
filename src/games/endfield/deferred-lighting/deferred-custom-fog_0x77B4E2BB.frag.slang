#include "./renodx_injection.hlsli"

// Ported from the native 0x77B4E2BB Vulkan dump.
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

static float3 _388;
static float _389;
static float3 _390;
static float _394;
static uint _395;

static const int2 _366[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _367[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(54, 0)]] ByteAddressBuffer _32 : register(t54, space0);
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

[[vk::binding(50, 0)]] cbuffer _37_38 : register(b50, space0) {
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

[[vk::binding(53, 0)]] ByteAddressBuffer _43 : register(t53, space0);
[[vk::binding(0, 1)]] cbuffer _52_53 : register(b0, space1) {
  float _53_m0 : packoffset(c0);
  float _53_m1 : packoffset(c0.y);
  float _53_m2 : packoffset(c0.z);
  float _53_m3 : packoffset(c0.w);
  float _53_m4 : packoffset(c1);
  float _53_m5 : packoffset(c1.y);
  float _53_m6 : packoffset(c1.z);
  float _53_m7 : packoffset(c1.w);
  float _53_m8 : packoffset(c2);
  float _53_m9 : packoffset(c2.y);
  float _53_m10 : packoffset(c2.z);
  float _53_m11 : packoffset(c2.w);
  float _53_m12 : packoffset(c3);
  float _53_m13 : packoffset(c3.y);
  float _53_m14 : packoffset(c3.z);
  float _53_m15 : packoffset(c3.w);
  float _53_m16 : packoffset(c4);
  float _53_m17 : packoffset(c4.y);
  float _53_m18 : packoffset(c4.z);
  float _53_m19 : packoffset(c4.w);
  float _53_m20 : packoffset(c5);
  float _53_m21 : packoffset(c5.y);
  float _53_m22 : packoffset(c5.z);
  float _53_m23 : packoffset(c5.w);
  float4 _53_m24 : packoffset(c6);
  float4 _53_m25 : packoffset(c7);
  float4 _53_m26 : packoffset(c8);
  float4 _53_m27 : packoffset(c9);
  float4 _53_m28 : packoffset(c10);
  float4 _53_m29 : packoffset(c11);
  float _53_m30 : packoffset(c12);
  float _53_m31 : packoffset(c12.y);
  float _53_m32 : packoffset(c12.z);
  float _53_m33 : packoffset(c12.w);
  float _53_m34 : packoffset(c13);
  float _53_m35 : packoffset(c13.y);
  float _53_m36 : packoffset(c13.z);
  float _53_m37 : packoffset(c13.w);
  float _53_m38 : packoffset(c14);
  float _53_m39 : packoffset(c14.y);
  float _53_m40 : packoffset(c14.z);
  float _53_m41 : packoffset(c14.w);
  float4 _53_m42 : packoffset(c15);
  float _53_m43 : packoffset(c16);
  float _53_m44 : packoffset(c16.y);
  float _53_m45 : packoffset(c16.z);
  float _53_m46 : packoffset(c16.w);
  float4 _53_m47 : packoffset(c17);
  float4 _53_m48 : packoffset(c18);
  float4 _53_m49 : packoffset(c19);
  float4 _53_m50 : packoffset(c20);
  float4 _53_m51 : packoffset(c21);
  float4 _53_m52 : packoffset(c22);
  float _53_m53 : packoffset(c23);
  float _53_m54 : packoffset(c23.y);
  float _53_m55 : packoffset(c23.z);
  float _53_m56 : packoffset(c23.w);
  float _53_m57 : packoffset(c24);
  float _53_m58 : packoffset(c24.y);
  float _53_m59 : packoffset(c24.z);
  float _53_m60 : packoffset(c24.w);
};

[[vk::binding(52, 0)]] cbuffer _61_62 : register(b52, space0) {
  float4 _62_m0[32] : packoffset(c0);
  column_major float4x4 _62_m1[32] : packoffset(c32);
};

[[vk::binding(3, 0)]] SamplerState _25 : register(s3, space0);
[[vk::binding(5, 0)]] SamplerState _26 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _27 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _28 : register(s6, space0);
[[vk::binding(48, 0)]] Texture2D<float4> _30 : register(t48, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _41 : register(t27, space0);
[[vk::binding(22, 0)]] Texture2D<float4> _44 : register(t22, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _46 : register(t37, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _47 : register(t34, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _48 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _49 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _50 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _51 : register(t32, space0);
[[vk::binding(4, 1)]] Texture2D<float4> _54 : register(t4, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _55 : register(t2, space1);
[[vk::binding(41, 0)]] Texture2D<float4> _56 : register(t41, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _57 : register(t5, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _58 : register(t3, space1);
[[vk::binding(1, 1)]] Texture2D<float4> _59 : register(t1, space1);
[[vk::binding(29, 0)]] Texture2D<float4> _60 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _65 : register(t38, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float4 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static float4 _10;
static float3 _11;
static uint _13;
static float4 _15;
static float4 _16;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _3 : TEXCOORD0;
  [[vk::location(1)]] float3 _4 : TEXCOORD1;
  [[vk::location(2)]] float3 _5 : TEXCOORD2;
  [[vk::location(3)]] float4 _6 : TEXCOORD3;
  [[vk::location(4)]] float3 _7 : TEXCOORD4;
  [[vk::location(5)]] float3 _8 : TEXCOORD5;
  [[vk::location(6)]] float3 _9 : TEXCOORD6;
  [[vk::location(7)]] float4 _10 : TEXCOORD7;
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
  float _411 = 1.0f / gl_FragCoord.w;
  float3 _426 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
  float _427 = dot(_426, _426);
  float _429 = rsqrt(max(_427, 9.9999999392252902907785028219223e-09f));
  float3 _430 = _426 * _429;
  float _431 = _427 * _429;
  uint _434 = asuint(_23_m0[_13]._m2.x);
  bool _439 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
  float4 _456;
  float4 _457;
  float4 _458;
  if (_439) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0x77B4E2BB:
    _456 = asfloat(_34_Load4((_434 + 2u) * 16 + 0));
    _457 = asfloat(_34_Load4((_434 + 1u) * 16 + 0));
    _458 = asfloat(_34_Load4(_434 * 16 + 0));
    */
    _456 = asfloat(_34_Load4((_434 + 2u) * 16 + 0));
    _457 = asfloat(_34_Load4((_434 + 1u) * 16 + 0));
    _458 = asfloat(_34_Load4(_434 * 16 + 0));
    // RenoDX code end
  } else {
    _456 = _23_m0[_13]._m0[2];
    _457 = _23_m0[_13]._m0[1];
    _458 = _23_m0[_13]._m0[0];
  }
  float4 _464 = _57.SampleBias(_27, _3, _20_m16);
  float3 _469 = _464.xyz * _53_m24.xyz;
  float4 _473 = _58.SampleBias(_27, _3, _20_m16);
  float _474 = _473.x;
  float _475 = _473.y;
  float _476 = _473.z;
  float _480 = _464.w * _53_m24.w;
  float3 _484 = _4 + _18_m11.xyz;
  float3 _488 = _484 - float3(_458.w, _394, _456.w);
  _488.y = 6.103515625e-05f;
  float3 _491 = normalize(_488);
  float3 _497 = _6.xyz * 1.0f;
  float3 _498 = (cross(_5, _6.xyz) * _6.w) * 1.0f;
  float3 _499 = _5 * 1.0f;
  float3x3 _500 = float3x3(_497, _498, _499);
  float4 _504 = _59.SampleBias(_27, _3, _20_m16);
  float2 _509 = (_504.xy * 2.0f) - 1.0f.xx;
  float3 _510 = float3(_509.x, _509.y, _390.z);
  float2 _511 = _509.xy;
  _510.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_511, _511), 0.0f, 1.0f)));
  float2 _519 = _510.xy * _53_m3;
  float2 _525 = (_504.zw * 2.0f) - 1.0f.xx;
  float3 _526 = float3(_525.x, _525.y, _390.z);
  float2 _527 = _525.xy;
  _526.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_527, _527), 0.0f, 1.0f)));
  float2 _535 = _526.xy * _53_m31;
  float3 _538 = normalize(mul(float3(_535.x, _535.y, _526.z), _500));
  float3 _556 = _469 * _53_m18;
  float3 _560 = lerp(dot(_556, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _556, _53_m19.xxx);
  float3 _561 = mul(float3(_519.x, _519.y, _510.z), _500);
  float _570 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _53_m5));
  float3 _571 = (_561 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_561, _561)))) * _570;
  float3 _572 = normalize(_5) * _570;
  float3x3 _579 = float3x3(_458.xyz, _457.xyz, _456.xyz);
  float3 _580 = mul(_579, float3(_53_m39, 1.0f, 0.0f));
  float3 _592 = cross(_538, lerp(cross(_538, (_580 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_580, _580)))).xyz), _6.xyz, _474.xxx).xyz) * lerp(1.0f, _6.w, _474);
  float3 _594 = mul(_430, _579);
  float _603 = pow(clamp(dot(normalize(mul(_538, _579).xz), normalize(_594.xz)), 0.0f, 1.0f), _53_m37);
  float2 _608 = gl_FragCoord.xy * _20_m0.zw;
  uint2 _609 = uint2(gl_FragCoord.xy);
  float3 _619 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _628 = asuint((_20_m92.x > 0.5f) ? _20_m92.y : _23_m0[_13]._m7.x);
  float4 _641 = float4(float(_628 & 255u), float((_628 >> 8u) & 255u), float((_628 >> 16u) & 255u), float((_628 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _642 = _641.x;
  float _645 = _641.w;
  float _651 = _484.y;
  float _655 = max(_641.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m92.w, _20_m92.x) - _651) * _641.y);
  float _656 = max(_642, _655);
  float _664 = lerp(_20_m22.x, 1.0f, _20_m94.w) * _20_m20.x;
  float4 _1159;
  float3 _1160;
  float3 _1161;
  float _1162;
  if (_20_m83.y < 0.5f) {
    float3 _682 = _484 - (_20_m108.xyz + (_619 * (-_20_m110.w)));
    float _697 = max(min(max((max(abs(_682.x), abs(_682.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_682.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _999;
    float4 _1000;
    float4 _1001;
    float _1002;
    float _1003;
    if ((_20_m108.w != 0.0f) && (_697 < 1.0f)) {
      float3 _710 = _484 - (_20_m108.xyz + (_619 * (-_20_m110.y)));
      float _724 = max(clamp((max(abs(_710.x), abs(_710.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_710.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _800;
      float4 _801;
      float4 _802;
      float4 _803;
      if (_724 < 1.0f) {
        float3 _733 = ((_484 * 2.0f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _735 = _733 - floor(_733);
        float4 _739 = _46.SampleLevel(_27, _735, 0.0f);
        float _740 = 1.0f - _724;
        float _744 = _20_m109.y * 0.5f;
        float _749 = _735.x;
        float _750 = clamp(_735.y, _744, 1.0f - _744) * 0.3333333432674407958984375f;
        float _751 = _735.z;
        float4 _754 = _47.SampleLevel(_26, float3(_749, _750, _751), 0.0f);
        float _770 = _739.x;
        float _780 = _739.y;
        float _790 = _739.z;
        _800 = _697 + (_754.w * _740);
        _801 = float4(((_47.SampleLevel(_26, float3(_749, _750 + 0.666666686534881591796875f, _751), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _790, _790) * _740;
        _802 = float4(((_47.SampleLevel(_26, float3(_749, _750 + 0.3333333432674407958984375f, _751), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _780, _780) * _740;
        _803 = float4(((_754.xyz * 4.0f) - 2.0f.xxx) * _770, _770) * _740;
      } else {
        _800 = _697;
        _801 = 0.0f.xxxx;
        _802 = 0.0f.xxxx;
        _803 = 0.0f.xxxx;
      }
      float3 _809 = _484 - (_20_m108.xyz + (_619 * (-_20_m110.z)));
      float _823 = max(clamp((max(abs(_809.x), abs(_809.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_809.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _903;
      float4 _904;
      float4 _905;
      float4 _906;
      if (_823 < 1.0f) {
        float3 _832 = ((_484 * 0.5f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _834 = _832 - floor(_832);
        float4 _838 = _48.SampleLevel(_27, _834, 0.0f);
        float _840 = _724 * (1.0f - _823);
        float _844 = _20_m109.y * 0.5f;
        float _849 = _834.x;
        float _850 = clamp(_834.y, _844, 1.0f - _844) * 0.3333333432674407958984375f;
        float _851 = _834.z;
        float4 _854 = _49.SampleLevel(_26, float3(_849, _850, _851), 0.0f);
        float _870 = _838.x;
        float _881 = _838.y;
        float _892 = _838.z;
        _903 = _800 + (_854.w * _840);
        _904 = _801 + (float4(((_49.SampleLevel(_26, float3(_849, _850 + 0.666666686534881591796875f, _851), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _892, _892) * _840);
        _905 = _802 + (float4(((_49.SampleLevel(_26, float3(_849, _850 + 0.3333333432674407958984375f, _851), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _881, _881) * _840);
        _906 = _803 + (float4(((_854.xyz * 4.0f) - 2.0f.xxx) * _870, _870) * _840);
      } else {
        _903 = _800;
        _904 = _801;
        _905 = _802;
        _906 = _803;
      }
      float4 _989;
      float4 _990;
      float4 _991;
      float _992;
      if (_823 > 0.0f) {
        float3 _915 = ((_484 * 0.125f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _918 = _20_m109.xyz * 0.5f;
        float3 _920 = clamp(_915 - floor(_915), _918, 1.0f.xxx - _918);
        float4 _924 = _50.SampleLevel(_27, _920, 0.0f);
        float _926 = _823 * (1.0f - _697);
        float _930 = _20_m109.y * 0.5f;
        float _935 = _920.x;
        float _936 = clamp(_920.y, _930, 1.0f - _930) * 0.3333333432674407958984375f;
        float _937 = _920.z;
        float4 _940 = _51.SampleLevel(_26, float3(_935, _936, _937), 0.0f);
        float _956 = _924.x;
        float _967 = _924.y;
        float _978 = _924.z;
        _989 = _904 + (float4(((_51.SampleLevel(_26, float3(_935, _936 + 0.666666686534881591796875f, _937), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _978, _978) * _926);
        _990 = _905 + (float4(((_51.SampleLevel(_26, float3(_935, _936 + 0.3333333432674407958984375f, _937), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _967, _967) * _926);
        _991 = _906 + (float4(((_940.xyz * 4.0f) - 2.0f.xxx) * _956, _956) * _926);
        _992 = _903 + (_940.w * _926);
      } else {
        _989 = _904;
        _990 = _905;
        _991 = _906;
        _992 = _903;
      }
      float _995 = clamp((_992 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _999 = _989;
      _1000 = _990;
      _1001 = _991;
      _1002 = _995 - _697;
      _1003 = (_995 + _697) * 0.5f;
    } else {
      _999 = 0.0f.xxxx;
      _1000 = 0.0f.xxxx;
      _1001 = 0.0f.xxxx;
      _1002 = 0.0f;
      _1003 = 1.0f;
    }
    float4 _1023 = _1001 + float4(_20_m111.x * _1003, (_20_m111.y * _1003) + ((_20_m111.w * _1002) * 0.5f), _20_m111.z * _1003, (_20_m111.w * _1003) + ((_20_m111.y * _1002) * 0.375f));
    float4 _1043 = _1000 + float4(_20_m112.x * _1003, (_20_m112.y * _1003) + ((_20_m112.w * _1002) * 0.5f), _20_m112.z * _1003, (_20_m112.w * _1003) + ((_20_m112.y * _1002) * 0.375f));
    float4 _1063 = _999 + float4(_20_m113.x * _1003, (_20_m113.y * _1003) + ((_20_m113.w * _1002) * 0.5f), _20_m113.z * _1003, (_20_m113.w * _1003) + ((_20_m113.y * _1002) * 0.375f));
    float4 _1067 = float4(_571, 1.0f);
    float3 _1073 = max(float3(dot(_1023, _1067), dot(_1043, _1067), dot(_1063, _1067)), 0.0f.xxx) * _664;
    float3 _1081 = ((_1023.xyz * 0.2125999927520751953125f) + (_1043.xyz * 0.715200006961822509765625f)) + (_1063.xyz * 0.072200000286102294921875f);
    float3 _1085 = _1081 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1081, _1081)));
    float _1087 = abs(_1085.y);
    float3 _1088 = _1085;
    _1088.y = _1087;
    float4 _1089 = float4(_1088.x, _1088.y, _1088.z, 0.0f.xxxx.w);
    _1089.w = 1.0f;
    float4 _1093 = float4(_1085.x, _1087, _1085.z, 1.0f);
    float3 _1098 = max(float3(dot(_1023, _1093), dot(_1043, _1093), dot(_1063, _1093)), 0.0f.xxx);
    float _1106 = _1073.z;
    float _1107 = _1073.y;
    float4 _1112 = lerp(float4(_1106, _1107, -1.0f, 0.666666686534881591796875f), float4(_1107, _1106, 0.0f, -0.3333333432674407958984375f), step(_1106, _1107).xxxx);
    float _1113 = _1073.x;
    float _1114 = _1112.x;
    float4 _1122 = lerp(float4(_1114, _1112.yw, _1113), float4(_1113, _1112.yz, _1114), step(_1114, _1113).xxxx);
    float _1123 = _1122.x;
    float _1124 = _1122.w;
    float _1125 = _1122.y;
    float _1127 = _1123 - min(_1124, _1125);
    float _1137 = frac(abs(_1122.z + ((_1124 - _1125) / ((6.0f * _1127) + 9.9999997473787516355514526367188e-05f))));
    float _1144 = min(_1127 / (_1123 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1137 - 0.5f))) * clamp(_1123, 0.0f, 1.0f));
    float _1146 = 2.0f / (2.0f - _1144);
    _1159 = _1089;
    _1160 = _1073;
    _1161 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1137, _1144, _1146).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1144.xxx) * _1146;
    _1162 = max(max(max(_1098.x, _1098.y), _1098.z), 0.0f) * _664;
  } else {
    _1159 = 0.0f.xxxx;
    _1160 = 1.0f.xxx;
    _1161 = _20_m84.xyz;
    _1162 = _664;
  }
  float3 _1969;
  float _1970;
  float _1971;
  float _1972;
  float _1973;
  float3 _1974;
  float3 _1975;
  [branch] if ((clamp(_642 + _655, 0.0f, 1.0f) - _53_m20) > 0.00999999977648258209228515625f) {
    float _1319;
    bool _1320;
    bool _1189 = (step(_642, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _655)) != 0.0f;
    bool3 _1190 = _439.xxx;
    float3 _1192 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1196 = float3(_1190.x ? _1192.x : _11.x, _1190.y ? _1192.y : _11.y, _1190.z ? _1192.z : _11.z) * _20_m92.z;
    float3 _1206 = float3(0.0f, -1.0f, 0.0f) + (_499 * _499.y);
    float3 _1214 = ((_10.xyz * dot(_1206, _497)) + ((cross(_9, _10.xyz) * _10.w) * dot(_1206, _498))) + (_9 * dot(_1206, _499));
    float3 _1216 = _1214.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1217 = float3(_1190.x ? _1216.x : _1214.x, _1190.y ? _1216.y : _1214.y, _1190.z ? _1216.z : _1214.z);
    bool _1218 = !_1189;
    bool2 _1219 = _1218.xx;
    float2 _1221 = (1.0f - _655).xx;
    float2 _1222 = float2(_1219.x ? float2(3.0f, 4.340000152587890625f).x : _1221.x, _1219.y ? float2(3.0f, 4.340000152587890625f).y : _1221.y);
    float _1225 = 1.0f - ((_1189 ? _655 : _642) * 0.64999997615814208984375f);
    float3 _1233 = frac(floor(((_3.xx * _20_m92.z) * 32.0f) * 1.5f).xyx * 0.103100001811981201171875f);
    float3 _1238 = _1233 + dot(_1233, _1233.yzx + 33.3300018310546875f.xxx).xxx;
    float _1255 = lerp(0.60000002384185791015625f, 1.0f, clamp((1.2000000476837158203125f * frac((_1196.y * (-3.0f)) + frac((_1238.x + _1238.y) * _1238.z))) + clamp(_1196.z * 10.0f, 0.0f, 1.0f), 0.0f, 1.0f));
    float _1256 = 1.0f - _656;
    float _1258 = _1256 + (0.800000011920928955078125f * _656);
    float _1261 = _1218 ? _20_m10.x : 1.0f;
    float _1263 = _1261 * _1222.x;
    float _1265 = _1261 * _1222.y;
    float3 _1266 = _1196 * 32.0f;
    float3 _1267 = _1196 * 48.345600128173828125f;
    float3 _1271 = pow(max(abs(float3(_1190.x ? _9.xzy.x : _9.x, _1190.y ? _9.xzy.y : _9.y, _1190.z ? _9.xzy.z : _9.z)) - 0.20000000298023223876953125f.xxx, 0.0f.xxx), 10.0f.xxx);
    float3 _1275 = _1271 / max(dot(_1271, 1.0f.xxx), 6.103515625e-05f).xxx;
    float2 _1277 = _1217.xz;
    float _1278 = _1275.y;
    float2 _1279 = _1266.xz * 1.0f;
    float2 _1280 = floor(_1279);
    float2 _1283 = frac(_1280 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1287 = _1283 + dot(_1283, _1283 + 34.345001220703125f.xx).xx;
    float _1288 = _1287.x;
    float _1289 = _1287.y;
    float2 _1293 = frac(float2(_1288 * _1289, _1288 + _1289));
    float2 _1296 = frac((_1280 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1300 = _1296 + dot(_1296, _1296 + 34.345001220703125f.xx).xx;
    float _1301 = _1300.x;
    float _1302 = _1300.y;
    float2 _1306 = frac(float2(_1301 * _1302, _1301 + _1302));
    float _1312 = _1293.x;
    float _1315 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1312)) * _1255;
    float2 _1316 = ((_1279 - _1280) + ((((_1306 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1333;
    do {
      _1319 = dot(_1277, _1277);
      _1320 = _1319 <= 9.9999997473787516355514526367188e-06f;
      if (_1320) {
        _1333 = _1316;
        break;
      }
      float2 _1324 = _1277 * rsqrt(_1319);
      _1333 = float2(dot(_1316, float2(-_1324.y, _1324.x)), -dot(_1316, _1324));
      break;
    } while (false);
    float _1416;
    bool _1417;
    float2 _1340 = float2(_1333.x * 1.25f, _1333.y * ((_1333.y < 0.0f) ? 1.25f : 0.75f));
    float _1341 = length(_1340);
    float _1343 = _1263 + _1312;
    float _1347 = _1218 ? frac(_1343) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1343, 0.0f, 1.0f));
    float _1359 = _1293.y;
    float _1362 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1347) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1347)) * step(0.001000000047497451305389404296875f, smoothstep(_1315, 0.0f, _1341))) * step(_1225, _1359 - 0.100000001490116119384765625f);
    float _1365 = _1362 * _1278;
    float2 _1374 = _1217.xy;
    float _1375 = _1275.z;
    float2 _1376 = _1266.xy * 1.0f;
    float2 _1377 = floor(_1376);
    float2 _1380 = frac(_1377 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1384 = _1380 + dot(_1380, _1380 + 34.345001220703125f.xx).xx;
    float _1385 = _1384.x;
    float _1386 = _1384.y;
    float2 _1390 = frac(float2(_1385 * _1386, _1385 + _1386));
    float2 _1393 = frac((_1377 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1397 = _1393 + dot(_1393, _1393 + 34.345001220703125f.xx).xx;
    float _1398 = _1397.x;
    float _1399 = _1397.y;
    float2 _1403 = frac(float2(_1398 * _1399, _1398 + _1399));
    float _1409 = _1390.x;
    float _1412 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1409)) * _1255;
    float2 _1413 = ((_1376 - _1377) + ((((_1403 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1430;
    do {
      _1416 = dot(_1374, _1374);
      _1417 = _1416 <= 9.9999997473787516355514526367188e-06f;
      if (_1417) {
        _1430 = _1413;
        break;
      }
      float2 _1421 = _1374 * rsqrt(_1416);
      _1430 = float2(dot(_1413, float2(-_1421.y, _1421.x)), -dot(_1413, _1421));
      break;
    } while (false);
    float _1513;
    bool _1514;
    float2 _1437 = float2(_1430.x * 1.25f, _1430.y * ((_1430.y < 0.0f) ? 1.25f : 0.75f));
    float _1438 = length(_1437);
    float _1440 = _1263 + _1409;
    float _1444 = _1218 ? frac(_1440) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1440, 0.0f, 1.0f));
    float _1456 = _1390.y;
    float _1459 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1444) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1444)) * step(0.001000000047497451305389404296875f, smoothstep(_1412, 0.0f, _1438))) * step(_1225, _1456 - 0.100000001490116119384765625f);
    float _1462 = _1459 * _1375;
    float2 _1471 = _1217.zy;
    float _1472 = _1275.x;
    float2 _1473 = _1266.zy * 1.0f;
    float2 _1474 = floor(_1473);
    float2 _1477 = frac(_1474 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1481 = _1477 + dot(_1477, _1477 + 34.345001220703125f.xx).xx;
    float _1482 = _1481.x;
    float _1483 = _1481.y;
    float2 _1487 = frac(float2(_1482 * _1483, _1482 + _1483));
    float2 _1490 = frac((_1474 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1494 = _1490 + dot(_1490, _1490 + 34.345001220703125f.xx).xx;
    float _1495 = _1494.x;
    float _1496 = _1494.y;
    float2 _1500 = frac(float2(_1495 * _1496, _1495 + _1496));
    float _1506 = _1487.x;
    float _1509 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1506)) * _1255;
    float2 _1510 = ((_1473 - _1474) + ((((_1500 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1527;
    do {
      _1513 = dot(_1471, _1471);
      _1514 = _1513 <= 9.9999997473787516355514526367188e-06f;
      if (_1514) {
        _1527 = _1510;
        break;
      }
      float2 _1518 = _1471 * rsqrt(_1513);
      _1527 = float2(dot(_1510, float2(-_1518.y, _1518.x)), -dot(_1510, _1518));
      break;
    } while (false);
    float2 _1534 = float2(_1527.x * 1.25f, _1527.y * ((_1527.y < 0.0f) ? 1.25f : 0.75f));
    float _1535 = length(_1534);
    float _1537 = _1263 + _1506;
    float _1541 = _1218 ? frac(_1537) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1537, 0.0f, 1.0f));
    float _1553 = _1487.y;
    float _1556 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1541) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1541)) * step(0.001000000047497451305389404296875f, smoothstep(_1509, 0.0f, _1535))) * step(_1225, _1553 - 0.100000001490116119384765625f);
    float _1559 = _1556 * _1472;
    float2 _1568 = max(float2(_1315 * _1362, _1315 - _1341) * _1278, max(float2(_1412 * _1459, _1412 - _1438) * _1375, float2(_1509 * _1556, _1509 - _1535) * _1472));
    float2 _1573 = (float4(((clamp(_1340 / _1315.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1306.x)) * _1362) * _1278, _1365, _1359).xy + float4(((clamp(_1437 / _1412.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1403.x)) * _1459) * _1375, _1462, _1456).xy) + float4(((clamp(_1534 / _1509.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1500.x)) * _1556) * _1472, _1559, _1553).xy;
    float _1575 = max(_1559, max(_1365, _1462));
    float4 _1578 = float4(_1573, _1575, 0.0f);
    float2 _1580 = _1267.xz * 1.0f;
    float2 _1581 = floor(_1580);
    float2 _1584 = frac(_1581 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1588 = _1584 + dot(_1584, _1584 + 34.345001220703125f.xx).xx;
    float _1589 = _1588.x;
    float _1590 = _1588.y;
    float2 _1594 = frac(float2(_1589 * _1590, _1589 + _1590));
    float2 _1597 = frac((_1581 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1601 = _1597 + dot(_1597, _1597 + 34.345001220703125f.xx).xx;
    float _1602 = _1601.x;
    float _1603 = _1601.y;
    float2 _1607 = frac(float2(_1602 * _1603, _1602 + _1603));
    float _1613 = _1594.x;
    float _1616 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1613)) * _1255;
    float2 _1617 = ((_1580 - _1581) + ((((_1607 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1632;
    do {
      if (_1320) {
        _1632 = _1617;
        break;
      }
      float2 _1623 = _1277 * rsqrt(_1319);
      _1632 = float2(dot(_1617, float2(-_1623.y, _1623.x)), -dot(_1617, _1623));
      break;
    } while (false);
    float2 _1639 = float2(_1632.x * 1.25f, _1632.y * ((_1632.y < 0.0f) ? 1.25f : 0.75f));
    float _1640 = length(_1639);
    float _1642 = _1265 + _1613;
    float _1646 = _1218 ? frac(_1642) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1642, 0.0f, 1.0f));
    float _1658 = _1594.y;
    float _1661 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1646) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1646)) * step(0.001000000047497451305389404296875f, smoothstep(_1616, 0.0f, _1640))) * step(_1225, _1658 - 0.100000001490116119384765625f);
    float _1664 = _1661 * _1278;
    float2 _1673 = _1267.xy * 1.0f;
    float2 _1674 = floor(_1673);
    float2 _1677 = frac(_1674 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1681 = _1677 + dot(_1677, _1677 + 34.345001220703125f.xx).xx;
    float _1682 = _1681.x;
    float _1683 = _1681.y;
    float2 _1687 = frac(float2(_1682 * _1683, _1682 + _1683));
    float2 _1690 = frac((_1674 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1694 = _1690 + dot(_1690, _1690 + 34.345001220703125f.xx).xx;
    float _1695 = _1694.x;
    float _1696 = _1694.y;
    float2 _1700 = frac(float2(_1695 * _1696, _1695 + _1696));
    float _1706 = _1687.x;
    float _1709 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1706)) * _1255;
    float2 _1710 = ((_1673 - _1674) + ((((_1700 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1725;
    do {
      if (_1417) {
        _1725 = _1710;
        break;
      }
      float2 _1716 = _1374 * rsqrt(_1416);
      _1725 = float2(dot(_1710, float2(-_1716.y, _1716.x)), -dot(_1710, _1716));
      break;
    } while (false);
    float2 _1732 = float2(_1725.x * 1.25f, _1725.y * ((_1725.y < 0.0f) ? 1.25f : 0.75f));
    float _1733 = length(_1732);
    float _1735 = _1265 + _1706;
    float _1739 = _1218 ? frac(_1735) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1735, 0.0f, 1.0f));
    float _1751 = _1687.y;
    float _1754 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1739) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1739)) * step(0.001000000047497451305389404296875f, smoothstep(_1709, 0.0f, _1733))) * step(_1225, _1751 - 0.100000001490116119384765625f);
    float _1757 = _1754 * _1375;
    float2 _1766 = _1267.zy * 1.0f;
    float2 _1767 = floor(_1766);
    float2 _1770 = frac(_1767 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1774 = _1770 + dot(_1770, _1770 + 34.345001220703125f.xx).xx;
    float _1775 = _1774.x;
    float _1776 = _1774.y;
    float2 _1780 = frac(float2(_1775 * _1776, _1775 + _1776));
    float2 _1783 = frac((_1767 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1787 = _1783 + dot(_1783, _1783 + 34.345001220703125f.xx).xx;
    float _1788 = _1787.x;
    float _1789 = _1787.y;
    float2 _1793 = frac(float2(_1788 * _1789, _1788 + _1789));
    float _1799 = _1780.x;
    float _1802 = (0.25f * lerp(0.60000002384185791015625f, 1.0f, _1799)) * _1255;
    float2 _1803 = ((_1766 - _1767) + ((((_1793 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float2 _1818;
    do {
      if (_1514) {
        _1818 = _1803;
        break;
      }
      float2 _1809 = _1471 * rsqrt(_1513);
      _1818 = float2(dot(_1803, float2(-_1809.y, _1809.x)), -dot(_1803, _1809));
      break;
    } while (false);
    float2 _1825 = float2(_1818.x * 1.25f, _1818.y * ((_1818.y < 0.0f) ? 1.25f : 0.75f));
    float _1826 = length(_1825);
    float _1828 = _1265 + _1799;
    float _1832 = _1218 ? frac(_1828) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1828, 0.0f, 1.0f));
    float _1844 = _1780.y;
    float _1847 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1832) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1832)) * step(0.001000000047497451305389404296875f, smoothstep(_1802, 0.0f, _1826))) * step(_1225, _1844 - 0.100000001490116119384765625f);
    float _1850 = _1847 * _1472;
    float2 _1864 = (float4(((clamp(_1639 / _1616.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1607.x)) * _1661) * _1278, _1664, _1658).xy + float4(((clamp(_1732 / _1709.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1700.x)) * _1754) * _1375, _1757, _1751).xy) + float4(((clamp(_1825 / _1802.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1793.x)) * _1847) * _1472, _1850, _1844).xy;
    float4 _1869 = float4(_1864, max(_1850, max(_1664, _1757)), 0.0f);
    float _1871 = step(_1568.x, 0.00999999977648258209228515625f);
    float2 _1884 = max(_1568, (max(float2(_1616 * _1661, _1616 - _1640) * _1278, max(float2(_1709 * _1754, _1709 - _1733) * _1375, float2(_1802 * _1847, _1802 - _1826) * _1472)) * float2(0.661900997161865234375f, 1.0f)) * _1871);
    float _1889 = clamp(dot(_430, _571), 0.0f, 1.0f);
    float _1898 = max(_1578.zw * step(0.00999999977648258209228515625f, _1575), _1869.zw * _1871).x * (_1889 * lerp(0.4000000059604644775390625f, 1.0f, smoothstep(0.0f, 4.0f, abs(_18_m2[1].y) / _431)));
    float2 _1899 = (_1578.xy + (_1869.xy * _1871)).xy;
    float3 _1910 = normalize(float3(_1899 * (2.5f * _1889), max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1899, _1899), 0.0f, 1.0f)))));
    float3 _1911 = float3(_1910.x, _1910.y, 0.0f.xxx.z);
    float2 _1912 = _1910.xy;
    _1911.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1912, _1912), 0.0f, 1.0f)));
    float3 _1919 = normalize(_1911);
    float3 _1920 = cross(_571, float3(0.0f, 1.0f, 0.0f));
    bool3 _1923 = (dot(_1920, _1920) > 6.103515625e-05f).xxx;
    float3 _1924 = normalize(_1920);
    float3 _1925 = float3(_1923.x ? _1924.x : float3(1.0f, 0.0f, 0.0f).x, _1923.y ? _1924.y : float3(1.0f, 0.0f, 0.0f).y, _1923.z ? _1924.z : float3(1.0f, 0.0f, 0.0f).z);
    float _1929 = _1919.y;
    float _1936 = _1884.x * 4.0f;
    float _1946 = clamp(dot(_1919, normalize(float3(0.0f, -1.0f, 0.75f))), 0.0f, 1.0f);
    float _1952 = (0.60000002384185791015625f * _1898) * _1936;
    float _1955 = (1.0f - _1952) + (clamp(clamp(clamp(_1884.y * 17.54000091552734375f, 0.0f, 1.0f), 0.0f, 1.0f) + clamp(1.60000002384185791015625f * _1929, 0.0f, 1.0f), 0.0f, 1.0f) * _1952);
    float _1958 = smoothstep(0.60000002384185791015625f, 1.0f, _1955);
    _1969 = normalize(((_1925 * _1919.x) + (cross(_1925, _571) * _1929)) + (_571 * _1919.z));
    _1970 = _1256 + (2.0f * _656);
    _1971 = _1898 * _1936;
    _1972 = ((lerp(0.0500000007450580596923828125f, 1.7999999523162841796875f, (_1946 * _1946) * _1946) * _1936) * _1958) * _1898;
    _1973 = lerp(1.0f, 0.800000011920928955078125f * lerp(0.5f, 1.0f, _1958), _1898);
    _1974 = (_560 * _1955) * _1258;
    _1975 = (_469 * _1955) * _1258;
  }
  else {
    _1969 = _571;
    _1970 = 1.0f;
    _1971 = 0.0f;
    _1972 = 0.0f;
    _1973 = 1.0f;
    _1974 = _560;
    _1975 = _469;
  }
  float3 _2090;
  float3 _2091;
  float3 _2092;
  float _2093;
  [branch] if ((_645 - _53_m20) > 0.00999999977648258209228515625f) {
    bool3 _1980 = _439.xxx;
    float3 _1982 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1983 = float3(_1980.x ? _1982.x : _11.x, _1980.y ? _1982.y : _11.y, _1980.z ? _1982.z : _11.z);
    float3 _1986 = _1983 * _20_m92.z;
    float3 _1988 = float3(_1980.x ? _9.xzy.x : _9.x, _1980.y ? _9.xzy.y : _9.y, _1980.z ? _9.xzy.z : _9.z);
    float3 _1990 = abs(_1988) - 0.20000000298023223876953125f.xxx;
    float3 _1993 = max((_1990 * _1990) * _1990, 6.103515625e-05f.xxx);
    float3 _1996 = _1993 / dot(_1993, 1.0f.xxx).xxx;
    float4 _2019 = ((_56.SampleBias(_27, _1986.xz, _20_m16) * _1996.y) + (_56.SampleBias(_27, _1986.xy, _20_m16) * _1996.z)) + (_56.SampleBias(_27, _1986.zy, _20_m16) * _1996.x);
    float _2027 = clamp(_645 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1983.y) * clamp(_645 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _2033 = _2027 * (2.0f - _2027);
    float _2040 = smoothstep(2.0f - _2033, 2.349999904632568359375f - _2033, ((_1988.y * 0.4000000059604644775390625f) + 0.60000002384185791015625f) + _2019.z) * ((_476 * _476) * float(gl_FrontFacing));
    float3 _2042 = _2040.xxx;
    float2 _2048 = (_2019.xy * 2.0f) - 1.0f.xx;
    float3 _2049 = float3(_2048.x, _2048.y, _390.z);
    float2 _2050 = _2048.xy;
    _2049.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_2050, _2050), 0.0f, 1.0f)));
    float2 _2058 = _2049.xy * 2.0f;
    float3 _2060 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2058.x, _2058.y, _2049.z), _2042);
    float3 _2064 = _2060 * rsqrt(max(6.103515625e-05f, dot(_2060, _2060)));
    float _2065 = _571.y;
    float _2068 = step(0.00999999977648258209228515625f, 1.0f - (_2065 * _2065));
    float _2072 = lerp(_571.z, _2065, _2068);
    float3 _2079 = (float3(0.0f, _2068, 1.0f - _2068) - (_571 * _2072)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2072 * _2072)));
    _2090 = ((cross(_2079, _571) * _2064.x) + (_2079 * _2064.y)) + (_571 * _2064.z);
    _2091 = lerp(_1974 * 1.0f, 0.3079999983310699462890625f.xxx, _2042);
    _2092 = lerp(_1975 * 1.0f, 0.87999999523162841796875f.xxx, _2042);
    _2093 = lerp(0.0f, 0.0f, _2040);
  }
  else {
    _2090 = _571;
    _2091 = _1974;
    _2092 = _1975;
    _2093 = 0.0f;
  }
  float _2095 = 0.959999978542327880859375f - (_2093 * 0.959999978542327880859375f);
  float3 _2096 = _2092 * _2095;
  float3 _2099 = lerp(0.039999999105930328369140625f.xxx * _475, _2092, _2093.xxx);
  float3 _2100 = _2091 * _2095;
  bool _2107 = (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) < 0.9900000095367431640625f;
  float2 _2120 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
  _2120.y = -_2120.y;
  float2 _2136 = lerp(((sqrt(sqrt(abs(_2120 * 0.5f))) * float2(int2(sign(_2120)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_2107).xx);
  float4 _2138 = float4(_2136.x, _2136.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2138.z = 1.0f;
  _2138.w = _2107 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2151 = lerp(-_36_m0.xyz, _20_m93.xyz, _20_m83.w.xxx);
  float3 _2155 = normalize(float3(_2151.x, 6.103515625e-05f, _2151.z));
  float3 _2165 = lerp(_36_m3.xyz, _20_m87.xyz, _20_m94.y.xxx);
  float3 _2171 = _2165 * lerp(_36_m3.w, _20_m87.w, _20_m94.w);
  int _2175 = int(_609.x);
  int _2176 = int(_609.y);
  float4 _2180 = _44.Load(int3(int3(_2175, _2176, 0).xy, 0));
  float _2185 = _2180.y;
  float _2188 = lerp(lerp(1.0f, _2180.x, _40_m6.x), 1.0f, _20_m83.z);
  float _2189 = dot(_2090, _2151);
  float3 _2196 = _2100 * _20_m82.z;
  float3 _2197 = _2196 * 0.64999997615814208984375f;
  float _2201 = dot(_2096, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2214 = clamp(-dot(_2155.xz, normalize(_619.xz)), 0.0f, 1.0f);
  float _2218 = 1.0f - _20_m94.x;
  float4 _2232 = _54.SampleLevel(_26, float2((clamp(lerp(_2189, ((-_2189) * ((_2189 * 0.5f) - 1.0f)) + 0.5f, (_2214 * smoothstep(0.25f, 0.75f, 1.0f - abs(_619.y))) * _2218) + (_20_m93.w * _20_m94.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2233 = _2232.w;
  float _2235 = _2232.x;
  float _2236 = _2232.y;
  float _2237 = _2232.z;
  float _2242 = max(max(_2235, _2236), _2237) - min(min(_2235, _2236), _2237);
  float4 _2250 = _54.SampleLevel(_26, float2((dot(_2090, _619) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2251 = _2250.w;
  float _2252 = _476 * _2185;
  float _2259 = min(min(_2185, _476), _2233);
  float _2260 = _2251 * _2252;
  float3 _2264 = ((clamp(dot(_571, _20_m88.xyz) + _20_m89.x, 0.0f, 1.0f) * _20_m89.y) + _20_m89.z).xxx * lerp(_1161, 1.0f.xxx, (_20_m83.y * _2259).xxx);
  float3 _2266 = _2259.xxx;
  float3 _2289 = _2188.xxx;
  float3 _2290 = lerp((_2264 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1162), 1.5f), clamp(_1162, 1.25f, 1.75f), _20_m83.x)) * _20_m82.w, (lerp(dot(_2171, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2171, _2266) + ((_2264 * clamp(_1162, 0.0f, 1.5f)) * ((1.0f - _20_m94.y).xxx + (_2165 * _20_m94.y)))) * _20_m82.y, _2289);
  float3 _2291 = lerp(lerp(lerp(dot(_2197, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2197, 1.2000000476837158203125f.xxx), _2196, clamp((_2252 * _2251) + _2233, 0.0f, 1.0f).xxx), _2096, _2266);
  float3 _2297 = _2291 * ((1.0f - _2242).xxx + (_2232.xyz * _2242));
  float3 _2306 = lerp(lerp(_2196, lerp(_2201.xxx, _2096, 1.2000000476837158203125f.xxx), _2260.xxx), _2297 * clamp(dot(_2291, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2297, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2289);
  float4 _2310 = float4(_2306, _2188);
  float3 _2311 = _2290 * _2306;
  float _2312 = lerp(_2260, _2259, _2188);
  float3 _2318 = (_2290 * (((_2312 * 0.5f) + 0.5f) * lerp(_20_m82.z, 1.0f, _2312))) * 1.0f;
  float _2321 = lerp(0.5f, _2151.y, _2188);
  float3 _2324 = mul(_579, float3(_594.x, _2321, _594.z));
  float3 _2326 = _2151 * _2188;
  float3 _2332 = normalize(_592 + (_538 * ((_53_m34 * 2.0f) - 1.0f)));
  float3 _2333 = normalize(_2326 + (float3(_2324.x, _2324.y, _2324.z) * 2.0f)) + _430;
  float3 _2337 = _2333 * rsqrt(max(6.103515625e-05f, dot(_2333, _2333)));
  float _2338 = dot(_2332, _2337);
  float3 _2346 = clamp(pow(max(sqrt(1.0f - (_2338 * _2338)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _475, 0.0f.xxx, 1.0f.xxx);
  float _2349 = _603 * _603;
  float3 _2359 = (_2346 * _55.SampleLevel(_26, float2(_2346.x, float(_2338 > 0.0f) * _2349), 0.0f).xyz) * _603;
  float _2380 = dot(normalize(_592 + (_538 * ((_53_m35 * 2.0f) - 1.0f))), _2337);
  float3 _2397 = ((((((_2359 * _2099) * _53_m36) * 5.0f) * _1970) + lerp(((pow(max(sqrt(1.0f - (_2380 * _2380)), 9.9999997473787516355514526367188e-05f), float(int(200.0f * max(1.0f - _53_m38, 0.0f)))).xxx * _603) * (_53_m42.xyz * _473.w)) * _1970, 0.0f.xxx, max(max(_2359.x, _2359.y), _2359.z).xxx)) * _2318) * _20_m95.w;
  float3 _2403 = float3(_619.x, _2321, _619.z);
  float3 _2413 = normalize((_2326 + ((_2403 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2403, _2403)))) * 2.0f)) + (_430 * (2.0f + _2188)));
  float3 _2418 = normalize(float3(-_1969.z, 0.001000000047497451305389404296875f, _1969.x));
  float _2440 = (1.0f - _53_m6) + (_480 * _53_m6);
  float3 _2442 = (_2311 * _2440) + ((_2397 * _1973) + (((_2311 + _2397) * _1972) + (((((smoothstep(0.1500000059604644775390625f, 0.100000001490116119384765625f, abs(dot(_2413, _2418))) * smoothstep(0.070000000298023223876953125f, 0.0199999995529651641845703125f, abs(dot(_2413, cross(_1969, _2418))))) * max(0.0f, dot(_1969, _2413))) * 2.0f) * _1971).xxx * _2318)));
  float _2443 = dot(_2442, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2446 = clamp(_2443 - 0.5f, 0.0f, 0.5f);
  float3 _2482 = normalize(cross(_619, lerp(float3(_20_m91.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m91.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m91.y), _20_m97.w.xxx)));
  float2 _2506 = normalize(mul(float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz), _2090).xy) * float2(_20_m5.y / _20_m5.x, 1.0f);
  float2 _2512 = _20_m5.zw - 1.0f.xx;
  float2 _2513 = 2.0f.xx - _20_m5.zw;
  float _2547 = dot(_2155, _2090);
  float _2558 = dot(_430, _2090);
  float _2562 = 1.0f - _2188;
  float3 _2589 = lerp(_2443.xxx, _2442, ((_2446 * _2446) + 1.0f).xxx) + (((((_20_m90.xyz * smoothstep(0.100000001490116119384765625f, 0.20000000298023223876953125f, (1.0f / ((_20_m2.z * _30.SampleLevel(_25, clamp(_608 + ((_2506 * _20_m91.w) * 0.006000000052154064178466796875f), _2512, _2513), 0.0f).x) + _20_m2.w)) - _411)) * _20_m90.w) * min(min(clamp(dot(_491, _2482) + 1.0f, 0.0f, 1.0f), _476), _2185)) * (lerp(0.25f.xxx, _2096, _20_m91.z.xxx) * clamp(dot(_2482, _2090), 0.0f, 1.0f))) + ((((((lerp(_1160 * (1.0f / max(max(max(_1160.x, _1160.y), _1160.z) * 0.5f, 1.0f)), _2171, _2289) * clamp(lerp(dot(_1159.xyz, _2090) * _1159.w, ((-_2547) * ((_2547 * 0.5f) - 1.0f)) + 0.5f, _2188), 0.0f, 1.0f)) * ((_2562 + (_2214 * _2188)) * _2218)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, 1.0f - abs(_2558))) * min(_476, _2185)) * (_2562 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2201) * _2188))) * max(0.1500000059604644775390625f.xxx, _2096)));
  float2 _2590 = float2(_609);
  float2 _2592 = floor(_2590 * 0.03125f);
  int _2600 = int((_2592.x + (_2592.y * _38_m9)) * 8.0f);
  float _2607 = floor(_411 - (_20_m3.y * _38_m15));
  float _2611 = clamp(_2607, 0.0f, _38_m11 - 1.0f);
  int _2613 = int(_2611 * 8.0f);
  float3 _2615;
  _2615 = _2589;
  float3 _2616;
  [loop] for (int _2618 = 0; _2618 <= 7; _2615 = _2616, _2618++) {
    uint _2639 = (_2607 <= _2611) ? (_32.Load(uint((_38_m2 + _2600) + _2618) * 4 + 0) & _32.Load(uint((_38_m3 + _2613) + _2618) * 4 + 0)) : 0u;
    uint _2640 = uint(_2618);
    _2616 = _2615;
    uint _2645;
    float3 _2642;
    [loop] for (uint _2644 = _2639; _2644 != 0u; _2616 = _2642, _2644 = _2645) {
      uint _2649 = firstbitlow(_2644);
      _2645 = _2644 ^ (1u << (_2649 & 31u));
      int _2655 = int((32u * _2640) + _2649) * 8;
      int _2658 = _2655 + 1;
      int _2661 = _2655 + 2;
      int _2664 = _2655 + 3;
      int _2667 = _2655 + 4;
      int _2670 = _2655 + 5;
      int _2673 = _2655 + 6;
      int _2676 = _2655 + 7;
      uint _2680 = uint(_36_m6[_2670].w);
      float _2755;
      if ((_2680 & 1u) == 1u) {
        uint _2686 = asuint(_36_m6[_2670].x);
        uint _2693 = asuint(_36_m6[_2670].y);
        uint _2700 = asuint(_36_m6[_2670].z);
        uint _2707 = asuint(_36_m6[_2673].x);
        uint _2714 = asuint(_36_m6[_2673].y);
        uint _2721 = asuint(_36_m6[_2673].z);
        float3 _2740 = abs(mul(float4(_484 - _36_m6[_2658].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2686).x, spvUnpackHalf2x16(_2700).x, spvUnpackHalf2x16(_2714).x, 0.0f), float4(spvUnpackHalf2x16(_2686 >> 16u).x, spvUnpackHalf2x16(_2700 >> 16u).x, spvUnpackHalf2x16(_2714 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2693).x, spvUnpackHalf2x16(_2707).x, spvUnpackHalf2x16(_2721).x, 0.0f), float4(spvUnpackHalf2x16(_2693 >> 16u).x, spvUnpackHalf2x16(_2707 >> 16u).x, spvUnpackHalf2x16(_2721 >> 16u).x, 0.0f))).xyz);
        float _2747 = _36_m6[_2676].x * 0.5f;
        float _2753 = 1.0f - clamp((max(max(_2740.x, _2740.y), _2740.z) - (_2747 + 0.5f)) / (0.5f - _2747), 0.0f, 1.0f);
        _2755 = _2753 * _2753;
      } else {
        _2755 = 1.0f;
      }
      if (false || (_2755 < 0.001000000047497451305389404296875f)) {
        _2642 = _2616;
        continue;
      }
      float3 _3550;
      do {
        uint _2763 = uint(_36_m6[_2655].w);
        [branch] if (_2763 >= 4u) {
          _3550 = _2616;
          break;
        }
        float3 _3549;
        if (_36_m6[_2655].w < 1.5f) {
          float3 _3548;
          do {
            uint _2774 = asuint(_36_m6[_2664].w);
            if ((_2774 == 16u) || ((_36_m6[_2664].z + _20_m94.z) < 0.5f)) {
              _3548 = _2616;
              break;
            }
            bool _2785 = (_2763 & 1u) == 0u;
            bool _2789 = (!_2785) && (_36_m6[_2661].z > 0.0f);
            bool _2790 = _2774 == 4u;
            float _2791 = float(_2785);
            float _2799 = (0.5f + (0.5f * _36_m6[_2661].y)) - abs(_36_m6[_2661].x);
            float _2800 = _36_m6[_2661].y - _2799;
            float _2807 = abs(max((1.0f - abs(_2799)) - abs(_2800), 0.00048828125f));
            float3 _2811 = normalize(float3(_2799, _2800, (_36_m6[_2661].x >= 0.0f) ? _2807 : (-_2807)));
            float _2817 = lerp(_36_m6[_2673].w, max(2.0f * _36_m6[_2667].y, 0.100000001490116119384765625f), float(_2790));
            float3 _2822 = _36_m6[_2658].xyz - _484;
            float3 _2823 = -_2811;
            float3 _2828 = lerp(_2822, _2823 * dot(_2822, _2823), (float(_2790 && (_36_m6[_2667].z > 0.5f)) * _2791).xxx);
            float _2829 = dot(_2828, _2828);
            float _2830 = rsqrt(_2829);
            float3 _2831 = _2828 * _2830;
            float3 _2864;
            float _2865;
            if (_2789) {
              float3 _2835 = (_2811 * _36_m6[_2661].z) * 0.5f;
              float3 _2836 = _2828 - _2835;
              float3 _2837 = _2828 + _2835;
              float _2838 = length(_2836);
              float _2839 = length(_2837);
              float3 _2848 = normalize(cross(cross(_2811, _2831), _2811));
              _2864 = _2848;
              _2865 = ((1.0f / ((((_2838 * _2839) + dot(_2836, _2837)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2848, _2836) / _2838) + (dot(_2848, _2837) / _2839)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_36_m6[_2661].z * _2830, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2864 = _2831;
              _2865 = 1.0f;
            }
            float _2887;
            if (_2817 < 0.0f) {
              float _2881 = _2829 * (_36_m6[_2658].w * _36_m6[_2658].w);
              float _2884 = clamp(1.0f - (_2881 * _2881), 0.0f, 1.0f);
              _2887 = lerp(1.0f / (_2829 + 1.0f), _2865, float(_2789)) * (_2884 * _2884);
            } else {
              float3 _2870 = _2828 * _36_m6[_2658].w;
              _2887 = _2865 * pow(1.0f - clamp(dot(_2870, _2870), 0.0f, 1.0f), _2817);
            }
            float _2892 = clamp((dot(_2864, _2823) - _36_m6[_2661].z) * _36_m6[_2661].w, 0.0f, 1.0f);
            float _2895 = _2887 * lerp(1.0f, _2892 * _2892, _2791);
            int _2897 = int(_36_m6[_2676].w);
            float _3001;
            if ((!_2789) && (_2897 >= 0)) {
              uint _2903 = uint(_2897);
              float2 _2994;
              [branch] if (_2791 != 0.0f) {
                float4 _2984 = mul(_62_m1[_2903], float4(_484.x, _651, _484.z, 1.0f));
                _2994 = _62_m0[_2903].xy + (clamp(_2984.xy / _2984.w.xx, 0.0f.xx, 1.0f.xx) * _62_m0[_2903].zw);
              }
              else {
                float3 _2918 = mul(float4(-_2828, 0.0f), _62_m1[_2903]).xyz;
                float3 _399 = _2918;
                float3 _398 = _2918;
                float3 _397 = abs(_2918);
                uint _2927 = uint(int(_397.y > _397.x));
                uint _2933 = (_397.z > _397[_2927]) ? 2u : _2927;
                uint _2939 = (_2933 * 2u) + uint(_398[_2933] < 0.0f);
                float _2943 = abs(_399[_2939 / 2u]);
                float _2963 = 0.5f - (0.000244140625f / _62_m0[_2903].w);
                _2994 = _62_m0[_2903].xy + (clamp(float2((float(_2939) + ((((_399[uint(_366[_2939].x)] * _367[_2939].x) / _2943) * _2963) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_399[uint(_366[_2939].y)] * _367[_2939].y) / _2943) * _2963)), 0.0f.xx, 1.0f.xx) * _62_m0[_2903].zw);
              }
              _3001 = _2895 * _60.SampleLevel(_26, _2994, 0.0f).x;
            } else {
              _3001 = _2895;
            }
            float _3002 = _3001 * _2755;
            float3 _3547;
            do {
              float3 _3546;
              [branch] if (_3002 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2790) {
                  _3547 = lerp(_2616, _36_m6[_2655].xyz, (_3002 * (_36_m6[_2667].x * ((1.0f - _36_m6[_2667].w) + (smoothstep(-0.5f, 0.5f, dot(_572, _2864)) * _36_m6[_2667].w)))).xxx);
                  break;
                }
                float _3022 = dot(_2090, _2864);
                float _3023 = clamp(_3022, 0.0f, 1.0f);
                float _3422;
                if (_2774 != 0u) {
                  bool _3029 = _2785 || ((_2680 & 2u) != 0u);
                  int _3079;
                  if (_3029) {
                    _3079 = int(_36_m6[_2664].x);
                  } else {
                    uint _3034 = asuint(_36_m6[_2661].w);
                    uint _3035 = asuint(_36_m6[_2664].x);
                    float3 _3036 = _484 - _36_m6[_2658].xyz;
                    float3 _3037 = abs(_3036);
                    float _3038 = _3037.x;
                    float _3039 = _3037.y;
                    float _3041 = _3037.z;
                    int _3074;
                    if ((_3038 > _3039) && (_3038 > _3041)) {
                      _3074 = int((_3036.x > 0.0f) ? (_3034 & 1023u) : ((_3034 >> 10u) & 1023u));
                    } else {
                      int _3066;
                      if (_3039 > _3041) {
                        _3066 = int((_3036.y > 0.0f) ? ((_3034 >> 20u) & 1023u) : (_3035 & 1023u));
                      } else {
                        _3066 = int((_3036.z > 0.0f) ? ((_3035 >> 10u) & 1023u) : ((_3035 >> 20u) & 1023u));
                      }
                      _3074 = _3066;
                    }
                    _3079 = (_3074 == 1023) ? (-1) : _3074;
                  }
                  bool _3080 = _3079 >= 0;
                  float _3421;
                  if (_3080) {
                    float3 _3087 = _484 - _36_m6[_2658].xyz;
                    uint _3097 = asuint(_40_m11.x) + (uint(_3079) * 96u);
                    uint _3099 = (_3097 + 64u) >> 2u;
                    uint _3102 = _3099 + 1u;
                    uint _3105 = _3099 + 2u;
                    uint _3108 = _3099 + 3u;
                    float4 _3112 = asfloat(uint4(_43.Load(_3099 * 4 + 0), _43.Load(_3102 * 4 + 0), _43.Load(_3105 * 4 + 0), _43.Load(_3108 * 4 + 0)));
                    uint _3120 = _3097 >> 2u;
                    uint _3135 = (_3097 + 16u) >> 2u;
                    uint _3150 = (_3097 + 32u) >> 2u;
                    uint _3165 = (_3097 + 48u) >> 2u;
                    float4 _3185 = mul(transpose(float4x4(asfloat(uint4(_43.Load(_3120 * 4 + 0), _43.Load((_3120 + 1u) * 4 + 0), _43.Load((_3120 + 2u) * 4 + 0), _43.Load((_3120 + 3u) * 4 + 0))), asfloat(uint4(_43.Load(_3135 * 4 + 0), _43.Load((_3135 + 1u) * 4 + 0), _43.Load((_3135 + 2u) * 4 + 0), _43.Load((_3135 + 3u) * 4 + 0))), asfloat(uint4(_43.Load(_3150 * 4 + 0), _43.Load((_3150 + 1u) * 4 + 0), _43.Load((_3150 + 2u) * 4 + 0), _43.Load((_3150 + 3u) * 4 + 0))), asfloat(uint4(_43.Load(_3165 * 4 + 0), _43.Load((_3165 + 1u) * 4 + 0), _43.Load((_3165 + 2u) * 4 + 0), _43.Load((_3165 + 3u) * 4 + 0))))), float4((_484 - ((_3087 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3087, _3087)))) * _3112.x)) + (_572 * (_3112.y * 5.0f)), 1.0f));
                    float3 _3189 = _3185.xyz / _3185.w.xxx;
                    uint _3191 = (_3097 + 80u) >> 2u;
                    float4 _3204 = asfloat(uint4(_43.Load(_3191 * 4 + 0), _43.Load((_3191 + 1u) * 4 + 0), _43.Load((_3191 + 2u) * 4 + 0), _43.Load((_3191 + 3u) * 4 + 0)));
                    float2 _3205 = _3189.xy;
                    float2 _3207 = _3204.xy;
                    float3 _3211 = _3189.xyz;
                    bool3 _3212 = bool3(_3211.x <= 0.0f.xxx.x, _3211.y <= 0.0f.xxx.y, _3211.z <= 0.0f.xxx.z);
                    bool3 _3213 = bool3(_3211.x >= 1.0f.xxx.x, _3211.y >= 1.0f.xxx.y, _3211.z >= 1.0f.xxx.z);
                    float _3216 = _3189.z;
                    float2 _3227 = ((_3205 * (_3204.zw - _3207)) + _3207).xy * _40_m10.zw;
                    float2 _3229 = floor(_3227 + 0.5f.xx);
                    float2 _3230 = _3227 - _3229;
                    float _3231 = _3230.x;
                    float _3232 = _3231 + 0.5f;
                    float _3233 = _3232 * _3232;
                    float _3236 = 1.0f - _3231;
                    float _3237 = min(_3231, 0.0f);
                    float _3240 = _3231 + 1.0f;
                    float _3241 = max(_3231, 0.0f);
                    float _3252 = _3230.y;
                    float _3253 = _3252 + 0.5f;
                    float _3254 = _3253 * _3253;
                    float _3257 = 1.0f - _3252;
                    float _3258 = min(_3252, 0.0f);
                    float _3261 = _3252 + 1.0f;
                    float _3262 = max(_3252, 0.0f);
                    float3 _3274 = float3(0.1599999964237213134765625f * _3236, 0.1599999964237213134765625f * ((_3240 - (_3241 * _3241)) + 1.0f), _3233 * 0.07999999821186065673828125f);
                    float3 _3275 = float3(0.1599999964237213134765625f * ((_3233 * 0.5f) - _3231), 0.1599999964237213134765625f * ((_3236 - (_3237 * _3237)) + 1.0f), 0.1599999964237213134765625f * _3240) + _3274;
                    float3 _3277 = float3(0.1599999964237213134765625f * _3257, 0.1599999964237213134765625f * ((_3261 - (_3262 * _3262)) + 1.0f), _3254 * 0.07999999821186065673828125f);
                    float3 _3278 = float3(0.1599999964237213134765625f * ((_3254 * 0.5f) - _3252), 0.1599999964237213134765625f * ((_3257 - (_3258 * _3258)) + 1.0f), 0.1599999964237213134765625f * _3261) + _3277;
                    float3 _3284 = ((_3274 / _3275) + float3(-2.5f, -0.5f, 1.5f)) * _40_m10.xxx;
                    float3 _3286 = ((_3277 / _3278) + float3(-2.5f, -0.5f, 1.5f)) * _40_m10.yyy;
                    float2 _3288 = _3229 * _40_m10.xy;
                    float _3289 = _3284.x;
                    float _3290 = _3286.x;
                    float _3293 = _3284.y;
                    float _3296 = _3284.z;
                    float _3299 = _3286.y;
                    float _3306 = _3286.z;
                    float _3313 = _3275.x;
                    float _3314 = _3278.x;
                    float _3316 = _3275.y;
                    float _3318 = _3275.z;
                    float _3320 = _3278.y;
                    float _3324 = _3278.z;
                    float _3382 = (((((((_3313 * _3314) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3289, _3290), _389).xy, _3216)) + ((_3316 * _3314) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3293, _3290), _389).xy, _3216))) + ((_3318 * _3314) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3296, _3290), _389).xy, _3216))) + ((_3313 * _3320) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3289, _3299), _389).xy, _3216))) + ((_3316 * _3320) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3293, _3299), _389).xy, _3216))) + ((_3318 * _3320) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3296, _3299), _389).xy, _3216))) + ((_3313 * _3324) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3289, _3306), _389).xy, _3216));
                    float4 _3405 = asfloat(uint4(_43.Load(_3099 * 4 + 0), _43.Load(_3102 * 4 + 0), _43.Load(_3105 * 4 + 0), _43.Load(_3108 * 4 + 0)));
                    float _3406 = _3405.w;
                    float2 _3408 = min(_3205, 1.0f.xx - _3205);
                    _3421 = _3080 ? lerp(1.0f, (any(bool3(_3212.x || _3213.x, _3212.y || _3213.y, _3212.z || _3213.z)) || ((asuint(_3216) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3382 + ((_3316 * _3324) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3293, _3306), _389).xy, _3216))) + ((_3318 * _3324) * _41.SampleCmpLevelZero(_28, float3(_3288 + float2(_3296, _3306), _389).xy, _3216))), _3029 ? min(_3406, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3405.z - _3185.w) * 0.25f, min(_3408.x, _3408.y)))) : _3406) : 1.0f;
                  } else {
                    _3421 = clamp(dot(_491, _2864) + 1.0f, 0.0f, 1.0f);
                  }
                  _3422 = _3421;
                } else {
                  _3422 = 1.0f;
                }
                float _3495;
                float3 _3496;
                float _3497;
                float3 _3498;
                float3 _3499;
                [branch] if (_2774 == 0u) {
                  float3 _3475 = _36_m6[_2655].xyz * _3002;
                  float3 _3488 = _2310.xyz;
                  _3495 = _3002;
                  _3496 = (_36_m6[_2655].xyz * ((1.0f - _36_m6[_2667].y) + ((1.0f / max(1.0f, max(max(_3475.x, _3475.y), _3475.z) * lerp(0.75f, 0.5f, _2562))) * _36_m6[_2667].y))) * lerp(0.25f * _36_m6[_2667].x, 1.0f, clamp(_3022 + 0.5f, 0.0f, 1.0f));
                  _3497 = _3023;
                  _3498 = _3488;
                  _3499 = _3488;
                }
                else {
                  float _3470;
                  float _3471;
                  float3 _3472;
                  float3 _3473;
                  if (_2774 == 3u) {
                    _3470 = _3002 * (smoothstep(0.100000001490116119384765625f, 0.20000000298023223876953125f, (1.0f / ((_20_m2.z * _30.SampleLevel(_25, clamp(_608 + ((_2506 * _36_m6[_2667].x) * 0.006000000052154064178466796875f), _2512, _2513), 0.0f).x) + _20_m2.w)) - _411) * _3422);
                    _3471 = clamp(dot(_2090, -normalize(cross(_619, cross(_619, _2864)))), 0.0f, 1.0f);
                    _3472 = lerp(0.5f.xxx, _2096, _36_m6[_2667].y.xxx);
                    _3473 = 0.0f.xxx;
                  } else {
                    bool _3431 = _2774 == 1u;
                    float _3441;
                    float3 _3442;
                    if (_3431) {
                      _3441 = clamp(clamp(_3022 + _36_m6[_2667].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3422;
                      _3442 = _2100 * _36_m6[_2667].y;
                    } else {
                      _3441 = _3023;
                      _3442 = 0.0f.xxx;
                    }
                    bool3 _3443 = _3431.xxx;
                    _3470 = _3002;
                    _3471 = _3441;
                    _3472 = float3(_3443.x ? _2096.x : 0.0f.xxx.x, _3443.y ? _2096.y : 0.0f.xxx.y, _3443.z ? _2096.z : 0.0f.xxx.z);
                    _3473 = _3442;
                  }
                  _3495 = _3470;
                  _3496 = _36_m6[_2655].xyz;
                  _3497 = _3471;
                  _3498 = _3472;
                  _3499 = _3473;
                }
                float3 _3536;
                [branch] if (_2774 != 3u) {
                  float3 _3504 = _2864 + _430;
                  float _3509 = dot(_2332, _3504 * rsqrt(max(6.103515625e-05f, dot(_3504, _3504))));
                  float3 _3517 = clamp(pow(max(sqrt(1.0f - (_3509 * _3509)), 9.9999997473787516355514526367188e-05f), 200.0f).xxx * _475, 0.0f.xxx, 1.0f.xxx);
                  _3536 = (((((((_3517 * _55.SampleLevel(_26, float2(_3517.x, float(_3509 > 0.0f) * _2349), 0.0f).xyz) * _603) * _2099) * _53_m36) * 5.0f) * _1970) * 1.0f) * _36_m6[_2676].z;
                }
                else {
                  _3536 = 0.0f.xxx;
                }
                float3 _3539 = _3496 * _3495;
                _3546 = _2616 + (((_3539 * lerp(_3499, _3498, _3497.xxx)) * _2440) + ((_3539 * _3536) * _3497));
              }
              else {
                _3546 = _2616;
              }
              _3547 = _3546;
              break;
            } while (false);
            _3548 = _3547;
            break;
          } while (false);
          _3549 = _3548;
        } else {
          _3549 = _2616;
        }
        _3550 = _3549;
        break;
      } while (false);
      _2642 = _3550;
    }
  }
  float3 _3590;
  [branch] if (_53_m12 > 0.5f) {
    _3590 = lerp(lerp(0.5f.xxx, lerp(dot(_2615, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2615, _53_m14.xxx), _53_m15.xxx) * _53_m13, _53_m26.xyz, _53_m26.w.xxx) + ((_53_m27.xyz * smoothstep(1.0f - _53_m16, 1.0f, 1.0f - clamp(_2558, 0.0f, 1.0f))) * _53_m17);
  }
  else {
    _3590 = _2615;
  }
  float4 _3597 = float4(_3590 * _20_m20.y, _480);
  _3597.w = (_53_m8 == 1.0f) ? _480 : 1.0f;
  float4 _3982;
  [branch] if (_20_m94.w < 0.5f) {
    float3 _3606 = -_430;
    float _3622 = _651 * _20_m46.w;
    float _3627 = max(0.00999999977648258209228515625f, _3622 + _20_m47.w);
    float3 _3641 = exp(_20_m45.xyz * ((-max(0.0f, (_431 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3627)) / _3627) * exp(_3622 + _20_m48.w))));
    float _3644 = dot(_3606, _20_m44.xyz);
    float _3650 = _20_m45.w * _20_m45.w;
    float _3654 = (1.0f + _3650) - ((2.0f * _20_m45.w) * _3644);
    float3 _3974;
    float _3975;
    if (_20_m55.z > 0.0f) {
      uint3 _3805 = (uint3(int3(_2175, _2176, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3806 = _3805.y;
      uint _3807 = _3805.z;
      uint _3810 = _3805.x + (_3806 * _3807);
      uint _3812 = _3806 + (_3807 * _3810);
      uint _3814 = _3807 + (_3810 * _3812);
      uint _3816 = _3810 + (_3812 * _3814);
      float _3838 = dot(_3606, -_18_m0[2].xyz);
      float3 _3845 = _484 - _18_m11.xyz;
      float _3847 = (_20_m55.w * ((_3838 > 5.9604644775390625e-08f) ? (1.0f / _3838) : 0.0f)) * (1.0f / _431);
      float _3848 = _3845.y;
      float _3849 = _3847 * _3848;
      float _3851 = _18_m11.y + _3849;
      float _3852 = _3848 - _3849;
      float _3854 = (1.0f - _3847) * _431;
      float _3868 = max(-127.0f, _20_m49.z * _3852);
      float _3892 = max(-127.0f, _20_m52.x * _3852);
      float _3903 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3851 - _20_m49.x)))) * ((abs(_3868) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3868)) / _3868) : (0.693147182464599609375f - (0.2402265071868896484375f * _3868)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3851 - _20_m52.z)))) * ((abs(_3892) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3892)) / _3892) : (0.693147182464599609375f - (0.2402265071868896484375f * _3892))));
      float _3925 = clamp((_431 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3928 = clamp((max(clamp(exp2(-(_3903 * _3854)), 0.0f, 1.0f), _20_m51.w) + clamp((_431 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3925, 0.0f, 1.0f);
      float4 _3968 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_26, float3((_2590 + ((((float3(uint3(_3816, _3812 + (_3814 * _3816), _395) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_411 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_411 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3974 = _3968.xyz + (((_20_m51.xyz * (1.0f - _3928)) + (((_20_m54.xyz * pow(clamp(dot(_430, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3903 * max(_3854 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3925))) * _3968.w);
      _3975 = _3968.w * _3928;
    } else {
      float3 _3681 = _484 - _18_m11.xyz;
      float _3683 = _3681.y;
      float _3697 = max(-127.0f, _20_m49.z * _3683);
      float _3721 = max(-127.0f, _20_m52.x * _3683);
      float _3732 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3697) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3697)) / _3697) : (0.693147182464599609375f - (0.2402265071868896484375f * _3697)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3721) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3721)) / _3721) : (0.693147182464599609375f - (0.2402265071868896484375f * _3721))));
      float _3754 = clamp((_431 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3757 = clamp((max(clamp(exp2(-(_3732 * _431)), 0.0f, 1.0f), _20_m51.w) + clamp((_431 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3754, 0.0f, 1.0f);
      _3974 = (_20_m51.xyz * (1.0f - _3757)) + (((_20_m54.xyz * pow(clamp(dot(_430, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3732 * max(_431 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3754));
      _3975 = _3757;
    }
    float3 _3980 = (_3597.xyz * (_3641 * _3975)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3644 * _3644)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3650) / max((12.56637096405029296875f * _3654) * sqrt(_3654), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3641)) * _3975) + _3974);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3980 = (_3980 * 0.65f) + (_3597.xyz * 0.35f);
    }
    // RenoDX code end
    _3982 = float4(_3980.x, _3980.y, _3980.z, _3597.w);
  }
  else {
    _3982 = _3597;
  }
  _15 = _3982;
  _16 = _2138;
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

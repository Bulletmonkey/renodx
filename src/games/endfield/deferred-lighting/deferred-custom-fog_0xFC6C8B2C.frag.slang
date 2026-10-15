#include "./renodx_injection.hlsli"

// Ported from the native 0xFC6C8B2C Vulkan dump.
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

static float3 _424;
static float _425;
static float3 _426;
static float _428;
static uint _429;

static const int2 _379[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _380[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
  float _51_m34 : packoffset(c13);
  float _51_m35 : packoffset(c13.y);
  float _51_m36 : packoffset(c13.z);
  float _51_m37 : packoffset(c13.w);
  float4 _51_m38 : packoffset(c14);
  float4 _51_m39 : packoffset(c15);
  float _51_m40 : packoffset(c16);
  float _51_m41 : packoffset(c16.y);
  float _51_m42 : packoffset(c16.z);
  float _51_m43 : packoffset(c16.w);
  float _51_m44 : packoffset(c17);
  float _51_m45 : packoffset(c17.y);
  float _51_m46 : packoffset(c17.z);
  float _51_m47 : packoffset(c17.w);
  float _51_m48 : packoffset(c18);
  float _51_m49 : packoffset(c18.y);
  float _51_m50 : packoffset(c18.z);
  float _51_m51 : packoffset(c18.w);
  float _51_m52 : packoffset(c19);
  float _51_m53 : packoffset(c19.y);
  float _51_m54 : packoffset(c19.z);
  float _51_m55 : packoffset(c19.w);
  float4 _51_m56 : packoffset(c20);
  float4 _51_m57 : packoffset(c21);
  float4 _51_m58 : packoffset(c22);
  float4 _51_m59 : packoffset(c23);
  float4 _51_m60 : packoffset(c24);
  float4 _51_m61 : packoffset(c25);
  float2 _51_m62 : packoffset(c26);
  float2 _51_m63 : packoffset(c26.z);
  float _51_m64 : packoffset(c27);
  float _51_m65 : packoffset(c27.y);
  float _51_m66 : packoffset(c27.z);
  float _51_m67 : packoffset(c27.w);
  float4 _51_m68 : packoffset(c28);
  float4 _51_m69 : packoffset(c29);
  float4 _51_m70 : packoffset(c30);
  float4 _51_m71 : packoffset(c31);
  float _51_m72 : packoffset(c32);
  float _51_m73 : packoffset(c32.y);
  float _51_m74 : packoffset(c32.z);
  float _51_m75 : packoffset(c32.w);
  float _51_m76 : packoffset(c33);
  float _51_m77 : packoffset(c33.y);
  float _51_m78 : packoffset(c33.z);
  float _51_m79 : packoffset(c33.w);
};

[[vk::binding(52, 0)]] cbuffer _64_65 : register(b52, space0) {
  float4 _65_m0[32] : packoffset(c0);
  column_major float4x4 _65_m1[32] : packoffset(c32);
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
[[vk::binding(41, 0)]] Texture2D<float4> _52 : register(t41, space0);
[[vk::binding(8, 1)]] Texture2D<float4> _53 : register(t8, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _54 : register(t4, space1);
[[vk::binding(7, 1)]] Texture2D<float4> _55 : register(t7, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _56 : register(t5, space1);
[[vk::binding(47, 0)]] TextureCube<float4> _58 : register(t47, space0);
[[vk::binding(2, 1)]] Texture2D<float4> _59 : register(t2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _60 : register(t3, space1);
[[vk::binding(6, 1)]] Texture2D<float4> _61 : register(t6, space1);
[[vk::binding(1, 1)]] SamplerState _62 : register(s1, space1);
[[vk::binding(29, 0)]] Texture2D<float4> _63 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _68 : register(t38, space0);

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
  float _444 = 1.0f / gl_FragCoord.w;
  float3 _459 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
  float _460 = dot(_459, _459);
  float _462 = rsqrt(max(_460, 9.9999999392252902907785028219223e-09f));
  float3 _463 = _459 * _462;
  float _464 = _460 * _462;
  uint _467 = asuint(_23_m0[_13]._m2.x);
  bool _472 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
  float4 _485;
  float4 _486;
  if (_472) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0xFC6C8B2C:
    _485 = asfloat(_32_Load4((_467 + 2u) * 16 + 0));
    _486 = asfloat(_32_Load4(_467 * 16 + 0));
    */
    _485 = asfloat(_32_Load4((_467 + 2u) * 16 + 0));
    _486 = asfloat(_32_Load4(_467 * 16 + 0));
    // RenoDX code end
  } else {
    _485 = _23_m0[_13]._m0[2];
    _486 = _23_m0[_13]._m0[0];
  }
  float4 _498 = _53.SampleBias(_26, _3 + (_51_m62 * _20_m77.w), _20_m16);
  float3 _503 = _498.xyz * _51_m24.xyz;
  float4 _507 = _54.SampleBias(_26, _3, _20_m16);
  float _508 = _507.x;
  float _510 = _507.z;
  float _512 = 1.0f - _507.w;
  float3 _520 = _4 + _18_m11.xyz;
  float3 _524 = _520 - float3(_486.w, _428, _485.w);
  _524.y = 6.103515625e-05f;
  float3 _527 = normalize(_524);
  float3 _535 = _5 * 1.0f;
  float4 _540 = _55.SampleBias(_26, _3, _20_m16);
  _540.w = _540.w * _540.x;
  float2 _549 = (_540.wy * 2.0f) - 1.0f.xx;
  float3 _550 = float3(_549.x, _549.y, _426.z);
  float2 _551 = _549.xy;
  _550.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_551, _551), 0.0f, 1.0f)));
  float2 _559 = _550.xy * _51_m3;
  float3 _565 = _503 * _51_m18;
  float3 _569 = lerp(dot(_565, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _565, _51_m19.xxx);
  float4 _577 = _56.SampleBias(_26, _3 + (_51_m63 * _20_m77.w), _20_m16);
  float3 _604 = mul(float3(_559.x, _559.y, _550.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _535));
  float _613 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _51_m5));
  float3 _614 = (_604 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_604, _604)))) * _613;
  float3 _615 = normalize(_5) * _613;
  uint2 _617 = uint2(gl_FragCoord.xy);
  float3 _627 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float4 _641 = float4(_428, _428, _428, float((asuint((_20_m92.x > 0.5f) ? _20_m92.y : _23_m0[_13]._m7.x) >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _642 = _641.w;
  float _650 = lerp(_20_m22.x, 1.0f, _20_m94.w) * _20_m20.x;
  float4 _1145;
  float3 _1146;
  float3 _1147;
  float _1148;
  if (_20_m83.y < 0.5f) {
    float3 _668 = _520 - (_20_m108.xyz + (_627 * (-_20_m110.w)));
    float _683 = max(min(max((max(abs(_668.x), abs(_668.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_668.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _985;
    float4 _986;
    float4 _987;
    float _988;
    float _989;
    if ((_20_m108.w != 0.0f) && (_683 < 1.0f)) {
      float3 _696 = _520 - (_20_m108.xyz + (_627 * (-_20_m110.y)));
      float _710 = max(clamp((max(abs(_696.x), abs(_696.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_696.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _786;
      float4 _787;
      float4 _788;
      float4 _789;
      if (_710 < 1.0f) {
        float3 _719 = ((_520 * 2.0f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _721 = _719 - floor(_719);
        float4 _725 = _44.SampleLevel(_26, _721, 0.0f);
        float _726 = 1.0f - _710;
        float _730 = _20_m109.y * 0.5f;
        float _735 = _721.x;
        float _736 = clamp(_721.y, _730, 1.0f - _730) * 0.3333333432674407958984375f;
        float _737 = _721.z;
        float4 _740 = _45.SampleLevel(_25, float3(_735, _736, _737), 0.0f);
        float _756 = _725.x;
        float _766 = _725.y;
        float _776 = _725.z;
        _786 = _683 + (_740.w * _726);
        _787 = float4(((_45.SampleLevel(_25, float3(_735, _736 + 0.666666686534881591796875f, _737), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _776, _776) * _726;
        _788 = float4(((_45.SampleLevel(_25, float3(_735, _736 + 0.3333333432674407958984375f, _737), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _766, _766) * _726;
        _789 = float4(((_740.xyz * 4.0f) - 2.0f.xxx) * _756, _756) * _726;
      } else {
        _786 = _683;
        _787 = 0.0f.xxxx;
        _788 = 0.0f.xxxx;
        _789 = 0.0f.xxxx;
      }
      float3 _795 = _520 - (_20_m108.xyz + (_627 * (-_20_m110.z)));
      float _809 = max(clamp((max(abs(_795.x), abs(_795.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_795.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _889;
      float4 _890;
      float4 _891;
      float4 _892;
      if (_809 < 1.0f) {
        float3 _818 = ((_520 * 0.5f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _820 = _818 - floor(_818);
        float4 _824 = _46.SampleLevel(_26, _820, 0.0f);
        float _826 = _710 * (1.0f - _809);
        float _830 = _20_m109.y * 0.5f;
        float _835 = _820.x;
        float _836 = clamp(_820.y, _830, 1.0f - _830) * 0.3333333432674407958984375f;
        float _837 = _820.z;
        float4 _840 = _47.SampleLevel(_25, float3(_835, _836, _837), 0.0f);
        float _856 = _824.x;
        float _867 = _824.y;
        float _878 = _824.z;
        _889 = _786 + (_840.w * _826);
        _890 = _787 + (float4(((_47.SampleLevel(_25, float3(_835, _836 + 0.666666686534881591796875f, _837), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _878, _878) * _826);
        _891 = _788 + (float4(((_47.SampleLevel(_25, float3(_835, _836 + 0.3333333432674407958984375f, _837), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _867, _867) * _826);
        _892 = _789 + (float4(((_840.xyz * 4.0f) - 2.0f.xxx) * _856, _856) * _826);
      } else {
        _889 = _786;
        _890 = _787;
        _891 = _788;
        _892 = _789;
      }
      float4 _975;
      float4 _976;
      float4 _977;
      float _978;
      if (_809 > 0.0f) {
        float3 _901 = ((_520 * 0.125f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _904 = _20_m109.xyz * 0.5f;
        float3 _906 = clamp(_901 - floor(_901), _904, 1.0f.xxx - _904);
        float4 _910 = _48.SampleLevel(_26, _906, 0.0f);
        float _912 = _809 * (1.0f - _683);
        float _916 = _20_m109.y * 0.5f;
        float _921 = _906.x;
        float _922 = clamp(_906.y, _916, 1.0f - _916) * 0.3333333432674407958984375f;
        float _923 = _906.z;
        float4 _926 = _49.SampleLevel(_25, float3(_921, _922, _923), 0.0f);
        float _942 = _910.x;
        float _953 = _910.y;
        float _964 = _910.z;
        _975 = _890 + (float4(((_49.SampleLevel(_25, float3(_921, _922 + 0.666666686534881591796875f, _923), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _964, _964) * _912);
        _976 = _891 + (float4(((_49.SampleLevel(_25, float3(_921, _922 + 0.3333333432674407958984375f, _923), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _953, _953) * _912);
        _977 = _892 + (float4(((_926.xyz * 4.0f) - 2.0f.xxx) * _942, _942) * _912);
        _978 = _889 + (_926.w * _912);
      } else {
        _975 = _890;
        _976 = _891;
        _977 = _892;
        _978 = _889;
      }
      float _981 = clamp((_978 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _985 = _975;
      _986 = _976;
      _987 = _977;
      _988 = _981 - _683;
      _989 = (_981 + _683) * 0.5f;
    } else {
      _985 = 0.0f.xxxx;
      _986 = 0.0f.xxxx;
      _987 = 0.0f.xxxx;
      _988 = 0.0f;
      _989 = 1.0f;
    }
    float4 _1009 = _987 + float4(_20_m111.x * _989, (_20_m111.y * _989) + ((_20_m111.w * _988) * 0.5f), _20_m111.z * _989, (_20_m111.w * _989) + ((_20_m111.y * _988) * 0.375f));
    float4 _1029 = _986 + float4(_20_m112.x * _989, (_20_m112.y * _989) + ((_20_m112.w * _988) * 0.5f), _20_m112.z * _989, (_20_m112.w * _989) + ((_20_m112.y * _988) * 0.375f));
    float4 _1049 = _985 + float4(_20_m113.x * _989, (_20_m113.y * _989) + ((_20_m113.w * _988) * 0.5f), _20_m113.z * _989, (_20_m113.w * _989) + ((_20_m113.y * _988) * 0.375f));
    float4 _1053 = float4(_614, 1.0f);
    float3 _1059 = max(float3(dot(_1009, _1053), dot(_1029, _1053), dot(_1049, _1053)), 0.0f.xxx) * _650;
    float3 _1067 = ((_1009.xyz * 0.2125999927520751953125f) + (_1029.xyz * 0.715200006961822509765625f)) + (_1049.xyz * 0.072200000286102294921875f);
    float3 _1071 = _1067 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1067, _1067)));
    float _1073 = abs(_1071.y);
    float3 _1074 = _1071;
    _1074.y = _1073;
    float4 _1075 = float4(_1074.x, _1074.y, _1074.z, 0.0f.xxxx.w);
    _1075.w = 1.0f;
    float4 _1079 = float4(_1071.x, _1073, _1071.z, 1.0f);
    float3 _1084 = max(float3(dot(_1009, _1079), dot(_1029, _1079), dot(_1049, _1079)), 0.0f.xxx);
    float _1092 = _1059.z;
    float _1093 = _1059.y;
    float4 _1098 = lerp(float4(_1092, _1093, -1.0f, 0.666666686534881591796875f), float4(_1093, _1092, 0.0f, -0.3333333432674407958984375f), step(_1092, _1093).xxxx);
    float _1099 = _1059.x;
    float _1100 = _1098.x;
    float4 _1108 = lerp(float4(_1100, _1098.yw, _1099), float4(_1099, _1098.yz, _1100), step(_1100, _1099).xxxx);
    float _1109 = _1108.x;
    float _1110 = _1108.w;
    float _1111 = _1108.y;
    float _1113 = _1109 - min(_1110, _1111);
    float _1123 = frac(abs(_1108.z + ((_1110 - _1111) / ((6.0f * _1113) + 9.9999997473787516355514526367188e-05f))));
    float _1130 = min(_1113 / (_1109 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1123 - 0.5f))) * clamp(_1109, 0.0f, 1.0f));
    float _1132 = 2.0f / (2.0f - _1130);
    _1145 = _1075;
    _1146 = _1059;
    _1147 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1123, _1130, _1132).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1130.xxx) * _1132;
    _1148 = max(max(max(_1084.x, _1084.y), _1084.z), 0.0f) * _650;
  } else {
    _1145 = 0.0f.xxxx;
    _1146 = 1.0f.xxx;
    _1147 = _20_m84.xyz;
    _1148 = _650;
  }
  float3 _1247;
  float3 _1248;
  float _1249;
  float3 _1250;
  float _1251;
  [branch] if ((_642 - _51_m20) > 0.00999999977648258209228515625f) {
    float4 _1181 = _52.SampleBias(_26, _3 * _20_m92.z, _20_m16);
    float _1187 = _642 * (2.0f - _642);
    float _1194 = smoothstep(2.0f - _1187, 2.349999904632568359375f - _1187, (((_472 ? _10.z : _10.y) * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1181.z) * ((_510 * _510) * float(gl_FrontFacing));
    float3 _1196 = _1194.xxx;
    float2 _1202 = (_1181.xy * 2.0f) - 1.0f.xx;
    float3 _1203 = float3(_1202.x, _1202.y, _426.z);
    float2 _1204 = _1202.xy;
    _1203.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1204, _1204), 0.0f, 1.0f)));
    float2 _1212 = _1203.xy * 2.0f;
    float3 _1214 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1212.x, _1212.y, _1203.z), _1196);
    float3 _1218 = _1214 * rsqrt(max(6.103515625e-05f, dot(_1214, _1214)));
    float _1219 = _614.y;
    float _1222 = step(0.00999999977648258209228515625f, 1.0f - (_1219 * _1219));
    float _1226 = lerp(_614.z, _1219, _1222);
    float3 _1233 = (float3(0.0f, _1222, 1.0f - _1222) - (_614 * _1226)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1226 * _1226)));
    _1247 = lerp(_503 * 1.0f, 0.87999999523162841796875f.xxx, _1196);
    _1248 = ((cross(_1233, _614) * _1218.x) + (_1233 * _1218.y)) + (_614 * _1218.z);
    _1249 = lerp(_508, 0.0f, _1194);
    _1250 = lerp(_569 * 1.0f, 0.3079999983310699462890625f.xxx, _1196);
    _1251 = lerp(_512, 0.89999997615814208984375f, clamp(_1194 * 4.0f, 0.0f, 1.0f));
  }
  else {
    _1247 = _503;
    _1248 = _614;
    _1249 = _508;
    _1250 = _569;
    _1251 = _512;
  }
  bool2 _1255 = (_51_m76 != 0.0f).xx;
  float _1308 = (_51_m77 * (_51_m78 - dot(_520, _51_m71.xyz))) + ((_61.SampleBias(_62, (lerp(float2(_1255.x ? _7.x : _3.x, _1255.y ? _7.y : _3.y), mul(float3x3(_18_m0[0].xyz, _18_m0[1].xyz, _18_m0[2].xyz), _520 - mul(_23_m0[_13]._m0, float4(0.0f, 0.0f, 0.0f, 1.0f)).xyz).xy, _51_m72.xx) * _51_m68.xy) + _51_m68.zw, _20_m16).x - ((max(_51_m74, _23_m0[_13]._m7.w) * 2.019999980926513671875f) - 1.0099999904632568359375f)) * _51_m79);
  if ((clamp(_1308 * _51_m73, 0.0f, 1.0f) - 0.00999999977648258209228515625f) < 0.0f) {
    discard;
  }
  float _1341 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(1.0f, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _1343 = abs(_1341);
  if (min(_23_m0[_13]._m1.x - ((_23_m0[_13]._m1.x >= 0.0f) ? _1343 : (-_1343)), (1.0f - max(_23_m0[_13]._m1.y, _23_m0[_13]._m1.z)) - _1341) < 0.0f) {
    discard;
  }
  float3 _1358 = _51_m59.xyz * _51_m46;
  float4 _1359 = float4(_1358.x, _1358.y, _1358.z, _51_m59.w);
  _1359.w = _51_m59.w * _51_m47;
  float2 _1445;
  if (_51_m45 < 1.5f) {
    _1445 = lerp(_3, _7, _51_m45.xx);
  } else {
    float2 _1442;
    if (_51_m45 < 2.5f) {
      bool3 _1407 = _472.xxx;
      float3 _1409 = float3(_1407.x ? _11.xzy.x : _11.x, _1407.y ? _11.xzy.y : _11.y, _1407.z ? _11.xzy.z : _11.z);
      float3 _1413 = _1409 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1409, _1409)));
      float _1414 = _1413.z;
      float _1415 = _1413.x;
      float _1416 = _1414 / _1415;
      float _1417 = abs(_1416);
      bool _1418 = _1417 < 1.0f;
      float _1420 = _1418 ? _1417 : (1.0f / _1417);
      float _1421 = _1420 * _1420;
      float _1426 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _1421)) * _1421)) * _1420;
      float _1428 = _1418 ? _1426 : (1.57079637050628662109375f - _1426);
      _1442 = float2(((((_1416 < 0.0f) ? (-_1428) : _1428) + (((_1414 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_1415 < 0.0f))) * 0.159154951572418212890625f) + 0.5f, _1409.y);
    } else {
      float2 _1381 = ((float2(_617) / _20_m5.xy) * 2.0f) - 1.0f.xx;
      _1442 = float2(_1381.x, (_1381.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _51_m55);
    }
    _1445 = _1442;
  }
  bool2 _1449 = (_51_m48 > 0.5f).xx;
  float2 _1530;
  if (_51_m49 < 1.5f) {
    _1530 = lerp(_3, _7, _51_m49.xx);
  } else {
    float2 _1527;
    if (_51_m49 < 2.5f) {
      bool3 _1492 = _472.xxx;
      float3 _1494 = float3(_1492.x ? _11.xzy.x : _11.x, _1492.y ? _11.xzy.y : _11.y, _1492.z ? _11.xzy.z : _11.z);
      float3 _1498 = _1494 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1494, _1494)));
      float _1499 = _1498.z;
      float _1500 = _1498.x;
      float _1501 = _1499 / _1500;
      float _1502 = abs(_1501);
      bool _1503 = _1502 < 1.0f;
      float _1505 = _1503 ? _1502 : (1.0f / _1502);
      float _1506 = _1505 * _1505;
      float _1511 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _1506)) * _1506)) * _1505;
      float _1513 = _1503 ? _1511 : (1.57079637050628662109375f - _1511);
      _1527 = float2(((((_1501 < 0.0f) ? (-_1513) : _1513) + (((_1499 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_1500 < 0.0f))) * 0.159154951572418212890625f) + 0.5f, _1494.y);
    } else {
      float2 _1466 = ((float2(_617) / _20_m5.xy) * 2.0f) - 1.0f.xx;
      _1527 = float2(_1466.x, (_1466.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _51_m55);
    }
    _1530 = _1527;
  }
  float4 _1546 = _60.SampleLevel(_26, ((float2(_1449.x ? _1530.x : _1445.x, _1449.y ? _1530.y : _1445.y) + (_51_m56.zw * _20_m77.w)) * _51_m61.xy) + _51_m61.zw, 0.0f);
  float _1549 = _1546.x;
  float4 _1565 = _59.SampleLevel(_26, (((_1445 + (_51_m54 * _1549).xx) + (_51_m56.xy * _20_m77.w)) * _51_m60.xy) + _51_m60.zw, 0.0f);
  float4 _1572 = _1359 * lerp(_1565, float4(1.0f, 1.0f, 1.0f, _1565.x), _51_m44.xxxx);
  float _1575 = _1572.w;
  float _1588 = _1549 - ((_51_m53 * 2.019999980926513671875f) - 1.0099999904632568359375f);
  float _1590 = clamp(-_1588, 0.0f, 1.0f);
  float _1592 = _1575 * clamp(_1588, 0.0f, 1.0f);
  float _1597 = (_498.w * _51_m24.w) * ((_51_m50 > 0.5f) ? _1592 : 1.0f);
  bool3 _1609 = (_51_m52 < 0.5f).xxx;
  float _1623 = pow(clamp(dot(_463, float3(_1609.x ? _535.x : _1248.x, _1609.y ? _535.y : _1248.y, _1609.z ? _535.z : _1248.z).xyz) + _51_m40, 0.0f, 1.0f), _51_m42);
  float _1625 = lerp(1.0f - _1623, _1623, _51_m43);
  float _1641 = 0.959999978542327880859375f - (_1249 * 0.959999978542327880859375f);
  float3 _1642 = _1247 * _1641;
  float3 _1645 = lerp(0.039999999105930328369140625f.xxx * _507.y, _1247, _1249.xxx);
  float3 _1646 = _1250 * _1641;
  float _1647 = _1251 * _1251;
  float _1648 = max(_1647, 0.0078125f);
  float2 _1661 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
  _1661.y = -_1661.y;
  float2 _1674 = ((sqrt(sqrt(abs(_1661 * 0.5f))) * float2(int2(sign(_1661)))) * 0.5f) + 0.5f.xx;
  float4 _1675 = float4(_1674.x, _1674.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _1675.z = 1.0f;
  _1675.w = 0.4000000059604644775390625f;
  float3 _1688 = lerp(-_34_m0.xyz, _20_m93.xyz, _20_m83.w.xxx);
  float3 _1692 = normalize(float3(_1688.x, 6.103515625e-05f, _1688.z));
  float3 _1702 = lerp(_34_m3.xyz, _20_m87.xyz, _20_m94.y.xxx);
  float3 _1708 = _1702 * lerp(_34_m3.w, _20_m87.w, _20_m94.w);
  int _1712 = int(_617.x);
  int _1713 = int(_617.y);
  float _1724 = lerp(lerp(1.0f, _42.Load(int3(int3(_1712, _1713, 0).xy, 0)).x, _38_m6.x), 1.0f, _20_m83.z);
  float _1725 = dot(_1248, _1688);
  float3 _1732 = _1646 * _20_m82.z;
  float3 _1733 = _1732 * 0.64999997615814208984375f;
  float _1737 = dot(_1642, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _1750 = clamp(-dot(_1692.xz, normalize(_627.xz)), 0.0f, 1.0f);
  float _1754 = 1.0f - _20_m94.x;
  float _1762 = smoothstep(0.25f, 1.0f, clamp(lerp(_1725, ((-_1725) * ((_1725 * 0.5f) - 1.0f)) + 0.5f, (_1750 * smoothstep(0.25f, 0.75f, 1.0f - abs(_627.y))) * _1754) + (_20_m93.w * _20_m94.x), -1.0f, 1.0f));
  float _1769 = max(max(_1762, _1762), _1762) - min(min(_1762, _1762), _1762);
  float _1771 = smoothstep(0.25f, 1.0f, dot(_1248, _627));
  float _1778 = min(min(1.0f, _510), _1762);
  float _1779 = _1771 * _510;
  float3 _1783 = ((clamp(dot(_614, _20_m88.xyz) + _20_m89.x, 0.0f, 1.0f) * _20_m89.y) + _20_m89.z).xxx * lerp(_1147, 1.0f.xxx, (_20_m83.y * _1778).xxx);
  float3 _1785 = _1778.xxx;
  float3 _1808 = _1724.xxx;
  float3 _1809 = lerp((_1783 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1148), 1.5f), clamp(_1148, 1.25f, 1.75f), _20_m83.x)) * _20_m82.w, (lerp(dot(_1708, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1708, _1785) + ((_1783 * clamp(_1148, 0.0f, 1.5f)) * ((1.0f - _20_m94.y).xxx + (_1702 * _20_m94.y)))) * _20_m82.y, _1808);
  float3 _1810 = lerp(lerp(lerp(dot(_1733, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1733, 1.2000000476837158203125f.xxx), _1732, clamp((_510 * _1771) + _1762, 0.0f, 1.0f).xxx), _1642, _1785);
  float3 _1816 = _1810 * ((1.0f - _1769).xxx + (_1762.xxxx.xyz * _1769));
  float3 _1825 = lerp(lerp(_1732, lerp(_1737.xxx, _1642, 1.2000000476837158203125f.xxx), _1779.xxx), _1816 * clamp(dot(_1810, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1816, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1808);
  float4 _1829 = float4(_1825, _1724);
  float _1831 = lerp(_1779, _1778, _1724);
  float _1834 = lerp(_20_m82.z, 1.0f, _1831);
  float3 _1842 = float3(_627.x, lerp(0.5f, _1688.y, _1724), _627.z);
  float _1855 = clamp(dot(_614, _463), 0.0f, 1.0f);
  float _1856 = dot(_614, normalize(((_1688 * _1724) + ((_1842 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1842, _1842)))) * 2.0f)) + (_463 * (2.0f + _1724))));
  float _1857 = _1648 * _1648;
  float _1861 = (((_1856 * _1857) - _1856) * _1856) + 1.0f;
  float _1862 = _1861 * _1861;
  float _1866 = 2.0f * _1855;
  float _1868 = (1.0f + _1855) - _1855;
  float _1885 = (1.0f - _51_m6) + (_1597 * _51_m6);
  float3 _1887 = ((_1809 * _1825) * _1885) + (((_1645 * clamp((((_1857 != _1862) ? (_1857 / _1862) : 1.0f) * (0.5f / ((_1866 + (_1648 * _1868)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1809 * (((_1831 * 0.5f) + 0.5f) * _1834)) * 1.0f)) * _20_m95.w);
  float _1888 = dot(_1887, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _1891 = clamp(_1888 - 0.5f, 0.0f, 0.5f);
  float3 _1927 = normalize(cross(_627, lerp(float3(_20_m91.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m91.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m91.y), _20_m97.w.xxx)));
  float _1933 = dot(_463, _1248);
  float _1935 = 1.0f - abs(_1933);
  float _1957 = dot(_1692, _1248);
  float _1969 = 1.0f - _1724;
  float _1996 = _1855 * _1855;
  float _1997 = _1996 * _1855;
  float2 _1998 = float2(1.0f, _1855);
  float2 _2001 = float2(1.0f, _1647);
  float3 _2004 = float3(1.0f, _1647, (_1647 * _1647) * _1647);
  float _2009 = dot(mul(_1998, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2001) / dot(mul(float3(1.0f, _1996, _1997), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2004);
  float _2014 = dot(mul(_1998, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2001) / dot(mul(float3(1.0f, _1855, _1997), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2004);
  float3 _2017 = (_1645 * _2009) + _2014.xxx;
  float _2018 = _2009 + _2014;
  float3 _2024 = -_463;
  float3 _2025 = reflect(_2024, _614);
  float _2030 = _2025.x;
  float _2032 = _2025.z;
  float3 _2035 = _2025;
  _2035.x = (_2030 * _20_m98.y) + (_2032 * _20_m98.x);
  _2035.z = (_2032 * _20_m98.y) - (_2030 * _20_m98.x);
  float3 _2056 = (((((_577.xyz * _51_m25.xyz) * _51_m7) * ((_51_m64 > 0.5f) ? lerp(1.0f, lerp(_51_m66, _51_m67, (sin(_51_m65 * _20_m77.w) * 0.5f) + 0.5f), _577.w) : 1.0f)) + (_51_m70.xyz * clamp((_51_m75 - _1308) * _51_m73, 0.0f, 1.0f))) + (lerp(lerp((((_1546 * clamp((_1575 + _1546.w) * _51_m57.w, 0.0f, 1.0f)) * _51_m57) + _1572).xyz, (_51_m58.xyz * _1590) * _51_m46, _1590.xxx).xyz, _51_m58.xyz, (_51_m58.w * _1625).xxx).xyz * (clamp(_1592, 0.0f, 1.0f) * ((1.0f - _51_m41) + (_1625 * _51_m41)))).xyz) * _1885;
  float3 _2057 = lerp(_1888.xxx, _1887, ((_1891 * _1891) + 1.0f).xxx) + (((((_20_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m91.w), lerp(0.89999997615814208984375f, 0.5f, _20_m91.w), _1935)) * _20_m90.w) * min(min(clamp(dot(_527, _1927) + 1.0f, 0.0f, 1.0f), _510), 1.0f)) * (lerp(0.25f.xxx, _1642, _20_m91.z.xxx) * clamp(dot(_1927, _1248), 0.0f, 1.0f))) + ((((((lerp(_1146 * (1.0f / max(max(max(_1146.x, _1146.y), _1146.z) * 0.5f, 1.0f)), _1708, _1808) * clamp(lerp(dot(_1145.xyz, _1248) * _1145.w, ((-_1957) * ((_1957 * 0.5f) - 1.0f)) + 0.5f, _1724), 0.0f, 1.0f)) * ((_1969 + (_1750 * _1724)) * _1754)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _1935)) * min(_510, 1.0f)) * (_1969 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _1737) * _1724))) * max(0.1500000059604644775390625f.xxx, _1642)));
  float2 _2060 = float2(_617);
  float2 _2062 = floor(_2060 * 0.03125f);
  int _2070 = int((_2062.x + (_2062.y * _36_m9)) * 8.0f);
  float _2077 = floor(_444 - (_20_m3.y * _36_m15));
  float _2081 = clamp(_2077, 0.0f, _36_m11 - 1.0f);
  int _2083 = int(_2081 * 8.0f);
  float3 _2085;
  _2085 = (_2057 + _2056) + (((_58.SampleLevel(_25, _2035, (1.2000000476837158203125f * log2(max(_1251, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2017 + ((_1645 * ((1.0f - _2018) / _2018)) * _2017)) * 1.0f)) * ((clamp(_1148, 0.5f, 1.5f) * _20_m82.w) * _1834)) * _1147);
  float3 _2086;
  [loop] for (int _2088 = 0; _2088 <= 7; _2085 = _2086, _2088++) {
    uint _2109 = (_2077 <= _2081) ? (_30.Load(uint((_36_m2 + _2070) + _2088) * 4 + 0) & _30.Load(uint((_36_m3 + _2083) + _2088) * 4 + 0)) : 0u;
    uint _2110 = uint(_2088);
    _2086 = _2085;
    uint _2115;
    float3 _2112;
    [loop] for (uint _2114 = _2109; _2114 != 0u; _2086 = _2112, _2114 = _2115) {
      uint _2119 = firstbitlow(_2114);
      _2115 = _2114 ^ (1u << (_2119 & 31u));
      int _2125 = int((32u * _2110) + _2119) * 8;
      int _2128 = _2125 + 1;
      int _2131 = _2125 + 2;
      int _2134 = _2125 + 3;
      int _2137 = _2125 + 4;
      int _2140 = _2125 + 5;
      int _2143 = _2125 + 6;
      int _2146 = _2125 + 7;
      uint _2150 = uint(_34_m6[_2140].w);
      float _2225;
      if ((_2150 & 1u) == 1u) {
        uint _2156 = asuint(_34_m6[_2140].x);
        uint _2163 = asuint(_34_m6[_2140].y);
        uint _2170 = asuint(_34_m6[_2140].z);
        uint _2177 = asuint(_34_m6[_2143].x);
        uint _2184 = asuint(_34_m6[_2143].y);
        uint _2191 = asuint(_34_m6[_2143].z);
        float3 _2210 = abs(mul(float4(_520 - _34_m6[_2128].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2156).x, spvUnpackHalf2x16(_2170).x, spvUnpackHalf2x16(_2184).x, 0.0f), float4(spvUnpackHalf2x16(_2156 >> 16u).x, spvUnpackHalf2x16(_2170 >> 16u).x, spvUnpackHalf2x16(_2184 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2163).x, spvUnpackHalf2x16(_2177).x, spvUnpackHalf2x16(_2191).x, 0.0f), float4(spvUnpackHalf2x16(_2163 >> 16u).x, spvUnpackHalf2x16(_2177 >> 16u).x, spvUnpackHalf2x16(_2191 >> 16u).x, 0.0f))).xyz);
        float _2217 = _34_m6[_2146].x * 0.5f;
        float _2223 = 1.0f - clamp((max(max(_2210.x, _2210.y), _2210.z) - (_2217 + 0.5f)) / (0.5f - _2217), 0.0f, 1.0f);
        _2225 = _2223 * _2223;
      } else {
        _2225 = 1.0f;
      }
      if (false || (_2225 < 0.001000000047497451305389404296875f)) {
        _2112 = _2086;
        continue;
      }
      float3 _3021;
      do {
        uint _2233 = uint(_34_m6[_2125].w);
        [branch] if (_2233 >= 4u) {
          _3021 = _2086;
          break;
        }
        float3 _3020;
        if (_34_m6[_2125].w < 1.5f) {
          float3 _3019;
          do {
            uint _2244 = asuint(_34_m6[_2134].w);
            if ((_2244 == 16u) || ((_34_m6[_2134].z + _20_m94.z) < 0.5f)) {
              _3019 = _2086;
              break;
            }
            bool _2255 = (_2233 & 1u) == 0u;
            bool _2259 = (!_2255) && (_34_m6[_2131].z > 0.0f);
            bool _2260 = _2244 == 4u;
            float _2261 = float(_2255);
            float _2269 = (0.5f + (0.5f * _34_m6[_2131].y)) - abs(_34_m6[_2131].x);
            float _2270 = _34_m6[_2131].y - _2269;
            float _2277 = abs(max((1.0f - abs(_2269)) - abs(_2270), 0.00048828125f));
            float3 _2281 = normalize(float3(_2269, _2270, (_34_m6[_2131].x >= 0.0f) ? _2277 : (-_2277)));
            float _2287 = lerp(_34_m6[_2143].w, max(2.0f * _34_m6[_2137].y, 0.100000001490116119384765625f), float(_2260));
            float3 _2292 = _34_m6[_2128].xyz - _520;
            float3 _2293 = -_2281;
            float3 _2298 = lerp(_2292, _2293 * dot(_2292, _2293), (float(_2260 && (_34_m6[_2137].z > 0.5f)) * _2261).xxx);
            float _2299 = dot(_2298, _2298);
            float _2300 = rsqrt(_2299);
            float3 _2301 = _2298 * _2300;
            float3 _2334;
            float _2335;
            if (_2259) {
              float3 _2305 = (_2281 * _34_m6[_2131].z) * 0.5f;
              float3 _2306 = _2298 - _2305;
              float3 _2307 = _2298 + _2305;
              float _2308 = length(_2306);
              float _2309 = length(_2307);
              float3 _2318 = normalize(cross(cross(_2281, _2301), _2281));
              _2334 = _2318;
              _2335 = ((1.0f / ((((_2308 * _2309) + dot(_2306, _2307)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2318, _2306) / _2308) + (dot(_2318, _2307) / _2309)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_34_m6[_2131].z * _2300, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _2334 = _2301;
              _2335 = 1.0f;
            }
            float _2357;
            if (_2287 < 0.0f) {
              float _2351 = _2299 * (_34_m6[_2128].w * _34_m6[_2128].w);
              float _2354 = clamp(1.0f - (_2351 * _2351), 0.0f, 1.0f);
              _2357 = lerp(1.0f / (_2299 + 1.0f), _2335, float(_2259)) * (_2354 * _2354);
            } else {
              float3 _2340 = _2298 * _34_m6[_2128].w;
              _2357 = _2335 * pow(1.0f - clamp(dot(_2340, _2340), 0.0f, 1.0f), _2287);
            }
            float _2362 = clamp((dot(_2334, _2293) - _34_m6[_2131].z) * _34_m6[_2131].w, 0.0f, 1.0f);
            float _2365 = _2357 * lerp(1.0f, _2362 * _2362, _2261);
            int _2367 = int(_34_m6[_2146].w);
            float _2472;
            if ((!_2259) && (_2367 >= 0)) {
              uint _2373 = uint(_2367);
              float2 _2465;
              [branch] if (_2261 != 0.0f) {
                float4 _2455 = mul(_65_m1[_2373], float4(_520, 1.0f));
                _2465 = _65_m0[_2373].xy + (clamp(_2455.xy / _2455.w.xx, 0.0f.xx, 1.0f.xx) * _65_m0[_2373].zw);
              }
              else {
                float3 _2388 = mul(float4(-_2298, 0.0f), _65_m1[_2373]).xyz;
                float3 _433 = _2388;
                float3 _432 = _2388;
                float3 _431 = abs(_2388);
                uint _2397 = uint(int(_431.y > _431.x));
                uint _2403 = (_431.z > _431[_2397]) ? 2u : _2397;
                uint _2409 = (_2403 * 2u) + uint(_432[_2403] < 0.0f);
                float _2413 = abs(_433[_2409 / 2u]);
                float _2433 = 0.5f - (0.000244140625f / _65_m0[_2373].w);
                _2465 = _65_m0[_2373].xy + (clamp(float2((float(_2409) + ((((_433[uint(_379[_2409].x)] * _380[_2409].x) / _2413) * _2433) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_433[uint(_379[_2409].y)] * _380[_2409].y) / _2413) * _2433)), 0.0f.xx, 1.0f.xx) * _65_m0[_2373].zw);
              }
              _2472 = _2365 * _63.SampleLevel(_25, _2465, 0.0f).x;
            } else {
              _2472 = _2365;
            }
            float _2473 = _2472 * _2225;
            float3 _3018;
            do {
              float3 _3017;
              [branch] if (_2473 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2260) {
                  _3018 = lerp(_2086, _34_m6[_2125].xyz, (_2473 * (_34_m6[_2137].x * ((1.0f - _34_m6[_2137].w) + (smoothstep(-0.5f, 0.5f, dot(_615, _2334)) * _34_m6[_2137].w)))).xxx);
                  break;
                }
                float _2493 = dot(_1248, _2334);
                float _2494 = clamp(_2493, 0.0f, 1.0f);
                float _2893;
                if (_2244 != 0u) {
                  bool _2500 = _2255 || ((_2150 & 2u) != 0u);
                  int _2550;
                  if (_2500) {
                    _2550 = int(_34_m6[_2134].x);
                  } else {
                    uint _2505 = asuint(_34_m6[_2131].w);
                    uint _2506 = asuint(_34_m6[_2134].x);
                    float3 _2507 = _520 - _34_m6[_2128].xyz;
                    float3 _2508 = abs(_2507);
                    float _2509 = _2508.x;
                    float _2510 = _2508.y;
                    float _2512 = _2508.z;
                    int _2545;
                    if ((_2509 > _2510) && (_2509 > _2512)) {
                      _2545 = int((_2507.x > 0.0f) ? (_2505 & 1023u) : ((_2505 >> 10u) & 1023u));
                    } else {
                      int _2537;
                      if (_2510 > _2512) {
                        _2537 = int((_2507.y > 0.0f) ? ((_2505 >> 20u) & 1023u) : (_2506 & 1023u));
                      } else {
                        _2537 = int((_2507.z > 0.0f) ? ((_2506 >> 10u) & 1023u) : ((_2506 >> 20u) & 1023u));
                      }
                      _2545 = _2537;
                    }
                    _2550 = (_2545 == 1023) ? (-1) : _2545;
                  }
                  bool _2551 = _2550 >= 0;
                  float _2892;
                  if (_2551) {
                    float3 _2558 = _520 - _34_m6[_2128].xyz;
                    uint _2568 = asuint(_38_m11.x) + (uint(_2550) * 96u);
                    uint _2570 = (_2568 + 64u) >> 2u;
                    uint _2573 = _2570 + 1u;
                    uint _2576 = _2570 + 2u;
                    uint _2579 = _2570 + 3u;
                    float4 _2583 = asfloat(uint4(_41.Load(_2570 * 4 + 0), _41.Load(_2573 * 4 + 0), _41.Load(_2576 * 4 + 0), _41.Load(_2579 * 4 + 0)));
                    uint _2591 = _2568 >> 2u;
                    uint _2606 = (_2568 + 16u) >> 2u;
                    uint _2621 = (_2568 + 32u) >> 2u;
                    uint _2636 = (_2568 + 48u) >> 2u;
                    float4 _2656 = mul(transpose(float4x4(asfloat(uint4(_41.Load(_2591 * 4 + 0), _41.Load((_2591 + 1u) * 4 + 0), _41.Load((_2591 + 2u) * 4 + 0), _41.Load((_2591 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_2606 * 4 + 0), _41.Load((_2606 + 1u) * 4 + 0), _41.Load((_2606 + 2u) * 4 + 0), _41.Load((_2606 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_2621 * 4 + 0), _41.Load((_2621 + 1u) * 4 + 0), _41.Load((_2621 + 2u) * 4 + 0), _41.Load((_2621 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_2636 * 4 + 0), _41.Load((_2636 + 1u) * 4 + 0), _41.Load((_2636 + 2u) * 4 + 0), _41.Load((_2636 + 3u) * 4 + 0))))), float4((_520 - ((_2558 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2558, _2558)))) * _2583.x)) + (_615 * (_2583.y * 5.0f)), 1.0f));
                    float3 _2660 = _2656.xyz / _2656.w.xxx;
                    uint _2662 = (_2568 + 80u) >> 2u;
                    float4 _2675 = asfloat(uint4(_41.Load(_2662 * 4 + 0), _41.Load((_2662 + 1u) * 4 + 0), _41.Load((_2662 + 2u) * 4 + 0), _41.Load((_2662 + 3u) * 4 + 0)));
                    float2 _2676 = _2660.xy;
                    float2 _2678 = _2675.xy;
                    float3 _2682 = _2660.xyz;
                    bool3 _2683 = bool3(_2682.x <= 0.0f.xxx.x, _2682.y <= 0.0f.xxx.y, _2682.z <= 0.0f.xxx.z);
                    bool3 _2684 = bool3(_2682.x >= 1.0f.xxx.x, _2682.y >= 1.0f.xxx.y, _2682.z >= 1.0f.xxx.z);
                    float _2687 = _2660.z;
                    float2 _2698 = ((_2676 * (_2675.zw - _2678)) + _2678).xy * _38_m10.zw;
                    float2 _2700 = floor(_2698 + 0.5f.xx);
                    float2 _2701 = _2698 - _2700;
                    float _2702 = _2701.x;
                    float _2703 = _2702 + 0.5f;
                    float _2704 = _2703 * _2703;
                    float _2707 = 1.0f - _2702;
                    float _2708 = min(_2702, 0.0f);
                    float _2711 = _2702 + 1.0f;
                    float _2712 = max(_2702, 0.0f);
                    float _2723 = _2701.y;
                    float _2724 = _2723 + 0.5f;
                    float _2725 = _2724 * _2724;
                    float _2728 = 1.0f - _2723;
                    float _2729 = min(_2723, 0.0f);
                    float _2732 = _2723 + 1.0f;
                    float _2733 = max(_2723, 0.0f);
                    float3 _2745 = float3(0.1599999964237213134765625f * _2707, 0.1599999964237213134765625f * ((_2711 - (_2712 * _2712)) + 1.0f), _2704 * 0.07999999821186065673828125f);
                    float3 _2746 = float3(0.1599999964237213134765625f * ((_2704 * 0.5f) - _2702), 0.1599999964237213134765625f * ((_2707 - (_2708 * _2708)) + 1.0f), 0.1599999964237213134765625f * _2711) + _2745;
                    float3 _2748 = float3(0.1599999964237213134765625f * _2728, 0.1599999964237213134765625f * ((_2732 - (_2733 * _2733)) + 1.0f), _2725 * 0.07999999821186065673828125f);
                    float3 _2749 = float3(0.1599999964237213134765625f * ((_2725 * 0.5f) - _2723), 0.1599999964237213134765625f * ((_2728 - (_2729 * _2729)) + 1.0f), 0.1599999964237213134765625f * _2732) + _2748;
                    float3 _2755 = ((_2745 / _2746) + float3(-2.5f, -0.5f, 1.5f)) * _38_m10.xxx;
                    float3 _2757 = ((_2748 / _2749) + float3(-2.5f, -0.5f, 1.5f)) * _38_m10.yyy;
                    float2 _2759 = _2700 * _38_m10.xy;
                    float _2760 = _2755.x;
                    float _2761 = _2757.x;
                    float _2764 = _2755.y;
                    float _2767 = _2755.z;
                    float _2770 = _2757.y;
                    float _2777 = _2757.z;
                    float _2784 = _2746.x;
                    float _2785 = _2749.x;
                    float _2787 = _2746.y;
                    float _2789 = _2746.z;
                    float _2791 = _2749.y;
                    float _2795 = _2749.z;
                    float _2853 = (((((((_2784 * _2785) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2760, _2761), _425).xy, _2687)) + ((_2787 * _2785) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2764, _2761), _425).xy, _2687))) + ((_2789 * _2785) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2767, _2761), _425).xy, _2687))) + ((_2784 * _2791) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2760, _2770), _425).xy, _2687))) + ((_2787 * _2791) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2764, _2770), _425).xy, _2687))) + ((_2789 * _2791) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2767, _2770), _425).xy, _2687))) + ((_2784 * _2795) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2760, _2777), _425).xy, _2687));
                    float4 _2876 = asfloat(uint4(_41.Load(_2570 * 4 + 0), _41.Load(_2573 * 4 + 0), _41.Load(_2576 * 4 + 0), _41.Load(_2579 * 4 + 0)));
                    float _2877 = _2876.w;
                    float2 _2879 = min(_2676, 1.0f.xx - _2676);
                    _2892 = _2551 ? lerp(1.0f, (any(bool3(_2683.x || _2684.x, _2683.y || _2684.y, _2683.z || _2684.z)) || ((asuint(_2687) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2853 + ((_2787 * _2795) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2764, _2777), _425).xy, _2687))) + ((_2789 * _2795) * _39.SampleCmpLevelZero(_27, float3(_2759 + float2(_2767, _2777), _425).xy, _2687))), _2500 ? min(_2877, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2876.z - _2656.w) * 0.25f, min(_2879.x, _2879.y)))) : _2877) : 1.0f;
                  } else {
                    _2892 = clamp(dot(_527, _2334) + 1.0f, 0.0f, 1.0f);
                  }
                  _2893 = _2892;
                } else {
                  _2893 = 1.0f;
                }
                float _2973;
                float3 _2974;
                float _2975;
                float3 _2976;
                float3 _2977;
                float _2978;
                float _2979;
                [branch] if (_2244 == 0u) {
                  float3 _2953 = _34_m6[_2125].xyz * _2473;
                  float3 _2966 = _1829.xyz;
                  _2973 = _2473;
                  _2974 = (_34_m6[_2125].xyz * ((1.0f - _34_m6[_2137].y) + ((1.0f / max(1.0f, max(max(_2953.x, _2953.y), _2953.z) * lerp(0.75f, 0.5f, _1969))) * _34_m6[_2137].y))) * lerp(0.25f * _34_m6[_2137].x, 1.0f, clamp(_2493 + 0.5f, 0.0f, 1.0f));
                  _2975 = _2494;
                  _2976 = _2966;
                  _2977 = _2966;
                  _2978 = 1.0f;
                  _2979 = 0.0f;
                }
                else {
                  float _2946;
                  float _2947;
                  float3 _2948;
                  float3 _2949;
                  float _2950;
                  float _2951;
                  if (_2244 == 3u) {
                    _2946 = _2473 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _34_m6[_2137].x), lerp(0.89999997615814208984375f, 0.5f, _34_m6[_2137].x), _1935) * _2893);
                    _2947 = clamp(dot(_1248, -normalize(cross(_627, cross(_627, _2334)))), 0.0f, 1.0f);
                    _2948 = lerp(0.5f.xxx, _1642, _34_m6[_2137].y.xxx);
                    _2949 = 0.0f.xxx;
                    _2950 = 1.0f;
                    _2951 = 0.0f;
                  } else {
                    bool _2902 = _2244 == 1u;
                    float _2926;
                    float3 _2927;
                    float _2928;
                    float _2929;
                    if (_2902) {
                      _2926 = clamp(clamp(_2493 + _34_m6[_2137].x, -1.0f, 1.0f), 0.0f, 1.0f) * _2893;
                      _2927 = _1646 * _34_m6[_2137].y;
                      _2928 = 1.0f;
                      _2929 = 0.0f;
                    } else {
                      bool _2906 = _2244 == 2u;
                      float _2918;
                      if (_2906) {
                        _2918 = smoothstep(_34_m6[_2137].x + 0.0500000007450580596923828125f, _34_m6[_2137].x - 0.0500000007450580596923828125f, _1251) * ((1.0f - _34_m6[_2137].z) + (step(0.5f, _1249) * _34_m6[_2137].z));
                      } else {
                        _2918 = 1.0f;
                      }
                      _2926 = _2494;
                      _2927 = 0.0f.xxx;
                      _2928 = _2918;
                      _2929 = _2906 ? _34_m6[_2137].y : 0.0f;
                    }
                    bool3 _2930 = _2902.xxx;
                    _2946 = _2473;
                    _2947 = _2926;
                    _2948 = float3(_2930.x ? _1642.x : 0.0f.xxx.x, _2930.y ? _1642.y : 0.0f.xxx.y, _2930.z ? _1642.z : 0.0f.xxx.z);
                    _2949 = _2927;
                    _2950 = _2928;
                    _2951 = _2929;
                  }
                  _2973 = _2946;
                  _2974 = _34_m6[_2125].xyz;
                  _2975 = _2947;
                  _2976 = _2948;
                  _2977 = _2949;
                  _2978 = _2950;
                  _2979 = _2951;
                }
                float3 _3007;
                [branch] if (_2244 != 3u) {
                  float _2984 = lerp(_1648, 0.00999999977648258209228515625f, _2979);
                  float _2987 = dot(_614, normalize(_2334 + _463));
                  float _2988 = _2984 * _2984;
                  float _2992 = (((_2987 * _2988) - _2987) * _2987) + 1.0f;
                  float _2993 = _2992 * _2992;
                  _3007 = ((_1645 * clamp((((_2988 != _2993) ? (_2988 / _2993) : 1.0f) * (0.5f / ((_1866 + (_2984 * _1868)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2978) * _34_m6[_2146].z;
                }
                else {
                  _3007 = 0.0f.xxx;
                }
                float3 _3010 = _2974 * _2973;
                _3017 = _2086 + (((_3010 * lerp(_2977, _2976, _2975.xxx)) * _1885) + ((_3010 * _3007) * _2975));
              }
              else {
                _3017 = _2086;
              }
              _3018 = _3017;
              break;
            } while (false);
            _3019 = _3018;
            break;
          } while (false);
          _3020 = _3019;
        } else {
          _3020 = _2086;
        }
        _3021 = _3020;
        break;
      } while (false);
      _2112 = _3021;
    }
  }
  float3 _3061;
  [branch] if (_51_m12 > 0.5f) {
    _3061 = lerp(lerp(0.5f.xxx, lerp(dot(_2085, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2085, _51_m14.xxx), _51_m15.xxx) * _51_m13, _51_m26.xyz, _51_m26.w.xxx) + ((_51_m27.xyz * smoothstep(1.0f - _51_m16, 1.0f, 1.0f - clamp(_1933, 0.0f, 1.0f))) * _51_m17);
  }
  else {
    _3061 = _2085;
  }
  float4 _3068 = float4(_3061 * _20_m20.y, _1597);
  _3068.w = (_51_m8 == 1.0f) ? _1597 : 1.0f;
  float4 _3453;
  [branch] if (_20_m94.w < 0.5f) {
    float _3093 = _520.y * _20_m46.w;
    float _3098 = max(0.00999999977648258209228515625f, _3093 + _20_m47.w);
    float3 _3112 = exp(_20_m45.xyz * ((-max(0.0f, (_464 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3098)) / _3098) * exp(_3093 + _20_m48.w))));
    float _3115 = dot(_2024, _20_m44.xyz);
    float _3121 = _20_m45.w * _20_m45.w;
    float _3125 = (1.0f + _3121) - ((2.0f * _20_m45.w) * _3115);
    float3 _3445;
    float _3446;
    if (_20_m55.z > 0.0f) {
      uint3 _3276 = (uint3(int3(_1712, _1713, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3277 = _3276.y;
      uint _3278 = _3276.z;
      uint _3281 = _3276.x + (_3277 * _3278);
      uint _3283 = _3277 + (_3278 * _3281);
      uint _3285 = _3278 + (_3281 * _3283);
      uint _3287 = _3281 + (_3283 * _3285);
      float _3309 = dot(_2024, -_18_m0[2].xyz);
      float3 _3316 = _520 - _18_m11.xyz;
      float _3318 = (_20_m55.w * ((_3309 > 5.9604644775390625e-08f) ? (1.0f / _3309) : 0.0f)) * (1.0f / _464);
      float _3319 = _3316.y;
      float _3320 = _3318 * _3319;
      float _3322 = _18_m11.y + _3320;
      float _3323 = _3319 - _3320;
      float _3325 = (1.0f - _3318) * _464;
      float _3339 = max(-127.0f, _20_m49.z * _3323);
      float _3363 = max(-127.0f, _20_m52.x * _3323);
      float _3374 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3322 - _20_m49.x)))) * ((abs(_3339) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3339)) / _3339) : (0.693147182464599609375f - (0.2402265071868896484375f * _3339)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3322 - _20_m52.z)))) * ((abs(_3363) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3363)) / _3363) : (0.693147182464599609375f - (0.2402265071868896484375f * _3363))));
      float _3396 = clamp((_464 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3399 = clamp((max(clamp(exp2(-(_3374 * _3325)), 0.0f, 1.0f), _20_m51.w) + clamp((_464 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3396, 0.0f, 1.0f);
      float4 _3439 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _68.SampleLevel(_25, float3((_2060 + ((((float3(uint3(_3287, _3283 + (_3285 * _3287), _429) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_444 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_444 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _3445 = _3439.xyz + (((_20_m51.xyz * (1.0f - _3399)) + (((_20_m54.xyz * pow(clamp(dot(_463, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3374 * max(_3325 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3396))) * _3439.w);
      _3446 = _3439.w * _3399;
    } else {
      float3 _3152 = _520 - _18_m11.xyz;
      float _3154 = _3152.y;
      float _3168 = max(-127.0f, _20_m49.z * _3154);
      float _3192 = max(-127.0f, _20_m52.x * _3154);
      float _3203 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_3168) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3168)) / _3168) : (0.693147182464599609375f - (0.2402265071868896484375f * _3168)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_3192) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3192)) / _3192) : (0.693147182464599609375f - (0.2402265071868896484375f * _3192))));
      float _3225 = clamp((_464 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _3228 = clamp((max(clamp(exp2(-(_3203 * _464)), 0.0f, 1.0f), _20_m51.w) + clamp((_464 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _3225, 0.0f, 1.0f);
      _3445 = (_20_m51.xyz * (1.0f - _3228)) + (((_20_m54.xyz * pow(clamp(dot(_463, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_3203 * max(_464 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3225));
      _3446 = _3228;
    }
    float3 _3451 = (_3068.xyz * (_3112 * _3446)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3115 * _3115)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3121) / max((12.56637096405029296875f * _3125) * sqrt(_3125), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3112)) * _3446) + _3445);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _3451 = (_3451 * 0.65f) + (_3068.xyz * 0.35f);
    }
    // RenoDX code end
    _3453 = float4(_3451.x, _3451.y, _3451.z, _3068.w);
  }
  else {
    _3453 = _3068;
  }
  _15 = _3453;
  _16 = _1675;
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

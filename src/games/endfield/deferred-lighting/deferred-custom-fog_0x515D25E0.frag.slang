#include "./renodx_injection.hlsli"

// Ported from the native 0x515D25E0 Vulkan dump.
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

static float3 _439;
static float _440;
static float3 _441;
static float _443;
static uint _444;

static const int2 _394[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _395[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
  float4 _51_m52 : packoffset(c19);
  float4 _51_m53 : packoffset(c20);
  float4 _51_m54 : packoffset(c21);
  float4 _51_m55 : packoffset(c22);
  float4 _51_m56 : packoffset(c23);
  float4 _51_m57 : packoffset(c24);
  float2 _51_m58 : packoffset(c25);
  float2 _51_m59 : packoffset(c25.z);
  float _51_m60 : packoffset(c26);
  float _51_m61 : packoffset(c26.y);
  float _51_m62 : packoffset(c26.z);
  float _51_m63 : packoffset(c26.w);
  float4 _51_m64 : packoffset(c27);
  float4 _51_m65 : packoffset(c28);
  float4 _51_m66 : packoffset(c29);
  float4 _51_m67 : packoffset(c30);
  float _51_m68 : packoffset(c31);
  float _51_m69 : packoffset(c31.y);
  float _51_m70 : packoffset(c31.z);
  float _51_m71 : packoffset(c31.w);
  float _51_m72 : packoffset(c32);
  float _51_m73 : packoffset(c32.y);
  float _51_m74 : packoffset(c32.z);
  float _51_m75 : packoffset(c32.w);
};

[[vk::binding(52, 0)]] cbuffer _66_67 : register(b52, space0) {
  float4 _67_m0[32] : packoffset(c0);
  column_major float4x4 _67_m1[32] : packoffset(c32);
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
[[vk::binding(6, 1)]] Texture2D<float4> _52 : register(t6, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _53 : register(t3, space1);
[[vk::binding(46, 0)]] Texture2D<float4> _54 : register(t46, space0);
[[vk::binding(43, 0)]] Texture2D<float4> _55 : register(t43, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _56 : register(t41, space0);
[[vk::binding(8, 1)]] Texture2D<float4> _57 : register(t8, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _58 : register(t4, space1);
[[vk::binding(7, 1)]] Texture2D<float4> _59 : register(t7, space1);
[[vk::binding(5, 1)]] Texture2D<float4> _60 : register(t5, space1);
[[vk::binding(47, 0)]] TextureCube<float4> _62 : register(t47, space0);
[[vk::binding(1, 1)]] Texture2D<float4> _63 : register(t1, space1);
[[vk::binding(2, 1)]] Texture2D<float4> _64 : register(t2, space1);
[[vk::binding(29, 0)]] Texture2D<float4> _65 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _70 : register(t38, space0);

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
  float _460 = 1.0f / gl_FragCoord.w;
  float3 _475 = lerp(-_4, float3(_18_m0[2u].x, _18_m0[2u].y, _18_m0[2u].z), _20_m4.w.xxx);
  float _476 = dot(_475, _475);
  float _478 = rsqrt(max(_476, 9.9999999392252902907785028219223e-09f));
  float3 _479 = _475 * _478;
  float _480 = _476 * _478;
  uint _483 = asuint(_23_m0[_13]._m2.x);
  bool _488 = (asuint(_23_m0[_13]._m1.w) & 16u) != 0u;
  float4 _501;
  float4 _502;
  if (_488) {
    // RenoDX code start: preserve the existing deferred-lighting controls.
    /* Vanilla 0x515D25E0:
    _501 = asfloat(_32_Load4((_483 + 2u) * 16 + 0));
    _502 = asfloat(_32_Load4(_483 * 16 + 0));
    */
    _501 = asfloat(_32_Load4((_483 + 2u) * 16 + 0));
    _502 = asfloat(_32_Load4(_483 * 16 + 0));
    // RenoDX code end
  } else {
    _501 = _23_m0[_13]._m0[2];
    _502 = _23_m0[_13]._m0[0];
  }
  float4 _514 = _57.SampleBias(_26, _3 + (_51_m58 * _20_m77.w), _20_m16);
  float3 _519 = _514.xyz * _51_m24.xyz;
  float4 _523 = _58.SampleBias(_26, _3, _20_m16);
  float _524 = _523.x;
  float _526 = _523.z;
  float _528 = 1.0f - _523.w;
  float3 _536 = _4 + _18_m11.xyz;
  float3 _540 = _536 - float3(_502.w, _443, _501.w);
  _540.y = 6.103515625e-05f;
  float3 _543 = normalize(_540);
  float3 _551 = _5 * 1.0f;
  float4 _556 = _59.SampleBias(_26, _3, _20_m16);
  _556.w = _556.w * _556.x;
  float2 _565 = (_556.wy * 2.0f) - 1.0f.xx;
  float3 _566 = float3(_565.x, _565.y, _441.z);
  float2 _567 = _565.xy;
  _566.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_567, _567), 0.0f, 1.0f)));
  float2 _575 = _566.xy * _51_m3;
  float3 _581 = _519 * _51_m18;
  float3 _585 = lerp(dot(_581, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _581, _51_m19.xxx);
  float4 _593 = _60.SampleBias(_26, _3 + (_51_m59 * _20_m77.w), _20_m16);
  float3 _620 = mul(float3(_575.x, _575.y, _566.z), float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _551));
  float _629 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _51_m5));
  float3 _630 = (_620 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_620, _620)))) * _629;
  float3 _631 = normalize(_5) * _629;
  uint2 _633 = uint2(gl_FragCoord.xy);
  float3 _643 = mul(float3x3(_18_m1[0].xyz, _18_m1[1].xyz, _18_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  uint _652 = asuint((_20_m92.x > 0.5f) ? _20_m92.y : _23_m0[_13]._m7.x);
  float4 _665 = float4(float(_652 & 255u), float((_652 >> 8u) & 255u), float((_652 >> 16u) & 255u), float((_652 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
  float _666 = _665.x;
  float _669 = _665.w;
  float _675 = _536.y;
  float _678 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_23_m0[_13]._m7.y, _20_m92.w, _20_m92.x) - _675) * _665.y;
  float _679 = max(_665.z, _678);
  float _688 = lerp(_20_m22.x, 1.0f, _20_m94.w) * _20_m20.x;
  float4 _1183;
  float3 _1184;
  float3 _1185;
  float _1186;
  if (_20_m83.y < 0.5f) {
    float3 _703 = _536 - (_20_m108.xyz + (_643 * (-_20_m110.w)));
    float _718 = max(min(max((max(abs(_703.x), abs(_703.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_703.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1020;
    float4 _1021;
    float4 _1022;
    float _1023;
    float _1024;
    if ((_20_m108.w != 0.0f) && (_718 < 1.0f)) {
      float3 _731 = _536 - (_20_m108.xyz + (_643 * (-_20_m110.y)));
      float _745 = max(clamp((max(abs(_731.x), abs(_731.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_731.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _821;
      float4 _822;
      float4 _823;
      float4 _824;
      if (_745 < 1.0f) {
        float3 _754 = ((_536 * 2.0f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _756 = _754 - floor(_754);
        float4 _760 = _44.SampleLevel(_26, _756, 0.0f);
        float _761 = 1.0f - _745;
        float _765 = _20_m109.y * 0.5f;
        float _770 = _756.x;
        float _771 = clamp(_756.y, _765, 1.0f - _765) * 0.3333333432674407958984375f;
        float _772 = _756.z;
        float4 _775 = _45.SampleLevel(_25, float3(_770, _771, _772), 0.0f);
        float _791 = _760.x;
        float _801 = _760.y;
        float _811 = _760.z;
        _821 = _718 + (_775.w * _761);
        _822 = float4(((_45.SampleLevel(_25, float3(_770, _771 + 0.666666686534881591796875f, _772), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _811, _811) * _761;
        _823 = float4(((_45.SampleLevel(_25, float3(_770, _771 + 0.3333333432674407958984375f, _772), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _801, _801) * _761;
        _824 = float4(((_775.xyz * 4.0f) - 2.0f.xxx) * _791, _791) * _761;
      } else {
        _821 = _718;
        _822 = 0.0f.xxxx;
        _823 = 0.0f.xxxx;
        _824 = 0.0f.xxxx;
      }
      float3 _830 = _536 - (_20_m108.xyz + (_643 * (-_20_m110.z)));
      float _844 = max(clamp((max(abs(_830.x), abs(_830.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_830.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _924;
      float4 _925;
      float4 _926;
      float4 _927;
      if (_844 < 1.0f) {
        float3 _853 = ((_536 * 0.5f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _855 = _853 - floor(_853);
        float4 _859 = _46.SampleLevel(_26, _855, 0.0f);
        float _861 = _745 * (1.0f - _844);
        float _865 = _20_m109.y * 0.5f;
        float _870 = _855.x;
        float _871 = clamp(_855.y, _865, 1.0f - _865) * 0.3333333432674407958984375f;
        float _872 = _855.z;
        float4 _875 = _47.SampleLevel(_25, float3(_870, _871, _872), 0.0f);
        float _891 = _859.x;
        float _902 = _859.y;
        float _913 = _859.z;
        _924 = _821 + (_875.w * _861);
        _925 = _822 + (float4(((_47.SampleLevel(_25, float3(_870, _871 + 0.666666686534881591796875f, _872), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _913, _913) * _861);
        _926 = _823 + (float4(((_47.SampleLevel(_25, float3(_870, _871 + 0.3333333432674407958984375f, _872), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _902, _902) * _861);
        _927 = _824 + (float4(((_875.xyz * 4.0f) - 2.0f.xxx) * _891, _891) * _861);
      } else {
        _924 = _821;
        _925 = _822;
        _926 = _823;
        _927 = _824;
      }
      float4 _1010;
      float4 _1011;
      float4 _1012;
      float _1013;
      if (_844 > 0.0f) {
        float3 _936 = ((_536 * 0.125f) + 0.5f.xxx) * _20_m109.xyz;
        float3 _939 = _20_m109.xyz * 0.5f;
        float3 _941 = clamp(_936 - floor(_936), _939, 1.0f.xxx - _939);
        float4 _945 = _48.SampleLevel(_26, _941, 0.0f);
        float _947 = _844 * (1.0f - _718);
        float _951 = _20_m109.y * 0.5f;
        float _956 = _941.x;
        float _957 = clamp(_941.y, _951, 1.0f - _951) * 0.3333333432674407958984375f;
        float _958 = _941.z;
        float4 _961 = _49.SampleLevel(_25, float3(_956, _957, _958), 0.0f);
        float _977 = _945.x;
        float _988 = _945.y;
        float _999 = _945.z;
        _1010 = _925 + (float4(((_49.SampleLevel(_25, float3(_956, _957 + 0.666666686534881591796875f, _958), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _999, _999) * _947);
        _1011 = _926 + (float4(((_49.SampleLevel(_25, float3(_956, _957 + 0.3333333432674407958984375f, _958), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _988, _988) * _947);
        _1012 = _927 + (float4(((_961.xyz * 4.0f) - 2.0f.xxx) * _977, _977) * _947);
        _1013 = _924 + (_961.w * _947);
      } else {
        _1010 = _925;
        _1011 = _926;
        _1012 = _927;
        _1013 = _924;
      }
      float _1016 = clamp((_1013 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1020 = _1010;
      _1021 = _1011;
      _1022 = _1012;
      _1023 = _1016 - _718;
      _1024 = (_1016 + _718) * 0.5f;
    } else {
      _1020 = 0.0f.xxxx;
      _1021 = 0.0f.xxxx;
      _1022 = 0.0f.xxxx;
      _1023 = 0.0f;
      _1024 = 1.0f;
    }
    float4 _1044 = _1022 + float4(_20_m111.x * _1024, (_20_m111.y * _1024) + ((_20_m111.w * _1023) * 0.5f), _20_m111.z * _1024, (_20_m111.w * _1024) + ((_20_m111.y * _1023) * 0.375f));
    float4 _1064 = _1021 + float4(_20_m112.x * _1024, (_20_m112.y * _1024) + ((_20_m112.w * _1023) * 0.5f), _20_m112.z * _1024, (_20_m112.w * _1024) + ((_20_m112.y * _1023) * 0.375f));
    float4 _1084 = _1020 + float4(_20_m113.x * _1024, (_20_m113.y * _1024) + ((_20_m113.w * _1023) * 0.5f), _20_m113.z * _1024, (_20_m113.w * _1024) + ((_20_m113.y * _1023) * 0.375f));
    float4 _1088 = float4(_630, 1.0f);
    float3 _1094 = max(float3(dot(_1044, _1088), dot(_1064, _1088), dot(_1084, _1088)), 0.0f.xxx) * _688;
    float3 _1102 = ((_1044.xyz * 0.2125999927520751953125f) + (_1064.xyz * 0.715200006961822509765625f)) + (_1084.xyz * 0.072200000286102294921875f);
    float3 _1106 = _1102 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1102, _1102)));
    float _1108 = abs(_1106.y);
    float3 _1109 = _1106;
    _1109.y = _1108;
    float4 _1110 = float4(_1109.x, _1109.y, _1109.z, 0.0f.xxxx.w);
    _1110.w = 1.0f;
    float4 _1114 = float4(_1106.x, _1108, _1106.z, 1.0f);
    float3 _1119 = max(float3(dot(_1044, _1114), dot(_1064, _1114), dot(_1084, _1114)), 0.0f.xxx);
    float _1127 = _1094.z;
    float _1128 = _1094.y;
    float4 _1133 = lerp(float4(_1127, _1128, -1.0f, 0.666666686534881591796875f), float4(_1128, _1127, 0.0f, -0.3333333432674407958984375f), step(_1127, _1128).xxxx);
    float _1134 = _1094.x;
    float _1135 = _1133.x;
    float4 _1143 = lerp(float4(_1135, _1133.yw, _1134), float4(_1134, _1133.yz, _1135), step(_1135, _1134).xxxx);
    float _1144 = _1143.x;
    float _1145 = _1143.w;
    float _1146 = _1143.y;
    float _1148 = _1144 - min(_1145, _1146);
    float _1158 = frac(abs(_1143.z + ((_1145 - _1146) / ((6.0f * _1148) + 9.9999997473787516355514526367188e-05f))));
    float _1165 = min(_1148 / (_1144 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1158 - 0.5f))) * clamp(_1144, 0.0f, 1.0f));
    float _1167 = 2.0f / (2.0f - _1165);
    _1183 = _1110;
    _1184 = _1094;
    _1185 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1158, _1165, _1167).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1165.xxx) * _1167;
    _1186 = max(max(max(_1119.x, _1119.y), _1119.z), 0.0f) * _688;
  } else {
    _1183 = 0.0f.xxxx;
    _1184 = 1.0f.xxx;
    _1185 = _20_m84.xyz;
    _1186 = _688;
  }
  float3 _1906;
  float _1907;
  float _1908;
  float _1909;
  float _1910;
  float3 _1911;
  float3 _1912;
  [branch] if ((clamp(_666 + _679, 0.0f, 1.0f) - _51_m20) > 0.00999999977648258209228515625f) {
    float _1214 = 1.0f - _524;
    float _1217 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_519 * _1214, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
    bool3 _1220 = _488.xxx;
    float3 _1222 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1226 = float3(_1220.x ? _1222.x : _11.x, _1220.y ? _1222.y : _11.y, _1220.z ? _1222.z : _11.z) * _20_m92.z;
    float3 _1228 = float3(_1220.x ? _10.xzy.x : _10.x, _1220.y ? _10.xzy.y : _10.y, _1220.z ? _10.xzy.z : _10.z);
    float3 _1230 = abs(_1228) - 0.20000000298023223876953125f.xxx;
    float3 _1233 = max((_1230 * _1230) * _1230, 6.103515625e-05f.xxx);
    float3 _1236 = _1233 / dot(_1233, 1.0f.xxx).xxx;
    float2 _1244 = _1226.xy;
    float2 _1249 = _1226.zy;
    float4 _1259 = ((_54.SampleBias(_26, _1226.xz, _20_m16) * _1236.y) + (_54.SampleBias(_26, _1244, _20_m16) * _1236.z)) + (_54.SampleBias(_26, _1249, _20_m16) * _1236.x);
    float _1260 = _1259.w;
    float _1262 = 1.10000002384185791015625f - _1260;
    float _1271 = max(smoothstep(0.800000011920928955078125f - _1260, _1262, clamp((_666 * _1214) + (_630.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1260, _1262, clamp(_678 * _1214, 0.0f, 1.0f)));
    float _1278 = smoothstep(0.5f, 0.75f, _524);
    float _1280 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _528) * _1217;
    float _1283 = clamp(_1280 + _1278, 0.0f, 1.0f) * max(_666, _679);
    bool _1287 = !((step(_666, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _679)) != 0.0f);
    bool2 _1288 = _1287.xx;
    float2 _1290 = (1.0f - _679).xx;
    float2 _1291 = float2(_1288.x ? float2(3.0f, 4.345600128173828125f).x : _1290.x, _1288.y ? float2(3.0f, 4.345600128173828125f).y : _1290.y);
    float _1292 = 1.0f - _1283;
    float _1295 = _1287 ? _20_m10.x : 1.0f;
    float _1297 = _1295 * _1291.x;
    float _1299 = _1295 * _1291.y;
    float3 _1300 = _1226 * 20.0f;
    float3 _1301 = _1226 * 34.345600128173828125f;
    float3 _1303 = pow(max(_1230, 0.0f.xxx), 10.0f.xxx);
    float3 _1307 = _1303 / max(dot(_1303, 1.0f.xxx), 6.103515625e-05f).xxx;
    float _1309 = _1307.y;
    float2 _1310 = _1300.xz * 1.0f;
    float2 _1311 = floor(_1310);
    float2 _1314 = frac(_1311 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1318 = _1314 + dot(_1314, _1314 + 34.345001220703125f.xx).xx;
    float _1319 = _1318.x;
    float _1320 = _1318.y;
    float2 _1324 = frac(float2(_1319 * _1320, _1319 + _1320));
    float2 _1327 = frac((_1311 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1331 = _1327 + dot(_1327, _1327 + 34.345001220703125f.xx).xx;
    float _1332 = _1331.x;
    float _1333 = _1331.y;
    float2 _1337 = frac(float2(_1332 * _1333, _1332 + _1333));
    float _1343 = _1324.x;
    float _1345 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1343);
    float2 _1346 = ((_1310 - _1311) + ((((_1337 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1349 = _1346.y;
    float2 _1353 = float2(_1346.x * 1.25f, _1349 * ((_1349 < 0.0f) ? 1.25f : 0.75f));
    float _1356 = _1297 + _1343;
    float _1360 = _1287 ? frac(_1356) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1356, 0.0f, 1.0f));
    float _1372 = _1324.y;
    float _1375 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1360) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1360)) * step(0.001000000047497451305389404296875f, smoothstep(_1345, 0.0f, length(_1353)))) * step(_1292, _1372 - 0.100000001490116119384765625f);
    float _1378 = _1375 * _1309;
    float _1386 = _1307.z;
    float2 _1387 = _1300.xy * 1.0f;
    float2 _1388 = floor(_1387);
    float2 _1391 = frac(_1388 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1395 = _1391 + dot(_1391, _1391 + 34.345001220703125f.xx).xx;
    float _1396 = _1395.x;
    float _1397 = _1395.y;
    float2 _1401 = frac(float2(_1396 * _1397, _1396 + _1397));
    float2 _1404 = frac((_1388 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1408 = _1404 + dot(_1404, _1404 + 34.345001220703125f.xx).xx;
    float _1409 = _1408.x;
    float _1410 = _1408.y;
    float2 _1414 = frac(float2(_1409 * _1410, _1409 + _1410));
    float _1420 = _1401.x;
    float _1422 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1420);
    float2 _1423 = ((_1387 - _1388) + ((((_1414 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1426 = _1423.y;
    float2 _1430 = float2(_1423.x * 1.25f, _1426 * ((_1426 < 0.0f) ? 1.25f : 0.75f));
    float _1433 = _1297 + _1420;
    float _1437 = _1287 ? frac(_1433) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1433, 0.0f, 1.0f));
    float _1449 = _1401.y;
    float _1452 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1437) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1437)) * step(0.001000000047497451305389404296875f, smoothstep(_1422, 0.0f, length(_1430)))) * step(_1292, _1449 - 0.100000001490116119384765625f);
    float _1455 = _1452 * _1386;
    float _1463 = _1307.x;
    float2 _1464 = _1300.zy * 1.0f;
    float2 _1465 = floor(_1464);
    float2 _1468 = frac(_1465 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1472 = _1468 + dot(_1468, _1468 + 34.345001220703125f.xx).xx;
    float _1473 = _1472.x;
    float _1474 = _1472.y;
    float2 _1478 = frac(float2(_1473 * _1474, _1473 + _1474));
    float2 _1481 = frac((_1465 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1485 = _1481 + dot(_1481, _1481 + 34.345001220703125f.xx).xx;
    float _1486 = _1485.x;
    float _1487 = _1485.y;
    float2 _1491 = frac(float2(_1486 * _1487, _1486 + _1487));
    float _1497 = _1478.x;
    float _1499 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1497);
    float2 _1500 = ((_1464 - _1465) + ((((_1491 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1503 = _1500.y;
    float2 _1507 = float2(_1500.x * 1.25f, _1503 * ((_1503 < 0.0f) ? 1.25f : 0.75f));
    float _1510 = _1297 + _1497;
    float _1514 = _1287 ? frac(_1510) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1510, 0.0f, 1.0f));
    float _1526 = _1478.y;
    float _1529 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1514) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1514)) * step(0.001000000047497451305389404296875f, smoothstep(_1499, 0.0f, length(_1507)))) * step(_1292, _1526 - 0.100000001490116119384765625f);
    float _1532 = _1529 * _1463;
    float2 _1545 = (float4(((clamp(_1353 / _1345.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1337.x)) * _1375) * _1309, _1378, _1372).xy + float4(((clamp(_1430 / _1422.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1414.x)) * _1452) * _1386, _1455, _1449).xy) + float4(((clamp(_1507 / _1499.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1491.x)) * _1529) * _1463, _1532, _1526).xy;
    float _1547 = max(_1532, max(_1378, _1455));
    float4 _1550 = float4(_1545, _1547, 0.0f);
    float2 _1552 = _1301.xz * 1.0f;
    float2 _1553 = floor(_1552);
    float2 _1556 = frac(_1553 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1560 = _1556 + dot(_1556, _1556 + 34.345001220703125f.xx).xx;
    float _1561 = _1560.x;
    float _1562 = _1560.y;
    float2 _1566 = frac(float2(_1561 * _1562, _1561 + _1562));
    float2 _1569 = frac((_1553 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1573 = _1569 + dot(_1569, _1569 + 34.345001220703125f.xx).xx;
    float _1574 = _1573.x;
    float _1575 = _1573.y;
    float2 _1579 = frac(float2(_1574 * _1575, _1574 + _1575));
    float _1585 = _1566.x;
    float _1587 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1585);
    float2 _1588 = ((_1552 - _1553) + ((((_1579 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1591 = _1588.y;
    float2 _1595 = float2(_1588.x * 1.25f, _1591 * ((_1591 < 0.0f) ? 1.25f : 0.75f));
    float _1598 = _1299 + _1585;
    float _1602 = _1287 ? frac(_1598) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1598, 0.0f, 1.0f));
    float _1614 = _1566.y;
    float _1617 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1602) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1602)) * step(0.001000000047497451305389404296875f, smoothstep(_1587, 0.0f, length(_1595)))) * step(_1292, _1614 - 0.100000001490116119384765625f);
    float _1620 = _1617 * _1309;
    float2 _1625 = _1301.xy * 1.0f;
    float2 _1626 = floor(_1625);
    float2 _1629 = frac(_1626 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1633 = _1629 + dot(_1629, _1629 + 34.345001220703125f.xx).xx;
    float _1634 = _1633.x;
    float _1635 = _1633.y;
    float2 _1639 = frac(float2(_1634 * _1635, _1634 + _1635));
    float2 _1642 = frac((_1626 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1646 = _1642 + dot(_1642, _1642 + 34.345001220703125f.xx).xx;
    float _1647 = _1646.x;
    float _1648 = _1646.y;
    float2 _1652 = frac(float2(_1647 * _1648, _1647 + _1648));
    float _1658 = _1639.x;
    float _1660 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1658);
    float2 _1661 = ((_1625 - _1626) + ((((_1652 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1664 = _1661.y;
    float2 _1668 = float2(_1661.x * 1.25f, _1664 * ((_1664 < 0.0f) ? 1.25f : 0.75f));
    float _1671 = _1299 + _1658;
    float _1675 = _1287 ? frac(_1671) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1671, 0.0f, 1.0f));
    float _1687 = _1639.y;
    float _1690 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1675) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1675)) * step(0.001000000047497451305389404296875f, smoothstep(_1660, 0.0f, length(_1668)))) * step(_1292, _1687 - 0.100000001490116119384765625f);
    float _1693 = _1690 * _1386;
    float2 _1698 = _1301.zy * 1.0f;
    float2 _1699 = floor(_1698);
    float2 _1702 = frac(_1699 * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1706 = _1702 + dot(_1702, _1702 + 34.345001220703125f.xx).xx;
    float _1707 = _1706.x;
    float _1708 = _1706.y;
    float2 _1712 = frac(float2(_1707 * _1708, _1707 + _1708));
    float2 _1715 = frac((_1699 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
    float2 _1719 = _1715 + dot(_1715, _1715 + 34.345001220703125f.xx).xx;
    float _1720 = _1719.x;
    float _1721 = _1719.y;
    float2 _1725 = frac(float2(_1720 * _1721, _1720 + _1721));
    float _1731 = _1712.x;
    float _1733 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1731);
    float2 _1734 = ((_1698 - _1699) + ((((_1725 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
    float _1737 = _1734.y;
    float2 _1741 = float2(_1734.x * 1.25f, _1737 * ((_1737 < 0.0f) ? 1.25f : 0.75f));
    float _1744 = _1299 + _1731;
    float _1748 = _1287 ? frac(_1744) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1744, 0.0f, 1.0f));
    float _1760 = _1712.y;
    float _1763 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1748) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1748)) * step(0.001000000047497451305389404296875f, smoothstep(_1733, 0.0f, length(_1741)))) * step(_1292, _1760 - 0.100000001490116119384765625f);
    float _1766 = _1763 * _1463;
    float2 _1774 = (float4(((clamp(_1595 / _1587.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1579.x)) * _1617) * _1309, _1620, _1614).xy + float4(((clamp(_1668 / _1660.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1652.x)) * _1690) * _1386, _1693, _1687).xy) + float4(((clamp(_1741 / _1733.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1725.x)) * _1763) * _1463, _1766, _1760).xy;
    float4 _1779 = float4(_1774, max(_1766, max(_1620, _1693)), 0.0f);
    float _1781 = step(max(float2(_1345 * _1375, _443) * _1309, max(float2(_1422 * _1452, _443) * _1386, float2(_1499 * _1529, _443) * _1463)).x, 0.00999999977648258209228515625f);
    float2 _1785 = _1550.xy + (_1779.xy * _1781);
    float3 _1794 = float3((_1259.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1785.x, _1785.y, 0.0f.xxx.z);
    float2 _1798 = float2(0.0f, (_20_m10.x * _20_m92.z) * 0.75f);
    float3 _1801 = float3(_1228.x, 0.0f, _1228.z);
    float3 _1807 = abs(_1801 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1801, _1801)))) - 0.20000000298023223876953125f.xxx;
    float3 _1810 = max((_1807 * _1807) * _1807, 6.103515625e-05f.xxx);
    float3 _1813 = _1810 / dot(_1810, 1.0f.xxx).xxx;
    float _1832 = _1813.z;
    float _1834 = _1813.x;
    float4 _1836 = (_55.SampleBias(_26, _1244, _20_m16) * _1832) + (_55.SampleBias(_26, _1249, _20_m16) * _1834);
    float2 _1848 = _1794.xy + ((((_1836.xy * 2.0f) - 1.0f.xx) * ((_55.SampleBias(_26, _1244 + _1798, _20_m16).w * _1832) + (_55.SampleBias(_26, _1249 + _1798, _20_m16).w * _1834))) * _1283);
    float3 _1849 = float3(_1848.x, _1848.y, _1794.z);
    float _1850 = _1836.z;
    float _1855 = max(max(max(_1550.zw * step(0.00999999977648258209228515625f, _1547), _1779.zw * _1781).x, step(1.0099999904632568359375f - _1283, _1259.z)), smoothstep(1.0f - _1850, 1.10000002384185791015625f - _1850, _1283) * _1283);
    float2 _1856 = _1848.xy;
    _1849.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1856, _1856), 0.0f, 1.0f)));
    float3 _1863 = normalize(_1849);
    float3 _1864 = cross(_630, float3(0.0f, 1.0f, 0.0f));
    bool3 _1867 = (dot(_1864, _1864) > 6.103515625e-05f).xxx;
    float3 _1868 = normalize(_1864);
    float3 _1869 = float3(_1867.x ? _1868.x : float3(1.0f, 0.0f, 0.0f).x, _1867.y ? _1868.y : float3(1.0f, 0.0f, 0.0f).y, _1867.z ? _1868.z : float3(1.0f, 0.0f, 0.0f).z);
    float _1880 = min(_528, 0.0500000007450580596923828125f);
    float _1881 = lerp(_528, _1880, _1855);
    float _1898 = lerp(1.0f, 0.5f, (_1271 * (1.0f - _1217)) * (1.0f - _1280));
    _1906 = normalize(lerp(_630, normalize(((_1869 * _1863.x) + (cross(_1869, _630) * _1863.y)) + (_630 * _1863.z)), _1855.xxx));
    _1907 = _1855;
    _1908 = _1880;
    _1909 = _1855;
    _1910 = max(_1881 - ((0.20000000298023223876953125f * _1217) * _1271), min(0.20000000298023223876953125f, _1881));
    _1911 = _585 * _1898;
    _1912 = lerp(_519, _519 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_519, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1855 * _1278).xxx) * _1898;
  }
  else {
    _1906 = _630;
    _1907 = 0.0f;
    _1908 = 0.00999999977648258209228515625f;
    _1909 = 0.0f;
    _1910 = _528;
    _1911 = _585;
    _1912 = _519;
  }
  float3 _2042;
  float3 _2043;
  float _2044;
  float3 _2045;
  float _2046;
  [branch] if ((_669 - _51_m20) > 0.00999999977648258209228515625f) {
    bool3 _1917 = _488.xxx;
    float3 _1919 = _11.xzy * float3(1.0f, 1.0f, -1.0f);
    float3 _1920 = float3(_1917.x ? _1919.x : _11.x, _1917.y ? _1919.y : _11.y, _1917.z ? _1919.z : _11.z);
    float3 _1923 = _1920 * _20_m92.z;
    float3 _1925 = float3(_1917.x ? _10.xzy.x : _10.x, _1917.y ? _10.xzy.y : _10.y, _1917.z ? _10.xzy.z : _10.z);
    float3 _1927 = abs(_1925) - 0.20000000298023223876953125f.xxx;
    float3 _1930 = max((_1927 * _1927) * _1927, 6.103515625e-05f.xxx);
    float3 _1933 = _1930 / dot(_1930, 1.0f.xxx).xxx;
    float4 _1956 = ((_56.SampleBias(_26, _1923.xz, _20_m16) * _1933.y) + (_56.SampleBias(_26, _1923.xy, _20_m16) * _1933.z)) + (_56.SampleBias(_26, _1923.zy, _20_m16) * _1933.x);
    float _1957 = _1925.y;
    float _1964 = clamp(_669 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1920.y) * clamp(_669 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
    float _1970 = _1964 * (2.0f - _1964);
    float _1977 = smoothstep(2.0f - _1970, 2.349999904632568359375f - _1970, ((_1957 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1956.z) * ((_526 * _526) * float(gl_FrontFacing));
    float _1989 = lerp(1.0f, 0.5f, ((_1964 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1912 * (1.0f - _524), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1956.w) * ((_1957 * 0.25f) + 0.75f));
    float3 _1991 = _1977.xxx;
    float2 _1997 = (_1956.xy * 2.0f) - 1.0f.xx;
    float3 _1998 = float3(_1997.x, _1997.y, _441.z);
    float2 _1999 = _1997.xy;
    _1998.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1999, _1999), 0.0f, 1.0f)));
    float2 _2007 = _1998.xy * 2.0f;
    float3 _2009 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_2007.x, _2007.y, _1998.z), _1991);
    float3 _2013 = _2009 * rsqrt(max(6.103515625e-05f, dot(_2009, _2009)));
    float _2014 = _630.y;
    float _2017 = step(0.00999999977648258209228515625f, 1.0f - (_2014 * _2014));
    float _2021 = lerp(_630.z, _2014, _2017);
    float3 _2028 = (float3(0.0f, _2017, 1.0f - _2017) - (_630 * _2021)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_2021 * _2021)));
    _2042 = ((cross(_2028, _630) * _2013.x) + (_2028 * _2013.y)) + (_630 * _2013.z);
    _2043 = lerp(_1912 * _1989, 0.87999999523162841796875f.xxx, _1991);
    _2044 = lerp(_524, 0.0f, _1977);
    _2045 = lerp(_1911 * _1989, 0.3079999983310699462890625f.xxx, _1991);
    _2046 = lerp(_1910, 0.89999997615814208984375f, clamp(_1977 * 4.0f, 0.0f, 1.0f));
  }
  else {
    _2042 = _630;
    _2043 = _1912;
    _2044 = _524;
    _2045 = _1911;
    _2046 = _1910;
  }
  float3 _2052 = _51_m55.xyz * _51_m42;
  float4 _2053 = float4(_2052.x, _2052.y, _2052.z, _51_m55.w);
  _2053.w = _51_m55.w * _51_m43;
  float2 _2141;
  if (_51_m41 < 1.5f) {
    _2141 = lerp(_3, _7, _51_m41.xx);
  } else {
    float2 _2140;
    if (_51_m41 < 2.5f) {
      bool3 _2071 = _488.xxx;
      float3 _2073 = float3(_2071.x ? _11.xzy.x : _11.x, _2071.y ? _11.xzy.y : _11.y, _2071.z ? _11.xzy.z : _11.z);
      float3 _2077 = _2073 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2073, _2073)));
      float _2078 = _2077.z;
      float _2079 = _2077.x;
      float _2080 = _2078 / _2079;
      float _2081 = abs(_2080);
      bool _2082 = _2081 < 1.0f;
      float _2084 = _2082 ? _2081 : (1.0f / _2081);
      float _2085 = _2084 * _2084;
      float _2090 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _2085)) * _2085)) * _2084;
      float _2092 = _2082 ? _2090 : (1.57079637050628662109375f - _2090);
      _2140 = float2(((((_2080 < 0.0f) ? (-_2092) : _2092) + (((_2078 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_2079 < 0.0f))) * 0.159154951572418212890625f) + 0.5f, _2073.y);
    } else {
      float2 _2112 = ((float2(_633) / _20_m5.xy) * 2.0f) - 1.0f.xx;
      _2140 = float2(_2112.x, (_2112.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _51_m51);
    }
    _2141 = _2140;
  }
  bool2 _2145 = (_51_m44 > 0.5f).xx;
  float2 _2228;
  if (_51_m45 < 1.5f) {
    _2228 = lerp(_3, _7, _51_m45.xx);
  } else {
    float2 _2227;
    if (_51_m45 < 2.5f) {
      bool3 _2158 = _488.xxx;
      float3 _2160 = float3(_2158.x ? _11.xzy.x : _11.x, _2158.y ? _11.xzy.y : _11.y, _2158.z ? _11.xzy.z : _11.z);
      float3 _2164 = _2160 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2160, _2160)));
      float _2165 = _2164.z;
      float _2166 = _2164.x;
      float _2167 = _2165 / _2166;
      float _2168 = abs(_2167);
      bool _2169 = _2168 < 1.0f;
      float _2171 = _2169 ? _2168 : (1.0f / _2168);
      float _2172 = _2171 * _2171;
      float _2177 = (1.0f + (((-0.3018949925899505615234375f) + (0.087292902171611785888671875f * _2172)) * _2172)) * _2171;
      float _2179 = _2169 ? _2177 : (1.57079637050628662109375f - _2177);
      _2227 = float2(((((_2167 < 0.0f) ? (-_2179) : _2179) + (((_2165 >= 0.0f) ? 3.141592502593994140625f : (-3.141592502593994140625f)) * float(_2166 < 0.0f))) * 0.159154951572418212890625f) + 0.5f, _2160.y);
    } else {
      float2 _2199 = ((float2(_633) / _20_m5.xy) * 2.0f) - 1.0f.xx;
      _2227 = float2(_2199.x, (_2199.y / _20_m5.x) * _20_m5.y) * lerp(1.0f, max(0.0f, (-dot(_18_m0[2u], float4(_23_m0[_13]._m0[0].w, _23_m0[_13]._m0[1].w, _23_m0[_13]._m0[2].w, 1.0f))) - _20_m3.y), _51_m51);
    }
    _2228 = _2227;
  }
  float4 _2244 = _64.SampleLevel(_26, ((float2(_2145.x ? _2228.x : _2141.x, _2145.y ? _2228.y : _2141.y) + (_51_m52.zw * _20_m77.w)) * _51_m57.xy) + _51_m57.zw, 0.0f);
  float _2247 = _2244.x;
  float4 _2263 = _63.SampleLevel(_26, (((_2141 + (_51_m50 * _2247).xx) + (_51_m52.xy * _20_m77.w)) * _51_m56.xy) + _51_m56.zw, 0.0f);
  float4 _2270 = _2053 * lerp(_2263, float4(1.0f, 1.0f, 1.0f, _2263.x), _51_m40.xxxx);
  float _2273 = _2270.w;
  float _2286 = _2247 - ((_51_m49 * 2.019999980926513671875f) - 1.0099999904632568359375f);
  float _2288 = clamp(-_2286, 0.0f, 1.0f);
  float _2290 = _2273 * clamp(_2286, 0.0f, 1.0f);
  float _2295 = (_514.w * _51_m24.w) * ((_51_m46 > 0.5f) ? _2290 : 1.0f);
  bool3 _2307 = (_51_m48 < 0.5f).xxx;
  float _2321 = pow(clamp(dot(_479, float3(_2307.x ? _551.x : _2042.x, _2307.y ? _551.y : _2042.y, _2307.z ? _551.z : _2042.z).xyz) + _51_m36, 0.0f, 1.0f), _51_m38);
  float _2323 = lerp(1.0f - _2321, _2321, _51_m39);
  float _2339 = 0.959999978542327880859375f - (_2044 * 0.959999978542327880859375f);
  float3 _2340 = _2043 * _2339;
  float3 _2343 = lerp(0.039999999105930328369140625f.xxx * _523.y, _2043, _2044.xxx);
  float3 _2344 = _2045 * _2339;
  float _2346 = max(_2046 * _2046, 0.0078125f);
  float _2347 = _2346 * _2346;
  float2 _2360 = (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx) - (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx);
  _2360.y = -_2360.y;
  float2 _2373 = ((sqrt(sqrt(abs(_2360 * 0.5f))) * float2(int2(sign(_2360)))) * 0.5f) + 0.5f.xx;
  float4 _2376 = float4(_2373.x, _2373.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
  _2376.z = 1.0f;
  _2376.w = (_1909 > 0.100000001490116119384765625f) ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
  float3 _2389 = lerp(-_34_m0.xyz, _20_m93.xyz, _20_m83.w.xxx);
  float3 _2393 = normalize(float3(_2389.x, 6.103515625e-05f, _2389.z));
  float3 _2403 = lerp(_34_m3.xyz, _20_m87.xyz, _20_m94.y.xxx);
  float3 _2409 = _2403 * lerp(_34_m3.w, _20_m87.w, _20_m94.w);
  int _2413 = int(_633.x);
  int _2414 = int(_633.y);
  float4 _2418 = _42.Load(int3(int3(_2413, _2414, 0).xy, 0));
  float _2423 = _2418.y;
  float _2426 = lerp(lerp(1.0f, _2418.x, _38_m6.x), 1.0f, _20_m83.z);
  float _2427 = dot(_2042, _2389);
  float3 _2434 = _2344 * _20_m82.z;
  float3 _2435 = _2434 * 0.64999997615814208984375f;
  float _2439 = dot(_2340, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2452 = clamp(-dot(_2393.xz, normalize(_643.xz)), 0.0f, 1.0f);
  float _2456 = 1.0f - _20_m94.x;
  float4 _2470 = _52.SampleLevel(_25, float2((clamp(lerp(_2427, ((-_2427) * ((_2427 * 0.5f) - 1.0f)) + 0.5f, (_2452 * smoothstep(0.25f, 0.75f, 1.0f - abs(_643.y))) * _2456) + (_20_m93.w * _20_m94.x), -1.0f, 1.0f) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2471 = _2470.w;
  float _2473 = _2470.x;
  float _2474 = _2470.y;
  float _2475 = _2470.z;
  float _2480 = max(max(_2473, _2474), _2475) - min(min(_2473, _2474), _2475);
  float4 _2488 = _52.SampleLevel(_25, float2((dot(_2042, _643) * 0.5f) + 0.5f, 0.5f), 0.0f);
  float _2489 = _2488.w;
  float _2490 = _526 * _2423;
  float _2497 = min(min(_2423, _526), _2471);
  float _2498 = _2489 * _2490;
  float3 _2502 = ((clamp(dot(_630, _20_m88.xyz) + _20_m89.x, 0.0f, 1.0f) * _20_m89.y) + _20_m89.z).xxx * lerp(_1185, 1.0f.xxx, (_20_m83.y * _2497).xxx);
  float3 _2504 = _2497.xxx;
  float3 _2527 = _2426.xxx;
  float3 _2528 = lerp((_2502 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1186), 1.5f), clamp(_1186, 1.25f, 1.75f), _20_m83.x)) * _20_m82.w, (lerp(dot(_2409, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2409, _2504) + ((_2502 * clamp(_1186, 0.0f, 1.5f)) * ((1.0f - _20_m94.y).xxx + (_2403 * _20_m94.y)))) * _20_m82.y, _2527);
  float3 _2529 = lerp(lerp(lerp(dot(_2435, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2435, 1.2000000476837158203125f.xxx), _2434, clamp((_2490 * _2489) + _2471, 0.0f, 1.0f).xxx), _2340, _2504);
  float3 _2535 = _2529 * ((1.0f - _2480).xxx + (_2470.xyz * _2480));
  float3 _2544 = lerp(lerp(_2434, lerp(_2439.xxx, _2340, 1.2000000476837158203125f.xxx), _2498.xxx), _2535 * clamp(dot(_2529, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2535, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2527);
  float4 _2548 = float4(_2544, _2426);
  float _2550 = lerp(_2498, _2497, _2426);
  float _2553 = lerp(_20_m82.z, 1.0f, _2550);
  float3 _2561 = float3(_643.x, lerp(0.5f, _2389.y, _2426), _643.z);
  float _2574 = clamp(dot(_1906, _479), 0.0f, 1.0f);
  float _2575 = dot(_1906, normalize(((_2389 * _2426) + ((_2561 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2561, _2561)))) * 2.0f)) + (_479 * (2.0f + _2426))));
  float _2579 = (((_2575 * _2347) - _2575) * _2575) + 1.0f;
  float _2580 = _2579 * _2579;
  float _2583 = (_2347 != _2580) ? (_2347 / _2580) : 1.0f;
  float _2584 = 2.0f * _2574;
  float _2586 = (1.0f + _2574) - _2574;
  float _2595 = _2574 * _2574;
  float3 _2607 = _2343 * _53.SampleLevel(_25, float2(lerp(_2583 / min(1.0f / (_2347 + 9.9999997473787516355514526367188e-05f), 65504.0f), _2595, _51_m4), _2046 * (1.0f - _2044)), 0.0f).xyz;
  float3 _2609 = lerp(_2343, _2607, _51_m4.xxx);
  float _2622 = (1.0f - _51_m6) + (_2295 * _51_m6);
  float3 _2624 = ((_2528 * _2544) * _2622) + (((_2607 * clamp((_2583 * (0.5f / ((_2584 + (_2346 * _2586)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2528 * (((_2550 * 0.5f) + 0.5f) * _2553)) * 1.0f)) * _20_m95.w);
  float _2625 = dot(_2624, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float _2628 = clamp(_2625 - 0.5f, 0.0f, 0.5f);
  float3 _2664 = normalize(cross(_643, lerp(float3(_20_m91.xy, 0.0f), (float3(_18_m0[0].x, _18_m0[0].y, _18_m0[0].z) * _20_m91.x) + (float3(_18_m0[1].x, _18_m0[1].y, _18_m0[1].z) * _20_m91.y), _20_m97.w.xxx)));
  float _2670 = dot(_479, _2042);
  float _2672 = 1.0f - abs(_2670);
  float _2694 = dot(_2393, _2042);
  float _2706 = 1.0f - _2426;
  float _2733 = lerp(_2046, _1908, _1907);
  float _2734 = _2733 * _2733;
  float _2735 = _2595 * _2574;
  float2 _2736 = float2(1.0f, _2574);
  float2 _2739 = float2(1.0f, _2734);
  float3 _2742 = float3(1.0f, _2734, (_2734 * _2734) * _2734);
  float _2747 = dot(mul(_2736, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2739) / dot(mul(float3(1.0f, _2595, _2735), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2742);
  float _2752 = dot(mul(_2736, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2739) / dot(mul(float3(1.0f, _2574, _2735), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2742);
  float3 _2755 = (_2609 * _2747) + _2752.xxx;
  float _2756 = _2747 + _2752;
  float3 _2762 = -_479;
  float3 _2763 = reflect(_2762, _1906);
  float _2768 = _2763.x;
  float _2770 = _2763.z;
  float3 _2773 = _2763;
  _2773.x = (_2768 * _20_m98.y) + (_2770 * _20_m98.x);
  _2773.z = (_2770 * _20_m98.y) - (_2768 * _20_m98.x);
  float3 _2794 = ((((_593.xyz * _51_m25.xyz) * _51_m7) * ((_51_m60 > 0.5f) ? lerp(1.0f, lerp(_51_m62, _51_m63, (sin(_51_m61 * _20_m77.w) * 0.5f) + 0.5f), _593.w) : 1.0f)) + (lerp(lerp((((_2244 * clamp((_2273 + _2244.w) * _51_m53.w, 0.0f, 1.0f)) * _51_m53) + _2270).xyz, (_51_m54.xyz * _2288) * _51_m42, _2288.xxx).xyz, _51_m54.xyz, (_51_m54.w * _2323).xxx).xyz * (clamp(_2290, 0.0f, 1.0f) * ((1.0f - _51_m37) + (_2323 * _51_m37)))).xyz) * _2622;
  float3 _2795 = lerp(_2625.xxx, _2624, ((_2628 * _2628) + 1.0f).xxx) + (((((_20_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _20_m91.w), lerp(0.89999997615814208984375f, 0.5f, _20_m91.w), _2672)) * _20_m90.w) * min(min(clamp(dot(_543, _2664) + 1.0f, 0.0f, 1.0f), _526), _2423)) * (lerp(0.25f.xxx, _2340, _20_m91.z.xxx) * clamp(dot(_2664, _2042), 0.0f, 1.0f))) + ((((((lerp(_1184 * (1.0f / max(max(max(_1184.x, _1184.y), _1184.z) * 0.5f, 1.0f)), _2409, _2527) * clamp(lerp(dot(_1183.xyz, _2042) * _1183.w, ((-_2694) * ((_2694 * 0.5f) - 1.0f)) + 0.5f, _2426), 0.0f, 1.0f)) * ((_2706 + (_2452 * _2426)) * _2456)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2672)) * min(_526, _2423)) * (_2706 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2439) * _2426))) * max(0.1500000059604644775390625f.xxx, _2340)));
  float2 _2798 = float2(_633);
  float2 _2800 = floor(_2798 * 0.03125f);
  int _2808 = int((_2800.x + (_2800.y * _36_m9)) * 8.0f);
  float _2815 = floor(_460 - (_20_m3.y * _36_m15));
  float _2819 = clamp(_2815, 0.0f, _36_m11 - 1.0f);
  int _2821 = int(_2819 * 8.0f);
  float3 _2823;
  _2823 = (_2795 + _2794) + (((_62.SampleLevel(_25, _2773, (1.2000000476837158203125f * log2(max(_2733, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2755 + ((_2609 * ((1.0f - _2756) / _2756)) * _2755)) * 1.0f)) * ((clamp(_1186, 0.5f, 1.5f) * _20_m82.w) * _2553)) * _1185);
  float3 _2824;
  [loop] for (int _2826 = 0; _2826 <= 7; _2823 = _2824, _2826++) {
    uint _2847 = (_2815 <= _2819) ? (_30.Load(uint((_36_m2 + _2808) + _2826) * 4 + 0) & _30.Load(uint((_36_m3 + _2821) + _2826) * 4 + 0)) : 0u;
    uint _2848 = uint(_2826);
    _2824 = _2823;
    uint _2853;
    float3 _2850;
    [loop] for (uint _2852 = _2847; _2852 != 0u; _2824 = _2850, _2852 = _2853) {
      uint _2857 = firstbitlow(_2852);
      _2853 = _2852 ^ (1u << (_2857 & 31u));
      int _2863 = int((32u * _2848) + _2857) * 8;
      int _2866 = _2863 + 1;
      int _2869 = _2863 + 2;
      int _2872 = _2863 + 3;
      int _2875 = _2863 + 4;
      int _2878 = _2863 + 5;
      int _2881 = _2863 + 6;
      int _2884 = _2863 + 7;
      uint _2888 = uint(_34_m6[_2878].w);
      float _2963;
      if ((_2888 & 1u) == 1u) {
        uint _2894 = asuint(_34_m6[_2878].x);
        uint _2901 = asuint(_34_m6[_2878].y);
        uint _2908 = asuint(_34_m6[_2878].z);
        uint _2915 = asuint(_34_m6[_2881].x);
        uint _2922 = asuint(_34_m6[_2881].y);
        uint _2929 = asuint(_34_m6[_2881].z);
        float3 _2948 = abs(mul(float4(_536 - _34_m6[_2866].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2894).x, spvUnpackHalf2x16(_2908).x, spvUnpackHalf2x16(_2922).x, 0.0f), float4(spvUnpackHalf2x16(_2894 >> 16u).x, spvUnpackHalf2x16(_2908 >> 16u).x, spvUnpackHalf2x16(_2922 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2901).x, spvUnpackHalf2x16(_2915).x, spvUnpackHalf2x16(_2929).x, 0.0f), float4(spvUnpackHalf2x16(_2901 >> 16u).x, spvUnpackHalf2x16(_2915 >> 16u).x, spvUnpackHalf2x16(_2929 >> 16u).x, 0.0f))).xyz);
        float _2955 = _34_m6[_2884].x * 0.5f;
        float _2961 = 1.0f - clamp((max(max(_2948.x, _2948.y), _2948.z) - (_2955 + 0.5f)) / (0.5f - _2955), 0.0f, 1.0f);
        _2963 = _2961 * _2961;
      } else {
        _2963 = 1.0f;
      }
      if (false || (_2963 < 0.001000000047497451305389404296875f)) {
        _2850 = _2824;
        continue;
      }
      float3 _3758;
      do {
        uint _2971 = uint(_34_m6[_2863].w);
        [branch] if (_2971 >= 4u) {
          _3758 = _2824;
          break;
        }
        float3 _3757;
        if (_34_m6[_2863].w < 1.5f) {
          float3 _3756;
          do {
            uint _2982 = asuint(_34_m6[_2872].w);
            if ((_2982 == 16u) || ((_34_m6[_2872].z + _20_m94.z) < 0.5f)) {
              _3756 = _2824;
              break;
            }
            bool _2993 = (_2971 & 1u) == 0u;
            bool _2997 = (!_2993) && (_34_m6[_2869].z > 0.0f);
            bool _2998 = _2982 == 4u;
            float _2999 = float(_2993);
            float _3007 = (0.5f + (0.5f * _34_m6[_2869].y)) - abs(_34_m6[_2869].x);
            float _3008 = _34_m6[_2869].y - _3007;
            float _3015 = abs(max((1.0f - abs(_3007)) - abs(_3008), 0.00048828125f));
            float3 _3019 = normalize(float3(_3007, _3008, (_34_m6[_2869].x >= 0.0f) ? _3015 : (-_3015)));
            float _3025 = lerp(_34_m6[_2881].w, max(2.0f * _34_m6[_2875].y, 0.100000001490116119384765625f), float(_2998));
            float3 _3030 = _34_m6[_2866].xyz - _536;
            float3 _3031 = -_3019;
            float3 _3036 = lerp(_3030, _3031 * dot(_3030, _3031), (float(_2998 && (_34_m6[_2875].z > 0.5f)) * _2999).xxx);
            float _3037 = dot(_3036, _3036);
            float _3038 = rsqrt(_3037);
            float3 _3039 = _3036 * _3038;
            float3 _3072;
            float _3073;
            if (_2997) {
              float3 _3043 = (_3019 * _34_m6[_2869].z) * 0.5f;
              float3 _3044 = _3036 - _3043;
              float3 _3045 = _3036 + _3043;
              float _3046 = length(_3044);
              float _3047 = length(_3045);
              float3 _3056 = normalize(cross(cross(_3019, _3039), _3019));
              _3072 = _3056;
              _3073 = ((1.0f / ((((_3046 * _3047) + dot(_3044, _3045)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_3056, _3044) / _3046) + (dot(_3056, _3045) / _3047)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_34_m6[_2869].z * _3038, 0.0f, 1.0f)), 0.0f, 1.0f));
            } else {
              _3072 = _3039;
              _3073 = 1.0f;
            }
            float _3095;
            if (_3025 < 0.0f) {
              float _3083 = _3037 * (_34_m6[_2866].w * _34_m6[_2866].w);
              float _3086 = clamp(1.0f - (_3083 * _3083), 0.0f, 1.0f);
              _3095 = lerp(1.0f / (_3037 + 1.0f), _3073, float(_2997)) * (_3086 * _3086);
            } else {
              float3 _3089 = _3036 * _34_m6[_2866].w;
              _3095 = _3073 * pow(1.0f - clamp(dot(_3089, _3089), 0.0f, 1.0f), _3025);
            }
            float _3100 = clamp((dot(_3072, _3031) - _34_m6[_2869].z) * _34_m6[_2869].w, 0.0f, 1.0f);
            float _3103 = _3095 * lerp(1.0f, _3100 * _3100, _2999);
            int _3105 = int(_34_m6[_2884].w);
            float _3209;
            if ((!_2997) && (_3105 >= 0)) {
              uint _3111 = uint(_3105);
              float2 _3202;
              [branch] if (_2999 != 0.0f) {
                float4 _3123 = mul(_67_m1[_3111], float4(_536.x, _675, _536.z, 1.0f));
                _3202 = _67_m0[_3111].xy + (clamp(_3123.xy / _3123.w.xx, 0.0f.xx, 1.0f.xx) * _67_m0[_3111].zw);
              }
              else {
                float3 _3143 = mul(float4(-_3036, 0.0f), _67_m1[_3111]).xyz;
                float3 _448 = _3143;
                float3 _447 = _3143;
                float3 _446 = abs(_3143);
                uint _3152 = uint(int(_446.y > _446.x));
                uint _3158 = (_446.z > _446[_3152]) ? 2u : _3152;
                uint _3164 = (_3158 * 2u) + uint(_447[_3158] < 0.0f);
                float _3168 = abs(_448[_3164 / 2u]);
                float _3188 = 0.5f - (0.000244140625f / _67_m0[_3111].w);
                _3202 = _67_m0[_3111].xy + (clamp(float2((float(_3164) + ((((_448[uint(_394[_3164].x)] * _395[_3164].x) / _3168) * _3188) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_448[uint(_394[_3164].y)] * _395[_3164].y) / _3168) * _3188)), 0.0f.xx, 1.0f.xx) * _67_m0[_3111].zw);
              }
              _3209 = _3103 * _65.SampleLevel(_25, _3202, 0.0f).x;
            } else {
              _3209 = _3103;
            }
            float _3210 = _3209 * _2963;
            float3 _3755;
            do {
              float3 _3754;
              [branch] if (_3210 > 9.9999997473787516355514526367188e-05f) {
                [branch] if (_2998) {
                  _3755 = lerp(_2824, _34_m6[_2863].xyz, (_3210 * (_34_m6[_2875].x * ((1.0f - _34_m6[_2875].w) + (smoothstep(-0.5f, 0.5f, dot(_631, _3072)) * _34_m6[_2875].w)))).xxx);
                  break;
                }
                float _3230 = dot(_2042, _3072);
                float _3231 = clamp(_3230, 0.0f, 1.0f);
                float _3630;
                if (_2982 != 0u) {
                  bool _3237 = _2993 || ((_2888 & 2u) != 0u);
                  int _3287;
                  if (_3237) {
                    _3287 = int(_34_m6[_2872].x);
                  } else {
                    uint _3244 = asuint(_34_m6[_2869].w);
                    uint _3245 = asuint(_34_m6[_2872].x);
                    float3 _3246 = _536 - _34_m6[_2866].xyz;
                    float3 _3247 = abs(_3246);
                    float _3248 = _3247.x;
                    float _3249 = _3247.y;
                    float _3251 = _3247.z;
                    int _3284;
                    if ((_3248 > _3249) && (_3248 > _3251)) {
                      _3284 = int((_3246.x > 0.0f) ? (_3244 & 1023u) : ((_3244 >> 10u) & 1023u));
                    } else {
                      int _3283;
                      if (_3249 > _3251) {
                        _3283 = int((_3246.y > 0.0f) ? ((_3244 >> 20u) & 1023u) : (_3245 & 1023u));
                      } else {
                        _3283 = int((_3246.z > 0.0f) ? ((_3245 >> 10u) & 1023u) : ((_3245 >> 20u) & 1023u));
                      }
                      _3284 = _3283;
                    }
                    _3287 = (_3284 == 1023) ? (-1) : _3284;
                  }
                  bool _3288 = _3287 >= 0;
                  float _3629;
                  if (_3288) {
                    float3 _3292 = _536 - _34_m6[_2866].xyz;
                    uint _3302 = asuint(_38_m11.x) + (uint(_3287) * 96u);
                    uint _3304 = (_3302 + 64u) >> 2u;
                    uint _3307 = _3304 + 1u;
                    uint _3310 = _3304 + 2u;
                    uint _3313 = _3304 + 3u;
                    float4 _3317 = asfloat(uint4(_41.Load(_3304 * 4 + 0), _41.Load(_3307 * 4 + 0), _41.Load(_3310 * 4 + 0), _41.Load(_3313 * 4 + 0)));
                    uint _3325 = _3302 >> 2u;
                    uint _3340 = (_3302 + 16u) >> 2u;
                    uint _3355 = (_3302 + 32u) >> 2u;
                    uint _3370 = (_3302 + 48u) >> 2u;
                    float4 _3390 = mul(transpose(float4x4(asfloat(uint4(_41.Load(_3325 * 4 + 0), _41.Load((_3325 + 1u) * 4 + 0), _41.Load((_3325 + 2u) * 4 + 0), _41.Load((_3325 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_3340 * 4 + 0), _41.Load((_3340 + 1u) * 4 + 0), _41.Load((_3340 + 2u) * 4 + 0), _41.Load((_3340 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_3355 * 4 + 0), _41.Load((_3355 + 1u) * 4 + 0), _41.Load((_3355 + 2u) * 4 + 0), _41.Load((_3355 + 3u) * 4 + 0))), asfloat(uint4(_41.Load(_3370 * 4 + 0), _41.Load((_3370 + 1u) * 4 + 0), _41.Load((_3370 + 2u) * 4 + 0), _41.Load((_3370 + 3u) * 4 + 0))))), float4((_536 - ((_3292 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3292, _3292)))) * _3317.x)) + (_631 * (_3317.y * 5.0f)), 1.0f));
                    float3 _3394 = _3390.xyz / _3390.w.xxx;
                    uint _3396 = (_3302 + 80u) >> 2u;
                    float4 _3409 = asfloat(uint4(_41.Load(_3396 * 4 + 0), _41.Load((_3396 + 1u) * 4 + 0), _41.Load((_3396 + 2u) * 4 + 0), _41.Load((_3396 + 3u) * 4 + 0)));
                    float2 _3410 = _3394.xy;
                    float2 _3412 = _3409.xy;
                    float3 _3416 = _3394.xyz;
                    bool3 _3417 = bool3(_3416.x <= 0.0f.xxx.x, _3416.y <= 0.0f.xxx.y, _3416.z <= 0.0f.xxx.z);
                    bool3 _3418 = bool3(_3416.x >= 1.0f.xxx.x, _3416.y >= 1.0f.xxx.y, _3416.z >= 1.0f.xxx.z);
                    float _3421 = _3394.z;
                    float2 _3432 = ((_3410 * (_3409.zw - _3412)) + _3412).xy * _38_m10.zw;
                    float2 _3434 = floor(_3432 + 0.5f.xx);
                    float2 _3435 = _3432 - _3434;
                    float _3436 = _3435.x;
                    float _3437 = _3436 + 0.5f;
                    float _3438 = _3437 * _3437;
                    float _3441 = 1.0f - _3436;
                    float _3442 = min(_3436, 0.0f);
                    float _3445 = _3436 + 1.0f;
                    float _3446 = max(_3436, 0.0f);
                    float _3457 = _3435.y;
                    float _3458 = _3457 + 0.5f;
                    float _3459 = _3458 * _3458;
                    float _3462 = 1.0f - _3457;
                    float _3463 = min(_3457, 0.0f);
                    float _3466 = _3457 + 1.0f;
                    float _3467 = max(_3457, 0.0f);
                    float3 _3479 = float3(0.1599999964237213134765625f * _3441, 0.1599999964237213134765625f * ((_3445 - (_3446 * _3446)) + 1.0f), _3438 * 0.07999999821186065673828125f);
                    float3 _3480 = float3(0.1599999964237213134765625f * ((_3438 * 0.5f) - _3436), 0.1599999964237213134765625f * ((_3441 - (_3442 * _3442)) + 1.0f), 0.1599999964237213134765625f * _3445) + _3479;
                    float3 _3482 = float3(0.1599999964237213134765625f * _3462, 0.1599999964237213134765625f * ((_3466 - (_3467 * _3467)) + 1.0f), _3459 * 0.07999999821186065673828125f);
                    float3 _3483 = float3(0.1599999964237213134765625f * ((_3459 * 0.5f) - _3457), 0.1599999964237213134765625f * ((_3462 - (_3463 * _3463)) + 1.0f), 0.1599999964237213134765625f * _3466) + _3482;
                    float3 _3489 = ((_3479 / _3480) + float3(-2.5f, -0.5f, 1.5f)) * _38_m10.xxx;
                    float3 _3491 = ((_3482 / _3483) + float3(-2.5f, -0.5f, 1.5f)) * _38_m10.yyy;
                    float2 _3493 = _3434 * _38_m10.xy;
                    float _3494 = _3489.x;
                    float _3495 = _3491.x;
                    float _3498 = _3489.y;
                    float _3501 = _3489.z;
                    float _3504 = _3491.y;
                    float _3511 = _3491.z;
                    float _3518 = _3480.x;
                    float _3519 = _3483.x;
                    float _3521 = _3480.y;
                    float _3523 = _3480.z;
                    float _3525 = _3483.y;
                    float _3529 = _3483.z;
                    float _3587 = (((((((_3518 * _3519) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3494, _3495), _440).xy, _3421)) + ((_3521 * _3519) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3498, _3495), _440).xy, _3421))) + ((_3523 * _3519) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3501, _3495), _440).xy, _3421))) + ((_3518 * _3525) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3494, _3504), _440).xy, _3421))) + ((_3521 * _3525) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3498, _3504), _440).xy, _3421))) + ((_3523 * _3525) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3501, _3504), _440).xy, _3421))) + ((_3518 * _3529) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3494, _3511), _440).xy, _3421));
                    float4 _3610 = asfloat(uint4(_41.Load(_3304 * 4 + 0), _41.Load(_3307 * 4 + 0), _41.Load(_3310 * 4 + 0), _41.Load(_3313 * 4 + 0)));
                    float _3611 = _3610.w;
                    float2 _3613 = min(_3410, 1.0f.xx - _3410);
                    _3629 = _3288 ? lerp(1.0f, (any(bool3(_3417.x || _3418.x, _3417.y || _3418.y, _3417.z || _3418.z)) || ((asuint(_3421) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3587 + ((_3521 * _3529) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3498, _3511), _440).xy, _3421))) + ((_3523 * _3529) * _39.SampleCmpLevelZero(_27, float3(_3493 + float2(_3501, _3511), _440).xy, _3421))), _3237 ? min(_3611, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3610.z - _3390.w) * 0.25f, min(_3613.x, _3613.y)))) : _3611) : 1.0f;
                  } else {
                    _3629 = clamp(dot(_543, _3072) + 1.0f, 0.0f, 1.0f);
                  }
                  _3630 = _3629;
                } else {
                  _3630 = 1.0f;
                }
                float _3710;
                float3 _3711;
                float _3712;
                float3 _3713;
                float3 _3714;
                float _3715;
                float _3716;
                [branch] if (_2982 == 0u) {
                  float3 _3636 = _34_m6[_2863].xyz * _3210;
                  float3 _3649 = _2548.xyz;
                  _3710 = _3210;
                  _3711 = (_34_m6[_2863].xyz * ((1.0f - _34_m6[_2875].y) + ((1.0f / max(1.0f, max(max(_3636.x, _3636.y), _3636.z) * lerp(0.75f, 0.5f, _2706))) * _34_m6[_2875].y))) * lerp(0.25f * _34_m6[_2875].x, 1.0f, clamp(_3230 + 0.5f, 0.0f, 1.0f));
                  _3712 = _3231;
                  _3713 = _3649;
                  _3714 = _3649;
                  _3715 = 1.0f;
                  _3716 = 0.0f;
                }
                else {
                  float _3704;
                  float _3705;
                  float3 _3706;
                  float3 _3707;
                  float _3708;
                  float _3709;
                  if (_2982 == 3u) {
                    _3704 = _3210 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _34_m6[_2875].x), lerp(0.89999997615814208984375f, 0.5f, _34_m6[_2875].x), _2672) * _3630);
                    _3705 = clamp(dot(_2042, -normalize(cross(_643, cross(_643, _3072)))), 0.0f, 1.0f);
                    _3706 = lerp(0.5f.xxx, _2340, _34_m6[_2875].y.xxx);
                    _3707 = 0.0f.xxx;
                    _3708 = 1.0f;
                    _3709 = 0.0f;
                  } else {
                    bool _3674 = _2982 == 1u;
                    float _3698;
                    float3 _3699;
                    float _3700;
                    float _3701;
                    if (_3674) {
                      _3698 = clamp(clamp(_3230 + _34_m6[_2875].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3630;
                      _3699 = _2344 * _34_m6[_2875].y;
                      _3700 = 1.0f;
                      _3701 = 0.0f;
                    } else {
                      bool _3684 = _2982 == 2u;
                      float _3696;
                      if (_3684) {
                        _3696 = smoothstep(_34_m6[_2875].x + 0.0500000007450580596923828125f, _34_m6[_2875].x - 0.0500000007450580596923828125f, _2046) * ((1.0f - _34_m6[_2875].z) + (step(0.5f, _2044) * _34_m6[_2875].z));
                      } else {
                        _3696 = 1.0f;
                      }
                      _3698 = _3231;
                      _3699 = 0.0f.xxx;
                      _3700 = _3696;
                      _3701 = _3684 ? _34_m6[_2875].y : 0.0f;
                    }
                    bool3 _3702 = _3674.xxx;
                    _3704 = _3210;
                    _3705 = _3698;
                    _3706 = float3(_3702.x ? _2340.x : 0.0f.xxx.x, _3702.y ? _2340.y : 0.0f.xxx.y, _3702.z ? _2340.z : 0.0f.xxx.z);
                    _3707 = _3699;
                    _3708 = _3700;
                    _3709 = _3701;
                  }
                  _3710 = _3704;
                  _3711 = _34_m6[_2863].xyz;
                  _3712 = _3705;
                  _3713 = _3706;
                  _3714 = _3707;
                  _3715 = _3708;
                  _3716 = _3709;
                }
                float3 _3744;
                [branch] if (_2982 != 3u) {
                  float _3721 = lerp(_2346, 0.00999999977648258209228515625f, _3716);
                  float _3724 = dot(_1906, normalize(_3072 + _479));
                  float _3725 = _3721 * _3721;
                  float _3729 = (((_3724 * _3725) - _3724) * _3724) + 1.0f;
                  float _3730 = _3729 * _3729;
                  _3744 = ((_2607 * clamp((((_3725 != _3730) ? (_3725 / _3730) : 1.0f) * (0.5f / ((_2584 + (_3721 * _2586)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3715) * _34_m6[_2884].z;
                }
                else {
                  _3744 = 0.0f.xxx;
                }
                float3 _3747 = _3711 * _3710;
                _3754 = _2824 + (((_3747 * lerp(_3714, _3713, _3712.xxx)) * _2622) + ((_3747 * _3744) * _3712));
              }
              else {
                _3754 = _2824;
              }
              _3755 = _3754;
              break;
            } while (false);
            _3756 = _3755;
            break;
          } while (false);
          _3757 = _3756;
        } else {
          _3757 = _2824;
        }
        _3758 = _3757;
        break;
      } while (false);
      _2850 = _3758;
    }
  }
  float3 _3798;
  [branch] if (_51_m12 > 0.5f) {
    _3798 = lerp(lerp(0.5f.xxx, lerp(dot(_2823, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2823, _51_m14.xxx), _51_m15.xxx) * _51_m13, _51_m26.xyz, _51_m26.w.xxx) + ((_51_m27.xyz * smoothstep(1.0f - _51_m16, 1.0f, 1.0f - clamp(_2670, 0.0f, 1.0f))) * _51_m17);
  }
  else {
    _3798 = _2823;
  }
  float4 _3805 = float4(_3798 * _20_m20.y, _2295);
  _3805.w = (_51_m8 == 1.0f) ? _2295 : 1.0f;
  float4 _4192;
  [branch] if (_20_m94.w < 0.5f) {
    float _3829 = _675 * _20_m46.w;
    float _3834 = max(0.00999999977648258209228515625f, _3829 + _20_m47.w);
    float3 _3848 = exp(_20_m45.xyz * ((-max(0.0f, (_480 * _20_m44.w) - _20_m43.w)) * (((1.0f - exp(-_3834)) / _3834) * exp(_3829 + _20_m48.w))));
    float _3851 = dot(_2762, _20_m44.xyz);
    float _3857 = _20_m45.w * _20_m45.w;
    float _3861 = (1.0f + _3857) - ((2.0f * _20_m45.w) * _3851);
    float3 _4184;
    float _4185;
    if (_20_m55.z > 0.0f) {
      uint3 _3906 = (uint3(int3(_2413, _2414, int(_20_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
      uint _3907 = _3906.y;
      uint _3908 = _3906.z;
      uint _3911 = _3906.x + (_3907 * _3908);
      uint _3913 = _3907 + (_3908 * _3911);
      uint _3915 = _3908 + (_3911 * _3913);
      uint _3917 = _3911 + (_3913 * _3915);
      float _3942 = dot(_2762, -_18_m0[2].xyz);
      float3 _3949 = _536 - _18_m11.xyz;
      float _3951 = (_20_m55.w * ((_3942 > 5.9604644775390625e-08f) ? (1.0f / _3942) : 0.0f)) * (1.0f / _480);
      float _3952 = _3949.y;
      float _3953 = _3951 * _3952;
      float _3955 = _18_m11.y + _3953;
      float _3956 = _3952 - _3953;
      float _3958 = (1.0f - _3951) * _480;
      float _3972 = max(-127.0f, _20_m49.z * _3956);
      float _3996 = max(-127.0f, _20_m52.x * _3956);
      float _4007 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_3955 - _20_m49.x)))) * ((abs(_3972) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3972)) / _3972) : (0.693147182464599609375f - (0.2402265071868896484375f * _3972)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_3955 - _20_m52.z)))) * ((abs(_3996) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3996)) / _3996) : (0.693147182464599609375f - (0.2402265071868896484375f * _3996))));
      float _4029 = clamp((_480 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _4032 = clamp((max(clamp(exp2(-(_4007 * _3958)), 0.0f, 1.0f), _20_m51.w) + clamp((_480 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _4029, 0.0f, 1.0f);
      float4 _4072 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _70.SampleLevel(_25, float3((_2798 + ((((float3(uint3(_3917, _3913 + (_3915 * _3917), _444) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _20_m59.w).xy) * _20_m57.xy, (log2((_460 * _20_m56.x) + _20_m56.y) * _20_m56.z) / _20_m55.z), 0.0f), clamp((_460 - _20_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
      _4184 = _4072.xyz + (((_20_m51.xyz * (1.0f - _4032)) + (((_20_m54.xyz * pow(clamp(dot(_479, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_4007 * max(_3958 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4029))) * _4072.w);
      _4185 = _4072.w * _4032;
    } else {
      float3 _4078 = _536 - _18_m11.xyz;
      float _4080 = _4078.y;
      float _4094 = max(-127.0f, _20_m49.z * _4080);
      float _4118 = max(-127.0f, _20_m52.x * _4080);
      float _4129 = ((_20_m49.y * exp2(-max(-127.0f, _20_m49.z * (_18_m11.y - _20_m49.x)))) * ((abs(_4094) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4094)) / _4094) : (0.693147182464599609375f - (0.2402265071868896484375f * _4094)))) + ((_20_m52.y * exp2(-max(-127.0f, _20_m52.x * (_18_m11.y - _20_m52.z)))) * ((abs(_4118) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4118)) / _4118) : (0.693147182464599609375f - (0.2402265071868896484375f * _4118))));
      float _4151 = clamp((_480 * _20_m50.w) + _20_m50.z, 0.0f, 1.0f);
      float _4154 = clamp((max(clamp(exp2(-(_4129 * _480)), 0.0f, 1.0f), _20_m51.w) + clamp((_480 * _20_m50.y) + _20_m50.x, 0.0f, 1.0f)) + _4151, 0.0f, 1.0f);
      _4184 = (_20_m51.xyz * (1.0f - _4154)) + (((_20_m54.xyz * pow(clamp(dot(_479, _20_m53.xyz), 0.0f, 1.0f), _20_m54.w)) * (1.0f - clamp(exp2(-(_4129 * max(_480 - _20_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4151));
      _4185 = _4154;
    }
    float3 _4190 = (_3805.xyz * (_3848 * _4185)) + ((((clamp(((_20_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3851 * _3851)))) + _20_m48.xyz) + (_20_m47.xyz * ((1.0f - _3857) / max((12.56637096405029296875f * _3861) * sqrt(_3861), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3848)) * _4185) + _4184);
    // RenoDX code start: preserve the existing deferred-lighting controls.
    if (RENODX_CUSTOM_FOG > 0.5f) {
      _4190 = (_4190 * 0.65f) + (_3805.xyz * 0.35f);
    }
    // RenoDX code end
    _4192 = float4(_4190.x, _4190.y, _4190.z, _3805.w);
  }
  else {
    _4192 = _3805;
  }
  _15 = _4192;
  _16 = _2376;
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

#include "../shared.h"

// Ported from the native 0x20B6F7FB Vulkan dump.
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

struct _43 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _382;
static float4 _383;
static uint _384;

static const float4 _360[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _361[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _362[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(53, 0)]] ByteAddressBuffer _33 : register(t53, space0);
[[vk::binding(6, 1)]] cbuffer _40_41 : register(b6, space1) {
  float _41_m0 : packoffset(c0);
  float _41_m1 : packoffset(c0.y);
  float _41_m2 : packoffset(c0.z);
  float _41_m3 : packoffset(c0.w);
  float _41_m4 : packoffset(c1);
  float _41_m5 : packoffset(c1.y);
  float _41_m6 : packoffset(c1.z);
  float _41_m7 : packoffset(c1.w);
  float _41_m8 : packoffset(c2);
  float _41_m9 : packoffset(c2.y);
  float _41_m10 : packoffset(c2.z);
  float _41_m11 : packoffset(c2.w);
  float _41_m12 : packoffset(c3);
  float _41_m13 : packoffset(c3.y);
  float _41_m14 : packoffset(c3.z);
  float _41_m15 : packoffset(c3.w);
  float _41_m16 : packoffset(c4);
  float _41_m17 : packoffset(c4.y);
  float _41_m18 : packoffset(c4.z);
  float _41_m19 : packoffset(c4.w);
  float _41_m20 : packoffset(c5);
  float _41_m21 : packoffset(c5.y);
  float _41_m22 : packoffset(c5.z);
  float _41_m23 : packoffset(c5.w);
  float _41_m24 : packoffset(c6);
  float _41_m25 : packoffset(c6.y);
  float _41_m26 : packoffset(c6.z);
  float _41_m27 : packoffset(c6.w);
  float _41_m28 : packoffset(c7);
  float _41_m29 : packoffset(c7.y);
  float _41_m30 : packoffset(c7.z);
  float _41_m31 : packoffset(c7.w);
  float4 _41_m32 : packoffset(c8);
  float4 _41_m33 : packoffset(c9);
  float4 _41_m34 : packoffset(c10);
  float4 _41_m35 : packoffset(c11);
  float4 _41_m36 : packoffset(c12);
  float4 _41_m37 : packoffset(c13);
  float4 _41_m38 : packoffset(c14);
  float4 _41_m39 : packoffset(c15);
  float4 _41_m40 : packoffset(c16);
  float4 _41_m41 : packoffset(c17);
  float4 _41_m42 : packoffset(c18);
  float4 _41_m43 : packoffset(c19);
  float4 _41_m44 : packoffset(c20);
  float4 _41_m45 : packoffset(c21);
  float _41_m46 : packoffset(c22);
  float _41_m47 : packoffset(c22.y);
  float _41_m48 : packoffset(c22.z);
  float _41_m49 : packoffset(c22.w);
};

[[vk::binding(16, 0)]] cbuffer _42_44 : register(b16, space0) {
  float4 _44_m0 : packoffset(c0);
  float4 _44_m1 : packoffset(c1);
  float4 _44_m2 : packoffset(c2);
  float4 _44_m3 : packoffset(c3);
  _43 _44_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _45_46 : register(b13, space0) {
  float4 _46_m0 : packoffset(c0);
  float4 _46_m1 : packoffset(c1);
  float4 _46_m2 : packoffset(c2);
  float4 _46_m3 : packoffset(c3);
  float4 _46_m4 : packoffset(c4);
  uint4 _46_m5 : packoffset(c5);
  float4 _46_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _47_48 : register(b49, space0) {
  int _48_m0 : packoffset(c0);
  int _48_m1 : packoffset(c0.y);
  int _48_m2 : packoffset(c0.z);
  int _48_m3 : packoffset(c0.w);
  int _48_m4 : packoffset(c1);
  int _48_m5 : packoffset(c1.y);
  int _48_m6 : packoffset(c1.z);
  int _48_m7 : packoffset(c1.w);
  float _48_m8 : packoffset(c2);
  float _48_m9 : packoffset(c2.y);
  float _48_m10 : packoffset(c2.z);
  float _48_m11 : packoffset(c2.w);
  float _48_m12 : packoffset(c3);
  float _48_m13 : packoffset(c3.y);
  float _48_m14 : packoffset(c3.z);
  float _48_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _49_50 : register(b14, space0) {
  column_major float4x4 _50_m0[5] : packoffset(c0);
  float4 _50_m1[4] : packoffset(c20);
  float4 _50_m2[4] : packoffset(c24);
  float4 _50_m3[4] : packoffset(c28);
  float4 _50_m4 : packoffset(c32);
  float4 _50_m5 : packoffset(c33);
  float4 _50_m6 : packoffset(c34);
  float4 _50_m7 : packoffset(c35);
  float4 _50_m8 : packoffset(c36);
  float4 _50_m9[27] : packoffset(c37);
  float4 _50_m10 : packoffset(c64);
  float4 _50_m11 : packoffset(c65);
  float4 _50_m12[62] : packoffset(c66);
  column_major float4x4 _50_m13[15] : packoffset(c128);
  float4 _50_m14[15] : packoffset(c188);
  float4 _50_m15[15] : packoffset(c203);
  float4 _50_m16[15] : packoffset(c218);
  float4 _50_m17 : packoffset(c233);
  float4 _50_m18 : packoffset(c234);
  float4 _50_m19[21] : packoffset(c235);
  column_major float4x4 _50_m20 : packoffset(c256);
  column_major float4x4 _50_m21 : packoffset(c260);
  float4 _50_m22 : packoffset(c264);
  float4 _50_m23 : packoffset(c265);
  float4 _50_m24 : packoffset(c266);
  float4 _50_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _54 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _69_70 : register(b51, space0) {
  float4 _70_m0[32] : packoffset(c0);
  column_major float4x4 _70_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(23, 0)]] Texture2D<float4> _28 : register(t23, space0);
[[vk::binding(24, 0)]] Texture2D<float4> _29 : register(t24, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _31 : register(t25, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _34 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _35 : register(s2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _36 : register(t3, space1);
[[vk::binding(0, 1)]] SamplerState _37 : register(s0, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _38 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _39 : register(s1, space1);
[[vk::binding(8, 0)]] Texture2D<float4> _51 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _52 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _55 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _56 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _57 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _60 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _61 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _62 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _63 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _64 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _65 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _66 : register(t31, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _67 : register(t37, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _68 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _73 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _74 : register(t29, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _4;
static float2 _5;
static float3 _6;
static float4 _7;
static float4 _8;
static float3 _9;
static float3 _10;
static uint _11;
static float4 _13;
static float4 _14;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _4 : TEXCOORD0;
  [[vk::location(1)]] float2 _5 : TEXCOORD1;
  [[vk::location(2)]] float3 _6 : TEXCOORD2;
  [[vk::location(3)]] float4 _7 : TEXCOORD3;
  [[vk::location(4)]] float4 _8 : TEXCOORD4;
  [[vk::location(5)]] float3 _9 : TEXCOORD5;
  [[vk::location(6)]] float3 _10 : TEXCOORD6;
  [[vk::location(7)]] nointerpolation uint _11 : TEXCOORD7;
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

void frag_main() {
  float2 _410 = gl_FragCoord.xy * _18_m0.zw;
  float2 _413 = (_410 * 2.0f) - 1.0f.xx;
  float4 _416 = float4(_413, gl_FragCoord.z, 1.0f);
  _416.y = -_413.y;
  float4 _419 = mul(_16_m6, _416);
  float3 _423 = _419.xyz / _419.w.xxx;
  float4 _427 = float4(_423, 1.0f);
  float _434 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _456;
  do {
    if (_18_m4.w == 0.0f) {
      _456 = _16_m11.xyz - _423;
      break;
    } else {
      _456 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _457 = dot(_456, _456);
  float _459 = rsqrt(max(_457, 9.9999999392252902907785028219223e-09f));
  float3 _460 = _456 * _459;
  float _461 = _457 * _459;
  float2 _482 = (lerp(_4, _5, _41_m12.xx) * _41_m36.xy) + _41_m36.zw;
  float4 _496 = _34.SampleBias(_35, (lerp(_4, _5, _41_m11.xx) * _41_m35.xy) + _41_m35.zw, _18_m16);
  float4 _500 = _36.SampleBias(_37, _482, _41_m13 + _18_m16);
  _500.w = _500.w * _500.x;
  float2 _508 = ((_500.wy * 2.0f) - 1.0f.xx).xy;
  float2 _514 = _508 * _41_m0;
  float4 _516 = _38.SampleBias(_39, _482, _18_m16);
  float3 _531 = lerp(clamp((_496.xyz * _41_m32.xyz) * _41_m18, 0.0f.xxx, 1.0f.xxx), _41_m32.xyz, _41_m16.xxx);
  float _535 = _496.w * _41_m32.w;
  float _541 = lerp(_535, _535 * _8.x, _41_m46);
  float _546 = lerp(_41_m2, _41_m3, _516.y);
  float _556 = lerp(_516.x, _41_m17, clamp(_41_m15 - 1.0f, 0.0f, 1.0f));
  float3 _570 = ((_7.xyz * _514.x) + ((cross(_6, float4(_7.xyz, _434).xyz) * _434) * _514.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_508, _508), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_41_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _574 = _570 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_570, _570)));
  float _586 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _599 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _599.y = -_599.y;
  float _625 = 0.07999999821186065673828125f * _41_m1;
  float3 _626 = _531 * _556;
  float3 _627 = _531 - _626;
  float3 _631 = (_625 - (_625 * _556)).xxx + _626;
  float _632 = dot(_574, _460);
  float4 _635 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _546) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _636 = _635.x;
  float2 _646 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_636 * _636, exp2((-9.27999973297119140625f) * max(0.0f, _632))) * _636) + _635.y)) + _635.zw;
  uint2 _686;
  float _687;
  if (_18_m24.y == 1.0f) {
    float4 _663 = mul(_18_m138, _427);
    float4 _666 = _663;
    _666.y = -_663.y;
    float4 _669 = _666 * (1.0f / _663.w);
    _686 = uint2(clamp(((_669.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _687 = 1.0f / ((_18_m2.z * _669.z) + _18_m2.w);
  } else {
    _686 = uint2(gl_FragCoord.xy);
    _687 = abs(mul(_16_m0, _427).z);
  }
  float3 _689 = _423 + (_574 * 0.25f);
  float3 _699 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _708 = _689 - (_18_m108.xyz + (_699 * (-_18_m110.w)));
  float _723 = max(min(max((max(abs(_708.x), abs(_708.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_708.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1025;
  float4 _1026;
  float4 _1027;
  float _1028;
  float _1029;
  if ((_18_m108.w != 0.0f) && (_723 < 1.0f)) {
    float3 _736 = _689 - (_18_m108.xyz + (_699 * (-_18_m110.y)));
    float _750 = max(clamp((max(abs(_736.x), abs(_736.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_736.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _826;
    float4 _827;
    float4 _828;
    float4 _829;
    if (_750 < 1.0f) {
      float3 _759 = ((_689 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _761 = _759 - floor(_759);
      float4 _765 = _61.SampleLevel(_24, _761, 0.0f);
      float _766 = 1.0f - _750;
      float _770 = _18_m109.y * 0.5f;
      float _775 = _761.x;
      float _776 = clamp(_761.y, _770, 1.0f - _770) * 0.3333333432674407958984375f;
      float _777 = _761.z;
      float4 _780 = _62.SampleLevel(_23, float3(_775, _776, _777), 0.0f);
      _826 = _723 + (_780.w * _766);
      _827 = float4(((_62.SampleLevel(_23, float3(_775, _776 + 0.666666686534881591796875f, _777), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _765.z, _765.z) * _766;
      _828 = float4(((_62.SampleLevel(_23, float3(_775, _776 + 0.3333333432674407958984375f, _777), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _765.y, _765.y) * _766;
      _829 = float4(((_780.xyz * 4.0f) - 2.0f.xxx) * _765.x, _765.x) * _766;
    } else {
      _826 = _723;
      _827 = 0.0f.xxxx;
      _828 = 0.0f.xxxx;
      _829 = 0.0f.xxxx;
    }
    float3 _835 = _689 - (_18_m108.xyz + (_699 * (-_18_m110.z)));
    float _849 = max(clamp((max(abs(_835.x), abs(_835.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_835.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _929;
    float4 _930;
    float4 _931;
    float4 _932;
    if (_849 < 1.0f) {
      float3 _858 = ((_689 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _860 = _858 - floor(_858);
      float4 _864 = _63.SampleLevel(_24, _860, 0.0f);
      float _866 = _750 * (1.0f - _849);
      float _870 = _18_m109.y * 0.5f;
      float _875 = _860.x;
      float _876 = clamp(_860.y, _870, 1.0f - _870) * 0.3333333432674407958984375f;
      float _877 = _860.z;
      float4 _880 = _64.SampleLevel(_23, float3(_875, _876, _877), 0.0f);
      _929 = _826 + (_880.w * _866);
      _930 = _827 + (float4(((_64.SampleLevel(_23, float3(_875, _876 + 0.666666686534881591796875f, _877), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _864.z, _864.z) * _866);
      _931 = _828 + (float4(((_64.SampleLevel(_23, float3(_875, _876 + 0.3333333432674407958984375f, _877), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _864.y, _864.y) * _866);
      _932 = _829 + (float4(((_880.xyz * 4.0f) - 2.0f.xxx) * _864.x, _864.x) * _866);
    } else {
      _929 = _826;
      _930 = _827;
      _931 = _828;
      _932 = _829;
    }
    float4 _1015;
    float4 _1016;
    float4 _1017;
    float _1018;
    if (_849 > 0.0f) {
      float3 _941 = ((_689 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _944 = _18_m109.xyz * 0.5f;
      float3 _946 = clamp(_941 - floor(_941), _944, 1.0f.xxx - _944);
      float4 _950 = _65.SampleLevel(_24, _946, 0.0f);
      float _952 = _849 * (1.0f - _723);
      float _956 = _18_m109.y * 0.5f;
      float _962 = clamp(_946.y, _956, 1.0f - _956) * 0.3333333432674407958984375f;
      float4 _966 = _66.SampleLevel(_23, float3(_946.x, _962, _946.z), 0.0f);
      float _982 = _950.x;
      float _993 = _950.y;
      float _1004 = _950.z;
      _1015 = _930 + (float4(((_66.SampleLevel(_23, float3(_946.x, _962 + 0.666666686534881591796875f, _946.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1004, _1004) * _952);
      _1016 = _931 + (float4(((_66.SampleLevel(_23, float3(_946.x, _962 + 0.3333333432674407958984375f, _946.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _993, _993) * _952);
      _1017 = _932 + (float4(((_966.xyz * 4.0f) - 2.0f.xxx) * _982, _982) * _952);
      _1018 = _929 + (_966.w * _952);
    } else {
      _1015 = _930;
      _1016 = _931;
      _1017 = _932;
      _1018 = _929;
    }
    float _1021 = clamp((_1018 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1025 = _1015;
    _1026 = _1016;
    _1027 = _1017;
    _1028 = _1021 - _723;
    _1029 = (_1021 + _723) * 0.5f;
  } else {
    _1025 = 0.0f.xxxx;
    _1026 = 0.0f.xxxx;
    _1027 = 0.0f.xxxx;
    _1028 = 0.0f;
    _1029 = 1.0f;
  }
  float4 _1049 = _1027 + float4(_18_m111.x * _1029, (_18_m111.y * _1029) + ((_18_m111.w * _1028) * 0.5f), _18_m111.z * _1029, (_18_m111.w * _1029) + ((_18_m111.y * _1028) * 0.375f));
  float4 _1069 = _1026 + float4(_18_m112.x * _1029, (_18_m112.y * _1029) + ((_18_m112.w * _1028) * 0.5f), _18_m112.z * _1029, (_18_m112.w * _1029) + ((_18_m112.y * _1028) * 0.375f));
  float4 _1089 = _1025 + float4(_18_m113.x * _1029, (_18_m113.y * _1029) + ((_18_m113.w * _1028) * 0.5f), _18_m113.z * _1029, (_18_m113.w * _1029) + ((_18_m113.y * _1028) * 0.375f));
  float _1094 = max(0.0f, dot(_1049.xyz, _574) + _1049.w);
  float _1099 = max(0.0f, dot(_1069.xyz, _574) + _1069.w);
  float _1104 = max(0.0f, dot(_1089.xyz, _574) + _1089.w);
  float3 _1114 = -_460;
  float3 _1115 = reflect(_1114, _574);
  float _1123 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_546, 0.001000000047497451305389404296875f))));
  float2 _1124 = float2(_686);
  float2 _1128 = floor(_1124 * _44_m0.w);
  float _1145 = floor(_687 - _44_m2.y);
  float _1149 = clamp(_1145, 0.0f, _44_m1.x - 1.0f);
  uint _1159 = (_1145 <= _1149) ? (_33.Load(uint(_18_m21.z + int(_1128.x + (_1128.y * _44_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1149)) * 4 + 0)) : 0u;
  float _1162 = dot(float4(_1094, _1099, _1104, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1164;
  float _1167;
  uint _1169;
  _1164 = 0.0f.xxx;
  _1167 = 1.0f;
  _1169 = _1159;
  uint _1170;
  float3 _1165;
  float _1168;
  bool _1172;
  [loop] for (;;) {
    bool _1171 = _1169 != 0u;
    _1172 = _1167 > 0.00999999977648258209228515625f;
    if (_1171 && _1172) {
      uint _1176 = firstbitlow(_1169);
      _1170 = _1169 ^ (1u << (_1176 & 31u));
      float3 _1196 = float3(dot(_44_m4[_1176]._m2, _427), dot(_44_m4[_1176]._m3, _427), dot(_44_m4[_1176]._m4, _427));
      float3 _1197 = abs(_1196);
      if (all(bool3(_1197.x <= _44_m4[_1176]._m1.xyz.x, _1197.y <= _44_m4[_1176]._m1.xyz.y, _1197.z <= _44_m4[_1176]._m1.xyz.z))) {
        float3 _1206 = _44_m4[_1176]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1208 = _1197 * 0.100000001490116119384765625f;
        float3 _1209 = _1208 * _1208;
        float3 _1212 = (_44_m4[_1176]._m1.xyz - _1197) * _44_m4[_1176]._m5.xyz;
        float3 _1260;
        [branch] if (_44_m4[_1176]._m6.x == 1.0f) {
          float3 _1245 = float3(dot(_44_m4[_1176]._m2.xyz, _1115), dot(_44_m4[_1176]._m3.xyz, _1115), dot(_44_m4[_1176]._m4.xyz, _1115));
          float3 _1247 = (_44_m4[_1176]._m1.xyz - _1196) / _1245;
          float3 _1250 = ((-_44_m4[_1176]._m1.xyz) - _1196) / _1245;
          bool3 _1251 = bool3(_1245.x > 0.0f.xxx.x, _1245.y > 0.0f.xxx.y, _1245.z > 0.0f.xxx.z);
          float3 _1252 = float3(_1251.x ? _1247.x : _1250.x, _1251.y ? _1247.y : _1250.y, _1251.z ? _1247.z : _1250.z);
          _1260 = _1196 + (_1245 * min(min(_1252.x, _1252.y), _1252.z));
        }
        else {
          _1260 = _1115;
        }
        float3 _1261 = normalize(_1260);
        float3 _1264 = float3(int3(sign(_1261)));
        float3 _1267 = _1261 / dot(_1261, _1264).xxx;
        float3 _1281;
        if (_1267.z < 0.0f) {
          float3 _1272 = abs(_1267);
          float2 _1279 = _1264.xy * float2(1.0f - _1272.y, 1.0f - _1272.x);
          _1281 = float3(_1279.x, _1279.y, _1267.z);
        } else {
          _1281 = _1267;
        }
        float _1306 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m4[_1176]._m0, float4(_574, 1.0f))));
        float _1319 = clamp((min(_1212.x, min(_1212.y, _1212.z)) * _44_m4[_1176]._m6.y) + ((((((_1206 * _1206).x - ((_1209.x + _1209.y) + _1209.z)) * _44_m4[_1176]._m5.x) * _44_m4[_1176]._m5.x) * (1.0f - _44_m4[_1176]._m6.y)) * 100.0f), 0.0f, 1.0f) * _44_m4[_1176]._m6.w;
        _1165 = _1164 + ((((_31.SampleLevel(_25, float3((((_1281.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, _44_m4[_1176]._m1.w), _1123).xyz * _44_m4[_1176]._m5.w) * ((((((clamp(abs(_1162 / _1306), 0.0f, 1.0f) * 2.0f) + _1162) / (2.0f + _1306)) - 1.0f) * _18_m23.w) + 1.0f)) * _1319) * _1167);
        _1168 = _1167 * (1.0f - _1319);
      } else {
        _1165 = _1164;
        _1168 = _1167;
      }
      _1164 = _1165;
      _1167 = _1168;
      _1169 = _1170;
      continue;
    } else {
      break;
    }
  }
  float3 _1388;
  if (_1172) {
    float3 _1327 = normalize(_1115);
    float3 _1330 = float3(int3(sign(_1327)));
    float3 _1333 = _1327 / dot(_1327, _1330).xxx;
    float3 _1347;
    if (_1333.z < 0.0f) {
      float3 _1338 = abs(_1333);
      float2 _1345 = _1330.xy * float2(1.0f - _1338.y, 1.0f - _1338.x);
      _1347 = float3(_1345.x, _1345.y, _1333.z);
    } else {
      _1347 = _1333;
    }
    float _1374 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m3, float4(_574, 1.0f))));
    _1388 = _1164 + ((_31.SampleLevel(_25, float3((((_1347.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, 0.0f), _1123).xyz * ((((((clamp(abs(_1162 / _1374), 0.0f, 1.0f) * 2.0f) + _1162) / (2.0f + _1374)) - 1.0f) * _18_m23.w) + 1.0f)) * _1167);
  } else {
    _1388 = _1164;
  }
  float3 _1394 = (_1388 * _18_m23.z) * _18_m22.y;
  float3 _1415;
  [branch] if (_18_m23.y != 0.0f) {
    float4 _1409 = _29.SampleBias(_23, _410, _18_m16);
    float _1410 = _1409.x;
    _1415 = (_28.SampleBias(_23, _410, _18_m16).xyz * _1410) + (_1394 * (1.0f - _1410));
  }
  else {
    _1415 = _1394;
  }
  float4 _2100;
  do {
    [branch] if (_48_m4 == 0) {
      _2100 = 0.0f.xxxx;
      break;
    }
    float2 _1959;
    do {
      if (_50_m7.w >= 0.9900000095367431640625f) {
        _1959 = float2(_50_m7.z, 1.0f);
        break;
      }
      int _1438 = int(_50_m7.x);
      bool3 _1440 = (_1438 == 2).xxx;
      float3 _1448 = _423 - float3(_1440.x ? _50_m1[0].xyz.x : _16_m11.xyz.x, _1440.y ? _50_m1[0].xyz.y : _16_m11.xyz.y, _1440.z ? _50_m1[0].xyz.z : _16_m11.xyz.z);
      float _1459 = max(clamp((_50_m6.w - dot(_1448, _1448)) * _50_m6.z, 0.0f, 1.0f), _50_m8.x);
      float _1676;
      bool _1677;
      if (_1459 > 0.0f) {
        float _1674;
        bool _1675;
        if (_1438 > 0) {
          float3 _1466 = _423 - _50_m1[0].xyz;
          float3 _1470 = _423 - _50_m1[1].xyz;
          float3 _1474 = _423 - _50_m1[2].xyz;
          float3 _1478 = _423 - _50_m1[3].xyz;
          float4 _1483 = float4(dot(_1466, _1466), dot(_1470, _1470), dot(_1474, _1474), dot(_1478, _1478));
          float4 _1492 = float4(_50_m1[0].w, _50_m1[1].w, _50_m1[2].w, _50_m1[3].w);
          float4 _1494 = float4(bool4(_1483.x < _1492.x, _1483.y < _1492.y, _1483.z < _1492.z, _1483.w < _1492.w));
          float3 _1498 = clamp(_1494.yzw - _1494.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1502 = clamp(4.0f - dot(float4(_1494.x, _1498.x, _1498.y, _1498.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1504 = clamp(_1502 + 1.0f, 0.0f, 3.0f);
          uint _1505 = uint(_1502);
          uint _1513 = uint(_1504);
          float _1519 = dot(_1483, _360[_1513]) / _50_m1[_1513].w;
          float _1536;
          if (((_1504 > _1502) && (_1519 >= 0.0f)) && (_1519 <= 1.0f)) {
            _1536 = _1502 + step(frac(52.98291778564453125f * frac(dot(_1124 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1483, _360[_1505]) / _50_m1[_1505].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1536 = _1502;
          }
          float _1537 = clamp(_1536, 0.0f, 4.0f);
          float4 _1541 = mul(_50_m0[uint(_1537)], _427);
          float _1544 = _1541.z;
          float4 _1545 = float4(_1541.xy, _1544, _1537);
          float3 _1546 = _1545.xyz;
          bool3 _1547 = bool3(_1546.x <= 0.0f.xxx.x, _1546.y <= 0.0f.xxx.y, _1546.z <= 0.0f.xxx.z);
          bool3 _1548 = bool3(_1546.x >= 1.0f.xxx.x, _1546.y >= 1.0f.xxx.y, _1546.z >= 1.0f.xxx.z);
          bool _1554 = any(bool3(_1547.x || _1548.x, _1547.y || _1548.y, _1547.z || _1548.z)) || ((asuint(_1544) & 2147483647u) > 2139095040u);
          int _1555 = int(_1537);
          float2 _1572 = float4(_50_m3[_1555].xy + (_1545.xy * _50_m3[_1555].zw), _1544, _1537).xy * _50_m4.zw;
          float2 _1574 = floor(_1572 + 0.5f.xx);
          float2 _1575 = _1572 - _1574;
          float _1576 = _1575.x;
          float _1577 = _1576 + 0.5f;
          float _1579 = (_1577 * _1577) * 0.5f;
          float _1582 = min(_1576, 0.0f);
          float _1586 = max(_1576, 0.0f);
          float4 _1590 = float4(_1579 - _1576, (1.0f - _1576) - (_1582 * _1582), (_1576 + 1.0f) - (_1586 * _1586), _1579) * 0.44444000720977783203125f;
          float _1591 = _1575.y;
          float _1592 = _1591 + 0.5f;
          float _1594 = (_1592 * _1592) * 0.5f;
          float _1597 = min(_1591, 0.0f);
          float _1601 = max(_1591, 0.0f);
          float4 _1605 = float4(_1594 - _1591, (1.0f - _1591) - (_1597 * _1597), (_1591 + 1.0f) - (_1601 * _1601), _1594) * 0.44444000720977783203125f;
          float2 _1607 = _1590.yw;
          float2 _1608 = _1590.xz + _1607;
          float2 _1610 = _1605.yw;
          float2 _1611 = _1605.xz + _1610;
          float2 _1617 = ((_1607 / _1608) + float2(-1.5f, 0.5f)) * _50_m4.xx;
          float2 _1619 = ((_1610 / _1611) + float2(-1.5f, 0.5f)) * _50_m4.yy;
          float2 _1621 = _1574 * _50_m4.xy;
          float _1622 = _1617.x;
          float _1623 = _1619.x;
          float _1626 = _1617.y;
          float _1629 = _1619.y;
          float _1634 = _1608.x;
          float _1635 = _1611.x;
          float _1637 = _1608.y;
          float _1639 = _1611.y;
          _1674 = _1554 ? 1.0f : (((((_1634 * _1635) * _51.SampleCmpLevelZero(_26, float3(_1621 + float2(_1622, _1623), _382).xy, _1544)) + ((_1637 * _1635) * _51.SampleCmpLevelZero(_26, float3(_1621 + float2(_1626, _1623), _382).xy, _1544))) + ((_1634 * _1639) * _51.SampleCmpLevelZero(_26, float3(_1621 + float2(_1622, _1629), _382).xy, _1544))) + ((_1637 * _1639) * _51.SampleCmpLevelZero(_26, float3(_1621 + float2(_1626, _1629), _382).xy, _1544)));
          _1675 = _1554;
        } else {
          _1674 = 1.0f;
          _1675 = false;
        }
        _1676 = _1674;
        _1677 = _1675;
      } else {
        _1676 = 1.0f;
        _1677 = false;
      }
      float _1877;
      float _1878;
      if ((_1459 < 1.0f) || (_50_m8.x > 0.5f)) {
        float _1688 = 1.0f - clamp(dot(_574, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1705 = float4((_423 - (_46_m0.xyz * (_1688 * _50_m22.x))) + (_574 * (_1688 * _50_m22.y)), 1.0f);
        float4 _1706 = mul(_50_m21, _1705);
        float2 _1707 = _1706.xy;
        float _1875;
        if (all(bool2(_1707.x > 0.0f.xx.x, _1707.y > 0.0f.xx.y)) && all(bool2(_1707.x < 1.0f.xx.x, _1707.y < 1.0f.xx.y))) {
          uint _1726 = clamp(uint((floor(_1706.y * _50_m23.z) + _1706.x) * _50_m23.y), 0u, 127u);
          uint _1730 = asuint(_50_m25[_1726].x);
          float2 _1731 = spvUnpackHalf2x16(_1730);
          float _1732 = _1731.x;
          float _1874;
          if (_1732 >= 0.0f) {
            float4x4 _1741 = _50_m20;
            _1741[0].w = _50_m25[_1726].y;
            _1741[1].w = _50_m25[_1726].z;
            _1741[2].w = _50_m25[_1726].w;
            float4 _1748 = mul(_1741, _1705);
            float3 _1749 = _1748.xyz;
            float _1873;
            if (all(bool3(_1749.x > 0.0f.xxx.x, _1749.y > 0.0f.xxx.y, _1749.z > 0.0f.xxx.z)) && all(bool3(_1749.x < 1.0f.xxx.x, _1749.y < 1.0f.xxx.y, _1749.z < 1.0f.xxx.z))) {
              float _1766 = _1748.z;
              float2 _1772 = float4((_1748.xy * _50_m22.zw) + float2(_1732, spvUnpackHalf2x16(_1730 >> 16u).x), _1766, 1.0f).xy * _50_m24.zw;
              float2 _1774 = floor(_1772 + 0.5f.xx);
              float2 _1775 = _1772 - _1774;
              float _1776 = _1775.x;
              float _1777 = _1776 + 0.5f;
              float _1779 = (_1777 * _1777) * 0.5f;
              float _1782 = min(_1776, 0.0f);
              float _1786 = max(_1776, 0.0f);
              float4 _1790 = float4(_1779 - _1776, (1.0f - _1776) - (_1782 * _1782), (_1776 + 1.0f) - (_1786 * _1786), _1779) * 0.44444000720977783203125f;
              float _1791 = _1775.y;
              float _1792 = _1791 + 0.5f;
              float _1794 = (_1792 * _1792) * 0.5f;
              float _1797 = min(_1791, 0.0f);
              float _1801 = max(_1791, 0.0f);
              float4 _1805 = float4(_1794 - _1791, (1.0f - _1791) - (_1797 * _1797), (_1791 + 1.0f) - (_1801 * _1801), _1794) * 0.44444000720977783203125f;
              float2 _1808 = _1790.xz + _1790.yw;
              float2 _1811 = _1805.xz + _1805.yw;
              float2 _1817 = ((_1790.yw / _1808) + float2(-1.5f, 0.5f)) * _50_m24.xx;
              float2 _1819 = ((_1805.yw / _1811) + float2(-1.5f, 0.5f)) * _50_m24.yy;
              float2 _1821 = _1774 * _50_m24.xy;
              float _1822 = _1817.x;
              float _1823 = _1819.x;
              float2 _1825 = _1821 + float2(_1822, _1823);
              float _1826 = _1817.y;
              float2 _1828 = _1821 + float2(_1826, _1823);
              float _1829 = _1819.y;
              float2 _1831 = _1821 + float2(_1822, _1829);
              float2 _1833 = _1821 + float2(_1826, _1829);
              float _1834 = _1808.x;
              float _1835 = _1811.x;
              float _1837 = _1808.y;
              float _1839 = _1811.y;
              _1873 = ((((_1834 * _1835) * _56.SampleCmpLevelZero(_26, float3(_1825, _382).xy, _1766)) + ((_1837 * _1835) * _56.SampleCmpLevelZero(_26, float3(_1828, _382).xy, _1766))) + ((_1834 * _1839) * _56.SampleCmpLevelZero(_26, float3(_1831, _382).xy, _1766))) + ((_1837 * _1839) * _56.SampleCmpLevelZero(_26, float3(_1833, _382).xy, _1766));
            } else {
              _1873 = 1.0f;
            }
            _1874 = _1873;
          } else {
            _1874 = 1.0f;
          }
          _1875 = _1874;
        } else {
          _1875 = 1.0f;
        }
        _1877 = _1677 ? _1875 : _1676;
        _1878 = _1875;
      } else {
        _1877 = _1676;
        _1878 = 1.0f;
      }
      float _1881 = lerp(lerp(_1878, _1877, _1459), min(_1878, _1877), _50_m8.x);
      float _1954;
      if (_1881 > 0.001000000047497451305389404296875f) {
        float3 _1916 = _423 - _18_m65.xyz;
        float2 _1921 = (_1916 + (_18_m68.xyz * _1916.y)).xz * _18_m66.z;
        float2 _1922 = _18_m67.xy * _18_m77.w;
        float3 _1929 = _423 - _18_m69.xyz;
        float2 _1937 = _18_m69.w.xx;
        float4 _1944 = _55.SampleLevel(_24, lerp(_1921 * _18_m67.w, (_1929 + (_18_m68.xyz * _1929.y)).xz * _18_m70.x, _1937) + lerp(_1922, _18_m70.yz * _18_m77.w, _1937), 0.0f);
        _1954 = _1881 * lerp(1.0f, lerp(_55.SampleLevel(_24, _1921 + _1922, 0.0f).x, lerp(_1944.x, _1944.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_1916.xz))), _18_m67.z);
      } else {
        _1954 = _1881;
      }
      _1959 = float2(lerp(_1954, _50_m7.z, _50_m7.w), _1954);
      break;
    } while (false);
    float _1964 = lerp(1.0f, min(1.0f, _1959.x), _50_m6.x);
    float4 _2099;
    if (_1964 > 0.001000000047497451305389404296875f) {
      float3 _1974 = -_46_m0.xyz;
      float _1979 = dot(_1974, _1115);
      float3 _1981 = _1115 - (_1974 * _1979);
      bool3 _1983 = (_1979 < _46_m4.z).xxx;
      float3 _1991 = normalize((_1974 * _46_m4.z) + ((_1981 * rsqrt(max(6.103515625e-05f, dot(_1981, _1981)))) * _46_m4.y));
      float3 _1992 = float3(_1983.x ? _1991.x : _1115.x, _1983.y ? _1991.y : _1115.y, _1983.z ? _1991.z : _1115.z);
      float3 _1996 = _1992 + _460;
      float3 _2000 = _1996 * rsqrt(max(6.103515625e-05f, dot(_1996, _1996)));
      float _2001 = clamp(dot(_1992, _574), 0.0f, 1.0f);
      float _2003 = clamp(dot(_574, _2000), 0.0f, 1.0f);
      float _2006 = clamp(_632, 0.0f, 1.0f);
      float _2007 = _546 * _546;
      float _2008 = _2007 * _2007;
      float _2029 = (((_2003 * _2008) - _2003) * _2003) + 1.0f;
      float _2032 = 1.0f - clamp(dot(_460, _2000), 0.0f, 1.0f);
      float _2033 = _2032 * _2032;
      float _2035 = (_2032 * _2033) * _2033;
      float _2059 = 1.0f - _546;
      float _2066 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2059 * (1.04997003078460693359375f + (_2059 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2059))))));
      float _2067 = 1.0f - _2066;
      float3 _2070 = _631 + ((1.0f.xxx - _631) * 0.0476190485060214996337890625f);
      float3 _2086 = ((clamp((min(((_631 * (1.0f - _2035)) + _2035.xxx) * ((_2008 / (_2029 * _2029)) * (0.5f / (((_2001 * sqrt(((((-_2006) * _2008) + _2006) * _2006) + _2008)) + (_2006 * sqrt(((((-_2001) * _2008) + _2001) * _2001) + _2008))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2070 * (((_60.SampleLevel(_23, (float2(_2006, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x * _60.SampleLevel(_23, (float2(_2001, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2066) / _2067)) * _2070) / (1.0f.xxx - (_2070 * _2067)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * _2001) + ((_627 * 1.0f) * _2001)) * _46_m1.xyz;
      float3 _2097 = lerp(_2086, _2086 * _57.SampleBias(_23, float2(_1964, 0.5f), _18_m16).xyz, (1.0f - _1964).xxx) * 1.0f;
      _2099 = float4(_2097.x, _2097.y, _2097.z, 0.0f.xxxx.w);
    } else {
      _2099 = 0.0f.xxxx;
    }
    _2100 = _2099;
    break;
  } while (false);
  float2 _2102 = floor(_1124 * 0.03125f);
  int _2110 = int((_2102.x + (_2102.y * _48_m9)) * 8.0f);
  float _2117 = floor(_687 - (_18_m3.y * _48_m15));
  float _2121 = clamp(_2117, 0.0f, _48_m11 - 1.0f);
  int _2123 = int(_2121 * 8.0f);
  float3 _2125;
  float _2128;
  _2125 = 0.0f.xxx;
  _2128 = 1.0f;
  float3 _2126;
  float _2129;
  [loop] for (int _2130 = 0; _2130 <= 7; _2125 = _2126, _2128 = _2129, _2130++) {
    uint _2151 = (_2117 <= _2121) ? (_33.Load(uint((_48_m2 + _2110) + _2130) * 4 + 0) & _33.Load(uint((_48_m3 + _2123) + _2130) * 4 + 0)) : 0u;
    uint _2152 = uint(_2130);
    float3 _2156;
    _2129 = _2128;
    _2156 = 0.0f.xxx;
    uint _2159;
    float _2154;
    float3 _2157;
    [loop] for (uint _2158 = _2151; _2158 != 0u; _2129 = _2154, _2156 = _2157, _2158 = _2159) {
      uint _2163 = firstbitlow(_2158);
      _2159 = _2158 ^ (1u << (_2163 & 31u));
      int _2169 = int((32u * _2152) + _2163) * 8;
      int _2172 = _2169 + 1;
      int _2175 = _2169 + 2;
      int _2178 = _2169 + 3;
      int _2181 = _2169 + 4;
      int _2184 = _2169 + 5;
      int _2187 = _2169 + 6;
      int _2190 = _2169 + 7;
      uint _2194 = uint(_46_m6[_2184].w);
      float _2269;
      if ((_2194 & 1u) == 1u) {
        uint _2200 = asuint(_46_m6[_2184].x);
        uint _2207 = asuint(_46_m6[_2184].y);
        uint _2214 = asuint(_46_m6[_2184].z);
        uint _2221 = asuint(_46_m6[_2187].x);
        uint _2228 = asuint(_46_m6[_2187].y);
        uint _2235 = asuint(_46_m6[_2187].z);
        float3 _2254 = abs(mul(float4(_423 - _46_m6[_2172].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2200).x, spvUnpackHalf2x16(_2214).x, spvUnpackHalf2x16(_2228).x, 0.0f), float4(spvUnpackHalf2x16(_2200 >> 16u).x, spvUnpackHalf2x16(_2214 >> 16u).x, spvUnpackHalf2x16(_2228 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2207).x, spvUnpackHalf2x16(_2221).x, spvUnpackHalf2x16(_2235).x, 0.0f), float4(spvUnpackHalf2x16(_2207 >> 16u).x, spvUnpackHalf2x16(_2221 >> 16u).x, spvUnpackHalf2x16(_2235 >> 16u).x, 0.0f))).xyz);
        float _2261 = _46_m6[_2190].x * 0.5f;
        float _2267 = 1.0f - clamp((max(max(_2254.x, _2254.y), _2254.z) - (_2261 + 0.5f)) / (0.5f - _2261), 0.0f, 1.0f);
        _2269 = _2267 * _2267;
      } else {
        _2269 = 1.0f;
      }
      uint _2273 = uint(_46_m6[_2169].w);
      bool _2276 = _46_m6[_2178].z > 0.5f;
      if ((false || (_2269 < 0.001000000047497451305389404296875f)) || ((_2273 < 4u) && _2276)) {
        _2154 = _2129;
        _2157 = _2156;
        continue;
      }
      float _4805;
      float3 _4806;
      do {
        [branch] if (_2273 >= 4u) {
          float3 _3505;
          do {
            float3 _2295 = _46_m6[_2172].xyz - _423;
            if (dot(_46_m6[_2178].xyz, _2295) > 0.0f) {
              _3505 = 0.0f.xxx;
              break;
            }
            float _2302 = dot(_2295, _2295) * _46_m6[_2172].w;
            float _2305 = clamp(1.0f - (_2302 * _2302), 0.0f, 1.0f);
            float _2306 = _2305 * _2305;
            if (_2306 <= 0.0f) {
              _3505 = 0.0f.xxx;
              break;
            }
            float3 _2344;
            float _2345;
            bool _2346;
            float3 _2374;
            float3 _2376;
            float3 _2378;
            float3 _2380;
            float3 _2310 = _46_m6[_2175].xyz * _46_m6[_2175].w;
            float3 _2311 = _46_m6[_2172].xyz - _2310;
            float3 _2312 = _46_m6[_2181].xyz * _46_m6[_2178].w;
            float3 _2315 = _46_m6[_2172].xyz + _2310;
            float2 _2325 = (float2(clamp(_546, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_632, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2329 = _73.SampleLevel(_23, _2325, 0.0f);
            float4 _2333 = _74.SampleLevel(_23, _2325, 0.0f);
            float _2728;
            do {
              _2344 = _460 - (_574 * dot(_460, _574));
              _2345 = dot(_2344, _2344);
              _2346 = _2345 > 9.9999997473787516355514526367188e-05f;
              float3 _2369;
              if (_2346) {
                _2369 = _2344 * rsqrt(_2345);
              } else {
                float _2350 = _574.z;
                float _2352 = (_2350 >= 0.0f) ? 1.0f : (-1.0f);
                float _2354 = (-1.0f) / (_2352 + _2350);
                float _2356 = _574.x;
                _2369 = float3(1.0f + (((_2352 * _2354) * _2356) * _2356), ((_2352 * _2356) * _574.y) * _2354, (-_2352) * _2356);
              }
              float3x3 _2373 = mul(float3x3(float3(_2329.x, 0.0f, _2329.z), float3(0.0f, 1.0f, 0.0f), float3(_2329.y, 0.0f, _2329.w)), float3x3(_2369, cross(_574, _2369), _574));
              _2374 = (_2311 - _2312) - _423;
              float3 _2375 = mul(_2373, _2374);
              _2376 = (_2311 + _2312) - _423;
              float3 _2377 = mul(_2373, _2376);
              _2378 = (_2315 + _2312) - _423;
              float3 _2379 = mul(_2373, _2378);
              _2380 = (_2315 - _2312) - _423;
              float3 _2381 = mul(_2373, _2380);
              float _2382 = _2375.z;
              float _2385 = _2377.z;
              float _2389 = _2379.z;
              float _2393 = _2381.z;
              int _2397 = (((int(_2382 > 0.0f) | ((_2385 > 0.0f) ? 2 : 0)) | ((_2389 > 0.0f) ? 4 : 0)) | ((_2393 > 0.0f) ? 8 : 0));
              float3 _2634;
              float3 _2635;
              float3 _2636;
              float3 _2637;
              float3 _2638;
              int _2639;
              if (_2397 == 0) {
                _2634 = _2381;
                _2635 = _2379;
                _2636 = _2377;
                _2637 = _2375;
                _2638 = 0.0f.xxx;
                _2639 = 0;
              } else {
                float3 _2628;
                float3 _2629;
                float3 _2630;
                float3 _2631;
                float3 _2632;
                int _2633;
                if (_2397 == 1) {
                  _2628 = _2381;
                  _2629 = (_2375 * (-_2393)) + (_2381 * _2382);
                  _2630 = (_2375 * (-_2385)) + (_2377 * _2382);
                  _2631 = _2375;
                  _2632 = 0.0f.xxx;
                  _2633 = 3;
                } else {
                  float3 _2614;
                  float3 _2615;
                  float3 _2616;
                  float3 _2617;
                  float3 _2618;
                  int _2619;
                  if (_2397 == 2) {
                    _2614 = _2381;
                    _2615 = (_2377 * (-_2389)) + (_2379 * _2385);
                    _2616 = _2377;
                    _2617 = (_2377 * (-_2382)) + (_2375 * _2385);
                    _2618 = 0.0f.xxx;
                    _2619 = 3;
                  } else {
                    float3 _2600;
                    float3 _2601;
                    float3 _2602;
                    float3 _2603;
                    float3 _2604;
                    int _2605;
                    if (_2397 == 3) {
                      _2600 = (_2375 * (-_2393)) + (_2381 * _2382);
                      _2601 = (_2377 * (-_2389)) + (_2379 * _2385);
                      _2602 = _2377;
                      _2603 = _2375;
                      _2604 = 0.0f.xxx;
                      _2605 = 4;
                    } else {
                      float3 _2586;
                      float3 _2587;
                      float3 _2588;
                      float3 _2589;
                      float3 _2590;
                      int _2591;
                      if (_2397 == 4) {
                        _2586 = _2381;
                        _2587 = _2379;
                        _2588 = (_2379 * (-_2385)) + (_2377 * _2389);
                        _2589 = (_2379 * (-_2393)) + (_2381 * _2389);
                        _2590 = 0.0f.xxx;
                        _2591 = 3;
                      } else {
                        float3 _2572;
                        float3 _2573;
                        float3 _2574;
                        float3 _2575;
                        float3 _2576;
                        int _2577;
                        if (_2397 == 5) {
                          _2572 = _2381;
                          _2573 = _2379;
                          _2574 = _2377;
                          _2575 = _2375;
                          _2576 = 0.0f.xxx;
                          _2577 = 0;
                        } else {
                          float3 _2566;
                          float3 _2567;
                          float3 _2568;
                          float3 _2569;
                          float3 _2570;
                          int _2571;
                          if (_2397 == 6) {
                            _2566 = (_2379 * (-_2393)) + (_2381 * _2389);
                            _2567 = _2379;
                            _2568 = _2377;
                            _2569 = (_2377 * (-_2382)) + (_2375 * _2385);
                            _2570 = 0.0f.xxx;
                            _2571 = 4;
                          } else {
                            float3 _2552;
                            float3 _2553;
                            float3 _2554;
                            float3 _2555;
                            float3 _2556;
                            int _2557;
                            if (_2397 == 7) {
                              float _2545 = -_2393;
                              _2552 = (_2379 * _2545) + (_2381 * _2389);
                              _2553 = _2379;
                              _2554 = _2377;
                              _2555 = _2375;
                              _2556 = (_2375 * _2545) + (_2381 * _2382);
                              _2557 = 5;
                            } else {
                              float3 _2539;
                              float3 _2540;
                              float3 _2541;
                              float3 _2542;
                              float3 _2543;
                              int _2544;
                              if (_2397 == 8) {
                                _2539 = _2381;
                                _2540 = _2381;
                                _2541 = (_2381 * (-_2389)) + (_2379 * _2393);
                                _2542 = (_2381 * (-_2382)) + (_2375 * _2393);
                                _2543 = 0.0f.xxx;
                                _2544 = 3;
                              } else {
                                float3 _2525;
                                float3 _2526;
                                float3 _2527;
                                float3 _2528;
                                float3 _2529;
                                int _2530;
                                if (_2397 == 9) {
                                  _2525 = _2381;
                                  _2526 = (_2381 * (-_2389)) + (_2379 * _2393);
                                  _2527 = (_2375 * (-_2385)) + (_2377 * _2382);
                                  _2528 = _2375;
                                  _2529 = 0.0f.xxx;
                                  _2530 = 4;
                                } else {
                                  float3 _2511;
                                  float3 _2512;
                                  float3 _2513;
                                  float3 _2514;
                                  float3 _2515;
                                  int _2516;
                                  if (_2397 == 10) {
                                    _2511 = _2381;
                                    _2512 = _2379;
                                    _2513 = _2377;
                                    _2514 = _2375;
                                    _2515 = 0.0f.xxx;
                                    _2516 = 0;
                                  } else {
                                    float3 _2505;
                                    float3 _2506;
                                    float3 _2507;
                                    float3 _2508;
                                    float3 _2509;
                                    int _2510;
                                    if (_2397 == 11) {
                                      float _2498 = -_2389;
                                      _2505 = (_2381 * _2498) + (_2379 * _2393);
                                      _2506 = (_2377 * _2498) + (_2379 * _2385);
                                      _2507 = _2377;
                                      _2508 = _2375;
                                      _2509 = _2381;
                                      _2510 = 5;
                                    } else {
                                      float3 _2492;
                                      float3 _2493;
                                      float3 _2494;
                                      float3 _2495;
                                      float3 _2496;
                                      int _2497;
                                      if (_2397 == 12) {
                                        _2492 = _2381;
                                        _2493 = _2379;
                                        _2494 = (_2379 * (-_2385)) + (_2377 * _2389);
                                        _2495 = (_2381 * (-_2382)) + (_2375 * _2393);
                                        _2496 = 0.0f.xxx;
                                        _2497 = 4;
                                      } else {
                                        bool _2450 = _2397 == 13;
                                        float3 _2477;
                                        float3 _2478;
                                        float3 _2479;
                                        float3 _2480;
                                        int _2481;
                                        if (_2450) {
                                          float _2470 = -_2385;
                                          _2477 = (_2379 * _2470) + (_2377 * _2389);
                                          _2478 = (_2375 * _2470) + (_2377 * _2382);
                                          _2479 = _2375;
                                          _2480 = _2381;
                                          _2481 = 5;
                                        } else {
                                          float3 _2467;
                                          float3 _2468;
                                          int _2469;
                                          if (_2397 == 14) {
                                            float _2460 = -_2382;
                                            _2467 = (_2377 * _2460) + (_2375 * _2385);
                                            _2468 = (_2381 * _2460) + (_2375 * _2393);
                                            _2469 = 5;
                                          } else {
                                            _2467 = _2375;
                                            _2468 = 0.0f.xxx;
                                            _2469 = (_2397 == 15) ? 4 : 0;
                                          }
                                          _2477 = _2379;
                                          _2478 = _2377;
                                          _2479 = _2467;
                                          _2480 = _2468;
                                          _2481 = _2469;
                                        }
                                        bool3 _2482 = _2450.xxx;
                                        _2492 = float3(_2482.x ? _2379.x : _2381.x, _2482.y ? _2379.y : _2381.y, _2482.z ? _2379.z : _2381.z);
                                        _2493 = _2477;
                                        _2494 = _2478;
                                        _2495 = _2479;
                                        _2496 = _2480;
                                        _2497 = _2481;
                                      }
                                      _2505 = _2492;
                                      _2506 = _2493;
                                      _2507 = _2494;
                                      _2508 = _2495;
                                      _2509 = _2496;
                                      _2510 = _2497;
                                    }
                                    _2511 = _2505;
                                    _2512 = _2506;
                                    _2513 = _2507;
                                    _2514 = _2508;
                                    _2515 = _2509;
                                    _2516 = _2510;
                                  }
                                  _2525 = _2511;
                                  _2526 = _2512;
                                  _2527 = _2513;
                                  _2528 = _2514;
                                  _2529 = _2515;
                                  _2530 = _2516;
                                }
                                _2539 = _2525;
                                _2540 = _2526;
                                _2541 = _2527;
                                _2542 = _2528;
                                _2543 = _2529;
                                _2544 = _2530;
                              }
                              _2552 = _2539;
                              _2553 = _2540;
                              _2554 = _2541;
                              _2555 = _2542;
                              _2556 = _2543;
                              _2557 = _2544;
                            }
                            _2566 = _2552;
                            _2567 = _2553;
                            _2568 = _2554;
                            _2569 = _2555;
                            _2570 = _2556;
                            _2571 = _2557;
                          }
                          _2572 = _2566;
                          _2573 = _2567;
                          _2574 = _2568;
                          _2575 = _2569;
                          _2576 = _2570;
                          _2577 = _2571;
                        }
                        _2586 = _2572;
                        _2587 = _2573;
                        _2588 = _2574;
                        _2589 = _2575;
                        _2590 = _2576;
                        _2591 = _2577;
                      }
                      _2600 = _2586;
                      _2601 = _2587;
                      _2602 = _2588;
                      _2603 = _2589;
                      _2604 = _2590;
                      _2605 = _2591;
                    }
                    _2614 = _2600;
                    _2615 = _2601;
                    _2616 = _2602;
                    _2617 = _2603;
                    _2618 = _2604;
                    _2619 = _2605;
                  }
                  _2628 = _2614;
                  _2629 = _2615;
                  _2630 = _2616;
                  _2631 = _2617;
                  _2632 = _2618;
                  _2633 = _2619;
                }
                _2634 = _2628;
                _2635 = _2629;
                _2636 = _2630;
                _2637 = _2631;
                _2638 = _2632;
                _2639 = _2633;
              }
              bool3 _2641 = (_2639 == 3).xxx;
              bool3 _2644 = (_2639 == 4).xxx;
              if (_2639 == 0) {
                _2728 = 0.0f;
                break;
              }
              float3 _2649 = normalize(_2637);
              float3 _2650 = normalize(_2636);
              float3 _2651 = normalize(_2635);
              float3 _2652 = normalize(float3(_2641.x ? _2637.x : _2634.x, _2641.y ? _2637.y : _2634.y, _2641.z ? _2637.z : _2634.z));
              float3 _2653 = normalize(float3(_2644.x ? _2637.x : _2638.x, _2644.y ? _2637.y : _2638.y, _2644.z ? _2637.z : _2638.z));
              float _2655 = clamp(dot(_2649, _2650), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2659 = sqrt(1.0f - (_2655 * _2655));
              float _2667 = clamp(dot(_2650, _2651), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2671 = sqrt(1.0f - (_2667 * _2667));
              float _2680 = clamp(dot(_2651, _2652), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2684 = sqrt(1.0f - (_2680 * _2680));
              float _2691 = ((cross(_2649, _2650).z * ((_2659 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2655) / _2659))) + (cross(_2650, _2651).z * ((_2671 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2667) / _2671)))) + (cross(_2651, _2652).z * ((_2684 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2680) / _2684)));
              float _2708;
              if (_2639 >= 4) {
                float _2696 = clamp(dot(_2652, _2653), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2700 = sqrt(1.0f - (_2696 * _2696));
                _2708 = _2691 + (cross(_2652, _2653).z * ((_2700 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2696) / _2700)));
              } else {
                _2708 = _2691;
              }
              float _2725;
              if (_2639 == 5) {
                float _2713 = clamp(dot(_2653, _2649), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2717 = sqrt(1.0f - (_2713 * _2713));
                _2725 = _2708 + (cross(_2653, _2649).z * ((_2717 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2713) / _2717)));
              } else {
                _2725 = _2708;
              }
              _2728 = max(_2725, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3116;
            do {
              float3 _2762;
              if (_2346) {
                _2762 = _2344 * rsqrt(_2345);
              } else {
                float _2743 = _574.z;
                float _2745 = (_2743 >= 0.0f) ? 1.0f : (-1.0f);
                float _2747 = (-1.0f) / (_2745 + _2743);
                float _2749 = _574.x;
                _2762 = float3(1.0f + (((_2745 * _2747) * _2749) * _2749), ((_2745 * _2749) * _574.y) * _2747, (-_2745) * _2749);
              }
              float3x3 _2765 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2762, cross(_574, _2762), _574));
              float3 _2766 = mul(_2765, _2374);
              float3 _2767 = mul(_2765, _2376);
              float3 _2768 = mul(_2765, _2378);
              float3 _2769 = mul(_2765, _2380);
              float _2770 = _2766.z;
              float _2773 = _2767.z;
              float _2777 = _2768.z;
              float _2781 = _2769.z;
              int _2785 = (((int(_2770 > 0.0f) | ((_2773 > 0.0f) ? 2 : 0)) | ((_2777 > 0.0f) ? 4 : 0)) | ((_2781 > 0.0f) ? 8 : 0));
              float3 _3022;
              float3 _3023;
              float3 _3024;
              float3 _3025;
              float3 _3026;
              int _3027;
              if (_2785 == 0) {
                _3022 = _2769;
                _3023 = _2768;
                _3024 = _2767;
                _3025 = _2766;
                _3026 = 0.0f.xxx;
                _3027 = 0;
              } else {
                float3 _3016;
                float3 _3017;
                float3 _3018;
                float3 _3019;
                float3 _3020;
                int _3021;
                if (_2785 == 1) {
                  _3016 = _2769;
                  _3017 = (_2766 * (-_2781)) + (_2769 * _2770);
                  _3018 = (_2766 * (-_2773)) + (_2767 * _2770);
                  _3019 = _2766;
                  _3020 = 0.0f.xxx;
                  _3021 = 3;
                } else {
                  float3 _3002;
                  float3 _3003;
                  float3 _3004;
                  float3 _3005;
                  float3 _3006;
                  int _3007;
                  if (_2785 == 2) {
                    _3002 = _2769;
                    _3003 = (_2767 * (-_2777)) + (_2768 * _2773);
                    _3004 = _2767;
                    _3005 = (_2767 * (-_2770)) + (_2766 * _2773);
                    _3006 = 0.0f.xxx;
                    _3007 = 3;
                  } else {
                    float3 _2988;
                    float3 _2989;
                    float3 _2990;
                    float3 _2991;
                    float3 _2992;
                    int _2993;
                    if (_2785 == 3) {
                      _2988 = (_2766 * (-_2781)) + (_2769 * _2770);
                      _2989 = (_2767 * (-_2777)) + (_2768 * _2773);
                      _2990 = _2767;
                      _2991 = _2766;
                      _2992 = 0.0f.xxx;
                      _2993 = 4;
                    } else {
                      float3 _2974;
                      float3 _2975;
                      float3 _2976;
                      float3 _2977;
                      float3 _2978;
                      int _2979;
                      if (_2785 == 4) {
                        _2974 = _2769;
                        _2975 = _2768;
                        _2976 = (_2768 * (-_2773)) + (_2767 * _2777);
                        _2977 = (_2768 * (-_2781)) + (_2769 * _2777);
                        _2978 = 0.0f.xxx;
                        _2979 = 3;
                      } else {
                        float3 _2960;
                        float3 _2961;
                        float3 _2962;
                        float3 _2963;
                        float3 _2964;
                        int _2965;
                        if (_2785 == 5) {
                          _2960 = _2769;
                          _2961 = _2768;
                          _2962 = _2767;
                          _2963 = _2766;
                          _2964 = 0.0f.xxx;
                          _2965 = 0;
                        } else {
                          float3 _2954;
                          float3 _2955;
                          float3 _2956;
                          float3 _2957;
                          float3 _2958;
                          int _2959;
                          if (_2785 == 6) {
                            _2954 = (_2768 * (-_2781)) + (_2769 * _2777);
                            _2955 = _2768;
                            _2956 = _2767;
                            _2957 = (_2767 * (-_2770)) + (_2766 * _2773);
                            _2958 = 0.0f.xxx;
                            _2959 = 4;
                          } else {
                            float3 _2940;
                            float3 _2941;
                            float3 _2942;
                            float3 _2943;
                            float3 _2944;
                            int _2945;
                            if (_2785 == 7) {
                              float _2933 = -_2781;
                              _2940 = (_2768 * _2933) + (_2769 * _2777);
                              _2941 = _2768;
                              _2942 = _2767;
                              _2943 = _2766;
                              _2944 = (_2766 * _2933) + (_2769 * _2770);
                              _2945 = 5;
                            } else {
                              float3 _2927;
                              float3 _2928;
                              float3 _2929;
                              float3 _2930;
                              float3 _2931;
                              int _2932;
                              if (_2785 == 8) {
                                _2927 = _2769;
                                _2928 = _2769;
                                _2929 = (_2769 * (-_2777)) + (_2768 * _2781);
                                _2930 = (_2769 * (-_2770)) + (_2766 * _2781);
                                _2931 = 0.0f.xxx;
                                _2932 = 3;
                              } else {
                                float3 _2913;
                                float3 _2914;
                                float3 _2915;
                                float3 _2916;
                                float3 _2917;
                                int _2918;
                                if (_2785 == 9) {
                                  _2913 = _2769;
                                  _2914 = (_2769 * (-_2777)) + (_2768 * _2781);
                                  _2915 = (_2766 * (-_2773)) + (_2767 * _2770);
                                  _2916 = _2766;
                                  _2917 = 0.0f.xxx;
                                  _2918 = 4;
                                } else {
                                  float3 _2899;
                                  float3 _2900;
                                  float3 _2901;
                                  float3 _2902;
                                  float3 _2903;
                                  int _2904;
                                  if (_2785 == 10) {
                                    _2899 = _2769;
                                    _2900 = _2768;
                                    _2901 = _2767;
                                    _2902 = _2766;
                                    _2903 = 0.0f.xxx;
                                    _2904 = 0;
                                  } else {
                                    float3 _2893;
                                    float3 _2894;
                                    float3 _2895;
                                    float3 _2896;
                                    float3 _2897;
                                    int _2898;
                                    if (_2785 == 11) {
                                      float _2886 = -_2777;
                                      _2893 = (_2769 * _2886) + (_2768 * _2781);
                                      _2894 = (_2767 * _2886) + (_2768 * _2773);
                                      _2895 = _2767;
                                      _2896 = _2766;
                                      _2897 = _2769;
                                      _2898 = 5;
                                    } else {
                                      float3 _2880;
                                      float3 _2881;
                                      float3 _2882;
                                      float3 _2883;
                                      float3 _2884;
                                      int _2885;
                                      if (_2785 == 12) {
                                        _2880 = _2769;
                                        _2881 = _2768;
                                        _2882 = (_2768 * (-_2773)) + (_2767 * _2777);
                                        _2883 = (_2769 * (-_2770)) + (_2766 * _2781);
                                        _2884 = 0.0f.xxx;
                                        _2885 = 4;
                                      } else {
                                        bool _2838 = _2785 == 13;
                                        float3 _2865;
                                        float3 _2866;
                                        float3 _2867;
                                        float3 _2868;
                                        int _2869;
                                        if (_2838) {
                                          float _2858 = -_2773;
                                          _2865 = (_2768 * _2858) + (_2767 * _2777);
                                          _2866 = (_2766 * _2858) + (_2767 * _2770);
                                          _2867 = _2766;
                                          _2868 = _2769;
                                          _2869 = 5;
                                        } else {
                                          float3 _2855;
                                          float3 _2856;
                                          int _2857;
                                          if (_2785 == 14) {
                                            float _2848 = -_2770;
                                            _2855 = (_2767 * _2848) + (_2766 * _2773);
                                            _2856 = (_2769 * _2848) + (_2766 * _2781);
                                            _2857 = 5;
                                          } else {
                                            _2855 = _2766;
                                            _2856 = 0.0f.xxx;
                                            _2857 = (_2785 == 15) ? 4 : 0;
                                          }
                                          _2865 = _2768;
                                          _2866 = _2767;
                                          _2867 = _2855;
                                          _2868 = _2856;
                                          _2869 = _2857;
                                        }
                                        bool3 _2870 = _2838.xxx;
                                        _2880 = float3(_2870.x ? _2768.x : _2769.x, _2870.y ? _2768.y : _2769.y, _2870.z ? _2768.z : _2769.z);
                                        _2881 = _2865;
                                        _2882 = _2866;
                                        _2883 = _2867;
                                        _2884 = _2868;
                                        _2885 = _2869;
                                      }
                                      _2893 = _2880;
                                      _2894 = _2881;
                                      _2895 = _2882;
                                      _2896 = _2883;
                                      _2897 = _2884;
                                      _2898 = _2885;
                                    }
                                    _2899 = _2893;
                                    _2900 = _2894;
                                    _2901 = _2895;
                                    _2902 = _2896;
                                    _2903 = _2897;
                                    _2904 = _2898;
                                  }
                                  _2913 = _2899;
                                  _2914 = _2900;
                                  _2915 = _2901;
                                  _2916 = _2902;
                                  _2917 = _2903;
                                  _2918 = _2904;
                                }
                                _2927 = _2913;
                                _2928 = _2914;
                                _2929 = _2915;
                                _2930 = _2916;
                                _2931 = _2917;
                                _2932 = _2918;
                              }
                              _2940 = _2927;
                              _2941 = _2928;
                              _2942 = _2929;
                              _2943 = _2930;
                              _2944 = _2931;
                              _2945 = _2932;
                            }
                            _2954 = _2940;
                            _2955 = _2941;
                            _2956 = _2942;
                            _2957 = _2943;
                            _2958 = _2944;
                            _2959 = _2945;
                          }
                          _2960 = _2954;
                          _2961 = _2955;
                          _2962 = _2956;
                          _2963 = _2957;
                          _2964 = _2958;
                          _2965 = _2959;
                        }
                        _2974 = _2960;
                        _2975 = _2961;
                        _2976 = _2962;
                        _2977 = _2963;
                        _2978 = _2964;
                        _2979 = _2965;
                      }
                      _2988 = _2974;
                      _2989 = _2975;
                      _2990 = _2976;
                      _2991 = _2977;
                      _2992 = _2978;
                      _2993 = _2979;
                    }
                    _3002 = _2988;
                    _3003 = _2989;
                    _3004 = _2990;
                    _3005 = _2991;
                    _3006 = _2992;
                    _3007 = _2993;
                  }
                  _3016 = _3002;
                  _3017 = _3003;
                  _3018 = _3004;
                  _3019 = _3005;
                  _3020 = _3006;
                  _3021 = _3007;
                }
                _3022 = _3016;
                _3023 = _3017;
                _3024 = _3018;
                _3025 = _3019;
                _3026 = _3020;
                _3027 = _3021;
              }
              bool3 _3029 = (_3027 == 3).xxx;
              bool3 _3032 = (_3027 == 4).xxx;
              if (_3027 == 0) {
                _3116 = 0.0f;
                break;
              }
              float3 _3037 = normalize(_3025);
              float3 _3038 = normalize(_3024);
              float3 _3039 = normalize(_3023);
              float3 _3040 = normalize(float3(_3029.x ? _3025.x : _3022.x, _3029.y ? _3025.y : _3022.y, _3029.z ? _3025.z : _3022.z));
              float3 _3041 = normalize(float3(_3032.x ? _3025.x : _3026.x, _3032.y ? _3025.y : _3026.y, _3032.z ? _3025.z : _3026.z));
              float _3043 = clamp(dot(_3037, _3038), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3047 = sqrt(1.0f - (_3043 * _3043));
              float _3055 = clamp(dot(_3038, _3039), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3059 = sqrt(1.0f - (_3055 * _3055));
              float _3068 = clamp(dot(_3039, _3040), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3072 = sqrt(1.0f - (_3068 * _3068));
              float _3079 = ((cross(_3037, _3038).z * ((_3047 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3043) / _3047))) + (cross(_3038, _3039).z * ((_3059 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3055) / _3059)))) + (cross(_3039, _3040).z * ((_3072 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3068) / _3072)));
              float _3096;
              if (_3027 >= 4) {
                float _3084 = clamp(dot(_3040, _3041), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3088 = sqrt(1.0f - (_3084 * _3084));
                _3096 = _3079 + (cross(_3040, _3041).z * ((_3088 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3084) / _3088)));
              } else {
                _3096 = _3079;
              }
              float _3113;
              if (_3027 == 5) {
                float _3101 = clamp(dot(_3041, _3037), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3105 = sqrt(1.0f - (_3101 * _3101));
                _3113 = _3096 + (cross(_3041, _3037).z * ((_3105 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3101) / _3105)));
              } else {
                _3113 = _3096;
              }
              _3116 = max(_3113, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3119 = (_2194 & 2u) != 0u;
            uint _3123 = asuint(_46_m6[_2181].w);
            uint _3124 = asuint(_46_m6[_2187].w);
            float3 _3125 = _423 - _46_m6[_2172].xyz;
            float3 _3126 = abs(_3125);
            float _3127 = _3126.x;
            float _3128 = _3126.y;
            float _3130 = _3126.z;
            int _3163;
            if ((_3127 > _3128) && (_3127 > _3130)) {
              _3163 = int((_3125.x > 0.0f) ? (_3123 & 1023u) : ((_3123 >> 10u) & 1023u));
            } else {
              int _3155;
              if (_3128 > _3130) {
                _3155 = int((_3125.y > 0.0f) ? ((_3123 >> 20u) & 1023u) : (_3124 & 1023u));
              } else {
                _3155 = int((_3125.z > 0.0f) ? ((_3124 >> 10u) & 1023u) : ((_3124 >> 20u) & 1023u));
              }
              _3163 = _3155;
            }
            int _3166 = _3119 ? int(_46_m6[_2181].w) : ((_3163 == 1023) ? (-1) : _3163);
            uint _3177 = asuint(_50_m11.x) + (uint(_3166) * 96u);
            uint _3179 = (_3177 + 64u) >> 2u;
            uint _3182 = _3179 + 1u;
            uint _3185 = _3179 + 2u;
            uint _3188 = _3179 + 3u;
            float4 _3192 = asfloat(uint4(_54.Load(_3179 * 4 + 0), _54.Load(_3182 * 4 + 0), _54.Load(_3185 * 4 + 0), _54.Load(_3188 * 4 + 0)));
            float3 _3199 = (_423 - ((_3125 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3125, _3125)))) * _3192.x)) + (_574 * (_3192.y * 5.0f));
            uint _3200 = _3177 >> 2u;
            uint _3215 = (_3177 + 16u) >> 2u;
            uint _3230 = (_3177 + 32u) >> 2u;
            uint _3245 = (_3177 + 48u) >> 2u;
            float4 _3265 = mul(transpose(float4x4(asfloat(uint4(_54.Load(_3200 * 4 + 0), _54.Load((_3200 + 1u) * 4 + 0), _54.Load((_3200 + 2u) * 4 + 0), _54.Load((_3200 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3215 * 4 + 0), _54.Load((_3215 + 1u) * 4 + 0), _54.Load((_3215 + 2u) * 4 + 0), _54.Load((_3215 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3230 * 4 + 0), _54.Load((_3230 + 1u) * 4 + 0), _54.Load((_3230 + 2u) * 4 + 0), _54.Load((_3230 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3245 * 4 + 0), _54.Load((_3245 + 1u) * 4 + 0), _54.Load((_3245 + 2u) * 4 + 0), _54.Load((_3245 + 3u) * 4 + 0))))), float4(_3199, 1.0f));
            float _3266 = _3265.w;
            float3 _3269 = _3265.xyz / _3266.xxx;
            uint _3271 = (_3177 + 80u) >> 2u;
            float4 _3284 = asfloat(uint4(_54.Load(_3271 * 4 + 0), _54.Load((_3271 + 1u) * 4 + 0), _54.Load((_3271 + 2u) * 4 + 0), _54.Load((_3271 + 3u) * 4 + 0)));
            float2 _3285 = _3269.xy;
            float2 _3287 = _3284.xy;
            float3 _3291 = _3269.xyz;
            bool3 _3292 = bool3(_3291.x <= 0.0f.xxx.x, _3291.y <= 0.0f.xxx.y, _3291.z <= 0.0f.xxx.z);
            bool3 _3293 = bool3(_3291.x >= 1.0f.xxx.x, _3291.y >= 1.0f.xxx.y, _3291.z >= 1.0f.xxx.z);
            float _3296 = _3269.z;
            float2 _3307 = ((_3285 * (_3284.zw - _3287)) + _3287).xy * _50_m10.zw;
            float2 _3309 = floor(_3307 + 0.5f.xx);
            float2 _3310 = _3307 - _3309;
            float _3311 = _3310.x;
            float _3312 = _3311 + 0.5f;
            float _3313 = _3312 * _3312;
            float _3316 = 1.0f - _3311;
            float _3317 = min(_3311, 0.0f);
            float _3320 = _3311 + 1.0f;
            float _3321 = max(_3311, 0.0f);
            float _3332 = _3310.y;
            float _3333 = _3332 + 0.5f;
            float _3334 = _3333 * _3333;
            float _3337 = 1.0f - _3332;
            float _3338 = min(_3332, 0.0f);
            float _3341 = _3332 + 1.0f;
            float _3342 = max(_3332, 0.0f);
            float3 _3354 = float3(0.1599999964237213134765625f * _3316, 0.1599999964237213134765625f * ((_3320 - (_3321 * _3321)) + 1.0f), _3313 * 0.07999999821186065673828125f);
            float3 _3355 = float3(0.1599999964237213134765625f * ((_3313 * 0.5f) - _3311), 0.1599999964237213134765625f * ((_3316 - (_3317 * _3317)) + 1.0f), 0.1599999964237213134765625f * _3320) + _3354;
            float3 _3357 = float3(0.1599999964237213134765625f * _3337, 0.1599999964237213134765625f * ((_3341 - (_3342 * _3342)) + 1.0f), _3334 * 0.07999999821186065673828125f);
            float3 _3358 = float3(0.1599999964237213134765625f * ((_3334 * 0.5f) - _3332), 0.1599999964237213134765625f * ((_3337 - (_3338 * _3338)) + 1.0f), 0.1599999964237213134765625f * _3341) + _3357;
            float3 _3364 = ((_3354 / _3355) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.xxx;
            float3 _3366 = ((_3357 / _3358) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.yyy;
            float2 _3368 = _3309 * _50_m10.xy;
            float _3369 = _3364.x;
            float _3370 = _3366.x;
            float2 _3372 = _3368 + float2(_3369, _3370);
            float _3373 = _3364.y;
            float2 _3375 = _3368 + float2(_3373, _3370);
            float _3376 = _3364.z;
            float2 _3378 = _3368 + float2(_3376, _3370);
            float _3379 = _3366.y;
            float2 _3381 = _3368 + float2(_3369, _3379);
            float2 _3383 = _3368 + float2(_3373, _3379);
            float2 _3385 = _3368 + float2(_3376, _3379);
            float _3386 = _3366.z;
            float2 _3388 = _3368 + float2(_3369, _3386);
            float2 _3390 = _3368 + float2(_3373, _3386);
            float2 _3392 = _3368 + float2(_3376, _3386);
            float _3393 = _3355.x;
            float _3394 = _3358.x;
            float _3396 = _3355.y;
            float _3398 = _3355.z;
            float _3400 = _3358.y;
            float _3404 = _3358.z;
            float _3470 = ((((((((_3393 * _3394) * _52.SampleCmpLevelZero(_26, float3(_3372, _382).xy, _3296)) + ((_3396 * _3394) * _52.SampleCmpLevelZero(_26, float3(_3375, _382).xy, _3296))) + ((_3398 * _3394) * _52.SampleCmpLevelZero(_26, float3(_3378, _382).xy, _3296))) + ((_3393 * _3400) * _52.SampleCmpLevelZero(_26, float3(_3381, _382).xy, _3296))) + ((_3396 * _3400) * _52.SampleCmpLevelZero(_26, float3(_3383, _382).xy, _3296))) + ((_3398 * _3400) * _52.SampleCmpLevelZero(_26, float3(_3385, _382).xy, _3296))) + ((_3393 * _3404) * _52.SampleCmpLevelZero(_26, float3(_3388, _382).xy, _3296))) + ((_3396 * _3404) * _52.SampleCmpLevelZero(_26, float3(_3390, _382).xy, _3296));
            float4 _3485 = asfloat(uint4(_54.Load(_3179 * 4 + 0), _54.Load(_3182 * 4 + 0), _54.Load(_3185 * 4 + 0), _54.Load(_3188 * 4 + 0)));
            float _3486 = _3485.w;
            float2 _3488 = min(_3285, 1.0f.xx - _3285);
            _3505 = ((_46_m6[_2169].xyz * (((((_631 * _2333.x) + ((1.0f.xxx - _631) * _2333.y)) * _2728) * _46_m6[_2190].z) + (_627 * _3116))) * _2306) * ((_3166 >= 0) ? lerp(1.0f, (any(bool3(_3292.x || _3293.x, _3292.y || _3293.y, _3292.z || _3293.z)) || ((asuint(_3296) & 2147483647u) > 2139095040u)) ? 1.0f : (_3470 + ((_3398 * _3404) * _52.SampleCmpLevelZero(_26, float3(_3392, _382).xy, _3296))), _3119 ? min(_3486, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3485.z - _3266) * 0.25f, min(_3488.x, _3488.y)))) : _3486) : 1.0f);
            break;
          } while (false);
          _4805 = _2129;
          _4806 = _3505 * _2269;
          break;
        }
        float _4803;
        float3 _4804;
        if (_46_m6[_2169].w < 1.5f) {
          float3 _4085 = float3(0.100000001490116119384765625f, _546, 1.0f);
          float _4094 = (0.5f + (0.5f * _46_m6[_2175].y)) - abs(_46_m6[_2175].x);
          float _4095 = _46_m6[_2175].y - _4094;
          float _4102 = abs(max((1.0f - abs(_4094)) - abs(_4095), 0.00048828125f));
          float3 _4106 = normalize(float3(_4094, _4095, (_46_m6[_2175].x >= 0.0f) ? _4102 : (-_4102)));
          float3 _4107 = _46_m6[_2172].xyz - _423;
          float _4108 = dot(_4107, _4107);
          float _4109 = rsqrt(_4108);
          float3 _4110 = _4107 * _4109;
          float _4114 = clamp(_46_m6[_2190].y * _4109, 0.0f, 1.0f);
          int _4119 = int(_46_m6[_2190].w);
          float3 _4120 = _4106 * _46_m6[_2175].z;
          float3 _4121 = _4120 * 0.5f;
          float3 _4122 = _4107 - _4121;
          float3 _4123 = _4107 + _4121;
          bool _4125 = (_2273 & 1u) == 0u;
          bool _4128 = _4125 || ((_2194 & 2u) != 0u);
          bool _4131 = (!_4125) && (_46_m6[_2175].z > 0.0f);
          float _4150;
          float _4151;
          if (_4131) {
            float _4135 = length(_4122);
            float _4136 = length(_4123);
            _4150 = clamp(0.5f * ((dot(_574, _4122) / _4135) + (dot(_574, _4123) / _4136)), 0.0f, 1.0f);
            _4151 = 1.0f / ((((_4135 * _4136) + dot(_4122, _4123)) * 0.5f) + 1.0f);
          } else {
            _4150 = clamp(dot(_574, _4110), 0.0f, 1.0f);
            _4151 = 1.0f;
          }
          float _4173;
          if (_46_m6[_2187].w < 0.0f) {
            float _4167 = _4108 * (_46_m6[_2172].w * _46_m6[_2172].w);
            float _4170 = clamp(1.0f - (_4167 * _4167), 0.0f, 1.0f);
            _4173 = lerp(1.0f / (_4108 + 1.0f), _4151, float(_4131)) * (_4170 * _4170);
          } else {
            float3 _4156 = _4107 * _46_m6[_2172].w;
            _4173 = _4151 * pow(1.0f - clamp(dot(_4156, _4156), 0.0f, 1.0f), _46_m6[_2187].w);
          }
          float _4179 = clamp((dot(_4110, -_4106) - _46_m6[_2175].z) * _46_m6[_2175].w, 0.0f, 1.0f);
          float _4183 = _4173 * lerp(1.0f, _4179 * _4179, float(_4125));
          float _4283;
          if ((!_4131) && (_4119 >= 0)) {
            uint _4189 = uint(_4119);
            float2 _4276;
            [branch] if (_4125) {
              float4 _4266 = mul(_70_m1[_4189], _427);
              _4276 = _70_m0[_4189].xy + (clamp(_4266.xy / _4266.w.xx, 0.0f.xx, 1.0f.xx) * _70_m0[_4189].zw);
            }
            else {
              float3 _4203 = mul(float4(-_4107, 0.0f), _70_m1[_4189]).xyz;
              float3 _388 = _4203;
              float3 _387 = _4203;
              float3 _386 = abs(_4203);
              uint _4212 = uint(int(_386.y > _386.x));
              uint _4218 = (_386.z > _386[_4212]) ? 2u : _4212;
              uint _4224 = (_4218 * 2u) + uint(_387[_4218] < 0.0f);
              float _4228 = abs(_388[_4224 / 2u]);
              float _4248 = 0.5f - (0.000244140625f / _70_m0[_4189].w);
              _4276 = _70_m0[_4189].xy + (clamp(float2((float(_4224) + ((((_388[uint(_361[_4224].x)] * _362[_4224].x) / _4228) * _4248) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_388[uint(_361[_4224].y)] * _362[_4224].y) / _4228) * _4248)), 0.0f.xx, 1.0f.xx) * _70_m0[_4189].zw);
            }
            _4283 = _4183 * _68.SampleLevel(_23, _4276, 0.0f).x;
          } else {
            _4283 = _4183;
          }
          bool _4284 = _4283 > 0.0f;
          float _4668;
          if (_4284) {
            int _4337;
            if (_4128) {
              _4337 = int(_46_m6[_2178].x);
            } else {
              uint _4292 = asuint(_46_m6[_2175].w);
              uint _4293 = asuint(_46_m6[_2178].x);
              float3 _4294 = _423 - _46_m6[_2172].xyz;
              float3 _4295 = abs(_4294);
              float _4296 = _4295.x;
              float _4297 = _4295.y;
              float _4299 = _4295.z;
              int _4332;
              if ((_4296 > _4297) && (_4296 > _4299)) {
                _4332 = int((_4294.x > 0.0f) ? (_4292 & 1023u) : ((_4292 >> 10u) & 1023u));
              } else {
                int _4324;
                if (_4297 > _4299) {
                  _4324 = int((_4294.y > 0.0f) ? ((_4292 >> 20u) & 1023u) : (_4293 & 1023u));
                } else {
                  _4324 = int((_4294.z > 0.0f) ? ((_4293 >> 10u) & 1023u) : ((_4293 >> 20u) & 1023u));
                }
                _4332 = _4324;
              }
              _4337 = (_4332 == 1023) ? (-1) : _4332;
            }
            uint _4344 = asuint(_50_m11.x) + (uint(_4337) * 96u);
            uint _4346 = (_4344 + 64u) >> 2u;
            uint _4349 = _4346 + 1u;
            uint _4352 = _4346 + 2u;
            uint _4355 = _4346 + 3u;
            float4 _4359 = asfloat(uint4(_54.Load(_4346 * 4 + 0), _54.Load(_4349 * 4 + 0), _54.Load(_4352 * 4 + 0), _54.Load(_4355 * 4 + 0)));
            float3 _4366 = (_423 - ((-_4110) * _4359.x)) + (_574 * (_4359.y * 5.0f));
            uint _4367 = _4344 >> 2u;
            uint _4382 = (_4344 + 16u) >> 2u;
            uint _4397 = (_4344 + 32u) >> 2u;
            uint _4412 = (_4344 + 48u) >> 2u;
            float4 _4432 = mul(transpose(float4x4(asfloat(uint4(_54.Load(_4367 * 4 + 0), _54.Load((_4367 + 1u) * 4 + 0), _54.Load((_4367 + 2u) * 4 + 0), _54.Load((_4367 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_4382 * 4 + 0), _54.Load((_4382 + 1u) * 4 + 0), _54.Load((_4382 + 2u) * 4 + 0), _54.Load((_4382 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_4397 * 4 + 0), _54.Load((_4397 + 1u) * 4 + 0), _54.Load((_4397 + 2u) * 4 + 0), _54.Load((_4397 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_4412 * 4 + 0), _54.Load((_4412 + 1u) * 4 + 0), _54.Load((_4412 + 2u) * 4 + 0), _54.Load((_4412 + 3u) * 4 + 0))))), float4(_4366, 1.0f));
            float _4433 = _4432.w;
            float3 _4436 = _4432.xyz / _4433.xxx;
            uint _4438 = (_4344 + 80u) >> 2u;
            float4 _4451 = asfloat(uint4(_54.Load(_4438 * 4 + 0), _54.Load((_4438 + 1u) * 4 + 0), _54.Load((_4438 + 2u) * 4 + 0), _54.Load((_4438 + 3u) * 4 + 0)));
            float2 _4452 = _4436.xy;
            float2 _4454 = _4451.xy;
            float3 _4458 = _4436.xyz;
            bool3 _4459 = bool3(_4458.x <= 0.0f.xxx.x, _4458.y <= 0.0f.xxx.y, _4458.z <= 0.0f.xxx.z);
            bool3 _4460 = bool3(_4458.x >= 1.0f.xxx.x, _4458.y >= 1.0f.xxx.y, _4458.z >= 1.0f.xxx.z);
            float _4463 = _4436.z;
            float2 _4474 = ((_4452 * (_4451.zw - _4454)) + _4454).xy * _50_m10.zw;
            float2 _4476 = floor(_4474 + 0.5f.xx);
            float2 _4477 = _4474 - _4476;
            float _4478 = _4477.x;
            float _4479 = _4478 + 0.5f;
            float _4480 = _4479 * _4479;
            float _4483 = 1.0f - _4478;
            float _4484 = min(_4478, 0.0f);
            float _4487 = _4478 + 1.0f;
            float _4488 = max(_4478, 0.0f);
            float _4499 = _4477.y;
            float _4500 = _4499 + 0.5f;
            float _4501 = _4500 * _4500;
            float _4504 = 1.0f - _4499;
            float _4505 = min(_4499, 0.0f);
            float _4508 = _4499 + 1.0f;
            float _4509 = max(_4499, 0.0f);
            float3 _4521 = float3(0.1599999964237213134765625f * _4483, 0.1599999964237213134765625f * ((_4487 - (_4488 * _4488)) + 1.0f), _4480 * 0.07999999821186065673828125f);
            float3 _4522 = float3(0.1599999964237213134765625f * ((_4480 * 0.5f) - _4478), 0.1599999964237213134765625f * ((_4483 - (_4484 * _4484)) + 1.0f), 0.1599999964237213134765625f * _4487) + _4521;
            float3 _4524 = float3(0.1599999964237213134765625f * _4504, 0.1599999964237213134765625f * ((_4508 - (_4509 * _4509)) + 1.0f), _4501 * 0.07999999821186065673828125f);
            float3 _4525 = float3(0.1599999964237213134765625f * ((_4501 * 0.5f) - _4499), 0.1599999964237213134765625f * ((_4504 - (_4505 * _4505)) + 1.0f), 0.1599999964237213134765625f * _4508) + _4524;
            float3 _4531 = ((_4521 / _4522) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.xxx;
            float3 _4533 = ((_4524 / _4525) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.yyy;
            float2 _4535 = _4476 * _50_m10.xy;
            float _4536 = _4531.x;
            float _4537 = _4533.x;
            float2 _4539 = _4535 + float2(_4536, _4537);
            float _4540 = _4531.y;
            float2 _4542 = _4535 + float2(_4540, _4537);
            float _4543 = _4531.z;
            float2 _4545 = _4535 + float2(_4543, _4537);
            float _4546 = _4533.y;
            float2 _4548 = _4535 + float2(_4536, _4546);
            float2 _4550 = _4535 + float2(_4540, _4546);
            float2 _4552 = _4535 + float2(_4543, _4546);
            float _4553 = _4533.z;
            float2 _4555 = _4535 + float2(_4536, _4553);
            float2 _4557 = _4535 + float2(_4540, _4553);
            float2 _4559 = _4535 + float2(_4543, _4553);
            float _4560 = _4522.x;
            float _4561 = _4525.x;
            float _4563 = _4522.y;
            float _4565 = _4522.z;
            float _4567 = _4525.y;
            float _4571 = _4525.z;
            float _4637 = ((((((((_4560 * _4561) * _52.SampleCmpLevelZero(_26, float3(_4539, _382).xy, _4463)) + ((_4563 * _4561) * _52.SampleCmpLevelZero(_26, float3(_4542, _382).xy, _4463))) + ((_4565 * _4561) * _52.SampleCmpLevelZero(_26, float3(_4545, _382).xy, _4463))) + ((_4560 * _4567) * _52.SampleCmpLevelZero(_26, float3(_4548, _382).xy, _4463))) + ((_4563 * _4567) * _52.SampleCmpLevelZero(_26, float3(_4550, _382).xy, _4463))) + ((_4565 * _4567) * _52.SampleCmpLevelZero(_26, float3(_4552, _382).xy, _4463))) + ((_4560 * _4571) * _52.SampleCmpLevelZero(_26, float3(_4555, _382).xy, _4463))) + ((_4563 * _4571) * _52.SampleCmpLevelZero(_26, float3(_4557, _382).xy, _4463));
            float4 _4652 = asfloat(uint4(_54.Load(_4346 * 4 + 0), _54.Load(_4349 * 4 + 0), _54.Load(_4352 * 4 + 0), _54.Load(_4355 * 4 + 0)));
            float _4653 = _4652.w;
            float2 _4655 = min(_4452, 1.0f.xx - _4452);
            _4668 = (_4337 >= 0) ? lerp(1.0f, (any(bool3(_4459.x || _4460.x, _4459.y || _4460.y, _4459.z || _4460.z)) || ((asuint(_4463) & 2147483647u) > 2139095040u)) ? 1.0f : (_4637 + ((_4565 * _4571) * _52.SampleCmpLevelZero(_26, float3(_4559, _382).xy, _4463))), _4128 ? min(_4653, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4652.z - _4433) * 0.25f, min(_4655.x, _4655.y)))) : _4653) : 1.0f;
          } else {
            _4668 = 1.0f;
          }
          float3 _4691;
          float3 _4692;
          if (_4131) {
            float3 _4671 = _4085 * _4085;
            float _4680 = dot(_1115, _4120);
            _4691 = _4671 / clamp(_4671 + (0.5f * clamp(_46_m6[_2175].z * _4109, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4692 = normalize(_4122 + (_4120 * clamp(dot(_4122, (_1115 * _4680) - _4120) / ((_46_m6[_2175].z * _46_m6[_2175].z) - (_4680 * _4680)), 0.0f, 1.0f)));
          } else {
            _4691 = 1.0f.xxx;
            _4692 = _4110;
          }
          float3 _4693 = _4692 + _460;
          float3 _4697 = _4693 * rsqrt(max(6.103515625e-05f, dot(_4693, _4693)));
          float3 _4802;
          if (_4284) {
            float _4700 = clamp(_4150, 0.0f, 1.0f);
            float _4702 = clamp(dot(_574, _4697), 0.0f, 1.0f);
            float _4704 = clamp(dot(_460, _4697), 0.0f, 1.0f);
            float _4705 = clamp(_632, 0.0f, 1.0f);
            float _4706 = _546 * _546;
            float _4716;
            if (_4114 > 0.0f) {
              _4716 = clamp(_4706 + ((_4114 * _4114) / ((_4704 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4716 = _4706;
            }
            float _4717 = _4716 * _4716;
            float _4738 = (((_4702 * _4717) - _4702) * _4702) + 1.0f;
            float _4743 = 1.0f - _4704;
            float _4744 = _4743 * _4743;
            float _4746 = (_4743 * _4744) * _4744;
            float _4770 = 1.0f - _546;
            float _4777 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4770 * (1.04997003078460693359375f + (_4770 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4770))))));
            float _4778 = 1.0f - _4777;
            float3 _4781 = _631 + ((1.0f.xxx - _631) * 0.0476190485060214996337890625f);
            float3 _4801 = ((clamp((min(((_631 * (1.0f - _4746)) + _4746.xxx) * (((_4717 / (_4738 * _4738)) * _4691.y) * (0.5f / (((_4700 * sqrt(((((-_4705) * _4717) + _4705) * _4705) + _4717)) + (_4705 * sqrt(((((-_4700) * _4717) + _4700) * _4700) + _4717))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4781 * (((_60.SampleLevel(_23, (float2(_4705, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x * _60.SampleLevel(_23, (float2(_4700, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4777) / _4778)) * _4781) / (1.0f.xxx - (_4781 * _4778)))) * _46_m6[_2190].z, 0.0f.xxx, 1000.0f.xxx) * _4150) + ((_627 * _4691.z) * _4150)) * (((_46_m6[_2169].xyz * _4283) * _4668) * _2269);
            _4802 = _4801;
          } else {
            _4802 = 0.0f.xxx;
          }
          _4803 = _2129;
          _4804 = _4802;
        } else {
          float _4083;
          do {
            if (_2276) {
              _4083 = 1.0f;
              break;
            }
            float _3522 = (0.5f + (0.5f * _46_m6[_2175].y)) - abs(_46_m6[_2175].x);
            float _3523 = _46_m6[_2175].y - _3522;
            float _3530 = abs(max((1.0f - abs(_3522)) - abs(_3523), 0.00048828125f));
            float3 _3534 = normalize(float3(_3522, _3523, (_46_m6[_2175].x >= 0.0f) ? _3530 : (-_3530)));
            float3 _3535 = _46_m6[_2172].xyz - _423;
            float _3536 = dot(_3535, _3535);
            float3 _3538 = _3535 * rsqrt(_3536);
            int _3541 = int(_46_m6[_2190].w);
            float3 _3543 = (_3534 * _46_m6[_2175].z) * 0.5f;
            float3 _3544 = _3535 - _3543;
            float3 _3545 = _3535 + _3543;
            bool _3547 = (_2273 & 1u) == 0u;
            bool _3550 = _3547 || ((_2194 & 2u) != 0u);
            bool _3553 = (!_3547) && (_46_m6[_2175].z > 0.0f);
            float _3565;
            if (_3553) {
              _3565 = 1.0f / ((((length(_3544) * length(_3545)) + dot(_3544, _3545)) * 0.5f) + 1.0f);
            } else {
              _3565 = 1.0f;
            }
            float _3587;
            if (_46_m6[_2187].w < 0.0f) {
              float _3581 = _3536 * (_46_m6[_2172].w * _46_m6[_2172].w);
              float _3584 = clamp(1.0f - (_3581 * _3581), 0.0f, 1.0f);
              _3587 = lerp(1.0f / (_3536 + 1.0f), _3565, float(_3553)) * (_3584 * _3584);
            } else {
              float3 _3570 = _3535 * _46_m6[_2172].w;
              _3587 = _3565 * pow(1.0f - clamp(dot(_3570, _3570), 0.0f, 1.0f), _46_m6[_2187].w);
            }
            float _3593 = clamp((dot(_3538, -_3534) - _46_m6[_2175].z) * _46_m6[_2175].w, 0.0f, 1.0f);
            float _3597 = _3587 * lerp(1.0f, _3593 * _3593, float(_3547));
            float _3697;
            if ((!_3553) && (_3541 >= 0)) {
              uint _3603 = uint(_3541);
              float2 _3690;
              [branch] if (_3547) {
                float4 _3680 = mul(_70_m1[_3603], _427);
                _3690 = _70_m0[_3603].xy + (clamp(_3680.xy / _3680.w.xx, 0.0f.xx, 1.0f.xx) * _70_m0[_3603].zw);
              }
              else {
                float3 _3617 = mul(float4(-_3535, 0.0f), _70_m1[_3603]).xyz;
                float3 _391 = _3617;
                float3 _390 = _3617;
                float3 _389 = abs(_3617);
                uint _3626 = uint(int(_389.y > _389.x));
                uint _3632 = (_389.z > _389[_3626]) ? 2u : _3626;
                uint _3638 = (_3632 * 2u) + uint(_390[_3632] < 0.0f);
                float _3642 = abs(_391[_3638 / 2u]);
                float _3662 = 0.5f - (0.000244140625f / _70_m0[_3603].w);
                _3690 = _70_m0[_3603].xy + (clamp(float2((float(_3638) + ((((_391[uint(_361[_3638].x)] * _362[_3638].x) / _3642) * _3662) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_391[uint(_361[_3638].y)] * _362[_3638].y) / _3642) * _3662)), 0.0f.xx, 1.0f.xx) * _70_m0[_3603].zw);
              }
              _3697 = _3597 * _68.SampleLevel(_23, _3690, 0.0f).x;
            } else {
              _3697 = _3597;
            }
            float _4082;
            if (_3697 > 0.0f) {
              int _3751;
              if (_3550) {
                _3751 = int(_46_m6[_2178].x);
              } else {
                uint _3706 = asuint(_46_m6[_2175].w);
                uint _3707 = asuint(_46_m6[_2178].x);
                float3 _3708 = _423 - _46_m6[_2172].xyz;
                float3 _3709 = abs(_3708);
                float _3710 = _3709.x;
                float _3711 = _3709.y;
                float _3713 = _3709.z;
                int _3746;
                if ((_3710 > _3711) && (_3710 > _3713)) {
                  _3746 = int((_3708.x > 0.0f) ? (_3706 & 1023u) : ((_3706 >> 10u) & 1023u));
                } else {
                  int _3738;
                  if (_3711 > _3713) {
                    _3738 = int((_3708.y > 0.0f) ? ((_3706 >> 20u) & 1023u) : (_3707 & 1023u));
                  } else {
                    _3738 = int((_3708.z > 0.0f) ? ((_3707 >> 10u) & 1023u) : ((_3707 >> 20u) & 1023u));
                  }
                  _3746 = _3738;
                }
                _3751 = (_3746 == 1023) ? (-1) : _3746;
              }
              uint _3758 = asuint(_50_m11.x) + (uint(_3751) * 96u);
              uint _3760 = (_3758 + 64u) >> 2u;
              uint _3763 = _3760 + 1u;
              uint _3766 = _3760 + 2u;
              uint _3769 = _3760 + 3u;
              float4 _3773 = asfloat(uint4(_54.Load(_3760 * 4 + 0), _54.Load(_3763 * 4 + 0), _54.Load(_3766 * 4 + 0), _54.Load(_3769 * 4 + 0)));
              float3 _3780 = (_423 - ((-_3538) * _3773.x)) + (_574 * (_3773.y * 5.0f));
              uint _3781 = _3758 >> 2u;
              uint _3796 = (_3758 + 16u) >> 2u;
              uint _3811 = (_3758 + 32u) >> 2u;
              uint _3826 = (_3758 + 48u) >> 2u;
              float4 _3846 = mul(transpose(float4x4(asfloat(uint4(_54.Load(_3781 * 4 + 0), _54.Load((_3781 + 1u) * 4 + 0), _54.Load((_3781 + 2u) * 4 + 0), _54.Load((_3781 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3796 * 4 + 0), _54.Load((_3796 + 1u) * 4 + 0), _54.Load((_3796 + 2u) * 4 + 0), _54.Load((_3796 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3811 * 4 + 0), _54.Load((_3811 + 1u) * 4 + 0), _54.Load((_3811 + 2u) * 4 + 0), _54.Load((_3811 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3826 * 4 + 0), _54.Load((_3826 + 1u) * 4 + 0), _54.Load((_3826 + 2u) * 4 + 0), _54.Load((_3826 + 3u) * 4 + 0))))), float4(_3780, 1.0f));
              float _3847 = _3846.w;
              float3 _3850 = _3846.xyz / _3847.xxx;
              uint _3852 = (_3758 + 80u) >> 2u;
              float4 _3865 = asfloat(uint4(_54.Load(_3852 * 4 + 0), _54.Load((_3852 + 1u) * 4 + 0), _54.Load((_3852 + 2u) * 4 + 0), _54.Load((_3852 + 3u) * 4 + 0)));
              float2 _3866 = _3850.xy;
              float2 _3868 = _3865.xy;
              float3 _3872 = _3850.xyz;
              bool3 _3873 = bool3(_3872.x <= 0.0f.xxx.x, _3872.y <= 0.0f.xxx.y, _3872.z <= 0.0f.xxx.z);
              bool3 _3874 = bool3(_3872.x >= 1.0f.xxx.x, _3872.y >= 1.0f.xxx.y, _3872.z >= 1.0f.xxx.z);
              float _3877 = _3850.z;
              float2 _3888 = ((_3866 * (_3865.zw - _3868)) + _3868).xy * _50_m10.zw;
              float2 _3890 = floor(_3888 + 0.5f.xx);
              float2 _3891 = _3888 - _3890;
              float _3892 = _3891.x;
              float _3893 = _3892 + 0.5f;
              float _3894 = _3893 * _3893;
              float _3897 = 1.0f - _3892;
              float _3898 = min(_3892, 0.0f);
              float _3901 = _3892 + 1.0f;
              float _3902 = max(_3892, 0.0f);
              float _3913 = _3891.y;
              float _3914 = _3913 + 0.5f;
              float _3915 = _3914 * _3914;
              float _3918 = 1.0f - _3913;
              float _3919 = min(_3913, 0.0f);
              float _3922 = _3913 + 1.0f;
              float _3923 = max(_3913, 0.0f);
              float3 _3935 = float3(0.1599999964237213134765625f * _3897, 0.1599999964237213134765625f * ((_3901 - (_3902 * _3902)) + 1.0f), _3894 * 0.07999999821186065673828125f);
              float3 _3936 = float3(0.1599999964237213134765625f * ((_3894 * 0.5f) - _3892), 0.1599999964237213134765625f * ((_3897 - (_3898 * _3898)) + 1.0f), 0.1599999964237213134765625f * _3901) + _3935;
              float3 _3938 = float3(0.1599999964237213134765625f * _3918, 0.1599999964237213134765625f * ((_3922 - (_3923 * _3923)) + 1.0f), _3915 * 0.07999999821186065673828125f);
              float3 _3939 = float3(0.1599999964237213134765625f * ((_3915 * 0.5f) - _3913), 0.1599999964237213134765625f * ((_3918 - (_3919 * _3919)) + 1.0f), 0.1599999964237213134765625f * _3922) + _3938;
              float3 _3945 = ((_3935 / _3936) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.xxx;
              float3 _3947 = ((_3938 / _3939) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.yyy;
              float2 _3949 = _3890 * _50_m10.xy;
              float _3950 = _3945.x;
              float _3951 = _3947.x;
              float2 _3953 = _3949 + float2(_3950, _3951);
              float _3954 = _3945.y;
              float2 _3956 = _3949 + float2(_3954, _3951);
              float _3957 = _3945.z;
              float2 _3959 = _3949 + float2(_3957, _3951);
              float _3960 = _3947.y;
              float2 _3962 = _3949 + float2(_3950, _3960);
              float2 _3964 = _3949 + float2(_3954, _3960);
              float2 _3966 = _3949 + float2(_3957, _3960);
              float _3967 = _3947.z;
              float2 _3969 = _3949 + float2(_3950, _3967);
              float2 _3971 = _3949 + float2(_3954, _3967);
              float2 _3973 = _3949 + float2(_3957, _3967);
              float _3974 = _3936.x;
              float _3975 = _3939.x;
              float _3977 = _3936.y;
              float _3979 = _3936.z;
              float _3981 = _3939.y;
              float _3985 = _3939.z;
              float _4051 = ((((((((_3974 * _3975) * _52.SampleCmpLevelZero(_26, float3(_3953, _382).xy, _3877)) + ((_3977 * _3975) * _52.SampleCmpLevelZero(_26, float3(_3956, _382).xy, _3877))) + ((_3979 * _3975) * _52.SampleCmpLevelZero(_26, float3(_3959, _382).xy, _3877))) + ((_3974 * _3981) * _52.SampleCmpLevelZero(_26, float3(_3962, _382).xy, _3877))) + ((_3977 * _3981) * _52.SampleCmpLevelZero(_26, float3(_3964, _382).xy, _3877))) + ((_3979 * _3981) * _52.SampleCmpLevelZero(_26, float3(_3966, _382).xy, _3877))) + ((_3974 * _3985) * _52.SampleCmpLevelZero(_26, float3(_3969, _382).xy, _3877))) + ((_3977 * _3985) * _52.SampleCmpLevelZero(_26, float3(_3971, _382).xy, _3877));
              float4 _4066 = asfloat(uint4(_54.Load(_3760 * 4 + 0), _54.Load(_3763 * 4 + 0), _54.Load(_3766 * 4 + 0), _54.Load(_3769 * 4 + 0)));
              float _4067 = _4066.w;
              float2 _4069 = min(_3866, 1.0f.xx - _3866);
              _4082 = (_3751 >= 0) ? lerp(1.0f, (any(bool3(_3873.x || _3874.x, _3873.y || _3874.y, _3873.z || _3874.z)) || ((asuint(_3877) & 2147483647u) > 2139095040u)) ? 1.0f : (_4051 + ((_3979 * _3985) * _52.SampleCmpLevelZero(_26, float3(_3973, _382).xy, _3877))), _3550 ? min(_4067, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4066.z - _3847) * 0.25f, min(_4069.x, _4069.y)))) : _4067) : 1.0f;
            } else {
              _4082 = 1.0f;
            }
            _4083 = _4082;
            break;
          } while (false);
          _4803 = _2129 * _4083;
          _4804 = 0.0f.xxx;
        }
        _4805 = _4803;
        _4806 = _4804;
        break;
      } while (false);
      _2154 = _4805;
      _2157 = _2156 + _4806;
    }
    _2126 = _2125 + _2156;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x20B6F7FB:
  float3 _4812 = ((((float3(_1094, _1099, _1104) * _627) * lerp(1.0f, _516.z, _41_m4)) * _18_m22.x) + ((_1415 * ((_631 * _646.x) + (clamp(50.0f * _631.y, 0.0f, 1.0f) * _646.y).xxx)) * 1.0f)) + (_2100.xyz + (_2125 * _2128)).xyz;
  */
  float3 _4812 = ((((float3(_1094, _1099, _1104) * (_627 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _516.z, _41_m4)) * _18_m22.x) + ((_1415 * ((_631 * _646.x) + (clamp(50.0f * _631.y, 0.0f, 1.0f) * _646.y).xxx)) * 1.0f)) + (_2100.xyz + ((_2125 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2128)).xyz;
  // RenoDX code end
  float4 _4813 = float4(_4812.x, _4812.y, _4812.z, _383.w);
  _4813.w = _541;
  float _4830 = _423.y * _18_m46.w;
  float _4835 = max(0.00999999977648258209228515625f, _4830 + _18_m47.w);
  float3 _4849 = exp(_18_m45.xyz * ((-max(0.0f, (_461 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4835)) / _4835) * exp(_4830 + _18_m48.w))));
  float _4852 = dot(_1114, _18_m44.xyz);
  float _4858 = _18_m45.w * _18_m45.w;
  float _4862 = (1.0f + _4858) - ((2.0f * _18_m45.w) * _4852);
  float3 _5194;
  float _5195;
  if (_18_m55.z > 0.0f) {
    uint3 _5020 = (uint3(int3(int(_686.x), int(_686.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5021 = _5020.y;
    uint _5022 = _5020.z;
    uint _5025 = _5020.x + (_5021 * _5022);
    uint _5027 = _5021 + (_5022 * _5025);
    uint _5029 = _5022 + (_5025 * _5027);
    uint _5031 = _5025 + (_5027 * _5029);
    float _5055 = dot(_1114, -_16_m0[2].xyz);
    float3 _5065 = _423 - _16_m11.xyz;
    float _5067 = (_18_m55.w * ((_5055 > 5.9604644775390625e-08f) ? (1.0f / _5055) : 0.0f)) * (1.0f / _461);
    float _5068 = _5065.y;
    float _5069 = _5067 * _5068;
    float _5071 = _16_m11.y + _5069;
    float _5072 = _5068 - _5069;
    float _5074 = (1.0f - _5067) * _461;
    float _5088 = max(-127.0f, _18_m49.z * _5072);
    float _5112 = max(-127.0f, _18_m52.x * _5072);
    float _5123 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5071 - _18_m49.x)))) * ((abs(_5088) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5088)) / _5088) : (0.693147182464599609375f - (0.2402265071868896484375f * _5088)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5071 - _18_m52.z)))) * ((abs(_5112) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5112)) / _5112) : (0.693147182464599609375f - (0.2402265071868896484375f * _5112))));
    float _5145 = clamp((_461 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5148 = clamp((max(clamp(exp2(-(_5123 * _5074)), 0.0f, 1.0f), _18_m51.w) + clamp((_461 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5145, 0.0f, 1.0f);
    float4 _5188 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_23, float3((_1124 + ((((float3(uint3(_5031, _5027 + (_5029 * _5031), _384) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_687 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_687 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5194 = _5188.xyz + (((_18_m51.xyz * (1.0f - _5148)) + (((_18_m54.xyz * pow(clamp(dot(_460, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5123 * max(_5074 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5145))) * _5188.w);
    _5195 = _5188.w * _5148;
  } else {
    float3 _4892 = _423 - _16_m11.xyz;
    float _4894 = _4892.y;
    float _4908 = max(-127.0f, _18_m49.z * _4894);
    float _4932 = max(-127.0f, _18_m52.x * _4894);
    float _4943 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_4908) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4908)) / _4908) : (0.693147182464599609375f - (0.2402265071868896484375f * _4908)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_4932) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4932)) / _4932) : (0.693147182464599609375f - (0.2402265071868896484375f * _4932))));
    float _4965 = clamp((_461 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _4968 = clamp((max(clamp(exp2(-(_4943 * _461)), 0.0f, 1.0f), _18_m51.w) + clamp((_461 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _4965, 0.0f, 1.0f);
    _5194 = (_18_m51.xyz * (1.0f - _4968)) + (((_18_m54.xyz * pow(clamp(dot(_460, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_4943 * max(_461 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4965));
    _5195 = _4968;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x20B6F7FB:
  float3 _5201 = ((_4813.xyz * (_4849 * _5195)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4852 * _4852)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4858) / max((12.56637096405029296875f * _4862) * sqrt(_4862), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4849)) * _5195) + _5194)).xyz;
  */
  float3 _5201 = ((_4813.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4849 * _5195)) : (_4849 * _5195))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4852 * _4852)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4858) / max((12.56637096405029296875f * _4862) * sqrt(_4862), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4849)) * _5195 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5194 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5211 = lerp(dot(_5201, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5201, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5221 = min(lerp(((sqrt(sqrt(abs(_599 * 0.5f))) * float2(int2(sign(_599)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _586.xx), 1.0f.xx);
  float4 _5222 = float4(_5221.x, _5221.y, _383.z, _383.w);
  _5222.z = float(clamp(max(dot(_5211.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _541, _541) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5222.w = lerp(0.0f, 0.699999988079071044921875f, _586);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x20B6F7FB:
  _13 = float4(_5211.x, _5211.y, _5211.z, _4813.w);
  */
  float3 renodx_output_color = float3(_5211.x, _5211.y, _5211.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4813.w);
  // RenoDX code end
  _14 = _5222;
  // RenoDX code start: preserve the existing glass controls.
  if (GLASS_TRANSPARENCY > 0.5f) _14.w = 0.0f;
  // RenoDX code end
}
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  gl_FragCoord = stage_input.gl_FragCoord;
  gl_FragCoord.w = 1.0 / gl_FragCoord.w;
  gl_FrontFacing = stage_input.gl_FrontFacing;
  _4 = stage_input._4;
  _5 = stage_input._5;
  _6 = stage_input._6;
  _7 = stage_input._7;
  _8 = stage_input._8;
  _9 = stage_input._9;
  _10 = stage_input._10;
  _11 = stage_input._11;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._13 = _13;
  stage_output._14 = _14;
  return stage_output;
}

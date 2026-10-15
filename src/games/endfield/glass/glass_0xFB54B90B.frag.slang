#include "../shared.h"

// Ported from the native 0xFB54B90B Vulkan dump.
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

struct _41 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _380;
static float4 _381;
static uint _382;

static const float4 _358[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _359[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _360[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(53, 0)]] ByteAddressBuffer _31 : register(t53, space0);
[[vk::binding(6, 1)]] cbuffer _38_39 : register(b6, space1) {
  float _39_m0 : packoffset(c0);
  float _39_m1 : packoffset(c0.y);
  float _39_m2 : packoffset(c0.z);
  float _39_m3 : packoffset(c0.w);
  float _39_m4 : packoffset(c1);
  float _39_m5 : packoffset(c1.y);
  float _39_m6 : packoffset(c1.z);
  float _39_m7 : packoffset(c1.w);
  float _39_m8 : packoffset(c2);
  float _39_m9 : packoffset(c2.y);
  float _39_m10 : packoffset(c2.z);
  float _39_m11 : packoffset(c2.w);
  float _39_m12 : packoffset(c3);
  float _39_m13 : packoffset(c3.y);
  float _39_m14 : packoffset(c3.z);
  float _39_m15 : packoffset(c3.w);
  float _39_m16 : packoffset(c4);
  float _39_m17 : packoffset(c4.y);
  float _39_m18 : packoffset(c4.z);
  float _39_m19 : packoffset(c4.w);
  float _39_m20 : packoffset(c5);
  float _39_m21 : packoffset(c5.y);
  float _39_m22 : packoffset(c5.z);
  float _39_m23 : packoffset(c5.w);
  float _39_m24 : packoffset(c6);
  float _39_m25 : packoffset(c6.y);
  float _39_m26 : packoffset(c6.z);
  float _39_m27 : packoffset(c6.w);
  float _39_m28 : packoffset(c7);
  float _39_m29 : packoffset(c7.y);
  float _39_m30 : packoffset(c7.z);
  float _39_m31 : packoffset(c7.w);
  float4 _39_m32 : packoffset(c8);
  float4 _39_m33 : packoffset(c9);
  float4 _39_m34 : packoffset(c10);
  float4 _39_m35 : packoffset(c11);
  float4 _39_m36 : packoffset(c12);
  float4 _39_m37 : packoffset(c13);
  float4 _39_m38 : packoffset(c14);
  float4 _39_m39 : packoffset(c15);
  float4 _39_m40 : packoffset(c16);
  float4 _39_m41 : packoffset(c17);
  float4 _39_m42 : packoffset(c18);
  float4 _39_m43 : packoffset(c19);
  float4 _39_m44 : packoffset(c20);
  float4 _39_m45 : packoffset(c21);
  float _39_m46 : packoffset(c22);
  float _39_m47 : packoffset(c22.y);
  float _39_m48 : packoffset(c22.z);
  float _39_m49 : packoffset(c22.w);
};

[[vk::binding(16, 0)]] cbuffer _40_42 : register(b16, space0) {
  float4 _42_m0 : packoffset(c0);
  float4 _42_m1 : packoffset(c1);
  float4 _42_m2 : packoffset(c2);
  float4 _42_m3 : packoffset(c3);
  _41 _42_m4[32] : packoffset(c4);
};

[[vk::binding(13, 0)]] cbuffer _43_44 : register(b13, space0) {
  float4 _44_m0 : packoffset(c0);
  float4 _44_m1 : packoffset(c1);
  float4 _44_m2 : packoffset(c2);
  float4 _44_m3 : packoffset(c3);
  float4 _44_m4 : packoffset(c4);
  uint4 _44_m5 : packoffset(c5);
  float4 _44_m6[2048] : packoffset(c6);
};

[[vk::binding(49, 0)]] cbuffer _45_46 : register(b49, space0) {
  int _46_m0 : packoffset(c0);
  int _46_m1 : packoffset(c0.y);
  int _46_m2 : packoffset(c0.z);
  int _46_m3 : packoffset(c0.w);
  int _46_m4 : packoffset(c1);
  int _46_m5 : packoffset(c1.y);
  int _46_m6 : packoffset(c1.z);
  int _46_m7 : packoffset(c1.w);
  float _46_m8 : packoffset(c2);
  float _46_m9 : packoffset(c2.y);
  float _46_m10 : packoffset(c2.z);
  float _46_m11 : packoffset(c2.w);
  float _46_m12 : packoffset(c3);
  float _46_m13 : packoffset(c3.y);
  float _46_m14 : packoffset(c3.z);
  float _46_m15 : packoffset(c3.w);
};

[[vk::binding(14, 0)]] cbuffer _47_48 : register(b14, space0) {
  column_major float4x4 _48_m0[5] : packoffset(c0);
  float4 _48_m1[4] : packoffset(c20);
  float4 _48_m2[4] : packoffset(c24);
  float4 _48_m3[4] : packoffset(c28);
  float4 _48_m4 : packoffset(c32);
  float4 _48_m5 : packoffset(c33);
  float4 _48_m6 : packoffset(c34);
  float4 _48_m7 : packoffset(c35);
  float4 _48_m8 : packoffset(c36);
  float4 _48_m9[27] : packoffset(c37);
  float4 _48_m10 : packoffset(c64);
  float4 _48_m11 : packoffset(c65);
  float4 _48_m12[62] : packoffset(c66);
  column_major float4x4 _48_m13[15] : packoffset(c128);
  float4 _48_m14[15] : packoffset(c188);
  float4 _48_m15[15] : packoffset(c203);
  float4 _48_m16[15] : packoffset(c218);
  float4 _48_m17 : packoffset(c233);
  float4 _48_m18 : packoffset(c234);
  float4 _48_m19[21] : packoffset(c235);
  column_major float4x4 _48_m20 : packoffset(c256);
  column_major float4x4 _48_m21 : packoffset(c260);
  float4 _48_m22 : packoffset(c264);
  float4 _48_m23 : packoffset(c265);
  float4 _48_m24 : packoffset(c266);
  float4 _48_m25[128] : packoffset(c267);
};

[[vk::binding(52, 0)]] ByteAddressBuffer _52 : register(t52, space0);
[[vk::binding(51, 0)]] cbuffer _67_68 : register(b51, space0) {
  float4 _68_m0[32] : packoffset(c0);
  column_major float4x4 _68_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(1, 0)]] SamplerState _25 : register(s1, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _26 : register(s6, space0);
[[vk::binding(25, 0)]] Texture2DArray<float4> _29 : register(t25, space0);
[[vk::binding(5, 1)]] Texture2D<float4> _32 : register(t5, space1);
[[vk::binding(2, 1)]] SamplerState _33 : register(s2, space1);
[[vk::binding(3, 1)]] Texture2D<float4> _34 : register(t3, space1);
[[vk::binding(0, 1)]] SamplerState _35 : register(s0, space1);
[[vk::binding(4, 1)]] Texture2D<float4> _36 : register(t4, space1);
[[vk::binding(1, 1)]] SamplerState _37 : register(s1, space1);
[[vk::binding(8, 0)]] Texture2D<float4> _49 : register(t8, space0);
[[vk::binding(26, 0)]] Texture2D<float4> _50 : register(t26, space0);
[[vk::binding(7, 0)]] Texture2D<float4> _53 : register(t7, space0);
[[vk::binding(10, 0)]] Texture2D<float4> _54 : register(t10, space0);
[[vk::binding(9, 0)]] Texture2D<float4> _55 : register(t9, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _58 : register(t27, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _59 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _60 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _61 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _62 : register(t32, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _63 : register(t34, space0);
[[vk::binding(31, 0)]] Texture3D<float4> _64 : register(t31, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _65 : register(t37, space0);
[[vk::binding(28, 0)]] Texture2D<float4> _66 : register(t28, space0);
[[vk::binding(30, 0)]] Texture2D<float4> _71 : register(t30, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _72 : register(t29, space0);

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
  float2 _411 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _414 = float4(_411, gl_FragCoord.z, 1.0f);
  _414.y = -_411.y;
  float4 _417 = mul(_16_m6, _414);
  float3 _421 = _417.xyz / _417.w.xxx;
  float4 _425 = float4(_421, 1.0f);
  float _432 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _454;
  do {
    if (_18_m4.w == 0.0f) {
      _454 = _16_m11.xyz - _421;
      break;
    } else {
      _454 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _455 = dot(_454, _454);
  float _457 = rsqrt(max(_455, 9.9999999392252902907785028219223e-09f));
  float3 _458 = _454 * _457;
  float _459 = _455 * _457;
  float2 _480 = (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw;
  float4 _494 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
  float4 _498 = _34.SampleBias(_35, _480, _39_m13 + _18_m16);
  _498.w = _498.w * _498.x;
  float2 _506 = ((_498.wy * 2.0f) - 1.0f.xx).xy;
  float2 _512 = _506 * _39_m0;
  float4 _514 = _36.SampleBias(_37, _480, _18_m16);
  float3 _529 = lerp(clamp((_494.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx);
  float _533 = _494.w * _39_m32.w;
  float _539 = lerp(_533, _533 * _8.x, _39_m46);
  float _544 = lerp(_39_m2, _39_m3, _514.y);
  float _554 = lerp(_514.x, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
  float3 _568 = ((_7.xyz * _512.x) + ((cross(_6, float4(_7.xyz, _432).xyz) * _432) * _512.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_506, _506), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _572 = _568 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_568, _568)));
  float _584 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _597 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _597.y = -_597.y;
  float _623 = 0.07999999821186065673828125f * _39_m1;
  float3 _624 = _529 * _554;
  float3 _625 = _529 - _624;
  float3 _629 = (_623 - (_623 * _554)).xxx + _624;
  float _630 = dot(_572, _458);
  float4 _633 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _544) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _634 = _633.x;
  float2 _644 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_634 * _634, exp2((-9.27999973297119140625f) * max(0.0f, _630))) * _634) + _633.y)) + _633.zw;
  uint2 _684;
  float _685;
  if (_18_m24.y == 1.0f) {
    float4 _661 = mul(_18_m138, _425);
    float4 _664 = _661;
    _664.y = -_661.y;
    float4 _667 = _664 * (1.0f / _661.w);
    _684 = uint2(clamp(((_667.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _685 = 1.0f / ((_18_m2.z * _667.z) + _18_m2.w);
  } else {
    _684 = uint2(gl_FragCoord.xy);
    _685 = abs(mul(_16_m0, _425).z);
  }
  float3 _687 = _421 + (_572 * 0.25f);
  float3 _697 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _706 = _687 - (_18_m108.xyz + (_697 * (-_18_m110.w)));
  float _721 = max(min(max((max(abs(_706.x), abs(_706.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_706.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1023;
  float4 _1024;
  float4 _1025;
  float _1026;
  float _1027;
  if ((_18_m108.w != 0.0f) && (_721 < 1.0f)) {
    float3 _734 = _687 - (_18_m108.xyz + (_697 * (-_18_m110.y)));
    float _748 = max(clamp((max(abs(_734.x), abs(_734.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_734.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _824;
    float4 _825;
    float4 _826;
    float4 _827;
    if (_748 < 1.0f) {
      float3 _757 = ((_687 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _759 = _757 - floor(_757);
      float4 _763 = _59.SampleLevel(_24, _759, 0.0f);
      float _764 = 1.0f - _748;
      float _768 = _18_m109.y * 0.5f;
      float _773 = _759.x;
      float _774 = clamp(_759.y, _768, 1.0f - _768) * 0.3333333432674407958984375f;
      float _775 = _759.z;
      float4 _778 = _60.SampleLevel(_23, float3(_773, _774, _775), 0.0f);
      _824 = _721 + (_778.w * _764);
      _825 = float4(((_60.SampleLevel(_23, float3(_773, _774 + 0.666666686534881591796875f, _775), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _763.z, _763.z) * _764;
      _826 = float4(((_60.SampleLevel(_23, float3(_773, _774 + 0.3333333432674407958984375f, _775), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _763.y, _763.y) * _764;
      _827 = float4(((_778.xyz * 4.0f) - 2.0f.xxx) * _763.x, _763.x) * _764;
    } else {
      _824 = _721;
      _825 = 0.0f.xxxx;
      _826 = 0.0f.xxxx;
      _827 = 0.0f.xxxx;
    }
    float3 _833 = _687 - (_18_m108.xyz + (_697 * (-_18_m110.z)));
    float _847 = max(clamp((max(abs(_833.x), abs(_833.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_833.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _927;
    float4 _928;
    float4 _929;
    float4 _930;
    if (_847 < 1.0f) {
      float3 _856 = ((_687 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _858 = _856 - floor(_856);
      float4 _862 = _61.SampleLevel(_24, _858, 0.0f);
      float _864 = _748 * (1.0f - _847);
      float _868 = _18_m109.y * 0.5f;
      float _873 = _858.x;
      float _874 = clamp(_858.y, _868, 1.0f - _868) * 0.3333333432674407958984375f;
      float _875 = _858.z;
      float4 _878 = _62.SampleLevel(_23, float3(_873, _874, _875), 0.0f);
      _927 = _824 + (_878.w * _864);
      _928 = _825 + (float4(((_62.SampleLevel(_23, float3(_873, _874 + 0.666666686534881591796875f, _875), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _862.z, _862.z) * _864);
      _929 = _826 + (float4(((_62.SampleLevel(_23, float3(_873, _874 + 0.3333333432674407958984375f, _875), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _862.y, _862.y) * _864);
      _930 = _827 + (float4(((_878.xyz * 4.0f) - 2.0f.xxx) * _862.x, _862.x) * _864);
    } else {
      _927 = _824;
      _928 = _825;
      _929 = _826;
      _930 = _827;
    }
    float4 _1013;
    float4 _1014;
    float4 _1015;
    float _1016;
    if (_847 > 0.0f) {
      float3 _939 = ((_687 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _942 = _18_m109.xyz * 0.5f;
      float3 _944 = clamp(_939 - floor(_939), _942, 1.0f.xxx - _942);
      float4 _948 = _63.SampleLevel(_24, _944, 0.0f);
      float _950 = _847 * (1.0f - _721);
      float _954 = _18_m109.y * 0.5f;
      float _960 = clamp(_944.y, _954, 1.0f - _954) * 0.3333333432674407958984375f;
      float4 _964 = _64.SampleLevel(_23, float3(_944.x, _960, _944.z), 0.0f);
      float _980 = _948.x;
      float _991 = _948.y;
      float _1002 = _948.z;
      _1013 = _928 + (float4(((_64.SampleLevel(_23, float3(_944.x, _960 + 0.666666686534881591796875f, _944.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1002, _1002) * _950);
      _1014 = _929 + (float4(((_64.SampleLevel(_23, float3(_944.x, _960 + 0.3333333432674407958984375f, _944.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _991, _991) * _950);
      _1015 = _930 + (float4(((_964.xyz * 4.0f) - 2.0f.xxx) * _980, _980) * _950);
      _1016 = _927 + (_964.w * _950);
    } else {
      _1013 = _928;
      _1014 = _929;
      _1015 = _930;
      _1016 = _927;
    }
    float _1019 = clamp((_1016 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1023 = _1013;
    _1024 = _1014;
    _1025 = _1015;
    _1026 = _1019 - _721;
    _1027 = (_1019 + _721) * 0.5f;
  } else {
    _1023 = 0.0f.xxxx;
    _1024 = 0.0f.xxxx;
    _1025 = 0.0f.xxxx;
    _1026 = 0.0f;
    _1027 = 1.0f;
  }
  float4 _1047 = _1025 + float4(_18_m111.x * _1027, (_18_m111.y * _1027) + ((_18_m111.w * _1026) * 0.5f), _18_m111.z * _1027, (_18_m111.w * _1027) + ((_18_m111.y * _1026) * 0.375f));
  float4 _1067 = _1024 + float4(_18_m112.x * _1027, (_18_m112.y * _1027) + ((_18_m112.w * _1026) * 0.5f), _18_m112.z * _1027, (_18_m112.w * _1027) + ((_18_m112.y * _1026) * 0.375f));
  float4 _1087 = _1023 + float4(_18_m113.x * _1027, (_18_m113.y * _1027) + ((_18_m113.w * _1026) * 0.5f), _18_m113.z * _1027, (_18_m113.w * _1027) + ((_18_m113.y * _1026) * 0.375f));
  float _1092 = max(0.0f, dot(_1047.xyz, _572) + _1047.w);
  float _1097 = max(0.0f, dot(_1067.xyz, _572) + _1067.w);
  float _1102 = max(0.0f, dot(_1087.xyz, _572) + _1087.w);
  float3 _1112 = -_458;
  float3 _1113 = reflect(_1112, _572);
  float _1121 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_544, 0.001000000047497451305389404296875f))));
  float2 _1122 = float2(_684);
  float2 _1126 = floor(_1122 * _42_m0.w);
  float _1143 = floor(_685 - _42_m2.y);
  float _1147 = clamp(_1143, 0.0f, _42_m1.x - 1.0f);
  uint _1157 = (_1143 <= _1147) ? (_31.Load(uint(_18_m21.z + int(_1126.x + (_1126.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1147)) * 4 + 0)) : 0u;
  float _1160 = dot(float4(_1092, _1097, _1102, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1162;
  float _1165;
  uint _1167;
  _1162 = 0.0f.xxx;
  _1165 = 1.0f;
  _1167 = _1157;
  uint _1168;
  float3 _1163;
  float _1166;
  bool _1170;
  [loop] for (;;) {
    bool _1169 = _1167 != 0u;
    _1170 = _1165 > 0.00999999977648258209228515625f;
    if (_1169 && _1170) {
      uint _1174 = firstbitlow(_1167);
      _1168 = _1167 ^ (1u << (_1174 & 31u));
      float3 _1194 = float3(dot(_42_m4[_1174]._m2, _425), dot(_42_m4[_1174]._m3, _425), dot(_42_m4[_1174]._m4, _425));
      float3 _1195 = abs(_1194);
      if (all(bool3(_1195.x <= _42_m4[_1174]._m1.xyz.x, _1195.y <= _42_m4[_1174]._m1.xyz.y, _1195.z <= _42_m4[_1174]._m1.xyz.z))) {
        float3 _1204 = _42_m4[_1174]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1206 = _1195 * 0.100000001490116119384765625f;
        float3 _1207 = _1206 * _1206;
        float3 _1210 = (_42_m4[_1174]._m1.xyz - _1195) * _42_m4[_1174]._m5.xyz;
        float3 _1258;
        [branch] if (_42_m4[_1174]._m6.x == 1.0f) {
          float3 _1243 = float3(dot(_42_m4[_1174]._m2.xyz, _1113), dot(_42_m4[_1174]._m3.xyz, _1113), dot(_42_m4[_1174]._m4.xyz, _1113));
          float3 _1245 = (_42_m4[_1174]._m1.xyz - _1194) / _1243;
          float3 _1248 = ((-_42_m4[_1174]._m1.xyz) - _1194) / _1243;
          bool3 _1249 = bool3(_1243.x > 0.0f.xxx.x, _1243.y > 0.0f.xxx.y, _1243.z > 0.0f.xxx.z);
          float3 _1250 = float3(_1249.x ? _1245.x : _1248.x, _1249.y ? _1245.y : _1248.y, _1249.z ? _1245.z : _1248.z);
          _1258 = _1194 + (_1243 * min(min(_1250.x, _1250.y), _1250.z));
        }
        else {
          _1258 = _1113;
        }
        float3 _1259 = normalize(_1258);
        float3 _1262 = float3(int3(sign(_1259)));
        float3 _1265 = _1259 / dot(_1259, _1262).xxx;
        float3 _1279;
        if (_1265.z < 0.0f) {
          float3 _1270 = abs(_1265);
          float2 _1277 = _1262.xy * float2(1.0f - _1270.y, 1.0f - _1270.x);
          _1279 = float3(_1277.x, _1277.y, _1265.z);
        } else {
          _1279 = _1265;
        }
        float _1304 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1174]._m0, float4(_572, 1.0f))));
        float _1317 = clamp((min(_1210.x, min(_1210.y, _1210.z)) * _42_m4[_1174]._m6.y) + ((((((_1204 * _1204).x - ((_1207.x + _1207.y) + _1207.z)) * _42_m4[_1174]._m5.x) * _42_m4[_1174]._m5.x) * (1.0f - _42_m4[_1174]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1174]._m6.w;
        _1163 = _1162 + ((((_29.SampleLevel(_25, float3((((_1279.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1174]._m1.w), _1121).xyz * _42_m4[_1174]._m5.w) * ((((((clamp(abs(_1160 / _1304), 0.0f, 1.0f) * 2.0f) + _1160) / (2.0f + _1304)) - 1.0f) * _18_m23.w) + 1.0f)) * _1317) * _1165);
        _1166 = _1165 * (1.0f - _1317);
      } else {
        _1163 = _1162;
        _1166 = _1165;
      }
      _1162 = _1163;
      _1165 = _1166;
      _1167 = _1168;
      continue;
    } else {
      break;
    }
  }
  float3 _1386;
  if (_1170) {
    float3 _1325 = normalize(_1113);
    float3 _1328 = float3(int3(sign(_1325)));
    float3 _1331 = _1325 / dot(_1325, _1328).xxx;
    float3 _1345;
    if (_1331.z < 0.0f) {
      float3 _1336 = abs(_1331);
      float2 _1343 = _1328.xy * float2(1.0f - _1336.y, 1.0f - _1336.x);
      _1345 = float3(_1343.x, _1343.y, _1331.z);
    } else {
      _1345 = _1331;
    }
    float _1372 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_572, 1.0f))));
    _1386 = _1162 + ((_29.SampleLevel(_25, float3((((_1345.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1121).xyz * ((((((clamp(abs(_1160 / _1372), 0.0f, 1.0f) * 2.0f) + _1160) / (2.0f + _1372)) - 1.0f) * _18_m23.w) + 1.0f)) * _1165);
  } else {
    _1386 = _1162;
  }
  float4 _2077;
  do {
    [branch] if (_46_m4 == 0) {
      _2077 = 0.0f.xxxx;
      break;
    }
    float2 _1936;
    do {
      if (_48_m7.w >= 0.9900000095367431640625f) {
        _1936 = float2(_48_m7.z, 1.0f);
        break;
      }
      int _1415 = int(_48_m7.x);
      bool3 _1417 = (_1415 == 2).xxx;
      float3 _1425 = _421 - float3(_1417.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1417.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1417.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
      float _1436 = max(clamp((_48_m6.w - dot(_1425, _1425)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
      float _1653;
      bool _1654;
      if (_1436 > 0.0f) {
        float _1651;
        bool _1652;
        if (_1415 > 0) {
          float3 _1443 = _421 - _48_m1[0].xyz;
          float3 _1447 = _421 - _48_m1[1].xyz;
          float3 _1451 = _421 - _48_m1[2].xyz;
          float3 _1455 = _421 - _48_m1[3].xyz;
          float4 _1460 = float4(dot(_1443, _1443), dot(_1447, _1447), dot(_1451, _1451), dot(_1455, _1455));
          float4 _1469 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
          float4 _1471 = float4(bool4(_1460.x < _1469.x, _1460.y < _1469.y, _1460.z < _1469.z, _1460.w < _1469.w));
          float3 _1475 = clamp(_1471.yzw - _1471.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1479 = clamp(4.0f - dot(float4(_1471.x, _1475.x, _1475.y, _1475.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1481 = clamp(_1479 + 1.0f, 0.0f, 3.0f);
          uint _1482 = uint(_1479);
          uint _1490 = uint(_1481);
          float _1496 = dot(_1460, _358[_1490]) / _48_m1[_1490].w;
          float _1513;
          if (((_1481 > _1479) && (_1496 >= 0.0f)) && (_1496 <= 1.0f)) {
            _1513 = _1479 + step(frac(52.98291778564453125f * frac(dot(_1122 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1460, _358[_1482]) / _48_m1[_1482].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1513 = _1479;
          }
          float _1514 = clamp(_1513, 0.0f, 4.0f);
          float4 _1518 = mul(_48_m0[uint(_1514)], _425);
          float _1521 = _1518.z;
          float4 _1522 = float4(_1518.xy, _1521, _1514);
          float3 _1523 = _1522.xyz;
          bool3 _1524 = bool3(_1523.x <= 0.0f.xxx.x, _1523.y <= 0.0f.xxx.y, _1523.z <= 0.0f.xxx.z);
          bool3 _1525 = bool3(_1523.x >= 1.0f.xxx.x, _1523.y >= 1.0f.xxx.y, _1523.z >= 1.0f.xxx.z);
          bool _1531 = any(bool3(_1524.x || _1525.x, _1524.y || _1525.y, _1524.z || _1525.z)) || ((asuint(_1521) & 2147483647u) > 2139095040u);
          int _1532 = int(_1514);
          float2 _1549 = float4(_48_m3[_1532].xy + (_1522.xy * _48_m3[_1532].zw), _1521, _1514).xy * _48_m4.zw;
          float2 _1551 = floor(_1549 + 0.5f.xx);
          float2 _1552 = _1549 - _1551;
          float _1553 = _1552.x;
          float _1554 = _1553 + 0.5f;
          float _1556 = (_1554 * _1554) * 0.5f;
          float _1559 = min(_1553, 0.0f);
          float _1563 = max(_1553, 0.0f);
          float4 _1567 = float4(_1556 - _1553, (1.0f - _1553) - (_1559 * _1559), (_1553 + 1.0f) - (_1563 * _1563), _1556) * 0.44444000720977783203125f;
          float _1568 = _1552.y;
          float _1569 = _1568 + 0.5f;
          float _1571 = (_1569 * _1569) * 0.5f;
          float _1574 = min(_1568, 0.0f);
          float _1578 = max(_1568, 0.0f);
          float4 _1582 = float4(_1571 - _1568, (1.0f - _1568) - (_1574 * _1574), (_1568 + 1.0f) - (_1578 * _1578), _1571) * 0.44444000720977783203125f;
          float2 _1584 = _1567.yw;
          float2 _1585 = _1567.xz + _1584;
          float2 _1587 = _1582.yw;
          float2 _1588 = _1582.xz + _1587;
          float2 _1594 = ((_1584 / _1585) + float2(-1.5f, 0.5f)) * _48_m4.xx;
          float2 _1596 = ((_1587 / _1588) + float2(-1.5f, 0.5f)) * _48_m4.yy;
          float2 _1598 = _1551 * _48_m4.xy;
          float _1599 = _1594.x;
          float _1600 = _1596.x;
          float _1603 = _1594.y;
          float _1606 = _1596.y;
          float _1611 = _1585.x;
          float _1612 = _1588.x;
          float _1614 = _1585.y;
          float _1616 = _1588.y;
          _1651 = _1531 ? 1.0f : (((((_1611 * _1612) * _49.SampleCmpLevelZero(_26, float3(_1598 + float2(_1599, _1600), _380).xy, _1521)) + ((_1614 * _1612) * _49.SampleCmpLevelZero(_26, float3(_1598 + float2(_1603, _1600), _380).xy, _1521))) + ((_1611 * _1616) * _49.SampleCmpLevelZero(_26, float3(_1598 + float2(_1599, _1606), _380).xy, _1521))) + ((_1614 * _1616) * _49.SampleCmpLevelZero(_26, float3(_1598 + float2(_1603, _1606), _380).xy, _1521)));
          _1652 = _1531;
        } else {
          _1651 = 1.0f;
          _1652 = false;
        }
        _1653 = _1651;
        _1654 = _1652;
      } else {
        _1653 = 1.0f;
        _1654 = false;
      }
      float _1854;
      float _1855;
      if ((_1436 < 1.0f) || (_48_m8.x > 0.5f)) {
        float _1665 = 1.0f - clamp(dot(_572, _44_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1682 = float4((_421 - (_44_m0.xyz * (_1665 * _48_m22.x))) + (_572 * (_1665 * _48_m22.y)), 1.0f);
        float4 _1683 = mul(_48_m21, _1682);
        float2 _1684 = _1683.xy;
        float _1852;
        if (all(bool2(_1684.x > 0.0f.xx.x, _1684.y > 0.0f.xx.y)) && all(bool2(_1684.x < 1.0f.xx.x, _1684.y < 1.0f.xx.y))) {
          uint _1703 = clamp(uint((floor(_1683.y * _48_m23.z) + _1683.x) * _48_m23.y), 0u, 127u);
          uint _1707 = asuint(_48_m25[_1703].x);
          float2 _1708 = spvUnpackHalf2x16(_1707);
          float _1709 = _1708.x;
          float _1851;
          if (_1709 >= 0.0f) {
            float4x4 _1718 = _48_m20;
            _1718[0].w = _48_m25[_1703].y;
            _1718[1].w = _48_m25[_1703].z;
            _1718[2].w = _48_m25[_1703].w;
            float4 _1725 = mul(_1718, _1682);
            float3 _1726 = _1725.xyz;
            float _1850;
            if (all(bool3(_1726.x > 0.0f.xxx.x, _1726.y > 0.0f.xxx.y, _1726.z > 0.0f.xxx.z)) && all(bool3(_1726.x < 1.0f.xxx.x, _1726.y < 1.0f.xxx.y, _1726.z < 1.0f.xxx.z))) {
              float _1743 = _1725.z;
              float2 _1749 = float4((_1725.xy * _48_m22.zw) + float2(_1709, spvUnpackHalf2x16(_1707 >> 16u).x), _1743, 1.0f).xy * _48_m24.zw;
              float2 _1751 = floor(_1749 + 0.5f.xx);
              float2 _1752 = _1749 - _1751;
              float _1753 = _1752.x;
              float _1754 = _1753 + 0.5f;
              float _1756 = (_1754 * _1754) * 0.5f;
              float _1759 = min(_1753, 0.0f);
              float _1763 = max(_1753, 0.0f);
              float4 _1767 = float4(_1756 - _1753, (1.0f - _1753) - (_1759 * _1759), (_1753 + 1.0f) - (_1763 * _1763), _1756) * 0.44444000720977783203125f;
              float _1768 = _1752.y;
              float _1769 = _1768 + 0.5f;
              float _1771 = (_1769 * _1769) * 0.5f;
              float _1774 = min(_1768, 0.0f);
              float _1778 = max(_1768, 0.0f);
              float4 _1782 = float4(_1771 - _1768, (1.0f - _1768) - (_1774 * _1774), (_1768 + 1.0f) - (_1778 * _1778), _1771) * 0.44444000720977783203125f;
              float2 _1785 = _1767.xz + _1767.yw;
              float2 _1788 = _1782.xz + _1782.yw;
              float2 _1794 = ((_1767.yw / _1785) + float2(-1.5f, 0.5f)) * _48_m24.xx;
              float2 _1796 = ((_1782.yw / _1788) + float2(-1.5f, 0.5f)) * _48_m24.yy;
              float2 _1798 = _1751 * _48_m24.xy;
              float _1799 = _1794.x;
              float _1800 = _1796.x;
              float2 _1802 = _1798 + float2(_1799, _1800);
              float _1803 = _1794.y;
              float2 _1805 = _1798 + float2(_1803, _1800);
              float _1806 = _1796.y;
              float2 _1808 = _1798 + float2(_1799, _1806);
              float2 _1810 = _1798 + float2(_1803, _1806);
              float _1811 = _1785.x;
              float _1812 = _1788.x;
              float _1814 = _1785.y;
              float _1816 = _1788.y;
              _1850 = ((((_1811 * _1812) * _54.SampleCmpLevelZero(_26, float3(_1802, _380).xy, _1743)) + ((_1814 * _1812) * _54.SampleCmpLevelZero(_26, float3(_1805, _380).xy, _1743))) + ((_1811 * _1816) * _54.SampleCmpLevelZero(_26, float3(_1808, _380).xy, _1743))) + ((_1814 * _1816) * _54.SampleCmpLevelZero(_26, float3(_1810, _380).xy, _1743));
            } else {
              _1850 = 1.0f;
            }
            _1851 = _1850;
          } else {
            _1851 = 1.0f;
          }
          _1852 = _1851;
        } else {
          _1852 = 1.0f;
        }
        _1854 = _1654 ? _1852 : _1653;
        _1855 = _1852;
      } else {
        _1854 = _1653;
        _1855 = 1.0f;
      }
      float _1858 = lerp(lerp(_1855, _1854, _1436), min(_1855, _1854), _48_m8.x);
      float _1931;
      if (_1858 > 0.001000000047497451305389404296875f) {
        float3 _1893 = _421 - _18_m65.xyz;
        float2 _1898 = (_1893 + (_18_m68.xyz * _1893.y)).xz * _18_m66.z;
        float2 _1899 = _18_m67.xy * _18_m77.w;
        float3 _1906 = _421 - _18_m69.xyz;
        float2 _1914 = _18_m69.w.xx;
        float4 _1921 = _53.SampleLevel(_24, lerp(_1898 * _18_m67.w, (_1906 + (_18_m68.xyz * _1906.y)).xz * _18_m70.x, _1914) + lerp(_1899, _18_m70.yz * _18_m77.w, _1914), 0.0f);
        _1931 = _1858 * lerp(1.0f, lerp(_53.SampleLevel(_24, _1898 + _1899, 0.0f).x, lerp(_1921.x, _1921.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_1893.xz))), _18_m67.z);
      } else {
        _1931 = _1858;
      }
      _1936 = float2(lerp(_1931, _48_m7.z, _48_m7.w), _1931);
      break;
    } while (false);
    float _1941 = lerp(1.0f, min(1.0f, _1936.x), _48_m6.x);
    float4 _2076;
    if (_1941 > 0.001000000047497451305389404296875f) {
      float3 _1951 = -_44_m0.xyz;
      float _1956 = dot(_1951, _1113);
      float3 _1958 = _1113 - (_1951 * _1956);
      bool3 _1960 = (_1956 < _44_m4.z).xxx;
      float3 _1968 = normalize((_1951 * _44_m4.z) + ((_1958 * rsqrt(max(6.103515625e-05f, dot(_1958, _1958)))) * _44_m4.y));
      float3 _1969 = float3(_1960.x ? _1968.x : _1113.x, _1960.y ? _1968.y : _1113.y, _1960.z ? _1968.z : _1113.z);
      float3 _1973 = _1969 + _458;
      float3 _1977 = _1973 * rsqrt(max(6.103515625e-05f, dot(_1973, _1973)));
      float _1978 = clamp(dot(_1969, _572), 0.0f, 1.0f);
      float _1980 = clamp(dot(_572, _1977), 0.0f, 1.0f);
      float _1983 = clamp(_630, 0.0f, 1.0f);
      float _1984 = _544 * _544;
      float _1985 = _1984 * _1984;
      float _2006 = (((_1980 * _1985) - _1980) * _1980) + 1.0f;
      float _2009 = 1.0f - clamp(dot(_458, _1977), 0.0f, 1.0f);
      float _2010 = _2009 * _2009;
      float _2012 = (_2009 * _2010) * _2010;
      float _2036 = 1.0f - _544;
      float _2043 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2036 * (1.04997003078460693359375f + (_2036 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2036))))));
      float _2044 = 1.0f - _2043;
      float3 _2047 = _629 + ((1.0f.xxx - _629) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0xFB54B90B:
      float3 _2063 = ((clamp((min(((_629 * (1.0f - _2012)) + _2012.xxx) * ((_1985 / (_2006 * _2006)) * (0.5f / (((_1978 * sqrt(((((-_1983) * _1985) + _1983) * _1983) + _1985)) + (_1983 * sqrt(((((-_1978) * _1985) + _1978) * _1978) + _1985))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2047 * (((_58.SampleLevel(_23, (float2(_1983, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_1978, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2043) / _2044)) * _2047) / (1.0f.xxx - (_2047 * _2044)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1978) + ((_625 * 1.0f) * _1978)) * _44_m1.xyz;
      */
      float3 _2063 = (((clamp((min(((_629 * (1.0f - _2012)) + _2012.xxx) * ((_1985 / (_2006 * _2006)) * (0.5f / (((_1978 * sqrt(((((-_1983) * _1985) + _1983) * _1983) + _1985)) + (_1983 * sqrt(((((-_1978) * _1985) + _1978) * _1978) + _1985))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2047 * (((_58.SampleLevel(_23, (float2(_1983, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_1978, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2043) / _2044)) * _2047) / (1.0f.xxx - (_2047 * _2044)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _1978) + ((_625 * 1.0f) * _1978)) * _44_m1.xyz;
      // RenoDX code end
      float3 _2074 = lerp(_2063, _2063 * _55.SampleBias(_23, float2(_1941, 0.5f), _18_m16).xyz, (1.0f - _1941).xxx) * 1.0f;
      _2076 = float4(_2074.x, _2074.y, _2074.z, 0.0f.xxxx.w);
    } else {
      _2076 = 0.0f.xxxx;
    }
    _2077 = _2076;
    break;
  } while (false);
  float2 _2079 = floor(_1122 * 0.03125f);
  int _2087 = int((_2079.x + (_2079.y * _46_m9)) * 8.0f);
  float _2094 = floor(_685 - (_18_m3.y * _46_m15));
  float _2098 = clamp(_2094, 0.0f, _46_m11 - 1.0f);
  int _2100 = int(_2098 * 8.0f);
  float3 _2102;
  float _2105;
  _2102 = 0.0f.xxx;
  _2105 = 1.0f;
  float3 _2103;
  float _2106;
  [loop] for (int _2107 = 0; _2107 <= 7; _2102 = _2103, _2105 = _2106, _2107++) {
    uint _2128 = (_2094 <= _2098) ? (_31.Load(uint((_46_m2 + _2087) + _2107) * 4 + 0) & _31.Load(uint((_46_m3 + _2100) + _2107) * 4 + 0)) : 0u;
    uint _2129 = uint(_2107);
    float3 _2133;
    _2106 = _2105;
    _2133 = 0.0f.xxx;
    uint _2136;
    float _2131;
    float3 _2134;
    [loop] for (uint _2135 = _2128; _2135 != 0u; _2106 = _2131, _2133 = _2134, _2135 = _2136) {
      uint _2140 = firstbitlow(_2135);
      _2136 = _2135 ^ (1u << (_2140 & 31u));
      int _2146 = int((32u * _2129) + _2140) * 8;
      int _2149 = _2146 + 1;
      int _2152 = _2146 + 2;
      int _2155 = _2146 + 3;
      int _2158 = _2146 + 4;
      int _2161 = _2146 + 5;
      int _2164 = _2146 + 6;
      int _2167 = _2146 + 7;
      uint _2171 = uint(_44_m6[_2161].w);
      float _2246;
      if ((_2171 & 1u) == 1u) {
        uint _2177 = asuint(_44_m6[_2161].x);
        uint _2184 = asuint(_44_m6[_2161].y);
        uint _2191 = asuint(_44_m6[_2161].z);
        uint _2198 = asuint(_44_m6[_2164].x);
        uint _2205 = asuint(_44_m6[_2164].y);
        uint _2212 = asuint(_44_m6[_2164].z);
        float3 _2231 = abs(mul(float4(_421 - _44_m6[_2149].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2177).x, spvUnpackHalf2x16(_2191).x, spvUnpackHalf2x16(_2205).x, 0.0f), float4(spvUnpackHalf2x16(_2177 >> 16u).x, spvUnpackHalf2x16(_2191 >> 16u).x, spvUnpackHalf2x16(_2205 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2184).x, spvUnpackHalf2x16(_2198).x, spvUnpackHalf2x16(_2212).x, 0.0f), float4(spvUnpackHalf2x16(_2184 >> 16u).x, spvUnpackHalf2x16(_2198 >> 16u).x, spvUnpackHalf2x16(_2212 >> 16u).x, 0.0f))).xyz);
        float _2238 = _44_m6[_2167].x * 0.5f;
        float _2244 = 1.0f - clamp((max(max(_2231.x, _2231.y), _2231.z) - (_2238 + 0.5f)) / (0.5f - _2238), 0.0f, 1.0f);
        _2246 = _2244 * _2244;
      } else {
        _2246 = 1.0f;
      }
      uint _2250 = uint(_44_m6[_2146].w);
      bool _2253 = _44_m6[_2155].z > 0.5f;
      if ((false || (_2246 < 0.001000000047497451305389404296875f)) || ((_2250 < 4u) && _2253)) {
        _2131 = _2106;
        _2134 = _2133;
        continue;
      }
      float _4782;
      float3 _4783;
      do {
        [branch] if (_2250 >= 4u) {
          float3 _3482;
          do {
            float3 _2272 = _44_m6[_2149].xyz - _421;
            if (dot(_44_m6[_2155].xyz, _2272) > 0.0f) {
              _3482 = 0.0f.xxx;
              break;
            }
            float _2279 = dot(_2272, _2272) * _44_m6[_2149].w;
            float _2282 = clamp(1.0f - (_2279 * _2279), 0.0f, 1.0f);
            float _2283 = _2282 * _2282;
            if (_2283 <= 0.0f) {
              _3482 = 0.0f.xxx;
              break;
            }
            float3 _2321;
            float _2322;
            bool _2323;
            float3 _2351;
            float3 _2353;
            float3 _2355;
            float3 _2357;
            float3 _2287 = _44_m6[_2152].xyz * _44_m6[_2152].w;
            float3 _2288 = _44_m6[_2149].xyz - _2287;
            float3 _2289 = _44_m6[_2158].xyz * _44_m6[_2155].w;
            float3 _2292 = _44_m6[_2149].xyz + _2287;
            float2 _2302 = (float2(clamp(_544, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_630, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2306 = _71.SampleLevel(_23, _2302, 0.0f);
            float4 _2310 = _72.SampleLevel(_23, _2302, 0.0f);
            float _2705;
            do {
              _2321 = _458 - (_572 * dot(_458, _572));
              _2322 = dot(_2321, _2321);
              _2323 = _2322 > 9.9999997473787516355514526367188e-05f;
              float3 _2346;
              if (_2323) {
                _2346 = _2321 * rsqrt(_2322);
              } else {
                float _2327 = _572.z;
                float _2329 = (_2327 >= 0.0f) ? 1.0f : (-1.0f);
                float _2331 = (-1.0f) / (_2329 + _2327);
                float _2333 = _572.x;
                _2346 = float3(1.0f + (((_2329 * _2331) * _2333) * _2333), ((_2329 * _2333) * _572.y) * _2331, (-_2329) * _2333);
              }
              float3x3 _2350 = mul(float3x3(float3(_2306.x, 0.0f, _2306.z), float3(0.0f, 1.0f, 0.0f), float3(_2306.y, 0.0f, _2306.w)), float3x3(_2346, cross(_572, _2346), _572));
              _2351 = (_2288 - _2289) - _421;
              float3 _2352 = mul(_2350, _2351);
              _2353 = (_2288 + _2289) - _421;
              float3 _2354 = mul(_2350, _2353);
              _2355 = (_2292 + _2289) - _421;
              float3 _2356 = mul(_2350, _2355);
              _2357 = (_2292 - _2289) - _421;
              float3 _2358 = mul(_2350, _2357);
              float _2359 = _2352.z;
              float _2362 = _2354.z;
              float _2366 = _2356.z;
              float _2370 = _2358.z;
              int _2374 = (((int(_2359 > 0.0f) | ((_2362 > 0.0f) ? 2 : 0)) | ((_2366 > 0.0f) ? 4 : 0)) | ((_2370 > 0.0f) ? 8 : 0));
              float3 _2611;
              float3 _2612;
              float3 _2613;
              float3 _2614;
              float3 _2615;
              int _2616;
              if (_2374 == 0) {
                _2611 = _2358;
                _2612 = _2356;
                _2613 = _2354;
                _2614 = _2352;
                _2615 = 0.0f.xxx;
                _2616 = 0;
              } else {
                float3 _2605;
                float3 _2606;
                float3 _2607;
                float3 _2608;
                float3 _2609;
                int _2610;
                if (_2374 == 1) {
                  _2605 = _2358;
                  _2606 = (_2352 * (-_2370)) + (_2358 * _2359);
                  _2607 = (_2352 * (-_2362)) + (_2354 * _2359);
                  _2608 = _2352;
                  _2609 = 0.0f.xxx;
                  _2610 = 3;
                } else {
                  float3 _2591;
                  float3 _2592;
                  float3 _2593;
                  float3 _2594;
                  float3 _2595;
                  int _2596;
                  if (_2374 == 2) {
                    _2591 = _2358;
                    _2592 = (_2354 * (-_2366)) + (_2356 * _2362);
                    _2593 = _2354;
                    _2594 = (_2354 * (-_2359)) + (_2352 * _2362);
                    _2595 = 0.0f.xxx;
                    _2596 = 3;
                  } else {
                    float3 _2577;
                    float3 _2578;
                    float3 _2579;
                    float3 _2580;
                    float3 _2581;
                    int _2582;
                    if (_2374 == 3) {
                      _2577 = (_2352 * (-_2370)) + (_2358 * _2359);
                      _2578 = (_2354 * (-_2366)) + (_2356 * _2362);
                      _2579 = _2354;
                      _2580 = _2352;
                      _2581 = 0.0f.xxx;
                      _2582 = 4;
                    } else {
                      float3 _2563;
                      float3 _2564;
                      float3 _2565;
                      float3 _2566;
                      float3 _2567;
                      int _2568;
                      if (_2374 == 4) {
                        _2563 = _2358;
                        _2564 = _2356;
                        _2565 = (_2356 * (-_2362)) + (_2354 * _2366);
                        _2566 = (_2356 * (-_2370)) + (_2358 * _2366);
                        _2567 = 0.0f.xxx;
                        _2568 = 3;
                      } else {
                        float3 _2549;
                        float3 _2550;
                        float3 _2551;
                        float3 _2552;
                        float3 _2553;
                        int _2554;
                        if (_2374 == 5) {
                          _2549 = _2358;
                          _2550 = _2356;
                          _2551 = _2354;
                          _2552 = _2352;
                          _2553 = 0.0f.xxx;
                          _2554 = 0;
                        } else {
                          float3 _2543;
                          float3 _2544;
                          float3 _2545;
                          float3 _2546;
                          float3 _2547;
                          int _2548;
                          if (_2374 == 6) {
                            _2543 = (_2356 * (-_2370)) + (_2358 * _2366);
                            _2544 = _2356;
                            _2545 = _2354;
                            _2546 = (_2354 * (-_2359)) + (_2352 * _2362);
                            _2547 = 0.0f.xxx;
                            _2548 = 4;
                          } else {
                            float3 _2529;
                            float3 _2530;
                            float3 _2531;
                            float3 _2532;
                            float3 _2533;
                            int _2534;
                            if (_2374 == 7) {
                              float _2522 = -_2370;
                              _2529 = (_2356 * _2522) + (_2358 * _2366);
                              _2530 = _2356;
                              _2531 = _2354;
                              _2532 = _2352;
                              _2533 = (_2352 * _2522) + (_2358 * _2359);
                              _2534 = 5;
                            } else {
                              float3 _2516;
                              float3 _2517;
                              float3 _2518;
                              float3 _2519;
                              float3 _2520;
                              int _2521;
                              if (_2374 == 8) {
                                _2516 = _2358;
                                _2517 = _2358;
                                _2518 = (_2358 * (-_2366)) + (_2356 * _2370);
                                _2519 = (_2358 * (-_2359)) + (_2352 * _2370);
                                _2520 = 0.0f.xxx;
                                _2521 = 3;
                              } else {
                                float3 _2502;
                                float3 _2503;
                                float3 _2504;
                                float3 _2505;
                                float3 _2506;
                                int _2507;
                                if (_2374 == 9) {
                                  _2502 = _2358;
                                  _2503 = (_2358 * (-_2366)) + (_2356 * _2370);
                                  _2504 = (_2352 * (-_2362)) + (_2354 * _2359);
                                  _2505 = _2352;
                                  _2506 = 0.0f.xxx;
                                  _2507 = 4;
                                } else {
                                  float3 _2488;
                                  float3 _2489;
                                  float3 _2490;
                                  float3 _2491;
                                  float3 _2492;
                                  int _2493;
                                  if (_2374 == 10) {
                                    _2488 = _2358;
                                    _2489 = _2356;
                                    _2490 = _2354;
                                    _2491 = _2352;
                                    _2492 = 0.0f.xxx;
                                    _2493 = 0;
                                  } else {
                                    float3 _2482;
                                    float3 _2483;
                                    float3 _2484;
                                    float3 _2485;
                                    float3 _2486;
                                    int _2487;
                                    if (_2374 == 11) {
                                      float _2475 = -_2366;
                                      _2482 = (_2358 * _2475) + (_2356 * _2370);
                                      _2483 = (_2354 * _2475) + (_2356 * _2362);
                                      _2484 = _2354;
                                      _2485 = _2352;
                                      _2486 = _2358;
                                      _2487 = 5;
                                    } else {
                                      float3 _2469;
                                      float3 _2470;
                                      float3 _2471;
                                      float3 _2472;
                                      float3 _2473;
                                      int _2474;
                                      if (_2374 == 12) {
                                        _2469 = _2358;
                                        _2470 = _2356;
                                        _2471 = (_2356 * (-_2362)) + (_2354 * _2366);
                                        _2472 = (_2358 * (-_2359)) + (_2352 * _2370);
                                        _2473 = 0.0f.xxx;
                                        _2474 = 4;
                                      } else {
                                        bool _2427 = _2374 == 13;
                                        float3 _2454;
                                        float3 _2455;
                                        float3 _2456;
                                        float3 _2457;
                                        int _2458;
                                        if (_2427) {
                                          float _2447 = -_2362;
                                          _2454 = (_2356 * _2447) + (_2354 * _2366);
                                          _2455 = (_2352 * _2447) + (_2354 * _2359);
                                          _2456 = _2352;
                                          _2457 = _2358;
                                          _2458 = 5;
                                        } else {
                                          float3 _2444;
                                          float3 _2445;
                                          int _2446;
                                          if (_2374 == 14) {
                                            float _2437 = -_2359;
                                            _2444 = (_2354 * _2437) + (_2352 * _2362);
                                            _2445 = (_2358 * _2437) + (_2352 * _2370);
                                            _2446 = 5;
                                          } else {
                                            _2444 = _2352;
                                            _2445 = 0.0f.xxx;
                                            _2446 = (_2374 == 15) ? 4 : 0;
                                          }
                                          _2454 = _2356;
                                          _2455 = _2354;
                                          _2456 = _2444;
                                          _2457 = _2445;
                                          _2458 = _2446;
                                        }
                                        bool3 _2459 = _2427.xxx;
                                        _2469 = float3(_2459.x ? _2356.x : _2358.x, _2459.y ? _2356.y : _2358.y, _2459.z ? _2356.z : _2358.z);
                                        _2470 = _2454;
                                        _2471 = _2455;
                                        _2472 = _2456;
                                        _2473 = _2457;
                                        _2474 = _2458;
                                      }
                                      _2482 = _2469;
                                      _2483 = _2470;
                                      _2484 = _2471;
                                      _2485 = _2472;
                                      _2486 = _2473;
                                      _2487 = _2474;
                                    }
                                    _2488 = _2482;
                                    _2489 = _2483;
                                    _2490 = _2484;
                                    _2491 = _2485;
                                    _2492 = _2486;
                                    _2493 = _2487;
                                  }
                                  _2502 = _2488;
                                  _2503 = _2489;
                                  _2504 = _2490;
                                  _2505 = _2491;
                                  _2506 = _2492;
                                  _2507 = _2493;
                                }
                                _2516 = _2502;
                                _2517 = _2503;
                                _2518 = _2504;
                                _2519 = _2505;
                                _2520 = _2506;
                                _2521 = _2507;
                              }
                              _2529 = _2516;
                              _2530 = _2517;
                              _2531 = _2518;
                              _2532 = _2519;
                              _2533 = _2520;
                              _2534 = _2521;
                            }
                            _2543 = _2529;
                            _2544 = _2530;
                            _2545 = _2531;
                            _2546 = _2532;
                            _2547 = _2533;
                            _2548 = _2534;
                          }
                          _2549 = _2543;
                          _2550 = _2544;
                          _2551 = _2545;
                          _2552 = _2546;
                          _2553 = _2547;
                          _2554 = _2548;
                        }
                        _2563 = _2549;
                        _2564 = _2550;
                        _2565 = _2551;
                        _2566 = _2552;
                        _2567 = _2553;
                        _2568 = _2554;
                      }
                      _2577 = _2563;
                      _2578 = _2564;
                      _2579 = _2565;
                      _2580 = _2566;
                      _2581 = _2567;
                      _2582 = _2568;
                    }
                    _2591 = _2577;
                    _2592 = _2578;
                    _2593 = _2579;
                    _2594 = _2580;
                    _2595 = _2581;
                    _2596 = _2582;
                  }
                  _2605 = _2591;
                  _2606 = _2592;
                  _2607 = _2593;
                  _2608 = _2594;
                  _2609 = _2595;
                  _2610 = _2596;
                }
                _2611 = _2605;
                _2612 = _2606;
                _2613 = _2607;
                _2614 = _2608;
                _2615 = _2609;
                _2616 = _2610;
              }
              bool3 _2618 = (_2616 == 3).xxx;
              bool3 _2621 = (_2616 == 4).xxx;
              if (_2616 == 0) {
                _2705 = 0.0f;
                break;
              }
              float3 _2626 = normalize(_2614);
              float3 _2627 = normalize(_2613);
              float3 _2628 = normalize(_2612);
              float3 _2629 = normalize(float3(_2618.x ? _2614.x : _2611.x, _2618.y ? _2614.y : _2611.y, _2618.z ? _2614.z : _2611.z));
              float3 _2630 = normalize(float3(_2621.x ? _2614.x : _2615.x, _2621.y ? _2614.y : _2615.y, _2621.z ? _2614.z : _2615.z));
              float _2632 = clamp(dot(_2626, _2627), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2636 = sqrt(1.0f - (_2632 * _2632));
              float _2644 = clamp(dot(_2627, _2628), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2648 = sqrt(1.0f - (_2644 * _2644));
              float _2657 = clamp(dot(_2628, _2629), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2661 = sqrt(1.0f - (_2657 * _2657));
              float _2668 = ((cross(_2626, _2627).z * ((_2636 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2632) / _2636))) + (cross(_2627, _2628).z * ((_2648 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2644) / _2648)))) + (cross(_2628, _2629).z * ((_2661 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2657) / _2661)));
              float _2685;
              if (_2616 >= 4) {
                float _2673 = clamp(dot(_2629, _2630), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2677 = sqrt(1.0f - (_2673 * _2673));
                _2685 = _2668 + (cross(_2629, _2630).z * ((_2677 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2673) / _2677)));
              } else {
                _2685 = _2668;
              }
              float _2702;
              if (_2616 == 5) {
                float _2690 = clamp(dot(_2630, _2626), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2694 = sqrt(1.0f - (_2690 * _2690));
                _2702 = _2685 + (cross(_2630, _2626).z * ((_2694 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2690) / _2694)));
              } else {
                _2702 = _2685;
              }
              _2705 = max(_2702, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3093;
            do {
              float3 _2739;
              if (_2323) {
                _2739 = _2321 * rsqrt(_2322);
              } else {
                float _2720 = _572.z;
                float _2722 = (_2720 >= 0.0f) ? 1.0f : (-1.0f);
                float _2724 = (-1.0f) / (_2722 + _2720);
                float _2726 = _572.x;
                _2739 = float3(1.0f + (((_2722 * _2724) * _2726) * _2726), ((_2722 * _2726) * _572.y) * _2724, (-_2722) * _2726);
              }
              float3x3 _2742 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2739, cross(_572, _2739), _572));
              float3 _2743 = mul(_2742, _2351);
              float3 _2744 = mul(_2742, _2353);
              float3 _2745 = mul(_2742, _2355);
              float3 _2746 = mul(_2742, _2357);
              float _2747 = _2743.z;
              float _2750 = _2744.z;
              float _2754 = _2745.z;
              float _2758 = _2746.z;
              int _2762 = (((int(_2747 > 0.0f) | ((_2750 > 0.0f) ? 2 : 0)) | ((_2754 > 0.0f) ? 4 : 0)) | ((_2758 > 0.0f) ? 8 : 0));
              float3 _2999;
              float3 _3000;
              float3 _3001;
              float3 _3002;
              float3 _3003;
              int _3004;
              if (_2762 == 0) {
                _2999 = _2746;
                _3000 = _2745;
                _3001 = _2744;
                _3002 = _2743;
                _3003 = 0.0f.xxx;
                _3004 = 0;
              } else {
                float3 _2993;
                float3 _2994;
                float3 _2995;
                float3 _2996;
                float3 _2997;
                int _2998;
                if (_2762 == 1) {
                  _2993 = _2746;
                  _2994 = (_2743 * (-_2758)) + (_2746 * _2747);
                  _2995 = (_2743 * (-_2750)) + (_2744 * _2747);
                  _2996 = _2743;
                  _2997 = 0.0f.xxx;
                  _2998 = 3;
                } else {
                  float3 _2979;
                  float3 _2980;
                  float3 _2981;
                  float3 _2982;
                  float3 _2983;
                  int _2984;
                  if (_2762 == 2) {
                    _2979 = _2746;
                    _2980 = (_2744 * (-_2754)) + (_2745 * _2750);
                    _2981 = _2744;
                    _2982 = (_2744 * (-_2747)) + (_2743 * _2750);
                    _2983 = 0.0f.xxx;
                    _2984 = 3;
                  } else {
                    float3 _2965;
                    float3 _2966;
                    float3 _2967;
                    float3 _2968;
                    float3 _2969;
                    int _2970;
                    if (_2762 == 3) {
                      _2965 = (_2743 * (-_2758)) + (_2746 * _2747);
                      _2966 = (_2744 * (-_2754)) + (_2745 * _2750);
                      _2967 = _2744;
                      _2968 = _2743;
                      _2969 = 0.0f.xxx;
                      _2970 = 4;
                    } else {
                      float3 _2951;
                      float3 _2952;
                      float3 _2953;
                      float3 _2954;
                      float3 _2955;
                      int _2956;
                      if (_2762 == 4) {
                        _2951 = _2746;
                        _2952 = _2745;
                        _2953 = (_2745 * (-_2750)) + (_2744 * _2754);
                        _2954 = (_2745 * (-_2758)) + (_2746 * _2754);
                        _2955 = 0.0f.xxx;
                        _2956 = 3;
                      } else {
                        float3 _2937;
                        float3 _2938;
                        float3 _2939;
                        float3 _2940;
                        float3 _2941;
                        int _2942;
                        if (_2762 == 5) {
                          _2937 = _2746;
                          _2938 = _2745;
                          _2939 = _2744;
                          _2940 = _2743;
                          _2941 = 0.0f.xxx;
                          _2942 = 0;
                        } else {
                          float3 _2931;
                          float3 _2932;
                          float3 _2933;
                          float3 _2934;
                          float3 _2935;
                          int _2936;
                          if (_2762 == 6) {
                            _2931 = (_2745 * (-_2758)) + (_2746 * _2754);
                            _2932 = _2745;
                            _2933 = _2744;
                            _2934 = (_2744 * (-_2747)) + (_2743 * _2750);
                            _2935 = 0.0f.xxx;
                            _2936 = 4;
                          } else {
                            float3 _2917;
                            float3 _2918;
                            float3 _2919;
                            float3 _2920;
                            float3 _2921;
                            int _2922;
                            if (_2762 == 7) {
                              float _2910 = -_2758;
                              _2917 = (_2745 * _2910) + (_2746 * _2754);
                              _2918 = _2745;
                              _2919 = _2744;
                              _2920 = _2743;
                              _2921 = (_2743 * _2910) + (_2746 * _2747);
                              _2922 = 5;
                            } else {
                              float3 _2904;
                              float3 _2905;
                              float3 _2906;
                              float3 _2907;
                              float3 _2908;
                              int _2909;
                              if (_2762 == 8) {
                                _2904 = _2746;
                                _2905 = _2746;
                                _2906 = (_2746 * (-_2754)) + (_2745 * _2758);
                                _2907 = (_2746 * (-_2747)) + (_2743 * _2758);
                                _2908 = 0.0f.xxx;
                                _2909 = 3;
                              } else {
                                float3 _2890;
                                float3 _2891;
                                float3 _2892;
                                float3 _2893;
                                float3 _2894;
                                int _2895;
                                if (_2762 == 9) {
                                  _2890 = _2746;
                                  _2891 = (_2746 * (-_2754)) + (_2745 * _2758);
                                  _2892 = (_2743 * (-_2750)) + (_2744 * _2747);
                                  _2893 = _2743;
                                  _2894 = 0.0f.xxx;
                                  _2895 = 4;
                                } else {
                                  float3 _2876;
                                  float3 _2877;
                                  float3 _2878;
                                  float3 _2879;
                                  float3 _2880;
                                  int _2881;
                                  if (_2762 == 10) {
                                    _2876 = _2746;
                                    _2877 = _2745;
                                    _2878 = _2744;
                                    _2879 = _2743;
                                    _2880 = 0.0f.xxx;
                                    _2881 = 0;
                                  } else {
                                    float3 _2870;
                                    float3 _2871;
                                    float3 _2872;
                                    float3 _2873;
                                    float3 _2874;
                                    int _2875;
                                    if (_2762 == 11) {
                                      float _2863 = -_2754;
                                      _2870 = (_2746 * _2863) + (_2745 * _2758);
                                      _2871 = (_2744 * _2863) + (_2745 * _2750);
                                      _2872 = _2744;
                                      _2873 = _2743;
                                      _2874 = _2746;
                                      _2875 = 5;
                                    } else {
                                      float3 _2857;
                                      float3 _2858;
                                      float3 _2859;
                                      float3 _2860;
                                      float3 _2861;
                                      int _2862;
                                      if (_2762 == 12) {
                                        _2857 = _2746;
                                        _2858 = _2745;
                                        _2859 = (_2745 * (-_2750)) + (_2744 * _2754);
                                        _2860 = (_2746 * (-_2747)) + (_2743 * _2758);
                                        _2861 = 0.0f.xxx;
                                        _2862 = 4;
                                      } else {
                                        bool _2815 = _2762 == 13;
                                        float3 _2842;
                                        float3 _2843;
                                        float3 _2844;
                                        float3 _2845;
                                        int _2846;
                                        if (_2815) {
                                          float _2835 = -_2750;
                                          _2842 = (_2745 * _2835) + (_2744 * _2754);
                                          _2843 = (_2743 * _2835) + (_2744 * _2747);
                                          _2844 = _2743;
                                          _2845 = _2746;
                                          _2846 = 5;
                                        } else {
                                          float3 _2832;
                                          float3 _2833;
                                          int _2834;
                                          if (_2762 == 14) {
                                            float _2825 = -_2747;
                                            _2832 = (_2744 * _2825) + (_2743 * _2750);
                                            _2833 = (_2746 * _2825) + (_2743 * _2758);
                                            _2834 = 5;
                                          } else {
                                            _2832 = _2743;
                                            _2833 = 0.0f.xxx;
                                            _2834 = (_2762 == 15) ? 4 : 0;
                                          }
                                          _2842 = _2745;
                                          _2843 = _2744;
                                          _2844 = _2832;
                                          _2845 = _2833;
                                          _2846 = _2834;
                                        }
                                        bool3 _2847 = _2815.xxx;
                                        _2857 = float3(_2847.x ? _2745.x : _2746.x, _2847.y ? _2745.y : _2746.y, _2847.z ? _2745.z : _2746.z);
                                        _2858 = _2842;
                                        _2859 = _2843;
                                        _2860 = _2844;
                                        _2861 = _2845;
                                        _2862 = _2846;
                                      }
                                      _2870 = _2857;
                                      _2871 = _2858;
                                      _2872 = _2859;
                                      _2873 = _2860;
                                      _2874 = _2861;
                                      _2875 = _2862;
                                    }
                                    _2876 = _2870;
                                    _2877 = _2871;
                                    _2878 = _2872;
                                    _2879 = _2873;
                                    _2880 = _2874;
                                    _2881 = _2875;
                                  }
                                  _2890 = _2876;
                                  _2891 = _2877;
                                  _2892 = _2878;
                                  _2893 = _2879;
                                  _2894 = _2880;
                                  _2895 = _2881;
                                }
                                _2904 = _2890;
                                _2905 = _2891;
                                _2906 = _2892;
                                _2907 = _2893;
                                _2908 = _2894;
                                _2909 = _2895;
                              }
                              _2917 = _2904;
                              _2918 = _2905;
                              _2919 = _2906;
                              _2920 = _2907;
                              _2921 = _2908;
                              _2922 = _2909;
                            }
                            _2931 = _2917;
                            _2932 = _2918;
                            _2933 = _2919;
                            _2934 = _2920;
                            _2935 = _2921;
                            _2936 = _2922;
                          }
                          _2937 = _2931;
                          _2938 = _2932;
                          _2939 = _2933;
                          _2940 = _2934;
                          _2941 = _2935;
                          _2942 = _2936;
                        }
                        _2951 = _2937;
                        _2952 = _2938;
                        _2953 = _2939;
                        _2954 = _2940;
                        _2955 = _2941;
                        _2956 = _2942;
                      }
                      _2965 = _2951;
                      _2966 = _2952;
                      _2967 = _2953;
                      _2968 = _2954;
                      _2969 = _2955;
                      _2970 = _2956;
                    }
                    _2979 = _2965;
                    _2980 = _2966;
                    _2981 = _2967;
                    _2982 = _2968;
                    _2983 = _2969;
                    _2984 = _2970;
                  }
                  _2993 = _2979;
                  _2994 = _2980;
                  _2995 = _2981;
                  _2996 = _2982;
                  _2997 = _2983;
                  _2998 = _2984;
                }
                _2999 = _2993;
                _3000 = _2994;
                _3001 = _2995;
                _3002 = _2996;
                _3003 = _2997;
                _3004 = _2998;
              }
              bool3 _3006 = (_3004 == 3).xxx;
              bool3 _3009 = (_3004 == 4).xxx;
              if (_3004 == 0) {
                _3093 = 0.0f;
                break;
              }
              float3 _3014 = normalize(_3002);
              float3 _3015 = normalize(_3001);
              float3 _3016 = normalize(_3000);
              float3 _3017 = normalize(float3(_3006.x ? _3002.x : _2999.x, _3006.y ? _3002.y : _2999.y, _3006.z ? _3002.z : _2999.z));
              float3 _3018 = normalize(float3(_3009.x ? _3002.x : _3003.x, _3009.y ? _3002.y : _3003.y, _3009.z ? _3002.z : _3003.z));
              float _3020 = clamp(dot(_3014, _3015), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3024 = sqrt(1.0f - (_3020 * _3020));
              float _3032 = clamp(dot(_3015, _3016), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3036 = sqrt(1.0f - (_3032 * _3032));
              float _3045 = clamp(dot(_3016, _3017), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3049 = sqrt(1.0f - (_3045 * _3045));
              float _3056 = ((cross(_3014, _3015).z * ((_3024 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3020) / _3024))) + (cross(_3015, _3016).z * ((_3036 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3032) / _3036)))) + (cross(_3016, _3017).z * ((_3049 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3045) / _3049)));
              float _3073;
              if (_3004 >= 4) {
                float _3061 = clamp(dot(_3017, _3018), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3065 = sqrt(1.0f - (_3061 * _3061));
                _3073 = _3056 + (cross(_3017, _3018).z * ((_3065 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3061) / _3065)));
              } else {
                _3073 = _3056;
              }
              float _3090;
              if (_3004 == 5) {
                float _3078 = clamp(dot(_3018, _3014), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3082 = sqrt(1.0f - (_3078 * _3078));
                _3090 = _3073 + (cross(_3018, _3014).z * ((_3082 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3078) / _3082)));
              } else {
                _3090 = _3073;
              }
              _3093 = max(_3090, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3096 = (_2171 & 2u) != 0u;
            uint _3100 = asuint(_44_m6[_2158].w);
            uint _3101 = asuint(_44_m6[_2164].w);
            float3 _3102 = _421 - _44_m6[_2149].xyz;
            float3 _3103 = abs(_3102);
            float _3104 = _3103.x;
            float _3105 = _3103.y;
            float _3107 = _3103.z;
            int _3140;
            if ((_3104 > _3105) && (_3104 > _3107)) {
              _3140 = int((_3102.x > 0.0f) ? (_3100 & 1023u) : ((_3100 >> 10u) & 1023u));
            } else {
              int _3132;
              if (_3105 > _3107) {
                _3132 = int((_3102.y > 0.0f) ? ((_3100 >> 20u) & 1023u) : (_3101 & 1023u));
              } else {
                _3132 = int((_3102.z > 0.0f) ? ((_3101 >> 10u) & 1023u) : ((_3101 >> 20u) & 1023u));
              }
              _3140 = _3132;
            }
            int _3143 = _3096 ? int(_44_m6[_2158].w) : ((_3140 == 1023) ? (-1) : _3140);
            uint _3154 = asuint(_48_m11.x) + (uint(_3143) * 96u);
            uint _3156 = (_3154 + 64u) >> 2u;
            uint _3159 = _3156 + 1u;
            uint _3162 = _3156 + 2u;
            uint _3165 = _3156 + 3u;
            float4 _3169 = asfloat(uint4(_52.Load(_3156 * 4 + 0), _52.Load(_3159 * 4 + 0), _52.Load(_3162 * 4 + 0), _52.Load(_3165 * 4 + 0)));
            float3 _3176 = (_421 - ((_3102 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3102, _3102)))) * _3169.x)) + (_572 * (_3169.y * 5.0f));
            uint _3177 = _3154 >> 2u;
            uint _3192 = (_3154 + 16u) >> 2u;
            uint _3207 = (_3154 + 32u) >> 2u;
            uint _3222 = (_3154 + 48u) >> 2u;
            float4 _3242 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3177 * 4 + 0), _52.Load((_3177 + 1u) * 4 + 0), _52.Load((_3177 + 2u) * 4 + 0), _52.Load((_3177 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3192 * 4 + 0), _52.Load((_3192 + 1u) * 4 + 0), _52.Load((_3192 + 2u) * 4 + 0), _52.Load((_3192 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3207 * 4 + 0), _52.Load((_3207 + 1u) * 4 + 0), _52.Load((_3207 + 2u) * 4 + 0), _52.Load((_3207 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3222 * 4 + 0), _52.Load((_3222 + 1u) * 4 + 0), _52.Load((_3222 + 2u) * 4 + 0), _52.Load((_3222 + 3u) * 4 + 0))))), float4(_3176, 1.0f));
            float _3243 = _3242.w;
            float3 _3246 = _3242.xyz / _3243.xxx;
            uint _3248 = (_3154 + 80u) >> 2u;
            float4 _3261 = asfloat(uint4(_52.Load(_3248 * 4 + 0), _52.Load((_3248 + 1u) * 4 + 0), _52.Load((_3248 + 2u) * 4 + 0), _52.Load((_3248 + 3u) * 4 + 0)));
            float2 _3262 = _3246.xy;
            float2 _3264 = _3261.xy;
            float3 _3268 = _3246.xyz;
            bool3 _3269 = bool3(_3268.x <= 0.0f.xxx.x, _3268.y <= 0.0f.xxx.y, _3268.z <= 0.0f.xxx.z);
            bool3 _3270 = bool3(_3268.x >= 1.0f.xxx.x, _3268.y >= 1.0f.xxx.y, _3268.z >= 1.0f.xxx.z);
            float _3273 = _3246.z;
            float2 _3284 = ((_3262 * (_3261.zw - _3264)) + _3264).xy * _48_m10.zw;
            float2 _3286 = floor(_3284 + 0.5f.xx);
            float2 _3287 = _3284 - _3286;
            float _3288 = _3287.x;
            float _3289 = _3288 + 0.5f;
            float _3290 = _3289 * _3289;
            float _3293 = 1.0f - _3288;
            float _3294 = min(_3288, 0.0f);
            float _3297 = _3288 + 1.0f;
            float _3298 = max(_3288, 0.0f);
            float _3309 = _3287.y;
            float _3310 = _3309 + 0.5f;
            float _3311 = _3310 * _3310;
            float _3314 = 1.0f - _3309;
            float _3315 = min(_3309, 0.0f);
            float _3318 = _3309 + 1.0f;
            float _3319 = max(_3309, 0.0f);
            float3 _3331 = float3(0.1599999964237213134765625f * _3293, 0.1599999964237213134765625f * ((_3297 - (_3298 * _3298)) + 1.0f), _3290 * 0.07999999821186065673828125f);
            float3 _3332 = float3(0.1599999964237213134765625f * ((_3290 * 0.5f) - _3288), 0.1599999964237213134765625f * ((_3293 - (_3294 * _3294)) + 1.0f), 0.1599999964237213134765625f * _3297) + _3331;
            float3 _3334 = float3(0.1599999964237213134765625f * _3314, 0.1599999964237213134765625f * ((_3318 - (_3319 * _3319)) + 1.0f), _3311 * 0.07999999821186065673828125f);
            float3 _3335 = float3(0.1599999964237213134765625f * ((_3311 * 0.5f) - _3309), 0.1599999964237213134765625f * ((_3314 - (_3315 * _3315)) + 1.0f), 0.1599999964237213134765625f * _3318) + _3334;
            float3 _3341 = ((_3331 / _3332) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
            float3 _3343 = ((_3334 / _3335) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
            float2 _3345 = _3286 * _48_m10.xy;
            float _3346 = _3341.x;
            float _3347 = _3343.x;
            float2 _3349 = _3345 + float2(_3346, _3347);
            float _3350 = _3341.y;
            float2 _3352 = _3345 + float2(_3350, _3347);
            float _3353 = _3341.z;
            float2 _3355 = _3345 + float2(_3353, _3347);
            float _3356 = _3343.y;
            float2 _3358 = _3345 + float2(_3346, _3356);
            float2 _3360 = _3345 + float2(_3350, _3356);
            float2 _3362 = _3345 + float2(_3353, _3356);
            float _3363 = _3343.z;
            float2 _3365 = _3345 + float2(_3346, _3363);
            float2 _3367 = _3345 + float2(_3350, _3363);
            float2 _3369 = _3345 + float2(_3353, _3363);
            float _3370 = _3332.x;
            float _3371 = _3335.x;
            float _3373 = _3332.y;
            float _3375 = _3332.z;
            float _3377 = _3335.y;
            float _3381 = _3335.z;
            float _3447 = ((((((((_3370 * _3371) * _50.SampleCmpLevelZero(_26, float3(_3349, _380).xy, _3273)) + ((_3373 * _3371) * _50.SampleCmpLevelZero(_26, float3(_3352, _380).xy, _3273))) + ((_3375 * _3371) * _50.SampleCmpLevelZero(_26, float3(_3355, _380).xy, _3273))) + ((_3370 * _3377) * _50.SampleCmpLevelZero(_26, float3(_3358, _380).xy, _3273))) + ((_3373 * _3377) * _50.SampleCmpLevelZero(_26, float3(_3360, _380).xy, _3273))) + ((_3375 * _3377) * _50.SampleCmpLevelZero(_26, float3(_3362, _380).xy, _3273))) + ((_3370 * _3381) * _50.SampleCmpLevelZero(_26, float3(_3365, _380).xy, _3273))) + ((_3373 * _3381) * _50.SampleCmpLevelZero(_26, float3(_3367, _380).xy, _3273));
            float4 _3462 = asfloat(uint4(_52.Load(_3156 * 4 + 0), _52.Load(_3159 * 4 + 0), _52.Load(_3162 * 4 + 0), _52.Load(_3165 * 4 + 0)));
            float _3463 = _3462.w;
            float2 _3465 = min(_3262, 1.0f.xx - _3262);
            _3482 = ((_44_m6[_2146].xyz * (((((_629 * _2310.x) + ((1.0f.xxx - _629) * _2310.y)) * _2705) * _44_m6[_2167].z) + (_625 * _3093))) * _2283) * ((_3143 >= 0) ? lerp(1.0f, (any(bool3(_3269.x || _3270.x, _3269.y || _3270.y, _3269.z || _3270.z)) || ((asuint(_3273) & 2147483647u) > 2139095040u)) ? 1.0f : (_3447 + ((_3375 * _3381) * _50.SampleCmpLevelZero(_26, float3(_3369, _380).xy, _3273))), _3096 ? min(_3463, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3462.z - _3243) * 0.25f, min(_3465.x, _3465.y)))) : _3463) : 1.0f);
            break;
          } while (false);
          _4782 = _2106;
          _4783 = _3482 * _2246;
          break;
        }
        float _4780;
        float3 _4781;
        if (_44_m6[_2146].w < 1.5f) {
          float3 _4062 = float3(0.100000001490116119384765625f, _544, 1.0f);
          float _4071 = (0.5f + (0.5f * _44_m6[_2152].y)) - abs(_44_m6[_2152].x);
          float _4072 = _44_m6[_2152].y - _4071;
          float _4079 = abs(max((1.0f - abs(_4071)) - abs(_4072), 0.00048828125f));
          float3 _4083 = normalize(float3(_4071, _4072, (_44_m6[_2152].x >= 0.0f) ? _4079 : (-_4079)));
          float3 _4084 = _44_m6[_2149].xyz - _421;
          float _4085 = dot(_4084, _4084);
          float _4086 = rsqrt(_4085);
          float3 _4087 = _4084 * _4086;
          float _4091 = clamp(_44_m6[_2167].y * _4086, 0.0f, 1.0f);
          int _4096 = int(_44_m6[_2167].w);
          float3 _4097 = _4083 * _44_m6[_2152].z;
          float3 _4098 = _4097 * 0.5f;
          float3 _4099 = _4084 - _4098;
          float3 _4100 = _4084 + _4098;
          bool _4102 = (_2250 & 1u) == 0u;
          bool _4105 = _4102 || ((_2171 & 2u) != 0u);
          bool _4108 = (!_4102) && (_44_m6[_2152].z > 0.0f);
          float _4127;
          float _4128;
          if (_4108) {
            float _4112 = length(_4099);
            float _4113 = length(_4100);
            _4127 = clamp(0.5f * ((dot(_572, _4099) / _4112) + (dot(_572, _4100) / _4113)), 0.0f, 1.0f);
            _4128 = 1.0f / ((((_4112 * _4113) + dot(_4099, _4100)) * 0.5f) + 1.0f);
          } else {
            _4127 = clamp(dot(_572, _4087), 0.0f, 1.0f);
            _4128 = 1.0f;
          }
          float _4150;
          if (_44_m6[_2164].w < 0.0f) {
            float _4144 = _4085 * (_44_m6[_2149].w * _44_m6[_2149].w);
            float _4147 = clamp(1.0f - (_4144 * _4144), 0.0f, 1.0f);
            _4150 = lerp(1.0f / (_4085 + 1.0f), _4128, float(_4108)) * (_4147 * _4147);
          } else {
            float3 _4133 = _4084 * _44_m6[_2149].w;
            _4150 = _4128 * pow(1.0f - clamp(dot(_4133, _4133), 0.0f, 1.0f), _44_m6[_2164].w);
          }
          float _4156 = clamp((dot(_4087, -_4083) - _44_m6[_2152].z) * _44_m6[_2152].w, 0.0f, 1.0f);
          float _4160 = _4150 * lerp(1.0f, _4156 * _4156, float(_4102));
          float _4260;
          if ((!_4108) && (_4096 >= 0)) {
            uint _4166 = uint(_4096);
            float2 _4253;
            [branch] if (_4102) {
              float4 _4243 = mul(_68_m1[_4166], _425);
              _4253 = _68_m0[_4166].xy + (clamp(_4243.xy / _4243.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_4166].zw);
            }
            else {
              float3 _4180 = mul(float4(-_4084, 0.0f), _68_m1[_4166]).xyz;
              float3 _386 = _4180;
              float3 _385 = _4180;
              float3 _384 = abs(_4180);
              uint _4189 = uint(int(_384.y > _384.x));
              uint _4195 = (_384.z > _384[_4189]) ? 2u : _4189;
              uint _4201 = (_4195 * 2u) + uint(_385[_4195] < 0.0f);
              float _4205 = abs(_386[_4201 / 2u]);
              float _4225 = 0.5f - (0.000244140625f / _68_m0[_4166].w);
              _4253 = _68_m0[_4166].xy + (clamp(float2((float(_4201) + ((((_386[uint(_359[_4201].x)] * _360[_4201].x) / _4205) * _4225) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_386[uint(_359[_4201].y)] * _360[_4201].y) / _4205) * _4225)), 0.0f.xx, 1.0f.xx) * _68_m0[_4166].zw);
            }
            _4260 = _4160 * _66.SampleLevel(_23, _4253, 0.0f).x;
          } else {
            _4260 = _4160;
          }
          bool _4261 = _4260 > 0.0f;
          float _4645;
          if (_4261) {
            int _4314;
            if (_4105) {
              _4314 = int(_44_m6[_2155].x);
            } else {
              uint _4269 = asuint(_44_m6[_2152].w);
              uint _4270 = asuint(_44_m6[_2155].x);
              float3 _4271 = _421 - _44_m6[_2149].xyz;
              float3 _4272 = abs(_4271);
              float _4273 = _4272.x;
              float _4274 = _4272.y;
              float _4276 = _4272.z;
              int _4309;
              if ((_4273 > _4274) && (_4273 > _4276)) {
                _4309 = int((_4271.x > 0.0f) ? (_4269 & 1023u) : ((_4269 >> 10u) & 1023u));
              } else {
                int _4301;
                if (_4274 > _4276) {
                  _4301 = int((_4271.y > 0.0f) ? ((_4269 >> 20u) & 1023u) : (_4270 & 1023u));
                } else {
                  _4301 = int((_4271.z > 0.0f) ? ((_4270 >> 10u) & 1023u) : ((_4270 >> 20u) & 1023u));
                }
                _4309 = _4301;
              }
              _4314 = (_4309 == 1023) ? (-1) : _4309;
            }
            uint _4321 = asuint(_48_m11.x) + (uint(_4314) * 96u);
            uint _4323 = (_4321 + 64u) >> 2u;
            uint _4326 = _4323 + 1u;
            uint _4329 = _4323 + 2u;
            uint _4332 = _4323 + 3u;
            float4 _4336 = asfloat(uint4(_52.Load(_4323 * 4 + 0), _52.Load(_4326 * 4 + 0), _52.Load(_4329 * 4 + 0), _52.Load(_4332 * 4 + 0)));
            float3 _4343 = (_421 - ((-_4087) * _4336.x)) + (_572 * (_4336.y * 5.0f));
            uint _4344 = _4321 >> 2u;
            uint _4359 = (_4321 + 16u) >> 2u;
            uint _4374 = (_4321 + 32u) >> 2u;
            uint _4389 = (_4321 + 48u) >> 2u;
            float4 _4409 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_4344 * 4 + 0), _52.Load((_4344 + 1u) * 4 + 0), _52.Load((_4344 + 2u) * 4 + 0), _52.Load((_4344 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4359 * 4 + 0), _52.Load((_4359 + 1u) * 4 + 0), _52.Load((_4359 + 2u) * 4 + 0), _52.Load((_4359 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4374 * 4 + 0), _52.Load((_4374 + 1u) * 4 + 0), _52.Load((_4374 + 2u) * 4 + 0), _52.Load((_4374 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4389 * 4 + 0), _52.Load((_4389 + 1u) * 4 + 0), _52.Load((_4389 + 2u) * 4 + 0), _52.Load((_4389 + 3u) * 4 + 0))))), float4(_4343, 1.0f));
            float _4410 = _4409.w;
            float3 _4413 = _4409.xyz / _4410.xxx;
            uint _4415 = (_4321 + 80u) >> 2u;
            float4 _4428 = asfloat(uint4(_52.Load(_4415 * 4 + 0), _52.Load((_4415 + 1u) * 4 + 0), _52.Load((_4415 + 2u) * 4 + 0), _52.Load((_4415 + 3u) * 4 + 0)));
            float2 _4429 = _4413.xy;
            float2 _4431 = _4428.xy;
            float3 _4435 = _4413.xyz;
            bool3 _4436 = bool3(_4435.x <= 0.0f.xxx.x, _4435.y <= 0.0f.xxx.y, _4435.z <= 0.0f.xxx.z);
            bool3 _4437 = bool3(_4435.x >= 1.0f.xxx.x, _4435.y >= 1.0f.xxx.y, _4435.z >= 1.0f.xxx.z);
            float _4440 = _4413.z;
            float2 _4451 = ((_4429 * (_4428.zw - _4431)) + _4431).xy * _48_m10.zw;
            float2 _4453 = floor(_4451 + 0.5f.xx);
            float2 _4454 = _4451 - _4453;
            float _4455 = _4454.x;
            float _4456 = _4455 + 0.5f;
            float _4457 = _4456 * _4456;
            float _4460 = 1.0f - _4455;
            float _4461 = min(_4455, 0.0f);
            float _4464 = _4455 + 1.0f;
            float _4465 = max(_4455, 0.0f);
            float _4476 = _4454.y;
            float _4477 = _4476 + 0.5f;
            float _4478 = _4477 * _4477;
            float _4481 = 1.0f - _4476;
            float _4482 = min(_4476, 0.0f);
            float _4485 = _4476 + 1.0f;
            float _4486 = max(_4476, 0.0f);
            float3 _4498 = float3(0.1599999964237213134765625f * _4460, 0.1599999964237213134765625f * ((_4464 - (_4465 * _4465)) + 1.0f), _4457 * 0.07999999821186065673828125f);
            float3 _4499 = float3(0.1599999964237213134765625f * ((_4457 * 0.5f) - _4455), 0.1599999964237213134765625f * ((_4460 - (_4461 * _4461)) + 1.0f), 0.1599999964237213134765625f * _4464) + _4498;
            float3 _4501 = float3(0.1599999964237213134765625f * _4481, 0.1599999964237213134765625f * ((_4485 - (_4486 * _4486)) + 1.0f), _4478 * 0.07999999821186065673828125f);
            float3 _4502 = float3(0.1599999964237213134765625f * ((_4478 * 0.5f) - _4476), 0.1599999964237213134765625f * ((_4481 - (_4482 * _4482)) + 1.0f), 0.1599999964237213134765625f * _4485) + _4501;
            float3 _4508 = ((_4498 / _4499) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
            float3 _4510 = ((_4501 / _4502) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
            float2 _4512 = _4453 * _48_m10.xy;
            float _4513 = _4508.x;
            float _4514 = _4510.x;
            float2 _4516 = _4512 + float2(_4513, _4514);
            float _4517 = _4508.y;
            float2 _4519 = _4512 + float2(_4517, _4514);
            float _4520 = _4508.z;
            float2 _4522 = _4512 + float2(_4520, _4514);
            float _4523 = _4510.y;
            float2 _4525 = _4512 + float2(_4513, _4523);
            float2 _4527 = _4512 + float2(_4517, _4523);
            float2 _4529 = _4512 + float2(_4520, _4523);
            float _4530 = _4510.z;
            float2 _4532 = _4512 + float2(_4513, _4530);
            float2 _4534 = _4512 + float2(_4517, _4530);
            float2 _4536 = _4512 + float2(_4520, _4530);
            float _4537 = _4499.x;
            float _4538 = _4502.x;
            float _4540 = _4499.y;
            float _4542 = _4499.z;
            float _4544 = _4502.y;
            float _4548 = _4502.z;
            float _4614 = ((((((((_4537 * _4538) * _50.SampleCmpLevelZero(_26, float3(_4516, _380).xy, _4440)) + ((_4540 * _4538) * _50.SampleCmpLevelZero(_26, float3(_4519, _380).xy, _4440))) + ((_4542 * _4538) * _50.SampleCmpLevelZero(_26, float3(_4522, _380).xy, _4440))) + ((_4537 * _4544) * _50.SampleCmpLevelZero(_26, float3(_4525, _380).xy, _4440))) + ((_4540 * _4544) * _50.SampleCmpLevelZero(_26, float3(_4527, _380).xy, _4440))) + ((_4542 * _4544) * _50.SampleCmpLevelZero(_26, float3(_4529, _380).xy, _4440))) + ((_4537 * _4548) * _50.SampleCmpLevelZero(_26, float3(_4532, _380).xy, _4440))) + ((_4540 * _4548) * _50.SampleCmpLevelZero(_26, float3(_4534, _380).xy, _4440));
            float4 _4629 = asfloat(uint4(_52.Load(_4323 * 4 + 0), _52.Load(_4326 * 4 + 0), _52.Load(_4329 * 4 + 0), _52.Load(_4332 * 4 + 0)));
            float _4630 = _4629.w;
            float2 _4632 = min(_4429, 1.0f.xx - _4429);
            _4645 = (_4314 >= 0) ? lerp(1.0f, (any(bool3(_4436.x || _4437.x, _4436.y || _4437.y, _4436.z || _4437.z)) || ((asuint(_4440) & 2147483647u) > 2139095040u)) ? 1.0f : (_4614 + ((_4542 * _4548) * _50.SampleCmpLevelZero(_26, float3(_4536, _380).xy, _4440))), _4105 ? min(_4630, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4629.z - _4410) * 0.25f, min(_4632.x, _4632.y)))) : _4630) : 1.0f;
          } else {
            _4645 = 1.0f;
          }
          float3 _4668;
          float3 _4669;
          if (_4108) {
            float3 _4648 = _4062 * _4062;
            float _4657 = dot(_1113, _4097);
            _4668 = _4648 / clamp(_4648 + (0.5f * clamp(_44_m6[_2152].z * _4086, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4669 = normalize(_4099 + (_4097 * clamp(dot(_4099, (_1113 * _4657) - _4097) / ((_44_m6[_2152].z * _44_m6[_2152].z) - (_4657 * _4657)), 0.0f, 1.0f)));
          } else {
            _4668 = 1.0f.xxx;
            _4669 = _4087;
          }
          float3 _4670 = _4669 + _458;
          float3 _4674 = _4670 * rsqrt(max(6.103515625e-05f, dot(_4670, _4670)));
          float3 _4779;
          if (_4261) {
            float _4677 = clamp(_4127, 0.0f, 1.0f);
            float _4679 = clamp(dot(_572, _4674), 0.0f, 1.0f);
            float _4681 = clamp(dot(_458, _4674), 0.0f, 1.0f);
            float _4682 = clamp(_630, 0.0f, 1.0f);
            float _4683 = _544 * _544;
            float _4693;
            if (_4091 > 0.0f) {
              _4693 = clamp(_4683 + ((_4091 * _4091) / ((_4681 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4693 = _4683;
            }
            float _4694 = _4693 * _4693;
            float _4715 = (((_4679 * _4694) - _4679) * _4679) + 1.0f;
            float _4720 = 1.0f - _4681;
            float _4721 = _4720 * _4720;
            float _4723 = (_4720 * _4721) * _4721;
            float _4747 = 1.0f - _544;
            float _4754 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4747 * (1.04997003078460693359375f + (_4747 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4747))))));
            float _4755 = 1.0f - _4754;
            float3 _4758 = _629 + ((1.0f.xxx - _629) * 0.0476190485060214996337890625f);
            float3 _4778 = ((clamp((min(((_629 * (1.0f - _4723)) + _4723.xxx) * (((_4694 / (_4715 * _4715)) * _4668.y) * (0.5f / (((_4677 * sqrt(((((-_4682) * _4694) + _4682) * _4682) + _4694)) + (_4682 * sqrt(((((-_4677) * _4694) + _4677) * _4677) + _4694))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4758 * (((_58.SampleLevel(_23, (float2(_4682, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_4677, _544) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4754) / _4755)) * _4758) / (1.0f.xxx - (_4758 * _4755)))) * _44_m6[_2167].z, 0.0f.xxx, 1000.0f.xxx) * _4127) + ((_625 * _4668.z) * _4127)) * (((_44_m6[_2146].xyz * _4260) * _4645) * _2246);
            _4779 = _4778;
          } else {
            _4779 = 0.0f.xxx;
          }
          _4780 = _2106;
          _4781 = _4779;
        } else {
          float _4060;
          do {
            if (_2253) {
              _4060 = 1.0f;
              break;
            }
            float _3499 = (0.5f + (0.5f * _44_m6[_2152].y)) - abs(_44_m6[_2152].x);
            float _3500 = _44_m6[_2152].y - _3499;
            float _3507 = abs(max((1.0f - abs(_3499)) - abs(_3500), 0.00048828125f));
            float3 _3511 = normalize(float3(_3499, _3500, (_44_m6[_2152].x >= 0.0f) ? _3507 : (-_3507)));
            float3 _3512 = _44_m6[_2149].xyz - _421;
            float _3513 = dot(_3512, _3512);
            float3 _3515 = _3512 * rsqrt(_3513);
            int _3518 = int(_44_m6[_2167].w);
            float3 _3520 = (_3511 * _44_m6[_2152].z) * 0.5f;
            float3 _3521 = _3512 - _3520;
            float3 _3522 = _3512 + _3520;
            bool _3524 = (_2250 & 1u) == 0u;
            bool _3527 = _3524 || ((_2171 & 2u) != 0u);
            bool _3530 = (!_3524) && (_44_m6[_2152].z > 0.0f);
            float _3542;
            if (_3530) {
              _3542 = 1.0f / ((((length(_3521) * length(_3522)) + dot(_3521, _3522)) * 0.5f) + 1.0f);
            } else {
              _3542 = 1.0f;
            }
            float _3564;
            if (_44_m6[_2164].w < 0.0f) {
              float _3558 = _3513 * (_44_m6[_2149].w * _44_m6[_2149].w);
              float _3561 = clamp(1.0f - (_3558 * _3558), 0.0f, 1.0f);
              _3564 = lerp(1.0f / (_3513 + 1.0f), _3542, float(_3530)) * (_3561 * _3561);
            } else {
              float3 _3547 = _3512 * _44_m6[_2149].w;
              _3564 = _3542 * pow(1.0f - clamp(dot(_3547, _3547), 0.0f, 1.0f), _44_m6[_2164].w);
            }
            float _3570 = clamp((dot(_3515, -_3511) - _44_m6[_2152].z) * _44_m6[_2152].w, 0.0f, 1.0f);
            float _3574 = _3564 * lerp(1.0f, _3570 * _3570, float(_3524));
            float _3674;
            if ((!_3530) && (_3518 >= 0)) {
              uint _3580 = uint(_3518);
              float2 _3667;
              [branch] if (_3524) {
                float4 _3657 = mul(_68_m1[_3580], _425);
                _3667 = _68_m0[_3580].xy + (clamp(_3657.xy / _3657.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_3580].zw);
              }
              else {
                float3 _3594 = mul(float4(-_3512, 0.0f), _68_m1[_3580]).xyz;
                float3 _389 = _3594;
                float3 _388 = _3594;
                float3 _387 = abs(_3594);
                uint _3603 = uint(int(_387.y > _387.x));
                uint _3609 = (_387.z > _387[_3603]) ? 2u : _3603;
                uint _3615 = (_3609 * 2u) + uint(_388[_3609] < 0.0f);
                float _3619 = abs(_389[_3615 / 2u]);
                float _3639 = 0.5f - (0.000244140625f / _68_m0[_3580].w);
                _3667 = _68_m0[_3580].xy + (clamp(float2((float(_3615) + ((((_389[uint(_359[_3615].x)] * _360[_3615].x) / _3619) * _3639) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_359[_3615].y)] * _360[_3615].y) / _3619) * _3639)), 0.0f.xx, 1.0f.xx) * _68_m0[_3580].zw);
              }
              _3674 = _3574 * _66.SampleLevel(_23, _3667, 0.0f).x;
            } else {
              _3674 = _3574;
            }
            float _4059;
            if (_3674 > 0.0f) {
              int _3728;
              if (_3527) {
                _3728 = int(_44_m6[_2155].x);
              } else {
                uint _3683 = asuint(_44_m6[_2152].w);
                uint _3684 = asuint(_44_m6[_2155].x);
                float3 _3685 = _421 - _44_m6[_2149].xyz;
                float3 _3686 = abs(_3685);
                float _3687 = _3686.x;
                float _3688 = _3686.y;
                float _3690 = _3686.z;
                int _3723;
                if ((_3687 > _3688) && (_3687 > _3690)) {
                  _3723 = int((_3685.x > 0.0f) ? (_3683 & 1023u) : ((_3683 >> 10u) & 1023u));
                } else {
                  int _3715;
                  if (_3688 > _3690) {
                    _3715 = int((_3685.y > 0.0f) ? ((_3683 >> 20u) & 1023u) : (_3684 & 1023u));
                  } else {
                    _3715 = int((_3685.z > 0.0f) ? ((_3684 >> 10u) & 1023u) : ((_3684 >> 20u) & 1023u));
                  }
                  _3723 = _3715;
                }
                _3728 = (_3723 == 1023) ? (-1) : _3723;
              }
              uint _3735 = asuint(_48_m11.x) + (uint(_3728) * 96u);
              uint _3737 = (_3735 + 64u) >> 2u;
              uint _3740 = _3737 + 1u;
              uint _3743 = _3737 + 2u;
              uint _3746 = _3737 + 3u;
              float4 _3750 = asfloat(uint4(_52.Load(_3737 * 4 + 0), _52.Load(_3740 * 4 + 0), _52.Load(_3743 * 4 + 0), _52.Load(_3746 * 4 + 0)));
              float3 _3757 = (_421 - ((-_3515) * _3750.x)) + (_572 * (_3750.y * 5.0f));
              uint _3758 = _3735 >> 2u;
              uint _3773 = (_3735 + 16u) >> 2u;
              uint _3788 = (_3735 + 32u) >> 2u;
              uint _3803 = (_3735 + 48u) >> 2u;
              float4 _3823 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3758 * 4 + 0), _52.Load((_3758 + 1u) * 4 + 0), _52.Load((_3758 + 2u) * 4 + 0), _52.Load((_3758 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3773 * 4 + 0), _52.Load((_3773 + 1u) * 4 + 0), _52.Load((_3773 + 2u) * 4 + 0), _52.Load((_3773 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3788 * 4 + 0), _52.Load((_3788 + 1u) * 4 + 0), _52.Load((_3788 + 2u) * 4 + 0), _52.Load((_3788 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3803 * 4 + 0), _52.Load((_3803 + 1u) * 4 + 0), _52.Load((_3803 + 2u) * 4 + 0), _52.Load((_3803 + 3u) * 4 + 0))))), float4(_3757, 1.0f));
              float _3824 = _3823.w;
              float3 _3827 = _3823.xyz / _3824.xxx;
              uint _3829 = (_3735 + 80u) >> 2u;
              float4 _3842 = asfloat(uint4(_52.Load(_3829 * 4 + 0), _52.Load((_3829 + 1u) * 4 + 0), _52.Load((_3829 + 2u) * 4 + 0), _52.Load((_3829 + 3u) * 4 + 0)));
              float2 _3843 = _3827.xy;
              float2 _3845 = _3842.xy;
              float3 _3849 = _3827.xyz;
              bool3 _3850 = bool3(_3849.x <= 0.0f.xxx.x, _3849.y <= 0.0f.xxx.y, _3849.z <= 0.0f.xxx.z);
              bool3 _3851 = bool3(_3849.x >= 1.0f.xxx.x, _3849.y >= 1.0f.xxx.y, _3849.z >= 1.0f.xxx.z);
              float _3854 = _3827.z;
              float2 _3865 = ((_3843 * (_3842.zw - _3845)) + _3845).xy * _48_m10.zw;
              float2 _3867 = floor(_3865 + 0.5f.xx);
              float2 _3868 = _3865 - _3867;
              float _3869 = _3868.x;
              float _3870 = _3869 + 0.5f;
              float _3871 = _3870 * _3870;
              float _3874 = 1.0f - _3869;
              float _3875 = min(_3869, 0.0f);
              float _3878 = _3869 + 1.0f;
              float _3879 = max(_3869, 0.0f);
              float _3890 = _3868.y;
              float _3891 = _3890 + 0.5f;
              float _3892 = _3891 * _3891;
              float _3895 = 1.0f - _3890;
              float _3896 = min(_3890, 0.0f);
              float _3899 = _3890 + 1.0f;
              float _3900 = max(_3890, 0.0f);
              float3 _3912 = float3(0.1599999964237213134765625f * _3874, 0.1599999964237213134765625f * ((_3878 - (_3879 * _3879)) + 1.0f), _3871 * 0.07999999821186065673828125f);
              float3 _3913 = float3(0.1599999964237213134765625f * ((_3871 * 0.5f) - _3869), 0.1599999964237213134765625f * ((_3874 - (_3875 * _3875)) + 1.0f), 0.1599999964237213134765625f * _3878) + _3912;
              float3 _3915 = float3(0.1599999964237213134765625f * _3895, 0.1599999964237213134765625f * ((_3899 - (_3900 * _3900)) + 1.0f), _3892 * 0.07999999821186065673828125f);
              float3 _3916 = float3(0.1599999964237213134765625f * ((_3892 * 0.5f) - _3890), 0.1599999964237213134765625f * ((_3895 - (_3896 * _3896)) + 1.0f), 0.1599999964237213134765625f * _3899) + _3915;
              float3 _3922 = ((_3912 / _3913) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
              float3 _3924 = ((_3915 / _3916) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
              float2 _3926 = _3867 * _48_m10.xy;
              float _3927 = _3922.x;
              float _3928 = _3924.x;
              float2 _3930 = _3926 + float2(_3927, _3928);
              float _3931 = _3922.y;
              float2 _3933 = _3926 + float2(_3931, _3928);
              float _3934 = _3922.z;
              float2 _3936 = _3926 + float2(_3934, _3928);
              float _3937 = _3924.y;
              float2 _3939 = _3926 + float2(_3927, _3937);
              float2 _3941 = _3926 + float2(_3931, _3937);
              float2 _3943 = _3926 + float2(_3934, _3937);
              float _3944 = _3924.z;
              float2 _3946 = _3926 + float2(_3927, _3944);
              float2 _3948 = _3926 + float2(_3931, _3944);
              float2 _3950 = _3926 + float2(_3934, _3944);
              float _3951 = _3913.x;
              float _3952 = _3916.x;
              float _3954 = _3913.y;
              float _3956 = _3913.z;
              float _3958 = _3916.y;
              float _3962 = _3916.z;
              float _4028 = ((((((((_3951 * _3952) * _50.SampleCmpLevelZero(_26, float3(_3930, _380).xy, _3854)) + ((_3954 * _3952) * _50.SampleCmpLevelZero(_26, float3(_3933, _380).xy, _3854))) + ((_3956 * _3952) * _50.SampleCmpLevelZero(_26, float3(_3936, _380).xy, _3854))) + ((_3951 * _3958) * _50.SampleCmpLevelZero(_26, float3(_3939, _380).xy, _3854))) + ((_3954 * _3958) * _50.SampleCmpLevelZero(_26, float3(_3941, _380).xy, _3854))) + ((_3956 * _3958) * _50.SampleCmpLevelZero(_26, float3(_3943, _380).xy, _3854))) + ((_3951 * _3962) * _50.SampleCmpLevelZero(_26, float3(_3946, _380).xy, _3854))) + ((_3954 * _3962) * _50.SampleCmpLevelZero(_26, float3(_3948, _380).xy, _3854));
              float4 _4043 = asfloat(uint4(_52.Load(_3737 * 4 + 0), _52.Load(_3740 * 4 + 0), _52.Load(_3743 * 4 + 0), _52.Load(_3746 * 4 + 0)));
              float _4044 = _4043.w;
              float2 _4046 = min(_3843, 1.0f.xx - _3843);
              _4059 = (_3728 >= 0) ? lerp(1.0f, (any(bool3(_3850.x || _3851.x, _3850.y || _3851.y, _3850.z || _3851.z)) || ((asuint(_3854) & 2147483647u) > 2139095040u)) ? 1.0f : (_4028 + ((_3956 * _3962) * _50.SampleCmpLevelZero(_26, float3(_3950, _380).xy, _3854))), _3527 ? min(_4044, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4043.z - _3824) * 0.25f, min(_4046.x, _4046.y)))) : _4044) : 1.0f;
            } else {
              _4059 = 1.0f;
            }
            _4060 = _4059;
            break;
          } while (false);
          _4780 = _2106 * _4060;
          _4781 = 0.0f.xxx;
        }
        _4782 = _4780;
        _4783 = _4781;
        break;
      } while (false);
      _2131 = _4782;
      _2134 = _2133 + _4783;
    }
    _2103 = _2102 + _2133;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xFB54B90B:
  float3 _4789 = ((((float3(_1092, _1097, _1102) * _625) * lerp(1.0f, _514.z, _39_m4)) * _18_m22.x) + ((((_1386 * _18_m23.z) * _18_m22.y) * ((_629 * _644.x) + (clamp(50.0f * _629.y, 0.0f, 1.0f) * _644.y).xxx)) * 1.0f)) + (_2077.xyz + (_2102 * _2105)).xyz;
  */
  float3 _4789 = ((((float3(_1092, _1097, _1102) * (_625 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _514.z, _39_m4)) * _18_m22.x) + (((((_1386 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_629 * _644.x) + (clamp(50.0f * _629.y, 0.0f, 1.0f) * _644.y).xxx)) * 1.0f)) + (_2077.xyz + ((_2102 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2105)).xyz;
  // RenoDX code end
  float4 _4790 = float4(_4789.x, _4789.y, _4789.z, _381.w);
  _4790.w = _539;
  float _4807 = _421.y * _18_m46.w;
  float _4812 = max(0.00999999977648258209228515625f, _4807 + _18_m47.w);
  float3 _4826 = exp(_18_m45.xyz * ((-max(0.0f, (_459 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4812)) / _4812) * exp(_4807 + _18_m48.w))));
  float _4829 = dot(_1112, _18_m44.xyz);
  float _4835 = _18_m45.w * _18_m45.w;
  float _4839 = (1.0f + _4835) - ((2.0f * _18_m45.w) * _4829);
  float3 _5171;
  float _5172;
  if (_18_m55.z > 0.0f) {
    uint3 _4997 = (uint3(int3(int(_684.x), int(_684.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4998 = _4997.y;
    uint _4999 = _4997.z;
    uint _5002 = _4997.x + (_4998 * _4999);
    uint _5004 = _4998 + (_4999 * _5002);
    uint _5006 = _4999 + (_5002 * _5004);
    uint _5008 = _5002 + (_5004 * _5006);
    float _5032 = dot(_1112, -_16_m0[2].xyz);
    float3 _5042 = _421 - _16_m11.xyz;
    float _5044 = (_18_m55.w * ((_5032 > 5.9604644775390625e-08f) ? (1.0f / _5032) : 0.0f)) * (1.0f / _459);
    float _5045 = _5042.y;
    float _5046 = _5044 * _5045;
    float _5048 = _16_m11.y + _5046;
    float _5049 = _5045 - _5046;
    float _5051 = (1.0f - _5044) * _459;
    float _5065 = max(-127.0f, _18_m49.z * _5049);
    float _5089 = max(-127.0f, _18_m52.x * _5049);
    float _5100 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5048 - _18_m49.x)))) * ((abs(_5065) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5065)) / _5065) : (0.693147182464599609375f - (0.2402265071868896484375f * _5065)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5048 - _18_m52.z)))) * ((abs(_5089) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5089)) / _5089) : (0.693147182464599609375f - (0.2402265071868896484375f * _5089))));
    float _5122 = clamp((_459 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5125 = clamp((max(clamp(exp2(-(_5100 * _5051)), 0.0f, 1.0f), _18_m51.w) + clamp((_459 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5122, 0.0f, 1.0f);
    float4 _5165 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_23, float3((_1122 + ((((float3(uint3(_5008, _5004 + (_5006 * _5008), _382) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_685 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_685 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5171 = _5165.xyz + (((_18_m51.xyz * (1.0f - _5125)) + (((_18_m54.xyz * pow(clamp(dot(_458, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5100 * max(_5051 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5122))) * _5165.w);
    _5172 = _5165.w * _5125;
  } else {
    float3 _4869 = _421 - _16_m11.xyz;
    float _4871 = _4869.y;
    float _4885 = max(-127.0f, _18_m49.z * _4871);
    float _4909 = max(-127.0f, _18_m52.x * _4871);
    float _4920 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_4885) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4885)) / _4885) : (0.693147182464599609375f - (0.2402265071868896484375f * _4885)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_4909) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4909)) / _4909) : (0.693147182464599609375f - (0.2402265071868896484375f * _4909))));
    float _4942 = clamp((_459 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _4945 = clamp((max(clamp(exp2(-(_4920 * _459)), 0.0f, 1.0f), _18_m51.w) + clamp((_459 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _4942, 0.0f, 1.0f);
    _5171 = (_18_m51.xyz * (1.0f - _4945)) + (((_18_m54.xyz * pow(clamp(dot(_458, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_4920 * max(_459 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4942));
    _5172 = _4945;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xFB54B90B:
  float3 _5178 = ((_4790.xyz * (_4826 * _5172)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4829 * _4829)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4835) / max((12.56637096405029296875f * _4839) * sqrt(_4839), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4826)) * _5172) + _5171)).xyz;
  */
  float3 _5178 = ((_4790.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4826 * _5172)) : (_4826 * _5172))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4829 * _4829)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4835) / max((12.56637096405029296875f * _4839) * sqrt(_4839), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4826)) * _5172 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5171 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5188 = lerp(dot(_5178, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5178, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5198 = min(lerp(((sqrt(sqrt(abs(_597 * 0.5f))) * float2(int2(sign(_597)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _584.xx), 1.0f.xx);
  float4 _5199 = float4(_5198.x, _5198.y, _381.z, _381.w);
  _5199.z = float(clamp(max(dot(_5188.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _539, _539) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5199.w = lerp(0.0f, 0.699999988079071044921875f, _584);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xFB54B90B:
  _13 = float4(_5188.x, _5188.y, _5188.z, _4790.w);
  */
  float3 renodx_output_color = float3(_5188.x, _5188.y, _5188.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4790.w);
  // RenoDX code end
  _14 = _5199;
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

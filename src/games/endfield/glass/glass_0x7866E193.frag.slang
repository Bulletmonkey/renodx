#include "../shared.h"

// Ported from the native 0x7866E193 Vulkan dump.
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
  float _410 = max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z);
  float _419 = frac(52.98291778564453125f * frac(dot(floor((gl_FragCoord.xy * max(_41_m23, 1.0f)) * 0.5f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f))));
  float _421 = abs(_419);
  if (min(_21_m0[_11]._m1.x - ((_21_m0[_11]._m1.x >= 0.0f) ? _421 : (-_421)), (1.0f - _410) - _419) < 0.0f) {
    discard;
  }
  float2 _438 = gl_FragCoord.xy * _18_m0.zw;
  float2 _441 = (_438 * 2.0f) - 1.0f.xx;
  float4 _444 = float4(_441, gl_FragCoord.z, 1.0f);
  _444.y = -_441.y;
  float4 _447 = mul(_16_m6, _444);
  float3 _451 = _447.xyz / _447.w.xxx;
  float4 _455 = float4(_451, 1.0f);
  float _462 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _484;
  do {
    if (_18_m4.w == 0.0f) {
      _484 = _16_m11.xyz - _451;
      break;
    } else {
      _484 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _485 = dot(_484, _484);
  float _487 = rsqrt(max(_485, 9.9999999392252902907785028219223e-09f));
  float3 _488 = _484 * _487;
  float _489 = _485 * _487;
  float2 _510 = (lerp(_4, _5, _41_m12.xx) * _41_m36.xy) + _41_m36.zw;
  float4 _524 = _34.SampleBias(_35, (lerp(_4, _5, _41_m11.xx) * _41_m35.xy) + _41_m35.zw, _18_m16);
  float4 _528 = _36.SampleBias(_37, _510, _41_m13 + _18_m16);
  _528.w = _528.w * _528.x;
  float2 _536 = ((_528.wy * 2.0f) - 1.0f.xx).xy;
  float2 _542 = _536 * _41_m0;
  float4 _544 = _38.SampleBias(_39, _510, _18_m16);
  float3 _559 = lerp(clamp((_524.xyz * _41_m32.xyz) * _41_m18, 0.0f.xxx, 1.0f.xxx), _41_m32.xyz, _41_m16.xxx);
  float _563 = _524.w * _41_m32.w;
  float _569 = lerp(_563, _563 * _8.x, _41_m46);
  float _574 = lerp(_41_m2, _41_m3, _544.y);
  float _584 = lerp(_544.x, _41_m17, clamp(_41_m15 - 1.0f, 0.0f, 1.0f));
  float3 _598 = ((_7.xyz * _542.x) + ((cross(_6, float4(_7.xyz, _462).xyz) * _462) * _542.y)) + (_6 * (max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_536, _536), 0.0f, 1.0f))) * ((gl_FrontFacing ? true : false) ? 1.0f : ((_41_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _602 = _598 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_598, _598)));
  float _609 = clamp(float(int(sign(_410 + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _622 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _622.y = -_622.y;
  float _648 = 0.07999999821186065673828125f * _41_m1;
  float3 _649 = _559 * _584;
  float3 _650 = _559 - _649;
  float3 _654 = (_648 - (_648 * _584)).xxx + _649;
  float _655 = dot(_602, _488);
  float4 _658 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _574) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _659 = _658.x;
  float2 _669 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_659 * _659, exp2((-9.27999973297119140625f) * max(0.0f, _655))) * _659) + _658.y)) + _658.zw;
  uint2 _709;
  float _710;
  if (_18_m24.y == 1.0f) {
    float4 _686 = mul(_18_m138, _455);
    float4 _689 = _686;
    _689.y = -_686.y;
    float4 _692 = _689 * (1.0f / _686.w);
    _709 = uint2(clamp(((_692.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _710 = 1.0f / ((_18_m2.z * _692.z) + _18_m2.w);
  } else {
    _709 = uint2(gl_FragCoord.xy);
    _710 = abs(mul(_16_m0, _455).z);
  }
  float3 _712 = _451 + (_602 * 0.25f);
  float3 _722 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _731 = _712 - (_18_m108.xyz + (_722 * (-_18_m110.w)));
  float _746 = max(min(max((max(abs(_731.x), abs(_731.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_731.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1048;
  float4 _1049;
  float4 _1050;
  float _1051;
  float _1052;
  if ((_18_m108.w != 0.0f) && (_746 < 1.0f)) {
    float3 _759 = _712 - (_18_m108.xyz + (_722 * (-_18_m110.y)));
    float _773 = max(clamp((max(abs(_759.x), abs(_759.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_759.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _849;
    float4 _850;
    float4 _851;
    float4 _852;
    if (_773 < 1.0f) {
      float3 _782 = ((_712 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _784 = _782 - floor(_782);
      float4 _788 = _61.SampleLevel(_24, _784, 0.0f);
      float _789 = 1.0f - _773;
      float _793 = _18_m109.y * 0.5f;
      float _798 = _784.x;
      float _799 = clamp(_784.y, _793, 1.0f - _793) * 0.3333333432674407958984375f;
      float _800 = _784.z;
      float4 _803 = _62.SampleLevel(_23, float3(_798, _799, _800), 0.0f);
      _849 = _746 + (_803.w * _789);
      _850 = float4(((_62.SampleLevel(_23, float3(_798, _799 + 0.666666686534881591796875f, _800), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _788.z, _788.z) * _789;
      _851 = float4(((_62.SampleLevel(_23, float3(_798, _799 + 0.3333333432674407958984375f, _800), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _788.y, _788.y) * _789;
      _852 = float4(((_803.xyz * 4.0f) - 2.0f.xxx) * _788.x, _788.x) * _789;
    } else {
      _849 = _746;
      _850 = 0.0f.xxxx;
      _851 = 0.0f.xxxx;
      _852 = 0.0f.xxxx;
    }
    float3 _858 = _712 - (_18_m108.xyz + (_722 * (-_18_m110.z)));
    float _872 = max(clamp((max(abs(_858.x), abs(_858.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_858.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _952;
    float4 _953;
    float4 _954;
    float4 _955;
    if (_872 < 1.0f) {
      float3 _881 = ((_712 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _883 = _881 - floor(_881);
      float4 _887 = _63.SampleLevel(_24, _883, 0.0f);
      float _889 = _773 * (1.0f - _872);
      float _893 = _18_m109.y * 0.5f;
      float _898 = _883.x;
      float _899 = clamp(_883.y, _893, 1.0f - _893) * 0.3333333432674407958984375f;
      float _900 = _883.z;
      float4 _903 = _64.SampleLevel(_23, float3(_898, _899, _900), 0.0f);
      _952 = _849 + (_903.w * _889);
      _953 = _850 + (float4(((_64.SampleLevel(_23, float3(_898, _899 + 0.666666686534881591796875f, _900), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _887.z, _887.z) * _889);
      _954 = _851 + (float4(((_64.SampleLevel(_23, float3(_898, _899 + 0.3333333432674407958984375f, _900), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _887.y, _887.y) * _889);
      _955 = _852 + (float4(((_903.xyz * 4.0f) - 2.0f.xxx) * _887.x, _887.x) * _889);
    } else {
      _952 = _849;
      _953 = _850;
      _954 = _851;
      _955 = _852;
    }
    float4 _1038;
    float4 _1039;
    float4 _1040;
    float _1041;
    if (_872 > 0.0f) {
      float3 _964 = ((_712 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _967 = _18_m109.xyz * 0.5f;
      float3 _969 = clamp(_964 - floor(_964), _967, 1.0f.xxx - _967);
      float4 _973 = _65.SampleLevel(_24, _969, 0.0f);
      float _975 = _872 * (1.0f - _746);
      float _979 = _18_m109.y * 0.5f;
      float _985 = clamp(_969.y, _979, 1.0f - _979) * 0.3333333432674407958984375f;
      float4 _989 = _66.SampleLevel(_23, float3(_969.x, _985, _969.z), 0.0f);
      float _1005 = _973.x;
      float _1016 = _973.y;
      float _1027 = _973.z;
      _1038 = _953 + (float4(((_66.SampleLevel(_23, float3(_969.x, _985 + 0.666666686534881591796875f, _969.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1027, _1027) * _975);
      _1039 = _954 + (float4(((_66.SampleLevel(_23, float3(_969.x, _985 + 0.3333333432674407958984375f, _969.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1016, _1016) * _975);
      _1040 = _955 + (float4(((_989.xyz * 4.0f) - 2.0f.xxx) * _1005, _1005) * _975);
      _1041 = _952 + (_989.w * _975);
    } else {
      _1038 = _953;
      _1039 = _954;
      _1040 = _955;
      _1041 = _952;
    }
    float _1044 = clamp((_1041 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1048 = _1038;
    _1049 = _1039;
    _1050 = _1040;
    _1051 = _1044 - _746;
    _1052 = (_1044 + _746) * 0.5f;
  } else {
    _1048 = 0.0f.xxxx;
    _1049 = 0.0f.xxxx;
    _1050 = 0.0f.xxxx;
    _1051 = 0.0f;
    _1052 = 1.0f;
  }
  float4 _1072 = _1050 + float4(_18_m111.x * _1052, (_18_m111.y * _1052) + ((_18_m111.w * _1051) * 0.5f), _18_m111.z * _1052, (_18_m111.w * _1052) + ((_18_m111.y * _1051) * 0.375f));
  float4 _1092 = _1049 + float4(_18_m112.x * _1052, (_18_m112.y * _1052) + ((_18_m112.w * _1051) * 0.5f), _18_m112.z * _1052, (_18_m112.w * _1052) + ((_18_m112.y * _1051) * 0.375f));
  float4 _1112 = _1048 + float4(_18_m113.x * _1052, (_18_m113.y * _1052) + ((_18_m113.w * _1051) * 0.5f), _18_m113.z * _1052, (_18_m113.w * _1052) + ((_18_m113.y * _1051) * 0.375f));
  float _1117 = max(0.0f, dot(_1072.xyz, _602) + _1072.w);
  float _1122 = max(0.0f, dot(_1092.xyz, _602) + _1092.w);
  float _1127 = max(0.0f, dot(_1112.xyz, _602) + _1112.w);
  float3 _1137 = -_488;
  float3 _1138 = reflect(_1137, _602);
  float _1146 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_574, 0.001000000047497451305389404296875f))));
  float2 _1147 = float2(_709);
  float2 _1151 = floor(_1147 * _44_m0.w);
  float _1168 = floor(_710 - _44_m2.y);
  float _1172 = clamp(_1168, 0.0f, _44_m1.x - 1.0f);
  uint _1182 = (_1168 <= _1172) ? (_33.Load(uint(_18_m21.z + int(_1151.x + (_1151.y * _44_m0.x))) * 4 + 0) & _33.Load(uint(_18_m21.w + int(_1172)) * 4 + 0)) : 0u;
  float _1185 = dot(float4(_1117, _1122, _1127, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1187;
  float _1190;
  uint _1192;
  _1187 = 0.0f.xxx;
  _1190 = 1.0f;
  _1192 = _1182;
  uint _1193;
  float3 _1188;
  float _1191;
  bool _1195;
  [loop] for (;;) {
    bool _1194 = _1192 != 0u;
    _1195 = _1190 > 0.00999999977648258209228515625f;
    if (_1194 && _1195) {
      uint _1199 = firstbitlow(_1192);
      _1193 = _1192 ^ (1u << (_1199 & 31u));
      float3 _1219 = float3(dot(_44_m4[_1199]._m2, _455), dot(_44_m4[_1199]._m3, _455), dot(_44_m4[_1199]._m4, _455));
      float3 _1220 = abs(_1219);
      if (all(bool3(_1220.x <= _44_m4[_1199]._m1.xyz.x, _1220.y <= _44_m4[_1199]._m1.xyz.y, _1220.z <= _44_m4[_1199]._m1.xyz.z))) {
        float3 _1229 = _44_m4[_1199]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1231 = _1220 * 0.100000001490116119384765625f;
        float3 _1232 = _1231 * _1231;
        float3 _1235 = (_44_m4[_1199]._m1.xyz - _1220) * _44_m4[_1199]._m5.xyz;
        float3 _1283;
        [branch] if (_44_m4[_1199]._m6.x == 1.0f) {
          float3 _1268 = float3(dot(_44_m4[_1199]._m2.xyz, _1138), dot(_44_m4[_1199]._m3.xyz, _1138), dot(_44_m4[_1199]._m4.xyz, _1138));
          float3 _1270 = (_44_m4[_1199]._m1.xyz - _1219) / _1268;
          float3 _1273 = ((-_44_m4[_1199]._m1.xyz) - _1219) / _1268;
          bool3 _1274 = bool3(_1268.x > 0.0f.xxx.x, _1268.y > 0.0f.xxx.y, _1268.z > 0.0f.xxx.z);
          float3 _1275 = float3(_1274.x ? _1270.x : _1273.x, _1274.y ? _1270.y : _1273.y, _1274.z ? _1270.z : _1273.z);
          _1283 = _1219 + (_1268 * min(min(_1275.x, _1275.y), _1275.z));
        }
        else {
          _1283 = _1138;
        }
        float3 _1284 = normalize(_1283);
        float3 _1287 = float3(int3(sign(_1284)));
        float3 _1290 = _1284 / dot(_1284, _1287).xxx;
        float3 _1304;
        if (_1290.z < 0.0f) {
          float3 _1295 = abs(_1290);
          float2 _1302 = _1287.xy * float2(1.0f - _1295.y, 1.0f - _1295.x);
          _1304 = float3(_1302.x, _1302.y, _1290.z);
        } else {
          _1304 = _1290;
        }
        float _1329 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m4[_1199]._m0, float4(_602, 1.0f))));
        float _1342 = clamp((min(_1235.x, min(_1235.y, _1235.z)) * _44_m4[_1199]._m6.y) + ((((((_1229 * _1229).x - ((_1232.x + _1232.y) + _1232.z)) * _44_m4[_1199]._m5.x) * _44_m4[_1199]._m5.x) * (1.0f - _44_m4[_1199]._m6.y)) * 100.0f), 0.0f, 1.0f) * _44_m4[_1199]._m6.w;
        _1188 = _1187 + ((((_31.SampleLevel(_25, float3((((_1304.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, _44_m4[_1199]._m1.w), _1146).xyz * _44_m4[_1199]._m5.w) * ((((((clamp(abs(_1185 / _1329), 0.0f, 1.0f) * 2.0f) + _1185) / (2.0f + _1329)) - 1.0f) * _18_m23.w) + 1.0f)) * _1342) * _1190);
        _1191 = _1190 * (1.0f - _1342);
      } else {
        _1188 = _1187;
        _1191 = _1190;
      }
      _1187 = _1188;
      _1190 = _1191;
      _1192 = _1193;
      continue;
    } else {
      break;
    }
  }
  float3 _1411;
  if (_1195) {
    float3 _1350 = normalize(_1138);
    float3 _1353 = float3(int3(sign(_1350)));
    float3 _1356 = _1350 / dot(_1350, _1353).xxx;
    float3 _1370;
    if (_1356.z < 0.0f) {
      float3 _1361 = abs(_1356);
      float2 _1368 = _1353.xy * float2(1.0f - _1361.y, 1.0f - _1361.x);
      _1370 = float3(_1368.x, _1368.y, _1356.z);
    } else {
      _1370 = _1356;
    }
    float _1397 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_44_m3, float4(_602, 1.0f))));
    _1411 = _1187 + ((_31.SampleLevel(_25, float3((((_1370.xy * 0.5f) + 0.5f.xx) * _44_m1.w) + _44_m2.w.xx, 0.0f), _1146).xyz * ((((((clamp(abs(_1185 / _1397), 0.0f, 1.0f) * 2.0f) + _1185) / (2.0f + _1397)) - 1.0f) * _18_m23.w) + 1.0f)) * _1190);
  } else {
    _1411 = _1187;
  }
  float3 _1417 = (_1411 * _18_m23.z) * _18_m22.y;
  float3 _1438;
  [branch] if (_18_m23.y != 0.0f) {
    float4 _1432 = _29.SampleBias(_23, _438, _18_m16);
    float _1433 = _1432.x;
    _1438 = (_28.SampleBias(_23, _438, _18_m16).xyz * _1433) + (_1417 * (1.0f - _1433));
  }
  else {
    _1438 = _1417;
  }
  float4 _2123;
  do {
    [branch] if (_48_m4 == 0) {
      _2123 = 0.0f.xxxx;
      break;
    }
    float2 _1982;
    do {
      if (_50_m7.w >= 0.9900000095367431640625f) {
        _1982 = float2(_50_m7.z, 1.0f);
        break;
      }
      int _1461 = int(_50_m7.x);
      bool3 _1463 = (_1461 == 2).xxx;
      float3 _1471 = _451 - float3(_1463.x ? _50_m1[0].xyz.x : _16_m11.xyz.x, _1463.y ? _50_m1[0].xyz.y : _16_m11.xyz.y, _1463.z ? _50_m1[0].xyz.z : _16_m11.xyz.z);
      float _1482 = max(clamp((_50_m6.w - dot(_1471, _1471)) * _50_m6.z, 0.0f, 1.0f), _50_m8.x);
      float _1699;
      bool _1700;
      if (_1482 > 0.0f) {
        float _1697;
        bool _1698;
        if (_1461 > 0) {
          float3 _1489 = _451 - _50_m1[0].xyz;
          float3 _1493 = _451 - _50_m1[1].xyz;
          float3 _1497 = _451 - _50_m1[2].xyz;
          float3 _1501 = _451 - _50_m1[3].xyz;
          float4 _1506 = float4(dot(_1489, _1489), dot(_1493, _1493), dot(_1497, _1497), dot(_1501, _1501));
          float4 _1515 = float4(_50_m1[0].w, _50_m1[1].w, _50_m1[2].w, _50_m1[3].w);
          float4 _1517 = float4(bool4(_1506.x < _1515.x, _1506.y < _1515.y, _1506.z < _1515.z, _1506.w < _1515.w));
          float3 _1521 = clamp(_1517.yzw - _1517.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1525 = clamp(4.0f - dot(float4(_1517.x, _1521.x, _1521.y, _1521.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1527 = clamp(_1525 + 1.0f, 0.0f, 3.0f);
          uint _1528 = uint(_1525);
          uint _1536 = uint(_1527);
          float _1542 = dot(_1506, _360[_1536]) / _50_m1[_1536].w;
          float _1559;
          if (((_1527 > _1525) && (_1542 >= 0.0f)) && (_1542 <= 1.0f)) {
            _1559 = _1525 + step(frac(52.98291778564453125f * frac(dot(_1147 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1506, _360[_1528]) / _50_m1[_1528].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1559 = _1525;
          }
          float _1560 = clamp(_1559, 0.0f, 4.0f);
          float4 _1564 = mul(_50_m0[uint(_1560)], _455);
          float _1567 = _1564.z;
          float4 _1568 = float4(_1564.xy, _1567, _1560);
          float3 _1569 = _1568.xyz;
          bool3 _1570 = bool3(_1569.x <= 0.0f.xxx.x, _1569.y <= 0.0f.xxx.y, _1569.z <= 0.0f.xxx.z);
          bool3 _1571 = bool3(_1569.x >= 1.0f.xxx.x, _1569.y >= 1.0f.xxx.y, _1569.z >= 1.0f.xxx.z);
          bool _1577 = any(bool3(_1570.x || _1571.x, _1570.y || _1571.y, _1570.z || _1571.z)) || ((asuint(_1567) & 2147483647u) > 2139095040u);
          int _1578 = int(_1560);
          float2 _1595 = float4(_50_m3[_1578].xy + (_1568.xy * _50_m3[_1578].zw), _1567, _1560).xy * _50_m4.zw;
          float2 _1597 = floor(_1595 + 0.5f.xx);
          float2 _1598 = _1595 - _1597;
          float _1599 = _1598.x;
          float _1600 = _1599 + 0.5f;
          float _1602 = (_1600 * _1600) * 0.5f;
          float _1605 = min(_1599, 0.0f);
          float _1609 = max(_1599, 0.0f);
          float4 _1613 = float4(_1602 - _1599, (1.0f - _1599) - (_1605 * _1605), (_1599 + 1.0f) - (_1609 * _1609), _1602) * 0.44444000720977783203125f;
          float _1614 = _1598.y;
          float _1615 = _1614 + 0.5f;
          float _1617 = (_1615 * _1615) * 0.5f;
          float _1620 = min(_1614, 0.0f);
          float _1624 = max(_1614, 0.0f);
          float4 _1628 = float4(_1617 - _1614, (1.0f - _1614) - (_1620 * _1620), (_1614 + 1.0f) - (_1624 * _1624), _1617) * 0.44444000720977783203125f;
          float2 _1630 = _1613.yw;
          float2 _1631 = _1613.xz + _1630;
          float2 _1633 = _1628.yw;
          float2 _1634 = _1628.xz + _1633;
          float2 _1640 = ((_1630 / _1631) + float2(-1.5f, 0.5f)) * _50_m4.xx;
          float2 _1642 = ((_1633 / _1634) + float2(-1.5f, 0.5f)) * _50_m4.yy;
          float2 _1644 = _1597 * _50_m4.xy;
          float _1645 = _1640.x;
          float _1646 = _1642.x;
          float _1649 = _1640.y;
          float _1652 = _1642.y;
          float _1657 = _1631.x;
          float _1658 = _1634.x;
          float _1660 = _1631.y;
          float _1662 = _1634.y;
          _1697 = _1577 ? 1.0f : (((((_1657 * _1658) * _51.SampleCmpLevelZero(_26, float3(_1644 + float2(_1645, _1646), _382).xy, _1567)) + ((_1660 * _1658) * _51.SampleCmpLevelZero(_26, float3(_1644 + float2(_1649, _1646), _382).xy, _1567))) + ((_1657 * _1662) * _51.SampleCmpLevelZero(_26, float3(_1644 + float2(_1645, _1652), _382).xy, _1567))) + ((_1660 * _1662) * _51.SampleCmpLevelZero(_26, float3(_1644 + float2(_1649, _1652), _382).xy, _1567)));
          _1698 = _1577;
        } else {
          _1697 = 1.0f;
          _1698 = false;
        }
        _1699 = _1697;
        _1700 = _1698;
      } else {
        _1699 = 1.0f;
        _1700 = false;
      }
      float _1900;
      float _1901;
      if ((_1482 < 1.0f) || (_50_m8.x > 0.5f)) {
        float _1711 = 1.0f - clamp(dot(_602, _46_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1728 = float4((_451 - (_46_m0.xyz * (_1711 * _50_m22.x))) + (_602 * (_1711 * _50_m22.y)), 1.0f);
        float4 _1729 = mul(_50_m21, _1728);
        float2 _1730 = _1729.xy;
        float _1898;
        if (all(bool2(_1730.x > 0.0f.xx.x, _1730.y > 0.0f.xx.y)) && all(bool2(_1730.x < 1.0f.xx.x, _1730.y < 1.0f.xx.y))) {
          uint _1749 = clamp(uint((floor(_1729.y * _50_m23.z) + _1729.x) * _50_m23.y), 0u, 127u);
          uint _1753 = asuint(_50_m25[_1749].x);
          float2 _1754 = spvUnpackHalf2x16(_1753);
          float _1755 = _1754.x;
          float _1897;
          if (_1755 >= 0.0f) {
            float4x4 _1764 = _50_m20;
            _1764[0].w = _50_m25[_1749].y;
            _1764[1].w = _50_m25[_1749].z;
            _1764[2].w = _50_m25[_1749].w;
            float4 _1771 = mul(_1764, _1728);
            float3 _1772 = _1771.xyz;
            float _1896;
            if (all(bool3(_1772.x > 0.0f.xxx.x, _1772.y > 0.0f.xxx.y, _1772.z > 0.0f.xxx.z)) && all(bool3(_1772.x < 1.0f.xxx.x, _1772.y < 1.0f.xxx.y, _1772.z < 1.0f.xxx.z))) {
              float _1789 = _1771.z;
              float2 _1795 = float4((_1771.xy * _50_m22.zw) + float2(_1755, spvUnpackHalf2x16(_1753 >> 16u).x), _1789, 1.0f).xy * _50_m24.zw;
              float2 _1797 = floor(_1795 + 0.5f.xx);
              float2 _1798 = _1795 - _1797;
              float _1799 = _1798.x;
              float _1800 = _1799 + 0.5f;
              float _1802 = (_1800 * _1800) * 0.5f;
              float _1805 = min(_1799, 0.0f);
              float _1809 = max(_1799, 0.0f);
              float4 _1813 = float4(_1802 - _1799, (1.0f - _1799) - (_1805 * _1805), (_1799 + 1.0f) - (_1809 * _1809), _1802) * 0.44444000720977783203125f;
              float _1814 = _1798.y;
              float _1815 = _1814 + 0.5f;
              float _1817 = (_1815 * _1815) * 0.5f;
              float _1820 = min(_1814, 0.0f);
              float _1824 = max(_1814, 0.0f);
              float4 _1828 = float4(_1817 - _1814, (1.0f - _1814) - (_1820 * _1820), (_1814 + 1.0f) - (_1824 * _1824), _1817) * 0.44444000720977783203125f;
              float2 _1831 = _1813.xz + _1813.yw;
              float2 _1834 = _1828.xz + _1828.yw;
              float2 _1840 = ((_1813.yw / _1831) + float2(-1.5f, 0.5f)) * _50_m24.xx;
              float2 _1842 = ((_1828.yw / _1834) + float2(-1.5f, 0.5f)) * _50_m24.yy;
              float2 _1844 = _1797 * _50_m24.xy;
              float _1845 = _1840.x;
              float _1846 = _1842.x;
              float2 _1848 = _1844 + float2(_1845, _1846);
              float _1849 = _1840.y;
              float2 _1851 = _1844 + float2(_1849, _1846);
              float _1852 = _1842.y;
              float2 _1854 = _1844 + float2(_1845, _1852);
              float2 _1856 = _1844 + float2(_1849, _1852);
              float _1857 = _1831.x;
              float _1858 = _1834.x;
              float _1860 = _1831.y;
              float _1862 = _1834.y;
              _1896 = ((((_1857 * _1858) * _56.SampleCmpLevelZero(_26, float3(_1848, _382).xy, _1789)) + ((_1860 * _1858) * _56.SampleCmpLevelZero(_26, float3(_1851, _382).xy, _1789))) + ((_1857 * _1862) * _56.SampleCmpLevelZero(_26, float3(_1854, _382).xy, _1789))) + ((_1860 * _1862) * _56.SampleCmpLevelZero(_26, float3(_1856, _382).xy, _1789));
            } else {
              _1896 = 1.0f;
            }
            _1897 = _1896;
          } else {
            _1897 = 1.0f;
          }
          _1898 = _1897;
        } else {
          _1898 = 1.0f;
        }
        _1900 = _1700 ? _1898 : _1699;
        _1901 = _1898;
      } else {
        _1900 = _1699;
        _1901 = 1.0f;
      }
      float _1904 = lerp(lerp(_1901, _1900, _1482), min(_1901, _1900), _50_m8.x);
      float _1977;
      if (_1904 > 0.001000000047497451305389404296875f) {
        float3 _1939 = _451 - _18_m65.xyz;
        float2 _1944 = (_1939 + (_18_m68.xyz * _1939.y)).xz * _18_m66.z;
        float2 _1945 = _18_m67.xy * _18_m77.w;
        float3 _1952 = _451 - _18_m69.xyz;
        float2 _1960 = _18_m69.w.xx;
        float4 _1967 = _55.SampleLevel(_24, lerp(_1944 * _18_m67.w, (_1952 + (_18_m68.xyz * _1952.y)).xz * _18_m70.x, _1960) + lerp(_1945, _18_m70.yz * _18_m77.w, _1960), 0.0f);
        _1977 = _1904 * lerp(1.0f, lerp(_55.SampleLevel(_24, _1944 + _1945, 0.0f).x, lerp(_1967.x, _1967.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_1939.xz))), _18_m67.z);
      } else {
        _1977 = _1904;
      }
      _1982 = float2(lerp(_1977, _50_m7.z, _50_m7.w), _1977);
      break;
    } while (false);
    float _1987 = lerp(1.0f, min(1.0f, _1982.x), _50_m6.x);
    float4 _2122;
    if (_1987 > 0.001000000047497451305389404296875f) {
      float3 _1997 = -_46_m0.xyz;
      float _2002 = dot(_1997, _1138);
      float3 _2004 = _1138 - (_1997 * _2002);
      bool3 _2006 = (_2002 < _46_m4.z).xxx;
      float3 _2014 = normalize((_1997 * _46_m4.z) + ((_2004 * rsqrt(max(6.103515625e-05f, dot(_2004, _2004)))) * _46_m4.y));
      float3 _2015 = float3(_2006.x ? _2014.x : _1138.x, _2006.y ? _2014.y : _1138.y, _2006.z ? _2014.z : _1138.z);
      float3 _2019 = _2015 + _488;
      float3 _2023 = _2019 * rsqrt(max(6.103515625e-05f, dot(_2019, _2019)));
      float _2024 = clamp(dot(_2015, _602), 0.0f, 1.0f);
      float _2026 = clamp(dot(_602, _2023), 0.0f, 1.0f);
      float _2029 = clamp(_655, 0.0f, 1.0f);
      float _2030 = _574 * _574;
      float _2031 = _2030 * _2030;
      float _2052 = (((_2026 * _2031) - _2026) * _2026) + 1.0f;
      float _2055 = 1.0f - clamp(dot(_488, _2023), 0.0f, 1.0f);
      float _2056 = _2055 * _2055;
      float _2058 = (_2055 * _2056) * _2056;
      float _2082 = 1.0f - _574;
      float _2089 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2082 * (1.04997003078460693359375f + (_2082 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2082))))));
      float _2090 = 1.0f - _2089;
      float3 _2093 = _654 + ((1.0f.xxx - _654) * 0.0476190485060214996337890625f);
      float3 _2109 = ((clamp((min(((_654 * (1.0f - _2058)) + _2058.xxx) * ((_2031 / (_2052 * _2052)) * (0.5f / (((_2024 * sqrt(((((-_2029) * _2031) + _2029) * _2029) + _2031)) + (_2029 * sqrt(((((-_2024) * _2031) + _2024) * _2024) + _2031))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2093 * (((_60.SampleLevel(_23, (float2(_2029, _574) * 0.96875f) + 0.015625f.xx, 0.0f).x * _60.SampleLevel(_23, (float2(_2024, _574) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2089) / _2090)) * _2093) / (1.0f.xxx - (_2093 * _2090)))) * _46_m4.x, 0.0f.xxx, 1000.0f.xxx) * _2024) + ((_650 * 1.0f) * _2024)) * _46_m1.xyz;
      float3 _2120 = lerp(_2109, _2109 * _57.SampleBias(_23, float2(_1987, 0.5f), _18_m16).xyz, (1.0f - _1987).xxx) * 1.0f;
      _2122 = float4(_2120.x, _2120.y, _2120.z, 0.0f.xxxx.w);
    } else {
      _2122 = 0.0f.xxxx;
    }
    _2123 = _2122;
    break;
  } while (false);
  float2 _2125 = floor(_1147 * 0.03125f);
  int _2133 = int((_2125.x + (_2125.y * _48_m9)) * 8.0f);
  float _2140 = floor(_710 - (_18_m3.y * _48_m15));
  float _2144 = clamp(_2140, 0.0f, _48_m11 - 1.0f);
  int _2146 = int(_2144 * 8.0f);
  float3 _2148;
  float _2151;
  _2148 = 0.0f.xxx;
  _2151 = 1.0f;
  float3 _2149;
  float _2152;
  [loop] for (int _2153 = 0; _2153 <= 7; _2148 = _2149, _2151 = _2152, _2153++) {
    uint _2174 = (_2140 <= _2144) ? (_33.Load(uint((_48_m2 + _2133) + _2153) * 4 + 0) & _33.Load(uint((_48_m3 + _2146) + _2153) * 4 + 0)) : 0u;
    uint _2175 = uint(_2153);
    float3 _2179;
    _2152 = _2151;
    _2179 = 0.0f.xxx;
    uint _2182;
    float _2177;
    float3 _2180;
    [loop] for (uint _2181 = _2174; _2181 != 0u; _2152 = _2177, _2179 = _2180, _2181 = _2182) {
      uint _2186 = firstbitlow(_2181);
      _2182 = _2181 ^ (1u << (_2186 & 31u));
      int _2192 = int((32u * _2175) + _2186) * 8;
      int _2195 = _2192 + 1;
      int _2198 = _2192 + 2;
      int _2201 = _2192 + 3;
      int _2204 = _2192 + 4;
      int _2207 = _2192 + 5;
      int _2210 = _2192 + 6;
      int _2213 = _2192 + 7;
      uint _2217 = uint(_46_m6[_2207].w);
      float _2292;
      if ((_2217 & 1u) == 1u) {
        uint _2223 = asuint(_46_m6[_2207].x);
        uint _2230 = asuint(_46_m6[_2207].y);
        uint _2237 = asuint(_46_m6[_2207].z);
        uint _2244 = asuint(_46_m6[_2210].x);
        uint _2251 = asuint(_46_m6[_2210].y);
        uint _2258 = asuint(_46_m6[_2210].z);
        float3 _2277 = abs(mul(float4(_451 - _46_m6[_2195].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2223).x, spvUnpackHalf2x16(_2237).x, spvUnpackHalf2x16(_2251).x, 0.0f), float4(spvUnpackHalf2x16(_2223 >> 16u).x, spvUnpackHalf2x16(_2237 >> 16u).x, spvUnpackHalf2x16(_2251 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2230).x, spvUnpackHalf2x16(_2244).x, spvUnpackHalf2x16(_2258).x, 0.0f), float4(spvUnpackHalf2x16(_2230 >> 16u).x, spvUnpackHalf2x16(_2244 >> 16u).x, spvUnpackHalf2x16(_2258 >> 16u).x, 0.0f))).xyz);
        float _2284 = _46_m6[_2213].x * 0.5f;
        float _2290 = 1.0f - clamp((max(max(_2277.x, _2277.y), _2277.z) - (_2284 + 0.5f)) / (0.5f - _2284), 0.0f, 1.0f);
        _2292 = _2290 * _2290;
      } else {
        _2292 = 1.0f;
      }
      uint _2296 = uint(_46_m6[_2192].w);
      bool _2299 = _46_m6[_2201].z > 0.5f;
      if ((false || (_2292 < 0.001000000047497451305389404296875f)) || ((_2296 < 4u) && _2299)) {
        _2177 = _2152;
        _2180 = _2179;
        continue;
      }
      float _4828;
      float3 _4829;
      do {
        [branch] if (_2296 >= 4u) {
          float3 _3528;
          do {
            float3 _2318 = _46_m6[_2195].xyz - _451;
            if (dot(_46_m6[_2201].xyz, _2318) > 0.0f) {
              _3528 = 0.0f.xxx;
              break;
            }
            float _2325 = dot(_2318, _2318) * _46_m6[_2195].w;
            float _2328 = clamp(1.0f - (_2325 * _2325), 0.0f, 1.0f);
            float _2329 = _2328 * _2328;
            if (_2329 <= 0.0f) {
              _3528 = 0.0f.xxx;
              break;
            }
            float3 _2367;
            float _2368;
            bool _2369;
            float3 _2397;
            float3 _2399;
            float3 _2401;
            float3 _2403;
            float3 _2333 = _46_m6[_2198].xyz * _46_m6[_2198].w;
            float3 _2334 = _46_m6[_2195].xyz - _2333;
            float3 _2335 = _46_m6[_2204].xyz * _46_m6[_2201].w;
            float3 _2338 = _46_m6[_2195].xyz + _2333;
            float2 _2348 = (float2(clamp(_574, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_655, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2352 = _73.SampleLevel(_23, _2348, 0.0f);
            float4 _2356 = _74.SampleLevel(_23, _2348, 0.0f);
            float _2751;
            do {
              _2367 = _488 - (_602 * dot(_488, _602));
              _2368 = dot(_2367, _2367);
              _2369 = _2368 > 9.9999997473787516355514526367188e-05f;
              float3 _2392;
              if (_2369) {
                _2392 = _2367 * rsqrt(_2368);
              } else {
                float _2373 = _602.z;
                float _2375 = (_2373 >= 0.0f) ? 1.0f : (-1.0f);
                float _2377 = (-1.0f) / (_2375 + _2373);
                float _2379 = _602.x;
                _2392 = float3(1.0f + (((_2375 * _2377) * _2379) * _2379), ((_2375 * _2379) * _602.y) * _2377, (-_2375) * _2379);
              }
              float3x3 _2396 = mul(float3x3(float3(_2352.x, 0.0f, _2352.z), float3(0.0f, 1.0f, 0.0f), float3(_2352.y, 0.0f, _2352.w)), float3x3(_2392, cross(_602, _2392), _602));
              _2397 = (_2334 - _2335) - _451;
              float3 _2398 = mul(_2396, _2397);
              _2399 = (_2334 + _2335) - _451;
              float3 _2400 = mul(_2396, _2399);
              _2401 = (_2338 + _2335) - _451;
              float3 _2402 = mul(_2396, _2401);
              _2403 = (_2338 - _2335) - _451;
              float3 _2404 = mul(_2396, _2403);
              float _2405 = _2398.z;
              float _2408 = _2400.z;
              float _2412 = _2402.z;
              float _2416 = _2404.z;
              int _2420 = (((int(_2405 > 0.0f) | ((_2408 > 0.0f) ? 2 : 0)) | ((_2412 > 0.0f) ? 4 : 0)) | ((_2416 > 0.0f) ? 8 : 0));
              float3 _2657;
              float3 _2658;
              float3 _2659;
              float3 _2660;
              float3 _2661;
              int _2662;
              if (_2420 == 0) {
                _2657 = _2404;
                _2658 = _2402;
                _2659 = _2400;
                _2660 = _2398;
                _2661 = 0.0f.xxx;
                _2662 = 0;
              } else {
                float3 _2651;
                float3 _2652;
                float3 _2653;
                float3 _2654;
                float3 _2655;
                int _2656;
                if (_2420 == 1) {
                  _2651 = _2404;
                  _2652 = (_2398 * (-_2416)) + (_2404 * _2405);
                  _2653 = (_2398 * (-_2408)) + (_2400 * _2405);
                  _2654 = _2398;
                  _2655 = 0.0f.xxx;
                  _2656 = 3;
                } else {
                  float3 _2637;
                  float3 _2638;
                  float3 _2639;
                  float3 _2640;
                  float3 _2641;
                  int _2642;
                  if (_2420 == 2) {
                    _2637 = _2404;
                    _2638 = (_2400 * (-_2412)) + (_2402 * _2408);
                    _2639 = _2400;
                    _2640 = (_2400 * (-_2405)) + (_2398 * _2408);
                    _2641 = 0.0f.xxx;
                    _2642 = 3;
                  } else {
                    float3 _2623;
                    float3 _2624;
                    float3 _2625;
                    float3 _2626;
                    float3 _2627;
                    int _2628;
                    if (_2420 == 3) {
                      _2623 = (_2398 * (-_2416)) + (_2404 * _2405);
                      _2624 = (_2400 * (-_2412)) + (_2402 * _2408);
                      _2625 = _2400;
                      _2626 = _2398;
                      _2627 = 0.0f.xxx;
                      _2628 = 4;
                    } else {
                      float3 _2609;
                      float3 _2610;
                      float3 _2611;
                      float3 _2612;
                      float3 _2613;
                      int _2614;
                      if (_2420 == 4) {
                        _2609 = _2404;
                        _2610 = _2402;
                        _2611 = (_2402 * (-_2408)) + (_2400 * _2412);
                        _2612 = (_2402 * (-_2416)) + (_2404 * _2412);
                        _2613 = 0.0f.xxx;
                        _2614 = 3;
                      } else {
                        float3 _2595;
                        float3 _2596;
                        float3 _2597;
                        float3 _2598;
                        float3 _2599;
                        int _2600;
                        if (_2420 == 5) {
                          _2595 = _2404;
                          _2596 = _2402;
                          _2597 = _2400;
                          _2598 = _2398;
                          _2599 = 0.0f.xxx;
                          _2600 = 0;
                        } else {
                          float3 _2589;
                          float3 _2590;
                          float3 _2591;
                          float3 _2592;
                          float3 _2593;
                          int _2594;
                          if (_2420 == 6) {
                            _2589 = (_2402 * (-_2416)) + (_2404 * _2412);
                            _2590 = _2402;
                            _2591 = _2400;
                            _2592 = (_2400 * (-_2405)) + (_2398 * _2408);
                            _2593 = 0.0f.xxx;
                            _2594 = 4;
                          } else {
                            float3 _2575;
                            float3 _2576;
                            float3 _2577;
                            float3 _2578;
                            float3 _2579;
                            int _2580;
                            if (_2420 == 7) {
                              float _2568 = -_2416;
                              _2575 = (_2402 * _2568) + (_2404 * _2412);
                              _2576 = _2402;
                              _2577 = _2400;
                              _2578 = _2398;
                              _2579 = (_2398 * _2568) + (_2404 * _2405);
                              _2580 = 5;
                            } else {
                              float3 _2562;
                              float3 _2563;
                              float3 _2564;
                              float3 _2565;
                              float3 _2566;
                              int _2567;
                              if (_2420 == 8) {
                                _2562 = _2404;
                                _2563 = _2404;
                                _2564 = (_2404 * (-_2412)) + (_2402 * _2416);
                                _2565 = (_2404 * (-_2405)) + (_2398 * _2416);
                                _2566 = 0.0f.xxx;
                                _2567 = 3;
                              } else {
                                float3 _2548;
                                float3 _2549;
                                float3 _2550;
                                float3 _2551;
                                float3 _2552;
                                int _2553;
                                if (_2420 == 9) {
                                  _2548 = _2404;
                                  _2549 = (_2404 * (-_2412)) + (_2402 * _2416);
                                  _2550 = (_2398 * (-_2408)) + (_2400 * _2405);
                                  _2551 = _2398;
                                  _2552 = 0.0f.xxx;
                                  _2553 = 4;
                                } else {
                                  float3 _2534;
                                  float3 _2535;
                                  float3 _2536;
                                  float3 _2537;
                                  float3 _2538;
                                  int _2539;
                                  if (_2420 == 10) {
                                    _2534 = _2404;
                                    _2535 = _2402;
                                    _2536 = _2400;
                                    _2537 = _2398;
                                    _2538 = 0.0f.xxx;
                                    _2539 = 0;
                                  } else {
                                    float3 _2528;
                                    float3 _2529;
                                    float3 _2530;
                                    float3 _2531;
                                    float3 _2532;
                                    int _2533;
                                    if (_2420 == 11) {
                                      float _2521 = -_2412;
                                      _2528 = (_2404 * _2521) + (_2402 * _2416);
                                      _2529 = (_2400 * _2521) + (_2402 * _2408);
                                      _2530 = _2400;
                                      _2531 = _2398;
                                      _2532 = _2404;
                                      _2533 = 5;
                                    } else {
                                      float3 _2515;
                                      float3 _2516;
                                      float3 _2517;
                                      float3 _2518;
                                      float3 _2519;
                                      int _2520;
                                      if (_2420 == 12) {
                                        _2515 = _2404;
                                        _2516 = _2402;
                                        _2517 = (_2402 * (-_2408)) + (_2400 * _2412);
                                        _2518 = (_2404 * (-_2405)) + (_2398 * _2416);
                                        _2519 = 0.0f.xxx;
                                        _2520 = 4;
                                      } else {
                                        bool _2473 = _2420 == 13;
                                        float3 _2500;
                                        float3 _2501;
                                        float3 _2502;
                                        float3 _2503;
                                        int _2504;
                                        if (_2473) {
                                          float _2493 = -_2408;
                                          _2500 = (_2402 * _2493) + (_2400 * _2412);
                                          _2501 = (_2398 * _2493) + (_2400 * _2405);
                                          _2502 = _2398;
                                          _2503 = _2404;
                                          _2504 = 5;
                                        } else {
                                          float3 _2490;
                                          float3 _2491;
                                          int _2492;
                                          if (_2420 == 14) {
                                            float _2483 = -_2405;
                                            _2490 = (_2400 * _2483) + (_2398 * _2408);
                                            _2491 = (_2404 * _2483) + (_2398 * _2416);
                                            _2492 = 5;
                                          } else {
                                            _2490 = _2398;
                                            _2491 = 0.0f.xxx;
                                            _2492 = (_2420 == 15) ? 4 : 0;
                                          }
                                          _2500 = _2402;
                                          _2501 = _2400;
                                          _2502 = _2490;
                                          _2503 = _2491;
                                          _2504 = _2492;
                                        }
                                        bool3 _2505 = _2473.xxx;
                                        _2515 = float3(_2505.x ? _2402.x : _2404.x, _2505.y ? _2402.y : _2404.y, _2505.z ? _2402.z : _2404.z);
                                        _2516 = _2500;
                                        _2517 = _2501;
                                        _2518 = _2502;
                                        _2519 = _2503;
                                        _2520 = _2504;
                                      }
                                      _2528 = _2515;
                                      _2529 = _2516;
                                      _2530 = _2517;
                                      _2531 = _2518;
                                      _2532 = _2519;
                                      _2533 = _2520;
                                    }
                                    _2534 = _2528;
                                    _2535 = _2529;
                                    _2536 = _2530;
                                    _2537 = _2531;
                                    _2538 = _2532;
                                    _2539 = _2533;
                                  }
                                  _2548 = _2534;
                                  _2549 = _2535;
                                  _2550 = _2536;
                                  _2551 = _2537;
                                  _2552 = _2538;
                                  _2553 = _2539;
                                }
                                _2562 = _2548;
                                _2563 = _2549;
                                _2564 = _2550;
                                _2565 = _2551;
                                _2566 = _2552;
                                _2567 = _2553;
                              }
                              _2575 = _2562;
                              _2576 = _2563;
                              _2577 = _2564;
                              _2578 = _2565;
                              _2579 = _2566;
                              _2580 = _2567;
                            }
                            _2589 = _2575;
                            _2590 = _2576;
                            _2591 = _2577;
                            _2592 = _2578;
                            _2593 = _2579;
                            _2594 = _2580;
                          }
                          _2595 = _2589;
                          _2596 = _2590;
                          _2597 = _2591;
                          _2598 = _2592;
                          _2599 = _2593;
                          _2600 = _2594;
                        }
                        _2609 = _2595;
                        _2610 = _2596;
                        _2611 = _2597;
                        _2612 = _2598;
                        _2613 = _2599;
                        _2614 = _2600;
                      }
                      _2623 = _2609;
                      _2624 = _2610;
                      _2625 = _2611;
                      _2626 = _2612;
                      _2627 = _2613;
                      _2628 = _2614;
                    }
                    _2637 = _2623;
                    _2638 = _2624;
                    _2639 = _2625;
                    _2640 = _2626;
                    _2641 = _2627;
                    _2642 = _2628;
                  }
                  _2651 = _2637;
                  _2652 = _2638;
                  _2653 = _2639;
                  _2654 = _2640;
                  _2655 = _2641;
                  _2656 = _2642;
                }
                _2657 = _2651;
                _2658 = _2652;
                _2659 = _2653;
                _2660 = _2654;
                _2661 = _2655;
                _2662 = _2656;
              }
              bool3 _2664 = (_2662 == 3).xxx;
              bool3 _2667 = (_2662 == 4).xxx;
              if (_2662 == 0) {
                _2751 = 0.0f;
                break;
              }
              float3 _2672 = normalize(_2660);
              float3 _2673 = normalize(_2659);
              float3 _2674 = normalize(_2658);
              float3 _2675 = normalize(float3(_2664.x ? _2660.x : _2657.x, _2664.y ? _2660.y : _2657.y, _2664.z ? _2660.z : _2657.z));
              float3 _2676 = normalize(float3(_2667.x ? _2660.x : _2661.x, _2667.y ? _2660.y : _2661.y, _2667.z ? _2660.z : _2661.z));
              float _2678 = clamp(dot(_2672, _2673), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2682 = sqrt(1.0f - (_2678 * _2678));
              float _2690 = clamp(dot(_2673, _2674), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2694 = sqrt(1.0f - (_2690 * _2690));
              float _2703 = clamp(dot(_2674, _2675), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2707 = sqrt(1.0f - (_2703 * _2703));
              float _2714 = ((cross(_2672, _2673).z * ((_2682 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2678) / _2682))) + (cross(_2673, _2674).z * ((_2694 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2690) / _2694)))) + (cross(_2674, _2675).z * ((_2707 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2703) / _2707)));
              float _2731;
              if (_2662 >= 4) {
                float _2719 = clamp(dot(_2675, _2676), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2723 = sqrt(1.0f - (_2719 * _2719));
                _2731 = _2714 + (cross(_2675, _2676).z * ((_2723 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2719) / _2723)));
              } else {
                _2731 = _2714;
              }
              float _2748;
              if (_2662 == 5) {
                float _2736 = clamp(dot(_2676, _2672), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2740 = sqrt(1.0f - (_2736 * _2736));
                _2748 = _2731 + (cross(_2676, _2672).z * ((_2740 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2736) / _2740)));
              } else {
                _2748 = _2731;
              }
              _2751 = max(_2748, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3139;
            do {
              float3 _2785;
              if (_2369) {
                _2785 = _2367 * rsqrt(_2368);
              } else {
                float _2766 = _602.z;
                float _2768 = (_2766 >= 0.0f) ? 1.0f : (-1.0f);
                float _2770 = (-1.0f) / (_2768 + _2766);
                float _2772 = _602.x;
                _2785 = float3(1.0f + (((_2768 * _2770) * _2772) * _2772), ((_2768 * _2772) * _602.y) * _2770, (-_2768) * _2772);
              }
              float3x3 _2788 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2785, cross(_602, _2785), _602));
              float3 _2789 = mul(_2788, _2397);
              float3 _2790 = mul(_2788, _2399);
              float3 _2791 = mul(_2788, _2401);
              float3 _2792 = mul(_2788, _2403);
              float _2793 = _2789.z;
              float _2796 = _2790.z;
              float _2800 = _2791.z;
              float _2804 = _2792.z;
              int _2808 = (((int(_2793 > 0.0f) | ((_2796 > 0.0f) ? 2 : 0)) | ((_2800 > 0.0f) ? 4 : 0)) | ((_2804 > 0.0f) ? 8 : 0));
              float3 _3045;
              float3 _3046;
              float3 _3047;
              float3 _3048;
              float3 _3049;
              int _3050;
              if (_2808 == 0) {
                _3045 = _2792;
                _3046 = _2791;
                _3047 = _2790;
                _3048 = _2789;
                _3049 = 0.0f.xxx;
                _3050 = 0;
              } else {
                float3 _3039;
                float3 _3040;
                float3 _3041;
                float3 _3042;
                float3 _3043;
                int _3044;
                if (_2808 == 1) {
                  _3039 = _2792;
                  _3040 = (_2789 * (-_2804)) + (_2792 * _2793);
                  _3041 = (_2789 * (-_2796)) + (_2790 * _2793);
                  _3042 = _2789;
                  _3043 = 0.0f.xxx;
                  _3044 = 3;
                } else {
                  float3 _3025;
                  float3 _3026;
                  float3 _3027;
                  float3 _3028;
                  float3 _3029;
                  int _3030;
                  if (_2808 == 2) {
                    _3025 = _2792;
                    _3026 = (_2790 * (-_2800)) + (_2791 * _2796);
                    _3027 = _2790;
                    _3028 = (_2790 * (-_2793)) + (_2789 * _2796);
                    _3029 = 0.0f.xxx;
                    _3030 = 3;
                  } else {
                    float3 _3011;
                    float3 _3012;
                    float3 _3013;
                    float3 _3014;
                    float3 _3015;
                    int _3016;
                    if (_2808 == 3) {
                      _3011 = (_2789 * (-_2804)) + (_2792 * _2793);
                      _3012 = (_2790 * (-_2800)) + (_2791 * _2796);
                      _3013 = _2790;
                      _3014 = _2789;
                      _3015 = 0.0f.xxx;
                      _3016 = 4;
                    } else {
                      float3 _2997;
                      float3 _2998;
                      float3 _2999;
                      float3 _3000;
                      float3 _3001;
                      int _3002;
                      if (_2808 == 4) {
                        _2997 = _2792;
                        _2998 = _2791;
                        _2999 = (_2791 * (-_2796)) + (_2790 * _2800);
                        _3000 = (_2791 * (-_2804)) + (_2792 * _2800);
                        _3001 = 0.0f.xxx;
                        _3002 = 3;
                      } else {
                        float3 _2983;
                        float3 _2984;
                        float3 _2985;
                        float3 _2986;
                        float3 _2987;
                        int _2988;
                        if (_2808 == 5) {
                          _2983 = _2792;
                          _2984 = _2791;
                          _2985 = _2790;
                          _2986 = _2789;
                          _2987 = 0.0f.xxx;
                          _2988 = 0;
                        } else {
                          float3 _2977;
                          float3 _2978;
                          float3 _2979;
                          float3 _2980;
                          float3 _2981;
                          int _2982;
                          if (_2808 == 6) {
                            _2977 = (_2791 * (-_2804)) + (_2792 * _2800);
                            _2978 = _2791;
                            _2979 = _2790;
                            _2980 = (_2790 * (-_2793)) + (_2789 * _2796);
                            _2981 = 0.0f.xxx;
                            _2982 = 4;
                          } else {
                            float3 _2963;
                            float3 _2964;
                            float3 _2965;
                            float3 _2966;
                            float3 _2967;
                            int _2968;
                            if (_2808 == 7) {
                              float _2956 = -_2804;
                              _2963 = (_2791 * _2956) + (_2792 * _2800);
                              _2964 = _2791;
                              _2965 = _2790;
                              _2966 = _2789;
                              _2967 = (_2789 * _2956) + (_2792 * _2793);
                              _2968 = 5;
                            } else {
                              float3 _2950;
                              float3 _2951;
                              float3 _2952;
                              float3 _2953;
                              float3 _2954;
                              int _2955;
                              if (_2808 == 8) {
                                _2950 = _2792;
                                _2951 = _2792;
                                _2952 = (_2792 * (-_2800)) + (_2791 * _2804);
                                _2953 = (_2792 * (-_2793)) + (_2789 * _2804);
                                _2954 = 0.0f.xxx;
                                _2955 = 3;
                              } else {
                                float3 _2936;
                                float3 _2937;
                                float3 _2938;
                                float3 _2939;
                                float3 _2940;
                                int _2941;
                                if (_2808 == 9) {
                                  _2936 = _2792;
                                  _2937 = (_2792 * (-_2800)) + (_2791 * _2804);
                                  _2938 = (_2789 * (-_2796)) + (_2790 * _2793);
                                  _2939 = _2789;
                                  _2940 = 0.0f.xxx;
                                  _2941 = 4;
                                } else {
                                  float3 _2922;
                                  float3 _2923;
                                  float3 _2924;
                                  float3 _2925;
                                  float3 _2926;
                                  int _2927;
                                  if (_2808 == 10) {
                                    _2922 = _2792;
                                    _2923 = _2791;
                                    _2924 = _2790;
                                    _2925 = _2789;
                                    _2926 = 0.0f.xxx;
                                    _2927 = 0;
                                  } else {
                                    float3 _2916;
                                    float3 _2917;
                                    float3 _2918;
                                    float3 _2919;
                                    float3 _2920;
                                    int _2921;
                                    if (_2808 == 11) {
                                      float _2909 = -_2800;
                                      _2916 = (_2792 * _2909) + (_2791 * _2804);
                                      _2917 = (_2790 * _2909) + (_2791 * _2796);
                                      _2918 = _2790;
                                      _2919 = _2789;
                                      _2920 = _2792;
                                      _2921 = 5;
                                    } else {
                                      float3 _2903;
                                      float3 _2904;
                                      float3 _2905;
                                      float3 _2906;
                                      float3 _2907;
                                      int _2908;
                                      if (_2808 == 12) {
                                        _2903 = _2792;
                                        _2904 = _2791;
                                        _2905 = (_2791 * (-_2796)) + (_2790 * _2800);
                                        _2906 = (_2792 * (-_2793)) + (_2789 * _2804);
                                        _2907 = 0.0f.xxx;
                                        _2908 = 4;
                                      } else {
                                        bool _2861 = _2808 == 13;
                                        float3 _2888;
                                        float3 _2889;
                                        float3 _2890;
                                        float3 _2891;
                                        int _2892;
                                        if (_2861) {
                                          float _2881 = -_2796;
                                          _2888 = (_2791 * _2881) + (_2790 * _2800);
                                          _2889 = (_2789 * _2881) + (_2790 * _2793);
                                          _2890 = _2789;
                                          _2891 = _2792;
                                          _2892 = 5;
                                        } else {
                                          float3 _2878;
                                          float3 _2879;
                                          int _2880;
                                          if (_2808 == 14) {
                                            float _2871 = -_2793;
                                            _2878 = (_2790 * _2871) + (_2789 * _2796);
                                            _2879 = (_2792 * _2871) + (_2789 * _2804);
                                            _2880 = 5;
                                          } else {
                                            _2878 = _2789;
                                            _2879 = 0.0f.xxx;
                                            _2880 = (_2808 == 15) ? 4 : 0;
                                          }
                                          _2888 = _2791;
                                          _2889 = _2790;
                                          _2890 = _2878;
                                          _2891 = _2879;
                                          _2892 = _2880;
                                        }
                                        bool3 _2893 = _2861.xxx;
                                        _2903 = float3(_2893.x ? _2791.x : _2792.x, _2893.y ? _2791.y : _2792.y, _2893.z ? _2791.z : _2792.z);
                                        _2904 = _2888;
                                        _2905 = _2889;
                                        _2906 = _2890;
                                        _2907 = _2891;
                                        _2908 = _2892;
                                      }
                                      _2916 = _2903;
                                      _2917 = _2904;
                                      _2918 = _2905;
                                      _2919 = _2906;
                                      _2920 = _2907;
                                      _2921 = _2908;
                                    }
                                    _2922 = _2916;
                                    _2923 = _2917;
                                    _2924 = _2918;
                                    _2925 = _2919;
                                    _2926 = _2920;
                                    _2927 = _2921;
                                  }
                                  _2936 = _2922;
                                  _2937 = _2923;
                                  _2938 = _2924;
                                  _2939 = _2925;
                                  _2940 = _2926;
                                  _2941 = _2927;
                                }
                                _2950 = _2936;
                                _2951 = _2937;
                                _2952 = _2938;
                                _2953 = _2939;
                                _2954 = _2940;
                                _2955 = _2941;
                              }
                              _2963 = _2950;
                              _2964 = _2951;
                              _2965 = _2952;
                              _2966 = _2953;
                              _2967 = _2954;
                              _2968 = _2955;
                            }
                            _2977 = _2963;
                            _2978 = _2964;
                            _2979 = _2965;
                            _2980 = _2966;
                            _2981 = _2967;
                            _2982 = _2968;
                          }
                          _2983 = _2977;
                          _2984 = _2978;
                          _2985 = _2979;
                          _2986 = _2980;
                          _2987 = _2981;
                          _2988 = _2982;
                        }
                        _2997 = _2983;
                        _2998 = _2984;
                        _2999 = _2985;
                        _3000 = _2986;
                        _3001 = _2987;
                        _3002 = _2988;
                      }
                      _3011 = _2997;
                      _3012 = _2998;
                      _3013 = _2999;
                      _3014 = _3000;
                      _3015 = _3001;
                      _3016 = _3002;
                    }
                    _3025 = _3011;
                    _3026 = _3012;
                    _3027 = _3013;
                    _3028 = _3014;
                    _3029 = _3015;
                    _3030 = _3016;
                  }
                  _3039 = _3025;
                  _3040 = _3026;
                  _3041 = _3027;
                  _3042 = _3028;
                  _3043 = _3029;
                  _3044 = _3030;
                }
                _3045 = _3039;
                _3046 = _3040;
                _3047 = _3041;
                _3048 = _3042;
                _3049 = _3043;
                _3050 = _3044;
              }
              bool3 _3052 = (_3050 == 3).xxx;
              bool3 _3055 = (_3050 == 4).xxx;
              if (_3050 == 0) {
                _3139 = 0.0f;
                break;
              }
              float3 _3060 = normalize(_3048);
              float3 _3061 = normalize(_3047);
              float3 _3062 = normalize(_3046);
              float3 _3063 = normalize(float3(_3052.x ? _3048.x : _3045.x, _3052.y ? _3048.y : _3045.y, _3052.z ? _3048.z : _3045.z));
              float3 _3064 = normalize(float3(_3055.x ? _3048.x : _3049.x, _3055.y ? _3048.y : _3049.y, _3055.z ? _3048.z : _3049.z));
              float _3066 = clamp(dot(_3060, _3061), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3070 = sqrt(1.0f - (_3066 * _3066));
              float _3078 = clamp(dot(_3061, _3062), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3082 = sqrt(1.0f - (_3078 * _3078));
              float _3091 = clamp(dot(_3062, _3063), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3095 = sqrt(1.0f - (_3091 * _3091));
              float _3102 = ((cross(_3060, _3061).z * ((_3070 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3066) / _3070))) + (cross(_3061, _3062).z * ((_3082 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3078) / _3082)))) + (cross(_3062, _3063).z * ((_3095 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3091) / _3095)));
              float _3119;
              if (_3050 >= 4) {
                float _3107 = clamp(dot(_3063, _3064), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3111 = sqrt(1.0f - (_3107 * _3107));
                _3119 = _3102 + (cross(_3063, _3064).z * ((_3111 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3107) / _3111)));
              } else {
                _3119 = _3102;
              }
              float _3136;
              if (_3050 == 5) {
                float _3124 = clamp(dot(_3064, _3060), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3128 = sqrt(1.0f - (_3124 * _3124));
                _3136 = _3119 + (cross(_3064, _3060).z * ((_3128 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3124) / _3128)));
              } else {
                _3136 = _3119;
              }
              _3139 = max(_3136, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3142 = (_2217 & 2u) != 0u;
            uint _3146 = asuint(_46_m6[_2204].w);
            uint _3147 = asuint(_46_m6[_2210].w);
            float3 _3148 = _451 - _46_m6[_2195].xyz;
            float3 _3149 = abs(_3148);
            float _3150 = _3149.x;
            float _3151 = _3149.y;
            float _3153 = _3149.z;
            int _3186;
            if ((_3150 > _3151) && (_3150 > _3153)) {
              _3186 = int((_3148.x > 0.0f) ? (_3146 & 1023u) : ((_3146 >> 10u) & 1023u));
            } else {
              int _3178;
              if (_3151 > _3153) {
                _3178 = int((_3148.y > 0.0f) ? ((_3146 >> 20u) & 1023u) : (_3147 & 1023u));
              } else {
                _3178 = int((_3148.z > 0.0f) ? ((_3147 >> 10u) & 1023u) : ((_3147 >> 20u) & 1023u));
              }
              _3186 = _3178;
            }
            int _3189 = _3142 ? int(_46_m6[_2204].w) : ((_3186 == 1023) ? (-1) : _3186);
            uint _3200 = asuint(_50_m11.x) + (uint(_3189) * 96u);
            uint _3202 = (_3200 + 64u) >> 2u;
            uint _3205 = _3202 + 1u;
            uint _3208 = _3202 + 2u;
            uint _3211 = _3202 + 3u;
            float4 _3215 = asfloat(uint4(_54.Load(_3202 * 4 + 0), _54.Load(_3205 * 4 + 0), _54.Load(_3208 * 4 + 0), _54.Load(_3211 * 4 + 0)));
            float3 _3222 = (_451 - ((_3148 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3148, _3148)))) * _3215.x)) + (_602 * (_3215.y * 5.0f));
            uint _3223 = _3200 >> 2u;
            uint _3238 = (_3200 + 16u) >> 2u;
            uint _3253 = (_3200 + 32u) >> 2u;
            uint _3268 = (_3200 + 48u) >> 2u;
            float4 _3288 = mul(transpose(float4x4(asfloat(uint4(_54.Load(_3223 * 4 + 0), _54.Load((_3223 + 1u) * 4 + 0), _54.Load((_3223 + 2u) * 4 + 0), _54.Load((_3223 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3238 * 4 + 0), _54.Load((_3238 + 1u) * 4 + 0), _54.Load((_3238 + 2u) * 4 + 0), _54.Load((_3238 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3253 * 4 + 0), _54.Load((_3253 + 1u) * 4 + 0), _54.Load((_3253 + 2u) * 4 + 0), _54.Load((_3253 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3268 * 4 + 0), _54.Load((_3268 + 1u) * 4 + 0), _54.Load((_3268 + 2u) * 4 + 0), _54.Load((_3268 + 3u) * 4 + 0))))), float4(_3222, 1.0f));
            float _3289 = _3288.w;
            float3 _3292 = _3288.xyz / _3289.xxx;
            uint _3294 = (_3200 + 80u) >> 2u;
            float4 _3307 = asfloat(uint4(_54.Load(_3294 * 4 + 0), _54.Load((_3294 + 1u) * 4 + 0), _54.Load((_3294 + 2u) * 4 + 0), _54.Load((_3294 + 3u) * 4 + 0)));
            float2 _3308 = _3292.xy;
            float2 _3310 = _3307.xy;
            float3 _3314 = _3292.xyz;
            bool3 _3315 = bool3(_3314.x <= 0.0f.xxx.x, _3314.y <= 0.0f.xxx.y, _3314.z <= 0.0f.xxx.z);
            bool3 _3316 = bool3(_3314.x >= 1.0f.xxx.x, _3314.y >= 1.0f.xxx.y, _3314.z >= 1.0f.xxx.z);
            float _3319 = _3292.z;
            float2 _3330 = ((_3308 * (_3307.zw - _3310)) + _3310).xy * _50_m10.zw;
            float2 _3332 = floor(_3330 + 0.5f.xx);
            float2 _3333 = _3330 - _3332;
            float _3334 = _3333.x;
            float _3335 = _3334 + 0.5f;
            float _3336 = _3335 * _3335;
            float _3339 = 1.0f - _3334;
            float _3340 = min(_3334, 0.0f);
            float _3343 = _3334 + 1.0f;
            float _3344 = max(_3334, 0.0f);
            float _3355 = _3333.y;
            float _3356 = _3355 + 0.5f;
            float _3357 = _3356 * _3356;
            float _3360 = 1.0f - _3355;
            float _3361 = min(_3355, 0.0f);
            float _3364 = _3355 + 1.0f;
            float _3365 = max(_3355, 0.0f);
            float3 _3377 = float3(0.1599999964237213134765625f * _3339, 0.1599999964237213134765625f * ((_3343 - (_3344 * _3344)) + 1.0f), _3336 * 0.07999999821186065673828125f);
            float3 _3378 = float3(0.1599999964237213134765625f * ((_3336 * 0.5f) - _3334), 0.1599999964237213134765625f * ((_3339 - (_3340 * _3340)) + 1.0f), 0.1599999964237213134765625f * _3343) + _3377;
            float3 _3380 = float3(0.1599999964237213134765625f * _3360, 0.1599999964237213134765625f * ((_3364 - (_3365 * _3365)) + 1.0f), _3357 * 0.07999999821186065673828125f);
            float3 _3381 = float3(0.1599999964237213134765625f * ((_3357 * 0.5f) - _3355), 0.1599999964237213134765625f * ((_3360 - (_3361 * _3361)) + 1.0f), 0.1599999964237213134765625f * _3364) + _3380;
            float3 _3387 = ((_3377 / _3378) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.xxx;
            float3 _3389 = ((_3380 / _3381) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.yyy;
            float2 _3391 = _3332 * _50_m10.xy;
            float _3392 = _3387.x;
            float _3393 = _3389.x;
            float2 _3395 = _3391 + float2(_3392, _3393);
            float _3396 = _3387.y;
            float2 _3398 = _3391 + float2(_3396, _3393);
            float _3399 = _3387.z;
            float2 _3401 = _3391 + float2(_3399, _3393);
            float _3402 = _3389.y;
            float2 _3404 = _3391 + float2(_3392, _3402);
            float2 _3406 = _3391 + float2(_3396, _3402);
            float2 _3408 = _3391 + float2(_3399, _3402);
            float _3409 = _3389.z;
            float2 _3411 = _3391 + float2(_3392, _3409);
            float2 _3413 = _3391 + float2(_3396, _3409);
            float2 _3415 = _3391 + float2(_3399, _3409);
            float _3416 = _3378.x;
            float _3417 = _3381.x;
            float _3419 = _3378.y;
            float _3421 = _3378.z;
            float _3423 = _3381.y;
            float _3427 = _3381.z;
            float _3493 = ((((((((_3416 * _3417) * _52.SampleCmpLevelZero(_26, float3(_3395, _382).xy, _3319)) + ((_3419 * _3417) * _52.SampleCmpLevelZero(_26, float3(_3398, _382).xy, _3319))) + ((_3421 * _3417) * _52.SampleCmpLevelZero(_26, float3(_3401, _382).xy, _3319))) + ((_3416 * _3423) * _52.SampleCmpLevelZero(_26, float3(_3404, _382).xy, _3319))) + ((_3419 * _3423) * _52.SampleCmpLevelZero(_26, float3(_3406, _382).xy, _3319))) + ((_3421 * _3423) * _52.SampleCmpLevelZero(_26, float3(_3408, _382).xy, _3319))) + ((_3416 * _3427) * _52.SampleCmpLevelZero(_26, float3(_3411, _382).xy, _3319))) + ((_3419 * _3427) * _52.SampleCmpLevelZero(_26, float3(_3413, _382).xy, _3319));
            float4 _3508 = asfloat(uint4(_54.Load(_3202 * 4 + 0), _54.Load(_3205 * 4 + 0), _54.Load(_3208 * 4 + 0), _54.Load(_3211 * 4 + 0)));
            float _3509 = _3508.w;
            float2 _3511 = min(_3308, 1.0f.xx - _3308);
            _3528 = ((_46_m6[_2192].xyz * (((((_654 * _2356.x) + ((1.0f.xxx - _654) * _2356.y)) * _2751) * _46_m6[_2213].z) + (_650 * _3139))) * _2329) * ((_3189 >= 0) ? lerp(1.0f, (any(bool3(_3315.x || _3316.x, _3315.y || _3316.y, _3315.z || _3316.z)) || ((asuint(_3319) & 2147483647u) > 2139095040u)) ? 1.0f : (_3493 + ((_3421 * _3427) * _52.SampleCmpLevelZero(_26, float3(_3415, _382).xy, _3319))), _3142 ? min(_3509, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3508.z - _3289) * 0.25f, min(_3511.x, _3511.y)))) : _3509) : 1.0f);
            break;
          } while (false);
          _4828 = _2152;
          _4829 = _3528 * _2292;
          break;
        }
        float _4826;
        float3 _4827;
        if (_46_m6[_2192].w < 1.5f) {
          float3 _4108 = float3(0.100000001490116119384765625f, _574, 1.0f);
          float _4117 = (0.5f + (0.5f * _46_m6[_2198].y)) - abs(_46_m6[_2198].x);
          float _4118 = _46_m6[_2198].y - _4117;
          float _4125 = abs(max((1.0f - abs(_4117)) - abs(_4118), 0.00048828125f));
          float3 _4129 = normalize(float3(_4117, _4118, (_46_m6[_2198].x >= 0.0f) ? _4125 : (-_4125)));
          float3 _4130 = _46_m6[_2195].xyz - _451;
          float _4131 = dot(_4130, _4130);
          float _4132 = rsqrt(_4131);
          float3 _4133 = _4130 * _4132;
          float _4137 = clamp(_46_m6[_2213].y * _4132, 0.0f, 1.0f);
          int _4142 = int(_46_m6[_2213].w);
          float3 _4143 = _4129 * _46_m6[_2198].z;
          float3 _4144 = _4143 * 0.5f;
          float3 _4145 = _4130 - _4144;
          float3 _4146 = _4130 + _4144;
          bool _4148 = (_2296 & 1u) == 0u;
          bool _4151 = _4148 || ((_2217 & 2u) != 0u);
          bool _4154 = (!_4148) && (_46_m6[_2198].z > 0.0f);
          float _4173;
          float _4174;
          if (_4154) {
            float _4158 = length(_4145);
            float _4159 = length(_4146);
            _4173 = clamp(0.5f * ((dot(_602, _4145) / _4158) + (dot(_602, _4146) / _4159)), 0.0f, 1.0f);
            _4174 = 1.0f / ((((_4158 * _4159) + dot(_4145, _4146)) * 0.5f) + 1.0f);
          } else {
            _4173 = clamp(dot(_602, _4133), 0.0f, 1.0f);
            _4174 = 1.0f;
          }
          float _4196;
          if (_46_m6[_2210].w < 0.0f) {
            float _4190 = _4131 * (_46_m6[_2195].w * _46_m6[_2195].w);
            float _4193 = clamp(1.0f - (_4190 * _4190), 0.0f, 1.0f);
            _4196 = lerp(1.0f / (_4131 + 1.0f), _4174, float(_4154)) * (_4193 * _4193);
          } else {
            float3 _4179 = _4130 * _46_m6[_2195].w;
            _4196 = _4174 * pow(1.0f - clamp(dot(_4179, _4179), 0.0f, 1.0f), _46_m6[_2210].w);
          }
          float _4202 = clamp((dot(_4133, -_4129) - _46_m6[_2198].z) * _46_m6[_2198].w, 0.0f, 1.0f);
          float _4206 = _4196 * lerp(1.0f, _4202 * _4202, float(_4148));
          float _4306;
          if ((!_4154) && (_4142 >= 0)) {
            uint _4212 = uint(_4142);
            float2 _4299;
            [branch] if (_4148) {
              float4 _4289 = mul(_70_m1[_4212], _455);
              _4299 = _70_m0[_4212].xy + (clamp(_4289.xy / _4289.w.xx, 0.0f.xx, 1.0f.xx) * _70_m0[_4212].zw);
            }
            else {
              float3 _4226 = mul(float4(-_4130, 0.0f), _70_m1[_4212]).xyz;
              float3 _388 = _4226;
              float3 _387 = _4226;
              float3 _386 = abs(_4226);
              uint _4235 = uint(int(_386.y > _386.x));
              uint _4241 = (_386.z > _386[_4235]) ? 2u : _4235;
              uint _4247 = (_4241 * 2u) + uint(_387[_4241] < 0.0f);
              float _4251 = abs(_388[_4247 / 2u]);
              float _4271 = 0.5f - (0.000244140625f / _70_m0[_4212].w);
              _4299 = _70_m0[_4212].xy + (clamp(float2((float(_4247) + ((((_388[uint(_361[_4247].x)] * _362[_4247].x) / _4251) * _4271) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_388[uint(_361[_4247].y)] * _362[_4247].y) / _4251) * _4271)), 0.0f.xx, 1.0f.xx) * _70_m0[_4212].zw);
            }
            _4306 = _4206 * _68.SampleLevel(_23, _4299, 0.0f).x;
          } else {
            _4306 = _4206;
          }
          bool _4307 = _4306 > 0.0f;
          float _4691;
          if (_4307) {
            int _4360;
            if (_4151) {
              _4360 = int(_46_m6[_2201].x);
            } else {
              uint _4315 = asuint(_46_m6[_2198].w);
              uint _4316 = asuint(_46_m6[_2201].x);
              float3 _4317 = _451 - _46_m6[_2195].xyz;
              float3 _4318 = abs(_4317);
              float _4319 = _4318.x;
              float _4320 = _4318.y;
              float _4322 = _4318.z;
              int _4355;
              if ((_4319 > _4320) && (_4319 > _4322)) {
                _4355 = int((_4317.x > 0.0f) ? (_4315 & 1023u) : ((_4315 >> 10u) & 1023u));
              } else {
                int _4347;
                if (_4320 > _4322) {
                  _4347 = int((_4317.y > 0.0f) ? ((_4315 >> 20u) & 1023u) : (_4316 & 1023u));
                } else {
                  _4347 = int((_4317.z > 0.0f) ? ((_4316 >> 10u) & 1023u) : ((_4316 >> 20u) & 1023u));
                }
                _4355 = _4347;
              }
              _4360 = (_4355 == 1023) ? (-1) : _4355;
            }
            uint _4367 = asuint(_50_m11.x) + (uint(_4360) * 96u);
            uint _4369 = (_4367 + 64u) >> 2u;
            uint _4372 = _4369 + 1u;
            uint _4375 = _4369 + 2u;
            uint _4378 = _4369 + 3u;
            float4 _4382 = asfloat(uint4(_54.Load(_4369 * 4 + 0), _54.Load(_4372 * 4 + 0), _54.Load(_4375 * 4 + 0), _54.Load(_4378 * 4 + 0)));
            float3 _4389 = (_451 - ((-_4133) * _4382.x)) + (_602 * (_4382.y * 5.0f));
            uint _4390 = _4367 >> 2u;
            uint _4405 = (_4367 + 16u) >> 2u;
            uint _4420 = (_4367 + 32u) >> 2u;
            uint _4435 = (_4367 + 48u) >> 2u;
            float4 _4455 = mul(transpose(float4x4(asfloat(uint4(_54.Load(_4390 * 4 + 0), _54.Load((_4390 + 1u) * 4 + 0), _54.Load((_4390 + 2u) * 4 + 0), _54.Load((_4390 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_4405 * 4 + 0), _54.Load((_4405 + 1u) * 4 + 0), _54.Load((_4405 + 2u) * 4 + 0), _54.Load((_4405 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_4420 * 4 + 0), _54.Load((_4420 + 1u) * 4 + 0), _54.Load((_4420 + 2u) * 4 + 0), _54.Load((_4420 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_4435 * 4 + 0), _54.Load((_4435 + 1u) * 4 + 0), _54.Load((_4435 + 2u) * 4 + 0), _54.Load((_4435 + 3u) * 4 + 0))))), float4(_4389, 1.0f));
            float _4456 = _4455.w;
            float3 _4459 = _4455.xyz / _4456.xxx;
            uint _4461 = (_4367 + 80u) >> 2u;
            float4 _4474 = asfloat(uint4(_54.Load(_4461 * 4 + 0), _54.Load((_4461 + 1u) * 4 + 0), _54.Load((_4461 + 2u) * 4 + 0), _54.Load((_4461 + 3u) * 4 + 0)));
            float2 _4475 = _4459.xy;
            float2 _4477 = _4474.xy;
            float3 _4481 = _4459.xyz;
            bool3 _4482 = bool3(_4481.x <= 0.0f.xxx.x, _4481.y <= 0.0f.xxx.y, _4481.z <= 0.0f.xxx.z);
            bool3 _4483 = bool3(_4481.x >= 1.0f.xxx.x, _4481.y >= 1.0f.xxx.y, _4481.z >= 1.0f.xxx.z);
            float _4486 = _4459.z;
            float2 _4497 = ((_4475 * (_4474.zw - _4477)) + _4477).xy * _50_m10.zw;
            float2 _4499 = floor(_4497 + 0.5f.xx);
            float2 _4500 = _4497 - _4499;
            float _4501 = _4500.x;
            float _4502 = _4501 + 0.5f;
            float _4503 = _4502 * _4502;
            float _4506 = 1.0f - _4501;
            float _4507 = min(_4501, 0.0f);
            float _4510 = _4501 + 1.0f;
            float _4511 = max(_4501, 0.0f);
            float _4522 = _4500.y;
            float _4523 = _4522 + 0.5f;
            float _4524 = _4523 * _4523;
            float _4527 = 1.0f - _4522;
            float _4528 = min(_4522, 0.0f);
            float _4531 = _4522 + 1.0f;
            float _4532 = max(_4522, 0.0f);
            float3 _4544 = float3(0.1599999964237213134765625f * _4506, 0.1599999964237213134765625f * ((_4510 - (_4511 * _4511)) + 1.0f), _4503 * 0.07999999821186065673828125f);
            float3 _4545 = float3(0.1599999964237213134765625f * ((_4503 * 0.5f) - _4501), 0.1599999964237213134765625f * ((_4506 - (_4507 * _4507)) + 1.0f), 0.1599999964237213134765625f * _4510) + _4544;
            float3 _4547 = float3(0.1599999964237213134765625f * _4527, 0.1599999964237213134765625f * ((_4531 - (_4532 * _4532)) + 1.0f), _4524 * 0.07999999821186065673828125f);
            float3 _4548 = float3(0.1599999964237213134765625f * ((_4524 * 0.5f) - _4522), 0.1599999964237213134765625f * ((_4527 - (_4528 * _4528)) + 1.0f), 0.1599999964237213134765625f * _4531) + _4547;
            float3 _4554 = ((_4544 / _4545) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.xxx;
            float3 _4556 = ((_4547 / _4548) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.yyy;
            float2 _4558 = _4499 * _50_m10.xy;
            float _4559 = _4554.x;
            float _4560 = _4556.x;
            float2 _4562 = _4558 + float2(_4559, _4560);
            float _4563 = _4554.y;
            float2 _4565 = _4558 + float2(_4563, _4560);
            float _4566 = _4554.z;
            float2 _4568 = _4558 + float2(_4566, _4560);
            float _4569 = _4556.y;
            float2 _4571 = _4558 + float2(_4559, _4569);
            float2 _4573 = _4558 + float2(_4563, _4569);
            float2 _4575 = _4558 + float2(_4566, _4569);
            float _4576 = _4556.z;
            float2 _4578 = _4558 + float2(_4559, _4576);
            float2 _4580 = _4558 + float2(_4563, _4576);
            float2 _4582 = _4558 + float2(_4566, _4576);
            float _4583 = _4545.x;
            float _4584 = _4548.x;
            float _4586 = _4545.y;
            float _4588 = _4545.z;
            float _4590 = _4548.y;
            float _4594 = _4548.z;
            float _4660 = ((((((((_4583 * _4584) * _52.SampleCmpLevelZero(_26, float3(_4562, _382).xy, _4486)) + ((_4586 * _4584) * _52.SampleCmpLevelZero(_26, float3(_4565, _382).xy, _4486))) + ((_4588 * _4584) * _52.SampleCmpLevelZero(_26, float3(_4568, _382).xy, _4486))) + ((_4583 * _4590) * _52.SampleCmpLevelZero(_26, float3(_4571, _382).xy, _4486))) + ((_4586 * _4590) * _52.SampleCmpLevelZero(_26, float3(_4573, _382).xy, _4486))) + ((_4588 * _4590) * _52.SampleCmpLevelZero(_26, float3(_4575, _382).xy, _4486))) + ((_4583 * _4594) * _52.SampleCmpLevelZero(_26, float3(_4578, _382).xy, _4486))) + ((_4586 * _4594) * _52.SampleCmpLevelZero(_26, float3(_4580, _382).xy, _4486));
            float4 _4675 = asfloat(uint4(_54.Load(_4369 * 4 + 0), _54.Load(_4372 * 4 + 0), _54.Load(_4375 * 4 + 0), _54.Load(_4378 * 4 + 0)));
            float _4676 = _4675.w;
            float2 _4678 = min(_4475, 1.0f.xx - _4475);
            _4691 = (_4360 >= 0) ? lerp(1.0f, (any(bool3(_4482.x || _4483.x, _4482.y || _4483.y, _4482.z || _4483.z)) || ((asuint(_4486) & 2147483647u) > 2139095040u)) ? 1.0f : (_4660 + ((_4588 * _4594) * _52.SampleCmpLevelZero(_26, float3(_4582, _382).xy, _4486))), _4151 ? min(_4676, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4675.z - _4456) * 0.25f, min(_4678.x, _4678.y)))) : _4676) : 1.0f;
          } else {
            _4691 = 1.0f;
          }
          float3 _4714;
          float3 _4715;
          if (_4154) {
            float3 _4694 = _4108 * _4108;
            float _4703 = dot(_1138, _4143);
            _4714 = _4694 / clamp(_4694 + (0.5f * clamp(_46_m6[_2198].z * _4132, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4715 = normalize(_4145 + (_4143 * clamp(dot(_4145, (_1138 * _4703) - _4143) / ((_46_m6[_2198].z * _46_m6[_2198].z) - (_4703 * _4703)), 0.0f, 1.0f)));
          } else {
            _4714 = 1.0f.xxx;
            _4715 = _4133;
          }
          float3 _4716 = _4715 + _488;
          float3 _4720 = _4716 * rsqrt(max(6.103515625e-05f, dot(_4716, _4716)));
          float3 _4825;
          if (_4307) {
            float _4723 = clamp(_4173, 0.0f, 1.0f);
            float _4725 = clamp(dot(_602, _4720), 0.0f, 1.0f);
            float _4727 = clamp(dot(_488, _4720), 0.0f, 1.0f);
            float _4728 = clamp(_655, 0.0f, 1.0f);
            float _4729 = _574 * _574;
            float _4739;
            if (_4137 > 0.0f) {
              _4739 = clamp(_4729 + ((_4137 * _4137) / ((_4727 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4739 = _4729;
            }
            float _4740 = _4739 * _4739;
            float _4761 = (((_4725 * _4740) - _4725) * _4725) + 1.0f;
            float _4766 = 1.0f - _4727;
            float _4767 = _4766 * _4766;
            float _4769 = (_4766 * _4767) * _4767;
            float _4793 = 1.0f - _574;
            float _4800 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4793 * (1.04997003078460693359375f + (_4793 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4793))))));
            float _4801 = 1.0f - _4800;
            float3 _4804 = _654 + ((1.0f.xxx - _654) * 0.0476190485060214996337890625f);
            float3 _4824 = ((clamp((min(((_654 * (1.0f - _4769)) + _4769.xxx) * (((_4740 / (_4761 * _4761)) * _4714.y) * (0.5f / (((_4723 * sqrt(((((-_4728) * _4740) + _4728) * _4728) + _4740)) + (_4728 * sqrt(((((-_4723) * _4740) + _4723) * _4723) + _4740))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4804 * (((_60.SampleLevel(_23, (float2(_4728, _574) * 0.96875f) + 0.015625f.xx, 0.0f).x * _60.SampleLevel(_23, (float2(_4723, _574) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4800) / _4801)) * _4804) / (1.0f.xxx - (_4804 * _4801)))) * _46_m6[_2213].z, 0.0f.xxx, 1000.0f.xxx) * _4173) + ((_650 * _4714.z) * _4173)) * (((_46_m6[_2192].xyz * _4306) * _4691) * _2292);
            _4825 = _4824;
          } else {
            _4825 = 0.0f.xxx;
          }
          _4826 = _2152;
          _4827 = _4825;
        } else {
          float _4106;
          do {
            if (_2299) {
              _4106 = 1.0f;
              break;
            }
            float _3545 = (0.5f + (0.5f * _46_m6[_2198].y)) - abs(_46_m6[_2198].x);
            float _3546 = _46_m6[_2198].y - _3545;
            float _3553 = abs(max((1.0f - abs(_3545)) - abs(_3546), 0.00048828125f));
            float3 _3557 = normalize(float3(_3545, _3546, (_46_m6[_2198].x >= 0.0f) ? _3553 : (-_3553)));
            float3 _3558 = _46_m6[_2195].xyz - _451;
            float _3559 = dot(_3558, _3558);
            float3 _3561 = _3558 * rsqrt(_3559);
            int _3564 = int(_46_m6[_2213].w);
            float3 _3566 = (_3557 * _46_m6[_2198].z) * 0.5f;
            float3 _3567 = _3558 - _3566;
            float3 _3568 = _3558 + _3566;
            bool _3570 = (_2296 & 1u) == 0u;
            bool _3573 = _3570 || ((_2217 & 2u) != 0u);
            bool _3576 = (!_3570) && (_46_m6[_2198].z > 0.0f);
            float _3588;
            if (_3576) {
              _3588 = 1.0f / ((((length(_3567) * length(_3568)) + dot(_3567, _3568)) * 0.5f) + 1.0f);
            } else {
              _3588 = 1.0f;
            }
            float _3610;
            if (_46_m6[_2210].w < 0.0f) {
              float _3604 = _3559 * (_46_m6[_2195].w * _46_m6[_2195].w);
              float _3607 = clamp(1.0f - (_3604 * _3604), 0.0f, 1.0f);
              _3610 = lerp(1.0f / (_3559 + 1.0f), _3588, float(_3576)) * (_3607 * _3607);
            } else {
              float3 _3593 = _3558 * _46_m6[_2195].w;
              _3610 = _3588 * pow(1.0f - clamp(dot(_3593, _3593), 0.0f, 1.0f), _46_m6[_2210].w);
            }
            float _3616 = clamp((dot(_3561, -_3557) - _46_m6[_2198].z) * _46_m6[_2198].w, 0.0f, 1.0f);
            float _3620 = _3610 * lerp(1.0f, _3616 * _3616, float(_3570));
            float _3720;
            if ((!_3576) && (_3564 >= 0)) {
              uint _3626 = uint(_3564);
              float2 _3713;
              [branch] if (_3570) {
                float4 _3703 = mul(_70_m1[_3626], _455);
                _3713 = _70_m0[_3626].xy + (clamp(_3703.xy / _3703.w.xx, 0.0f.xx, 1.0f.xx) * _70_m0[_3626].zw);
              }
              else {
                float3 _3640 = mul(float4(-_3558, 0.0f), _70_m1[_3626]).xyz;
                float3 _391 = _3640;
                float3 _390 = _3640;
                float3 _389 = abs(_3640);
                uint _3649 = uint(int(_389.y > _389.x));
                uint _3655 = (_389.z > _389[_3649]) ? 2u : _3649;
                uint _3661 = (_3655 * 2u) + uint(_390[_3655] < 0.0f);
                float _3665 = abs(_391[_3661 / 2u]);
                float _3685 = 0.5f - (0.000244140625f / _70_m0[_3626].w);
                _3713 = _70_m0[_3626].xy + (clamp(float2((float(_3661) + ((((_391[uint(_361[_3661].x)] * _362[_3661].x) / _3665) * _3685) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_391[uint(_361[_3661].y)] * _362[_3661].y) / _3665) * _3685)), 0.0f.xx, 1.0f.xx) * _70_m0[_3626].zw);
              }
              _3720 = _3620 * _68.SampleLevel(_23, _3713, 0.0f).x;
            } else {
              _3720 = _3620;
            }
            float _4105;
            if (_3720 > 0.0f) {
              int _3774;
              if (_3573) {
                _3774 = int(_46_m6[_2201].x);
              } else {
                uint _3729 = asuint(_46_m6[_2198].w);
                uint _3730 = asuint(_46_m6[_2201].x);
                float3 _3731 = _451 - _46_m6[_2195].xyz;
                float3 _3732 = abs(_3731);
                float _3733 = _3732.x;
                float _3734 = _3732.y;
                float _3736 = _3732.z;
                int _3769;
                if ((_3733 > _3734) && (_3733 > _3736)) {
                  _3769 = int((_3731.x > 0.0f) ? (_3729 & 1023u) : ((_3729 >> 10u) & 1023u));
                } else {
                  int _3761;
                  if (_3734 > _3736) {
                    _3761 = int((_3731.y > 0.0f) ? ((_3729 >> 20u) & 1023u) : (_3730 & 1023u));
                  } else {
                    _3761 = int((_3731.z > 0.0f) ? ((_3730 >> 10u) & 1023u) : ((_3730 >> 20u) & 1023u));
                  }
                  _3769 = _3761;
                }
                _3774 = (_3769 == 1023) ? (-1) : _3769;
              }
              uint _3781 = asuint(_50_m11.x) + (uint(_3774) * 96u);
              uint _3783 = (_3781 + 64u) >> 2u;
              uint _3786 = _3783 + 1u;
              uint _3789 = _3783 + 2u;
              uint _3792 = _3783 + 3u;
              float4 _3796 = asfloat(uint4(_54.Load(_3783 * 4 + 0), _54.Load(_3786 * 4 + 0), _54.Load(_3789 * 4 + 0), _54.Load(_3792 * 4 + 0)));
              float3 _3803 = (_451 - ((-_3561) * _3796.x)) + (_602 * (_3796.y * 5.0f));
              uint _3804 = _3781 >> 2u;
              uint _3819 = (_3781 + 16u) >> 2u;
              uint _3834 = (_3781 + 32u) >> 2u;
              uint _3849 = (_3781 + 48u) >> 2u;
              float4 _3869 = mul(transpose(float4x4(asfloat(uint4(_54.Load(_3804 * 4 + 0), _54.Load((_3804 + 1u) * 4 + 0), _54.Load((_3804 + 2u) * 4 + 0), _54.Load((_3804 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3819 * 4 + 0), _54.Load((_3819 + 1u) * 4 + 0), _54.Load((_3819 + 2u) * 4 + 0), _54.Load((_3819 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3834 * 4 + 0), _54.Load((_3834 + 1u) * 4 + 0), _54.Load((_3834 + 2u) * 4 + 0), _54.Load((_3834 + 3u) * 4 + 0))), asfloat(uint4(_54.Load(_3849 * 4 + 0), _54.Load((_3849 + 1u) * 4 + 0), _54.Load((_3849 + 2u) * 4 + 0), _54.Load((_3849 + 3u) * 4 + 0))))), float4(_3803, 1.0f));
              float _3870 = _3869.w;
              float3 _3873 = _3869.xyz / _3870.xxx;
              uint _3875 = (_3781 + 80u) >> 2u;
              float4 _3888 = asfloat(uint4(_54.Load(_3875 * 4 + 0), _54.Load((_3875 + 1u) * 4 + 0), _54.Load((_3875 + 2u) * 4 + 0), _54.Load((_3875 + 3u) * 4 + 0)));
              float2 _3889 = _3873.xy;
              float2 _3891 = _3888.xy;
              float3 _3895 = _3873.xyz;
              bool3 _3896 = bool3(_3895.x <= 0.0f.xxx.x, _3895.y <= 0.0f.xxx.y, _3895.z <= 0.0f.xxx.z);
              bool3 _3897 = bool3(_3895.x >= 1.0f.xxx.x, _3895.y >= 1.0f.xxx.y, _3895.z >= 1.0f.xxx.z);
              float _3900 = _3873.z;
              float2 _3911 = ((_3889 * (_3888.zw - _3891)) + _3891).xy * _50_m10.zw;
              float2 _3913 = floor(_3911 + 0.5f.xx);
              float2 _3914 = _3911 - _3913;
              float _3915 = _3914.x;
              float _3916 = _3915 + 0.5f;
              float _3917 = _3916 * _3916;
              float _3920 = 1.0f - _3915;
              float _3921 = min(_3915, 0.0f);
              float _3924 = _3915 + 1.0f;
              float _3925 = max(_3915, 0.0f);
              float _3936 = _3914.y;
              float _3937 = _3936 + 0.5f;
              float _3938 = _3937 * _3937;
              float _3941 = 1.0f - _3936;
              float _3942 = min(_3936, 0.0f);
              float _3945 = _3936 + 1.0f;
              float _3946 = max(_3936, 0.0f);
              float3 _3958 = float3(0.1599999964237213134765625f * _3920, 0.1599999964237213134765625f * ((_3924 - (_3925 * _3925)) + 1.0f), _3917 * 0.07999999821186065673828125f);
              float3 _3959 = float3(0.1599999964237213134765625f * ((_3917 * 0.5f) - _3915), 0.1599999964237213134765625f * ((_3920 - (_3921 * _3921)) + 1.0f), 0.1599999964237213134765625f * _3924) + _3958;
              float3 _3961 = float3(0.1599999964237213134765625f * _3941, 0.1599999964237213134765625f * ((_3945 - (_3946 * _3946)) + 1.0f), _3938 * 0.07999999821186065673828125f);
              float3 _3962 = float3(0.1599999964237213134765625f * ((_3938 * 0.5f) - _3936), 0.1599999964237213134765625f * ((_3941 - (_3942 * _3942)) + 1.0f), 0.1599999964237213134765625f * _3945) + _3961;
              float3 _3968 = ((_3958 / _3959) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.xxx;
              float3 _3970 = ((_3961 / _3962) + float3(-2.5f, -0.5f, 1.5f)) * _50_m10.yyy;
              float2 _3972 = _3913 * _50_m10.xy;
              float _3973 = _3968.x;
              float _3974 = _3970.x;
              float2 _3976 = _3972 + float2(_3973, _3974);
              float _3977 = _3968.y;
              float2 _3979 = _3972 + float2(_3977, _3974);
              float _3980 = _3968.z;
              float2 _3982 = _3972 + float2(_3980, _3974);
              float _3983 = _3970.y;
              float2 _3985 = _3972 + float2(_3973, _3983);
              float2 _3987 = _3972 + float2(_3977, _3983);
              float2 _3989 = _3972 + float2(_3980, _3983);
              float _3990 = _3970.z;
              float2 _3992 = _3972 + float2(_3973, _3990);
              float2 _3994 = _3972 + float2(_3977, _3990);
              float2 _3996 = _3972 + float2(_3980, _3990);
              float _3997 = _3959.x;
              float _3998 = _3962.x;
              float _4000 = _3959.y;
              float _4002 = _3959.z;
              float _4004 = _3962.y;
              float _4008 = _3962.z;
              float _4074 = ((((((((_3997 * _3998) * _52.SampleCmpLevelZero(_26, float3(_3976, _382).xy, _3900)) + ((_4000 * _3998) * _52.SampleCmpLevelZero(_26, float3(_3979, _382).xy, _3900))) + ((_4002 * _3998) * _52.SampleCmpLevelZero(_26, float3(_3982, _382).xy, _3900))) + ((_3997 * _4004) * _52.SampleCmpLevelZero(_26, float3(_3985, _382).xy, _3900))) + ((_4000 * _4004) * _52.SampleCmpLevelZero(_26, float3(_3987, _382).xy, _3900))) + ((_4002 * _4004) * _52.SampleCmpLevelZero(_26, float3(_3989, _382).xy, _3900))) + ((_3997 * _4008) * _52.SampleCmpLevelZero(_26, float3(_3992, _382).xy, _3900))) + ((_4000 * _4008) * _52.SampleCmpLevelZero(_26, float3(_3994, _382).xy, _3900));
              float4 _4089 = asfloat(uint4(_54.Load(_3783 * 4 + 0), _54.Load(_3786 * 4 + 0), _54.Load(_3789 * 4 + 0), _54.Load(_3792 * 4 + 0)));
              float _4090 = _4089.w;
              float2 _4092 = min(_3889, 1.0f.xx - _3889);
              _4105 = (_3774 >= 0) ? lerp(1.0f, (any(bool3(_3896.x || _3897.x, _3896.y || _3897.y, _3896.z || _3897.z)) || ((asuint(_3900) & 2147483647u) > 2139095040u)) ? 1.0f : (_4074 + ((_4002 * _4008) * _52.SampleCmpLevelZero(_26, float3(_3996, _382).xy, _3900))), _3573 ? min(_4090, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4089.z - _3870) * 0.25f, min(_4092.x, _4092.y)))) : _4090) : 1.0f;
            } else {
              _4105 = 1.0f;
            }
            _4106 = _4105;
            break;
          } while (false);
          _4826 = _2152 * _4106;
          _4827 = 0.0f.xxx;
        }
        _4828 = _4826;
        _4829 = _4827;
        break;
      } while (false);
      _2177 = _4828;
      _2180 = _2179 + _4829;
    }
    _2149 = _2148 + _2179;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x7866E193:
  float3 _4835 = ((((float3(_1117, _1122, _1127) * _650) * lerp(1.0f, _544.z, _41_m4)) * _18_m22.x) + ((_1438 * ((_654 * _669.x) + (clamp(50.0f * _654.y, 0.0f, 1.0f) * _669.y).xxx)) * 1.0f)) + (_2123.xyz + (_2148 * _2151)).xyz;
  */
  float3 _4835 = ((((float3(_1117, _1122, _1127) * (_650 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _544.z, _41_m4)) * _18_m22.x) + ((_1438 * ((_654 * _669.x) + (clamp(50.0f * _654.y, 0.0f, 1.0f) * _669.y).xxx)) * 1.0f)) + (_2123.xyz + ((_2148 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2151)).xyz;
  // RenoDX code end
  float4 _4836 = float4(_4835.x, _4835.y, _4835.z, _383.w);
  _4836.w = _569;
  float _4853 = _451.y * _18_m46.w;
  float _4858 = max(0.00999999977648258209228515625f, _4853 + _18_m47.w);
  float3 _4872 = exp(_18_m45.xyz * ((-max(0.0f, (_489 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4858)) / _4858) * exp(_4853 + _18_m48.w))));
  float _4875 = dot(_1137, _18_m44.xyz);
  float _4881 = _18_m45.w * _18_m45.w;
  float _4885 = (1.0f + _4881) - ((2.0f * _18_m45.w) * _4875);
  float3 _5217;
  float _5218;
  if (_18_m55.z > 0.0f) {
    uint3 _5043 = (uint3(int3(int(_709.x), int(_709.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5044 = _5043.y;
    uint _5045 = _5043.z;
    uint _5048 = _5043.x + (_5044 * _5045);
    uint _5050 = _5044 + (_5045 * _5048);
    uint _5052 = _5045 + (_5048 * _5050);
    uint _5054 = _5048 + (_5050 * _5052);
    float _5078 = dot(_1137, -_16_m0[2].xyz);
    float3 _5088 = _451 - _16_m11.xyz;
    float _5090 = (_18_m55.w * ((_5078 > 5.9604644775390625e-08f) ? (1.0f / _5078) : 0.0f)) * (1.0f / _489);
    float _5091 = _5088.y;
    float _5092 = _5090 * _5091;
    float _5094 = _16_m11.y + _5092;
    float _5095 = _5091 - _5092;
    float _5097 = (1.0f - _5090) * _489;
    float _5111 = max(-127.0f, _18_m49.z * _5095);
    float _5135 = max(-127.0f, _18_m52.x * _5095);
    float _5146 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5094 - _18_m49.x)))) * ((abs(_5111) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5111)) / _5111) : (0.693147182464599609375f - (0.2402265071868896484375f * _5111)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5094 - _18_m52.z)))) * ((abs(_5135) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5135)) / _5135) : (0.693147182464599609375f - (0.2402265071868896484375f * _5135))));
    float _5168 = clamp((_489 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5171 = clamp((max(clamp(exp2(-(_5146 * _5097)), 0.0f, 1.0f), _18_m51.w) + clamp((_489 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5168, 0.0f, 1.0f);
    float4 _5211 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _67.SampleLevel(_23, float3((_1147 + ((((float3(uint3(_5054, _5050 + (_5052 * _5054), _384) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_710 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_710 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5217 = _5211.xyz + (((_18_m51.xyz * (1.0f - _5171)) + (((_18_m54.xyz * pow(clamp(dot(_488, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5146 * max(_5097 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5168))) * _5211.w);
    _5218 = _5211.w * _5171;
  } else {
    float3 _4915 = _451 - _16_m11.xyz;
    float _4917 = _4915.y;
    float _4931 = max(-127.0f, _18_m49.z * _4917);
    float _4955 = max(-127.0f, _18_m52.x * _4917);
    float _4966 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_4931) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4931)) / _4931) : (0.693147182464599609375f - (0.2402265071868896484375f * _4931)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_4955) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4955)) / _4955) : (0.693147182464599609375f - (0.2402265071868896484375f * _4955))));
    float _4988 = clamp((_489 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _4991 = clamp((max(clamp(exp2(-(_4966 * _489)), 0.0f, 1.0f), _18_m51.w) + clamp((_489 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _4988, 0.0f, 1.0f);
    _5217 = (_18_m51.xyz * (1.0f - _4991)) + (((_18_m54.xyz * pow(clamp(dot(_488, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_4966 * max(_489 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4988));
    _5218 = _4991;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x7866E193:
  float3 _5224 = ((_4836.xyz * (_4872 * _5218)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4875 * _4875)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4881) / max((12.56637096405029296875f * _4885) * sqrt(_4885), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4872)) * _5218) + _5217)).xyz;
  */
  float3 _5224 = ((_4836.xyz * (FOG_MODIFICATION > 0.5f ? (0.35f + 0.65f * (_4872 * _5218)) : (_4872 * _5218))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4875 * _4875)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4881) / max((12.56637096405029296875f * _4885) * sqrt(_4885), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4872)) * _5218 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)) + (_5217 * (FOG_MODIFICATION > 0.5f ? 0.65f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5234 = lerp(dot(_5224, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5224, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5244 = min(lerp(((sqrt(sqrt(abs(_622 * 0.5f))) * float2(int2(sign(_622)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _609.xx), 1.0f.xx);
  float4 _5245 = float4(_5244.x, _5244.y, _383.z, _383.w);
  _5245.z = float(clamp(max(dot(_5234.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _569, _569) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5245.w = lerp(0.0f, 0.699999988079071044921875f, _609);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0x7866E193:
  _13 = float4(_5234.x, _5234.y, _5234.z, _4836.w);
  */
  float3 renodx_output_color = float3(_5234.x, _5234.y, _5234.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4836.w);
  // RenoDX code end
  _14 = _5245;
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

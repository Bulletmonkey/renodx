#include "../shared.h"

// Ported from the native 0xF4FF1066 Vulkan dump.
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

static float _383;
static float4 _384;
static uint _385;

static const float4 _361[4] = {float4(1.0f, 0.0f, 0.0f, 0.0f), float4(0.0f, 1.0f, 0.0f, 0.0f), float4(0.0f, 0.0f, 1.0f, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)};
static const int2 _362[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _363[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
  float _39_m50 : packoffset(c23);
  float _39_m51 : packoffset(c23.y);
  float _39_m52 : packoffset(c23.z);
  float _39_m53 : packoffset(c23.w);
  float4 _39_m54 : packoffset(c24);
  float4 _39_m55 : packoffset(c25);
  float _39_m56 : packoffset(c26);
  float _39_m57 : packoffset(c26.y);
  float _39_m58 : packoffset(c26.z);
  float _39_m59 : packoffset(c26.w);
  float _39_m60 : packoffset(c27);
  float _39_m61 : packoffset(c27.y);
  float _39_m62 : packoffset(c27.z);
  float _39_m63 : packoffset(c27.w);
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
  float2 _414 = ((gl_FragCoord.xy * _18_m0.zw) * 2.0f) - 1.0f.xx;
  float4 _417 = float4(_414, gl_FragCoord.z, 1.0f);
  _417.y = -_414.y;
  float4 _420 = mul(_16_m6, _417);
  float3 _424 = _420.xyz / _420.w.xxx;
  float4 _428 = float4(_424, 1.0f);
  float _435 = (_7.w > 0.0f) ? 1.0f : (-1.0f);
  float3 _442 = cross(_6, float4(_7.xyz, _435).xyz) * _435;
  float3 _457;
  do {
    if (_18_m4.w == 0.0f) {
      _457 = _16_m11.xyz - _424;
      break;
    } else {
      _457 = _16_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _458 = dot(_457, _457);
  float _460 = rsqrt(max(_458, 9.9999999392252902907785028219223e-09f));
  float3 _461 = _457 * _460;
  float _462 = _458 * _460;
  float2 _483 = (lerp(_4, _5, _39_m12.xx) * _39_m36.xy) + _39_m36.zw;
  float4 _497 = _32.SampleBias(_33, (lerp(_4, _5, _39_m11.xx) * _39_m35.xy) + _39_m35.zw, _18_m16);
  float4 _501 = _34.SampleBias(_35, _483, _39_m13 + _18_m16);
  _501.w = _501.w * _501.x;
  float2 _509 = ((_501.wy * 2.0f) - 1.0f.xx).xy;
  float _514 = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_509, _509), 0.0f, 1.0f)));
  float2 _515 = _509 * _39_m0;
  float4 _517 = _36.SampleBias(_37, _483, _18_m16);
  float _533 = _497.w;
  float _536 = _533 * _39_m32.w;
  float _542 = lerp(_536, _536 * _8.x, _39_m60);
  float _547 = lerp(_39_m2, _39_m3, _517.y);
  float _557 = lerp(_517.x, _39_m17, clamp(_39_m15 - 1.0f, 0.0f, 1.0f));
  float _565 = clamp(_39_m57, 0.0f, 1.0f);
  float _573 = clamp((lerp(1.0f, lerp(_533, _517.w, clamp(_39_m57 - 2.0f, 0.0f, 1.0f)), _565) * 1.111111164093017578125f) - 0.055555559694766998291015625f, 0.0f, 1.0f);
  float3 _605 = lerp(0.0f.xxx, (lerp(_39_m54.xyz, _21_m0[_11]._m7.xyz, _21_m0[_11]._m7.w.xxx) * _573) * _39_m56, _565.xxx);
  float _609 = _21_m0[_11]._m9.w * step(0.100000001490116119384765625f, _573);
  float3 _614 = lerp(clamp((_497.xyz * _39_m32.xyz) * _39_m18, 0.0f.xxx, 1.0f.xxx), _39_m32.xyz, _39_m16.xxx) * ((1.0f - _609).xxx + (_21_m0[_11]._m9.xyz * _609));
  float3 _642;
  [branch] if (_39_m49 > 0.5f) {
    _642 = _605 + ((_39_m55.xyz * ((1.0f - pow(clamp(abs(dot(_461, lerp(normalize(((_7.xyz * _515.x) + (_442 * _515.y)) + (_6 * _514)), _6, _39_m53.xxx))) + _39_m50, 0.0f, 1.0f), _39_m51)) * lerp(1.0f, _8.y, _39_m52))) * 1.0f);
  }
  else {
    _642 = _605;
  }
  float3 _665 = ((_7.xyz * _515.x) + (_442 * _515.y)) + (_6 * (_514 * ((gl_FrontFacing ? true : false) ? 1.0f : ((_39_m7 > 0.0f) ? (-1.0f) : 1.0f))));
  float3 _669 = _665 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_665, _665)));
  float _681 = clamp(float(int(sign(max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z) + (-0.10000002384185791015625f)))), 0.0f, 1.0f);
  float2 _694 = (_9.xy / max(_9.z, 9.9999999392252902907785028219223e-09f).xx) - (_10.xy / max(_10.z, 9.9999999392252902907785028219223e-09f).xx);
  _694.y = -_694.y;
  float _720 = 0.07999999821186065673828125f * _39_m1;
  float3 _721 = _614 * _557;
  float3 _722 = _614 - _721;
  float3 _726 = (_720 - (_720 * _557)).xxx + _721;
  float _727 = dot(_669, _461);
  float4 _730 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _547) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _731 = _730.x;
  float2 _741 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_731 * _731, exp2((-9.27999973297119140625f) * max(0.0f, _727))) * _731) + _730.y)) + _730.zw;
  uint2 _781;
  float _782;
  if (_18_m24.y == 1.0f) {
    float4 _758 = mul(_18_m138, _428);
    float4 _761 = _758;
    _761.y = -_758.y;
    float4 _764 = _761 * (1.0f / _758.w);
    _781 = uint2(clamp(((_764.xy * 0.5f) + 0.5f.xx).xy, 0.0f.xx, 1.0f.xx) * _18_m0.xy);
    _782 = 1.0f / ((_18_m2.z * _764.z) + _18_m2.w);
  } else {
    _781 = uint2(gl_FragCoord.xy);
    _782 = abs(mul(_16_m0, _428).z);
  }
  float3 _784 = _424 + (_669 * 0.25f);
  float3 _794 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _803 = _784 - (_18_m108.xyz + (_794 * (-_18_m110.w)));
  float _818 = max(min(max((max(abs(_803.x), abs(_803.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_803.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1120;
  float4 _1121;
  float4 _1122;
  float _1123;
  float _1124;
  if ((_18_m108.w != 0.0f) && (_818 < 1.0f)) {
    float3 _831 = _784 - (_18_m108.xyz + (_794 * (-_18_m110.y)));
    float _845 = max(clamp((max(abs(_831.x), abs(_831.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_831.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _921;
    float4 _922;
    float4 _923;
    float4 _924;
    if (_845 < 1.0f) {
      float3 _854 = ((_784 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _856 = _854 - floor(_854);
      float4 _860 = _59.SampleLevel(_24, _856, 0.0f);
      float _861 = 1.0f - _845;
      float _865 = _18_m109.y * 0.5f;
      float _870 = _856.x;
      float _871 = clamp(_856.y, _865, 1.0f - _865) * 0.3333333432674407958984375f;
      float _872 = _856.z;
      float4 _875 = _60.SampleLevel(_23, float3(_870, _871, _872), 0.0f);
      _921 = _818 + (_875.w * _861);
      _922 = float4(((_60.SampleLevel(_23, float3(_870, _871 + 0.666666686534881591796875f, _872), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _860.z, _860.z) * _861;
      _923 = float4(((_60.SampleLevel(_23, float3(_870, _871 + 0.3333333432674407958984375f, _872), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _860.y, _860.y) * _861;
      _924 = float4(((_875.xyz * 4.0f) - 2.0f.xxx) * _860.x, _860.x) * _861;
    } else {
      _921 = _818;
      _922 = 0.0f.xxxx;
      _923 = 0.0f.xxxx;
      _924 = 0.0f.xxxx;
    }
    float3 _930 = _784 - (_18_m108.xyz + (_794 * (-_18_m110.z)));
    float _944 = max(clamp((max(abs(_930.x), abs(_930.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_930.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1024;
    float4 _1025;
    float4 _1026;
    float4 _1027;
    if (_944 < 1.0f) {
      float3 _953 = ((_784 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _955 = _953 - floor(_953);
      float4 _959 = _61.SampleLevel(_24, _955, 0.0f);
      float _961 = _845 * (1.0f - _944);
      float _965 = _18_m109.y * 0.5f;
      float _970 = _955.x;
      float _971 = clamp(_955.y, _965, 1.0f - _965) * 0.3333333432674407958984375f;
      float _972 = _955.z;
      float4 _975 = _62.SampleLevel(_23, float3(_970, _971, _972), 0.0f);
      _1024 = _921 + (_975.w * _961);
      _1025 = _922 + (float4(((_62.SampleLevel(_23, float3(_970, _971 + 0.666666686534881591796875f, _972), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _959.z, _959.z) * _961);
      _1026 = _923 + (float4(((_62.SampleLevel(_23, float3(_970, _971 + 0.3333333432674407958984375f, _972), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _959.y, _959.y) * _961);
      _1027 = _924 + (float4(((_975.xyz * 4.0f) - 2.0f.xxx) * _959.x, _959.x) * _961);
    } else {
      _1024 = _921;
      _1025 = _922;
      _1026 = _923;
      _1027 = _924;
    }
    float4 _1110;
    float4 _1111;
    float4 _1112;
    float _1113;
    if (_944 > 0.0f) {
      float3 _1036 = ((_784 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
      float3 _1039 = _18_m109.xyz * 0.5f;
      float3 _1041 = clamp(_1036 - floor(_1036), _1039, 1.0f.xxx - _1039);
      float4 _1045 = _63.SampleLevel(_24, _1041, 0.0f);
      float _1047 = _944 * (1.0f - _818);
      float _1051 = _18_m109.y * 0.5f;
      float _1057 = clamp(_1041.y, _1051, 1.0f - _1051) * 0.3333333432674407958984375f;
      float4 _1061 = _64.SampleLevel(_23, float3(_1041.x, _1057, _1041.z), 0.0f);
      float _1077 = _1045.x;
      float _1088 = _1045.y;
      float _1099 = _1045.z;
      _1110 = _1025 + (float4(((_64.SampleLevel(_23, float3(_1041.x, _1057 + 0.666666686534881591796875f, _1041.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1099, _1099) * _1047);
      _1111 = _1026 + (float4(((_64.SampleLevel(_23, float3(_1041.x, _1057 + 0.3333333432674407958984375f, _1041.z), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1088, _1088) * _1047);
      _1112 = _1027 + (float4(((_1061.xyz * 4.0f) - 2.0f.xxx) * _1077, _1077) * _1047);
      _1113 = _1024 + (_1061.w * _1047);
    } else {
      _1110 = _1025;
      _1111 = _1026;
      _1112 = _1027;
      _1113 = _1024;
    }
    float _1116 = clamp((_1113 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1120 = _1110;
    _1121 = _1111;
    _1122 = _1112;
    _1123 = _1116 - _818;
    _1124 = (_1116 + _818) * 0.5f;
  } else {
    _1120 = 0.0f.xxxx;
    _1121 = 0.0f.xxxx;
    _1122 = 0.0f.xxxx;
    _1123 = 0.0f;
    _1124 = 1.0f;
  }
  float4 _1144 = _1122 + float4(_18_m111.x * _1124, (_18_m111.y * _1124) + ((_18_m111.w * _1123) * 0.5f), _18_m111.z * _1124, (_18_m111.w * _1124) + ((_18_m111.y * _1123) * 0.375f));
  float4 _1164 = _1121 + float4(_18_m112.x * _1124, (_18_m112.y * _1124) + ((_18_m112.w * _1123) * 0.5f), _18_m112.z * _1124, (_18_m112.w * _1124) + ((_18_m112.y * _1123) * 0.375f));
  float4 _1184 = _1120 + float4(_18_m113.x * _1124, (_18_m113.y * _1124) + ((_18_m113.w * _1123) * 0.5f), _18_m113.z * _1124, (_18_m113.w * _1124) + ((_18_m113.y * _1123) * 0.375f));
  float _1189 = max(0.0f, dot(_1144.xyz, _669) + _1144.w);
  float _1194 = max(0.0f, dot(_1164.xyz, _669) + _1164.w);
  float _1199 = max(0.0f, dot(_1184.xyz, _669) + _1184.w);
  float3 _1209 = -_461;
  float3 _1210 = reflect(_1209, _669);
  float _1218 = (_18_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_547, 0.001000000047497451305389404296875f))));
  float2 _1219 = float2(_781);
  float2 _1223 = floor(_1219 * _42_m0.w);
  float _1240 = floor(_782 - _42_m2.y);
  float _1244 = clamp(_1240, 0.0f, _42_m1.x - 1.0f);
  uint _1254 = (_1240 <= _1244) ? (_31.Load(uint(_18_m21.z + int(_1223.x + (_1223.y * _42_m0.x))) * 4 + 0) & _31.Load(uint(_18_m21.w + int(_1244)) * 4 + 0)) : 0u;
  float _1257 = dot(float4(_1189, _1194, _1199, 1.0f).xyz * _18_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1259;
  float _1262;
  uint _1264;
  _1259 = 0.0f.xxx;
  _1262 = 1.0f;
  _1264 = _1254;
  uint _1265;
  float3 _1260;
  float _1263;
  bool _1267;
  [loop] for (;;) {
    bool _1266 = _1264 != 0u;
    _1267 = _1262 > 0.00999999977648258209228515625f;
    if (_1266 && _1267) {
      uint _1271 = firstbitlow(_1264);
      _1265 = _1264 ^ (1u << (_1271 & 31u));
      float3 _1291 = float3(dot(_42_m4[_1271]._m2, _428), dot(_42_m4[_1271]._m3, _428), dot(_42_m4[_1271]._m4, _428));
      float3 _1292 = abs(_1291);
      if (all(bool3(_1292.x <= _42_m4[_1271]._m1.xyz.x, _1292.y <= _42_m4[_1271]._m1.xyz.y, _1292.z <= _42_m4[_1271]._m1.xyz.z))) {
        float3 _1301 = _42_m4[_1271]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1303 = _1292 * 0.100000001490116119384765625f;
        float3 _1304 = _1303 * _1303;
        float3 _1307 = (_42_m4[_1271]._m1.xyz - _1292) * _42_m4[_1271]._m5.xyz;
        float3 _1355;
        [branch] if (_42_m4[_1271]._m6.x == 1.0f) {
          float3 _1340 = float3(dot(_42_m4[_1271]._m2.xyz, _1210), dot(_42_m4[_1271]._m3.xyz, _1210), dot(_42_m4[_1271]._m4.xyz, _1210));
          float3 _1342 = (_42_m4[_1271]._m1.xyz - _1291) / _1340;
          float3 _1345 = ((-_42_m4[_1271]._m1.xyz) - _1291) / _1340;
          bool3 _1346 = bool3(_1340.x > 0.0f.xxx.x, _1340.y > 0.0f.xxx.y, _1340.z > 0.0f.xxx.z);
          float3 _1347 = float3(_1346.x ? _1342.x : _1345.x, _1346.y ? _1342.y : _1345.y, _1346.z ? _1342.z : _1345.z);
          _1355 = _1291 + (_1340 * min(min(_1347.x, _1347.y), _1347.z));
        }
        else {
          _1355 = _1210;
        }
        float3 _1356 = normalize(_1355);
        float3 _1359 = float3(int3(sign(_1356)));
        float3 _1362 = _1356 / dot(_1356, _1359).xxx;
        float3 _1376;
        if (_1362.z < 0.0f) {
          float3 _1367 = abs(_1362);
          float2 _1374 = _1359.xy * float2(1.0f - _1367.y, 1.0f - _1367.x);
          _1376 = float3(_1374.x, _1374.y, _1362.z);
        } else {
          _1376 = _1362;
        }
        float _1401 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m4[_1271]._m0, float4(_669, 1.0f))));
        float _1414 = clamp((min(_1307.x, min(_1307.y, _1307.z)) * _42_m4[_1271]._m6.y) + ((((((_1301 * _1301).x - ((_1304.x + _1304.y) + _1304.z)) * _42_m4[_1271]._m5.x) * _42_m4[_1271]._m5.x) * (1.0f - _42_m4[_1271]._m6.y)) * 100.0f), 0.0f, 1.0f) * _42_m4[_1271]._m6.w;
        _1260 = _1259 + ((((_29.SampleLevel(_25, float3((((_1376.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, _42_m4[_1271]._m1.w), _1218).xyz * _42_m4[_1271]._m5.w) * ((((((clamp(abs(_1257 / _1401), 0.0f, 1.0f) * 2.0f) + _1257) / (2.0f + _1401)) - 1.0f) * _18_m23.w) + 1.0f)) * _1414) * _1262);
        _1263 = _1262 * (1.0f - _1414);
      } else {
        _1260 = _1259;
        _1263 = _1262;
      }
      _1259 = _1260;
      _1262 = _1263;
      _1264 = _1265;
      continue;
    } else {
      break;
    }
  }
  float3 _1483;
  if (_1267) {
    float3 _1422 = normalize(_1210);
    float3 _1425 = float3(int3(sign(_1422)));
    float3 _1428 = _1422 / dot(_1422, _1425).xxx;
    float3 _1442;
    if (_1428.z < 0.0f) {
      float3 _1433 = abs(_1428);
      float2 _1440 = _1425.xy * float2(1.0f - _1433.y, 1.0f - _1433.x);
      _1442 = float3(_1440.x, _1440.y, _1428.z);
    } else {
      _1442 = _1428;
    }
    float _1469 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_42_m3, float4(_669, 1.0f))));
    _1483 = _1259 + ((_29.SampleLevel(_25, float3((((_1442.xy * 0.5f) + 0.5f.xx) * _42_m1.w) + _42_m2.w.xx, 0.0f), _1218).xyz * ((((((clamp(abs(_1257 / _1469), 0.0f, 1.0f) * 2.0f) + _1257) / (2.0f + _1469)) - 1.0f) * _18_m23.w) + 1.0f)) * _1262);
  } else {
    _1483 = _1259;
  }
  float4 _2174;
  do {
    [branch] if (_46_m4 == 0) {
      _2174 = 0.0f.xxxx;
      break;
    }
    float2 _2033;
    do {
      if (_48_m7.w >= 0.9900000095367431640625f) {
        _2033 = float2(_48_m7.z, 1.0f);
        break;
      }
      int _1512 = int(_48_m7.x);
      bool3 _1514 = (_1512 == 2).xxx;
      float3 _1522 = _424 - float3(_1514.x ? _48_m1[0].xyz.x : _16_m11.xyz.x, _1514.y ? _48_m1[0].xyz.y : _16_m11.xyz.y, _1514.z ? _48_m1[0].xyz.z : _16_m11.xyz.z);
      float _1533 = max(clamp((_48_m6.w - dot(_1522, _1522)) * _48_m6.z, 0.0f, 1.0f), _48_m8.x);
      float _1750;
      bool _1751;
      if (_1533 > 0.0f) {
        float _1748;
        bool _1749;
        if (_1512 > 0) {
          float3 _1540 = _424 - _48_m1[0].xyz;
          float3 _1544 = _424 - _48_m1[1].xyz;
          float3 _1548 = _424 - _48_m1[2].xyz;
          float3 _1552 = _424 - _48_m1[3].xyz;
          float4 _1557 = float4(dot(_1540, _1540), dot(_1544, _1544), dot(_1548, _1548), dot(_1552, _1552));
          float4 _1566 = float4(_48_m1[0].w, _48_m1[1].w, _48_m1[2].w, _48_m1[3].w);
          float4 _1568 = float4(bool4(_1557.x < _1566.x, _1557.y < _1566.y, _1557.z < _1566.z, _1557.w < _1566.w));
          float3 _1572 = clamp(_1568.yzw - _1568.xyz, 0.0f.xxx, 1.0f.xxx);
          float _1576 = clamp(4.0f - dot(float4(_1568.x, _1572.x, _1572.y, _1572.z), float4(4.0f, 3.0f, 2.0f, 1.0f)), 0.0f, 3.0f);
          float _1578 = clamp(_1576 + 1.0f, 0.0f, 3.0f);
          uint _1579 = uint(_1576);
          uint _1587 = uint(_1578);
          float _1593 = dot(_1557, _361[_1587]) / _48_m1[_1587].w;
          float _1610;
          if (((_1578 > _1576) && (_1593 >= 0.0f)) && (_1593 <= 1.0f)) {
            _1610 = _1576 + step(frac(52.98291778564453125f * frac(dot(_1219 + float2(2.0829999446868896484375f, 4.867000102996826171875f), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))), (sqrt(dot(_1557, _361[_1579]) / _48_m1[_1579].w) - 0.89999997615814208984375f) * 12.0f);
          } else {
            _1610 = _1576;
          }
          float _1611 = clamp(_1610, 0.0f, 4.0f);
          float4 _1615 = mul(_48_m0[uint(_1611)], _428);
          float _1618 = _1615.z;
          float4 _1619 = float4(_1615.xy, _1618, _1611);
          float3 _1620 = _1619.xyz;
          bool3 _1621 = bool3(_1620.x <= 0.0f.xxx.x, _1620.y <= 0.0f.xxx.y, _1620.z <= 0.0f.xxx.z);
          bool3 _1622 = bool3(_1620.x >= 1.0f.xxx.x, _1620.y >= 1.0f.xxx.y, _1620.z >= 1.0f.xxx.z);
          bool _1628 = any(bool3(_1621.x || _1622.x, _1621.y || _1622.y, _1621.z || _1622.z)) || ((asuint(_1618) & 2147483647u) > 2139095040u);
          int _1629 = int(_1611);
          float2 _1646 = float4(_48_m3[_1629].xy + (_1619.xy * _48_m3[_1629].zw), _1618, _1611).xy * _48_m4.zw;
          float2 _1648 = floor(_1646 + 0.5f.xx);
          float2 _1649 = _1646 - _1648;
          float _1650 = _1649.x;
          float _1651 = _1650 + 0.5f;
          float _1653 = (_1651 * _1651) * 0.5f;
          float _1656 = min(_1650, 0.0f);
          float _1660 = max(_1650, 0.0f);
          float4 _1664 = float4(_1653 - _1650, (1.0f - _1650) - (_1656 * _1656), (_1650 + 1.0f) - (_1660 * _1660), _1653) * 0.44444000720977783203125f;
          float _1665 = _1649.y;
          float _1666 = _1665 + 0.5f;
          float _1668 = (_1666 * _1666) * 0.5f;
          float _1671 = min(_1665, 0.0f);
          float _1675 = max(_1665, 0.0f);
          float4 _1679 = float4(_1668 - _1665, (1.0f - _1665) - (_1671 * _1671), (_1665 + 1.0f) - (_1675 * _1675), _1668) * 0.44444000720977783203125f;
          float2 _1681 = _1664.yw;
          float2 _1682 = _1664.xz + _1681;
          float2 _1684 = _1679.yw;
          float2 _1685 = _1679.xz + _1684;
          float2 _1691 = ((_1681 / _1682) + float2(-1.5f, 0.5f)) * _48_m4.xx;
          float2 _1693 = ((_1684 / _1685) + float2(-1.5f, 0.5f)) * _48_m4.yy;
          float2 _1695 = _1648 * _48_m4.xy;
          float _1696 = _1691.x;
          float _1697 = _1693.x;
          float _1700 = _1691.y;
          float _1703 = _1693.y;
          float _1708 = _1682.x;
          float _1709 = _1685.x;
          float _1711 = _1682.y;
          float _1713 = _1685.y;
          _1748 = _1628 ? 1.0f : (((((_1708 * _1709) * _49.SampleCmpLevelZero(_26, float3(_1695 + float2(_1696, _1697), _383).xy, _1618)) + ((_1711 * _1709) * _49.SampleCmpLevelZero(_26, float3(_1695 + float2(_1700, _1697), _383).xy, _1618))) + ((_1708 * _1713) * _49.SampleCmpLevelZero(_26, float3(_1695 + float2(_1696, _1703), _383).xy, _1618))) + ((_1711 * _1713) * _49.SampleCmpLevelZero(_26, float3(_1695 + float2(_1700, _1703), _383).xy, _1618)));
          _1749 = _1628;
        } else {
          _1748 = 1.0f;
          _1749 = false;
        }
        _1750 = _1748;
        _1751 = _1749;
      } else {
        _1750 = 1.0f;
        _1751 = false;
      }
      float _1951;
      float _1952;
      if ((_1533 < 1.0f) || (_48_m8.x > 0.5f)) {
        float _1762 = 1.0f - clamp(dot(_669, _44_m0.xyz), 0.0f, 0.89999997615814208984375f);
        float4 _1779 = float4((_424 - (_44_m0.xyz * (_1762 * _48_m22.x))) + (_669 * (_1762 * _48_m22.y)), 1.0f);
        float4 _1780 = mul(_48_m21, _1779);
        float2 _1781 = _1780.xy;
        float _1949;
        if (all(bool2(_1781.x > 0.0f.xx.x, _1781.y > 0.0f.xx.y)) && all(bool2(_1781.x < 1.0f.xx.x, _1781.y < 1.0f.xx.y))) {
          uint _1800 = clamp(uint((floor(_1780.y * _48_m23.z) + _1780.x) * _48_m23.y), 0u, 127u);
          uint _1804 = asuint(_48_m25[_1800].x);
          float2 _1805 = spvUnpackHalf2x16(_1804);
          float _1806 = _1805.x;
          float _1948;
          if (_1806 >= 0.0f) {
            float4x4 _1815 = _48_m20;
            _1815[0].w = _48_m25[_1800].y;
            _1815[1].w = _48_m25[_1800].z;
            _1815[2].w = _48_m25[_1800].w;
            float4 _1822 = mul(_1815, _1779);
            float3 _1823 = _1822.xyz;
            float _1947;
            if (all(bool3(_1823.x > 0.0f.xxx.x, _1823.y > 0.0f.xxx.y, _1823.z > 0.0f.xxx.z)) && all(bool3(_1823.x < 1.0f.xxx.x, _1823.y < 1.0f.xxx.y, _1823.z < 1.0f.xxx.z))) {
              float _1840 = _1822.z;
              float2 _1846 = float4((_1822.xy * _48_m22.zw) + float2(_1806, spvUnpackHalf2x16(_1804 >> 16u).x), _1840, 1.0f).xy * _48_m24.zw;
              float2 _1848 = floor(_1846 + 0.5f.xx);
              float2 _1849 = _1846 - _1848;
              float _1850 = _1849.x;
              float _1851 = _1850 + 0.5f;
              float _1853 = (_1851 * _1851) * 0.5f;
              float _1856 = min(_1850, 0.0f);
              float _1860 = max(_1850, 0.0f);
              float4 _1864 = float4(_1853 - _1850, (1.0f - _1850) - (_1856 * _1856), (_1850 + 1.0f) - (_1860 * _1860), _1853) * 0.44444000720977783203125f;
              float _1865 = _1849.y;
              float _1866 = _1865 + 0.5f;
              float _1868 = (_1866 * _1866) * 0.5f;
              float _1871 = min(_1865, 0.0f);
              float _1875 = max(_1865, 0.0f);
              float4 _1879 = float4(_1868 - _1865, (1.0f - _1865) - (_1871 * _1871), (_1865 + 1.0f) - (_1875 * _1875), _1868) * 0.44444000720977783203125f;
              float2 _1882 = _1864.xz + _1864.yw;
              float2 _1885 = _1879.xz + _1879.yw;
              float2 _1891 = ((_1864.yw / _1882) + float2(-1.5f, 0.5f)) * _48_m24.xx;
              float2 _1893 = ((_1879.yw / _1885) + float2(-1.5f, 0.5f)) * _48_m24.yy;
              float2 _1895 = _1848 * _48_m24.xy;
              float _1896 = _1891.x;
              float _1897 = _1893.x;
              float2 _1899 = _1895 + float2(_1896, _1897);
              float _1900 = _1891.y;
              float2 _1902 = _1895 + float2(_1900, _1897);
              float _1903 = _1893.y;
              float2 _1905 = _1895 + float2(_1896, _1903);
              float2 _1907 = _1895 + float2(_1900, _1903);
              float _1908 = _1882.x;
              float _1909 = _1885.x;
              float _1911 = _1882.y;
              float _1913 = _1885.y;
              _1947 = ((((_1908 * _1909) * _54.SampleCmpLevelZero(_26, float3(_1899, _383).xy, _1840)) + ((_1911 * _1909) * _54.SampleCmpLevelZero(_26, float3(_1902, _383).xy, _1840))) + ((_1908 * _1913) * _54.SampleCmpLevelZero(_26, float3(_1905, _383).xy, _1840))) + ((_1911 * _1913) * _54.SampleCmpLevelZero(_26, float3(_1907, _383).xy, _1840));
            } else {
              _1947 = 1.0f;
            }
            _1948 = _1947;
          } else {
            _1948 = 1.0f;
          }
          _1949 = _1948;
        } else {
          _1949 = 1.0f;
        }
        _1951 = _1751 ? _1949 : _1750;
        _1952 = _1949;
      } else {
        _1951 = _1750;
        _1952 = 1.0f;
      }
      float _1955 = lerp(lerp(_1952, _1951, _1533), min(_1952, _1951), _48_m8.x);
      float _2028;
      if (_1955 > 0.001000000047497451305389404296875f) {
        float3 _1990 = _424 - _18_m65.xyz;
        float2 _1995 = (_1990 + (_18_m68.xyz * _1990.y)).xz * _18_m66.z;
        float2 _1996 = _18_m67.xy * _18_m77.w;
        float3 _2003 = _424 - _18_m69.xyz;
        float2 _2011 = _18_m69.w.xx;
        float4 _2018 = _53.SampleLevel(_24, lerp(_1995 * _18_m67.w, (_2003 + (_18_m68.xyz * _2003.y)).xz * _18_m70.x, _2011) + lerp(_1996, _18_m70.yz * _18_m77.w, _2011), 0.0f);
        _2028 = _1955 * lerp(1.0f, lerp(_53.SampleLevel(_24, _1995 + _1996, 0.0f).x, lerp(_2018.x, _2018.y, _18_m69.w), smoothstep(_18_m66.x, _18_m66.y, length(_1990.xz))), _18_m67.z);
      } else {
        _2028 = _1955;
      }
      _2033 = float2(lerp(_2028, _48_m7.z, _48_m7.w), _2028);
      break;
    } while (false);
    float _2038 = lerp(1.0f, min(1.0f, _2033.x), _48_m6.x);
    float4 _2173;
    if (_2038 > 0.001000000047497451305389404296875f) {
      float3 _2048 = -_44_m0.xyz;
      float _2053 = dot(_2048, _1210);
      float3 _2055 = _1210 - (_2048 * _2053);
      bool3 _2057 = (_2053 < _44_m4.z).xxx;
      float3 _2065 = normalize((_2048 * _44_m4.z) + ((_2055 * rsqrt(max(6.103515625e-05f, dot(_2055, _2055)))) * _44_m4.y));
      float3 _2066 = float3(_2057.x ? _2065.x : _1210.x, _2057.y ? _2065.y : _1210.y, _2057.z ? _2065.z : _1210.z);
      float3 _2070 = _2066 + _461;
      float3 _2074 = _2070 * rsqrt(max(6.103515625e-05f, dot(_2070, _2070)));
      float _2075 = clamp(dot(_2066, _669), 0.0f, 1.0f);
      float _2077 = clamp(dot(_669, _2074), 0.0f, 1.0f);
      float _2080 = clamp(_727, 0.0f, 1.0f);
      float _2081 = _547 * _547;
      float _2082 = _2081 * _2081;
      float _2103 = (((_2077 * _2082) - _2077) * _2077) + 1.0f;
      float _2106 = 1.0f - clamp(dot(_461, _2074), 0.0f, 1.0f);
      float _2107 = _2106 * _2106;
      float _2109 = (_2106 * _2107) * _2107;
      float _2133 = 1.0f - _547;
      float _2140 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_2133 * (1.04997003078460693359375f + (_2133 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _2133))))));
      float _2141 = 1.0f - _2140;
      float3 _2144 = _726 + ((1.0f.xxx - _726) * 0.0476190485060214996337890625f);
      // RenoDX code start: preserve the existing glass controls.
      /* Vanilla 0xF4FF1066:
      float3 _2160 = ((clamp((min(((_726 * (1.0f - _2109)) + _2109.xxx) * ((_2082 / (_2103 * _2103)) * (0.5f / (((_2075 * sqrt(((((-_2080) * _2082) + _2080) * _2080) + _2082)) + (_2080 * sqrt(((((-_2075) * _2082) + _2075) * _2075) + _2082))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2144 * (((_58.SampleLevel(_23, (float2(_2080, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2075, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2140) / _2141)) * _2144) / (1.0f.xxx - (_2144 * _2141)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * _2075) + ((_722 * 1.0f) * _2075)) * _44_m1.xyz;
      */
      float3 _2160 = (((clamp((min(((_726 * (1.0f - _2109)) + _2109.xxx) * ((_2082 / (_2103 * _2103)) * (0.5f / (((_2075 * sqrt(((((-_2080) * _2082) + _2080) * _2080) + _2082)) + (_2080 * sqrt(((((-_2075) * _2082) + _2075) * _2075) + _2082))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_2144 * (((_58.SampleLevel(_23, (float2(_2080, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_2075, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _2140) / _2141)) * _2144) / (1.0f.xxx - (_2144 * _2141)))) * _44_m4.x, 0.0f.xxx, 1000.0f.xxx) * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2075) + ((_722 * 1.0f) * _2075)) * _44_m1.xyz;
      // RenoDX code end
      float3 _2171 = lerp(_2160, _2160 * _55.SampleBias(_23, float2(_2038, 0.5f), _18_m16).xyz, (1.0f - _2038).xxx) * 1.0f;
      _2173 = float4(_2171.x, _2171.y, _2171.z, 0.0f.xxxx.w);
    } else {
      _2173 = 0.0f.xxxx;
    }
    _2174 = _2173;
    break;
  } while (false);
  float2 _2176 = floor(_1219 * 0.03125f);
  int _2184 = int((_2176.x + (_2176.y * _46_m9)) * 8.0f);
  float _2191 = floor(_782 - (_18_m3.y * _46_m15));
  float _2195 = clamp(_2191, 0.0f, _46_m11 - 1.0f);
  int _2197 = int(_2195 * 8.0f);
  float3 _2199;
  float _2202;
  _2199 = 0.0f.xxx;
  _2202 = 1.0f;
  float3 _2200;
  float _2203;
  [loop] for (int _2204 = 0; _2204 <= 7; _2199 = _2200, _2202 = _2203, _2204++) {
    uint _2225 = (_2191 <= _2195) ? (_31.Load(uint((_46_m2 + _2184) + _2204) * 4 + 0) & _31.Load(uint((_46_m3 + _2197) + _2204) * 4 + 0)) : 0u;
    uint _2226 = uint(_2204);
    float3 _2230;
    _2203 = _2202;
    _2230 = 0.0f.xxx;
    uint _2233;
    float _2228;
    float3 _2231;
    [loop] for (uint _2232 = _2225; _2232 != 0u; _2203 = _2228, _2230 = _2231, _2232 = _2233) {
      uint _2237 = firstbitlow(_2232);
      _2233 = _2232 ^ (1u << (_2237 & 31u));
      int _2243 = int((32u * _2226) + _2237) * 8;
      int _2246 = _2243 + 1;
      int _2249 = _2243 + 2;
      int _2252 = _2243 + 3;
      int _2255 = _2243 + 4;
      int _2258 = _2243 + 5;
      int _2261 = _2243 + 6;
      int _2264 = _2243 + 7;
      uint _2268 = uint(_44_m6[_2258].w);
      float _2343;
      if ((_2268 & 1u) == 1u) {
        uint _2274 = asuint(_44_m6[_2258].x);
        uint _2281 = asuint(_44_m6[_2258].y);
        uint _2288 = asuint(_44_m6[_2258].z);
        uint _2295 = asuint(_44_m6[_2261].x);
        uint _2302 = asuint(_44_m6[_2261].y);
        uint _2309 = asuint(_44_m6[_2261].z);
        float3 _2328 = abs(mul(float4(_424 - _44_m6[_2246].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2274).x, spvUnpackHalf2x16(_2288).x, spvUnpackHalf2x16(_2302).x, 0.0f), float4(spvUnpackHalf2x16(_2274 >> 16u).x, spvUnpackHalf2x16(_2288 >> 16u).x, spvUnpackHalf2x16(_2302 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2281).x, spvUnpackHalf2x16(_2295).x, spvUnpackHalf2x16(_2309).x, 0.0f), float4(spvUnpackHalf2x16(_2281 >> 16u).x, spvUnpackHalf2x16(_2295 >> 16u).x, spvUnpackHalf2x16(_2309 >> 16u).x, 0.0f))).xyz);
        float _2335 = _44_m6[_2264].x * 0.5f;
        float _2341 = 1.0f - clamp((max(max(_2328.x, _2328.y), _2328.z) - (_2335 + 0.5f)) / (0.5f - _2335), 0.0f, 1.0f);
        _2343 = _2341 * _2341;
      } else {
        _2343 = 1.0f;
      }
      uint _2347 = uint(_44_m6[_2243].w);
      bool _2350 = _44_m6[_2252].z > 0.5f;
      if ((false || (_2343 < 0.001000000047497451305389404296875f)) || ((_2347 < 4u) && _2350)) {
        _2228 = _2203;
        _2231 = _2230;
        continue;
      }
      float _4879;
      float3 _4880;
      do {
        [branch] if (_2347 >= 4u) {
          float3 _3579;
          do {
            float3 _2369 = _44_m6[_2246].xyz - _424;
            if (dot(_44_m6[_2252].xyz, _2369) > 0.0f) {
              _3579 = 0.0f.xxx;
              break;
            }
            float _2376 = dot(_2369, _2369) * _44_m6[_2246].w;
            float _2379 = clamp(1.0f - (_2376 * _2376), 0.0f, 1.0f);
            float _2380 = _2379 * _2379;
            if (_2380 <= 0.0f) {
              _3579 = 0.0f.xxx;
              break;
            }
            float3 _2418;
            float _2419;
            bool _2420;
            float3 _2448;
            float3 _2450;
            float3 _2452;
            float3 _2454;
            float3 _2384 = _44_m6[_2249].xyz * _44_m6[_2249].w;
            float3 _2385 = _44_m6[_2246].xyz - _2384;
            float3 _2386 = _44_m6[_2255].xyz * _44_m6[_2252].w;
            float3 _2389 = _44_m6[_2246].xyz + _2384;
            float2 _2399 = (float2(clamp(_547, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_727, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _2403 = _71.SampleLevel(_23, _2399, 0.0f);
            float4 _2407 = _72.SampleLevel(_23, _2399, 0.0f);
            float _2802;
            do {
              _2418 = _461 - (_669 * dot(_461, _669));
              _2419 = dot(_2418, _2418);
              _2420 = _2419 > 9.9999997473787516355514526367188e-05f;
              float3 _2443;
              if (_2420) {
                _2443 = _2418 * rsqrt(_2419);
              } else {
                float _2424 = _669.z;
                float _2426 = (_2424 >= 0.0f) ? 1.0f : (-1.0f);
                float _2428 = (-1.0f) / (_2426 + _2424);
                float _2430 = _669.x;
                _2443 = float3(1.0f + (((_2426 * _2428) * _2430) * _2430), ((_2426 * _2430) * _669.y) * _2428, (-_2426) * _2430);
              }
              float3x3 _2447 = mul(float3x3(float3(_2403.x, 0.0f, _2403.z), float3(0.0f, 1.0f, 0.0f), float3(_2403.y, 0.0f, _2403.w)), float3x3(_2443, cross(_669, _2443), _669));
              _2448 = (_2385 - _2386) - _424;
              float3 _2449 = mul(_2447, _2448);
              _2450 = (_2385 + _2386) - _424;
              float3 _2451 = mul(_2447, _2450);
              _2452 = (_2389 + _2386) - _424;
              float3 _2453 = mul(_2447, _2452);
              _2454 = (_2389 - _2386) - _424;
              float3 _2455 = mul(_2447, _2454);
              float _2456 = _2449.z;
              float _2459 = _2451.z;
              float _2463 = _2453.z;
              float _2467 = _2455.z;
              int _2471 = (((int(_2456 > 0.0f) | ((_2459 > 0.0f) ? 2 : 0)) | ((_2463 > 0.0f) ? 4 : 0)) | ((_2467 > 0.0f) ? 8 : 0));
              float3 _2708;
              float3 _2709;
              float3 _2710;
              float3 _2711;
              float3 _2712;
              int _2713;
              if (_2471 == 0) {
                _2708 = _2455;
                _2709 = _2453;
                _2710 = _2451;
                _2711 = _2449;
                _2712 = 0.0f.xxx;
                _2713 = 0;
              } else {
                float3 _2702;
                float3 _2703;
                float3 _2704;
                float3 _2705;
                float3 _2706;
                int _2707;
                if (_2471 == 1) {
                  _2702 = _2455;
                  _2703 = (_2449 * (-_2467)) + (_2455 * _2456);
                  _2704 = (_2449 * (-_2459)) + (_2451 * _2456);
                  _2705 = _2449;
                  _2706 = 0.0f.xxx;
                  _2707 = 3;
                } else {
                  float3 _2688;
                  float3 _2689;
                  float3 _2690;
                  float3 _2691;
                  float3 _2692;
                  int _2693;
                  if (_2471 == 2) {
                    _2688 = _2455;
                    _2689 = (_2451 * (-_2463)) + (_2453 * _2459);
                    _2690 = _2451;
                    _2691 = (_2451 * (-_2456)) + (_2449 * _2459);
                    _2692 = 0.0f.xxx;
                    _2693 = 3;
                  } else {
                    float3 _2674;
                    float3 _2675;
                    float3 _2676;
                    float3 _2677;
                    float3 _2678;
                    int _2679;
                    if (_2471 == 3) {
                      _2674 = (_2449 * (-_2467)) + (_2455 * _2456);
                      _2675 = (_2451 * (-_2463)) + (_2453 * _2459);
                      _2676 = _2451;
                      _2677 = _2449;
                      _2678 = 0.0f.xxx;
                      _2679 = 4;
                    } else {
                      float3 _2660;
                      float3 _2661;
                      float3 _2662;
                      float3 _2663;
                      float3 _2664;
                      int _2665;
                      if (_2471 == 4) {
                        _2660 = _2455;
                        _2661 = _2453;
                        _2662 = (_2453 * (-_2459)) + (_2451 * _2463);
                        _2663 = (_2453 * (-_2467)) + (_2455 * _2463);
                        _2664 = 0.0f.xxx;
                        _2665 = 3;
                      } else {
                        float3 _2646;
                        float3 _2647;
                        float3 _2648;
                        float3 _2649;
                        float3 _2650;
                        int _2651;
                        if (_2471 == 5) {
                          _2646 = _2455;
                          _2647 = _2453;
                          _2648 = _2451;
                          _2649 = _2449;
                          _2650 = 0.0f.xxx;
                          _2651 = 0;
                        } else {
                          float3 _2640;
                          float3 _2641;
                          float3 _2642;
                          float3 _2643;
                          float3 _2644;
                          int _2645;
                          if (_2471 == 6) {
                            _2640 = (_2453 * (-_2467)) + (_2455 * _2463);
                            _2641 = _2453;
                            _2642 = _2451;
                            _2643 = (_2451 * (-_2456)) + (_2449 * _2459);
                            _2644 = 0.0f.xxx;
                            _2645 = 4;
                          } else {
                            float3 _2626;
                            float3 _2627;
                            float3 _2628;
                            float3 _2629;
                            float3 _2630;
                            int _2631;
                            if (_2471 == 7) {
                              float _2619 = -_2467;
                              _2626 = (_2453 * _2619) + (_2455 * _2463);
                              _2627 = _2453;
                              _2628 = _2451;
                              _2629 = _2449;
                              _2630 = (_2449 * _2619) + (_2455 * _2456);
                              _2631 = 5;
                            } else {
                              float3 _2613;
                              float3 _2614;
                              float3 _2615;
                              float3 _2616;
                              float3 _2617;
                              int _2618;
                              if (_2471 == 8) {
                                _2613 = _2455;
                                _2614 = _2455;
                                _2615 = (_2455 * (-_2463)) + (_2453 * _2467);
                                _2616 = (_2455 * (-_2456)) + (_2449 * _2467);
                                _2617 = 0.0f.xxx;
                                _2618 = 3;
                              } else {
                                float3 _2599;
                                float3 _2600;
                                float3 _2601;
                                float3 _2602;
                                float3 _2603;
                                int _2604;
                                if (_2471 == 9) {
                                  _2599 = _2455;
                                  _2600 = (_2455 * (-_2463)) + (_2453 * _2467);
                                  _2601 = (_2449 * (-_2459)) + (_2451 * _2456);
                                  _2602 = _2449;
                                  _2603 = 0.0f.xxx;
                                  _2604 = 4;
                                } else {
                                  float3 _2585;
                                  float3 _2586;
                                  float3 _2587;
                                  float3 _2588;
                                  float3 _2589;
                                  int _2590;
                                  if (_2471 == 10) {
                                    _2585 = _2455;
                                    _2586 = _2453;
                                    _2587 = _2451;
                                    _2588 = _2449;
                                    _2589 = 0.0f.xxx;
                                    _2590 = 0;
                                  } else {
                                    float3 _2579;
                                    float3 _2580;
                                    float3 _2581;
                                    float3 _2582;
                                    float3 _2583;
                                    int _2584;
                                    if (_2471 == 11) {
                                      float _2572 = -_2463;
                                      _2579 = (_2455 * _2572) + (_2453 * _2467);
                                      _2580 = (_2451 * _2572) + (_2453 * _2459);
                                      _2581 = _2451;
                                      _2582 = _2449;
                                      _2583 = _2455;
                                      _2584 = 5;
                                    } else {
                                      float3 _2566;
                                      float3 _2567;
                                      float3 _2568;
                                      float3 _2569;
                                      float3 _2570;
                                      int _2571;
                                      if (_2471 == 12) {
                                        _2566 = _2455;
                                        _2567 = _2453;
                                        _2568 = (_2453 * (-_2459)) + (_2451 * _2463);
                                        _2569 = (_2455 * (-_2456)) + (_2449 * _2467);
                                        _2570 = 0.0f.xxx;
                                        _2571 = 4;
                                      } else {
                                        bool _2524 = _2471 == 13;
                                        float3 _2551;
                                        float3 _2552;
                                        float3 _2553;
                                        float3 _2554;
                                        int _2555;
                                        if (_2524) {
                                          float _2544 = -_2459;
                                          _2551 = (_2453 * _2544) + (_2451 * _2463);
                                          _2552 = (_2449 * _2544) + (_2451 * _2456);
                                          _2553 = _2449;
                                          _2554 = _2455;
                                          _2555 = 5;
                                        } else {
                                          float3 _2541;
                                          float3 _2542;
                                          int _2543;
                                          if (_2471 == 14) {
                                            float _2534 = -_2456;
                                            _2541 = (_2451 * _2534) + (_2449 * _2459);
                                            _2542 = (_2455 * _2534) + (_2449 * _2467);
                                            _2543 = 5;
                                          } else {
                                            _2541 = _2449;
                                            _2542 = 0.0f.xxx;
                                            _2543 = (_2471 == 15) ? 4 : 0;
                                          }
                                          _2551 = _2453;
                                          _2552 = _2451;
                                          _2553 = _2541;
                                          _2554 = _2542;
                                          _2555 = _2543;
                                        }
                                        bool3 _2556 = _2524.xxx;
                                        _2566 = float3(_2556.x ? _2453.x : _2455.x, _2556.y ? _2453.y : _2455.y, _2556.z ? _2453.z : _2455.z);
                                        _2567 = _2551;
                                        _2568 = _2552;
                                        _2569 = _2553;
                                        _2570 = _2554;
                                        _2571 = _2555;
                                      }
                                      _2579 = _2566;
                                      _2580 = _2567;
                                      _2581 = _2568;
                                      _2582 = _2569;
                                      _2583 = _2570;
                                      _2584 = _2571;
                                    }
                                    _2585 = _2579;
                                    _2586 = _2580;
                                    _2587 = _2581;
                                    _2588 = _2582;
                                    _2589 = _2583;
                                    _2590 = _2584;
                                  }
                                  _2599 = _2585;
                                  _2600 = _2586;
                                  _2601 = _2587;
                                  _2602 = _2588;
                                  _2603 = _2589;
                                  _2604 = _2590;
                                }
                                _2613 = _2599;
                                _2614 = _2600;
                                _2615 = _2601;
                                _2616 = _2602;
                                _2617 = _2603;
                                _2618 = _2604;
                              }
                              _2626 = _2613;
                              _2627 = _2614;
                              _2628 = _2615;
                              _2629 = _2616;
                              _2630 = _2617;
                              _2631 = _2618;
                            }
                            _2640 = _2626;
                            _2641 = _2627;
                            _2642 = _2628;
                            _2643 = _2629;
                            _2644 = _2630;
                            _2645 = _2631;
                          }
                          _2646 = _2640;
                          _2647 = _2641;
                          _2648 = _2642;
                          _2649 = _2643;
                          _2650 = _2644;
                          _2651 = _2645;
                        }
                        _2660 = _2646;
                        _2661 = _2647;
                        _2662 = _2648;
                        _2663 = _2649;
                        _2664 = _2650;
                        _2665 = _2651;
                      }
                      _2674 = _2660;
                      _2675 = _2661;
                      _2676 = _2662;
                      _2677 = _2663;
                      _2678 = _2664;
                      _2679 = _2665;
                    }
                    _2688 = _2674;
                    _2689 = _2675;
                    _2690 = _2676;
                    _2691 = _2677;
                    _2692 = _2678;
                    _2693 = _2679;
                  }
                  _2702 = _2688;
                  _2703 = _2689;
                  _2704 = _2690;
                  _2705 = _2691;
                  _2706 = _2692;
                  _2707 = _2693;
                }
                _2708 = _2702;
                _2709 = _2703;
                _2710 = _2704;
                _2711 = _2705;
                _2712 = _2706;
                _2713 = _2707;
              }
              bool3 _2715 = (_2713 == 3).xxx;
              bool3 _2718 = (_2713 == 4).xxx;
              if (_2713 == 0) {
                _2802 = 0.0f;
                break;
              }
              float3 _2723 = normalize(_2711);
              float3 _2724 = normalize(_2710);
              float3 _2725 = normalize(_2709);
              float3 _2726 = normalize(float3(_2715.x ? _2711.x : _2708.x, _2715.y ? _2711.y : _2708.y, _2715.z ? _2711.z : _2708.z));
              float3 _2727 = normalize(float3(_2718.x ? _2711.x : _2712.x, _2718.y ? _2711.y : _2712.y, _2718.z ? _2711.z : _2712.z));
              float _2729 = clamp(dot(_2723, _2724), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2733 = sqrt(1.0f - (_2729 * _2729));
              float _2741 = clamp(dot(_2724, _2725), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2745 = sqrt(1.0f - (_2741 * _2741));
              float _2754 = clamp(dot(_2725, _2726), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2758 = sqrt(1.0f - (_2754 * _2754));
              float _2765 = ((cross(_2723, _2724).z * ((_2733 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2729) / _2733))) + (cross(_2724, _2725).z * ((_2745 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2741) / _2745)))) + (cross(_2725, _2726).z * ((_2758 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2754) / _2758)));
              float _2782;
              if (_2713 >= 4) {
                float _2770 = clamp(dot(_2726, _2727), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2774 = sqrt(1.0f - (_2770 * _2770));
                _2782 = _2765 + (cross(_2726, _2727).z * ((_2774 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2770) / _2774)));
              } else {
                _2782 = _2765;
              }
              float _2799;
              if (_2713 == 5) {
                float _2787 = clamp(dot(_2727, _2723), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2791 = sqrt(1.0f - (_2787 * _2787));
                _2799 = _2782 + (cross(_2727, _2723).z * ((_2791 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2787) / _2791)));
              } else {
                _2799 = _2782;
              }
              _2802 = max(_2799, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _3190;
            do {
              float3 _2836;
              if (_2420) {
                _2836 = _2418 * rsqrt(_2419);
              } else {
                float _2817 = _669.z;
                float _2819 = (_2817 >= 0.0f) ? 1.0f : (-1.0f);
                float _2821 = (-1.0f) / (_2819 + _2817);
                float _2823 = _669.x;
                _2836 = float3(1.0f + (((_2819 * _2821) * _2823) * _2823), ((_2819 * _2823) * _669.y) * _2821, (-_2819) * _2823);
              }
              float3x3 _2839 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2836, cross(_669, _2836), _669));
              float3 _2840 = mul(_2839, _2448);
              float3 _2841 = mul(_2839, _2450);
              float3 _2842 = mul(_2839, _2452);
              float3 _2843 = mul(_2839, _2454);
              float _2844 = _2840.z;
              float _2847 = _2841.z;
              float _2851 = _2842.z;
              float _2855 = _2843.z;
              int _2859 = (((int(_2844 > 0.0f) | ((_2847 > 0.0f) ? 2 : 0)) | ((_2851 > 0.0f) ? 4 : 0)) | ((_2855 > 0.0f) ? 8 : 0));
              float3 _3096;
              float3 _3097;
              float3 _3098;
              float3 _3099;
              float3 _3100;
              int _3101;
              if (_2859 == 0) {
                _3096 = _2843;
                _3097 = _2842;
                _3098 = _2841;
                _3099 = _2840;
                _3100 = 0.0f.xxx;
                _3101 = 0;
              } else {
                float3 _3090;
                float3 _3091;
                float3 _3092;
                float3 _3093;
                float3 _3094;
                int _3095;
                if (_2859 == 1) {
                  _3090 = _2843;
                  _3091 = (_2840 * (-_2855)) + (_2843 * _2844);
                  _3092 = (_2840 * (-_2847)) + (_2841 * _2844);
                  _3093 = _2840;
                  _3094 = 0.0f.xxx;
                  _3095 = 3;
                } else {
                  float3 _3076;
                  float3 _3077;
                  float3 _3078;
                  float3 _3079;
                  float3 _3080;
                  int _3081;
                  if (_2859 == 2) {
                    _3076 = _2843;
                    _3077 = (_2841 * (-_2851)) + (_2842 * _2847);
                    _3078 = _2841;
                    _3079 = (_2841 * (-_2844)) + (_2840 * _2847);
                    _3080 = 0.0f.xxx;
                    _3081 = 3;
                  } else {
                    float3 _3062;
                    float3 _3063;
                    float3 _3064;
                    float3 _3065;
                    float3 _3066;
                    int _3067;
                    if (_2859 == 3) {
                      _3062 = (_2840 * (-_2855)) + (_2843 * _2844);
                      _3063 = (_2841 * (-_2851)) + (_2842 * _2847);
                      _3064 = _2841;
                      _3065 = _2840;
                      _3066 = 0.0f.xxx;
                      _3067 = 4;
                    } else {
                      float3 _3048;
                      float3 _3049;
                      float3 _3050;
                      float3 _3051;
                      float3 _3052;
                      int _3053;
                      if (_2859 == 4) {
                        _3048 = _2843;
                        _3049 = _2842;
                        _3050 = (_2842 * (-_2847)) + (_2841 * _2851);
                        _3051 = (_2842 * (-_2855)) + (_2843 * _2851);
                        _3052 = 0.0f.xxx;
                        _3053 = 3;
                      } else {
                        float3 _3034;
                        float3 _3035;
                        float3 _3036;
                        float3 _3037;
                        float3 _3038;
                        int _3039;
                        if (_2859 == 5) {
                          _3034 = _2843;
                          _3035 = _2842;
                          _3036 = _2841;
                          _3037 = _2840;
                          _3038 = 0.0f.xxx;
                          _3039 = 0;
                        } else {
                          float3 _3028;
                          float3 _3029;
                          float3 _3030;
                          float3 _3031;
                          float3 _3032;
                          int _3033;
                          if (_2859 == 6) {
                            _3028 = (_2842 * (-_2855)) + (_2843 * _2851);
                            _3029 = _2842;
                            _3030 = _2841;
                            _3031 = (_2841 * (-_2844)) + (_2840 * _2847);
                            _3032 = 0.0f.xxx;
                            _3033 = 4;
                          } else {
                            float3 _3014;
                            float3 _3015;
                            float3 _3016;
                            float3 _3017;
                            float3 _3018;
                            int _3019;
                            if (_2859 == 7) {
                              float _3007 = -_2855;
                              _3014 = (_2842 * _3007) + (_2843 * _2851);
                              _3015 = _2842;
                              _3016 = _2841;
                              _3017 = _2840;
                              _3018 = (_2840 * _3007) + (_2843 * _2844);
                              _3019 = 5;
                            } else {
                              float3 _3001;
                              float3 _3002;
                              float3 _3003;
                              float3 _3004;
                              float3 _3005;
                              int _3006;
                              if (_2859 == 8) {
                                _3001 = _2843;
                                _3002 = _2843;
                                _3003 = (_2843 * (-_2851)) + (_2842 * _2855);
                                _3004 = (_2843 * (-_2844)) + (_2840 * _2855);
                                _3005 = 0.0f.xxx;
                                _3006 = 3;
                              } else {
                                float3 _2987;
                                float3 _2988;
                                float3 _2989;
                                float3 _2990;
                                float3 _2991;
                                int _2992;
                                if (_2859 == 9) {
                                  _2987 = _2843;
                                  _2988 = (_2843 * (-_2851)) + (_2842 * _2855);
                                  _2989 = (_2840 * (-_2847)) + (_2841 * _2844);
                                  _2990 = _2840;
                                  _2991 = 0.0f.xxx;
                                  _2992 = 4;
                                } else {
                                  float3 _2973;
                                  float3 _2974;
                                  float3 _2975;
                                  float3 _2976;
                                  float3 _2977;
                                  int _2978;
                                  if (_2859 == 10) {
                                    _2973 = _2843;
                                    _2974 = _2842;
                                    _2975 = _2841;
                                    _2976 = _2840;
                                    _2977 = 0.0f.xxx;
                                    _2978 = 0;
                                  } else {
                                    float3 _2967;
                                    float3 _2968;
                                    float3 _2969;
                                    float3 _2970;
                                    float3 _2971;
                                    int _2972;
                                    if (_2859 == 11) {
                                      float _2960 = -_2851;
                                      _2967 = (_2843 * _2960) + (_2842 * _2855);
                                      _2968 = (_2841 * _2960) + (_2842 * _2847);
                                      _2969 = _2841;
                                      _2970 = _2840;
                                      _2971 = _2843;
                                      _2972 = 5;
                                    } else {
                                      float3 _2954;
                                      float3 _2955;
                                      float3 _2956;
                                      float3 _2957;
                                      float3 _2958;
                                      int _2959;
                                      if (_2859 == 12) {
                                        _2954 = _2843;
                                        _2955 = _2842;
                                        _2956 = (_2842 * (-_2847)) + (_2841 * _2851);
                                        _2957 = (_2843 * (-_2844)) + (_2840 * _2855);
                                        _2958 = 0.0f.xxx;
                                        _2959 = 4;
                                      } else {
                                        bool _2912 = _2859 == 13;
                                        float3 _2939;
                                        float3 _2940;
                                        float3 _2941;
                                        float3 _2942;
                                        int _2943;
                                        if (_2912) {
                                          float _2932 = -_2847;
                                          _2939 = (_2842 * _2932) + (_2841 * _2851);
                                          _2940 = (_2840 * _2932) + (_2841 * _2844);
                                          _2941 = _2840;
                                          _2942 = _2843;
                                          _2943 = 5;
                                        } else {
                                          float3 _2929;
                                          float3 _2930;
                                          int _2931;
                                          if (_2859 == 14) {
                                            float _2922 = -_2844;
                                            _2929 = (_2841 * _2922) + (_2840 * _2847);
                                            _2930 = (_2843 * _2922) + (_2840 * _2855);
                                            _2931 = 5;
                                          } else {
                                            _2929 = _2840;
                                            _2930 = 0.0f.xxx;
                                            _2931 = (_2859 == 15) ? 4 : 0;
                                          }
                                          _2939 = _2842;
                                          _2940 = _2841;
                                          _2941 = _2929;
                                          _2942 = _2930;
                                          _2943 = _2931;
                                        }
                                        bool3 _2944 = _2912.xxx;
                                        _2954 = float3(_2944.x ? _2842.x : _2843.x, _2944.y ? _2842.y : _2843.y, _2944.z ? _2842.z : _2843.z);
                                        _2955 = _2939;
                                        _2956 = _2940;
                                        _2957 = _2941;
                                        _2958 = _2942;
                                        _2959 = _2943;
                                      }
                                      _2967 = _2954;
                                      _2968 = _2955;
                                      _2969 = _2956;
                                      _2970 = _2957;
                                      _2971 = _2958;
                                      _2972 = _2959;
                                    }
                                    _2973 = _2967;
                                    _2974 = _2968;
                                    _2975 = _2969;
                                    _2976 = _2970;
                                    _2977 = _2971;
                                    _2978 = _2972;
                                  }
                                  _2987 = _2973;
                                  _2988 = _2974;
                                  _2989 = _2975;
                                  _2990 = _2976;
                                  _2991 = _2977;
                                  _2992 = _2978;
                                }
                                _3001 = _2987;
                                _3002 = _2988;
                                _3003 = _2989;
                                _3004 = _2990;
                                _3005 = _2991;
                                _3006 = _2992;
                              }
                              _3014 = _3001;
                              _3015 = _3002;
                              _3016 = _3003;
                              _3017 = _3004;
                              _3018 = _3005;
                              _3019 = _3006;
                            }
                            _3028 = _3014;
                            _3029 = _3015;
                            _3030 = _3016;
                            _3031 = _3017;
                            _3032 = _3018;
                            _3033 = _3019;
                          }
                          _3034 = _3028;
                          _3035 = _3029;
                          _3036 = _3030;
                          _3037 = _3031;
                          _3038 = _3032;
                          _3039 = _3033;
                        }
                        _3048 = _3034;
                        _3049 = _3035;
                        _3050 = _3036;
                        _3051 = _3037;
                        _3052 = _3038;
                        _3053 = _3039;
                      }
                      _3062 = _3048;
                      _3063 = _3049;
                      _3064 = _3050;
                      _3065 = _3051;
                      _3066 = _3052;
                      _3067 = _3053;
                    }
                    _3076 = _3062;
                    _3077 = _3063;
                    _3078 = _3064;
                    _3079 = _3065;
                    _3080 = _3066;
                    _3081 = _3067;
                  }
                  _3090 = _3076;
                  _3091 = _3077;
                  _3092 = _3078;
                  _3093 = _3079;
                  _3094 = _3080;
                  _3095 = _3081;
                }
                _3096 = _3090;
                _3097 = _3091;
                _3098 = _3092;
                _3099 = _3093;
                _3100 = _3094;
                _3101 = _3095;
              }
              bool3 _3103 = (_3101 == 3).xxx;
              bool3 _3106 = (_3101 == 4).xxx;
              if (_3101 == 0) {
                _3190 = 0.0f;
                break;
              }
              float3 _3111 = normalize(_3099);
              float3 _3112 = normalize(_3098);
              float3 _3113 = normalize(_3097);
              float3 _3114 = normalize(float3(_3103.x ? _3099.x : _3096.x, _3103.y ? _3099.y : _3096.y, _3103.z ? _3099.z : _3096.z));
              float3 _3115 = normalize(float3(_3106.x ? _3099.x : _3100.x, _3106.y ? _3099.y : _3100.y, _3106.z ? _3099.z : _3100.z));
              float _3117 = clamp(dot(_3111, _3112), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3121 = sqrt(1.0f - (_3117 * _3117));
              float _3129 = clamp(dot(_3112, _3113), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3133 = sqrt(1.0f - (_3129 * _3129));
              float _3142 = clamp(dot(_3113, _3114), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _3146 = sqrt(1.0f - (_3142 * _3142));
              float _3153 = ((cross(_3111, _3112).z * ((_3121 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3117) / _3121))) + (cross(_3112, _3113).z * ((_3133 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3129) / _3133)))) + (cross(_3113, _3114).z * ((_3146 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3142) / _3146)));
              float _3170;
              if (_3101 >= 4) {
                float _3158 = clamp(dot(_3114, _3115), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3162 = sqrt(1.0f - (_3158 * _3158));
                _3170 = _3153 + (cross(_3114, _3115).z * ((_3162 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3158) / _3162)));
              } else {
                _3170 = _3153;
              }
              float _3187;
              if (_3101 == 5) {
                float _3175 = clamp(dot(_3115, _3111), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _3179 = sqrt(1.0f - (_3175 * _3175));
                _3187 = _3170 + (cross(_3115, _3111).z * ((_3179 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_3175) / _3179)));
              } else {
                _3187 = _3170;
              }
              _3190 = max(_3187, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _3193 = (_2268 & 2u) != 0u;
            uint _3197 = asuint(_44_m6[_2255].w);
            uint _3198 = asuint(_44_m6[_2261].w);
            float3 _3199 = _424 - _44_m6[_2246].xyz;
            float3 _3200 = abs(_3199);
            float _3201 = _3200.x;
            float _3202 = _3200.y;
            float _3204 = _3200.z;
            int _3237;
            if ((_3201 > _3202) && (_3201 > _3204)) {
              _3237 = int((_3199.x > 0.0f) ? (_3197 & 1023u) : ((_3197 >> 10u) & 1023u));
            } else {
              int _3229;
              if (_3202 > _3204) {
                _3229 = int((_3199.y > 0.0f) ? ((_3197 >> 20u) & 1023u) : (_3198 & 1023u));
              } else {
                _3229 = int((_3199.z > 0.0f) ? ((_3198 >> 10u) & 1023u) : ((_3198 >> 20u) & 1023u));
              }
              _3237 = _3229;
            }
            int _3240 = _3193 ? int(_44_m6[_2255].w) : ((_3237 == 1023) ? (-1) : _3237);
            uint _3251 = asuint(_48_m11.x) + (uint(_3240) * 96u);
            uint _3253 = (_3251 + 64u) >> 2u;
            uint _3256 = _3253 + 1u;
            uint _3259 = _3253 + 2u;
            uint _3262 = _3253 + 3u;
            float4 _3266 = asfloat(uint4(_52.Load(_3253 * 4 + 0), _52.Load(_3256 * 4 + 0), _52.Load(_3259 * 4 + 0), _52.Load(_3262 * 4 + 0)));
            float3 _3273 = (_424 - ((_3199 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_3199, _3199)))) * _3266.x)) + (_669 * (_3266.y * 5.0f));
            uint _3274 = _3251 >> 2u;
            uint _3289 = (_3251 + 16u) >> 2u;
            uint _3304 = (_3251 + 32u) >> 2u;
            uint _3319 = (_3251 + 48u) >> 2u;
            float4 _3339 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3274 * 4 + 0), _52.Load((_3274 + 1u) * 4 + 0), _52.Load((_3274 + 2u) * 4 + 0), _52.Load((_3274 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3289 * 4 + 0), _52.Load((_3289 + 1u) * 4 + 0), _52.Load((_3289 + 2u) * 4 + 0), _52.Load((_3289 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3304 * 4 + 0), _52.Load((_3304 + 1u) * 4 + 0), _52.Load((_3304 + 2u) * 4 + 0), _52.Load((_3304 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3319 * 4 + 0), _52.Load((_3319 + 1u) * 4 + 0), _52.Load((_3319 + 2u) * 4 + 0), _52.Load((_3319 + 3u) * 4 + 0))))), float4(_3273, 1.0f));
            float _3340 = _3339.w;
            float3 _3343 = _3339.xyz / _3340.xxx;
            uint _3345 = (_3251 + 80u) >> 2u;
            float4 _3358 = asfloat(uint4(_52.Load(_3345 * 4 + 0), _52.Load((_3345 + 1u) * 4 + 0), _52.Load((_3345 + 2u) * 4 + 0), _52.Load((_3345 + 3u) * 4 + 0)));
            float2 _3359 = _3343.xy;
            float2 _3361 = _3358.xy;
            float3 _3365 = _3343.xyz;
            bool3 _3366 = bool3(_3365.x <= 0.0f.xxx.x, _3365.y <= 0.0f.xxx.y, _3365.z <= 0.0f.xxx.z);
            bool3 _3367 = bool3(_3365.x >= 1.0f.xxx.x, _3365.y >= 1.0f.xxx.y, _3365.z >= 1.0f.xxx.z);
            float _3370 = _3343.z;
            float2 _3381 = ((_3359 * (_3358.zw - _3361)) + _3361).xy * _48_m10.zw;
            float2 _3383 = floor(_3381 + 0.5f.xx);
            float2 _3384 = _3381 - _3383;
            float _3385 = _3384.x;
            float _3386 = _3385 + 0.5f;
            float _3387 = _3386 * _3386;
            float _3390 = 1.0f - _3385;
            float _3391 = min(_3385, 0.0f);
            float _3394 = _3385 + 1.0f;
            float _3395 = max(_3385, 0.0f);
            float _3406 = _3384.y;
            float _3407 = _3406 + 0.5f;
            float _3408 = _3407 * _3407;
            float _3411 = 1.0f - _3406;
            float _3412 = min(_3406, 0.0f);
            float _3415 = _3406 + 1.0f;
            float _3416 = max(_3406, 0.0f);
            float3 _3428 = float3(0.1599999964237213134765625f * _3390, 0.1599999964237213134765625f * ((_3394 - (_3395 * _3395)) + 1.0f), _3387 * 0.07999999821186065673828125f);
            float3 _3429 = float3(0.1599999964237213134765625f * ((_3387 * 0.5f) - _3385), 0.1599999964237213134765625f * ((_3390 - (_3391 * _3391)) + 1.0f), 0.1599999964237213134765625f * _3394) + _3428;
            float3 _3431 = float3(0.1599999964237213134765625f * _3411, 0.1599999964237213134765625f * ((_3415 - (_3416 * _3416)) + 1.0f), _3408 * 0.07999999821186065673828125f);
            float3 _3432 = float3(0.1599999964237213134765625f * ((_3408 * 0.5f) - _3406), 0.1599999964237213134765625f * ((_3411 - (_3412 * _3412)) + 1.0f), 0.1599999964237213134765625f * _3415) + _3431;
            float3 _3438 = ((_3428 / _3429) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
            float3 _3440 = ((_3431 / _3432) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
            float2 _3442 = _3383 * _48_m10.xy;
            float _3443 = _3438.x;
            float _3444 = _3440.x;
            float2 _3446 = _3442 + float2(_3443, _3444);
            float _3447 = _3438.y;
            float2 _3449 = _3442 + float2(_3447, _3444);
            float _3450 = _3438.z;
            float2 _3452 = _3442 + float2(_3450, _3444);
            float _3453 = _3440.y;
            float2 _3455 = _3442 + float2(_3443, _3453);
            float2 _3457 = _3442 + float2(_3447, _3453);
            float2 _3459 = _3442 + float2(_3450, _3453);
            float _3460 = _3440.z;
            float2 _3462 = _3442 + float2(_3443, _3460);
            float2 _3464 = _3442 + float2(_3447, _3460);
            float2 _3466 = _3442 + float2(_3450, _3460);
            float _3467 = _3429.x;
            float _3468 = _3432.x;
            float _3470 = _3429.y;
            float _3472 = _3429.z;
            float _3474 = _3432.y;
            float _3478 = _3432.z;
            float _3544 = ((((((((_3467 * _3468) * _50.SampleCmpLevelZero(_26, float3(_3446, _383).xy, _3370)) + ((_3470 * _3468) * _50.SampleCmpLevelZero(_26, float3(_3449, _383).xy, _3370))) + ((_3472 * _3468) * _50.SampleCmpLevelZero(_26, float3(_3452, _383).xy, _3370))) + ((_3467 * _3474) * _50.SampleCmpLevelZero(_26, float3(_3455, _383).xy, _3370))) + ((_3470 * _3474) * _50.SampleCmpLevelZero(_26, float3(_3457, _383).xy, _3370))) + ((_3472 * _3474) * _50.SampleCmpLevelZero(_26, float3(_3459, _383).xy, _3370))) + ((_3467 * _3478) * _50.SampleCmpLevelZero(_26, float3(_3462, _383).xy, _3370))) + ((_3470 * _3478) * _50.SampleCmpLevelZero(_26, float3(_3464, _383).xy, _3370));
            float4 _3559 = asfloat(uint4(_52.Load(_3253 * 4 + 0), _52.Load(_3256 * 4 + 0), _52.Load(_3259 * 4 + 0), _52.Load(_3262 * 4 + 0)));
            float _3560 = _3559.w;
            float2 _3562 = min(_3359, 1.0f.xx - _3359);
            _3579 = ((_44_m6[_2243].xyz * (((((_726 * _2407.x) + ((1.0f.xxx - _726) * _2407.y)) * _2802) * _44_m6[_2264].z) + (_722 * _3190))) * _2380) * ((_3240 >= 0) ? lerp(1.0f, (any(bool3(_3366.x || _3367.x, _3366.y || _3367.y, _3366.z || _3367.z)) || ((asuint(_3370) & 2147483647u) > 2139095040u)) ? 1.0f : (_3544 + ((_3472 * _3478) * _50.SampleCmpLevelZero(_26, float3(_3466, _383).xy, _3370))), _3193 ? min(_3560, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3559.z - _3340) * 0.25f, min(_3562.x, _3562.y)))) : _3560) : 1.0f);
            break;
          } while (false);
          _4879 = _2203;
          _4880 = _3579 * _2343;
          break;
        }
        float _4877;
        float3 _4878;
        if (_44_m6[_2243].w < 1.5f) {
          float3 _4159 = float3(0.100000001490116119384765625f, _547, 1.0f);
          float _4168 = (0.5f + (0.5f * _44_m6[_2249].y)) - abs(_44_m6[_2249].x);
          float _4169 = _44_m6[_2249].y - _4168;
          float _4176 = abs(max((1.0f - abs(_4168)) - abs(_4169), 0.00048828125f));
          float3 _4180 = normalize(float3(_4168, _4169, (_44_m6[_2249].x >= 0.0f) ? _4176 : (-_4176)));
          float3 _4181 = _44_m6[_2246].xyz - _424;
          float _4182 = dot(_4181, _4181);
          float _4183 = rsqrt(_4182);
          float3 _4184 = _4181 * _4183;
          float _4188 = clamp(_44_m6[_2264].y * _4183, 0.0f, 1.0f);
          int _4193 = int(_44_m6[_2264].w);
          float3 _4194 = _4180 * _44_m6[_2249].z;
          float3 _4195 = _4194 * 0.5f;
          float3 _4196 = _4181 - _4195;
          float3 _4197 = _4181 + _4195;
          bool _4199 = (_2347 & 1u) == 0u;
          bool _4202 = _4199 || ((_2268 & 2u) != 0u);
          bool _4205 = (!_4199) && (_44_m6[_2249].z > 0.0f);
          float _4224;
          float _4225;
          if (_4205) {
            float _4209 = length(_4196);
            float _4210 = length(_4197);
            _4224 = clamp(0.5f * ((dot(_669, _4196) / _4209) + (dot(_669, _4197) / _4210)), 0.0f, 1.0f);
            _4225 = 1.0f / ((((_4209 * _4210) + dot(_4196, _4197)) * 0.5f) + 1.0f);
          } else {
            _4224 = clamp(dot(_669, _4184), 0.0f, 1.0f);
            _4225 = 1.0f;
          }
          float _4247;
          if (_44_m6[_2261].w < 0.0f) {
            float _4241 = _4182 * (_44_m6[_2246].w * _44_m6[_2246].w);
            float _4244 = clamp(1.0f - (_4241 * _4241), 0.0f, 1.0f);
            _4247 = lerp(1.0f / (_4182 + 1.0f), _4225, float(_4205)) * (_4244 * _4244);
          } else {
            float3 _4230 = _4181 * _44_m6[_2246].w;
            _4247 = _4225 * pow(1.0f - clamp(dot(_4230, _4230), 0.0f, 1.0f), _44_m6[_2261].w);
          }
          float _4253 = clamp((dot(_4184, -_4180) - _44_m6[_2249].z) * _44_m6[_2249].w, 0.0f, 1.0f);
          float _4257 = _4247 * lerp(1.0f, _4253 * _4253, float(_4199));
          float _4357;
          if ((!_4205) && (_4193 >= 0)) {
            uint _4263 = uint(_4193);
            float2 _4350;
            [branch] if (_4199) {
              float4 _4340 = mul(_68_m1[_4263], _428);
              _4350 = _68_m0[_4263].xy + (clamp(_4340.xy / _4340.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_4263].zw);
            }
            else {
              float3 _4277 = mul(float4(-_4181, 0.0f), _68_m1[_4263]).xyz;
              float3 _389 = _4277;
              float3 _388 = _4277;
              float3 _387 = abs(_4277);
              uint _4286 = uint(int(_387.y > _387.x));
              uint _4292 = (_387.z > _387[_4286]) ? 2u : _4286;
              uint _4298 = (_4292 * 2u) + uint(_388[_4292] < 0.0f);
              float _4302 = abs(_389[_4298 / 2u]);
              float _4322 = 0.5f - (0.000244140625f / _68_m0[_4263].w);
              _4350 = _68_m0[_4263].xy + (clamp(float2((float(_4298) + ((((_389[uint(_362[_4298].x)] * _363[_4298].x) / _4302) * _4322) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_362[_4298].y)] * _363[_4298].y) / _4302) * _4322)), 0.0f.xx, 1.0f.xx) * _68_m0[_4263].zw);
            }
            _4357 = _4257 * _66.SampleLevel(_23, _4350, 0.0f).x;
          } else {
            _4357 = _4257;
          }
          bool _4358 = _4357 > 0.0f;
          float _4742;
          if (_4358) {
            int _4411;
            if (_4202) {
              _4411 = int(_44_m6[_2252].x);
            } else {
              uint _4366 = asuint(_44_m6[_2249].w);
              uint _4367 = asuint(_44_m6[_2252].x);
              float3 _4368 = _424 - _44_m6[_2246].xyz;
              float3 _4369 = abs(_4368);
              float _4370 = _4369.x;
              float _4371 = _4369.y;
              float _4373 = _4369.z;
              int _4406;
              if ((_4370 > _4371) && (_4370 > _4373)) {
                _4406 = int((_4368.x > 0.0f) ? (_4366 & 1023u) : ((_4366 >> 10u) & 1023u));
              } else {
                int _4398;
                if (_4371 > _4373) {
                  _4398 = int((_4368.y > 0.0f) ? ((_4366 >> 20u) & 1023u) : (_4367 & 1023u));
                } else {
                  _4398 = int((_4368.z > 0.0f) ? ((_4367 >> 10u) & 1023u) : ((_4367 >> 20u) & 1023u));
                }
                _4406 = _4398;
              }
              _4411 = (_4406 == 1023) ? (-1) : _4406;
            }
            uint _4418 = asuint(_48_m11.x) + (uint(_4411) * 96u);
            uint _4420 = (_4418 + 64u) >> 2u;
            uint _4423 = _4420 + 1u;
            uint _4426 = _4420 + 2u;
            uint _4429 = _4420 + 3u;
            float4 _4433 = asfloat(uint4(_52.Load(_4420 * 4 + 0), _52.Load(_4423 * 4 + 0), _52.Load(_4426 * 4 + 0), _52.Load(_4429 * 4 + 0)));
            float3 _4440 = (_424 - ((-_4184) * _4433.x)) + (_669 * (_4433.y * 5.0f));
            uint _4441 = _4418 >> 2u;
            uint _4456 = (_4418 + 16u) >> 2u;
            uint _4471 = (_4418 + 32u) >> 2u;
            uint _4486 = (_4418 + 48u) >> 2u;
            float4 _4506 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_4441 * 4 + 0), _52.Load((_4441 + 1u) * 4 + 0), _52.Load((_4441 + 2u) * 4 + 0), _52.Load((_4441 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4456 * 4 + 0), _52.Load((_4456 + 1u) * 4 + 0), _52.Load((_4456 + 2u) * 4 + 0), _52.Load((_4456 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4471 * 4 + 0), _52.Load((_4471 + 1u) * 4 + 0), _52.Load((_4471 + 2u) * 4 + 0), _52.Load((_4471 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_4486 * 4 + 0), _52.Load((_4486 + 1u) * 4 + 0), _52.Load((_4486 + 2u) * 4 + 0), _52.Load((_4486 + 3u) * 4 + 0))))), float4(_4440, 1.0f));
            float _4507 = _4506.w;
            float3 _4510 = _4506.xyz / _4507.xxx;
            uint _4512 = (_4418 + 80u) >> 2u;
            float4 _4525 = asfloat(uint4(_52.Load(_4512 * 4 + 0), _52.Load((_4512 + 1u) * 4 + 0), _52.Load((_4512 + 2u) * 4 + 0), _52.Load((_4512 + 3u) * 4 + 0)));
            float2 _4526 = _4510.xy;
            float2 _4528 = _4525.xy;
            float3 _4532 = _4510.xyz;
            bool3 _4533 = bool3(_4532.x <= 0.0f.xxx.x, _4532.y <= 0.0f.xxx.y, _4532.z <= 0.0f.xxx.z);
            bool3 _4534 = bool3(_4532.x >= 1.0f.xxx.x, _4532.y >= 1.0f.xxx.y, _4532.z >= 1.0f.xxx.z);
            float _4537 = _4510.z;
            float2 _4548 = ((_4526 * (_4525.zw - _4528)) + _4528).xy * _48_m10.zw;
            float2 _4550 = floor(_4548 + 0.5f.xx);
            float2 _4551 = _4548 - _4550;
            float _4552 = _4551.x;
            float _4553 = _4552 + 0.5f;
            float _4554 = _4553 * _4553;
            float _4557 = 1.0f - _4552;
            float _4558 = min(_4552, 0.0f);
            float _4561 = _4552 + 1.0f;
            float _4562 = max(_4552, 0.0f);
            float _4573 = _4551.y;
            float _4574 = _4573 + 0.5f;
            float _4575 = _4574 * _4574;
            float _4578 = 1.0f - _4573;
            float _4579 = min(_4573, 0.0f);
            float _4582 = _4573 + 1.0f;
            float _4583 = max(_4573, 0.0f);
            float3 _4595 = float3(0.1599999964237213134765625f * _4557, 0.1599999964237213134765625f * ((_4561 - (_4562 * _4562)) + 1.0f), _4554 * 0.07999999821186065673828125f);
            float3 _4596 = float3(0.1599999964237213134765625f * ((_4554 * 0.5f) - _4552), 0.1599999964237213134765625f * ((_4557 - (_4558 * _4558)) + 1.0f), 0.1599999964237213134765625f * _4561) + _4595;
            float3 _4598 = float3(0.1599999964237213134765625f * _4578, 0.1599999964237213134765625f * ((_4582 - (_4583 * _4583)) + 1.0f), _4575 * 0.07999999821186065673828125f);
            float3 _4599 = float3(0.1599999964237213134765625f * ((_4575 * 0.5f) - _4573), 0.1599999964237213134765625f * ((_4578 - (_4579 * _4579)) + 1.0f), 0.1599999964237213134765625f * _4582) + _4598;
            float3 _4605 = ((_4595 / _4596) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
            float3 _4607 = ((_4598 / _4599) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
            float2 _4609 = _4550 * _48_m10.xy;
            float _4610 = _4605.x;
            float _4611 = _4607.x;
            float2 _4613 = _4609 + float2(_4610, _4611);
            float _4614 = _4605.y;
            float2 _4616 = _4609 + float2(_4614, _4611);
            float _4617 = _4605.z;
            float2 _4619 = _4609 + float2(_4617, _4611);
            float _4620 = _4607.y;
            float2 _4622 = _4609 + float2(_4610, _4620);
            float2 _4624 = _4609 + float2(_4614, _4620);
            float2 _4626 = _4609 + float2(_4617, _4620);
            float _4627 = _4607.z;
            float2 _4629 = _4609 + float2(_4610, _4627);
            float2 _4631 = _4609 + float2(_4614, _4627);
            float2 _4633 = _4609 + float2(_4617, _4627);
            float _4634 = _4596.x;
            float _4635 = _4599.x;
            float _4637 = _4596.y;
            float _4639 = _4596.z;
            float _4641 = _4599.y;
            float _4645 = _4599.z;
            float _4711 = ((((((((_4634 * _4635) * _50.SampleCmpLevelZero(_26, float3(_4613, _383).xy, _4537)) + ((_4637 * _4635) * _50.SampleCmpLevelZero(_26, float3(_4616, _383).xy, _4537))) + ((_4639 * _4635) * _50.SampleCmpLevelZero(_26, float3(_4619, _383).xy, _4537))) + ((_4634 * _4641) * _50.SampleCmpLevelZero(_26, float3(_4622, _383).xy, _4537))) + ((_4637 * _4641) * _50.SampleCmpLevelZero(_26, float3(_4624, _383).xy, _4537))) + ((_4639 * _4641) * _50.SampleCmpLevelZero(_26, float3(_4626, _383).xy, _4537))) + ((_4634 * _4645) * _50.SampleCmpLevelZero(_26, float3(_4629, _383).xy, _4537))) + ((_4637 * _4645) * _50.SampleCmpLevelZero(_26, float3(_4631, _383).xy, _4537));
            float4 _4726 = asfloat(uint4(_52.Load(_4420 * 4 + 0), _52.Load(_4423 * 4 + 0), _52.Load(_4426 * 4 + 0), _52.Load(_4429 * 4 + 0)));
            float _4727 = _4726.w;
            float2 _4729 = min(_4526, 1.0f.xx - _4526);
            _4742 = (_4411 >= 0) ? lerp(1.0f, (any(bool3(_4533.x || _4534.x, _4533.y || _4534.y, _4533.z || _4534.z)) || ((asuint(_4537) & 2147483647u) > 2139095040u)) ? 1.0f : (_4711 + ((_4639 * _4645) * _50.SampleCmpLevelZero(_26, float3(_4633, _383).xy, _4537))), _4202 ? min(_4727, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4726.z - _4507) * 0.25f, min(_4729.x, _4729.y)))) : _4727) : 1.0f;
          } else {
            _4742 = 1.0f;
          }
          float3 _4765;
          float3 _4766;
          if (_4205) {
            float3 _4745 = _4159 * _4159;
            float _4754 = dot(_1210, _4194);
            _4765 = _4745 / clamp(_4745 + (0.5f * clamp(_44_m6[_2249].z * _4183, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4766 = normalize(_4196 + (_4194 * clamp(dot(_4196, (_1210 * _4754) - _4194) / ((_44_m6[_2249].z * _44_m6[_2249].z) - (_4754 * _4754)), 0.0f, 1.0f)));
          } else {
            _4765 = 1.0f.xxx;
            _4766 = _4184;
          }
          float3 _4767 = _4766 + _461;
          float3 _4771 = _4767 * rsqrt(max(6.103515625e-05f, dot(_4767, _4767)));
          float3 _4876;
          if (_4358) {
            float _4774 = clamp(_4224, 0.0f, 1.0f);
            float _4776 = clamp(dot(_669, _4771), 0.0f, 1.0f);
            float _4778 = clamp(dot(_461, _4771), 0.0f, 1.0f);
            float _4779 = clamp(_727, 0.0f, 1.0f);
            float _4780 = _547 * _547;
            float _4790;
            if (_4188 > 0.0f) {
              _4790 = clamp(_4780 + ((_4188 * _4188) / ((_4778 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4790 = _4780;
            }
            float _4791 = _4790 * _4790;
            float _4812 = (((_4776 * _4791) - _4776) * _4776) + 1.0f;
            float _4817 = 1.0f - _4778;
            float _4818 = _4817 * _4817;
            float _4820 = (_4817 * _4818) * _4818;
            float _4844 = 1.0f - _547;
            float _4851 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4844 * (1.04997003078460693359375f + (_4844 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4844))))));
            float _4852 = 1.0f - _4851;
            float3 _4855 = _726 + ((1.0f.xxx - _726) * 0.0476190485060214996337890625f);
            float3 _4875 = ((clamp((min(((_726 * (1.0f - _4820)) + _4820.xxx) * (((_4791 / (_4812 * _4812)) * _4765.y) * (0.5f / (((_4774 * sqrt(((((-_4779) * _4791) + _4779) * _4779) + _4791)) + (_4779 * sqrt(((((-_4774) * _4791) + _4774) * _4774) + _4791))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4855 * (((_58.SampleLevel(_23, (float2(_4779, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x * _58.SampleLevel(_23, (float2(_4774, _547) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4851) / _4852)) * _4855) / (1.0f.xxx - (_4855 * _4852)))) * _44_m6[_2264].z, 0.0f.xxx, 1000.0f.xxx) * _4224) + ((_722 * _4765.z) * _4224)) * (((_44_m6[_2243].xyz * _4357) * _4742) * _2343);
            _4876 = _4875;
          } else {
            _4876 = 0.0f.xxx;
          }
          _4877 = _2203;
          _4878 = _4876;
        } else {
          float _4157;
          do {
            if (_2350) {
              _4157 = 1.0f;
              break;
            }
            float _3596 = (0.5f + (0.5f * _44_m6[_2249].y)) - abs(_44_m6[_2249].x);
            float _3597 = _44_m6[_2249].y - _3596;
            float _3604 = abs(max((1.0f - abs(_3596)) - abs(_3597), 0.00048828125f));
            float3 _3608 = normalize(float3(_3596, _3597, (_44_m6[_2249].x >= 0.0f) ? _3604 : (-_3604)));
            float3 _3609 = _44_m6[_2246].xyz - _424;
            float _3610 = dot(_3609, _3609);
            float3 _3612 = _3609 * rsqrt(_3610);
            int _3615 = int(_44_m6[_2264].w);
            float3 _3617 = (_3608 * _44_m6[_2249].z) * 0.5f;
            float3 _3618 = _3609 - _3617;
            float3 _3619 = _3609 + _3617;
            bool _3621 = (_2347 & 1u) == 0u;
            bool _3624 = _3621 || ((_2268 & 2u) != 0u);
            bool _3627 = (!_3621) && (_44_m6[_2249].z > 0.0f);
            float _3639;
            if (_3627) {
              _3639 = 1.0f / ((((length(_3618) * length(_3619)) + dot(_3618, _3619)) * 0.5f) + 1.0f);
            } else {
              _3639 = 1.0f;
            }
            float _3661;
            if (_44_m6[_2261].w < 0.0f) {
              float _3655 = _3610 * (_44_m6[_2246].w * _44_m6[_2246].w);
              float _3658 = clamp(1.0f - (_3655 * _3655), 0.0f, 1.0f);
              _3661 = lerp(1.0f / (_3610 + 1.0f), _3639, float(_3627)) * (_3658 * _3658);
            } else {
              float3 _3644 = _3609 * _44_m6[_2246].w;
              _3661 = _3639 * pow(1.0f - clamp(dot(_3644, _3644), 0.0f, 1.0f), _44_m6[_2261].w);
            }
            float _3667 = clamp((dot(_3612, -_3608) - _44_m6[_2249].z) * _44_m6[_2249].w, 0.0f, 1.0f);
            float _3671 = _3661 * lerp(1.0f, _3667 * _3667, float(_3621));
            float _3771;
            if ((!_3627) && (_3615 >= 0)) {
              uint _3677 = uint(_3615);
              float2 _3764;
              [branch] if (_3621) {
                float4 _3754 = mul(_68_m1[_3677], _428);
                _3764 = _68_m0[_3677].xy + (clamp(_3754.xy / _3754.w.xx, 0.0f.xx, 1.0f.xx) * _68_m0[_3677].zw);
              }
              else {
                float3 _3691 = mul(float4(-_3609, 0.0f), _68_m1[_3677]).xyz;
                float3 _392 = _3691;
                float3 _391 = _3691;
                float3 _390 = abs(_3691);
                uint _3700 = uint(int(_390.y > _390.x));
                uint _3706 = (_390.z > _390[_3700]) ? 2u : _3700;
                uint _3712 = (_3706 * 2u) + uint(_391[_3706] < 0.0f);
                float _3716 = abs(_392[_3712 / 2u]);
                float _3736 = 0.5f - (0.000244140625f / _68_m0[_3677].w);
                _3764 = _68_m0[_3677].xy + (clamp(float2((float(_3712) + ((((_392[uint(_362[_3712].x)] * _363[_3712].x) / _3716) * _3736) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_392[uint(_362[_3712].y)] * _363[_3712].y) / _3716) * _3736)), 0.0f.xx, 1.0f.xx) * _68_m0[_3677].zw);
              }
              _3771 = _3671 * _66.SampleLevel(_23, _3764, 0.0f).x;
            } else {
              _3771 = _3671;
            }
            float _4156;
            if (_3771 > 0.0f) {
              int _3825;
              if (_3624) {
                _3825 = int(_44_m6[_2252].x);
              } else {
                uint _3780 = asuint(_44_m6[_2249].w);
                uint _3781 = asuint(_44_m6[_2252].x);
                float3 _3782 = _424 - _44_m6[_2246].xyz;
                float3 _3783 = abs(_3782);
                float _3784 = _3783.x;
                float _3785 = _3783.y;
                float _3787 = _3783.z;
                int _3820;
                if ((_3784 > _3785) && (_3784 > _3787)) {
                  _3820 = int((_3782.x > 0.0f) ? (_3780 & 1023u) : ((_3780 >> 10u) & 1023u));
                } else {
                  int _3812;
                  if (_3785 > _3787) {
                    _3812 = int((_3782.y > 0.0f) ? ((_3780 >> 20u) & 1023u) : (_3781 & 1023u));
                  } else {
                    _3812 = int((_3782.z > 0.0f) ? ((_3781 >> 10u) & 1023u) : ((_3781 >> 20u) & 1023u));
                  }
                  _3820 = _3812;
                }
                _3825 = (_3820 == 1023) ? (-1) : _3820;
              }
              uint _3832 = asuint(_48_m11.x) + (uint(_3825) * 96u);
              uint _3834 = (_3832 + 64u) >> 2u;
              uint _3837 = _3834 + 1u;
              uint _3840 = _3834 + 2u;
              uint _3843 = _3834 + 3u;
              float4 _3847 = asfloat(uint4(_52.Load(_3834 * 4 + 0), _52.Load(_3837 * 4 + 0), _52.Load(_3840 * 4 + 0), _52.Load(_3843 * 4 + 0)));
              float3 _3854 = (_424 - ((-_3612) * _3847.x)) + (_669 * (_3847.y * 5.0f));
              uint _3855 = _3832 >> 2u;
              uint _3870 = (_3832 + 16u) >> 2u;
              uint _3885 = (_3832 + 32u) >> 2u;
              uint _3900 = (_3832 + 48u) >> 2u;
              float4 _3920 = mul(transpose(float4x4(asfloat(uint4(_52.Load(_3855 * 4 + 0), _52.Load((_3855 + 1u) * 4 + 0), _52.Load((_3855 + 2u) * 4 + 0), _52.Load((_3855 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3870 * 4 + 0), _52.Load((_3870 + 1u) * 4 + 0), _52.Load((_3870 + 2u) * 4 + 0), _52.Load((_3870 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3885 * 4 + 0), _52.Load((_3885 + 1u) * 4 + 0), _52.Load((_3885 + 2u) * 4 + 0), _52.Load((_3885 + 3u) * 4 + 0))), asfloat(uint4(_52.Load(_3900 * 4 + 0), _52.Load((_3900 + 1u) * 4 + 0), _52.Load((_3900 + 2u) * 4 + 0), _52.Load((_3900 + 3u) * 4 + 0))))), float4(_3854, 1.0f));
              float _3921 = _3920.w;
              float3 _3924 = _3920.xyz / _3921.xxx;
              uint _3926 = (_3832 + 80u) >> 2u;
              float4 _3939 = asfloat(uint4(_52.Load(_3926 * 4 + 0), _52.Load((_3926 + 1u) * 4 + 0), _52.Load((_3926 + 2u) * 4 + 0), _52.Load((_3926 + 3u) * 4 + 0)));
              float2 _3940 = _3924.xy;
              float2 _3942 = _3939.xy;
              float3 _3946 = _3924.xyz;
              bool3 _3947 = bool3(_3946.x <= 0.0f.xxx.x, _3946.y <= 0.0f.xxx.y, _3946.z <= 0.0f.xxx.z);
              bool3 _3948 = bool3(_3946.x >= 1.0f.xxx.x, _3946.y >= 1.0f.xxx.y, _3946.z >= 1.0f.xxx.z);
              float _3951 = _3924.z;
              float2 _3962 = ((_3940 * (_3939.zw - _3942)) + _3942).xy * _48_m10.zw;
              float2 _3964 = floor(_3962 + 0.5f.xx);
              float2 _3965 = _3962 - _3964;
              float _3966 = _3965.x;
              float _3967 = _3966 + 0.5f;
              float _3968 = _3967 * _3967;
              float _3971 = 1.0f - _3966;
              float _3972 = min(_3966, 0.0f);
              float _3975 = _3966 + 1.0f;
              float _3976 = max(_3966, 0.0f);
              float _3987 = _3965.y;
              float _3988 = _3987 + 0.5f;
              float _3989 = _3988 * _3988;
              float _3992 = 1.0f - _3987;
              float _3993 = min(_3987, 0.0f);
              float _3996 = _3987 + 1.0f;
              float _3997 = max(_3987, 0.0f);
              float3 _4009 = float3(0.1599999964237213134765625f * _3971, 0.1599999964237213134765625f * ((_3975 - (_3976 * _3976)) + 1.0f), _3968 * 0.07999999821186065673828125f);
              float3 _4010 = float3(0.1599999964237213134765625f * ((_3968 * 0.5f) - _3966), 0.1599999964237213134765625f * ((_3971 - (_3972 * _3972)) + 1.0f), 0.1599999964237213134765625f * _3975) + _4009;
              float3 _4012 = float3(0.1599999964237213134765625f * _3992, 0.1599999964237213134765625f * ((_3996 - (_3997 * _3997)) + 1.0f), _3989 * 0.07999999821186065673828125f);
              float3 _4013 = float3(0.1599999964237213134765625f * ((_3989 * 0.5f) - _3987), 0.1599999964237213134765625f * ((_3992 - (_3993 * _3993)) + 1.0f), 0.1599999964237213134765625f * _3996) + _4012;
              float3 _4019 = ((_4009 / _4010) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.xxx;
              float3 _4021 = ((_4012 / _4013) + float3(-2.5f, -0.5f, 1.5f)) * _48_m10.yyy;
              float2 _4023 = _3964 * _48_m10.xy;
              float _4024 = _4019.x;
              float _4025 = _4021.x;
              float2 _4027 = _4023 + float2(_4024, _4025);
              float _4028 = _4019.y;
              float2 _4030 = _4023 + float2(_4028, _4025);
              float _4031 = _4019.z;
              float2 _4033 = _4023 + float2(_4031, _4025);
              float _4034 = _4021.y;
              float2 _4036 = _4023 + float2(_4024, _4034);
              float2 _4038 = _4023 + float2(_4028, _4034);
              float2 _4040 = _4023 + float2(_4031, _4034);
              float _4041 = _4021.z;
              float2 _4043 = _4023 + float2(_4024, _4041);
              float2 _4045 = _4023 + float2(_4028, _4041);
              float2 _4047 = _4023 + float2(_4031, _4041);
              float _4048 = _4010.x;
              float _4049 = _4013.x;
              float _4051 = _4010.y;
              float _4053 = _4010.z;
              float _4055 = _4013.y;
              float _4059 = _4013.z;
              float _4125 = ((((((((_4048 * _4049) * _50.SampleCmpLevelZero(_26, float3(_4027, _383).xy, _3951)) + ((_4051 * _4049) * _50.SampleCmpLevelZero(_26, float3(_4030, _383).xy, _3951))) + ((_4053 * _4049) * _50.SampleCmpLevelZero(_26, float3(_4033, _383).xy, _3951))) + ((_4048 * _4055) * _50.SampleCmpLevelZero(_26, float3(_4036, _383).xy, _3951))) + ((_4051 * _4055) * _50.SampleCmpLevelZero(_26, float3(_4038, _383).xy, _3951))) + ((_4053 * _4055) * _50.SampleCmpLevelZero(_26, float3(_4040, _383).xy, _3951))) + ((_4048 * _4059) * _50.SampleCmpLevelZero(_26, float3(_4043, _383).xy, _3951))) + ((_4051 * _4059) * _50.SampleCmpLevelZero(_26, float3(_4045, _383).xy, _3951));
              float4 _4140 = asfloat(uint4(_52.Load(_3834 * 4 + 0), _52.Load(_3837 * 4 + 0), _52.Load(_3840 * 4 + 0), _52.Load(_3843 * 4 + 0)));
              float _4141 = _4140.w;
              float2 _4143 = min(_3940, 1.0f.xx - _3940);
              _4156 = (_3825 >= 0) ? lerp(1.0f, (any(bool3(_3947.x || _3948.x, _3947.y || _3948.y, _3947.z || _3948.z)) || ((asuint(_3951) & 2147483647u) > 2139095040u)) ? 1.0f : (_4125 + ((_4053 * _4059) * _50.SampleCmpLevelZero(_26, float3(_4047, _383).xy, _3951))), _3624 ? min(_4141, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4140.z - _3921) * 0.25f, min(_4143.x, _4143.y)))) : _4141) : 1.0f;
            } else {
              _4156 = 1.0f;
            }
            _4157 = _4156;
            break;
          } while (false);
          _4877 = _2203 * _4157;
          _4878 = 0.0f.xxx;
        }
        _4879 = _4877;
        _4880 = _4878;
        break;
      } while (false);
      _2228 = _4879;
      _2231 = _2230 + _4880;
    }
    _2200 = _2199 + _2230;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xF4FF1066:
  float3 _4887 = (((((float3(_1189, _1194, _1199) * _722) * lerp(1.0f, _517.z, _39_m4)) * _18_m22.x) + ((((_1483 * _18_m23.z) * _18_m22.y) * ((_726 * _741.x) + (clamp(50.0f * _726.y, 0.0f, 1.0f) * _741.y).xxx)) * 1.0f)) + (((_642 * lerp(_614, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2174.xyz + (_2199 * _2202)).xyz;
  */
  float3 _4887 = (((((float3(_1189, _1194, _1199) * (_722 * (GLASS_TRANSPARENCY > 0.5f ? 0.65f : 1.0f))) * lerp(1.0f, _517.z, _39_m4)) * _18_m22.x) + (((((_1483 * (GLASS_TRANSPARENCY > 0.5f ? 0.4f : 1.0f)) * _18_m23.z) * _18_m22.y) * ((_726 * _741.x) + (clamp(50.0f * _726.y, 0.0f, 1.0f) * _741.y).xxx)) * 1.0f)) + (((_642 * lerp(_614, 1.0f.xxx, _39_m47.xxx)) * (1.0f - _21_m0[_11]._m5.x)) * ((1.0f - _39_m46) + (_18_m20.y * _39_m46)))) + (_2174.xyz + ((_2199 * (GLASS_TRANSPARENCY > 0.5f ? 0.5f : 1.0f)) * _2202)).xyz;
  // RenoDX code end
  float4 _4888 = float4(_4887.x, _4887.y, _4887.z, _384.w);
  _4888.w = _542;
  float _4905 = _424.y * _18_m46.w;
  float _4910 = max(0.00999999977648258209228515625f, _4905 + _18_m47.w);
  float3 _4924 = exp(_18_m45.xyz * ((-max(0.0f, (_462 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_4910)) / _4910) * exp(_4905 + _18_m48.w))));
  float _4927 = dot(_1209, _18_m44.xyz);
  float _4933 = _18_m45.w * _18_m45.w;
  float _4937 = (1.0f + _4933) - ((2.0f * _18_m45.w) * _4927);
  float3 _5269;
  float _5270;
  if (_18_m55.z > 0.0f) {
    uint3 _5095 = (uint3(int3(int(_781.x), int(_781.y), int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5096 = _5095.y;
    uint _5097 = _5095.z;
    uint _5100 = _5095.x + (_5096 * _5097);
    uint _5102 = _5096 + (_5097 * _5100);
    uint _5104 = _5097 + (_5100 * _5102);
    uint _5106 = _5100 + (_5102 * _5104);
    float _5130 = dot(_1209, -_16_m0[2].xyz);
    float3 _5140 = _424 - _16_m11.xyz;
    float _5142 = (_18_m55.w * ((_5130 > 5.9604644775390625e-08f) ? (1.0f / _5130) : 0.0f)) * (1.0f / _462);
    float _5143 = _5140.y;
    float _5144 = _5142 * _5143;
    float _5146 = _16_m11.y + _5144;
    float _5147 = _5143 - _5144;
    float _5149 = (1.0f - _5142) * _462;
    float _5163 = max(-127.0f, _18_m49.z * _5147);
    float _5187 = max(-127.0f, _18_m52.x * _5147);
    float _5198 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_5146 - _18_m49.x)))) * ((abs(_5163) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5163)) / _5163) : (0.693147182464599609375f - (0.2402265071868896484375f * _5163)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_5146 - _18_m52.z)))) * ((abs(_5187) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5187)) / _5187) : (0.693147182464599609375f - (0.2402265071868896484375f * _5187))));
    float _5220 = clamp((_462 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5223 = clamp((max(clamp(exp2(-(_5198 * _5149)), 0.0f, 1.0f), _18_m51.w) + clamp((_462 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5220, 0.0f, 1.0f);
    float4 _5263 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _65.SampleLevel(_23, float3((_1219 + ((((float3(uint3(_5106, _5102 + (_5104 * _5106), _385) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_782 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_782 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    _5269 = _5263.xyz + (((_18_m51.xyz * (1.0f - _5223)) + (((_18_m54.xyz * pow(clamp(dot(_461, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5198 * max(_5149 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5220))) * _5263.w);
    _5270 = _5263.w * _5223;
  } else {
    float3 _4967 = _424 - _16_m11.xyz;
    float _4969 = _4967.y;
    float _4983 = max(-127.0f, _18_m49.z * _4969);
    float _5007 = max(-127.0f, _18_m52.x * _4969);
    float _5018 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_4983) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4983)) / _4983) : (0.693147182464599609375f - (0.2402265071868896484375f * _4983)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_5007) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5007)) / _5007) : (0.693147182464599609375f - (0.2402265071868896484375f * _5007))));
    float _5040 = clamp((_462 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
    float _5043 = clamp((max(clamp(exp2(-(_5018 * _462)), 0.0f, 1.0f), _18_m51.w) + clamp((_462 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _5040, 0.0f, 1.0f);
    _5269 = (_18_m51.xyz * (1.0f - _5043)) + (((_18_m54.xyz * pow(clamp(dot(_461, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_5018 * max(_462 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5040));
    _5270 = _5043;
  }
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xF4FF1066:
  float3 _5276 = ((_4888.xyz * (_4924 * _5270)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4927 * _4927)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4933) / max((12.56637096405029296875f * _4937) * sqrt(_4937), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4924)) * _5270) + _5269)).xyz;
  */
  float3 _5276 = ((_4888.xyz * (GLASS_TRANSPARENCY > 0.5f ? (0.5f + 0.5f * (_4924 * _5270)) : (_4924 * _5270))) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4927 * _4927)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _4933) / max((12.56637096405029296875f * _4937) * sqrt(_4937), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4924)) * _5270 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)) + (_5269 * (GLASS_TRANSPARENCY > 0.5f ? 0.349999994f : 1.0f)))).xyz;
  // RenoDX code end
  float3 _5286 = lerp(dot(_5276, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _5276, _18_m78.w.xxx) * _18_m78.xyz;
  float2 _5296 = min(lerp(((sqrt(sqrt(abs(_694 * 0.5f))) * float2(int2(sign(_694)))) * 0.5f) + 0.5f.xx, ((sqrt(sqrt(abs(0.0f.xx))) * float2(int2(sign(0.0f.xx)))) * 0.5f) + 0.5f.xx, _681.xx), 1.0f.xx);
  float4 _5297 = float4(_5296.x, _5296.y, _384.z, _384.w);
  _5297.z = float(clamp(max(dot(_5286.xyz, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * _542, _542) * 10.0f, 0.0f, 1.0f) > 0.5f);
  _5297.w = lerp(0.0f, 0.699999988079071044921875f, _681);
  // RenoDX code start: preserve the existing glass controls.
  /* Vanilla 0xF4FF1066:
  _13 = float4(_5286.x, _5286.y, _5286.z, _4888.w);
  */
  float3 renodx_output_color = float3(_5286.x, _5286.y, _5286.z);
  if (GLASS_TRANSPARENCY > 0.5f) {
    float renodx_luminance = dot(renodx_output_color, float3(0.212599993f, 0.715200007f, 0.0722000003f));
    if (renodx_luminance > 0.5f) {
      float renodx_compressed_luminance = (1.0f - exp2(-0.666666985f * (renodx_luminance - 0.5f))) * 1.5f + 0.5f;
      renodx_output_color *= renodx_compressed_luminance / max(0.001f, renodx_luminance);
    }
  }
  _13 = float4(renodx_output_color, _4888.w);
  // RenoDX code end
  _14 = _5297;
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

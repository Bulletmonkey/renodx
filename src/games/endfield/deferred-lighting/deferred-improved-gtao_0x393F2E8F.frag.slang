#include "./renodx_injection.hlsli"

// Ported from the native 0x393F2E8F Vulkan dump.
struct _27 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _437;
static float _440;
static uint _441;

static const int2 _391[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _392[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(39, 3)]] cbuffer _6_7 : register(b39, space3) {
  column_major float4x4 _7_m0 : packoffset(c0);
  column_major float4x4 _7_m1 : packoffset(c4);
  column_major float4x4 _7_m2 : packoffset(c8);
  column_major float4x4 _7_m3 : packoffset(c12);
  column_major float4x4 _7_m4 : packoffset(c16);
  column_major float4x4 _7_m5 : packoffset(c20);
  column_major float4x4 _7_m6 : packoffset(c24);
  column_major float4x4 _7_m7 : packoffset(c28);
  column_major float4x4 _7_m8 : packoffset(c32);
  column_major float4x4 _7_m9 : packoffset(c36);
  column_major float4x4 _7_m10 : packoffset(c40);
  float4 _7_m11 : packoffset(c44);
  column_major float4x4 _7_m12 : packoffset(c45);
  column_major float4x4 _7_m13 : packoffset(c49);
  column_major float4x4 _7_m14 : packoffset(c53);
  column_major float4x4 _7_m15 : packoffset(c57);
  column_major float4x4 _7_m16 : packoffset(c61);
  column_major float4x4 _7_m17 : packoffset(c65);
  column_major float4x4 _7_m18 : packoffset(c69);
  column_major float4x4 _7_m19 : packoffset(c73);
  column_major float4x4 _7_m20 : packoffset(c77);
  float4 _7_m21 : packoffset(c81);
};

[[vk::binding(44, 3)]] cbuffer _8_9 : register(b44, space3) {
  float4 _9_m0 : packoffset(c0);
  float4 _9_m1 : packoffset(c1);
  float4 _9_m2 : packoffset(c2);
  float4 _9_m3 : packoffset(c3);
  float4 _9_m4 : packoffset(c4);
  float4 _9_m5 : packoffset(c5);
  float4 _9_m6[6] : packoffset(c6);
  float4 _9_m7[6] : packoffset(c12);
  float4 _9_m8 : packoffset(c18);
  float4 _9_m9 : packoffset(c19);
  float4 _9_m10 : packoffset(c20);
  float4 _9_m11 : packoffset(c21);
  float4 _9_m12 : packoffset(c22);
  float4 _9_m13 : packoffset(c23);
  float4 _9_m14 : packoffset(c24);
  float4 _9_m15 : packoffset(c25);
  float _9_m16 : packoffset(c26);
  float _9_m17 : packoffset(c26.y);
  float _9_m18 : packoffset(c26.z);
  uint _9_m19 : packoffset(c26.w);
  float4 _9_m20 : packoffset(c27);
  int4 _9_m21 : packoffset(c28);
  float4 _9_m22 : packoffset(c29);
  float4 _9_m23 : packoffset(c30);
  float4 _9_m24 : packoffset(c31);
  float4 _9_m25 : packoffset(c32);
  float4 _9_m26 : packoffset(c33);
  float4 _9_m27 : packoffset(c34);
  float4 _9_m28 : packoffset(c35);
  float4 _9_m29 : packoffset(c36);
  float4 _9_m30 : packoffset(c37);
  float4 _9_m31 : packoffset(c38);
  float4 _9_m32[4] : packoffset(c39);
  float4 _9_m33[4] : packoffset(c43);
  float4 _9_m34[4] : packoffset(c47);
  float4 _9_m35[4] : packoffset(c51);
  float4 _9_m36 : packoffset(c55);
  float4 _9_m37 : packoffset(c56);
  float4 _9_m38[4] : packoffset(c57);
  float4 _9_m39[4] : packoffset(c61);
  float4 _9_m40[4] : packoffset(c65);
  float4 _9_m41 : packoffset(c69);
  float4 _9_m42 : packoffset(c70);
  float4 _9_m43 : packoffset(c71);
  float4 _9_m44 : packoffset(c72);
  float4 _9_m45 : packoffset(c73);
  float4 _9_m46 : packoffset(c74);
  float4 _9_m47 : packoffset(c75);
  float4 _9_m48 : packoffset(c76);
  float4 _9_m49 : packoffset(c77);
  float4 _9_m50 : packoffset(c78);
  float4 _9_m51 : packoffset(c79);
  float4 _9_m52 : packoffset(c80);
  float4 _9_m53 : packoffset(c81);
  float4 _9_m54 : packoffset(c82);
  float4 _9_m55 : packoffset(c83);
  float4 _9_m56 : packoffset(c84);
  float4 _9_m57 : packoffset(c85);
  float4 _9_m58 : packoffset(c86);
  float4 _9_m59 : packoffset(c87);
  float4 _9_m60 : packoffset(c88);
  float4 _9_m61 : packoffset(c89);
  float4 _9_m62 : packoffset(c90);
  float4 _9_m63 : packoffset(c91);
  float4 _9_m64 : packoffset(c92);
  float4 _9_m65 : packoffset(c93);
  float4 _9_m66 : packoffset(c94);
  float4 _9_m67 : packoffset(c95);
  float4 _9_m68 : packoffset(c96);
  float4 _9_m69 : packoffset(c97);
  float4 _9_m70 : packoffset(c98);
  float4 _9_m71 : packoffset(c99);
  float4 _9_m72 : packoffset(c100);
  float4 _9_m73 : packoffset(c101);
  float4 _9_m74 : packoffset(c102);
  float4 _9_m75 : packoffset(c103);
  float4 _9_m76 : packoffset(c104);
  float4 _9_m77 : packoffset(c105);
  float4 _9_m78 : packoffset(c106);
  float4 _9_m79 : packoffset(c107);
  float4 _9_m80 : packoffset(c108);
  float4 _9_m81 : packoffset(c109);
  float4 _9_m82 : packoffset(c110);
  float4 _9_m83 : packoffset(c111);
  float4 _9_m84 : packoffset(c112);
  float4 _9_m85 : packoffset(c113);
  float4 _9_m86 : packoffset(c114);
  float4 _9_m87 : packoffset(c115);
  float4 _9_m88 : packoffset(c116);
  float4 _9_m89 : packoffset(c117);
  float4 _9_m90 : packoffset(c118);
  float4 _9_m91 : packoffset(c119);
  float4 _9_m92 : packoffset(c120);
  float4 _9_m93 : packoffset(c121);
  float4 _9_m94 : packoffset(c122);
  float4 _9_m95 : packoffset(c123);
  float4 _9_m96 : packoffset(c124);
  float4 _9_m97 : packoffset(c125);
  float4 _9_m98 : packoffset(c126);
  float4 _9_m99 : packoffset(c127);
  float4 _9_m100 : packoffset(c128);
  float4 _9_m101 : packoffset(c129);
  float4 _9_m102[2] : packoffset(c130);
  float4 _9_m103[2] : packoffset(c132);
  float _9_m104 : packoffset(c134);
  float _9_m105 : packoffset(c134.y);
  float _9_m106 : packoffset(c134.z);
  float _9_m107 : packoffset(c134.w);
  float4 _9_m108 : packoffset(c135);
  float4 _9_m109 : packoffset(c136);
  float4 _9_m110 : packoffset(c137);
  float4 _9_m111 : packoffset(c138);
  float4 _9_m112 : packoffset(c139);
  float4 _9_m113 : packoffset(c140);
  float4 _9_m114 : packoffset(c141);
  float4 _9_m115 : packoffset(c142);
  float4 _9_m116 : packoffset(c143);
  float4 _9_m117 : packoffset(c144);
  float4 _9_m118 : packoffset(c145);
  float4 _9_m119 : packoffset(c146);
  float4 _9_m120 : packoffset(c147);
  float4 _9_m121 : packoffset(c148);
  float4 _9_m122 : packoffset(c149);
  float4 _9_m123 : packoffset(c150);
  float4 _9_m124 : packoffset(c151);
  float4 _9_m125 : packoffset(c152);
  float4 _9_m126 : packoffset(c153);
  float4 _9_m127 : packoffset(c154);
  float4 _9_m128 : packoffset(c155);
  float4 _9_m129 : packoffset(c156);
  float4 _9_m130 : packoffset(c157);
  float4 _9_m131 : packoffset(c158);
  float4 _9_m132 : packoffset(c159);
  float4 _9_m133 : packoffset(c160);
  float4 _9_m134 : packoffset(c161);
  float4 _9_m135 : packoffset(c162);
  float4 _9_m136 : packoffset(c163);
  float4 _9_m137 : packoffset(c164);
  column_major float4x4 _9_m138 : packoffset(c165);
  float4 _9_m139 : packoffset(c169);
  float4 _9_m140 : packoffset(c170);
  float4 _9_m141 : packoffset(c171);
  float4 _9_m142 : packoffset(c172);
  int4 _9_m143 : packoffset(c173);
  int4 _9_m144 : packoffset(c174);
  int4 _9_m145 : packoffset(c175);
  float4 _9_m146[32] : packoffset(c176);
};

[[vk::binding(48, 3)]] ByteAddressBuffer _25 : register(t48, space3);
[[vk::binding(45, 3)]] cbuffer _26_28 : register(b45, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(40, 3)]] cbuffer _29_30 : register(b40, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(41, 3)]] cbuffer _31_32 : register(b41, space3) {
  int _32_m0 : packoffset(c0);
  int _32_m1 : packoffset(c0.y);
  int _32_m2 : packoffset(c0.z);
  int _32_m3 : packoffset(c0.w);
  int _32_m4 : packoffset(c1);
  int _32_m5 : packoffset(c1.y);
  int _32_m6 : packoffset(c1.z);
  int _32_m7 : packoffset(c1.w);
  float _32_m8 : packoffset(c2);
  float _32_m9 : packoffset(c2.y);
  float _32_m10 : packoffset(c2.z);
  float _32_m11 : packoffset(c2.w);
  float _32_m12 : packoffset(c3);
  float _32_m13 : packoffset(c3.y);
  float _32_m14 : packoffset(c3.z);
  float _32_m15 : packoffset(c3.w);
};

[[vk::binding(43, 3)]] cbuffer _33_34 : register(b43, space3) {
  column_major float4x4 _34_m0[5] : packoffset(c0);
  float4 _34_m1[4] : packoffset(c20);
  float4 _34_m2[4] : packoffset(c24);
  float4 _34_m3[4] : packoffset(c28);
  float4 _34_m4 : packoffset(c32);
  float4 _34_m5 : packoffset(c33);
  float4 _34_m6 : packoffset(c34);
  float4 _34_m7 : packoffset(c35);
  float4 _34_m8 : packoffset(c36);
  float4 _34_m9[27] : packoffset(c37);
  float4 _34_m10 : packoffset(c64);
  float4 _34_m11 : packoffset(c65);
  float4 _34_m12[62] : packoffset(c66);
  column_major float4x4 _34_m13[15] : packoffset(c128);
  float4 _34_m14[15] : packoffset(c188);
  float4 _34_m15[15] : packoffset(c203);
  float4 _34_m16[15] : packoffset(c218);
  float4 _34_m17 : packoffset(c233);
  float4 _34_m18 : packoffset(c234);
  float4 _34_m19[21] : packoffset(c235);
  column_major float4x4 _34_m20 : packoffset(c256);
  column_major float4x4 _34_m21 : packoffset(c260);
  float4 _34_m22 : packoffset(c264);
  float4 _34_m23 : packoffset(c265);
  float4 _34_m24 : packoffset(c266);
  float4 _34_m25[128] : packoffset(c267);
};

[[vk::binding(47, 3)]] ByteAddressBuffer _37 : register(t47, space3);
[[vk::binding(38, 3)]] cbuffer _42_43 : register(b38, space3) {
  column_major float4x4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c4);
};

[[vk::binding(46, 3)]] cbuffer _51_52 : register(b46, space3) {
  float4 _52_m0[32] : packoffset(c0);
  column_major float4x4 _52_m1[32] : packoffset(c32);
};

[[vk::binding(42, 3)]] cbuffer _58_59 : register(b42, space3) {
  float4 _59_m0 : packoffset(c0);
  float4 _59_m1 : packoffset(c1);
  float4 _59_m2 : packoffset(c2);
  float4 _59_m3 : packoffset(c3);
  float4 _59_m4 : packoffset(c4);
  uint4 _59_m5 : packoffset(c5);
  float4 _59_m6 : packoffset(c6);
  float4 _59_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3, space3);
[[vk::binding(35, 3)]] Texture2D<float4> _19 : register(t35, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _21 : register(t12, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _22 : register(t28, space3);
[[vk::binding(14, 3)]] Texture2DArray<float4> _23 : register(t14, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _35 : register(t16, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _38 : register(t10, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _39 : register(t30, space3);
[[vk::binding(36, 3)]] Texture2D<float4> _40 : register(t36, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _45 : register(t15, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _46 : register(t9, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _47 : register(t13, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _49 : register(t34, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _50 : register(t18, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _55 : register(t20, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _56 : register(t19, space3);
[[vk::binding(27, 3)]] Texture3D<float4> _57 : register(t27, space3);
[[vk::binding(37, 3)]] Texture2D<float4> _60 : register(t37, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _61 : register(t7, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _62 : register(t26, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _63 : register(t23, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _64 : register(t25, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _65 : register(t22, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _66 : register(t24, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _67 : register(t21, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _68 : register(t6, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _69 : register(t33, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _70 : register(t32, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _71 : register(t31, space3);
[[vk::binding(29, 3)]] Texture3D<float4> _72 : register(t29, space3);

static float4 gl_FragCoord;
static float2 _4;
static float4 _5;

struct SPIRV_Cross_Input {
  [[vk::location(0)]] float2 _4 : TEXCOORD0;
  float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output {
  [[vk::location(0)]] float4 _5 : SV_Target0;
};

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main() {
  uint2 _455 = uint2(gl_FragCoord.xy);
  int _458 = int(_455.x);
  int _459 = int(_455.y);
  int2 _461 = int3(_458, _459, 0).xy;
  float4 _463 = _69.Load(int3(_461, 0));
  float4 _465 = _70.Load(int3(_461, 0));
  float _468 = _463.x;
  float _469 = _463.y;
  float _470 = _463.z;
  float2 _473 = (_465.xy * 2.0f) - 1.0f.xx;
  float _477 = 1.0f - dot(1.0f.xx, abs(_473));
  float3 _479 = float3(_473.x, _477, _473.y);
  float3 _491;
  if (_477 < 0.0f) {
    float2 _486 = _479.xz;
    bool2 _487 = bool2(_486.x >= 0.0f.xx.x, _486.y >= 0.0f.xx.y);
    float2 _489 = (1.0f.xx - abs(_479.zx)) * float2(_487.x ? 1.0f.xx.x : (-1.0f).xx.x, _487.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _491 = float3(_489.x, _479.y, _489.y);
  } else {
    _491 = _479;
  }
  float3 _492 = normalize(_491);
  float _493 = _465.z;
  float2 _497 = float2(_455);
  float2 _502 = (_497 + 0.5f.xx) * _9_m0.zw;
  float2 _510 = gl_FragCoord.xy * _9_m0.zw;
  float2 _512 = (_510 * 2.0f) - 1.0f.xx;
  float4 _515 = float4(_512, _19.SampleLevel(_12, _502, 0.0f).x, 1.0f);
  _515.y = -_512.y;
  float4 _518 = mul(_7_m6, _515);
  float3 _522 = _518.xyz / _518.w.xxx;
  float _523 = _522.x;
  float _524 = _522.y;
  float4 _526 = float4(_523, _524, _522.z, 1.0f);
  float _529 = abs(mul(_7_m0, _526).z);
  float3 _544;
  do {
    if (_9_m4.w == 0.0f) {
      _544 = _7_m11.xyz - _522;
      break;
    } else {
      _544 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _545 = dot(_544, _544);
  float _547 = rsqrt(max(_545, 9.9999999392252902907785028219223e-09f));
  float3 _548 = _544 * _547;
  float _549 = _545 * _547;
  float3 _550 = -_548;
  bool _553 = _9_m132.x > 0.00048828125f;
  float2 _563;
  if (_553) {
    _563 = _68.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _563 = 1.0f.xx;
  }
  float _564 = dot(_492, float3(0.0f, -1.0f, 0.0f));
  float3 _620;
  float3 _621;
  [branch] if (_9_m124.x > 0.5f) {
    float _591 = abs(_492.x);
    float _593 = abs(_492.y);
    float _595 = abs(_492.z);
    float3 _600 = float3(_591, _593, _595) * (1.0f / ((_591 + _593) + _595));
    float4 _613 = _45.SampleLevel(_14, _522 * _9_m127.x, 0.0f);
    float _614 = _613.x;
    _620 = float3(_614, _440, _440);
    _621 = ((((float3(0.0f, 0.0f, 1.0f) * _600.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _600.y)) + (float3(1.0f, 0.0f, 0.0f) * _600.z)) * ((_614 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_564)));
  }
  else {
    _620 = 0.0f.xxx;
    _621 = 0.0f.xxx;
  }
  float4 _635 = mul(_43_m0, float4((_522 + ((((_492 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_564, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _564), 0.100000001490116119384765625f, 1.0f)))) + _621, 1.0f));
  float2 _638 = (_635.xy * 0.5f) + 0.5f.xx;
  float4 _639 = float4(_638.x, _638.y, _635.z, _635.w);
  _639.y = 1.0f - _638.y;
  float _660;
  [branch] if (_9_m124.y > 0.5f) {
    _660 = _41.SampleCmpLevelZero(_17, (_639.xy + _43_m1.xy).xy, max(_635.z, 0.00048828125f));
  }
  else {
    _660 = 1.0f;
  }
  float _663 = _492.y;
  float _664 = clamp(_663, 0.0f, 1.0f);
  float _665 = lerp(_9_m128.w, 1.0f, _664);
  float2 _669 = _522.xz;
  float2 _674 = abs(_669 - _7_m11.xz);
  float _677 = max(_674.x, _674.y);
  float _687 = lerp(_665 * _660, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _677));
  float3 _694 = ddy_fine(_522);
  float3 _695 = ddx_fine(_522);
  float3 _696 = cross(_694, _695);
  float _702 = clamp((_696 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_696, _696)))).y, 0.0f, 1.0f);
  float _705 = _9_m121.z * 0.300000011920928955078125f;
  float _707 = _705 + 0.68599998950958251953125f;
  float _714 = 1.0f - clamp((_529 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _729 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_707, 0.9700000286102294921875f), 0.9900000095367431640625f, _664) + (smoothstep(0.990999996662139892578125f, 1.0f, _702) * step(_469, (_620.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _928;
  float _929;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_705 + 0.686999976634979248046875f, _707, _702) * smoothstep(-0.5f, -0.100000001490116119384765625f, _663)) > 0.00048828125f)) {
    float3 _738 = abs(_492);
    float3 _739 = _738 * _738;
    float3 _744 = _739 * (1.0f / (_739.x + _739.z));
    float3 _746 = normalize(cross(_492, float3(0.0f, 1.0f, 0.0f)));
    float3 _748 = normalize(cross(_746, _492));
    float3 _764 = floor((_522 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _772 = frac(sin(dot(fmod(_764.xz + _764.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _776 = (step(0.0f.xx, _492.zx) * 2.0f) - 1.0f.xx;
    float3 _779 = _522;
    _779.x = _523 * _776.x;
    _779.z = _522.z * (-_776.y);
    float _791 = _620.x * _772;
    float2 _799 = float2(frac(((-_9_m121.x) * (((1.0f - _772) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_791 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_791 * 6.0f)));
    float _802 = floor(_772 * 5.0f) + 1.0f;
    float2 _806 = frac(float2(_802, 0.100000001490116119384765625f * _802) * _524);
    float2 _818 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _806 - (_799 - 1.0f.xx)), _799 - _806), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _806 - _799), (_799 + 1.0f.xx) - _806), step(_799, _806));
    float _819 = _818.x;
    float _821 = smoothstep(0.4000000059604644775390625f, 1.0f, _819 * _819);
    float _822 = _818.y;
    float _827 = (_822 * 2.0f) - 1.0f;
    float2 _836 = float2((_620.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _821) * _827), (1.0f.xx * _620.x).y * (_620.x + (((_821 * 0.00999999977648258209228515625f) * _821) * _827)));
    float4 _860 = (_46.SampleBias(_14, (_779.zy * _9_m122.xy) + _836, _9_m16) * _744.x) + (_46.SampleBias(_14, (_779.xy * _9_m122.xy) + _836, _9_m16) * _744.z);
    float2 _863 = (_860.xy * 2.0f) - 1.0f.xx;
    float _869 = _860.w;
    float _879 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_822 + (((_821 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_869 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_827 * _869) * 0.5f) + _821, 0.0f, 1.0f)));
    float _885 = _860.z;
    float _895 = (((lerp(0.100000001490116119384765625f, (_879 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _879, 0.0f, 1.0f), 5.0f), _885)) * _885) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_687 * step(0.04500000178813934326171875f, _470))) * _714);
    float2 _898 = _863.xy;
    float _903 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_898, _898), 0.0f, 1.0f)));
    float3 _904 = float3(_863, _903);
    float2 _908 = _904.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _895) * _9_m121.y);
    float3 _909 = float3(_908.x, _908.y, _904.z);
    _909.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _903, _895);
    _928 = lerp(_492, mul(float4x4(float4(_746.x, _748.x, _492.x, 0.0f), float4(_746.y, _748.y, _663, 0.0f), float4(_746.z, _748.z, _492.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_909 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_909, _909))), 0.0f)).xyz, _895.xxx);
    _929 = (_895 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _928 = _492;
    _929 = 0.0f;
  }
  float3 _1077;
  float _1078;
  [branch] if (_729 > 0.00048828125f) {
    float2 _936 = (-_669) * _9_m126.xy;
    float2 _938 = frac(_936);
    float2 _985;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _948 = frac(sin(dot(fmod(floor(_936), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _961 = floor(frac(_9_m125.x + _948) * (_9_m126.z * _9_m126.z));
      float _963 = 1.0f / _9_m126.z;
      _985 = ((_47.SampleBias(_13, frac((lerp(_938, _938.yx, step(_948, 0.5f).xx) * _963) + float2(_963 * fmod(_961, _9_m126.z), _963 * ((_9_m126.z - 1.0f) - floor(_961 * _963)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _985 = 0.0f.xx;
    }
    float2 _1026;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _1011 = _47.SampleBias(_14, (_936 + float2(0.0f, _9_m125.z)) + ((float2(_620.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1015 = _47.SampleBias(_14, (_936 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _620.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1021 = (((float4(_1011.z, _1011.w, _1015.z, _1015.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _620.x;
      _1026 = _985 + (_1021.xy + _1021.zw);
    }
    else {
      _1026 = _985;
    }
    float _1034 = (((_620.x * 0.699999988079071044921875f) + (_493 * 0.300000011920928955078125f)) * clamp((_493 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _469;
    float _1038 = smoothstep(min(_1034, 0.9900000095367431640625f), clamp(_1034 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _1049 = _9_m120.x * _729;
    float3 _1059 = float3(_1026, max(0.00048828125f, sqrt(1.0f - clamp(dot(_1026, _1026), 0.0f, 1.0f))));
    float3 _1065 = (_1059 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1059, _1059)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _1077 = lerp(_492, _1065, (((_1049 * _1038) * _687) * _714).xxx);
    _1078 = max((smoothstep(0.0f, _469 * 0.20000000298023223876953125f, (_1049 * clamp(lerp((_9_m126.w * (1.0f - _620.x)) * 0.5f, 1.0f, _1038) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _1065.y) * _687) * _714, 0.0f);
  }
  else {
    _1077 = _928;
    _1078 = 0.0f;
  }
  float _1081 = min(_563.x, _563.y);
  float2 _1083 = _563 * (1.0f - lerp(lerp(_9_m128.z * _665, 1.0f, _687), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _677)));
  float _1084 = _1083.x;
  float _1087 = clamp((_470 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _1088 = 1.0f - _493;
  float _1104 = lerp(clamp((clamp((_1088 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _929)) + ((_1078 * 0.100000001490116119384765625f) * _493), 0.0f, 1.0f), 1.0f, _468);
  float _1106 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _564);
  float _1115 = lerp(1.0f, 0.25f, ((_9_m120.x * _1104) * (1.0f - _468)) * _1106);
  float _1131 = (1.0f - lerp(_1088, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1104) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1088)), 0.0f, 1.0f), _1088, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1106) * (1.0f - _1084))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1078, smoothstep(0.0f, 0.0500000007450580596923828125f, _929)));
  float _1136;
  float _1137;
  if (_553) {
    _1136 = lerp(1.0f, _563.y, _1087);
    _1137 = lerp(1.0f, 0.0f, _1087);
  } else {
    _1136 = 1.0f;
    _1137 = 1.0f;
  }
  float _1142 = lerp(lerp(min(_1136, _1131), _1131, _1081), _493, _1084);
  float3 _1144 = _71.Load(int3(_461, 0)).xyz * lerp(lerp(min(_1137, _1115), _1115, _1081), 1.0f, _1084);
  float3 _1145 = _1144 * _468;
  float3 _1146 = _1144 - _1145;
  float3 _1150 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _468)).xxx + _1145;
  float _1151 = dot(_1077, _548);
  float _1152 = max(0.0f, _1151);
  float _1153 = _1142 * _1142;
  float _1154 = _1152 * _1152;
  float _1155 = _1154 * _1152;
  float2 _1156 = float2(1.0f, _1152);
  float2 _1159 = float2(1.0f, _1153);
  float _1160 = _1153 * _1153;
  float3 _1162 = float3(1.0f, _1153, _1160 * _1153);
  float _1167 = dot(mul(_1156, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1159) / dot(mul(float3(1.0f, _1154, _1155), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1162);
  float _1172 = dot(mul(_1156, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1159) / dot(mul(float3(1.0f, _1152, _1155), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1162);
  float3 _1175 = (_1150 * _1167) + _1172.xxx;
  float _1176 = _1167 + _1172;
  float4 _1336;
  do {
    [branch] if (_32_m4 == 0) {
      _1336 = 0.0f.xxxx;
      break;
    }
    float4 _1196 = _38.Load(int3(_461, 0));
    float _1197 = _1196.x;
    float4 _1335;
    if (_1197 > 0.001000000047497451305389404296875f) {
      float3 _1207 = reflect(_550, _1077);
      float3 _1208 = -_30_m0.xyz;
      float _1213 = dot(_1208, _1207);
      float3 _1215 = _1207 - (_1208 * _1213);
      bool3 _1217 = (_1213 < _30_m4.z).xxx;
      float3 _1225 = normalize((_1208 * _30_m4.z) + ((_1215 * rsqrt(max(6.103515625e-05f, dot(_1215, _1215)))) * _30_m4.y));
      float3 _1226 = float3(_1217.x ? _1225.x : _1207.x, _1217.y ? _1225.y : _1207.y, _1217.z ? _1225.z : _1207.z);
      float3 _1230 = _1226 + _548;
      float3 _1234 = _1230 * rsqrt(max(6.103515625e-05f, dot(_1230, _1230)));
      float _1237 = clamp(dot(_1226, _1077), 0.0f, 1.0f);
      float _1239 = clamp(dot(_1077, _1234), 0.0f, 1.0f);
      float _1242 = clamp(_1151, 0.0f, 1.0f);
      float _1263 = (((_1239 * _1160) - _1239) * _1239) + 1.0f;
      float _1266 = 1.0f - clamp(dot(_548, _1234), 0.0f, 1.0f);
      float _1267 = _1266 * _1266;
      float _1269 = (_1266 * _1267) * _1267;
      float _1293 = 1.0f - _1142;
      float _1300 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1293 * (1.04997003078460693359375f + (_1293 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1293))))));
      float _1301 = 1.0f - _1300;
      float3 _1304 = _1150 + ((1.0f.xxx - _1150) * 0.0476190485060214996337890625f);
      float3 _1320 = ((clamp((min(((_1150 * (1.0f - _1269)) + _1269.xxx) * ((_1160 / (_1263 * _1263)) * (0.5f / (((_1237 * sqrt(((((-_1242) * _1160) + _1242) * _1242) + _1160)) + (_1242 * sqrt(((((-_1237) * _1160) + _1237) * _1237) + _1160))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1304 * (((_48.SampleLevel(_13, (float2(_1242, _1142) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_1237, _1142) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1300) / _1301)) * _1304) / (1.0f.xxx - (_1304 * _1301)))) * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1237) + ((_1146 * 1.0f) * clamp(dot(_1226, _492), 0.0f, 1.0f))) * _30_m1.xyz;
      float3 _1333 = lerp(_1320, _1320 * _40.SampleBias(_13, float2(_1197, 0.5f), _9_m16).xyz, (1.0f - _1197).xxx) * min(_49.SampleLevel(_13, _510, 0.0f).x, 1.0f);
      _1335 = float4(_1333.x, _1333.y, _1333.z, 0.0f.xxxx.w);
    } else {
      _1335 = 0.0f.xxxx;
    }
    _1336 = _1335;
    break;
  } while (false);
  float2 _1338 = floor(_497 * 0.03125f);
  int _1346 = int((_1338.x + (_1338.y * _32_m9)) * 8.0f);
  float _1353 = floor(_529 - (_9_m3.y * _32_m15));
  float _1357 = clamp(_1353, 0.0f, _32_m11 - 1.0f);
  int _1359 = int(_1357 * 8.0f);
  float4 _1365 = _39.SampleBias(_13, _502, _9_m16);
  float3 _1367;
  float _1370;
  _1367 = 0.0f.xxx;
  _1370 = 1.0f;
  float3 _1368;
  float _1371;
  [loop] for (int _1372 = 0; _1372 <= 7; _1367 = _1368, _1370 = _1371, _1372++) {
    uint _1393 = (_1353 <= _1357) ? (_25.Load(uint((_32_m2 + _1346) + _1372) * 4 + 0) & _25.Load(uint((_32_m3 + _1359) + _1372) * 4 + 0)) : 0u;
    uint _1394 = uint(_1372);
    float3 _1398;
    _1371 = _1370;
    _1398 = 0.0f.xxx;
    uint _1401;
    float _1396;
    float3 _1399;
    [loop] for (uint _1400 = _1393; _1400 != 0u; _1371 = _1396, _1398 = _1399, _1400 = _1401) {
      uint _1405 = firstbitlow(_1400);
      _1401 = _1400 ^ (1u << (_1405 & 31u));
      int _1411 = int((32u * _1394) + _1405) * 8;
      int _1414 = _1411 + 1;
      int _1417 = _1411 + 2;
      int _1420 = _1411 + 3;
      int _1423 = _1411 + 4;
      int _1426 = _1411 + 5;
      int _1429 = _1411 + 6;
      int _1432 = _1411 + 7;
      uint _1436 = uint(_30_m6[_1426].w);
      float _1511;
      if ((_1436 & 1u) == 1u) {
        uint _1442 = asuint(_30_m6[_1426].x);
        uint _1449 = asuint(_30_m6[_1426].y);
        uint _1456 = asuint(_30_m6[_1426].z);
        uint _1463 = asuint(_30_m6[_1429].x);
        uint _1470 = asuint(_30_m6[_1429].y);
        uint _1477 = asuint(_30_m6[_1429].z);
        float3 _1496 = abs(mul(float4(_522 - _30_m6[_1414].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1442).x, spvUnpackHalf2x16(_1456).x, spvUnpackHalf2x16(_1470).x, 0.0f), float4(spvUnpackHalf2x16(_1442 >> 16u).x, spvUnpackHalf2x16(_1456 >> 16u).x, spvUnpackHalf2x16(_1470 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1449).x, spvUnpackHalf2x16(_1463).x, spvUnpackHalf2x16(_1477).x, 0.0f), float4(spvUnpackHalf2x16(_1449 >> 16u).x, spvUnpackHalf2x16(_1463 >> 16u).x, spvUnpackHalf2x16(_1477 >> 16u).x, 0.0f))).xyz);
        float _1503 = _30_m6[_1432].x * 0.5f;
        float _1509 = 1.0f - clamp((max(max(_1496.x, _1496.y), _1496.z) - (_1503 + 0.5f)) / (0.5f - _1503), 0.0f, 1.0f);
        _1511 = _1509 * _1509;
      } else {
        _1511 = 1.0f;
      }
      uint _1515 = uint(_30_m6[_1411].w);
      bool _1518 = _30_m6[_1420].z > 0.5f;
      if ((false || (_1511 < 0.001000000047497451305389404296875f)) || ((_1515 < 4u) && _1518)) {
        _1396 = _1371;
        _1399 = _1398;
        continue;
      }
      float _4143;
      float3 _4144;
      do {
        [branch] if (_1515 >= 4u) {
          float3 _2771;
          do {
            float3 _1537 = _30_m6[_1414].xyz - _522;
            if (dot(_30_m6[_1420].xyz, _1537) > 0.0f) {
              _2771 = 0.0f.xxx;
              break;
            }
            float _1544 = dot(_1537, _1537) * _30_m6[_1414].w;
            float _1547 = clamp(1.0f - (_1544 * _1544), 0.0f, 1.0f);
            float _1548 = _1547 * _1547;
            if (_1548 <= 0.0f) {
              _2771 = 0.0f.xxx;
              break;
            }
            float3 _1587;
            float _1588;
            bool _1589;
            float3 _1616;
            float3 _1618;
            float3 _1620;
            float3 _1622;
            float3 _1552 = _30_m6[_1417].xyz * _30_m6[_1417].w;
            float3 _1553 = _30_m6[_1414].xyz - _1552;
            float3 _1554 = _30_m6[_1423].xyz * _30_m6[_1420].w;
            float3 _1557 = _30_m6[_1414].xyz + _1552;
            float2 _1568 = (float2(clamp(_1142, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_492, _548), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1572 = _55.SampleLevel(_13, _1568, 0.0f);
            float4 _1576 = _56.SampleLevel(_13, _1568, 0.0f);
            float _1970;
            do {
              _1587 = _548 - (_492 * dot(_548, _492));
              _1588 = dot(_1587, _1587);
              _1589 = _1588 > 9.9999997473787516355514526367188e-05f;
              float3 _1611;
              if (_1589) {
                _1611 = _1587 * rsqrt(_1588);
              } else {
                float _1593 = _492.z;
                float _1595 = (_1593 >= 0.0f) ? 1.0f : (-1.0f);
                float _1597 = (-1.0f) / (_1595 + _1593);
                float _1599 = _492.x;
                _1611 = float3(1.0f + (((_1595 * _1597) * _1599) * _1599), ((_1595 * _1599) * _663) * _1597, (-_1595) * _1599);
              }
              float3x3 _1615 = mul(float3x3(float3(_1572.x, 0.0f, _1572.z), float3(0.0f, 1.0f, 0.0f), float3(_1572.y, 0.0f, _1572.w)), float3x3(_1611, cross(_492, _1611), _492));
              _1616 = (_1553 - _1554) - _522;
              float3 _1617 = mul(_1615, _1616);
              _1618 = (_1553 + _1554) - _522;
              float3 _1619 = mul(_1615, _1618);
              _1620 = (_1557 + _1554) - _522;
              float3 _1621 = mul(_1615, _1620);
              _1622 = (_1557 - _1554) - _522;
              float3 _1623 = mul(_1615, _1622);
              float _1624 = _1617.z;
              float _1627 = _1619.z;
              float _1631 = _1621.z;
              float _1635 = _1623.z;
              int _1639 = (((int(_1624 > 0.0f) | ((_1627 > 0.0f) ? 2 : 0)) | ((_1631 > 0.0f) ? 4 : 0)) | ((_1635 > 0.0f) ? 8 : 0));
              float3 _1876;
              float3 _1877;
              float3 _1878;
              float3 _1879;
              float3 _1880;
              int _1881;
              if (_1639 == 0) {
                _1876 = _1623;
                _1877 = _1621;
                _1878 = _1619;
                _1879 = _1617;
                _1880 = 0.0f.xxx;
                _1881 = 0;
              } else {
                float3 _1870;
                float3 _1871;
                float3 _1872;
                float3 _1873;
                float3 _1874;
                int _1875;
                if (_1639 == 1) {
                  _1870 = _1623;
                  _1871 = (_1617 * (-_1635)) + (_1623 * _1624);
                  _1872 = (_1617 * (-_1627)) + (_1619 * _1624);
                  _1873 = _1617;
                  _1874 = 0.0f.xxx;
                  _1875 = 3;
                } else {
                  float3 _1856;
                  float3 _1857;
                  float3 _1858;
                  float3 _1859;
                  float3 _1860;
                  int _1861;
                  if (_1639 == 2) {
                    _1856 = _1623;
                    _1857 = (_1619 * (-_1631)) + (_1621 * _1627);
                    _1858 = _1619;
                    _1859 = (_1619 * (-_1624)) + (_1617 * _1627);
                    _1860 = 0.0f.xxx;
                    _1861 = 3;
                  } else {
                    float3 _1842;
                    float3 _1843;
                    float3 _1844;
                    float3 _1845;
                    float3 _1846;
                    int _1847;
                    if (_1639 == 3) {
                      _1842 = (_1617 * (-_1635)) + (_1623 * _1624);
                      _1843 = (_1619 * (-_1631)) + (_1621 * _1627);
                      _1844 = _1619;
                      _1845 = _1617;
                      _1846 = 0.0f.xxx;
                      _1847 = 4;
                    } else {
                      float3 _1828;
                      float3 _1829;
                      float3 _1830;
                      float3 _1831;
                      float3 _1832;
                      int _1833;
                      if (_1639 == 4) {
                        _1828 = _1623;
                        _1829 = _1621;
                        _1830 = (_1621 * (-_1627)) + (_1619 * _1631);
                        _1831 = (_1621 * (-_1635)) + (_1623 * _1631);
                        _1832 = 0.0f.xxx;
                        _1833 = 3;
                      } else {
                        float3 _1814;
                        float3 _1815;
                        float3 _1816;
                        float3 _1817;
                        float3 _1818;
                        int _1819;
                        if (_1639 == 5) {
                          _1814 = _1623;
                          _1815 = _1621;
                          _1816 = _1619;
                          _1817 = _1617;
                          _1818 = 0.0f.xxx;
                          _1819 = 0;
                        } else {
                          float3 _1808;
                          float3 _1809;
                          float3 _1810;
                          float3 _1811;
                          float3 _1812;
                          int _1813;
                          if (_1639 == 6) {
                            _1808 = (_1621 * (-_1635)) + (_1623 * _1631);
                            _1809 = _1621;
                            _1810 = _1619;
                            _1811 = (_1619 * (-_1624)) + (_1617 * _1627);
                            _1812 = 0.0f.xxx;
                            _1813 = 4;
                          } else {
                            float3 _1794;
                            float3 _1795;
                            float3 _1796;
                            float3 _1797;
                            float3 _1798;
                            int _1799;
                            if (_1639 == 7) {
                              float _1787 = -_1635;
                              _1794 = (_1621 * _1787) + (_1623 * _1631);
                              _1795 = _1621;
                              _1796 = _1619;
                              _1797 = _1617;
                              _1798 = (_1617 * _1787) + (_1623 * _1624);
                              _1799 = 5;
                            } else {
                              float3 _1781;
                              float3 _1782;
                              float3 _1783;
                              float3 _1784;
                              float3 _1785;
                              int _1786;
                              if (_1639 == 8) {
                                _1781 = _1623;
                                _1782 = _1623;
                                _1783 = (_1623 * (-_1631)) + (_1621 * _1635);
                                _1784 = (_1623 * (-_1624)) + (_1617 * _1635);
                                _1785 = 0.0f.xxx;
                                _1786 = 3;
                              } else {
                                float3 _1767;
                                float3 _1768;
                                float3 _1769;
                                float3 _1770;
                                float3 _1771;
                                int _1772;
                                if (_1639 == 9) {
                                  _1767 = _1623;
                                  _1768 = (_1623 * (-_1631)) + (_1621 * _1635);
                                  _1769 = (_1617 * (-_1627)) + (_1619 * _1624);
                                  _1770 = _1617;
                                  _1771 = 0.0f.xxx;
                                  _1772 = 4;
                                } else {
                                  float3 _1753;
                                  float3 _1754;
                                  float3 _1755;
                                  float3 _1756;
                                  float3 _1757;
                                  int _1758;
                                  if (_1639 == 10) {
                                    _1753 = _1623;
                                    _1754 = _1621;
                                    _1755 = _1619;
                                    _1756 = _1617;
                                    _1757 = 0.0f.xxx;
                                    _1758 = 0;
                                  } else {
                                    float3 _1747;
                                    float3 _1748;
                                    float3 _1749;
                                    float3 _1750;
                                    float3 _1751;
                                    int _1752;
                                    if (_1639 == 11) {
                                      float _1740 = -_1631;
                                      _1747 = (_1623 * _1740) + (_1621 * _1635);
                                      _1748 = (_1619 * _1740) + (_1621 * _1627);
                                      _1749 = _1619;
                                      _1750 = _1617;
                                      _1751 = _1623;
                                      _1752 = 5;
                                    } else {
                                      float3 _1734;
                                      float3 _1735;
                                      float3 _1736;
                                      float3 _1737;
                                      float3 _1738;
                                      int _1739;
                                      if (_1639 == 12) {
                                        _1734 = _1623;
                                        _1735 = _1621;
                                        _1736 = (_1621 * (-_1627)) + (_1619 * _1631);
                                        _1737 = (_1623 * (-_1624)) + (_1617 * _1635);
                                        _1738 = 0.0f.xxx;
                                        _1739 = 4;
                                      } else {
                                        bool _1692 = _1639 == 13;
                                        float3 _1719;
                                        float3 _1720;
                                        float3 _1721;
                                        float3 _1722;
                                        int _1723;
                                        if (_1692) {
                                          float _1712 = -_1627;
                                          _1719 = (_1621 * _1712) + (_1619 * _1631);
                                          _1720 = (_1617 * _1712) + (_1619 * _1624);
                                          _1721 = _1617;
                                          _1722 = _1623;
                                          _1723 = 5;
                                        } else {
                                          float3 _1709;
                                          float3 _1710;
                                          int _1711;
                                          if (_1639 == 14) {
                                            float _1702 = -_1624;
                                            _1709 = (_1619 * _1702) + (_1617 * _1627);
                                            _1710 = (_1623 * _1702) + (_1617 * _1635);
                                            _1711 = 5;
                                          } else {
                                            _1709 = _1617;
                                            _1710 = 0.0f.xxx;
                                            _1711 = (_1639 == 15) ? 4 : 0;
                                          }
                                          _1719 = _1621;
                                          _1720 = _1619;
                                          _1721 = _1709;
                                          _1722 = _1710;
                                          _1723 = _1711;
                                        }
                                        bool3 _1724 = _1692.xxx;
                                        _1734 = float3(_1724.x ? _1621.x : _1623.x, _1724.y ? _1621.y : _1623.y, _1724.z ? _1621.z : _1623.z);
                                        _1735 = _1719;
                                        _1736 = _1720;
                                        _1737 = _1721;
                                        _1738 = _1722;
                                        _1739 = _1723;
                                      }
                                      _1747 = _1734;
                                      _1748 = _1735;
                                      _1749 = _1736;
                                      _1750 = _1737;
                                      _1751 = _1738;
                                      _1752 = _1739;
                                    }
                                    _1753 = _1747;
                                    _1754 = _1748;
                                    _1755 = _1749;
                                    _1756 = _1750;
                                    _1757 = _1751;
                                    _1758 = _1752;
                                  }
                                  _1767 = _1753;
                                  _1768 = _1754;
                                  _1769 = _1755;
                                  _1770 = _1756;
                                  _1771 = _1757;
                                  _1772 = _1758;
                                }
                                _1781 = _1767;
                                _1782 = _1768;
                                _1783 = _1769;
                                _1784 = _1770;
                                _1785 = _1771;
                                _1786 = _1772;
                              }
                              _1794 = _1781;
                              _1795 = _1782;
                              _1796 = _1783;
                              _1797 = _1784;
                              _1798 = _1785;
                              _1799 = _1786;
                            }
                            _1808 = _1794;
                            _1809 = _1795;
                            _1810 = _1796;
                            _1811 = _1797;
                            _1812 = _1798;
                            _1813 = _1799;
                          }
                          _1814 = _1808;
                          _1815 = _1809;
                          _1816 = _1810;
                          _1817 = _1811;
                          _1818 = _1812;
                          _1819 = _1813;
                        }
                        _1828 = _1814;
                        _1829 = _1815;
                        _1830 = _1816;
                        _1831 = _1817;
                        _1832 = _1818;
                        _1833 = _1819;
                      }
                      _1842 = _1828;
                      _1843 = _1829;
                      _1844 = _1830;
                      _1845 = _1831;
                      _1846 = _1832;
                      _1847 = _1833;
                    }
                    _1856 = _1842;
                    _1857 = _1843;
                    _1858 = _1844;
                    _1859 = _1845;
                    _1860 = _1846;
                    _1861 = _1847;
                  }
                  _1870 = _1856;
                  _1871 = _1857;
                  _1872 = _1858;
                  _1873 = _1859;
                  _1874 = _1860;
                  _1875 = _1861;
                }
                _1876 = _1870;
                _1877 = _1871;
                _1878 = _1872;
                _1879 = _1873;
                _1880 = _1874;
                _1881 = _1875;
              }
              bool3 _1883 = (_1881 == 3).xxx;
              bool3 _1886 = (_1881 == 4).xxx;
              if (_1881 == 0) {
                _1970 = 0.0f;
                break;
              }
              float3 _1891 = normalize(_1879);
              float3 _1892 = normalize(_1878);
              float3 _1893 = normalize(_1877);
              float3 _1894 = normalize(float3(_1883.x ? _1879.x : _1876.x, _1883.y ? _1879.y : _1876.y, _1883.z ? _1879.z : _1876.z));
              float3 _1895 = normalize(float3(_1886.x ? _1879.x : _1880.x, _1886.y ? _1879.y : _1880.y, _1886.z ? _1879.z : _1880.z));
              float _1897 = clamp(dot(_1891, _1892), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1901 = sqrt(1.0f - (_1897 * _1897));
              float _1909 = clamp(dot(_1892, _1893), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1913 = sqrt(1.0f - (_1909 * _1909));
              float _1922 = clamp(dot(_1893, _1894), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1926 = sqrt(1.0f - (_1922 * _1922));
              float _1933 = ((cross(_1891, _1892).z * ((_1901 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1897) / _1901))) + (cross(_1892, _1893).z * ((_1913 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1909) / _1913)))) + (cross(_1893, _1894).z * ((_1926 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1922) / _1926)));
              float _1950;
              if (_1881 >= 4) {
                float _1938 = clamp(dot(_1894, _1895), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1942 = sqrt(1.0f - (_1938 * _1938));
                _1950 = _1933 + (cross(_1894, _1895).z * ((_1942 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1938) / _1942)));
              } else {
                _1950 = _1933;
              }
              float _1967;
              if (_1881 == 5) {
                float _1955 = clamp(dot(_1895, _1891), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1959 = sqrt(1.0f - (_1955 * _1955));
                _1967 = _1950 + (cross(_1895, _1891).z * ((_1959 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1955) / _1959)));
              } else {
                _1967 = _1950;
              }
              _1970 = max(_1967, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _2357;
            do {
              float3 _2003;
              if (_1589) {
                _2003 = _1587 * rsqrt(_1588);
              } else {
                float _1985 = _492.z;
                float _1987 = (_1985 >= 0.0f) ? 1.0f : (-1.0f);
                float _1989 = (-1.0f) / (_1987 + _1985);
                float _1991 = _492.x;
                _2003 = float3(1.0f + (((_1987 * _1989) * _1991) * _1991), ((_1987 * _1991) * _663) * _1989, (-_1987) * _1991);
              }
              float3x3 _2006 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2003, cross(_492, _2003), _492));
              float3 _2007 = mul(_2006, _1616);
              float3 _2008 = mul(_2006, _1618);
              float3 _2009 = mul(_2006, _1620);
              float3 _2010 = mul(_2006, _1622);
              float _2011 = _2007.z;
              float _2014 = _2008.z;
              float _2018 = _2009.z;
              float _2022 = _2010.z;
              int _2026 = (((int(_2011 > 0.0f) | ((_2014 > 0.0f) ? 2 : 0)) | ((_2018 > 0.0f) ? 4 : 0)) | ((_2022 > 0.0f) ? 8 : 0));
              float3 _2263;
              float3 _2264;
              float3 _2265;
              float3 _2266;
              float3 _2267;
              int _2268;
              if (_2026 == 0) {
                _2263 = _2010;
                _2264 = _2009;
                _2265 = _2008;
                _2266 = _2007;
                _2267 = 0.0f.xxx;
                _2268 = 0;
              } else {
                float3 _2257;
                float3 _2258;
                float3 _2259;
                float3 _2260;
                float3 _2261;
                int _2262;
                if (_2026 == 1) {
                  _2257 = _2010;
                  _2258 = (_2007 * (-_2022)) + (_2010 * _2011);
                  _2259 = (_2007 * (-_2014)) + (_2008 * _2011);
                  _2260 = _2007;
                  _2261 = 0.0f.xxx;
                  _2262 = 3;
                } else {
                  float3 _2243;
                  float3 _2244;
                  float3 _2245;
                  float3 _2246;
                  float3 _2247;
                  int _2248;
                  if (_2026 == 2) {
                    _2243 = _2010;
                    _2244 = (_2008 * (-_2018)) + (_2009 * _2014);
                    _2245 = _2008;
                    _2246 = (_2008 * (-_2011)) + (_2007 * _2014);
                    _2247 = 0.0f.xxx;
                    _2248 = 3;
                  } else {
                    float3 _2229;
                    float3 _2230;
                    float3 _2231;
                    float3 _2232;
                    float3 _2233;
                    int _2234;
                    if (_2026 == 3) {
                      _2229 = (_2007 * (-_2022)) + (_2010 * _2011);
                      _2230 = (_2008 * (-_2018)) + (_2009 * _2014);
                      _2231 = _2008;
                      _2232 = _2007;
                      _2233 = 0.0f.xxx;
                      _2234 = 4;
                    } else {
                      float3 _2215;
                      float3 _2216;
                      float3 _2217;
                      float3 _2218;
                      float3 _2219;
                      int _2220;
                      if (_2026 == 4) {
                        _2215 = _2010;
                        _2216 = _2009;
                        _2217 = (_2009 * (-_2014)) + (_2008 * _2018);
                        _2218 = (_2009 * (-_2022)) + (_2010 * _2018);
                        _2219 = 0.0f.xxx;
                        _2220 = 3;
                      } else {
                        float3 _2201;
                        float3 _2202;
                        float3 _2203;
                        float3 _2204;
                        float3 _2205;
                        int _2206;
                        if (_2026 == 5) {
                          _2201 = _2010;
                          _2202 = _2009;
                          _2203 = _2008;
                          _2204 = _2007;
                          _2205 = 0.0f.xxx;
                          _2206 = 0;
                        } else {
                          float3 _2195;
                          float3 _2196;
                          float3 _2197;
                          float3 _2198;
                          float3 _2199;
                          int _2200;
                          if (_2026 == 6) {
                            _2195 = (_2009 * (-_2022)) + (_2010 * _2018);
                            _2196 = _2009;
                            _2197 = _2008;
                            _2198 = (_2008 * (-_2011)) + (_2007 * _2014);
                            _2199 = 0.0f.xxx;
                            _2200 = 4;
                          } else {
                            float3 _2181;
                            float3 _2182;
                            float3 _2183;
                            float3 _2184;
                            float3 _2185;
                            int _2186;
                            if (_2026 == 7) {
                              float _2174 = -_2022;
                              _2181 = (_2009 * _2174) + (_2010 * _2018);
                              _2182 = _2009;
                              _2183 = _2008;
                              _2184 = _2007;
                              _2185 = (_2007 * _2174) + (_2010 * _2011);
                              _2186 = 5;
                            } else {
                              float3 _2168;
                              float3 _2169;
                              float3 _2170;
                              float3 _2171;
                              float3 _2172;
                              int _2173;
                              if (_2026 == 8) {
                                _2168 = _2010;
                                _2169 = _2010;
                                _2170 = (_2010 * (-_2018)) + (_2009 * _2022);
                                _2171 = (_2010 * (-_2011)) + (_2007 * _2022);
                                _2172 = 0.0f.xxx;
                                _2173 = 3;
                              } else {
                                float3 _2154;
                                float3 _2155;
                                float3 _2156;
                                float3 _2157;
                                float3 _2158;
                                int _2159;
                                if (_2026 == 9) {
                                  _2154 = _2010;
                                  _2155 = (_2010 * (-_2018)) + (_2009 * _2022);
                                  _2156 = (_2007 * (-_2014)) + (_2008 * _2011);
                                  _2157 = _2007;
                                  _2158 = 0.0f.xxx;
                                  _2159 = 4;
                                } else {
                                  float3 _2140;
                                  float3 _2141;
                                  float3 _2142;
                                  float3 _2143;
                                  float3 _2144;
                                  int _2145;
                                  if (_2026 == 10) {
                                    _2140 = _2010;
                                    _2141 = _2009;
                                    _2142 = _2008;
                                    _2143 = _2007;
                                    _2144 = 0.0f.xxx;
                                    _2145 = 0;
                                  } else {
                                    float3 _2134;
                                    float3 _2135;
                                    float3 _2136;
                                    float3 _2137;
                                    float3 _2138;
                                    int _2139;
                                    if (_2026 == 11) {
                                      float _2127 = -_2018;
                                      _2134 = (_2010 * _2127) + (_2009 * _2022);
                                      _2135 = (_2008 * _2127) + (_2009 * _2014);
                                      _2136 = _2008;
                                      _2137 = _2007;
                                      _2138 = _2010;
                                      _2139 = 5;
                                    } else {
                                      float3 _2121;
                                      float3 _2122;
                                      float3 _2123;
                                      float3 _2124;
                                      float3 _2125;
                                      int _2126;
                                      if (_2026 == 12) {
                                        _2121 = _2010;
                                        _2122 = _2009;
                                        _2123 = (_2009 * (-_2014)) + (_2008 * _2018);
                                        _2124 = (_2010 * (-_2011)) + (_2007 * _2022);
                                        _2125 = 0.0f.xxx;
                                        _2126 = 4;
                                      } else {
                                        bool _2079 = _2026 == 13;
                                        float3 _2106;
                                        float3 _2107;
                                        float3 _2108;
                                        float3 _2109;
                                        int _2110;
                                        if (_2079) {
                                          float _2099 = -_2014;
                                          _2106 = (_2009 * _2099) + (_2008 * _2018);
                                          _2107 = (_2007 * _2099) + (_2008 * _2011);
                                          _2108 = _2007;
                                          _2109 = _2010;
                                          _2110 = 5;
                                        } else {
                                          float3 _2096;
                                          float3 _2097;
                                          int _2098;
                                          if (_2026 == 14) {
                                            float _2089 = -_2011;
                                            _2096 = (_2008 * _2089) + (_2007 * _2014);
                                            _2097 = (_2010 * _2089) + (_2007 * _2022);
                                            _2098 = 5;
                                          } else {
                                            _2096 = _2007;
                                            _2097 = 0.0f.xxx;
                                            _2098 = (_2026 == 15) ? 4 : 0;
                                          }
                                          _2106 = _2009;
                                          _2107 = _2008;
                                          _2108 = _2096;
                                          _2109 = _2097;
                                          _2110 = _2098;
                                        }
                                        bool3 _2111 = _2079.xxx;
                                        _2121 = float3(_2111.x ? _2009.x : _2010.x, _2111.y ? _2009.y : _2010.y, _2111.z ? _2009.z : _2010.z);
                                        _2122 = _2106;
                                        _2123 = _2107;
                                        _2124 = _2108;
                                        _2125 = _2109;
                                        _2126 = _2110;
                                      }
                                      _2134 = _2121;
                                      _2135 = _2122;
                                      _2136 = _2123;
                                      _2137 = _2124;
                                      _2138 = _2125;
                                      _2139 = _2126;
                                    }
                                    _2140 = _2134;
                                    _2141 = _2135;
                                    _2142 = _2136;
                                    _2143 = _2137;
                                    _2144 = _2138;
                                    _2145 = _2139;
                                  }
                                  _2154 = _2140;
                                  _2155 = _2141;
                                  _2156 = _2142;
                                  _2157 = _2143;
                                  _2158 = _2144;
                                  _2159 = _2145;
                                }
                                _2168 = _2154;
                                _2169 = _2155;
                                _2170 = _2156;
                                _2171 = _2157;
                                _2172 = _2158;
                                _2173 = _2159;
                              }
                              _2181 = _2168;
                              _2182 = _2169;
                              _2183 = _2170;
                              _2184 = _2171;
                              _2185 = _2172;
                              _2186 = _2173;
                            }
                            _2195 = _2181;
                            _2196 = _2182;
                            _2197 = _2183;
                            _2198 = _2184;
                            _2199 = _2185;
                            _2200 = _2186;
                          }
                          _2201 = _2195;
                          _2202 = _2196;
                          _2203 = _2197;
                          _2204 = _2198;
                          _2205 = _2199;
                          _2206 = _2200;
                        }
                        _2215 = _2201;
                        _2216 = _2202;
                        _2217 = _2203;
                        _2218 = _2204;
                        _2219 = _2205;
                        _2220 = _2206;
                      }
                      _2229 = _2215;
                      _2230 = _2216;
                      _2231 = _2217;
                      _2232 = _2218;
                      _2233 = _2219;
                      _2234 = _2220;
                    }
                    _2243 = _2229;
                    _2244 = _2230;
                    _2245 = _2231;
                    _2246 = _2232;
                    _2247 = _2233;
                    _2248 = _2234;
                  }
                  _2257 = _2243;
                  _2258 = _2244;
                  _2259 = _2245;
                  _2260 = _2246;
                  _2261 = _2247;
                  _2262 = _2248;
                }
                _2263 = _2257;
                _2264 = _2258;
                _2265 = _2259;
                _2266 = _2260;
                _2267 = _2261;
                _2268 = _2262;
              }
              bool3 _2270 = (_2268 == 3).xxx;
              bool3 _2273 = (_2268 == 4).xxx;
              if (_2268 == 0) {
                _2357 = 0.0f;
                break;
              }
              float3 _2278 = normalize(_2266);
              float3 _2279 = normalize(_2265);
              float3 _2280 = normalize(_2264);
              float3 _2281 = normalize(float3(_2270.x ? _2266.x : _2263.x, _2270.y ? _2266.y : _2263.y, _2270.z ? _2266.z : _2263.z));
              float3 _2282 = normalize(float3(_2273.x ? _2266.x : _2267.x, _2273.y ? _2266.y : _2267.y, _2273.z ? _2266.z : _2267.z));
              float _2284 = clamp(dot(_2278, _2279), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2288 = sqrt(1.0f - (_2284 * _2284));
              float _2296 = clamp(dot(_2279, _2280), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2300 = sqrt(1.0f - (_2296 * _2296));
              float _2309 = clamp(dot(_2280, _2281), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2313 = sqrt(1.0f - (_2309 * _2309));
              float _2320 = ((cross(_2278, _2279).z * ((_2288 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2284) / _2288))) + (cross(_2279, _2280).z * ((_2300 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2296) / _2300)))) + (cross(_2280, _2281).z * ((_2313 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2309) / _2313)));
              float _2337;
              if (_2268 >= 4) {
                float _2325 = clamp(dot(_2281, _2282), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2329 = sqrt(1.0f - (_2325 * _2325));
                _2337 = _2320 + (cross(_2281, _2282).z * ((_2329 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2325) / _2329)));
              } else {
                _2337 = _2320;
              }
              float _2354;
              if (_2268 == 5) {
                float _2342 = clamp(dot(_2282, _2278), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2346 = sqrt(1.0f - (_2342 * _2342));
                _2354 = _2337 + (cross(_2282, _2278).z * ((_2346 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2342) / _2346)));
              } else {
                _2354 = _2337;
              }
              _2357 = max(_2354, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _2360 = (_1436 & 2u) != 0u;
            uint _2364 = asuint(_30_m6[_1423].w);
            uint _2365 = asuint(_30_m6[_1429].w);
            float3 _2366 = _522 - _30_m6[_1414].xyz;
            float3 _2367 = abs(_2366);
            float _2368 = _2367.x;
            float _2369 = _2367.y;
            float _2371 = _2367.z;
            int _2404;
            if ((_2368 > _2369) && (_2368 > _2371)) {
              _2404 = int((_2366.x > 0.0f) ? (_2364 & 1023u) : ((_2364 >> 10u) & 1023u));
            } else {
              int _2396;
              if (_2369 > _2371) {
                _2396 = int((_2366.y > 0.0f) ? ((_2364 >> 20u) & 1023u) : (_2365 & 1023u));
              } else {
                _2396 = int((_2366.z > 0.0f) ? ((_2365 >> 10u) & 1023u) : ((_2365 >> 20u) & 1023u));
              }
              _2404 = _2396;
            }
            int _2407 = _2360 ? int(_30_m6[_1423].w) : ((_2404 == 1023) ? (-1) : _2404);
            uint _2416 = uint(_2407);
            uint _2418 = asuint(_34_m11.x) + (_2416 * 96u);
            uint _2420 = (_2418 + 64u) >> 2u;
            uint _2423 = _2420 + 1u;
            uint _2426 = _2420 + 2u;
            uint _2429 = _2420 + 3u;
            float4 _2433 = asfloat(uint4(_37.Load(_2420 * 4 + 0), _37.Load(_2423 * 4 + 0), _37.Load(_2426 * 4 + 0), _37.Load(_2429 * 4 + 0)));
            float _2765;
            do {
              uint _2449 = ((asuint(_34_m11.y) + (_2416 * 16u)) >> 2u) + 1u;
              if (_37.Load(_2449 * 4 + 0) > 0u) {
                float4 _451 = _1365;
                float _2464;
                do {
                  if (_37.Load(_2449 * 4 + 0) == 0u) {
                    _2464 = 1.0f;
                    break;
                  }
                  _2464 = _451[_37.Load(_2449 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2765 = _2464;
                break;
              }
              uint _2465 = _2418 >> 2u;
              uint _2480 = (_2418 + 16u) >> 2u;
              uint _2495 = (_2418 + 32u) >> 2u;
              uint _2510 = (_2418 + 48u) >> 2u;
              float4 _2530 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2465 * 4 + 0), _37.Load((_2465 + 1u) * 4 + 0), _37.Load((_2465 + 2u) * 4 + 0), _37.Load((_2465 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2480 * 4 + 0), _37.Load((_2480 + 1u) * 4 + 0), _37.Load((_2480 + 2u) * 4 + 0), _37.Load((_2480 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2495 * 4 + 0), _37.Load((_2495 + 1u) * 4 + 0), _37.Load((_2495 + 2u) * 4 + 0), _37.Load((_2495 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2510 * 4 + 0), _37.Load((_2510 + 1u) * 4 + 0), _37.Load((_2510 + 2u) * 4 + 0), _37.Load((_2510 + 3u) * 4 + 0))))), float4((_522 - ((_2366 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2366, _2366)))) * _2433.x)) + (_492 * (_2433.y * 5.0f)), 1.0f));
              float3 _2534 = _2530.xyz / _2530.w.xxx;
              uint _2536 = (_2418 + 80u) >> 2u;
              float4 _2549 = asfloat(uint4(_37.Load(_2536 * 4 + 0), _37.Load((_2536 + 1u) * 4 + 0), _37.Load((_2536 + 2u) * 4 + 0), _37.Load((_2536 + 3u) * 4 + 0)));
              float2 _2550 = _2534.xy;
              float2 _2552 = _2549.xy;
              float3 _2556 = _2534.xyz;
              bool3 _2557 = bool3(_2556.x <= 0.0f.xxx.x, _2556.y <= 0.0f.xxx.y, _2556.z <= 0.0f.xxx.z);
              bool3 _2558 = bool3(_2556.x >= 1.0f.xxx.x, _2556.y >= 1.0f.xxx.y, _2556.z >= 1.0f.xxx.z);
              float _2561 = _2534.z;
              float2 _2572 = ((_2550 * (_2549.zw - _2552)) + _2552).xy * _34_m10.zw;
              float2 _2574 = floor(_2572 + 0.5f.xx);
              float2 _2575 = _2572 - _2574;
              float _2576 = _2575.x;
              float _2577 = _2576 + 0.5f;
              float _2578 = _2577 * _2577;
              float _2581 = 1.0f - _2576;
              float _2582 = min(_2576, 0.0f);
              float _2585 = _2576 + 1.0f;
              float _2586 = max(_2576, 0.0f);
              float _2597 = _2575.y;
              float _2598 = _2597 + 0.5f;
              float _2599 = _2598 * _2598;
              float _2602 = 1.0f - _2597;
              float _2603 = min(_2597, 0.0f);
              float _2606 = _2597 + 1.0f;
              float _2607 = max(_2597, 0.0f);
              float3 _2619 = float3(0.1599999964237213134765625f * _2581, 0.1599999964237213134765625f * ((_2585 - (_2586 * _2586)) + 1.0f), _2578 * 0.07999999821186065673828125f);
              float3 _2620 = float3(0.1599999964237213134765625f * ((_2578 * 0.5f) - _2576), 0.1599999964237213134765625f * ((_2581 - (_2582 * _2582)) + 1.0f), 0.1599999964237213134765625f * _2585) + _2619;
              float3 _2622 = float3(0.1599999964237213134765625f * _2602, 0.1599999964237213134765625f * ((_2606 - (_2607 * _2607)) + 1.0f), _2599 * 0.07999999821186065673828125f);
              float3 _2623 = float3(0.1599999964237213134765625f * ((_2599 * 0.5f) - _2597), 0.1599999964237213134765625f * ((_2602 - (_2603 * _2603)) + 1.0f), 0.1599999964237213134765625f * _2606) + _2622;
              float3 _2629 = ((_2619 / _2620) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _2631 = ((_2622 / _2623) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _2633 = _2574 * _34_m10.xy;
              float _2634 = _2629.x;
              float _2635 = _2631.x;
              float _2638 = _2629.y;
              float _2641 = _2629.z;
              float _2644 = _2631.y;
              float _2651 = _2631.z;
              float _2658 = _2620.x;
              float _2659 = _2623.x;
              float _2661 = _2620.y;
              float _2663 = _2620.z;
              float _2665 = _2623.y;
              float _2669 = _2623.z;
              float _2727 = (((((((_2658 * _2659) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2634, _2635), _437).xy, _2561)) + ((_2661 * _2659) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2638, _2635), _437).xy, _2561))) + ((_2663 * _2659) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2641, _2635), _437).xy, _2561))) + ((_2658 * _2665) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2634, _2644), _437).xy, _2561))) + ((_2661 * _2665) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2638, _2644), _437).xy, _2561))) + ((_2663 * _2665) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2641, _2644), _437).xy, _2561))) + ((_2658 * _2669) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2634, _2651), _437).xy, _2561));
              float4 _2750 = asfloat(uint4(_37.Load(_2420 * 4 + 0), _37.Load(_2423 * 4 + 0), _37.Load(_2426 * 4 + 0), _37.Load(_2429 * 4 + 0)));
              float _2751 = _2750.w;
              float2 _2753 = min(_2550, 1.0f.xx - _2550);
              _2765 = lerp(1.0f, (any(bool3(_2557.x || _2558.x, _2557.y || _2558.y, _2557.z || _2558.z)) || ((asuint(_2561) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2727 + ((_2661 * _2669) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2638, _2651), _437).xy, _2561))) + ((_2663 * _2669) * _35.SampleCmpLevelZero(_16, float3(_2633 + float2(_2641, _2651), _437).xy, _2561))), _2360 ? min(_2751, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2750.z - _2530.w) * 0.25f, min(_2753.x, _2753.y)))) : _2751);
              break;
            } while (false);
            _2771 = ((_30_m6[_1411].xyz * (((((_1150 * _1576.x) + ((1.0f.xxx - _1150) * _1576.y)) * _1970) * _30_m6[_1432].z) + (_1146 * _2357))) * _1548) * ((_2407 >= 0) ? _2765 : 1.0f);
            break;
          } while (false);
          _4143 = _1371;
          _4144 = _2771 * _1511;
          break;
        }
        float _4141;
        float3 _4142;
        if (_30_m6[_1411].w < 1.5f) {
          float3 _3376 = float3(0.100000001490116119384765625f, _1142, 1.0f);
          float _3385 = (0.5f + (0.5f * _30_m6[_1417].y)) - abs(_30_m6[_1417].x);
          float _3386 = _30_m6[_1417].y - _3385;
          float _3390 = (1.0f - abs(_3385)) - abs(_3386);
          bool _3392 = _30_m6[_1417].x >= 0.0f;
          float _3393 = abs(max(_3390, 0.00048828125f));
          float3 _3397 = normalize(float3(_3385, _3386, _3392 ? _3393 : (-_3393)));
          float3 _3398 = _30_m6[_1414].xyz - _522;
          float _3399 = dot(_3398, _3398);
          float _3400 = rsqrt(_3399);
          float3 _3401 = _3398 * _3400;
          float _3405 = clamp(_30_m6[_1432].y * _3400, 0.0f, 1.0f);
          float _3408 = clamp(dot(_1077, _3401), 0.0f, 1.0f);
          int _3410 = int(_30_m6[_1432].w);
          float3 _3411 = _3397 * _30_m6[_1417].z;
          float3 _3412 = _3411 * 0.5f;
          float3 _3413 = _3398 - _3412;
          float3 _3414 = _3398 + _3412;
          bool _3416 = (_1515 & 1u) == 0u;
          bool _3419 = _3416 || ((_1436 & 2u) != 0u);
          bool _3422 = (!_3416) && (_30_m6[_1417].z > 0.0f);
          float _3441;
          float _3442;
          if (_3422) {
            float _3426 = length(_3413);
            float _3427 = length(_3414);
            _3441 = clamp(0.5f * ((dot(_1077, _3413) / _3426) + (dot(_1077, _3414) / _3427)), 0.0f, 1.0f);
            _3442 = 1.0f / ((((_3426 * _3427) + dot(_3413, _3414)) * 0.5f) + 1.0f);
          } else {
            _3441 = _3408;
            _3442 = 1.0f;
          }
          float _3464;
          if (_30_m6[_1429].w < 0.0f) {
            float _3458 = _3399 * (_30_m6[_1414].w * _30_m6[_1414].w);
            float _3461 = clamp(1.0f - (_3458 * _3458), 0.0f, 1.0f);
            _3464 = lerp(1.0f / (_3399 + 1.0f), _3442, float(_3422)) * (_3461 * _3461);
          } else {
            float3 _3447 = _3398 * _30_m6[_1414].w;
            _3464 = _3442 * pow(1.0f - clamp(dot(_3447, _3447), 0.0f, 1.0f), _30_m6[_1429].w);
          }
          float _3470 = clamp((dot(_3401, -_3397) - _30_m6[_1417].z) * _30_m6[_1417].w, 0.0f, 1.0f);
          float _3474 = _3464 * lerp(1.0f, _3470 * _3470, float(_3416));
          float _3574;
          if ((!_3422) && (_3410 >= 0)) {
            uint _3480 = uint(_3410);
            float2 _3567;
            [branch] if (_3416) {
              float4 _3557 = mul(_52_m1[_3480], _526);
              _3567 = _52_m0[_3480].xy + (clamp(_3557.xy / _3557.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_3480].zw);
            }
            else {
              float3 _3494 = mul(float4(-_3398, 0.0f), _52_m1[_3480]).xyz;
              float3 _446 = _3494;
              float3 _445 = _3494;
              float3 _444 = abs(_3494);
              uint _3503 = uint(int(_444.y > _444.x));
              uint _3509 = (_444.z > _444[_3503]) ? 2u : _3503;
              uint _3515 = (_3509 * 2u) + uint(_445[_3509] < 0.0f);
              float _3519 = abs(_446[_3515 / 2u]);
              float _3539 = 0.5f - (0.000244140625f / _52_m0[_3480].w);
              _3567 = _52_m0[_3480].xy + (clamp(float2((float(_3515) + ((((_446[uint(_391[_3515].x)] * _392[_3515].x) / _3519) * _3539) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_446[uint(_391[_3515].y)] * _392[_3515].y) / _3519) * _3539)), 0.0f.xx, 1.0f.xx) * _52_m0[_3480].zw);
            }
            _3574 = _3474 * _50.SampleLevel(_13, _3567, 0.0f).x;
          } else {
            _3574 = _3474;
          }
          bool _3575 = _3574 > 0.0f;
          float _3984;
          if (_3575) {
            int _3628;
            if (_3419) {
              _3628 = int(_30_m6[_1420].x);
            } else {
              uint _3583 = asuint(_30_m6[_1417].w);
              uint _3584 = asuint(_30_m6[_1420].x);
              float3 _3585 = _522 - _30_m6[_1414].xyz;
              float3 _3586 = abs(_3585);
              float _3587 = _3586.x;
              float _3588 = _3586.y;
              float _3590 = _3586.z;
              int _3623;
              if ((_3587 > _3588) && (_3587 > _3590)) {
                _3623 = int((_3585.x > 0.0f) ? (_3583 & 1023u) : ((_3583 >> 10u) & 1023u));
              } else {
                int _3615;
                if (_3588 > _3590) {
                  _3615 = int((_3585.y > 0.0f) ? ((_3583 >> 20u) & 1023u) : (_3584 & 1023u));
                } else {
                  _3615 = int((_3585.z > 0.0f) ? ((_3584 >> 10u) & 1023u) : ((_3584 >> 20u) & 1023u));
                }
                _3623 = _3615;
              }
              _3628 = (_3623 == 1023) ? (-1) : _3623;
            }
            uint _3633 = uint(_3628);
            uint _3635 = asuint(_34_m11.x) + (_3633 * 96u);
            uint _3637 = (_3635 + 64u) >> 2u;
            uint _3640 = _3637 + 1u;
            uint _3643 = _3637 + 2u;
            uint _3646 = _3637 + 3u;
            float4 _3650 = asfloat(uint4(_37.Load(_3637 * 4 + 0), _37.Load(_3640 * 4 + 0), _37.Load(_3643 * 4 + 0), _37.Load(_3646 * 4 + 0)));
            float _3982;
            do {
              uint _3666 = ((asuint(_34_m11.y) + (_3633 * 16u)) >> 2u) + 1u;
              if (_37.Load(_3666 * 4 + 0) > 0u) {
                float4 _443 = _1365;
                float _3681;
                do {
                  if (_37.Load(_3666 * 4 + 0) == 0u) {
                    _3681 = 1.0f;
                    break;
                  }
                  _3681 = _443[_37.Load(_3666 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3982 = _3681;
                break;
              }
              uint _3682 = _3635 >> 2u;
              uint _3697 = (_3635 + 16u) >> 2u;
              uint _3712 = (_3635 + 32u) >> 2u;
              uint _3727 = (_3635 + 48u) >> 2u;
              float4 _3747 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3682 * 4 + 0), _37.Load((_3682 + 1u) * 4 + 0), _37.Load((_3682 + 2u) * 4 + 0), _37.Load((_3682 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3697 * 4 + 0), _37.Load((_3697 + 1u) * 4 + 0), _37.Load((_3697 + 2u) * 4 + 0), _37.Load((_3697 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3712 * 4 + 0), _37.Load((_3712 + 1u) * 4 + 0), _37.Load((_3712 + 2u) * 4 + 0), _37.Load((_3712 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3727 * 4 + 0), _37.Load((_3727 + 1u) * 4 + 0), _37.Load((_3727 + 2u) * 4 + 0), _37.Load((_3727 + 3u) * 4 + 0))))), float4((_522 - ((-_3401) * _3650.x)) + (_1077 * (_3650.y * 5.0f)), 1.0f));
              float3 _3751 = _3747.xyz / _3747.w.xxx;
              uint _3753 = (_3635 + 80u) >> 2u;
              float4 _3766 = asfloat(uint4(_37.Load(_3753 * 4 + 0), _37.Load((_3753 + 1u) * 4 + 0), _37.Load((_3753 + 2u) * 4 + 0), _37.Load((_3753 + 3u) * 4 + 0)));
              float2 _3767 = _3751.xy;
              float2 _3769 = _3766.xy;
              float3 _3773 = _3751.xyz;
              bool3 _3774 = bool3(_3773.x <= 0.0f.xxx.x, _3773.y <= 0.0f.xxx.y, _3773.z <= 0.0f.xxx.z);
              bool3 _3775 = bool3(_3773.x >= 1.0f.xxx.x, _3773.y >= 1.0f.xxx.y, _3773.z >= 1.0f.xxx.z);
              float _3778 = _3751.z;
              float2 _3789 = ((_3767 * (_3766.zw - _3769)) + _3769).xy * _34_m10.zw;
              float2 _3791 = floor(_3789 + 0.5f.xx);
              float2 _3792 = _3789 - _3791;
              float _3793 = _3792.x;
              float _3794 = _3793 + 0.5f;
              float _3795 = _3794 * _3794;
              float _3798 = 1.0f - _3793;
              float _3799 = min(_3793, 0.0f);
              float _3802 = _3793 + 1.0f;
              float _3803 = max(_3793, 0.0f);
              float _3814 = _3792.y;
              float _3815 = _3814 + 0.5f;
              float _3816 = _3815 * _3815;
              float _3819 = 1.0f - _3814;
              float _3820 = min(_3814, 0.0f);
              float _3823 = _3814 + 1.0f;
              float _3824 = max(_3814, 0.0f);
              float3 _3836 = float3(0.1599999964237213134765625f * _3798, 0.1599999964237213134765625f * ((_3802 - (_3803 * _3803)) + 1.0f), _3795 * 0.07999999821186065673828125f);
              float3 _3837 = float3(0.1599999964237213134765625f * ((_3795 * 0.5f) - _3793), 0.1599999964237213134765625f * ((_3798 - (_3799 * _3799)) + 1.0f), 0.1599999964237213134765625f * _3802) + _3836;
              float3 _3839 = float3(0.1599999964237213134765625f * _3819, 0.1599999964237213134765625f * ((_3823 - (_3824 * _3824)) + 1.0f), _3816 * 0.07999999821186065673828125f);
              float3 _3840 = float3(0.1599999964237213134765625f * ((_3816 * 0.5f) - _3814), 0.1599999964237213134765625f * ((_3819 - (_3820 * _3820)) + 1.0f), 0.1599999964237213134765625f * _3823) + _3839;
              float3 _3846 = ((_3836 / _3837) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _3848 = ((_3839 / _3840) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _3850 = _3791 * _34_m10.xy;
              float _3851 = _3846.x;
              float _3852 = _3848.x;
              float _3855 = _3846.y;
              float _3858 = _3846.z;
              float _3861 = _3848.y;
              float _3868 = _3848.z;
              float _3875 = _3837.x;
              float _3876 = _3840.x;
              float _3878 = _3837.y;
              float _3880 = _3837.z;
              float _3882 = _3840.y;
              float _3886 = _3840.z;
              float _3944 = (((((((_3875 * _3876) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3851, _3852), _437).xy, _3778)) + ((_3878 * _3876) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3855, _3852), _437).xy, _3778))) + ((_3880 * _3876) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3858, _3852), _437).xy, _3778))) + ((_3875 * _3882) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3851, _3861), _437).xy, _3778))) + ((_3878 * _3882) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3855, _3861), _437).xy, _3778))) + ((_3880 * _3882) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3858, _3861), _437).xy, _3778))) + ((_3875 * _3886) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3851, _3868), _437).xy, _3778));
              float4 _3967 = asfloat(uint4(_37.Load(_3637 * 4 + 0), _37.Load(_3640 * 4 + 0), _37.Load(_3643 * 4 + 0), _37.Load(_3646 * 4 + 0)));
              float _3968 = _3967.w;
              float2 _3970 = min(_3767, 1.0f.xx - _3767);
              _3982 = lerp(1.0f, (any(bool3(_3774.x || _3775.x, _3774.y || _3775.y, _3774.z || _3775.z)) || ((asuint(_3778) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3944 + ((_3878 * _3886) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3855, _3868), _437).xy, _3778))) + ((_3880 * _3886) * _35.SampleCmpLevelZero(_16, float3(_3850 + float2(_3858, _3868), _437).xy, _3778))), _3419 ? min(_3968, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3967.z - _3747.w) * 0.25f, min(_3970.x, _3970.y)))) : _3968);
              break;
            } while (false);
            _3984 = (_3628 >= 0) ? _3982 : 1.0f;
          } else {
            _3984 = 1.0f;
          }
          float3 _4008;
          float3 _4009;
          if (_3422) {
            float3 _3987 = _3376 * _3376;
            float3 _3988 = reflect(_550, _1077);
            float _3997 = dot(_3988, _3411);
            _4008 = _3987 / clamp(_3987 + (0.5f * clamp(_30_m6[_1417].z * _3400, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4009 = normalize(_3413 + (_3411 * clamp(dot(_3413, (_3988 * _3997) - _3411) / ((_30_m6[_1417].z * _30_m6[_1417].z) - (_3997 * _3997)), 0.0f, 1.0f)));
          } else {
            _4008 = 1.0f.xxx;
            _4009 = _3401;
          }
          float3 _4010 = _4009 + _548;
          float3 _4014 = _4010 * rsqrt(max(6.103515625e-05f, dot(_4010, _4010)));
          float _4016 = abs(max(_3390, 5.9604644775390625e-08f));
          float3 _4022 = (normalize(float3(_3385, _3386, _3392 ? _4016 : (-_4016))) * _30_m6[_1417].z) * 0.5f;
          float3 _4023 = _3398 - _4022;
          float3 _4024 = _3398 + _4022;
          float _4036;
          if (_3422) {
            _4036 = clamp(0.5f * ((dot(_1077, _4023) / length(_4023)) + (dot(_1077, _4024) / length(_4024))), 0.0f, 1.0f);
          } else {
            _4036 = _3408;
          }
          float3 _4140;
          if (_3575) {
            float _4039 = clamp(_3441, 0.0f, 1.0f);
            float _4041 = clamp(dot(_1077, _4014), 0.0f, 1.0f);
            float _4043 = clamp(dot(_548, _4014), 0.0f, 1.0f);
            float _4044 = clamp(_1151, 0.0f, 1.0f);
            float _4054;
            if (_3405 > 0.0f) {
              _4054 = clamp(_1153 + ((_3405 * _3405) / ((_4043 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4054 = _1153;
            }
            float _4055 = _4054 * _4054;
            float _4076 = (((_4041 * _4055) - _4041) * _4041) + 1.0f;
            float _4081 = 1.0f - _4043;
            float _4082 = _4081 * _4081;
            float _4084 = (_4081 * _4082) * _4082;
            float _4108 = 1.0f - _1142;
            float _4115 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4108 * (1.04997003078460693359375f + (_4108 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4108))))));
            float _4116 = 1.0f - _4115;
            float3 _4119 = _1150 + ((1.0f.xxx - _1150) * 0.0476190485060214996337890625f);
            float3 _4139 = ((clamp((min(((_1150 * (1.0f - _4084)) + _4084.xxx) * (((_4055 / (_4076 * _4076)) * _4008.y) * (0.5f / (((_4039 * sqrt(((((-_4044) * _4055) + _4044) * _4044) + _4055)) + (_4044 * sqrt(((((-_4039) * _4055) + _4039) * _4039) + _4055))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4119 * (((_48.SampleLevel(_13, (float2(_4044, _1142) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_4039, _1142) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4115) / _4116)) * _4119) / (1.0f.xxx - (_4119 * _4116)))) * _30_m6[_1432].z, 0.0f.xxx, 1000.0f.xxx) * _3441) + ((_1146 * _4008.z) * _4036)) * (((_30_m6[_1411].xyz * _3574) * _3984) * _1511);
            _4140 = _4139;
          } else {
            _4140 = 0.0f.xxx;
          }
          _4141 = _1371;
          _4142 = _4140;
        } else {
          float _3374;
          do {
            if (_1518) {
              _3374 = 1.0f;
              break;
            }
            float _2788 = (0.5f + (0.5f * _30_m6[_1417].y)) - abs(_30_m6[_1417].x);
            float _2789 = _30_m6[_1417].y - _2788;
            float _2796 = abs(max((1.0f - abs(_2788)) - abs(_2789), 0.00048828125f));
            float3 _2800 = normalize(float3(_2788, _2789, (_30_m6[_1417].x >= 0.0f) ? _2796 : (-_2796)));
            float3 _2801 = _30_m6[_1414].xyz - _522;
            float _2802 = dot(_2801, _2801);
            float3 _2804 = _2801 * rsqrt(_2802);
            int _2807 = int(_30_m6[_1432].w);
            float3 _2809 = (_2800 * _30_m6[_1417].z) * 0.5f;
            float3 _2810 = _2801 - _2809;
            float3 _2811 = _2801 + _2809;
            bool _2813 = (_1515 & 1u) == 0u;
            bool _2816 = _2813 || ((_1436 & 2u) != 0u);
            bool _2819 = (!_2813) && (_30_m6[_1417].z > 0.0f);
            float _2831;
            if (_2819) {
              _2831 = 1.0f / ((((length(_2810) * length(_2811)) + dot(_2810, _2811)) * 0.5f) + 1.0f);
            } else {
              _2831 = 1.0f;
            }
            float _2853;
            if (_30_m6[_1429].w < 0.0f) {
              float _2847 = _2802 * (_30_m6[_1414].w * _30_m6[_1414].w);
              float _2850 = clamp(1.0f - (_2847 * _2847), 0.0f, 1.0f);
              _2853 = lerp(1.0f / (_2802 + 1.0f), _2831, float(_2819)) * (_2850 * _2850);
            } else {
              float3 _2836 = _2801 * _30_m6[_1414].w;
              _2853 = _2831 * pow(1.0f - clamp(dot(_2836, _2836), 0.0f, 1.0f), _30_m6[_1429].w);
            }
            float _2859 = clamp((dot(_2804, -_2800) - _30_m6[_1417].z) * _30_m6[_1417].w, 0.0f, 1.0f);
            float _2863 = _2853 * lerp(1.0f, _2859 * _2859, float(_2813));
            float _2963;
            if ((!_2819) && (_2807 >= 0)) {
              uint _2869 = uint(_2807);
              float2 _2956;
              [branch] if (_2813) {
                float4 _2946 = mul(_52_m1[_2869], _526);
                _2956 = _52_m0[_2869].xy + (clamp(_2946.xy / _2946.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_2869].zw);
              }
              else {
                float3 _2883 = mul(float4(-_2801, 0.0f), _52_m1[_2869]).xyz;
                float3 _450 = _2883;
                float3 _449 = _2883;
                float3 _448 = abs(_2883);
                uint _2892 = uint(int(_448.y > _448.x));
                uint _2898 = (_448.z > _448[_2892]) ? 2u : _2892;
                uint _2904 = (_2898 * 2u) + uint(_449[_2898] < 0.0f);
                float _2908 = abs(_450[_2904 / 2u]);
                float _2928 = 0.5f - (0.000244140625f / _52_m0[_2869].w);
                _2956 = _52_m0[_2869].xy + (clamp(float2((float(_2904) + ((((_450[uint(_391[_2904].x)] * _392[_2904].x) / _2908) * _2928) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_450[uint(_391[_2904].y)] * _392[_2904].y) / _2908) * _2928)), 0.0f.xx, 1.0f.xx) * _52_m0[_2869].zw);
              }
              _2963 = _2863 * _50.SampleLevel(_13, _2956, 0.0f).x;
            } else {
              _2963 = _2863;
            }
            float _3373;
            if (_2963 > 0.0f) {
              int _3017;
              if (_2816) {
                _3017 = int(_30_m6[_1420].x);
              } else {
                uint _2972 = asuint(_30_m6[_1417].w);
                uint _2973 = asuint(_30_m6[_1420].x);
                float3 _2974 = _522 - _30_m6[_1414].xyz;
                float3 _2975 = abs(_2974);
                float _2976 = _2975.x;
                float _2977 = _2975.y;
                float _2979 = _2975.z;
                int _3012;
                if ((_2976 > _2977) && (_2976 > _2979)) {
                  _3012 = int((_2974.x > 0.0f) ? (_2972 & 1023u) : ((_2972 >> 10u) & 1023u));
                } else {
                  int _3004;
                  if (_2977 > _2979) {
                    _3004 = int((_2974.y > 0.0f) ? ((_2972 >> 20u) & 1023u) : (_2973 & 1023u));
                  } else {
                    _3004 = int((_2974.z > 0.0f) ? ((_2973 >> 10u) & 1023u) : ((_2973 >> 20u) & 1023u));
                  }
                  _3012 = _3004;
                }
                _3017 = (_3012 == 1023) ? (-1) : _3012;
              }
              uint _3022 = uint(_3017);
              uint _3024 = asuint(_34_m11.x) + (_3022 * 96u);
              uint _3026 = (_3024 + 64u) >> 2u;
              uint _3029 = _3026 + 1u;
              uint _3032 = _3026 + 2u;
              uint _3035 = _3026 + 3u;
              float4 _3039 = asfloat(uint4(_37.Load(_3026 * 4 + 0), _37.Load(_3029 * 4 + 0), _37.Load(_3032 * 4 + 0), _37.Load(_3035 * 4 + 0)));
              float _3371;
              do {
                uint _3055 = ((asuint(_34_m11.y) + (_3022 * 16u)) >> 2u) + 1u;
                if (_37.Load(_3055 * 4 + 0) > 0u) {
                  float4 _447 = _1365;
                  float _3070;
                  do {
                    if (_37.Load(_3055 * 4 + 0) == 0u) {
                      _3070 = 1.0f;
                      break;
                    }
                    _3070 = _447[_37.Load(_3055 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _3371 = _3070;
                  break;
                }
                uint _3071 = _3024 >> 2u;
                uint _3086 = (_3024 + 16u) >> 2u;
                uint _3101 = (_3024 + 32u) >> 2u;
                uint _3116 = (_3024 + 48u) >> 2u;
                float4 _3136 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3071 * 4 + 0), _37.Load((_3071 + 1u) * 4 + 0), _37.Load((_3071 + 2u) * 4 + 0), _37.Load((_3071 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3086 * 4 + 0), _37.Load((_3086 + 1u) * 4 + 0), _37.Load((_3086 + 2u) * 4 + 0), _37.Load((_3086 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3101 * 4 + 0), _37.Load((_3101 + 1u) * 4 + 0), _37.Load((_3101 + 2u) * 4 + 0), _37.Load((_3101 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3116 * 4 + 0), _37.Load((_3116 + 1u) * 4 + 0), _37.Load((_3116 + 2u) * 4 + 0), _37.Load((_3116 + 3u) * 4 + 0))))), float4((_522 - ((-_2804) * _3039.x)) + (_492 * (_3039.y * 5.0f)), 1.0f));
                float3 _3140 = _3136.xyz / _3136.w.xxx;
                uint _3142 = (_3024 + 80u) >> 2u;
                float4 _3155 = asfloat(uint4(_37.Load(_3142 * 4 + 0), _37.Load((_3142 + 1u) * 4 + 0), _37.Load((_3142 + 2u) * 4 + 0), _37.Load((_3142 + 3u) * 4 + 0)));
                float2 _3156 = _3140.xy;
                float2 _3158 = _3155.xy;
                float3 _3162 = _3140.xyz;
                bool3 _3163 = bool3(_3162.x <= 0.0f.xxx.x, _3162.y <= 0.0f.xxx.y, _3162.z <= 0.0f.xxx.z);
                bool3 _3164 = bool3(_3162.x >= 1.0f.xxx.x, _3162.y >= 1.0f.xxx.y, _3162.z >= 1.0f.xxx.z);
                float _3167 = _3140.z;
                float2 _3178 = ((_3156 * (_3155.zw - _3158)) + _3158).xy * _34_m10.zw;
                float2 _3180 = floor(_3178 + 0.5f.xx);
                float2 _3181 = _3178 - _3180;
                float _3182 = _3181.x;
                float _3183 = _3182 + 0.5f;
                float _3184 = _3183 * _3183;
                float _3187 = 1.0f - _3182;
                float _3188 = min(_3182, 0.0f);
                float _3191 = _3182 + 1.0f;
                float _3192 = max(_3182, 0.0f);
                float _3203 = _3181.y;
                float _3204 = _3203 + 0.5f;
                float _3205 = _3204 * _3204;
                float _3208 = 1.0f - _3203;
                float _3209 = min(_3203, 0.0f);
                float _3212 = _3203 + 1.0f;
                float _3213 = max(_3203, 0.0f);
                float3 _3225 = float3(0.1599999964237213134765625f * _3187, 0.1599999964237213134765625f * ((_3191 - (_3192 * _3192)) + 1.0f), _3184 * 0.07999999821186065673828125f);
                float3 _3226 = float3(0.1599999964237213134765625f * ((_3184 * 0.5f) - _3182), 0.1599999964237213134765625f * ((_3187 - (_3188 * _3188)) + 1.0f), 0.1599999964237213134765625f * _3191) + _3225;
                float3 _3228 = float3(0.1599999964237213134765625f * _3208, 0.1599999964237213134765625f * ((_3212 - (_3213 * _3213)) + 1.0f), _3205 * 0.07999999821186065673828125f);
                float3 _3229 = float3(0.1599999964237213134765625f * ((_3205 * 0.5f) - _3203), 0.1599999964237213134765625f * ((_3208 - (_3209 * _3209)) + 1.0f), 0.1599999964237213134765625f * _3212) + _3228;
                float3 _3235 = ((_3225 / _3226) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
                float3 _3237 = ((_3228 / _3229) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
                float2 _3239 = _3180 * _34_m10.xy;
                float _3240 = _3235.x;
                float _3241 = _3237.x;
                float _3244 = _3235.y;
                float _3247 = _3235.z;
                float _3250 = _3237.y;
                float _3257 = _3237.z;
                float _3264 = _3226.x;
                float _3265 = _3229.x;
                float _3267 = _3226.y;
                float _3269 = _3226.z;
                float _3271 = _3229.y;
                float _3275 = _3229.z;
                float _3333 = (((((((_3264 * _3265) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3240, _3241), _437).xy, _3167)) + ((_3267 * _3265) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3244, _3241), _437).xy, _3167))) + ((_3269 * _3265) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3247, _3241), _437).xy, _3167))) + ((_3264 * _3271) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3240, _3250), _437).xy, _3167))) + ((_3267 * _3271) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3244, _3250), _437).xy, _3167))) + ((_3269 * _3271) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3247, _3250), _437).xy, _3167))) + ((_3264 * _3275) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3240, _3257), _437).xy, _3167));
                float4 _3356 = asfloat(uint4(_37.Load(_3026 * 4 + 0), _37.Load(_3029 * 4 + 0), _37.Load(_3032 * 4 + 0), _37.Load(_3035 * 4 + 0)));
                float _3357 = _3356.w;
                float2 _3359 = min(_3156, 1.0f.xx - _3156);
                _3371 = lerp(1.0f, (any(bool3(_3163.x || _3164.x, _3163.y || _3164.y, _3163.z || _3164.z)) || ((asuint(_3167) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3333 + ((_3267 * _3275) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3244, _3257), _437).xy, _3167))) + ((_3269 * _3275) * _35.SampleCmpLevelZero(_16, float3(_3239 + float2(_3247, _3257), _437).xy, _3167))), _2816 ? min(_3357, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3356.z - _3136.w) * 0.25f, min(_3359.x, _3359.y)))) : _3357);
                break;
              } while (false);
              _3373 = (_3017 >= 0) ? _3371 : 1.0f;
            } else {
              _3373 = 1.0f;
            }
            _3374 = _3373;
            break;
          } while (false);
          _4141 = _1371 * _3374;
          _4142 = 0.0f.xxx;
        }
        _4143 = _4141;
        _4144 = _4142;
        break;
      } while (false);
      _1396 = _4143;
      _1399 = _1398 + _4144;
    }
    _1368 = _1367 + _1398;
  }
  float3 _4148 = _1336.xyz + (_1367 * _1370);
  float3 _4150 = _469.xxx;
  float3 _4187;
  float3 _4188;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x393F2E8F:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _4163 = min(_22.SampleBias(_12, _4, _9_m16).x, _469);
    _4187 = clamp((pow(abs(max(0.0f, dot(_492, _548)) + _4163), exp2(((-16.0f) * _1142) - 1.0f)) - 1.0f) + _4163, 0.0f, 1.0f).xxx;
    _4188 = max(_4163.xxx, ((((((_1146 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _4163) + ((_1146 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _4163) + ((_1146 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _4163);
  }
  else {
    _4187 = _4150;
    _4188 = _4150;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _4148 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _4187 : 1.0f.xxx;
  // RenoDX code end
  float3 _4205 = (_522 + (_492 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_497 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _4215 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _4224 = _4205 - (_9_m108.xyz + (_4215 * (-_9_m110.w)));
  float _4239 = max(min(max((max(abs(_4224.x), abs(_4224.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4224.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _4541;
  float4 _4542;
  float4 _4543;
  float _4544;
  float _4545;
  if ((_9_m108.w != 0.0f) && (_4239 < 1.0f)) {
    float3 _4252 = _4205 - (_9_m108.xyz + (_4215 * (-_9_m110.y)));
    float _4266 = max(clamp((max(abs(_4252.x), abs(_4252.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4252.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _4342;
    float4 _4343;
    float4 _4344;
    float4 _4345;
    if (_4266 < 1.0f) {
      float3 _4275 = ((_4205 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4277 = _4275 - floor(_4275);
      float4 _4281 = _62.SampleLevel(_14, _4277, 0.0f);
      float _4282 = 1.0f - _4266;
      float _4286 = _9_m109.y * 0.5f;
      float _4291 = _4277.x;
      float _4292 = clamp(_4277.y, _4286, 1.0f - _4286) * 0.3333333432674407958984375f;
      float _4293 = _4277.z;
      float4 _4296 = _63.SampleLevel(_13, float3(_4291, _4292, _4293), 0.0f);
      float _4312 = _4281.x;
      float _4322 = _4281.y;
      float _4332 = _4281.z;
      _4342 = _4239 + (_4296.w * _4282);
      _4343 = float4(((_63.SampleLevel(_13, float3(_4291, _4292 + 0.666666686534881591796875f, _4293), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4332, _4332) * _4282;
      _4344 = float4(((_63.SampleLevel(_13, float3(_4291, _4292 + 0.3333333432674407958984375f, _4293), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4322, _4322) * _4282;
      _4345 = float4(((_4296.xyz * 4.0f) - 2.0f.xxx) * _4312, _4312) * _4282;
    } else {
      _4342 = _4239;
      _4343 = 0.0f.xxxx;
      _4344 = 0.0f.xxxx;
      _4345 = 0.0f.xxxx;
    }
    float3 _4351 = _4205 - (_9_m108.xyz + (_4215 * (-_9_m110.z)));
    float _4365 = max(clamp((max(abs(_4351.x), abs(_4351.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4351.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _4445;
    float4 _4446;
    float4 _4447;
    float4 _4448;
    if (_4365 < 1.0f) {
      float3 _4374 = ((_4205 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4376 = _4374 - floor(_4374);
      float4 _4380 = _64.SampleLevel(_14, _4376, 0.0f);
      float _4382 = _4266 * (1.0f - _4365);
      float _4386 = _9_m109.y * 0.5f;
      float _4391 = _4376.x;
      float _4392 = clamp(_4376.y, _4386, 1.0f - _4386) * 0.3333333432674407958984375f;
      float _4393 = _4376.z;
      float4 _4396 = _65.SampleLevel(_13, float3(_4391, _4392, _4393), 0.0f);
      float _4412 = _4380.x;
      float _4423 = _4380.y;
      float _4434 = _4380.z;
      _4445 = _4342 + (_4396.w * _4382);
      _4446 = _4343 + (float4(((_65.SampleLevel(_13, float3(_4391, _4392 + 0.666666686534881591796875f, _4393), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4434, _4434) * _4382);
      _4447 = _4344 + (float4(((_65.SampleLevel(_13, float3(_4391, _4392 + 0.3333333432674407958984375f, _4393), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4423, _4423) * _4382);
      _4448 = _4345 + (float4(((_4396.xyz * 4.0f) - 2.0f.xxx) * _4412, _4412) * _4382);
    } else {
      _4445 = _4342;
      _4446 = _4343;
      _4447 = _4344;
      _4448 = _4345;
    }
    float4 _4531;
    float4 _4532;
    float4 _4533;
    float _4534;
    if (_4365 > 0.0f) {
      float3 _4457 = ((_4205 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4460 = _9_m109.xyz * 0.5f;
      float3 _4462 = clamp(_4457 - floor(_4457), _4460, 1.0f.xxx - _4460);
      float4 _4466 = _66.SampleLevel(_14, _4462, 0.0f);
      float _4468 = _4365 * (1.0f - _4239);
      float _4472 = _9_m109.y * 0.5f;
      float _4477 = _4462.x;
      float _4478 = clamp(_4462.y, _4472, 1.0f - _4472) * 0.3333333432674407958984375f;
      float _4479 = _4462.z;
      float4 _4482 = _67.SampleLevel(_13, float3(_4477, _4478, _4479), 0.0f);
      float _4498 = _4466.x;
      float _4509 = _4466.y;
      float _4520 = _4466.z;
      _4531 = _4446 + (float4(((_67.SampleLevel(_13, float3(_4477, _4478 + 0.666666686534881591796875f, _4479), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4520, _4520) * _4468);
      _4532 = _4447 + (float4(((_67.SampleLevel(_13, float3(_4477, _4478 + 0.3333333432674407958984375f, _4479), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4509, _4509) * _4468);
      _4533 = _4448 + (float4(((_4482.xyz * 4.0f) - 2.0f.xxx) * _4498, _4498) * _4468);
      _4534 = _4445 + (_4482.w * _4468);
    } else {
      _4531 = _4446;
      _4532 = _4447;
      _4533 = _4448;
      _4534 = _4445;
    }
    float _4537 = clamp((_4534 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _4541 = _4531;
    _4542 = _4532;
    _4543 = _4533;
    _4544 = _4537 - _4239;
    _4545 = (_4537 + _4239) * 0.5f;
  } else {
    _4541 = 0.0f.xxxx;
    _4542 = 0.0f.xxxx;
    _4543 = 0.0f.xxxx;
    _4544 = 0.0f;
    _4545 = 1.0f;
  }
  float4 _4565 = _4543 + float4(_9_m111.x * _4545, (_9_m111.y * _4545) + ((_9_m111.w * _4544) * 0.5f), _9_m111.z * _4545, (_9_m111.w * _4545) + ((_9_m111.y * _4544) * 0.375f));
  float4 _4585 = _4542 + float4(_9_m112.x * _4545, (_9_m112.y * _4545) + ((_9_m112.w * _4544) * 0.5f), _9_m112.z * _4545, (_9_m112.w * _4545) + ((_9_m112.y * _4544) * 0.375f));
  float4 _4605 = _4541 + float4(_9_m113.x * _4545, (_9_m113.y * _4545) + ((_9_m113.w * _4544) * 0.5f), _9_m113.z * _4545, (_9_m113.w * _4545) + ((_9_m113.y * _4544) * 0.375f));
  float4 _4763;
  float4 _4764;
  float4 _4765;
  [branch] if (all(bool2(_510.x >= 0.0f.xx.x, _510.y >= 0.0f.xx.y))) {
    float4 _4613 = _61.SampleLevel(_13, _510, 0.0f);
    float4 _4614 = abs(_4613);
    float4 _4760;
    float4 _4761;
    float4 _4762;
    [branch] if (any(bool4(_4614.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4614.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4614.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4614.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4620 = length(_4613.yzw);
      uint _4622;
      float _4625;
      _4622 = 0u;
      _4625 = 1.0f;
      for (float _4627 = _4620; _4627 > 4.599999904632568359375f;) {
        _4622++;
        _4625 *= 0.5f;
        _4627 *= 0.5f;
        continue;
      }
      float4 _4631 = _4613 * _4625;
      float4 _4636 = float4(0.0f, _4631.yzw);
      float2 _4658 = (_60.SampleLevel(_13, float2(((((length(_4636) * _59_m3.x) + _59_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _59_m2.xy) + _59_m2.zw;
      float4 _4672;
      _4672 = float4(_4658.x * 3.5449078083038330078125f, _4636.yzw * _4658.y) * exp(_4631.x * 0.282094776630401611328125f);
      for (uint _4675 = 0u; _4675 < _4622;) {
        _4672 = mul(float4x4(_4672, float4(_4672.yx, 0.0f, 0.0f), float4(_4672.z, 0.0f, _4672.x, 0.0f), float4(_4672.w, 0.0f, 0.0f, _4672.x)) * 0.282094776630401611328125f, _4672);
        _4675++;
        continue;
      }
      float4x4 _4696 = float4x4(_4672, float4(_4672.yx, 0.0f, 0.0f), float4(_4672.z, 0.0f, _4672.x, 0.0f), float4(_4672.w, 0.0f, 0.0f, _4672.x)) * 0.282094776630401611328125f;
      float4 _4706 = mul(_4696, float4(_4565.w * 1.1283791065216064453125f, _4565.y * (-0.977204978466033935546875f), _4565.z * 0.977204978466033935546875f, _4565.x * (-0.977204978466033935546875f)));
      float4 _4726 = mul(_4696, float4(_4585.w * 1.1283791065216064453125f, _4585.y * (-0.977204978466033935546875f), _4585.z * 0.977204978466033935546875f, _4585.x * (-0.977204978466033935546875f)));
      float4 _4746 = mul(_4696, float4(_4605.w * 1.1283791065216064453125f, _4605.y * (-0.977204978466033935546875f), _4605.z * 0.977204978466033935546875f, _4605.x * (-0.977204978466033935546875f)));
      _4760 = float4(_4706.x * 0.886226952075958251953125f, _4706.w * (-1.02332675457000732421875f), _4706.y * (-1.02332675457000732421875f), _4706.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4761 = float4(_4726.x * 0.886226952075958251953125f, _4726.w * (-1.02332675457000732421875f), _4726.y * (-1.02332675457000732421875f), _4726.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4762 = float4(_4746.x * 0.886226952075958251953125f, _4746.w * (-1.02332675457000732421875f), _4746.y * (-1.02332675457000732421875f), _4746.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4760 = _4565;
      _4761 = _4585;
      _4762 = _4605;
    }
    _4763 = _4760;
    _4764 = _4761;
    _4765 = _4762;
  }
  else {
    _4763 = _4565;
    _4764 = _4585;
    _4765 = _4605;
  }
  float _4770 = max(0.0f, dot(_4763.xyz, _492) + _4763.w);
  float _4775 = max(0.0f, dot(_4764.xyz, _492) + _4764.w);
  float _4780 = max(0.0f, dot(_4765.xyz, _492) + _4765.w);
  float3 _4790 = reflect(_550, _1077);
  float _4798 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1142, 0.001000000047497451305389404296875f))));
  float2 _4802 = floor(_497 * _28_m0.w);
  float _4819 = floor(_529 - _28_m2.y);
  float _4823 = clamp(_4819, 0.0f, _28_m1.x - 1.0f);
  uint _4833 = (_4819 <= _4823) ? (_25.Load(uint(_9_m21.z + int(_4802.x + (_4802.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_4823)) * 4 + 0)) : 0u;
  float _4836 = dot(float4(_4770, _4775, _4780, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4838;
  float _4841;
  uint _4843;
  _4838 = 0.0f.xxx;
  _4841 = 1.0f;
  _4843 = _4833;
  uint _4844;
  float3 _4839;
  float _4842;
  bool _4846;
  [loop] for (;;) {
    bool _4845 = _4843 != 0u;
    _4846 = _4841 > 0.00999999977648258209228515625f;
    if (_4845 && _4846) {
      uint _4850 = firstbitlow(_4843);
      _4844 = _4843 ^ (1u << (_4850 & 31u));
      float3 _4870 = float3(dot(_28_m4[_4850]._m2, _526), dot(_28_m4[_4850]._m3, _526), dot(_28_m4[_4850]._m4, _526));
      float3 _4871 = abs(_4870);
      if (all(bool3(_4871.x <= _28_m4[_4850]._m1.xyz.x, _4871.y <= _28_m4[_4850]._m1.xyz.y, _4871.z <= _28_m4[_4850]._m1.xyz.z))) {
        float3 _4880 = _28_m4[_4850]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4882 = _4871 * 0.100000001490116119384765625f;
        float3 _4883 = _4882 * _4882;
        float3 _4886 = (_28_m4[_4850]._m1.xyz - _4871) * _28_m4[_4850]._m5.xyz;
        float3 _4934;
        [branch] if (_28_m4[_4850]._m6.x == 1.0f) {
          float3 _4919 = float3(dot(_28_m4[_4850]._m2.xyz, _4790), dot(_28_m4[_4850]._m3.xyz, _4790), dot(_28_m4[_4850]._m4.xyz, _4790));
          float3 _4921 = (_28_m4[_4850]._m1.xyz - _4870) / _4919;
          float3 _4924 = ((-_28_m4[_4850]._m1.xyz) - _4870) / _4919;
          bool3 _4925 = bool3(_4919.x > 0.0f.xxx.x, _4919.y > 0.0f.xxx.y, _4919.z > 0.0f.xxx.z);
          float3 _4926 = float3(_4925.x ? _4921.x : _4924.x, _4925.y ? _4921.y : _4924.y, _4925.z ? _4921.z : _4924.z);
          _4934 = _4870 + (_4919 * min(min(_4926.x, _4926.y), _4926.z));
        }
        else {
          _4934 = _4790;
        }
        float3 _4935 = normalize(_4934);
        float3 _4938 = float3(int3(sign(_4935)));
        float3 _4941 = _4935 / dot(_4935, _4938).xxx;
        float3 _4955;
        if (_4941.z < 0.0f) {
          float3 _4946 = abs(_4941);
          float2 _4953 = _4938.xy * float2(1.0f - _4946.y, 1.0f - _4946.x);
          _4955 = float3(_4953.x, _4953.y, _4941.z);
        } else {
          _4955 = _4941;
        }
        float _4980 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_4850]._m0, float4(_1077, 1.0f))));
        float _4993 = clamp((min(_4886.x, min(_4886.y, _4886.z)) * _28_m4[_4850]._m6.y) + ((((((_4880 * _4880).x - ((_4883.x + _4883.y) + _4883.z)) * _28_m4[_4850]._m5.x) * _28_m4[_4850]._m5.x) * (1.0f - _28_m4[_4850]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_4850]._m6.w;
        _4839 = _4838 + ((((_23.SampleLevel(_15, float3((((_4955.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_4850]._m1.w), _4798).xyz * _28_m4[_4850]._m5.w) * ((((((clamp(abs(_4836 / _4980), 0.0f, 1.0f) * 2.0f) + _4836) / (2.0f + _4980)) - 1.0f) * _9_m23.w) + 1.0f)) * _4993) * _4841);
        _4842 = _4841 * (1.0f - _4993);
      } else {
        _4839 = _4838;
        _4842 = _4841;
      }
      _4838 = _4839;
      _4841 = _4842;
      _4843 = _4844;
      continue;
    } else {
      break;
    }
  }
  float3 _5062;
  if (_4846) {
    float3 _5001 = normalize(_4790);
    float3 _5004 = float3(int3(sign(_5001)));
    float3 _5007 = _5001 / dot(_5001, _5004).xxx;
    float3 _5021;
    if (_5007.z < 0.0f) {
      float3 _5012 = abs(_5007);
      float2 _5019 = _5004.xy * float2(1.0f - _5012.y, 1.0f - _5012.x);
      _5021 = float3(_5019.x, _5019.y, _5007.z);
    } else {
      _5021 = _5007;
    }
    float _5048 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_1077, 1.0f))));
    _5062 = _4838 + ((_23.SampleLevel(_15, float3((((_5021.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _4798).xyz * ((((((clamp(abs(_4836 / _5048), 0.0f, 1.0f) * 2.0f) + _4836) / (2.0f + _5048)) - 1.0f) * _9_m23.w) + 1.0f)) * _4841);
  } else {
    _5062 = _4838;
  }
  float3 _5068 = (_5062 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _5068 *= 0.25f + (0.75f * saturate(_4836));
  }
  // RenoDX code end
  float3 _5089;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _5083 = _21.SampleBias(_13, _4, _9_m16);
    float _5084 = _5083.x;
    _5089 = (_20.SampleBias(_13, _4, _9_m16).xyz * _5084) + (_5068 * (1.0f - _5084));
  }
  else {
    _5089 = _5068;
  }
  float3 _5092 = (((float3(_4770, _4775, _4780) * _1146) * _9_m22.x) * _4188) + ((_5089 * (_1175 + ((_1150 * ((1.0f - _1176) / _1176)) * _1175))) * _4187);
  float4 _5094 = float4(_4148.x, _4148.y, _4148.z, _1336.w) + float4(_5092.x, _5092.y, _5092.z, 0.0f.xxxx.w);
  float3 _5097 = clamp(_5094.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _5112 = _524 * _9_m46.w;
  float _5117 = max(0.00999999977648258209228515625f, _5112 + _9_m47.w);
  float3 _5131 = exp(_9_m45.xyz * ((-max(0.0f, (_549 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_5117)) / _5117) * exp(_5112 + _9_m48.w))));
  float _5134 = dot(_550, _9_m44.xyz);
  float _5140 = _9_m45.w * _9_m45.w;
  float _5144 = (1.0f + _5140) - ((2.0f * _9_m45.w) * _5134);
  float3 _5468;
  float _5469;
  if (_9_m55.z > 0.0f) {
    uint3 _5296 = (uint3(int3(_458, _459, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5297 = _5296.y;
    uint _5298 = _5296.z;
    uint _5301 = _5296.x + (_5297 * _5298);
    uint _5303 = _5297 + (_5298 * _5301);
    uint _5305 = _5298 + (_5301 * _5303);
    uint _5307 = _5301 + (_5303 * _5305);
    float _5331 = dot(_550, -_7_m0[2].xyz);
    float3 _5339 = _522 - _7_m11.xyz;
    float _5341 = (_9_m55.w * ((_5331 > 5.9604644775390625e-08f) ? (1.0f / _5331) : 0.0f)) * (1.0f / _549);
    float _5342 = _5339.y;
    float _5343 = _5341 * _5342;
    float _5345 = _7_m11.y + _5343;
    float _5346 = _5342 - _5343;
    float _5348 = (1.0f - _5341) * _549;
    float _5362 = max(-127.0f, _9_m49.z * _5346);
    float _5386 = max(-127.0f, _9_m52.x * _5346);
    float _5397 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_5345 - _9_m49.x)))) * ((abs(_5362) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5362)) / _5362) : (0.693147182464599609375f - (0.2402265071868896484375f * _5362)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_5345 - _9_m52.z)))) * ((abs(_5386) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5386)) / _5386) : (0.693147182464599609375f - (0.2402265071868896484375f * _5386))));
    float _5419 = clamp((_549 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5422 = clamp((max(clamp(exp2(-(_5397 * _5348)), 0.0f, 1.0f), _9_m51.w) + clamp((_549 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5419, 0.0f, 1.0f);
    float4 _5462 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _57.SampleLevel(_13, float3((_497 + ((((float3(uint3(_5307, _5303 + (_5305 * _5307), _441) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_529 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_529 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _5464 = _5462.w;
    _5468 = _5462.xyz + (((_9_m51.xyz * (1.0f - _5422)) + (((_9_m54.xyz * pow(clamp(dot(_548, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5397 * max(_5348 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5419))) * _5464);
    _5469 = _5464 * _5422;
  } else {
    float3 _5172 = _522 - _7_m11.xyz;
    float _5174 = _5172.y;
    float _5188 = max(-127.0f, _9_m49.z * _5174);
    float _5212 = max(-127.0f, _9_m52.x * _5174);
    float _5223 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_5188) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5188)) / _5188) : (0.693147182464599609375f - (0.2402265071868896484375f * _5188)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_5212) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5212)) / _5212) : (0.693147182464599609375f - (0.2402265071868896484375f * _5212))));
    float _5245 = clamp((_549 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5248 = clamp((max(clamp(exp2(-(_5223 * _549)), 0.0f, 1.0f), _9_m51.w) + clamp((_549 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5245, 0.0f, 1.0f);
    _5468 = (_9_m51.xyz * (1.0f - _5248)) + (((_9_m54.xyz * pow(clamp(dot(_548, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5223 * max(_549 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5245));
    _5469 = _5248;
  }
  float3 _5472 = _5131 * _5469;
  float3 _5474 = (_5097 * _5472) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5134 * _5134)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _5140) / max((12.56637096405029296875f * _5144) * sqrt(_5144), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5131)) * _5469) + _5468);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _5474 = (_5474 * 0.65f) + (_5097 * 0.35f);
  }
  // RenoDX code end
  float _5475 = dot(_5472, 0.3333333432674407958984375f.xxx);
  float4 _5476 = float4(_5474.x, _5474.y, _5474.z, _5094.w);
  _5476.w = _5475;
  float _5503 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _522) * _9_m61.z), 0.0f, 1.0f);
  float3 _5511 = lerp(_5097, _5476.xyz, min((1.0f - _5503) + ((_72.SampleLevel(_14, (_522 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _5503), 1.0f + _5475).xxx);
  _5 = float4(_5511.x, _5511.y, _5511.z, _5476.w);
}
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  gl_FragCoord = stage_input.gl_FragCoord;
  gl_FragCoord.w = 1.0 / gl_FragCoord.w;
  _4 = stage_input._4;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output._5 = _5;
  return stage_output;
}

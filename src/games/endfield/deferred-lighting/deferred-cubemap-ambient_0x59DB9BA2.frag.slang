#include "./renodx_injection.hlsli"

// Ported from the native 0x59DB9BA2 Vulkan dump.
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

static float _443;
static float _446;
static uint _447;

static const int2 _397[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _398[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(41, 3)]] cbuffer _6_7 : register(b41, space3) {
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

[[vk::binding(47, 3)]] cbuffer _8_9 : register(b47, space3) {
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

[[vk::binding(51, 3)]] ByteAddressBuffer _25 : register(t51, space3);
[[vk::binding(48, 3)]] cbuffer _26_28 : register(b48, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(43, 3)]] cbuffer _29_30 : register(b43, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(44, 3)]] cbuffer _31_32 : register(b44, space3) {
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

[[vk::binding(46, 3)]] cbuffer _33_34 : register(b46, space3) {
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

[[vk::binding(50, 3)]] ByteAddressBuffer _37 : register(t50, space3);
[[vk::binding(40, 3)]] cbuffer _42_43 : register(b40, space3) {
  column_major float4x4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c4);
};

[[vk::binding(42, 3)]] cbuffer _51_52 : register(b42, space3) {
  float4 _52_m0[15] : packoffset(c0);
  float4 _52_m1[15] : packoffset(c15);
};

[[vk::binding(49, 3)]] cbuffer _55_56 : register(b49, space3) {
  float4 _56_m0[32] : packoffset(c0);
  column_major float4x4 _56_m1[32] : packoffset(c32);
};

[[vk::binding(45, 3)]] cbuffer _62_63 : register(b45, space3) {
  float4 _63_m0 : packoffset(c0);
  float4 _63_m1 : packoffset(c1);
  float4 _63_m2 : packoffset(c2);
  float4 _63_m3 : packoffset(c3);
  float4 _63_m4 : packoffset(c4);
  uint4 _63_m5 : packoffset(c5);
  float4 _63_m6 : packoffset(c6);
  float4 _63_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3, space3);
[[vk::binding(37, 3)]] Texture2D<float4> _19 : register(t37, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _20 : register(t13, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _21 : register(t14, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _22 : register(t30, space3);
[[vk::binding(16, 3)]] Texture2DArray<float4> _23 : register(t16, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _35 : register(t18, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _38 : register(t12, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _39 : register(t32, space3);
[[vk::binding(38, 3)]] Texture2D<float4> _40 : register(t38, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _45 : register(t17, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _46 : register(t9, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _47 : register(t15, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _48 : register(t19, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _49 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _50 : register(t11, space3);
[[vk::binding(36, 3)]] Texture2D<float4> _53 : register(t36, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _54 : register(t20, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _59 : register(t22, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _60 : register(t21, space3);
[[vk::binding(29, 3)]] Texture3D<float4> _61 : register(t29, space3);
[[vk::binding(39, 3)]] Texture2D<float4> _64 : register(t39, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _65 : register(t7, space3);
[[vk::binding(28, 3)]] Texture3D<float4> _66 : register(t28, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _67 : register(t25, space3);
[[vk::binding(27, 3)]] Texture3D<float4> _68 : register(t27, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _69 : register(t24, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _70 : register(t26, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _71 : register(t23, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _72 : register(t6, space3);
[[vk::binding(35, 3)]] Texture2D<float4> _73 : register(t35, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _74 : register(t34, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _75 : register(t33, space3);
[[vk::binding(31, 3)]] Texture3D<float4> _76 : register(t31, space3);

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
  uint2 _461 = uint2(gl_FragCoord.xy);
  int _464 = int(_461.x);
  int _465 = int(_461.y);
  int2 _467 = int3(_464, _465, 0).xy;
  float4 _469 = _73.Load(int3(_467, 0));
  float4 _471 = _74.Load(int3(_467, 0));
  float4 _473 = _75.Load(int3(_467, 0));
  float _474 = _469.x;
  float _475 = _469.y;
  float _476 = _469.z;
  uint _486 = uint(int((round(_469.w * 3.0f) * 4.0f) + round(_471.w * 3.0f)));
  float2 _489 = (_471.xy * 2.0f) - 1.0f.xx;
  float _493 = 1.0f - dot(1.0f.xx, abs(_489));
  float3 _495 = float3(_489.x, _493, _489.y);
  float3 _507;
  if (_493 < 0.0f) {
    float2 _502 = _495.xz;
    bool2 _503 = bool2(_502.x >= 0.0f.xx.x, _502.y >= 0.0f.xx.y);
    float2 _505 = (1.0f.xx - abs(_495.zx)) * float2(_503.x ? 1.0f.xx.x : (-1.0f).xx.x, _503.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _507 = float3(_505.x, _495.y, _505.y);
  } else {
    _507 = _495;
  }
  float3 _508 = normalize(_507);
  float _509 = _471.z;
  float _511 = _473.w;
  float2 _514 = float2(_461);
  float2 _519 = (_514 + 0.5f.xx) * _9_m0.zw;
  float2 _527 = gl_FragCoord.xy * _9_m0.zw;
  float2 _529 = (_527 * 2.0f) - 1.0f.xx;
  float4 _532 = float4(_529, _19.SampleLevel(_12, _519, 0.0f).x, 1.0f);
  _532.y = -_529.y;
  float4 _535 = mul(_7_m6, _532);
  float3 _539 = _535.xyz / _535.w.xxx;
  float _540 = _539.x;
  float _541 = _539.y;
  float4 _543 = float4(_540, _541, _539.z, 1.0f);
  float _546 = abs(mul(_7_m0, _543).z);
  float3 _561;
  do {
    if (_9_m4.w == 0.0f) {
      _561 = _7_m11.xyz - _539;
      break;
    } else {
      _561 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _562 = dot(_561, _561);
  float _564 = rsqrt(max(_562, 9.9999999392252902907785028219223e-09f));
  float3 _565 = _561 * _564;
  float _566 = _562 * _564;
  float3 _567 = -_565;
  bool _570 = _9_m132.x > 0.00048828125f;
  float2 _580;
  if (_570) {
    _580 = _72.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _580 = 1.0f.xx;
  }
  float _581 = dot(_508, float3(0.0f, -1.0f, 0.0f));
  float3 _637;
  float3 _638;
  [branch] if (_9_m124.x > 0.5f) {
    float _608 = abs(_508.x);
    float _610 = abs(_508.y);
    float _612 = abs(_508.z);
    float3 _617 = float3(_608, _610, _612) * (1.0f / ((_608 + _610) + _612));
    float4 _630 = _45.SampleLevel(_14, _539 * _9_m127.x, 0.0f);
    float _631 = _630.x;
    _637 = float3(_631, _446, _446);
    _638 = ((((float3(0.0f, 0.0f, 1.0f) * _617.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _617.y)) + (float3(1.0f, 0.0f, 0.0f) * _617.z)) * ((_631 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_581)));
  }
  else {
    _637 = 0.0f.xxx;
    _638 = 0.0f.xxx;
  }
  float4 _652 = mul(_43_m0, float4((_539 + ((((_508 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_581, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _581), 0.100000001490116119384765625f, 1.0f)))) + _638, 1.0f));
  float2 _655 = (_652.xy * 0.5f) + 0.5f.xx;
  float4 _656 = float4(_655.x, _655.y, _652.z, _652.w);
  _656.y = 1.0f - _655.y;
  float _677;
  [branch] if (_9_m124.y > 0.5f) {
    _677 = _41.SampleCmpLevelZero(_17, (_656.xy + _43_m1.xy).xy, max(_652.z, 0.00048828125f));
  }
  else {
    _677 = 1.0f;
  }
  float _680 = _508.y;
  float _681 = clamp(_680, 0.0f, 1.0f);
  float _682 = lerp(_9_m128.w, 1.0f, _681);
  float2 _686 = _539.xz;
  float2 _691 = abs(_686 - _7_m11.xz);
  float _694 = max(_691.x, _691.y);
  float _704 = lerp(_682 * _677, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _694));
  float3 _711 = ddy_fine(_539);
  float3 _712 = ddx_fine(_539);
  float3 _713 = cross(_711, _712);
  float _719 = clamp((_713 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_713, _713)))).y, 0.0f, 1.0f);
  float _722 = _9_m121.z * 0.300000011920928955078125f;
  float _724 = _722 + 0.68599998950958251953125f;
  float _731 = 1.0f - clamp((_546 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _746 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_724, 0.9700000286102294921875f), 0.9900000095367431640625f, _681) + (smoothstep(0.990999996662139892578125f, 1.0f, _719) * step(_475, (_637.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _945;
  float _946;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_722 + 0.686999976634979248046875f, _724, _719) * smoothstep(-0.5f, -0.100000001490116119384765625f, _680)) > 0.00048828125f)) {
    float3 _755 = abs(_508);
    float3 _756 = _755 * _755;
    float3 _761 = _756 * (1.0f / (_756.x + _756.z));
    float3 _763 = normalize(cross(_508, float3(0.0f, 1.0f, 0.0f)));
    float3 _765 = normalize(cross(_763, _508));
    float3 _781 = floor((_539 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _789 = frac(sin(dot(fmod(_781.xz + _781.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _793 = (step(0.0f.xx, _508.zx) * 2.0f) - 1.0f.xx;
    float3 _796 = _539;
    _796.x = _540 * _793.x;
    _796.z = _539.z * (-_793.y);
    float _808 = _637.x * _789;
    float2 _816 = float2(frac(((-_9_m121.x) * (((1.0f - _789) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_808 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_808 * 6.0f)));
    float _819 = floor(_789 * 5.0f) + 1.0f;
    float2 _823 = frac(float2(_819, 0.100000001490116119384765625f * _819) * _541);
    float2 _835 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _823 - (_816 - 1.0f.xx)), _816 - _823), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _823 - _816), (_816 + 1.0f.xx) - _823), step(_816, _823));
    float _836 = _835.x;
    float _838 = smoothstep(0.4000000059604644775390625f, 1.0f, _836 * _836);
    float _839 = _835.y;
    float _844 = (_839 * 2.0f) - 1.0f;
    float2 _853 = float2((_637.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _838) * _844), (1.0f.xx * _637.x).y * (_637.x + (((_838 * 0.00999999977648258209228515625f) * _838) * _844)));
    float4 _877 = (_46.SampleBias(_14, (_796.zy * _9_m122.xy) + _853, _9_m16) * _761.x) + (_46.SampleBias(_14, (_796.xy * _9_m122.xy) + _853, _9_m16) * _761.z);
    float2 _880 = (_877.xy * 2.0f) - 1.0f.xx;
    float _886 = _877.w;
    float _896 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_839 + (((_838 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_886 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_844 * _886) * 0.5f) + _838, 0.0f, 1.0f)));
    float _902 = _877.z;
    float _912 = (((lerp(0.100000001490116119384765625f, (_896 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _896, 0.0f, 1.0f), 5.0f), _902)) * _902) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_704 * step(0.04500000178813934326171875f, _476))) * _731);
    float2 _915 = _880.xy;
    float _920 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_915, _915), 0.0f, 1.0f)));
    float3 _921 = float3(_880, _920);
    float2 _925 = _921.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _912) * _9_m121.y);
    float3 _926 = float3(_925.x, _925.y, _921.z);
    _926.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _920, _912);
    _945 = lerp(_508, mul(float4x4(float4(_763.x, _765.x, _508.x, 0.0f), float4(_763.y, _765.y, _680, 0.0f), float4(_763.z, _765.z, _508.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_926 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_926, _926))), 0.0f)).xyz, _912.xxx);
    _946 = (_912 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _945 = _508;
    _946 = 0.0f;
  }
  float3 _1094;
  float _1095;
  [branch] if (_746 > 0.00048828125f) {
    float2 _953 = (-_686) * _9_m126.xy;
    float2 _955 = frac(_953);
    float2 _1002;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _965 = frac(sin(dot(fmod(floor(_953), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _978 = floor(frac(_9_m125.x + _965) * (_9_m126.z * _9_m126.z));
      float _980 = 1.0f / _9_m126.z;
      _1002 = ((_47.SampleBias(_13, frac((lerp(_955, _955.yx, step(_965, 0.5f).xx) * _980) + float2(_980 * fmod(_978, _9_m126.z), _980 * ((_9_m126.z - 1.0f) - floor(_978 * _980)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _1002 = 0.0f.xx;
    }
    float2 _1043;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _1028 = _47.SampleBias(_14, (_953 + float2(0.0f, _9_m125.z)) + ((float2(_637.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1032 = _47.SampleBias(_14, (_953 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _637.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1038 = (((float4(_1028.z, _1028.w, _1032.z, _1032.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _637.x;
      _1043 = _1002 + (_1038.xy + _1038.zw);
    }
    else {
      _1043 = _1002;
    }
    float _1051 = (((_637.x * 0.699999988079071044921875f) + (_509 * 0.300000011920928955078125f)) * clamp((_509 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _475;
    float _1055 = smoothstep(min(_1051, 0.9900000095367431640625f), clamp(_1051 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _1066 = _9_m120.x * _746;
    float3 _1076 = float3(_1043, max(0.00048828125f, sqrt(1.0f - clamp(dot(_1043, _1043), 0.0f, 1.0f))));
    float3 _1082 = (_1076 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1076, _1076)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _1094 = lerp(_508, _1082, (((_1066 * _1055) * _704) * _731).xxx);
    _1095 = max((smoothstep(0.0f, _475 * 0.20000000298023223876953125f, (_1066 * clamp(lerp((_9_m126.w * (1.0f - _637.x)) * 0.5f, 1.0f, _1055) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _1082.y) * _704) * _731, 0.0f);
  }
  else {
    _1094 = _945;
    _1095 = 0.0f;
  }
  float _1098 = min(_580.x, _580.y);
  float2 _1100 = _580 * (1.0f - lerp(lerp(_9_m128.z * _682, 1.0f, _704), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _694)));
  float _1101 = _1100.x;
  float _1104 = clamp((_476 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _1105 = 1.0f - _509;
  float _1121 = lerp(clamp((clamp((_1105 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _946)) + ((_1095 * 0.100000001490116119384765625f) * _509), 0.0f, 1.0f), 1.0f, _474);
  float _1123 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _581);
  float _1132 = lerp(1.0f, 0.25f, ((_9_m120.x * _1121) * (1.0f - _474)) * _1123);
  float _1148 = (1.0f - lerp(_1105, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1121) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1105)), 0.0f, 1.0f), _1105, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1123) * (1.0f - _1101))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1095, smoothstep(0.0f, 0.0500000007450580596923828125f, _946)));
  float _1153;
  float _1154;
  if (_570) {
    _1153 = lerp(1.0f, _580.y, _1104);
    _1154 = lerp(1.0f, 0.0f, _1104);
  } else {
    _1153 = 1.0f;
    _1154 = 1.0f;
  }
  float _1159 = lerp(lerp(min(_1153, _1148), _1148, _1098), _509, _1101);
  float3 _1161 = _473.xyz * lerp(lerp(min(_1154, _1132), _1132, _1098), 1.0f, _1101);
  float3 _1162 = _1161 * _474;
  float3 _1163 = _1161 - _1162;
  float3 _1167 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _474)).xxx + _1162;
  float _1168 = dot(_1094, _565);
  float _1169 = max(0.0f, _1168);
  float _1170 = _1159 * _1159;
  float _1171 = _1169 * _1169;
  float _1172 = _1171 * _1169;
  float2 _1173 = float2(1.0f, _1169);
  float2 _1176 = float2(1.0f, _1170);
  float _1177 = _1170 * _1170;
  float3 _1179 = float3(1.0f, _1170, _1177 * _1170);
  float _1184 = dot(mul(_1173, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1176) / dot(mul(float3(1.0f, _1171, _1172), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1179);
  float _1189 = dot(mul(_1173, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1176) / dot(mul(float3(1.0f, _1169, _1172), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1179);
  float3 _1192 = (_1167 * _1184) + _1189.xxx;
  float _1193 = _1184 + _1189;
  float4 _1380;
  do {
    [branch] if (_32_m4 == 0) {
      _1380 = 0.0f.xxxx;
      break;
    }
    float4 _1213 = _38.Load(int3(_467, 0));
    float _1214 = _1213.x;
    float4 _1379;
    if (_1214 > 0.001000000047497451305389404296875f) {
      float3 _1224 = reflect(_567, _1094);
      float3 _1225 = -_30_m0.xyz;
      float _1230 = dot(_1225, _1224);
      float3 _1232 = _1224 - (_1225 * _1230);
      bool3 _1234 = (_1230 < _30_m4.z).xxx;
      float3 _1242 = normalize((_1225 * _30_m4.z) + ((_1232 * rsqrt(max(6.103515625e-05f, dot(_1232, _1232)))) * _30_m4.y));
      float3 _1243 = float3(_1234.x ? _1242.x : _1224.x, _1234.y ? _1242.y : _1224.y, _1234.z ? _1242.z : _1224.z);
      float3 _1247 = _1243 + _565;
      float3 _1251 = _1247 * rsqrt(max(6.103515625e-05f, dot(_1247, _1247)));
      float _1254 = clamp(dot(_1243, _1094), 0.0f, 1.0f);
      float _1256 = clamp(dot(_1094, _1251), 0.0f, 1.0f);
      float _1259 = clamp(_1168, 0.0f, 1.0f);
      float _1280 = (((_1256 * _1177) - _1256) * _1256) + 1.0f;
      float _1283 = 1.0f - clamp(dot(_565, _1251), 0.0f, 1.0f);
      float _1284 = _1283 * _1283;
      float _1286 = (_1283 * _1284) * _1284;
      float _1310 = 1.0f - _1159;
      float _1317 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1310 * (1.04997003078460693359375f + (_1310 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1310))))));
      float _1318 = 1.0f - _1317;
      float3 _1321 = _1167 + ((1.0f.xxx - _1167) * 0.0476190485060214996337890625f);
      float3 _1361;
      do {
        [branch] if (((_486 > 0u) && (_486 <= 15u)) && (_511 > 0.0f)) {
          uint _1345 = clamp(_486 - 1u, 0u, 14u);
          _1361 = _49.SampleLevel(_13, float3((dot(_508, _1243) * 0.5f) + 0.5f, _511 * _52_m0[_1345].w, float(_1345)), 0.0f).xyz;
          break;
        }
        _1361 = clamp(dot(_1243, _508), 0.0f, 1.0f).xxx;
        break;
      } while (false);
      float3 _1364 = ((clamp((min(((_1167 * (1.0f - _1286)) + _1286.xxx) * ((_1177 / (_1280 * _1280)) * (0.5f / (((_1254 * sqrt(((((-_1259) * _1177) + _1259) * _1259) + _1177)) + (_1259 * sqrt(((((-_1254) * _1177) + _1254) * _1254) + _1177))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1321 * (((_48.SampleLevel(_13, (float2(_1259, _1159) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_1254, _1159) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1317) / _1318)) * _1321) / (1.0f.xxx - (_1321 * _1318)))) * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1254) + ((_1163 * 1.0f) * _1361)) * _30_m1.xyz;
      float3 _1377 = lerp(_1364, _1364 * _40.SampleBias(_13, float2(_1214, 0.5f), _9_m16).xyz, (1.0f - _1214).xxx) * min(_53.SampleLevel(_13, _527, 0.0f).x, 1.0f);
      _1379 = float4(_1377.x, _1377.y, _1377.z, 0.0f.xxxx.w);
    } else {
      _1379 = 0.0f.xxxx;
    }
    _1380 = _1379;
    break;
  } while (false);
  float2 _1382 = floor(_514 * 0.03125f);
  int _1390 = int((_1382.x + (_1382.y * _32_m9)) * 8.0f);
  float _1397 = floor(_546 - (_9_m3.y * _32_m15));
  float _1401 = clamp(_1397, 0.0f, _32_m11 - 1.0f);
  int _1403 = int(_1401 * 8.0f);
  float4 _1409 = _39.SampleBias(_13, _519, _9_m16);
  float3 _1411;
  float _1414;
  _1411 = 0.0f.xxx;
  _1414 = 1.0f;
  float3 _1412;
  float _1415;
  [loop] for (int _1416 = 0; _1416 <= 7; _1411 = _1412, _1414 = _1415, _1416++) {
    uint _1437 = (_1397 <= _1401) ? (_25.Load(uint((_32_m2 + _1390) + _1416) * 4 + 0) & _25.Load(uint((_32_m3 + _1403) + _1416) * 4 + 0)) : 0u;
    uint _1438 = uint(_1416);
    float3 _1442;
    _1415 = _1414;
    _1442 = 0.0f.xxx;
    uint _1445;
    float _1440;
    float3 _1443;
    [loop] for (uint _1444 = _1437; _1444 != 0u; _1415 = _1440, _1442 = _1443, _1444 = _1445) {
      uint _1449 = firstbitlow(_1444);
      _1445 = _1444 ^ (1u << (_1449 & 31u));
      int _1455 = int((32u * _1438) + _1449) * 8;
      int _1458 = _1455 + 1;
      int _1461 = _1455 + 2;
      int _1464 = _1455 + 3;
      int _1467 = _1455 + 4;
      int _1470 = _1455 + 5;
      int _1473 = _1455 + 6;
      int _1476 = _1455 + 7;
      uint _1480 = uint(_30_m6[_1470].w);
      float _1555;
      if ((_1480 & 1u) == 1u) {
        uint _1486 = asuint(_30_m6[_1470].x);
        uint _1493 = asuint(_30_m6[_1470].y);
        uint _1500 = asuint(_30_m6[_1470].z);
        uint _1507 = asuint(_30_m6[_1473].x);
        uint _1514 = asuint(_30_m6[_1473].y);
        uint _1521 = asuint(_30_m6[_1473].z);
        float3 _1540 = abs(mul(float4(_539 - _30_m6[_1458].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1486).x, spvUnpackHalf2x16(_1500).x, spvUnpackHalf2x16(_1514).x, 0.0f), float4(spvUnpackHalf2x16(_1486 >> 16u).x, spvUnpackHalf2x16(_1500 >> 16u).x, spvUnpackHalf2x16(_1514 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1493).x, spvUnpackHalf2x16(_1507).x, spvUnpackHalf2x16(_1521).x, 0.0f), float4(spvUnpackHalf2x16(_1493 >> 16u).x, spvUnpackHalf2x16(_1507 >> 16u).x, spvUnpackHalf2x16(_1521 >> 16u).x, 0.0f))).xyz);
        float _1547 = _30_m6[_1476].x * 0.5f;
        float _1553 = 1.0f - clamp((max(max(_1540.x, _1540.y), _1540.z) - (_1547 + 0.5f)) / (0.5f - _1547), 0.0f, 1.0f);
        _1555 = _1553 * _1553;
      } else {
        _1555 = 1.0f;
      }
      uint _1559 = uint(_30_m6[_1455].w);
      bool _1562 = _30_m6[_1464].z > 0.5f;
      if ((false || (_1555 < 0.001000000047497451305389404296875f)) || ((_1559 < 4u) && _1562)) {
        _1440 = _1415;
        _1443 = _1442;
        continue;
      }
      float _4214;
      float3 _4215;
      do {
        [branch] if (_1559 >= 4u) {
          float3 _2815;
          do {
            float3 _1581 = _30_m6[_1458].xyz - _539;
            if (dot(_30_m6[_1464].xyz, _1581) > 0.0f) {
              _2815 = 0.0f.xxx;
              break;
            }
            float _1588 = dot(_1581, _1581) * _30_m6[_1458].w;
            float _1591 = clamp(1.0f - (_1588 * _1588), 0.0f, 1.0f);
            float _1592 = _1591 * _1591;
            if (_1592 <= 0.0f) {
              _2815 = 0.0f.xxx;
              break;
            }
            float3 _1631;
            float _1632;
            bool _1633;
            float3 _1660;
            float3 _1662;
            float3 _1664;
            float3 _1666;
            float3 _1596 = _30_m6[_1461].xyz * _30_m6[_1461].w;
            float3 _1597 = _30_m6[_1458].xyz - _1596;
            float3 _1598 = _30_m6[_1467].xyz * _30_m6[_1464].w;
            float3 _1601 = _30_m6[_1458].xyz + _1596;
            float2 _1612 = (float2(clamp(_1159, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_508, _565), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1616 = _59.SampleLevel(_13, _1612, 0.0f);
            float4 _1620 = _60.SampleLevel(_13, _1612, 0.0f);
            float _2014;
            do {
              _1631 = _565 - (_508 * dot(_565, _508));
              _1632 = dot(_1631, _1631);
              _1633 = _1632 > 9.9999997473787516355514526367188e-05f;
              float3 _1655;
              if (_1633) {
                _1655 = _1631 * rsqrt(_1632);
              } else {
                float _1637 = _508.z;
                float _1639 = (_1637 >= 0.0f) ? 1.0f : (-1.0f);
                float _1641 = (-1.0f) / (_1639 + _1637);
                float _1643 = _508.x;
                _1655 = float3(1.0f + (((_1639 * _1641) * _1643) * _1643), ((_1639 * _1643) * _680) * _1641, (-_1639) * _1643);
              }
              float3x3 _1659 = mul(float3x3(float3(_1616.x, 0.0f, _1616.z), float3(0.0f, 1.0f, 0.0f), float3(_1616.y, 0.0f, _1616.w)), float3x3(_1655, cross(_508, _1655), _508));
              _1660 = (_1597 - _1598) - _539;
              float3 _1661 = mul(_1659, _1660);
              _1662 = (_1597 + _1598) - _539;
              float3 _1663 = mul(_1659, _1662);
              _1664 = (_1601 + _1598) - _539;
              float3 _1665 = mul(_1659, _1664);
              _1666 = (_1601 - _1598) - _539;
              float3 _1667 = mul(_1659, _1666);
              float _1668 = _1661.z;
              float _1671 = _1663.z;
              float _1675 = _1665.z;
              float _1679 = _1667.z;
              int _1683 = (((int(_1668 > 0.0f) | ((_1671 > 0.0f) ? 2 : 0)) | ((_1675 > 0.0f) ? 4 : 0)) | ((_1679 > 0.0f) ? 8 : 0));
              float3 _1920;
              float3 _1921;
              float3 _1922;
              float3 _1923;
              float3 _1924;
              int _1925;
              if (_1683 == 0) {
                _1920 = _1667;
                _1921 = _1665;
                _1922 = _1663;
                _1923 = _1661;
                _1924 = 0.0f.xxx;
                _1925 = 0;
              } else {
                float3 _1914;
                float3 _1915;
                float3 _1916;
                float3 _1917;
                float3 _1918;
                int _1919;
                if (_1683 == 1) {
                  _1914 = _1667;
                  _1915 = (_1661 * (-_1679)) + (_1667 * _1668);
                  _1916 = (_1661 * (-_1671)) + (_1663 * _1668);
                  _1917 = _1661;
                  _1918 = 0.0f.xxx;
                  _1919 = 3;
                } else {
                  float3 _1900;
                  float3 _1901;
                  float3 _1902;
                  float3 _1903;
                  float3 _1904;
                  int _1905;
                  if (_1683 == 2) {
                    _1900 = _1667;
                    _1901 = (_1663 * (-_1675)) + (_1665 * _1671);
                    _1902 = _1663;
                    _1903 = (_1663 * (-_1668)) + (_1661 * _1671);
                    _1904 = 0.0f.xxx;
                    _1905 = 3;
                  } else {
                    float3 _1886;
                    float3 _1887;
                    float3 _1888;
                    float3 _1889;
                    float3 _1890;
                    int _1891;
                    if (_1683 == 3) {
                      _1886 = (_1661 * (-_1679)) + (_1667 * _1668);
                      _1887 = (_1663 * (-_1675)) + (_1665 * _1671);
                      _1888 = _1663;
                      _1889 = _1661;
                      _1890 = 0.0f.xxx;
                      _1891 = 4;
                    } else {
                      float3 _1872;
                      float3 _1873;
                      float3 _1874;
                      float3 _1875;
                      float3 _1876;
                      int _1877;
                      if (_1683 == 4) {
                        _1872 = _1667;
                        _1873 = _1665;
                        _1874 = (_1665 * (-_1671)) + (_1663 * _1675);
                        _1875 = (_1665 * (-_1679)) + (_1667 * _1675);
                        _1876 = 0.0f.xxx;
                        _1877 = 3;
                      } else {
                        float3 _1858;
                        float3 _1859;
                        float3 _1860;
                        float3 _1861;
                        float3 _1862;
                        int _1863;
                        if (_1683 == 5) {
                          _1858 = _1667;
                          _1859 = _1665;
                          _1860 = _1663;
                          _1861 = _1661;
                          _1862 = 0.0f.xxx;
                          _1863 = 0;
                        } else {
                          float3 _1852;
                          float3 _1853;
                          float3 _1854;
                          float3 _1855;
                          float3 _1856;
                          int _1857;
                          if (_1683 == 6) {
                            _1852 = (_1665 * (-_1679)) + (_1667 * _1675);
                            _1853 = _1665;
                            _1854 = _1663;
                            _1855 = (_1663 * (-_1668)) + (_1661 * _1671);
                            _1856 = 0.0f.xxx;
                            _1857 = 4;
                          } else {
                            float3 _1838;
                            float3 _1839;
                            float3 _1840;
                            float3 _1841;
                            float3 _1842;
                            int _1843;
                            if (_1683 == 7) {
                              float _1831 = -_1679;
                              _1838 = (_1665 * _1831) + (_1667 * _1675);
                              _1839 = _1665;
                              _1840 = _1663;
                              _1841 = _1661;
                              _1842 = (_1661 * _1831) + (_1667 * _1668);
                              _1843 = 5;
                            } else {
                              float3 _1825;
                              float3 _1826;
                              float3 _1827;
                              float3 _1828;
                              float3 _1829;
                              int _1830;
                              if (_1683 == 8) {
                                _1825 = _1667;
                                _1826 = _1667;
                                _1827 = (_1667 * (-_1675)) + (_1665 * _1679);
                                _1828 = (_1667 * (-_1668)) + (_1661 * _1679);
                                _1829 = 0.0f.xxx;
                                _1830 = 3;
                              } else {
                                float3 _1811;
                                float3 _1812;
                                float3 _1813;
                                float3 _1814;
                                float3 _1815;
                                int _1816;
                                if (_1683 == 9) {
                                  _1811 = _1667;
                                  _1812 = (_1667 * (-_1675)) + (_1665 * _1679);
                                  _1813 = (_1661 * (-_1671)) + (_1663 * _1668);
                                  _1814 = _1661;
                                  _1815 = 0.0f.xxx;
                                  _1816 = 4;
                                } else {
                                  float3 _1797;
                                  float3 _1798;
                                  float3 _1799;
                                  float3 _1800;
                                  float3 _1801;
                                  int _1802;
                                  if (_1683 == 10) {
                                    _1797 = _1667;
                                    _1798 = _1665;
                                    _1799 = _1663;
                                    _1800 = _1661;
                                    _1801 = 0.0f.xxx;
                                    _1802 = 0;
                                  } else {
                                    float3 _1791;
                                    float3 _1792;
                                    float3 _1793;
                                    float3 _1794;
                                    float3 _1795;
                                    int _1796;
                                    if (_1683 == 11) {
                                      float _1784 = -_1675;
                                      _1791 = (_1667 * _1784) + (_1665 * _1679);
                                      _1792 = (_1663 * _1784) + (_1665 * _1671);
                                      _1793 = _1663;
                                      _1794 = _1661;
                                      _1795 = _1667;
                                      _1796 = 5;
                                    } else {
                                      float3 _1778;
                                      float3 _1779;
                                      float3 _1780;
                                      float3 _1781;
                                      float3 _1782;
                                      int _1783;
                                      if (_1683 == 12) {
                                        _1778 = _1667;
                                        _1779 = _1665;
                                        _1780 = (_1665 * (-_1671)) + (_1663 * _1675);
                                        _1781 = (_1667 * (-_1668)) + (_1661 * _1679);
                                        _1782 = 0.0f.xxx;
                                        _1783 = 4;
                                      } else {
                                        bool _1736 = _1683 == 13;
                                        float3 _1763;
                                        float3 _1764;
                                        float3 _1765;
                                        float3 _1766;
                                        int _1767;
                                        if (_1736) {
                                          float _1756 = -_1671;
                                          _1763 = (_1665 * _1756) + (_1663 * _1675);
                                          _1764 = (_1661 * _1756) + (_1663 * _1668);
                                          _1765 = _1661;
                                          _1766 = _1667;
                                          _1767 = 5;
                                        } else {
                                          float3 _1753;
                                          float3 _1754;
                                          int _1755;
                                          if (_1683 == 14) {
                                            float _1746 = -_1668;
                                            _1753 = (_1663 * _1746) + (_1661 * _1671);
                                            _1754 = (_1667 * _1746) + (_1661 * _1679);
                                            _1755 = 5;
                                          } else {
                                            _1753 = _1661;
                                            _1754 = 0.0f.xxx;
                                            _1755 = (_1683 == 15) ? 4 : 0;
                                          }
                                          _1763 = _1665;
                                          _1764 = _1663;
                                          _1765 = _1753;
                                          _1766 = _1754;
                                          _1767 = _1755;
                                        }
                                        bool3 _1768 = _1736.xxx;
                                        _1778 = float3(_1768.x ? _1665.x : _1667.x, _1768.y ? _1665.y : _1667.y, _1768.z ? _1665.z : _1667.z);
                                        _1779 = _1763;
                                        _1780 = _1764;
                                        _1781 = _1765;
                                        _1782 = _1766;
                                        _1783 = _1767;
                                      }
                                      _1791 = _1778;
                                      _1792 = _1779;
                                      _1793 = _1780;
                                      _1794 = _1781;
                                      _1795 = _1782;
                                      _1796 = _1783;
                                    }
                                    _1797 = _1791;
                                    _1798 = _1792;
                                    _1799 = _1793;
                                    _1800 = _1794;
                                    _1801 = _1795;
                                    _1802 = _1796;
                                  }
                                  _1811 = _1797;
                                  _1812 = _1798;
                                  _1813 = _1799;
                                  _1814 = _1800;
                                  _1815 = _1801;
                                  _1816 = _1802;
                                }
                                _1825 = _1811;
                                _1826 = _1812;
                                _1827 = _1813;
                                _1828 = _1814;
                                _1829 = _1815;
                                _1830 = _1816;
                              }
                              _1838 = _1825;
                              _1839 = _1826;
                              _1840 = _1827;
                              _1841 = _1828;
                              _1842 = _1829;
                              _1843 = _1830;
                            }
                            _1852 = _1838;
                            _1853 = _1839;
                            _1854 = _1840;
                            _1855 = _1841;
                            _1856 = _1842;
                            _1857 = _1843;
                          }
                          _1858 = _1852;
                          _1859 = _1853;
                          _1860 = _1854;
                          _1861 = _1855;
                          _1862 = _1856;
                          _1863 = _1857;
                        }
                        _1872 = _1858;
                        _1873 = _1859;
                        _1874 = _1860;
                        _1875 = _1861;
                        _1876 = _1862;
                        _1877 = _1863;
                      }
                      _1886 = _1872;
                      _1887 = _1873;
                      _1888 = _1874;
                      _1889 = _1875;
                      _1890 = _1876;
                      _1891 = _1877;
                    }
                    _1900 = _1886;
                    _1901 = _1887;
                    _1902 = _1888;
                    _1903 = _1889;
                    _1904 = _1890;
                    _1905 = _1891;
                  }
                  _1914 = _1900;
                  _1915 = _1901;
                  _1916 = _1902;
                  _1917 = _1903;
                  _1918 = _1904;
                  _1919 = _1905;
                }
                _1920 = _1914;
                _1921 = _1915;
                _1922 = _1916;
                _1923 = _1917;
                _1924 = _1918;
                _1925 = _1919;
              }
              bool3 _1927 = (_1925 == 3).xxx;
              bool3 _1930 = (_1925 == 4).xxx;
              if (_1925 == 0) {
                _2014 = 0.0f;
                break;
              }
              float3 _1935 = normalize(_1923);
              float3 _1936 = normalize(_1922);
              float3 _1937 = normalize(_1921);
              float3 _1938 = normalize(float3(_1927.x ? _1923.x : _1920.x, _1927.y ? _1923.y : _1920.y, _1927.z ? _1923.z : _1920.z));
              float3 _1939 = normalize(float3(_1930.x ? _1923.x : _1924.x, _1930.y ? _1923.y : _1924.y, _1930.z ? _1923.z : _1924.z));
              float _1941 = clamp(dot(_1935, _1936), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1945 = sqrt(1.0f - (_1941 * _1941));
              float _1953 = clamp(dot(_1936, _1937), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1957 = sqrt(1.0f - (_1953 * _1953));
              float _1966 = clamp(dot(_1937, _1938), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1970 = sqrt(1.0f - (_1966 * _1966));
              float _1977 = ((cross(_1935, _1936).z * ((_1945 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1941) / _1945))) + (cross(_1936, _1937).z * ((_1957 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1953) / _1957)))) + (cross(_1937, _1938).z * ((_1970 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1966) / _1970)));
              float _1994;
              if (_1925 >= 4) {
                float _1982 = clamp(dot(_1938, _1939), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1986 = sqrt(1.0f - (_1982 * _1982));
                _1994 = _1977 + (cross(_1938, _1939).z * ((_1986 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1982) / _1986)));
              } else {
                _1994 = _1977;
              }
              float _2011;
              if (_1925 == 5) {
                float _1999 = clamp(dot(_1939, _1935), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2003 = sqrt(1.0f - (_1999 * _1999));
                _2011 = _1994 + (cross(_1939, _1935).z * ((_2003 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1999) / _2003)));
              } else {
                _2011 = _1994;
              }
              _2014 = max(_2011, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _2401;
            do {
              float3 _2047;
              if (_1633) {
                _2047 = _1631 * rsqrt(_1632);
              } else {
                float _2029 = _508.z;
                float _2031 = (_2029 >= 0.0f) ? 1.0f : (-1.0f);
                float _2033 = (-1.0f) / (_2031 + _2029);
                float _2035 = _508.x;
                _2047 = float3(1.0f + (((_2031 * _2033) * _2035) * _2035), ((_2031 * _2035) * _680) * _2033, (-_2031) * _2035);
              }
              float3x3 _2050 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2047, cross(_508, _2047), _508));
              float3 _2051 = mul(_2050, _1660);
              float3 _2052 = mul(_2050, _1662);
              float3 _2053 = mul(_2050, _1664);
              float3 _2054 = mul(_2050, _1666);
              float _2055 = _2051.z;
              float _2058 = _2052.z;
              float _2062 = _2053.z;
              float _2066 = _2054.z;
              int _2070 = (((int(_2055 > 0.0f) | ((_2058 > 0.0f) ? 2 : 0)) | ((_2062 > 0.0f) ? 4 : 0)) | ((_2066 > 0.0f) ? 8 : 0));
              float3 _2307;
              float3 _2308;
              float3 _2309;
              float3 _2310;
              float3 _2311;
              int _2312;
              if (_2070 == 0) {
                _2307 = _2054;
                _2308 = _2053;
                _2309 = _2052;
                _2310 = _2051;
                _2311 = 0.0f.xxx;
                _2312 = 0;
              } else {
                float3 _2301;
                float3 _2302;
                float3 _2303;
                float3 _2304;
                float3 _2305;
                int _2306;
                if (_2070 == 1) {
                  _2301 = _2054;
                  _2302 = (_2051 * (-_2066)) + (_2054 * _2055);
                  _2303 = (_2051 * (-_2058)) + (_2052 * _2055);
                  _2304 = _2051;
                  _2305 = 0.0f.xxx;
                  _2306 = 3;
                } else {
                  float3 _2287;
                  float3 _2288;
                  float3 _2289;
                  float3 _2290;
                  float3 _2291;
                  int _2292;
                  if (_2070 == 2) {
                    _2287 = _2054;
                    _2288 = (_2052 * (-_2062)) + (_2053 * _2058);
                    _2289 = _2052;
                    _2290 = (_2052 * (-_2055)) + (_2051 * _2058);
                    _2291 = 0.0f.xxx;
                    _2292 = 3;
                  } else {
                    float3 _2273;
                    float3 _2274;
                    float3 _2275;
                    float3 _2276;
                    float3 _2277;
                    int _2278;
                    if (_2070 == 3) {
                      _2273 = (_2051 * (-_2066)) + (_2054 * _2055);
                      _2274 = (_2052 * (-_2062)) + (_2053 * _2058);
                      _2275 = _2052;
                      _2276 = _2051;
                      _2277 = 0.0f.xxx;
                      _2278 = 4;
                    } else {
                      float3 _2259;
                      float3 _2260;
                      float3 _2261;
                      float3 _2262;
                      float3 _2263;
                      int _2264;
                      if (_2070 == 4) {
                        _2259 = _2054;
                        _2260 = _2053;
                        _2261 = (_2053 * (-_2058)) + (_2052 * _2062);
                        _2262 = (_2053 * (-_2066)) + (_2054 * _2062);
                        _2263 = 0.0f.xxx;
                        _2264 = 3;
                      } else {
                        float3 _2245;
                        float3 _2246;
                        float3 _2247;
                        float3 _2248;
                        float3 _2249;
                        int _2250;
                        if (_2070 == 5) {
                          _2245 = _2054;
                          _2246 = _2053;
                          _2247 = _2052;
                          _2248 = _2051;
                          _2249 = 0.0f.xxx;
                          _2250 = 0;
                        } else {
                          float3 _2239;
                          float3 _2240;
                          float3 _2241;
                          float3 _2242;
                          float3 _2243;
                          int _2244;
                          if (_2070 == 6) {
                            _2239 = (_2053 * (-_2066)) + (_2054 * _2062);
                            _2240 = _2053;
                            _2241 = _2052;
                            _2242 = (_2052 * (-_2055)) + (_2051 * _2058);
                            _2243 = 0.0f.xxx;
                            _2244 = 4;
                          } else {
                            float3 _2225;
                            float3 _2226;
                            float3 _2227;
                            float3 _2228;
                            float3 _2229;
                            int _2230;
                            if (_2070 == 7) {
                              float _2218 = -_2066;
                              _2225 = (_2053 * _2218) + (_2054 * _2062);
                              _2226 = _2053;
                              _2227 = _2052;
                              _2228 = _2051;
                              _2229 = (_2051 * _2218) + (_2054 * _2055);
                              _2230 = 5;
                            } else {
                              float3 _2212;
                              float3 _2213;
                              float3 _2214;
                              float3 _2215;
                              float3 _2216;
                              int _2217;
                              if (_2070 == 8) {
                                _2212 = _2054;
                                _2213 = _2054;
                                _2214 = (_2054 * (-_2062)) + (_2053 * _2066);
                                _2215 = (_2054 * (-_2055)) + (_2051 * _2066);
                                _2216 = 0.0f.xxx;
                                _2217 = 3;
                              } else {
                                float3 _2198;
                                float3 _2199;
                                float3 _2200;
                                float3 _2201;
                                float3 _2202;
                                int _2203;
                                if (_2070 == 9) {
                                  _2198 = _2054;
                                  _2199 = (_2054 * (-_2062)) + (_2053 * _2066);
                                  _2200 = (_2051 * (-_2058)) + (_2052 * _2055);
                                  _2201 = _2051;
                                  _2202 = 0.0f.xxx;
                                  _2203 = 4;
                                } else {
                                  float3 _2184;
                                  float3 _2185;
                                  float3 _2186;
                                  float3 _2187;
                                  float3 _2188;
                                  int _2189;
                                  if (_2070 == 10) {
                                    _2184 = _2054;
                                    _2185 = _2053;
                                    _2186 = _2052;
                                    _2187 = _2051;
                                    _2188 = 0.0f.xxx;
                                    _2189 = 0;
                                  } else {
                                    float3 _2178;
                                    float3 _2179;
                                    float3 _2180;
                                    float3 _2181;
                                    float3 _2182;
                                    int _2183;
                                    if (_2070 == 11) {
                                      float _2171 = -_2062;
                                      _2178 = (_2054 * _2171) + (_2053 * _2066);
                                      _2179 = (_2052 * _2171) + (_2053 * _2058);
                                      _2180 = _2052;
                                      _2181 = _2051;
                                      _2182 = _2054;
                                      _2183 = 5;
                                    } else {
                                      float3 _2165;
                                      float3 _2166;
                                      float3 _2167;
                                      float3 _2168;
                                      float3 _2169;
                                      int _2170;
                                      if (_2070 == 12) {
                                        _2165 = _2054;
                                        _2166 = _2053;
                                        _2167 = (_2053 * (-_2058)) + (_2052 * _2062);
                                        _2168 = (_2054 * (-_2055)) + (_2051 * _2066);
                                        _2169 = 0.0f.xxx;
                                        _2170 = 4;
                                      } else {
                                        bool _2123 = _2070 == 13;
                                        float3 _2150;
                                        float3 _2151;
                                        float3 _2152;
                                        float3 _2153;
                                        int _2154;
                                        if (_2123) {
                                          float _2143 = -_2058;
                                          _2150 = (_2053 * _2143) + (_2052 * _2062);
                                          _2151 = (_2051 * _2143) + (_2052 * _2055);
                                          _2152 = _2051;
                                          _2153 = _2054;
                                          _2154 = 5;
                                        } else {
                                          float3 _2140;
                                          float3 _2141;
                                          int _2142;
                                          if (_2070 == 14) {
                                            float _2133 = -_2055;
                                            _2140 = (_2052 * _2133) + (_2051 * _2058);
                                            _2141 = (_2054 * _2133) + (_2051 * _2066);
                                            _2142 = 5;
                                          } else {
                                            _2140 = _2051;
                                            _2141 = 0.0f.xxx;
                                            _2142 = (_2070 == 15) ? 4 : 0;
                                          }
                                          _2150 = _2053;
                                          _2151 = _2052;
                                          _2152 = _2140;
                                          _2153 = _2141;
                                          _2154 = _2142;
                                        }
                                        bool3 _2155 = _2123.xxx;
                                        _2165 = float3(_2155.x ? _2053.x : _2054.x, _2155.y ? _2053.y : _2054.y, _2155.z ? _2053.z : _2054.z);
                                        _2166 = _2150;
                                        _2167 = _2151;
                                        _2168 = _2152;
                                        _2169 = _2153;
                                        _2170 = _2154;
                                      }
                                      _2178 = _2165;
                                      _2179 = _2166;
                                      _2180 = _2167;
                                      _2181 = _2168;
                                      _2182 = _2169;
                                      _2183 = _2170;
                                    }
                                    _2184 = _2178;
                                    _2185 = _2179;
                                    _2186 = _2180;
                                    _2187 = _2181;
                                    _2188 = _2182;
                                    _2189 = _2183;
                                  }
                                  _2198 = _2184;
                                  _2199 = _2185;
                                  _2200 = _2186;
                                  _2201 = _2187;
                                  _2202 = _2188;
                                  _2203 = _2189;
                                }
                                _2212 = _2198;
                                _2213 = _2199;
                                _2214 = _2200;
                                _2215 = _2201;
                                _2216 = _2202;
                                _2217 = _2203;
                              }
                              _2225 = _2212;
                              _2226 = _2213;
                              _2227 = _2214;
                              _2228 = _2215;
                              _2229 = _2216;
                              _2230 = _2217;
                            }
                            _2239 = _2225;
                            _2240 = _2226;
                            _2241 = _2227;
                            _2242 = _2228;
                            _2243 = _2229;
                            _2244 = _2230;
                          }
                          _2245 = _2239;
                          _2246 = _2240;
                          _2247 = _2241;
                          _2248 = _2242;
                          _2249 = _2243;
                          _2250 = _2244;
                        }
                        _2259 = _2245;
                        _2260 = _2246;
                        _2261 = _2247;
                        _2262 = _2248;
                        _2263 = _2249;
                        _2264 = _2250;
                      }
                      _2273 = _2259;
                      _2274 = _2260;
                      _2275 = _2261;
                      _2276 = _2262;
                      _2277 = _2263;
                      _2278 = _2264;
                    }
                    _2287 = _2273;
                    _2288 = _2274;
                    _2289 = _2275;
                    _2290 = _2276;
                    _2291 = _2277;
                    _2292 = _2278;
                  }
                  _2301 = _2287;
                  _2302 = _2288;
                  _2303 = _2289;
                  _2304 = _2290;
                  _2305 = _2291;
                  _2306 = _2292;
                }
                _2307 = _2301;
                _2308 = _2302;
                _2309 = _2303;
                _2310 = _2304;
                _2311 = _2305;
                _2312 = _2306;
              }
              bool3 _2314 = (_2312 == 3).xxx;
              bool3 _2317 = (_2312 == 4).xxx;
              if (_2312 == 0) {
                _2401 = 0.0f;
                break;
              }
              float3 _2322 = normalize(_2310);
              float3 _2323 = normalize(_2309);
              float3 _2324 = normalize(_2308);
              float3 _2325 = normalize(float3(_2314.x ? _2310.x : _2307.x, _2314.y ? _2310.y : _2307.y, _2314.z ? _2310.z : _2307.z));
              float3 _2326 = normalize(float3(_2317.x ? _2310.x : _2311.x, _2317.y ? _2310.y : _2311.y, _2317.z ? _2310.z : _2311.z));
              float _2328 = clamp(dot(_2322, _2323), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2332 = sqrt(1.0f - (_2328 * _2328));
              float _2340 = clamp(dot(_2323, _2324), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2344 = sqrt(1.0f - (_2340 * _2340));
              float _2353 = clamp(dot(_2324, _2325), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2357 = sqrt(1.0f - (_2353 * _2353));
              float _2364 = ((cross(_2322, _2323).z * ((_2332 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2328) / _2332))) + (cross(_2323, _2324).z * ((_2344 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2340) / _2344)))) + (cross(_2324, _2325).z * ((_2357 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2353) / _2357)));
              float _2381;
              if (_2312 >= 4) {
                float _2369 = clamp(dot(_2325, _2326), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2373 = sqrt(1.0f - (_2369 * _2369));
                _2381 = _2364 + (cross(_2325, _2326).z * ((_2373 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2369) / _2373)));
              } else {
                _2381 = _2364;
              }
              float _2398;
              if (_2312 == 5) {
                float _2386 = clamp(dot(_2326, _2322), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2390 = sqrt(1.0f - (_2386 * _2386));
                _2398 = _2381 + (cross(_2326, _2322).z * ((_2390 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2386) / _2390)));
              } else {
                _2398 = _2381;
              }
              _2401 = max(_2398, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _2404 = (_1480 & 2u) != 0u;
            uint _2408 = asuint(_30_m6[_1467].w);
            uint _2409 = asuint(_30_m6[_1473].w);
            float3 _2410 = _539 - _30_m6[_1458].xyz;
            float3 _2411 = abs(_2410);
            float _2412 = _2411.x;
            float _2413 = _2411.y;
            float _2415 = _2411.z;
            int _2448;
            if ((_2412 > _2413) && (_2412 > _2415)) {
              _2448 = int((_2410.x > 0.0f) ? (_2408 & 1023u) : ((_2408 >> 10u) & 1023u));
            } else {
              int _2440;
              if (_2413 > _2415) {
                _2440 = int((_2410.y > 0.0f) ? ((_2408 >> 20u) & 1023u) : (_2409 & 1023u));
              } else {
                _2440 = int((_2410.z > 0.0f) ? ((_2409 >> 10u) & 1023u) : ((_2409 >> 20u) & 1023u));
              }
              _2448 = _2440;
            }
            int _2451 = _2404 ? int(_30_m6[_1467].w) : ((_2448 == 1023) ? (-1) : _2448);
            uint _2460 = uint(_2451);
            uint _2462 = asuint(_34_m11.x) + (_2460 * 96u);
            uint _2464 = (_2462 + 64u) >> 2u;
            uint _2467 = _2464 + 1u;
            uint _2470 = _2464 + 2u;
            uint _2473 = _2464 + 3u;
            float4 _2477 = asfloat(uint4(_37.Load(_2464 * 4 + 0), _37.Load(_2467 * 4 + 0), _37.Load(_2470 * 4 + 0), _37.Load(_2473 * 4 + 0)));
            float _2809;
            do {
              uint _2493 = ((asuint(_34_m11.y) + (_2460 * 16u)) >> 2u) + 1u;
              if (_37.Load(_2493 * 4 + 0) > 0u) {
                float4 _457 = _1409;
                float _2508;
                do {
                  if (_37.Load(_2493 * 4 + 0) == 0u) {
                    _2508 = 1.0f;
                    break;
                  }
                  _2508 = _457[_37.Load(_2493 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2809 = _2508;
                break;
              }
              uint _2509 = _2462 >> 2u;
              uint _2524 = (_2462 + 16u) >> 2u;
              uint _2539 = (_2462 + 32u) >> 2u;
              uint _2554 = (_2462 + 48u) >> 2u;
              float4 _2574 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2509 * 4 + 0), _37.Load((_2509 + 1u) * 4 + 0), _37.Load((_2509 + 2u) * 4 + 0), _37.Load((_2509 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2524 * 4 + 0), _37.Load((_2524 + 1u) * 4 + 0), _37.Load((_2524 + 2u) * 4 + 0), _37.Load((_2524 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2539 * 4 + 0), _37.Load((_2539 + 1u) * 4 + 0), _37.Load((_2539 + 2u) * 4 + 0), _37.Load((_2539 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2554 * 4 + 0), _37.Load((_2554 + 1u) * 4 + 0), _37.Load((_2554 + 2u) * 4 + 0), _37.Load((_2554 + 3u) * 4 + 0))))), float4((_539 - ((_2410 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2410, _2410)))) * _2477.x)) + (_508 * (_2477.y * 5.0f)), 1.0f));
              float3 _2578 = _2574.xyz / _2574.w.xxx;
              uint _2580 = (_2462 + 80u) >> 2u;
              float4 _2593 = asfloat(uint4(_37.Load(_2580 * 4 + 0), _37.Load((_2580 + 1u) * 4 + 0), _37.Load((_2580 + 2u) * 4 + 0), _37.Load((_2580 + 3u) * 4 + 0)));
              float2 _2594 = _2578.xy;
              float2 _2596 = _2593.xy;
              float3 _2600 = _2578.xyz;
              bool3 _2601 = bool3(_2600.x <= 0.0f.xxx.x, _2600.y <= 0.0f.xxx.y, _2600.z <= 0.0f.xxx.z);
              bool3 _2602 = bool3(_2600.x >= 1.0f.xxx.x, _2600.y >= 1.0f.xxx.y, _2600.z >= 1.0f.xxx.z);
              float _2605 = _2578.z;
              float2 _2616 = ((_2594 * (_2593.zw - _2596)) + _2596).xy * _34_m10.zw;
              float2 _2618 = floor(_2616 + 0.5f.xx);
              float2 _2619 = _2616 - _2618;
              float _2620 = _2619.x;
              float _2621 = _2620 + 0.5f;
              float _2622 = _2621 * _2621;
              float _2625 = 1.0f - _2620;
              float _2626 = min(_2620, 0.0f);
              float _2629 = _2620 + 1.0f;
              float _2630 = max(_2620, 0.0f);
              float _2641 = _2619.y;
              float _2642 = _2641 + 0.5f;
              float _2643 = _2642 * _2642;
              float _2646 = 1.0f - _2641;
              float _2647 = min(_2641, 0.0f);
              float _2650 = _2641 + 1.0f;
              float _2651 = max(_2641, 0.0f);
              float3 _2663 = float3(0.1599999964237213134765625f * _2625, 0.1599999964237213134765625f * ((_2629 - (_2630 * _2630)) + 1.0f), _2622 * 0.07999999821186065673828125f);
              float3 _2664 = float3(0.1599999964237213134765625f * ((_2622 * 0.5f) - _2620), 0.1599999964237213134765625f * ((_2625 - (_2626 * _2626)) + 1.0f), 0.1599999964237213134765625f * _2629) + _2663;
              float3 _2666 = float3(0.1599999964237213134765625f * _2646, 0.1599999964237213134765625f * ((_2650 - (_2651 * _2651)) + 1.0f), _2643 * 0.07999999821186065673828125f);
              float3 _2667 = float3(0.1599999964237213134765625f * ((_2643 * 0.5f) - _2641), 0.1599999964237213134765625f * ((_2646 - (_2647 * _2647)) + 1.0f), 0.1599999964237213134765625f * _2650) + _2666;
              float3 _2673 = ((_2663 / _2664) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _2675 = ((_2666 / _2667) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _2677 = _2618 * _34_m10.xy;
              float _2678 = _2673.x;
              float _2679 = _2675.x;
              float _2682 = _2673.y;
              float _2685 = _2673.z;
              float _2688 = _2675.y;
              float _2695 = _2675.z;
              float _2702 = _2664.x;
              float _2703 = _2667.x;
              float _2705 = _2664.y;
              float _2707 = _2664.z;
              float _2709 = _2667.y;
              float _2713 = _2667.z;
              float _2771 = (((((((_2702 * _2703) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2678, _2679), _443).xy, _2605)) + ((_2705 * _2703) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2682, _2679), _443).xy, _2605))) + ((_2707 * _2703) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2685, _2679), _443).xy, _2605))) + ((_2702 * _2709) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2678, _2688), _443).xy, _2605))) + ((_2705 * _2709) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2682, _2688), _443).xy, _2605))) + ((_2707 * _2709) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2685, _2688), _443).xy, _2605))) + ((_2702 * _2713) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2678, _2695), _443).xy, _2605));
              float4 _2794 = asfloat(uint4(_37.Load(_2464 * 4 + 0), _37.Load(_2467 * 4 + 0), _37.Load(_2470 * 4 + 0), _37.Load(_2473 * 4 + 0)));
              float _2795 = _2794.w;
              float2 _2797 = min(_2594, 1.0f.xx - _2594);
              _2809 = lerp(1.0f, (any(bool3(_2601.x || _2602.x, _2601.y || _2602.y, _2601.z || _2602.z)) || ((asuint(_2605) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2771 + ((_2705 * _2713) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2682, _2695), _443).xy, _2605))) + ((_2707 * _2713) * _35.SampleCmpLevelZero(_16, float3(_2677 + float2(_2685, _2695), _443).xy, _2605))), _2404 ? min(_2795, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2794.z - _2574.w) * 0.25f, min(_2797.x, _2797.y)))) : _2795);
              break;
            } while (false);
            _2815 = ((_30_m6[_1455].xyz * (((((_1167 * _1620.x) + ((1.0f.xxx - _1167) * _1620.y)) * _2014) * _30_m6[_1476].z) + (_1163 * _2401))) * _1592) * ((_2451 >= 0) ? _2809 : 1.0f);
            break;
          } while (false);
          _4214 = _1415;
          _4215 = _2815 * _1555;
          break;
        }
        float _4212;
        float3 _4213;
        if (_30_m6[_1455].w < 1.5f) {
          float3 _3420 = float3(0.100000001490116119384765625f, _1159, 1.0f);
          float _3429 = (0.5f + (0.5f * _30_m6[_1461].y)) - abs(_30_m6[_1461].x);
          float _3430 = _30_m6[_1461].y - _3429;
          float _3434 = (1.0f - abs(_3429)) - abs(_3430);
          bool _3436 = _30_m6[_1461].x >= 0.0f;
          float _3437 = abs(max(_3434, 0.00048828125f));
          float3 _3441 = normalize(float3(_3429, _3430, _3436 ? _3437 : (-_3437)));
          float3 _3442 = _30_m6[_1458].xyz - _539;
          float _3443 = dot(_3442, _3442);
          float _3444 = rsqrt(_3443);
          float3 _3445 = _3442 * _3444;
          float _3449 = clamp(_30_m6[_1476].y * _3444, 0.0f, 1.0f);
          float _3452 = clamp(dot(_1094, _3445), 0.0f, 1.0f);
          int _3454 = int(_30_m6[_1476].w);
          float3 _3455 = _3441 * _30_m6[_1461].z;
          float3 _3456 = _3455 * 0.5f;
          float3 _3457 = _3442 - _3456;
          float3 _3458 = _3442 + _3456;
          bool _3460 = (_1559 & 1u) == 0u;
          bool _3463 = _3460 || ((_1480 & 2u) != 0u);
          bool _3466 = (!_3460) && (_30_m6[_1461].z > 0.0f);
          float _3485;
          float _3486;
          if (_3466) {
            float _3470 = length(_3457);
            float _3471 = length(_3458);
            _3485 = clamp(0.5f * ((dot(_1094, _3457) / _3470) + (dot(_1094, _3458) / _3471)), 0.0f, 1.0f);
            _3486 = 1.0f / ((((_3470 * _3471) + dot(_3457, _3458)) * 0.5f) + 1.0f);
          } else {
            _3485 = _3452;
            _3486 = 1.0f;
          }
          float _3508;
          if (_30_m6[_1473].w < 0.0f) {
            float _3502 = _3443 * (_30_m6[_1458].w * _30_m6[_1458].w);
            float _3505 = clamp(1.0f - (_3502 * _3502), 0.0f, 1.0f);
            _3508 = lerp(1.0f / (_3443 + 1.0f), _3486, float(_3466)) * (_3505 * _3505);
          } else {
            float3 _3491 = _3442 * _30_m6[_1458].w;
            _3508 = _3486 * pow(1.0f - clamp(dot(_3491, _3491), 0.0f, 1.0f), _30_m6[_1473].w);
          }
          float _3514 = clamp((dot(_3445, -_3441) - _30_m6[_1461].z) * _30_m6[_1461].w, 0.0f, 1.0f);
          float _3518 = _3508 * lerp(1.0f, _3514 * _3514, float(_3460));
          float _3618;
          if ((!_3466) && (_3454 >= 0)) {
            uint _3524 = uint(_3454);
            float2 _3611;
            [branch] if (_3460) {
              float4 _3601 = mul(_56_m1[_3524], _543);
              _3611 = _56_m0[_3524].xy + (clamp(_3601.xy / _3601.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_3524].zw);
            }
            else {
              float3 _3538 = mul(float4(-_3442, 0.0f), _56_m1[_3524]).xyz;
              float3 _452 = _3538;
              float3 _451 = _3538;
              float3 _450 = abs(_3538);
              uint _3547 = uint(int(_450.y > _450.x));
              uint _3553 = (_450.z > _450[_3547]) ? 2u : _3547;
              uint _3559 = (_3553 * 2u) + uint(_451[_3553] < 0.0f);
              float _3563 = abs(_452[_3559 / 2u]);
              float _3583 = 0.5f - (0.000244140625f / _56_m0[_3524].w);
              _3611 = _56_m0[_3524].xy + (clamp(float2((float(_3559) + ((((_452[uint(_397[_3559].x)] * _398[_3559].x) / _3563) * _3583) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_452[uint(_397[_3559].y)] * _398[_3559].y) / _3563) * _3583)), 0.0f.xx, 1.0f.xx) * _56_m0[_3524].zw);
            }
            _3618 = _3518 * _54.SampleLevel(_13, _3611, 0.0f).x;
          } else {
            _3618 = _3518;
          }
          bool _3619 = _3618 > 0.0f;
          float _4028;
          if (_3619) {
            int _3672;
            if (_3463) {
              _3672 = int(_30_m6[_1464].x);
            } else {
              uint _3627 = asuint(_30_m6[_1461].w);
              uint _3628 = asuint(_30_m6[_1464].x);
              float3 _3629 = _539 - _30_m6[_1458].xyz;
              float3 _3630 = abs(_3629);
              float _3631 = _3630.x;
              float _3632 = _3630.y;
              float _3634 = _3630.z;
              int _3667;
              if ((_3631 > _3632) && (_3631 > _3634)) {
                _3667 = int((_3629.x > 0.0f) ? (_3627 & 1023u) : ((_3627 >> 10u) & 1023u));
              } else {
                int _3659;
                if (_3632 > _3634) {
                  _3659 = int((_3629.y > 0.0f) ? ((_3627 >> 20u) & 1023u) : (_3628 & 1023u));
                } else {
                  _3659 = int((_3629.z > 0.0f) ? ((_3628 >> 10u) & 1023u) : ((_3628 >> 20u) & 1023u));
                }
                _3667 = _3659;
              }
              _3672 = (_3667 == 1023) ? (-1) : _3667;
            }
            uint _3677 = uint(_3672);
            uint _3679 = asuint(_34_m11.x) + (_3677 * 96u);
            uint _3681 = (_3679 + 64u) >> 2u;
            uint _3684 = _3681 + 1u;
            uint _3687 = _3681 + 2u;
            uint _3690 = _3681 + 3u;
            float4 _3694 = asfloat(uint4(_37.Load(_3681 * 4 + 0), _37.Load(_3684 * 4 + 0), _37.Load(_3687 * 4 + 0), _37.Load(_3690 * 4 + 0)));
            float _4026;
            do {
              uint _3710 = ((asuint(_34_m11.y) + (_3677 * 16u)) >> 2u) + 1u;
              if (_37.Load(_3710 * 4 + 0) > 0u) {
                float4 _449 = _1409;
                float _3725;
                do {
                  if (_37.Load(_3710 * 4 + 0) == 0u) {
                    _3725 = 1.0f;
                    break;
                  }
                  _3725 = _449[_37.Load(_3710 * 4 + 0) - 1u];
                  break;
                } while (false);
                _4026 = _3725;
                break;
              }
              uint _3726 = _3679 >> 2u;
              uint _3741 = (_3679 + 16u) >> 2u;
              uint _3756 = (_3679 + 32u) >> 2u;
              uint _3771 = (_3679 + 48u) >> 2u;
              float4 _3791 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3726 * 4 + 0), _37.Load((_3726 + 1u) * 4 + 0), _37.Load((_3726 + 2u) * 4 + 0), _37.Load((_3726 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3741 * 4 + 0), _37.Load((_3741 + 1u) * 4 + 0), _37.Load((_3741 + 2u) * 4 + 0), _37.Load((_3741 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3756 * 4 + 0), _37.Load((_3756 + 1u) * 4 + 0), _37.Load((_3756 + 2u) * 4 + 0), _37.Load((_3756 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3771 * 4 + 0), _37.Load((_3771 + 1u) * 4 + 0), _37.Load((_3771 + 2u) * 4 + 0), _37.Load((_3771 + 3u) * 4 + 0))))), float4((_539 - ((-_3445) * _3694.x)) + (_1094 * (_3694.y * 5.0f)), 1.0f));
              float3 _3795 = _3791.xyz / _3791.w.xxx;
              uint _3797 = (_3679 + 80u) >> 2u;
              float4 _3810 = asfloat(uint4(_37.Load(_3797 * 4 + 0), _37.Load((_3797 + 1u) * 4 + 0), _37.Load((_3797 + 2u) * 4 + 0), _37.Load((_3797 + 3u) * 4 + 0)));
              float2 _3811 = _3795.xy;
              float2 _3813 = _3810.xy;
              float3 _3817 = _3795.xyz;
              bool3 _3818 = bool3(_3817.x <= 0.0f.xxx.x, _3817.y <= 0.0f.xxx.y, _3817.z <= 0.0f.xxx.z);
              bool3 _3819 = bool3(_3817.x >= 1.0f.xxx.x, _3817.y >= 1.0f.xxx.y, _3817.z >= 1.0f.xxx.z);
              float _3822 = _3795.z;
              float2 _3833 = ((_3811 * (_3810.zw - _3813)) + _3813).xy * _34_m10.zw;
              float2 _3835 = floor(_3833 + 0.5f.xx);
              float2 _3836 = _3833 - _3835;
              float _3837 = _3836.x;
              float _3838 = _3837 + 0.5f;
              float _3839 = _3838 * _3838;
              float _3842 = 1.0f - _3837;
              float _3843 = min(_3837, 0.0f);
              float _3846 = _3837 + 1.0f;
              float _3847 = max(_3837, 0.0f);
              float _3858 = _3836.y;
              float _3859 = _3858 + 0.5f;
              float _3860 = _3859 * _3859;
              float _3863 = 1.0f - _3858;
              float _3864 = min(_3858, 0.0f);
              float _3867 = _3858 + 1.0f;
              float _3868 = max(_3858, 0.0f);
              float3 _3880 = float3(0.1599999964237213134765625f * _3842, 0.1599999964237213134765625f * ((_3846 - (_3847 * _3847)) + 1.0f), _3839 * 0.07999999821186065673828125f);
              float3 _3881 = float3(0.1599999964237213134765625f * ((_3839 * 0.5f) - _3837), 0.1599999964237213134765625f * ((_3842 - (_3843 * _3843)) + 1.0f), 0.1599999964237213134765625f * _3846) + _3880;
              float3 _3883 = float3(0.1599999964237213134765625f * _3863, 0.1599999964237213134765625f * ((_3867 - (_3868 * _3868)) + 1.0f), _3860 * 0.07999999821186065673828125f);
              float3 _3884 = float3(0.1599999964237213134765625f * ((_3860 * 0.5f) - _3858), 0.1599999964237213134765625f * ((_3863 - (_3864 * _3864)) + 1.0f), 0.1599999964237213134765625f * _3867) + _3883;
              float3 _3890 = ((_3880 / _3881) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _3892 = ((_3883 / _3884) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _3894 = _3835 * _34_m10.xy;
              float _3895 = _3890.x;
              float _3896 = _3892.x;
              float _3899 = _3890.y;
              float _3902 = _3890.z;
              float _3905 = _3892.y;
              float _3912 = _3892.z;
              float _3919 = _3881.x;
              float _3920 = _3884.x;
              float _3922 = _3881.y;
              float _3924 = _3881.z;
              float _3926 = _3884.y;
              float _3930 = _3884.z;
              float _3988 = (((((((_3919 * _3920) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3895, _3896), _443).xy, _3822)) + ((_3922 * _3920) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3899, _3896), _443).xy, _3822))) + ((_3924 * _3920) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3902, _3896), _443).xy, _3822))) + ((_3919 * _3926) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3895, _3905), _443).xy, _3822))) + ((_3922 * _3926) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3899, _3905), _443).xy, _3822))) + ((_3924 * _3926) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3902, _3905), _443).xy, _3822))) + ((_3919 * _3930) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3895, _3912), _443).xy, _3822));
              float4 _4011 = asfloat(uint4(_37.Load(_3681 * 4 + 0), _37.Load(_3684 * 4 + 0), _37.Load(_3687 * 4 + 0), _37.Load(_3690 * 4 + 0)));
              float _4012 = _4011.w;
              float2 _4014 = min(_3811, 1.0f.xx - _3811);
              _4026 = lerp(1.0f, (any(bool3(_3818.x || _3819.x, _3818.y || _3819.y, _3818.z || _3819.z)) || ((asuint(_3822) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3988 + ((_3922 * _3930) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3899, _3912), _443).xy, _3822))) + ((_3924 * _3930) * _35.SampleCmpLevelZero(_16, float3(_3894 + float2(_3902, _3912), _443).xy, _3822))), _3463 ? min(_4012, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4011.z - _3791.w) * 0.25f, min(_4014.x, _4014.y)))) : _4012);
              break;
            } while (false);
            _4028 = (_3672 >= 0) ? _4026 : 1.0f;
          } else {
            _4028 = 1.0f;
          }
          float3 _4052;
          float3 _4053;
          if (_3466) {
            float3 _4031 = _3420 * _3420;
            float3 _4032 = reflect(_567, _1094);
            float _4041 = dot(_4032, _3455);
            _4052 = _4031 / clamp(_4031 + (0.5f * clamp(_30_m6[_1461].z * _3444, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4053 = normalize(_3457 + (_3455 * clamp(dot(_3457, (_4032 * _4041) - _3455) / ((_30_m6[_1461].z * _30_m6[_1461].z) - (_4041 * _4041)), 0.0f, 1.0f)));
          } else {
            _4052 = 1.0f.xxx;
            _4053 = _3445;
          }
          float3 _4054 = _4053 + _565;
          float3 _4058 = _4054 * rsqrt(max(6.103515625e-05f, dot(_4054, _4054)));
          float _4060 = abs(max(_3434, 5.9604644775390625e-08f));
          float3 _4066 = (normalize(float3(_3429, _3430, _3436 ? _4060 : (-_4060))) * _30_m6[_1461].z) * 0.5f;
          float3 _4067 = _3442 - _4066;
          float3 _4068 = _3442 + _4066;
          float _4080;
          if (_3466) {
            _4080 = clamp(0.5f * ((dot(_1094, _4067) / length(_4067)) + (dot(_1094, _4068) / length(_4068))), 0.0f, 1.0f);
          } else {
            _4080 = _3452;
          }
          float3 _4211;
          if (_3619) {
            float _4083 = clamp(_3485, 0.0f, 1.0f);
            float _4085 = clamp(dot(_1094, _4058), 0.0f, 1.0f);
            float _4087 = clamp(dot(_565, _4058), 0.0f, 1.0f);
            float _4088 = clamp(_1168, 0.0f, 1.0f);
            float _4098;
            if (_3449 > 0.0f) {
              _4098 = clamp(_1170 + ((_3449 * _3449) / ((_4087 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4098 = _1170;
            }
            float _4099 = _4098 * _4098;
            float _4120 = (((_4085 * _4099) - _4085) * _4085) + 1.0f;
            float _4125 = 1.0f - _4087;
            float _4126 = _4125 * _4125;
            float _4128 = (_4125 * _4126) * _4126;
            float _4152 = 1.0f - _1159;
            float _4159 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4152 * (1.04997003078460693359375f + (_4152 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4152))))));
            float _4160 = 1.0f - _4159;
            float3 _4163 = _1167 + ((1.0f.xxx - _1167) * 0.0476190485060214996337890625f);
            float3 _4207;
            do {
              [branch] if (((_486 > 0u) && (_486 <= 15u)) && (_511 > 0.0f)) {
                uint _4191 = clamp(_486 - 1u, 0u, 14u);
                _4207 = _49.SampleLevel(_13, float3((dot(_508, _4053) * 0.5f) + 0.5f, _511 * _52_m0[_4191].w, float(_4191)), 0.0f).xyz;
                break;
              }
              _4207 = _4080.xxx;
              break;
            } while (false);
            float3 _4210 = ((clamp((min(((_1167 * (1.0f - _4128)) + _4128.xxx) * (((_4099 / (_4120 * _4120)) * _4052.y) * (0.5f / (((_4083 * sqrt(((((-_4088) * _4099) + _4088) * _4088) + _4099)) + (_4088 * sqrt(((((-_4083) * _4099) + _4083) * _4083) + _4099))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4163 * (((_48.SampleLevel(_13, (float2(_4088, _1159) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_4083, _1159) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4159) / _4160)) * _4163) / (1.0f.xxx - (_4163 * _4160)))) * _30_m6[_1476].z, 0.0f.xxx, 1000.0f.xxx) * _3485) + ((_1163 * _4052.z) * _4207)) * (((_30_m6[_1455].xyz * _3618) * _4028) * _1555);
            _4211 = _4210;
          } else {
            _4211 = 0.0f.xxx;
          }
          _4212 = _1415;
          _4213 = _4211;
        } else {
          float _3418;
          do {
            if (_1562) {
              _3418 = 1.0f;
              break;
            }
            float _2832 = (0.5f + (0.5f * _30_m6[_1461].y)) - abs(_30_m6[_1461].x);
            float _2833 = _30_m6[_1461].y - _2832;
            float _2840 = abs(max((1.0f - abs(_2832)) - abs(_2833), 0.00048828125f));
            float3 _2844 = normalize(float3(_2832, _2833, (_30_m6[_1461].x >= 0.0f) ? _2840 : (-_2840)));
            float3 _2845 = _30_m6[_1458].xyz - _539;
            float _2846 = dot(_2845, _2845);
            float3 _2848 = _2845 * rsqrt(_2846);
            int _2851 = int(_30_m6[_1476].w);
            float3 _2853 = (_2844 * _30_m6[_1461].z) * 0.5f;
            float3 _2854 = _2845 - _2853;
            float3 _2855 = _2845 + _2853;
            bool _2857 = (_1559 & 1u) == 0u;
            bool _2860 = _2857 || ((_1480 & 2u) != 0u);
            bool _2863 = (!_2857) && (_30_m6[_1461].z > 0.0f);
            float _2875;
            if (_2863) {
              _2875 = 1.0f / ((((length(_2854) * length(_2855)) + dot(_2854, _2855)) * 0.5f) + 1.0f);
            } else {
              _2875 = 1.0f;
            }
            float _2897;
            if (_30_m6[_1473].w < 0.0f) {
              float _2891 = _2846 * (_30_m6[_1458].w * _30_m6[_1458].w);
              float _2894 = clamp(1.0f - (_2891 * _2891), 0.0f, 1.0f);
              _2897 = lerp(1.0f / (_2846 + 1.0f), _2875, float(_2863)) * (_2894 * _2894);
            } else {
              float3 _2880 = _2845 * _30_m6[_1458].w;
              _2897 = _2875 * pow(1.0f - clamp(dot(_2880, _2880), 0.0f, 1.0f), _30_m6[_1473].w);
            }
            float _2903 = clamp((dot(_2848, -_2844) - _30_m6[_1461].z) * _30_m6[_1461].w, 0.0f, 1.0f);
            float _2907 = _2897 * lerp(1.0f, _2903 * _2903, float(_2857));
            float _3007;
            if ((!_2863) && (_2851 >= 0)) {
              uint _2913 = uint(_2851);
              float2 _3000;
              [branch] if (_2857) {
                float4 _2990 = mul(_56_m1[_2913], _543);
                _3000 = _56_m0[_2913].xy + (clamp(_2990.xy / _2990.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_2913].zw);
              }
              else {
                float3 _2927 = mul(float4(-_2845, 0.0f), _56_m1[_2913]).xyz;
                float3 _456 = _2927;
                float3 _455 = _2927;
                float3 _454 = abs(_2927);
                uint _2936 = uint(int(_454.y > _454.x));
                uint _2942 = (_454.z > _454[_2936]) ? 2u : _2936;
                uint _2948 = (_2942 * 2u) + uint(_455[_2942] < 0.0f);
                float _2952 = abs(_456[_2948 / 2u]);
                float _2972 = 0.5f - (0.000244140625f / _56_m0[_2913].w);
                _3000 = _56_m0[_2913].xy + (clamp(float2((float(_2948) + ((((_456[uint(_397[_2948].x)] * _398[_2948].x) / _2952) * _2972) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_456[uint(_397[_2948].y)] * _398[_2948].y) / _2952) * _2972)), 0.0f.xx, 1.0f.xx) * _56_m0[_2913].zw);
              }
              _3007 = _2907 * _54.SampleLevel(_13, _3000, 0.0f).x;
            } else {
              _3007 = _2907;
            }
            float _3417;
            if (_3007 > 0.0f) {
              int _3061;
              if (_2860) {
                _3061 = int(_30_m6[_1464].x);
              } else {
                uint _3016 = asuint(_30_m6[_1461].w);
                uint _3017 = asuint(_30_m6[_1464].x);
                float3 _3018 = _539 - _30_m6[_1458].xyz;
                float3 _3019 = abs(_3018);
                float _3020 = _3019.x;
                float _3021 = _3019.y;
                float _3023 = _3019.z;
                int _3056;
                if ((_3020 > _3021) && (_3020 > _3023)) {
                  _3056 = int((_3018.x > 0.0f) ? (_3016 & 1023u) : ((_3016 >> 10u) & 1023u));
                } else {
                  int _3048;
                  if (_3021 > _3023) {
                    _3048 = int((_3018.y > 0.0f) ? ((_3016 >> 20u) & 1023u) : (_3017 & 1023u));
                  } else {
                    _3048 = int((_3018.z > 0.0f) ? ((_3017 >> 10u) & 1023u) : ((_3017 >> 20u) & 1023u));
                  }
                  _3056 = _3048;
                }
                _3061 = (_3056 == 1023) ? (-1) : _3056;
              }
              uint _3066 = uint(_3061);
              uint _3068 = asuint(_34_m11.x) + (_3066 * 96u);
              uint _3070 = (_3068 + 64u) >> 2u;
              uint _3073 = _3070 + 1u;
              uint _3076 = _3070 + 2u;
              uint _3079 = _3070 + 3u;
              float4 _3083 = asfloat(uint4(_37.Load(_3070 * 4 + 0), _37.Load(_3073 * 4 + 0), _37.Load(_3076 * 4 + 0), _37.Load(_3079 * 4 + 0)));
              float _3415;
              do {
                uint _3099 = ((asuint(_34_m11.y) + (_3066 * 16u)) >> 2u) + 1u;
                if (_37.Load(_3099 * 4 + 0) > 0u) {
                  float4 _453 = _1409;
                  float _3114;
                  do {
                    if (_37.Load(_3099 * 4 + 0) == 0u) {
                      _3114 = 1.0f;
                      break;
                    }
                    _3114 = _453[_37.Load(_3099 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _3415 = _3114;
                  break;
                }
                uint _3115 = _3068 >> 2u;
                uint _3130 = (_3068 + 16u) >> 2u;
                uint _3145 = (_3068 + 32u) >> 2u;
                uint _3160 = (_3068 + 48u) >> 2u;
                float4 _3180 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3115 * 4 + 0), _37.Load((_3115 + 1u) * 4 + 0), _37.Load((_3115 + 2u) * 4 + 0), _37.Load((_3115 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3130 * 4 + 0), _37.Load((_3130 + 1u) * 4 + 0), _37.Load((_3130 + 2u) * 4 + 0), _37.Load((_3130 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3145 * 4 + 0), _37.Load((_3145 + 1u) * 4 + 0), _37.Load((_3145 + 2u) * 4 + 0), _37.Load((_3145 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3160 * 4 + 0), _37.Load((_3160 + 1u) * 4 + 0), _37.Load((_3160 + 2u) * 4 + 0), _37.Load((_3160 + 3u) * 4 + 0))))), float4((_539 - ((-_2848) * _3083.x)) + (_508 * (_3083.y * 5.0f)), 1.0f));
                float3 _3184 = _3180.xyz / _3180.w.xxx;
                uint _3186 = (_3068 + 80u) >> 2u;
                float4 _3199 = asfloat(uint4(_37.Load(_3186 * 4 + 0), _37.Load((_3186 + 1u) * 4 + 0), _37.Load((_3186 + 2u) * 4 + 0), _37.Load((_3186 + 3u) * 4 + 0)));
                float2 _3200 = _3184.xy;
                float2 _3202 = _3199.xy;
                float3 _3206 = _3184.xyz;
                bool3 _3207 = bool3(_3206.x <= 0.0f.xxx.x, _3206.y <= 0.0f.xxx.y, _3206.z <= 0.0f.xxx.z);
                bool3 _3208 = bool3(_3206.x >= 1.0f.xxx.x, _3206.y >= 1.0f.xxx.y, _3206.z >= 1.0f.xxx.z);
                float _3211 = _3184.z;
                float2 _3222 = ((_3200 * (_3199.zw - _3202)) + _3202).xy * _34_m10.zw;
                float2 _3224 = floor(_3222 + 0.5f.xx);
                float2 _3225 = _3222 - _3224;
                float _3226 = _3225.x;
                float _3227 = _3226 + 0.5f;
                float _3228 = _3227 * _3227;
                float _3231 = 1.0f - _3226;
                float _3232 = min(_3226, 0.0f);
                float _3235 = _3226 + 1.0f;
                float _3236 = max(_3226, 0.0f);
                float _3247 = _3225.y;
                float _3248 = _3247 + 0.5f;
                float _3249 = _3248 * _3248;
                float _3252 = 1.0f - _3247;
                float _3253 = min(_3247, 0.0f);
                float _3256 = _3247 + 1.0f;
                float _3257 = max(_3247, 0.0f);
                float3 _3269 = float3(0.1599999964237213134765625f * _3231, 0.1599999964237213134765625f * ((_3235 - (_3236 * _3236)) + 1.0f), _3228 * 0.07999999821186065673828125f);
                float3 _3270 = float3(0.1599999964237213134765625f * ((_3228 * 0.5f) - _3226), 0.1599999964237213134765625f * ((_3231 - (_3232 * _3232)) + 1.0f), 0.1599999964237213134765625f * _3235) + _3269;
                float3 _3272 = float3(0.1599999964237213134765625f * _3252, 0.1599999964237213134765625f * ((_3256 - (_3257 * _3257)) + 1.0f), _3249 * 0.07999999821186065673828125f);
                float3 _3273 = float3(0.1599999964237213134765625f * ((_3249 * 0.5f) - _3247), 0.1599999964237213134765625f * ((_3252 - (_3253 * _3253)) + 1.0f), 0.1599999964237213134765625f * _3256) + _3272;
                float3 _3279 = ((_3269 / _3270) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
                float3 _3281 = ((_3272 / _3273) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
                float2 _3283 = _3224 * _34_m10.xy;
                float _3284 = _3279.x;
                float _3285 = _3281.x;
                float _3288 = _3279.y;
                float _3291 = _3279.z;
                float _3294 = _3281.y;
                float _3301 = _3281.z;
                float _3308 = _3270.x;
                float _3309 = _3273.x;
                float _3311 = _3270.y;
                float _3313 = _3270.z;
                float _3315 = _3273.y;
                float _3319 = _3273.z;
                float _3377 = (((((((_3308 * _3309) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3284, _3285), _443).xy, _3211)) + ((_3311 * _3309) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3288, _3285), _443).xy, _3211))) + ((_3313 * _3309) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3291, _3285), _443).xy, _3211))) + ((_3308 * _3315) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3284, _3294), _443).xy, _3211))) + ((_3311 * _3315) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3288, _3294), _443).xy, _3211))) + ((_3313 * _3315) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3291, _3294), _443).xy, _3211))) + ((_3308 * _3319) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3284, _3301), _443).xy, _3211));
                float4 _3400 = asfloat(uint4(_37.Load(_3070 * 4 + 0), _37.Load(_3073 * 4 + 0), _37.Load(_3076 * 4 + 0), _37.Load(_3079 * 4 + 0)));
                float _3401 = _3400.w;
                float2 _3403 = min(_3200, 1.0f.xx - _3200);
                _3415 = lerp(1.0f, (any(bool3(_3207.x || _3208.x, _3207.y || _3208.y, _3207.z || _3208.z)) || ((asuint(_3211) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3377 + ((_3311 * _3319) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3288, _3301), _443).xy, _3211))) + ((_3313 * _3319) * _35.SampleCmpLevelZero(_16, float3(_3283 + float2(_3291, _3301), _443).xy, _3211))), _2860 ? min(_3401, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3400.z - _3180.w) * 0.25f, min(_3403.x, _3403.y)))) : _3401);
                break;
              } while (false);
              _3417 = (_3061 >= 0) ? _3415 : 1.0f;
            } else {
              _3417 = 1.0f;
            }
            _3418 = _3417;
            break;
          } while (false);
          _4212 = _1415 * _3418;
          _4213 = 0.0f.xxx;
        }
        _4214 = _4212;
        _4215 = _4213;
        break;
      } while (false);
      _1440 = _4214;
      _1443 = _1442 + _4215;
    }
    _1412 = _1411 + _1442;
  }
  float3 _4219 = _1380.xyz + (_1411 * _1414);
  float3 _4221 = _475.xxx;
  float3 _4258;
  float3 _4259;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x59DB9BA2:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _4234 = min(_22.SampleBias(_12, _4, _9_m16).x, _475);
    _4258 = clamp((pow(abs(max(0.0f, dot(_508, _565)) + _4234), exp2(((-16.0f) * _1159) - 1.0f)) - 1.0f) + _4234, 0.0f, 1.0f).xxx;
    _4259 = max(_4234.xxx, ((((((_1163 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _4234) + ((_1163 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _4234) + ((_1163 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _4234);
  }
  else {
    _4258 = _4221;
    _4259 = _4221;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _4219 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _4258 : 1.0f.xxx;
  // RenoDX code end
  float3 _4282;
  do {
    [branch] if (((_486 > 0u) && (_486 <= 15u)) && (_511 > 0.0f)) {
      uint _4270 = clamp(_486 - 1u, 0u, 14u);
      _4282 = _50.SampleLevel(_13, float3(_511 * _52_m0[_4270].w, 0.5f, float(_4270)), 0.0f).xyz;
      break;
    }
    _4282 = 1.0f.xxx;
    break;
  } while (false);
  float3 _4299 = (_539 + (_508 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_514 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _4309 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _4318 = _4299 - (_9_m108.xyz + (_4309 * (-_9_m110.w)));
  float _4333 = max(min(max((max(abs(_4318.x), abs(_4318.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4318.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _4635;
  float4 _4636;
  float4 _4637;
  float _4638;
  float _4639;
  if ((_9_m108.w != 0.0f) && (_4333 < 1.0f)) {
    float3 _4346 = _4299 - (_9_m108.xyz + (_4309 * (-_9_m110.y)));
    float _4360 = max(clamp((max(abs(_4346.x), abs(_4346.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4346.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _4436;
    float4 _4437;
    float4 _4438;
    float4 _4439;
    if (_4360 < 1.0f) {
      float3 _4369 = ((_4299 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4371 = _4369 - floor(_4369);
      float4 _4375 = _66.SampleLevel(_14, _4371, 0.0f);
      float _4376 = 1.0f - _4360;
      float _4380 = _9_m109.y * 0.5f;
      float _4385 = _4371.x;
      float _4386 = clamp(_4371.y, _4380, 1.0f - _4380) * 0.3333333432674407958984375f;
      float _4387 = _4371.z;
      float4 _4390 = _67.SampleLevel(_13, float3(_4385, _4386, _4387), 0.0f);
      float _4406 = _4375.x;
      float _4416 = _4375.y;
      float _4426 = _4375.z;
      _4436 = _4333 + (_4390.w * _4376);
      _4437 = float4(((_67.SampleLevel(_13, float3(_4385, _4386 + 0.666666686534881591796875f, _4387), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4426, _4426) * _4376;
      _4438 = float4(((_67.SampleLevel(_13, float3(_4385, _4386 + 0.3333333432674407958984375f, _4387), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4416, _4416) * _4376;
      _4439 = float4(((_4390.xyz * 4.0f) - 2.0f.xxx) * _4406, _4406) * _4376;
    } else {
      _4436 = _4333;
      _4437 = 0.0f.xxxx;
      _4438 = 0.0f.xxxx;
      _4439 = 0.0f.xxxx;
    }
    float3 _4445 = _4299 - (_9_m108.xyz + (_4309 * (-_9_m110.z)));
    float _4459 = max(clamp((max(abs(_4445.x), abs(_4445.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4445.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _4539;
    float4 _4540;
    float4 _4541;
    float4 _4542;
    if (_4459 < 1.0f) {
      float3 _4468 = ((_4299 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4470 = _4468 - floor(_4468);
      float4 _4474 = _68.SampleLevel(_14, _4470, 0.0f);
      float _4476 = _4360 * (1.0f - _4459);
      float _4480 = _9_m109.y * 0.5f;
      float _4485 = _4470.x;
      float _4486 = clamp(_4470.y, _4480, 1.0f - _4480) * 0.3333333432674407958984375f;
      float _4487 = _4470.z;
      float4 _4490 = _69.SampleLevel(_13, float3(_4485, _4486, _4487), 0.0f);
      float _4506 = _4474.x;
      float _4517 = _4474.y;
      float _4528 = _4474.z;
      _4539 = _4436 + (_4490.w * _4476);
      _4540 = _4437 + (float4(((_69.SampleLevel(_13, float3(_4485, _4486 + 0.666666686534881591796875f, _4487), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4528, _4528) * _4476);
      _4541 = _4438 + (float4(((_69.SampleLevel(_13, float3(_4485, _4486 + 0.3333333432674407958984375f, _4487), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4517, _4517) * _4476);
      _4542 = _4439 + (float4(((_4490.xyz * 4.0f) - 2.0f.xxx) * _4506, _4506) * _4476);
    } else {
      _4539 = _4436;
      _4540 = _4437;
      _4541 = _4438;
      _4542 = _4439;
    }
    float4 _4625;
    float4 _4626;
    float4 _4627;
    float _4628;
    if (_4459 > 0.0f) {
      float3 _4551 = ((_4299 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4554 = _9_m109.xyz * 0.5f;
      float3 _4556 = clamp(_4551 - floor(_4551), _4554, 1.0f.xxx - _4554);
      float4 _4560 = _70.SampleLevel(_14, _4556, 0.0f);
      float _4562 = _4459 * (1.0f - _4333);
      float _4566 = _9_m109.y * 0.5f;
      float _4571 = _4556.x;
      float _4572 = clamp(_4556.y, _4566, 1.0f - _4566) * 0.3333333432674407958984375f;
      float _4573 = _4556.z;
      float4 _4576 = _71.SampleLevel(_13, float3(_4571, _4572, _4573), 0.0f);
      float _4592 = _4560.x;
      float _4603 = _4560.y;
      float _4614 = _4560.z;
      _4625 = _4540 + (float4(((_71.SampleLevel(_13, float3(_4571, _4572 + 0.666666686534881591796875f, _4573), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4614, _4614) * _4562);
      _4626 = _4541 + (float4(((_71.SampleLevel(_13, float3(_4571, _4572 + 0.3333333432674407958984375f, _4573), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4603, _4603) * _4562);
      _4627 = _4542 + (float4(((_4576.xyz * 4.0f) - 2.0f.xxx) * _4592, _4592) * _4562);
      _4628 = _4539 + (_4576.w * _4562);
    } else {
      _4625 = _4540;
      _4626 = _4541;
      _4627 = _4542;
      _4628 = _4539;
    }
    float _4631 = clamp((_4628 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _4635 = _4625;
    _4636 = _4626;
    _4637 = _4627;
    _4638 = _4631 - _4333;
    _4639 = (_4631 + _4333) * 0.5f;
  } else {
    _4635 = 0.0f.xxxx;
    _4636 = 0.0f.xxxx;
    _4637 = 0.0f.xxxx;
    _4638 = 0.0f;
    _4639 = 1.0f;
  }
  float4 _4659 = _4637 + float4(_9_m111.x * _4639, (_9_m111.y * _4639) + ((_9_m111.w * _4638) * 0.5f), _9_m111.z * _4639, (_9_m111.w * _4639) + ((_9_m111.y * _4638) * 0.375f));
  float4 _4679 = _4636 + float4(_9_m112.x * _4639, (_9_m112.y * _4639) + ((_9_m112.w * _4638) * 0.5f), _9_m112.z * _4639, (_9_m112.w * _4639) + ((_9_m112.y * _4638) * 0.375f));
  float4 _4699 = _4635 + float4(_9_m113.x * _4639, (_9_m113.y * _4639) + ((_9_m113.w * _4638) * 0.5f), _9_m113.z * _4639, (_9_m113.w * _4639) + ((_9_m113.y * _4638) * 0.375f));
  float4 _4857;
  float4 _4858;
  float4 _4859;
  [branch] if (all(bool2(_527.x >= 0.0f.xx.x, _527.y >= 0.0f.xx.y))) {
    float4 _4707 = _65.SampleLevel(_13, _527, 0.0f);
    float4 _4708 = abs(_4707);
    float4 _4854;
    float4 _4855;
    float4 _4856;
    [branch] if (any(bool4(_4708.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4708.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4708.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4708.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4714 = length(_4707.yzw);
      uint _4716;
      float _4719;
      _4716 = 0u;
      _4719 = 1.0f;
      for (float _4721 = _4714; _4721 > 4.599999904632568359375f;) {
        _4716++;
        _4719 *= 0.5f;
        _4721 *= 0.5f;
        continue;
      }
      float4 _4725 = _4707 * _4719;
      float4 _4730 = float4(0.0f, _4725.yzw);
      float2 _4752 = (_64.SampleLevel(_13, float2(((((length(_4730) * _63_m3.x) + _63_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _63_m2.xy) + _63_m2.zw;
      float4 _4766;
      _4766 = float4(_4752.x * 3.5449078083038330078125f, _4730.yzw * _4752.y) * exp(_4725.x * 0.282094776630401611328125f);
      for (uint _4769 = 0u; _4769 < _4716;) {
        _4766 = mul(float4x4(_4766, float4(_4766.yx, 0.0f, 0.0f), float4(_4766.z, 0.0f, _4766.x, 0.0f), float4(_4766.w, 0.0f, 0.0f, _4766.x)) * 0.282094776630401611328125f, _4766);
        _4769++;
        continue;
      }
      float4x4 _4790 = float4x4(_4766, float4(_4766.yx, 0.0f, 0.0f), float4(_4766.z, 0.0f, _4766.x, 0.0f), float4(_4766.w, 0.0f, 0.0f, _4766.x)) * 0.282094776630401611328125f;
      float4 _4800 = mul(_4790, float4(_4659.w * 1.1283791065216064453125f, _4659.y * (-0.977204978466033935546875f), _4659.z * 0.977204978466033935546875f, _4659.x * (-0.977204978466033935546875f)));
      float4 _4820 = mul(_4790, float4(_4679.w * 1.1283791065216064453125f, _4679.y * (-0.977204978466033935546875f), _4679.z * 0.977204978466033935546875f, _4679.x * (-0.977204978466033935546875f)));
      float4 _4840 = mul(_4790, float4(_4699.w * 1.1283791065216064453125f, _4699.y * (-0.977204978466033935546875f), _4699.z * 0.977204978466033935546875f, _4699.x * (-0.977204978466033935546875f)));
      _4854 = float4(_4800.x * 0.886226952075958251953125f, _4800.w * (-1.02332675457000732421875f), _4800.y * (-1.02332675457000732421875f), _4800.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4855 = float4(_4820.x * 0.886226952075958251953125f, _4820.w * (-1.02332675457000732421875f), _4820.y * (-1.02332675457000732421875f), _4820.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4856 = float4(_4840.x * 0.886226952075958251953125f, _4840.w * (-1.02332675457000732421875f), _4840.y * (-1.02332675457000732421875f), _4840.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4854 = _4659;
      _4855 = _4679;
      _4856 = _4699;
    }
    _4857 = _4854;
    _4858 = _4855;
    _4859 = _4856;
  }
  else {
    _4857 = _4659;
    _4858 = _4679;
    _4859 = _4699;
  }
  float _4866 = max(0.0f, dot(_4857.xyz * _4282.x, _508) + _4857.w);
  float _4873 = max(0.0f, dot(_4858.xyz * _4282.y, _508) + _4858.w);
  float _4880 = max(0.0f, dot(_4859.xyz * _4282.z, _508) + _4859.w);
  float3 _4890 = reflect(_567, _1094);
  float _4898 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1159, 0.001000000047497451305389404296875f))));
  float2 _4902 = floor(_514 * _28_m0.w);
  float _4919 = floor(_546 - _28_m2.y);
  float _4923 = clamp(_4919, 0.0f, _28_m1.x - 1.0f);
  uint _4933 = (_4919 <= _4923) ? (_25.Load(uint(_9_m21.z + int(_4902.x + (_4902.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_4923)) * 4 + 0)) : 0u;
  float _4936 = dot(float4(_4866, _4873, _4880, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4938;
  float _4941;
  uint _4943;
  _4938 = 0.0f.xxx;
  _4941 = 1.0f;
  _4943 = _4933;
  uint _4944;
  float3 _4939;
  float _4942;
  bool _4946;
  [loop] for (;;) {
    bool _4945 = _4943 != 0u;
    _4946 = _4941 > 0.00999999977648258209228515625f;
    if (_4945 && _4946) {
      uint _4950 = firstbitlow(_4943);
      _4944 = _4943 ^ (1u << (_4950 & 31u));
      float3 _4970 = float3(dot(_28_m4[_4950]._m2, _543), dot(_28_m4[_4950]._m3, _543), dot(_28_m4[_4950]._m4, _543));
      float3 _4971 = abs(_4970);
      if (all(bool3(_4971.x <= _28_m4[_4950]._m1.xyz.x, _4971.y <= _28_m4[_4950]._m1.xyz.y, _4971.z <= _28_m4[_4950]._m1.xyz.z))) {
        float3 _4980 = _28_m4[_4950]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4982 = _4971 * 0.100000001490116119384765625f;
        float3 _4983 = _4982 * _4982;
        float3 _4986 = (_28_m4[_4950]._m1.xyz - _4971) * _28_m4[_4950]._m5.xyz;
        float3 _5034;
        [branch] if (_28_m4[_4950]._m6.x == 1.0f) {
          float3 _5019 = float3(dot(_28_m4[_4950]._m2.xyz, _4890), dot(_28_m4[_4950]._m3.xyz, _4890), dot(_28_m4[_4950]._m4.xyz, _4890));
          float3 _5021 = (_28_m4[_4950]._m1.xyz - _4970) / _5019;
          float3 _5024 = ((-_28_m4[_4950]._m1.xyz) - _4970) / _5019;
          bool3 _5025 = bool3(_5019.x > 0.0f.xxx.x, _5019.y > 0.0f.xxx.y, _5019.z > 0.0f.xxx.z);
          float3 _5026 = float3(_5025.x ? _5021.x : _5024.x, _5025.y ? _5021.y : _5024.y, _5025.z ? _5021.z : _5024.z);
          _5034 = _4970 + (_5019 * min(min(_5026.x, _5026.y), _5026.z));
        }
        else {
          _5034 = _4890;
        }
        float3 _5035 = normalize(_5034);
        float3 _5038 = float3(int3(sign(_5035)));
        float3 _5041 = _5035 / dot(_5035, _5038).xxx;
        float3 _5055;
        if (_5041.z < 0.0f) {
          float3 _5046 = abs(_5041);
          float2 _5053 = _5038.xy * float2(1.0f - _5046.y, 1.0f - _5046.x);
          _5055 = float3(_5053.x, _5053.y, _5041.z);
        } else {
          _5055 = _5041;
        }
        float _5080 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_4950]._m0, float4(_1094, 1.0f))));
        float _5093 = clamp((min(_4986.x, min(_4986.y, _4986.z)) * _28_m4[_4950]._m6.y) + ((((((_4980 * _4980).x - ((_4983.x + _4983.y) + _4983.z)) * _28_m4[_4950]._m5.x) * _28_m4[_4950]._m5.x) * (1.0f - _28_m4[_4950]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_4950]._m6.w;
        _4939 = _4938 + ((((_23.SampleLevel(_15, float3((((_5055.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_4950]._m1.w), _4898).xyz * _28_m4[_4950]._m5.w) * ((((((clamp(abs(_4936 / _5080), 0.0f, 1.0f) * 2.0f) + _4936) / (2.0f + _5080)) - 1.0f) * _9_m23.w) + 1.0f)) * _5093) * _4941);
        _4942 = _4941 * (1.0f - _5093);
      } else {
        _4939 = _4938;
        _4942 = _4941;
      }
      _4938 = _4939;
      _4941 = _4942;
      _4943 = _4944;
      continue;
    } else {
      break;
    }
  }
  float3 _5162;
  if (_4946) {
    float3 _5101 = normalize(_4890);
    float3 _5104 = float3(int3(sign(_5101)));
    float3 _5107 = _5101 / dot(_5101, _5104).xxx;
    float3 _5121;
    if (_5107.z < 0.0f) {
      float3 _5112 = abs(_5107);
      float2 _5119 = _5104.xy * float2(1.0f - _5112.y, 1.0f - _5112.x);
      _5121 = float3(_5119.x, _5119.y, _5107.z);
    } else {
      _5121 = _5107;
    }
    float _5148 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_1094, 1.0f))));
    _5162 = _4938 + ((_23.SampleLevel(_15, float3((((_5121.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _4898).xyz * ((((((clamp(abs(_4936 / _5148), 0.0f, 1.0f) * 2.0f) + _4936) / (2.0f + _5148)) - 1.0f) * _9_m23.w) + 1.0f)) * _4941);
  } else {
    _5162 = _4938;
  }
  float3 _5168 = (_5162 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _5168 *= 0.25f + (0.75f * saturate(_4936));
  }
  // RenoDX code end
  float3 _5189;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _5183 = _21.SampleBias(_13, _4, _9_m16);
    float _5184 = _5183.x;
    _5189 = (_20.SampleBias(_13, _4, _9_m16).xyz * _5184) + (_5168 * (1.0f - _5184));
  }
  else {
    _5189 = _5168;
  }
  float3 _5192 = (((float3(_4866, _4873, _4880) * _1163) * _9_m22.x) * _4259) + ((_5189 * (_1192 + ((_1167 * ((1.0f - _1193) / _1193)) * _1192))) * _4258);
  float4 _5194 = float4(_4219.x, _4219.y, _4219.z, _1380.w) + float4(_5192.x, _5192.y, _5192.z, 0.0f.xxxx.w);
  float3 _5197 = clamp(_5194.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _5212 = _541 * _9_m46.w;
  float _5217 = max(0.00999999977648258209228515625f, _5212 + _9_m47.w);
  float3 _5231 = exp(_9_m45.xyz * ((-max(0.0f, (_566 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_5217)) / _5217) * exp(_5212 + _9_m48.w))));
  float _5234 = dot(_567, _9_m44.xyz);
  float _5240 = _9_m45.w * _9_m45.w;
  float _5244 = (1.0f + _5240) - ((2.0f * _9_m45.w) * _5234);
  float3 _5568;
  float _5569;
  if (_9_m55.z > 0.0f) {
    uint3 _5396 = (uint3(int3(_464, _465, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5397 = _5396.y;
    uint _5398 = _5396.z;
    uint _5401 = _5396.x + (_5397 * _5398);
    uint _5403 = _5397 + (_5398 * _5401);
    uint _5405 = _5398 + (_5401 * _5403);
    uint _5407 = _5401 + (_5403 * _5405);
    float _5431 = dot(_567, -_7_m0[2].xyz);
    float3 _5439 = _539 - _7_m11.xyz;
    float _5441 = (_9_m55.w * ((_5431 > 5.9604644775390625e-08f) ? (1.0f / _5431) : 0.0f)) * (1.0f / _566);
    float _5442 = _5439.y;
    float _5443 = _5441 * _5442;
    float _5445 = _7_m11.y + _5443;
    float _5446 = _5442 - _5443;
    float _5448 = (1.0f - _5441) * _566;
    float _5462 = max(-127.0f, _9_m49.z * _5446);
    float _5486 = max(-127.0f, _9_m52.x * _5446);
    float _5497 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_5445 - _9_m49.x)))) * ((abs(_5462) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5462)) / _5462) : (0.693147182464599609375f - (0.2402265071868896484375f * _5462)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_5445 - _9_m52.z)))) * ((abs(_5486) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5486)) / _5486) : (0.693147182464599609375f - (0.2402265071868896484375f * _5486))));
    float _5519 = clamp((_566 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5522 = clamp((max(clamp(exp2(-(_5497 * _5448)), 0.0f, 1.0f), _9_m51.w) + clamp((_566 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5519, 0.0f, 1.0f);
    float4 _5562 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_13, float3((_514 + ((((float3(uint3(_5407, _5403 + (_5405 * _5407), _447) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_546 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_546 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _5564 = _5562.w;
    _5568 = _5562.xyz + (((_9_m51.xyz * (1.0f - _5522)) + (((_9_m54.xyz * pow(clamp(dot(_565, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5497 * max(_5448 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5519))) * _5564);
    _5569 = _5564 * _5522;
  } else {
    float3 _5272 = _539 - _7_m11.xyz;
    float _5274 = _5272.y;
    float _5288 = max(-127.0f, _9_m49.z * _5274);
    float _5312 = max(-127.0f, _9_m52.x * _5274);
    float _5323 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_5288) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5288)) / _5288) : (0.693147182464599609375f - (0.2402265071868896484375f * _5288)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_5312) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5312)) / _5312) : (0.693147182464599609375f - (0.2402265071868896484375f * _5312))));
    float _5345 = clamp((_566 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5348 = clamp((max(clamp(exp2(-(_5323 * _566)), 0.0f, 1.0f), _9_m51.w) + clamp((_566 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5345, 0.0f, 1.0f);
    _5568 = (_9_m51.xyz * (1.0f - _5348)) + (((_9_m54.xyz * pow(clamp(dot(_565, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5323 * max(_566 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5345));
    _5569 = _5348;
  }
  float3 _5572 = _5231 * _5569;
  float3 _5574 = (_5197 * _5572) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5234 * _5234)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _5240) / max((12.56637096405029296875f * _5244) * sqrt(_5244), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5231)) * _5569) + _5568);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _5574 = (_5574 * 0.65f) + (_5197 * 0.35f);
  }
  // RenoDX code end
  float _5575 = dot(_5572, 0.3333333432674407958984375f.xxx);
  float4 _5576 = float4(_5574.x, _5574.y, _5574.z, _5194.w);
  _5576.w = _5575;
  float _5603 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _539) * _9_m61.z), 0.0f, 1.0f);
  float3 _5611 = lerp(_5197, _5576.xyz, min((1.0f - _5603) + ((_76.SampleLevel(_14, (_539 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _5603), 1.0f + _5575).xxx);
  _5 = float4(_5611.x, _5611.y, _5611.z, _5576.w);
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

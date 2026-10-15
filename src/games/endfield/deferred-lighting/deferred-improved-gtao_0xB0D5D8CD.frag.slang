#include "./renodx_injection.hlsli"

// Ported from the native 0xB0D5D8CD Vulkan dump.
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

static float _377;
static uint _379;

static const int2 _351[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _352[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(37, 3)]] cbuffer _6_7 : register(b37, space3) {
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

[[vk::binding(42, 3)]] cbuffer _8_9 : register(b42, space3) {
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

[[vk::binding(46, 3)]] ByteAddressBuffer _25 : register(t46, space3);
[[vk::binding(43, 3)]] cbuffer _26_28 : register(b43, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(38, 3)]] cbuffer _29_30 : register(b38, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(39, 3)]] cbuffer _31_32 : register(b39, space3) {
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

[[vk::binding(41, 3)]] cbuffer _33_34 : register(b41, space3) {
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

[[vk::binding(45, 3)]] ByteAddressBuffer _37 : register(t45, space3);
[[vk::binding(36, 3)]] cbuffer _42_43 : register(b36, space3) {
  column_major float4x4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c4);
};

[[vk::binding(44, 3)]] cbuffer _49_50 : register(b44, space3) {
  float4 _50_m0[32] : packoffset(c0);
  column_major float4x4 _50_m1[32] : packoffset(c32);
};

[[vk::binding(40, 3)]] cbuffer _56_57 : register(b40, space3) {
  float4 _57_m0 : packoffset(c0);
  float4 _57_m1 : packoffset(c1);
  float4 _57_m2 : packoffset(c2);
  float4 _57_m3 : packoffset(c3);
  float4 _57_m4 : packoffset(c4);
  uint4 _57_m5 : packoffset(c5);
  float4 _57_m6 : packoffset(c6);
  float4 _57_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _19 : register(t33, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _20 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _21 : register(t11, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _22 : register(t26, space3);
[[vk::binding(12, 3)]] Texture2DArray<float4> _23 : register(t12, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _35 : register(t14, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _38 : register(t9, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _39 : register(t28, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _40 : register(t34, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _45 : register(t13, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _46 : register(t15, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _47 : register(t32, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _48 : register(t16, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _53 : register(t18, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _54 : register(t17, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _55 : register(t25, space3);
[[vk::binding(35, 3)]] Texture2D<float4> _58 : register(t35, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _59 : register(t7, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _60 : register(t24, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _61 : register(t21, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _62 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _63 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _64 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _65 : register(t19, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _66 : register(t6, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _67 : register(t31, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _68 : register(t30, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _69 : register(t29, space3);
[[vk::binding(27, 3)]] Texture3D<float4> _70 : register(t27, space3);

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
  uint2 _393 = uint2(gl_FragCoord.xy);
  int _396 = int(_393.x);
  int _397 = int(_393.y);
  int2 _399 = int3(_396, _397, 0).xy;
  float4 _401 = _67.Load(int3(_399, 0));
  float4 _403 = _68.Load(int3(_399, 0));
  float4 _405 = _69.Load(int3(_399, 0));
  uint _409 = uint(_401.x * 1023.0f);
  float _413 = float((_409 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _421 = float(((_409 & 7u) << 2u) | (uint(_401.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _425 = uint(round(_401.y * 1023.0f));
  float _430 = float((_425 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _435 = uint(_401.z * 1023.0f);
  float2 _450 = (_403.xy * 2.0f) - 1.0f.xx;
  float _454 = 1.0f - dot(1.0f.xx, abs(_450));
  float3 _456 = float3(_450.x, _454, _450.y);
  float3 _468;
  if (_454 < 0.0f) {
    float2 _463 = _456.xz;
    bool2 _464 = bool2(_463.x >= 0.0f.xx.x, _463.y >= 0.0f.xx.y);
    float2 _466 = (1.0f.xx - abs(_456.zx)) * float2(_464.x ? 1.0f.xx.x : (-1.0f).xx.x, _464.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _468 = float3(_466.x, _456.y, _466.y);
  } else {
    _468 = _456;
  }
  float3 _469 = normalize(_468);
  float _470 = _403.z;
  float _472 = _405.w;
  float _474 = (float(_425 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _477 = float2(_393);
  float2 _482 = (_477 + 0.5f.xx) * _9_m0.zw;
  float2 _490 = gl_FragCoord.xy * _9_m0.zw;
  float2 _492 = (_490 * 2.0f) - 1.0f.xx;
  float4 _495 = float4(_492, _19.SampleLevel(_12, _482, 0.0f).x, 1.0f);
  _495.y = -_492.y;
  float4 _498 = mul(_7_m6, _495);
  float3 _502 = _498.xyz / _498.w.xxx;
  float4 _506 = float4(_502, 1.0f);
  float _509 = abs(mul(_7_m0, _506).z);
  float3 _524;
  do {
    if (_9_m4.w == 0.0f) {
      _524 = _7_m11.xyz - _502;
      break;
    } else {
      _524 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _525 = dot(_524, _524);
  float _527 = rsqrt(max(_525, 9.9999999392252902907785028219223e-09f));
  float3 _528 = _524 * _527;
  float _529 = _525 * _527;
  float3 _530 = -_528;
  float2 _543;
  if (_9_m132.x > 0.00048828125f) {
    _543 = _66.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _543 = 1.0f.xx;
  }
  float _544 = dot(_469, float3(0.0f, -1.0f, 0.0f));
  float3 _599;
  [branch] if (_9_m124.x > 0.5f) {
    float _571 = abs(_469.x);
    float _573 = abs(_469.y);
    float _575 = abs(_469.z);
    float3 _580 = float3(_571, _573, _575) * (1.0f / ((_571 + _573) + _575));
    _599 = ((((float3(0.0f, 0.0f, 1.0f) * _580.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _580.y)) + (float3(1.0f, 0.0f, 0.0f) * _580.z)) * ((_45.SampleLevel(_14, _502 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_544)));
  }
  else {
    _599 = 0.0f.xxx;
  }
  float4 _613 = mul(_43_m0, float4((_502 + ((((_469 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_544, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _544), 0.100000001490116119384765625f, 1.0f)))) + _599, 1.0f));
  float2 _616 = (_613.xy * 0.5f) + 0.5f.xx;
  float4 _617 = float4(_616.x, _616.y, _613.z, _613.w);
  _617.y = 1.0f - _616.y;
  float _638;
  [branch] if (_9_m124.y > 0.5f) {
    _638 = _41.SampleCmpLevelZero(_17, (_617.xy + _43_m1.xy).xy, max(_613.z, 0.00048828125f));
  }
  else {
    _638 = 1.0f;
  }
  float _641 = _469.y;
  float _643 = lerp(_9_m128.w, 1.0f, clamp(_641, 0.0f, 1.0f));
  float2 _652 = abs(_502.xz - _7_m11.xz);
  float _655 = max(_652.x, _652.y);
  float _674 = 1.0f - (_543 * (1.0f - lerp(lerp(_9_m128.z * _643, 1.0f, lerp(_643 * _638, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _655))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _655)))).x;
  float _675 = 1.0f - _470;
  float _682 = clamp((_675 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f);
  float3 _690 = _405.xyz * lerp(1.0f, 0.25f, (_9_m120.x * _682) * _674);
  float _700 = lerp(_675, clamp(_675 + (((0.60000002384185791015625f - (0.4000000059604644775390625f * _682)) * _675) * (_470 + (-0.300000011920928955078125f))), _675, 0.699999988079071044921875f), (_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _674);
  float _701 = 1.0f - _700;
  float3 _703 = (0.07999999821186065673828125f * _474).xxx;
  float _704 = dot(_469, _528);
  float _705 = max(0.0f, _704);
  float4 _707 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _701) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _708 = _707.x;
  float2 _718 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_708 * _708, exp2((-9.27999973297119140625f) * _705)) * _708) + _707.y)) + _707.zw;
  float4 _926;
  do {
    [branch] if (_32_m4 == 0) {
      _926 = 0.0f.xxxx;
      break;
    }
    float4 _737 = _47.SampleLevel(_13, _490, 0.0f);
    float _738 = _737.x;
    float4 _742 = _38.Load(int3(_399, 0));
    float _743 = _742.x;
    float4 _925;
    if (_743 > 0.001000000047497451305389404296875f) {
      float3 _753 = reflect(_530, _469);
      float3 _754 = -_30_m0.xyz;
      float _759 = dot(_754, _753);
      float3 _761 = _753 - (_754 * _759);
      bool3 _763 = (_759 < _30_m4.z).xxx;
      float3 _771 = normalize((_754 * _30_m4.z) + ((_761 * rsqrt(max(6.103515625e-05f, dot(_761, _761)))) * _30_m4.y));
      float3 _772 = float3(_763.x ? _771.x : _753.x, _763.y ? _771.y : _753.y, _763.z ? _771.z : _753.z);
      float3 _776 = _772 + _528;
      float3 _780 = _776 * rsqrt(max(6.103515625e-05f, dot(_776, _776)));
      float _781 = dot(_469, _772);
      float _782 = clamp(dot(_772, _469), 0.0f, 1.0f);
      float _784 = clamp(dot(_469, _780), 0.0f, 1.0f);
      float _787 = dot(_528, _772);
      float _789 = clamp(_704, 0.0f, 1.0f);
      float _790 = _701 * _701;
      float _791 = _790 * _790;
      float _812 = (((_784 * _791) - _784) * _784) + 1.0f;
      float _815 = 1.0f - clamp(dot(_528, _780), 0.0f, 1.0f);
      float _816 = _815 * _815;
      float _818 = (_815 * _816) * _816;
      float _848 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_700 * (1.04997003078460693359375f + (_700 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _700))))));
      float _849 = 1.0f - _848;
      float3 _852 = _703 + ((1.0f.xxx - _703) * 0.0476190485060214996337890625f);
      float _883 = clamp(-_787, 0.0f, 1.0f);
      float _887 = (((_883 * 0.36000001430511474609375f) - _883) * _883) + 1.0f;
      float _888 = _887 * _887;
      float3 _900 = ((min(((_703 * (1.0f - _818)) + _818.xxx) * ((_791 / (_812 * _812)) * (0.5f / (((_782 * sqrt(((((-_789) * _791) + _789) * _789) + _791)) + (_789 * sqrt(((((-_782) * _791) + _782) * _782) + _791))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_852 * (((_46.SampleLevel(_13, (float2(_789, _701) * 0.96875f) + 0.015625f.xx, 0.0f).x * _46.SampleLevel(_13, (float2(_782, _701) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _848) / _849)) * _852) / (1.0f.xxx - (_852 * _849)))) * lerp(clamp(_704 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_787, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_787 + 1.0f, 0.0f, 1.0f))) * _430;
      float3 _910 = _30_m1.xyz * (((((_690 * _430) * 1.0f) * (float((_435 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_900 * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _782)) + (((((_690 / max(0.00999999977648258209228515625f, max(max(_690.x, _690.y), _690.z)).xxx) * _413) * (clamp(0.5f - _781, 0.0f, 1.0f) * ((0.36000001430511474609375f != _888) ? (0.36000001430511474609375f / _888) : 1.0f))) + (_690 * (clamp(_781 + _421, 0.0f, 1.0f) - clamp(_782, 0.0f, 1.0f)))) * _430));
      float3 _923 = lerp(_910, _910 * _40.SampleBias(_13, float2(_743, 0.5f), _9_m16).xyz, (1.0f - _743).xxx) * lerp(_738, max(_738, _430), _421);
      _925 = float4(_923.x, _923.y, _923.z, 0.0f.xxxx.w);
    } else {
      _925 = 0.0f.xxxx;
    }
    _926 = _925;
    break;
  } while (false);
  float2 _928 = floor(_477 * 0.03125f);
  int _936 = int((_928.x + (_928.y * _32_m9)) * 8.0f);
  float _943 = floor(_509 - (_9_m3.y * _32_m15));
  float _947 = clamp(_943, 0.0f, _32_m11 - 1.0f);
  int _949 = int(_947 * 8.0f);
  float4 _955 = _39.SampleBias(_13, _482, _9_m16);
  float3 _957;
  float _960;
  _957 = 0.0f.xxx;
  _960 = 1.0f;
  float3 _958;
  float _961;
  [loop] for (int _962 = 0; _962 <= 7; _957 = _958, _960 = _961, _962++) {
    uint _983 = (_943 <= _947) ? (_25.Load(uint((_32_m2 + _936) + _962) * 4 + 0) & _25.Load(uint((_32_m3 + _949) + _962) * 4 + 0)) : 0u;
    uint _984 = uint(_962);
    float3 _988;
    _961 = _960;
    _988 = 0.0f.xxx;
    uint _991;
    float _986;
    float3 _989;
    [loop] for (uint _990 = _983; _990 != 0u; _961 = _986, _988 = _989, _990 = _991) {
      uint _995 = firstbitlow(_990);
      _991 = _990 ^ (1u << (_995 & 31u));
      int _1001 = int((32u * _984) + _995) * 8;
      int _1004 = _1001 + 1;
      int _1007 = _1001 + 2;
      int _1010 = _1001 + 3;
      int _1013 = _1001 + 4;
      int _1016 = _1001 + 5;
      int _1019 = _1001 + 6;
      int _1022 = _1001 + 7;
      uint _1026 = uint(_30_m6[_1016].w);
      float _1101;
      if ((_1026 & 1u) == 1u) {
        uint _1032 = asuint(_30_m6[_1016].x);
        uint _1039 = asuint(_30_m6[_1016].y);
        uint _1046 = asuint(_30_m6[_1016].z);
        uint _1053 = asuint(_30_m6[_1019].x);
        uint _1060 = asuint(_30_m6[_1019].y);
        uint _1067 = asuint(_30_m6[_1019].z);
        float3 _1086 = abs(mul(float4(_502 - _30_m6[_1004].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1032).x, spvUnpackHalf2x16(_1046).x, spvUnpackHalf2x16(_1060).x, 0.0f), float4(spvUnpackHalf2x16(_1032 >> 16u).x, spvUnpackHalf2x16(_1046 >> 16u).x, spvUnpackHalf2x16(_1060 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1039).x, spvUnpackHalf2x16(_1053).x, spvUnpackHalf2x16(_1067).x, 0.0f), float4(spvUnpackHalf2x16(_1039 >> 16u).x, spvUnpackHalf2x16(_1053 >> 16u).x, spvUnpackHalf2x16(_1067 >> 16u).x, 0.0f))).xyz);
        float _1093 = _30_m6[_1022].x * 0.5f;
        float _1099 = 1.0f - clamp((max(max(_1086.x, _1086.y), _1086.z) - (_1093 + 0.5f)) / (0.5f - _1093), 0.0f, 1.0f);
        _1101 = _1099 * _1099;
      } else {
        _1101 = 1.0f;
      }
      uint _1105 = uint(_30_m6[_1001].w);
      bool _1108 = _30_m6[_1010].z > 0.5f;
      if ((false || (_1101 < 0.001000000047497451305389404296875f)) || ((_1105 < 4u) && _1108)) {
        _986 = _961;
        _989 = _988;
        continue;
      }
      float _3755;
      float3 _3756;
      do {
        [branch] if (_1105 >= 4u) {
          float3 _2360;
          do {
            float3 _1127 = _30_m6[_1004].xyz - _502;
            if (dot(_30_m6[_1010].xyz, _1127) > 0.0f) {
              _2360 = 0.0f.xxx;
              break;
            }
            float _1134 = dot(_1127, _1127) * _30_m6[_1004].w;
            float _1137 = clamp(1.0f - (_1134 * _1134), 0.0f, 1.0f);
            float _1138 = _1137 * _1137;
            if (_1138 <= 0.0f) {
              _2360 = 0.0f.xxx;
              break;
            }
            float3 _1176;
            float _1177;
            bool _1178;
            float3 _1205;
            float3 _1207;
            float3 _1209;
            float3 _1211;
            float3 _1142 = _30_m6[_1007].xyz * _30_m6[_1007].w;
            float3 _1143 = _30_m6[_1004].xyz - _1142;
            float3 _1144 = _30_m6[_1013].xyz * _30_m6[_1010].w;
            float3 _1147 = _30_m6[_1004].xyz + _1142;
            float2 _1157 = (float2(clamp(_701, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_704, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1161 = _53.SampleLevel(_13, _1157, 0.0f);
            float4 _1165 = _54.SampleLevel(_13, _1157, 0.0f);
            float _1559;
            do {
              _1176 = _528 - (_469 * dot(_528, _469));
              _1177 = dot(_1176, _1176);
              _1178 = _1177 > 9.9999997473787516355514526367188e-05f;
              float3 _1200;
              if (_1178) {
                _1200 = _1176 * rsqrt(_1177);
              } else {
                float _1182 = _469.z;
                float _1184 = (_1182 >= 0.0f) ? 1.0f : (-1.0f);
                float _1186 = (-1.0f) / (_1184 + _1182);
                float _1188 = _469.x;
                _1200 = float3(1.0f + (((_1184 * _1186) * _1188) * _1188), ((_1184 * _1188) * _641) * _1186, (-_1184) * _1188);
              }
              float3x3 _1204 = mul(float3x3(float3(_1161.x, 0.0f, _1161.z), float3(0.0f, 1.0f, 0.0f), float3(_1161.y, 0.0f, _1161.w)), float3x3(_1200, cross(_469, _1200), _469));
              _1205 = (_1143 - _1144) - _502;
              float3 _1206 = mul(_1204, _1205);
              _1207 = (_1143 + _1144) - _502;
              float3 _1208 = mul(_1204, _1207);
              _1209 = (_1147 + _1144) - _502;
              float3 _1210 = mul(_1204, _1209);
              _1211 = (_1147 - _1144) - _502;
              float3 _1212 = mul(_1204, _1211);
              float _1213 = _1206.z;
              float _1216 = _1208.z;
              float _1220 = _1210.z;
              float _1224 = _1212.z;
              int _1228 = (((int(_1213 > 0.0f) | ((_1216 > 0.0f) ? 2 : 0)) | ((_1220 > 0.0f) ? 4 : 0)) | ((_1224 > 0.0f) ? 8 : 0));
              float3 _1465;
              float3 _1466;
              float3 _1467;
              float3 _1468;
              float3 _1469;
              int _1470;
              if (_1228 == 0) {
                _1465 = _1212;
                _1466 = _1210;
                _1467 = _1208;
                _1468 = _1206;
                _1469 = 0.0f.xxx;
                _1470 = 0;
              } else {
                float3 _1459;
                float3 _1460;
                float3 _1461;
                float3 _1462;
                float3 _1463;
                int _1464;
                if (_1228 == 1) {
                  _1459 = _1212;
                  _1460 = (_1206 * (-_1224)) + (_1212 * _1213);
                  _1461 = (_1206 * (-_1216)) + (_1208 * _1213);
                  _1462 = _1206;
                  _1463 = 0.0f.xxx;
                  _1464 = 3;
                } else {
                  float3 _1445;
                  float3 _1446;
                  float3 _1447;
                  float3 _1448;
                  float3 _1449;
                  int _1450;
                  if (_1228 == 2) {
                    _1445 = _1212;
                    _1446 = (_1208 * (-_1220)) + (_1210 * _1216);
                    _1447 = _1208;
                    _1448 = (_1208 * (-_1213)) + (_1206 * _1216);
                    _1449 = 0.0f.xxx;
                    _1450 = 3;
                  } else {
                    float3 _1431;
                    float3 _1432;
                    float3 _1433;
                    float3 _1434;
                    float3 _1435;
                    int _1436;
                    if (_1228 == 3) {
                      _1431 = (_1206 * (-_1224)) + (_1212 * _1213);
                      _1432 = (_1208 * (-_1220)) + (_1210 * _1216);
                      _1433 = _1208;
                      _1434 = _1206;
                      _1435 = 0.0f.xxx;
                      _1436 = 4;
                    } else {
                      float3 _1417;
                      float3 _1418;
                      float3 _1419;
                      float3 _1420;
                      float3 _1421;
                      int _1422;
                      if (_1228 == 4) {
                        _1417 = _1212;
                        _1418 = _1210;
                        _1419 = (_1210 * (-_1216)) + (_1208 * _1220);
                        _1420 = (_1210 * (-_1224)) + (_1212 * _1220);
                        _1421 = 0.0f.xxx;
                        _1422 = 3;
                      } else {
                        float3 _1403;
                        float3 _1404;
                        float3 _1405;
                        float3 _1406;
                        float3 _1407;
                        int _1408;
                        if (_1228 == 5) {
                          _1403 = _1212;
                          _1404 = _1210;
                          _1405 = _1208;
                          _1406 = _1206;
                          _1407 = 0.0f.xxx;
                          _1408 = 0;
                        } else {
                          float3 _1397;
                          float3 _1398;
                          float3 _1399;
                          float3 _1400;
                          float3 _1401;
                          int _1402;
                          if (_1228 == 6) {
                            _1397 = (_1210 * (-_1224)) + (_1212 * _1220);
                            _1398 = _1210;
                            _1399 = _1208;
                            _1400 = (_1208 * (-_1213)) + (_1206 * _1216);
                            _1401 = 0.0f.xxx;
                            _1402 = 4;
                          } else {
                            float3 _1383;
                            float3 _1384;
                            float3 _1385;
                            float3 _1386;
                            float3 _1387;
                            int _1388;
                            if (_1228 == 7) {
                              float _1376 = -_1224;
                              _1383 = (_1210 * _1376) + (_1212 * _1220);
                              _1384 = _1210;
                              _1385 = _1208;
                              _1386 = _1206;
                              _1387 = (_1206 * _1376) + (_1212 * _1213);
                              _1388 = 5;
                            } else {
                              float3 _1370;
                              float3 _1371;
                              float3 _1372;
                              float3 _1373;
                              float3 _1374;
                              int _1375;
                              if (_1228 == 8) {
                                _1370 = _1212;
                                _1371 = _1212;
                                _1372 = (_1212 * (-_1220)) + (_1210 * _1224);
                                _1373 = (_1212 * (-_1213)) + (_1206 * _1224);
                                _1374 = 0.0f.xxx;
                                _1375 = 3;
                              } else {
                                float3 _1356;
                                float3 _1357;
                                float3 _1358;
                                float3 _1359;
                                float3 _1360;
                                int _1361;
                                if (_1228 == 9) {
                                  _1356 = _1212;
                                  _1357 = (_1212 * (-_1220)) + (_1210 * _1224);
                                  _1358 = (_1206 * (-_1216)) + (_1208 * _1213);
                                  _1359 = _1206;
                                  _1360 = 0.0f.xxx;
                                  _1361 = 4;
                                } else {
                                  float3 _1342;
                                  float3 _1343;
                                  float3 _1344;
                                  float3 _1345;
                                  float3 _1346;
                                  int _1347;
                                  if (_1228 == 10) {
                                    _1342 = _1212;
                                    _1343 = _1210;
                                    _1344 = _1208;
                                    _1345 = _1206;
                                    _1346 = 0.0f.xxx;
                                    _1347 = 0;
                                  } else {
                                    float3 _1336;
                                    float3 _1337;
                                    float3 _1338;
                                    float3 _1339;
                                    float3 _1340;
                                    int _1341;
                                    if (_1228 == 11) {
                                      float _1329 = -_1220;
                                      _1336 = (_1212 * _1329) + (_1210 * _1224);
                                      _1337 = (_1208 * _1329) + (_1210 * _1216);
                                      _1338 = _1208;
                                      _1339 = _1206;
                                      _1340 = _1212;
                                      _1341 = 5;
                                    } else {
                                      float3 _1323;
                                      float3 _1324;
                                      float3 _1325;
                                      float3 _1326;
                                      float3 _1327;
                                      int _1328;
                                      if (_1228 == 12) {
                                        _1323 = _1212;
                                        _1324 = _1210;
                                        _1325 = (_1210 * (-_1216)) + (_1208 * _1220);
                                        _1326 = (_1212 * (-_1213)) + (_1206 * _1224);
                                        _1327 = 0.0f.xxx;
                                        _1328 = 4;
                                      } else {
                                        bool _1281 = _1228 == 13;
                                        float3 _1308;
                                        float3 _1309;
                                        float3 _1310;
                                        float3 _1311;
                                        int _1312;
                                        if (_1281) {
                                          float _1301 = -_1216;
                                          _1308 = (_1210 * _1301) + (_1208 * _1220);
                                          _1309 = (_1206 * _1301) + (_1208 * _1213);
                                          _1310 = _1206;
                                          _1311 = _1212;
                                          _1312 = 5;
                                        } else {
                                          float3 _1298;
                                          float3 _1299;
                                          int _1300;
                                          if (_1228 == 14) {
                                            float _1291 = -_1213;
                                            _1298 = (_1208 * _1291) + (_1206 * _1216);
                                            _1299 = (_1212 * _1291) + (_1206 * _1224);
                                            _1300 = 5;
                                          } else {
                                            _1298 = _1206;
                                            _1299 = 0.0f.xxx;
                                            _1300 = (_1228 == 15) ? 4 : 0;
                                          }
                                          _1308 = _1210;
                                          _1309 = _1208;
                                          _1310 = _1298;
                                          _1311 = _1299;
                                          _1312 = _1300;
                                        }
                                        bool3 _1313 = _1281.xxx;
                                        _1323 = float3(_1313.x ? _1210.x : _1212.x, _1313.y ? _1210.y : _1212.y, _1313.z ? _1210.z : _1212.z);
                                        _1324 = _1308;
                                        _1325 = _1309;
                                        _1326 = _1310;
                                        _1327 = _1311;
                                        _1328 = _1312;
                                      }
                                      _1336 = _1323;
                                      _1337 = _1324;
                                      _1338 = _1325;
                                      _1339 = _1326;
                                      _1340 = _1327;
                                      _1341 = _1328;
                                    }
                                    _1342 = _1336;
                                    _1343 = _1337;
                                    _1344 = _1338;
                                    _1345 = _1339;
                                    _1346 = _1340;
                                    _1347 = _1341;
                                  }
                                  _1356 = _1342;
                                  _1357 = _1343;
                                  _1358 = _1344;
                                  _1359 = _1345;
                                  _1360 = _1346;
                                  _1361 = _1347;
                                }
                                _1370 = _1356;
                                _1371 = _1357;
                                _1372 = _1358;
                                _1373 = _1359;
                                _1374 = _1360;
                                _1375 = _1361;
                              }
                              _1383 = _1370;
                              _1384 = _1371;
                              _1385 = _1372;
                              _1386 = _1373;
                              _1387 = _1374;
                              _1388 = _1375;
                            }
                            _1397 = _1383;
                            _1398 = _1384;
                            _1399 = _1385;
                            _1400 = _1386;
                            _1401 = _1387;
                            _1402 = _1388;
                          }
                          _1403 = _1397;
                          _1404 = _1398;
                          _1405 = _1399;
                          _1406 = _1400;
                          _1407 = _1401;
                          _1408 = _1402;
                        }
                        _1417 = _1403;
                        _1418 = _1404;
                        _1419 = _1405;
                        _1420 = _1406;
                        _1421 = _1407;
                        _1422 = _1408;
                      }
                      _1431 = _1417;
                      _1432 = _1418;
                      _1433 = _1419;
                      _1434 = _1420;
                      _1435 = _1421;
                      _1436 = _1422;
                    }
                    _1445 = _1431;
                    _1446 = _1432;
                    _1447 = _1433;
                    _1448 = _1434;
                    _1449 = _1435;
                    _1450 = _1436;
                  }
                  _1459 = _1445;
                  _1460 = _1446;
                  _1461 = _1447;
                  _1462 = _1448;
                  _1463 = _1449;
                  _1464 = _1450;
                }
                _1465 = _1459;
                _1466 = _1460;
                _1467 = _1461;
                _1468 = _1462;
                _1469 = _1463;
                _1470 = _1464;
              }
              bool3 _1472 = (_1470 == 3).xxx;
              bool3 _1475 = (_1470 == 4).xxx;
              if (_1470 == 0) {
                _1559 = 0.0f;
                break;
              }
              float3 _1480 = normalize(_1468);
              float3 _1481 = normalize(_1467);
              float3 _1482 = normalize(_1466);
              float3 _1483 = normalize(float3(_1472.x ? _1468.x : _1465.x, _1472.y ? _1468.y : _1465.y, _1472.z ? _1468.z : _1465.z));
              float3 _1484 = normalize(float3(_1475.x ? _1468.x : _1469.x, _1475.y ? _1468.y : _1469.y, _1475.z ? _1468.z : _1469.z));
              float _1486 = clamp(dot(_1480, _1481), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1490 = sqrt(1.0f - (_1486 * _1486));
              float _1498 = clamp(dot(_1481, _1482), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1502 = sqrt(1.0f - (_1498 * _1498));
              float _1511 = clamp(dot(_1482, _1483), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1515 = sqrt(1.0f - (_1511 * _1511));
              float _1522 = ((cross(_1480, _1481).z * ((_1490 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1486) / _1490))) + (cross(_1481, _1482).z * ((_1502 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1498) / _1502)))) + (cross(_1482, _1483).z * ((_1515 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1511) / _1515)));
              float _1539;
              if (_1470 >= 4) {
                float _1527 = clamp(dot(_1483, _1484), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1531 = sqrt(1.0f - (_1527 * _1527));
                _1539 = _1522 + (cross(_1483, _1484).z * ((_1531 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1527) / _1531)));
              } else {
                _1539 = _1522;
              }
              float _1556;
              if (_1470 == 5) {
                float _1544 = clamp(dot(_1484, _1480), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1548 = sqrt(1.0f - (_1544 * _1544));
                _1556 = _1539 + (cross(_1484, _1480).z * ((_1548 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1544) / _1548)));
              } else {
                _1556 = _1539;
              }
              _1559 = max(_1556, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1946;
            do {
              float3 _1592;
              if (_1178) {
                _1592 = _1176 * rsqrt(_1177);
              } else {
                float _1574 = _469.z;
                float _1576 = (_1574 >= 0.0f) ? 1.0f : (-1.0f);
                float _1578 = (-1.0f) / (_1576 + _1574);
                float _1580 = _469.x;
                _1592 = float3(1.0f + (((_1576 * _1578) * _1580) * _1580), ((_1576 * _1580) * _641) * _1578, (-_1576) * _1580);
              }
              float3x3 _1595 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1592, cross(_469, _1592), _469));
              float3 _1596 = mul(_1595, _1205);
              float3 _1597 = mul(_1595, _1207);
              float3 _1598 = mul(_1595, _1209);
              float3 _1599 = mul(_1595, _1211);
              float _1600 = _1596.z;
              float _1603 = _1597.z;
              float _1607 = _1598.z;
              float _1611 = _1599.z;
              int _1615 = (((int(_1600 > 0.0f) | ((_1603 > 0.0f) ? 2 : 0)) | ((_1607 > 0.0f) ? 4 : 0)) | ((_1611 > 0.0f) ? 8 : 0));
              float3 _1852;
              float3 _1853;
              float3 _1854;
              float3 _1855;
              float3 _1856;
              int _1857;
              if (_1615 == 0) {
                _1852 = _1599;
                _1853 = _1598;
                _1854 = _1597;
                _1855 = _1596;
                _1856 = 0.0f.xxx;
                _1857 = 0;
              } else {
                float3 _1846;
                float3 _1847;
                float3 _1848;
                float3 _1849;
                float3 _1850;
                int _1851;
                if (_1615 == 1) {
                  _1846 = _1599;
                  _1847 = (_1596 * (-_1611)) + (_1599 * _1600);
                  _1848 = (_1596 * (-_1603)) + (_1597 * _1600);
                  _1849 = _1596;
                  _1850 = 0.0f.xxx;
                  _1851 = 3;
                } else {
                  float3 _1832;
                  float3 _1833;
                  float3 _1834;
                  float3 _1835;
                  float3 _1836;
                  int _1837;
                  if (_1615 == 2) {
                    _1832 = _1599;
                    _1833 = (_1597 * (-_1607)) + (_1598 * _1603);
                    _1834 = _1597;
                    _1835 = (_1597 * (-_1600)) + (_1596 * _1603);
                    _1836 = 0.0f.xxx;
                    _1837 = 3;
                  } else {
                    float3 _1818;
                    float3 _1819;
                    float3 _1820;
                    float3 _1821;
                    float3 _1822;
                    int _1823;
                    if (_1615 == 3) {
                      _1818 = (_1596 * (-_1611)) + (_1599 * _1600);
                      _1819 = (_1597 * (-_1607)) + (_1598 * _1603);
                      _1820 = _1597;
                      _1821 = _1596;
                      _1822 = 0.0f.xxx;
                      _1823 = 4;
                    } else {
                      float3 _1804;
                      float3 _1805;
                      float3 _1806;
                      float3 _1807;
                      float3 _1808;
                      int _1809;
                      if (_1615 == 4) {
                        _1804 = _1599;
                        _1805 = _1598;
                        _1806 = (_1598 * (-_1603)) + (_1597 * _1607);
                        _1807 = (_1598 * (-_1611)) + (_1599 * _1607);
                        _1808 = 0.0f.xxx;
                        _1809 = 3;
                      } else {
                        float3 _1790;
                        float3 _1791;
                        float3 _1792;
                        float3 _1793;
                        float3 _1794;
                        int _1795;
                        if (_1615 == 5) {
                          _1790 = _1599;
                          _1791 = _1598;
                          _1792 = _1597;
                          _1793 = _1596;
                          _1794 = 0.0f.xxx;
                          _1795 = 0;
                        } else {
                          float3 _1784;
                          float3 _1785;
                          float3 _1786;
                          float3 _1787;
                          float3 _1788;
                          int _1789;
                          if (_1615 == 6) {
                            _1784 = (_1598 * (-_1611)) + (_1599 * _1607);
                            _1785 = _1598;
                            _1786 = _1597;
                            _1787 = (_1597 * (-_1600)) + (_1596 * _1603);
                            _1788 = 0.0f.xxx;
                            _1789 = 4;
                          } else {
                            float3 _1770;
                            float3 _1771;
                            float3 _1772;
                            float3 _1773;
                            float3 _1774;
                            int _1775;
                            if (_1615 == 7) {
                              float _1763 = -_1611;
                              _1770 = (_1598 * _1763) + (_1599 * _1607);
                              _1771 = _1598;
                              _1772 = _1597;
                              _1773 = _1596;
                              _1774 = (_1596 * _1763) + (_1599 * _1600);
                              _1775 = 5;
                            } else {
                              float3 _1757;
                              float3 _1758;
                              float3 _1759;
                              float3 _1760;
                              float3 _1761;
                              int _1762;
                              if (_1615 == 8) {
                                _1757 = _1599;
                                _1758 = _1599;
                                _1759 = (_1599 * (-_1607)) + (_1598 * _1611);
                                _1760 = (_1599 * (-_1600)) + (_1596 * _1611);
                                _1761 = 0.0f.xxx;
                                _1762 = 3;
                              } else {
                                float3 _1743;
                                float3 _1744;
                                float3 _1745;
                                float3 _1746;
                                float3 _1747;
                                int _1748;
                                if (_1615 == 9) {
                                  _1743 = _1599;
                                  _1744 = (_1599 * (-_1607)) + (_1598 * _1611);
                                  _1745 = (_1596 * (-_1603)) + (_1597 * _1600);
                                  _1746 = _1596;
                                  _1747 = 0.0f.xxx;
                                  _1748 = 4;
                                } else {
                                  float3 _1729;
                                  float3 _1730;
                                  float3 _1731;
                                  float3 _1732;
                                  float3 _1733;
                                  int _1734;
                                  if (_1615 == 10) {
                                    _1729 = _1599;
                                    _1730 = _1598;
                                    _1731 = _1597;
                                    _1732 = _1596;
                                    _1733 = 0.0f.xxx;
                                    _1734 = 0;
                                  } else {
                                    float3 _1723;
                                    float3 _1724;
                                    float3 _1725;
                                    float3 _1726;
                                    float3 _1727;
                                    int _1728;
                                    if (_1615 == 11) {
                                      float _1716 = -_1607;
                                      _1723 = (_1599 * _1716) + (_1598 * _1611);
                                      _1724 = (_1597 * _1716) + (_1598 * _1603);
                                      _1725 = _1597;
                                      _1726 = _1596;
                                      _1727 = _1599;
                                      _1728 = 5;
                                    } else {
                                      float3 _1710;
                                      float3 _1711;
                                      float3 _1712;
                                      float3 _1713;
                                      float3 _1714;
                                      int _1715;
                                      if (_1615 == 12) {
                                        _1710 = _1599;
                                        _1711 = _1598;
                                        _1712 = (_1598 * (-_1603)) + (_1597 * _1607);
                                        _1713 = (_1599 * (-_1600)) + (_1596 * _1611);
                                        _1714 = 0.0f.xxx;
                                        _1715 = 4;
                                      } else {
                                        bool _1668 = _1615 == 13;
                                        float3 _1695;
                                        float3 _1696;
                                        float3 _1697;
                                        float3 _1698;
                                        int _1699;
                                        if (_1668) {
                                          float _1688 = -_1603;
                                          _1695 = (_1598 * _1688) + (_1597 * _1607);
                                          _1696 = (_1596 * _1688) + (_1597 * _1600);
                                          _1697 = _1596;
                                          _1698 = _1599;
                                          _1699 = 5;
                                        } else {
                                          float3 _1685;
                                          float3 _1686;
                                          int _1687;
                                          if (_1615 == 14) {
                                            float _1678 = -_1600;
                                            _1685 = (_1597 * _1678) + (_1596 * _1603);
                                            _1686 = (_1599 * _1678) + (_1596 * _1611);
                                            _1687 = 5;
                                          } else {
                                            _1685 = _1596;
                                            _1686 = 0.0f.xxx;
                                            _1687 = (_1615 == 15) ? 4 : 0;
                                          }
                                          _1695 = _1598;
                                          _1696 = _1597;
                                          _1697 = _1685;
                                          _1698 = _1686;
                                          _1699 = _1687;
                                        }
                                        bool3 _1700 = _1668.xxx;
                                        _1710 = float3(_1700.x ? _1598.x : _1599.x, _1700.y ? _1598.y : _1599.y, _1700.z ? _1598.z : _1599.z);
                                        _1711 = _1695;
                                        _1712 = _1696;
                                        _1713 = _1697;
                                        _1714 = _1698;
                                        _1715 = _1699;
                                      }
                                      _1723 = _1710;
                                      _1724 = _1711;
                                      _1725 = _1712;
                                      _1726 = _1713;
                                      _1727 = _1714;
                                      _1728 = _1715;
                                    }
                                    _1729 = _1723;
                                    _1730 = _1724;
                                    _1731 = _1725;
                                    _1732 = _1726;
                                    _1733 = _1727;
                                    _1734 = _1728;
                                  }
                                  _1743 = _1729;
                                  _1744 = _1730;
                                  _1745 = _1731;
                                  _1746 = _1732;
                                  _1747 = _1733;
                                  _1748 = _1734;
                                }
                                _1757 = _1743;
                                _1758 = _1744;
                                _1759 = _1745;
                                _1760 = _1746;
                                _1761 = _1747;
                                _1762 = _1748;
                              }
                              _1770 = _1757;
                              _1771 = _1758;
                              _1772 = _1759;
                              _1773 = _1760;
                              _1774 = _1761;
                              _1775 = _1762;
                            }
                            _1784 = _1770;
                            _1785 = _1771;
                            _1786 = _1772;
                            _1787 = _1773;
                            _1788 = _1774;
                            _1789 = _1775;
                          }
                          _1790 = _1784;
                          _1791 = _1785;
                          _1792 = _1786;
                          _1793 = _1787;
                          _1794 = _1788;
                          _1795 = _1789;
                        }
                        _1804 = _1790;
                        _1805 = _1791;
                        _1806 = _1792;
                        _1807 = _1793;
                        _1808 = _1794;
                        _1809 = _1795;
                      }
                      _1818 = _1804;
                      _1819 = _1805;
                      _1820 = _1806;
                      _1821 = _1807;
                      _1822 = _1808;
                      _1823 = _1809;
                    }
                    _1832 = _1818;
                    _1833 = _1819;
                    _1834 = _1820;
                    _1835 = _1821;
                    _1836 = _1822;
                    _1837 = _1823;
                  }
                  _1846 = _1832;
                  _1847 = _1833;
                  _1848 = _1834;
                  _1849 = _1835;
                  _1850 = _1836;
                  _1851 = _1837;
                }
                _1852 = _1846;
                _1853 = _1847;
                _1854 = _1848;
                _1855 = _1849;
                _1856 = _1850;
                _1857 = _1851;
              }
              bool3 _1859 = (_1857 == 3).xxx;
              bool3 _1862 = (_1857 == 4).xxx;
              if (_1857 == 0) {
                _1946 = 0.0f;
                break;
              }
              float3 _1867 = normalize(_1855);
              float3 _1868 = normalize(_1854);
              float3 _1869 = normalize(_1853);
              float3 _1870 = normalize(float3(_1859.x ? _1855.x : _1852.x, _1859.y ? _1855.y : _1852.y, _1859.z ? _1855.z : _1852.z));
              float3 _1871 = normalize(float3(_1862.x ? _1855.x : _1856.x, _1862.y ? _1855.y : _1856.y, _1862.z ? _1855.z : _1856.z));
              float _1873 = clamp(dot(_1867, _1868), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1877 = sqrt(1.0f - (_1873 * _1873));
              float _1885 = clamp(dot(_1868, _1869), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1889 = sqrt(1.0f - (_1885 * _1885));
              float _1898 = clamp(dot(_1869, _1870), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1902 = sqrt(1.0f - (_1898 * _1898));
              float _1909 = ((cross(_1867, _1868).z * ((_1877 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1873) / _1877))) + (cross(_1868, _1869).z * ((_1889 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1885) / _1889)))) + (cross(_1869, _1870).z * ((_1902 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1898) / _1902)));
              float _1926;
              if (_1857 >= 4) {
                float _1914 = clamp(dot(_1870, _1871), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1918 = sqrt(1.0f - (_1914 * _1914));
                _1926 = _1909 + (cross(_1870, _1871).z * ((_1918 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1914) / _1918)));
              } else {
                _1926 = _1909;
              }
              float _1943;
              if (_1857 == 5) {
                float _1931 = clamp(dot(_1871, _1867), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1935 = sqrt(1.0f - (_1931 * _1931));
                _1943 = _1926 + (cross(_1871, _1867).z * ((_1935 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1931) / _1935)));
              } else {
                _1943 = _1926;
              }
              _1946 = max(_1943, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1949 = (_1026 & 2u) != 0u;
            uint _1953 = asuint(_30_m6[_1013].w);
            uint _1954 = asuint(_30_m6[_1019].w);
            float3 _1955 = _502 - _30_m6[_1004].xyz;
            float3 _1956 = abs(_1955);
            float _1957 = _1956.x;
            float _1958 = _1956.y;
            float _1960 = _1956.z;
            int _1993;
            if ((_1957 > _1958) && (_1957 > _1960)) {
              _1993 = int((_1955.x > 0.0f) ? (_1953 & 1023u) : ((_1953 >> 10u) & 1023u));
            } else {
              int _1985;
              if (_1958 > _1960) {
                _1985 = int((_1955.y > 0.0f) ? ((_1953 >> 20u) & 1023u) : (_1954 & 1023u));
              } else {
                _1985 = int((_1955.z > 0.0f) ? ((_1954 >> 10u) & 1023u) : ((_1954 >> 20u) & 1023u));
              }
              _1993 = _1985;
            }
            int _1996 = _1949 ? int(_30_m6[_1013].w) : ((_1993 == 1023) ? (-1) : _1993);
            uint _2005 = uint(_1996);
            uint _2007 = asuint(_34_m11.x) + (_2005 * 96u);
            uint _2009 = (_2007 + 64u) >> 2u;
            uint _2012 = _2009 + 1u;
            uint _2015 = _2009 + 2u;
            uint _2018 = _2009 + 3u;
            float4 _2022 = asfloat(uint4(_37.Load(_2009 * 4 + 0), _37.Load(_2012 * 4 + 0), _37.Load(_2015 * 4 + 0), _37.Load(_2018 * 4 + 0)));
            float _2354;
            do {
              uint _2038 = ((asuint(_34_m11.y) + (_2005 * 16u)) >> 2u) + 1u;
              if (_37.Load(_2038 * 4 + 0) > 0u) {
                float4 _389 = _955;
                float _2053;
                do {
                  if (_37.Load(_2038 * 4 + 0) == 0u) {
                    _2053 = 1.0f;
                    break;
                  }
                  _2053 = _389[_37.Load(_2038 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2354 = _2053;
                break;
              }
              uint _2054 = _2007 >> 2u;
              uint _2069 = (_2007 + 16u) >> 2u;
              uint _2084 = (_2007 + 32u) >> 2u;
              uint _2099 = (_2007 + 48u) >> 2u;
              float4 _2119 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2054 * 4 + 0), _37.Load((_2054 + 1u) * 4 + 0), _37.Load((_2054 + 2u) * 4 + 0), _37.Load((_2054 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2069 * 4 + 0), _37.Load((_2069 + 1u) * 4 + 0), _37.Load((_2069 + 2u) * 4 + 0), _37.Load((_2069 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2084 * 4 + 0), _37.Load((_2084 + 1u) * 4 + 0), _37.Load((_2084 + 2u) * 4 + 0), _37.Load((_2084 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2099 * 4 + 0), _37.Load((_2099 + 1u) * 4 + 0), _37.Load((_2099 + 2u) * 4 + 0), _37.Load((_2099 + 3u) * 4 + 0))))), float4((_502 - ((_1955 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1955, _1955)))) * _2022.x)) + (_469 * (_2022.y * 5.0f)), 1.0f));
              float3 _2123 = _2119.xyz / _2119.w.xxx;
              uint _2125 = (_2007 + 80u) >> 2u;
              float4 _2138 = asfloat(uint4(_37.Load(_2125 * 4 + 0), _37.Load((_2125 + 1u) * 4 + 0), _37.Load((_2125 + 2u) * 4 + 0), _37.Load((_2125 + 3u) * 4 + 0)));
              float2 _2139 = _2123.xy;
              float2 _2141 = _2138.xy;
              float3 _2145 = _2123.xyz;
              bool3 _2146 = bool3(_2145.x <= 0.0f.xxx.x, _2145.y <= 0.0f.xxx.y, _2145.z <= 0.0f.xxx.z);
              bool3 _2147 = bool3(_2145.x >= 1.0f.xxx.x, _2145.y >= 1.0f.xxx.y, _2145.z >= 1.0f.xxx.z);
              float _2150 = _2123.z;
              float2 _2161 = ((_2139 * (_2138.zw - _2141)) + _2141).xy * _34_m10.zw;
              float2 _2163 = floor(_2161 + 0.5f.xx);
              float2 _2164 = _2161 - _2163;
              float _2165 = _2164.x;
              float _2166 = _2165 + 0.5f;
              float _2167 = _2166 * _2166;
              float _2170 = 1.0f - _2165;
              float _2171 = min(_2165, 0.0f);
              float _2174 = _2165 + 1.0f;
              float _2175 = max(_2165, 0.0f);
              float _2186 = _2164.y;
              float _2187 = _2186 + 0.5f;
              float _2188 = _2187 * _2187;
              float _2191 = 1.0f - _2186;
              float _2192 = min(_2186, 0.0f);
              float _2195 = _2186 + 1.0f;
              float _2196 = max(_2186, 0.0f);
              float3 _2208 = float3(0.1599999964237213134765625f * _2170, 0.1599999964237213134765625f * ((_2174 - (_2175 * _2175)) + 1.0f), _2167 * 0.07999999821186065673828125f);
              float3 _2209 = float3(0.1599999964237213134765625f * ((_2167 * 0.5f) - _2165), 0.1599999964237213134765625f * ((_2170 - (_2171 * _2171)) + 1.0f), 0.1599999964237213134765625f * _2174) + _2208;
              float3 _2211 = float3(0.1599999964237213134765625f * _2191, 0.1599999964237213134765625f * ((_2195 - (_2196 * _2196)) + 1.0f), _2188 * 0.07999999821186065673828125f);
              float3 _2212 = float3(0.1599999964237213134765625f * ((_2188 * 0.5f) - _2186), 0.1599999964237213134765625f * ((_2191 - (_2192 * _2192)) + 1.0f), 0.1599999964237213134765625f * _2195) + _2211;
              float3 _2218 = ((_2208 / _2209) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _2220 = ((_2211 / _2212) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _2222 = _2163 * _34_m10.xy;
              float _2223 = _2218.x;
              float _2224 = _2220.x;
              float _2227 = _2218.y;
              float _2230 = _2218.z;
              float _2233 = _2220.y;
              float _2240 = _2220.z;
              float _2247 = _2209.x;
              float _2248 = _2212.x;
              float _2250 = _2209.y;
              float _2252 = _2209.z;
              float _2254 = _2212.y;
              float _2258 = _2212.z;
              float _2316 = (((((((_2247 * _2248) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2223, _2224), _377).xy, _2150)) + ((_2250 * _2248) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2227, _2224), _377).xy, _2150))) + ((_2252 * _2248) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2230, _2224), _377).xy, _2150))) + ((_2247 * _2254) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2223, _2233), _377).xy, _2150))) + ((_2250 * _2254) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2227, _2233), _377).xy, _2150))) + ((_2252 * _2254) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2230, _2233), _377).xy, _2150))) + ((_2247 * _2258) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2223, _2240), _377).xy, _2150));
              float4 _2339 = asfloat(uint4(_37.Load(_2009 * 4 + 0), _37.Load(_2012 * 4 + 0), _37.Load(_2015 * 4 + 0), _37.Load(_2018 * 4 + 0)));
              float _2340 = _2339.w;
              float2 _2342 = min(_2139, 1.0f.xx - _2139);
              _2354 = lerp(1.0f, (any(bool3(_2146.x || _2147.x, _2146.y || _2147.y, _2146.z || _2147.z)) || ((asuint(_2150) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2316 + ((_2250 * _2258) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2227, _2240), _377).xy, _2150))) + ((_2252 * _2258) * _35.SampleCmpLevelZero(_16, float3(_2222 + float2(_2230, _2240), _377).xy, _2150))), _1949 ? min(_2340, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2339.z - _2119.w) * 0.25f, min(_2342.x, _2342.y)))) : _2340);
              break;
            } while (false);
            _2360 = ((_30_m6[_1001].xyz * (((((_703 * _1165.x) + ((1.0f.xxx - _703) * _1165.y)) * _1559) * _30_m6[_1022].z) + (_690 * _1946))) * _1138) * ((_1996 >= 0) ? _2354 : 1.0f);
            break;
          } while (false);
          _3755 = _961;
          _3756 = _2360 * _1101;
          break;
        }
        float _3753;
        float3 _3754;
        if (_30_m6[_1001].w < 1.5f) {
          float3 _2965 = float3(0.100000001490116119384765625f, _701, 1.0f);
          float _2974 = (0.5f + (0.5f * _30_m6[_1007].y)) - abs(_30_m6[_1007].x);
          float _2975 = _30_m6[_1007].y - _2974;
          float _2982 = abs(max((1.0f - abs(_2974)) - abs(_2975), 0.00048828125f));
          float3 _2986 = normalize(float3(_2974, _2975, (_30_m6[_1007].x >= 0.0f) ? _2982 : (-_2982)));
          float3 _2987 = _30_m6[_1004].xyz - _502;
          float _2988 = dot(_2987, _2987);
          float _2989 = rsqrt(_2988);
          float3 _2990 = _2987 * _2989;
          float _2994 = clamp(_30_m6[_1022].y * _2989, 0.0f, 1.0f);
          int _2999 = int(_30_m6[_1022].w);
          float3 _3000 = _2986 * _30_m6[_1007].z;
          float3 _3001 = _3000 * 0.5f;
          float3 _3002 = _2987 - _3001;
          float3 _3003 = _2987 + _3001;
          bool _3005 = (_1105 & 1u) == 0u;
          bool _3008 = _3005 || ((_1026 & 2u) != 0u);
          bool _3011 = (!_3005) && (_30_m6[_1007].z > 0.0f);
          float _3030;
          float _3031;
          if (_3011) {
            float _3015 = length(_3002);
            float _3016 = length(_3003);
            _3030 = clamp(0.5f * ((dot(_469, _3002) / _3015) + (dot(_469, _3003) / _3016)), 0.0f, 1.0f);
            _3031 = 1.0f / ((((_3015 * _3016) + dot(_3002, _3003)) * 0.5f) + 1.0f);
          } else {
            _3030 = clamp(dot(_469, _2990), 0.0f, 1.0f);
            _3031 = 1.0f;
          }
          float _3053;
          if (_30_m6[_1019].w < 0.0f) {
            float _3047 = _2988 * (_30_m6[_1004].w * _30_m6[_1004].w);
            float _3050 = clamp(1.0f - (_3047 * _3047), 0.0f, 1.0f);
            _3053 = lerp(1.0f / (_2988 + 1.0f), _3031, float(_3011)) * (_3050 * _3050);
          } else {
            float3 _3036 = _2987 * _30_m6[_1004].w;
            _3053 = _3031 * pow(1.0f - clamp(dot(_3036, _3036), 0.0f, 1.0f), _30_m6[_1019].w);
          }
          float _3059 = clamp((dot(_2990, -_2986) - _30_m6[_1007].z) * _30_m6[_1007].w, 0.0f, 1.0f);
          float _3063 = _3053 * lerp(1.0f, _3059 * _3059, float(_3005));
          float _3163;
          if ((!_3011) && (_2999 >= 0)) {
            uint _3069 = uint(_2999);
            float2 _3156;
            [branch] if (_3005) {
              float4 _3146 = mul(_50_m1[_3069], _506);
              _3156 = _50_m0[_3069].xy + (clamp(_3146.xy / _3146.w.xx, 0.0f.xx, 1.0f.xx) * _50_m0[_3069].zw);
            }
            else {
              float3 _3083 = mul(float4(-_2987, 0.0f), _50_m1[_3069]).xyz;
              float3 _384 = _3083;
              float3 _383 = _3083;
              float3 _382 = abs(_3083);
              uint _3092 = uint(int(_382.y > _382.x));
              uint _3098 = (_382.z > _382[_3092]) ? 2u : _3092;
              uint _3104 = (_3098 * 2u) + uint(_383[_3098] < 0.0f);
              float _3108 = abs(_384[_3104 / 2u]);
              float _3128 = 0.5f - (0.000244140625f / _50_m0[_3069].w);
              _3156 = _50_m0[_3069].xy + (clamp(float2((float(_3104) + ((((_384[uint(_351[_3104].x)] * _352[_3104].x) / _3108) * _3128) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_384[uint(_351[_3104].y)] * _352[_3104].y) / _3108) * _3128)), 0.0f.xx, 1.0f.xx) * _50_m0[_3069].zw);
            }
            _3163 = _3063 * _48.SampleLevel(_13, _3156, 0.0f).x;
          } else {
            _3163 = _3063;
          }
          bool _3164 = _3163 > 0.0f;
          float _3573;
          if (_3164) {
            int _3217;
            if (_3008) {
              _3217 = int(_30_m6[_1010].x);
            } else {
              uint _3172 = asuint(_30_m6[_1007].w);
              uint _3173 = asuint(_30_m6[_1010].x);
              float3 _3174 = _502 - _30_m6[_1004].xyz;
              float3 _3175 = abs(_3174);
              float _3176 = _3175.x;
              float _3177 = _3175.y;
              float _3179 = _3175.z;
              int _3212;
              if ((_3176 > _3177) && (_3176 > _3179)) {
                _3212 = int((_3174.x > 0.0f) ? (_3172 & 1023u) : ((_3172 >> 10u) & 1023u));
              } else {
                int _3204;
                if (_3177 > _3179) {
                  _3204 = int((_3174.y > 0.0f) ? ((_3172 >> 20u) & 1023u) : (_3173 & 1023u));
                } else {
                  _3204 = int((_3174.z > 0.0f) ? ((_3173 >> 10u) & 1023u) : ((_3173 >> 20u) & 1023u));
                }
                _3212 = _3204;
              }
              _3217 = (_3212 == 1023) ? (-1) : _3212;
            }
            uint _3222 = uint(_3217);
            uint _3224 = asuint(_34_m11.x) + (_3222 * 96u);
            uint _3226 = (_3224 + 64u) >> 2u;
            uint _3229 = _3226 + 1u;
            uint _3232 = _3226 + 2u;
            uint _3235 = _3226 + 3u;
            float4 _3239 = asfloat(uint4(_37.Load(_3226 * 4 + 0), _37.Load(_3229 * 4 + 0), _37.Load(_3232 * 4 + 0), _37.Load(_3235 * 4 + 0)));
            float _3571;
            do {
              uint _3255 = ((asuint(_34_m11.y) + (_3222 * 16u)) >> 2u) + 1u;
              if (_37.Load(_3255 * 4 + 0) > 0u) {
                float4 _381 = _955;
                float _3270;
                do {
                  if (_37.Load(_3255 * 4 + 0) == 0u) {
                    _3270 = 1.0f;
                    break;
                  }
                  _3270 = _381[_37.Load(_3255 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3571 = _3270;
                break;
              }
              uint _3271 = _3224 >> 2u;
              uint _3286 = (_3224 + 16u) >> 2u;
              uint _3301 = (_3224 + 32u) >> 2u;
              uint _3316 = (_3224 + 48u) >> 2u;
              float4 _3336 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3271 * 4 + 0), _37.Load((_3271 + 1u) * 4 + 0), _37.Load((_3271 + 2u) * 4 + 0), _37.Load((_3271 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3286 * 4 + 0), _37.Load((_3286 + 1u) * 4 + 0), _37.Load((_3286 + 2u) * 4 + 0), _37.Load((_3286 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3301 * 4 + 0), _37.Load((_3301 + 1u) * 4 + 0), _37.Load((_3301 + 2u) * 4 + 0), _37.Load((_3301 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3316 * 4 + 0), _37.Load((_3316 + 1u) * 4 + 0), _37.Load((_3316 + 2u) * 4 + 0), _37.Load((_3316 + 3u) * 4 + 0))))), float4((_502 - ((-_2990) * _3239.x)) + (_469 * (_3239.y * 5.0f)), 1.0f));
              float3 _3340 = _3336.xyz / _3336.w.xxx;
              uint _3342 = (_3224 + 80u) >> 2u;
              float4 _3355 = asfloat(uint4(_37.Load(_3342 * 4 + 0), _37.Load((_3342 + 1u) * 4 + 0), _37.Load((_3342 + 2u) * 4 + 0), _37.Load((_3342 + 3u) * 4 + 0)));
              float2 _3356 = _3340.xy;
              float2 _3358 = _3355.xy;
              float3 _3362 = _3340.xyz;
              bool3 _3363 = bool3(_3362.x <= 0.0f.xxx.x, _3362.y <= 0.0f.xxx.y, _3362.z <= 0.0f.xxx.z);
              bool3 _3364 = bool3(_3362.x >= 1.0f.xxx.x, _3362.y >= 1.0f.xxx.y, _3362.z >= 1.0f.xxx.z);
              float _3367 = _3340.z;
              float2 _3378 = ((_3356 * (_3355.zw - _3358)) + _3358).xy * _34_m10.zw;
              float2 _3380 = floor(_3378 + 0.5f.xx);
              float2 _3381 = _3378 - _3380;
              float _3382 = _3381.x;
              float _3383 = _3382 + 0.5f;
              float _3384 = _3383 * _3383;
              float _3387 = 1.0f - _3382;
              float _3388 = min(_3382, 0.0f);
              float _3391 = _3382 + 1.0f;
              float _3392 = max(_3382, 0.0f);
              float _3403 = _3381.y;
              float _3404 = _3403 + 0.5f;
              float _3405 = _3404 * _3404;
              float _3408 = 1.0f - _3403;
              float _3409 = min(_3403, 0.0f);
              float _3412 = _3403 + 1.0f;
              float _3413 = max(_3403, 0.0f);
              float3 _3425 = float3(0.1599999964237213134765625f * _3387, 0.1599999964237213134765625f * ((_3391 - (_3392 * _3392)) + 1.0f), _3384 * 0.07999999821186065673828125f);
              float3 _3426 = float3(0.1599999964237213134765625f * ((_3384 * 0.5f) - _3382), 0.1599999964237213134765625f * ((_3387 - (_3388 * _3388)) + 1.0f), 0.1599999964237213134765625f * _3391) + _3425;
              float3 _3428 = float3(0.1599999964237213134765625f * _3408, 0.1599999964237213134765625f * ((_3412 - (_3413 * _3413)) + 1.0f), _3405 * 0.07999999821186065673828125f);
              float3 _3429 = float3(0.1599999964237213134765625f * ((_3405 * 0.5f) - _3403), 0.1599999964237213134765625f * ((_3408 - (_3409 * _3409)) + 1.0f), 0.1599999964237213134765625f * _3412) + _3428;
              float3 _3435 = ((_3425 / _3426) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _3437 = ((_3428 / _3429) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _3439 = _3380 * _34_m10.xy;
              float _3440 = _3435.x;
              float _3441 = _3437.x;
              float _3444 = _3435.y;
              float _3447 = _3435.z;
              float _3450 = _3437.y;
              float _3457 = _3437.z;
              float _3464 = _3426.x;
              float _3465 = _3429.x;
              float _3467 = _3426.y;
              float _3469 = _3426.z;
              float _3471 = _3429.y;
              float _3475 = _3429.z;
              float _3533 = (((((((_3464 * _3465) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3440, _3441), _377).xy, _3367)) + ((_3467 * _3465) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3444, _3441), _377).xy, _3367))) + ((_3469 * _3465) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3447, _3441), _377).xy, _3367))) + ((_3464 * _3471) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3440, _3450), _377).xy, _3367))) + ((_3467 * _3471) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3444, _3450), _377).xy, _3367))) + ((_3469 * _3471) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3447, _3450), _377).xy, _3367))) + ((_3464 * _3475) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3440, _3457), _377).xy, _3367));
              float4 _3556 = asfloat(uint4(_37.Load(_3226 * 4 + 0), _37.Load(_3229 * 4 + 0), _37.Load(_3232 * 4 + 0), _37.Load(_3235 * 4 + 0)));
              float _3557 = _3556.w;
              float2 _3559 = min(_3356, 1.0f.xx - _3356);
              _3571 = lerp(1.0f, (any(bool3(_3363.x || _3364.x, _3363.y || _3364.y, _3363.z || _3364.z)) || ((asuint(_3367) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3533 + ((_3467 * _3475) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3444, _3457), _377).xy, _3367))) + ((_3469 * _3475) * _35.SampleCmpLevelZero(_16, float3(_3439 + float2(_3447, _3457), _377).xy, _3367))), _3008 ? min(_3557, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3556.z - _3336.w) * 0.25f, min(_3559.x, _3559.y)))) : _3557);
              break;
            } while (false);
            _3573 = (_3217 >= 0) ? _3571 : 1.0f;
          } else {
            _3573 = 1.0f;
          }
          float3 _3597;
          float3 _3598;
          if (_3011) {
            float3 _3576 = _2965 * _2965;
            float3 _3577 = reflect(_530, _469);
            float _3586 = dot(_3577, _3000);
            _3597 = _3576 / clamp(_3576 + (0.5f * clamp(_30_m6[_1007].z * _2989, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3598 = normalize(_3002 + (_3000 * clamp(dot(_3002, (_3577 * _3586) - _3000) / ((_30_m6[_1007].z * _30_m6[_1007].z) - (_3586 * _3586)), 0.0f, 1.0f)));
          } else {
            _3597 = 1.0f.xxx;
            _3598 = _2990;
          }
          float3 _3599 = _3598 + _528;
          float3 _3603 = _3599 * rsqrt(max(6.103515625e-05f, dot(_3599, _3599)));
          float3 _3752;
          if (_3164) {
            float _3606 = dot(_469, _3598);
            float _3607 = clamp(_3030, 0.0f, 1.0f);
            float _3609 = clamp(dot(_469, _3603), 0.0f, 1.0f);
            float _3611 = clamp(dot(_528, _3603), 0.0f, 1.0f);
            float _3612 = dot(_528, _3598);
            float _3614 = clamp(_704, 0.0f, 1.0f);
            float _3615 = _701 * _701;
            float _3625;
            if (_2994 > 0.0f) {
              _3625 = clamp(_3615 + ((_2994 * _2994) / ((_3611 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3625 = _3615;
            }
            float _3626 = _3625 * _3625;
            float _3647 = (((_3609 * _3626) - _3609) * _3609) + 1.0f;
            float _3652 = 1.0f - _3611;
            float _3653 = _3652 * _3652;
            float _3655 = (_3652 * _3653) * _3653;
            float _3685 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_700 * (1.04997003078460693359375f + (_700 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _700))))));
            float _3686 = 1.0f - _3685;
            float3 _3689 = _703 + ((1.0f.xxx - _703) * 0.0476190485060214996337890625f);
            float _3720 = clamp(-_3612, 0.0f, 1.0f);
            float _3724 = (((_3720 * 0.36000001430511474609375f) - _3720) * _3720) + 1.0f;
            float _3725 = _3724 * _3724;
            float3 _3737 = ((min(((_703 * (1.0f - _3655)) + _3655.xxx) * (((_3626 / (_3647 * _3647)) * _3597.y) * (0.5f / (((_3607 * sqrt(((((-_3614) * _3626) + _3614) * _3614) + _3626)) + (_3614 * sqrt(((((-_3607) * _3626) + _3607) * _3607) + _3626))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3689 * (((_46.SampleLevel(_13, (float2(_3614, _701) * 0.96875f) + 0.015625f.xx, 0.0f).x * _46.SampleLevel(_13, (float2(_3607, _701) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3685) / _3686)) * _3689) / (1.0f.xxx - (_3689 * _3686)))) * lerp(clamp(_704 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_3612, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_3612 + 1.0f, 0.0f, 1.0f))) * _430;
            _3752 = (((clamp(_3737 * _30_m6[_1022].z, 0.0f.xxx, 1000.0f.xxx) * _3030) + (((((_690 / max(0.00999999977648258209228515625f, max(max(_690.x, _690.y), _690.z)).xxx) * _413) * (clamp(0.5f - _3606, 0.0f, 1.0f) * ((0.36000001430511474609375f != _3725) ? (0.36000001430511474609375f / _3725) : 1.0f))) + (_690 * (clamp(_3606 + _421, 0.0f, 1.0f) - clamp(_3607, 0.0f, 1.0f)))) * _430)) + (((_690 * _430) * _3597.z) * _3030)) * (((_30_m6[_1001].xyz * _3163) * _3573) * _1101);
          } else {
            _3752 = 0.0f.xxx;
          }
          _3753 = _961;
          _3754 = _3752;
        } else {
          float _2963;
          do {
            if (_1108) {
              _2963 = 1.0f;
              break;
            }
            float _2377 = (0.5f + (0.5f * _30_m6[_1007].y)) - abs(_30_m6[_1007].x);
            float _2378 = _30_m6[_1007].y - _2377;
            float _2385 = abs(max((1.0f - abs(_2377)) - abs(_2378), 0.00048828125f));
            float3 _2389 = normalize(float3(_2377, _2378, (_30_m6[_1007].x >= 0.0f) ? _2385 : (-_2385)));
            float3 _2390 = _30_m6[_1004].xyz - _502;
            float _2391 = dot(_2390, _2390);
            float3 _2393 = _2390 * rsqrt(_2391);
            int _2396 = int(_30_m6[_1022].w);
            float3 _2398 = (_2389 * _30_m6[_1007].z) * 0.5f;
            float3 _2399 = _2390 - _2398;
            float3 _2400 = _2390 + _2398;
            bool _2402 = (_1105 & 1u) == 0u;
            bool _2405 = _2402 || ((_1026 & 2u) != 0u);
            bool _2408 = (!_2402) && (_30_m6[_1007].z > 0.0f);
            float _2420;
            if (_2408) {
              _2420 = 1.0f / ((((length(_2399) * length(_2400)) + dot(_2399, _2400)) * 0.5f) + 1.0f);
            } else {
              _2420 = 1.0f;
            }
            float _2442;
            if (_30_m6[_1019].w < 0.0f) {
              float _2436 = _2391 * (_30_m6[_1004].w * _30_m6[_1004].w);
              float _2439 = clamp(1.0f - (_2436 * _2436), 0.0f, 1.0f);
              _2442 = lerp(1.0f / (_2391 + 1.0f), _2420, float(_2408)) * (_2439 * _2439);
            } else {
              float3 _2425 = _2390 * _30_m6[_1004].w;
              _2442 = _2420 * pow(1.0f - clamp(dot(_2425, _2425), 0.0f, 1.0f), _30_m6[_1019].w);
            }
            float _2448 = clamp((dot(_2393, -_2389) - _30_m6[_1007].z) * _30_m6[_1007].w, 0.0f, 1.0f);
            float _2452 = _2442 * lerp(1.0f, _2448 * _2448, float(_2402));
            float _2552;
            if ((!_2408) && (_2396 >= 0)) {
              uint _2458 = uint(_2396);
              float2 _2545;
              [branch] if (_2402) {
                float4 _2535 = mul(_50_m1[_2458], _506);
                _2545 = _50_m0[_2458].xy + (clamp(_2535.xy / _2535.w.xx, 0.0f.xx, 1.0f.xx) * _50_m0[_2458].zw);
              }
              else {
                float3 _2472 = mul(float4(-_2390, 0.0f), _50_m1[_2458]).xyz;
                float3 _388 = _2472;
                float3 _387 = _2472;
                float3 _386 = abs(_2472);
                uint _2481 = uint(int(_386.y > _386.x));
                uint _2487 = (_386.z > _386[_2481]) ? 2u : _2481;
                uint _2493 = (_2487 * 2u) + uint(_387[_2487] < 0.0f);
                float _2497 = abs(_388[_2493 / 2u]);
                float _2517 = 0.5f - (0.000244140625f / _50_m0[_2458].w);
                _2545 = _50_m0[_2458].xy + (clamp(float2((float(_2493) + ((((_388[uint(_351[_2493].x)] * _352[_2493].x) / _2497) * _2517) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_388[uint(_351[_2493].y)] * _352[_2493].y) / _2497) * _2517)), 0.0f.xx, 1.0f.xx) * _50_m0[_2458].zw);
              }
              _2552 = _2452 * _48.SampleLevel(_13, _2545, 0.0f).x;
            } else {
              _2552 = _2452;
            }
            float _2962;
            if (_2552 > 0.0f) {
              int _2606;
              if (_2405) {
                _2606 = int(_30_m6[_1010].x);
              } else {
                uint _2561 = asuint(_30_m6[_1007].w);
                uint _2562 = asuint(_30_m6[_1010].x);
                float3 _2563 = _502 - _30_m6[_1004].xyz;
                float3 _2564 = abs(_2563);
                float _2565 = _2564.x;
                float _2566 = _2564.y;
                float _2568 = _2564.z;
                int _2601;
                if ((_2565 > _2566) && (_2565 > _2568)) {
                  _2601 = int((_2563.x > 0.0f) ? (_2561 & 1023u) : ((_2561 >> 10u) & 1023u));
                } else {
                  int _2593;
                  if (_2566 > _2568) {
                    _2593 = int((_2563.y > 0.0f) ? ((_2561 >> 20u) & 1023u) : (_2562 & 1023u));
                  } else {
                    _2593 = int((_2563.z > 0.0f) ? ((_2562 >> 10u) & 1023u) : ((_2562 >> 20u) & 1023u));
                  }
                  _2601 = _2593;
                }
                _2606 = (_2601 == 1023) ? (-1) : _2601;
              }
              uint _2611 = uint(_2606);
              uint _2613 = asuint(_34_m11.x) + (_2611 * 96u);
              uint _2615 = (_2613 + 64u) >> 2u;
              uint _2618 = _2615 + 1u;
              uint _2621 = _2615 + 2u;
              uint _2624 = _2615 + 3u;
              float4 _2628 = asfloat(uint4(_37.Load(_2615 * 4 + 0), _37.Load(_2618 * 4 + 0), _37.Load(_2621 * 4 + 0), _37.Load(_2624 * 4 + 0)));
              float _2960;
              do {
                uint _2644 = ((asuint(_34_m11.y) + (_2611 * 16u)) >> 2u) + 1u;
                if (_37.Load(_2644 * 4 + 0) > 0u) {
                  float4 _385 = _955;
                  float _2659;
                  do {
                    if (_37.Load(_2644 * 4 + 0) == 0u) {
                      _2659 = 1.0f;
                      break;
                    }
                    _2659 = _385[_37.Load(_2644 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2960 = _2659;
                  break;
                }
                uint _2660 = _2613 >> 2u;
                uint _2675 = (_2613 + 16u) >> 2u;
                uint _2690 = (_2613 + 32u) >> 2u;
                uint _2705 = (_2613 + 48u) >> 2u;
                float4 _2725 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2660 * 4 + 0), _37.Load((_2660 + 1u) * 4 + 0), _37.Load((_2660 + 2u) * 4 + 0), _37.Load((_2660 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2675 * 4 + 0), _37.Load((_2675 + 1u) * 4 + 0), _37.Load((_2675 + 2u) * 4 + 0), _37.Load((_2675 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2690 * 4 + 0), _37.Load((_2690 + 1u) * 4 + 0), _37.Load((_2690 + 2u) * 4 + 0), _37.Load((_2690 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2705 * 4 + 0), _37.Load((_2705 + 1u) * 4 + 0), _37.Load((_2705 + 2u) * 4 + 0), _37.Load((_2705 + 3u) * 4 + 0))))), float4((_502 - ((-_2393) * _2628.x)) + (_469 * (_2628.y * 5.0f)), 1.0f));
                float3 _2729 = _2725.xyz / _2725.w.xxx;
                uint _2731 = (_2613 + 80u) >> 2u;
                float4 _2744 = asfloat(uint4(_37.Load(_2731 * 4 + 0), _37.Load((_2731 + 1u) * 4 + 0), _37.Load((_2731 + 2u) * 4 + 0), _37.Load((_2731 + 3u) * 4 + 0)));
                float2 _2745 = _2729.xy;
                float2 _2747 = _2744.xy;
                float3 _2751 = _2729.xyz;
                bool3 _2752 = bool3(_2751.x <= 0.0f.xxx.x, _2751.y <= 0.0f.xxx.y, _2751.z <= 0.0f.xxx.z);
                bool3 _2753 = bool3(_2751.x >= 1.0f.xxx.x, _2751.y >= 1.0f.xxx.y, _2751.z >= 1.0f.xxx.z);
                float _2756 = _2729.z;
                float2 _2767 = ((_2745 * (_2744.zw - _2747)) + _2747).xy * _34_m10.zw;
                float2 _2769 = floor(_2767 + 0.5f.xx);
                float2 _2770 = _2767 - _2769;
                float _2771 = _2770.x;
                float _2772 = _2771 + 0.5f;
                float _2773 = _2772 * _2772;
                float _2776 = 1.0f - _2771;
                float _2777 = min(_2771, 0.0f);
                float _2780 = _2771 + 1.0f;
                float _2781 = max(_2771, 0.0f);
                float _2792 = _2770.y;
                float _2793 = _2792 + 0.5f;
                float _2794 = _2793 * _2793;
                float _2797 = 1.0f - _2792;
                float _2798 = min(_2792, 0.0f);
                float _2801 = _2792 + 1.0f;
                float _2802 = max(_2792, 0.0f);
                float3 _2814 = float3(0.1599999964237213134765625f * _2776, 0.1599999964237213134765625f * ((_2780 - (_2781 * _2781)) + 1.0f), _2773 * 0.07999999821186065673828125f);
                float3 _2815 = float3(0.1599999964237213134765625f * ((_2773 * 0.5f) - _2771), 0.1599999964237213134765625f * ((_2776 - (_2777 * _2777)) + 1.0f), 0.1599999964237213134765625f * _2780) + _2814;
                float3 _2817 = float3(0.1599999964237213134765625f * _2797, 0.1599999964237213134765625f * ((_2801 - (_2802 * _2802)) + 1.0f), _2794 * 0.07999999821186065673828125f);
                float3 _2818 = float3(0.1599999964237213134765625f * ((_2794 * 0.5f) - _2792), 0.1599999964237213134765625f * ((_2797 - (_2798 * _2798)) + 1.0f), 0.1599999964237213134765625f * _2801) + _2817;
                float3 _2824 = ((_2814 / _2815) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
                float3 _2826 = ((_2817 / _2818) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
                float2 _2828 = _2769 * _34_m10.xy;
                float _2829 = _2824.x;
                float _2830 = _2826.x;
                float _2833 = _2824.y;
                float _2836 = _2824.z;
                float _2839 = _2826.y;
                float _2846 = _2826.z;
                float _2853 = _2815.x;
                float _2854 = _2818.x;
                float _2856 = _2815.y;
                float _2858 = _2815.z;
                float _2860 = _2818.y;
                float _2864 = _2818.z;
                float _2922 = (((((((_2853 * _2854) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2829, _2830), _377).xy, _2756)) + ((_2856 * _2854) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2833, _2830), _377).xy, _2756))) + ((_2858 * _2854) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2836, _2830), _377).xy, _2756))) + ((_2853 * _2860) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2829, _2839), _377).xy, _2756))) + ((_2856 * _2860) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2833, _2839), _377).xy, _2756))) + ((_2858 * _2860) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2836, _2839), _377).xy, _2756))) + ((_2853 * _2864) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2829, _2846), _377).xy, _2756));
                float4 _2945 = asfloat(uint4(_37.Load(_2615 * 4 + 0), _37.Load(_2618 * 4 + 0), _37.Load(_2621 * 4 + 0), _37.Load(_2624 * 4 + 0)));
                float _2946 = _2945.w;
                float2 _2948 = min(_2745, 1.0f.xx - _2745);
                _2960 = lerp(1.0f, (any(bool3(_2752.x || _2753.x, _2752.y || _2753.y, _2752.z || _2753.z)) || ((asuint(_2756) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2922 + ((_2856 * _2864) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2833, _2846), _377).xy, _2756))) + ((_2858 * _2864) * _35.SampleCmpLevelZero(_16, float3(_2828 + float2(_2836, _2846), _377).xy, _2756))), _2405 ? min(_2946, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2945.z - _2725.w) * 0.25f, min(_2948.x, _2948.y)))) : _2946);
                break;
              } while (false);
              _2962 = (_2606 >= 0) ? _2960 : 1.0f;
            } else {
              _2962 = 1.0f;
            }
            _2963 = _2962;
            break;
          } while (false);
          _3753 = _961 * _2963;
          _3754 = 0.0f.xxx;
        }
        _3755 = _3753;
        _3756 = _3754;
        break;
      } while (false);
      _986 = _3755;
      _989 = _988 + _3756;
    }
    _958 = _957 + _988;
  }
  float3 _3760 = _926.xyz + (_957 * _960);
  float3 _3762 = _472.xxx;
  float3 _3797;
  float3 _3798;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xB0D5D8CD:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3773 = min(_22.SampleBias(_12, _4, _9_m16).x, _472);
    _3797 = clamp((pow(abs(_705 + _3773), exp2(((-16.0f) * _701) - 1.0f)) - 1.0f) + _3773, 0.0f, 1.0f).xxx;
    _3798 = max(_3773.xxx, ((((((_690 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3773) + ((_690 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3773) + ((_690 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3773);
  }
  else {
    _3797 = _3762;
    _3798 = _3762;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3760 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3797 : 1.0f.xxx;
  // RenoDX code end
  float3 _3808 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3817 = _502 - (_9_m108.xyz + (_3808 * (-_9_m110.w)));
  float _3832 = max(min(max((max(abs(_3817.x), abs(_3817.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3817.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _4134;
  float4 _4135;
  float4 _4136;
  float _4137;
  float _4138;
  if ((_9_m108.w != 0.0f) && (_3832 < 1.0f)) {
    float3 _3845 = _502 - (_9_m108.xyz + (_3808 * (-_9_m110.y)));
    float _3859 = max(clamp((max(abs(_3845.x), abs(_3845.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3845.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3935;
    float4 _3936;
    float4 _3937;
    float4 _3938;
    if (_3859 < 1.0f) {
      float3 _3868 = ((_502 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3870 = _3868 - floor(_3868);
      float4 _3874 = _60.SampleLevel(_14, _3870, 0.0f);
      float _3875 = 1.0f - _3859;
      float _3879 = _9_m109.y * 0.5f;
      float _3884 = _3870.x;
      float _3885 = clamp(_3870.y, _3879, 1.0f - _3879) * 0.3333333432674407958984375f;
      float _3886 = _3870.z;
      float4 _3889 = _61.SampleLevel(_13, float3(_3884, _3885, _3886), 0.0f);
      float _3905 = _3874.x;
      float _3915 = _3874.y;
      float _3925 = _3874.z;
      _3935 = _3832 + (_3889.w * _3875);
      _3936 = float4(((_61.SampleLevel(_13, float3(_3884, _3885 + 0.666666686534881591796875f, _3886), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3925, _3925) * _3875;
      _3937 = float4(((_61.SampleLevel(_13, float3(_3884, _3885 + 0.3333333432674407958984375f, _3886), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3915, _3915) * _3875;
      _3938 = float4(((_3889.xyz * 4.0f) - 2.0f.xxx) * _3905, _3905) * _3875;
    } else {
      _3935 = _3832;
      _3936 = 0.0f.xxxx;
      _3937 = 0.0f.xxxx;
      _3938 = 0.0f.xxxx;
    }
    float3 _3944 = _502 - (_9_m108.xyz + (_3808 * (-_9_m110.z)));
    float _3958 = max(clamp((max(abs(_3944.x), abs(_3944.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3944.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _4038;
    float4 _4039;
    float4 _4040;
    float4 _4041;
    if (_3958 < 1.0f) {
      float3 _3967 = ((_502 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3969 = _3967 - floor(_3967);
      float4 _3973 = _62.SampleLevel(_14, _3969, 0.0f);
      float _3975 = _3859 * (1.0f - _3958);
      float _3979 = _9_m109.y * 0.5f;
      float _3984 = _3969.x;
      float _3985 = clamp(_3969.y, _3979, 1.0f - _3979) * 0.3333333432674407958984375f;
      float _3986 = _3969.z;
      float4 _3989 = _63.SampleLevel(_13, float3(_3984, _3985, _3986), 0.0f);
      float _4005 = _3973.x;
      float _4016 = _3973.y;
      float _4027 = _3973.z;
      _4038 = _3935 + (_3989.w * _3975);
      _4039 = _3936 + (float4(((_63.SampleLevel(_13, float3(_3984, _3985 + 0.666666686534881591796875f, _3986), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4027, _4027) * _3975);
      _4040 = _3937 + (float4(((_63.SampleLevel(_13, float3(_3984, _3985 + 0.3333333432674407958984375f, _3986), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4016, _4016) * _3975);
      _4041 = _3938 + (float4(((_3989.xyz * 4.0f) - 2.0f.xxx) * _4005, _4005) * _3975);
    } else {
      _4038 = _3935;
      _4039 = _3936;
      _4040 = _3937;
      _4041 = _3938;
    }
    float4 _4124;
    float4 _4125;
    float4 _4126;
    float _4127;
    if (_3958 > 0.0f) {
      float3 _4050 = ((_502 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4053 = _9_m109.xyz * 0.5f;
      float3 _4055 = clamp(_4050 - floor(_4050), _4053, 1.0f.xxx - _4053);
      float4 _4059 = _64.SampleLevel(_14, _4055, 0.0f);
      float _4061 = _3958 * (1.0f - _3832);
      float _4065 = _9_m109.y * 0.5f;
      float _4070 = _4055.x;
      float _4071 = clamp(_4055.y, _4065, 1.0f - _4065) * 0.3333333432674407958984375f;
      float _4072 = _4055.z;
      float4 _4075 = _65.SampleLevel(_13, float3(_4070, _4071, _4072), 0.0f);
      float _4091 = _4059.x;
      float _4102 = _4059.y;
      float _4113 = _4059.z;
      _4124 = _4039 + (float4(((_65.SampleLevel(_13, float3(_4070, _4071 + 0.666666686534881591796875f, _4072), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4113, _4113) * _4061);
      _4125 = _4040 + (float4(((_65.SampleLevel(_13, float3(_4070, _4071 + 0.3333333432674407958984375f, _4072), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4102, _4102) * _4061);
      _4126 = _4041 + (float4(((_4075.xyz * 4.0f) - 2.0f.xxx) * _4091, _4091) * _4061);
      _4127 = _4038 + (_4075.w * _4061);
    } else {
      _4124 = _4039;
      _4125 = _4040;
      _4126 = _4041;
      _4127 = _4038;
    }
    float _4130 = clamp((_4127 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _4134 = _4124;
    _4135 = _4125;
    _4136 = _4126;
    _4137 = _4130 - _3832;
    _4138 = (_4130 + _3832) * 0.5f;
  } else {
    _4134 = 0.0f.xxxx;
    _4135 = 0.0f.xxxx;
    _4136 = 0.0f.xxxx;
    _4137 = 0.0f;
    _4138 = 1.0f;
  }
  float4 _4158 = _4136 + float4(_9_m111.x * _4138, (_9_m111.y * _4138) + ((_9_m111.w * _4137) * 0.5f), _9_m111.z * _4138, (_9_m111.w * _4138) + ((_9_m111.y * _4137) * 0.375f));
  float4 _4178 = _4135 + float4(_9_m112.x * _4138, (_9_m112.y * _4138) + ((_9_m112.w * _4137) * 0.5f), _9_m112.z * _4138, (_9_m112.w * _4138) + ((_9_m112.y * _4137) * 0.375f));
  float4 _4198 = _4134 + float4(_9_m113.x * _4138, (_9_m113.y * _4138) + ((_9_m113.w * _4137) * 0.5f), _9_m113.z * _4138, (_9_m113.w * _4138) + ((_9_m113.y * _4137) * 0.375f));
  float4 _4356;
  float4 _4357;
  float4 _4358;
  [branch] if (all(bool2(_490.x >= 0.0f.xx.x, _490.y >= 0.0f.xx.y))) {
    float4 _4206 = _59.SampleLevel(_13, _490, 0.0f);
    float4 _4207 = abs(_4206);
    float4 _4353;
    float4 _4354;
    float4 _4355;
    [branch] if (any(bool4(_4207.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4207.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4207.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4207.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4213 = length(_4206.yzw);
      uint _4215;
      float _4218;
      _4215 = 0u;
      _4218 = 1.0f;
      for (float _4220 = _4213; _4220 > 4.599999904632568359375f;) {
        _4215++;
        _4218 *= 0.5f;
        _4220 *= 0.5f;
        continue;
      }
      float4 _4224 = _4206 * _4218;
      float4 _4229 = float4(0.0f, _4224.yzw);
      float2 _4251 = (_58.SampleLevel(_13, float2(((((length(_4229) * _57_m3.x) + _57_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _57_m2.xy) + _57_m2.zw;
      float4 _4265;
      _4265 = float4(_4251.x * 3.5449078083038330078125f, _4229.yzw * _4251.y) * exp(_4224.x * 0.282094776630401611328125f);
      for (uint _4268 = 0u; _4268 < _4215;) {
        _4265 = mul(float4x4(_4265, float4(_4265.yx, 0.0f, 0.0f), float4(_4265.z, 0.0f, _4265.x, 0.0f), float4(_4265.w, 0.0f, 0.0f, _4265.x)) * 0.282094776630401611328125f, _4265);
        _4268++;
        continue;
      }
      float4x4 _4289 = float4x4(_4265, float4(_4265.yx, 0.0f, 0.0f), float4(_4265.z, 0.0f, _4265.x, 0.0f), float4(_4265.w, 0.0f, 0.0f, _4265.x)) * 0.282094776630401611328125f;
      float4 _4299 = mul(_4289, float4(_4158.w * 1.1283791065216064453125f, _4158.y * (-0.977204978466033935546875f), _4158.z * 0.977204978466033935546875f, _4158.x * (-0.977204978466033935546875f)));
      float4 _4319 = mul(_4289, float4(_4178.w * 1.1283791065216064453125f, _4178.y * (-0.977204978466033935546875f), _4178.z * 0.977204978466033935546875f, _4178.x * (-0.977204978466033935546875f)));
      float4 _4339 = mul(_4289, float4(_4198.w * 1.1283791065216064453125f, _4198.y * (-0.977204978466033935546875f), _4198.z * 0.977204978466033935546875f, _4198.x * (-0.977204978466033935546875f)));
      _4353 = float4(_4299.x * 0.886226952075958251953125f, _4299.w * (-1.02332675457000732421875f), _4299.y * (-1.02332675457000732421875f), _4299.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4354 = float4(_4319.x * 0.886226952075958251953125f, _4319.w * (-1.02332675457000732421875f), _4319.y * (-1.02332675457000732421875f), _4319.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4355 = float4(_4339.x * 0.886226952075958251953125f, _4339.w * (-1.02332675457000732421875f), _4339.y * (-1.02332675457000732421875f), _4339.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4353 = _4158;
      _4354 = _4178;
      _4355 = _4198;
    }
    _4356 = _4353;
    _4357 = _4354;
    _4358 = _4355;
  }
  else {
    _4356 = _4158;
    _4357 = _4178;
    _4358 = _4198;
  }
  float4 _4361 = float4(_469.x, _641, _469.z, 1.0f);
  float3 _4366 = max(float3(dot(_4356, _4361), dot(_4357, _4361), dot(_4358, _4361)), 0.0f.xxx);
  float4 _4371 = float4(-_469, 1.0f);
  float3 _4388 = reflect(_530, _469);
  float _4396 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_701, 0.001000000047497451305389404296875f))));
  float2 _4400 = floor(_477 * _28_m0.w);
  float _4417 = floor(_509 - _28_m2.y);
  float _4421 = clamp(_4417, 0.0f, _28_m1.x - 1.0f);
  uint _4431 = (_4417 <= _4421) ? (_25.Load(uint(_9_m21.z + int(_4400.x + (_4400.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_4421)) * 4 + 0)) : 0u;
  float _4434 = dot(float4(_4366, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4436;
  float _4439;
  uint _4441;
  _4436 = 0.0f.xxx;
  _4439 = 1.0f;
  _4441 = _4431;
  uint _4442;
  float3 _4437;
  float _4440;
  bool _4444;
  [loop] for (;;) {
    bool _4443 = _4441 != 0u;
    _4444 = _4439 > 0.00999999977648258209228515625f;
    if (_4443 && _4444) {
      uint _4448 = firstbitlow(_4441);
      _4442 = _4441 ^ (1u << (_4448 & 31u));
      float3 _4468 = float3(dot(_28_m4[_4448]._m2, _506), dot(_28_m4[_4448]._m3, _506), dot(_28_m4[_4448]._m4, _506));
      float3 _4469 = abs(_4468);
      if (all(bool3(_4469.x <= _28_m4[_4448]._m1.xyz.x, _4469.y <= _28_m4[_4448]._m1.xyz.y, _4469.z <= _28_m4[_4448]._m1.xyz.z))) {
        float3 _4478 = _28_m4[_4448]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4480 = _4469 * 0.100000001490116119384765625f;
        float3 _4481 = _4480 * _4480;
        float3 _4484 = (_28_m4[_4448]._m1.xyz - _4469) * _28_m4[_4448]._m5.xyz;
        float3 _4532;
        [branch] if (_28_m4[_4448]._m6.x == 1.0f) {
          float3 _4517 = float3(dot(_28_m4[_4448]._m2.xyz, _4388), dot(_28_m4[_4448]._m3.xyz, _4388), dot(_28_m4[_4448]._m4.xyz, _4388));
          float3 _4519 = (_28_m4[_4448]._m1.xyz - _4468) / _4517;
          float3 _4522 = ((-_28_m4[_4448]._m1.xyz) - _4468) / _4517;
          bool3 _4523 = bool3(_4517.x > 0.0f.xxx.x, _4517.y > 0.0f.xxx.y, _4517.z > 0.0f.xxx.z);
          float3 _4524 = float3(_4523.x ? _4519.x : _4522.x, _4523.y ? _4519.y : _4522.y, _4523.z ? _4519.z : _4522.z);
          _4532 = _4468 + (_4517 * min(min(_4524.x, _4524.y), _4524.z));
        }
        else {
          _4532 = _4388;
        }
        float3 _4533 = normalize(_4532);
        float3 _4536 = float3(int3(sign(_4533)));
        float3 _4539 = _4533 / dot(_4533, _4536).xxx;
        float3 _4553;
        if (_4539.z < 0.0f) {
          float3 _4544 = abs(_4539);
          float2 _4551 = _4536.xy * float2(1.0f - _4544.y, 1.0f - _4544.x);
          _4553 = float3(_4551.x, _4551.y, _4539.z);
        } else {
          _4553 = _4539;
        }
        float _4574 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_4448]._m0, _4361)));
        float _4587 = clamp((min(_4484.x, min(_4484.y, _4484.z)) * _28_m4[_4448]._m6.y) + ((((((_4478 * _4478).x - ((_4481.x + _4481.y) + _4481.z)) * _28_m4[_4448]._m5.x) * _28_m4[_4448]._m5.x) * (1.0f - _28_m4[_4448]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_4448]._m6.w;
        _4437 = _4436 + ((((_23.SampleLevel(_15, float3((((_4553.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_4448]._m1.w), _4396).xyz * _28_m4[_4448]._m5.w) * ((((((clamp(abs(_4434 / _4574), 0.0f, 1.0f) * 2.0f) + _4434) / (2.0f + _4574)) - 1.0f) * _9_m23.w) + 1.0f)) * _4587) * _4439);
        _4440 = _4439 * (1.0f - _4587);
      } else {
        _4437 = _4436;
        _4440 = _4439;
      }
      _4436 = _4437;
      _4439 = _4440;
      _4441 = _4442;
      continue;
    } else {
      break;
    }
  }
  float3 _4652;
  if (_4444) {
    float3 _4595 = normalize(_4388);
    float3 _4598 = float3(int3(sign(_4595)));
    float3 _4601 = _4595 / dot(_4595, _4598).xxx;
    float3 _4615;
    if (_4601.z < 0.0f) {
      float3 _4606 = abs(_4601);
      float2 _4613 = _4598.xy * float2(1.0f - _4606.y, 1.0f - _4606.x);
      _4615 = float3(_4613.x, _4613.y, _4601.z);
    } else {
      _4615 = _4601;
    }
    float _4638 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, _4361)));
    _4652 = _4436 + ((_23.SampleLevel(_15, float3((((_4615.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _4396).xyz * ((((((clamp(abs(_4434 / _4638), 0.0f, 1.0f) * 2.0f) + _4434) / (2.0f + _4638)) - 1.0f) * _9_m23.w) + 1.0f)) * _4439);
  } else {
    _4652 = _4436;
  }
  float3 _4658 = (_4652 * _9_m23.z) * _9_m22.y;
  float3 _4679;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4673 = _21.SampleBias(_13, _4, _9_m16);
    float _4674 = _4673.x;
    _4679 = (_20.SampleBias(_13, _4, _9_m16).xyz * _4674) + (_4658 * (1.0f - _4674));
  }
  else {
    _4679 = _4658;
  }
  float3 _4700 = ((((_4366 * _690) * _9_m22.x) * _3798) + ((_4679 * ((_703 * _718.x) + (clamp(_474 * 4.0f, 0.0f, 1.0f) * _718.y).xxx)) * _3797)) + (((((max(float3(dot(_4356, _4371), dot(_4357, _4371), dot(_4358, _4371)), 0.0f.xxx) * _9_m22.x) * _3798) * (_690 / max(0.00999999977648258209228515625f, max(max(_690.x, _690.y), _690.z)).xxx)) * ((_413 * clamp(dot(_528, _469), 0.0f, 1.0f)) + (float(((_435 & 7u) << 2u) | (uint(_403.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _4702 = float4(_3760.x, _3760.y, _3760.z, _926.w) + float4(_4700.x, _4700.y, _4700.z, 0.0f.xxxx.w);
  float3 _4705 = clamp(_4702.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _4720 = _502.y * _9_m46.w;
  float _4725 = max(0.00999999977648258209228515625f, _4720 + _9_m47.w);
  float3 _4739 = exp(_9_m45.xyz * ((-max(0.0f, (_529 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4725)) / _4725) * exp(_4720 + _9_m48.w))));
  float _4742 = dot(_530, _9_m44.xyz);
  float _4748 = _9_m45.w * _9_m45.w;
  float _4752 = (1.0f + _4748) - ((2.0f * _9_m45.w) * _4742);
  float3 _5076;
  float _5077;
  if (_9_m55.z > 0.0f) {
    uint3 _4904 = (uint3(int3(_396, _397, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4905 = _4904.y;
    uint _4906 = _4904.z;
    uint _4909 = _4904.x + (_4905 * _4906);
    uint _4911 = _4905 + (_4906 * _4909);
    uint _4913 = _4906 + (_4909 * _4911);
    uint _4915 = _4909 + (_4911 * _4913);
    float _4939 = dot(_530, -_7_m0[2].xyz);
    float3 _4947 = _502 - _7_m11.xyz;
    float _4949 = (_9_m55.w * ((_4939 > 5.9604644775390625e-08f) ? (1.0f / _4939) : 0.0f)) * (1.0f / _529);
    float _4950 = _4947.y;
    float _4951 = _4949 * _4950;
    float _4953 = _7_m11.y + _4951;
    float _4954 = _4950 - _4951;
    float _4956 = (1.0f - _4949) * _529;
    float _4970 = max(-127.0f, _9_m49.z * _4954);
    float _4994 = max(-127.0f, _9_m52.x * _4954);
    float _5005 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4953 - _9_m49.x)))) * ((abs(_4970) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4970)) / _4970) : (0.693147182464599609375f - (0.2402265071868896484375f * _4970)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4953 - _9_m52.z)))) * ((abs(_4994) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4994)) / _4994) : (0.693147182464599609375f - (0.2402265071868896484375f * _4994))));
    float _5027 = clamp((_529 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5030 = clamp((max(clamp(exp2(-(_5005 * _4956)), 0.0f, 1.0f), _9_m51.w) + clamp((_529 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5027, 0.0f, 1.0f);
    float4 _5070 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _55.SampleLevel(_13, float3((_477 + ((((float3(uint3(_4915, _4911 + (_4913 * _4915), _379) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_509 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_509 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _5072 = _5070.w;
    _5076 = _5070.xyz + (((_9_m51.xyz * (1.0f - _5030)) + (((_9_m54.xyz * pow(clamp(dot(_528, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5005 * max(_4956 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5027))) * _5072);
    _5077 = _5072 * _5030;
  } else {
    float3 _4780 = _502 - _7_m11.xyz;
    float _4782 = _4780.y;
    float _4796 = max(-127.0f, _9_m49.z * _4782);
    float _4820 = max(-127.0f, _9_m52.x * _4782);
    float _4831 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4796) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4796)) / _4796) : (0.693147182464599609375f - (0.2402265071868896484375f * _4796)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4820) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4820)) / _4820) : (0.693147182464599609375f - (0.2402265071868896484375f * _4820))));
    float _4853 = clamp((_529 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4856 = clamp((max(clamp(exp2(-(_4831 * _529)), 0.0f, 1.0f), _9_m51.w) + clamp((_529 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4853, 0.0f, 1.0f);
    _5076 = (_9_m51.xyz * (1.0f - _4856)) + (((_9_m54.xyz * pow(clamp(dot(_528, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4831 * max(_529 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4853));
    _5077 = _4856;
  }
  float3 _5080 = _4739 * _5077;
  float3 _5082 = (_4705 * _5080) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4742 * _4742)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4748) / max((12.56637096405029296875f * _4752) * sqrt(_4752), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4739)) * _5077) + _5076);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _5082 = (_5082 * 0.65f) + (_4705 * 0.35f);
  }
  // RenoDX code end
  float _5083 = dot(_5080, 0.3333333432674407958984375f.xxx);
  float4 _5084 = float4(_5082.x, _5082.y, _5082.z, _4702.w);
  _5084.w = _5083;
  float _5111 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _502) * _9_m61.z), 0.0f, 1.0f);
  float3 _5119 = lerp(_4705, _5084.xyz, min((1.0f - _5111) + ((_70.SampleLevel(_14, (_502 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _5111), 1.0f + _5083).xxx);
  _5 = float4(_5119.x, _5119.y, _5119.z, _5084.w);
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

#include "./renodx_injection.hlsli"

// Ported from the native 0x1A15886A Vulkan dump.
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

static float _373;
static uint _375;

static const int2 _347[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _348[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(36, 3)]] cbuffer _6_7 : register(b36, space3) {
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

[[vk::binding(41, 3)]] cbuffer _8_9 : register(b41, space3) {
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

[[vk::binding(45, 3)]] ByteAddressBuffer _25 : register(t45, space3);
[[vk::binding(42, 3)]] cbuffer _26_28 : register(b42, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(37, 3)]] cbuffer _29_30 : register(b37, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(38, 3)]] cbuffer _31_32 : register(b38, space3) {
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

[[vk::binding(40, 3)]] cbuffer _33_34 : register(b40, space3) {
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

[[vk::binding(44, 3)]] ByteAddressBuffer _37 : register(t44, space3);
[[vk::binding(35, 3)]] cbuffer _42_43 : register(b35, space3) {
  column_major float4x4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c4);
};

[[vk::binding(43, 3)]] cbuffer _49_50 : register(b43, space3) {
  float4 _50_m0[32] : packoffset(c0);
  column_major float4x4 _50_m1[32] : packoffset(c32);
};

[[vk::binding(39, 3)]] cbuffer _56_57 : register(b39, space3) {
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
[[vk::binding(32, 3)]] Texture2D<float4> _19 : register(t32, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _20 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _21 : register(t11, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _22 : register(t26, space3);
[[vk::binding(12, 3)]] Texture2DArray<float4> _23 : register(t12, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _35 : register(t14, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _38 : register(t9, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _39 : register(t27, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _40 : register(t33, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _45 : register(t13, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _46 : register(t15, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _47 : register(t31, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _48 : register(t16, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _53 : register(t18, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _54 : register(t17, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _55 : register(t25, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _58 : register(t34, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _59 : register(t7, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _60 : register(t24, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _61 : register(t21, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _62 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _63 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _64 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _65 : register(t19, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _66 : register(t6, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _67 : register(t30, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _68 : register(t29, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _69 : register(t28, space3);

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
  uint2 _389 = uint2(gl_FragCoord.xy);
  int _392 = int(_389.x);
  int _393 = int(_389.y);
  int2 _395 = int3(_392, _393, 0).xy;
  float4 _397 = _67.Load(int3(_395, 0));
  float4 _399 = _68.Load(int3(_395, 0));
  float4 _401 = _69.Load(int3(_395, 0));
  uint _405 = uint(_397.x * 1023.0f);
  float _409 = float((_405 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _417 = float(((_405 & 7u) << 2u) | (uint(_397.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _421 = uint(round(_397.y * 1023.0f));
  float _426 = float((_421 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _431 = uint(_397.z * 1023.0f);
  float2 _446 = (_399.xy * 2.0f) - 1.0f.xx;
  float _450 = 1.0f - dot(1.0f.xx, abs(_446));
  float3 _452 = float3(_446.x, _450, _446.y);
  float3 _464;
  if (_450 < 0.0f) {
    float2 _459 = _452.xz;
    bool2 _460 = bool2(_459.x >= 0.0f.xx.x, _459.y >= 0.0f.xx.y);
    float2 _462 = (1.0f.xx - abs(_452.zx)) * float2(_460.x ? 1.0f.xx.x : (-1.0f).xx.x, _460.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _464 = float3(_462.x, _452.y, _462.y);
  } else {
    _464 = _452;
  }
  float3 _465 = normalize(_464);
  float _466 = _399.z;
  float _468 = _401.w;
  float _470 = (float(_421 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _473 = float2(_389);
  float2 _478 = (_473 + 0.5f.xx) * _9_m0.zw;
  float2 _486 = gl_FragCoord.xy * _9_m0.zw;
  float2 _488 = (_486 * 2.0f) - 1.0f.xx;
  float4 _491 = float4(_488, _19.SampleLevel(_12, _478, 0.0f).x, 1.0f);
  _491.y = -_488.y;
  float4 _494 = mul(_7_m6, _491);
  float3 _498 = _494.xyz / _494.w.xxx;
  float4 _502 = float4(_498, 1.0f);
  float _505 = abs(mul(_7_m0, _502).z);
  float3 _520;
  do {
    if (_9_m4.w == 0.0f) {
      _520 = _7_m11.xyz - _498;
      break;
    } else {
      _520 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _521 = dot(_520, _520);
  float _523 = rsqrt(max(_521, 9.9999999392252902907785028219223e-09f));
  float3 _524 = _520 * _523;
  float _525 = _521 * _523;
  float3 _526 = -_524;
  float2 _539;
  if (_9_m132.x > 0.00048828125f) {
    _539 = _66.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _539 = 1.0f.xx;
  }
  float _540 = dot(_465, float3(0.0f, -1.0f, 0.0f));
  float3 _595;
  [branch] if (_9_m124.x > 0.5f) {
    float _567 = abs(_465.x);
    float _569 = abs(_465.y);
    float _571 = abs(_465.z);
    float3 _576 = float3(_567, _569, _571) * (1.0f / ((_567 + _569) + _571));
    _595 = ((((float3(0.0f, 0.0f, 1.0f) * _576.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _576.y)) + (float3(1.0f, 0.0f, 0.0f) * _576.z)) * ((_45.SampleLevel(_14, _498 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_540)));
  }
  else {
    _595 = 0.0f.xxx;
  }
  float4 _609 = mul(_43_m0, float4((_498 + ((((_465 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_540, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _540), 0.100000001490116119384765625f, 1.0f)))) + _595, 1.0f));
  float2 _612 = (_609.xy * 0.5f) + 0.5f.xx;
  float4 _613 = float4(_612.x, _612.y, _609.z, _609.w);
  _613.y = 1.0f - _612.y;
  float _634;
  [branch] if (_9_m124.y > 0.5f) {
    _634 = _41.SampleCmpLevelZero(_17, (_613.xy + _43_m1.xy).xy, max(_609.z, 0.00048828125f));
  }
  else {
    _634 = 1.0f;
  }
  float _637 = _465.y;
  float _639 = lerp(_9_m128.w, 1.0f, clamp(_637, 0.0f, 1.0f));
  float2 _648 = abs(_498.xz - _7_m11.xz);
  float _651 = max(_648.x, _648.y);
  float _670 = 1.0f - (_539 * (1.0f - lerp(lerp(_9_m128.z * _639, 1.0f, lerp(_639 * _634, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _651))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _651)))).x;
  float _671 = 1.0f - _466;
  float _678 = clamp((_671 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f);
  float3 _686 = _401.xyz * lerp(1.0f, 0.25f, (_9_m120.x * _678) * _670);
  float _696 = lerp(_671, clamp(_671 + (((0.60000002384185791015625f - (0.4000000059604644775390625f * _678)) * _671) * (_466 + (-0.300000011920928955078125f))), _671, 0.699999988079071044921875f), (_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _670);
  float _697 = 1.0f - _696;
  float3 _699 = (0.07999999821186065673828125f * _470).xxx;
  float _700 = dot(_465, _524);
  float _701 = max(0.0f, _700);
  float4 _703 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _697) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _704 = _703.x;
  float2 _714 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_704 * _704, exp2((-9.27999973297119140625f) * _701)) * _704) + _703.y)) + _703.zw;
  float4 _922;
  do {
    [branch] if (_32_m4 == 0) {
      _922 = 0.0f.xxxx;
      break;
    }
    float4 _733 = _47.SampleLevel(_13, _486, 0.0f);
    float _734 = _733.x;
    float4 _738 = _38.Load(int3(_395, 0));
    float _739 = _738.x;
    float4 _921;
    if (_739 > 0.001000000047497451305389404296875f) {
      float3 _749 = reflect(_526, _465);
      float3 _750 = -_30_m0.xyz;
      float _755 = dot(_750, _749);
      float3 _757 = _749 - (_750 * _755);
      bool3 _759 = (_755 < _30_m4.z).xxx;
      float3 _767 = normalize((_750 * _30_m4.z) + ((_757 * rsqrt(max(6.103515625e-05f, dot(_757, _757)))) * _30_m4.y));
      float3 _768 = float3(_759.x ? _767.x : _749.x, _759.y ? _767.y : _749.y, _759.z ? _767.z : _749.z);
      float3 _772 = _768 + _524;
      float3 _776 = _772 * rsqrt(max(6.103515625e-05f, dot(_772, _772)));
      float _777 = dot(_465, _768);
      float _778 = clamp(dot(_768, _465), 0.0f, 1.0f);
      float _780 = clamp(dot(_465, _776), 0.0f, 1.0f);
      float _783 = dot(_524, _768);
      float _785 = clamp(_700, 0.0f, 1.0f);
      float _786 = _697 * _697;
      float _787 = _786 * _786;
      float _808 = (((_780 * _787) - _780) * _780) + 1.0f;
      float _811 = 1.0f - clamp(dot(_524, _776), 0.0f, 1.0f);
      float _812 = _811 * _811;
      float _814 = (_811 * _812) * _812;
      float _844 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_696 * (1.04997003078460693359375f + (_696 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _696))))));
      float _845 = 1.0f - _844;
      float3 _848 = _699 + ((1.0f.xxx - _699) * 0.0476190485060214996337890625f);
      float _879 = clamp(-_783, 0.0f, 1.0f);
      float _883 = (((_879 * 0.36000001430511474609375f) - _879) * _879) + 1.0f;
      float _884 = _883 * _883;
      float3 _896 = ((min(((_699 * (1.0f - _814)) + _814.xxx) * ((_787 / (_808 * _808)) * (0.5f / (((_778 * sqrt(((((-_785) * _787) + _785) * _785) + _787)) + (_785 * sqrt(((((-_778) * _787) + _778) * _778) + _787))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_848 * (((_46.SampleLevel(_13, (float2(_785, _697) * 0.96875f) + 0.015625f.xx, 0.0f).x * _46.SampleLevel(_13, (float2(_778, _697) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _844) / _845)) * _848) / (1.0f.xxx - (_848 * _845)))) * lerp(clamp(_700 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_783, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_783 + 1.0f, 0.0f, 1.0f))) * _426;
      float3 _906 = _30_m1.xyz * (((((_686 * _426) * 1.0f) * (float((_431 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_896 * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _778)) + (((((_686 / max(0.00999999977648258209228515625f, max(max(_686.x, _686.y), _686.z)).xxx) * _409) * (clamp(0.5f - _777, 0.0f, 1.0f) * ((0.36000001430511474609375f != _884) ? (0.36000001430511474609375f / _884) : 1.0f))) + (_686 * (clamp(_777 + _417, 0.0f, 1.0f) - clamp(_778, 0.0f, 1.0f)))) * _426));
      float3 _919 = lerp(_906, _906 * _40.SampleBias(_13, float2(_739, 0.5f), _9_m16).xyz, (1.0f - _739).xxx) * lerp(_734, max(_734, _426), _417);
      _921 = float4(_919.x, _919.y, _919.z, 0.0f.xxxx.w);
    } else {
      _921 = 0.0f.xxxx;
    }
    _922 = _921;
    break;
  } while (false);
  float2 _924 = floor(_473 * 0.03125f);
  int _932 = int((_924.x + (_924.y * _32_m9)) * 8.0f);
  float _939 = floor(_505 - (_9_m3.y * _32_m15));
  float _943 = clamp(_939, 0.0f, _32_m11 - 1.0f);
  int _945 = int(_943 * 8.0f);
  float4 _951 = _39.SampleBias(_13, _478, _9_m16);
  float3 _953;
  float _956;
  _953 = 0.0f.xxx;
  _956 = 1.0f;
  float3 _954;
  float _957;
  [loop] for (int _958 = 0; _958 <= 7; _953 = _954, _956 = _957, _958++) {
    uint _979 = (_939 <= _943) ? (_25.Load(uint((_32_m2 + _932) + _958) * 4 + 0) & _25.Load(uint((_32_m3 + _945) + _958) * 4 + 0)) : 0u;
    uint _980 = uint(_958);
    float3 _984;
    _957 = _956;
    _984 = 0.0f.xxx;
    uint _987;
    float _982;
    float3 _985;
    [loop] for (uint _986 = _979; _986 != 0u; _957 = _982, _984 = _985, _986 = _987) {
      uint _991 = firstbitlow(_986);
      _987 = _986 ^ (1u << (_991 & 31u));
      int _997 = int((32u * _980) + _991) * 8;
      int _1000 = _997 + 1;
      int _1003 = _997 + 2;
      int _1006 = _997 + 3;
      int _1009 = _997 + 4;
      int _1012 = _997 + 5;
      int _1015 = _997 + 6;
      int _1018 = _997 + 7;
      uint _1022 = uint(_30_m6[_1012].w);
      float _1097;
      if ((_1022 & 1u) == 1u) {
        uint _1028 = asuint(_30_m6[_1012].x);
        uint _1035 = asuint(_30_m6[_1012].y);
        uint _1042 = asuint(_30_m6[_1012].z);
        uint _1049 = asuint(_30_m6[_1015].x);
        uint _1056 = asuint(_30_m6[_1015].y);
        uint _1063 = asuint(_30_m6[_1015].z);
        float3 _1082 = abs(mul(float4(_498 - _30_m6[_1000].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1028).x, spvUnpackHalf2x16(_1042).x, spvUnpackHalf2x16(_1056).x, 0.0f), float4(spvUnpackHalf2x16(_1028 >> 16u).x, spvUnpackHalf2x16(_1042 >> 16u).x, spvUnpackHalf2x16(_1056 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1035).x, spvUnpackHalf2x16(_1049).x, spvUnpackHalf2x16(_1063).x, 0.0f), float4(spvUnpackHalf2x16(_1035 >> 16u).x, spvUnpackHalf2x16(_1049 >> 16u).x, spvUnpackHalf2x16(_1063 >> 16u).x, 0.0f))).xyz);
        float _1089 = _30_m6[_1018].x * 0.5f;
        float _1095 = 1.0f - clamp((max(max(_1082.x, _1082.y), _1082.z) - (_1089 + 0.5f)) / (0.5f - _1089), 0.0f, 1.0f);
        _1097 = _1095 * _1095;
      } else {
        _1097 = 1.0f;
      }
      uint _1101 = uint(_30_m6[_997].w);
      bool _1104 = _30_m6[_1006].z > 0.5f;
      if ((false || (_1097 < 0.001000000047497451305389404296875f)) || ((_1101 < 4u) && _1104)) {
        _982 = _957;
        _985 = _984;
        continue;
      }
      float _3751;
      float3 _3752;
      do {
        [branch] if (_1101 >= 4u) {
          float3 _2356;
          do {
            float3 _1123 = _30_m6[_1000].xyz - _498;
            if (dot(_30_m6[_1006].xyz, _1123) > 0.0f) {
              _2356 = 0.0f.xxx;
              break;
            }
            float _1130 = dot(_1123, _1123) * _30_m6[_1000].w;
            float _1133 = clamp(1.0f - (_1130 * _1130), 0.0f, 1.0f);
            float _1134 = _1133 * _1133;
            if (_1134 <= 0.0f) {
              _2356 = 0.0f.xxx;
              break;
            }
            float3 _1172;
            float _1173;
            bool _1174;
            float3 _1201;
            float3 _1203;
            float3 _1205;
            float3 _1207;
            float3 _1138 = _30_m6[_1003].xyz * _30_m6[_1003].w;
            float3 _1139 = _30_m6[_1000].xyz - _1138;
            float3 _1140 = _30_m6[_1009].xyz * _30_m6[_1006].w;
            float3 _1143 = _30_m6[_1000].xyz + _1138;
            float2 _1153 = (float2(clamp(_697, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_700, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1157 = _53.SampleLevel(_13, _1153, 0.0f);
            float4 _1161 = _54.SampleLevel(_13, _1153, 0.0f);
            float _1555;
            do {
              _1172 = _524 - (_465 * dot(_524, _465));
              _1173 = dot(_1172, _1172);
              _1174 = _1173 > 9.9999997473787516355514526367188e-05f;
              float3 _1196;
              if (_1174) {
                _1196 = _1172 * rsqrt(_1173);
              } else {
                float _1178 = _465.z;
                float _1180 = (_1178 >= 0.0f) ? 1.0f : (-1.0f);
                float _1182 = (-1.0f) / (_1180 + _1178);
                float _1184 = _465.x;
                _1196 = float3(1.0f + (((_1180 * _1182) * _1184) * _1184), ((_1180 * _1184) * _637) * _1182, (-_1180) * _1184);
              }
              float3x3 _1200 = mul(float3x3(float3(_1157.x, 0.0f, _1157.z), float3(0.0f, 1.0f, 0.0f), float3(_1157.y, 0.0f, _1157.w)), float3x3(_1196, cross(_465, _1196), _465));
              _1201 = (_1139 - _1140) - _498;
              float3 _1202 = mul(_1200, _1201);
              _1203 = (_1139 + _1140) - _498;
              float3 _1204 = mul(_1200, _1203);
              _1205 = (_1143 + _1140) - _498;
              float3 _1206 = mul(_1200, _1205);
              _1207 = (_1143 - _1140) - _498;
              float3 _1208 = mul(_1200, _1207);
              float _1209 = _1202.z;
              float _1212 = _1204.z;
              float _1216 = _1206.z;
              float _1220 = _1208.z;
              int _1224 = (((int(_1209 > 0.0f) | ((_1212 > 0.0f) ? 2 : 0)) | ((_1216 > 0.0f) ? 4 : 0)) | ((_1220 > 0.0f) ? 8 : 0));
              float3 _1461;
              float3 _1462;
              float3 _1463;
              float3 _1464;
              float3 _1465;
              int _1466;
              if (_1224 == 0) {
                _1461 = _1208;
                _1462 = _1206;
                _1463 = _1204;
                _1464 = _1202;
                _1465 = 0.0f.xxx;
                _1466 = 0;
              } else {
                float3 _1455;
                float3 _1456;
                float3 _1457;
                float3 _1458;
                float3 _1459;
                int _1460;
                if (_1224 == 1) {
                  _1455 = _1208;
                  _1456 = (_1202 * (-_1220)) + (_1208 * _1209);
                  _1457 = (_1202 * (-_1212)) + (_1204 * _1209);
                  _1458 = _1202;
                  _1459 = 0.0f.xxx;
                  _1460 = 3;
                } else {
                  float3 _1441;
                  float3 _1442;
                  float3 _1443;
                  float3 _1444;
                  float3 _1445;
                  int _1446;
                  if (_1224 == 2) {
                    _1441 = _1208;
                    _1442 = (_1204 * (-_1216)) + (_1206 * _1212);
                    _1443 = _1204;
                    _1444 = (_1204 * (-_1209)) + (_1202 * _1212);
                    _1445 = 0.0f.xxx;
                    _1446 = 3;
                  } else {
                    float3 _1427;
                    float3 _1428;
                    float3 _1429;
                    float3 _1430;
                    float3 _1431;
                    int _1432;
                    if (_1224 == 3) {
                      _1427 = (_1202 * (-_1220)) + (_1208 * _1209);
                      _1428 = (_1204 * (-_1216)) + (_1206 * _1212);
                      _1429 = _1204;
                      _1430 = _1202;
                      _1431 = 0.0f.xxx;
                      _1432 = 4;
                    } else {
                      float3 _1413;
                      float3 _1414;
                      float3 _1415;
                      float3 _1416;
                      float3 _1417;
                      int _1418;
                      if (_1224 == 4) {
                        _1413 = _1208;
                        _1414 = _1206;
                        _1415 = (_1206 * (-_1212)) + (_1204 * _1216);
                        _1416 = (_1206 * (-_1220)) + (_1208 * _1216);
                        _1417 = 0.0f.xxx;
                        _1418 = 3;
                      } else {
                        float3 _1399;
                        float3 _1400;
                        float3 _1401;
                        float3 _1402;
                        float3 _1403;
                        int _1404;
                        if (_1224 == 5) {
                          _1399 = _1208;
                          _1400 = _1206;
                          _1401 = _1204;
                          _1402 = _1202;
                          _1403 = 0.0f.xxx;
                          _1404 = 0;
                        } else {
                          float3 _1393;
                          float3 _1394;
                          float3 _1395;
                          float3 _1396;
                          float3 _1397;
                          int _1398;
                          if (_1224 == 6) {
                            _1393 = (_1206 * (-_1220)) + (_1208 * _1216);
                            _1394 = _1206;
                            _1395 = _1204;
                            _1396 = (_1204 * (-_1209)) + (_1202 * _1212);
                            _1397 = 0.0f.xxx;
                            _1398 = 4;
                          } else {
                            float3 _1379;
                            float3 _1380;
                            float3 _1381;
                            float3 _1382;
                            float3 _1383;
                            int _1384;
                            if (_1224 == 7) {
                              float _1372 = -_1220;
                              _1379 = (_1206 * _1372) + (_1208 * _1216);
                              _1380 = _1206;
                              _1381 = _1204;
                              _1382 = _1202;
                              _1383 = (_1202 * _1372) + (_1208 * _1209);
                              _1384 = 5;
                            } else {
                              float3 _1366;
                              float3 _1367;
                              float3 _1368;
                              float3 _1369;
                              float3 _1370;
                              int _1371;
                              if (_1224 == 8) {
                                _1366 = _1208;
                                _1367 = _1208;
                                _1368 = (_1208 * (-_1216)) + (_1206 * _1220);
                                _1369 = (_1208 * (-_1209)) + (_1202 * _1220);
                                _1370 = 0.0f.xxx;
                                _1371 = 3;
                              } else {
                                float3 _1352;
                                float3 _1353;
                                float3 _1354;
                                float3 _1355;
                                float3 _1356;
                                int _1357;
                                if (_1224 == 9) {
                                  _1352 = _1208;
                                  _1353 = (_1208 * (-_1216)) + (_1206 * _1220);
                                  _1354 = (_1202 * (-_1212)) + (_1204 * _1209);
                                  _1355 = _1202;
                                  _1356 = 0.0f.xxx;
                                  _1357 = 4;
                                } else {
                                  float3 _1338;
                                  float3 _1339;
                                  float3 _1340;
                                  float3 _1341;
                                  float3 _1342;
                                  int _1343;
                                  if (_1224 == 10) {
                                    _1338 = _1208;
                                    _1339 = _1206;
                                    _1340 = _1204;
                                    _1341 = _1202;
                                    _1342 = 0.0f.xxx;
                                    _1343 = 0;
                                  } else {
                                    float3 _1332;
                                    float3 _1333;
                                    float3 _1334;
                                    float3 _1335;
                                    float3 _1336;
                                    int _1337;
                                    if (_1224 == 11) {
                                      float _1325 = -_1216;
                                      _1332 = (_1208 * _1325) + (_1206 * _1220);
                                      _1333 = (_1204 * _1325) + (_1206 * _1212);
                                      _1334 = _1204;
                                      _1335 = _1202;
                                      _1336 = _1208;
                                      _1337 = 5;
                                    } else {
                                      float3 _1319;
                                      float3 _1320;
                                      float3 _1321;
                                      float3 _1322;
                                      float3 _1323;
                                      int _1324;
                                      if (_1224 == 12) {
                                        _1319 = _1208;
                                        _1320 = _1206;
                                        _1321 = (_1206 * (-_1212)) + (_1204 * _1216);
                                        _1322 = (_1208 * (-_1209)) + (_1202 * _1220);
                                        _1323 = 0.0f.xxx;
                                        _1324 = 4;
                                      } else {
                                        bool _1277 = _1224 == 13;
                                        float3 _1304;
                                        float3 _1305;
                                        float3 _1306;
                                        float3 _1307;
                                        int _1308;
                                        if (_1277) {
                                          float _1297 = -_1212;
                                          _1304 = (_1206 * _1297) + (_1204 * _1216);
                                          _1305 = (_1202 * _1297) + (_1204 * _1209);
                                          _1306 = _1202;
                                          _1307 = _1208;
                                          _1308 = 5;
                                        } else {
                                          float3 _1294;
                                          float3 _1295;
                                          int _1296;
                                          if (_1224 == 14) {
                                            float _1287 = -_1209;
                                            _1294 = (_1204 * _1287) + (_1202 * _1212);
                                            _1295 = (_1208 * _1287) + (_1202 * _1220);
                                            _1296 = 5;
                                          } else {
                                            _1294 = _1202;
                                            _1295 = 0.0f.xxx;
                                            _1296 = (_1224 == 15) ? 4 : 0;
                                          }
                                          _1304 = _1206;
                                          _1305 = _1204;
                                          _1306 = _1294;
                                          _1307 = _1295;
                                          _1308 = _1296;
                                        }
                                        bool3 _1309 = _1277.xxx;
                                        _1319 = float3(_1309.x ? _1206.x : _1208.x, _1309.y ? _1206.y : _1208.y, _1309.z ? _1206.z : _1208.z);
                                        _1320 = _1304;
                                        _1321 = _1305;
                                        _1322 = _1306;
                                        _1323 = _1307;
                                        _1324 = _1308;
                                      }
                                      _1332 = _1319;
                                      _1333 = _1320;
                                      _1334 = _1321;
                                      _1335 = _1322;
                                      _1336 = _1323;
                                      _1337 = _1324;
                                    }
                                    _1338 = _1332;
                                    _1339 = _1333;
                                    _1340 = _1334;
                                    _1341 = _1335;
                                    _1342 = _1336;
                                    _1343 = _1337;
                                  }
                                  _1352 = _1338;
                                  _1353 = _1339;
                                  _1354 = _1340;
                                  _1355 = _1341;
                                  _1356 = _1342;
                                  _1357 = _1343;
                                }
                                _1366 = _1352;
                                _1367 = _1353;
                                _1368 = _1354;
                                _1369 = _1355;
                                _1370 = _1356;
                                _1371 = _1357;
                              }
                              _1379 = _1366;
                              _1380 = _1367;
                              _1381 = _1368;
                              _1382 = _1369;
                              _1383 = _1370;
                              _1384 = _1371;
                            }
                            _1393 = _1379;
                            _1394 = _1380;
                            _1395 = _1381;
                            _1396 = _1382;
                            _1397 = _1383;
                            _1398 = _1384;
                          }
                          _1399 = _1393;
                          _1400 = _1394;
                          _1401 = _1395;
                          _1402 = _1396;
                          _1403 = _1397;
                          _1404 = _1398;
                        }
                        _1413 = _1399;
                        _1414 = _1400;
                        _1415 = _1401;
                        _1416 = _1402;
                        _1417 = _1403;
                        _1418 = _1404;
                      }
                      _1427 = _1413;
                      _1428 = _1414;
                      _1429 = _1415;
                      _1430 = _1416;
                      _1431 = _1417;
                      _1432 = _1418;
                    }
                    _1441 = _1427;
                    _1442 = _1428;
                    _1443 = _1429;
                    _1444 = _1430;
                    _1445 = _1431;
                    _1446 = _1432;
                  }
                  _1455 = _1441;
                  _1456 = _1442;
                  _1457 = _1443;
                  _1458 = _1444;
                  _1459 = _1445;
                  _1460 = _1446;
                }
                _1461 = _1455;
                _1462 = _1456;
                _1463 = _1457;
                _1464 = _1458;
                _1465 = _1459;
                _1466 = _1460;
              }
              bool3 _1468 = (_1466 == 3).xxx;
              bool3 _1471 = (_1466 == 4).xxx;
              if (_1466 == 0) {
                _1555 = 0.0f;
                break;
              }
              float3 _1476 = normalize(_1464);
              float3 _1477 = normalize(_1463);
              float3 _1478 = normalize(_1462);
              float3 _1479 = normalize(float3(_1468.x ? _1464.x : _1461.x, _1468.y ? _1464.y : _1461.y, _1468.z ? _1464.z : _1461.z));
              float3 _1480 = normalize(float3(_1471.x ? _1464.x : _1465.x, _1471.y ? _1464.y : _1465.y, _1471.z ? _1464.z : _1465.z));
              float _1482 = clamp(dot(_1476, _1477), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1486 = sqrt(1.0f - (_1482 * _1482));
              float _1494 = clamp(dot(_1477, _1478), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1498 = sqrt(1.0f - (_1494 * _1494));
              float _1507 = clamp(dot(_1478, _1479), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1511 = sqrt(1.0f - (_1507 * _1507));
              float _1518 = ((cross(_1476, _1477).z * ((_1486 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1482) / _1486))) + (cross(_1477, _1478).z * ((_1498 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1494) / _1498)))) + (cross(_1478, _1479).z * ((_1511 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1507) / _1511)));
              float _1535;
              if (_1466 >= 4) {
                float _1523 = clamp(dot(_1479, _1480), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1527 = sqrt(1.0f - (_1523 * _1523));
                _1535 = _1518 + (cross(_1479, _1480).z * ((_1527 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1523) / _1527)));
              } else {
                _1535 = _1518;
              }
              float _1552;
              if (_1466 == 5) {
                float _1540 = clamp(dot(_1480, _1476), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1544 = sqrt(1.0f - (_1540 * _1540));
                _1552 = _1535 + (cross(_1480, _1476).z * ((_1544 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1540) / _1544)));
              } else {
                _1552 = _1535;
              }
              _1555 = max(_1552, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1942;
            do {
              float3 _1588;
              if (_1174) {
                _1588 = _1172 * rsqrt(_1173);
              } else {
                float _1570 = _465.z;
                float _1572 = (_1570 >= 0.0f) ? 1.0f : (-1.0f);
                float _1574 = (-1.0f) / (_1572 + _1570);
                float _1576 = _465.x;
                _1588 = float3(1.0f + (((_1572 * _1574) * _1576) * _1576), ((_1572 * _1576) * _637) * _1574, (-_1572) * _1576);
              }
              float3x3 _1591 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1588, cross(_465, _1588), _465));
              float3 _1592 = mul(_1591, _1201);
              float3 _1593 = mul(_1591, _1203);
              float3 _1594 = mul(_1591, _1205);
              float3 _1595 = mul(_1591, _1207);
              float _1596 = _1592.z;
              float _1599 = _1593.z;
              float _1603 = _1594.z;
              float _1607 = _1595.z;
              int _1611 = (((int(_1596 > 0.0f) | ((_1599 > 0.0f) ? 2 : 0)) | ((_1603 > 0.0f) ? 4 : 0)) | ((_1607 > 0.0f) ? 8 : 0));
              float3 _1848;
              float3 _1849;
              float3 _1850;
              float3 _1851;
              float3 _1852;
              int _1853;
              if (_1611 == 0) {
                _1848 = _1595;
                _1849 = _1594;
                _1850 = _1593;
                _1851 = _1592;
                _1852 = 0.0f.xxx;
                _1853 = 0;
              } else {
                float3 _1842;
                float3 _1843;
                float3 _1844;
                float3 _1845;
                float3 _1846;
                int _1847;
                if (_1611 == 1) {
                  _1842 = _1595;
                  _1843 = (_1592 * (-_1607)) + (_1595 * _1596);
                  _1844 = (_1592 * (-_1599)) + (_1593 * _1596);
                  _1845 = _1592;
                  _1846 = 0.0f.xxx;
                  _1847 = 3;
                } else {
                  float3 _1828;
                  float3 _1829;
                  float3 _1830;
                  float3 _1831;
                  float3 _1832;
                  int _1833;
                  if (_1611 == 2) {
                    _1828 = _1595;
                    _1829 = (_1593 * (-_1603)) + (_1594 * _1599);
                    _1830 = _1593;
                    _1831 = (_1593 * (-_1596)) + (_1592 * _1599);
                    _1832 = 0.0f.xxx;
                    _1833 = 3;
                  } else {
                    float3 _1814;
                    float3 _1815;
                    float3 _1816;
                    float3 _1817;
                    float3 _1818;
                    int _1819;
                    if (_1611 == 3) {
                      _1814 = (_1592 * (-_1607)) + (_1595 * _1596);
                      _1815 = (_1593 * (-_1603)) + (_1594 * _1599);
                      _1816 = _1593;
                      _1817 = _1592;
                      _1818 = 0.0f.xxx;
                      _1819 = 4;
                    } else {
                      float3 _1800;
                      float3 _1801;
                      float3 _1802;
                      float3 _1803;
                      float3 _1804;
                      int _1805;
                      if (_1611 == 4) {
                        _1800 = _1595;
                        _1801 = _1594;
                        _1802 = (_1594 * (-_1599)) + (_1593 * _1603);
                        _1803 = (_1594 * (-_1607)) + (_1595 * _1603);
                        _1804 = 0.0f.xxx;
                        _1805 = 3;
                      } else {
                        float3 _1786;
                        float3 _1787;
                        float3 _1788;
                        float3 _1789;
                        float3 _1790;
                        int _1791;
                        if (_1611 == 5) {
                          _1786 = _1595;
                          _1787 = _1594;
                          _1788 = _1593;
                          _1789 = _1592;
                          _1790 = 0.0f.xxx;
                          _1791 = 0;
                        } else {
                          float3 _1780;
                          float3 _1781;
                          float3 _1782;
                          float3 _1783;
                          float3 _1784;
                          int _1785;
                          if (_1611 == 6) {
                            _1780 = (_1594 * (-_1607)) + (_1595 * _1603);
                            _1781 = _1594;
                            _1782 = _1593;
                            _1783 = (_1593 * (-_1596)) + (_1592 * _1599);
                            _1784 = 0.0f.xxx;
                            _1785 = 4;
                          } else {
                            float3 _1766;
                            float3 _1767;
                            float3 _1768;
                            float3 _1769;
                            float3 _1770;
                            int _1771;
                            if (_1611 == 7) {
                              float _1759 = -_1607;
                              _1766 = (_1594 * _1759) + (_1595 * _1603);
                              _1767 = _1594;
                              _1768 = _1593;
                              _1769 = _1592;
                              _1770 = (_1592 * _1759) + (_1595 * _1596);
                              _1771 = 5;
                            } else {
                              float3 _1753;
                              float3 _1754;
                              float3 _1755;
                              float3 _1756;
                              float3 _1757;
                              int _1758;
                              if (_1611 == 8) {
                                _1753 = _1595;
                                _1754 = _1595;
                                _1755 = (_1595 * (-_1603)) + (_1594 * _1607);
                                _1756 = (_1595 * (-_1596)) + (_1592 * _1607);
                                _1757 = 0.0f.xxx;
                                _1758 = 3;
                              } else {
                                float3 _1739;
                                float3 _1740;
                                float3 _1741;
                                float3 _1742;
                                float3 _1743;
                                int _1744;
                                if (_1611 == 9) {
                                  _1739 = _1595;
                                  _1740 = (_1595 * (-_1603)) + (_1594 * _1607);
                                  _1741 = (_1592 * (-_1599)) + (_1593 * _1596);
                                  _1742 = _1592;
                                  _1743 = 0.0f.xxx;
                                  _1744 = 4;
                                } else {
                                  float3 _1725;
                                  float3 _1726;
                                  float3 _1727;
                                  float3 _1728;
                                  float3 _1729;
                                  int _1730;
                                  if (_1611 == 10) {
                                    _1725 = _1595;
                                    _1726 = _1594;
                                    _1727 = _1593;
                                    _1728 = _1592;
                                    _1729 = 0.0f.xxx;
                                    _1730 = 0;
                                  } else {
                                    float3 _1719;
                                    float3 _1720;
                                    float3 _1721;
                                    float3 _1722;
                                    float3 _1723;
                                    int _1724;
                                    if (_1611 == 11) {
                                      float _1712 = -_1603;
                                      _1719 = (_1595 * _1712) + (_1594 * _1607);
                                      _1720 = (_1593 * _1712) + (_1594 * _1599);
                                      _1721 = _1593;
                                      _1722 = _1592;
                                      _1723 = _1595;
                                      _1724 = 5;
                                    } else {
                                      float3 _1706;
                                      float3 _1707;
                                      float3 _1708;
                                      float3 _1709;
                                      float3 _1710;
                                      int _1711;
                                      if (_1611 == 12) {
                                        _1706 = _1595;
                                        _1707 = _1594;
                                        _1708 = (_1594 * (-_1599)) + (_1593 * _1603);
                                        _1709 = (_1595 * (-_1596)) + (_1592 * _1607);
                                        _1710 = 0.0f.xxx;
                                        _1711 = 4;
                                      } else {
                                        bool _1664 = _1611 == 13;
                                        float3 _1691;
                                        float3 _1692;
                                        float3 _1693;
                                        float3 _1694;
                                        int _1695;
                                        if (_1664) {
                                          float _1684 = -_1599;
                                          _1691 = (_1594 * _1684) + (_1593 * _1603);
                                          _1692 = (_1592 * _1684) + (_1593 * _1596);
                                          _1693 = _1592;
                                          _1694 = _1595;
                                          _1695 = 5;
                                        } else {
                                          float3 _1681;
                                          float3 _1682;
                                          int _1683;
                                          if (_1611 == 14) {
                                            float _1674 = -_1596;
                                            _1681 = (_1593 * _1674) + (_1592 * _1599);
                                            _1682 = (_1595 * _1674) + (_1592 * _1607);
                                            _1683 = 5;
                                          } else {
                                            _1681 = _1592;
                                            _1682 = 0.0f.xxx;
                                            _1683 = (_1611 == 15) ? 4 : 0;
                                          }
                                          _1691 = _1594;
                                          _1692 = _1593;
                                          _1693 = _1681;
                                          _1694 = _1682;
                                          _1695 = _1683;
                                        }
                                        bool3 _1696 = _1664.xxx;
                                        _1706 = float3(_1696.x ? _1594.x : _1595.x, _1696.y ? _1594.y : _1595.y, _1696.z ? _1594.z : _1595.z);
                                        _1707 = _1691;
                                        _1708 = _1692;
                                        _1709 = _1693;
                                        _1710 = _1694;
                                        _1711 = _1695;
                                      }
                                      _1719 = _1706;
                                      _1720 = _1707;
                                      _1721 = _1708;
                                      _1722 = _1709;
                                      _1723 = _1710;
                                      _1724 = _1711;
                                    }
                                    _1725 = _1719;
                                    _1726 = _1720;
                                    _1727 = _1721;
                                    _1728 = _1722;
                                    _1729 = _1723;
                                    _1730 = _1724;
                                  }
                                  _1739 = _1725;
                                  _1740 = _1726;
                                  _1741 = _1727;
                                  _1742 = _1728;
                                  _1743 = _1729;
                                  _1744 = _1730;
                                }
                                _1753 = _1739;
                                _1754 = _1740;
                                _1755 = _1741;
                                _1756 = _1742;
                                _1757 = _1743;
                                _1758 = _1744;
                              }
                              _1766 = _1753;
                              _1767 = _1754;
                              _1768 = _1755;
                              _1769 = _1756;
                              _1770 = _1757;
                              _1771 = _1758;
                            }
                            _1780 = _1766;
                            _1781 = _1767;
                            _1782 = _1768;
                            _1783 = _1769;
                            _1784 = _1770;
                            _1785 = _1771;
                          }
                          _1786 = _1780;
                          _1787 = _1781;
                          _1788 = _1782;
                          _1789 = _1783;
                          _1790 = _1784;
                          _1791 = _1785;
                        }
                        _1800 = _1786;
                        _1801 = _1787;
                        _1802 = _1788;
                        _1803 = _1789;
                        _1804 = _1790;
                        _1805 = _1791;
                      }
                      _1814 = _1800;
                      _1815 = _1801;
                      _1816 = _1802;
                      _1817 = _1803;
                      _1818 = _1804;
                      _1819 = _1805;
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
                _1848 = _1842;
                _1849 = _1843;
                _1850 = _1844;
                _1851 = _1845;
                _1852 = _1846;
                _1853 = _1847;
              }
              bool3 _1855 = (_1853 == 3).xxx;
              bool3 _1858 = (_1853 == 4).xxx;
              if (_1853 == 0) {
                _1942 = 0.0f;
                break;
              }
              float3 _1863 = normalize(_1851);
              float3 _1864 = normalize(_1850);
              float3 _1865 = normalize(_1849);
              float3 _1866 = normalize(float3(_1855.x ? _1851.x : _1848.x, _1855.y ? _1851.y : _1848.y, _1855.z ? _1851.z : _1848.z));
              float3 _1867 = normalize(float3(_1858.x ? _1851.x : _1852.x, _1858.y ? _1851.y : _1852.y, _1858.z ? _1851.z : _1852.z));
              float _1869 = clamp(dot(_1863, _1864), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1873 = sqrt(1.0f - (_1869 * _1869));
              float _1881 = clamp(dot(_1864, _1865), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1885 = sqrt(1.0f - (_1881 * _1881));
              float _1894 = clamp(dot(_1865, _1866), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1898 = sqrt(1.0f - (_1894 * _1894));
              float _1905 = ((cross(_1863, _1864).z * ((_1873 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1869) / _1873))) + (cross(_1864, _1865).z * ((_1885 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1881) / _1885)))) + (cross(_1865, _1866).z * ((_1898 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1894) / _1898)));
              float _1922;
              if (_1853 >= 4) {
                float _1910 = clamp(dot(_1866, _1867), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1914 = sqrt(1.0f - (_1910 * _1910));
                _1922 = _1905 + (cross(_1866, _1867).z * ((_1914 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1910) / _1914)));
              } else {
                _1922 = _1905;
              }
              float _1939;
              if (_1853 == 5) {
                float _1927 = clamp(dot(_1867, _1863), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1931 = sqrt(1.0f - (_1927 * _1927));
                _1939 = _1922 + (cross(_1867, _1863).z * ((_1931 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1927) / _1931)));
              } else {
                _1939 = _1922;
              }
              _1942 = max(_1939, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1945 = (_1022 & 2u) != 0u;
            uint _1949 = asuint(_30_m6[_1009].w);
            uint _1950 = asuint(_30_m6[_1015].w);
            float3 _1951 = _498 - _30_m6[_1000].xyz;
            float3 _1952 = abs(_1951);
            float _1953 = _1952.x;
            float _1954 = _1952.y;
            float _1956 = _1952.z;
            int _1989;
            if ((_1953 > _1954) && (_1953 > _1956)) {
              _1989 = int((_1951.x > 0.0f) ? (_1949 & 1023u) : ((_1949 >> 10u) & 1023u));
            } else {
              int _1981;
              if (_1954 > _1956) {
                _1981 = int((_1951.y > 0.0f) ? ((_1949 >> 20u) & 1023u) : (_1950 & 1023u));
              } else {
                _1981 = int((_1951.z > 0.0f) ? ((_1950 >> 10u) & 1023u) : ((_1950 >> 20u) & 1023u));
              }
              _1989 = _1981;
            }
            int _1992 = _1945 ? int(_30_m6[_1009].w) : ((_1989 == 1023) ? (-1) : _1989);
            uint _2001 = uint(_1992);
            uint _2003 = asuint(_34_m11.x) + (_2001 * 96u);
            uint _2005 = (_2003 + 64u) >> 2u;
            uint _2008 = _2005 + 1u;
            uint _2011 = _2005 + 2u;
            uint _2014 = _2005 + 3u;
            float4 _2018 = asfloat(uint4(_37.Load(_2005 * 4 + 0), _37.Load(_2008 * 4 + 0), _37.Load(_2011 * 4 + 0), _37.Load(_2014 * 4 + 0)));
            float _2350;
            do {
              uint _2034 = ((asuint(_34_m11.y) + (_2001 * 16u)) >> 2u) + 1u;
              if (_37.Load(_2034 * 4 + 0) > 0u) {
                float4 _385 = _951;
                float _2049;
                do {
                  if (_37.Load(_2034 * 4 + 0) == 0u) {
                    _2049 = 1.0f;
                    break;
                  }
                  _2049 = _385[_37.Load(_2034 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2350 = _2049;
                break;
              }
              uint _2050 = _2003 >> 2u;
              uint _2065 = (_2003 + 16u) >> 2u;
              uint _2080 = (_2003 + 32u) >> 2u;
              uint _2095 = (_2003 + 48u) >> 2u;
              float4 _2115 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2050 * 4 + 0), _37.Load((_2050 + 1u) * 4 + 0), _37.Load((_2050 + 2u) * 4 + 0), _37.Load((_2050 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2065 * 4 + 0), _37.Load((_2065 + 1u) * 4 + 0), _37.Load((_2065 + 2u) * 4 + 0), _37.Load((_2065 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2080 * 4 + 0), _37.Load((_2080 + 1u) * 4 + 0), _37.Load((_2080 + 2u) * 4 + 0), _37.Load((_2080 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2095 * 4 + 0), _37.Load((_2095 + 1u) * 4 + 0), _37.Load((_2095 + 2u) * 4 + 0), _37.Load((_2095 + 3u) * 4 + 0))))), float4((_498 - ((_1951 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1951, _1951)))) * _2018.x)) + (_465 * (_2018.y * 5.0f)), 1.0f));
              float3 _2119 = _2115.xyz / _2115.w.xxx;
              uint _2121 = (_2003 + 80u) >> 2u;
              float4 _2134 = asfloat(uint4(_37.Load(_2121 * 4 + 0), _37.Load((_2121 + 1u) * 4 + 0), _37.Load((_2121 + 2u) * 4 + 0), _37.Load((_2121 + 3u) * 4 + 0)));
              float2 _2135 = _2119.xy;
              float2 _2137 = _2134.xy;
              float3 _2141 = _2119.xyz;
              bool3 _2142 = bool3(_2141.x <= 0.0f.xxx.x, _2141.y <= 0.0f.xxx.y, _2141.z <= 0.0f.xxx.z);
              bool3 _2143 = bool3(_2141.x >= 1.0f.xxx.x, _2141.y >= 1.0f.xxx.y, _2141.z >= 1.0f.xxx.z);
              float _2146 = _2119.z;
              float2 _2157 = ((_2135 * (_2134.zw - _2137)) + _2137).xy * _34_m10.zw;
              float2 _2159 = floor(_2157 + 0.5f.xx);
              float2 _2160 = _2157 - _2159;
              float _2161 = _2160.x;
              float _2162 = _2161 + 0.5f;
              float _2163 = _2162 * _2162;
              float _2166 = 1.0f - _2161;
              float _2167 = min(_2161, 0.0f);
              float _2170 = _2161 + 1.0f;
              float _2171 = max(_2161, 0.0f);
              float _2182 = _2160.y;
              float _2183 = _2182 + 0.5f;
              float _2184 = _2183 * _2183;
              float _2187 = 1.0f - _2182;
              float _2188 = min(_2182, 0.0f);
              float _2191 = _2182 + 1.0f;
              float _2192 = max(_2182, 0.0f);
              float3 _2204 = float3(0.1599999964237213134765625f * _2166, 0.1599999964237213134765625f * ((_2170 - (_2171 * _2171)) + 1.0f), _2163 * 0.07999999821186065673828125f);
              float3 _2205 = float3(0.1599999964237213134765625f * ((_2163 * 0.5f) - _2161), 0.1599999964237213134765625f * ((_2166 - (_2167 * _2167)) + 1.0f), 0.1599999964237213134765625f * _2170) + _2204;
              float3 _2207 = float3(0.1599999964237213134765625f * _2187, 0.1599999964237213134765625f * ((_2191 - (_2192 * _2192)) + 1.0f), _2184 * 0.07999999821186065673828125f);
              float3 _2208 = float3(0.1599999964237213134765625f * ((_2184 * 0.5f) - _2182), 0.1599999964237213134765625f * ((_2187 - (_2188 * _2188)) + 1.0f), 0.1599999964237213134765625f * _2191) + _2207;
              float3 _2214 = ((_2204 / _2205) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _2216 = ((_2207 / _2208) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _2218 = _2159 * _34_m10.xy;
              float _2219 = _2214.x;
              float _2220 = _2216.x;
              float _2223 = _2214.y;
              float _2226 = _2214.z;
              float _2229 = _2216.y;
              float _2236 = _2216.z;
              float _2243 = _2205.x;
              float _2244 = _2208.x;
              float _2246 = _2205.y;
              float _2248 = _2205.z;
              float _2250 = _2208.y;
              float _2254 = _2208.z;
              float _2312 = (((((((_2243 * _2244) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2219, _2220), _373).xy, _2146)) + ((_2246 * _2244) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2223, _2220), _373).xy, _2146))) + ((_2248 * _2244) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2226, _2220), _373).xy, _2146))) + ((_2243 * _2250) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2219, _2229), _373).xy, _2146))) + ((_2246 * _2250) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2223, _2229), _373).xy, _2146))) + ((_2248 * _2250) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2226, _2229), _373).xy, _2146))) + ((_2243 * _2254) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2219, _2236), _373).xy, _2146));
              float4 _2335 = asfloat(uint4(_37.Load(_2005 * 4 + 0), _37.Load(_2008 * 4 + 0), _37.Load(_2011 * 4 + 0), _37.Load(_2014 * 4 + 0)));
              float _2336 = _2335.w;
              float2 _2338 = min(_2135, 1.0f.xx - _2135);
              _2350 = lerp(1.0f, (any(bool3(_2142.x || _2143.x, _2142.y || _2143.y, _2142.z || _2143.z)) || ((asuint(_2146) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2312 + ((_2246 * _2254) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2223, _2236), _373).xy, _2146))) + ((_2248 * _2254) * _35.SampleCmpLevelZero(_16, float3(_2218 + float2(_2226, _2236), _373).xy, _2146))), _1945 ? min(_2336, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2335.z - _2115.w) * 0.25f, min(_2338.x, _2338.y)))) : _2336);
              break;
            } while (false);
            _2356 = ((_30_m6[_997].xyz * (((((_699 * _1161.x) + ((1.0f.xxx - _699) * _1161.y)) * _1555) * _30_m6[_1018].z) + (_686 * _1942))) * _1134) * ((_1992 >= 0) ? _2350 : 1.0f);
            break;
          } while (false);
          _3751 = _957;
          _3752 = _2356 * _1097;
          break;
        }
        float _3749;
        float3 _3750;
        if (_30_m6[_997].w < 1.5f) {
          float3 _2961 = float3(0.100000001490116119384765625f, _697, 1.0f);
          float _2970 = (0.5f + (0.5f * _30_m6[_1003].y)) - abs(_30_m6[_1003].x);
          float _2971 = _30_m6[_1003].y - _2970;
          float _2978 = abs(max((1.0f - abs(_2970)) - abs(_2971), 0.00048828125f));
          float3 _2982 = normalize(float3(_2970, _2971, (_30_m6[_1003].x >= 0.0f) ? _2978 : (-_2978)));
          float3 _2983 = _30_m6[_1000].xyz - _498;
          float _2984 = dot(_2983, _2983);
          float _2985 = rsqrt(_2984);
          float3 _2986 = _2983 * _2985;
          float _2990 = clamp(_30_m6[_1018].y * _2985, 0.0f, 1.0f);
          int _2995 = int(_30_m6[_1018].w);
          float3 _2996 = _2982 * _30_m6[_1003].z;
          float3 _2997 = _2996 * 0.5f;
          float3 _2998 = _2983 - _2997;
          float3 _2999 = _2983 + _2997;
          bool _3001 = (_1101 & 1u) == 0u;
          bool _3004 = _3001 || ((_1022 & 2u) != 0u);
          bool _3007 = (!_3001) && (_30_m6[_1003].z > 0.0f);
          float _3026;
          float _3027;
          if (_3007) {
            float _3011 = length(_2998);
            float _3012 = length(_2999);
            _3026 = clamp(0.5f * ((dot(_465, _2998) / _3011) + (dot(_465, _2999) / _3012)), 0.0f, 1.0f);
            _3027 = 1.0f / ((((_3011 * _3012) + dot(_2998, _2999)) * 0.5f) + 1.0f);
          } else {
            _3026 = clamp(dot(_465, _2986), 0.0f, 1.0f);
            _3027 = 1.0f;
          }
          float _3049;
          if (_30_m6[_1015].w < 0.0f) {
            float _3043 = _2984 * (_30_m6[_1000].w * _30_m6[_1000].w);
            float _3046 = clamp(1.0f - (_3043 * _3043), 0.0f, 1.0f);
            _3049 = lerp(1.0f / (_2984 + 1.0f), _3027, float(_3007)) * (_3046 * _3046);
          } else {
            float3 _3032 = _2983 * _30_m6[_1000].w;
            _3049 = _3027 * pow(1.0f - clamp(dot(_3032, _3032), 0.0f, 1.0f), _30_m6[_1015].w);
          }
          float _3055 = clamp((dot(_2986, -_2982) - _30_m6[_1003].z) * _30_m6[_1003].w, 0.0f, 1.0f);
          float _3059 = _3049 * lerp(1.0f, _3055 * _3055, float(_3001));
          float _3159;
          if ((!_3007) && (_2995 >= 0)) {
            uint _3065 = uint(_2995);
            float2 _3152;
            [branch] if (_3001) {
              float4 _3142 = mul(_50_m1[_3065], _502);
              _3152 = _50_m0[_3065].xy + (clamp(_3142.xy / _3142.w.xx, 0.0f.xx, 1.0f.xx) * _50_m0[_3065].zw);
            }
            else {
              float3 _3079 = mul(float4(-_2983, 0.0f), _50_m1[_3065]).xyz;
              float3 _380 = _3079;
              float3 _379 = _3079;
              float3 _378 = abs(_3079);
              uint _3088 = uint(int(_378.y > _378.x));
              uint _3094 = (_378.z > _378[_3088]) ? 2u : _3088;
              uint _3100 = (_3094 * 2u) + uint(_379[_3094] < 0.0f);
              float _3104 = abs(_380[_3100 / 2u]);
              float _3124 = 0.5f - (0.000244140625f / _50_m0[_3065].w);
              _3152 = _50_m0[_3065].xy + (clamp(float2((float(_3100) + ((((_380[uint(_347[_3100].x)] * _348[_3100].x) / _3104) * _3124) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_380[uint(_347[_3100].y)] * _348[_3100].y) / _3104) * _3124)), 0.0f.xx, 1.0f.xx) * _50_m0[_3065].zw);
            }
            _3159 = _3059 * _48.SampleLevel(_13, _3152, 0.0f).x;
          } else {
            _3159 = _3059;
          }
          bool _3160 = _3159 > 0.0f;
          float _3569;
          if (_3160) {
            int _3213;
            if (_3004) {
              _3213 = int(_30_m6[_1006].x);
            } else {
              uint _3168 = asuint(_30_m6[_1003].w);
              uint _3169 = asuint(_30_m6[_1006].x);
              float3 _3170 = _498 - _30_m6[_1000].xyz;
              float3 _3171 = abs(_3170);
              float _3172 = _3171.x;
              float _3173 = _3171.y;
              float _3175 = _3171.z;
              int _3208;
              if ((_3172 > _3173) && (_3172 > _3175)) {
                _3208 = int((_3170.x > 0.0f) ? (_3168 & 1023u) : ((_3168 >> 10u) & 1023u));
              } else {
                int _3200;
                if (_3173 > _3175) {
                  _3200 = int((_3170.y > 0.0f) ? ((_3168 >> 20u) & 1023u) : (_3169 & 1023u));
                } else {
                  _3200 = int((_3170.z > 0.0f) ? ((_3169 >> 10u) & 1023u) : ((_3169 >> 20u) & 1023u));
                }
                _3208 = _3200;
              }
              _3213 = (_3208 == 1023) ? (-1) : _3208;
            }
            uint _3218 = uint(_3213);
            uint _3220 = asuint(_34_m11.x) + (_3218 * 96u);
            uint _3222 = (_3220 + 64u) >> 2u;
            uint _3225 = _3222 + 1u;
            uint _3228 = _3222 + 2u;
            uint _3231 = _3222 + 3u;
            float4 _3235 = asfloat(uint4(_37.Load(_3222 * 4 + 0), _37.Load(_3225 * 4 + 0), _37.Load(_3228 * 4 + 0), _37.Load(_3231 * 4 + 0)));
            float _3567;
            do {
              uint _3251 = ((asuint(_34_m11.y) + (_3218 * 16u)) >> 2u) + 1u;
              if (_37.Load(_3251 * 4 + 0) > 0u) {
                float4 _377 = _951;
                float _3266;
                do {
                  if (_37.Load(_3251 * 4 + 0) == 0u) {
                    _3266 = 1.0f;
                    break;
                  }
                  _3266 = _377[_37.Load(_3251 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3567 = _3266;
                break;
              }
              uint _3267 = _3220 >> 2u;
              uint _3282 = (_3220 + 16u) >> 2u;
              uint _3297 = (_3220 + 32u) >> 2u;
              uint _3312 = (_3220 + 48u) >> 2u;
              float4 _3332 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3267 * 4 + 0), _37.Load((_3267 + 1u) * 4 + 0), _37.Load((_3267 + 2u) * 4 + 0), _37.Load((_3267 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3282 * 4 + 0), _37.Load((_3282 + 1u) * 4 + 0), _37.Load((_3282 + 2u) * 4 + 0), _37.Load((_3282 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3297 * 4 + 0), _37.Load((_3297 + 1u) * 4 + 0), _37.Load((_3297 + 2u) * 4 + 0), _37.Load((_3297 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3312 * 4 + 0), _37.Load((_3312 + 1u) * 4 + 0), _37.Load((_3312 + 2u) * 4 + 0), _37.Load((_3312 + 3u) * 4 + 0))))), float4((_498 - ((-_2986) * _3235.x)) + (_465 * (_3235.y * 5.0f)), 1.0f));
              float3 _3336 = _3332.xyz / _3332.w.xxx;
              uint _3338 = (_3220 + 80u) >> 2u;
              float4 _3351 = asfloat(uint4(_37.Load(_3338 * 4 + 0), _37.Load((_3338 + 1u) * 4 + 0), _37.Load((_3338 + 2u) * 4 + 0), _37.Load((_3338 + 3u) * 4 + 0)));
              float2 _3352 = _3336.xy;
              float2 _3354 = _3351.xy;
              float3 _3358 = _3336.xyz;
              bool3 _3359 = bool3(_3358.x <= 0.0f.xxx.x, _3358.y <= 0.0f.xxx.y, _3358.z <= 0.0f.xxx.z);
              bool3 _3360 = bool3(_3358.x >= 1.0f.xxx.x, _3358.y >= 1.0f.xxx.y, _3358.z >= 1.0f.xxx.z);
              float _3363 = _3336.z;
              float2 _3374 = ((_3352 * (_3351.zw - _3354)) + _3354).xy * _34_m10.zw;
              float2 _3376 = floor(_3374 + 0.5f.xx);
              float2 _3377 = _3374 - _3376;
              float _3378 = _3377.x;
              float _3379 = _3378 + 0.5f;
              float _3380 = _3379 * _3379;
              float _3383 = 1.0f - _3378;
              float _3384 = min(_3378, 0.0f);
              float _3387 = _3378 + 1.0f;
              float _3388 = max(_3378, 0.0f);
              float _3399 = _3377.y;
              float _3400 = _3399 + 0.5f;
              float _3401 = _3400 * _3400;
              float _3404 = 1.0f - _3399;
              float _3405 = min(_3399, 0.0f);
              float _3408 = _3399 + 1.0f;
              float _3409 = max(_3399, 0.0f);
              float3 _3421 = float3(0.1599999964237213134765625f * _3383, 0.1599999964237213134765625f * ((_3387 - (_3388 * _3388)) + 1.0f), _3380 * 0.07999999821186065673828125f);
              float3 _3422 = float3(0.1599999964237213134765625f * ((_3380 * 0.5f) - _3378), 0.1599999964237213134765625f * ((_3383 - (_3384 * _3384)) + 1.0f), 0.1599999964237213134765625f * _3387) + _3421;
              float3 _3424 = float3(0.1599999964237213134765625f * _3404, 0.1599999964237213134765625f * ((_3408 - (_3409 * _3409)) + 1.0f), _3401 * 0.07999999821186065673828125f);
              float3 _3425 = float3(0.1599999964237213134765625f * ((_3401 * 0.5f) - _3399), 0.1599999964237213134765625f * ((_3404 - (_3405 * _3405)) + 1.0f), 0.1599999964237213134765625f * _3408) + _3424;
              float3 _3431 = ((_3421 / _3422) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _3433 = ((_3424 / _3425) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _3435 = _3376 * _34_m10.xy;
              float _3436 = _3431.x;
              float _3437 = _3433.x;
              float _3440 = _3431.y;
              float _3443 = _3431.z;
              float _3446 = _3433.y;
              float _3453 = _3433.z;
              float _3460 = _3422.x;
              float _3461 = _3425.x;
              float _3463 = _3422.y;
              float _3465 = _3422.z;
              float _3467 = _3425.y;
              float _3471 = _3425.z;
              float _3529 = (((((((_3460 * _3461) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3436, _3437), _373).xy, _3363)) + ((_3463 * _3461) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3440, _3437), _373).xy, _3363))) + ((_3465 * _3461) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3443, _3437), _373).xy, _3363))) + ((_3460 * _3467) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3436, _3446), _373).xy, _3363))) + ((_3463 * _3467) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3440, _3446), _373).xy, _3363))) + ((_3465 * _3467) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3443, _3446), _373).xy, _3363))) + ((_3460 * _3471) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3436, _3453), _373).xy, _3363));
              float4 _3552 = asfloat(uint4(_37.Load(_3222 * 4 + 0), _37.Load(_3225 * 4 + 0), _37.Load(_3228 * 4 + 0), _37.Load(_3231 * 4 + 0)));
              float _3553 = _3552.w;
              float2 _3555 = min(_3352, 1.0f.xx - _3352);
              _3567 = lerp(1.0f, (any(bool3(_3359.x || _3360.x, _3359.y || _3360.y, _3359.z || _3360.z)) || ((asuint(_3363) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3529 + ((_3463 * _3471) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3440, _3453), _373).xy, _3363))) + ((_3465 * _3471) * _35.SampleCmpLevelZero(_16, float3(_3435 + float2(_3443, _3453), _373).xy, _3363))), _3004 ? min(_3553, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3552.z - _3332.w) * 0.25f, min(_3555.x, _3555.y)))) : _3553);
              break;
            } while (false);
            _3569 = (_3213 >= 0) ? _3567 : 1.0f;
          } else {
            _3569 = 1.0f;
          }
          float3 _3593;
          float3 _3594;
          if (_3007) {
            float3 _3572 = _2961 * _2961;
            float3 _3573 = reflect(_526, _465);
            float _3582 = dot(_3573, _2996);
            _3593 = _3572 / clamp(_3572 + (0.5f * clamp(_30_m6[_1003].z * _2985, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3594 = normalize(_2998 + (_2996 * clamp(dot(_2998, (_3573 * _3582) - _2996) / ((_30_m6[_1003].z * _30_m6[_1003].z) - (_3582 * _3582)), 0.0f, 1.0f)));
          } else {
            _3593 = 1.0f.xxx;
            _3594 = _2986;
          }
          float3 _3595 = _3594 + _524;
          float3 _3599 = _3595 * rsqrt(max(6.103515625e-05f, dot(_3595, _3595)));
          float3 _3748;
          if (_3160) {
            float _3602 = dot(_465, _3594);
            float _3603 = clamp(_3026, 0.0f, 1.0f);
            float _3605 = clamp(dot(_465, _3599), 0.0f, 1.0f);
            float _3607 = clamp(dot(_524, _3599), 0.0f, 1.0f);
            float _3608 = dot(_524, _3594);
            float _3610 = clamp(_700, 0.0f, 1.0f);
            float _3611 = _697 * _697;
            float _3621;
            if (_2990 > 0.0f) {
              _3621 = clamp(_3611 + ((_2990 * _2990) / ((_3607 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3621 = _3611;
            }
            float _3622 = _3621 * _3621;
            float _3643 = (((_3605 * _3622) - _3605) * _3605) + 1.0f;
            float _3648 = 1.0f - _3607;
            float _3649 = _3648 * _3648;
            float _3651 = (_3648 * _3649) * _3649;
            float _3681 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_696 * (1.04997003078460693359375f + (_696 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _696))))));
            float _3682 = 1.0f - _3681;
            float3 _3685 = _699 + ((1.0f.xxx - _699) * 0.0476190485060214996337890625f);
            float _3716 = clamp(-_3608, 0.0f, 1.0f);
            float _3720 = (((_3716 * 0.36000001430511474609375f) - _3716) * _3716) + 1.0f;
            float _3721 = _3720 * _3720;
            float3 _3733 = ((min(((_699 * (1.0f - _3651)) + _3651.xxx) * (((_3622 / (_3643 * _3643)) * _3593.y) * (0.5f / (((_3603 * sqrt(((((-_3610) * _3622) + _3610) * _3610) + _3622)) + (_3610 * sqrt(((((-_3603) * _3622) + _3603) * _3603) + _3622))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3685 * (((_46.SampleLevel(_13, (float2(_3610, _697) * 0.96875f) + 0.015625f.xx, 0.0f).x * _46.SampleLevel(_13, (float2(_3603, _697) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3681) / _3682)) * _3685) / (1.0f.xxx - (_3685 * _3682)))) * lerp(clamp(_700 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_3608, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_3608 + 1.0f, 0.0f, 1.0f))) * _426;
            _3748 = (((clamp(_3733 * _30_m6[_1018].z, 0.0f.xxx, 1000.0f.xxx) * _3026) + (((((_686 / max(0.00999999977648258209228515625f, max(max(_686.x, _686.y), _686.z)).xxx) * _409) * (clamp(0.5f - _3602, 0.0f, 1.0f) * ((0.36000001430511474609375f != _3721) ? (0.36000001430511474609375f / _3721) : 1.0f))) + (_686 * (clamp(_3602 + _417, 0.0f, 1.0f) - clamp(_3603, 0.0f, 1.0f)))) * _426)) + (((_686 * _426) * _3593.z) * _3026)) * (((_30_m6[_997].xyz * _3159) * _3569) * _1097);
          } else {
            _3748 = 0.0f.xxx;
          }
          _3749 = _957;
          _3750 = _3748;
        } else {
          float _2959;
          do {
            if (_1104) {
              _2959 = 1.0f;
              break;
            }
            float _2373 = (0.5f + (0.5f * _30_m6[_1003].y)) - abs(_30_m6[_1003].x);
            float _2374 = _30_m6[_1003].y - _2373;
            float _2381 = abs(max((1.0f - abs(_2373)) - abs(_2374), 0.00048828125f));
            float3 _2385 = normalize(float3(_2373, _2374, (_30_m6[_1003].x >= 0.0f) ? _2381 : (-_2381)));
            float3 _2386 = _30_m6[_1000].xyz - _498;
            float _2387 = dot(_2386, _2386);
            float3 _2389 = _2386 * rsqrt(_2387);
            int _2392 = int(_30_m6[_1018].w);
            float3 _2394 = (_2385 * _30_m6[_1003].z) * 0.5f;
            float3 _2395 = _2386 - _2394;
            float3 _2396 = _2386 + _2394;
            bool _2398 = (_1101 & 1u) == 0u;
            bool _2401 = _2398 || ((_1022 & 2u) != 0u);
            bool _2404 = (!_2398) && (_30_m6[_1003].z > 0.0f);
            float _2416;
            if (_2404) {
              _2416 = 1.0f / ((((length(_2395) * length(_2396)) + dot(_2395, _2396)) * 0.5f) + 1.0f);
            } else {
              _2416 = 1.0f;
            }
            float _2438;
            if (_30_m6[_1015].w < 0.0f) {
              float _2432 = _2387 * (_30_m6[_1000].w * _30_m6[_1000].w);
              float _2435 = clamp(1.0f - (_2432 * _2432), 0.0f, 1.0f);
              _2438 = lerp(1.0f / (_2387 + 1.0f), _2416, float(_2404)) * (_2435 * _2435);
            } else {
              float3 _2421 = _2386 * _30_m6[_1000].w;
              _2438 = _2416 * pow(1.0f - clamp(dot(_2421, _2421), 0.0f, 1.0f), _30_m6[_1015].w);
            }
            float _2444 = clamp((dot(_2389, -_2385) - _30_m6[_1003].z) * _30_m6[_1003].w, 0.0f, 1.0f);
            float _2448 = _2438 * lerp(1.0f, _2444 * _2444, float(_2398));
            float _2548;
            if ((!_2404) && (_2392 >= 0)) {
              uint _2454 = uint(_2392);
              float2 _2541;
              [branch] if (_2398) {
                float4 _2531 = mul(_50_m1[_2454], _502);
                _2541 = _50_m0[_2454].xy + (clamp(_2531.xy / _2531.w.xx, 0.0f.xx, 1.0f.xx) * _50_m0[_2454].zw);
              }
              else {
                float3 _2468 = mul(float4(-_2386, 0.0f), _50_m1[_2454]).xyz;
                float3 _384 = _2468;
                float3 _383 = _2468;
                float3 _382 = abs(_2468);
                uint _2477 = uint(int(_382.y > _382.x));
                uint _2483 = (_382.z > _382[_2477]) ? 2u : _2477;
                uint _2489 = (_2483 * 2u) + uint(_383[_2483] < 0.0f);
                float _2493 = abs(_384[_2489 / 2u]);
                float _2513 = 0.5f - (0.000244140625f / _50_m0[_2454].w);
                _2541 = _50_m0[_2454].xy + (clamp(float2((float(_2489) + ((((_384[uint(_347[_2489].x)] * _348[_2489].x) / _2493) * _2513) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_384[uint(_347[_2489].y)] * _348[_2489].y) / _2493) * _2513)), 0.0f.xx, 1.0f.xx) * _50_m0[_2454].zw);
              }
              _2548 = _2448 * _48.SampleLevel(_13, _2541, 0.0f).x;
            } else {
              _2548 = _2448;
            }
            float _2958;
            if (_2548 > 0.0f) {
              int _2602;
              if (_2401) {
                _2602 = int(_30_m6[_1006].x);
              } else {
                uint _2557 = asuint(_30_m6[_1003].w);
                uint _2558 = asuint(_30_m6[_1006].x);
                float3 _2559 = _498 - _30_m6[_1000].xyz;
                float3 _2560 = abs(_2559);
                float _2561 = _2560.x;
                float _2562 = _2560.y;
                float _2564 = _2560.z;
                int _2597;
                if ((_2561 > _2562) && (_2561 > _2564)) {
                  _2597 = int((_2559.x > 0.0f) ? (_2557 & 1023u) : ((_2557 >> 10u) & 1023u));
                } else {
                  int _2589;
                  if (_2562 > _2564) {
                    _2589 = int((_2559.y > 0.0f) ? ((_2557 >> 20u) & 1023u) : (_2558 & 1023u));
                  } else {
                    _2589 = int((_2559.z > 0.0f) ? ((_2558 >> 10u) & 1023u) : ((_2558 >> 20u) & 1023u));
                  }
                  _2597 = _2589;
                }
                _2602 = (_2597 == 1023) ? (-1) : _2597;
              }
              uint _2607 = uint(_2602);
              uint _2609 = asuint(_34_m11.x) + (_2607 * 96u);
              uint _2611 = (_2609 + 64u) >> 2u;
              uint _2614 = _2611 + 1u;
              uint _2617 = _2611 + 2u;
              uint _2620 = _2611 + 3u;
              float4 _2624 = asfloat(uint4(_37.Load(_2611 * 4 + 0), _37.Load(_2614 * 4 + 0), _37.Load(_2617 * 4 + 0), _37.Load(_2620 * 4 + 0)));
              float _2956;
              do {
                uint _2640 = ((asuint(_34_m11.y) + (_2607 * 16u)) >> 2u) + 1u;
                if (_37.Load(_2640 * 4 + 0) > 0u) {
                  float4 _381 = _951;
                  float _2655;
                  do {
                    if (_37.Load(_2640 * 4 + 0) == 0u) {
                      _2655 = 1.0f;
                      break;
                    }
                    _2655 = _381[_37.Load(_2640 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2956 = _2655;
                  break;
                }
                uint _2656 = _2609 >> 2u;
                uint _2671 = (_2609 + 16u) >> 2u;
                uint _2686 = (_2609 + 32u) >> 2u;
                uint _2701 = (_2609 + 48u) >> 2u;
                float4 _2721 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2656 * 4 + 0), _37.Load((_2656 + 1u) * 4 + 0), _37.Load((_2656 + 2u) * 4 + 0), _37.Load((_2656 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2671 * 4 + 0), _37.Load((_2671 + 1u) * 4 + 0), _37.Load((_2671 + 2u) * 4 + 0), _37.Load((_2671 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2686 * 4 + 0), _37.Load((_2686 + 1u) * 4 + 0), _37.Load((_2686 + 2u) * 4 + 0), _37.Load((_2686 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2701 * 4 + 0), _37.Load((_2701 + 1u) * 4 + 0), _37.Load((_2701 + 2u) * 4 + 0), _37.Load((_2701 + 3u) * 4 + 0))))), float4((_498 - ((-_2389) * _2624.x)) + (_465 * (_2624.y * 5.0f)), 1.0f));
                float3 _2725 = _2721.xyz / _2721.w.xxx;
                uint _2727 = (_2609 + 80u) >> 2u;
                float4 _2740 = asfloat(uint4(_37.Load(_2727 * 4 + 0), _37.Load((_2727 + 1u) * 4 + 0), _37.Load((_2727 + 2u) * 4 + 0), _37.Load((_2727 + 3u) * 4 + 0)));
                float2 _2741 = _2725.xy;
                float2 _2743 = _2740.xy;
                float3 _2747 = _2725.xyz;
                bool3 _2748 = bool3(_2747.x <= 0.0f.xxx.x, _2747.y <= 0.0f.xxx.y, _2747.z <= 0.0f.xxx.z);
                bool3 _2749 = bool3(_2747.x >= 1.0f.xxx.x, _2747.y >= 1.0f.xxx.y, _2747.z >= 1.0f.xxx.z);
                float _2752 = _2725.z;
                float2 _2763 = ((_2741 * (_2740.zw - _2743)) + _2743).xy * _34_m10.zw;
                float2 _2765 = floor(_2763 + 0.5f.xx);
                float2 _2766 = _2763 - _2765;
                float _2767 = _2766.x;
                float _2768 = _2767 + 0.5f;
                float _2769 = _2768 * _2768;
                float _2772 = 1.0f - _2767;
                float _2773 = min(_2767, 0.0f);
                float _2776 = _2767 + 1.0f;
                float _2777 = max(_2767, 0.0f);
                float _2788 = _2766.y;
                float _2789 = _2788 + 0.5f;
                float _2790 = _2789 * _2789;
                float _2793 = 1.0f - _2788;
                float _2794 = min(_2788, 0.0f);
                float _2797 = _2788 + 1.0f;
                float _2798 = max(_2788, 0.0f);
                float3 _2810 = float3(0.1599999964237213134765625f * _2772, 0.1599999964237213134765625f * ((_2776 - (_2777 * _2777)) + 1.0f), _2769 * 0.07999999821186065673828125f);
                float3 _2811 = float3(0.1599999964237213134765625f * ((_2769 * 0.5f) - _2767), 0.1599999964237213134765625f * ((_2772 - (_2773 * _2773)) + 1.0f), 0.1599999964237213134765625f * _2776) + _2810;
                float3 _2813 = float3(0.1599999964237213134765625f * _2793, 0.1599999964237213134765625f * ((_2797 - (_2798 * _2798)) + 1.0f), _2790 * 0.07999999821186065673828125f);
                float3 _2814 = float3(0.1599999964237213134765625f * ((_2790 * 0.5f) - _2788), 0.1599999964237213134765625f * ((_2793 - (_2794 * _2794)) + 1.0f), 0.1599999964237213134765625f * _2797) + _2813;
                float3 _2820 = ((_2810 / _2811) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
                float3 _2822 = ((_2813 / _2814) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
                float2 _2824 = _2765 * _34_m10.xy;
                float _2825 = _2820.x;
                float _2826 = _2822.x;
                float _2829 = _2820.y;
                float _2832 = _2820.z;
                float _2835 = _2822.y;
                float _2842 = _2822.z;
                float _2849 = _2811.x;
                float _2850 = _2814.x;
                float _2852 = _2811.y;
                float _2854 = _2811.z;
                float _2856 = _2814.y;
                float _2860 = _2814.z;
                float _2918 = (((((((_2849 * _2850) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2825, _2826), _373).xy, _2752)) + ((_2852 * _2850) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2829, _2826), _373).xy, _2752))) + ((_2854 * _2850) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2832, _2826), _373).xy, _2752))) + ((_2849 * _2856) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2825, _2835), _373).xy, _2752))) + ((_2852 * _2856) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2829, _2835), _373).xy, _2752))) + ((_2854 * _2856) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2832, _2835), _373).xy, _2752))) + ((_2849 * _2860) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2825, _2842), _373).xy, _2752));
                float4 _2941 = asfloat(uint4(_37.Load(_2611 * 4 + 0), _37.Load(_2614 * 4 + 0), _37.Load(_2617 * 4 + 0), _37.Load(_2620 * 4 + 0)));
                float _2942 = _2941.w;
                float2 _2944 = min(_2741, 1.0f.xx - _2741);
                _2956 = lerp(1.0f, (any(bool3(_2748.x || _2749.x, _2748.y || _2749.y, _2748.z || _2749.z)) || ((asuint(_2752) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2918 + ((_2852 * _2860) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2829, _2842), _373).xy, _2752))) + ((_2854 * _2860) * _35.SampleCmpLevelZero(_16, float3(_2824 + float2(_2832, _2842), _373).xy, _2752))), _2401 ? min(_2942, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2941.z - _2721.w) * 0.25f, min(_2944.x, _2944.y)))) : _2942);
                break;
              } while (false);
              _2958 = (_2602 >= 0) ? _2956 : 1.0f;
            } else {
              _2958 = 1.0f;
            }
            _2959 = _2958;
            break;
          } while (false);
          _3749 = _957 * _2959;
          _3750 = 0.0f.xxx;
        }
        _3751 = _3749;
        _3752 = _3750;
        break;
      } while (false);
      _982 = _3751;
      _985 = _984 + _3752;
    }
    _954 = _953 + _984;
  }
  float3 _3756 = _922.xyz + (_953 * _956);
  float3 _3758 = _468.xxx;
  float3 _3793;
  float3 _3794;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x1A15886A:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3769 = min(_22.SampleBias(_12, _4, _9_m16).x, _468);
    _3793 = clamp((pow(abs(_701 + _3769), exp2(((-16.0f) * _697) - 1.0f)) - 1.0f) + _3769, 0.0f, 1.0f).xxx;
    _3794 = max(_3769.xxx, ((((((_686 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3769) + ((_686 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3769) + ((_686 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3769);
  }
  else {
    _3793 = _3758;
    _3794 = _3758;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3756 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3793 : 1.0f.xxx;
  // RenoDX code end
  float3 _3804 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3813 = _498 - (_9_m108.xyz + (_3804 * (-_9_m110.w)));
  float _3828 = max(min(max((max(abs(_3813.x), abs(_3813.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3813.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _4130;
  float4 _4131;
  float4 _4132;
  float _4133;
  float _4134;
  if ((_9_m108.w != 0.0f) && (_3828 < 1.0f)) {
    float3 _3841 = _498 - (_9_m108.xyz + (_3804 * (-_9_m110.y)));
    float _3855 = max(clamp((max(abs(_3841.x), abs(_3841.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3841.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3931;
    float4 _3932;
    float4 _3933;
    float4 _3934;
    if (_3855 < 1.0f) {
      float3 _3864 = ((_498 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3866 = _3864 - floor(_3864);
      float4 _3870 = _60.SampleLevel(_14, _3866, 0.0f);
      float _3871 = 1.0f - _3855;
      float _3875 = _9_m109.y * 0.5f;
      float _3880 = _3866.x;
      float _3881 = clamp(_3866.y, _3875, 1.0f - _3875) * 0.3333333432674407958984375f;
      float _3882 = _3866.z;
      float4 _3885 = _61.SampleLevel(_13, float3(_3880, _3881, _3882), 0.0f);
      float _3901 = _3870.x;
      float _3911 = _3870.y;
      float _3921 = _3870.z;
      _3931 = _3828 + (_3885.w * _3871);
      _3932 = float4(((_61.SampleLevel(_13, float3(_3880, _3881 + 0.666666686534881591796875f, _3882), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3921, _3921) * _3871;
      _3933 = float4(((_61.SampleLevel(_13, float3(_3880, _3881 + 0.3333333432674407958984375f, _3882), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3911, _3911) * _3871;
      _3934 = float4(((_3885.xyz * 4.0f) - 2.0f.xxx) * _3901, _3901) * _3871;
    } else {
      _3931 = _3828;
      _3932 = 0.0f.xxxx;
      _3933 = 0.0f.xxxx;
      _3934 = 0.0f.xxxx;
    }
    float3 _3940 = _498 - (_9_m108.xyz + (_3804 * (-_9_m110.z)));
    float _3954 = max(clamp((max(abs(_3940.x), abs(_3940.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3940.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _4034;
    float4 _4035;
    float4 _4036;
    float4 _4037;
    if (_3954 < 1.0f) {
      float3 _3963 = ((_498 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3965 = _3963 - floor(_3963);
      float4 _3969 = _62.SampleLevel(_14, _3965, 0.0f);
      float _3971 = _3855 * (1.0f - _3954);
      float _3975 = _9_m109.y * 0.5f;
      float _3980 = _3965.x;
      float _3981 = clamp(_3965.y, _3975, 1.0f - _3975) * 0.3333333432674407958984375f;
      float _3982 = _3965.z;
      float4 _3985 = _63.SampleLevel(_13, float3(_3980, _3981, _3982), 0.0f);
      float _4001 = _3969.x;
      float _4012 = _3969.y;
      float _4023 = _3969.z;
      _4034 = _3931 + (_3985.w * _3971);
      _4035 = _3932 + (float4(((_63.SampleLevel(_13, float3(_3980, _3981 + 0.666666686534881591796875f, _3982), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4023, _4023) * _3971);
      _4036 = _3933 + (float4(((_63.SampleLevel(_13, float3(_3980, _3981 + 0.3333333432674407958984375f, _3982), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4012, _4012) * _3971);
      _4037 = _3934 + (float4(((_3985.xyz * 4.0f) - 2.0f.xxx) * _4001, _4001) * _3971);
    } else {
      _4034 = _3931;
      _4035 = _3932;
      _4036 = _3933;
      _4037 = _3934;
    }
    float4 _4120;
    float4 _4121;
    float4 _4122;
    float _4123;
    if (_3954 > 0.0f) {
      float3 _4046 = ((_498 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4049 = _9_m109.xyz * 0.5f;
      float3 _4051 = clamp(_4046 - floor(_4046), _4049, 1.0f.xxx - _4049);
      float4 _4055 = _64.SampleLevel(_14, _4051, 0.0f);
      float _4057 = _3954 * (1.0f - _3828);
      float _4061 = _9_m109.y * 0.5f;
      float _4066 = _4051.x;
      float _4067 = clamp(_4051.y, _4061, 1.0f - _4061) * 0.3333333432674407958984375f;
      float _4068 = _4051.z;
      float4 _4071 = _65.SampleLevel(_13, float3(_4066, _4067, _4068), 0.0f);
      float _4087 = _4055.x;
      float _4098 = _4055.y;
      float _4109 = _4055.z;
      _4120 = _4035 + (float4(((_65.SampleLevel(_13, float3(_4066, _4067 + 0.666666686534881591796875f, _4068), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4109, _4109) * _4057);
      _4121 = _4036 + (float4(((_65.SampleLevel(_13, float3(_4066, _4067 + 0.3333333432674407958984375f, _4068), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4098, _4098) * _4057);
      _4122 = _4037 + (float4(((_4071.xyz * 4.0f) - 2.0f.xxx) * _4087, _4087) * _4057);
      _4123 = _4034 + (_4071.w * _4057);
    } else {
      _4120 = _4035;
      _4121 = _4036;
      _4122 = _4037;
      _4123 = _4034;
    }
    float _4126 = clamp((_4123 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _4130 = _4120;
    _4131 = _4121;
    _4132 = _4122;
    _4133 = _4126 - _3828;
    _4134 = (_4126 + _3828) * 0.5f;
  } else {
    _4130 = 0.0f.xxxx;
    _4131 = 0.0f.xxxx;
    _4132 = 0.0f.xxxx;
    _4133 = 0.0f;
    _4134 = 1.0f;
  }
  float4 _4154 = _4132 + float4(_9_m111.x * _4134, (_9_m111.y * _4134) + ((_9_m111.w * _4133) * 0.5f), _9_m111.z * _4134, (_9_m111.w * _4134) + ((_9_m111.y * _4133) * 0.375f));
  float4 _4174 = _4131 + float4(_9_m112.x * _4134, (_9_m112.y * _4134) + ((_9_m112.w * _4133) * 0.5f), _9_m112.z * _4134, (_9_m112.w * _4134) + ((_9_m112.y * _4133) * 0.375f));
  float4 _4194 = _4130 + float4(_9_m113.x * _4134, (_9_m113.y * _4134) + ((_9_m113.w * _4133) * 0.5f), _9_m113.z * _4134, (_9_m113.w * _4134) + ((_9_m113.y * _4133) * 0.375f));
  float4 _4352;
  float4 _4353;
  float4 _4354;
  [branch] if (all(bool2(_486.x >= 0.0f.xx.x, _486.y >= 0.0f.xx.y))) {
    float4 _4202 = _59.SampleLevel(_13, _486, 0.0f);
    float4 _4203 = abs(_4202);
    float4 _4349;
    float4 _4350;
    float4 _4351;
    [branch] if (any(bool4(_4203.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4203.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4203.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4203.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4209 = length(_4202.yzw);
      uint _4211;
      float _4214;
      _4211 = 0u;
      _4214 = 1.0f;
      for (float _4216 = _4209; _4216 > 4.599999904632568359375f;) {
        _4211++;
        _4214 *= 0.5f;
        _4216 *= 0.5f;
        continue;
      }
      float4 _4220 = _4202 * _4214;
      float4 _4225 = float4(0.0f, _4220.yzw);
      float2 _4247 = (_58.SampleLevel(_13, float2(((((length(_4225) * _57_m3.x) + _57_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _57_m2.xy) + _57_m2.zw;
      float4 _4261;
      _4261 = float4(_4247.x * 3.5449078083038330078125f, _4225.yzw * _4247.y) * exp(_4220.x * 0.282094776630401611328125f);
      for (uint _4264 = 0u; _4264 < _4211;) {
        _4261 = mul(float4x4(_4261, float4(_4261.yx, 0.0f, 0.0f), float4(_4261.z, 0.0f, _4261.x, 0.0f), float4(_4261.w, 0.0f, 0.0f, _4261.x)) * 0.282094776630401611328125f, _4261);
        _4264++;
        continue;
      }
      float4x4 _4285 = float4x4(_4261, float4(_4261.yx, 0.0f, 0.0f), float4(_4261.z, 0.0f, _4261.x, 0.0f), float4(_4261.w, 0.0f, 0.0f, _4261.x)) * 0.282094776630401611328125f;
      float4 _4295 = mul(_4285, float4(_4154.w * 1.1283791065216064453125f, _4154.y * (-0.977204978466033935546875f), _4154.z * 0.977204978466033935546875f, _4154.x * (-0.977204978466033935546875f)));
      float4 _4315 = mul(_4285, float4(_4174.w * 1.1283791065216064453125f, _4174.y * (-0.977204978466033935546875f), _4174.z * 0.977204978466033935546875f, _4174.x * (-0.977204978466033935546875f)));
      float4 _4335 = mul(_4285, float4(_4194.w * 1.1283791065216064453125f, _4194.y * (-0.977204978466033935546875f), _4194.z * 0.977204978466033935546875f, _4194.x * (-0.977204978466033935546875f)));
      _4349 = float4(_4295.x * 0.886226952075958251953125f, _4295.w * (-1.02332675457000732421875f), _4295.y * (-1.02332675457000732421875f), _4295.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4350 = float4(_4315.x * 0.886226952075958251953125f, _4315.w * (-1.02332675457000732421875f), _4315.y * (-1.02332675457000732421875f), _4315.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4351 = float4(_4335.x * 0.886226952075958251953125f, _4335.w * (-1.02332675457000732421875f), _4335.y * (-1.02332675457000732421875f), _4335.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4349 = _4154;
      _4350 = _4174;
      _4351 = _4194;
    }
    _4352 = _4349;
    _4353 = _4350;
    _4354 = _4351;
  }
  else {
    _4352 = _4154;
    _4353 = _4174;
    _4354 = _4194;
  }
  float4 _4357 = float4(_465.x, _637, _465.z, 1.0f);
  float3 _4362 = max(float3(dot(_4352, _4357), dot(_4353, _4357), dot(_4354, _4357)), 0.0f.xxx);
  float4 _4367 = float4(-_465, 1.0f);
  float3 _4384 = reflect(_526, _465);
  float _4392 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_697, 0.001000000047497451305389404296875f))));
  float2 _4396 = floor(_473 * _28_m0.w);
  float _4413 = floor(_505 - _28_m2.y);
  float _4417 = clamp(_4413, 0.0f, _28_m1.x - 1.0f);
  uint _4427 = (_4413 <= _4417) ? (_25.Load(uint(_9_m21.z + int(_4396.x + (_4396.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_4417)) * 4 + 0)) : 0u;
  float _4430 = dot(float4(_4362, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4432;
  float _4435;
  uint _4437;
  _4432 = 0.0f.xxx;
  _4435 = 1.0f;
  _4437 = _4427;
  uint _4438;
  float3 _4433;
  float _4436;
  bool _4440;
  [loop] for (;;) {
    bool _4439 = _4437 != 0u;
    _4440 = _4435 > 0.00999999977648258209228515625f;
    if (_4439 && _4440) {
      uint _4444 = firstbitlow(_4437);
      _4438 = _4437 ^ (1u << (_4444 & 31u));
      float3 _4464 = float3(dot(_28_m4[_4444]._m2, _502), dot(_28_m4[_4444]._m3, _502), dot(_28_m4[_4444]._m4, _502));
      float3 _4465 = abs(_4464);
      if (all(bool3(_4465.x <= _28_m4[_4444]._m1.xyz.x, _4465.y <= _28_m4[_4444]._m1.xyz.y, _4465.z <= _28_m4[_4444]._m1.xyz.z))) {
        float3 _4474 = _28_m4[_4444]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4476 = _4465 * 0.100000001490116119384765625f;
        float3 _4477 = _4476 * _4476;
        float3 _4480 = (_28_m4[_4444]._m1.xyz - _4465) * _28_m4[_4444]._m5.xyz;
        float3 _4528;
        [branch] if (_28_m4[_4444]._m6.x == 1.0f) {
          float3 _4513 = float3(dot(_28_m4[_4444]._m2.xyz, _4384), dot(_28_m4[_4444]._m3.xyz, _4384), dot(_28_m4[_4444]._m4.xyz, _4384));
          float3 _4515 = (_28_m4[_4444]._m1.xyz - _4464) / _4513;
          float3 _4518 = ((-_28_m4[_4444]._m1.xyz) - _4464) / _4513;
          bool3 _4519 = bool3(_4513.x > 0.0f.xxx.x, _4513.y > 0.0f.xxx.y, _4513.z > 0.0f.xxx.z);
          float3 _4520 = float3(_4519.x ? _4515.x : _4518.x, _4519.y ? _4515.y : _4518.y, _4519.z ? _4515.z : _4518.z);
          _4528 = _4464 + (_4513 * min(min(_4520.x, _4520.y), _4520.z));
        }
        else {
          _4528 = _4384;
        }
        float3 _4529 = normalize(_4528);
        float3 _4532 = float3(int3(sign(_4529)));
        float3 _4535 = _4529 / dot(_4529, _4532).xxx;
        float3 _4549;
        if (_4535.z < 0.0f) {
          float3 _4540 = abs(_4535);
          float2 _4547 = _4532.xy * float2(1.0f - _4540.y, 1.0f - _4540.x);
          _4549 = float3(_4547.x, _4547.y, _4535.z);
        } else {
          _4549 = _4535;
        }
        float _4570 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_4444]._m0, _4357)));
        float _4583 = clamp((min(_4480.x, min(_4480.y, _4480.z)) * _28_m4[_4444]._m6.y) + ((((((_4474 * _4474).x - ((_4477.x + _4477.y) + _4477.z)) * _28_m4[_4444]._m5.x) * _28_m4[_4444]._m5.x) * (1.0f - _28_m4[_4444]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_4444]._m6.w;
        _4433 = _4432 + ((((_23.SampleLevel(_15, float3((((_4549.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_4444]._m1.w), _4392).xyz * _28_m4[_4444]._m5.w) * ((((((clamp(abs(_4430 / _4570), 0.0f, 1.0f) * 2.0f) + _4430) / (2.0f + _4570)) - 1.0f) * _9_m23.w) + 1.0f)) * _4583) * _4435);
        _4436 = _4435 * (1.0f - _4583);
      } else {
        _4433 = _4432;
        _4436 = _4435;
      }
      _4432 = _4433;
      _4435 = _4436;
      _4437 = _4438;
      continue;
    } else {
      break;
    }
  }
  float3 _4648;
  if (_4440) {
    float3 _4591 = normalize(_4384);
    float3 _4594 = float3(int3(sign(_4591)));
    float3 _4597 = _4591 / dot(_4591, _4594).xxx;
    float3 _4611;
    if (_4597.z < 0.0f) {
      float3 _4602 = abs(_4597);
      float2 _4609 = _4594.xy * float2(1.0f - _4602.y, 1.0f - _4602.x);
      _4611 = float3(_4609.x, _4609.y, _4597.z);
    } else {
      _4611 = _4597;
    }
    float _4634 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, _4357)));
    _4648 = _4432 + ((_23.SampleLevel(_15, float3((((_4611.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _4392).xyz * ((((((clamp(abs(_4430 / _4634), 0.0f, 1.0f) * 2.0f) + _4430) / (2.0f + _4634)) - 1.0f) * _9_m23.w) + 1.0f)) * _4435);
  } else {
    _4648 = _4432;
  }
  float3 _4654 = (_4648 * _9_m23.z) * _9_m22.y;
  float3 _4675;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4669 = _21.SampleBias(_13, _4, _9_m16);
    float _4670 = _4669.x;
    _4675 = (_20.SampleBias(_13, _4, _9_m16).xyz * _4670) + (_4654 * (1.0f - _4670));
  }
  else {
    _4675 = _4654;
  }
  float3 _4696 = ((((_4362 * _686) * _9_m22.x) * _3794) + ((_4675 * ((_699 * _714.x) + (clamp(_470 * 4.0f, 0.0f, 1.0f) * _714.y).xxx)) * _3793)) + (((((max(float3(dot(_4352, _4367), dot(_4353, _4367), dot(_4354, _4367)), 0.0f.xxx) * _9_m22.x) * _3794) * (_686 / max(0.00999999977648258209228515625f, max(max(_686.x, _686.y), _686.z)).xxx)) * ((_409 * clamp(dot(_524, _465), 0.0f, 1.0f)) + (float(((_431 & 7u) << 2u) | (uint(_399.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _4698 = float4(_3756.x, _3756.y, _3756.z, _922.w) + float4(_4696.x, _4696.y, _4696.z, 0.0f.xxxx.w);
  float _4716 = _498.y * _9_m46.w;
  float _4721 = max(0.00999999977648258209228515625f, _4716 + _9_m47.w);
  float3 _4735 = exp(_9_m45.xyz * ((-max(0.0f, (_525 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4721)) / _4721) * exp(_4716 + _9_m48.w))));
  float _4738 = dot(_526, _9_m44.xyz);
  float _4744 = _9_m45.w * _9_m45.w;
  float _4748 = (1.0f + _4744) - ((2.0f * _9_m45.w) * _4738);
  float3 _5072;
  float _5073;
  if (_9_m55.z > 0.0f) {
    uint3 _4900 = (uint3(int3(_392, _393, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4901 = _4900.y;
    uint _4902 = _4900.z;
    uint _4905 = _4900.x + (_4901 * _4902);
    uint _4907 = _4901 + (_4902 * _4905);
    uint _4909 = _4902 + (_4905 * _4907);
    uint _4911 = _4905 + (_4907 * _4909);
    float _4935 = dot(_526, -_7_m0[2].xyz);
    float3 _4943 = _498 - _7_m11.xyz;
    float _4945 = (_9_m55.w * ((_4935 > 5.9604644775390625e-08f) ? (1.0f / _4935) : 0.0f)) * (1.0f / _525);
    float _4946 = _4943.y;
    float _4947 = _4945 * _4946;
    float _4949 = _7_m11.y + _4947;
    float _4950 = _4946 - _4947;
    float _4952 = (1.0f - _4945) * _525;
    float _4966 = max(-127.0f, _9_m49.z * _4950);
    float _4990 = max(-127.0f, _9_m52.x * _4950);
    float _5001 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4949 - _9_m49.x)))) * ((abs(_4966) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4966)) / _4966) : (0.693147182464599609375f - (0.2402265071868896484375f * _4966)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4949 - _9_m52.z)))) * ((abs(_4990) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4990)) / _4990) : (0.693147182464599609375f - (0.2402265071868896484375f * _4990))));
    float _5023 = clamp((_525 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5026 = clamp((max(clamp(exp2(-(_5001 * _4952)), 0.0f, 1.0f), _9_m51.w) + clamp((_525 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5023, 0.0f, 1.0f);
    float4 _5066 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _55.SampleLevel(_13, float3((_473 + ((((float3(uint3(_4911, _4907 + (_4909 * _4911), _375) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_505 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_505 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _5068 = _5066.w;
    _5072 = _5066.xyz + (((_9_m51.xyz * (1.0f - _5026)) + (((_9_m54.xyz * pow(clamp(dot(_524, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5001 * max(_4952 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5023))) * _5068);
    _5073 = _5068 * _5026;
  } else {
    float3 _4776 = _498 - _7_m11.xyz;
    float _4778 = _4776.y;
    float _4792 = max(-127.0f, _9_m49.z * _4778);
    float _4816 = max(-127.0f, _9_m52.x * _4778);
    float _4827 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4792) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4792)) / _4792) : (0.693147182464599609375f - (0.2402265071868896484375f * _4792)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4816) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4816)) / _4816) : (0.693147182464599609375f - (0.2402265071868896484375f * _4816))));
    float _4849 = clamp((_525 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4852 = clamp((max(clamp(exp2(-(_4827 * _525)), 0.0f, 1.0f), _9_m51.w) + clamp((_525 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4849, 0.0f, 1.0f);
    _5072 = (_9_m51.xyz * (1.0f - _4852)) + (((_9_m54.xyz * pow(clamp(dot(_524, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4827 * max(_525 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4849));
    _5073 = _4852;
  }
  float3 _5076 = _4735 * _5073;
  float3 _5078 = (clamp(_4698.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _5076) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4738 * _4738)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4744) / max((12.56637096405029296875f * _4748) * sqrt(_4748), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4735)) * _5073) + _5072);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _5078 = (_5078 * 0.65f) + (clamp(_4698.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _5080 = float4(_5078.x, _5078.y, _5078.z, _4698.w);
  _5080.w = dot(_5076, 0.3333333432674407958984375f.xxx);
  _5 = _5080;
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

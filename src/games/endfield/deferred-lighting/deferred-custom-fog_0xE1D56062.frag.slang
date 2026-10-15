#include "./renodx_injection.hlsli"

// Ported from the native 0xE1D56062 Vulkan dump.
struct _28 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _381;
static uint _384;

static const int2 _350[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _351[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(35, 3)]] cbuffer _6_7 : register(b35, space3) {
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

[[vk::binding(37, 3)]] cbuffer _10_11 : register(b37, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(46, 3)]] ByteAddressBuffer _26 : register(t46, space3);
[[vk::binding(43, 3)]] cbuffer _27_29 : register(b43, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  _28 _29_m4[32] : packoffset(c4);
};

[[vk::binding(38, 3)]] cbuffer _30_31 : register(b38, space3) {
  float4 _31_m0 : packoffset(c0);
  float4 _31_m1 : packoffset(c1);
  float4 _31_m2 : packoffset(c2);
  float4 _31_m3 : packoffset(c3);
  float4 _31_m4 : packoffset(c4);
  uint4 _31_m5 : packoffset(c5);
  float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(39, 3)]] cbuffer _32_33 : register(b39, space3) {
  int _33_m0 : packoffset(c0);
  int _33_m1 : packoffset(c0.y);
  int _33_m2 : packoffset(c0.z);
  int _33_m3 : packoffset(c0.w);
  int _33_m4 : packoffset(c1);
  int _33_m5 : packoffset(c1.y);
  int _33_m6 : packoffset(c1.z);
  int _33_m7 : packoffset(c1.w);
  float _33_m8 : packoffset(c2);
  float _33_m9 : packoffset(c2.y);
  float _33_m10 : packoffset(c2.z);
  float _33_m11 : packoffset(c2.w);
  float _33_m12 : packoffset(c3);
  float _33_m13 : packoffset(c3.y);
  float _33_m14 : packoffset(c3.z);
  float _33_m15 : packoffset(c3.w);
};

[[vk::binding(41, 3)]] cbuffer _34_35 : register(b41, space3) {
  column_major float4x4 _35_m0[5] : packoffset(c0);
  float4 _35_m1[4] : packoffset(c20);
  float4 _35_m2[4] : packoffset(c24);
  float4 _35_m3[4] : packoffset(c28);
  float4 _35_m4 : packoffset(c32);
  float4 _35_m5 : packoffset(c33);
  float4 _35_m6 : packoffset(c34);
  float4 _35_m7 : packoffset(c35);
  float4 _35_m8 : packoffset(c36);
  float4 _35_m9[27] : packoffset(c37);
  float4 _35_m10 : packoffset(c64);
  float4 _35_m11 : packoffset(c65);
  float4 _35_m12[62] : packoffset(c66);
  column_major float4x4 _35_m13[15] : packoffset(c128);
  float4 _35_m14[15] : packoffset(c188);
  float4 _35_m15[15] : packoffset(c203);
  float4 _35_m16[15] : packoffset(c218);
  float4 _35_m17 : packoffset(c233);
  float4 _35_m18 : packoffset(c234);
  float4 _35_m19[21] : packoffset(c235);
  column_major float4x4 _35_m20 : packoffset(c256);
  column_major float4x4 _35_m21 : packoffset(c260);
  float4 _35_m22 : packoffset(c264);
  float4 _35_m23 : packoffset(c265);
  float4 _35_m24 : packoffset(c266);
  float4 _35_m25[128] : packoffset(c267);
};

[[vk::binding(45, 3)]] ByteAddressBuffer _38 : register(t45, space3);
[[vk::binding(36, 3)]] cbuffer _46_47 : register(b36, space3) {
  float4 _47_m0[15] : packoffset(c0);
  float4 _47_m1[15] : packoffset(c15);
};

[[vk::binding(44, 3)]] cbuffer _50_51 : register(b44, space3) {
  float4 _51_m0[32] : packoffset(c0);
  column_major float4x4 _51_m1[32] : packoffset(c32);
};

[[vk::binding(40, 3)]] cbuffer _57_58 : register(b40, space3) {
  float4 _58_m0 : packoffset(c0);
  float4 _58_m1 : packoffset(c1);
  float4 _58_m2 : packoffset(c2);
  float4 _58_m3 : packoffset(c3);
  float4 _58_m4 : packoffset(c4);
  uint4 _58_m5 : packoffset(c5);
  float4 _58_m6 : packoffset(c6);
  float4 _58_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _14 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerState _15 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0, space3);
[[vk::binding(4, 3)]] SamplerComparisonState _18 : register(s4, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _20 : register(t32, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _21 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _22 : register(t11, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _23 : register(t25, space3);
[[vk::binding(12, 3)]] Texture2DArray<float4> _24 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _36 : register(t13, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _39 : register(t9, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _40 : register(t27, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _41 : register(t33, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _43 : register(t14, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _44 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _45 : register(t8, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _48 : register(t31, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _49 : register(t15, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _54 : register(t17, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _55 : register(t16, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _56 : register(t24, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _59 : register(t34, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _60 : register(t6, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _61 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _62 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _63 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _64 : register(t19, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _65 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _66 : register(t18, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _67 : register(t5, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _68 : register(t30, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _69 : register(t29, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _70 : register(t28, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _71 : register(t26, space3);

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
  uint2 _398 = uint2(gl_FragCoord.xy);
  int _401 = int(_398.x);
  int _402 = int(_398.y);
  int2 _404 = int3(_401, _402, 0).xy;
  float4 _406 = _68.Load(int3(_404, 0));
  float4 _408 = _69.Load(int3(_404, 0));
  float4 _410 = _70.Load(int3(_404, 0));
  uint _414 = uint(round(_410.w * 255.0f));
  float3 _520;
  float3 _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float3 _528;
  uint _529;
  float _530;
  bool _531;
  [branch] if ((_414 & 128u) != 0u) {
    float2 _462 = (_406.xy * 2.0f) - 1.0f.xx;
    float _466 = 1.0f - dot(1.0f.xx, abs(_462));
    float3 _468 = float3(_462.x, _466, _462.y);
    float3 _480;
    if (_466 < 0.0f) {
      float2 _475 = _468.xz;
      bool2 _476 = bool2(_475.x >= 0.0f.xx.x, _475.y >= 0.0f.xx.y);
      float2 _478 = (1.0f.xx - abs(_468.zx)) * float2(_476.x ? 1.0f.xx.x : (-1.0f).xx.x, _476.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _480 = float3(_478.x, _468.y, _478.y);
    } else {
      _480 = _468;
    }
    float2 _485 = (_408.xy * 2.0f) - 1.0f.xx;
    float _489 = 1.0f - dot(1.0f.xx, abs(_485));
    float3 _491 = float3(_485.x, _489, _485.y);
    float3 _503;
    if (_489 < 0.0f) {
      float2 _498 = _491.xz;
      bool2 _499 = bool2(_498.x >= 0.0f.xx.x, _498.y >= 0.0f.xx.y);
      float2 _501 = (1.0f.xx - abs(_491.zx)) * float2(_499.x ? 1.0f.xx.x : (-1.0f).xx.x, _499.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _503 = float3(_501.x, _491.y, _501.y);
    } else {
      _503 = _491;
    }
    _520 = _410.xyz;
    _521 = normalize(_503);
    _522 = _408.z;
    _523 = _406.z;
    _524 = 0.0f;
    _525 = 0.0f;
    _526 = 0.0f;
    _527 = 0.0f;
    _528 = normalize(_480);
    _529 = uint(int((round(_406.w * 3.0f) * 4.0f) + round(_408.w * 3.0f)));
    _530 = float(_414 & 127u) * 0.0078740157186985015869140625f;
    _531 = true;
  }
  else {
    float2 _424 = (_408.xy * 2.0f) - 1.0f.xx;
    float _428 = 1.0f - dot(1.0f.xx, abs(_424));
    float3 _430 = float3(_424.x, _428, _424.y);
    float3 _442;
    if (_428 < 0.0f) {
      float2 _437 = _430.xz;
      bool2 _438 = bool2(_437.x >= 0.0f.xx.x, _437.y >= 0.0f.xx.y);
      float2 _440 = (1.0f.xx - abs(_430.zx)) * float2(_438.x ? 1.0f.xx.x : (-1.0f).xx.x, _438.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _442 = float3(_440.x, _430.y, _440.y);
    } else {
      _442 = _430;
    }
    uint _450 = clamp(_414 - 1u, 0u, 62u);
    bool4 _451 = ((_414 > 0u) && (_414 <= 63u)).xxxx;
    float4 _454 = float4(_451.x ? _11_m0[_450].x : 0.0f.xxxx.x, _451.y ? _11_m0[_450].y : 0.0f.xxxx.y, _451.z ? _11_m0[_450].z : 0.0f.xxxx.z, _451.w ? _11_m0[_450].w : 0.0f.xxxx.w);
    _520 = _410.xyz;
    _521 = normalize(_442);
    _522 = _408.z;
    _523 = _406.y;
    _524 = _454.y;
    _525 = _454.z;
    _526 = _454.x * _406.x;
    _527 = _454.w;
    _528 = 0.0f.xxx;
    _529 = _414;
    _530 = 0.0f;
    _531 = false;
  }
  float2 _534 = float2(_398);
  float2 _539 = (_534 + 0.5f.xx) * _9_m0.zw;
  float2 _547 = gl_FragCoord.xy * _9_m0.zw;
  float2 _549 = (_547 * 2.0f) - 1.0f.xx;
  float4 _552 = float4(_549, _20.SampleLevel(_14, _539, 0.0f).x, 1.0f);
  _552.y = -_549.y;
  float4 _555 = mul(_7_m6, _552);
  float3 _559 = _555.xyz / _555.w.xxx;
  float4 _563 = float4(_559, 1.0f);
  float _566 = abs(mul(_7_m0, _563).z);
  float3 _581;
  do {
    if (_9_m4.w == 0.0f) {
      _581 = _7_m11.xyz - _559;
      break;
    } else {
      _581 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _582 = dot(_581, _581);
  float _584 = rsqrt(max(_582, 9.9999999392252902907785028219223e-09f));
  float3 _585 = _581 * _584;
  float _586 = _582 * _584;
  float3 _587 = -_585;
  float2 _600;
  if (_9_m132.x > 0.00048828125f) {
    _600 = _67.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _600 = 1.0f.xx;
  }
  float _603 = min(_600.x, _600.y);
  float2 _604 = _600 * 1.0f;
  float _605 = _604.x;
  float _610 = lerp(lerp(min(1.0f, _522), _522, _603), _522, _605);
  float3 _612 = _520 * lerp(lerp(min(1.0f, 1.0f), 1.0f, _603), 1.0f, _605);
  float _613 = dot(_521, _585);
  float _614 = max(0.0f, _613);
  float4 _616 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _610) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _617 = _616.x;
  float2 _627 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_617 * _617, exp2((-9.27999973297119140625f) * _614)) * _617) + _616.y)) + _616.zw;
  float3 _632 = (0.039999999105930328369140625f.xxx * _627.x) + _627.y.xxx;
  float4 _958;
  do {
    [branch] if (_33_m4 == 0) {
      _958 = 0.0f.xxxx;
      break;
    }
    float4 _645 = _39.Load(int3(_404, 0));
    float _646 = _645.x;
    float4 _957;
    if (_646 > 0.001000000047497451305389404296875f) {
      float3 _657 = reflect(_587, _521);
      float3 _658 = -_31_m0.xyz;
      float _663 = dot(_658, _657);
      float3 _665 = _657 - (_658 * _663);
      bool3 _667 = (_663 < _31_m4.z).xxx;
      float3 _675 = normalize((_658 * _31_m4.z) + ((_665 * rsqrt(max(6.103515625e-05f, dot(_665, _665)))) * _31_m4.y));
      float3 _676 = float3(_667.x ? _675.x : _657.x, _667.y ? _675.y : _657.y, _667.z ? _675.z : _657.z);
      float3 _680 = _676 + _585;
      float3 _684 = _680 * rsqrt(max(6.103515625e-05f, dot(_680, _680)));
      float _686 = clamp(dot(_676, _521), 0.0f, 1.0f);
      float _688 = clamp(dot(_521, _684), 0.0f, 1.0f);
      float _690 = clamp(dot(_585, _684), 0.0f, 1.0f);
      float _692 = clamp(_613, 0.0f, 1.0f);
      float3 _866;
      float3 _867;
      [branch] if (_531) {
        float _796 = _610 * _610;
        float _797 = _796 * _796;
        float _818 = (((_688 * _797) - _688) * _688) + 1.0f;
        float _821 = 1.0f - _690;
        float _822 = _821 * _821;
        float _824 = (_821 * _822) * _822;
        float _848 = 1.0f - _610;
        float _855 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_848 * (1.04997003078460693359375f + (_848 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _848))))));
        float _856 = 1.0f - _855;
        _866 = 0.0f.xxx;
        _867 = min(((0.039999999105930328369140625f.xxx * (1.0f - _824)) + _824.xxx) * ((_797 / (_818 * _818)) * (0.5f / (((_686 * sqrt(((((-_692) * _797) + _692) * _692) + _797)) + (_692 * sqrt(((((-_686) * _797) + _686) * _686) + _797))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_692, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_686, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _855) / _856)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _856)));
      }
      else {
        float _696 = _610 * _610;
        float _697 = _696 * _696;
        float _718 = (((_688 * _697) - _688) * _688) + 1.0f;
        float _721 = 1.0f - _690;
        float _722 = _721 * _721;
        float _724 = (_721 * _722) * _722;
        float _748 = 1.0f - _610;
        float _755 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_748 * (1.04997003078460693359375f + (_748 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _748))))));
        float _756 = 1.0f - _755;
        float _779 = clamp(1.0f - _526, 0.0f, 1.0f);
        float _787 = clamp((dot(_521, _676) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _866 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_524, _525, _526).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _525.xxx) * _526) * lerp((_523 * lerp(1.0f, (_787 * sqrt(_787)) * 1.66666662693023681640625f, _779)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_585, _676), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _779));
        _867 = min(((0.039999999105930328369140625f.xxx * (1.0f - _724)) + _724.xxx) * ((_697 / (_718 * _718)) * (0.5f / (((_686 * sqrt(((((-_692) * _697) + _692) * _692) + _697)) + (_692 * sqrt(((((-_686) * _697) + _686) * _686) + _697))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_692, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_686, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _755) / _756)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _756)));
      }
      float3 _868 = _612 * 1.0f;
      float3 _871 = clamp(_867 * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _686;
      float3 _942;
      [branch] if (_531) {
        float3 _937;
        do {
          [branch] if (((_529 > 0u) && (_529 <= 15u)) && (_530 > 0.0f)) {
            int _890 = int(clamp(_529 - 1u, 0u, 14u));
            float _909 = _530 * _47_m0[_890].w;
            float _914 = float(_890);
            _937 = float3(_44.SampleLevel(_15, float3((dot(normalize(lerp(_521, _528, _47_m0[_890].x.xxx)), _676) * 0.5f) + 0.5f, _909, _914), 0.0f).x, _44.SampleLevel(_15, float3((dot(normalize(lerp(_521, _528, _47_m0[_890].y.xxx)), _676) * 0.5f) + 0.5f, _909, _914), 0.0f).y, _44.SampleLevel(_15, float3((dot(normalize(lerp(_521, _528, _47_m0[_890].z.xxx)), _676) * 0.5f) + 0.5f, _909, _914), 0.0f).z);
            break;
          }
          _937 = _686.xxx;
          break;
        } while (false);
        _942 = _31_m1.xyz * (((_868 * _937) + _871) + _866);
      }
      else {
        _942 = ((_871 + _866) + (_868 * _686)) * _31_m1.xyz;
      }
      float3 _955 = lerp(_942, _942 * _41.SampleBias(_15, float2(_646, 0.5f), _9_m16).xyz, (1.0f - _646).xxx) * _48.SampleLevel(_15, _547, 0.0f).x;
      _957 = float4(_955.x, _955.y, _955.z, 0.0f.xxxx.w);
    } else {
      _957 = 0.0f.xxxx;
    }
    _958 = _957;
    break;
  } while (false);
  float2 _960 = floor(_534 * 0.03125f);
  int _968 = int((_960.x + (_960.y * _33_m9)) * 8.0f);
  float _975 = floor(_566 - (_9_m3.y * _33_m15));
  float _979 = clamp(_975, 0.0f, _33_m11 - 1.0f);
  int _981 = int(_979 * 8.0f);
  float4 _987 = _40.SampleBias(_15, _539, _9_m16);
  float3 _989;
  float _992;
  _989 = 0.0f.xxx;
  _992 = 1.0f;
  float3 _990;
  float _993;
  [loop] for (int _994 = 0; _994 <= 7; _989 = _990, _992 = _993, _994++) {
    uint _1015 = (_975 <= _979) ? (_26.Load(uint((_33_m2 + _968) + _994) * 4 + 0) & _26.Load(uint((_33_m3 + _981) + _994) * 4 + 0)) : 0u;
    uint _1016 = uint(_994);
    float3 _1020;
    _993 = _992;
    _1020 = 0.0f.xxx;
    uint _1023;
    float _1018;
    float3 _1021;
    [loop] for (uint _1022 = _1015; _1022 != 0u; _993 = _1018, _1020 = _1021, _1022 = _1023) {
      uint _1027 = firstbitlow(_1022);
      _1023 = _1022 ^ (1u << (_1027 & 31u));
      int _1033 = int((32u * _1016) + _1027) * 8;
      int _1036 = _1033 + 1;
      int _1039 = _1033 + 2;
      int _1042 = _1033 + 3;
      int _1045 = _1033 + 4;
      int _1048 = _1033 + 5;
      int _1051 = _1033 + 6;
      int _1054 = _1033 + 7;
      uint _1058 = uint(_31_m6[_1048].w);
      float _1133;
      if ((_1058 & 1u) == 1u) {
        uint _1064 = asuint(_31_m6[_1048].x);
        uint _1071 = asuint(_31_m6[_1048].y);
        uint _1078 = asuint(_31_m6[_1048].z);
        uint _1085 = asuint(_31_m6[_1051].x);
        uint _1092 = asuint(_31_m6[_1051].y);
        uint _1099 = asuint(_31_m6[_1051].z);
        float3 _1118 = abs(mul(float4(_559 - _31_m6[_1036].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1064).x, spvUnpackHalf2x16(_1078).x, spvUnpackHalf2x16(_1092).x, 0.0f), float4(spvUnpackHalf2x16(_1064 >> 16u).x, spvUnpackHalf2x16(_1078 >> 16u).x, spvUnpackHalf2x16(_1092 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1071).x, spvUnpackHalf2x16(_1085).x, spvUnpackHalf2x16(_1099).x, 0.0f), float4(spvUnpackHalf2x16(_1071 >> 16u).x, spvUnpackHalf2x16(_1085 >> 16u).x, spvUnpackHalf2x16(_1099 >> 16u).x, 0.0f))).xyz);
        float _1125 = _31_m6[_1054].x * 0.5f;
        float _1131 = 1.0f - clamp((max(max(_1118.x, _1118.y), _1118.z) - (_1125 + 0.5f)) / (0.5f - _1125), 0.0f, 1.0f);
        _1133 = _1131 * _1131;
      } else {
        _1133 = 1.0f;
      }
      uint _1137 = uint(_31_m6[_1033].w);
      bool _1140 = _31_m6[_1042].z > 0.5f;
      if ((false || (_1133 < 0.001000000047497451305389404296875f)) || ((_1137 < 4u) && _1140)) {
        _1018 = _993;
        _1021 = _1020;
        continue;
      }
      float _3902;
      float3 _3903;
      do {
        [branch] if (_1137 >= 4u) {
          float3 _2393;
          do {
            float3 _1159 = _31_m6[_1036].xyz - _559;
            if (dot(_31_m6[_1042].xyz, _1159) > 0.0f) {
              _2393 = 0.0f.xxx;
              break;
            }
            float _1166 = dot(_1159, _1159) * _31_m6[_1036].w;
            float _1169 = clamp(1.0f - (_1166 * _1166), 0.0f, 1.0f);
            float _1170 = _1169 * _1169;
            if (_1170 <= 0.0f) {
              _2393 = 0.0f.xxx;
              break;
            }
            float3 _1208;
            float _1209;
            bool _1210;
            float3 _1238;
            float3 _1240;
            float3 _1242;
            float3 _1244;
            float3 _1174 = _31_m6[_1039].xyz * _31_m6[_1039].w;
            float3 _1175 = _31_m6[_1036].xyz - _1174;
            float3 _1176 = _31_m6[_1045].xyz * _31_m6[_1042].w;
            float3 _1179 = _31_m6[_1036].xyz + _1174;
            float2 _1189 = (float2(clamp(_610, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_613, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1193 = _54.SampleLevel(_15, _1189, 0.0f);
            float4 _1197 = _55.SampleLevel(_15, _1189, 0.0f);
            float _1592;
            do {
              _1208 = _585 - (_521 * dot(_585, _521));
              _1209 = dot(_1208, _1208);
              _1210 = _1209 > 9.9999997473787516355514526367188e-05f;
              float3 _1233;
              if (_1210) {
                _1233 = _1208 * rsqrt(_1209);
              } else {
                float _1216 = (_521.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1218 = (-1.0f) / (_1216 + _521.z);
                _1233 = float3(1.0f + (((_1216 * _1218) * _521.x) * _521.x), ((_1216 * _521.x) * _521.y) * _1218, (-_1216) * _521.x);
              }
              float3x3 _1237 = mul(float3x3(float3(_1193.x, 0.0f, _1193.z), float3(0.0f, 1.0f, 0.0f), float3(_1193.y, 0.0f, _1193.w)), float3x3(_1233, cross(_521, _1233), _521));
              _1238 = (_1175 - _1176) - _559;
              float3 _1239 = mul(_1237, _1238);
              _1240 = (_1175 + _1176) - _559;
              float3 _1241 = mul(_1237, _1240);
              _1242 = (_1179 + _1176) - _559;
              float3 _1243 = mul(_1237, _1242);
              _1244 = (_1179 - _1176) - _559;
              float3 _1245 = mul(_1237, _1244);
              float _1246 = _1239.z;
              float _1249 = _1241.z;
              float _1253 = _1243.z;
              float _1257 = _1245.z;
              int _1261 = (((int(_1246 > 0.0f) | ((_1249 > 0.0f) ? 2 : 0)) | ((_1253 > 0.0f) ? 4 : 0)) | ((_1257 > 0.0f) ? 8 : 0));
              float3 _1498;
              float3 _1499;
              float3 _1500;
              float3 _1501;
              float3 _1502;
              int _1503;
              if (_1261 == 0) {
                _1498 = _1245;
                _1499 = _1243;
                _1500 = _1241;
                _1501 = _1239;
                _1502 = 0.0f.xxx;
                _1503 = 0;
              } else {
                float3 _1492;
                float3 _1493;
                float3 _1494;
                float3 _1495;
                float3 _1496;
                int _1497;
                if (_1261 == 1) {
                  _1492 = _1245;
                  _1493 = (_1239 * (-_1257)) + (_1245 * _1246);
                  _1494 = (_1239 * (-_1249)) + (_1241 * _1246);
                  _1495 = _1239;
                  _1496 = 0.0f.xxx;
                  _1497 = 3;
                } else {
                  float3 _1478;
                  float3 _1479;
                  float3 _1480;
                  float3 _1481;
                  float3 _1482;
                  int _1483;
                  if (_1261 == 2) {
                    _1478 = _1245;
                    _1479 = (_1241 * (-_1253)) + (_1243 * _1249);
                    _1480 = _1241;
                    _1481 = (_1241 * (-_1246)) + (_1239 * _1249);
                    _1482 = 0.0f.xxx;
                    _1483 = 3;
                  } else {
                    float3 _1464;
                    float3 _1465;
                    float3 _1466;
                    float3 _1467;
                    float3 _1468;
                    int _1469;
                    if (_1261 == 3) {
                      _1464 = (_1239 * (-_1257)) + (_1245 * _1246);
                      _1465 = (_1241 * (-_1253)) + (_1243 * _1249);
                      _1466 = _1241;
                      _1467 = _1239;
                      _1468 = 0.0f.xxx;
                      _1469 = 4;
                    } else {
                      float3 _1450;
                      float3 _1451;
                      float3 _1452;
                      float3 _1453;
                      float3 _1454;
                      int _1455;
                      if (_1261 == 4) {
                        _1450 = _1245;
                        _1451 = _1243;
                        _1452 = (_1243 * (-_1249)) + (_1241 * _1253);
                        _1453 = (_1243 * (-_1257)) + (_1245 * _1253);
                        _1454 = 0.0f.xxx;
                        _1455 = 3;
                      } else {
                        float3 _1436;
                        float3 _1437;
                        float3 _1438;
                        float3 _1439;
                        float3 _1440;
                        int _1441;
                        if (_1261 == 5) {
                          _1436 = _1245;
                          _1437 = _1243;
                          _1438 = _1241;
                          _1439 = _1239;
                          _1440 = 0.0f.xxx;
                          _1441 = 0;
                        } else {
                          float3 _1430;
                          float3 _1431;
                          float3 _1432;
                          float3 _1433;
                          float3 _1434;
                          int _1435;
                          if (_1261 == 6) {
                            _1430 = (_1243 * (-_1257)) + (_1245 * _1253);
                            _1431 = _1243;
                            _1432 = _1241;
                            _1433 = (_1241 * (-_1246)) + (_1239 * _1249);
                            _1434 = 0.0f.xxx;
                            _1435 = 4;
                          } else {
                            float3 _1416;
                            float3 _1417;
                            float3 _1418;
                            float3 _1419;
                            float3 _1420;
                            int _1421;
                            if (_1261 == 7) {
                              float _1409 = -_1257;
                              _1416 = (_1243 * _1409) + (_1245 * _1253);
                              _1417 = _1243;
                              _1418 = _1241;
                              _1419 = _1239;
                              _1420 = (_1239 * _1409) + (_1245 * _1246);
                              _1421 = 5;
                            } else {
                              float3 _1403;
                              float3 _1404;
                              float3 _1405;
                              float3 _1406;
                              float3 _1407;
                              int _1408;
                              if (_1261 == 8) {
                                _1403 = _1245;
                                _1404 = _1245;
                                _1405 = (_1245 * (-_1253)) + (_1243 * _1257);
                                _1406 = (_1245 * (-_1246)) + (_1239 * _1257);
                                _1407 = 0.0f.xxx;
                                _1408 = 3;
                              } else {
                                float3 _1389;
                                float3 _1390;
                                float3 _1391;
                                float3 _1392;
                                float3 _1393;
                                int _1394;
                                if (_1261 == 9) {
                                  _1389 = _1245;
                                  _1390 = (_1245 * (-_1253)) + (_1243 * _1257);
                                  _1391 = (_1239 * (-_1249)) + (_1241 * _1246);
                                  _1392 = _1239;
                                  _1393 = 0.0f.xxx;
                                  _1394 = 4;
                                } else {
                                  float3 _1375;
                                  float3 _1376;
                                  float3 _1377;
                                  float3 _1378;
                                  float3 _1379;
                                  int _1380;
                                  if (_1261 == 10) {
                                    _1375 = _1245;
                                    _1376 = _1243;
                                    _1377 = _1241;
                                    _1378 = _1239;
                                    _1379 = 0.0f.xxx;
                                    _1380 = 0;
                                  } else {
                                    float3 _1369;
                                    float3 _1370;
                                    float3 _1371;
                                    float3 _1372;
                                    float3 _1373;
                                    int _1374;
                                    if (_1261 == 11) {
                                      float _1362 = -_1253;
                                      _1369 = (_1245 * _1362) + (_1243 * _1257);
                                      _1370 = (_1241 * _1362) + (_1243 * _1249);
                                      _1371 = _1241;
                                      _1372 = _1239;
                                      _1373 = _1245;
                                      _1374 = 5;
                                    } else {
                                      float3 _1356;
                                      float3 _1357;
                                      float3 _1358;
                                      float3 _1359;
                                      float3 _1360;
                                      int _1361;
                                      if (_1261 == 12) {
                                        _1356 = _1245;
                                        _1357 = _1243;
                                        _1358 = (_1243 * (-_1249)) + (_1241 * _1253);
                                        _1359 = (_1245 * (-_1246)) + (_1239 * _1257);
                                        _1360 = 0.0f.xxx;
                                        _1361 = 4;
                                      } else {
                                        bool _1314 = _1261 == 13;
                                        float3 _1341;
                                        float3 _1342;
                                        float3 _1343;
                                        float3 _1344;
                                        int _1345;
                                        if (_1314) {
                                          float _1334 = -_1249;
                                          _1341 = (_1243 * _1334) + (_1241 * _1253);
                                          _1342 = (_1239 * _1334) + (_1241 * _1246);
                                          _1343 = _1239;
                                          _1344 = _1245;
                                          _1345 = 5;
                                        } else {
                                          float3 _1331;
                                          float3 _1332;
                                          int _1333;
                                          if (_1261 == 14) {
                                            float _1324 = -_1246;
                                            _1331 = (_1241 * _1324) + (_1239 * _1249);
                                            _1332 = (_1245 * _1324) + (_1239 * _1257);
                                            _1333 = 5;
                                          } else {
                                            _1331 = _1239;
                                            _1332 = 0.0f.xxx;
                                            _1333 = (_1261 == 15) ? 4 : 0;
                                          }
                                          _1341 = _1243;
                                          _1342 = _1241;
                                          _1343 = _1331;
                                          _1344 = _1332;
                                          _1345 = _1333;
                                        }
                                        bool3 _1346 = _1314.xxx;
                                        _1356 = float3(_1346.x ? _1243.x : _1245.x, _1346.y ? _1243.y : _1245.y, _1346.z ? _1243.z : _1245.z);
                                        _1357 = _1341;
                                        _1358 = _1342;
                                        _1359 = _1343;
                                        _1360 = _1344;
                                        _1361 = _1345;
                                      }
                                      _1369 = _1356;
                                      _1370 = _1357;
                                      _1371 = _1358;
                                      _1372 = _1359;
                                      _1373 = _1360;
                                      _1374 = _1361;
                                    }
                                    _1375 = _1369;
                                    _1376 = _1370;
                                    _1377 = _1371;
                                    _1378 = _1372;
                                    _1379 = _1373;
                                    _1380 = _1374;
                                  }
                                  _1389 = _1375;
                                  _1390 = _1376;
                                  _1391 = _1377;
                                  _1392 = _1378;
                                  _1393 = _1379;
                                  _1394 = _1380;
                                }
                                _1403 = _1389;
                                _1404 = _1390;
                                _1405 = _1391;
                                _1406 = _1392;
                                _1407 = _1393;
                                _1408 = _1394;
                              }
                              _1416 = _1403;
                              _1417 = _1404;
                              _1418 = _1405;
                              _1419 = _1406;
                              _1420 = _1407;
                              _1421 = _1408;
                            }
                            _1430 = _1416;
                            _1431 = _1417;
                            _1432 = _1418;
                            _1433 = _1419;
                            _1434 = _1420;
                            _1435 = _1421;
                          }
                          _1436 = _1430;
                          _1437 = _1431;
                          _1438 = _1432;
                          _1439 = _1433;
                          _1440 = _1434;
                          _1441 = _1435;
                        }
                        _1450 = _1436;
                        _1451 = _1437;
                        _1452 = _1438;
                        _1453 = _1439;
                        _1454 = _1440;
                        _1455 = _1441;
                      }
                      _1464 = _1450;
                      _1465 = _1451;
                      _1466 = _1452;
                      _1467 = _1453;
                      _1468 = _1454;
                      _1469 = _1455;
                    }
                    _1478 = _1464;
                    _1479 = _1465;
                    _1480 = _1466;
                    _1481 = _1467;
                    _1482 = _1468;
                    _1483 = _1469;
                  }
                  _1492 = _1478;
                  _1493 = _1479;
                  _1494 = _1480;
                  _1495 = _1481;
                  _1496 = _1482;
                  _1497 = _1483;
                }
                _1498 = _1492;
                _1499 = _1493;
                _1500 = _1494;
                _1501 = _1495;
                _1502 = _1496;
                _1503 = _1497;
              }
              bool3 _1505 = (_1503 == 3).xxx;
              bool3 _1508 = (_1503 == 4).xxx;
              if (_1503 == 0) {
                _1592 = 0.0f;
                break;
              }
              float3 _1513 = normalize(_1501);
              float3 _1514 = normalize(_1500);
              float3 _1515 = normalize(_1499);
              float3 _1516 = normalize(float3(_1505.x ? _1501.x : _1498.x, _1505.y ? _1501.y : _1498.y, _1505.z ? _1501.z : _1498.z));
              float3 _1517 = normalize(float3(_1508.x ? _1501.x : _1502.x, _1508.y ? _1501.y : _1502.y, _1508.z ? _1501.z : _1502.z));
              float _1519 = clamp(dot(_1513, _1514), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1523 = sqrt(1.0f - (_1519 * _1519));
              float _1531 = clamp(dot(_1514, _1515), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1535 = sqrt(1.0f - (_1531 * _1531));
              float _1544 = clamp(dot(_1515, _1516), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1548 = sqrt(1.0f - (_1544 * _1544));
              float _1555 = ((cross(_1513, _1514).z * ((_1523 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1519) / _1523))) + (cross(_1514, _1515).z * ((_1535 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1531) / _1535)))) + (cross(_1515, _1516).z * ((_1548 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1544) / _1548)));
              float _1572;
              if (_1503 >= 4) {
                float _1560 = clamp(dot(_1516, _1517), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1564 = sqrt(1.0f - (_1560 * _1560));
                _1572 = _1555 + (cross(_1516, _1517).z * ((_1564 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1560) / _1564)));
              } else {
                _1572 = _1555;
              }
              float _1589;
              if (_1503 == 5) {
                float _1577 = clamp(dot(_1517, _1513), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1581 = sqrt(1.0f - (_1577 * _1577));
                _1589 = _1572 + (cross(_1517, _1513).z * ((_1581 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1577) / _1581)));
              } else {
                _1589 = _1572;
              }
              _1592 = max(_1589, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1979;
            do {
              float3 _1625;
              if (_1210) {
                _1625 = _1208 * rsqrt(_1209);
              } else {
                float _1608 = (_521.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1610 = (-1.0f) / (_1608 + _521.z);
                _1625 = float3(1.0f + (((_1608 * _1610) * _521.x) * _521.x), ((_1608 * _521.x) * _521.y) * _1610, (-_1608) * _521.x);
              }
              float3x3 _1628 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1625, cross(_521, _1625), _521));
              float3 _1629 = mul(_1628, _1238);
              float3 _1630 = mul(_1628, _1240);
              float3 _1631 = mul(_1628, _1242);
              float3 _1632 = mul(_1628, _1244);
              float _1633 = _1629.z;
              float _1636 = _1630.z;
              float _1640 = _1631.z;
              float _1644 = _1632.z;
              int _1648 = (((int(_1633 > 0.0f) | ((_1636 > 0.0f) ? 2 : 0)) | ((_1640 > 0.0f) ? 4 : 0)) | ((_1644 > 0.0f) ? 8 : 0));
              float3 _1885;
              float3 _1886;
              float3 _1887;
              float3 _1888;
              float3 _1889;
              int _1890;
              if (_1648 == 0) {
                _1885 = _1632;
                _1886 = _1631;
                _1887 = _1630;
                _1888 = _1629;
                _1889 = 0.0f.xxx;
                _1890 = 0;
              } else {
                float3 _1879;
                float3 _1880;
                float3 _1881;
                float3 _1882;
                float3 _1883;
                int _1884;
                if (_1648 == 1) {
                  _1879 = _1632;
                  _1880 = (_1629 * (-_1644)) + (_1632 * _1633);
                  _1881 = (_1629 * (-_1636)) + (_1630 * _1633);
                  _1882 = _1629;
                  _1883 = 0.0f.xxx;
                  _1884 = 3;
                } else {
                  float3 _1865;
                  float3 _1866;
                  float3 _1867;
                  float3 _1868;
                  float3 _1869;
                  int _1870;
                  if (_1648 == 2) {
                    _1865 = _1632;
                    _1866 = (_1630 * (-_1640)) + (_1631 * _1636);
                    _1867 = _1630;
                    _1868 = (_1630 * (-_1633)) + (_1629 * _1636);
                    _1869 = 0.0f.xxx;
                    _1870 = 3;
                  } else {
                    float3 _1851;
                    float3 _1852;
                    float3 _1853;
                    float3 _1854;
                    float3 _1855;
                    int _1856;
                    if (_1648 == 3) {
                      _1851 = (_1629 * (-_1644)) + (_1632 * _1633);
                      _1852 = (_1630 * (-_1640)) + (_1631 * _1636);
                      _1853 = _1630;
                      _1854 = _1629;
                      _1855 = 0.0f.xxx;
                      _1856 = 4;
                    } else {
                      float3 _1837;
                      float3 _1838;
                      float3 _1839;
                      float3 _1840;
                      float3 _1841;
                      int _1842;
                      if (_1648 == 4) {
                        _1837 = _1632;
                        _1838 = _1631;
                        _1839 = (_1631 * (-_1636)) + (_1630 * _1640);
                        _1840 = (_1631 * (-_1644)) + (_1632 * _1640);
                        _1841 = 0.0f.xxx;
                        _1842 = 3;
                      } else {
                        float3 _1823;
                        float3 _1824;
                        float3 _1825;
                        float3 _1826;
                        float3 _1827;
                        int _1828;
                        if (_1648 == 5) {
                          _1823 = _1632;
                          _1824 = _1631;
                          _1825 = _1630;
                          _1826 = _1629;
                          _1827 = 0.0f.xxx;
                          _1828 = 0;
                        } else {
                          float3 _1817;
                          float3 _1818;
                          float3 _1819;
                          float3 _1820;
                          float3 _1821;
                          int _1822;
                          if (_1648 == 6) {
                            _1817 = (_1631 * (-_1644)) + (_1632 * _1640);
                            _1818 = _1631;
                            _1819 = _1630;
                            _1820 = (_1630 * (-_1633)) + (_1629 * _1636);
                            _1821 = 0.0f.xxx;
                            _1822 = 4;
                          } else {
                            float3 _1803;
                            float3 _1804;
                            float3 _1805;
                            float3 _1806;
                            float3 _1807;
                            int _1808;
                            if (_1648 == 7) {
                              float _1796 = -_1644;
                              _1803 = (_1631 * _1796) + (_1632 * _1640);
                              _1804 = _1631;
                              _1805 = _1630;
                              _1806 = _1629;
                              _1807 = (_1629 * _1796) + (_1632 * _1633);
                              _1808 = 5;
                            } else {
                              float3 _1790;
                              float3 _1791;
                              float3 _1792;
                              float3 _1793;
                              float3 _1794;
                              int _1795;
                              if (_1648 == 8) {
                                _1790 = _1632;
                                _1791 = _1632;
                                _1792 = (_1632 * (-_1640)) + (_1631 * _1644);
                                _1793 = (_1632 * (-_1633)) + (_1629 * _1644);
                                _1794 = 0.0f.xxx;
                                _1795 = 3;
                              } else {
                                float3 _1776;
                                float3 _1777;
                                float3 _1778;
                                float3 _1779;
                                float3 _1780;
                                int _1781;
                                if (_1648 == 9) {
                                  _1776 = _1632;
                                  _1777 = (_1632 * (-_1640)) + (_1631 * _1644);
                                  _1778 = (_1629 * (-_1636)) + (_1630 * _1633);
                                  _1779 = _1629;
                                  _1780 = 0.0f.xxx;
                                  _1781 = 4;
                                } else {
                                  float3 _1762;
                                  float3 _1763;
                                  float3 _1764;
                                  float3 _1765;
                                  float3 _1766;
                                  int _1767;
                                  if (_1648 == 10) {
                                    _1762 = _1632;
                                    _1763 = _1631;
                                    _1764 = _1630;
                                    _1765 = _1629;
                                    _1766 = 0.0f.xxx;
                                    _1767 = 0;
                                  } else {
                                    float3 _1756;
                                    float3 _1757;
                                    float3 _1758;
                                    float3 _1759;
                                    float3 _1760;
                                    int _1761;
                                    if (_1648 == 11) {
                                      float _1749 = -_1640;
                                      _1756 = (_1632 * _1749) + (_1631 * _1644);
                                      _1757 = (_1630 * _1749) + (_1631 * _1636);
                                      _1758 = _1630;
                                      _1759 = _1629;
                                      _1760 = _1632;
                                      _1761 = 5;
                                    } else {
                                      float3 _1743;
                                      float3 _1744;
                                      float3 _1745;
                                      float3 _1746;
                                      float3 _1747;
                                      int _1748;
                                      if (_1648 == 12) {
                                        _1743 = _1632;
                                        _1744 = _1631;
                                        _1745 = (_1631 * (-_1636)) + (_1630 * _1640);
                                        _1746 = (_1632 * (-_1633)) + (_1629 * _1644);
                                        _1747 = 0.0f.xxx;
                                        _1748 = 4;
                                      } else {
                                        bool _1701 = _1648 == 13;
                                        float3 _1728;
                                        float3 _1729;
                                        float3 _1730;
                                        float3 _1731;
                                        int _1732;
                                        if (_1701) {
                                          float _1721 = -_1636;
                                          _1728 = (_1631 * _1721) + (_1630 * _1640);
                                          _1729 = (_1629 * _1721) + (_1630 * _1633);
                                          _1730 = _1629;
                                          _1731 = _1632;
                                          _1732 = 5;
                                        } else {
                                          float3 _1718;
                                          float3 _1719;
                                          int _1720;
                                          if (_1648 == 14) {
                                            float _1711 = -_1633;
                                            _1718 = (_1630 * _1711) + (_1629 * _1636);
                                            _1719 = (_1632 * _1711) + (_1629 * _1644);
                                            _1720 = 5;
                                          } else {
                                            _1718 = _1629;
                                            _1719 = 0.0f.xxx;
                                            _1720 = (_1648 == 15) ? 4 : 0;
                                          }
                                          _1728 = _1631;
                                          _1729 = _1630;
                                          _1730 = _1718;
                                          _1731 = _1719;
                                          _1732 = _1720;
                                        }
                                        bool3 _1733 = _1701.xxx;
                                        _1743 = float3(_1733.x ? _1631.x : _1632.x, _1733.y ? _1631.y : _1632.y, _1733.z ? _1631.z : _1632.z);
                                        _1744 = _1728;
                                        _1745 = _1729;
                                        _1746 = _1730;
                                        _1747 = _1731;
                                        _1748 = _1732;
                                      }
                                      _1756 = _1743;
                                      _1757 = _1744;
                                      _1758 = _1745;
                                      _1759 = _1746;
                                      _1760 = _1747;
                                      _1761 = _1748;
                                    }
                                    _1762 = _1756;
                                    _1763 = _1757;
                                    _1764 = _1758;
                                    _1765 = _1759;
                                    _1766 = _1760;
                                    _1767 = _1761;
                                  }
                                  _1776 = _1762;
                                  _1777 = _1763;
                                  _1778 = _1764;
                                  _1779 = _1765;
                                  _1780 = _1766;
                                  _1781 = _1767;
                                }
                                _1790 = _1776;
                                _1791 = _1777;
                                _1792 = _1778;
                                _1793 = _1779;
                                _1794 = _1780;
                                _1795 = _1781;
                              }
                              _1803 = _1790;
                              _1804 = _1791;
                              _1805 = _1792;
                              _1806 = _1793;
                              _1807 = _1794;
                              _1808 = _1795;
                            }
                            _1817 = _1803;
                            _1818 = _1804;
                            _1819 = _1805;
                            _1820 = _1806;
                            _1821 = _1807;
                            _1822 = _1808;
                          }
                          _1823 = _1817;
                          _1824 = _1818;
                          _1825 = _1819;
                          _1826 = _1820;
                          _1827 = _1821;
                          _1828 = _1822;
                        }
                        _1837 = _1823;
                        _1838 = _1824;
                        _1839 = _1825;
                        _1840 = _1826;
                        _1841 = _1827;
                        _1842 = _1828;
                      }
                      _1851 = _1837;
                      _1852 = _1838;
                      _1853 = _1839;
                      _1854 = _1840;
                      _1855 = _1841;
                      _1856 = _1842;
                    }
                    _1865 = _1851;
                    _1866 = _1852;
                    _1867 = _1853;
                    _1868 = _1854;
                    _1869 = _1855;
                    _1870 = _1856;
                  }
                  _1879 = _1865;
                  _1880 = _1866;
                  _1881 = _1867;
                  _1882 = _1868;
                  _1883 = _1869;
                  _1884 = _1870;
                }
                _1885 = _1879;
                _1886 = _1880;
                _1887 = _1881;
                _1888 = _1882;
                _1889 = _1883;
                _1890 = _1884;
              }
              bool3 _1892 = (_1890 == 3).xxx;
              bool3 _1895 = (_1890 == 4).xxx;
              if (_1890 == 0) {
                _1979 = 0.0f;
                break;
              }
              float3 _1900 = normalize(_1888);
              float3 _1901 = normalize(_1887);
              float3 _1902 = normalize(_1886);
              float3 _1903 = normalize(float3(_1892.x ? _1888.x : _1885.x, _1892.y ? _1888.y : _1885.y, _1892.z ? _1888.z : _1885.z));
              float3 _1904 = normalize(float3(_1895.x ? _1888.x : _1889.x, _1895.y ? _1888.y : _1889.y, _1895.z ? _1888.z : _1889.z));
              float _1906 = clamp(dot(_1900, _1901), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1910 = sqrt(1.0f - (_1906 * _1906));
              float _1918 = clamp(dot(_1901, _1902), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1922 = sqrt(1.0f - (_1918 * _1918));
              float _1931 = clamp(dot(_1902, _1903), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1935 = sqrt(1.0f - (_1931 * _1931));
              float _1942 = ((cross(_1900, _1901).z * ((_1910 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1906) / _1910))) + (cross(_1901, _1902).z * ((_1922 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1918) / _1922)))) + (cross(_1902, _1903).z * ((_1935 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1931) / _1935)));
              float _1959;
              if (_1890 >= 4) {
                float _1947 = clamp(dot(_1903, _1904), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1951 = sqrt(1.0f - (_1947 * _1947));
                _1959 = _1942 + (cross(_1903, _1904).z * ((_1951 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1947) / _1951)));
              } else {
                _1959 = _1942;
              }
              float _1976;
              if (_1890 == 5) {
                float _1964 = clamp(dot(_1904, _1900), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1968 = sqrt(1.0f - (_1964 * _1964));
                _1976 = _1959 + (cross(_1904, _1900).z * ((_1968 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1964) / _1968)));
              } else {
                _1976 = _1959;
              }
              _1979 = max(_1976, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1982 = (_1058 & 2u) != 0u;
            uint _1986 = asuint(_31_m6[_1045].w);
            uint _1987 = asuint(_31_m6[_1051].w);
            float3 _1988 = _559 - _31_m6[_1036].xyz;
            float3 _1989 = abs(_1988);
            float _1990 = _1989.x;
            float _1991 = _1989.y;
            float _1993 = _1989.z;
            int _2026;
            if ((_1990 > _1991) && (_1990 > _1993)) {
              _2026 = int((_1988.x > 0.0f) ? (_1986 & 1023u) : ((_1986 >> 10u) & 1023u));
            } else {
              int _2018;
              if (_1991 > _1993) {
                _2018 = int((_1988.y > 0.0f) ? ((_1986 >> 20u) & 1023u) : (_1987 & 1023u));
              } else {
                _2018 = int((_1988.z > 0.0f) ? ((_1987 >> 10u) & 1023u) : ((_1987 >> 20u) & 1023u));
              }
              _2026 = _2018;
            }
            int _2029 = _1982 ? int(_31_m6[_1045].w) : ((_2026 == 1023) ? (-1) : _2026);
            uint _2038 = uint(_2029);
            uint _2040 = asuint(_35_m11.x) + (_2038 * 96u);
            uint _2042 = (_2040 + 64u) >> 2u;
            uint _2045 = _2042 + 1u;
            uint _2048 = _2042 + 2u;
            uint _2051 = _2042 + 3u;
            float4 _2055 = asfloat(uint4(_38.Load(_2042 * 4 + 0), _38.Load(_2045 * 4 + 0), _38.Load(_2048 * 4 + 0), _38.Load(_2051 * 4 + 0)));
            float _2387;
            do {
              uint _2071 = ((asuint(_35_m11.y) + (_2038 * 16u)) >> 2u) + 1u;
              if (_38.Load(_2071 * 4 + 0) > 0u) {
                float4 _394 = _987;
                float _2086;
                do {
                  if (_38.Load(_2071 * 4 + 0) == 0u) {
                    _2086 = 1.0f;
                    break;
                  }
                  _2086 = _394[_38.Load(_2071 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2387 = _2086;
                break;
              }
              uint _2087 = _2040 >> 2u;
              uint _2102 = (_2040 + 16u) >> 2u;
              uint _2117 = (_2040 + 32u) >> 2u;
              uint _2132 = (_2040 + 48u) >> 2u;
              float4 _2152 = mul(transpose(float4x4(asfloat(uint4(_38.Load(_2087 * 4 + 0), _38.Load((_2087 + 1u) * 4 + 0), _38.Load((_2087 + 2u) * 4 + 0), _38.Load((_2087 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2102 * 4 + 0), _38.Load((_2102 + 1u) * 4 + 0), _38.Load((_2102 + 2u) * 4 + 0), _38.Load((_2102 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2117 * 4 + 0), _38.Load((_2117 + 1u) * 4 + 0), _38.Load((_2117 + 2u) * 4 + 0), _38.Load((_2117 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2132 * 4 + 0), _38.Load((_2132 + 1u) * 4 + 0), _38.Load((_2132 + 2u) * 4 + 0), _38.Load((_2132 + 3u) * 4 + 0))))), float4((_559 - ((_1988 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1988, _1988)))) * _2055.x)) + (_521 * (_2055.y * 5.0f)), 1.0f));
              float3 _2156 = _2152.xyz / _2152.w.xxx;
              uint _2158 = (_2040 + 80u) >> 2u;
              float4 _2171 = asfloat(uint4(_38.Load(_2158 * 4 + 0), _38.Load((_2158 + 1u) * 4 + 0), _38.Load((_2158 + 2u) * 4 + 0), _38.Load((_2158 + 3u) * 4 + 0)));
              float2 _2172 = _2156.xy;
              float2 _2174 = _2171.xy;
              float3 _2178 = _2156.xyz;
              bool3 _2179 = bool3(_2178.x <= 0.0f.xxx.x, _2178.y <= 0.0f.xxx.y, _2178.z <= 0.0f.xxx.z);
              bool3 _2180 = bool3(_2178.x >= 1.0f.xxx.x, _2178.y >= 1.0f.xxx.y, _2178.z >= 1.0f.xxx.z);
              float _2183 = _2156.z;
              float2 _2194 = ((_2172 * (_2171.zw - _2174)) + _2174).xy * _35_m10.zw;
              float2 _2196 = floor(_2194 + 0.5f.xx);
              float2 _2197 = _2194 - _2196;
              float _2198 = _2197.x;
              float _2199 = _2198 + 0.5f;
              float _2200 = _2199 * _2199;
              float _2203 = 1.0f - _2198;
              float _2204 = min(_2198, 0.0f);
              float _2207 = _2198 + 1.0f;
              float _2208 = max(_2198, 0.0f);
              float _2219 = _2197.y;
              float _2220 = _2219 + 0.5f;
              float _2221 = _2220 * _2220;
              float _2224 = 1.0f - _2219;
              float _2225 = min(_2219, 0.0f);
              float _2228 = _2219 + 1.0f;
              float _2229 = max(_2219, 0.0f);
              float3 _2241 = float3(0.1599999964237213134765625f * _2203, 0.1599999964237213134765625f * ((_2207 - (_2208 * _2208)) + 1.0f), _2200 * 0.07999999821186065673828125f);
              float3 _2242 = float3(0.1599999964237213134765625f * ((_2200 * 0.5f) - _2198), 0.1599999964237213134765625f * ((_2203 - (_2204 * _2204)) + 1.0f), 0.1599999964237213134765625f * _2207) + _2241;
              float3 _2244 = float3(0.1599999964237213134765625f * _2224, 0.1599999964237213134765625f * ((_2228 - (_2229 * _2229)) + 1.0f), _2221 * 0.07999999821186065673828125f);
              float3 _2245 = float3(0.1599999964237213134765625f * ((_2221 * 0.5f) - _2219), 0.1599999964237213134765625f * ((_2224 - (_2225 * _2225)) + 1.0f), 0.1599999964237213134765625f * _2228) + _2244;
              float3 _2251 = ((_2241 / _2242) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.xxx;
              float3 _2253 = ((_2244 / _2245) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.yyy;
              float2 _2255 = _2196 * _35_m10.xy;
              float _2256 = _2251.x;
              float _2257 = _2253.x;
              float _2260 = _2251.y;
              float _2263 = _2251.z;
              float _2266 = _2253.y;
              float _2273 = _2253.z;
              float _2280 = _2242.x;
              float _2281 = _2245.x;
              float _2283 = _2242.y;
              float _2285 = _2242.z;
              float _2287 = _2245.y;
              float _2291 = _2245.z;
              float _2349 = (((((((_2280 * _2281) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2256, _2257), _381).xy, _2183)) + ((_2283 * _2281) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2260, _2257), _381).xy, _2183))) + ((_2285 * _2281) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2263, _2257), _381).xy, _2183))) + ((_2280 * _2287) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2256, _2266), _381).xy, _2183))) + ((_2283 * _2287) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2260, _2266), _381).xy, _2183))) + ((_2285 * _2287) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2263, _2266), _381).xy, _2183))) + ((_2280 * _2291) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2256, _2273), _381).xy, _2183));
              float4 _2372 = asfloat(uint4(_38.Load(_2042 * 4 + 0), _38.Load(_2045 * 4 + 0), _38.Load(_2048 * 4 + 0), _38.Load(_2051 * 4 + 0)));
              float _2373 = _2372.w;
              float2 _2375 = min(_2172, 1.0f.xx - _2172);
              _2387 = lerp(1.0f, (any(bool3(_2179.x || _2180.x, _2179.y || _2180.y, _2179.z || _2180.z)) || ((asuint(_2183) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2349 + ((_2283 * _2291) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2260, _2273), _381).xy, _2183))) + ((_2285 * _2291) * _36.SampleCmpLevelZero(_18, float3(_2255 + float2(_2263, _2273), _381).xy, _2183))), _1982 ? min(_2373, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2372.z - _2152.w) * 0.25f, min(_2375.x, _2375.y)))) : _2373);
              break;
            } while (false);
            _2393 = ((_31_m6[_1033].xyz * (((((0.039999999105930328369140625f.xxx * _1197.x) + (0.959999978542327880859375f.xxx * _1197.y)) * _1592) * _31_m6[_1054].z) + (_612 * _1979))) * _1170) * ((_2029 >= 0) ? _2387 : 1.0f);
            break;
          } while (false);
          _3902 = _993;
          _3903 = _2393 * _1133;
          break;
        }
        float _3900;
        float3 _3901;
        if (_31_m6[_1033].w < 1.5f) {
          float3 _2998 = float3(0.100000001490116119384765625f, _610, 1.0f);
          float _3007 = (0.5f + (0.5f * _31_m6[_1039].y)) - abs(_31_m6[_1039].x);
          float _3008 = _31_m6[_1039].y - _3007;
          float _3015 = abs(max((1.0f - abs(_3007)) - abs(_3008), 0.00048828125f));
          float3 _3019 = normalize(float3(_3007, _3008, (_31_m6[_1039].x >= 0.0f) ? _3015 : (-_3015)));
          float3 _3020 = _31_m6[_1036].xyz - _559;
          float _3021 = dot(_3020, _3020);
          float _3022 = rsqrt(_3021);
          float3 _3023 = _3020 * _3022;
          float _3027 = clamp(_31_m6[_1054].y * _3022, 0.0f, 1.0f);
          int _3032 = int(_31_m6[_1054].w);
          float3 _3033 = _3019 * _31_m6[_1039].z;
          float3 _3034 = _3033 * 0.5f;
          float3 _3035 = _3020 - _3034;
          float3 _3036 = _3020 + _3034;
          bool _3038 = (_1137 & 1u) == 0u;
          bool _3041 = _3038 || ((_1058 & 2u) != 0u);
          bool _3044 = (!_3038) && (_31_m6[_1039].z > 0.0f);
          float _3063;
          float _3064;
          if (_3044) {
            float _3048 = length(_3035);
            float _3049 = length(_3036);
            _3063 = clamp(0.5f * ((dot(_521, _3035) / _3048) + (dot(_521, _3036) / _3049)), 0.0f, 1.0f);
            _3064 = 1.0f / ((((_3048 * _3049) + dot(_3035, _3036)) * 0.5f) + 1.0f);
          } else {
            _3063 = clamp(dot(_521, _3023), 0.0f, 1.0f);
            _3064 = 1.0f;
          }
          float _3086;
          if (_31_m6[_1051].w < 0.0f) {
            float _3080 = _3021 * (_31_m6[_1036].w * _31_m6[_1036].w);
            float _3083 = clamp(1.0f - (_3080 * _3080), 0.0f, 1.0f);
            _3086 = lerp(1.0f / (_3021 + 1.0f), _3064, float(_3044)) * (_3083 * _3083);
          } else {
            float3 _3069 = _3020 * _31_m6[_1036].w;
            _3086 = _3064 * pow(1.0f - clamp(dot(_3069, _3069), 0.0f, 1.0f), _31_m6[_1051].w);
          }
          float _3092 = clamp((dot(_3023, -_3019) - _31_m6[_1039].z) * _31_m6[_1039].w, 0.0f, 1.0f);
          float _3096 = _3086 * lerp(1.0f, _3092 * _3092, float(_3038));
          float _3196;
          if ((!_3044) && (_3032 >= 0)) {
            uint _3102 = uint(_3032);
            float2 _3189;
            [branch] if (_3038) {
              float4 _3179 = mul(_51_m1[_3102], _563);
              _3189 = _51_m0[_3102].xy + (clamp(_3179.xy / _3179.w.xx, 0.0f.xx, 1.0f.xx) * _51_m0[_3102].zw);
            }
            else {
              float3 _3116 = mul(float4(-_3020, 0.0f), _51_m1[_3102]).xyz;
              float3 _389 = _3116;
              float3 _388 = _3116;
              float3 _387 = abs(_3116);
              uint _3125 = uint(int(_387.y > _387.x));
              uint _3131 = (_387.z > _387[_3125]) ? 2u : _3125;
              uint _3137 = (_3131 * 2u) + uint(_388[_3131] < 0.0f);
              float _3141 = abs(_389[_3137 / 2u]);
              float _3161 = 0.5f - (0.000244140625f / _51_m0[_3102].w);
              _3189 = _51_m0[_3102].xy + (clamp(float2((float(_3137) + ((((_389[uint(_350[_3137].x)] * _351[_3137].x) / _3141) * _3161) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_350[_3137].y)] * _351[_3137].y) / _3141) * _3161)), 0.0f.xx, 1.0f.xx) * _51_m0[_3102].zw);
            }
            _3196 = _3096 * _49.SampleLevel(_15, _3189, 0.0f).x;
          } else {
            _3196 = _3096;
          }
          bool _3197 = _3196 > 0.0f;
          float _3606;
          if (_3197) {
            int _3250;
            if (_3041) {
              _3250 = int(_31_m6[_1042].x);
            } else {
              uint _3205 = asuint(_31_m6[_1039].w);
              uint _3206 = asuint(_31_m6[_1042].x);
              float3 _3207 = _559 - _31_m6[_1036].xyz;
              float3 _3208 = abs(_3207);
              float _3209 = _3208.x;
              float _3210 = _3208.y;
              float _3212 = _3208.z;
              int _3245;
              if ((_3209 > _3210) && (_3209 > _3212)) {
                _3245 = int((_3207.x > 0.0f) ? (_3205 & 1023u) : ((_3205 >> 10u) & 1023u));
              } else {
                int _3237;
                if (_3210 > _3212) {
                  _3237 = int((_3207.y > 0.0f) ? ((_3205 >> 20u) & 1023u) : (_3206 & 1023u));
                } else {
                  _3237 = int((_3207.z > 0.0f) ? ((_3206 >> 10u) & 1023u) : ((_3206 >> 20u) & 1023u));
                }
                _3245 = _3237;
              }
              _3250 = (_3245 == 1023) ? (-1) : _3245;
            }
            uint _3255 = uint(_3250);
            uint _3257 = asuint(_35_m11.x) + (_3255 * 96u);
            uint _3259 = (_3257 + 64u) >> 2u;
            uint _3262 = _3259 + 1u;
            uint _3265 = _3259 + 2u;
            uint _3268 = _3259 + 3u;
            float4 _3272 = asfloat(uint4(_38.Load(_3259 * 4 + 0), _38.Load(_3262 * 4 + 0), _38.Load(_3265 * 4 + 0), _38.Load(_3268 * 4 + 0)));
            float _3604;
            do {
              uint _3288 = ((asuint(_35_m11.y) + (_3255 * 16u)) >> 2u) + 1u;
              if (_38.Load(_3288 * 4 + 0) > 0u) {
                float4 _386 = _987;
                float _3303;
                do {
                  if (_38.Load(_3288 * 4 + 0) == 0u) {
                    _3303 = 1.0f;
                    break;
                  }
                  _3303 = _386[_38.Load(_3288 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3604 = _3303;
                break;
              }
              uint _3304 = _3257 >> 2u;
              uint _3319 = (_3257 + 16u) >> 2u;
              uint _3334 = (_3257 + 32u) >> 2u;
              uint _3349 = (_3257 + 48u) >> 2u;
              float4 _3369 = mul(transpose(float4x4(asfloat(uint4(_38.Load(_3304 * 4 + 0), _38.Load((_3304 + 1u) * 4 + 0), _38.Load((_3304 + 2u) * 4 + 0), _38.Load((_3304 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_3319 * 4 + 0), _38.Load((_3319 + 1u) * 4 + 0), _38.Load((_3319 + 2u) * 4 + 0), _38.Load((_3319 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_3334 * 4 + 0), _38.Load((_3334 + 1u) * 4 + 0), _38.Load((_3334 + 2u) * 4 + 0), _38.Load((_3334 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_3349 * 4 + 0), _38.Load((_3349 + 1u) * 4 + 0), _38.Load((_3349 + 2u) * 4 + 0), _38.Load((_3349 + 3u) * 4 + 0))))), float4((_559 - ((-_3023) * _3272.x)) + (_521 * (_3272.y * 5.0f)), 1.0f));
              float3 _3373 = _3369.xyz / _3369.w.xxx;
              uint _3375 = (_3257 + 80u) >> 2u;
              float4 _3388 = asfloat(uint4(_38.Load(_3375 * 4 + 0), _38.Load((_3375 + 1u) * 4 + 0), _38.Load((_3375 + 2u) * 4 + 0), _38.Load((_3375 + 3u) * 4 + 0)));
              float2 _3389 = _3373.xy;
              float2 _3391 = _3388.xy;
              float3 _3395 = _3373.xyz;
              bool3 _3396 = bool3(_3395.x <= 0.0f.xxx.x, _3395.y <= 0.0f.xxx.y, _3395.z <= 0.0f.xxx.z);
              bool3 _3397 = bool3(_3395.x >= 1.0f.xxx.x, _3395.y >= 1.0f.xxx.y, _3395.z >= 1.0f.xxx.z);
              float _3400 = _3373.z;
              float2 _3411 = ((_3389 * (_3388.zw - _3391)) + _3391).xy * _35_m10.zw;
              float2 _3413 = floor(_3411 + 0.5f.xx);
              float2 _3414 = _3411 - _3413;
              float _3415 = _3414.x;
              float _3416 = _3415 + 0.5f;
              float _3417 = _3416 * _3416;
              float _3420 = 1.0f - _3415;
              float _3421 = min(_3415, 0.0f);
              float _3424 = _3415 + 1.0f;
              float _3425 = max(_3415, 0.0f);
              float _3436 = _3414.y;
              float _3437 = _3436 + 0.5f;
              float _3438 = _3437 * _3437;
              float _3441 = 1.0f - _3436;
              float _3442 = min(_3436, 0.0f);
              float _3445 = _3436 + 1.0f;
              float _3446 = max(_3436, 0.0f);
              float3 _3458 = float3(0.1599999964237213134765625f * _3420, 0.1599999964237213134765625f * ((_3424 - (_3425 * _3425)) + 1.0f), _3417 * 0.07999999821186065673828125f);
              float3 _3459 = float3(0.1599999964237213134765625f * ((_3417 * 0.5f) - _3415), 0.1599999964237213134765625f * ((_3420 - (_3421 * _3421)) + 1.0f), 0.1599999964237213134765625f * _3424) + _3458;
              float3 _3461 = float3(0.1599999964237213134765625f * _3441, 0.1599999964237213134765625f * ((_3445 - (_3446 * _3446)) + 1.0f), _3438 * 0.07999999821186065673828125f);
              float3 _3462 = float3(0.1599999964237213134765625f * ((_3438 * 0.5f) - _3436), 0.1599999964237213134765625f * ((_3441 - (_3442 * _3442)) + 1.0f), 0.1599999964237213134765625f * _3445) + _3461;
              float3 _3468 = ((_3458 / _3459) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.xxx;
              float3 _3470 = ((_3461 / _3462) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.yyy;
              float2 _3472 = _3413 * _35_m10.xy;
              float _3473 = _3468.x;
              float _3474 = _3470.x;
              float _3477 = _3468.y;
              float _3480 = _3468.z;
              float _3483 = _3470.y;
              float _3490 = _3470.z;
              float _3497 = _3459.x;
              float _3498 = _3462.x;
              float _3500 = _3459.y;
              float _3502 = _3459.z;
              float _3504 = _3462.y;
              float _3508 = _3462.z;
              float _3566 = (((((((_3497 * _3498) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3473, _3474), _381).xy, _3400)) + ((_3500 * _3498) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3477, _3474), _381).xy, _3400))) + ((_3502 * _3498) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3480, _3474), _381).xy, _3400))) + ((_3497 * _3504) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3473, _3483), _381).xy, _3400))) + ((_3500 * _3504) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3477, _3483), _381).xy, _3400))) + ((_3502 * _3504) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3480, _3483), _381).xy, _3400))) + ((_3497 * _3508) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3473, _3490), _381).xy, _3400));
              float4 _3589 = asfloat(uint4(_38.Load(_3259 * 4 + 0), _38.Load(_3262 * 4 + 0), _38.Load(_3265 * 4 + 0), _38.Load(_3268 * 4 + 0)));
              float _3590 = _3589.w;
              float2 _3592 = min(_3389, 1.0f.xx - _3389);
              _3604 = lerp(1.0f, (any(bool3(_3396.x || _3397.x, _3396.y || _3397.y, _3396.z || _3397.z)) || ((asuint(_3400) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3566 + ((_3500 * _3508) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3477, _3490), _381).xy, _3400))) + ((_3502 * _3508) * _36.SampleCmpLevelZero(_18, float3(_3472 + float2(_3480, _3490), _381).xy, _3400))), _3041 ? min(_3590, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3589.z - _3369.w) * 0.25f, min(_3592.x, _3592.y)))) : _3590);
              break;
            } while (false);
            _3606 = (_3250 >= 0) ? _3604 : 1.0f;
          } else {
            _3606 = 1.0f;
          }
          float3 _3630;
          float3 _3631;
          if (_3044) {
            float3 _3609 = _2998 * _2998;
            float3 _3610 = reflect(_587, _521);
            float _3619 = dot(_3610, _3033);
            _3630 = _3609 / clamp(_3609 + (0.5f * clamp(_31_m6[_1039].z * _3022, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3631 = normalize(_3035 + (_3033 * clamp(dot(_3035, (_3610 * _3619) - _3033) / ((_31_m6[_1039].z * _31_m6[_1039].z) - (_3619 * _3619)), 0.0f, 1.0f)));
          } else {
            _3630 = 1.0f.xxx;
            _3631 = _3023;
          }
          float3 _3632 = _3631 + _585;
          float3 _3636 = _3632 * rsqrt(max(6.103515625e-05f, dot(_3632, _3632)));
          float3 _3899;
          if (_3197) {
            float _3640 = clamp(_3063, 0.0f, 1.0f);
            float _3642 = clamp(dot(_521, _3636), 0.0f, 1.0f);
            float _3644 = clamp(dot(_585, _3636), 0.0f, 1.0f);
            float _3646 = clamp(_613, 0.0f, 1.0f);
            float3 _3844;
            float3 _3845;
            [branch] if (_531) {
              float _3762 = _610 * _610;
              float _3772;
              if (_3027 > 0.0f) {
                _3772 = clamp(_3762 + ((_3027 * _3027) / ((_3644 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3772 = _3762;
              }
              float _3773 = _3772 * _3772;
              float _3794 = (((_3642 * _3773) - _3642) * _3642) + 1.0f;
              float _3799 = 1.0f - _3644;
              float _3800 = _3799 * _3799;
              float _3802 = (_3799 * _3800) * _3800;
              float _3826 = 1.0f - _610;
              float _3833 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3826 * (1.04997003078460693359375f + (_3826 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3826))))));
              float _3834 = 1.0f - _3833;
              _3844 = 0.0f.xxx;
              _3845 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3802)) + _3802.xxx) * (((_3773 / (_3794 * _3794)) * _3630.y) * (0.5f / (((_3640 * sqrt(((((-_3646) * _3773) + _3646) * _3646) + _3773)) + (_3646 * sqrt(((((-_3640) * _3773) + _3640) * _3640) + _3773))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_3646, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_3640, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3833) / _3834)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _3834)));
            }
            else {
              float _3650 = _610 * _610;
              float _3660;
              if (_3027 > 0.0f) {
                _3660 = clamp(_3650 + ((_3027 * _3027) / ((_3644 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3660 = _3650;
              }
              float _3661 = _3660 * _3660;
              float _3682 = (((_3642 * _3661) - _3642) * _3642) + 1.0f;
              float _3687 = 1.0f - _3644;
              float _3688 = _3687 * _3687;
              float _3690 = (_3687 * _3688) * _3688;
              float _3714 = 1.0f - _610;
              float _3721 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3714 * (1.04997003078460693359375f + (_3714 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3714))))));
              float _3722 = 1.0f - _3721;
              float _3745 = clamp(1.0f - _526, 0.0f, 1.0f);
              float _3753 = clamp((dot(_521, _3631) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
              _3844 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_524, _525, _526).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _525.xxx) * _526) * lerp((_523 * lerp(1.0f, (_3753 * sqrt(_3753)) * 1.66666662693023681640625f, _3745)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_585, _3631), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3745));
              _3845 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3690)) + _3690.xxx) * (((_3661 / (_3682 * _3682)) * _3630.y) * (0.5f / (((_3640 * sqrt(((((-_3646) * _3661) + _3646) * _3646) + _3661)) + (_3646 * sqrt(((((-_3640) * _3661) + _3640) * _3640) + _3661))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_3646, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_3640, _610) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3721) / _3722)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _3722)));
            }
            float3 _3847 = _612 * _3630.z;
            float3 _3852 = ((_31_m6[_1033].xyz * _3196) * _3606) * _1133;
            float3 _3853 = clamp(_3845 * _31_m6[_1054].z, 0.0f.xxx, 1000.0f.xxx) * _3063;
            float3 _3898;
            [branch] if (_531) {
              float3 _3893;
              do {
                [branch] if (((_529 > 0u) && (_529 <= 15u)) && (_530 > 0.0f)) {
                  int _3872 = int(clamp(_529 - 1u, 0u, 14u));
                  _3893 = _44.SampleLevel(_15, float3((dot(normalize(lerp(_521, _528, dot(_47_m0[_3872].xyz, 0.3333333432674407958984375f.xxx).xxx)), _3631) * 0.5f) + 0.5f, _530 * _47_m0[_3872].w, float(_3872)), 0.0f).xyz;
                  break;
                }
                _3893 = _3063.xxx;
                break;
              } while (false);
              _3898 = _3852 * (((_3847 * _3893) + _3853) + _3844);
            }
            else {
              _3898 = ((_3853 + _3844) + (_3847 * _3063)) * _3852;
            }
            _3899 = _3898;
          } else {
            _3899 = 0.0f.xxx;
          }
          _3900 = _993;
          _3901 = _3899;
        } else {
          float _2996;
          do {
            if (_1140) {
              _2996 = 1.0f;
              break;
            }
            float _2410 = (0.5f + (0.5f * _31_m6[_1039].y)) - abs(_31_m6[_1039].x);
            float _2411 = _31_m6[_1039].y - _2410;
            float _2418 = abs(max((1.0f - abs(_2410)) - abs(_2411), 0.00048828125f));
            float3 _2422 = normalize(float3(_2410, _2411, (_31_m6[_1039].x >= 0.0f) ? _2418 : (-_2418)));
            float3 _2423 = _31_m6[_1036].xyz - _559;
            float _2424 = dot(_2423, _2423);
            float3 _2426 = _2423 * rsqrt(_2424);
            int _2429 = int(_31_m6[_1054].w);
            float3 _2431 = (_2422 * _31_m6[_1039].z) * 0.5f;
            float3 _2432 = _2423 - _2431;
            float3 _2433 = _2423 + _2431;
            bool _2435 = (_1137 & 1u) == 0u;
            bool _2438 = _2435 || ((_1058 & 2u) != 0u);
            bool _2441 = (!_2435) && (_31_m6[_1039].z > 0.0f);
            float _2453;
            if (_2441) {
              _2453 = 1.0f / ((((length(_2432) * length(_2433)) + dot(_2432, _2433)) * 0.5f) + 1.0f);
            } else {
              _2453 = 1.0f;
            }
            float _2475;
            if (_31_m6[_1051].w < 0.0f) {
              float _2469 = _2424 * (_31_m6[_1036].w * _31_m6[_1036].w);
              float _2472 = clamp(1.0f - (_2469 * _2469), 0.0f, 1.0f);
              _2475 = lerp(1.0f / (_2424 + 1.0f), _2453, float(_2441)) * (_2472 * _2472);
            } else {
              float3 _2458 = _2423 * _31_m6[_1036].w;
              _2475 = _2453 * pow(1.0f - clamp(dot(_2458, _2458), 0.0f, 1.0f), _31_m6[_1051].w);
            }
            float _2481 = clamp((dot(_2426, -_2422) - _31_m6[_1039].z) * _31_m6[_1039].w, 0.0f, 1.0f);
            float _2485 = _2475 * lerp(1.0f, _2481 * _2481, float(_2435));
            float _2585;
            if ((!_2441) && (_2429 >= 0)) {
              uint _2491 = uint(_2429);
              float2 _2578;
              [branch] if (_2435) {
                float4 _2568 = mul(_51_m1[_2491], _563);
                _2578 = _51_m0[_2491].xy + (clamp(_2568.xy / _2568.w.xx, 0.0f.xx, 1.0f.xx) * _51_m0[_2491].zw);
              }
              else {
                float3 _2505 = mul(float4(-_2423, 0.0f), _51_m1[_2491]).xyz;
                float3 _393 = _2505;
                float3 _392 = _2505;
                float3 _391 = abs(_2505);
                uint _2514 = uint(int(_391.y > _391.x));
                uint _2520 = (_391.z > _391[_2514]) ? 2u : _2514;
                uint _2526 = (_2520 * 2u) + uint(_392[_2520] < 0.0f);
                float _2530 = abs(_393[_2526 / 2u]);
                float _2550 = 0.5f - (0.000244140625f / _51_m0[_2491].w);
                _2578 = _51_m0[_2491].xy + (clamp(float2((float(_2526) + ((((_393[uint(_350[_2526].x)] * _351[_2526].x) / _2530) * _2550) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_393[uint(_350[_2526].y)] * _351[_2526].y) / _2530) * _2550)), 0.0f.xx, 1.0f.xx) * _51_m0[_2491].zw);
              }
              _2585 = _2485 * _49.SampleLevel(_15, _2578, 0.0f).x;
            } else {
              _2585 = _2485;
            }
            float _2995;
            if (_2585 > 0.0f) {
              int _2639;
              if (_2438) {
                _2639 = int(_31_m6[_1042].x);
              } else {
                uint _2594 = asuint(_31_m6[_1039].w);
                uint _2595 = asuint(_31_m6[_1042].x);
                float3 _2596 = _559 - _31_m6[_1036].xyz;
                float3 _2597 = abs(_2596);
                float _2598 = _2597.x;
                float _2599 = _2597.y;
                float _2601 = _2597.z;
                int _2634;
                if ((_2598 > _2599) && (_2598 > _2601)) {
                  _2634 = int((_2596.x > 0.0f) ? (_2594 & 1023u) : ((_2594 >> 10u) & 1023u));
                } else {
                  int _2626;
                  if (_2599 > _2601) {
                    _2626 = int((_2596.y > 0.0f) ? ((_2594 >> 20u) & 1023u) : (_2595 & 1023u));
                  } else {
                    _2626 = int((_2596.z > 0.0f) ? ((_2595 >> 10u) & 1023u) : ((_2595 >> 20u) & 1023u));
                  }
                  _2634 = _2626;
                }
                _2639 = (_2634 == 1023) ? (-1) : _2634;
              }
              uint _2644 = uint(_2639);
              uint _2646 = asuint(_35_m11.x) + (_2644 * 96u);
              uint _2648 = (_2646 + 64u) >> 2u;
              uint _2651 = _2648 + 1u;
              uint _2654 = _2648 + 2u;
              uint _2657 = _2648 + 3u;
              float4 _2661 = asfloat(uint4(_38.Load(_2648 * 4 + 0), _38.Load(_2651 * 4 + 0), _38.Load(_2654 * 4 + 0), _38.Load(_2657 * 4 + 0)));
              float _2993;
              do {
                uint _2677 = ((asuint(_35_m11.y) + (_2644 * 16u)) >> 2u) + 1u;
                if (_38.Load(_2677 * 4 + 0) > 0u) {
                  float4 _390 = _987;
                  float _2692;
                  do {
                    if (_38.Load(_2677 * 4 + 0) == 0u) {
                      _2692 = 1.0f;
                      break;
                    }
                    _2692 = _390[_38.Load(_2677 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2993 = _2692;
                  break;
                }
                uint _2693 = _2646 >> 2u;
                uint _2708 = (_2646 + 16u) >> 2u;
                uint _2723 = (_2646 + 32u) >> 2u;
                uint _2738 = (_2646 + 48u) >> 2u;
                float4 _2758 = mul(transpose(float4x4(asfloat(uint4(_38.Load(_2693 * 4 + 0), _38.Load((_2693 + 1u) * 4 + 0), _38.Load((_2693 + 2u) * 4 + 0), _38.Load((_2693 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2708 * 4 + 0), _38.Load((_2708 + 1u) * 4 + 0), _38.Load((_2708 + 2u) * 4 + 0), _38.Load((_2708 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2723 * 4 + 0), _38.Load((_2723 + 1u) * 4 + 0), _38.Load((_2723 + 2u) * 4 + 0), _38.Load((_2723 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2738 * 4 + 0), _38.Load((_2738 + 1u) * 4 + 0), _38.Load((_2738 + 2u) * 4 + 0), _38.Load((_2738 + 3u) * 4 + 0))))), float4((_559 - ((-_2426) * _2661.x)) + (_521 * (_2661.y * 5.0f)), 1.0f));
                float3 _2762 = _2758.xyz / _2758.w.xxx;
                uint _2764 = (_2646 + 80u) >> 2u;
                float4 _2777 = asfloat(uint4(_38.Load(_2764 * 4 + 0), _38.Load((_2764 + 1u) * 4 + 0), _38.Load((_2764 + 2u) * 4 + 0), _38.Load((_2764 + 3u) * 4 + 0)));
                float2 _2778 = _2762.xy;
                float2 _2780 = _2777.xy;
                float3 _2784 = _2762.xyz;
                bool3 _2785 = bool3(_2784.x <= 0.0f.xxx.x, _2784.y <= 0.0f.xxx.y, _2784.z <= 0.0f.xxx.z);
                bool3 _2786 = bool3(_2784.x >= 1.0f.xxx.x, _2784.y >= 1.0f.xxx.y, _2784.z >= 1.0f.xxx.z);
                float _2789 = _2762.z;
                float2 _2800 = ((_2778 * (_2777.zw - _2780)) + _2780).xy * _35_m10.zw;
                float2 _2802 = floor(_2800 + 0.5f.xx);
                float2 _2803 = _2800 - _2802;
                float _2804 = _2803.x;
                float _2805 = _2804 + 0.5f;
                float _2806 = _2805 * _2805;
                float _2809 = 1.0f - _2804;
                float _2810 = min(_2804, 0.0f);
                float _2813 = _2804 + 1.0f;
                float _2814 = max(_2804, 0.0f);
                float _2825 = _2803.y;
                float _2826 = _2825 + 0.5f;
                float _2827 = _2826 * _2826;
                float _2830 = 1.0f - _2825;
                float _2831 = min(_2825, 0.0f);
                float _2834 = _2825 + 1.0f;
                float _2835 = max(_2825, 0.0f);
                float3 _2847 = float3(0.1599999964237213134765625f * _2809, 0.1599999964237213134765625f * ((_2813 - (_2814 * _2814)) + 1.0f), _2806 * 0.07999999821186065673828125f);
                float3 _2848 = float3(0.1599999964237213134765625f * ((_2806 * 0.5f) - _2804), 0.1599999964237213134765625f * ((_2809 - (_2810 * _2810)) + 1.0f), 0.1599999964237213134765625f * _2813) + _2847;
                float3 _2850 = float3(0.1599999964237213134765625f * _2830, 0.1599999964237213134765625f * ((_2834 - (_2835 * _2835)) + 1.0f), _2827 * 0.07999999821186065673828125f);
                float3 _2851 = float3(0.1599999964237213134765625f * ((_2827 * 0.5f) - _2825), 0.1599999964237213134765625f * ((_2830 - (_2831 * _2831)) + 1.0f), 0.1599999964237213134765625f * _2834) + _2850;
                float3 _2857 = ((_2847 / _2848) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.xxx;
                float3 _2859 = ((_2850 / _2851) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.yyy;
                float2 _2861 = _2802 * _35_m10.xy;
                float _2862 = _2857.x;
                float _2863 = _2859.x;
                float _2866 = _2857.y;
                float _2869 = _2857.z;
                float _2872 = _2859.y;
                float _2879 = _2859.z;
                float _2886 = _2848.x;
                float _2887 = _2851.x;
                float _2889 = _2848.y;
                float _2891 = _2848.z;
                float _2893 = _2851.y;
                float _2897 = _2851.z;
                float _2955 = (((((((_2886 * _2887) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2862, _2863), _381).xy, _2789)) + ((_2889 * _2887) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2866, _2863), _381).xy, _2789))) + ((_2891 * _2887) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2869, _2863), _381).xy, _2789))) + ((_2886 * _2893) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2862, _2872), _381).xy, _2789))) + ((_2889 * _2893) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2866, _2872), _381).xy, _2789))) + ((_2891 * _2893) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2869, _2872), _381).xy, _2789))) + ((_2886 * _2897) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2862, _2879), _381).xy, _2789));
                float4 _2978 = asfloat(uint4(_38.Load(_2648 * 4 + 0), _38.Load(_2651 * 4 + 0), _38.Load(_2654 * 4 + 0), _38.Load(_2657 * 4 + 0)));
                float _2979 = _2978.w;
                float2 _2981 = min(_2778, 1.0f.xx - _2778);
                _2993 = lerp(1.0f, (any(bool3(_2785.x || _2786.x, _2785.y || _2786.y, _2785.z || _2786.z)) || ((asuint(_2789) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2955 + ((_2889 * _2897) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2866, _2879), _381).xy, _2789))) + ((_2891 * _2897) * _36.SampleCmpLevelZero(_18, float3(_2861 + float2(_2869, _2879), _381).xy, _2789))), _2438 ? min(_2979, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2978.z - _2758.w) * 0.25f, min(_2981.x, _2981.y)))) : _2979);
                break;
              } while (false);
              _2995 = (_2639 >= 0) ? _2993 : 1.0f;
            } else {
              _2995 = 1.0f;
            }
            _2996 = _2995;
            break;
          } while (false);
          _3900 = _993 * _2996;
          _3901 = 0.0f.xxx;
        }
        _3902 = _3900;
        _3903 = _3901;
        break;
      } while (false);
      _1018 = _3902;
      _1021 = _1020 + _3903;
    }
    _990 = _989 + _1020;
  }
  float3 _3907 = _958.xyz + (_989 * _992);
  float3 _3909 = _523.xxx;
  float3 _3944;
  float3 _3945;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xE1D56062:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3920 = min(_23.SampleBias(_14, _4, _9_m16).x, _523);
    _3944 = clamp((pow(abs(_614 + _3920), exp2(((-16.0f) * _610) - 1.0f)) - 1.0f) + _3920, 0.0f, 1.0f).xxx;
    _3945 = max(_3920.xxx, ((((((_612 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3920) + ((_612 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3920) + ((_612 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3920);
  }
  else {
    _3944 = _3909;
    _3945 = _3909;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3907 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3944 : 1.0f.xxx;
  // RenoDX code end
  float3 _5800;
  [branch] if (_531) {
    float3 _4889;
    do {
      [branch] if (((_529 > 0u) && (_529 <= 15u)) && (_530 > 0.0f)) {
        uint _4877 = clamp(_529 - 1u, 0u, 14u);
        _4889 = _45.SampleLevel(_15, float3(_530 * _47_m0[_4877].w, 0.5f, float(_4877)), 0.0f).xyz;
        break;
      }
      _4889 = 1.0f.xxx;
      break;
    } while (false);
    float3 _4906 = (_559 + (_521 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_534 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _4916 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _4925 = _4906 - (_9_m108.xyz + (_4916 * (-_9_m110.w)));
    float _4940 = max(min(max((max(abs(_4925.x), abs(_4925.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4925.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _5242;
    float4 _5243;
    float4 _5244;
    float _5245;
    float _5246;
    if ((_9_m108.w != 0.0f) && (_4940 < 1.0f)) {
      float3 _4953 = _4906 - (_9_m108.xyz + (_4916 * (-_9_m110.y)));
      float _4967 = max(clamp((max(abs(_4953.x), abs(_4953.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4953.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _5043;
      float4 _5044;
      float4 _5045;
      float4 _5046;
      if (_4967 < 1.0f) {
        float3 _4976 = ((_4906 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4978 = _4976 - floor(_4976);
        float4 _4982 = _61.SampleLevel(_16, _4978, 0.0f);
        float _4983 = 1.0f - _4967;
        float _4987 = _9_m109.y * 0.5f;
        float _4992 = _4978.x;
        float _4993 = clamp(_4978.y, _4987, 1.0f - _4987) * 0.3333333432674407958984375f;
        float _4994 = _4978.z;
        float4 _4997 = _62.SampleLevel(_15, float3(_4992, _4993, _4994), 0.0f);
        float _5013 = _4982.x;
        float _5023 = _4982.y;
        float _5033 = _4982.z;
        _5043 = _4940 + (_4997.w * _4983);
        _5044 = float4(((_62.SampleLevel(_15, float3(_4992, _4993 + 0.666666686534881591796875f, _4994), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5033, _5033) * _4983;
        _5045 = float4(((_62.SampleLevel(_15, float3(_4992, _4993 + 0.3333333432674407958984375f, _4994), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5023, _5023) * _4983;
        _5046 = float4(((_4997.xyz * 4.0f) - 2.0f.xxx) * _5013, _5013) * _4983;
      } else {
        _5043 = _4940;
        _5044 = 0.0f.xxxx;
        _5045 = 0.0f.xxxx;
        _5046 = 0.0f.xxxx;
      }
      float3 _5052 = _4906 - (_9_m108.xyz + (_4916 * (-_9_m110.z)));
      float _5066 = max(clamp((max(abs(_5052.x), abs(_5052.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_5052.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _5146;
      float4 _5147;
      float4 _5148;
      float4 _5149;
      if (_5066 < 1.0f) {
        float3 _5075 = ((_4906 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5077 = _5075 - floor(_5075);
        float4 _5081 = _63.SampleLevel(_16, _5077, 0.0f);
        float _5083 = _4967 * (1.0f - _5066);
        float _5087 = _9_m109.y * 0.5f;
        float _5092 = _5077.x;
        float _5093 = clamp(_5077.y, _5087, 1.0f - _5087) * 0.3333333432674407958984375f;
        float _5094 = _5077.z;
        float4 _5097 = _64.SampleLevel(_15, float3(_5092, _5093, _5094), 0.0f);
        float _5113 = _5081.x;
        float _5124 = _5081.y;
        float _5135 = _5081.z;
        _5146 = _5043 + (_5097.w * _5083);
        _5147 = _5044 + (float4(((_64.SampleLevel(_15, float3(_5092, _5093 + 0.666666686534881591796875f, _5094), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5135, _5135) * _5083);
        _5148 = _5045 + (float4(((_64.SampleLevel(_15, float3(_5092, _5093 + 0.3333333432674407958984375f, _5094), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5124, _5124) * _5083);
        _5149 = _5046 + (float4(((_5097.xyz * 4.0f) - 2.0f.xxx) * _5113, _5113) * _5083);
      } else {
        _5146 = _5043;
        _5147 = _5044;
        _5148 = _5045;
        _5149 = _5046;
      }
      float4 _5232;
      float4 _5233;
      float4 _5234;
      float _5235;
      if (_5066 > 0.0f) {
        float3 _5158 = ((_4906 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5161 = _9_m109.xyz * 0.5f;
        float3 _5163 = clamp(_5158 - floor(_5158), _5161, 1.0f.xxx - _5161);
        float4 _5167 = _65.SampleLevel(_16, _5163, 0.0f);
        float _5169 = _5066 * (1.0f - _4940);
        float _5173 = _9_m109.y * 0.5f;
        float _5178 = _5163.x;
        float _5179 = clamp(_5163.y, _5173, 1.0f - _5173) * 0.3333333432674407958984375f;
        float _5180 = _5163.z;
        float4 _5183 = _66.SampleLevel(_15, float3(_5178, _5179, _5180), 0.0f);
        float _5199 = _5167.x;
        float _5210 = _5167.y;
        float _5221 = _5167.z;
        _5232 = _5147 + (float4(((_66.SampleLevel(_15, float3(_5178, _5179 + 0.666666686534881591796875f, _5180), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5221, _5221) * _5169);
        _5233 = _5148 + (float4(((_66.SampleLevel(_15, float3(_5178, _5179 + 0.3333333432674407958984375f, _5180), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5210, _5210) * _5169);
        _5234 = _5149 + (float4(((_5183.xyz * 4.0f) - 2.0f.xxx) * _5199, _5199) * _5169);
        _5235 = _5146 + (_5183.w * _5169);
      } else {
        _5232 = _5147;
        _5233 = _5148;
        _5234 = _5149;
        _5235 = _5146;
      }
      float _5238 = clamp((_5235 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _5242 = _5232;
      _5243 = _5233;
      _5244 = _5234;
      _5245 = _5238 - _4940;
      _5246 = (_5238 + _4940) * 0.5f;
    } else {
      _5242 = 0.0f.xxxx;
      _5243 = 0.0f.xxxx;
      _5244 = 0.0f.xxxx;
      _5245 = 0.0f;
      _5246 = 1.0f;
    }
    float4 _5266 = _5244 + float4(_9_m111.x * _5246, (_9_m111.y * _5246) + ((_9_m111.w * _5245) * 0.5f), _9_m111.z * _5246, (_9_m111.w * _5246) + ((_9_m111.y * _5245) * 0.375f));
    float4 _5286 = _5243 + float4(_9_m112.x * _5246, (_9_m112.y * _5246) + ((_9_m112.w * _5245) * 0.5f), _9_m112.z * _5246, (_9_m112.w * _5246) + ((_9_m112.y * _5245) * 0.375f));
    float4 _5306 = _5242 + float4(_9_m113.x * _5246, (_9_m113.y * _5246) + ((_9_m113.w * _5245) * 0.5f), _9_m113.z * _5246, (_9_m113.w * _5246) + ((_9_m113.y * _5245) * 0.375f));
    float4 _5464;
    float4 _5465;
    float4 _5466;
    [branch] if (all(bool2(_547.x >= 0.0f.xx.x, _547.y >= 0.0f.xx.y))) {
      float4 _5314 = _60.SampleLevel(_15, _547, 0.0f);
      float4 _5315 = abs(_5314);
      float4 _5461;
      float4 _5462;
      float4 _5463;
      [branch] if (any(bool4(_5315.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _5315.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _5315.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _5315.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _5321 = length(_5314.yzw);
        uint _5323;
        float _5326;
        _5323 = 0u;
        _5326 = 1.0f;
        for (float _5328 = _5321; _5328 > 4.599999904632568359375f;) {
          _5323++;
          _5326 *= 0.5f;
          _5328 *= 0.5f;
          continue;
        }
        float4 _5332 = _5314 * _5326;
        float4 _5337 = float4(0.0f, _5332.yzw);
        float2 _5359 = (_59.SampleLevel(_15, float2(((((length(_5337) * _58_m3.x) + _58_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _58_m2.xy) + _58_m2.zw;
        float4 _5373;
        _5373 = float4(_5359.x * 3.5449078083038330078125f, _5337.yzw * _5359.y) * exp(_5332.x * 0.282094776630401611328125f);
        for (uint _5376 = 0u; _5376 < _5323;) {
          _5373 = mul(float4x4(_5373, float4(_5373.yx, 0.0f, 0.0f), float4(_5373.z, 0.0f, _5373.x, 0.0f), float4(_5373.w, 0.0f, 0.0f, _5373.x)) * 0.282094776630401611328125f, _5373);
          _5376++;
          continue;
        }
        float4x4 _5397 = float4x4(_5373, float4(_5373.yx, 0.0f, 0.0f), float4(_5373.z, 0.0f, _5373.x, 0.0f), float4(_5373.w, 0.0f, 0.0f, _5373.x)) * 0.282094776630401611328125f;
        float4 _5407 = mul(_5397, float4(_5266.w * 1.1283791065216064453125f, _5266.y * (-0.977204978466033935546875f), _5266.z * 0.977204978466033935546875f, _5266.x * (-0.977204978466033935546875f)));
        float4 _5427 = mul(_5397, float4(_5286.w * 1.1283791065216064453125f, _5286.y * (-0.977204978466033935546875f), _5286.z * 0.977204978466033935546875f, _5286.x * (-0.977204978466033935546875f)));
        float4 _5447 = mul(_5397, float4(_5306.w * 1.1283791065216064453125f, _5306.y * (-0.977204978466033935546875f), _5306.z * 0.977204978466033935546875f, _5306.x * (-0.977204978466033935546875f)));
        _5461 = float4(_5407.x * 0.886226952075958251953125f, _5407.w * (-1.02332675457000732421875f), _5407.y * (-1.02332675457000732421875f), _5407.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5462 = float4(_5427.x * 0.886226952075958251953125f, _5427.w * (-1.02332675457000732421875f), _5427.y * (-1.02332675457000732421875f), _5427.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5463 = float4(_5447.x * 0.886226952075958251953125f, _5447.w * (-1.02332675457000732421875f), _5447.y * (-1.02332675457000732421875f), _5447.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _5461 = _5266;
        _5462 = _5286;
        _5463 = _5306;
      }
      _5464 = _5461;
      _5465 = _5462;
      _5466 = _5463;
    }
    else {
      _5464 = _5266;
      _5465 = _5286;
      _5466 = _5306;
    }
    float _5473 = max(0.0f, dot(_5464.xyz * _4889.x, _521) + _5464.w);
    float _5480 = max(0.0f, dot(_5465.xyz * _4889.y, _521) + _5465.w);
    float _5487 = max(0.0f, dot(_5466.xyz * _4889.z, _521) + _5466.w);
    float3 _5497 = reflect(_587, _521);
    float _5505 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_610, 0.001000000047497451305389404296875f))));
    float2 _5509 = floor(_534 * _29_m0.w);
    float _5526 = floor(_566 - _29_m2.y);
    float _5530 = clamp(_5526, 0.0f, _29_m1.x - 1.0f);
    uint _5540 = (_5526 <= _5530) ? (_26.Load(uint(_9_m21.z + int(_5509.x + (_5509.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_5530)) * 4 + 0)) : 0u;
    float _5543 = dot(float4(_5473, _5480, _5487, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _5545;
    float _5548;
    uint _5550;
    _5545 = 0.0f.xxx;
    _5548 = 1.0f;
    _5550 = _5540;
    uint _5551;
    float3 _5546;
    float _5549;
    bool _5553;
    [loop] for (;;) {
      bool _5552 = _5550 != 0u;
      _5553 = _5548 > 0.00999999977648258209228515625f;
      if (_5552 && _5553) {
        uint _5557 = firstbitlow(_5550);
        _5551 = _5550 ^ (1u << (_5557 & 31u));
        float3 _5577 = float3(dot(_29_m4[_5557]._m2, _563), dot(_29_m4[_5557]._m3, _563), dot(_29_m4[_5557]._m4, _563));
        float3 _5578 = abs(_5577);
        if (all(bool3(_5578.x <= _29_m4[_5557]._m1.xyz.x, _5578.y <= _29_m4[_5557]._m1.xyz.y, _5578.z <= _29_m4[_5557]._m1.xyz.z))) {
          float3 _5587 = _29_m4[_5557]._m1.xyz * 0.100000001490116119384765625f;
          float3 _5589 = _5578 * 0.100000001490116119384765625f;
          float3 _5590 = _5589 * _5589;
          float3 _5593 = (_29_m4[_5557]._m1.xyz - _5578) * _29_m4[_5557]._m5.xyz;
          float3 _5641;
          [branch] if (_29_m4[_5557]._m6.x == 1.0f) {
            float3 _5626 = float3(dot(_29_m4[_5557]._m2.xyz, _5497), dot(_29_m4[_5557]._m3.xyz, _5497), dot(_29_m4[_5557]._m4.xyz, _5497));
            float3 _5628 = (_29_m4[_5557]._m1.xyz - _5577) / _5626;
            float3 _5631 = ((-_29_m4[_5557]._m1.xyz) - _5577) / _5626;
            bool3 _5632 = bool3(_5626.x > 0.0f.xxx.x, _5626.y > 0.0f.xxx.y, _5626.z > 0.0f.xxx.z);
            float3 _5633 = float3(_5632.x ? _5628.x : _5631.x, _5632.y ? _5628.y : _5631.y, _5632.z ? _5628.z : _5631.z);
            _5641 = _5577 + (_5626 * min(min(_5633.x, _5633.y), _5633.z));
          }
          else {
            _5641 = _5497;
          }
          float3 _5642 = normalize(_5641);
          float3 _5645 = float3(int3(sign(_5642)));
          float3 _5648 = _5642 / dot(_5642, _5645).xxx;
          float3 _5662;
          if (_5648.z < 0.0f) {
            float3 _5653 = abs(_5648);
            float2 _5660 = _5645.xy * float2(1.0f - _5653.y, 1.0f - _5653.x);
            _5662 = float3(_5660.x, _5660.y, _5648.z);
          } else {
            _5662 = _5648;
          }
          float _5687 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_5557]._m0, float4(_521, 1.0f))));
          float _5700 = clamp((min(_5593.x, min(_5593.y, _5593.z)) * _29_m4[_5557]._m6.y) + ((((((_5587 * _5587).x - ((_5590.x + _5590.y) + _5590.z)) * _29_m4[_5557]._m5.x) * _29_m4[_5557]._m5.x) * (1.0f - _29_m4[_5557]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_5557]._m6.w;
          _5546 = _5545 + ((((_24.SampleLevel(_17, float3((((_5662.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_5557]._m1.w), _5505).xyz * _29_m4[_5557]._m5.w) * ((((((clamp(abs(_5543 / _5687), 0.0f, 1.0f) * 2.0f) + _5543) / (2.0f + _5687)) - 1.0f) * _9_m23.w) + 1.0f)) * _5700) * _5548);
          _5549 = _5548 * (1.0f - _5700);
        } else {
          _5546 = _5545;
          _5549 = _5548;
        }
        _5545 = _5546;
        _5548 = _5549;
        _5550 = _5551;
        continue;
      } else {
        break;
      }
    }
    float3 _5769;
    if (_5553) {
      float3 _5708 = normalize(_5497);
      float3 _5711 = float3(int3(sign(_5708)));
      float3 _5714 = _5708 / dot(_5708, _5711).xxx;
      float3 _5728;
      if (_5714.z < 0.0f) {
        float3 _5719 = abs(_5714);
        float2 _5726 = _5711.xy * float2(1.0f - _5719.y, 1.0f - _5719.x);
        _5728 = float3(_5726.x, _5726.y, _5714.z);
      } else {
        _5728 = _5714;
      }
      float _5755 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_521, 1.0f))));
      _5769 = _5545 + ((_24.SampleLevel(_17, float3((((_5728.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _5505).xyz * ((((((clamp(abs(_5543 / _5755), 0.0f, 1.0f) * 2.0f) + _5543) / (2.0f + _5755)) - 1.0f) * _9_m23.w) + 1.0f)) * _5548);
    } else {
      _5769 = _5545;
    }
    float3 _5775 = (_5769 * _9_m23.z) * _9_m22.y;
    float3 _5796;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _5790 = _22.SampleBias(_15, _4, _9_m16);
      float _5791 = _5790.x;
      _5796 = (_21.SampleBias(_15, _4, _9_m16).xyz * _5791) + (_5775 * (1.0f - _5791));
    }
    else {
      _5796 = _5775;
    }
    _5800 = (((float3(_5473, _5480, _5487) * _612) * _9_m22.x) * _3945) + ((_5796 * _632) * _3944);
  }
  else {
    float3 _3965 = (_559 + (_521 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_534 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _3975 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _3984 = _3965 - (_9_m108.xyz + (_3975 * (-_9_m110.w)));
    float _3999 = max(min(max((max(abs(_3984.x), abs(_3984.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3984.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _4301;
    float4 _4302;
    float4 _4303;
    float _4304;
    float _4305;
    if ((_9_m108.w != 0.0f) && (_3999 < 1.0f)) {
      float3 _4012 = _3965 - (_9_m108.xyz + (_3975 * (-_9_m110.y)));
      float _4026 = max(clamp((max(abs(_4012.x), abs(_4012.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4012.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _4102;
      float4 _4103;
      float4 _4104;
      float4 _4105;
      if (_4026 < 1.0f) {
        float3 _4035 = ((_3965 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4037 = _4035 - floor(_4035);
        float4 _4041 = _61.SampleLevel(_16, _4037, 0.0f);
        float _4042 = 1.0f - _4026;
        float _4046 = _9_m109.y * 0.5f;
        float _4051 = _4037.x;
        float _4052 = clamp(_4037.y, _4046, 1.0f - _4046) * 0.3333333432674407958984375f;
        float _4053 = _4037.z;
        float4 _4056 = _62.SampleLevel(_15, float3(_4051, _4052, _4053), 0.0f);
        float _4072 = _4041.x;
        float _4082 = _4041.y;
        float _4092 = _4041.z;
        _4102 = _3999 + (_4056.w * _4042);
        _4103 = float4(((_62.SampleLevel(_15, float3(_4051, _4052 + 0.666666686534881591796875f, _4053), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4092, _4092) * _4042;
        _4104 = float4(((_62.SampleLevel(_15, float3(_4051, _4052 + 0.3333333432674407958984375f, _4053), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4082, _4082) * _4042;
        _4105 = float4(((_4056.xyz * 4.0f) - 2.0f.xxx) * _4072, _4072) * _4042;
      } else {
        _4102 = _3999;
        _4103 = 0.0f.xxxx;
        _4104 = 0.0f.xxxx;
        _4105 = 0.0f.xxxx;
      }
      float3 _4111 = _3965 - (_9_m108.xyz + (_3975 * (-_9_m110.z)));
      float _4125 = max(clamp((max(abs(_4111.x), abs(_4111.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4111.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _4205;
      float4 _4206;
      float4 _4207;
      float4 _4208;
      if (_4125 < 1.0f) {
        float3 _4134 = ((_3965 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4136 = _4134 - floor(_4134);
        float4 _4140 = _63.SampleLevel(_16, _4136, 0.0f);
        float _4142 = _4026 * (1.0f - _4125);
        float _4146 = _9_m109.y * 0.5f;
        float _4151 = _4136.x;
        float _4152 = clamp(_4136.y, _4146, 1.0f - _4146) * 0.3333333432674407958984375f;
        float _4153 = _4136.z;
        float4 _4156 = _64.SampleLevel(_15, float3(_4151, _4152, _4153), 0.0f);
        float _4172 = _4140.x;
        float _4183 = _4140.y;
        float _4194 = _4140.z;
        _4205 = _4102 + (_4156.w * _4142);
        _4206 = _4103 + (float4(((_64.SampleLevel(_15, float3(_4151, _4152 + 0.666666686534881591796875f, _4153), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4194, _4194) * _4142);
        _4207 = _4104 + (float4(((_64.SampleLevel(_15, float3(_4151, _4152 + 0.3333333432674407958984375f, _4153), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4183, _4183) * _4142);
        _4208 = _4105 + (float4(((_4156.xyz * 4.0f) - 2.0f.xxx) * _4172, _4172) * _4142);
      } else {
        _4205 = _4102;
        _4206 = _4103;
        _4207 = _4104;
        _4208 = _4105;
      }
      float4 _4291;
      float4 _4292;
      float4 _4293;
      float _4294;
      if (_4125 > 0.0f) {
        float3 _4217 = ((_3965 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4220 = _9_m109.xyz * 0.5f;
        float3 _4222 = clamp(_4217 - floor(_4217), _4220, 1.0f.xxx - _4220);
        float4 _4226 = _65.SampleLevel(_16, _4222, 0.0f);
        float _4228 = _4125 * (1.0f - _3999);
        float _4232 = _9_m109.y * 0.5f;
        float _4237 = _4222.x;
        float _4238 = clamp(_4222.y, _4232, 1.0f - _4232) * 0.3333333432674407958984375f;
        float _4239 = _4222.z;
        float4 _4242 = _66.SampleLevel(_15, float3(_4237, _4238, _4239), 0.0f);
        float _4258 = _4226.x;
        float _4269 = _4226.y;
        float _4280 = _4226.z;
        _4291 = _4206 + (float4(((_66.SampleLevel(_15, float3(_4237, _4238 + 0.666666686534881591796875f, _4239), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4280, _4280) * _4228);
        _4292 = _4207 + (float4(((_66.SampleLevel(_15, float3(_4237, _4238 + 0.3333333432674407958984375f, _4239), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4269, _4269) * _4228);
        _4293 = _4208 + (float4(((_4242.xyz * 4.0f) - 2.0f.xxx) * _4258, _4258) * _4228);
        _4294 = _4205 + (_4242.w * _4228);
      } else {
        _4291 = _4206;
        _4292 = _4207;
        _4293 = _4208;
        _4294 = _4205;
      }
      float _4297 = clamp((_4294 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _4301 = _4291;
      _4302 = _4292;
      _4303 = _4293;
      _4304 = _4297 - _3999;
      _4305 = (_4297 + _3999) * 0.5f;
    } else {
      _4301 = 0.0f.xxxx;
      _4302 = 0.0f.xxxx;
      _4303 = 0.0f.xxxx;
      _4304 = 0.0f;
      _4305 = 1.0f;
    }
    float4 _4325 = _4303 + float4(_9_m111.x * _4305, (_9_m111.y * _4305) + ((_9_m111.w * _4304) * 0.5f), _9_m111.z * _4305, (_9_m111.w * _4305) + ((_9_m111.y * _4304) * 0.375f));
    float4 _4345 = _4302 + float4(_9_m112.x * _4305, (_9_m112.y * _4305) + ((_9_m112.w * _4304) * 0.5f), _9_m112.z * _4305, (_9_m112.w * _4305) + ((_9_m112.y * _4304) * 0.375f));
    float4 _4365 = _4301 + float4(_9_m113.x * _4305, (_9_m113.y * _4305) + ((_9_m113.w * _4304) * 0.5f), _9_m113.z * _4305, (_9_m113.w * _4305) + ((_9_m113.y * _4304) * 0.375f));
    float4 _4523;
    float4 _4524;
    float4 _4525;
    [branch] if (all(bool2(_547.x >= 0.0f.xx.x, _547.y >= 0.0f.xx.y))) {
      float4 _4373 = _60.SampleLevel(_15, _547, 0.0f);
      float4 _4374 = abs(_4373);
      float4 _4520;
      float4 _4521;
      float4 _4522;
      [branch] if (any(bool4(_4374.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4374.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4374.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4374.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _4380 = length(_4373.yzw);
        uint _4382;
        float _4385;
        _4382 = 0u;
        _4385 = 1.0f;
        for (float _4387 = _4380; _4387 > 4.599999904632568359375f;) {
          _4382++;
          _4385 *= 0.5f;
          _4387 *= 0.5f;
          continue;
        }
        float4 _4391 = _4373 * _4385;
        float4 _4396 = float4(0.0f, _4391.yzw);
        float2 _4418 = (_59.SampleLevel(_15, float2(((((length(_4396) * _58_m3.x) + _58_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _58_m2.xy) + _58_m2.zw;
        float4 _4432;
        _4432 = float4(_4418.x * 3.5449078083038330078125f, _4396.yzw * _4418.y) * exp(_4391.x * 0.282094776630401611328125f);
        for (uint _4435 = 0u; _4435 < _4382;) {
          _4432 = mul(float4x4(_4432, float4(_4432.yx, 0.0f, 0.0f), float4(_4432.z, 0.0f, _4432.x, 0.0f), float4(_4432.w, 0.0f, 0.0f, _4432.x)) * 0.282094776630401611328125f, _4432);
          _4435++;
          continue;
        }
        float4x4 _4456 = float4x4(_4432, float4(_4432.yx, 0.0f, 0.0f), float4(_4432.z, 0.0f, _4432.x, 0.0f), float4(_4432.w, 0.0f, 0.0f, _4432.x)) * 0.282094776630401611328125f;
        float4 _4466 = mul(_4456, float4(_4325.w * 1.1283791065216064453125f, _4325.y * (-0.977204978466033935546875f), _4325.z * 0.977204978466033935546875f, _4325.x * (-0.977204978466033935546875f)));
        float4 _4486 = mul(_4456, float4(_4345.w * 1.1283791065216064453125f, _4345.y * (-0.977204978466033935546875f), _4345.z * 0.977204978466033935546875f, _4345.x * (-0.977204978466033935546875f)));
        float4 _4506 = mul(_4456, float4(_4365.w * 1.1283791065216064453125f, _4365.y * (-0.977204978466033935546875f), _4365.z * 0.977204978466033935546875f, _4365.x * (-0.977204978466033935546875f)));
        _4520 = float4(_4466.x * 0.886226952075958251953125f, _4466.w * (-1.02332675457000732421875f), _4466.y * (-1.02332675457000732421875f), _4466.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4521 = float4(_4486.x * 0.886226952075958251953125f, _4486.w * (-1.02332675457000732421875f), _4486.y * (-1.02332675457000732421875f), _4486.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4522 = float4(_4506.x * 0.886226952075958251953125f, _4506.w * (-1.02332675457000732421875f), _4506.y * (-1.02332675457000732421875f), _4506.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _4520 = _4325;
        _4521 = _4345;
        _4522 = _4365;
      }
      _4523 = _4520;
      _4524 = _4521;
      _4525 = _4522;
    }
    else {
      _4523 = _4325;
      _4524 = _4345;
      _4525 = _4365;
    }
    float _4530 = max(0.0f, dot(_4523.xyz, _521) + _4523.w);
    float _4535 = max(0.0f, dot(_4524.xyz, _521) + _4524.w);
    float _4540 = max(0.0f, dot(_4525.xyz, _521) + _4525.w);
    float3 _4564 = reflect(_587, _521);
    float _4572 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_610, 0.001000000047497451305389404296875f))));
    float2 _4576 = floor(_534 * _29_m0.w);
    float _4593 = floor(_566 - _29_m2.y);
    float _4597 = clamp(_4593, 0.0f, _29_m1.x - 1.0f);
    uint _4607 = (_4593 <= _4597) ? (_26.Load(uint(_9_m21.z + int(_4576.x + (_4576.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_4597)) * 4 + 0)) : 0u;
    float _4610 = dot(float4(_4530, _4535, _4540, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _4612;
    float _4615;
    uint _4617;
    _4612 = 0.0f.xxx;
    _4615 = 1.0f;
    _4617 = _4607;
    uint _4618;
    float3 _4613;
    float _4616;
    bool _4620;
    [loop] for (;;) {
      bool _4619 = _4617 != 0u;
      _4620 = _4615 > 0.00999999977648258209228515625f;
      if (_4619 && _4620) {
        uint _4624 = firstbitlow(_4617);
        _4618 = _4617 ^ (1u << (_4624 & 31u));
        float3 _4644 = float3(dot(_29_m4[_4624]._m2, _563), dot(_29_m4[_4624]._m3, _563), dot(_29_m4[_4624]._m4, _563));
        float3 _4645 = abs(_4644);
        if (all(bool3(_4645.x <= _29_m4[_4624]._m1.xyz.x, _4645.y <= _29_m4[_4624]._m1.xyz.y, _4645.z <= _29_m4[_4624]._m1.xyz.z))) {
          float3 _4654 = _29_m4[_4624]._m1.xyz * 0.100000001490116119384765625f;
          float3 _4656 = _4645 * 0.100000001490116119384765625f;
          float3 _4657 = _4656 * _4656;
          float3 _4660 = (_29_m4[_4624]._m1.xyz - _4645) * _29_m4[_4624]._m5.xyz;
          float3 _4708;
          [branch] if (_29_m4[_4624]._m6.x == 1.0f) {
            float3 _4693 = float3(dot(_29_m4[_4624]._m2.xyz, _4564), dot(_29_m4[_4624]._m3.xyz, _4564), dot(_29_m4[_4624]._m4.xyz, _4564));
            float3 _4695 = (_29_m4[_4624]._m1.xyz - _4644) / _4693;
            float3 _4698 = ((-_29_m4[_4624]._m1.xyz) - _4644) / _4693;
            bool3 _4699 = bool3(_4693.x > 0.0f.xxx.x, _4693.y > 0.0f.xxx.y, _4693.z > 0.0f.xxx.z);
            float3 _4700 = float3(_4699.x ? _4695.x : _4698.x, _4699.y ? _4695.y : _4698.y, _4699.z ? _4695.z : _4698.z);
            _4708 = _4644 + (_4693 * min(min(_4700.x, _4700.y), _4700.z));
          }
          else {
            _4708 = _4564;
          }
          float3 _4709 = normalize(_4708);
          float3 _4712 = float3(int3(sign(_4709)));
          float3 _4715 = _4709 / dot(_4709, _4712).xxx;
          float3 _4729;
          if (_4715.z < 0.0f) {
            float3 _4720 = abs(_4715);
            float2 _4727 = _4712.xy * float2(1.0f - _4720.y, 1.0f - _4720.x);
            _4729 = float3(_4727.x, _4727.y, _4715.z);
          } else {
            _4729 = _4715;
          }
          float _4754 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_4624]._m0, float4(_521, 1.0f))));
          float _4767 = clamp((min(_4660.x, min(_4660.y, _4660.z)) * _29_m4[_4624]._m6.y) + ((((((_4654 * _4654).x - ((_4657.x + _4657.y) + _4657.z)) * _29_m4[_4624]._m5.x) * _29_m4[_4624]._m5.x) * (1.0f - _29_m4[_4624]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_4624]._m6.w;
          _4613 = _4612 + ((((_24.SampleLevel(_17, float3((((_4729.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_4624]._m1.w), _4572).xyz * _29_m4[_4624]._m5.w) * ((((((clamp(abs(_4610 / _4754), 0.0f, 1.0f) * 2.0f) + _4610) / (2.0f + _4754)) - 1.0f) * _9_m23.w) + 1.0f)) * _4767) * _4615);
          _4616 = _4615 * (1.0f - _4767);
        } else {
          _4613 = _4612;
          _4616 = _4615;
        }
        _4612 = _4613;
        _4615 = _4616;
        _4617 = _4618;
        continue;
      } else {
        break;
      }
    }
    float3 _4836;
    if (_4620) {
      float3 _4775 = normalize(_4564);
      float3 _4778 = float3(int3(sign(_4775)));
      float3 _4781 = _4775 / dot(_4775, _4778).xxx;
      float3 _4795;
      if (_4781.z < 0.0f) {
        float3 _4786 = abs(_4781);
        float2 _4793 = _4778.xy * float2(1.0f - _4786.y, 1.0f - _4786.x);
        _4795 = float3(_4793.x, _4793.y, _4781.z);
      } else {
        _4795 = _4781;
      }
      float _4822 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_521, 1.0f))));
      _4836 = _4612 + ((_24.SampleLevel(_17, float3((((_4795.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _4572).xyz * ((((((clamp(abs(_4610 / _4822), 0.0f, 1.0f) * 2.0f) + _4610) / (2.0f + _4822)) - 1.0f) * _9_m23.w) + 1.0f)) * _4615);
    } else {
      _4836 = _4612;
    }
    float3 _4842 = (_4836 * _9_m23.z) * _9_m22.y;
    float3 _4863;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _4857 = _22.SampleBias(_15, _4, _9_m16);
      float _4858 = _4857.x;
      _4863 = (_21.SampleBias(_15, _4, _9_m16).xyz * _4858) + (_4842 * (1.0f - _4858));
    }
    else {
      _4863 = _4842;
    }
    _5800 = (((float3(_4530, _4535, _4540) * (_612 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_524, _525, _526).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _525.xxx) * _526) * _527))) * _9_m22.x) * _3945) + ((_4863 * _632) * _3944);
  }
  float4 _5802 = float4(_3907.x, _3907.y, _3907.z, _958.w) + float4(_5800.x, _5800.y, _5800.z, 0.0f.xxxx.w);
  float3 _5805 = clamp(_5802.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _5820 = _559.y * _9_m46.w;
  float _5825 = max(0.00999999977648258209228515625f, _5820 + _9_m47.w);
  float3 _5839 = exp(_9_m45.xyz * ((-max(0.0f, (_586 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_5825)) / _5825) * exp(_5820 + _9_m48.w))));
  float _5842 = dot(_587, _9_m44.xyz);
  float _5848 = _9_m45.w * _9_m45.w;
  float _5852 = (1.0f + _5848) - ((2.0f * _9_m45.w) * _5842);
  float3 _6180;
  float _6181;
  if (_9_m55.z > 0.0f) {
    uint3 _6006 = (uint3(int3(_401, _402, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _6007 = _6006.y;
    uint _6008 = _6006.z;
    uint _6011 = _6006.x + (_6007 * _6008);
    uint _6013 = _6007 + (_6008 * _6011);
    uint _6015 = _6008 + (_6011 * _6013);
    uint _6017 = _6011 + (_6013 * _6015);
    float _6041 = dot(_587, -_7_m0[2].xyz);
    float3 _6051 = _559 - _7_m11.xyz;
    float _6053 = (_9_m55.w * ((_6041 > 5.9604644775390625e-08f) ? (1.0f / _6041) : 0.0f)) * (1.0f / _586);
    float _6054 = _6051.y;
    float _6055 = _6053 * _6054;
    float _6057 = _7_m11.y + _6055;
    float _6058 = _6054 - _6055;
    float _6060 = (1.0f - _6053) * _586;
    float _6074 = max(-127.0f, _9_m49.z * _6058);
    float _6098 = max(-127.0f, _9_m52.x * _6058);
    float _6109 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_6057 - _9_m49.x)))) * ((abs(_6074) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6074)) / _6074) : (0.693147182464599609375f - (0.2402265071868896484375f * _6074)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_6057 - _9_m52.z)))) * ((abs(_6098) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6098)) / _6098) : (0.693147182464599609375f - (0.2402265071868896484375f * _6098))));
    float _6131 = clamp((_586 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _6134 = clamp((max(clamp(exp2(-(_6109 * _6060)), 0.0f, 1.0f), _9_m51.w) + clamp((_586 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _6131, 0.0f, 1.0f);
    float4 _6174 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _56.SampleLevel(_15, float3((_534 + ((((float3(uint3(_6017, _6013 + (_6015 * _6017), _384) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_566 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_566 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _6176 = _6174.w;
    _6180 = _6174.xyz + (((_9_m51.xyz * (1.0f - _6134)) + (((_9_m54.xyz * pow(clamp(dot(_585, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_6109 * max(_6060 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _6131))) * _6176);
    _6181 = _6176 * _6134;
  } else {
    float3 _5882 = _559 - _7_m11.xyz;
    float _5884 = _5882.y;
    float _5898 = max(-127.0f, _9_m49.z * _5884);
    float _5922 = max(-127.0f, _9_m52.x * _5884);
    float _5933 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_5898) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5898)) / _5898) : (0.693147182464599609375f - (0.2402265071868896484375f * _5898)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_5922) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5922)) / _5922) : (0.693147182464599609375f - (0.2402265071868896484375f * _5922))));
    float _5955 = clamp((_586 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5958 = clamp((max(clamp(exp2(-(_5933 * _586)), 0.0f, 1.0f), _9_m51.w) + clamp((_586 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5955, 0.0f, 1.0f);
    _6180 = (_9_m51.xyz * (1.0f - _5958)) + (((_9_m54.xyz * pow(clamp(dot(_585, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5933 * max(_586 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5955));
    _6181 = _5958;
  }
  float3 _6184 = _5839 * _6181;
  float3 _6186 = (_5805 * _6184) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5842 * _5842)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _5848) / max((12.56637096405029296875f * _5852) * sqrt(_5852), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5839)) * _6181) + _6180);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _6186 = (_6186 * 0.65f) + (_5805 * 0.35f);
  }
  // RenoDX code end
  float _6187 = dot(_6184, 0.3333333432674407958984375f.xxx);
  float4 _6188 = float4(_6186.x, _6186.y, _6186.z, _5802.w);
  _6188.w = _6187;
  float _6217 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _559) * _9_m61.z), 0.0f, 1.0f);
  float3 _6225 = lerp(_5805, _6188.xyz, min((1.0f - _6217) + ((_71.SampleLevel(_16, (_559 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _6217), 1.0f + _6187).xxx);
  _5 = float4(_6225.x, _6225.y, _6225.z, _6188.w);
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

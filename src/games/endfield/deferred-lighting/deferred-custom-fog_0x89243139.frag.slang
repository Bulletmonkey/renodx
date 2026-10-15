#include "./renodx_injection.hlsli"

// Ported from the native 0x89243139 Vulkan dump.
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

static float _377;
static uint _380;

static const int2 _346[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _347[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(34, 3)]] cbuffer _6_7 : register(b34, space3) {
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

[[vk::binding(36, 3)]] cbuffer _10_11 : register(b36, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(45, 3)]] ByteAddressBuffer _26 : register(t45, space3);
[[vk::binding(42, 3)]] cbuffer _27_29 : register(b42, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  _28 _29_m4[32] : packoffset(c4);
};

[[vk::binding(37, 3)]] cbuffer _30_31 : register(b37, space3) {
  float4 _31_m0 : packoffset(c0);
  float4 _31_m1 : packoffset(c1);
  float4 _31_m2 : packoffset(c2);
  float4 _31_m3 : packoffset(c3);
  float4 _31_m4 : packoffset(c4);
  uint4 _31_m5 : packoffset(c5);
  float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(38, 3)]] cbuffer _32_33 : register(b38, space3) {
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

[[vk::binding(40, 3)]] cbuffer _34_35 : register(b40, space3) {
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

[[vk::binding(44, 3)]] ByteAddressBuffer _38 : register(t44, space3);
[[vk::binding(35, 3)]] cbuffer _46_47 : register(b35, space3) {
  float4 _47_m0[15] : packoffset(c0);
  float4 _47_m1[15] : packoffset(c15);
};

[[vk::binding(43, 3)]] cbuffer _50_51 : register(b43, space3) {
  float4 _51_m0[32] : packoffset(c0);
  column_major float4x4 _51_m1[32] : packoffset(c32);
};

[[vk::binding(39, 3)]] cbuffer _57_58 : register(b39, space3) {
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
[[vk::binding(31, 3)]] Texture2D<float4> _20 : register(t31, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _21 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _22 : register(t11, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _23 : register(t25, space3);
[[vk::binding(12, 3)]] Texture2DArray<float4> _24 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _36 : register(t13, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _39 : register(t9, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _40 : register(t26, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _41 : register(t32, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _43 : register(t14, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _44 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _45 : register(t8, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _48 : register(t30, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _49 : register(t15, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _54 : register(t17, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _55 : register(t16, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _56 : register(t24, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _59 : register(t33, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _60 : register(t6, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _61 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _62 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _63 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _64 : register(t19, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _65 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _66 : register(t18, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _67 : register(t5, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _68 : register(t29, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _69 : register(t28, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _70 : register(t27, space3);

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
  uint2 _394 = uint2(gl_FragCoord.xy);
  int _397 = int(_394.x);
  int _398 = int(_394.y);
  int2 _400 = int3(_397, _398, 0).xy;
  float4 _402 = _68.Load(int3(_400, 0));
  float4 _404 = _69.Load(int3(_400, 0));
  float4 _406 = _70.Load(int3(_400, 0));
  uint _410 = uint(round(_406.w * 255.0f));
  float3 _516;
  float3 _517;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float3 _524;
  uint _525;
  float _526;
  bool _527;
  [branch] if ((_410 & 128u) != 0u) {
    float2 _458 = (_402.xy * 2.0f) - 1.0f.xx;
    float _462 = 1.0f - dot(1.0f.xx, abs(_458));
    float3 _464 = float3(_458.x, _462, _458.y);
    float3 _476;
    if (_462 < 0.0f) {
      float2 _471 = _464.xz;
      bool2 _472 = bool2(_471.x >= 0.0f.xx.x, _471.y >= 0.0f.xx.y);
      float2 _474 = (1.0f.xx - abs(_464.zx)) * float2(_472.x ? 1.0f.xx.x : (-1.0f).xx.x, _472.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _476 = float3(_474.x, _464.y, _474.y);
    } else {
      _476 = _464;
    }
    float2 _481 = (_404.xy * 2.0f) - 1.0f.xx;
    float _485 = 1.0f - dot(1.0f.xx, abs(_481));
    float3 _487 = float3(_481.x, _485, _481.y);
    float3 _499;
    if (_485 < 0.0f) {
      float2 _494 = _487.xz;
      bool2 _495 = bool2(_494.x >= 0.0f.xx.x, _494.y >= 0.0f.xx.y);
      float2 _497 = (1.0f.xx - abs(_487.zx)) * float2(_495.x ? 1.0f.xx.x : (-1.0f).xx.x, _495.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _499 = float3(_497.x, _487.y, _497.y);
    } else {
      _499 = _487;
    }
    _516 = _406.xyz;
    _517 = normalize(_499);
    _518 = _404.z;
    _519 = _402.z;
    _520 = 0.0f;
    _521 = 0.0f;
    _522 = 0.0f;
    _523 = 0.0f;
    _524 = normalize(_476);
    _525 = uint(int((round(_402.w * 3.0f) * 4.0f) + round(_404.w * 3.0f)));
    _526 = float(_410 & 127u) * 0.0078740157186985015869140625f;
    _527 = true;
  }
  else {
    float2 _420 = (_404.xy * 2.0f) - 1.0f.xx;
    float _424 = 1.0f - dot(1.0f.xx, abs(_420));
    float3 _426 = float3(_420.x, _424, _420.y);
    float3 _438;
    if (_424 < 0.0f) {
      float2 _433 = _426.xz;
      bool2 _434 = bool2(_433.x >= 0.0f.xx.x, _433.y >= 0.0f.xx.y);
      float2 _436 = (1.0f.xx - abs(_426.zx)) * float2(_434.x ? 1.0f.xx.x : (-1.0f).xx.x, _434.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _438 = float3(_436.x, _426.y, _436.y);
    } else {
      _438 = _426;
    }
    uint _446 = clamp(_410 - 1u, 0u, 62u);
    bool4 _447 = ((_410 > 0u) && (_410 <= 63u)).xxxx;
    float4 _450 = float4(_447.x ? _11_m0[_446].x : 0.0f.xxxx.x, _447.y ? _11_m0[_446].y : 0.0f.xxxx.y, _447.z ? _11_m0[_446].z : 0.0f.xxxx.z, _447.w ? _11_m0[_446].w : 0.0f.xxxx.w);
    _516 = _406.xyz;
    _517 = normalize(_438);
    _518 = _404.z;
    _519 = _402.y;
    _520 = _450.y;
    _521 = _450.z;
    _522 = _450.x * _402.x;
    _523 = _450.w;
    _524 = 0.0f.xxx;
    _525 = _410;
    _526 = 0.0f;
    _527 = false;
  }
  float2 _530 = float2(_394);
  float2 _535 = (_530 + 0.5f.xx) * _9_m0.zw;
  float2 _543 = gl_FragCoord.xy * _9_m0.zw;
  float2 _545 = (_543 * 2.0f) - 1.0f.xx;
  float4 _548 = float4(_545, _20.SampleLevel(_14, _535, 0.0f).x, 1.0f);
  _548.y = -_545.y;
  float4 _551 = mul(_7_m6, _548);
  float3 _555 = _551.xyz / _551.w.xxx;
  float4 _559 = float4(_555, 1.0f);
  float _562 = abs(mul(_7_m0, _559).z);
  float3 _577;
  do {
    if (_9_m4.w == 0.0f) {
      _577 = _7_m11.xyz - _555;
      break;
    } else {
      _577 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _578 = dot(_577, _577);
  float _580 = rsqrt(max(_578, 9.9999999392252902907785028219223e-09f));
  float3 _581 = _577 * _580;
  float _582 = _578 * _580;
  float3 _583 = -_581;
  float2 _596;
  if (_9_m132.x > 0.00048828125f) {
    _596 = _67.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _596 = 1.0f.xx;
  }
  float _599 = min(_596.x, _596.y);
  float2 _600 = _596 * 1.0f;
  float _601 = _600.x;
  float _606 = lerp(lerp(min(1.0f, _518), _518, _599), _518, _601);
  float3 _608 = _516 * lerp(lerp(min(1.0f, 1.0f), 1.0f, _599), 1.0f, _601);
  float _609 = dot(_517, _581);
  float _610 = max(0.0f, _609);
  float4 _612 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _606) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _613 = _612.x;
  float2 _623 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_613 * _613, exp2((-9.27999973297119140625f) * _610)) * _613) + _612.y)) + _612.zw;
  float3 _628 = (0.039999999105930328369140625f.xxx * _623.x) + _623.y.xxx;
  float4 _954;
  do {
    [branch] if (_33_m4 == 0) {
      _954 = 0.0f.xxxx;
      break;
    }
    float4 _641 = _39.Load(int3(_400, 0));
    float _642 = _641.x;
    float4 _953;
    if (_642 > 0.001000000047497451305389404296875f) {
      float3 _653 = reflect(_583, _517);
      float3 _654 = -_31_m0.xyz;
      float _659 = dot(_654, _653);
      float3 _661 = _653 - (_654 * _659);
      bool3 _663 = (_659 < _31_m4.z).xxx;
      float3 _671 = normalize((_654 * _31_m4.z) + ((_661 * rsqrt(max(6.103515625e-05f, dot(_661, _661)))) * _31_m4.y));
      float3 _672 = float3(_663.x ? _671.x : _653.x, _663.y ? _671.y : _653.y, _663.z ? _671.z : _653.z);
      float3 _676 = _672 + _581;
      float3 _680 = _676 * rsqrt(max(6.103515625e-05f, dot(_676, _676)));
      float _682 = clamp(dot(_672, _517), 0.0f, 1.0f);
      float _684 = clamp(dot(_517, _680), 0.0f, 1.0f);
      float _686 = clamp(dot(_581, _680), 0.0f, 1.0f);
      float _688 = clamp(_609, 0.0f, 1.0f);
      float3 _862;
      float3 _863;
      [branch] if (_527) {
        float _792 = _606 * _606;
        float _793 = _792 * _792;
        float _814 = (((_684 * _793) - _684) * _684) + 1.0f;
        float _817 = 1.0f - _686;
        float _818 = _817 * _817;
        float _820 = (_817 * _818) * _818;
        float _844 = 1.0f - _606;
        float _851 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_844 * (1.04997003078460693359375f + (_844 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _844))))));
        float _852 = 1.0f - _851;
        _862 = 0.0f.xxx;
        _863 = min(((0.039999999105930328369140625f.xxx * (1.0f - _820)) + _820.xxx) * ((_793 / (_814 * _814)) * (0.5f / (((_682 * sqrt(((((-_688) * _793) + _688) * _688) + _793)) + (_688 * sqrt(((((-_682) * _793) + _682) * _682) + _793))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_688, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_682, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _851) / _852)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _852)));
      }
      else {
        float _692 = _606 * _606;
        float _693 = _692 * _692;
        float _714 = (((_684 * _693) - _684) * _684) + 1.0f;
        float _717 = 1.0f - _686;
        float _718 = _717 * _717;
        float _720 = (_717 * _718) * _718;
        float _744 = 1.0f - _606;
        float _751 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_744 * (1.04997003078460693359375f + (_744 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _744))))));
        float _752 = 1.0f - _751;
        float _775 = clamp(1.0f - _522, 0.0f, 1.0f);
        float _783 = clamp((dot(_517, _672) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _862 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_520, _521, _522).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _521.xxx) * _522) * lerp((_519 * lerp(1.0f, (_783 * sqrt(_783)) * 1.66666662693023681640625f, _775)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_581, _672), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _775));
        _863 = min(((0.039999999105930328369140625f.xxx * (1.0f - _720)) + _720.xxx) * ((_693 / (_714 * _714)) * (0.5f / (((_682 * sqrt(((((-_688) * _693) + _688) * _688) + _693)) + (_688 * sqrt(((((-_682) * _693) + _682) * _682) + _693))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_688, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_682, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _751) / _752)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _752)));
      }
      float3 _864 = _608 * 1.0f;
      float3 _867 = clamp(_863 * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _682;
      float3 _938;
      [branch] if (_527) {
        float3 _933;
        do {
          [branch] if (((_525 > 0u) && (_525 <= 15u)) && (_526 > 0.0f)) {
            int _886 = int(clamp(_525 - 1u, 0u, 14u));
            float _905 = _526 * _47_m0[_886].w;
            float _910 = float(_886);
            _933 = float3(_44.SampleLevel(_15, float3((dot(normalize(lerp(_517, _524, _47_m0[_886].x.xxx)), _672) * 0.5f) + 0.5f, _905, _910), 0.0f).x, _44.SampleLevel(_15, float3((dot(normalize(lerp(_517, _524, _47_m0[_886].y.xxx)), _672) * 0.5f) + 0.5f, _905, _910), 0.0f).y, _44.SampleLevel(_15, float3((dot(normalize(lerp(_517, _524, _47_m0[_886].z.xxx)), _672) * 0.5f) + 0.5f, _905, _910), 0.0f).z);
            break;
          }
          _933 = _682.xxx;
          break;
        } while (false);
        _938 = _31_m1.xyz * (((_864 * _933) + _867) + _862);
      }
      else {
        _938 = ((_867 + _862) + (_864 * _682)) * _31_m1.xyz;
      }
      float3 _951 = lerp(_938, _938 * _41.SampleBias(_15, float2(_642, 0.5f), _9_m16).xyz, (1.0f - _642).xxx) * _48.SampleLevel(_15, _543, 0.0f).x;
      _953 = float4(_951.x, _951.y, _951.z, 0.0f.xxxx.w);
    } else {
      _953 = 0.0f.xxxx;
    }
    _954 = _953;
    break;
  } while (false);
  float2 _956 = floor(_530 * 0.03125f);
  int _964 = int((_956.x + (_956.y * _33_m9)) * 8.0f);
  float _971 = floor(_562 - (_9_m3.y * _33_m15));
  float _975 = clamp(_971, 0.0f, _33_m11 - 1.0f);
  int _977 = int(_975 * 8.0f);
  float4 _983 = _40.SampleBias(_15, _535, _9_m16);
  float3 _985;
  float _988;
  _985 = 0.0f.xxx;
  _988 = 1.0f;
  float3 _986;
  float _989;
  [loop] for (int _990 = 0; _990 <= 7; _985 = _986, _988 = _989, _990++) {
    uint _1011 = (_971 <= _975) ? (_26.Load(uint((_33_m2 + _964) + _990) * 4 + 0) & _26.Load(uint((_33_m3 + _977) + _990) * 4 + 0)) : 0u;
    uint _1012 = uint(_990);
    float3 _1016;
    _989 = _988;
    _1016 = 0.0f.xxx;
    uint _1019;
    float _1014;
    float3 _1017;
    [loop] for (uint _1018 = _1011; _1018 != 0u; _989 = _1014, _1016 = _1017, _1018 = _1019) {
      uint _1023 = firstbitlow(_1018);
      _1019 = _1018 ^ (1u << (_1023 & 31u));
      int _1029 = int((32u * _1012) + _1023) * 8;
      int _1032 = _1029 + 1;
      int _1035 = _1029 + 2;
      int _1038 = _1029 + 3;
      int _1041 = _1029 + 4;
      int _1044 = _1029 + 5;
      int _1047 = _1029 + 6;
      int _1050 = _1029 + 7;
      uint _1054 = uint(_31_m6[_1044].w);
      float _1129;
      if ((_1054 & 1u) == 1u) {
        uint _1060 = asuint(_31_m6[_1044].x);
        uint _1067 = asuint(_31_m6[_1044].y);
        uint _1074 = asuint(_31_m6[_1044].z);
        uint _1081 = asuint(_31_m6[_1047].x);
        uint _1088 = asuint(_31_m6[_1047].y);
        uint _1095 = asuint(_31_m6[_1047].z);
        float3 _1114 = abs(mul(float4(_555 - _31_m6[_1032].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1060).x, spvUnpackHalf2x16(_1074).x, spvUnpackHalf2x16(_1088).x, 0.0f), float4(spvUnpackHalf2x16(_1060 >> 16u).x, spvUnpackHalf2x16(_1074 >> 16u).x, spvUnpackHalf2x16(_1088 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1067).x, spvUnpackHalf2x16(_1081).x, spvUnpackHalf2x16(_1095).x, 0.0f), float4(spvUnpackHalf2x16(_1067 >> 16u).x, spvUnpackHalf2x16(_1081 >> 16u).x, spvUnpackHalf2x16(_1095 >> 16u).x, 0.0f))).xyz);
        float _1121 = _31_m6[_1050].x * 0.5f;
        float _1127 = 1.0f - clamp((max(max(_1114.x, _1114.y), _1114.z) - (_1121 + 0.5f)) / (0.5f - _1121), 0.0f, 1.0f);
        _1129 = _1127 * _1127;
      } else {
        _1129 = 1.0f;
      }
      uint _1133 = uint(_31_m6[_1029].w);
      bool _1136 = _31_m6[_1038].z > 0.5f;
      if ((false || (_1129 < 0.001000000047497451305389404296875f)) || ((_1133 < 4u) && _1136)) {
        _1014 = _989;
        _1017 = _1016;
        continue;
      }
      float _3898;
      float3 _3899;
      do {
        [branch] if (_1133 >= 4u) {
          float3 _2389;
          do {
            float3 _1155 = _31_m6[_1032].xyz - _555;
            if (dot(_31_m6[_1038].xyz, _1155) > 0.0f) {
              _2389 = 0.0f.xxx;
              break;
            }
            float _1162 = dot(_1155, _1155) * _31_m6[_1032].w;
            float _1165 = clamp(1.0f - (_1162 * _1162), 0.0f, 1.0f);
            float _1166 = _1165 * _1165;
            if (_1166 <= 0.0f) {
              _2389 = 0.0f.xxx;
              break;
            }
            float3 _1204;
            float _1205;
            bool _1206;
            float3 _1234;
            float3 _1236;
            float3 _1238;
            float3 _1240;
            float3 _1170 = _31_m6[_1035].xyz * _31_m6[_1035].w;
            float3 _1171 = _31_m6[_1032].xyz - _1170;
            float3 _1172 = _31_m6[_1041].xyz * _31_m6[_1038].w;
            float3 _1175 = _31_m6[_1032].xyz + _1170;
            float2 _1185 = (float2(clamp(_606, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_609, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1189 = _54.SampleLevel(_15, _1185, 0.0f);
            float4 _1193 = _55.SampleLevel(_15, _1185, 0.0f);
            float _1588;
            do {
              _1204 = _581 - (_517 * dot(_581, _517));
              _1205 = dot(_1204, _1204);
              _1206 = _1205 > 9.9999997473787516355514526367188e-05f;
              float3 _1229;
              if (_1206) {
                _1229 = _1204 * rsqrt(_1205);
              } else {
                float _1212 = (_517.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1214 = (-1.0f) / (_1212 + _517.z);
                _1229 = float3(1.0f + (((_1212 * _1214) * _517.x) * _517.x), ((_1212 * _517.x) * _517.y) * _1214, (-_1212) * _517.x);
              }
              float3x3 _1233 = mul(float3x3(float3(_1189.x, 0.0f, _1189.z), float3(0.0f, 1.0f, 0.0f), float3(_1189.y, 0.0f, _1189.w)), float3x3(_1229, cross(_517, _1229), _517));
              _1234 = (_1171 - _1172) - _555;
              float3 _1235 = mul(_1233, _1234);
              _1236 = (_1171 + _1172) - _555;
              float3 _1237 = mul(_1233, _1236);
              _1238 = (_1175 + _1172) - _555;
              float3 _1239 = mul(_1233, _1238);
              _1240 = (_1175 - _1172) - _555;
              float3 _1241 = mul(_1233, _1240);
              float _1242 = _1235.z;
              float _1245 = _1237.z;
              float _1249 = _1239.z;
              float _1253 = _1241.z;
              int _1257 = (((int(_1242 > 0.0f) | ((_1245 > 0.0f) ? 2 : 0)) | ((_1249 > 0.0f) ? 4 : 0)) | ((_1253 > 0.0f) ? 8 : 0));
              float3 _1494;
              float3 _1495;
              float3 _1496;
              float3 _1497;
              float3 _1498;
              int _1499;
              if (_1257 == 0) {
                _1494 = _1241;
                _1495 = _1239;
                _1496 = _1237;
                _1497 = _1235;
                _1498 = 0.0f.xxx;
                _1499 = 0;
              } else {
                float3 _1488;
                float3 _1489;
                float3 _1490;
                float3 _1491;
                float3 _1492;
                int _1493;
                if (_1257 == 1) {
                  _1488 = _1241;
                  _1489 = (_1235 * (-_1253)) + (_1241 * _1242);
                  _1490 = (_1235 * (-_1245)) + (_1237 * _1242);
                  _1491 = _1235;
                  _1492 = 0.0f.xxx;
                  _1493 = 3;
                } else {
                  float3 _1474;
                  float3 _1475;
                  float3 _1476;
                  float3 _1477;
                  float3 _1478;
                  int _1479;
                  if (_1257 == 2) {
                    _1474 = _1241;
                    _1475 = (_1237 * (-_1249)) + (_1239 * _1245);
                    _1476 = _1237;
                    _1477 = (_1237 * (-_1242)) + (_1235 * _1245);
                    _1478 = 0.0f.xxx;
                    _1479 = 3;
                  } else {
                    float3 _1460;
                    float3 _1461;
                    float3 _1462;
                    float3 _1463;
                    float3 _1464;
                    int _1465;
                    if (_1257 == 3) {
                      _1460 = (_1235 * (-_1253)) + (_1241 * _1242);
                      _1461 = (_1237 * (-_1249)) + (_1239 * _1245);
                      _1462 = _1237;
                      _1463 = _1235;
                      _1464 = 0.0f.xxx;
                      _1465 = 4;
                    } else {
                      float3 _1446;
                      float3 _1447;
                      float3 _1448;
                      float3 _1449;
                      float3 _1450;
                      int _1451;
                      if (_1257 == 4) {
                        _1446 = _1241;
                        _1447 = _1239;
                        _1448 = (_1239 * (-_1245)) + (_1237 * _1249);
                        _1449 = (_1239 * (-_1253)) + (_1241 * _1249);
                        _1450 = 0.0f.xxx;
                        _1451 = 3;
                      } else {
                        float3 _1432;
                        float3 _1433;
                        float3 _1434;
                        float3 _1435;
                        float3 _1436;
                        int _1437;
                        if (_1257 == 5) {
                          _1432 = _1241;
                          _1433 = _1239;
                          _1434 = _1237;
                          _1435 = _1235;
                          _1436 = 0.0f.xxx;
                          _1437 = 0;
                        } else {
                          float3 _1426;
                          float3 _1427;
                          float3 _1428;
                          float3 _1429;
                          float3 _1430;
                          int _1431;
                          if (_1257 == 6) {
                            _1426 = (_1239 * (-_1253)) + (_1241 * _1249);
                            _1427 = _1239;
                            _1428 = _1237;
                            _1429 = (_1237 * (-_1242)) + (_1235 * _1245);
                            _1430 = 0.0f.xxx;
                            _1431 = 4;
                          } else {
                            float3 _1412;
                            float3 _1413;
                            float3 _1414;
                            float3 _1415;
                            float3 _1416;
                            int _1417;
                            if (_1257 == 7) {
                              float _1405 = -_1253;
                              _1412 = (_1239 * _1405) + (_1241 * _1249);
                              _1413 = _1239;
                              _1414 = _1237;
                              _1415 = _1235;
                              _1416 = (_1235 * _1405) + (_1241 * _1242);
                              _1417 = 5;
                            } else {
                              float3 _1399;
                              float3 _1400;
                              float3 _1401;
                              float3 _1402;
                              float3 _1403;
                              int _1404;
                              if (_1257 == 8) {
                                _1399 = _1241;
                                _1400 = _1241;
                                _1401 = (_1241 * (-_1249)) + (_1239 * _1253);
                                _1402 = (_1241 * (-_1242)) + (_1235 * _1253);
                                _1403 = 0.0f.xxx;
                                _1404 = 3;
                              } else {
                                float3 _1385;
                                float3 _1386;
                                float3 _1387;
                                float3 _1388;
                                float3 _1389;
                                int _1390;
                                if (_1257 == 9) {
                                  _1385 = _1241;
                                  _1386 = (_1241 * (-_1249)) + (_1239 * _1253);
                                  _1387 = (_1235 * (-_1245)) + (_1237 * _1242);
                                  _1388 = _1235;
                                  _1389 = 0.0f.xxx;
                                  _1390 = 4;
                                } else {
                                  float3 _1371;
                                  float3 _1372;
                                  float3 _1373;
                                  float3 _1374;
                                  float3 _1375;
                                  int _1376;
                                  if (_1257 == 10) {
                                    _1371 = _1241;
                                    _1372 = _1239;
                                    _1373 = _1237;
                                    _1374 = _1235;
                                    _1375 = 0.0f.xxx;
                                    _1376 = 0;
                                  } else {
                                    float3 _1365;
                                    float3 _1366;
                                    float3 _1367;
                                    float3 _1368;
                                    float3 _1369;
                                    int _1370;
                                    if (_1257 == 11) {
                                      float _1358 = -_1249;
                                      _1365 = (_1241 * _1358) + (_1239 * _1253);
                                      _1366 = (_1237 * _1358) + (_1239 * _1245);
                                      _1367 = _1237;
                                      _1368 = _1235;
                                      _1369 = _1241;
                                      _1370 = 5;
                                    } else {
                                      float3 _1352;
                                      float3 _1353;
                                      float3 _1354;
                                      float3 _1355;
                                      float3 _1356;
                                      int _1357;
                                      if (_1257 == 12) {
                                        _1352 = _1241;
                                        _1353 = _1239;
                                        _1354 = (_1239 * (-_1245)) + (_1237 * _1249);
                                        _1355 = (_1241 * (-_1242)) + (_1235 * _1253);
                                        _1356 = 0.0f.xxx;
                                        _1357 = 4;
                                      } else {
                                        bool _1310 = _1257 == 13;
                                        float3 _1337;
                                        float3 _1338;
                                        float3 _1339;
                                        float3 _1340;
                                        int _1341;
                                        if (_1310) {
                                          float _1330 = -_1245;
                                          _1337 = (_1239 * _1330) + (_1237 * _1249);
                                          _1338 = (_1235 * _1330) + (_1237 * _1242);
                                          _1339 = _1235;
                                          _1340 = _1241;
                                          _1341 = 5;
                                        } else {
                                          float3 _1327;
                                          float3 _1328;
                                          int _1329;
                                          if (_1257 == 14) {
                                            float _1320 = -_1242;
                                            _1327 = (_1237 * _1320) + (_1235 * _1245);
                                            _1328 = (_1241 * _1320) + (_1235 * _1253);
                                            _1329 = 5;
                                          } else {
                                            _1327 = _1235;
                                            _1328 = 0.0f.xxx;
                                            _1329 = (_1257 == 15) ? 4 : 0;
                                          }
                                          _1337 = _1239;
                                          _1338 = _1237;
                                          _1339 = _1327;
                                          _1340 = _1328;
                                          _1341 = _1329;
                                        }
                                        bool3 _1342 = _1310.xxx;
                                        _1352 = float3(_1342.x ? _1239.x : _1241.x, _1342.y ? _1239.y : _1241.y, _1342.z ? _1239.z : _1241.z);
                                        _1353 = _1337;
                                        _1354 = _1338;
                                        _1355 = _1339;
                                        _1356 = _1340;
                                        _1357 = _1341;
                                      }
                                      _1365 = _1352;
                                      _1366 = _1353;
                                      _1367 = _1354;
                                      _1368 = _1355;
                                      _1369 = _1356;
                                      _1370 = _1357;
                                    }
                                    _1371 = _1365;
                                    _1372 = _1366;
                                    _1373 = _1367;
                                    _1374 = _1368;
                                    _1375 = _1369;
                                    _1376 = _1370;
                                  }
                                  _1385 = _1371;
                                  _1386 = _1372;
                                  _1387 = _1373;
                                  _1388 = _1374;
                                  _1389 = _1375;
                                  _1390 = _1376;
                                }
                                _1399 = _1385;
                                _1400 = _1386;
                                _1401 = _1387;
                                _1402 = _1388;
                                _1403 = _1389;
                                _1404 = _1390;
                              }
                              _1412 = _1399;
                              _1413 = _1400;
                              _1414 = _1401;
                              _1415 = _1402;
                              _1416 = _1403;
                              _1417 = _1404;
                            }
                            _1426 = _1412;
                            _1427 = _1413;
                            _1428 = _1414;
                            _1429 = _1415;
                            _1430 = _1416;
                            _1431 = _1417;
                          }
                          _1432 = _1426;
                          _1433 = _1427;
                          _1434 = _1428;
                          _1435 = _1429;
                          _1436 = _1430;
                          _1437 = _1431;
                        }
                        _1446 = _1432;
                        _1447 = _1433;
                        _1448 = _1434;
                        _1449 = _1435;
                        _1450 = _1436;
                        _1451 = _1437;
                      }
                      _1460 = _1446;
                      _1461 = _1447;
                      _1462 = _1448;
                      _1463 = _1449;
                      _1464 = _1450;
                      _1465 = _1451;
                    }
                    _1474 = _1460;
                    _1475 = _1461;
                    _1476 = _1462;
                    _1477 = _1463;
                    _1478 = _1464;
                    _1479 = _1465;
                  }
                  _1488 = _1474;
                  _1489 = _1475;
                  _1490 = _1476;
                  _1491 = _1477;
                  _1492 = _1478;
                  _1493 = _1479;
                }
                _1494 = _1488;
                _1495 = _1489;
                _1496 = _1490;
                _1497 = _1491;
                _1498 = _1492;
                _1499 = _1493;
              }
              bool3 _1501 = (_1499 == 3).xxx;
              bool3 _1504 = (_1499 == 4).xxx;
              if (_1499 == 0) {
                _1588 = 0.0f;
                break;
              }
              float3 _1509 = normalize(_1497);
              float3 _1510 = normalize(_1496);
              float3 _1511 = normalize(_1495);
              float3 _1512 = normalize(float3(_1501.x ? _1497.x : _1494.x, _1501.y ? _1497.y : _1494.y, _1501.z ? _1497.z : _1494.z));
              float3 _1513 = normalize(float3(_1504.x ? _1497.x : _1498.x, _1504.y ? _1497.y : _1498.y, _1504.z ? _1497.z : _1498.z));
              float _1515 = clamp(dot(_1509, _1510), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1519 = sqrt(1.0f - (_1515 * _1515));
              float _1527 = clamp(dot(_1510, _1511), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1531 = sqrt(1.0f - (_1527 * _1527));
              float _1540 = clamp(dot(_1511, _1512), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1544 = sqrt(1.0f - (_1540 * _1540));
              float _1551 = ((cross(_1509, _1510).z * ((_1519 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1515) / _1519))) + (cross(_1510, _1511).z * ((_1531 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1527) / _1531)))) + (cross(_1511, _1512).z * ((_1544 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1540) / _1544)));
              float _1568;
              if (_1499 >= 4) {
                float _1556 = clamp(dot(_1512, _1513), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1560 = sqrt(1.0f - (_1556 * _1556));
                _1568 = _1551 + (cross(_1512, _1513).z * ((_1560 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1556) / _1560)));
              } else {
                _1568 = _1551;
              }
              float _1585;
              if (_1499 == 5) {
                float _1573 = clamp(dot(_1513, _1509), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1577 = sqrt(1.0f - (_1573 * _1573));
                _1585 = _1568 + (cross(_1513, _1509).z * ((_1577 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1573) / _1577)));
              } else {
                _1585 = _1568;
              }
              _1588 = max(_1585, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1975;
            do {
              float3 _1621;
              if (_1206) {
                _1621 = _1204 * rsqrt(_1205);
              } else {
                float _1604 = (_517.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1606 = (-1.0f) / (_1604 + _517.z);
                _1621 = float3(1.0f + (((_1604 * _1606) * _517.x) * _517.x), ((_1604 * _517.x) * _517.y) * _1606, (-_1604) * _517.x);
              }
              float3x3 _1624 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1621, cross(_517, _1621), _517));
              float3 _1625 = mul(_1624, _1234);
              float3 _1626 = mul(_1624, _1236);
              float3 _1627 = mul(_1624, _1238);
              float3 _1628 = mul(_1624, _1240);
              float _1629 = _1625.z;
              float _1632 = _1626.z;
              float _1636 = _1627.z;
              float _1640 = _1628.z;
              int _1644 = (((int(_1629 > 0.0f) | ((_1632 > 0.0f) ? 2 : 0)) | ((_1636 > 0.0f) ? 4 : 0)) | ((_1640 > 0.0f) ? 8 : 0));
              float3 _1881;
              float3 _1882;
              float3 _1883;
              float3 _1884;
              float3 _1885;
              int _1886;
              if (_1644 == 0) {
                _1881 = _1628;
                _1882 = _1627;
                _1883 = _1626;
                _1884 = _1625;
                _1885 = 0.0f.xxx;
                _1886 = 0;
              } else {
                float3 _1875;
                float3 _1876;
                float3 _1877;
                float3 _1878;
                float3 _1879;
                int _1880;
                if (_1644 == 1) {
                  _1875 = _1628;
                  _1876 = (_1625 * (-_1640)) + (_1628 * _1629);
                  _1877 = (_1625 * (-_1632)) + (_1626 * _1629);
                  _1878 = _1625;
                  _1879 = 0.0f.xxx;
                  _1880 = 3;
                } else {
                  float3 _1861;
                  float3 _1862;
                  float3 _1863;
                  float3 _1864;
                  float3 _1865;
                  int _1866;
                  if (_1644 == 2) {
                    _1861 = _1628;
                    _1862 = (_1626 * (-_1636)) + (_1627 * _1632);
                    _1863 = _1626;
                    _1864 = (_1626 * (-_1629)) + (_1625 * _1632);
                    _1865 = 0.0f.xxx;
                    _1866 = 3;
                  } else {
                    float3 _1847;
                    float3 _1848;
                    float3 _1849;
                    float3 _1850;
                    float3 _1851;
                    int _1852;
                    if (_1644 == 3) {
                      _1847 = (_1625 * (-_1640)) + (_1628 * _1629);
                      _1848 = (_1626 * (-_1636)) + (_1627 * _1632);
                      _1849 = _1626;
                      _1850 = _1625;
                      _1851 = 0.0f.xxx;
                      _1852 = 4;
                    } else {
                      float3 _1833;
                      float3 _1834;
                      float3 _1835;
                      float3 _1836;
                      float3 _1837;
                      int _1838;
                      if (_1644 == 4) {
                        _1833 = _1628;
                        _1834 = _1627;
                        _1835 = (_1627 * (-_1632)) + (_1626 * _1636);
                        _1836 = (_1627 * (-_1640)) + (_1628 * _1636);
                        _1837 = 0.0f.xxx;
                        _1838 = 3;
                      } else {
                        float3 _1819;
                        float3 _1820;
                        float3 _1821;
                        float3 _1822;
                        float3 _1823;
                        int _1824;
                        if (_1644 == 5) {
                          _1819 = _1628;
                          _1820 = _1627;
                          _1821 = _1626;
                          _1822 = _1625;
                          _1823 = 0.0f.xxx;
                          _1824 = 0;
                        } else {
                          float3 _1813;
                          float3 _1814;
                          float3 _1815;
                          float3 _1816;
                          float3 _1817;
                          int _1818;
                          if (_1644 == 6) {
                            _1813 = (_1627 * (-_1640)) + (_1628 * _1636);
                            _1814 = _1627;
                            _1815 = _1626;
                            _1816 = (_1626 * (-_1629)) + (_1625 * _1632);
                            _1817 = 0.0f.xxx;
                            _1818 = 4;
                          } else {
                            float3 _1799;
                            float3 _1800;
                            float3 _1801;
                            float3 _1802;
                            float3 _1803;
                            int _1804;
                            if (_1644 == 7) {
                              float _1792 = -_1640;
                              _1799 = (_1627 * _1792) + (_1628 * _1636);
                              _1800 = _1627;
                              _1801 = _1626;
                              _1802 = _1625;
                              _1803 = (_1625 * _1792) + (_1628 * _1629);
                              _1804 = 5;
                            } else {
                              float3 _1786;
                              float3 _1787;
                              float3 _1788;
                              float3 _1789;
                              float3 _1790;
                              int _1791;
                              if (_1644 == 8) {
                                _1786 = _1628;
                                _1787 = _1628;
                                _1788 = (_1628 * (-_1636)) + (_1627 * _1640);
                                _1789 = (_1628 * (-_1629)) + (_1625 * _1640);
                                _1790 = 0.0f.xxx;
                                _1791 = 3;
                              } else {
                                float3 _1772;
                                float3 _1773;
                                float3 _1774;
                                float3 _1775;
                                float3 _1776;
                                int _1777;
                                if (_1644 == 9) {
                                  _1772 = _1628;
                                  _1773 = (_1628 * (-_1636)) + (_1627 * _1640);
                                  _1774 = (_1625 * (-_1632)) + (_1626 * _1629);
                                  _1775 = _1625;
                                  _1776 = 0.0f.xxx;
                                  _1777 = 4;
                                } else {
                                  float3 _1758;
                                  float3 _1759;
                                  float3 _1760;
                                  float3 _1761;
                                  float3 _1762;
                                  int _1763;
                                  if (_1644 == 10) {
                                    _1758 = _1628;
                                    _1759 = _1627;
                                    _1760 = _1626;
                                    _1761 = _1625;
                                    _1762 = 0.0f.xxx;
                                    _1763 = 0;
                                  } else {
                                    float3 _1752;
                                    float3 _1753;
                                    float3 _1754;
                                    float3 _1755;
                                    float3 _1756;
                                    int _1757;
                                    if (_1644 == 11) {
                                      float _1745 = -_1636;
                                      _1752 = (_1628 * _1745) + (_1627 * _1640);
                                      _1753 = (_1626 * _1745) + (_1627 * _1632);
                                      _1754 = _1626;
                                      _1755 = _1625;
                                      _1756 = _1628;
                                      _1757 = 5;
                                    } else {
                                      float3 _1739;
                                      float3 _1740;
                                      float3 _1741;
                                      float3 _1742;
                                      float3 _1743;
                                      int _1744;
                                      if (_1644 == 12) {
                                        _1739 = _1628;
                                        _1740 = _1627;
                                        _1741 = (_1627 * (-_1632)) + (_1626 * _1636);
                                        _1742 = (_1628 * (-_1629)) + (_1625 * _1640);
                                        _1743 = 0.0f.xxx;
                                        _1744 = 4;
                                      } else {
                                        bool _1697 = _1644 == 13;
                                        float3 _1724;
                                        float3 _1725;
                                        float3 _1726;
                                        float3 _1727;
                                        int _1728;
                                        if (_1697) {
                                          float _1717 = -_1632;
                                          _1724 = (_1627 * _1717) + (_1626 * _1636);
                                          _1725 = (_1625 * _1717) + (_1626 * _1629);
                                          _1726 = _1625;
                                          _1727 = _1628;
                                          _1728 = 5;
                                        } else {
                                          float3 _1714;
                                          float3 _1715;
                                          int _1716;
                                          if (_1644 == 14) {
                                            float _1707 = -_1629;
                                            _1714 = (_1626 * _1707) + (_1625 * _1632);
                                            _1715 = (_1628 * _1707) + (_1625 * _1640);
                                            _1716 = 5;
                                          } else {
                                            _1714 = _1625;
                                            _1715 = 0.0f.xxx;
                                            _1716 = (_1644 == 15) ? 4 : 0;
                                          }
                                          _1724 = _1627;
                                          _1725 = _1626;
                                          _1726 = _1714;
                                          _1727 = _1715;
                                          _1728 = _1716;
                                        }
                                        bool3 _1729 = _1697.xxx;
                                        _1739 = float3(_1729.x ? _1627.x : _1628.x, _1729.y ? _1627.y : _1628.y, _1729.z ? _1627.z : _1628.z);
                                        _1740 = _1724;
                                        _1741 = _1725;
                                        _1742 = _1726;
                                        _1743 = _1727;
                                        _1744 = _1728;
                                      }
                                      _1752 = _1739;
                                      _1753 = _1740;
                                      _1754 = _1741;
                                      _1755 = _1742;
                                      _1756 = _1743;
                                      _1757 = _1744;
                                    }
                                    _1758 = _1752;
                                    _1759 = _1753;
                                    _1760 = _1754;
                                    _1761 = _1755;
                                    _1762 = _1756;
                                    _1763 = _1757;
                                  }
                                  _1772 = _1758;
                                  _1773 = _1759;
                                  _1774 = _1760;
                                  _1775 = _1761;
                                  _1776 = _1762;
                                  _1777 = _1763;
                                }
                                _1786 = _1772;
                                _1787 = _1773;
                                _1788 = _1774;
                                _1789 = _1775;
                                _1790 = _1776;
                                _1791 = _1777;
                              }
                              _1799 = _1786;
                              _1800 = _1787;
                              _1801 = _1788;
                              _1802 = _1789;
                              _1803 = _1790;
                              _1804 = _1791;
                            }
                            _1813 = _1799;
                            _1814 = _1800;
                            _1815 = _1801;
                            _1816 = _1802;
                            _1817 = _1803;
                            _1818 = _1804;
                          }
                          _1819 = _1813;
                          _1820 = _1814;
                          _1821 = _1815;
                          _1822 = _1816;
                          _1823 = _1817;
                          _1824 = _1818;
                        }
                        _1833 = _1819;
                        _1834 = _1820;
                        _1835 = _1821;
                        _1836 = _1822;
                        _1837 = _1823;
                        _1838 = _1824;
                      }
                      _1847 = _1833;
                      _1848 = _1834;
                      _1849 = _1835;
                      _1850 = _1836;
                      _1851 = _1837;
                      _1852 = _1838;
                    }
                    _1861 = _1847;
                    _1862 = _1848;
                    _1863 = _1849;
                    _1864 = _1850;
                    _1865 = _1851;
                    _1866 = _1852;
                  }
                  _1875 = _1861;
                  _1876 = _1862;
                  _1877 = _1863;
                  _1878 = _1864;
                  _1879 = _1865;
                  _1880 = _1866;
                }
                _1881 = _1875;
                _1882 = _1876;
                _1883 = _1877;
                _1884 = _1878;
                _1885 = _1879;
                _1886 = _1880;
              }
              bool3 _1888 = (_1886 == 3).xxx;
              bool3 _1891 = (_1886 == 4).xxx;
              if (_1886 == 0) {
                _1975 = 0.0f;
                break;
              }
              float3 _1896 = normalize(_1884);
              float3 _1897 = normalize(_1883);
              float3 _1898 = normalize(_1882);
              float3 _1899 = normalize(float3(_1888.x ? _1884.x : _1881.x, _1888.y ? _1884.y : _1881.y, _1888.z ? _1884.z : _1881.z));
              float3 _1900 = normalize(float3(_1891.x ? _1884.x : _1885.x, _1891.y ? _1884.y : _1885.y, _1891.z ? _1884.z : _1885.z));
              float _1902 = clamp(dot(_1896, _1897), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1906 = sqrt(1.0f - (_1902 * _1902));
              float _1914 = clamp(dot(_1897, _1898), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1918 = sqrt(1.0f - (_1914 * _1914));
              float _1927 = clamp(dot(_1898, _1899), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1931 = sqrt(1.0f - (_1927 * _1927));
              float _1938 = ((cross(_1896, _1897).z * ((_1906 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1902) / _1906))) + (cross(_1897, _1898).z * ((_1918 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1914) / _1918)))) + (cross(_1898, _1899).z * ((_1931 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1927) / _1931)));
              float _1955;
              if (_1886 >= 4) {
                float _1943 = clamp(dot(_1899, _1900), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1947 = sqrt(1.0f - (_1943 * _1943));
                _1955 = _1938 + (cross(_1899, _1900).z * ((_1947 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1943) / _1947)));
              } else {
                _1955 = _1938;
              }
              float _1972;
              if (_1886 == 5) {
                float _1960 = clamp(dot(_1900, _1896), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1964 = sqrt(1.0f - (_1960 * _1960));
                _1972 = _1955 + (cross(_1900, _1896).z * ((_1964 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1960) / _1964)));
              } else {
                _1972 = _1955;
              }
              _1975 = max(_1972, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1978 = (_1054 & 2u) != 0u;
            uint _1982 = asuint(_31_m6[_1041].w);
            uint _1983 = asuint(_31_m6[_1047].w);
            float3 _1984 = _555 - _31_m6[_1032].xyz;
            float3 _1985 = abs(_1984);
            float _1986 = _1985.x;
            float _1987 = _1985.y;
            float _1989 = _1985.z;
            int _2022;
            if ((_1986 > _1987) && (_1986 > _1989)) {
              _2022 = int((_1984.x > 0.0f) ? (_1982 & 1023u) : ((_1982 >> 10u) & 1023u));
            } else {
              int _2014;
              if (_1987 > _1989) {
                _2014 = int((_1984.y > 0.0f) ? ((_1982 >> 20u) & 1023u) : (_1983 & 1023u));
              } else {
                _2014 = int((_1984.z > 0.0f) ? ((_1983 >> 10u) & 1023u) : ((_1983 >> 20u) & 1023u));
              }
              _2022 = _2014;
            }
            int _2025 = _1978 ? int(_31_m6[_1041].w) : ((_2022 == 1023) ? (-1) : _2022);
            uint _2034 = uint(_2025);
            uint _2036 = asuint(_35_m11.x) + (_2034 * 96u);
            uint _2038 = (_2036 + 64u) >> 2u;
            uint _2041 = _2038 + 1u;
            uint _2044 = _2038 + 2u;
            uint _2047 = _2038 + 3u;
            float4 _2051 = asfloat(uint4(_38.Load(_2038 * 4 + 0), _38.Load(_2041 * 4 + 0), _38.Load(_2044 * 4 + 0), _38.Load(_2047 * 4 + 0)));
            float _2383;
            do {
              uint _2067 = ((asuint(_35_m11.y) + (_2034 * 16u)) >> 2u) + 1u;
              if (_38.Load(_2067 * 4 + 0) > 0u) {
                float4 _390 = _983;
                float _2082;
                do {
                  if (_38.Load(_2067 * 4 + 0) == 0u) {
                    _2082 = 1.0f;
                    break;
                  }
                  _2082 = _390[_38.Load(_2067 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2383 = _2082;
                break;
              }
              uint _2083 = _2036 >> 2u;
              uint _2098 = (_2036 + 16u) >> 2u;
              uint _2113 = (_2036 + 32u) >> 2u;
              uint _2128 = (_2036 + 48u) >> 2u;
              float4 _2148 = mul(transpose(float4x4(asfloat(uint4(_38.Load(_2083 * 4 + 0), _38.Load((_2083 + 1u) * 4 + 0), _38.Load((_2083 + 2u) * 4 + 0), _38.Load((_2083 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2098 * 4 + 0), _38.Load((_2098 + 1u) * 4 + 0), _38.Load((_2098 + 2u) * 4 + 0), _38.Load((_2098 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2113 * 4 + 0), _38.Load((_2113 + 1u) * 4 + 0), _38.Load((_2113 + 2u) * 4 + 0), _38.Load((_2113 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2128 * 4 + 0), _38.Load((_2128 + 1u) * 4 + 0), _38.Load((_2128 + 2u) * 4 + 0), _38.Load((_2128 + 3u) * 4 + 0))))), float4((_555 - ((_1984 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1984, _1984)))) * _2051.x)) + (_517 * (_2051.y * 5.0f)), 1.0f));
              float3 _2152 = _2148.xyz / _2148.w.xxx;
              uint _2154 = (_2036 + 80u) >> 2u;
              float4 _2167 = asfloat(uint4(_38.Load(_2154 * 4 + 0), _38.Load((_2154 + 1u) * 4 + 0), _38.Load((_2154 + 2u) * 4 + 0), _38.Load((_2154 + 3u) * 4 + 0)));
              float2 _2168 = _2152.xy;
              float2 _2170 = _2167.xy;
              float3 _2174 = _2152.xyz;
              bool3 _2175 = bool3(_2174.x <= 0.0f.xxx.x, _2174.y <= 0.0f.xxx.y, _2174.z <= 0.0f.xxx.z);
              bool3 _2176 = bool3(_2174.x >= 1.0f.xxx.x, _2174.y >= 1.0f.xxx.y, _2174.z >= 1.0f.xxx.z);
              float _2179 = _2152.z;
              float2 _2190 = ((_2168 * (_2167.zw - _2170)) + _2170).xy * _35_m10.zw;
              float2 _2192 = floor(_2190 + 0.5f.xx);
              float2 _2193 = _2190 - _2192;
              float _2194 = _2193.x;
              float _2195 = _2194 + 0.5f;
              float _2196 = _2195 * _2195;
              float _2199 = 1.0f - _2194;
              float _2200 = min(_2194, 0.0f);
              float _2203 = _2194 + 1.0f;
              float _2204 = max(_2194, 0.0f);
              float _2215 = _2193.y;
              float _2216 = _2215 + 0.5f;
              float _2217 = _2216 * _2216;
              float _2220 = 1.0f - _2215;
              float _2221 = min(_2215, 0.0f);
              float _2224 = _2215 + 1.0f;
              float _2225 = max(_2215, 0.0f);
              float3 _2237 = float3(0.1599999964237213134765625f * _2199, 0.1599999964237213134765625f * ((_2203 - (_2204 * _2204)) + 1.0f), _2196 * 0.07999999821186065673828125f);
              float3 _2238 = float3(0.1599999964237213134765625f * ((_2196 * 0.5f) - _2194), 0.1599999964237213134765625f * ((_2199 - (_2200 * _2200)) + 1.0f), 0.1599999964237213134765625f * _2203) + _2237;
              float3 _2240 = float3(0.1599999964237213134765625f * _2220, 0.1599999964237213134765625f * ((_2224 - (_2225 * _2225)) + 1.0f), _2217 * 0.07999999821186065673828125f);
              float3 _2241 = float3(0.1599999964237213134765625f * ((_2217 * 0.5f) - _2215), 0.1599999964237213134765625f * ((_2220 - (_2221 * _2221)) + 1.0f), 0.1599999964237213134765625f * _2224) + _2240;
              float3 _2247 = ((_2237 / _2238) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.xxx;
              float3 _2249 = ((_2240 / _2241) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.yyy;
              float2 _2251 = _2192 * _35_m10.xy;
              float _2252 = _2247.x;
              float _2253 = _2249.x;
              float _2256 = _2247.y;
              float _2259 = _2247.z;
              float _2262 = _2249.y;
              float _2269 = _2249.z;
              float _2276 = _2238.x;
              float _2277 = _2241.x;
              float _2279 = _2238.y;
              float _2281 = _2238.z;
              float _2283 = _2241.y;
              float _2287 = _2241.z;
              float _2345 = (((((((_2276 * _2277) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2252, _2253), _377).xy, _2179)) + ((_2279 * _2277) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2256, _2253), _377).xy, _2179))) + ((_2281 * _2277) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2259, _2253), _377).xy, _2179))) + ((_2276 * _2283) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2252, _2262), _377).xy, _2179))) + ((_2279 * _2283) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2256, _2262), _377).xy, _2179))) + ((_2281 * _2283) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2259, _2262), _377).xy, _2179))) + ((_2276 * _2287) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2252, _2269), _377).xy, _2179));
              float4 _2368 = asfloat(uint4(_38.Load(_2038 * 4 + 0), _38.Load(_2041 * 4 + 0), _38.Load(_2044 * 4 + 0), _38.Load(_2047 * 4 + 0)));
              float _2369 = _2368.w;
              float2 _2371 = min(_2168, 1.0f.xx - _2168);
              _2383 = lerp(1.0f, (any(bool3(_2175.x || _2176.x, _2175.y || _2176.y, _2175.z || _2176.z)) || ((asuint(_2179) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2345 + ((_2279 * _2287) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2256, _2269), _377).xy, _2179))) + ((_2281 * _2287) * _36.SampleCmpLevelZero(_18, float3(_2251 + float2(_2259, _2269), _377).xy, _2179))), _1978 ? min(_2369, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2368.z - _2148.w) * 0.25f, min(_2371.x, _2371.y)))) : _2369);
              break;
            } while (false);
            _2389 = ((_31_m6[_1029].xyz * (((((0.039999999105930328369140625f.xxx * _1193.x) + (0.959999978542327880859375f.xxx * _1193.y)) * _1588) * _31_m6[_1050].z) + (_608 * _1975))) * _1166) * ((_2025 >= 0) ? _2383 : 1.0f);
            break;
          } while (false);
          _3898 = _989;
          _3899 = _2389 * _1129;
          break;
        }
        float _3896;
        float3 _3897;
        if (_31_m6[_1029].w < 1.5f) {
          float3 _2994 = float3(0.100000001490116119384765625f, _606, 1.0f);
          float _3003 = (0.5f + (0.5f * _31_m6[_1035].y)) - abs(_31_m6[_1035].x);
          float _3004 = _31_m6[_1035].y - _3003;
          float _3011 = abs(max((1.0f - abs(_3003)) - abs(_3004), 0.00048828125f));
          float3 _3015 = normalize(float3(_3003, _3004, (_31_m6[_1035].x >= 0.0f) ? _3011 : (-_3011)));
          float3 _3016 = _31_m6[_1032].xyz - _555;
          float _3017 = dot(_3016, _3016);
          float _3018 = rsqrt(_3017);
          float3 _3019 = _3016 * _3018;
          float _3023 = clamp(_31_m6[_1050].y * _3018, 0.0f, 1.0f);
          int _3028 = int(_31_m6[_1050].w);
          float3 _3029 = _3015 * _31_m6[_1035].z;
          float3 _3030 = _3029 * 0.5f;
          float3 _3031 = _3016 - _3030;
          float3 _3032 = _3016 + _3030;
          bool _3034 = (_1133 & 1u) == 0u;
          bool _3037 = _3034 || ((_1054 & 2u) != 0u);
          bool _3040 = (!_3034) && (_31_m6[_1035].z > 0.0f);
          float _3059;
          float _3060;
          if (_3040) {
            float _3044 = length(_3031);
            float _3045 = length(_3032);
            _3059 = clamp(0.5f * ((dot(_517, _3031) / _3044) + (dot(_517, _3032) / _3045)), 0.0f, 1.0f);
            _3060 = 1.0f / ((((_3044 * _3045) + dot(_3031, _3032)) * 0.5f) + 1.0f);
          } else {
            _3059 = clamp(dot(_517, _3019), 0.0f, 1.0f);
            _3060 = 1.0f;
          }
          float _3082;
          if (_31_m6[_1047].w < 0.0f) {
            float _3076 = _3017 * (_31_m6[_1032].w * _31_m6[_1032].w);
            float _3079 = clamp(1.0f - (_3076 * _3076), 0.0f, 1.0f);
            _3082 = lerp(1.0f / (_3017 + 1.0f), _3060, float(_3040)) * (_3079 * _3079);
          } else {
            float3 _3065 = _3016 * _31_m6[_1032].w;
            _3082 = _3060 * pow(1.0f - clamp(dot(_3065, _3065), 0.0f, 1.0f), _31_m6[_1047].w);
          }
          float _3088 = clamp((dot(_3019, -_3015) - _31_m6[_1035].z) * _31_m6[_1035].w, 0.0f, 1.0f);
          float _3092 = _3082 * lerp(1.0f, _3088 * _3088, float(_3034));
          float _3192;
          if ((!_3040) && (_3028 >= 0)) {
            uint _3098 = uint(_3028);
            float2 _3185;
            [branch] if (_3034) {
              float4 _3175 = mul(_51_m1[_3098], _559);
              _3185 = _51_m0[_3098].xy + (clamp(_3175.xy / _3175.w.xx, 0.0f.xx, 1.0f.xx) * _51_m0[_3098].zw);
            }
            else {
              float3 _3112 = mul(float4(-_3016, 0.0f), _51_m1[_3098]).xyz;
              float3 _385 = _3112;
              float3 _384 = _3112;
              float3 _383 = abs(_3112);
              uint _3121 = uint(int(_383.y > _383.x));
              uint _3127 = (_383.z > _383[_3121]) ? 2u : _3121;
              uint _3133 = (_3127 * 2u) + uint(_384[_3127] < 0.0f);
              float _3137 = abs(_385[_3133 / 2u]);
              float _3157 = 0.5f - (0.000244140625f / _51_m0[_3098].w);
              _3185 = _51_m0[_3098].xy + (clamp(float2((float(_3133) + ((((_385[uint(_346[_3133].x)] * _347[_3133].x) / _3137) * _3157) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_385[uint(_346[_3133].y)] * _347[_3133].y) / _3137) * _3157)), 0.0f.xx, 1.0f.xx) * _51_m0[_3098].zw);
            }
            _3192 = _3092 * _49.SampleLevel(_15, _3185, 0.0f).x;
          } else {
            _3192 = _3092;
          }
          bool _3193 = _3192 > 0.0f;
          float _3602;
          if (_3193) {
            int _3246;
            if (_3037) {
              _3246 = int(_31_m6[_1038].x);
            } else {
              uint _3201 = asuint(_31_m6[_1035].w);
              uint _3202 = asuint(_31_m6[_1038].x);
              float3 _3203 = _555 - _31_m6[_1032].xyz;
              float3 _3204 = abs(_3203);
              float _3205 = _3204.x;
              float _3206 = _3204.y;
              float _3208 = _3204.z;
              int _3241;
              if ((_3205 > _3206) && (_3205 > _3208)) {
                _3241 = int((_3203.x > 0.0f) ? (_3201 & 1023u) : ((_3201 >> 10u) & 1023u));
              } else {
                int _3233;
                if (_3206 > _3208) {
                  _3233 = int((_3203.y > 0.0f) ? ((_3201 >> 20u) & 1023u) : (_3202 & 1023u));
                } else {
                  _3233 = int((_3203.z > 0.0f) ? ((_3202 >> 10u) & 1023u) : ((_3202 >> 20u) & 1023u));
                }
                _3241 = _3233;
              }
              _3246 = (_3241 == 1023) ? (-1) : _3241;
            }
            uint _3251 = uint(_3246);
            uint _3253 = asuint(_35_m11.x) + (_3251 * 96u);
            uint _3255 = (_3253 + 64u) >> 2u;
            uint _3258 = _3255 + 1u;
            uint _3261 = _3255 + 2u;
            uint _3264 = _3255 + 3u;
            float4 _3268 = asfloat(uint4(_38.Load(_3255 * 4 + 0), _38.Load(_3258 * 4 + 0), _38.Load(_3261 * 4 + 0), _38.Load(_3264 * 4 + 0)));
            float _3600;
            do {
              uint _3284 = ((asuint(_35_m11.y) + (_3251 * 16u)) >> 2u) + 1u;
              if (_38.Load(_3284 * 4 + 0) > 0u) {
                float4 _382 = _983;
                float _3299;
                do {
                  if (_38.Load(_3284 * 4 + 0) == 0u) {
                    _3299 = 1.0f;
                    break;
                  }
                  _3299 = _382[_38.Load(_3284 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3600 = _3299;
                break;
              }
              uint _3300 = _3253 >> 2u;
              uint _3315 = (_3253 + 16u) >> 2u;
              uint _3330 = (_3253 + 32u) >> 2u;
              uint _3345 = (_3253 + 48u) >> 2u;
              float4 _3365 = mul(transpose(float4x4(asfloat(uint4(_38.Load(_3300 * 4 + 0), _38.Load((_3300 + 1u) * 4 + 0), _38.Load((_3300 + 2u) * 4 + 0), _38.Load((_3300 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_3315 * 4 + 0), _38.Load((_3315 + 1u) * 4 + 0), _38.Load((_3315 + 2u) * 4 + 0), _38.Load((_3315 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_3330 * 4 + 0), _38.Load((_3330 + 1u) * 4 + 0), _38.Load((_3330 + 2u) * 4 + 0), _38.Load((_3330 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_3345 * 4 + 0), _38.Load((_3345 + 1u) * 4 + 0), _38.Load((_3345 + 2u) * 4 + 0), _38.Load((_3345 + 3u) * 4 + 0))))), float4((_555 - ((-_3019) * _3268.x)) + (_517 * (_3268.y * 5.0f)), 1.0f));
              float3 _3369 = _3365.xyz / _3365.w.xxx;
              uint _3371 = (_3253 + 80u) >> 2u;
              float4 _3384 = asfloat(uint4(_38.Load(_3371 * 4 + 0), _38.Load((_3371 + 1u) * 4 + 0), _38.Load((_3371 + 2u) * 4 + 0), _38.Load((_3371 + 3u) * 4 + 0)));
              float2 _3385 = _3369.xy;
              float2 _3387 = _3384.xy;
              float3 _3391 = _3369.xyz;
              bool3 _3392 = bool3(_3391.x <= 0.0f.xxx.x, _3391.y <= 0.0f.xxx.y, _3391.z <= 0.0f.xxx.z);
              bool3 _3393 = bool3(_3391.x >= 1.0f.xxx.x, _3391.y >= 1.0f.xxx.y, _3391.z >= 1.0f.xxx.z);
              float _3396 = _3369.z;
              float2 _3407 = ((_3385 * (_3384.zw - _3387)) + _3387).xy * _35_m10.zw;
              float2 _3409 = floor(_3407 + 0.5f.xx);
              float2 _3410 = _3407 - _3409;
              float _3411 = _3410.x;
              float _3412 = _3411 + 0.5f;
              float _3413 = _3412 * _3412;
              float _3416 = 1.0f - _3411;
              float _3417 = min(_3411, 0.0f);
              float _3420 = _3411 + 1.0f;
              float _3421 = max(_3411, 0.0f);
              float _3432 = _3410.y;
              float _3433 = _3432 + 0.5f;
              float _3434 = _3433 * _3433;
              float _3437 = 1.0f - _3432;
              float _3438 = min(_3432, 0.0f);
              float _3441 = _3432 + 1.0f;
              float _3442 = max(_3432, 0.0f);
              float3 _3454 = float3(0.1599999964237213134765625f * _3416, 0.1599999964237213134765625f * ((_3420 - (_3421 * _3421)) + 1.0f), _3413 * 0.07999999821186065673828125f);
              float3 _3455 = float3(0.1599999964237213134765625f * ((_3413 * 0.5f) - _3411), 0.1599999964237213134765625f * ((_3416 - (_3417 * _3417)) + 1.0f), 0.1599999964237213134765625f * _3420) + _3454;
              float3 _3457 = float3(0.1599999964237213134765625f * _3437, 0.1599999964237213134765625f * ((_3441 - (_3442 * _3442)) + 1.0f), _3434 * 0.07999999821186065673828125f);
              float3 _3458 = float3(0.1599999964237213134765625f * ((_3434 * 0.5f) - _3432), 0.1599999964237213134765625f * ((_3437 - (_3438 * _3438)) + 1.0f), 0.1599999964237213134765625f * _3441) + _3457;
              float3 _3464 = ((_3454 / _3455) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.xxx;
              float3 _3466 = ((_3457 / _3458) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.yyy;
              float2 _3468 = _3409 * _35_m10.xy;
              float _3469 = _3464.x;
              float _3470 = _3466.x;
              float _3473 = _3464.y;
              float _3476 = _3464.z;
              float _3479 = _3466.y;
              float _3486 = _3466.z;
              float _3493 = _3455.x;
              float _3494 = _3458.x;
              float _3496 = _3455.y;
              float _3498 = _3455.z;
              float _3500 = _3458.y;
              float _3504 = _3458.z;
              float _3562 = (((((((_3493 * _3494) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3469, _3470), _377).xy, _3396)) + ((_3496 * _3494) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3473, _3470), _377).xy, _3396))) + ((_3498 * _3494) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3476, _3470), _377).xy, _3396))) + ((_3493 * _3500) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3469, _3479), _377).xy, _3396))) + ((_3496 * _3500) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3473, _3479), _377).xy, _3396))) + ((_3498 * _3500) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3476, _3479), _377).xy, _3396))) + ((_3493 * _3504) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3469, _3486), _377).xy, _3396));
              float4 _3585 = asfloat(uint4(_38.Load(_3255 * 4 + 0), _38.Load(_3258 * 4 + 0), _38.Load(_3261 * 4 + 0), _38.Load(_3264 * 4 + 0)));
              float _3586 = _3585.w;
              float2 _3588 = min(_3385, 1.0f.xx - _3385);
              _3600 = lerp(1.0f, (any(bool3(_3392.x || _3393.x, _3392.y || _3393.y, _3392.z || _3393.z)) || ((asuint(_3396) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3562 + ((_3496 * _3504) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3473, _3486), _377).xy, _3396))) + ((_3498 * _3504) * _36.SampleCmpLevelZero(_18, float3(_3468 + float2(_3476, _3486), _377).xy, _3396))), _3037 ? min(_3586, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3585.z - _3365.w) * 0.25f, min(_3588.x, _3588.y)))) : _3586);
              break;
            } while (false);
            _3602 = (_3246 >= 0) ? _3600 : 1.0f;
          } else {
            _3602 = 1.0f;
          }
          float3 _3626;
          float3 _3627;
          if (_3040) {
            float3 _3605 = _2994 * _2994;
            float3 _3606 = reflect(_583, _517);
            float _3615 = dot(_3606, _3029);
            _3626 = _3605 / clamp(_3605 + (0.5f * clamp(_31_m6[_1035].z * _3018, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3627 = normalize(_3031 + (_3029 * clamp(dot(_3031, (_3606 * _3615) - _3029) / ((_31_m6[_1035].z * _31_m6[_1035].z) - (_3615 * _3615)), 0.0f, 1.0f)));
          } else {
            _3626 = 1.0f.xxx;
            _3627 = _3019;
          }
          float3 _3628 = _3627 + _581;
          float3 _3632 = _3628 * rsqrt(max(6.103515625e-05f, dot(_3628, _3628)));
          float3 _3895;
          if (_3193) {
            float _3636 = clamp(_3059, 0.0f, 1.0f);
            float _3638 = clamp(dot(_517, _3632), 0.0f, 1.0f);
            float _3640 = clamp(dot(_581, _3632), 0.0f, 1.0f);
            float _3642 = clamp(_609, 0.0f, 1.0f);
            float3 _3840;
            float3 _3841;
            [branch] if (_527) {
              float _3758 = _606 * _606;
              float _3768;
              if (_3023 > 0.0f) {
                _3768 = clamp(_3758 + ((_3023 * _3023) / ((_3640 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3768 = _3758;
              }
              float _3769 = _3768 * _3768;
              float _3790 = (((_3638 * _3769) - _3638) * _3638) + 1.0f;
              float _3795 = 1.0f - _3640;
              float _3796 = _3795 * _3795;
              float _3798 = (_3795 * _3796) * _3796;
              float _3822 = 1.0f - _606;
              float _3829 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3822 * (1.04997003078460693359375f + (_3822 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3822))))));
              float _3830 = 1.0f - _3829;
              _3840 = 0.0f.xxx;
              _3841 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3798)) + _3798.xxx) * (((_3769 / (_3790 * _3790)) * _3626.y) * (0.5f / (((_3636 * sqrt(((((-_3642) * _3769) + _3642) * _3642) + _3769)) + (_3642 * sqrt(((((-_3636) * _3769) + _3636) * _3636) + _3769))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_3642, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_3636, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3829) / _3830)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _3830)));
            }
            else {
              float _3646 = _606 * _606;
              float _3656;
              if (_3023 > 0.0f) {
                _3656 = clamp(_3646 + ((_3023 * _3023) / ((_3640 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3656 = _3646;
              }
              float _3657 = _3656 * _3656;
              float _3678 = (((_3638 * _3657) - _3638) * _3638) + 1.0f;
              float _3683 = 1.0f - _3640;
              float _3684 = _3683 * _3683;
              float _3686 = (_3683 * _3684) * _3684;
              float _3710 = 1.0f - _606;
              float _3717 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3710 * (1.04997003078460693359375f + (_3710 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3710))))));
              float _3718 = 1.0f - _3717;
              float _3741 = clamp(1.0f - _522, 0.0f, 1.0f);
              float _3749 = clamp((dot(_517, _3627) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
              _3840 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_520, _521, _522).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _521.xxx) * _522) * lerp((_519 * lerp(1.0f, (_3749 * sqrt(_3749)) * 1.66666662693023681640625f, _3741)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_581, _3627), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3741));
              _3841 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3686)) + _3686.xxx) * (((_3657 / (_3678 * _3678)) * _3626.y) * (0.5f / (((_3636 * sqrt(((((-_3642) * _3657) + _3642) * _3642) + _3657)) + (_3642 * sqrt(((((-_3636) * _3657) + _3636) * _3636) + _3657))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_43.SampleLevel(_15, (float2(_3642, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x * _43.SampleLevel(_15, (float2(_3636, _606) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3717) / _3718)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _3718)));
            }
            float3 _3843 = _608 * _3626.z;
            float3 _3848 = ((_31_m6[_1029].xyz * _3192) * _3602) * _1129;
            float3 _3849 = clamp(_3841 * _31_m6[_1050].z, 0.0f.xxx, 1000.0f.xxx) * _3059;
            float3 _3894;
            [branch] if (_527) {
              float3 _3889;
              do {
                [branch] if (((_525 > 0u) && (_525 <= 15u)) && (_526 > 0.0f)) {
                  int _3868 = int(clamp(_525 - 1u, 0u, 14u));
                  _3889 = _44.SampleLevel(_15, float3((dot(normalize(lerp(_517, _524, dot(_47_m0[_3868].xyz, 0.3333333432674407958984375f.xxx).xxx)), _3627) * 0.5f) + 0.5f, _526 * _47_m0[_3868].w, float(_3868)), 0.0f).xyz;
                  break;
                }
                _3889 = _3059.xxx;
                break;
              } while (false);
              _3894 = _3848 * (((_3843 * _3889) + _3849) + _3840);
            }
            else {
              _3894 = ((_3849 + _3840) + (_3843 * _3059)) * _3848;
            }
            _3895 = _3894;
          } else {
            _3895 = 0.0f.xxx;
          }
          _3896 = _989;
          _3897 = _3895;
        } else {
          float _2992;
          do {
            if (_1136) {
              _2992 = 1.0f;
              break;
            }
            float _2406 = (0.5f + (0.5f * _31_m6[_1035].y)) - abs(_31_m6[_1035].x);
            float _2407 = _31_m6[_1035].y - _2406;
            float _2414 = abs(max((1.0f - abs(_2406)) - abs(_2407), 0.00048828125f));
            float3 _2418 = normalize(float3(_2406, _2407, (_31_m6[_1035].x >= 0.0f) ? _2414 : (-_2414)));
            float3 _2419 = _31_m6[_1032].xyz - _555;
            float _2420 = dot(_2419, _2419);
            float3 _2422 = _2419 * rsqrt(_2420);
            int _2425 = int(_31_m6[_1050].w);
            float3 _2427 = (_2418 * _31_m6[_1035].z) * 0.5f;
            float3 _2428 = _2419 - _2427;
            float3 _2429 = _2419 + _2427;
            bool _2431 = (_1133 & 1u) == 0u;
            bool _2434 = _2431 || ((_1054 & 2u) != 0u);
            bool _2437 = (!_2431) && (_31_m6[_1035].z > 0.0f);
            float _2449;
            if (_2437) {
              _2449 = 1.0f / ((((length(_2428) * length(_2429)) + dot(_2428, _2429)) * 0.5f) + 1.0f);
            } else {
              _2449 = 1.0f;
            }
            float _2471;
            if (_31_m6[_1047].w < 0.0f) {
              float _2465 = _2420 * (_31_m6[_1032].w * _31_m6[_1032].w);
              float _2468 = clamp(1.0f - (_2465 * _2465), 0.0f, 1.0f);
              _2471 = lerp(1.0f / (_2420 + 1.0f), _2449, float(_2437)) * (_2468 * _2468);
            } else {
              float3 _2454 = _2419 * _31_m6[_1032].w;
              _2471 = _2449 * pow(1.0f - clamp(dot(_2454, _2454), 0.0f, 1.0f), _31_m6[_1047].w);
            }
            float _2477 = clamp((dot(_2422, -_2418) - _31_m6[_1035].z) * _31_m6[_1035].w, 0.0f, 1.0f);
            float _2481 = _2471 * lerp(1.0f, _2477 * _2477, float(_2431));
            float _2581;
            if ((!_2437) && (_2425 >= 0)) {
              uint _2487 = uint(_2425);
              float2 _2574;
              [branch] if (_2431) {
                float4 _2564 = mul(_51_m1[_2487], _559);
                _2574 = _51_m0[_2487].xy + (clamp(_2564.xy / _2564.w.xx, 0.0f.xx, 1.0f.xx) * _51_m0[_2487].zw);
              }
              else {
                float3 _2501 = mul(float4(-_2419, 0.0f), _51_m1[_2487]).xyz;
                float3 _389 = _2501;
                float3 _388 = _2501;
                float3 _387 = abs(_2501);
                uint _2510 = uint(int(_387.y > _387.x));
                uint _2516 = (_387.z > _387[_2510]) ? 2u : _2510;
                uint _2522 = (_2516 * 2u) + uint(_388[_2516] < 0.0f);
                float _2526 = abs(_389[_2522 / 2u]);
                float _2546 = 0.5f - (0.000244140625f / _51_m0[_2487].w);
                _2574 = _51_m0[_2487].xy + (clamp(float2((float(_2522) + ((((_389[uint(_346[_2522].x)] * _347[_2522].x) / _2526) * _2546) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_389[uint(_346[_2522].y)] * _347[_2522].y) / _2526) * _2546)), 0.0f.xx, 1.0f.xx) * _51_m0[_2487].zw);
              }
              _2581 = _2481 * _49.SampleLevel(_15, _2574, 0.0f).x;
            } else {
              _2581 = _2481;
            }
            float _2991;
            if (_2581 > 0.0f) {
              int _2635;
              if (_2434) {
                _2635 = int(_31_m6[_1038].x);
              } else {
                uint _2590 = asuint(_31_m6[_1035].w);
                uint _2591 = asuint(_31_m6[_1038].x);
                float3 _2592 = _555 - _31_m6[_1032].xyz;
                float3 _2593 = abs(_2592);
                float _2594 = _2593.x;
                float _2595 = _2593.y;
                float _2597 = _2593.z;
                int _2630;
                if ((_2594 > _2595) && (_2594 > _2597)) {
                  _2630 = int((_2592.x > 0.0f) ? (_2590 & 1023u) : ((_2590 >> 10u) & 1023u));
                } else {
                  int _2622;
                  if (_2595 > _2597) {
                    _2622 = int((_2592.y > 0.0f) ? ((_2590 >> 20u) & 1023u) : (_2591 & 1023u));
                  } else {
                    _2622 = int((_2592.z > 0.0f) ? ((_2591 >> 10u) & 1023u) : ((_2591 >> 20u) & 1023u));
                  }
                  _2630 = _2622;
                }
                _2635 = (_2630 == 1023) ? (-1) : _2630;
              }
              uint _2640 = uint(_2635);
              uint _2642 = asuint(_35_m11.x) + (_2640 * 96u);
              uint _2644 = (_2642 + 64u) >> 2u;
              uint _2647 = _2644 + 1u;
              uint _2650 = _2644 + 2u;
              uint _2653 = _2644 + 3u;
              float4 _2657 = asfloat(uint4(_38.Load(_2644 * 4 + 0), _38.Load(_2647 * 4 + 0), _38.Load(_2650 * 4 + 0), _38.Load(_2653 * 4 + 0)));
              float _2989;
              do {
                uint _2673 = ((asuint(_35_m11.y) + (_2640 * 16u)) >> 2u) + 1u;
                if (_38.Load(_2673 * 4 + 0) > 0u) {
                  float4 _386 = _983;
                  float _2688;
                  do {
                    if (_38.Load(_2673 * 4 + 0) == 0u) {
                      _2688 = 1.0f;
                      break;
                    }
                    _2688 = _386[_38.Load(_2673 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2989 = _2688;
                  break;
                }
                uint _2689 = _2642 >> 2u;
                uint _2704 = (_2642 + 16u) >> 2u;
                uint _2719 = (_2642 + 32u) >> 2u;
                uint _2734 = (_2642 + 48u) >> 2u;
                float4 _2754 = mul(transpose(float4x4(asfloat(uint4(_38.Load(_2689 * 4 + 0), _38.Load((_2689 + 1u) * 4 + 0), _38.Load((_2689 + 2u) * 4 + 0), _38.Load((_2689 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2704 * 4 + 0), _38.Load((_2704 + 1u) * 4 + 0), _38.Load((_2704 + 2u) * 4 + 0), _38.Load((_2704 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2719 * 4 + 0), _38.Load((_2719 + 1u) * 4 + 0), _38.Load((_2719 + 2u) * 4 + 0), _38.Load((_2719 + 3u) * 4 + 0))), asfloat(uint4(_38.Load(_2734 * 4 + 0), _38.Load((_2734 + 1u) * 4 + 0), _38.Load((_2734 + 2u) * 4 + 0), _38.Load((_2734 + 3u) * 4 + 0))))), float4((_555 - ((-_2422) * _2657.x)) + (_517 * (_2657.y * 5.0f)), 1.0f));
                float3 _2758 = _2754.xyz / _2754.w.xxx;
                uint _2760 = (_2642 + 80u) >> 2u;
                float4 _2773 = asfloat(uint4(_38.Load(_2760 * 4 + 0), _38.Load((_2760 + 1u) * 4 + 0), _38.Load((_2760 + 2u) * 4 + 0), _38.Load((_2760 + 3u) * 4 + 0)));
                float2 _2774 = _2758.xy;
                float2 _2776 = _2773.xy;
                float3 _2780 = _2758.xyz;
                bool3 _2781 = bool3(_2780.x <= 0.0f.xxx.x, _2780.y <= 0.0f.xxx.y, _2780.z <= 0.0f.xxx.z);
                bool3 _2782 = bool3(_2780.x >= 1.0f.xxx.x, _2780.y >= 1.0f.xxx.y, _2780.z >= 1.0f.xxx.z);
                float _2785 = _2758.z;
                float2 _2796 = ((_2774 * (_2773.zw - _2776)) + _2776).xy * _35_m10.zw;
                float2 _2798 = floor(_2796 + 0.5f.xx);
                float2 _2799 = _2796 - _2798;
                float _2800 = _2799.x;
                float _2801 = _2800 + 0.5f;
                float _2802 = _2801 * _2801;
                float _2805 = 1.0f - _2800;
                float _2806 = min(_2800, 0.0f);
                float _2809 = _2800 + 1.0f;
                float _2810 = max(_2800, 0.0f);
                float _2821 = _2799.y;
                float _2822 = _2821 + 0.5f;
                float _2823 = _2822 * _2822;
                float _2826 = 1.0f - _2821;
                float _2827 = min(_2821, 0.0f);
                float _2830 = _2821 + 1.0f;
                float _2831 = max(_2821, 0.0f);
                float3 _2843 = float3(0.1599999964237213134765625f * _2805, 0.1599999964237213134765625f * ((_2809 - (_2810 * _2810)) + 1.0f), _2802 * 0.07999999821186065673828125f);
                float3 _2844 = float3(0.1599999964237213134765625f * ((_2802 * 0.5f) - _2800), 0.1599999964237213134765625f * ((_2805 - (_2806 * _2806)) + 1.0f), 0.1599999964237213134765625f * _2809) + _2843;
                float3 _2846 = float3(0.1599999964237213134765625f * _2826, 0.1599999964237213134765625f * ((_2830 - (_2831 * _2831)) + 1.0f), _2823 * 0.07999999821186065673828125f);
                float3 _2847 = float3(0.1599999964237213134765625f * ((_2823 * 0.5f) - _2821), 0.1599999964237213134765625f * ((_2826 - (_2827 * _2827)) + 1.0f), 0.1599999964237213134765625f * _2830) + _2846;
                float3 _2853 = ((_2843 / _2844) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.xxx;
                float3 _2855 = ((_2846 / _2847) + float3(-2.5f, -0.5f, 1.5f)) * _35_m10.yyy;
                float2 _2857 = _2798 * _35_m10.xy;
                float _2858 = _2853.x;
                float _2859 = _2855.x;
                float _2862 = _2853.y;
                float _2865 = _2853.z;
                float _2868 = _2855.y;
                float _2875 = _2855.z;
                float _2882 = _2844.x;
                float _2883 = _2847.x;
                float _2885 = _2844.y;
                float _2887 = _2844.z;
                float _2889 = _2847.y;
                float _2893 = _2847.z;
                float _2951 = (((((((_2882 * _2883) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2858, _2859), _377).xy, _2785)) + ((_2885 * _2883) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2862, _2859), _377).xy, _2785))) + ((_2887 * _2883) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2865, _2859), _377).xy, _2785))) + ((_2882 * _2889) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2858, _2868), _377).xy, _2785))) + ((_2885 * _2889) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2862, _2868), _377).xy, _2785))) + ((_2887 * _2889) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2865, _2868), _377).xy, _2785))) + ((_2882 * _2893) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2858, _2875), _377).xy, _2785));
                float4 _2974 = asfloat(uint4(_38.Load(_2644 * 4 + 0), _38.Load(_2647 * 4 + 0), _38.Load(_2650 * 4 + 0), _38.Load(_2653 * 4 + 0)));
                float _2975 = _2974.w;
                float2 _2977 = min(_2774, 1.0f.xx - _2774);
                _2989 = lerp(1.0f, (any(bool3(_2781.x || _2782.x, _2781.y || _2782.y, _2781.z || _2782.z)) || ((asuint(_2785) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2951 + ((_2885 * _2893) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2862, _2875), _377).xy, _2785))) + ((_2887 * _2893) * _36.SampleCmpLevelZero(_18, float3(_2857 + float2(_2865, _2875), _377).xy, _2785))), _2434 ? min(_2975, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2974.z - _2754.w) * 0.25f, min(_2977.x, _2977.y)))) : _2975);
                break;
              } while (false);
              _2991 = (_2635 >= 0) ? _2989 : 1.0f;
            } else {
              _2991 = 1.0f;
            }
            _2992 = _2991;
            break;
          } while (false);
          _3896 = _989 * _2992;
          _3897 = 0.0f.xxx;
        }
        _3898 = _3896;
        _3899 = _3897;
        break;
      } while (false);
      _1014 = _3898;
      _1017 = _1016 + _3899;
    }
    _986 = _985 + _1016;
  }
  float3 _3903 = _954.xyz + (_985 * _988);
  float3 _3905 = _519.xxx;
  float3 _3940;
  float3 _3941;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x89243139:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3916 = min(_23.SampleBias(_14, _4, _9_m16).x, _519);
    _3940 = clamp((pow(abs(_610 + _3916), exp2(((-16.0f) * _606) - 1.0f)) - 1.0f) + _3916, 0.0f, 1.0f).xxx;
    _3941 = max(_3916.xxx, ((((((_608 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3916) + ((_608 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3916) + ((_608 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3916);
  }
  else {
    _3940 = _3905;
    _3941 = _3905;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3903 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3940 : 1.0f.xxx;
  // RenoDX code end
  float3 _5796;
  [branch] if (_527) {
    float3 _4885;
    do {
      [branch] if (((_525 > 0u) && (_525 <= 15u)) && (_526 > 0.0f)) {
        uint _4873 = clamp(_525 - 1u, 0u, 14u);
        _4885 = _45.SampleLevel(_15, float3(_526 * _47_m0[_4873].w, 0.5f, float(_4873)), 0.0f).xyz;
        break;
      }
      _4885 = 1.0f.xxx;
      break;
    } while (false);
    float3 _4902 = (_555 + (_517 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_530 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _4912 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _4921 = _4902 - (_9_m108.xyz + (_4912 * (-_9_m110.w)));
    float _4936 = max(min(max((max(abs(_4921.x), abs(_4921.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4921.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _5238;
    float4 _5239;
    float4 _5240;
    float _5241;
    float _5242;
    if ((_9_m108.w != 0.0f) && (_4936 < 1.0f)) {
      float3 _4949 = _4902 - (_9_m108.xyz + (_4912 * (-_9_m110.y)));
      float _4963 = max(clamp((max(abs(_4949.x), abs(_4949.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4949.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _5039;
      float4 _5040;
      float4 _5041;
      float4 _5042;
      if (_4963 < 1.0f) {
        float3 _4972 = ((_4902 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4974 = _4972 - floor(_4972);
        float4 _4978 = _61.SampleLevel(_16, _4974, 0.0f);
        float _4979 = 1.0f - _4963;
        float _4983 = _9_m109.y * 0.5f;
        float _4988 = _4974.x;
        float _4989 = clamp(_4974.y, _4983, 1.0f - _4983) * 0.3333333432674407958984375f;
        float _4990 = _4974.z;
        float4 _4993 = _62.SampleLevel(_15, float3(_4988, _4989, _4990), 0.0f);
        float _5009 = _4978.x;
        float _5019 = _4978.y;
        float _5029 = _4978.z;
        _5039 = _4936 + (_4993.w * _4979);
        _5040 = float4(((_62.SampleLevel(_15, float3(_4988, _4989 + 0.666666686534881591796875f, _4990), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5029, _5029) * _4979;
        _5041 = float4(((_62.SampleLevel(_15, float3(_4988, _4989 + 0.3333333432674407958984375f, _4990), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5019, _5019) * _4979;
        _5042 = float4(((_4993.xyz * 4.0f) - 2.0f.xxx) * _5009, _5009) * _4979;
      } else {
        _5039 = _4936;
        _5040 = 0.0f.xxxx;
        _5041 = 0.0f.xxxx;
        _5042 = 0.0f.xxxx;
      }
      float3 _5048 = _4902 - (_9_m108.xyz + (_4912 * (-_9_m110.z)));
      float _5062 = max(clamp((max(abs(_5048.x), abs(_5048.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_5048.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _5142;
      float4 _5143;
      float4 _5144;
      float4 _5145;
      if (_5062 < 1.0f) {
        float3 _5071 = ((_4902 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5073 = _5071 - floor(_5071);
        float4 _5077 = _63.SampleLevel(_16, _5073, 0.0f);
        float _5079 = _4963 * (1.0f - _5062);
        float _5083 = _9_m109.y * 0.5f;
        float _5088 = _5073.x;
        float _5089 = clamp(_5073.y, _5083, 1.0f - _5083) * 0.3333333432674407958984375f;
        float _5090 = _5073.z;
        float4 _5093 = _64.SampleLevel(_15, float3(_5088, _5089, _5090), 0.0f);
        float _5109 = _5077.x;
        float _5120 = _5077.y;
        float _5131 = _5077.z;
        _5142 = _5039 + (_5093.w * _5079);
        _5143 = _5040 + (float4(((_64.SampleLevel(_15, float3(_5088, _5089 + 0.666666686534881591796875f, _5090), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5131, _5131) * _5079);
        _5144 = _5041 + (float4(((_64.SampleLevel(_15, float3(_5088, _5089 + 0.3333333432674407958984375f, _5090), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5120, _5120) * _5079);
        _5145 = _5042 + (float4(((_5093.xyz * 4.0f) - 2.0f.xxx) * _5109, _5109) * _5079);
      } else {
        _5142 = _5039;
        _5143 = _5040;
        _5144 = _5041;
        _5145 = _5042;
      }
      float4 _5228;
      float4 _5229;
      float4 _5230;
      float _5231;
      if (_5062 > 0.0f) {
        float3 _5154 = ((_4902 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5157 = _9_m109.xyz * 0.5f;
        float3 _5159 = clamp(_5154 - floor(_5154), _5157, 1.0f.xxx - _5157);
        float4 _5163 = _65.SampleLevel(_16, _5159, 0.0f);
        float _5165 = _5062 * (1.0f - _4936);
        float _5169 = _9_m109.y * 0.5f;
        float _5174 = _5159.x;
        float _5175 = clamp(_5159.y, _5169, 1.0f - _5169) * 0.3333333432674407958984375f;
        float _5176 = _5159.z;
        float4 _5179 = _66.SampleLevel(_15, float3(_5174, _5175, _5176), 0.0f);
        float _5195 = _5163.x;
        float _5206 = _5163.y;
        float _5217 = _5163.z;
        _5228 = _5143 + (float4(((_66.SampleLevel(_15, float3(_5174, _5175 + 0.666666686534881591796875f, _5176), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5217, _5217) * _5165);
        _5229 = _5144 + (float4(((_66.SampleLevel(_15, float3(_5174, _5175 + 0.3333333432674407958984375f, _5176), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5206, _5206) * _5165);
        _5230 = _5145 + (float4(((_5179.xyz * 4.0f) - 2.0f.xxx) * _5195, _5195) * _5165);
        _5231 = _5142 + (_5179.w * _5165);
      } else {
        _5228 = _5143;
        _5229 = _5144;
        _5230 = _5145;
        _5231 = _5142;
      }
      float _5234 = clamp((_5231 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _5238 = _5228;
      _5239 = _5229;
      _5240 = _5230;
      _5241 = _5234 - _4936;
      _5242 = (_5234 + _4936) * 0.5f;
    } else {
      _5238 = 0.0f.xxxx;
      _5239 = 0.0f.xxxx;
      _5240 = 0.0f.xxxx;
      _5241 = 0.0f;
      _5242 = 1.0f;
    }
    float4 _5262 = _5240 + float4(_9_m111.x * _5242, (_9_m111.y * _5242) + ((_9_m111.w * _5241) * 0.5f), _9_m111.z * _5242, (_9_m111.w * _5242) + ((_9_m111.y * _5241) * 0.375f));
    float4 _5282 = _5239 + float4(_9_m112.x * _5242, (_9_m112.y * _5242) + ((_9_m112.w * _5241) * 0.5f), _9_m112.z * _5242, (_9_m112.w * _5242) + ((_9_m112.y * _5241) * 0.375f));
    float4 _5302 = _5238 + float4(_9_m113.x * _5242, (_9_m113.y * _5242) + ((_9_m113.w * _5241) * 0.5f), _9_m113.z * _5242, (_9_m113.w * _5242) + ((_9_m113.y * _5241) * 0.375f));
    float4 _5460;
    float4 _5461;
    float4 _5462;
    [branch] if (all(bool2(_543.x >= 0.0f.xx.x, _543.y >= 0.0f.xx.y))) {
      float4 _5310 = _60.SampleLevel(_15, _543, 0.0f);
      float4 _5311 = abs(_5310);
      float4 _5457;
      float4 _5458;
      float4 _5459;
      [branch] if (any(bool4(_5311.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _5311.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _5311.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _5311.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _5317 = length(_5310.yzw);
        uint _5319;
        float _5322;
        _5319 = 0u;
        _5322 = 1.0f;
        for (float _5324 = _5317; _5324 > 4.599999904632568359375f;) {
          _5319++;
          _5322 *= 0.5f;
          _5324 *= 0.5f;
          continue;
        }
        float4 _5328 = _5310 * _5322;
        float4 _5333 = float4(0.0f, _5328.yzw);
        float2 _5355 = (_59.SampleLevel(_15, float2(((((length(_5333) * _58_m3.x) + _58_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _58_m2.xy) + _58_m2.zw;
        float4 _5369;
        _5369 = float4(_5355.x * 3.5449078083038330078125f, _5333.yzw * _5355.y) * exp(_5328.x * 0.282094776630401611328125f);
        for (uint _5372 = 0u; _5372 < _5319;) {
          _5369 = mul(float4x4(_5369, float4(_5369.yx, 0.0f, 0.0f), float4(_5369.z, 0.0f, _5369.x, 0.0f), float4(_5369.w, 0.0f, 0.0f, _5369.x)) * 0.282094776630401611328125f, _5369);
          _5372++;
          continue;
        }
        float4x4 _5393 = float4x4(_5369, float4(_5369.yx, 0.0f, 0.0f), float4(_5369.z, 0.0f, _5369.x, 0.0f), float4(_5369.w, 0.0f, 0.0f, _5369.x)) * 0.282094776630401611328125f;
        float4 _5403 = mul(_5393, float4(_5262.w * 1.1283791065216064453125f, _5262.y * (-0.977204978466033935546875f), _5262.z * 0.977204978466033935546875f, _5262.x * (-0.977204978466033935546875f)));
        float4 _5423 = mul(_5393, float4(_5282.w * 1.1283791065216064453125f, _5282.y * (-0.977204978466033935546875f), _5282.z * 0.977204978466033935546875f, _5282.x * (-0.977204978466033935546875f)));
        float4 _5443 = mul(_5393, float4(_5302.w * 1.1283791065216064453125f, _5302.y * (-0.977204978466033935546875f), _5302.z * 0.977204978466033935546875f, _5302.x * (-0.977204978466033935546875f)));
        _5457 = float4(_5403.x * 0.886226952075958251953125f, _5403.w * (-1.02332675457000732421875f), _5403.y * (-1.02332675457000732421875f), _5403.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5458 = float4(_5423.x * 0.886226952075958251953125f, _5423.w * (-1.02332675457000732421875f), _5423.y * (-1.02332675457000732421875f), _5423.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5459 = float4(_5443.x * 0.886226952075958251953125f, _5443.w * (-1.02332675457000732421875f), _5443.y * (-1.02332675457000732421875f), _5443.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _5457 = _5262;
        _5458 = _5282;
        _5459 = _5302;
      }
      _5460 = _5457;
      _5461 = _5458;
      _5462 = _5459;
    }
    else {
      _5460 = _5262;
      _5461 = _5282;
      _5462 = _5302;
    }
    float _5469 = max(0.0f, dot(_5460.xyz * _4885.x, _517) + _5460.w);
    float _5476 = max(0.0f, dot(_5461.xyz * _4885.y, _517) + _5461.w);
    float _5483 = max(0.0f, dot(_5462.xyz * _4885.z, _517) + _5462.w);
    float3 _5493 = reflect(_583, _517);
    float _5501 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_606, 0.001000000047497451305389404296875f))));
    float2 _5505 = floor(_530 * _29_m0.w);
    float _5522 = floor(_562 - _29_m2.y);
    float _5526 = clamp(_5522, 0.0f, _29_m1.x - 1.0f);
    uint _5536 = (_5522 <= _5526) ? (_26.Load(uint(_9_m21.z + int(_5505.x + (_5505.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_5526)) * 4 + 0)) : 0u;
    float _5539 = dot(float4(_5469, _5476, _5483, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _5541;
    float _5544;
    uint _5546;
    _5541 = 0.0f.xxx;
    _5544 = 1.0f;
    _5546 = _5536;
    uint _5547;
    float3 _5542;
    float _5545;
    bool _5549;
    [loop] for (;;) {
      bool _5548 = _5546 != 0u;
      _5549 = _5544 > 0.00999999977648258209228515625f;
      if (_5548 && _5549) {
        uint _5553 = firstbitlow(_5546);
        _5547 = _5546 ^ (1u << (_5553 & 31u));
        float3 _5573 = float3(dot(_29_m4[_5553]._m2, _559), dot(_29_m4[_5553]._m3, _559), dot(_29_m4[_5553]._m4, _559));
        float3 _5574 = abs(_5573);
        if (all(bool3(_5574.x <= _29_m4[_5553]._m1.xyz.x, _5574.y <= _29_m4[_5553]._m1.xyz.y, _5574.z <= _29_m4[_5553]._m1.xyz.z))) {
          float3 _5583 = _29_m4[_5553]._m1.xyz * 0.100000001490116119384765625f;
          float3 _5585 = _5574 * 0.100000001490116119384765625f;
          float3 _5586 = _5585 * _5585;
          float3 _5589 = (_29_m4[_5553]._m1.xyz - _5574) * _29_m4[_5553]._m5.xyz;
          float3 _5637;
          [branch] if (_29_m4[_5553]._m6.x == 1.0f) {
            float3 _5622 = float3(dot(_29_m4[_5553]._m2.xyz, _5493), dot(_29_m4[_5553]._m3.xyz, _5493), dot(_29_m4[_5553]._m4.xyz, _5493));
            float3 _5624 = (_29_m4[_5553]._m1.xyz - _5573) / _5622;
            float3 _5627 = ((-_29_m4[_5553]._m1.xyz) - _5573) / _5622;
            bool3 _5628 = bool3(_5622.x > 0.0f.xxx.x, _5622.y > 0.0f.xxx.y, _5622.z > 0.0f.xxx.z);
            float3 _5629 = float3(_5628.x ? _5624.x : _5627.x, _5628.y ? _5624.y : _5627.y, _5628.z ? _5624.z : _5627.z);
            _5637 = _5573 + (_5622 * min(min(_5629.x, _5629.y), _5629.z));
          }
          else {
            _5637 = _5493;
          }
          float3 _5638 = normalize(_5637);
          float3 _5641 = float3(int3(sign(_5638)));
          float3 _5644 = _5638 / dot(_5638, _5641).xxx;
          float3 _5658;
          if (_5644.z < 0.0f) {
            float3 _5649 = abs(_5644);
            float2 _5656 = _5641.xy * float2(1.0f - _5649.y, 1.0f - _5649.x);
            _5658 = float3(_5656.x, _5656.y, _5644.z);
          } else {
            _5658 = _5644;
          }
          float _5683 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_5553]._m0, float4(_517, 1.0f))));
          float _5696 = clamp((min(_5589.x, min(_5589.y, _5589.z)) * _29_m4[_5553]._m6.y) + ((((((_5583 * _5583).x - ((_5586.x + _5586.y) + _5586.z)) * _29_m4[_5553]._m5.x) * _29_m4[_5553]._m5.x) * (1.0f - _29_m4[_5553]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_5553]._m6.w;
          _5542 = _5541 + ((((_24.SampleLevel(_17, float3((((_5658.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_5553]._m1.w), _5501).xyz * _29_m4[_5553]._m5.w) * ((((((clamp(abs(_5539 / _5683), 0.0f, 1.0f) * 2.0f) + _5539) / (2.0f + _5683)) - 1.0f) * _9_m23.w) + 1.0f)) * _5696) * _5544);
          _5545 = _5544 * (1.0f - _5696);
        } else {
          _5542 = _5541;
          _5545 = _5544;
        }
        _5541 = _5542;
        _5544 = _5545;
        _5546 = _5547;
        continue;
      } else {
        break;
      }
    }
    float3 _5765;
    if (_5549) {
      float3 _5704 = normalize(_5493);
      float3 _5707 = float3(int3(sign(_5704)));
      float3 _5710 = _5704 / dot(_5704, _5707).xxx;
      float3 _5724;
      if (_5710.z < 0.0f) {
        float3 _5715 = abs(_5710);
        float2 _5722 = _5707.xy * float2(1.0f - _5715.y, 1.0f - _5715.x);
        _5724 = float3(_5722.x, _5722.y, _5710.z);
      } else {
        _5724 = _5710;
      }
      float _5751 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_517, 1.0f))));
      _5765 = _5541 + ((_24.SampleLevel(_17, float3((((_5724.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _5501).xyz * ((((((clamp(abs(_5539 / _5751), 0.0f, 1.0f) * 2.0f) + _5539) / (2.0f + _5751)) - 1.0f) * _9_m23.w) + 1.0f)) * _5544);
    } else {
      _5765 = _5541;
    }
    float3 _5771 = (_5765 * _9_m23.z) * _9_m22.y;
    float3 _5792;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _5786 = _22.SampleBias(_15, _4, _9_m16);
      float _5787 = _5786.x;
      _5792 = (_21.SampleBias(_15, _4, _9_m16).xyz * _5787) + (_5771 * (1.0f - _5787));
    }
    else {
      _5792 = _5771;
    }
    _5796 = (((float3(_5469, _5476, _5483) * _608) * _9_m22.x) * _3941) + ((_5792 * _628) * _3940);
  }
  else {
    float3 _3961 = (_555 + (_517 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_530 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _3971 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _3980 = _3961 - (_9_m108.xyz + (_3971 * (-_9_m110.w)));
    float _3995 = max(min(max((max(abs(_3980.x), abs(_3980.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3980.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _4297;
    float4 _4298;
    float4 _4299;
    float _4300;
    float _4301;
    if ((_9_m108.w != 0.0f) && (_3995 < 1.0f)) {
      float3 _4008 = _3961 - (_9_m108.xyz + (_3971 * (-_9_m110.y)));
      float _4022 = max(clamp((max(abs(_4008.x), abs(_4008.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4008.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _4098;
      float4 _4099;
      float4 _4100;
      float4 _4101;
      if (_4022 < 1.0f) {
        float3 _4031 = ((_3961 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4033 = _4031 - floor(_4031);
        float4 _4037 = _61.SampleLevel(_16, _4033, 0.0f);
        float _4038 = 1.0f - _4022;
        float _4042 = _9_m109.y * 0.5f;
        float _4047 = _4033.x;
        float _4048 = clamp(_4033.y, _4042, 1.0f - _4042) * 0.3333333432674407958984375f;
        float _4049 = _4033.z;
        float4 _4052 = _62.SampleLevel(_15, float3(_4047, _4048, _4049), 0.0f);
        float _4068 = _4037.x;
        float _4078 = _4037.y;
        float _4088 = _4037.z;
        _4098 = _3995 + (_4052.w * _4038);
        _4099 = float4(((_62.SampleLevel(_15, float3(_4047, _4048 + 0.666666686534881591796875f, _4049), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4088, _4088) * _4038;
        _4100 = float4(((_62.SampleLevel(_15, float3(_4047, _4048 + 0.3333333432674407958984375f, _4049), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4078, _4078) * _4038;
        _4101 = float4(((_4052.xyz * 4.0f) - 2.0f.xxx) * _4068, _4068) * _4038;
      } else {
        _4098 = _3995;
        _4099 = 0.0f.xxxx;
        _4100 = 0.0f.xxxx;
        _4101 = 0.0f.xxxx;
      }
      float3 _4107 = _3961 - (_9_m108.xyz + (_3971 * (-_9_m110.z)));
      float _4121 = max(clamp((max(abs(_4107.x), abs(_4107.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4107.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _4201;
      float4 _4202;
      float4 _4203;
      float4 _4204;
      if (_4121 < 1.0f) {
        float3 _4130 = ((_3961 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4132 = _4130 - floor(_4130);
        float4 _4136 = _63.SampleLevel(_16, _4132, 0.0f);
        float _4138 = _4022 * (1.0f - _4121);
        float _4142 = _9_m109.y * 0.5f;
        float _4147 = _4132.x;
        float _4148 = clamp(_4132.y, _4142, 1.0f - _4142) * 0.3333333432674407958984375f;
        float _4149 = _4132.z;
        float4 _4152 = _64.SampleLevel(_15, float3(_4147, _4148, _4149), 0.0f);
        float _4168 = _4136.x;
        float _4179 = _4136.y;
        float _4190 = _4136.z;
        _4201 = _4098 + (_4152.w * _4138);
        _4202 = _4099 + (float4(((_64.SampleLevel(_15, float3(_4147, _4148 + 0.666666686534881591796875f, _4149), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4190, _4190) * _4138);
        _4203 = _4100 + (float4(((_64.SampleLevel(_15, float3(_4147, _4148 + 0.3333333432674407958984375f, _4149), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4179, _4179) * _4138);
        _4204 = _4101 + (float4(((_4152.xyz * 4.0f) - 2.0f.xxx) * _4168, _4168) * _4138);
      } else {
        _4201 = _4098;
        _4202 = _4099;
        _4203 = _4100;
        _4204 = _4101;
      }
      float4 _4287;
      float4 _4288;
      float4 _4289;
      float _4290;
      if (_4121 > 0.0f) {
        float3 _4213 = ((_3961 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4216 = _9_m109.xyz * 0.5f;
        float3 _4218 = clamp(_4213 - floor(_4213), _4216, 1.0f.xxx - _4216);
        float4 _4222 = _65.SampleLevel(_16, _4218, 0.0f);
        float _4224 = _4121 * (1.0f - _3995);
        float _4228 = _9_m109.y * 0.5f;
        float _4233 = _4218.x;
        float _4234 = clamp(_4218.y, _4228, 1.0f - _4228) * 0.3333333432674407958984375f;
        float _4235 = _4218.z;
        float4 _4238 = _66.SampleLevel(_15, float3(_4233, _4234, _4235), 0.0f);
        float _4254 = _4222.x;
        float _4265 = _4222.y;
        float _4276 = _4222.z;
        _4287 = _4202 + (float4(((_66.SampleLevel(_15, float3(_4233, _4234 + 0.666666686534881591796875f, _4235), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4276, _4276) * _4224);
        _4288 = _4203 + (float4(((_66.SampleLevel(_15, float3(_4233, _4234 + 0.3333333432674407958984375f, _4235), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4265, _4265) * _4224);
        _4289 = _4204 + (float4(((_4238.xyz * 4.0f) - 2.0f.xxx) * _4254, _4254) * _4224);
        _4290 = _4201 + (_4238.w * _4224);
      } else {
        _4287 = _4202;
        _4288 = _4203;
        _4289 = _4204;
        _4290 = _4201;
      }
      float _4293 = clamp((_4290 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _4297 = _4287;
      _4298 = _4288;
      _4299 = _4289;
      _4300 = _4293 - _3995;
      _4301 = (_4293 + _3995) * 0.5f;
    } else {
      _4297 = 0.0f.xxxx;
      _4298 = 0.0f.xxxx;
      _4299 = 0.0f.xxxx;
      _4300 = 0.0f;
      _4301 = 1.0f;
    }
    float4 _4321 = _4299 + float4(_9_m111.x * _4301, (_9_m111.y * _4301) + ((_9_m111.w * _4300) * 0.5f), _9_m111.z * _4301, (_9_m111.w * _4301) + ((_9_m111.y * _4300) * 0.375f));
    float4 _4341 = _4298 + float4(_9_m112.x * _4301, (_9_m112.y * _4301) + ((_9_m112.w * _4300) * 0.5f), _9_m112.z * _4301, (_9_m112.w * _4301) + ((_9_m112.y * _4300) * 0.375f));
    float4 _4361 = _4297 + float4(_9_m113.x * _4301, (_9_m113.y * _4301) + ((_9_m113.w * _4300) * 0.5f), _9_m113.z * _4301, (_9_m113.w * _4301) + ((_9_m113.y * _4300) * 0.375f));
    float4 _4519;
    float4 _4520;
    float4 _4521;
    [branch] if (all(bool2(_543.x >= 0.0f.xx.x, _543.y >= 0.0f.xx.y))) {
      float4 _4369 = _60.SampleLevel(_15, _543, 0.0f);
      float4 _4370 = abs(_4369);
      float4 _4516;
      float4 _4517;
      float4 _4518;
      [branch] if (any(bool4(_4370.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4370.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4370.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4370.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _4376 = length(_4369.yzw);
        uint _4378;
        float _4381;
        _4378 = 0u;
        _4381 = 1.0f;
        for (float _4383 = _4376; _4383 > 4.599999904632568359375f;) {
          _4378++;
          _4381 *= 0.5f;
          _4383 *= 0.5f;
          continue;
        }
        float4 _4387 = _4369 * _4381;
        float4 _4392 = float4(0.0f, _4387.yzw);
        float2 _4414 = (_59.SampleLevel(_15, float2(((((length(_4392) * _58_m3.x) + _58_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _58_m2.xy) + _58_m2.zw;
        float4 _4428;
        _4428 = float4(_4414.x * 3.5449078083038330078125f, _4392.yzw * _4414.y) * exp(_4387.x * 0.282094776630401611328125f);
        for (uint _4431 = 0u; _4431 < _4378;) {
          _4428 = mul(float4x4(_4428, float4(_4428.yx, 0.0f, 0.0f), float4(_4428.z, 0.0f, _4428.x, 0.0f), float4(_4428.w, 0.0f, 0.0f, _4428.x)) * 0.282094776630401611328125f, _4428);
          _4431++;
          continue;
        }
        float4x4 _4452 = float4x4(_4428, float4(_4428.yx, 0.0f, 0.0f), float4(_4428.z, 0.0f, _4428.x, 0.0f), float4(_4428.w, 0.0f, 0.0f, _4428.x)) * 0.282094776630401611328125f;
        float4 _4462 = mul(_4452, float4(_4321.w * 1.1283791065216064453125f, _4321.y * (-0.977204978466033935546875f), _4321.z * 0.977204978466033935546875f, _4321.x * (-0.977204978466033935546875f)));
        float4 _4482 = mul(_4452, float4(_4341.w * 1.1283791065216064453125f, _4341.y * (-0.977204978466033935546875f), _4341.z * 0.977204978466033935546875f, _4341.x * (-0.977204978466033935546875f)));
        float4 _4502 = mul(_4452, float4(_4361.w * 1.1283791065216064453125f, _4361.y * (-0.977204978466033935546875f), _4361.z * 0.977204978466033935546875f, _4361.x * (-0.977204978466033935546875f)));
        _4516 = float4(_4462.x * 0.886226952075958251953125f, _4462.w * (-1.02332675457000732421875f), _4462.y * (-1.02332675457000732421875f), _4462.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4517 = float4(_4482.x * 0.886226952075958251953125f, _4482.w * (-1.02332675457000732421875f), _4482.y * (-1.02332675457000732421875f), _4482.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4518 = float4(_4502.x * 0.886226952075958251953125f, _4502.w * (-1.02332675457000732421875f), _4502.y * (-1.02332675457000732421875f), _4502.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _4516 = _4321;
        _4517 = _4341;
        _4518 = _4361;
      }
      _4519 = _4516;
      _4520 = _4517;
      _4521 = _4518;
    }
    else {
      _4519 = _4321;
      _4520 = _4341;
      _4521 = _4361;
    }
    float _4526 = max(0.0f, dot(_4519.xyz, _517) + _4519.w);
    float _4531 = max(0.0f, dot(_4520.xyz, _517) + _4520.w);
    float _4536 = max(0.0f, dot(_4521.xyz, _517) + _4521.w);
    float3 _4560 = reflect(_583, _517);
    float _4568 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_606, 0.001000000047497451305389404296875f))));
    float2 _4572 = floor(_530 * _29_m0.w);
    float _4589 = floor(_562 - _29_m2.y);
    float _4593 = clamp(_4589, 0.0f, _29_m1.x - 1.0f);
    uint _4603 = (_4589 <= _4593) ? (_26.Load(uint(_9_m21.z + int(_4572.x + (_4572.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_4593)) * 4 + 0)) : 0u;
    float _4606 = dot(float4(_4526, _4531, _4536, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _4608;
    float _4611;
    uint _4613;
    _4608 = 0.0f.xxx;
    _4611 = 1.0f;
    _4613 = _4603;
    uint _4614;
    float3 _4609;
    float _4612;
    bool _4616;
    [loop] for (;;) {
      bool _4615 = _4613 != 0u;
      _4616 = _4611 > 0.00999999977648258209228515625f;
      if (_4615 && _4616) {
        uint _4620 = firstbitlow(_4613);
        _4614 = _4613 ^ (1u << (_4620 & 31u));
        float3 _4640 = float3(dot(_29_m4[_4620]._m2, _559), dot(_29_m4[_4620]._m3, _559), dot(_29_m4[_4620]._m4, _559));
        float3 _4641 = abs(_4640);
        if (all(bool3(_4641.x <= _29_m4[_4620]._m1.xyz.x, _4641.y <= _29_m4[_4620]._m1.xyz.y, _4641.z <= _29_m4[_4620]._m1.xyz.z))) {
          float3 _4650 = _29_m4[_4620]._m1.xyz * 0.100000001490116119384765625f;
          float3 _4652 = _4641 * 0.100000001490116119384765625f;
          float3 _4653 = _4652 * _4652;
          float3 _4656 = (_29_m4[_4620]._m1.xyz - _4641) * _29_m4[_4620]._m5.xyz;
          float3 _4704;
          [branch] if (_29_m4[_4620]._m6.x == 1.0f) {
            float3 _4689 = float3(dot(_29_m4[_4620]._m2.xyz, _4560), dot(_29_m4[_4620]._m3.xyz, _4560), dot(_29_m4[_4620]._m4.xyz, _4560));
            float3 _4691 = (_29_m4[_4620]._m1.xyz - _4640) / _4689;
            float3 _4694 = ((-_29_m4[_4620]._m1.xyz) - _4640) / _4689;
            bool3 _4695 = bool3(_4689.x > 0.0f.xxx.x, _4689.y > 0.0f.xxx.y, _4689.z > 0.0f.xxx.z);
            float3 _4696 = float3(_4695.x ? _4691.x : _4694.x, _4695.y ? _4691.y : _4694.y, _4695.z ? _4691.z : _4694.z);
            _4704 = _4640 + (_4689 * min(min(_4696.x, _4696.y), _4696.z));
          }
          else {
            _4704 = _4560;
          }
          float3 _4705 = normalize(_4704);
          float3 _4708 = float3(int3(sign(_4705)));
          float3 _4711 = _4705 / dot(_4705, _4708).xxx;
          float3 _4725;
          if (_4711.z < 0.0f) {
            float3 _4716 = abs(_4711);
            float2 _4723 = _4708.xy * float2(1.0f - _4716.y, 1.0f - _4716.x);
            _4725 = float3(_4723.x, _4723.y, _4711.z);
          } else {
            _4725 = _4711;
          }
          float _4750 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_4620]._m0, float4(_517, 1.0f))));
          float _4763 = clamp((min(_4656.x, min(_4656.y, _4656.z)) * _29_m4[_4620]._m6.y) + ((((((_4650 * _4650).x - ((_4653.x + _4653.y) + _4653.z)) * _29_m4[_4620]._m5.x) * _29_m4[_4620]._m5.x) * (1.0f - _29_m4[_4620]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_4620]._m6.w;
          _4609 = _4608 + ((((_24.SampleLevel(_17, float3((((_4725.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_4620]._m1.w), _4568).xyz * _29_m4[_4620]._m5.w) * ((((((clamp(abs(_4606 / _4750), 0.0f, 1.0f) * 2.0f) + _4606) / (2.0f + _4750)) - 1.0f) * _9_m23.w) + 1.0f)) * _4763) * _4611);
          _4612 = _4611 * (1.0f - _4763);
        } else {
          _4609 = _4608;
          _4612 = _4611;
        }
        _4608 = _4609;
        _4611 = _4612;
        _4613 = _4614;
        continue;
      } else {
        break;
      }
    }
    float3 _4832;
    if (_4616) {
      float3 _4771 = normalize(_4560);
      float3 _4774 = float3(int3(sign(_4771)));
      float3 _4777 = _4771 / dot(_4771, _4774).xxx;
      float3 _4791;
      if (_4777.z < 0.0f) {
        float3 _4782 = abs(_4777);
        float2 _4789 = _4774.xy * float2(1.0f - _4782.y, 1.0f - _4782.x);
        _4791 = float3(_4789.x, _4789.y, _4777.z);
      } else {
        _4791 = _4777;
      }
      float _4818 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_517, 1.0f))));
      _4832 = _4608 + ((_24.SampleLevel(_17, float3((((_4791.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _4568).xyz * ((((((clamp(abs(_4606 / _4818), 0.0f, 1.0f) * 2.0f) + _4606) / (2.0f + _4818)) - 1.0f) * _9_m23.w) + 1.0f)) * _4611);
    } else {
      _4832 = _4608;
    }
    float3 _4838 = (_4832 * _9_m23.z) * _9_m22.y;
    float3 _4859;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _4853 = _22.SampleBias(_15, _4, _9_m16);
      float _4854 = _4853.x;
      _4859 = (_21.SampleBias(_15, _4, _9_m16).xyz * _4854) + (_4838 * (1.0f - _4854));
    }
    else {
      _4859 = _4838;
    }
    _5796 = (((float3(_4526, _4531, _4536) * (_608 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_520, _521, _522).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _521.xxx) * _522) * _523))) * _9_m22.x) * _3941) + ((_4859 * _628) * _3940);
  }
  float4 _5798 = float4(_3903.x, _3903.y, _3903.z, _954.w) + float4(_5796.x, _5796.y, _5796.z, 0.0f.xxxx.w);
  float _5816 = _555.y * _9_m46.w;
  float _5821 = max(0.00999999977648258209228515625f, _5816 + _9_m47.w);
  float3 _5835 = exp(_9_m45.xyz * ((-max(0.0f, (_582 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_5821)) / _5821) * exp(_5816 + _9_m48.w))));
  float _5838 = dot(_583, _9_m44.xyz);
  float _5844 = _9_m45.w * _9_m45.w;
  float _5848 = (1.0f + _5844) - ((2.0f * _9_m45.w) * _5838);
  float3 _6176;
  float _6177;
  if (_9_m55.z > 0.0f) {
    uint3 _6002 = (uint3(int3(_397, _398, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _6003 = _6002.y;
    uint _6004 = _6002.z;
    uint _6007 = _6002.x + (_6003 * _6004);
    uint _6009 = _6003 + (_6004 * _6007);
    uint _6011 = _6004 + (_6007 * _6009);
    uint _6013 = _6007 + (_6009 * _6011);
    float _6037 = dot(_583, -_7_m0[2].xyz);
    float3 _6047 = _555 - _7_m11.xyz;
    float _6049 = (_9_m55.w * ((_6037 > 5.9604644775390625e-08f) ? (1.0f / _6037) : 0.0f)) * (1.0f / _582);
    float _6050 = _6047.y;
    float _6051 = _6049 * _6050;
    float _6053 = _7_m11.y + _6051;
    float _6054 = _6050 - _6051;
    float _6056 = (1.0f - _6049) * _582;
    float _6070 = max(-127.0f, _9_m49.z * _6054);
    float _6094 = max(-127.0f, _9_m52.x * _6054);
    float _6105 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_6053 - _9_m49.x)))) * ((abs(_6070) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6070)) / _6070) : (0.693147182464599609375f - (0.2402265071868896484375f * _6070)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_6053 - _9_m52.z)))) * ((abs(_6094) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6094)) / _6094) : (0.693147182464599609375f - (0.2402265071868896484375f * _6094))));
    float _6127 = clamp((_582 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _6130 = clamp((max(clamp(exp2(-(_6105 * _6056)), 0.0f, 1.0f), _9_m51.w) + clamp((_582 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _6127, 0.0f, 1.0f);
    float4 _6170 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _56.SampleLevel(_15, float3((_530 + ((((float3(uint3(_6013, _6009 + (_6011 * _6013), _380) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_562 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_562 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _6172 = _6170.w;
    _6176 = _6170.xyz + (((_9_m51.xyz * (1.0f - _6130)) + (((_9_m54.xyz * pow(clamp(dot(_581, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_6105 * max(_6056 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _6127))) * _6172);
    _6177 = _6172 * _6130;
  } else {
    float3 _5878 = _555 - _7_m11.xyz;
    float _5880 = _5878.y;
    float _5894 = max(-127.0f, _9_m49.z * _5880);
    float _5918 = max(-127.0f, _9_m52.x * _5880);
    float _5929 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_5894) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5894)) / _5894) : (0.693147182464599609375f - (0.2402265071868896484375f * _5894)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_5918) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5918)) / _5918) : (0.693147182464599609375f - (0.2402265071868896484375f * _5918))));
    float _5951 = clamp((_582 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5954 = clamp((max(clamp(exp2(-(_5929 * _582)), 0.0f, 1.0f), _9_m51.w) + clamp((_582 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5951, 0.0f, 1.0f);
    _6176 = (_9_m51.xyz * (1.0f - _5954)) + (((_9_m54.xyz * pow(clamp(dot(_581, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5929 * max(_582 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5951));
    _6177 = _5954;
  }
  float3 _6180 = _5835 * _6177;
  float3 _6182 = (clamp(_5798.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _6180) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5838 * _5838)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _5844) / max((12.56637096405029296875f * _5848) * sqrt(_5848), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5835)) * _6177) + _6176);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _6182 = (_6182 * 0.65f) + (clamp(_5798.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _6184 = float4(_6182.x, _6182.y, _6182.z, _5798.w);
  _6184.w = dot(_6180, 0.3333333432674407958984375f.xxx);
  _5 = _6184;
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

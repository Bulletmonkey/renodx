#include "./renodx_injection.hlsli"

// Ported from the native 0x8878A8D6 Vulkan dump.
struct _29 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _403;
static uint _406;

static const int2 _371[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _372[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(46, 3)]] cbuffer _8_9 : register(b46, space3) {
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

[[vk::binding(41, 3)]] cbuffer _10_11 : register(b41, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(50, 3)]] ByteAddressBuffer _27 : register(t50, space3);
[[vk::binding(47, 3)]] cbuffer _28_30 : register(b47, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  _29 _30_m4[32] : packoffset(c4);
};

[[vk::binding(42, 3)]] cbuffer _31_32 : register(b42, space3) {
  float4 _32_m0 : packoffset(c0);
  float4 _32_m1 : packoffset(c1);
  float4 _32_m2 : packoffset(c2);
  float4 _32_m3 : packoffset(c3);
  float4 _32_m4 : packoffset(c4);
  uint4 _32_m5 : packoffset(c5);
  float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(43, 3)]] cbuffer _33_34 : register(b43, space3) {
  int _34_m0 : packoffset(c0);
  int _34_m1 : packoffset(c0.y);
  int _34_m2 : packoffset(c0.z);
  int _34_m3 : packoffset(c0.w);
  int _34_m4 : packoffset(c1);
  int _34_m5 : packoffset(c1.y);
  int _34_m6 : packoffset(c1.z);
  int _34_m7 : packoffset(c1.w);
  float _34_m8 : packoffset(c2);
  float _34_m9 : packoffset(c2.y);
  float _34_m10 : packoffset(c2.z);
  float _34_m11 : packoffset(c2.w);
  float _34_m12 : packoffset(c3);
  float _34_m13 : packoffset(c3.y);
  float _34_m14 : packoffset(c3.z);
  float _34_m15 : packoffset(c3.w);
};

[[vk::binding(45, 3)]] cbuffer _35_36 : register(b45, space3) {
  column_major float4x4 _36_m0[5] : packoffset(c0);
  float4 _36_m1[4] : packoffset(c20);
  float4 _36_m2[4] : packoffset(c24);
  float4 _36_m3[4] : packoffset(c28);
  float4 _36_m4 : packoffset(c32);
  float4 _36_m5 : packoffset(c33);
  float4 _36_m6 : packoffset(c34);
  float4 _36_m7 : packoffset(c35);
  float4 _36_m8 : packoffset(c36);
  float4 _36_m9[27] : packoffset(c37);
  float4 _36_m10 : packoffset(c64);
  float4 _36_m11 : packoffset(c65);
  float4 _36_m12[62] : packoffset(c66);
  column_major float4x4 _36_m13[15] : packoffset(c128);
  float4 _36_m14[15] : packoffset(c188);
  float4 _36_m15[15] : packoffset(c203);
  float4 _36_m16[15] : packoffset(c218);
  float4 _36_m17 : packoffset(c233);
  float4 _36_m18 : packoffset(c234);
  float4 _36_m19[21] : packoffset(c235);
  column_major float4x4 _36_m20 : packoffset(c256);
  column_major float4x4 _36_m21 : packoffset(c260);
  float4 _36_m22 : packoffset(c264);
  float4 _36_m23 : packoffset(c265);
  float4 _36_m24 : packoffset(c266);
  float4 _36_m25[128] : packoffset(c267);
};

[[vk::binding(49, 3)]] ByteAddressBuffer _39 : register(t49, space3);
[[vk::binding(38, 3)]] cbuffer _44_45 : register(b38, space3) {
  column_major float4x4 _45_m0 : packoffset(c0);
  float4 _45_m1 : packoffset(c4);
};

[[vk::binding(40, 3)]] cbuffer _51_52 : register(b40, space3) {
  float4 _52_m0[15] : packoffset(c0);
  float4 _52_m1[15] : packoffset(c15);
};

[[vk::binding(48, 3)]] cbuffer _55_56 : register(b48, space3) {
  float4 _56_m0[32] : packoffset(c0);
  column_major float4x4 _56_m1[32] : packoffset(c32);
};

[[vk::binding(44, 3)]] cbuffer _62_63 : register(b44, space3) {
  float4 _63_m0 : packoffset(c0);
  float4 _63_m1 : packoffset(c1);
  float4 _63_m2 : packoffset(c2);
  float4 _63_m3 : packoffset(c3);
  float4 _63_m4 : packoffset(c4);
  uint4 _63_m5 : packoffset(c5);
  float4 _63_m6 : packoffset(c6);
  float4 _63_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _14 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _15 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0, space3);
[[vk::binding(5, 3)]] SamplerComparisonState _18 : register(s5, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _19 : register(s3, space3);
[[vk::binding(35, 3)]] Texture2D<float4> _21 : register(t35, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _22 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _23 : register(t13, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _24 : register(t28, space3);
[[vk::binding(14, 3)]] Texture2DArray<float4> _25 : register(t14, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _37 : register(t16, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _40 : register(t11, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _41 : register(t30, space3);
[[vk::binding(36, 3)]] Texture2D<float4> _42 : register(t36, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _43 : register(t8, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _47 : register(t15, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _49 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _50 : register(t10, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _53 : register(t34, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _54 : register(t18, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _59 : register(t20, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _60 : register(t19, space3);
[[vk::binding(27, 3)]] Texture3D<float4> _61 : register(t27, space3);
[[vk::binding(37, 3)]] Texture2D<float4> _64 : register(t37, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _65 : register(t7, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _66 : register(t26, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _67 : register(t23, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _68 : register(t25, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _69 : register(t22, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _70 : register(t24, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _71 : register(t21, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _72 : register(t6, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _73 : register(t33, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _74 : register(t32, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _75 : register(t31, space3);
[[vk::binding(29, 3)]] Texture3D<float4> _76 : register(t29, space3);

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
  uint2 _420 = uint2(gl_FragCoord.xy);
  int _423 = int(_420.x);
  int _424 = int(_420.y);
  int2 _426 = int3(_423, _424, 0).xy;
  float4 _428 = _73.Load(int3(_426, 0));
  float4 _430 = _74.Load(int3(_426, 0));
  float4 _432 = _75.Load(int3(_426, 0));
  uint _436 = uint(round(_432.w * 255.0f));
  float3 _542;
  float3 _543;
  float _544;
  float _545;
  float _546;
  float _547;
  float _548;
  float _549;
  float3 _550;
  uint _551;
  float _552;
  bool _553;
  [branch] if ((_436 & 128u) != 0u) {
    float2 _484 = (_428.xy * 2.0f) - 1.0f.xx;
    float _488 = 1.0f - dot(1.0f.xx, abs(_484));
    float3 _490 = float3(_484.x, _488, _484.y);
    float3 _502;
    if (_488 < 0.0f) {
      float2 _497 = _490.xz;
      bool2 _498 = bool2(_497.x >= 0.0f.xx.x, _497.y >= 0.0f.xx.y);
      float2 _500 = (1.0f.xx - abs(_490.zx)) * float2(_498.x ? 1.0f.xx.x : (-1.0f).xx.x, _498.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _502 = float3(_500.x, _490.y, _500.y);
    } else {
      _502 = _490;
    }
    float2 _507 = (_430.xy * 2.0f) - 1.0f.xx;
    float _511 = 1.0f - dot(1.0f.xx, abs(_507));
    float3 _513 = float3(_507.x, _511, _507.y);
    float3 _525;
    if (_511 < 0.0f) {
      float2 _520 = _513.xz;
      bool2 _521 = bool2(_520.x >= 0.0f.xx.x, _520.y >= 0.0f.xx.y);
      float2 _523 = (1.0f.xx - abs(_513.zx)) * float2(_521.x ? 1.0f.xx.x : (-1.0f).xx.x, _521.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _525 = float3(_523.x, _513.y, _523.y);
    } else {
      _525 = _513;
    }
    _542 = _432.xyz;
    _543 = normalize(_525);
    _544 = _430.z;
    _545 = _428.z;
    _546 = 0.0f;
    _547 = 0.0f;
    _548 = 0.0f;
    _549 = 0.0f;
    _550 = normalize(_502);
    _551 = uint(int((round(_428.w * 3.0f) * 4.0f) + round(_430.w * 3.0f)));
    _552 = float(_436 & 127u) * 0.0078740157186985015869140625f;
    _553 = true;
  }
  else {
    float2 _446 = (_430.xy * 2.0f) - 1.0f.xx;
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
    uint _472 = clamp(_436 - 1u, 0u, 62u);
    bool4 _473 = ((_436 > 0u) && (_436 <= 63u)).xxxx;
    float4 _476 = float4(_473.x ? _11_m0[_472].x : 0.0f.xxxx.x, _473.y ? _11_m0[_472].y : 0.0f.xxxx.y, _473.z ? _11_m0[_472].z : 0.0f.xxxx.z, _473.w ? _11_m0[_472].w : 0.0f.xxxx.w);
    _542 = _432.xyz;
    _543 = normalize(_464);
    _544 = _430.z;
    _545 = _428.y;
    _546 = _476.y;
    _547 = _476.z;
    _548 = _476.x * _428.x;
    _549 = _476.w;
    _550 = 0.0f.xxx;
    _551 = _436;
    _552 = 0.0f;
    _553 = false;
  }
  float2 _556 = float2(_420);
  float2 _561 = (_556 + 0.5f.xx) * _9_m0.zw;
  float2 _569 = gl_FragCoord.xy * _9_m0.zw;
  float2 _571 = (_569 * 2.0f) - 1.0f.xx;
  float4 _574 = float4(_571, _21.SampleLevel(_14, _561, 0.0f).x, 1.0f);
  _574.y = -_571.y;
  float4 _577 = mul(_7_m6, _574);
  float3 _581 = _577.xyz / _577.w.xxx;
  float4 _585 = float4(_581, 1.0f);
  float _588 = abs(mul(_7_m0, _585).z);
  float3 _603;
  do {
    if (_9_m4.w == 0.0f) {
      _603 = _7_m11.xyz - _581;
      break;
    } else {
      _603 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _604 = dot(_603, _603);
  float _606 = rsqrt(max(_604, 9.9999999392252902907785028219223e-09f));
  float3 _607 = _603 * _606;
  float _608 = _604 * _606;
  float3 _609 = -_607;
  float2 _622;
  if (_9_m132.x > 0.00048828125f) {
    _622 = _72.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _622 = 1.0f.xx;
  }
  float _623 = dot(_543, float3(0.0f, -1.0f, 0.0f));
  float3 _678;
  [branch] if (_9_m124.x > 0.5f) {
    float _650 = abs(_543.x);
    float _652 = abs(_543.y);
    float _654 = abs(_543.z);
    float3 _659 = float3(_650, _652, _654) * (1.0f / ((_650 + _652) + _654));
    _678 = ((((float3(0.0f, 0.0f, 1.0f) * _659.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _659.y)) + (float3(1.0f, 0.0f, 0.0f) * _659.z)) * ((_47.SampleLevel(_16, _581 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_623)));
  }
  else {
    _678 = 0.0f.xxx;
  }
  float4 _692 = mul(_45_m0, float4((_581 + ((((_543 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_623, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _623), 0.100000001490116119384765625f, 1.0f)))) + _678, 1.0f));
  float2 _695 = (_692.xy * 0.5f) + 0.5f.xx;
  float4 _696 = float4(_695.x, _695.y, _692.z, _692.w);
  _696.y = 1.0f - _695.y;
  float _717;
  [branch] if (_9_m124.y > 0.5f) {
    _717 = _43.SampleCmpLevelZero(_19, (_696.xy + _45_m1.xy).xy, max(_692.z, 0.00048828125f));
  }
  else {
    _717 = 1.0f;
  }
  float _722 = lerp(_9_m128.w, 1.0f, clamp(_543.y, 0.0f, 1.0f));
  float2 _731 = abs(_581.xz - _7_m11.xz);
  float _734 = max(_731.x, _731.y);
  float _752 = min(_622.x, _622.y);
  float2 _754 = _622 * (1.0f - lerp(lerp(_9_m128.z * _722, 1.0f, lerp(_722 * _717, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _734))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _734)));
  float _755 = _754.x;
  float _756 = 1.0f - _544;
  float _764 = clamp(clamp((_756 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f), 0.0f, 1.0f);
  float _766 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _623);
  float _773 = lerp(1.0f, 0.25f, (_9_m120.x * _764) * _766);
  float _789 = (1.0f - lerp(_756, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _764) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_756)), 0.0f, 1.0f), _756, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _766) * (1.0f - _755))) * lerp(1.0f, 0.100000001490116119384765625f, max(0.0f, smoothstep(0.0f, 0.0500000007450580596923828125f, 0.0f)));
  float _794 = lerp(lerp(min(1.0f, _789), _789, _752), _544, _755);
  float3 _796 = _542 * lerp(lerp(min(1.0f, _773), _773, _752), 1.0f, _755);
  float _797 = dot(_543, _607);
  float _798 = max(0.0f, _797);
  float4 _800 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _794) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _801 = _800.x;
  float2 _811 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_801 * _801, exp2((-9.27999973297119140625f) * _798)) * _801) + _800.y)) + _800.zw;
  float3 _816 = (0.039999999105930328369140625f.xxx * _811.x) + _811.y.xxx;
  float4 _1142;
  do {
    [branch] if (_34_m4 == 0) {
      _1142 = 0.0f.xxxx;
      break;
    }
    float4 _829 = _40.Load(int3(_426, 0));
    float _830 = _829.x;
    float4 _1141;
    if (_830 > 0.001000000047497451305389404296875f) {
      float3 _841 = reflect(_609, _543);
      float3 _842 = -_32_m0.xyz;
      float _847 = dot(_842, _841);
      float3 _849 = _841 - (_842 * _847);
      bool3 _851 = (_847 < _32_m4.z).xxx;
      float3 _859 = normalize((_842 * _32_m4.z) + ((_849 * rsqrt(max(6.103515625e-05f, dot(_849, _849)))) * _32_m4.y));
      float3 _860 = float3(_851.x ? _859.x : _841.x, _851.y ? _859.y : _841.y, _851.z ? _859.z : _841.z);
      float3 _864 = _860 + _607;
      float3 _868 = _864 * rsqrt(max(6.103515625e-05f, dot(_864, _864)));
      float _870 = clamp(dot(_860, _543), 0.0f, 1.0f);
      float _872 = clamp(dot(_543, _868), 0.0f, 1.0f);
      float _874 = clamp(dot(_607, _868), 0.0f, 1.0f);
      float _876 = clamp(_797, 0.0f, 1.0f);
      float3 _1050;
      float3 _1051;
      [branch] if (_553) {
        float _980 = _794 * _794;
        float _981 = _980 * _980;
        float _1002 = (((_872 * _981) - _872) * _872) + 1.0f;
        float _1005 = 1.0f - _874;
        float _1006 = _1005 * _1005;
        float _1008 = (_1005 * _1006) * _1006;
        float _1032 = 1.0f - _794;
        float _1039 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1032 * (1.04997003078460693359375f + (_1032 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1032))))));
        float _1040 = 1.0f - _1039;
        _1050 = 0.0f.xxx;
        _1051 = min(((0.039999999105930328369140625f.xxx * (1.0f - _1008)) + _1008.xxx) * ((_981 / (_1002 * _1002)) * (0.5f / (((_870 * sqrt(((((-_876) * _981) + _876) * _876) + _981)) + (_876 * sqrt(((((-_870) * _981) + _870) * _870) + _981))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_876, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_870, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1039) / _1040)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _1040)));
      }
      else {
        float _880 = _794 * _794;
        float _881 = _880 * _880;
        float _902 = (((_872 * _881) - _872) * _872) + 1.0f;
        float _905 = 1.0f - _874;
        float _906 = _905 * _905;
        float _908 = (_905 * _906) * _906;
        float _932 = 1.0f - _794;
        float _939 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_932 * (1.04997003078460693359375f + (_932 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _932))))));
        float _940 = 1.0f - _939;
        float _963 = clamp(1.0f - _548, 0.0f, 1.0f);
        float _971 = clamp((dot(_543, _860) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _1050 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_546, _547, _548).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _547.xxx) * _548) * lerp((_545 * lerp(1.0f, (_971 * sqrt(_971)) * 1.66666662693023681640625f, _963)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_607, _860), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _963));
        _1051 = min(((0.039999999105930328369140625f.xxx * (1.0f - _908)) + _908.xxx) * ((_881 / (_902 * _902)) * (0.5f / (((_870 * sqrt(((((-_876) * _881) + _876) * _876) + _881)) + (_876 * sqrt(((((-_870) * _881) + _870) * _870) + _881))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_876, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_870, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _939) / _940)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _940)));
      }
      float3 _1052 = _796 * 1.0f;
      float3 _1055 = clamp(_1051 * _32_m4.x, 0.0f.xxx, 1000.0f.xxx) * _870;
      float3 _1126;
      [branch] if (_553) {
        float3 _1121;
        do {
          [branch] if (((_551 > 0u) && (_551 <= 15u)) && (_552 > 0.0f)) {
            int _1074 = int(clamp(_551 - 1u, 0u, 14u));
            float _1093 = _552 * _52_m0[_1074].w;
            float _1098 = float(_1074);
            _1121 = float3(_49.SampleLevel(_15, float3((dot(normalize(lerp(_543, _550, _52_m0[_1074].x.xxx)), _860) * 0.5f) + 0.5f, _1093, _1098), 0.0f).x, _49.SampleLevel(_15, float3((dot(normalize(lerp(_543, _550, _52_m0[_1074].y.xxx)), _860) * 0.5f) + 0.5f, _1093, _1098), 0.0f).y, _49.SampleLevel(_15, float3((dot(normalize(lerp(_543, _550, _52_m0[_1074].z.xxx)), _860) * 0.5f) + 0.5f, _1093, _1098), 0.0f).z);
            break;
          }
          _1121 = _870.xxx;
          break;
        } while (false);
        _1126 = _32_m1.xyz * (((_1052 * _1121) + _1055) + _1050);
      }
      else {
        _1126 = ((_1055 + _1050) + (_1052 * _870)) * _32_m1.xyz;
      }
      float3 _1139 = lerp(_1126, _1126 * _42.SampleBias(_15, float2(_830, 0.5f), _9_m16).xyz, (1.0f - _830).xxx) * _53.SampleLevel(_15, _569, 0.0f).x;
      _1141 = float4(_1139.x, _1139.y, _1139.z, 0.0f.xxxx.w);
    } else {
      _1141 = 0.0f.xxxx;
    }
    _1142 = _1141;
    break;
  } while (false);
  float2 _1144 = floor(_556 * 0.03125f);
  int _1152 = int((_1144.x + (_1144.y * _34_m9)) * 8.0f);
  float _1159 = floor(_588 - (_9_m3.y * _34_m15));
  float _1163 = clamp(_1159, 0.0f, _34_m11 - 1.0f);
  int _1165 = int(_1163 * 8.0f);
  float4 _1171 = _41.SampleBias(_15, _561, _9_m16);
  float3 _1173;
  float _1176;
  _1173 = 0.0f.xxx;
  _1176 = 1.0f;
  float3 _1174;
  float _1177;
  [loop] for (int _1178 = 0; _1178 <= 7; _1173 = _1174, _1176 = _1177, _1178++) {
    uint _1199 = (_1159 <= _1163) ? (_27.Load(uint((_34_m2 + _1152) + _1178) * 4 + 0) & _27.Load(uint((_34_m3 + _1165) + _1178) * 4 + 0)) : 0u;
    uint _1200 = uint(_1178);
    float3 _1204;
    _1177 = _1176;
    _1204 = 0.0f.xxx;
    uint _1207;
    float _1202;
    float3 _1205;
    [loop] for (uint _1206 = _1199; _1206 != 0u; _1177 = _1202, _1204 = _1205, _1206 = _1207) {
      uint _1211 = firstbitlow(_1206);
      _1207 = _1206 ^ (1u << (_1211 & 31u));
      int _1217 = int((32u * _1200) + _1211) * 8;
      int _1220 = _1217 + 1;
      int _1223 = _1217 + 2;
      int _1226 = _1217 + 3;
      int _1229 = _1217 + 4;
      int _1232 = _1217 + 5;
      int _1235 = _1217 + 6;
      int _1238 = _1217 + 7;
      uint _1242 = uint(_32_m6[_1232].w);
      float _1317;
      if ((_1242 & 1u) == 1u) {
        uint _1248 = asuint(_32_m6[_1232].x);
        uint _1255 = asuint(_32_m6[_1232].y);
        uint _1262 = asuint(_32_m6[_1232].z);
        uint _1269 = asuint(_32_m6[_1235].x);
        uint _1276 = asuint(_32_m6[_1235].y);
        uint _1283 = asuint(_32_m6[_1235].z);
        float3 _1302 = abs(mul(float4(_581 - _32_m6[_1220].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1248).x, spvUnpackHalf2x16(_1262).x, spvUnpackHalf2x16(_1276).x, 0.0f), float4(spvUnpackHalf2x16(_1248 >> 16u).x, spvUnpackHalf2x16(_1262 >> 16u).x, spvUnpackHalf2x16(_1276 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1255).x, spvUnpackHalf2x16(_1269).x, spvUnpackHalf2x16(_1283).x, 0.0f), float4(spvUnpackHalf2x16(_1255 >> 16u).x, spvUnpackHalf2x16(_1269 >> 16u).x, spvUnpackHalf2x16(_1283 >> 16u).x, 0.0f))).xyz);
        float _1309 = _32_m6[_1238].x * 0.5f;
        float _1315 = 1.0f - clamp((max(max(_1302.x, _1302.y), _1302.z) - (_1309 + 0.5f)) / (0.5f - _1309), 0.0f, 1.0f);
        _1317 = _1315 * _1315;
      } else {
        _1317 = 1.0f;
      }
      uint _1321 = uint(_32_m6[_1217].w);
      bool _1324 = _32_m6[_1226].z > 0.5f;
      if ((false || (_1317 < 0.001000000047497451305389404296875f)) || ((_1321 < 4u) && _1324)) {
        _1202 = _1177;
        _1205 = _1204;
        continue;
      }
      float _4084;
      float3 _4085;
      do {
        [branch] if (_1321 >= 4u) {
          float3 _2575;
          do {
            float3 _1343 = _32_m6[_1220].xyz - _581;
            if (dot(_32_m6[_1226].xyz, _1343) > 0.0f) {
              _2575 = 0.0f.xxx;
              break;
            }
            float _1350 = dot(_1343, _1343) * _32_m6[_1220].w;
            float _1353 = clamp(1.0f - (_1350 * _1350), 0.0f, 1.0f);
            float _1354 = _1353 * _1353;
            if (_1354 <= 0.0f) {
              _2575 = 0.0f.xxx;
              break;
            }
            float3 _1392;
            float _1393;
            bool _1394;
            float3 _1421;
            float3 _1423;
            float3 _1425;
            float3 _1427;
            float3 _1358 = _32_m6[_1223].xyz * _32_m6[_1223].w;
            float3 _1359 = _32_m6[_1220].xyz - _1358;
            float3 _1360 = _32_m6[_1229].xyz * _32_m6[_1226].w;
            float3 _1363 = _32_m6[_1220].xyz + _1358;
            float2 _1373 = (float2(clamp(_794, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_797, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1377 = _59.SampleLevel(_15, _1373, 0.0f);
            float4 _1381 = _60.SampleLevel(_15, _1373, 0.0f);
            float _1775;
            do {
              _1392 = _607 - (_543 * dot(_607, _543));
              _1393 = dot(_1392, _1392);
              _1394 = _1393 > 9.9999997473787516355514526367188e-05f;
              float3 _1416;
              if (_1394) {
                _1416 = _1392 * rsqrt(_1393);
              } else {
                float _1400 = (_543.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1402 = (-1.0f) / (_1400 + _543.z);
                _1416 = float3(1.0f + (((_1400 * _1402) * _543.x) * _543.x), ((_1400 * _543.x) * _543.y) * _1402, (-_1400) * _543.x);
              }
              float3x3 _1420 = mul(float3x3(float3(_1377.x, 0.0f, _1377.z), float3(0.0f, 1.0f, 0.0f), float3(_1377.y, 0.0f, _1377.w)), float3x3(_1416, cross(_543, _1416), _543));
              _1421 = (_1359 - _1360) - _581;
              float3 _1422 = mul(_1420, _1421);
              _1423 = (_1359 + _1360) - _581;
              float3 _1424 = mul(_1420, _1423);
              _1425 = (_1363 + _1360) - _581;
              float3 _1426 = mul(_1420, _1425);
              _1427 = (_1363 - _1360) - _581;
              float3 _1428 = mul(_1420, _1427);
              float _1429 = _1422.z;
              float _1432 = _1424.z;
              float _1436 = _1426.z;
              float _1440 = _1428.z;
              int _1444 = (((int(_1429 > 0.0f) | ((_1432 > 0.0f) ? 2 : 0)) | ((_1436 > 0.0f) ? 4 : 0)) | ((_1440 > 0.0f) ? 8 : 0));
              float3 _1681;
              float3 _1682;
              float3 _1683;
              float3 _1684;
              float3 _1685;
              int _1686;
              if (_1444 == 0) {
                _1681 = _1428;
                _1682 = _1426;
                _1683 = _1424;
                _1684 = _1422;
                _1685 = 0.0f.xxx;
                _1686 = 0;
              } else {
                float3 _1675;
                float3 _1676;
                float3 _1677;
                float3 _1678;
                float3 _1679;
                int _1680;
                if (_1444 == 1) {
                  _1675 = _1428;
                  _1676 = (_1422 * (-_1440)) + (_1428 * _1429);
                  _1677 = (_1422 * (-_1432)) + (_1424 * _1429);
                  _1678 = _1422;
                  _1679 = 0.0f.xxx;
                  _1680 = 3;
                } else {
                  float3 _1661;
                  float3 _1662;
                  float3 _1663;
                  float3 _1664;
                  float3 _1665;
                  int _1666;
                  if (_1444 == 2) {
                    _1661 = _1428;
                    _1662 = (_1424 * (-_1436)) + (_1426 * _1432);
                    _1663 = _1424;
                    _1664 = (_1424 * (-_1429)) + (_1422 * _1432);
                    _1665 = 0.0f.xxx;
                    _1666 = 3;
                  } else {
                    float3 _1647;
                    float3 _1648;
                    float3 _1649;
                    float3 _1650;
                    float3 _1651;
                    int _1652;
                    if (_1444 == 3) {
                      _1647 = (_1422 * (-_1440)) + (_1428 * _1429);
                      _1648 = (_1424 * (-_1436)) + (_1426 * _1432);
                      _1649 = _1424;
                      _1650 = _1422;
                      _1651 = 0.0f.xxx;
                      _1652 = 4;
                    } else {
                      float3 _1633;
                      float3 _1634;
                      float3 _1635;
                      float3 _1636;
                      float3 _1637;
                      int _1638;
                      if (_1444 == 4) {
                        _1633 = _1428;
                        _1634 = _1426;
                        _1635 = (_1426 * (-_1432)) + (_1424 * _1436);
                        _1636 = (_1426 * (-_1440)) + (_1428 * _1436);
                        _1637 = 0.0f.xxx;
                        _1638 = 3;
                      } else {
                        float3 _1619;
                        float3 _1620;
                        float3 _1621;
                        float3 _1622;
                        float3 _1623;
                        int _1624;
                        if (_1444 == 5) {
                          _1619 = _1428;
                          _1620 = _1426;
                          _1621 = _1424;
                          _1622 = _1422;
                          _1623 = 0.0f.xxx;
                          _1624 = 0;
                        } else {
                          float3 _1613;
                          float3 _1614;
                          float3 _1615;
                          float3 _1616;
                          float3 _1617;
                          int _1618;
                          if (_1444 == 6) {
                            _1613 = (_1426 * (-_1440)) + (_1428 * _1436);
                            _1614 = _1426;
                            _1615 = _1424;
                            _1616 = (_1424 * (-_1429)) + (_1422 * _1432);
                            _1617 = 0.0f.xxx;
                            _1618 = 4;
                          } else {
                            float3 _1599;
                            float3 _1600;
                            float3 _1601;
                            float3 _1602;
                            float3 _1603;
                            int _1604;
                            if (_1444 == 7) {
                              float _1592 = -_1440;
                              _1599 = (_1426 * _1592) + (_1428 * _1436);
                              _1600 = _1426;
                              _1601 = _1424;
                              _1602 = _1422;
                              _1603 = (_1422 * _1592) + (_1428 * _1429);
                              _1604 = 5;
                            } else {
                              float3 _1586;
                              float3 _1587;
                              float3 _1588;
                              float3 _1589;
                              float3 _1590;
                              int _1591;
                              if (_1444 == 8) {
                                _1586 = _1428;
                                _1587 = _1428;
                                _1588 = (_1428 * (-_1436)) + (_1426 * _1440);
                                _1589 = (_1428 * (-_1429)) + (_1422 * _1440);
                                _1590 = 0.0f.xxx;
                                _1591 = 3;
                              } else {
                                float3 _1572;
                                float3 _1573;
                                float3 _1574;
                                float3 _1575;
                                float3 _1576;
                                int _1577;
                                if (_1444 == 9) {
                                  _1572 = _1428;
                                  _1573 = (_1428 * (-_1436)) + (_1426 * _1440);
                                  _1574 = (_1422 * (-_1432)) + (_1424 * _1429);
                                  _1575 = _1422;
                                  _1576 = 0.0f.xxx;
                                  _1577 = 4;
                                } else {
                                  float3 _1558;
                                  float3 _1559;
                                  float3 _1560;
                                  float3 _1561;
                                  float3 _1562;
                                  int _1563;
                                  if (_1444 == 10) {
                                    _1558 = _1428;
                                    _1559 = _1426;
                                    _1560 = _1424;
                                    _1561 = _1422;
                                    _1562 = 0.0f.xxx;
                                    _1563 = 0;
                                  } else {
                                    float3 _1552;
                                    float3 _1553;
                                    float3 _1554;
                                    float3 _1555;
                                    float3 _1556;
                                    int _1557;
                                    if (_1444 == 11) {
                                      float _1545 = -_1436;
                                      _1552 = (_1428 * _1545) + (_1426 * _1440);
                                      _1553 = (_1424 * _1545) + (_1426 * _1432);
                                      _1554 = _1424;
                                      _1555 = _1422;
                                      _1556 = _1428;
                                      _1557 = 5;
                                    } else {
                                      float3 _1539;
                                      float3 _1540;
                                      float3 _1541;
                                      float3 _1542;
                                      float3 _1543;
                                      int _1544;
                                      if (_1444 == 12) {
                                        _1539 = _1428;
                                        _1540 = _1426;
                                        _1541 = (_1426 * (-_1432)) + (_1424 * _1436);
                                        _1542 = (_1428 * (-_1429)) + (_1422 * _1440);
                                        _1543 = 0.0f.xxx;
                                        _1544 = 4;
                                      } else {
                                        bool _1497 = _1444 == 13;
                                        float3 _1524;
                                        float3 _1525;
                                        float3 _1526;
                                        float3 _1527;
                                        int _1528;
                                        if (_1497) {
                                          float _1517 = -_1432;
                                          _1524 = (_1426 * _1517) + (_1424 * _1436);
                                          _1525 = (_1422 * _1517) + (_1424 * _1429);
                                          _1526 = _1422;
                                          _1527 = _1428;
                                          _1528 = 5;
                                        } else {
                                          float3 _1514;
                                          float3 _1515;
                                          int _1516;
                                          if (_1444 == 14) {
                                            float _1507 = -_1429;
                                            _1514 = (_1424 * _1507) + (_1422 * _1432);
                                            _1515 = (_1428 * _1507) + (_1422 * _1440);
                                            _1516 = 5;
                                          } else {
                                            _1514 = _1422;
                                            _1515 = 0.0f.xxx;
                                            _1516 = (_1444 == 15) ? 4 : 0;
                                          }
                                          _1524 = _1426;
                                          _1525 = _1424;
                                          _1526 = _1514;
                                          _1527 = _1515;
                                          _1528 = _1516;
                                        }
                                        bool3 _1529 = _1497.xxx;
                                        _1539 = float3(_1529.x ? _1426.x : _1428.x, _1529.y ? _1426.y : _1428.y, _1529.z ? _1426.z : _1428.z);
                                        _1540 = _1524;
                                        _1541 = _1525;
                                        _1542 = _1526;
                                        _1543 = _1527;
                                        _1544 = _1528;
                                      }
                                      _1552 = _1539;
                                      _1553 = _1540;
                                      _1554 = _1541;
                                      _1555 = _1542;
                                      _1556 = _1543;
                                      _1557 = _1544;
                                    }
                                    _1558 = _1552;
                                    _1559 = _1553;
                                    _1560 = _1554;
                                    _1561 = _1555;
                                    _1562 = _1556;
                                    _1563 = _1557;
                                  }
                                  _1572 = _1558;
                                  _1573 = _1559;
                                  _1574 = _1560;
                                  _1575 = _1561;
                                  _1576 = _1562;
                                  _1577 = _1563;
                                }
                                _1586 = _1572;
                                _1587 = _1573;
                                _1588 = _1574;
                                _1589 = _1575;
                                _1590 = _1576;
                                _1591 = _1577;
                              }
                              _1599 = _1586;
                              _1600 = _1587;
                              _1601 = _1588;
                              _1602 = _1589;
                              _1603 = _1590;
                              _1604 = _1591;
                            }
                            _1613 = _1599;
                            _1614 = _1600;
                            _1615 = _1601;
                            _1616 = _1602;
                            _1617 = _1603;
                            _1618 = _1604;
                          }
                          _1619 = _1613;
                          _1620 = _1614;
                          _1621 = _1615;
                          _1622 = _1616;
                          _1623 = _1617;
                          _1624 = _1618;
                        }
                        _1633 = _1619;
                        _1634 = _1620;
                        _1635 = _1621;
                        _1636 = _1622;
                        _1637 = _1623;
                        _1638 = _1624;
                      }
                      _1647 = _1633;
                      _1648 = _1634;
                      _1649 = _1635;
                      _1650 = _1636;
                      _1651 = _1637;
                      _1652 = _1638;
                    }
                    _1661 = _1647;
                    _1662 = _1648;
                    _1663 = _1649;
                    _1664 = _1650;
                    _1665 = _1651;
                    _1666 = _1652;
                  }
                  _1675 = _1661;
                  _1676 = _1662;
                  _1677 = _1663;
                  _1678 = _1664;
                  _1679 = _1665;
                  _1680 = _1666;
                }
                _1681 = _1675;
                _1682 = _1676;
                _1683 = _1677;
                _1684 = _1678;
                _1685 = _1679;
                _1686 = _1680;
              }
              bool3 _1688 = (_1686 == 3).xxx;
              bool3 _1691 = (_1686 == 4).xxx;
              if (_1686 == 0) {
                _1775 = 0.0f;
                break;
              }
              float3 _1696 = normalize(_1684);
              float3 _1697 = normalize(_1683);
              float3 _1698 = normalize(_1682);
              float3 _1699 = normalize(float3(_1688.x ? _1684.x : _1681.x, _1688.y ? _1684.y : _1681.y, _1688.z ? _1684.z : _1681.z));
              float3 _1700 = normalize(float3(_1691.x ? _1684.x : _1685.x, _1691.y ? _1684.y : _1685.y, _1691.z ? _1684.z : _1685.z));
              float _1702 = clamp(dot(_1696, _1697), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1706 = sqrt(1.0f - (_1702 * _1702));
              float _1714 = clamp(dot(_1697, _1698), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1718 = sqrt(1.0f - (_1714 * _1714));
              float _1727 = clamp(dot(_1698, _1699), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1731 = sqrt(1.0f - (_1727 * _1727));
              float _1738 = ((cross(_1696, _1697).z * ((_1706 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1702) / _1706))) + (cross(_1697, _1698).z * ((_1718 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1714) / _1718)))) + (cross(_1698, _1699).z * ((_1731 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1727) / _1731)));
              float _1755;
              if (_1686 >= 4) {
                float _1743 = clamp(dot(_1699, _1700), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1747 = sqrt(1.0f - (_1743 * _1743));
                _1755 = _1738 + (cross(_1699, _1700).z * ((_1747 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1743) / _1747)));
              } else {
                _1755 = _1738;
              }
              float _1772;
              if (_1686 == 5) {
                float _1760 = clamp(dot(_1700, _1696), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1764 = sqrt(1.0f - (_1760 * _1760));
                _1772 = _1755 + (cross(_1700, _1696).z * ((_1764 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1760) / _1764)));
              } else {
                _1772 = _1755;
              }
              _1775 = max(_1772, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _2161;
            do {
              float3 _1807;
              if (_1394) {
                _1807 = _1392 * rsqrt(_1393);
              } else {
                float _1791 = (_543.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1793 = (-1.0f) / (_1791 + _543.z);
                _1807 = float3(1.0f + (((_1791 * _1793) * _543.x) * _543.x), ((_1791 * _543.x) * _543.y) * _1793, (-_1791) * _543.x);
              }
              float3x3 _1810 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1807, cross(_543, _1807), _543));
              float3 _1811 = mul(_1810, _1421);
              float3 _1812 = mul(_1810, _1423);
              float3 _1813 = mul(_1810, _1425);
              float3 _1814 = mul(_1810, _1427);
              float _1815 = _1811.z;
              float _1818 = _1812.z;
              float _1822 = _1813.z;
              float _1826 = _1814.z;
              int _1830 = (((int(_1815 > 0.0f) | ((_1818 > 0.0f) ? 2 : 0)) | ((_1822 > 0.0f) ? 4 : 0)) | ((_1826 > 0.0f) ? 8 : 0));
              float3 _2067;
              float3 _2068;
              float3 _2069;
              float3 _2070;
              float3 _2071;
              int _2072;
              if (_1830 == 0) {
                _2067 = _1814;
                _2068 = _1813;
                _2069 = _1812;
                _2070 = _1811;
                _2071 = 0.0f.xxx;
                _2072 = 0;
              } else {
                float3 _2061;
                float3 _2062;
                float3 _2063;
                float3 _2064;
                float3 _2065;
                int _2066;
                if (_1830 == 1) {
                  _2061 = _1814;
                  _2062 = (_1811 * (-_1826)) + (_1814 * _1815);
                  _2063 = (_1811 * (-_1818)) + (_1812 * _1815);
                  _2064 = _1811;
                  _2065 = 0.0f.xxx;
                  _2066 = 3;
                } else {
                  float3 _2047;
                  float3 _2048;
                  float3 _2049;
                  float3 _2050;
                  float3 _2051;
                  int _2052;
                  if (_1830 == 2) {
                    _2047 = _1814;
                    _2048 = (_1812 * (-_1822)) + (_1813 * _1818);
                    _2049 = _1812;
                    _2050 = (_1812 * (-_1815)) + (_1811 * _1818);
                    _2051 = 0.0f.xxx;
                    _2052 = 3;
                  } else {
                    float3 _2033;
                    float3 _2034;
                    float3 _2035;
                    float3 _2036;
                    float3 _2037;
                    int _2038;
                    if (_1830 == 3) {
                      _2033 = (_1811 * (-_1826)) + (_1814 * _1815);
                      _2034 = (_1812 * (-_1822)) + (_1813 * _1818);
                      _2035 = _1812;
                      _2036 = _1811;
                      _2037 = 0.0f.xxx;
                      _2038 = 4;
                    } else {
                      float3 _2019;
                      float3 _2020;
                      float3 _2021;
                      float3 _2022;
                      float3 _2023;
                      int _2024;
                      if (_1830 == 4) {
                        _2019 = _1814;
                        _2020 = _1813;
                        _2021 = (_1813 * (-_1818)) + (_1812 * _1822);
                        _2022 = (_1813 * (-_1826)) + (_1814 * _1822);
                        _2023 = 0.0f.xxx;
                        _2024 = 3;
                      } else {
                        float3 _2005;
                        float3 _2006;
                        float3 _2007;
                        float3 _2008;
                        float3 _2009;
                        int _2010;
                        if (_1830 == 5) {
                          _2005 = _1814;
                          _2006 = _1813;
                          _2007 = _1812;
                          _2008 = _1811;
                          _2009 = 0.0f.xxx;
                          _2010 = 0;
                        } else {
                          float3 _1999;
                          float3 _2000;
                          float3 _2001;
                          float3 _2002;
                          float3 _2003;
                          int _2004;
                          if (_1830 == 6) {
                            _1999 = (_1813 * (-_1826)) + (_1814 * _1822);
                            _2000 = _1813;
                            _2001 = _1812;
                            _2002 = (_1812 * (-_1815)) + (_1811 * _1818);
                            _2003 = 0.0f.xxx;
                            _2004 = 4;
                          } else {
                            float3 _1985;
                            float3 _1986;
                            float3 _1987;
                            float3 _1988;
                            float3 _1989;
                            int _1990;
                            if (_1830 == 7) {
                              float _1978 = -_1826;
                              _1985 = (_1813 * _1978) + (_1814 * _1822);
                              _1986 = _1813;
                              _1987 = _1812;
                              _1988 = _1811;
                              _1989 = (_1811 * _1978) + (_1814 * _1815);
                              _1990 = 5;
                            } else {
                              float3 _1972;
                              float3 _1973;
                              float3 _1974;
                              float3 _1975;
                              float3 _1976;
                              int _1977;
                              if (_1830 == 8) {
                                _1972 = _1814;
                                _1973 = _1814;
                                _1974 = (_1814 * (-_1822)) + (_1813 * _1826);
                                _1975 = (_1814 * (-_1815)) + (_1811 * _1826);
                                _1976 = 0.0f.xxx;
                                _1977 = 3;
                              } else {
                                float3 _1958;
                                float3 _1959;
                                float3 _1960;
                                float3 _1961;
                                float3 _1962;
                                int _1963;
                                if (_1830 == 9) {
                                  _1958 = _1814;
                                  _1959 = (_1814 * (-_1822)) + (_1813 * _1826);
                                  _1960 = (_1811 * (-_1818)) + (_1812 * _1815);
                                  _1961 = _1811;
                                  _1962 = 0.0f.xxx;
                                  _1963 = 4;
                                } else {
                                  float3 _1944;
                                  float3 _1945;
                                  float3 _1946;
                                  float3 _1947;
                                  float3 _1948;
                                  int _1949;
                                  if (_1830 == 10) {
                                    _1944 = _1814;
                                    _1945 = _1813;
                                    _1946 = _1812;
                                    _1947 = _1811;
                                    _1948 = 0.0f.xxx;
                                    _1949 = 0;
                                  } else {
                                    float3 _1938;
                                    float3 _1939;
                                    float3 _1940;
                                    float3 _1941;
                                    float3 _1942;
                                    int _1943;
                                    if (_1830 == 11) {
                                      float _1931 = -_1822;
                                      _1938 = (_1814 * _1931) + (_1813 * _1826);
                                      _1939 = (_1812 * _1931) + (_1813 * _1818);
                                      _1940 = _1812;
                                      _1941 = _1811;
                                      _1942 = _1814;
                                      _1943 = 5;
                                    } else {
                                      float3 _1925;
                                      float3 _1926;
                                      float3 _1927;
                                      float3 _1928;
                                      float3 _1929;
                                      int _1930;
                                      if (_1830 == 12) {
                                        _1925 = _1814;
                                        _1926 = _1813;
                                        _1927 = (_1813 * (-_1818)) + (_1812 * _1822);
                                        _1928 = (_1814 * (-_1815)) + (_1811 * _1826);
                                        _1929 = 0.0f.xxx;
                                        _1930 = 4;
                                      } else {
                                        bool _1883 = _1830 == 13;
                                        float3 _1910;
                                        float3 _1911;
                                        float3 _1912;
                                        float3 _1913;
                                        int _1914;
                                        if (_1883) {
                                          float _1903 = -_1818;
                                          _1910 = (_1813 * _1903) + (_1812 * _1822);
                                          _1911 = (_1811 * _1903) + (_1812 * _1815);
                                          _1912 = _1811;
                                          _1913 = _1814;
                                          _1914 = 5;
                                        } else {
                                          float3 _1900;
                                          float3 _1901;
                                          int _1902;
                                          if (_1830 == 14) {
                                            float _1893 = -_1815;
                                            _1900 = (_1812 * _1893) + (_1811 * _1818);
                                            _1901 = (_1814 * _1893) + (_1811 * _1826);
                                            _1902 = 5;
                                          } else {
                                            _1900 = _1811;
                                            _1901 = 0.0f.xxx;
                                            _1902 = (_1830 == 15) ? 4 : 0;
                                          }
                                          _1910 = _1813;
                                          _1911 = _1812;
                                          _1912 = _1900;
                                          _1913 = _1901;
                                          _1914 = _1902;
                                        }
                                        bool3 _1915 = _1883.xxx;
                                        _1925 = float3(_1915.x ? _1813.x : _1814.x, _1915.y ? _1813.y : _1814.y, _1915.z ? _1813.z : _1814.z);
                                        _1926 = _1910;
                                        _1927 = _1911;
                                        _1928 = _1912;
                                        _1929 = _1913;
                                        _1930 = _1914;
                                      }
                                      _1938 = _1925;
                                      _1939 = _1926;
                                      _1940 = _1927;
                                      _1941 = _1928;
                                      _1942 = _1929;
                                      _1943 = _1930;
                                    }
                                    _1944 = _1938;
                                    _1945 = _1939;
                                    _1946 = _1940;
                                    _1947 = _1941;
                                    _1948 = _1942;
                                    _1949 = _1943;
                                  }
                                  _1958 = _1944;
                                  _1959 = _1945;
                                  _1960 = _1946;
                                  _1961 = _1947;
                                  _1962 = _1948;
                                  _1963 = _1949;
                                }
                                _1972 = _1958;
                                _1973 = _1959;
                                _1974 = _1960;
                                _1975 = _1961;
                                _1976 = _1962;
                                _1977 = _1963;
                              }
                              _1985 = _1972;
                              _1986 = _1973;
                              _1987 = _1974;
                              _1988 = _1975;
                              _1989 = _1976;
                              _1990 = _1977;
                            }
                            _1999 = _1985;
                            _2000 = _1986;
                            _2001 = _1987;
                            _2002 = _1988;
                            _2003 = _1989;
                            _2004 = _1990;
                          }
                          _2005 = _1999;
                          _2006 = _2000;
                          _2007 = _2001;
                          _2008 = _2002;
                          _2009 = _2003;
                          _2010 = _2004;
                        }
                        _2019 = _2005;
                        _2020 = _2006;
                        _2021 = _2007;
                        _2022 = _2008;
                        _2023 = _2009;
                        _2024 = _2010;
                      }
                      _2033 = _2019;
                      _2034 = _2020;
                      _2035 = _2021;
                      _2036 = _2022;
                      _2037 = _2023;
                      _2038 = _2024;
                    }
                    _2047 = _2033;
                    _2048 = _2034;
                    _2049 = _2035;
                    _2050 = _2036;
                    _2051 = _2037;
                    _2052 = _2038;
                  }
                  _2061 = _2047;
                  _2062 = _2048;
                  _2063 = _2049;
                  _2064 = _2050;
                  _2065 = _2051;
                  _2066 = _2052;
                }
                _2067 = _2061;
                _2068 = _2062;
                _2069 = _2063;
                _2070 = _2064;
                _2071 = _2065;
                _2072 = _2066;
              }
              bool3 _2074 = (_2072 == 3).xxx;
              bool3 _2077 = (_2072 == 4).xxx;
              if (_2072 == 0) {
                _2161 = 0.0f;
                break;
              }
              float3 _2082 = normalize(_2070);
              float3 _2083 = normalize(_2069);
              float3 _2084 = normalize(_2068);
              float3 _2085 = normalize(float3(_2074.x ? _2070.x : _2067.x, _2074.y ? _2070.y : _2067.y, _2074.z ? _2070.z : _2067.z));
              float3 _2086 = normalize(float3(_2077.x ? _2070.x : _2071.x, _2077.y ? _2070.y : _2071.y, _2077.z ? _2070.z : _2071.z));
              float _2088 = clamp(dot(_2082, _2083), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2092 = sqrt(1.0f - (_2088 * _2088));
              float _2100 = clamp(dot(_2083, _2084), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2104 = sqrt(1.0f - (_2100 * _2100));
              float _2113 = clamp(dot(_2084, _2085), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2117 = sqrt(1.0f - (_2113 * _2113));
              float _2124 = ((cross(_2082, _2083).z * ((_2092 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2088) / _2092))) + (cross(_2083, _2084).z * ((_2104 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2100) / _2104)))) + (cross(_2084, _2085).z * ((_2117 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2113) / _2117)));
              float _2141;
              if (_2072 >= 4) {
                float _2129 = clamp(dot(_2085, _2086), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2133 = sqrt(1.0f - (_2129 * _2129));
                _2141 = _2124 + (cross(_2085, _2086).z * ((_2133 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2129) / _2133)));
              } else {
                _2141 = _2124;
              }
              float _2158;
              if (_2072 == 5) {
                float _2146 = clamp(dot(_2086, _2082), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2150 = sqrt(1.0f - (_2146 * _2146));
                _2158 = _2141 + (cross(_2086, _2082).z * ((_2150 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2146) / _2150)));
              } else {
                _2158 = _2141;
              }
              _2161 = max(_2158, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _2164 = (_1242 & 2u) != 0u;
            uint _2168 = asuint(_32_m6[_1229].w);
            uint _2169 = asuint(_32_m6[_1235].w);
            float3 _2170 = _581 - _32_m6[_1220].xyz;
            float3 _2171 = abs(_2170);
            float _2172 = _2171.x;
            float _2173 = _2171.y;
            float _2175 = _2171.z;
            int _2208;
            if ((_2172 > _2173) && (_2172 > _2175)) {
              _2208 = int((_2170.x > 0.0f) ? (_2168 & 1023u) : ((_2168 >> 10u) & 1023u));
            } else {
              int _2200;
              if (_2173 > _2175) {
                _2200 = int((_2170.y > 0.0f) ? ((_2168 >> 20u) & 1023u) : (_2169 & 1023u));
              } else {
                _2200 = int((_2170.z > 0.0f) ? ((_2169 >> 10u) & 1023u) : ((_2169 >> 20u) & 1023u));
              }
              _2208 = _2200;
            }
            int _2211 = _2164 ? int(_32_m6[_1229].w) : ((_2208 == 1023) ? (-1) : _2208);
            uint _2220 = uint(_2211);
            uint _2222 = asuint(_36_m11.x) + (_2220 * 96u);
            uint _2224 = (_2222 + 64u) >> 2u;
            uint _2227 = _2224 + 1u;
            uint _2230 = _2224 + 2u;
            uint _2233 = _2224 + 3u;
            float4 _2237 = asfloat(uint4(_39.Load(_2224 * 4 + 0), _39.Load(_2227 * 4 + 0), _39.Load(_2230 * 4 + 0), _39.Load(_2233 * 4 + 0)));
            float _2569;
            do {
              uint _2253 = ((asuint(_36_m11.y) + (_2220 * 16u)) >> 2u) + 1u;
              if (_39.Load(_2253 * 4 + 0) > 0u) {
                float4 _416 = _1171;
                float _2268;
                do {
                  if (_39.Load(_2253 * 4 + 0) == 0u) {
                    _2268 = 1.0f;
                    break;
                  }
                  _2268 = _416[_39.Load(_2253 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2569 = _2268;
                break;
              }
              uint _2269 = _2222 >> 2u;
              uint _2284 = (_2222 + 16u) >> 2u;
              uint _2299 = (_2222 + 32u) >> 2u;
              uint _2314 = (_2222 + 48u) >> 2u;
              float4 _2334 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_2269 * 4 + 0), _39.Load((_2269 + 1u) * 4 + 0), _39.Load((_2269 + 2u) * 4 + 0), _39.Load((_2269 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2284 * 4 + 0), _39.Load((_2284 + 1u) * 4 + 0), _39.Load((_2284 + 2u) * 4 + 0), _39.Load((_2284 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2299 * 4 + 0), _39.Load((_2299 + 1u) * 4 + 0), _39.Load((_2299 + 2u) * 4 + 0), _39.Load((_2299 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2314 * 4 + 0), _39.Load((_2314 + 1u) * 4 + 0), _39.Load((_2314 + 2u) * 4 + 0), _39.Load((_2314 + 3u) * 4 + 0))))), float4((_581 - ((_2170 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2170, _2170)))) * _2237.x)) + (_543 * (_2237.y * 5.0f)), 1.0f));
              float3 _2338 = _2334.xyz / _2334.w.xxx;
              uint _2340 = (_2222 + 80u) >> 2u;
              float4 _2353 = asfloat(uint4(_39.Load(_2340 * 4 + 0), _39.Load((_2340 + 1u) * 4 + 0), _39.Load((_2340 + 2u) * 4 + 0), _39.Load((_2340 + 3u) * 4 + 0)));
              float2 _2354 = _2338.xy;
              float2 _2356 = _2353.xy;
              float3 _2360 = _2338.xyz;
              bool3 _2361 = bool3(_2360.x <= 0.0f.xxx.x, _2360.y <= 0.0f.xxx.y, _2360.z <= 0.0f.xxx.z);
              bool3 _2362 = bool3(_2360.x >= 1.0f.xxx.x, _2360.y >= 1.0f.xxx.y, _2360.z >= 1.0f.xxx.z);
              float _2365 = _2338.z;
              float2 _2376 = ((_2354 * (_2353.zw - _2356)) + _2356).xy * _36_m10.zw;
              float2 _2378 = floor(_2376 + 0.5f.xx);
              float2 _2379 = _2376 - _2378;
              float _2380 = _2379.x;
              float _2381 = _2380 + 0.5f;
              float _2382 = _2381 * _2381;
              float _2385 = 1.0f - _2380;
              float _2386 = min(_2380, 0.0f);
              float _2389 = _2380 + 1.0f;
              float _2390 = max(_2380, 0.0f);
              float _2401 = _2379.y;
              float _2402 = _2401 + 0.5f;
              float _2403 = _2402 * _2402;
              float _2406 = 1.0f - _2401;
              float _2407 = min(_2401, 0.0f);
              float _2410 = _2401 + 1.0f;
              float _2411 = max(_2401, 0.0f);
              float3 _2423 = float3(0.1599999964237213134765625f * _2385, 0.1599999964237213134765625f * ((_2389 - (_2390 * _2390)) + 1.0f), _2382 * 0.07999999821186065673828125f);
              float3 _2424 = float3(0.1599999964237213134765625f * ((_2382 * 0.5f) - _2380), 0.1599999964237213134765625f * ((_2385 - (_2386 * _2386)) + 1.0f), 0.1599999964237213134765625f * _2389) + _2423;
              float3 _2426 = float3(0.1599999964237213134765625f * _2406, 0.1599999964237213134765625f * ((_2410 - (_2411 * _2411)) + 1.0f), _2403 * 0.07999999821186065673828125f);
              float3 _2427 = float3(0.1599999964237213134765625f * ((_2403 * 0.5f) - _2401), 0.1599999964237213134765625f * ((_2406 - (_2407 * _2407)) + 1.0f), 0.1599999964237213134765625f * _2410) + _2426;
              float3 _2433 = ((_2423 / _2424) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
              float3 _2435 = ((_2426 / _2427) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
              float2 _2437 = _2378 * _36_m10.xy;
              float _2438 = _2433.x;
              float _2439 = _2435.x;
              float _2442 = _2433.y;
              float _2445 = _2433.z;
              float _2448 = _2435.y;
              float _2455 = _2435.z;
              float _2462 = _2424.x;
              float _2463 = _2427.x;
              float _2465 = _2424.y;
              float _2467 = _2424.z;
              float _2469 = _2427.y;
              float _2473 = _2427.z;
              float _2531 = (((((((_2462 * _2463) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2438, _2439), _403).xy, _2365)) + ((_2465 * _2463) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2442, _2439), _403).xy, _2365))) + ((_2467 * _2463) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2445, _2439), _403).xy, _2365))) + ((_2462 * _2469) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2438, _2448), _403).xy, _2365))) + ((_2465 * _2469) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2442, _2448), _403).xy, _2365))) + ((_2467 * _2469) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2445, _2448), _403).xy, _2365))) + ((_2462 * _2473) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2438, _2455), _403).xy, _2365));
              float4 _2554 = asfloat(uint4(_39.Load(_2224 * 4 + 0), _39.Load(_2227 * 4 + 0), _39.Load(_2230 * 4 + 0), _39.Load(_2233 * 4 + 0)));
              float _2555 = _2554.w;
              float2 _2557 = min(_2354, 1.0f.xx - _2354);
              _2569 = lerp(1.0f, (any(bool3(_2361.x || _2362.x, _2361.y || _2362.y, _2361.z || _2362.z)) || ((asuint(_2365) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2531 + ((_2465 * _2473) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2442, _2455), _403).xy, _2365))) + ((_2467 * _2473) * _37.SampleCmpLevelZero(_18, float3(_2437 + float2(_2445, _2455), _403).xy, _2365))), _2164 ? min(_2555, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2554.z - _2334.w) * 0.25f, min(_2557.x, _2557.y)))) : _2555);
              break;
            } while (false);
            _2575 = ((_32_m6[_1217].xyz * (((((0.039999999105930328369140625f.xxx * _1381.x) + (0.959999978542327880859375f.xxx * _1381.y)) * _1775) * _32_m6[_1238].z) + (_796 * _2161))) * _1354) * ((_2211 >= 0) ? _2569 : 1.0f);
            break;
          } while (false);
          _4084 = _1177;
          _4085 = _2575 * _1317;
          break;
        }
        float _4082;
        float3 _4083;
        if (_32_m6[_1217].w < 1.5f) {
          float3 _3180 = float3(0.100000001490116119384765625f, _794, 1.0f);
          float _3189 = (0.5f + (0.5f * _32_m6[_1223].y)) - abs(_32_m6[_1223].x);
          float _3190 = _32_m6[_1223].y - _3189;
          float _3197 = abs(max((1.0f - abs(_3189)) - abs(_3190), 0.00048828125f));
          float3 _3201 = normalize(float3(_3189, _3190, (_32_m6[_1223].x >= 0.0f) ? _3197 : (-_3197)));
          float3 _3202 = _32_m6[_1220].xyz - _581;
          float _3203 = dot(_3202, _3202);
          float _3204 = rsqrt(_3203);
          float3 _3205 = _3202 * _3204;
          float _3209 = clamp(_32_m6[_1238].y * _3204, 0.0f, 1.0f);
          int _3214 = int(_32_m6[_1238].w);
          float3 _3215 = _3201 * _32_m6[_1223].z;
          float3 _3216 = _3215 * 0.5f;
          float3 _3217 = _3202 - _3216;
          float3 _3218 = _3202 + _3216;
          bool _3220 = (_1321 & 1u) == 0u;
          bool _3223 = _3220 || ((_1242 & 2u) != 0u);
          bool _3226 = (!_3220) && (_32_m6[_1223].z > 0.0f);
          float _3245;
          float _3246;
          if (_3226) {
            float _3230 = length(_3217);
            float _3231 = length(_3218);
            _3245 = clamp(0.5f * ((dot(_543, _3217) / _3230) + (dot(_543, _3218) / _3231)), 0.0f, 1.0f);
            _3246 = 1.0f / ((((_3230 * _3231) + dot(_3217, _3218)) * 0.5f) + 1.0f);
          } else {
            _3245 = clamp(dot(_543, _3205), 0.0f, 1.0f);
            _3246 = 1.0f;
          }
          float _3268;
          if (_32_m6[_1235].w < 0.0f) {
            float _3262 = _3203 * (_32_m6[_1220].w * _32_m6[_1220].w);
            float _3265 = clamp(1.0f - (_3262 * _3262), 0.0f, 1.0f);
            _3268 = lerp(1.0f / (_3203 + 1.0f), _3246, float(_3226)) * (_3265 * _3265);
          } else {
            float3 _3251 = _3202 * _32_m6[_1220].w;
            _3268 = _3246 * pow(1.0f - clamp(dot(_3251, _3251), 0.0f, 1.0f), _32_m6[_1235].w);
          }
          float _3274 = clamp((dot(_3205, -_3201) - _32_m6[_1223].z) * _32_m6[_1223].w, 0.0f, 1.0f);
          float _3278 = _3268 * lerp(1.0f, _3274 * _3274, float(_3220));
          float _3378;
          if ((!_3226) && (_3214 >= 0)) {
            uint _3284 = uint(_3214);
            float2 _3371;
            [branch] if (_3220) {
              float4 _3361 = mul(_56_m1[_3284], _585);
              _3371 = _56_m0[_3284].xy + (clamp(_3361.xy / _3361.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_3284].zw);
            }
            else {
              float3 _3298 = mul(float4(-_3202, 0.0f), _56_m1[_3284]).xyz;
              float3 _411 = _3298;
              float3 _410 = _3298;
              float3 _409 = abs(_3298);
              uint _3307 = uint(int(_409.y > _409.x));
              uint _3313 = (_409.z > _409[_3307]) ? 2u : _3307;
              uint _3319 = (_3313 * 2u) + uint(_410[_3313] < 0.0f);
              float _3323 = abs(_411[_3319 / 2u]);
              float _3343 = 0.5f - (0.000244140625f / _56_m0[_3284].w);
              _3371 = _56_m0[_3284].xy + (clamp(float2((float(_3319) + ((((_411[uint(_371[_3319].x)] * _372[_3319].x) / _3323) * _3343) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_411[uint(_371[_3319].y)] * _372[_3319].y) / _3323) * _3343)), 0.0f.xx, 1.0f.xx) * _56_m0[_3284].zw);
            }
            _3378 = _3278 * _54.SampleLevel(_15, _3371, 0.0f).x;
          } else {
            _3378 = _3278;
          }
          bool _3379 = _3378 > 0.0f;
          float _3788;
          if (_3379) {
            int _3432;
            if (_3223) {
              _3432 = int(_32_m6[_1226].x);
            } else {
              uint _3387 = asuint(_32_m6[_1223].w);
              uint _3388 = asuint(_32_m6[_1226].x);
              float3 _3389 = _581 - _32_m6[_1220].xyz;
              float3 _3390 = abs(_3389);
              float _3391 = _3390.x;
              float _3392 = _3390.y;
              float _3394 = _3390.z;
              int _3427;
              if ((_3391 > _3392) && (_3391 > _3394)) {
                _3427 = int((_3389.x > 0.0f) ? (_3387 & 1023u) : ((_3387 >> 10u) & 1023u));
              } else {
                int _3419;
                if (_3392 > _3394) {
                  _3419 = int((_3389.y > 0.0f) ? ((_3387 >> 20u) & 1023u) : (_3388 & 1023u));
                } else {
                  _3419 = int((_3389.z > 0.0f) ? ((_3388 >> 10u) & 1023u) : ((_3388 >> 20u) & 1023u));
                }
                _3427 = _3419;
              }
              _3432 = (_3427 == 1023) ? (-1) : _3427;
            }
            uint _3437 = uint(_3432);
            uint _3439 = asuint(_36_m11.x) + (_3437 * 96u);
            uint _3441 = (_3439 + 64u) >> 2u;
            uint _3444 = _3441 + 1u;
            uint _3447 = _3441 + 2u;
            uint _3450 = _3441 + 3u;
            float4 _3454 = asfloat(uint4(_39.Load(_3441 * 4 + 0), _39.Load(_3444 * 4 + 0), _39.Load(_3447 * 4 + 0), _39.Load(_3450 * 4 + 0)));
            float _3786;
            do {
              uint _3470 = ((asuint(_36_m11.y) + (_3437 * 16u)) >> 2u) + 1u;
              if (_39.Load(_3470 * 4 + 0) > 0u) {
                float4 _408 = _1171;
                float _3485;
                do {
                  if (_39.Load(_3470 * 4 + 0) == 0u) {
                    _3485 = 1.0f;
                    break;
                  }
                  _3485 = _408[_39.Load(_3470 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3786 = _3485;
                break;
              }
              uint _3486 = _3439 >> 2u;
              uint _3501 = (_3439 + 16u) >> 2u;
              uint _3516 = (_3439 + 32u) >> 2u;
              uint _3531 = (_3439 + 48u) >> 2u;
              float4 _3551 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_3486 * 4 + 0), _39.Load((_3486 + 1u) * 4 + 0), _39.Load((_3486 + 2u) * 4 + 0), _39.Load((_3486 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_3501 * 4 + 0), _39.Load((_3501 + 1u) * 4 + 0), _39.Load((_3501 + 2u) * 4 + 0), _39.Load((_3501 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_3516 * 4 + 0), _39.Load((_3516 + 1u) * 4 + 0), _39.Load((_3516 + 2u) * 4 + 0), _39.Load((_3516 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_3531 * 4 + 0), _39.Load((_3531 + 1u) * 4 + 0), _39.Load((_3531 + 2u) * 4 + 0), _39.Load((_3531 + 3u) * 4 + 0))))), float4((_581 - ((-_3205) * _3454.x)) + (_543 * (_3454.y * 5.0f)), 1.0f));
              float3 _3555 = _3551.xyz / _3551.w.xxx;
              uint _3557 = (_3439 + 80u) >> 2u;
              float4 _3570 = asfloat(uint4(_39.Load(_3557 * 4 + 0), _39.Load((_3557 + 1u) * 4 + 0), _39.Load((_3557 + 2u) * 4 + 0), _39.Load((_3557 + 3u) * 4 + 0)));
              float2 _3571 = _3555.xy;
              float2 _3573 = _3570.xy;
              float3 _3577 = _3555.xyz;
              bool3 _3578 = bool3(_3577.x <= 0.0f.xxx.x, _3577.y <= 0.0f.xxx.y, _3577.z <= 0.0f.xxx.z);
              bool3 _3579 = bool3(_3577.x >= 1.0f.xxx.x, _3577.y >= 1.0f.xxx.y, _3577.z >= 1.0f.xxx.z);
              float _3582 = _3555.z;
              float2 _3593 = ((_3571 * (_3570.zw - _3573)) + _3573).xy * _36_m10.zw;
              float2 _3595 = floor(_3593 + 0.5f.xx);
              float2 _3596 = _3593 - _3595;
              float _3597 = _3596.x;
              float _3598 = _3597 + 0.5f;
              float _3599 = _3598 * _3598;
              float _3602 = 1.0f - _3597;
              float _3603 = min(_3597, 0.0f);
              float _3606 = _3597 + 1.0f;
              float _3607 = max(_3597, 0.0f);
              float _3618 = _3596.y;
              float _3619 = _3618 + 0.5f;
              float _3620 = _3619 * _3619;
              float _3623 = 1.0f - _3618;
              float _3624 = min(_3618, 0.0f);
              float _3627 = _3618 + 1.0f;
              float _3628 = max(_3618, 0.0f);
              float3 _3640 = float3(0.1599999964237213134765625f * _3602, 0.1599999964237213134765625f * ((_3606 - (_3607 * _3607)) + 1.0f), _3599 * 0.07999999821186065673828125f);
              float3 _3641 = float3(0.1599999964237213134765625f * ((_3599 * 0.5f) - _3597), 0.1599999964237213134765625f * ((_3602 - (_3603 * _3603)) + 1.0f), 0.1599999964237213134765625f * _3606) + _3640;
              float3 _3643 = float3(0.1599999964237213134765625f * _3623, 0.1599999964237213134765625f * ((_3627 - (_3628 * _3628)) + 1.0f), _3620 * 0.07999999821186065673828125f);
              float3 _3644 = float3(0.1599999964237213134765625f * ((_3620 * 0.5f) - _3618), 0.1599999964237213134765625f * ((_3623 - (_3624 * _3624)) + 1.0f), 0.1599999964237213134765625f * _3627) + _3643;
              float3 _3650 = ((_3640 / _3641) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
              float3 _3652 = ((_3643 / _3644) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
              float2 _3654 = _3595 * _36_m10.xy;
              float _3655 = _3650.x;
              float _3656 = _3652.x;
              float _3659 = _3650.y;
              float _3662 = _3650.z;
              float _3665 = _3652.y;
              float _3672 = _3652.z;
              float _3679 = _3641.x;
              float _3680 = _3644.x;
              float _3682 = _3641.y;
              float _3684 = _3641.z;
              float _3686 = _3644.y;
              float _3690 = _3644.z;
              float _3748 = (((((((_3679 * _3680) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3655, _3656), _403).xy, _3582)) + ((_3682 * _3680) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3659, _3656), _403).xy, _3582))) + ((_3684 * _3680) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3662, _3656), _403).xy, _3582))) + ((_3679 * _3686) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3655, _3665), _403).xy, _3582))) + ((_3682 * _3686) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3659, _3665), _403).xy, _3582))) + ((_3684 * _3686) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3662, _3665), _403).xy, _3582))) + ((_3679 * _3690) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3655, _3672), _403).xy, _3582));
              float4 _3771 = asfloat(uint4(_39.Load(_3441 * 4 + 0), _39.Load(_3444 * 4 + 0), _39.Load(_3447 * 4 + 0), _39.Load(_3450 * 4 + 0)));
              float _3772 = _3771.w;
              float2 _3774 = min(_3571, 1.0f.xx - _3571);
              _3786 = lerp(1.0f, (any(bool3(_3578.x || _3579.x, _3578.y || _3579.y, _3578.z || _3579.z)) || ((asuint(_3582) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3748 + ((_3682 * _3690) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3659, _3672), _403).xy, _3582))) + ((_3684 * _3690) * _37.SampleCmpLevelZero(_18, float3(_3654 + float2(_3662, _3672), _403).xy, _3582))), _3223 ? min(_3772, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3771.z - _3551.w) * 0.25f, min(_3774.x, _3774.y)))) : _3772);
              break;
            } while (false);
            _3788 = (_3432 >= 0) ? _3786 : 1.0f;
          } else {
            _3788 = 1.0f;
          }
          float3 _3812;
          float3 _3813;
          if (_3226) {
            float3 _3791 = _3180 * _3180;
            float3 _3792 = reflect(_609, _543);
            float _3801 = dot(_3792, _3215);
            _3812 = _3791 / clamp(_3791 + (0.5f * clamp(_32_m6[_1223].z * _3204, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3813 = normalize(_3217 + (_3215 * clamp(dot(_3217, (_3792 * _3801) - _3215) / ((_32_m6[_1223].z * _32_m6[_1223].z) - (_3801 * _3801)), 0.0f, 1.0f)));
          } else {
            _3812 = 1.0f.xxx;
            _3813 = _3205;
          }
          float3 _3814 = _3813 + _607;
          float3 _3818 = _3814 * rsqrt(max(6.103515625e-05f, dot(_3814, _3814)));
          float3 _4081;
          if (_3379) {
            float _3822 = clamp(_3245, 0.0f, 1.0f);
            float _3824 = clamp(dot(_543, _3818), 0.0f, 1.0f);
            float _3826 = clamp(dot(_607, _3818), 0.0f, 1.0f);
            float _3828 = clamp(_797, 0.0f, 1.0f);
            float3 _4026;
            float3 _4027;
            [branch] if (_553) {
              float _3944 = _794 * _794;
              float _3954;
              if (_3209 > 0.0f) {
                _3954 = clamp(_3944 + ((_3209 * _3209) / ((_3826 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3954 = _3944;
              }
              float _3955 = _3954 * _3954;
              float _3976 = (((_3824 * _3955) - _3824) * _3824) + 1.0f;
              float _3981 = 1.0f - _3826;
              float _3982 = _3981 * _3981;
              float _3984 = (_3981 * _3982) * _3982;
              float _4008 = 1.0f - _794;
              float _4015 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4008 * (1.04997003078460693359375f + (_4008 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4008))))));
              float _4016 = 1.0f - _4015;
              _4026 = 0.0f.xxx;
              _4027 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3984)) + _3984.xxx) * (((_3955 / (_3976 * _3976)) * _3812.y) * (0.5f / (((_3822 * sqrt(((((-_3828) * _3955) + _3828) * _3828) + _3955)) + (_3828 * sqrt(((((-_3822) * _3955) + _3822) * _3822) + _3955))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_3828, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_3822, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4015) / _4016)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _4016)));
            }
            else {
              float _3832 = _794 * _794;
              float _3842;
              if (_3209 > 0.0f) {
                _3842 = clamp(_3832 + ((_3209 * _3209) / ((_3826 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3842 = _3832;
              }
              float _3843 = _3842 * _3842;
              float _3864 = (((_3824 * _3843) - _3824) * _3824) + 1.0f;
              float _3869 = 1.0f - _3826;
              float _3870 = _3869 * _3869;
              float _3872 = (_3869 * _3870) * _3870;
              float _3896 = 1.0f - _794;
              float _3903 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3896 * (1.04997003078460693359375f + (_3896 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3896))))));
              float _3904 = 1.0f - _3903;
              float _3927 = clamp(1.0f - _548, 0.0f, 1.0f);
              float _3935 = clamp((dot(_543, _3813) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
              _4026 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_546, _547, _548).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _547.xxx) * _548) * lerp((_545 * lerp(1.0f, (_3935 * sqrt(_3935)) * 1.66666662693023681640625f, _3927)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_607, _3813), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3927));
              _4027 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3872)) + _3872.xxx) * (((_3843 / (_3864 * _3864)) * _3812.y) * (0.5f / (((_3822 * sqrt(((((-_3828) * _3843) + _3828) * _3828) + _3843)) + (_3828 * sqrt(((((-_3822) * _3843) + _3822) * _3822) + _3843))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_3828, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_3822, _794) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3903) / _3904)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _3904)));
            }
            float3 _4029 = _796 * _3812.z;
            float3 _4034 = ((_32_m6[_1217].xyz * _3378) * _3788) * _1317;
            float3 _4035 = clamp(_4027 * _32_m6[_1238].z, 0.0f.xxx, 1000.0f.xxx) * _3245;
            float3 _4080;
            [branch] if (_553) {
              float3 _4075;
              do {
                [branch] if (((_551 > 0u) && (_551 <= 15u)) && (_552 > 0.0f)) {
                  int _4054 = int(clamp(_551 - 1u, 0u, 14u));
                  _4075 = _49.SampleLevel(_15, float3((dot(normalize(lerp(_543, _550, dot(_52_m0[_4054].xyz, 0.3333333432674407958984375f.xxx).xxx)), _3813) * 0.5f) + 0.5f, _552 * _52_m0[_4054].w, float(_4054)), 0.0f).xyz;
                  break;
                }
                _4075 = _3245.xxx;
                break;
              } while (false);
              _4080 = _4034 * (((_4029 * _4075) + _4035) + _4026);
            }
            else {
              _4080 = ((_4035 + _4026) + (_4029 * _3245)) * _4034;
            }
            _4081 = _4080;
          } else {
            _4081 = 0.0f.xxx;
          }
          _4082 = _1177;
          _4083 = _4081;
        } else {
          float _3178;
          do {
            if (_1324) {
              _3178 = 1.0f;
              break;
            }
            float _2592 = (0.5f + (0.5f * _32_m6[_1223].y)) - abs(_32_m6[_1223].x);
            float _2593 = _32_m6[_1223].y - _2592;
            float _2600 = abs(max((1.0f - abs(_2592)) - abs(_2593), 0.00048828125f));
            float3 _2604 = normalize(float3(_2592, _2593, (_32_m6[_1223].x >= 0.0f) ? _2600 : (-_2600)));
            float3 _2605 = _32_m6[_1220].xyz - _581;
            float _2606 = dot(_2605, _2605);
            float3 _2608 = _2605 * rsqrt(_2606);
            int _2611 = int(_32_m6[_1238].w);
            float3 _2613 = (_2604 * _32_m6[_1223].z) * 0.5f;
            float3 _2614 = _2605 - _2613;
            float3 _2615 = _2605 + _2613;
            bool _2617 = (_1321 & 1u) == 0u;
            bool _2620 = _2617 || ((_1242 & 2u) != 0u);
            bool _2623 = (!_2617) && (_32_m6[_1223].z > 0.0f);
            float _2635;
            if (_2623) {
              _2635 = 1.0f / ((((length(_2614) * length(_2615)) + dot(_2614, _2615)) * 0.5f) + 1.0f);
            } else {
              _2635 = 1.0f;
            }
            float _2657;
            if (_32_m6[_1235].w < 0.0f) {
              float _2651 = _2606 * (_32_m6[_1220].w * _32_m6[_1220].w);
              float _2654 = clamp(1.0f - (_2651 * _2651), 0.0f, 1.0f);
              _2657 = lerp(1.0f / (_2606 + 1.0f), _2635, float(_2623)) * (_2654 * _2654);
            } else {
              float3 _2640 = _2605 * _32_m6[_1220].w;
              _2657 = _2635 * pow(1.0f - clamp(dot(_2640, _2640), 0.0f, 1.0f), _32_m6[_1235].w);
            }
            float _2663 = clamp((dot(_2608, -_2604) - _32_m6[_1223].z) * _32_m6[_1223].w, 0.0f, 1.0f);
            float _2667 = _2657 * lerp(1.0f, _2663 * _2663, float(_2617));
            float _2767;
            if ((!_2623) && (_2611 >= 0)) {
              uint _2673 = uint(_2611);
              float2 _2760;
              [branch] if (_2617) {
                float4 _2750 = mul(_56_m1[_2673], _585);
                _2760 = _56_m0[_2673].xy + (clamp(_2750.xy / _2750.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_2673].zw);
              }
              else {
                float3 _2687 = mul(float4(-_2605, 0.0f), _56_m1[_2673]).xyz;
                float3 _415 = _2687;
                float3 _414 = _2687;
                float3 _413 = abs(_2687);
                uint _2696 = uint(int(_413.y > _413.x));
                uint _2702 = (_413.z > _413[_2696]) ? 2u : _2696;
                uint _2708 = (_2702 * 2u) + uint(_414[_2702] < 0.0f);
                float _2712 = abs(_415[_2708 / 2u]);
                float _2732 = 0.5f - (0.000244140625f / _56_m0[_2673].w);
                _2760 = _56_m0[_2673].xy + (clamp(float2((float(_2708) + ((((_415[uint(_371[_2708].x)] * _372[_2708].x) / _2712) * _2732) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_415[uint(_371[_2708].y)] * _372[_2708].y) / _2712) * _2732)), 0.0f.xx, 1.0f.xx) * _56_m0[_2673].zw);
              }
              _2767 = _2667 * _54.SampleLevel(_15, _2760, 0.0f).x;
            } else {
              _2767 = _2667;
            }
            float _3177;
            if (_2767 > 0.0f) {
              int _2821;
              if (_2620) {
                _2821 = int(_32_m6[_1226].x);
              } else {
                uint _2776 = asuint(_32_m6[_1223].w);
                uint _2777 = asuint(_32_m6[_1226].x);
                float3 _2778 = _581 - _32_m6[_1220].xyz;
                float3 _2779 = abs(_2778);
                float _2780 = _2779.x;
                float _2781 = _2779.y;
                float _2783 = _2779.z;
                int _2816;
                if ((_2780 > _2781) && (_2780 > _2783)) {
                  _2816 = int((_2778.x > 0.0f) ? (_2776 & 1023u) : ((_2776 >> 10u) & 1023u));
                } else {
                  int _2808;
                  if (_2781 > _2783) {
                    _2808 = int((_2778.y > 0.0f) ? ((_2776 >> 20u) & 1023u) : (_2777 & 1023u));
                  } else {
                    _2808 = int((_2778.z > 0.0f) ? ((_2777 >> 10u) & 1023u) : ((_2777 >> 20u) & 1023u));
                  }
                  _2816 = _2808;
                }
                _2821 = (_2816 == 1023) ? (-1) : _2816;
              }
              uint _2826 = uint(_2821);
              uint _2828 = asuint(_36_m11.x) + (_2826 * 96u);
              uint _2830 = (_2828 + 64u) >> 2u;
              uint _2833 = _2830 + 1u;
              uint _2836 = _2830 + 2u;
              uint _2839 = _2830 + 3u;
              float4 _2843 = asfloat(uint4(_39.Load(_2830 * 4 + 0), _39.Load(_2833 * 4 + 0), _39.Load(_2836 * 4 + 0), _39.Load(_2839 * 4 + 0)));
              float _3175;
              do {
                uint _2859 = ((asuint(_36_m11.y) + (_2826 * 16u)) >> 2u) + 1u;
                if (_39.Load(_2859 * 4 + 0) > 0u) {
                  float4 _412 = _1171;
                  float _2874;
                  do {
                    if (_39.Load(_2859 * 4 + 0) == 0u) {
                      _2874 = 1.0f;
                      break;
                    }
                    _2874 = _412[_39.Load(_2859 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _3175 = _2874;
                  break;
                }
                uint _2875 = _2828 >> 2u;
                uint _2890 = (_2828 + 16u) >> 2u;
                uint _2905 = (_2828 + 32u) >> 2u;
                uint _2920 = (_2828 + 48u) >> 2u;
                float4 _2940 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_2875 * 4 + 0), _39.Load((_2875 + 1u) * 4 + 0), _39.Load((_2875 + 2u) * 4 + 0), _39.Load((_2875 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2890 * 4 + 0), _39.Load((_2890 + 1u) * 4 + 0), _39.Load((_2890 + 2u) * 4 + 0), _39.Load((_2890 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2905 * 4 + 0), _39.Load((_2905 + 1u) * 4 + 0), _39.Load((_2905 + 2u) * 4 + 0), _39.Load((_2905 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2920 * 4 + 0), _39.Load((_2920 + 1u) * 4 + 0), _39.Load((_2920 + 2u) * 4 + 0), _39.Load((_2920 + 3u) * 4 + 0))))), float4((_581 - ((-_2608) * _2843.x)) + (_543 * (_2843.y * 5.0f)), 1.0f));
                float3 _2944 = _2940.xyz / _2940.w.xxx;
                uint _2946 = (_2828 + 80u) >> 2u;
                float4 _2959 = asfloat(uint4(_39.Load(_2946 * 4 + 0), _39.Load((_2946 + 1u) * 4 + 0), _39.Load((_2946 + 2u) * 4 + 0), _39.Load((_2946 + 3u) * 4 + 0)));
                float2 _2960 = _2944.xy;
                float2 _2962 = _2959.xy;
                float3 _2966 = _2944.xyz;
                bool3 _2967 = bool3(_2966.x <= 0.0f.xxx.x, _2966.y <= 0.0f.xxx.y, _2966.z <= 0.0f.xxx.z);
                bool3 _2968 = bool3(_2966.x >= 1.0f.xxx.x, _2966.y >= 1.0f.xxx.y, _2966.z >= 1.0f.xxx.z);
                float _2971 = _2944.z;
                float2 _2982 = ((_2960 * (_2959.zw - _2962)) + _2962).xy * _36_m10.zw;
                float2 _2984 = floor(_2982 + 0.5f.xx);
                float2 _2985 = _2982 - _2984;
                float _2986 = _2985.x;
                float _2987 = _2986 + 0.5f;
                float _2988 = _2987 * _2987;
                float _2991 = 1.0f - _2986;
                float _2992 = min(_2986, 0.0f);
                float _2995 = _2986 + 1.0f;
                float _2996 = max(_2986, 0.0f);
                float _3007 = _2985.y;
                float _3008 = _3007 + 0.5f;
                float _3009 = _3008 * _3008;
                float _3012 = 1.0f - _3007;
                float _3013 = min(_3007, 0.0f);
                float _3016 = _3007 + 1.0f;
                float _3017 = max(_3007, 0.0f);
                float3 _3029 = float3(0.1599999964237213134765625f * _2991, 0.1599999964237213134765625f * ((_2995 - (_2996 * _2996)) + 1.0f), _2988 * 0.07999999821186065673828125f);
                float3 _3030 = float3(0.1599999964237213134765625f * ((_2988 * 0.5f) - _2986), 0.1599999964237213134765625f * ((_2991 - (_2992 * _2992)) + 1.0f), 0.1599999964237213134765625f * _2995) + _3029;
                float3 _3032 = float3(0.1599999964237213134765625f * _3012, 0.1599999964237213134765625f * ((_3016 - (_3017 * _3017)) + 1.0f), _3009 * 0.07999999821186065673828125f);
                float3 _3033 = float3(0.1599999964237213134765625f * ((_3009 * 0.5f) - _3007), 0.1599999964237213134765625f * ((_3012 - (_3013 * _3013)) + 1.0f), 0.1599999964237213134765625f * _3016) + _3032;
                float3 _3039 = ((_3029 / _3030) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
                float3 _3041 = ((_3032 / _3033) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
                float2 _3043 = _2984 * _36_m10.xy;
                float _3044 = _3039.x;
                float _3045 = _3041.x;
                float _3048 = _3039.y;
                float _3051 = _3039.z;
                float _3054 = _3041.y;
                float _3061 = _3041.z;
                float _3068 = _3030.x;
                float _3069 = _3033.x;
                float _3071 = _3030.y;
                float _3073 = _3030.z;
                float _3075 = _3033.y;
                float _3079 = _3033.z;
                float _3137 = (((((((_3068 * _3069) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3044, _3045), _403).xy, _2971)) + ((_3071 * _3069) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3048, _3045), _403).xy, _2971))) + ((_3073 * _3069) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3051, _3045), _403).xy, _2971))) + ((_3068 * _3075) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3044, _3054), _403).xy, _2971))) + ((_3071 * _3075) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3048, _3054), _403).xy, _2971))) + ((_3073 * _3075) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3051, _3054), _403).xy, _2971))) + ((_3068 * _3079) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3044, _3061), _403).xy, _2971));
                float4 _3160 = asfloat(uint4(_39.Load(_2830 * 4 + 0), _39.Load(_2833 * 4 + 0), _39.Load(_2836 * 4 + 0), _39.Load(_2839 * 4 + 0)));
                float _3161 = _3160.w;
                float2 _3163 = min(_2960, 1.0f.xx - _2960);
                _3175 = lerp(1.0f, (any(bool3(_2967.x || _2968.x, _2967.y || _2968.y, _2967.z || _2968.z)) || ((asuint(_2971) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3137 + ((_3071 * _3079) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3048, _3061), _403).xy, _2971))) + ((_3073 * _3079) * _37.SampleCmpLevelZero(_18, float3(_3043 + float2(_3051, _3061), _403).xy, _2971))), _2620 ? min(_3161, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3160.z - _2940.w) * 0.25f, min(_3163.x, _3163.y)))) : _3161);
                break;
              } while (false);
              _3177 = (_2821 >= 0) ? _3175 : 1.0f;
            } else {
              _3177 = 1.0f;
            }
            _3178 = _3177;
            break;
          } while (false);
          _4082 = _1177 * _3178;
          _4083 = 0.0f.xxx;
        }
        _4084 = _4082;
        _4085 = _4083;
        break;
      } while (false);
      _1202 = _4084;
      _1205 = _1204 + _4085;
    }
    _1174 = _1173 + _1204;
  }
  float3 _4089 = _1142.xyz + (_1173 * _1176);
  float3 _4091 = _545.xxx;
  float3 _4126;
  float3 _4127;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x8878A8D6:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _4102 = min(_24.SampleBias(_14, _4, _9_m16).x, _545);
    _4126 = clamp((pow(abs(_798 + _4102), exp2(((-16.0f) * _794) - 1.0f)) - 1.0f) + _4102, 0.0f, 1.0f).xxx;
    _4127 = max(_4102.xxx, ((((((_796 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _4102) + ((_796 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _4102) + ((_796 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _4102);
  }
  else {
    _4126 = _4091;
    _4127 = _4091;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _4089 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _4126 : 1.0f.xxx;
  // RenoDX code end
  float3 _5978;
  [branch] if (_553) {
    float3 _5069;
    do {
      [branch] if (((_551 > 0u) && (_551 <= 15u)) && (_552 > 0.0f)) {
        uint _5057 = clamp(_551 - 1u, 0u, 14u);
        _5069 = _50.SampleLevel(_15, float3(_552 * _52_m0[_5057].w, 0.5f, float(_5057)), 0.0f).xyz;
        break;
      }
      _5069 = 1.0f.xxx;
      break;
    } while (false);
    float3 _5086 = (_581 + (_543 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_556 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _5096 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _5105 = _5086 - (_9_m108.xyz + (_5096 * (-_9_m110.w)));
    float _5120 = max(min(max((max(abs(_5105.x), abs(_5105.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_5105.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _5422;
    float4 _5423;
    float4 _5424;
    float _5425;
    float _5426;
    if ((_9_m108.w != 0.0f) && (_5120 < 1.0f)) {
      float3 _5133 = _5086 - (_9_m108.xyz + (_5096 * (-_9_m110.y)));
      float _5147 = max(clamp((max(abs(_5133.x), abs(_5133.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_5133.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _5223;
      float4 _5224;
      float4 _5225;
      float4 _5226;
      if (_5147 < 1.0f) {
        float3 _5156 = ((_5086 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5158 = _5156 - floor(_5156);
        float4 _5162 = _66.SampleLevel(_16, _5158, 0.0f);
        float _5163 = 1.0f - _5147;
        float _5167 = _9_m109.y * 0.5f;
        float _5172 = _5158.x;
        float _5173 = clamp(_5158.y, _5167, 1.0f - _5167) * 0.3333333432674407958984375f;
        float _5174 = _5158.z;
        float4 _5177 = _67.SampleLevel(_15, float3(_5172, _5173, _5174), 0.0f);
        float _5193 = _5162.x;
        float _5203 = _5162.y;
        float _5213 = _5162.z;
        _5223 = _5120 + (_5177.w * _5163);
        _5224 = float4(((_67.SampleLevel(_15, float3(_5172, _5173 + 0.666666686534881591796875f, _5174), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5213, _5213) * _5163;
        _5225 = float4(((_67.SampleLevel(_15, float3(_5172, _5173 + 0.3333333432674407958984375f, _5174), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5203, _5203) * _5163;
        _5226 = float4(((_5177.xyz * 4.0f) - 2.0f.xxx) * _5193, _5193) * _5163;
      } else {
        _5223 = _5120;
        _5224 = 0.0f.xxxx;
        _5225 = 0.0f.xxxx;
        _5226 = 0.0f.xxxx;
      }
      float3 _5232 = _5086 - (_9_m108.xyz + (_5096 * (-_9_m110.z)));
      float _5246 = max(clamp((max(abs(_5232.x), abs(_5232.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_5232.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _5326;
      float4 _5327;
      float4 _5328;
      float4 _5329;
      if (_5246 < 1.0f) {
        float3 _5255 = ((_5086 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5257 = _5255 - floor(_5255);
        float4 _5261 = _68.SampleLevel(_16, _5257, 0.0f);
        float _5263 = _5147 * (1.0f - _5246);
        float _5267 = _9_m109.y * 0.5f;
        float _5272 = _5257.x;
        float _5273 = clamp(_5257.y, _5267, 1.0f - _5267) * 0.3333333432674407958984375f;
        float _5274 = _5257.z;
        float4 _5277 = _69.SampleLevel(_15, float3(_5272, _5273, _5274), 0.0f);
        float _5293 = _5261.x;
        float _5304 = _5261.y;
        float _5315 = _5261.z;
        _5326 = _5223 + (_5277.w * _5263);
        _5327 = _5224 + (float4(((_69.SampleLevel(_15, float3(_5272, _5273 + 0.666666686534881591796875f, _5274), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5315, _5315) * _5263);
        _5328 = _5225 + (float4(((_69.SampleLevel(_15, float3(_5272, _5273 + 0.3333333432674407958984375f, _5274), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5304, _5304) * _5263);
        _5329 = _5226 + (float4(((_5277.xyz * 4.0f) - 2.0f.xxx) * _5293, _5293) * _5263);
      } else {
        _5326 = _5223;
        _5327 = _5224;
        _5328 = _5225;
        _5329 = _5226;
      }
      float4 _5412;
      float4 _5413;
      float4 _5414;
      float _5415;
      if (_5246 > 0.0f) {
        float3 _5338 = ((_5086 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5341 = _9_m109.xyz * 0.5f;
        float3 _5343 = clamp(_5338 - floor(_5338), _5341, 1.0f.xxx - _5341);
        float4 _5347 = _70.SampleLevel(_16, _5343, 0.0f);
        float _5349 = _5246 * (1.0f - _5120);
        float _5353 = _9_m109.y * 0.5f;
        float _5358 = _5343.x;
        float _5359 = clamp(_5343.y, _5353, 1.0f - _5353) * 0.3333333432674407958984375f;
        float _5360 = _5343.z;
        float4 _5363 = _71.SampleLevel(_15, float3(_5358, _5359, _5360), 0.0f);
        float _5379 = _5347.x;
        float _5390 = _5347.y;
        float _5401 = _5347.z;
        _5412 = _5327 + (float4(((_71.SampleLevel(_15, float3(_5358, _5359 + 0.666666686534881591796875f, _5360), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5401, _5401) * _5349);
        _5413 = _5328 + (float4(((_71.SampleLevel(_15, float3(_5358, _5359 + 0.3333333432674407958984375f, _5360), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5390, _5390) * _5349);
        _5414 = _5329 + (float4(((_5363.xyz * 4.0f) - 2.0f.xxx) * _5379, _5379) * _5349);
        _5415 = _5326 + (_5363.w * _5349);
      } else {
        _5412 = _5327;
        _5413 = _5328;
        _5414 = _5329;
        _5415 = _5326;
      }
      float _5418 = clamp((_5415 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _5422 = _5412;
      _5423 = _5413;
      _5424 = _5414;
      _5425 = _5418 - _5120;
      _5426 = (_5418 + _5120) * 0.5f;
    } else {
      _5422 = 0.0f.xxxx;
      _5423 = 0.0f.xxxx;
      _5424 = 0.0f.xxxx;
      _5425 = 0.0f;
      _5426 = 1.0f;
    }
    float4 _5446 = _5424 + float4(_9_m111.x * _5426, (_9_m111.y * _5426) + ((_9_m111.w * _5425) * 0.5f), _9_m111.z * _5426, (_9_m111.w * _5426) + ((_9_m111.y * _5425) * 0.375f));
    float4 _5466 = _5423 + float4(_9_m112.x * _5426, (_9_m112.y * _5426) + ((_9_m112.w * _5425) * 0.5f), _9_m112.z * _5426, (_9_m112.w * _5426) + ((_9_m112.y * _5425) * 0.375f));
    float4 _5486 = _5422 + float4(_9_m113.x * _5426, (_9_m113.y * _5426) + ((_9_m113.w * _5425) * 0.5f), _9_m113.z * _5426, (_9_m113.w * _5426) + ((_9_m113.y * _5425) * 0.375f));
    float4 _5644;
    float4 _5645;
    float4 _5646;
    [branch] if (all(bool2(_569.x >= 0.0f.xx.x, _569.y >= 0.0f.xx.y))) {
      float4 _5494 = _65.SampleLevel(_15, _569, 0.0f);
      float4 _5495 = abs(_5494);
      float4 _5641;
      float4 _5642;
      float4 _5643;
      [branch] if (any(bool4(_5495.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _5495.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _5495.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _5495.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _5501 = length(_5494.yzw);
        uint _5503;
        float _5506;
        _5503 = 0u;
        _5506 = 1.0f;
        for (float _5508 = _5501; _5508 > 4.599999904632568359375f;) {
          _5503++;
          _5506 *= 0.5f;
          _5508 *= 0.5f;
          continue;
        }
        float4 _5512 = _5494 * _5506;
        float4 _5517 = float4(0.0f, _5512.yzw);
        float2 _5539 = (_64.SampleLevel(_15, float2(((((length(_5517) * _63_m3.x) + _63_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _63_m2.xy) + _63_m2.zw;
        float4 _5553;
        _5553 = float4(_5539.x * 3.5449078083038330078125f, _5517.yzw * _5539.y) * exp(_5512.x * 0.282094776630401611328125f);
        for (uint _5556 = 0u; _5556 < _5503;) {
          _5553 = mul(float4x4(_5553, float4(_5553.yx, 0.0f, 0.0f), float4(_5553.z, 0.0f, _5553.x, 0.0f), float4(_5553.w, 0.0f, 0.0f, _5553.x)) * 0.282094776630401611328125f, _5553);
          _5556++;
          continue;
        }
        float4x4 _5577 = float4x4(_5553, float4(_5553.yx, 0.0f, 0.0f), float4(_5553.z, 0.0f, _5553.x, 0.0f), float4(_5553.w, 0.0f, 0.0f, _5553.x)) * 0.282094776630401611328125f;
        float4 _5587 = mul(_5577, float4(_5446.w * 1.1283791065216064453125f, _5446.y * (-0.977204978466033935546875f), _5446.z * 0.977204978466033935546875f, _5446.x * (-0.977204978466033935546875f)));
        float4 _5607 = mul(_5577, float4(_5466.w * 1.1283791065216064453125f, _5466.y * (-0.977204978466033935546875f), _5466.z * 0.977204978466033935546875f, _5466.x * (-0.977204978466033935546875f)));
        float4 _5627 = mul(_5577, float4(_5486.w * 1.1283791065216064453125f, _5486.y * (-0.977204978466033935546875f), _5486.z * 0.977204978466033935546875f, _5486.x * (-0.977204978466033935546875f)));
        _5641 = float4(_5587.x * 0.886226952075958251953125f, _5587.w * (-1.02332675457000732421875f), _5587.y * (-1.02332675457000732421875f), _5587.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5642 = float4(_5607.x * 0.886226952075958251953125f, _5607.w * (-1.02332675457000732421875f), _5607.y * (-1.02332675457000732421875f), _5607.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5643 = float4(_5627.x * 0.886226952075958251953125f, _5627.w * (-1.02332675457000732421875f), _5627.y * (-1.02332675457000732421875f), _5627.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _5641 = _5446;
        _5642 = _5466;
        _5643 = _5486;
      }
      _5644 = _5641;
      _5645 = _5642;
      _5646 = _5643;
    }
    else {
      _5644 = _5446;
      _5645 = _5466;
      _5646 = _5486;
    }
    float _5653 = max(0.0f, dot(_5644.xyz * _5069.x, _543) + _5644.w);
    float _5660 = max(0.0f, dot(_5645.xyz * _5069.y, _543) + _5645.w);
    float _5667 = max(0.0f, dot(_5646.xyz * _5069.z, _543) + _5646.w);
    float3 _5677 = reflect(_609, _543);
    float _5685 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_794, 0.001000000047497451305389404296875f))));
    float2 _5689 = floor(_556 * _30_m0.w);
    float _5706 = floor(_588 - _30_m2.y);
    float _5710 = clamp(_5706, 0.0f, _30_m1.x - 1.0f);
    uint _5720 = (_5706 <= _5710) ? (_27.Load(uint(_9_m21.z + int(_5689.x + (_5689.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_5710)) * 4 + 0)) : 0u;
    float _5723 = dot(float4(_5653, _5660, _5667, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _5725;
    float _5728;
    uint _5730;
    _5725 = 0.0f.xxx;
    _5728 = 1.0f;
    _5730 = _5720;
    uint _5731;
    float3 _5726;
    float _5729;
    bool _5733;
    [loop] for (;;) {
      bool _5732 = _5730 != 0u;
      _5733 = _5728 > 0.00999999977648258209228515625f;
      if (_5732 && _5733) {
        uint _5737 = firstbitlow(_5730);
        _5731 = _5730 ^ (1u << (_5737 & 31u));
        float3 _5757 = float3(dot(_30_m4[_5737]._m2, _585), dot(_30_m4[_5737]._m3, _585), dot(_30_m4[_5737]._m4, _585));
        float3 _5758 = abs(_5757);
        if (all(bool3(_5758.x <= _30_m4[_5737]._m1.xyz.x, _5758.y <= _30_m4[_5737]._m1.xyz.y, _5758.z <= _30_m4[_5737]._m1.xyz.z))) {
          float3 _5767 = _30_m4[_5737]._m1.xyz * 0.100000001490116119384765625f;
          float3 _5769 = _5758 * 0.100000001490116119384765625f;
          float3 _5770 = _5769 * _5769;
          float3 _5773 = (_30_m4[_5737]._m1.xyz - _5758) * _30_m4[_5737]._m5.xyz;
          float3 _5821;
          [branch] if (_30_m4[_5737]._m6.x == 1.0f) {
            float3 _5806 = float3(dot(_30_m4[_5737]._m2.xyz, _5677), dot(_30_m4[_5737]._m3.xyz, _5677), dot(_30_m4[_5737]._m4.xyz, _5677));
            float3 _5808 = (_30_m4[_5737]._m1.xyz - _5757) / _5806;
            float3 _5811 = ((-_30_m4[_5737]._m1.xyz) - _5757) / _5806;
            bool3 _5812 = bool3(_5806.x > 0.0f.xxx.x, _5806.y > 0.0f.xxx.y, _5806.z > 0.0f.xxx.z);
            float3 _5813 = float3(_5812.x ? _5808.x : _5811.x, _5812.y ? _5808.y : _5811.y, _5812.z ? _5808.z : _5811.z);
            _5821 = _5757 + (_5806 * min(min(_5813.x, _5813.y), _5813.z));
          }
          else {
            _5821 = _5677;
          }
          float3 _5822 = normalize(_5821);
          float3 _5825 = float3(int3(sign(_5822)));
          float3 _5828 = _5822 / dot(_5822, _5825).xxx;
          float3 _5842;
          if (_5828.z < 0.0f) {
            float3 _5833 = abs(_5828);
            float2 _5840 = _5825.xy * float2(1.0f - _5833.y, 1.0f - _5833.x);
            _5842 = float3(_5840.x, _5840.y, _5828.z);
          } else {
            _5842 = _5828;
          }
          float _5866 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_5737]._m0, float4(_543, 1.0f))));
          float _5879 = clamp((min(_5773.x, min(_5773.y, _5773.z)) * _30_m4[_5737]._m6.y) + ((((((_5767 * _5767).x - ((_5770.x + _5770.y) + _5770.z)) * _30_m4[_5737]._m5.x) * _30_m4[_5737]._m5.x) * (1.0f - _30_m4[_5737]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_5737]._m6.w;
          _5726 = _5725 + ((((_25.SampleLevel(_17, float3((((_5842.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_5737]._m1.w), _5685).xyz * _30_m4[_5737]._m5.w) * ((((((clamp(abs(_5723 / _5866), 0.0f, 1.0f) * 2.0f) + _5723) / (2.0f + _5866)) - 1.0f) * _9_m23.w) + 1.0f)) * _5879) * _5728);
          _5729 = _5728 * (1.0f - _5879);
        } else {
          _5726 = _5725;
          _5729 = _5728;
        }
        _5725 = _5726;
        _5728 = _5729;
        _5730 = _5731;
        continue;
      } else {
        break;
      }
    }
    float3 _5947;
    if (_5733) {
      float3 _5887 = normalize(_5677);
      float3 _5890 = float3(int3(sign(_5887)));
      float3 _5893 = _5887 / dot(_5887, _5890).xxx;
      float3 _5907;
      if (_5893.z < 0.0f) {
        float3 _5898 = abs(_5893);
        float2 _5905 = _5890.xy * float2(1.0f - _5898.y, 1.0f - _5898.x);
        _5907 = float3(_5905.x, _5905.y, _5893.z);
      } else {
        _5907 = _5893;
      }
      float _5933 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_543, 1.0f))));
      _5947 = _5725 + ((_25.SampleLevel(_17, float3((((_5907.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _5685).xyz * ((((((clamp(abs(_5723 / _5933), 0.0f, 1.0f) * 2.0f) + _5723) / (2.0f + _5933)) - 1.0f) * _9_m23.w) + 1.0f)) * _5728);
    } else {
      _5947 = _5725;
    }
    float3 _5953 = (_5947 * _9_m23.z) * _9_m22.y;
    float3 _5974;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _5968 = _23.SampleBias(_15, _4, _9_m16);
      float _5969 = _5968.x;
      _5974 = (_22.SampleBias(_15, _4, _9_m16).xyz * _5969) + (_5953 * (1.0f - _5969));
    }
    else {
      _5974 = _5953;
    }
    _5978 = (((float3(_5653, _5660, _5667) * _796) * _9_m22.x) * _4127) + ((_5974 * _816) * _4126);
  }
  else {
    float3 _4147 = (_581 + (_543 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_556 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _4157 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _4166 = _4147 - (_9_m108.xyz + (_4157 * (-_9_m110.w)));
    float _4181 = max(min(max((max(abs(_4166.x), abs(_4166.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4166.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _4483;
    float4 _4484;
    float4 _4485;
    float _4486;
    float _4487;
    if ((_9_m108.w != 0.0f) && (_4181 < 1.0f)) {
      float3 _4194 = _4147 - (_9_m108.xyz + (_4157 * (-_9_m110.y)));
      float _4208 = max(clamp((max(abs(_4194.x), abs(_4194.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4194.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _4284;
      float4 _4285;
      float4 _4286;
      float4 _4287;
      if (_4208 < 1.0f) {
        float3 _4217 = ((_4147 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4219 = _4217 - floor(_4217);
        float4 _4223 = _66.SampleLevel(_16, _4219, 0.0f);
        float _4224 = 1.0f - _4208;
        float _4228 = _9_m109.y * 0.5f;
        float _4233 = _4219.x;
        float _4234 = clamp(_4219.y, _4228, 1.0f - _4228) * 0.3333333432674407958984375f;
        float _4235 = _4219.z;
        float4 _4238 = _67.SampleLevel(_15, float3(_4233, _4234, _4235), 0.0f);
        float _4254 = _4223.x;
        float _4264 = _4223.y;
        float _4274 = _4223.z;
        _4284 = _4181 + (_4238.w * _4224);
        _4285 = float4(((_67.SampleLevel(_15, float3(_4233, _4234 + 0.666666686534881591796875f, _4235), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4274, _4274) * _4224;
        _4286 = float4(((_67.SampleLevel(_15, float3(_4233, _4234 + 0.3333333432674407958984375f, _4235), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4264, _4264) * _4224;
        _4287 = float4(((_4238.xyz * 4.0f) - 2.0f.xxx) * _4254, _4254) * _4224;
      } else {
        _4284 = _4181;
        _4285 = 0.0f.xxxx;
        _4286 = 0.0f.xxxx;
        _4287 = 0.0f.xxxx;
      }
      float3 _4293 = _4147 - (_9_m108.xyz + (_4157 * (-_9_m110.z)));
      float _4307 = max(clamp((max(abs(_4293.x), abs(_4293.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4293.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _4387;
      float4 _4388;
      float4 _4389;
      float4 _4390;
      if (_4307 < 1.0f) {
        float3 _4316 = ((_4147 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4318 = _4316 - floor(_4316);
        float4 _4322 = _68.SampleLevel(_16, _4318, 0.0f);
        float _4324 = _4208 * (1.0f - _4307);
        float _4328 = _9_m109.y * 0.5f;
        float _4333 = _4318.x;
        float _4334 = clamp(_4318.y, _4328, 1.0f - _4328) * 0.3333333432674407958984375f;
        float _4335 = _4318.z;
        float4 _4338 = _69.SampleLevel(_15, float3(_4333, _4334, _4335), 0.0f);
        float _4354 = _4322.x;
        float _4365 = _4322.y;
        float _4376 = _4322.z;
        _4387 = _4284 + (_4338.w * _4324);
        _4388 = _4285 + (float4(((_69.SampleLevel(_15, float3(_4333, _4334 + 0.666666686534881591796875f, _4335), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4376, _4376) * _4324);
        _4389 = _4286 + (float4(((_69.SampleLevel(_15, float3(_4333, _4334 + 0.3333333432674407958984375f, _4335), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4365, _4365) * _4324);
        _4390 = _4287 + (float4(((_4338.xyz * 4.0f) - 2.0f.xxx) * _4354, _4354) * _4324);
      } else {
        _4387 = _4284;
        _4388 = _4285;
        _4389 = _4286;
        _4390 = _4287;
      }
      float4 _4473;
      float4 _4474;
      float4 _4475;
      float _4476;
      if (_4307 > 0.0f) {
        float3 _4399 = ((_4147 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4402 = _9_m109.xyz * 0.5f;
        float3 _4404 = clamp(_4399 - floor(_4399), _4402, 1.0f.xxx - _4402);
        float4 _4408 = _70.SampleLevel(_16, _4404, 0.0f);
        float _4410 = _4307 * (1.0f - _4181);
        float _4414 = _9_m109.y * 0.5f;
        float _4419 = _4404.x;
        float _4420 = clamp(_4404.y, _4414, 1.0f - _4414) * 0.3333333432674407958984375f;
        float _4421 = _4404.z;
        float4 _4424 = _71.SampleLevel(_15, float3(_4419, _4420, _4421), 0.0f);
        float _4440 = _4408.x;
        float _4451 = _4408.y;
        float _4462 = _4408.z;
        _4473 = _4388 + (float4(((_71.SampleLevel(_15, float3(_4419, _4420 + 0.666666686534881591796875f, _4421), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4462, _4462) * _4410);
        _4474 = _4389 + (float4(((_71.SampleLevel(_15, float3(_4419, _4420 + 0.3333333432674407958984375f, _4421), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4451, _4451) * _4410);
        _4475 = _4390 + (float4(((_4424.xyz * 4.0f) - 2.0f.xxx) * _4440, _4440) * _4410);
        _4476 = _4387 + (_4424.w * _4410);
      } else {
        _4473 = _4388;
        _4474 = _4389;
        _4475 = _4390;
        _4476 = _4387;
      }
      float _4479 = clamp((_4476 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _4483 = _4473;
      _4484 = _4474;
      _4485 = _4475;
      _4486 = _4479 - _4181;
      _4487 = (_4479 + _4181) * 0.5f;
    } else {
      _4483 = 0.0f.xxxx;
      _4484 = 0.0f.xxxx;
      _4485 = 0.0f.xxxx;
      _4486 = 0.0f;
      _4487 = 1.0f;
    }
    float4 _4507 = _4485 + float4(_9_m111.x * _4487, (_9_m111.y * _4487) + ((_9_m111.w * _4486) * 0.5f), _9_m111.z * _4487, (_9_m111.w * _4487) + ((_9_m111.y * _4486) * 0.375f));
    float4 _4527 = _4484 + float4(_9_m112.x * _4487, (_9_m112.y * _4487) + ((_9_m112.w * _4486) * 0.5f), _9_m112.z * _4487, (_9_m112.w * _4487) + ((_9_m112.y * _4486) * 0.375f));
    float4 _4547 = _4483 + float4(_9_m113.x * _4487, (_9_m113.y * _4487) + ((_9_m113.w * _4486) * 0.5f), _9_m113.z * _4487, (_9_m113.w * _4487) + ((_9_m113.y * _4486) * 0.375f));
    float4 _4705;
    float4 _4706;
    float4 _4707;
    [branch] if (all(bool2(_569.x >= 0.0f.xx.x, _569.y >= 0.0f.xx.y))) {
      float4 _4555 = _65.SampleLevel(_15, _569, 0.0f);
      float4 _4556 = abs(_4555);
      float4 _4702;
      float4 _4703;
      float4 _4704;
      [branch] if (any(bool4(_4556.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4556.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4556.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4556.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _4562 = length(_4555.yzw);
        uint _4564;
        float _4567;
        _4564 = 0u;
        _4567 = 1.0f;
        for (float _4569 = _4562; _4569 > 4.599999904632568359375f;) {
          _4564++;
          _4567 *= 0.5f;
          _4569 *= 0.5f;
          continue;
        }
        float4 _4573 = _4555 * _4567;
        float4 _4578 = float4(0.0f, _4573.yzw);
        float2 _4600 = (_64.SampleLevel(_15, float2(((((length(_4578) * _63_m3.x) + _63_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _63_m2.xy) + _63_m2.zw;
        float4 _4614;
        _4614 = float4(_4600.x * 3.5449078083038330078125f, _4578.yzw * _4600.y) * exp(_4573.x * 0.282094776630401611328125f);
        for (uint _4617 = 0u; _4617 < _4564;) {
          _4614 = mul(float4x4(_4614, float4(_4614.yx, 0.0f, 0.0f), float4(_4614.z, 0.0f, _4614.x, 0.0f), float4(_4614.w, 0.0f, 0.0f, _4614.x)) * 0.282094776630401611328125f, _4614);
          _4617++;
          continue;
        }
        float4x4 _4638 = float4x4(_4614, float4(_4614.yx, 0.0f, 0.0f), float4(_4614.z, 0.0f, _4614.x, 0.0f), float4(_4614.w, 0.0f, 0.0f, _4614.x)) * 0.282094776630401611328125f;
        float4 _4648 = mul(_4638, float4(_4507.w * 1.1283791065216064453125f, _4507.y * (-0.977204978466033935546875f), _4507.z * 0.977204978466033935546875f, _4507.x * (-0.977204978466033935546875f)));
        float4 _4668 = mul(_4638, float4(_4527.w * 1.1283791065216064453125f, _4527.y * (-0.977204978466033935546875f), _4527.z * 0.977204978466033935546875f, _4527.x * (-0.977204978466033935546875f)));
        float4 _4688 = mul(_4638, float4(_4547.w * 1.1283791065216064453125f, _4547.y * (-0.977204978466033935546875f), _4547.z * 0.977204978466033935546875f, _4547.x * (-0.977204978466033935546875f)));
        _4702 = float4(_4648.x * 0.886226952075958251953125f, _4648.w * (-1.02332675457000732421875f), _4648.y * (-1.02332675457000732421875f), _4648.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4703 = float4(_4668.x * 0.886226952075958251953125f, _4668.w * (-1.02332675457000732421875f), _4668.y * (-1.02332675457000732421875f), _4668.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4704 = float4(_4688.x * 0.886226952075958251953125f, _4688.w * (-1.02332675457000732421875f), _4688.y * (-1.02332675457000732421875f), _4688.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _4702 = _4507;
        _4703 = _4527;
        _4704 = _4547;
      }
      _4705 = _4702;
      _4706 = _4703;
      _4707 = _4704;
    }
    else {
      _4705 = _4507;
      _4706 = _4527;
      _4707 = _4547;
    }
    float _4712 = max(0.0f, dot(_4705.xyz, _543) + _4705.w);
    float _4717 = max(0.0f, dot(_4706.xyz, _543) + _4706.w);
    float _4722 = max(0.0f, dot(_4707.xyz, _543) + _4707.w);
    float3 _4746 = reflect(_609, _543);
    float _4754 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_794, 0.001000000047497451305389404296875f))));
    float2 _4758 = floor(_556 * _30_m0.w);
    float _4775 = floor(_588 - _30_m2.y);
    float _4779 = clamp(_4775, 0.0f, _30_m1.x - 1.0f);
    uint _4789 = (_4775 <= _4779) ? (_27.Load(uint(_9_m21.z + int(_4758.x + (_4758.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_4779)) * 4 + 0)) : 0u;
    float _4792 = dot(float4(_4712, _4717, _4722, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _4794;
    float _4797;
    uint _4799;
    _4794 = 0.0f.xxx;
    _4797 = 1.0f;
    _4799 = _4789;
    uint _4800;
    float3 _4795;
    float _4798;
    bool _4802;
    [loop] for (;;) {
      bool _4801 = _4799 != 0u;
      _4802 = _4797 > 0.00999999977648258209228515625f;
      if (_4801 && _4802) {
        uint _4806 = firstbitlow(_4799);
        _4800 = _4799 ^ (1u << (_4806 & 31u));
        float3 _4826 = float3(dot(_30_m4[_4806]._m2, _585), dot(_30_m4[_4806]._m3, _585), dot(_30_m4[_4806]._m4, _585));
        float3 _4827 = abs(_4826);
        if (all(bool3(_4827.x <= _30_m4[_4806]._m1.xyz.x, _4827.y <= _30_m4[_4806]._m1.xyz.y, _4827.z <= _30_m4[_4806]._m1.xyz.z))) {
          float3 _4836 = _30_m4[_4806]._m1.xyz * 0.100000001490116119384765625f;
          float3 _4838 = _4827 * 0.100000001490116119384765625f;
          float3 _4839 = _4838 * _4838;
          float3 _4842 = (_30_m4[_4806]._m1.xyz - _4827) * _30_m4[_4806]._m5.xyz;
          float3 _4890;
          [branch] if (_30_m4[_4806]._m6.x == 1.0f) {
            float3 _4875 = float3(dot(_30_m4[_4806]._m2.xyz, _4746), dot(_30_m4[_4806]._m3.xyz, _4746), dot(_30_m4[_4806]._m4.xyz, _4746));
            float3 _4877 = (_30_m4[_4806]._m1.xyz - _4826) / _4875;
            float3 _4880 = ((-_30_m4[_4806]._m1.xyz) - _4826) / _4875;
            bool3 _4881 = bool3(_4875.x > 0.0f.xxx.x, _4875.y > 0.0f.xxx.y, _4875.z > 0.0f.xxx.z);
            float3 _4882 = float3(_4881.x ? _4877.x : _4880.x, _4881.y ? _4877.y : _4880.y, _4881.z ? _4877.z : _4880.z);
            _4890 = _4826 + (_4875 * min(min(_4882.x, _4882.y), _4882.z));
          }
          else {
            _4890 = _4746;
          }
          float3 _4891 = normalize(_4890);
          float3 _4894 = float3(int3(sign(_4891)));
          float3 _4897 = _4891 / dot(_4891, _4894).xxx;
          float3 _4911;
          if (_4897.z < 0.0f) {
            float3 _4902 = abs(_4897);
            float2 _4909 = _4894.xy * float2(1.0f - _4902.y, 1.0f - _4902.x);
            _4911 = float3(_4909.x, _4909.y, _4897.z);
          } else {
            _4911 = _4897;
          }
          float _4935 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_4806]._m0, float4(_543, 1.0f))));
          float _4948 = clamp((min(_4842.x, min(_4842.y, _4842.z)) * _30_m4[_4806]._m6.y) + ((((((_4836 * _4836).x - ((_4839.x + _4839.y) + _4839.z)) * _30_m4[_4806]._m5.x) * _30_m4[_4806]._m5.x) * (1.0f - _30_m4[_4806]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_4806]._m6.w;
          _4795 = _4794 + ((((_25.SampleLevel(_17, float3((((_4911.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_4806]._m1.w), _4754).xyz * _30_m4[_4806]._m5.w) * ((((((clamp(abs(_4792 / _4935), 0.0f, 1.0f) * 2.0f) + _4792) / (2.0f + _4935)) - 1.0f) * _9_m23.w) + 1.0f)) * _4948) * _4797);
          _4798 = _4797 * (1.0f - _4948);
        } else {
          _4795 = _4794;
          _4798 = _4797;
        }
        _4794 = _4795;
        _4797 = _4798;
        _4799 = _4800;
        continue;
      } else {
        break;
      }
    }
    float3 _5016;
    if (_4802) {
      float3 _4956 = normalize(_4746);
      float3 _4959 = float3(int3(sign(_4956)));
      float3 _4962 = _4956 / dot(_4956, _4959).xxx;
      float3 _4976;
      if (_4962.z < 0.0f) {
        float3 _4967 = abs(_4962);
        float2 _4974 = _4959.xy * float2(1.0f - _4967.y, 1.0f - _4967.x);
        _4976 = float3(_4974.x, _4974.y, _4962.z);
      } else {
        _4976 = _4962;
      }
      float _5002 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_543, 1.0f))));
      _5016 = _4794 + ((_25.SampleLevel(_17, float3((((_4976.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _4754).xyz * ((((((clamp(abs(_4792 / _5002), 0.0f, 1.0f) * 2.0f) + _4792) / (2.0f + _5002)) - 1.0f) * _9_m23.w) + 1.0f)) * _4797);
    } else {
      _5016 = _4794;
    }
    float3 _5022 = (_5016 * _9_m23.z) * _9_m22.y;
    float3 _5043;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _5037 = _23.SampleBias(_15, _4, _9_m16);
      float _5038 = _5037.x;
      _5043 = (_22.SampleBias(_15, _4, _9_m16).xyz * _5038) + (_5022 * (1.0f - _5038));
    }
    else {
      _5043 = _5022;
    }
    _5978 = (((float3(_4712, _4717, _4722) * (_796 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_546, _547, _548).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _547.xxx) * _548) * _549))) * _9_m22.x) * _4127) + ((_5043 * _816) * _4126);
  }
  float4 _5980 = float4(_4089.x, _4089.y, _4089.z, _1142.w) + float4(_5978.x, _5978.y, _5978.z, 0.0f.xxxx.w);
  float3 _5983 = clamp(_5980.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _5998 = _581.y * _9_m46.w;
  float _6003 = max(0.00999999977648258209228515625f, _5998 + _9_m47.w);
  float3 _6017 = exp(_9_m45.xyz * ((-max(0.0f, (_608 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_6003)) / _6003) * exp(_5998 + _9_m48.w))));
  float _6020 = dot(_609, _9_m44.xyz);
  float _6026 = _9_m45.w * _9_m45.w;
  float _6030 = (1.0f + _6026) - ((2.0f * _9_m45.w) * _6020);
  float3 _6354;
  float _6355;
  if (_9_m55.z > 0.0f) {
    uint3 _6182 = (uint3(int3(_423, _424, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _6183 = _6182.y;
    uint _6184 = _6182.z;
    uint _6187 = _6182.x + (_6183 * _6184);
    uint _6189 = _6183 + (_6184 * _6187);
    uint _6191 = _6184 + (_6187 * _6189);
    uint _6193 = _6187 + (_6189 * _6191);
    float _6217 = dot(_609, -_7_m0[2].xyz);
    float3 _6225 = _581 - _7_m11.xyz;
    float _6227 = (_9_m55.w * ((_6217 > 5.9604644775390625e-08f) ? (1.0f / _6217) : 0.0f)) * (1.0f / _608);
    float _6228 = _6225.y;
    float _6229 = _6227 * _6228;
    float _6231 = _7_m11.y + _6229;
    float _6232 = _6228 - _6229;
    float _6234 = (1.0f - _6227) * _608;
    float _6248 = max(-127.0f, _9_m49.z * _6232);
    float _6272 = max(-127.0f, _9_m52.x * _6232);
    float _6283 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_6231 - _9_m49.x)))) * ((abs(_6248) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6248)) / _6248) : (0.693147182464599609375f - (0.2402265071868896484375f * _6248)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_6231 - _9_m52.z)))) * ((abs(_6272) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6272)) / _6272) : (0.693147182464599609375f - (0.2402265071868896484375f * _6272))));
    float _6305 = clamp((_608 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _6308 = clamp((max(clamp(exp2(-(_6283 * _6234)), 0.0f, 1.0f), _9_m51.w) + clamp((_608 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _6305, 0.0f, 1.0f);
    float4 _6348 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_15, float3((_556 + ((((float3(uint3(_6193, _6189 + (_6191 * _6193), _406) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_588 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_588 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _6350 = _6348.w;
    _6354 = _6348.xyz + (((_9_m51.xyz * (1.0f - _6308)) + (((_9_m54.xyz * pow(clamp(dot(_607, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_6283 * max(_6234 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _6305))) * _6350);
    _6355 = _6350 * _6308;
  } else {
    float3 _6058 = _581 - _7_m11.xyz;
    float _6060 = _6058.y;
    float _6074 = max(-127.0f, _9_m49.z * _6060);
    float _6098 = max(-127.0f, _9_m52.x * _6060);
    float _6109 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_6074) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6074)) / _6074) : (0.693147182464599609375f - (0.2402265071868896484375f * _6074)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_6098) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6098)) / _6098) : (0.693147182464599609375f - (0.2402265071868896484375f * _6098))));
    float _6131 = clamp((_608 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _6134 = clamp((max(clamp(exp2(-(_6109 * _608)), 0.0f, 1.0f), _9_m51.w) + clamp((_608 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _6131, 0.0f, 1.0f);
    _6354 = (_9_m51.xyz * (1.0f - _6134)) + (((_9_m54.xyz * pow(clamp(dot(_607, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_6109 * max(_608 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _6131));
    _6355 = _6134;
  }
  float3 _6358 = _6017 * _6355;
  float3 _6360 = (_5983 * _6358) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_6020 * _6020)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _6026) / max((12.56637096405029296875f * _6030) * sqrt(_6030), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _6017)) * _6355) + _6354);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _6360 = (_6360 * 0.65f) + (_5983 * 0.35f);
  }
  // RenoDX code end
  float _6361 = dot(_6358, 0.3333333432674407958984375f.xxx);
  float4 _6362 = float4(_6360.x, _6360.y, _6360.z, _5980.w);
  _6362.w = _6361;
  float _6389 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _581) * _9_m61.z), 0.0f, 1.0f);
  float3 _6397 = lerp(_5983, _6362.xyz, min((1.0f - _6389) + ((_76.SampleLevel(_16, (_581 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _6389), 1.0f + _6361).xxx);
  _5 = float4(_6397.x, _6397.y, _6397.z, _6362.w);
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

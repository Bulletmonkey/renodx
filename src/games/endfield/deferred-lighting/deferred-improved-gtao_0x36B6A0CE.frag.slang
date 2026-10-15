#include "./renodx_injection.hlsli"

// Ported from the native 0x36B6A0CE Vulkan dump.
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

static float _439;
static float _442;
static uint _443;

static const int2 _393[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _394[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(40, 3)]] cbuffer _6_7 : register(b40, space3) {
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

[[vk::binding(50, 3)]] ByteAddressBuffer _25 : register(t50, space3);
[[vk::binding(47, 3)]] cbuffer _26_28 : register(b47, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(42, 3)]] cbuffer _29_30 : register(b42, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(43, 3)]] cbuffer _31_32 : register(b43, space3) {
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

[[vk::binding(45, 3)]] cbuffer _33_34 : register(b45, space3) {
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

[[vk::binding(49, 3)]] ByteAddressBuffer _37 : register(t49, space3);
[[vk::binding(39, 3)]] cbuffer _42_43 : register(b39, space3) {
  column_major float4x4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c4);
};

[[vk::binding(41, 3)]] cbuffer _51_52 : register(b41, space3) {
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

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3, space3);
[[vk::binding(36, 3)]] Texture2D<float4> _19 : register(t36, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _20 : register(t13, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _21 : register(t14, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _22 : register(t30, space3);
[[vk::binding(16, 3)]] Texture2DArray<float4> _23 : register(t16, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _35 : register(t18, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _38 : register(t12, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _39 : register(t31, space3);
[[vk::binding(37, 3)]] Texture2D<float4> _40 : register(t37, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _45 : register(t17, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _46 : register(t9, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _47 : register(t15, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _48 : register(t19, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _49 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _50 : register(t11, space3);
[[vk::binding(35, 3)]] Texture2D<float4> _53 : register(t35, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _54 : register(t20, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _59 : register(t22, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _60 : register(t21, space3);
[[vk::binding(29, 3)]] Texture3D<float4> _61 : register(t29, space3);
[[vk::binding(38, 3)]] Texture2D<float4> _64 : register(t38, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _65 : register(t7, space3);
[[vk::binding(28, 3)]] Texture3D<float4> _66 : register(t28, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _67 : register(t25, space3);
[[vk::binding(27, 3)]] Texture3D<float4> _68 : register(t27, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _69 : register(t24, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _70 : register(t26, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _71 : register(t23, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _72 : register(t6, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _73 : register(t34, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _74 : register(t33, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _75 : register(t32, space3);

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
  uint2 _457 = uint2(gl_FragCoord.xy);
  int _460 = int(_457.x);
  int _461 = int(_457.y);
  int2 _463 = int3(_460, _461, 0).xy;
  float4 _465 = _73.Load(int3(_463, 0));
  float4 _467 = _74.Load(int3(_463, 0));
  float4 _469 = _75.Load(int3(_463, 0));
  float _470 = _465.x;
  float _471 = _465.y;
  float _472 = _465.z;
  uint _482 = uint(int((round(_465.w * 3.0f) * 4.0f) + round(_467.w * 3.0f)));
  float2 _485 = (_467.xy * 2.0f) - 1.0f.xx;
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
  float3 _504 = normalize(_503);
  float _505 = _467.z;
  float _507 = _469.w;
  float2 _510 = float2(_457);
  float2 _515 = (_510 + 0.5f.xx) * _9_m0.zw;
  float2 _523 = gl_FragCoord.xy * _9_m0.zw;
  float2 _525 = (_523 * 2.0f) - 1.0f.xx;
  float4 _528 = float4(_525, _19.SampleLevel(_12, _515, 0.0f).x, 1.0f);
  _528.y = -_525.y;
  float4 _531 = mul(_7_m6, _528);
  float3 _535 = _531.xyz / _531.w.xxx;
  float _536 = _535.x;
  float _537 = _535.y;
  float4 _539 = float4(_536, _537, _535.z, 1.0f);
  float _542 = abs(mul(_7_m0, _539).z);
  float3 _557;
  do {
    if (_9_m4.w == 0.0f) {
      _557 = _7_m11.xyz - _535;
      break;
    } else {
      _557 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _558 = dot(_557, _557);
  float _560 = rsqrt(max(_558, 9.9999999392252902907785028219223e-09f));
  float3 _561 = _557 * _560;
  float _562 = _558 * _560;
  float3 _563 = -_561;
  bool _566 = _9_m132.x > 0.00048828125f;
  float2 _576;
  if (_566) {
    _576 = _72.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _576 = 1.0f.xx;
  }
  float _577 = dot(_504, float3(0.0f, -1.0f, 0.0f));
  float3 _633;
  float3 _634;
  [branch] if (_9_m124.x > 0.5f) {
    float _604 = abs(_504.x);
    float _606 = abs(_504.y);
    float _608 = abs(_504.z);
    float3 _613 = float3(_604, _606, _608) * (1.0f / ((_604 + _606) + _608));
    float4 _626 = _45.SampleLevel(_14, _535 * _9_m127.x, 0.0f);
    float _627 = _626.x;
    _633 = float3(_627, _442, _442);
    _634 = ((((float3(0.0f, 0.0f, 1.0f) * _613.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _613.y)) + (float3(1.0f, 0.0f, 0.0f) * _613.z)) * ((_627 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_577)));
  }
  else {
    _633 = 0.0f.xxx;
    _634 = 0.0f.xxx;
  }
  float4 _648 = mul(_43_m0, float4((_535 + ((((_504 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_577, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _577), 0.100000001490116119384765625f, 1.0f)))) + _634, 1.0f));
  float2 _651 = (_648.xy * 0.5f) + 0.5f.xx;
  float4 _652 = float4(_651.x, _651.y, _648.z, _648.w);
  _652.y = 1.0f - _651.y;
  float _673;
  [branch] if (_9_m124.y > 0.5f) {
    _673 = _41.SampleCmpLevelZero(_17, (_652.xy + _43_m1.xy).xy, max(_648.z, 0.00048828125f));
  }
  else {
    _673 = 1.0f;
  }
  float _676 = _504.y;
  float _677 = clamp(_676, 0.0f, 1.0f);
  float _678 = lerp(_9_m128.w, 1.0f, _677);
  float2 _682 = _535.xz;
  float2 _687 = abs(_682 - _7_m11.xz);
  float _690 = max(_687.x, _687.y);
  float _700 = lerp(_678 * _673, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _690));
  float3 _707 = ddy_fine(_535);
  float3 _708 = ddx_fine(_535);
  float3 _709 = cross(_707, _708);
  float _715 = clamp((_709 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_709, _709)))).y, 0.0f, 1.0f);
  float _718 = _9_m121.z * 0.300000011920928955078125f;
  float _720 = _718 + 0.68599998950958251953125f;
  float _727 = 1.0f - clamp((_542 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _742 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_720, 0.9700000286102294921875f), 0.9900000095367431640625f, _677) + (smoothstep(0.990999996662139892578125f, 1.0f, _715) * step(_471, (_633.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _941;
  float _942;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_718 + 0.686999976634979248046875f, _720, _715) * smoothstep(-0.5f, -0.100000001490116119384765625f, _676)) > 0.00048828125f)) {
    float3 _751 = abs(_504);
    float3 _752 = _751 * _751;
    float3 _757 = _752 * (1.0f / (_752.x + _752.z));
    float3 _759 = normalize(cross(_504, float3(0.0f, 1.0f, 0.0f)));
    float3 _761 = normalize(cross(_759, _504));
    float3 _777 = floor((_535 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _785 = frac(sin(dot(fmod(_777.xz + _777.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _789 = (step(0.0f.xx, _504.zx) * 2.0f) - 1.0f.xx;
    float3 _792 = _535;
    _792.x = _536 * _789.x;
    _792.z = _535.z * (-_789.y);
    float _804 = _633.x * _785;
    float2 _812 = float2(frac(((-_9_m121.x) * (((1.0f - _785) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_804 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_804 * 6.0f)));
    float _815 = floor(_785 * 5.0f) + 1.0f;
    float2 _819 = frac(float2(_815, 0.100000001490116119384765625f * _815) * _537);
    float2 _831 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _819 - (_812 - 1.0f.xx)), _812 - _819), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _819 - _812), (_812 + 1.0f.xx) - _819), step(_812, _819));
    float _832 = _831.x;
    float _834 = smoothstep(0.4000000059604644775390625f, 1.0f, _832 * _832);
    float _835 = _831.y;
    float _840 = (_835 * 2.0f) - 1.0f;
    float2 _849 = float2((_633.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _834) * _840), (1.0f.xx * _633.x).y * (_633.x + (((_834 * 0.00999999977648258209228515625f) * _834) * _840)));
    float4 _873 = (_46.SampleBias(_14, (_792.zy * _9_m122.xy) + _849, _9_m16) * _757.x) + (_46.SampleBias(_14, (_792.xy * _9_m122.xy) + _849, _9_m16) * _757.z);
    float2 _876 = (_873.xy * 2.0f) - 1.0f.xx;
    float _882 = _873.w;
    float _892 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_835 + (((_834 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_882 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_840 * _882) * 0.5f) + _834, 0.0f, 1.0f)));
    float _898 = _873.z;
    float _908 = (((lerp(0.100000001490116119384765625f, (_892 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _892, 0.0f, 1.0f), 5.0f), _898)) * _898) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_700 * step(0.04500000178813934326171875f, _472))) * _727);
    float2 _911 = _876.xy;
    float _916 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_911, _911), 0.0f, 1.0f)));
    float3 _917 = float3(_876, _916);
    float2 _921 = _917.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _908) * _9_m121.y);
    float3 _922 = float3(_921.x, _921.y, _917.z);
    _922.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _916, _908);
    _941 = lerp(_504, mul(float4x4(float4(_759.x, _761.x, _504.x, 0.0f), float4(_759.y, _761.y, _676, 0.0f), float4(_759.z, _761.z, _504.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_922 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_922, _922))), 0.0f)).xyz, _908.xxx);
    _942 = (_908 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _941 = _504;
    _942 = 0.0f;
  }
  float3 _1090;
  float _1091;
  [branch] if (_742 > 0.00048828125f) {
    float2 _949 = (-_682) * _9_m126.xy;
    float2 _951 = frac(_949);
    float2 _998;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _961 = frac(sin(dot(fmod(floor(_949), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _974 = floor(frac(_9_m125.x + _961) * (_9_m126.z * _9_m126.z));
      float _976 = 1.0f / _9_m126.z;
      _998 = ((_47.SampleBias(_13, frac((lerp(_951, _951.yx, step(_961, 0.5f).xx) * _976) + float2(_976 * fmod(_974, _9_m126.z), _976 * ((_9_m126.z - 1.0f) - floor(_974 * _976)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _998 = 0.0f.xx;
    }
    float2 _1039;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _1024 = _47.SampleBias(_14, (_949 + float2(0.0f, _9_m125.z)) + ((float2(_633.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1028 = _47.SampleBias(_14, (_949 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _633.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1034 = (((float4(_1024.z, _1024.w, _1028.z, _1028.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _633.x;
      _1039 = _998 + (_1034.xy + _1034.zw);
    }
    else {
      _1039 = _998;
    }
    float _1047 = (((_633.x * 0.699999988079071044921875f) + (_505 * 0.300000011920928955078125f)) * clamp((_505 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _471;
    float _1051 = smoothstep(min(_1047, 0.9900000095367431640625f), clamp(_1047 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _1062 = _9_m120.x * _742;
    float3 _1072 = float3(_1039, max(0.00048828125f, sqrt(1.0f - clamp(dot(_1039, _1039), 0.0f, 1.0f))));
    float3 _1078 = (_1072 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1072, _1072)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _1090 = lerp(_504, _1078, (((_1062 * _1051) * _700) * _727).xxx);
    _1091 = max((smoothstep(0.0f, _471 * 0.20000000298023223876953125f, (_1062 * clamp(lerp((_9_m126.w * (1.0f - _633.x)) * 0.5f, 1.0f, _1051) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _1078.y) * _700) * _727, 0.0f);
  }
  else {
    _1090 = _941;
    _1091 = 0.0f;
  }
  float _1094 = min(_576.x, _576.y);
  float2 _1096 = _576 * (1.0f - lerp(lerp(_9_m128.z * _678, 1.0f, _700), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _690)));
  float _1097 = _1096.x;
  float _1100 = clamp((_472 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _1101 = 1.0f - _505;
  float _1117 = lerp(clamp((clamp((_1101 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _942)) + ((_1091 * 0.100000001490116119384765625f) * _505), 0.0f, 1.0f), 1.0f, _470);
  float _1119 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _577);
  float _1128 = lerp(1.0f, 0.25f, ((_9_m120.x * _1117) * (1.0f - _470)) * _1119);
  float _1144 = (1.0f - lerp(_1101, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1117) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1101)), 0.0f, 1.0f), _1101, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1119) * (1.0f - _1097))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1091, smoothstep(0.0f, 0.0500000007450580596923828125f, _942)));
  float _1149;
  float _1150;
  if (_566) {
    _1149 = lerp(1.0f, _576.y, _1100);
    _1150 = lerp(1.0f, 0.0f, _1100);
  } else {
    _1149 = 1.0f;
    _1150 = 1.0f;
  }
  float _1155 = lerp(lerp(min(_1149, _1144), _1144, _1094), _505, _1097);
  float3 _1157 = _469.xyz * lerp(lerp(min(_1150, _1128), _1128, _1094), 1.0f, _1097);
  float3 _1158 = _1157 * _470;
  float3 _1159 = _1157 - _1158;
  float3 _1163 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _470)).xxx + _1158;
  float _1164 = dot(_1090, _561);
  float _1165 = max(0.0f, _1164);
  float _1166 = _1155 * _1155;
  float _1167 = _1165 * _1165;
  float _1168 = _1167 * _1165;
  float2 _1169 = float2(1.0f, _1165);
  float2 _1172 = float2(1.0f, _1166);
  float _1173 = _1166 * _1166;
  float3 _1175 = float3(1.0f, _1166, _1173 * _1166);
  float _1180 = dot(mul(_1169, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1172) / dot(mul(float3(1.0f, _1167, _1168), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1175);
  float _1185 = dot(mul(_1169, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1172) / dot(mul(float3(1.0f, _1165, _1168), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1175);
  float3 _1188 = (_1163 * _1180) + _1185.xxx;
  float _1189 = _1180 + _1185;
  float4 _1376;
  do {
    [branch] if (_32_m4 == 0) {
      _1376 = 0.0f.xxxx;
      break;
    }
    float4 _1209 = _38.Load(int3(_463, 0));
    float _1210 = _1209.x;
    float4 _1375;
    if (_1210 > 0.001000000047497451305389404296875f) {
      float3 _1220 = reflect(_563, _1090);
      float3 _1221 = -_30_m0.xyz;
      float _1226 = dot(_1221, _1220);
      float3 _1228 = _1220 - (_1221 * _1226);
      bool3 _1230 = (_1226 < _30_m4.z).xxx;
      float3 _1238 = normalize((_1221 * _30_m4.z) + ((_1228 * rsqrt(max(6.103515625e-05f, dot(_1228, _1228)))) * _30_m4.y));
      float3 _1239 = float3(_1230.x ? _1238.x : _1220.x, _1230.y ? _1238.y : _1220.y, _1230.z ? _1238.z : _1220.z);
      float3 _1243 = _1239 + _561;
      float3 _1247 = _1243 * rsqrt(max(6.103515625e-05f, dot(_1243, _1243)));
      float _1250 = clamp(dot(_1239, _1090), 0.0f, 1.0f);
      float _1252 = clamp(dot(_1090, _1247), 0.0f, 1.0f);
      float _1255 = clamp(_1164, 0.0f, 1.0f);
      float _1276 = (((_1252 * _1173) - _1252) * _1252) + 1.0f;
      float _1279 = 1.0f - clamp(dot(_561, _1247), 0.0f, 1.0f);
      float _1280 = _1279 * _1279;
      float _1282 = (_1279 * _1280) * _1280;
      float _1306 = 1.0f - _1155;
      float _1313 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1306 * (1.04997003078460693359375f + (_1306 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1306))))));
      float _1314 = 1.0f - _1313;
      float3 _1317 = _1163 + ((1.0f.xxx - _1163) * 0.0476190485060214996337890625f);
      float3 _1357;
      do {
        [branch] if (((_482 > 0u) && (_482 <= 15u)) && (_507 > 0.0f)) {
          uint _1341 = clamp(_482 - 1u, 0u, 14u);
          _1357 = _49.SampleLevel(_13, float3((dot(_504, _1239) * 0.5f) + 0.5f, _507 * _52_m0[_1341].w, float(_1341)), 0.0f).xyz;
          break;
        }
        _1357 = clamp(dot(_1239, _504), 0.0f, 1.0f).xxx;
        break;
      } while (false);
      float3 _1360 = ((clamp((min(((_1163 * (1.0f - _1282)) + _1282.xxx) * ((_1173 / (_1276 * _1276)) * (0.5f / (((_1250 * sqrt(((((-_1255) * _1173) + _1255) * _1255) + _1173)) + (_1255 * sqrt(((((-_1250) * _1173) + _1250) * _1250) + _1173))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1317 * (((_48.SampleLevel(_13, (float2(_1255, _1155) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_1250, _1155) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1313) / _1314)) * _1317) / (1.0f.xxx - (_1317 * _1314)))) * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1250) + ((_1159 * 1.0f) * _1357)) * _30_m1.xyz;
      float3 _1373 = lerp(_1360, _1360 * _40.SampleBias(_13, float2(_1210, 0.5f), _9_m16).xyz, (1.0f - _1210).xxx) * min(_53.SampleLevel(_13, _523, 0.0f).x, 1.0f);
      _1375 = float4(_1373.x, _1373.y, _1373.z, 0.0f.xxxx.w);
    } else {
      _1375 = 0.0f.xxxx;
    }
    _1376 = _1375;
    break;
  } while (false);
  float2 _1378 = floor(_510 * 0.03125f);
  int _1386 = int((_1378.x + (_1378.y * _32_m9)) * 8.0f);
  float _1393 = floor(_542 - (_9_m3.y * _32_m15));
  float _1397 = clamp(_1393, 0.0f, _32_m11 - 1.0f);
  int _1399 = int(_1397 * 8.0f);
  float4 _1405 = _39.SampleBias(_13, _515, _9_m16);
  float3 _1407;
  float _1410;
  _1407 = 0.0f.xxx;
  _1410 = 1.0f;
  float3 _1408;
  float _1411;
  [loop] for (int _1412 = 0; _1412 <= 7; _1407 = _1408, _1410 = _1411, _1412++) {
    uint _1433 = (_1393 <= _1397) ? (_25.Load(uint((_32_m2 + _1386) + _1412) * 4 + 0) & _25.Load(uint((_32_m3 + _1399) + _1412) * 4 + 0)) : 0u;
    uint _1434 = uint(_1412);
    float3 _1438;
    _1411 = _1410;
    _1438 = 0.0f.xxx;
    uint _1441;
    float _1436;
    float3 _1439;
    [loop] for (uint _1440 = _1433; _1440 != 0u; _1411 = _1436, _1438 = _1439, _1440 = _1441) {
      uint _1445 = firstbitlow(_1440);
      _1441 = _1440 ^ (1u << (_1445 & 31u));
      int _1451 = int((32u * _1434) + _1445) * 8;
      int _1454 = _1451 + 1;
      int _1457 = _1451 + 2;
      int _1460 = _1451 + 3;
      int _1463 = _1451 + 4;
      int _1466 = _1451 + 5;
      int _1469 = _1451 + 6;
      int _1472 = _1451 + 7;
      uint _1476 = uint(_30_m6[_1466].w);
      float _1551;
      if ((_1476 & 1u) == 1u) {
        uint _1482 = asuint(_30_m6[_1466].x);
        uint _1489 = asuint(_30_m6[_1466].y);
        uint _1496 = asuint(_30_m6[_1466].z);
        uint _1503 = asuint(_30_m6[_1469].x);
        uint _1510 = asuint(_30_m6[_1469].y);
        uint _1517 = asuint(_30_m6[_1469].z);
        float3 _1536 = abs(mul(float4(_535 - _30_m6[_1454].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1482).x, spvUnpackHalf2x16(_1496).x, spvUnpackHalf2x16(_1510).x, 0.0f), float4(spvUnpackHalf2x16(_1482 >> 16u).x, spvUnpackHalf2x16(_1496 >> 16u).x, spvUnpackHalf2x16(_1510 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1489).x, spvUnpackHalf2x16(_1503).x, spvUnpackHalf2x16(_1517).x, 0.0f), float4(spvUnpackHalf2x16(_1489 >> 16u).x, spvUnpackHalf2x16(_1503 >> 16u).x, spvUnpackHalf2x16(_1517 >> 16u).x, 0.0f))).xyz);
        float _1543 = _30_m6[_1472].x * 0.5f;
        float _1549 = 1.0f - clamp((max(max(_1536.x, _1536.y), _1536.z) - (_1543 + 0.5f)) / (0.5f - _1543), 0.0f, 1.0f);
        _1551 = _1549 * _1549;
      } else {
        _1551 = 1.0f;
      }
      uint _1555 = uint(_30_m6[_1451].w);
      bool _1558 = _30_m6[_1460].z > 0.5f;
      if ((false || (_1551 < 0.001000000047497451305389404296875f)) || ((_1555 < 4u) && _1558)) {
        _1436 = _1411;
        _1439 = _1438;
        continue;
      }
      float _4210;
      float3 _4211;
      do {
        [branch] if (_1555 >= 4u) {
          float3 _2811;
          do {
            float3 _1577 = _30_m6[_1454].xyz - _535;
            if (dot(_30_m6[_1460].xyz, _1577) > 0.0f) {
              _2811 = 0.0f.xxx;
              break;
            }
            float _1584 = dot(_1577, _1577) * _30_m6[_1454].w;
            float _1587 = clamp(1.0f - (_1584 * _1584), 0.0f, 1.0f);
            float _1588 = _1587 * _1587;
            if (_1588 <= 0.0f) {
              _2811 = 0.0f.xxx;
              break;
            }
            float3 _1627;
            float _1628;
            bool _1629;
            float3 _1656;
            float3 _1658;
            float3 _1660;
            float3 _1662;
            float3 _1592 = _30_m6[_1457].xyz * _30_m6[_1457].w;
            float3 _1593 = _30_m6[_1454].xyz - _1592;
            float3 _1594 = _30_m6[_1463].xyz * _30_m6[_1460].w;
            float3 _1597 = _30_m6[_1454].xyz + _1592;
            float2 _1608 = (float2(clamp(_1155, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_504, _561), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1612 = _59.SampleLevel(_13, _1608, 0.0f);
            float4 _1616 = _60.SampleLevel(_13, _1608, 0.0f);
            float _2010;
            do {
              _1627 = _561 - (_504 * dot(_561, _504));
              _1628 = dot(_1627, _1627);
              _1629 = _1628 > 9.9999997473787516355514526367188e-05f;
              float3 _1651;
              if (_1629) {
                _1651 = _1627 * rsqrt(_1628);
              } else {
                float _1633 = _504.z;
                float _1635 = (_1633 >= 0.0f) ? 1.0f : (-1.0f);
                float _1637 = (-1.0f) / (_1635 + _1633);
                float _1639 = _504.x;
                _1651 = float3(1.0f + (((_1635 * _1637) * _1639) * _1639), ((_1635 * _1639) * _676) * _1637, (-_1635) * _1639);
              }
              float3x3 _1655 = mul(float3x3(float3(_1612.x, 0.0f, _1612.z), float3(0.0f, 1.0f, 0.0f), float3(_1612.y, 0.0f, _1612.w)), float3x3(_1651, cross(_504, _1651), _504));
              _1656 = (_1593 - _1594) - _535;
              float3 _1657 = mul(_1655, _1656);
              _1658 = (_1593 + _1594) - _535;
              float3 _1659 = mul(_1655, _1658);
              _1660 = (_1597 + _1594) - _535;
              float3 _1661 = mul(_1655, _1660);
              _1662 = (_1597 - _1594) - _535;
              float3 _1663 = mul(_1655, _1662);
              float _1664 = _1657.z;
              float _1667 = _1659.z;
              float _1671 = _1661.z;
              float _1675 = _1663.z;
              int _1679 = (((int(_1664 > 0.0f) | ((_1667 > 0.0f) ? 2 : 0)) | ((_1671 > 0.0f) ? 4 : 0)) | ((_1675 > 0.0f) ? 8 : 0));
              float3 _1916;
              float3 _1917;
              float3 _1918;
              float3 _1919;
              float3 _1920;
              int _1921;
              if (_1679 == 0) {
                _1916 = _1663;
                _1917 = _1661;
                _1918 = _1659;
                _1919 = _1657;
                _1920 = 0.0f.xxx;
                _1921 = 0;
              } else {
                float3 _1910;
                float3 _1911;
                float3 _1912;
                float3 _1913;
                float3 _1914;
                int _1915;
                if (_1679 == 1) {
                  _1910 = _1663;
                  _1911 = (_1657 * (-_1675)) + (_1663 * _1664);
                  _1912 = (_1657 * (-_1667)) + (_1659 * _1664);
                  _1913 = _1657;
                  _1914 = 0.0f.xxx;
                  _1915 = 3;
                } else {
                  float3 _1896;
                  float3 _1897;
                  float3 _1898;
                  float3 _1899;
                  float3 _1900;
                  int _1901;
                  if (_1679 == 2) {
                    _1896 = _1663;
                    _1897 = (_1659 * (-_1671)) + (_1661 * _1667);
                    _1898 = _1659;
                    _1899 = (_1659 * (-_1664)) + (_1657 * _1667);
                    _1900 = 0.0f.xxx;
                    _1901 = 3;
                  } else {
                    float3 _1882;
                    float3 _1883;
                    float3 _1884;
                    float3 _1885;
                    float3 _1886;
                    int _1887;
                    if (_1679 == 3) {
                      _1882 = (_1657 * (-_1675)) + (_1663 * _1664);
                      _1883 = (_1659 * (-_1671)) + (_1661 * _1667);
                      _1884 = _1659;
                      _1885 = _1657;
                      _1886 = 0.0f.xxx;
                      _1887 = 4;
                    } else {
                      float3 _1868;
                      float3 _1869;
                      float3 _1870;
                      float3 _1871;
                      float3 _1872;
                      int _1873;
                      if (_1679 == 4) {
                        _1868 = _1663;
                        _1869 = _1661;
                        _1870 = (_1661 * (-_1667)) + (_1659 * _1671);
                        _1871 = (_1661 * (-_1675)) + (_1663 * _1671);
                        _1872 = 0.0f.xxx;
                        _1873 = 3;
                      } else {
                        float3 _1854;
                        float3 _1855;
                        float3 _1856;
                        float3 _1857;
                        float3 _1858;
                        int _1859;
                        if (_1679 == 5) {
                          _1854 = _1663;
                          _1855 = _1661;
                          _1856 = _1659;
                          _1857 = _1657;
                          _1858 = 0.0f.xxx;
                          _1859 = 0;
                        } else {
                          float3 _1848;
                          float3 _1849;
                          float3 _1850;
                          float3 _1851;
                          float3 _1852;
                          int _1853;
                          if (_1679 == 6) {
                            _1848 = (_1661 * (-_1675)) + (_1663 * _1671);
                            _1849 = _1661;
                            _1850 = _1659;
                            _1851 = (_1659 * (-_1664)) + (_1657 * _1667);
                            _1852 = 0.0f.xxx;
                            _1853 = 4;
                          } else {
                            float3 _1834;
                            float3 _1835;
                            float3 _1836;
                            float3 _1837;
                            float3 _1838;
                            int _1839;
                            if (_1679 == 7) {
                              float _1827 = -_1675;
                              _1834 = (_1661 * _1827) + (_1663 * _1671);
                              _1835 = _1661;
                              _1836 = _1659;
                              _1837 = _1657;
                              _1838 = (_1657 * _1827) + (_1663 * _1664);
                              _1839 = 5;
                            } else {
                              float3 _1821;
                              float3 _1822;
                              float3 _1823;
                              float3 _1824;
                              float3 _1825;
                              int _1826;
                              if (_1679 == 8) {
                                _1821 = _1663;
                                _1822 = _1663;
                                _1823 = (_1663 * (-_1671)) + (_1661 * _1675);
                                _1824 = (_1663 * (-_1664)) + (_1657 * _1675);
                                _1825 = 0.0f.xxx;
                                _1826 = 3;
                              } else {
                                float3 _1807;
                                float3 _1808;
                                float3 _1809;
                                float3 _1810;
                                float3 _1811;
                                int _1812;
                                if (_1679 == 9) {
                                  _1807 = _1663;
                                  _1808 = (_1663 * (-_1671)) + (_1661 * _1675);
                                  _1809 = (_1657 * (-_1667)) + (_1659 * _1664);
                                  _1810 = _1657;
                                  _1811 = 0.0f.xxx;
                                  _1812 = 4;
                                } else {
                                  float3 _1793;
                                  float3 _1794;
                                  float3 _1795;
                                  float3 _1796;
                                  float3 _1797;
                                  int _1798;
                                  if (_1679 == 10) {
                                    _1793 = _1663;
                                    _1794 = _1661;
                                    _1795 = _1659;
                                    _1796 = _1657;
                                    _1797 = 0.0f.xxx;
                                    _1798 = 0;
                                  } else {
                                    float3 _1787;
                                    float3 _1788;
                                    float3 _1789;
                                    float3 _1790;
                                    float3 _1791;
                                    int _1792;
                                    if (_1679 == 11) {
                                      float _1780 = -_1671;
                                      _1787 = (_1663 * _1780) + (_1661 * _1675);
                                      _1788 = (_1659 * _1780) + (_1661 * _1667);
                                      _1789 = _1659;
                                      _1790 = _1657;
                                      _1791 = _1663;
                                      _1792 = 5;
                                    } else {
                                      float3 _1774;
                                      float3 _1775;
                                      float3 _1776;
                                      float3 _1777;
                                      float3 _1778;
                                      int _1779;
                                      if (_1679 == 12) {
                                        _1774 = _1663;
                                        _1775 = _1661;
                                        _1776 = (_1661 * (-_1667)) + (_1659 * _1671);
                                        _1777 = (_1663 * (-_1664)) + (_1657 * _1675);
                                        _1778 = 0.0f.xxx;
                                        _1779 = 4;
                                      } else {
                                        bool _1732 = _1679 == 13;
                                        float3 _1759;
                                        float3 _1760;
                                        float3 _1761;
                                        float3 _1762;
                                        int _1763;
                                        if (_1732) {
                                          float _1752 = -_1667;
                                          _1759 = (_1661 * _1752) + (_1659 * _1671);
                                          _1760 = (_1657 * _1752) + (_1659 * _1664);
                                          _1761 = _1657;
                                          _1762 = _1663;
                                          _1763 = 5;
                                        } else {
                                          float3 _1749;
                                          float3 _1750;
                                          int _1751;
                                          if (_1679 == 14) {
                                            float _1742 = -_1664;
                                            _1749 = (_1659 * _1742) + (_1657 * _1667);
                                            _1750 = (_1663 * _1742) + (_1657 * _1675);
                                            _1751 = 5;
                                          } else {
                                            _1749 = _1657;
                                            _1750 = 0.0f.xxx;
                                            _1751 = (_1679 == 15) ? 4 : 0;
                                          }
                                          _1759 = _1661;
                                          _1760 = _1659;
                                          _1761 = _1749;
                                          _1762 = _1750;
                                          _1763 = _1751;
                                        }
                                        bool3 _1764 = _1732.xxx;
                                        _1774 = float3(_1764.x ? _1661.x : _1663.x, _1764.y ? _1661.y : _1663.y, _1764.z ? _1661.z : _1663.z);
                                        _1775 = _1759;
                                        _1776 = _1760;
                                        _1777 = _1761;
                                        _1778 = _1762;
                                        _1779 = _1763;
                                      }
                                      _1787 = _1774;
                                      _1788 = _1775;
                                      _1789 = _1776;
                                      _1790 = _1777;
                                      _1791 = _1778;
                                      _1792 = _1779;
                                    }
                                    _1793 = _1787;
                                    _1794 = _1788;
                                    _1795 = _1789;
                                    _1796 = _1790;
                                    _1797 = _1791;
                                    _1798 = _1792;
                                  }
                                  _1807 = _1793;
                                  _1808 = _1794;
                                  _1809 = _1795;
                                  _1810 = _1796;
                                  _1811 = _1797;
                                  _1812 = _1798;
                                }
                                _1821 = _1807;
                                _1822 = _1808;
                                _1823 = _1809;
                                _1824 = _1810;
                                _1825 = _1811;
                                _1826 = _1812;
                              }
                              _1834 = _1821;
                              _1835 = _1822;
                              _1836 = _1823;
                              _1837 = _1824;
                              _1838 = _1825;
                              _1839 = _1826;
                            }
                            _1848 = _1834;
                            _1849 = _1835;
                            _1850 = _1836;
                            _1851 = _1837;
                            _1852 = _1838;
                            _1853 = _1839;
                          }
                          _1854 = _1848;
                          _1855 = _1849;
                          _1856 = _1850;
                          _1857 = _1851;
                          _1858 = _1852;
                          _1859 = _1853;
                        }
                        _1868 = _1854;
                        _1869 = _1855;
                        _1870 = _1856;
                        _1871 = _1857;
                        _1872 = _1858;
                        _1873 = _1859;
                      }
                      _1882 = _1868;
                      _1883 = _1869;
                      _1884 = _1870;
                      _1885 = _1871;
                      _1886 = _1872;
                      _1887 = _1873;
                    }
                    _1896 = _1882;
                    _1897 = _1883;
                    _1898 = _1884;
                    _1899 = _1885;
                    _1900 = _1886;
                    _1901 = _1887;
                  }
                  _1910 = _1896;
                  _1911 = _1897;
                  _1912 = _1898;
                  _1913 = _1899;
                  _1914 = _1900;
                  _1915 = _1901;
                }
                _1916 = _1910;
                _1917 = _1911;
                _1918 = _1912;
                _1919 = _1913;
                _1920 = _1914;
                _1921 = _1915;
              }
              bool3 _1923 = (_1921 == 3).xxx;
              bool3 _1926 = (_1921 == 4).xxx;
              if (_1921 == 0) {
                _2010 = 0.0f;
                break;
              }
              float3 _1931 = normalize(_1919);
              float3 _1932 = normalize(_1918);
              float3 _1933 = normalize(_1917);
              float3 _1934 = normalize(float3(_1923.x ? _1919.x : _1916.x, _1923.y ? _1919.y : _1916.y, _1923.z ? _1919.z : _1916.z));
              float3 _1935 = normalize(float3(_1926.x ? _1919.x : _1920.x, _1926.y ? _1919.y : _1920.y, _1926.z ? _1919.z : _1920.z));
              float _1937 = clamp(dot(_1931, _1932), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1941 = sqrt(1.0f - (_1937 * _1937));
              float _1949 = clamp(dot(_1932, _1933), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1953 = sqrt(1.0f - (_1949 * _1949));
              float _1962 = clamp(dot(_1933, _1934), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1966 = sqrt(1.0f - (_1962 * _1962));
              float _1973 = ((cross(_1931, _1932).z * ((_1941 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1937) / _1941))) + (cross(_1932, _1933).z * ((_1953 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1949) / _1953)))) + (cross(_1933, _1934).z * ((_1966 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1962) / _1966)));
              float _1990;
              if (_1921 >= 4) {
                float _1978 = clamp(dot(_1934, _1935), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1982 = sqrt(1.0f - (_1978 * _1978));
                _1990 = _1973 + (cross(_1934, _1935).z * ((_1982 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1978) / _1982)));
              } else {
                _1990 = _1973;
              }
              float _2007;
              if (_1921 == 5) {
                float _1995 = clamp(dot(_1935, _1931), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1999 = sqrt(1.0f - (_1995 * _1995));
                _2007 = _1990 + (cross(_1935, _1931).z * ((_1999 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1995) / _1999)));
              } else {
                _2007 = _1990;
              }
              _2010 = max(_2007, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _2397;
            do {
              float3 _2043;
              if (_1629) {
                _2043 = _1627 * rsqrt(_1628);
              } else {
                float _2025 = _504.z;
                float _2027 = (_2025 >= 0.0f) ? 1.0f : (-1.0f);
                float _2029 = (-1.0f) / (_2027 + _2025);
                float _2031 = _504.x;
                _2043 = float3(1.0f + (((_2027 * _2029) * _2031) * _2031), ((_2027 * _2031) * _676) * _2029, (-_2027) * _2031);
              }
              float3x3 _2046 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_2043, cross(_504, _2043), _504));
              float3 _2047 = mul(_2046, _1656);
              float3 _2048 = mul(_2046, _1658);
              float3 _2049 = mul(_2046, _1660);
              float3 _2050 = mul(_2046, _1662);
              float _2051 = _2047.z;
              float _2054 = _2048.z;
              float _2058 = _2049.z;
              float _2062 = _2050.z;
              int _2066 = (((int(_2051 > 0.0f) | ((_2054 > 0.0f) ? 2 : 0)) | ((_2058 > 0.0f) ? 4 : 0)) | ((_2062 > 0.0f) ? 8 : 0));
              float3 _2303;
              float3 _2304;
              float3 _2305;
              float3 _2306;
              float3 _2307;
              int _2308;
              if (_2066 == 0) {
                _2303 = _2050;
                _2304 = _2049;
                _2305 = _2048;
                _2306 = _2047;
                _2307 = 0.0f.xxx;
                _2308 = 0;
              } else {
                float3 _2297;
                float3 _2298;
                float3 _2299;
                float3 _2300;
                float3 _2301;
                int _2302;
                if (_2066 == 1) {
                  _2297 = _2050;
                  _2298 = (_2047 * (-_2062)) + (_2050 * _2051);
                  _2299 = (_2047 * (-_2054)) + (_2048 * _2051);
                  _2300 = _2047;
                  _2301 = 0.0f.xxx;
                  _2302 = 3;
                } else {
                  float3 _2283;
                  float3 _2284;
                  float3 _2285;
                  float3 _2286;
                  float3 _2287;
                  int _2288;
                  if (_2066 == 2) {
                    _2283 = _2050;
                    _2284 = (_2048 * (-_2058)) + (_2049 * _2054);
                    _2285 = _2048;
                    _2286 = (_2048 * (-_2051)) + (_2047 * _2054);
                    _2287 = 0.0f.xxx;
                    _2288 = 3;
                  } else {
                    float3 _2269;
                    float3 _2270;
                    float3 _2271;
                    float3 _2272;
                    float3 _2273;
                    int _2274;
                    if (_2066 == 3) {
                      _2269 = (_2047 * (-_2062)) + (_2050 * _2051);
                      _2270 = (_2048 * (-_2058)) + (_2049 * _2054);
                      _2271 = _2048;
                      _2272 = _2047;
                      _2273 = 0.0f.xxx;
                      _2274 = 4;
                    } else {
                      float3 _2255;
                      float3 _2256;
                      float3 _2257;
                      float3 _2258;
                      float3 _2259;
                      int _2260;
                      if (_2066 == 4) {
                        _2255 = _2050;
                        _2256 = _2049;
                        _2257 = (_2049 * (-_2054)) + (_2048 * _2058);
                        _2258 = (_2049 * (-_2062)) + (_2050 * _2058);
                        _2259 = 0.0f.xxx;
                        _2260 = 3;
                      } else {
                        float3 _2241;
                        float3 _2242;
                        float3 _2243;
                        float3 _2244;
                        float3 _2245;
                        int _2246;
                        if (_2066 == 5) {
                          _2241 = _2050;
                          _2242 = _2049;
                          _2243 = _2048;
                          _2244 = _2047;
                          _2245 = 0.0f.xxx;
                          _2246 = 0;
                        } else {
                          float3 _2235;
                          float3 _2236;
                          float3 _2237;
                          float3 _2238;
                          float3 _2239;
                          int _2240;
                          if (_2066 == 6) {
                            _2235 = (_2049 * (-_2062)) + (_2050 * _2058);
                            _2236 = _2049;
                            _2237 = _2048;
                            _2238 = (_2048 * (-_2051)) + (_2047 * _2054);
                            _2239 = 0.0f.xxx;
                            _2240 = 4;
                          } else {
                            float3 _2221;
                            float3 _2222;
                            float3 _2223;
                            float3 _2224;
                            float3 _2225;
                            int _2226;
                            if (_2066 == 7) {
                              float _2214 = -_2062;
                              _2221 = (_2049 * _2214) + (_2050 * _2058);
                              _2222 = _2049;
                              _2223 = _2048;
                              _2224 = _2047;
                              _2225 = (_2047 * _2214) + (_2050 * _2051);
                              _2226 = 5;
                            } else {
                              float3 _2208;
                              float3 _2209;
                              float3 _2210;
                              float3 _2211;
                              float3 _2212;
                              int _2213;
                              if (_2066 == 8) {
                                _2208 = _2050;
                                _2209 = _2050;
                                _2210 = (_2050 * (-_2058)) + (_2049 * _2062);
                                _2211 = (_2050 * (-_2051)) + (_2047 * _2062);
                                _2212 = 0.0f.xxx;
                                _2213 = 3;
                              } else {
                                float3 _2194;
                                float3 _2195;
                                float3 _2196;
                                float3 _2197;
                                float3 _2198;
                                int _2199;
                                if (_2066 == 9) {
                                  _2194 = _2050;
                                  _2195 = (_2050 * (-_2058)) + (_2049 * _2062);
                                  _2196 = (_2047 * (-_2054)) + (_2048 * _2051);
                                  _2197 = _2047;
                                  _2198 = 0.0f.xxx;
                                  _2199 = 4;
                                } else {
                                  float3 _2180;
                                  float3 _2181;
                                  float3 _2182;
                                  float3 _2183;
                                  float3 _2184;
                                  int _2185;
                                  if (_2066 == 10) {
                                    _2180 = _2050;
                                    _2181 = _2049;
                                    _2182 = _2048;
                                    _2183 = _2047;
                                    _2184 = 0.0f.xxx;
                                    _2185 = 0;
                                  } else {
                                    float3 _2174;
                                    float3 _2175;
                                    float3 _2176;
                                    float3 _2177;
                                    float3 _2178;
                                    int _2179;
                                    if (_2066 == 11) {
                                      float _2167 = -_2058;
                                      _2174 = (_2050 * _2167) + (_2049 * _2062);
                                      _2175 = (_2048 * _2167) + (_2049 * _2054);
                                      _2176 = _2048;
                                      _2177 = _2047;
                                      _2178 = _2050;
                                      _2179 = 5;
                                    } else {
                                      float3 _2161;
                                      float3 _2162;
                                      float3 _2163;
                                      float3 _2164;
                                      float3 _2165;
                                      int _2166;
                                      if (_2066 == 12) {
                                        _2161 = _2050;
                                        _2162 = _2049;
                                        _2163 = (_2049 * (-_2054)) + (_2048 * _2058);
                                        _2164 = (_2050 * (-_2051)) + (_2047 * _2062);
                                        _2165 = 0.0f.xxx;
                                        _2166 = 4;
                                      } else {
                                        bool _2119 = _2066 == 13;
                                        float3 _2146;
                                        float3 _2147;
                                        float3 _2148;
                                        float3 _2149;
                                        int _2150;
                                        if (_2119) {
                                          float _2139 = -_2054;
                                          _2146 = (_2049 * _2139) + (_2048 * _2058);
                                          _2147 = (_2047 * _2139) + (_2048 * _2051);
                                          _2148 = _2047;
                                          _2149 = _2050;
                                          _2150 = 5;
                                        } else {
                                          float3 _2136;
                                          float3 _2137;
                                          int _2138;
                                          if (_2066 == 14) {
                                            float _2129 = -_2051;
                                            _2136 = (_2048 * _2129) + (_2047 * _2054);
                                            _2137 = (_2050 * _2129) + (_2047 * _2062);
                                            _2138 = 5;
                                          } else {
                                            _2136 = _2047;
                                            _2137 = 0.0f.xxx;
                                            _2138 = (_2066 == 15) ? 4 : 0;
                                          }
                                          _2146 = _2049;
                                          _2147 = _2048;
                                          _2148 = _2136;
                                          _2149 = _2137;
                                          _2150 = _2138;
                                        }
                                        bool3 _2151 = _2119.xxx;
                                        _2161 = float3(_2151.x ? _2049.x : _2050.x, _2151.y ? _2049.y : _2050.y, _2151.z ? _2049.z : _2050.z);
                                        _2162 = _2146;
                                        _2163 = _2147;
                                        _2164 = _2148;
                                        _2165 = _2149;
                                        _2166 = _2150;
                                      }
                                      _2174 = _2161;
                                      _2175 = _2162;
                                      _2176 = _2163;
                                      _2177 = _2164;
                                      _2178 = _2165;
                                      _2179 = _2166;
                                    }
                                    _2180 = _2174;
                                    _2181 = _2175;
                                    _2182 = _2176;
                                    _2183 = _2177;
                                    _2184 = _2178;
                                    _2185 = _2179;
                                  }
                                  _2194 = _2180;
                                  _2195 = _2181;
                                  _2196 = _2182;
                                  _2197 = _2183;
                                  _2198 = _2184;
                                  _2199 = _2185;
                                }
                                _2208 = _2194;
                                _2209 = _2195;
                                _2210 = _2196;
                                _2211 = _2197;
                                _2212 = _2198;
                                _2213 = _2199;
                              }
                              _2221 = _2208;
                              _2222 = _2209;
                              _2223 = _2210;
                              _2224 = _2211;
                              _2225 = _2212;
                              _2226 = _2213;
                            }
                            _2235 = _2221;
                            _2236 = _2222;
                            _2237 = _2223;
                            _2238 = _2224;
                            _2239 = _2225;
                            _2240 = _2226;
                          }
                          _2241 = _2235;
                          _2242 = _2236;
                          _2243 = _2237;
                          _2244 = _2238;
                          _2245 = _2239;
                          _2246 = _2240;
                        }
                        _2255 = _2241;
                        _2256 = _2242;
                        _2257 = _2243;
                        _2258 = _2244;
                        _2259 = _2245;
                        _2260 = _2246;
                      }
                      _2269 = _2255;
                      _2270 = _2256;
                      _2271 = _2257;
                      _2272 = _2258;
                      _2273 = _2259;
                      _2274 = _2260;
                    }
                    _2283 = _2269;
                    _2284 = _2270;
                    _2285 = _2271;
                    _2286 = _2272;
                    _2287 = _2273;
                    _2288 = _2274;
                  }
                  _2297 = _2283;
                  _2298 = _2284;
                  _2299 = _2285;
                  _2300 = _2286;
                  _2301 = _2287;
                  _2302 = _2288;
                }
                _2303 = _2297;
                _2304 = _2298;
                _2305 = _2299;
                _2306 = _2300;
                _2307 = _2301;
                _2308 = _2302;
              }
              bool3 _2310 = (_2308 == 3).xxx;
              bool3 _2313 = (_2308 == 4).xxx;
              if (_2308 == 0) {
                _2397 = 0.0f;
                break;
              }
              float3 _2318 = normalize(_2306);
              float3 _2319 = normalize(_2305);
              float3 _2320 = normalize(_2304);
              float3 _2321 = normalize(float3(_2310.x ? _2306.x : _2303.x, _2310.y ? _2306.y : _2303.y, _2310.z ? _2306.z : _2303.z));
              float3 _2322 = normalize(float3(_2313.x ? _2306.x : _2307.x, _2313.y ? _2306.y : _2307.y, _2313.z ? _2306.z : _2307.z));
              float _2324 = clamp(dot(_2318, _2319), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2328 = sqrt(1.0f - (_2324 * _2324));
              float _2336 = clamp(dot(_2319, _2320), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2340 = sqrt(1.0f - (_2336 * _2336));
              float _2349 = clamp(dot(_2320, _2321), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2353 = sqrt(1.0f - (_2349 * _2349));
              float _2360 = ((cross(_2318, _2319).z * ((_2328 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2324) / _2328))) + (cross(_2319, _2320).z * ((_2340 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2336) / _2340)))) + (cross(_2320, _2321).z * ((_2353 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2349) / _2353)));
              float _2377;
              if (_2308 >= 4) {
                float _2365 = clamp(dot(_2321, _2322), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2369 = sqrt(1.0f - (_2365 * _2365));
                _2377 = _2360 + (cross(_2321, _2322).z * ((_2369 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2365) / _2369)));
              } else {
                _2377 = _2360;
              }
              float _2394;
              if (_2308 == 5) {
                float _2382 = clamp(dot(_2322, _2318), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2386 = sqrt(1.0f - (_2382 * _2382));
                _2394 = _2377 + (cross(_2322, _2318).z * ((_2386 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2382) / _2386)));
              } else {
                _2394 = _2377;
              }
              _2397 = max(_2394, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _2400 = (_1476 & 2u) != 0u;
            uint _2404 = asuint(_30_m6[_1463].w);
            uint _2405 = asuint(_30_m6[_1469].w);
            float3 _2406 = _535 - _30_m6[_1454].xyz;
            float3 _2407 = abs(_2406);
            float _2408 = _2407.x;
            float _2409 = _2407.y;
            float _2411 = _2407.z;
            int _2444;
            if ((_2408 > _2409) && (_2408 > _2411)) {
              _2444 = int((_2406.x > 0.0f) ? (_2404 & 1023u) : ((_2404 >> 10u) & 1023u));
            } else {
              int _2436;
              if (_2409 > _2411) {
                _2436 = int((_2406.y > 0.0f) ? ((_2404 >> 20u) & 1023u) : (_2405 & 1023u));
              } else {
                _2436 = int((_2406.z > 0.0f) ? ((_2405 >> 10u) & 1023u) : ((_2405 >> 20u) & 1023u));
              }
              _2444 = _2436;
            }
            int _2447 = _2400 ? int(_30_m6[_1463].w) : ((_2444 == 1023) ? (-1) : _2444);
            uint _2456 = uint(_2447);
            uint _2458 = asuint(_34_m11.x) + (_2456 * 96u);
            uint _2460 = (_2458 + 64u) >> 2u;
            uint _2463 = _2460 + 1u;
            uint _2466 = _2460 + 2u;
            uint _2469 = _2460 + 3u;
            float4 _2473 = asfloat(uint4(_37.Load(_2460 * 4 + 0), _37.Load(_2463 * 4 + 0), _37.Load(_2466 * 4 + 0), _37.Load(_2469 * 4 + 0)));
            float _2805;
            do {
              uint _2489 = ((asuint(_34_m11.y) + (_2456 * 16u)) >> 2u) + 1u;
              if (_37.Load(_2489 * 4 + 0) > 0u) {
                float4 _453 = _1405;
                float _2504;
                do {
                  if (_37.Load(_2489 * 4 + 0) == 0u) {
                    _2504 = 1.0f;
                    break;
                  }
                  _2504 = _453[_37.Load(_2489 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2805 = _2504;
                break;
              }
              uint _2505 = _2458 >> 2u;
              uint _2520 = (_2458 + 16u) >> 2u;
              uint _2535 = (_2458 + 32u) >> 2u;
              uint _2550 = (_2458 + 48u) >> 2u;
              float4 _2570 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2505 * 4 + 0), _37.Load((_2505 + 1u) * 4 + 0), _37.Load((_2505 + 2u) * 4 + 0), _37.Load((_2505 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2520 * 4 + 0), _37.Load((_2520 + 1u) * 4 + 0), _37.Load((_2520 + 2u) * 4 + 0), _37.Load((_2520 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2535 * 4 + 0), _37.Load((_2535 + 1u) * 4 + 0), _37.Load((_2535 + 2u) * 4 + 0), _37.Load((_2535 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2550 * 4 + 0), _37.Load((_2550 + 1u) * 4 + 0), _37.Load((_2550 + 2u) * 4 + 0), _37.Load((_2550 + 3u) * 4 + 0))))), float4((_535 - ((_2406 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2406, _2406)))) * _2473.x)) + (_504 * (_2473.y * 5.0f)), 1.0f));
              float3 _2574 = _2570.xyz / _2570.w.xxx;
              uint _2576 = (_2458 + 80u) >> 2u;
              float4 _2589 = asfloat(uint4(_37.Load(_2576 * 4 + 0), _37.Load((_2576 + 1u) * 4 + 0), _37.Load((_2576 + 2u) * 4 + 0), _37.Load((_2576 + 3u) * 4 + 0)));
              float2 _2590 = _2574.xy;
              float2 _2592 = _2589.xy;
              float3 _2596 = _2574.xyz;
              bool3 _2597 = bool3(_2596.x <= 0.0f.xxx.x, _2596.y <= 0.0f.xxx.y, _2596.z <= 0.0f.xxx.z);
              bool3 _2598 = bool3(_2596.x >= 1.0f.xxx.x, _2596.y >= 1.0f.xxx.y, _2596.z >= 1.0f.xxx.z);
              float _2601 = _2574.z;
              float2 _2612 = ((_2590 * (_2589.zw - _2592)) + _2592).xy * _34_m10.zw;
              float2 _2614 = floor(_2612 + 0.5f.xx);
              float2 _2615 = _2612 - _2614;
              float _2616 = _2615.x;
              float _2617 = _2616 + 0.5f;
              float _2618 = _2617 * _2617;
              float _2621 = 1.0f - _2616;
              float _2622 = min(_2616, 0.0f);
              float _2625 = _2616 + 1.0f;
              float _2626 = max(_2616, 0.0f);
              float _2637 = _2615.y;
              float _2638 = _2637 + 0.5f;
              float _2639 = _2638 * _2638;
              float _2642 = 1.0f - _2637;
              float _2643 = min(_2637, 0.0f);
              float _2646 = _2637 + 1.0f;
              float _2647 = max(_2637, 0.0f);
              float3 _2659 = float3(0.1599999964237213134765625f * _2621, 0.1599999964237213134765625f * ((_2625 - (_2626 * _2626)) + 1.0f), _2618 * 0.07999999821186065673828125f);
              float3 _2660 = float3(0.1599999964237213134765625f * ((_2618 * 0.5f) - _2616), 0.1599999964237213134765625f * ((_2621 - (_2622 * _2622)) + 1.0f), 0.1599999964237213134765625f * _2625) + _2659;
              float3 _2662 = float3(0.1599999964237213134765625f * _2642, 0.1599999964237213134765625f * ((_2646 - (_2647 * _2647)) + 1.0f), _2639 * 0.07999999821186065673828125f);
              float3 _2663 = float3(0.1599999964237213134765625f * ((_2639 * 0.5f) - _2637), 0.1599999964237213134765625f * ((_2642 - (_2643 * _2643)) + 1.0f), 0.1599999964237213134765625f * _2646) + _2662;
              float3 _2669 = ((_2659 / _2660) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _2671 = ((_2662 / _2663) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _2673 = _2614 * _34_m10.xy;
              float _2674 = _2669.x;
              float _2675 = _2671.x;
              float _2678 = _2669.y;
              float _2681 = _2669.z;
              float _2684 = _2671.y;
              float _2691 = _2671.z;
              float _2698 = _2660.x;
              float _2699 = _2663.x;
              float _2701 = _2660.y;
              float _2703 = _2660.z;
              float _2705 = _2663.y;
              float _2709 = _2663.z;
              float _2767 = (((((((_2698 * _2699) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2674, _2675), _439).xy, _2601)) + ((_2701 * _2699) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2678, _2675), _439).xy, _2601))) + ((_2703 * _2699) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2681, _2675), _439).xy, _2601))) + ((_2698 * _2705) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2674, _2684), _439).xy, _2601))) + ((_2701 * _2705) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2678, _2684), _439).xy, _2601))) + ((_2703 * _2705) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2681, _2684), _439).xy, _2601))) + ((_2698 * _2709) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2674, _2691), _439).xy, _2601));
              float4 _2790 = asfloat(uint4(_37.Load(_2460 * 4 + 0), _37.Load(_2463 * 4 + 0), _37.Load(_2466 * 4 + 0), _37.Load(_2469 * 4 + 0)));
              float _2791 = _2790.w;
              float2 _2793 = min(_2590, 1.0f.xx - _2590);
              _2805 = lerp(1.0f, (any(bool3(_2597.x || _2598.x, _2597.y || _2598.y, _2597.z || _2598.z)) || ((asuint(_2601) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2767 + ((_2701 * _2709) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2678, _2691), _439).xy, _2601))) + ((_2703 * _2709) * _35.SampleCmpLevelZero(_16, float3(_2673 + float2(_2681, _2691), _439).xy, _2601))), _2400 ? min(_2791, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2790.z - _2570.w) * 0.25f, min(_2793.x, _2793.y)))) : _2791);
              break;
            } while (false);
            _2811 = ((_30_m6[_1451].xyz * (((((_1163 * _1616.x) + ((1.0f.xxx - _1163) * _1616.y)) * _2010) * _30_m6[_1472].z) + (_1159 * _2397))) * _1588) * ((_2447 >= 0) ? _2805 : 1.0f);
            break;
          } while (false);
          _4210 = _1411;
          _4211 = _2811 * _1551;
          break;
        }
        float _4208;
        float3 _4209;
        if (_30_m6[_1451].w < 1.5f) {
          float3 _3416 = float3(0.100000001490116119384765625f, _1155, 1.0f);
          float _3425 = (0.5f + (0.5f * _30_m6[_1457].y)) - abs(_30_m6[_1457].x);
          float _3426 = _30_m6[_1457].y - _3425;
          float _3430 = (1.0f - abs(_3425)) - abs(_3426);
          bool _3432 = _30_m6[_1457].x >= 0.0f;
          float _3433 = abs(max(_3430, 0.00048828125f));
          float3 _3437 = normalize(float3(_3425, _3426, _3432 ? _3433 : (-_3433)));
          float3 _3438 = _30_m6[_1454].xyz - _535;
          float _3439 = dot(_3438, _3438);
          float _3440 = rsqrt(_3439);
          float3 _3441 = _3438 * _3440;
          float _3445 = clamp(_30_m6[_1472].y * _3440, 0.0f, 1.0f);
          float _3448 = clamp(dot(_1090, _3441), 0.0f, 1.0f);
          int _3450 = int(_30_m6[_1472].w);
          float3 _3451 = _3437 * _30_m6[_1457].z;
          float3 _3452 = _3451 * 0.5f;
          float3 _3453 = _3438 - _3452;
          float3 _3454 = _3438 + _3452;
          bool _3456 = (_1555 & 1u) == 0u;
          bool _3459 = _3456 || ((_1476 & 2u) != 0u);
          bool _3462 = (!_3456) && (_30_m6[_1457].z > 0.0f);
          float _3481;
          float _3482;
          if (_3462) {
            float _3466 = length(_3453);
            float _3467 = length(_3454);
            _3481 = clamp(0.5f * ((dot(_1090, _3453) / _3466) + (dot(_1090, _3454) / _3467)), 0.0f, 1.0f);
            _3482 = 1.0f / ((((_3466 * _3467) + dot(_3453, _3454)) * 0.5f) + 1.0f);
          } else {
            _3481 = _3448;
            _3482 = 1.0f;
          }
          float _3504;
          if (_30_m6[_1469].w < 0.0f) {
            float _3498 = _3439 * (_30_m6[_1454].w * _30_m6[_1454].w);
            float _3501 = clamp(1.0f - (_3498 * _3498), 0.0f, 1.0f);
            _3504 = lerp(1.0f / (_3439 + 1.0f), _3482, float(_3462)) * (_3501 * _3501);
          } else {
            float3 _3487 = _3438 * _30_m6[_1454].w;
            _3504 = _3482 * pow(1.0f - clamp(dot(_3487, _3487), 0.0f, 1.0f), _30_m6[_1469].w);
          }
          float _3510 = clamp((dot(_3441, -_3437) - _30_m6[_1457].z) * _30_m6[_1457].w, 0.0f, 1.0f);
          float _3514 = _3504 * lerp(1.0f, _3510 * _3510, float(_3456));
          float _3614;
          if ((!_3462) && (_3450 >= 0)) {
            uint _3520 = uint(_3450);
            float2 _3607;
            [branch] if (_3456) {
              float4 _3597 = mul(_56_m1[_3520], _539);
              _3607 = _56_m0[_3520].xy + (clamp(_3597.xy / _3597.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_3520].zw);
            }
            else {
              float3 _3534 = mul(float4(-_3438, 0.0f), _56_m1[_3520]).xyz;
              float3 _448 = _3534;
              float3 _447 = _3534;
              float3 _446 = abs(_3534);
              uint _3543 = uint(int(_446.y > _446.x));
              uint _3549 = (_446.z > _446[_3543]) ? 2u : _3543;
              uint _3555 = (_3549 * 2u) + uint(_447[_3549] < 0.0f);
              float _3559 = abs(_448[_3555 / 2u]);
              float _3579 = 0.5f - (0.000244140625f / _56_m0[_3520].w);
              _3607 = _56_m0[_3520].xy + (clamp(float2((float(_3555) + ((((_448[uint(_393[_3555].x)] * _394[_3555].x) / _3559) * _3579) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_448[uint(_393[_3555].y)] * _394[_3555].y) / _3559) * _3579)), 0.0f.xx, 1.0f.xx) * _56_m0[_3520].zw);
            }
            _3614 = _3514 * _54.SampleLevel(_13, _3607, 0.0f).x;
          } else {
            _3614 = _3514;
          }
          bool _3615 = _3614 > 0.0f;
          float _4024;
          if (_3615) {
            int _3668;
            if (_3459) {
              _3668 = int(_30_m6[_1460].x);
            } else {
              uint _3623 = asuint(_30_m6[_1457].w);
              uint _3624 = asuint(_30_m6[_1460].x);
              float3 _3625 = _535 - _30_m6[_1454].xyz;
              float3 _3626 = abs(_3625);
              float _3627 = _3626.x;
              float _3628 = _3626.y;
              float _3630 = _3626.z;
              int _3663;
              if ((_3627 > _3628) && (_3627 > _3630)) {
                _3663 = int((_3625.x > 0.0f) ? (_3623 & 1023u) : ((_3623 >> 10u) & 1023u));
              } else {
                int _3655;
                if (_3628 > _3630) {
                  _3655 = int((_3625.y > 0.0f) ? ((_3623 >> 20u) & 1023u) : (_3624 & 1023u));
                } else {
                  _3655 = int((_3625.z > 0.0f) ? ((_3624 >> 10u) & 1023u) : ((_3624 >> 20u) & 1023u));
                }
                _3663 = _3655;
              }
              _3668 = (_3663 == 1023) ? (-1) : _3663;
            }
            uint _3673 = uint(_3668);
            uint _3675 = asuint(_34_m11.x) + (_3673 * 96u);
            uint _3677 = (_3675 + 64u) >> 2u;
            uint _3680 = _3677 + 1u;
            uint _3683 = _3677 + 2u;
            uint _3686 = _3677 + 3u;
            float4 _3690 = asfloat(uint4(_37.Load(_3677 * 4 + 0), _37.Load(_3680 * 4 + 0), _37.Load(_3683 * 4 + 0), _37.Load(_3686 * 4 + 0)));
            float _4022;
            do {
              uint _3706 = ((asuint(_34_m11.y) + (_3673 * 16u)) >> 2u) + 1u;
              if (_37.Load(_3706 * 4 + 0) > 0u) {
                float4 _445 = _1405;
                float _3721;
                do {
                  if (_37.Load(_3706 * 4 + 0) == 0u) {
                    _3721 = 1.0f;
                    break;
                  }
                  _3721 = _445[_37.Load(_3706 * 4 + 0) - 1u];
                  break;
                } while (false);
                _4022 = _3721;
                break;
              }
              uint _3722 = _3675 >> 2u;
              uint _3737 = (_3675 + 16u) >> 2u;
              uint _3752 = (_3675 + 32u) >> 2u;
              uint _3767 = (_3675 + 48u) >> 2u;
              float4 _3787 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3722 * 4 + 0), _37.Load((_3722 + 1u) * 4 + 0), _37.Load((_3722 + 2u) * 4 + 0), _37.Load((_3722 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3737 * 4 + 0), _37.Load((_3737 + 1u) * 4 + 0), _37.Load((_3737 + 2u) * 4 + 0), _37.Load((_3737 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3752 * 4 + 0), _37.Load((_3752 + 1u) * 4 + 0), _37.Load((_3752 + 2u) * 4 + 0), _37.Load((_3752 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3767 * 4 + 0), _37.Load((_3767 + 1u) * 4 + 0), _37.Load((_3767 + 2u) * 4 + 0), _37.Load((_3767 + 3u) * 4 + 0))))), float4((_535 - ((-_3441) * _3690.x)) + (_1090 * (_3690.y * 5.0f)), 1.0f));
              float3 _3791 = _3787.xyz / _3787.w.xxx;
              uint _3793 = (_3675 + 80u) >> 2u;
              float4 _3806 = asfloat(uint4(_37.Load(_3793 * 4 + 0), _37.Load((_3793 + 1u) * 4 + 0), _37.Load((_3793 + 2u) * 4 + 0), _37.Load((_3793 + 3u) * 4 + 0)));
              float2 _3807 = _3791.xy;
              float2 _3809 = _3806.xy;
              float3 _3813 = _3791.xyz;
              bool3 _3814 = bool3(_3813.x <= 0.0f.xxx.x, _3813.y <= 0.0f.xxx.y, _3813.z <= 0.0f.xxx.z);
              bool3 _3815 = bool3(_3813.x >= 1.0f.xxx.x, _3813.y >= 1.0f.xxx.y, _3813.z >= 1.0f.xxx.z);
              float _3818 = _3791.z;
              float2 _3829 = ((_3807 * (_3806.zw - _3809)) + _3809).xy * _34_m10.zw;
              float2 _3831 = floor(_3829 + 0.5f.xx);
              float2 _3832 = _3829 - _3831;
              float _3833 = _3832.x;
              float _3834 = _3833 + 0.5f;
              float _3835 = _3834 * _3834;
              float _3838 = 1.0f - _3833;
              float _3839 = min(_3833, 0.0f);
              float _3842 = _3833 + 1.0f;
              float _3843 = max(_3833, 0.0f);
              float _3854 = _3832.y;
              float _3855 = _3854 + 0.5f;
              float _3856 = _3855 * _3855;
              float _3859 = 1.0f - _3854;
              float _3860 = min(_3854, 0.0f);
              float _3863 = _3854 + 1.0f;
              float _3864 = max(_3854, 0.0f);
              float3 _3876 = float3(0.1599999964237213134765625f * _3838, 0.1599999964237213134765625f * ((_3842 - (_3843 * _3843)) + 1.0f), _3835 * 0.07999999821186065673828125f);
              float3 _3877 = float3(0.1599999964237213134765625f * ((_3835 * 0.5f) - _3833), 0.1599999964237213134765625f * ((_3838 - (_3839 * _3839)) + 1.0f), 0.1599999964237213134765625f * _3842) + _3876;
              float3 _3879 = float3(0.1599999964237213134765625f * _3859, 0.1599999964237213134765625f * ((_3863 - (_3864 * _3864)) + 1.0f), _3856 * 0.07999999821186065673828125f);
              float3 _3880 = float3(0.1599999964237213134765625f * ((_3856 * 0.5f) - _3854), 0.1599999964237213134765625f * ((_3859 - (_3860 * _3860)) + 1.0f), 0.1599999964237213134765625f * _3863) + _3879;
              float3 _3886 = ((_3876 / _3877) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _3888 = ((_3879 / _3880) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _3890 = _3831 * _34_m10.xy;
              float _3891 = _3886.x;
              float _3892 = _3888.x;
              float _3895 = _3886.y;
              float _3898 = _3886.z;
              float _3901 = _3888.y;
              float _3908 = _3888.z;
              float _3915 = _3877.x;
              float _3916 = _3880.x;
              float _3918 = _3877.y;
              float _3920 = _3877.z;
              float _3922 = _3880.y;
              float _3926 = _3880.z;
              float _3984 = (((((((_3915 * _3916) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3891, _3892), _439).xy, _3818)) + ((_3918 * _3916) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3895, _3892), _439).xy, _3818))) + ((_3920 * _3916) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3898, _3892), _439).xy, _3818))) + ((_3915 * _3922) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3891, _3901), _439).xy, _3818))) + ((_3918 * _3922) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3895, _3901), _439).xy, _3818))) + ((_3920 * _3922) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3898, _3901), _439).xy, _3818))) + ((_3915 * _3926) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3891, _3908), _439).xy, _3818));
              float4 _4007 = asfloat(uint4(_37.Load(_3677 * 4 + 0), _37.Load(_3680 * 4 + 0), _37.Load(_3683 * 4 + 0), _37.Load(_3686 * 4 + 0)));
              float _4008 = _4007.w;
              float2 _4010 = min(_3807, 1.0f.xx - _3807);
              _4022 = lerp(1.0f, (any(bool3(_3814.x || _3815.x, _3814.y || _3815.y, _3814.z || _3815.z)) || ((asuint(_3818) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3984 + ((_3918 * _3926) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3895, _3908), _439).xy, _3818))) + ((_3920 * _3926) * _35.SampleCmpLevelZero(_16, float3(_3890 + float2(_3898, _3908), _439).xy, _3818))), _3459 ? min(_4008, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_4007.z - _3787.w) * 0.25f, min(_4010.x, _4010.y)))) : _4008);
              break;
            } while (false);
            _4024 = (_3668 >= 0) ? _4022 : 1.0f;
          } else {
            _4024 = 1.0f;
          }
          float3 _4048;
          float3 _4049;
          if (_3462) {
            float3 _4027 = _3416 * _3416;
            float3 _4028 = reflect(_563, _1090);
            float _4037 = dot(_4028, _3451);
            _4048 = _4027 / clamp(_4027 + (0.5f * clamp(_30_m6[_1457].z * _3440, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4049 = normalize(_3453 + (_3451 * clamp(dot(_3453, (_4028 * _4037) - _3451) / ((_30_m6[_1457].z * _30_m6[_1457].z) - (_4037 * _4037)), 0.0f, 1.0f)));
          } else {
            _4048 = 1.0f.xxx;
            _4049 = _3441;
          }
          float3 _4050 = _4049 + _561;
          float3 _4054 = _4050 * rsqrt(max(6.103515625e-05f, dot(_4050, _4050)));
          float _4056 = abs(max(_3430, 5.9604644775390625e-08f));
          float3 _4062 = (normalize(float3(_3425, _3426, _3432 ? _4056 : (-_4056))) * _30_m6[_1457].z) * 0.5f;
          float3 _4063 = _3438 - _4062;
          float3 _4064 = _3438 + _4062;
          float _4076;
          if (_3462) {
            _4076 = clamp(0.5f * ((dot(_1090, _4063) / length(_4063)) + (dot(_1090, _4064) / length(_4064))), 0.0f, 1.0f);
          } else {
            _4076 = _3448;
          }
          float3 _4207;
          if (_3615) {
            float _4079 = clamp(_3481, 0.0f, 1.0f);
            float _4081 = clamp(dot(_1090, _4054), 0.0f, 1.0f);
            float _4083 = clamp(dot(_561, _4054), 0.0f, 1.0f);
            float _4084 = clamp(_1164, 0.0f, 1.0f);
            float _4094;
            if (_3445 > 0.0f) {
              _4094 = clamp(_1166 + ((_3445 * _3445) / ((_4083 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4094 = _1166;
            }
            float _4095 = _4094 * _4094;
            float _4116 = (((_4081 * _4095) - _4081) * _4081) + 1.0f;
            float _4121 = 1.0f - _4083;
            float _4122 = _4121 * _4121;
            float _4124 = (_4121 * _4122) * _4122;
            float _4148 = 1.0f - _1155;
            float _4155 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4148 * (1.04997003078460693359375f + (_4148 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4148))))));
            float _4156 = 1.0f - _4155;
            float3 _4159 = _1163 + ((1.0f.xxx - _1163) * 0.0476190485060214996337890625f);
            float3 _4203;
            do {
              [branch] if (((_482 > 0u) && (_482 <= 15u)) && (_507 > 0.0f)) {
                uint _4187 = clamp(_482 - 1u, 0u, 14u);
                _4203 = _49.SampleLevel(_13, float3((dot(_504, _4049) * 0.5f) + 0.5f, _507 * _52_m0[_4187].w, float(_4187)), 0.0f).xyz;
                break;
              }
              _4203 = _4076.xxx;
              break;
            } while (false);
            float3 _4206 = ((clamp((min(((_1163 * (1.0f - _4124)) + _4124.xxx) * (((_4095 / (_4116 * _4116)) * _4048.y) * (0.5f / (((_4079 * sqrt(((((-_4084) * _4095) + _4084) * _4084) + _4095)) + (_4084 * sqrt(((((-_4079) * _4095) + _4079) * _4079) + _4095))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4159 * (((_48.SampleLevel(_13, (float2(_4084, _1155) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_4079, _1155) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4155) / _4156)) * _4159) / (1.0f.xxx - (_4159 * _4156)))) * _30_m6[_1472].z, 0.0f.xxx, 1000.0f.xxx) * _3481) + ((_1159 * _4048.z) * _4203)) * (((_30_m6[_1451].xyz * _3614) * _4024) * _1551);
            _4207 = _4206;
          } else {
            _4207 = 0.0f.xxx;
          }
          _4208 = _1411;
          _4209 = _4207;
        } else {
          float _3414;
          do {
            if (_1558) {
              _3414 = 1.0f;
              break;
            }
            float _2828 = (0.5f + (0.5f * _30_m6[_1457].y)) - abs(_30_m6[_1457].x);
            float _2829 = _30_m6[_1457].y - _2828;
            float _2836 = abs(max((1.0f - abs(_2828)) - abs(_2829), 0.00048828125f));
            float3 _2840 = normalize(float3(_2828, _2829, (_30_m6[_1457].x >= 0.0f) ? _2836 : (-_2836)));
            float3 _2841 = _30_m6[_1454].xyz - _535;
            float _2842 = dot(_2841, _2841);
            float3 _2844 = _2841 * rsqrt(_2842);
            int _2847 = int(_30_m6[_1472].w);
            float3 _2849 = (_2840 * _30_m6[_1457].z) * 0.5f;
            float3 _2850 = _2841 - _2849;
            float3 _2851 = _2841 + _2849;
            bool _2853 = (_1555 & 1u) == 0u;
            bool _2856 = _2853 || ((_1476 & 2u) != 0u);
            bool _2859 = (!_2853) && (_30_m6[_1457].z > 0.0f);
            float _2871;
            if (_2859) {
              _2871 = 1.0f / ((((length(_2850) * length(_2851)) + dot(_2850, _2851)) * 0.5f) + 1.0f);
            } else {
              _2871 = 1.0f;
            }
            float _2893;
            if (_30_m6[_1469].w < 0.0f) {
              float _2887 = _2842 * (_30_m6[_1454].w * _30_m6[_1454].w);
              float _2890 = clamp(1.0f - (_2887 * _2887), 0.0f, 1.0f);
              _2893 = lerp(1.0f / (_2842 + 1.0f), _2871, float(_2859)) * (_2890 * _2890);
            } else {
              float3 _2876 = _2841 * _30_m6[_1454].w;
              _2893 = _2871 * pow(1.0f - clamp(dot(_2876, _2876), 0.0f, 1.0f), _30_m6[_1469].w);
            }
            float _2899 = clamp((dot(_2844, -_2840) - _30_m6[_1457].z) * _30_m6[_1457].w, 0.0f, 1.0f);
            float _2903 = _2893 * lerp(1.0f, _2899 * _2899, float(_2853));
            float _3003;
            if ((!_2859) && (_2847 >= 0)) {
              uint _2909 = uint(_2847);
              float2 _2996;
              [branch] if (_2853) {
                float4 _2986 = mul(_56_m1[_2909], _539);
                _2996 = _56_m0[_2909].xy + (clamp(_2986.xy / _2986.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_2909].zw);
              }
              else {
                float3 _2923 = mul(float4(-_2841, 0.0f), _56_m1[_2909]).xyz;
                float3 _452 = _2923;
                float3 _451 = _2923;
                float3 _450 = abs(_2923);
                uint _2932 = uint(int(_450.y > _450.x));
                uint _2938 = (_450.z > _450[_2932]) ? 2u : _2932;
                uint _2944 = (_2938 * 2u) + uint(_451[_2938] < 0.0f);
                float _2948 = abs(_452[_2944 / 2u]);
                float _2968 = 0.5f - (0.000244140625f / _56_m0[_2909].w);
                _2996 = _56_m0[_2909].xy + (clamp(float2((float(_2944) + ((((_452[uint(_393[_2944].x)] * _394[_2944].x) / _2948) * _2968) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_452[uint(_393[_2944].y)] * _394[_2944].y) / _2948) * _2968)), 0.0f.xx, 1.0f.xx) * _56_m0[_2909].zw);
              }
              _3003 = _2903 * _54.SampleLevel(_13, _2996, 0.0f).x;
            } else {
              _3003 = _2903;
            }
            float _3413;
            if (_3003 > 0.0f) {
              int _3057;
              if (_2856) {
                _3057 = int(_30_m6[_1460].x);
              } else {
                uint _3012 = asuint(_30_m6[_1457].w);
                uint _3013 = asuint(_30_m6[_1460].x);
                float3 _3014 = _535 - _30_m6[_1454].xyz;
                float3 _3015 = abs(_3014);
                float _3016 = _3015.x;
                float _3017 = _3015.y;
                float _3019 = _3015.z;
                int _3052;
                if ((_3016 > _3017) && (_3016 > _3019)) {
                  _3052 = int((_3014.x > 0.0f) ? (_3012 & 1023u) : ((_3012 >> 10u) & 1023u));
                } else {
                  int _3044;
                  if (_3017 > _3019) {
                    _3044 = int((_3014.y > 0.0f) ? ((_3012 >> 20u) & 1023u) : (_3013 & 1023u));
                  } else {
                    _3044 = int((_3014.z > 0.0f) ? ((_3013 >> 10u) & 1023u) : ((_3013 >> 20u) & 1023u));
                  }
                  _3052 = _3044;
                }
                _3057 = (_3052 == 1023) ? (-1) : _3052;
              }
              uint _3062 = uint(_3057);
              uint _3064 = asuint(_34_m11.x) + (_3062 * 96u);
              uint _3066 = (_3064 + 64u) >> 2u;
              uint _3069 = _3066 + 1u;
              uint _3072 = _3066 + 2u;
              uint _3075 = _3066 + 3u;
              float4 _3079 = asfloat(uint4(_37.Load(_3066 * 4 + 0), _37.Load(_3069 * 4 + 0), _37.Load(_3072 * 4 + 0), _37.Load(_3075 * 4 + 0)));
              float _3411;
              do {
                uint _3095 = ((asuint(_34_m11.y) + (_3062 * 16u)) >> 2u) + 1u;
                if (_37.Load(_3095 * 4 + 0) > 0u) {
                  float4 _449 = _1405;
                  float _3110;
                  do {
                    if (_37.Load(_3095 * 4 + 0) == 0u) {
                      _3110 = 1.0f;
                      break;
                    }
                    _3110 = _449[_37.Load(_3095 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _3411 = _3110;
                  break;
                }
                uint _3111 = _3064 >> 2u;
                uint _3126 = (_3064 + 16u) >> 2u;
                uint _3141 = (_3064 + 32u) >> 2u;
                uint _3156 = (_3064 + 48u) >> 2u;
                float4 _3176 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3111 * 4 + 0), _37.Load((_3111 + 1u) * 4 + 0), _37.Load((_3111 + 2u) * 4 + 0), _37.Load((_3111 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3126 * 4 + 0), _37.Load((_3126 + 1u) * 4 + 0), _37.Load((_3126 + 2u) * 4 + 0), _37.Load((_3126 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3141 * 4 + 0), _37.Load((_3141 + 1u) * 4 + 0), _37.Load((_3141 + 2u) * 4 + 0), _37.Load((_3141 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3156 * 4 + 0), _37.Load((_3156 + 1u) * 4 + 0), _37.Load((_3156 + 2u) * 4 + 0), _37.Load((_3156 + 3u) * 4 + 0))))), float4((_535 - ((-_2844) * _3079.x)) + (_504 * (_3079.y * 5.0f)), 1.0f));
                float3 _3180 = _3176.xyz / _3176.w.xxx;
                uint _3182 = (_3064 + 80u) >> 2u;
                float4 _3195 = asfloat(uint4(_37.Load(_3182 * 4 + 0), _37.Load((_3182 + 1u) * 4 + 0), _37.Load((_3182 + 2u) * 4 + 0), _37.Load((_3182 + 3u) * 4 + 0)));
                float2 _3196 = _3180.xy;
                float2 _3198 = _3195.xy;
                float3 _3202 = _3180.xyz;
                bool3 _3203 = bool3(_3202.x <= 0.0f.xxx.x, _3202.y <= 0.0f.xxx.y, _3202.z <= 0.0f.xxx.z);
                bool3 _3204 = bool3(_3202.x >= 1.0f.xxx.x, _3202.y >= 1.0f.xxx.y, _3202.z >= 1.0f.xxx.z);
                float _3207 = _3180.z;
                float2 _3218 = ((_3196 * (_3195.zw - _3198)) + _3198).xy * _34_m10.zw;
                float2 _3220 = floor(_3218 + 0.5f.xx);
                float2 _3221 = _3218 - _3220;
                float _3222 = _3221.x;
                float _3223 = _3222 + 0.5f;
                float _3224 = _3223 * _3223;
                float _3227 = 1.0f - _3222;
                float _3228 = min(_3222, 0.0f);
                float _3231 = _3222 + 1.0f;
                float _3232 = max(_3222, 0.0f);
                float _3243 = _3221.y;
                float _3244 = _3243 + 0.5f;
                float _3245 = _3244 * _3244;
                float _3248 = 1.0f - _3243;
                float _3249 = min(_3243, 0.0f);
                float _3252 = _3243 + 1.0f;
                float _3253 = max(_3243, 0.0f);
                float3 _3265 = float3(0.1599999964237213134765625f * _3227, 0.1599999964237213134765625f * ((_3231 - (_3232 * _3232)) + 1.0f), _3224 * 0.07999999821186065673828125f);
                float3 _3266 = float3(0.1599999964237213134765625f * ((_3224 * 0.5f) - _3222), 0.1599999964237213134765625f * ((_3227 - (_3228 * _3228)) + 1.0f), 0.1599999964237213134765625f * _3231) + _3265;
                float3 _3268 = float3(0.1599999964237213134765625f * _3248, 0.1599999964237213134765625f * ((_3252 - (_3253 * _3253)) + 1.0f), _3245 * 0.07999999821186065673828125f);
                float3 _3269 = float3(0.1599999964237213134765625f * ((_3245 * 0.5f) - _3243), 0.1599999964237213134765625f * ((_3248 - (_3249 * _3249)) + 1.0f), 0.1599999964237213134765625f * _3252) + _3268;
                float3 _3275 = ((_3265 / _3266) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
                float3 _3277 = ((_3268 / _3269) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
                float2 _3279 = _3220 * _34_m10.xy;
                float _3280 = _3275.x;
                float _3281 = _3277.x;
                float _3284 = _3275.y;
                float _3287 = _3275.z;
                float _3290 = _3277.y;
                float _3297 = _3277.z;
                float _3304 = _3266.x;
                float _3305 = _3269.x;
                float _3307 = _3266.y;
                float _3309 = _3266.z;
                float _3311 = _3269.y;
                float _3315 = _3269.z;
                float _3373 = (((((((_3304 * _3305) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3280, _3281), _439).xy, _3207)) + ((_3307 * _3305) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3284, _3281), _439).xy, _3207))) + ((_3309 * _3305) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3287, _3281), _439).xy, _3207))) + ((_3304 * _3311) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3280, _3290), _439).xy, _3207))) + ((_3307 * _3311) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3284, _3290), _439).xy, _3207))) + ((_3309 * _3311) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3287, _3290), _439).xy, _3207))) + ((_3304 * _3315) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3280, _3297), _439).xy, _3207));
                float4 _3396 = asfloat(uint4(_37.Load(_3066 * 4 + 0), _37.Load(_3069 * 4 + 0), _37.Load(_3072 * 4 + 0), _37.Load(_3075 * 4 + 0)));
                float _3397 = _3396.w;
                float2 _3399 = min(_3196, 1.0f.xx - _3196);
                _3411 = lerp(1.0f, (any(bool3(_3203.x || _3204.x, _3203.y || _3204.y, _3203.z || _3204.z)) || ((asuint(_3207) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3373 + ((_3307 * _3315) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3284, _3297), _439).xy, _3207))) + ((_3309 * _3315) * _35.SampleCmpLevelZero(_16, float3(_3279 + float2(_3287, _3297), _439).xy, _3207))), _2856 ? min(_3397, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3396.z - _3176.w) * 0.25f, min(_3399.x, _3399.y)))) : _3397);
                break;
              } while (false);
              _3413 = (_3057 >= 0) ? _3411 : 1.0f;
            } else {
              _3413 = 1.0f;
            }
            _3414 = _3413;
            break;
          } while (false);
          _4208 = _1411 * _3414;
          _4209 = 0.0f.xxx;
        }
        _4210 = _4208;
        _4211 = _4209;
        break;
      } while (false);
      _1436 = _4210;
      _1439 = _1438 + _4211;
    }
    _1408 = _1407 + _1438;
  }
  float3 _4215 = _1376.xyz + (_1407 * _1410);
  float3 _4217 = _471.xxx;
  float3 _4254;
  float3 _4255;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x36B6A0CE:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _4230 = min(_22.SampleBias(_12, _4, _9_m16).x, _471);
    _4254 = clamp((pow(abs(max(0.0f, dot(_504, _561)) + _4230), exp2(((-16.0f) * _1155) - 1.0f)) - 1.0f) + _4230, 0.0f, 1.0f).xxx;
    _4255 = max(_4230.xxx, ((((((_1159 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _4230) + ((_1159 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _4230) + ((_1159 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _4230);
  }
  else {
    _4254 = _4217;
    _4255 = _4217;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _4215 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _4254 : 1.0f.xxx;
  // RenoDX code end
  float3 _4278;
  do {
    [branch] if (((_482 > 0u) && (_482 <= 15u)) && (_507 > 0.0f)) {
      uint _4266 = clamp(_482 - 1u, 0u, 14u);
      _4278 = _50.SampleLevel(_13, float3(_507 * _52_m0[_4266].w, 0.5f, float(_4266)), 0.0f).xyz;
      break;
    }
    _4278 = 1.0f.xxx;
    break;
  } while (false);
  float3 _4295 = (_535 + (_504 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_510 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _4305 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _4314 = _4295 - (_9_m108.xyz + (_4305 * (-_9_m110.w)));
  float _4329 = max(min(max((max(abs(_4314.x), abs(_4314.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4314.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _4631;
  float4 _4632;
  float4 _4633;
  float _4634;
  float _4635;
  if ((_9_m108.w != 0.0f) && (_4329 < 1.0f)) {
    float3 _4342 = _4295 - (_9_m108.xyz + (_4305 * (-_9_m110.y)));
    float _4356 = max(clamp((max(abs(_4342.x), abs(_4342.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4342.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _4432;
    float4 _4433;
    float4 _4434;
    float4 _4435;
    if (_4356 < 1.0f) {
      float3 _4365 = ((_4295 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4367 = _4365 - floor(_4365);
      float4 _4371 = _66.SampleLevel(_14, _4367, 0.0f);
      float _4372 = 1.0f - _4356;
      float _4376 = _9_m109.y * 0.5f;
      float _4381 = _4367.x;
      float _4382 = clamp(_4367.y, _4376, 1.0f - _4376) * 0.3333333432674407958984375f;
      float _4383 = _4367.z;
      float4 _4386 = _67.SampleLevel(_13, float3(_4381, _4382, _4383), 0.0f);
      float _4402 = _4371.x;
      float _4412 = _4371.y;
      float _4422 = _4371.z;
      _4432 = _4329 + (_4386.w * _4372);
      _4433 = float4(((_67.SampleLevel(_13, float3(_4381, _4382 + 0.666666686534881591796875f, _4383), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4422, _4422) * _4372;
      _4434 = float4(((_67.SampleLevel(_13, float3(_4381, _4382 + 0.3333333432674407958984375f, _4383), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4412, _4412) * _4372;
      _4435 = float4(((_4386.xyz * 4.0f) - 2.0f.xxx) * _4402, _4402) * _4372;
    } else {
      _4432 = _4329;
      _4433 = 0.0f.xxxx;
      _4434 = 0.0f.xxxx;
      _4435 = 0.0f.xxxx;
    }
    float3 _4441 = _4295 - (_9_m108.xyz + (_4305 * (-_9_m110.z)));
    float _4455 = max(clamp((max(abs(_4441.x), abs(_4441.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4441.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _4535;
    float4 _4536;
    float4 _4537;
    float4 _4538;
    if (_4455 < 1.0f) {
      float3 _4464 = ((_4295 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4466 = _4464 - floor(_4464);
      float4 _4470 = _68.SampleLevel(_14, _4466, 0.0f);
      float _4472 = _4356 * (1.0f - _4455);
      float _4476 = _9_m109.y * 0.5f;
      float _4481 = _4466.x;
      float _4482 = clamp(_4466.y, _4476, 1.0f - _4476) * 0.3333333432674407958984375f;
      float _4483 = _4466.z;
      float4 _4486 = _69.SampleLevel(_13, float3(_4481, _4482, _4483), 0.0f);
      float _4502 = _4470.x;
      float _4513 = _4470.y;
      float _4524 = _4470.z;
      _4535 = _4432 + (_4486.w * _4472);
      _4536 = _4433 + (float4(((_69.SampleLevel(_13, float3(_4481, _4482 + 0.666666686534881591796875f, _4483), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4524, _4524) * _4472);
      _4537 = _4434 + (float4(((_69.SampleLevel(_13, float3(_4481, _4482 + 0.3333333432674407958984375f, _4483), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4513, _4513) * _4472);
      _4538 = _4435 + (float4(((_4486.xyz * 4.0f) - 2.0f.xxx) * _4502, _4502) * _4472);
    } else {
      _4535 = _4432;
      _4536 = _4433;
      _4537 = _4434;
      _4538 = _4435;
    }
    float4 _4621;
    float4 _4622;
    float4 _4623;
    float _4624;
    if (_4455 > 0.0f) {
      float3 _4547 = ((_4295 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4550 = _9_m109.xyz * 0.5f;
      float3 _4552 = clamp(_4547 - floor(_4547), _4550, 1.0f.xxx - _4550);
      float4 _4556 = _70.SampleLevel(_14, _4552, 0.0f);
      float _4558 = _4455 * (1.0f - _4329);
      float _4562 = _9_m109.y * 0.5f;
      float _4567 = _4552.x;
      float _4568 = clamp(_4552.y, _4562, 1.0f - _4562) * 0.3333333432674407958984375f;
      float _4569 = _4552.z;
      float4 _4572 = _71.SampleLevel(_13, float3(_4567, _4568, _4569), 0.0f);
      float _4588 = _4556.x;
      float _4599 = _4556.y;
      float _4610 = _4556.z;
      _4621 = _4536 + (float4(((_71.SampleLevel(_13, float3(_4567, _4568 + 0.666666686534881591796875f, _4569), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4610, _4610) * _4558);
      _4622 = _4537 + (float4(((_71.SampleLevel(_13, float3(_4567, _4568 + 0.3333333432674407958984375f, _4569), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4599, _4599) * _4558);
      _4623 = _4538 + (float4(((_4572.xyz * 4.0f) - 2.0f.xxx) * _4588, _4588) * _4558);
      _4624 = _4535 + (_4572.w * _4558);
    } else {
      _4621 = _4536;
      _4622 = _4537;
      _4623 = _4538;
      _4624 = _4535;
    }
    float _4627 = clamp((_4624 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _4631 = _4621;
    _4632 = _4622;
    _4633 = _4623;
    _4634 = _4627 - _4329;
    _4635 = (_4627 + _4329) * 0.5f;
  } else {
    _4631 = 0.0f.xxxx;
    _4632 = 0.0f.xxxx;
    _4633 = 0.0f.xxxx;
    _4634 = 0.0f;
    _4635 = 1.0f;
  }
  float4 _4655 = _4633 + float4(_9_m111.x * _4635, (_9_m111.y * _4635) + ((_9_m111.w * _4634) * 0.5f), _9_m111.z * _4635, (_9_m111.w * _4635) + ((_9_m111.y * _4634) * 0.375f));
  float4 _4675 = _4632 + float4(_9_m112.x * _4635, (_9_m112.y * _4635) + ((_9_m112.w * _4634) * 0.5f), _9_m112.z * _4635, (_9_m112.w * _4635) + ((_9_m112.y * _4634) * 0.375f));
  float4 _4695 = _4631 + float4(_9_m113.x * _4635, (_9_m113.y * _4635) + ((_9_m113.w * _4634) * 0.5f), _9_m113.z * _4635, (_9_m113.w * _4635) + ((_9_m113.y * _4634) * 0.375f));
  float4 _4853;
  float4 _4854;
  float4 _4855;
  [branch] if (all(bool2(_523.x >= 0.0f.xx.x, _523.y >= 0.0f.xx.y))) {
    float4 _4703 = _65.SampleLevel(_13, _523, 0.0f);
    float4 _4704 = abs(_4703);
    float4 _4850;
    float4 _4851;
    float4 _4852;
    [branch] if (any(bool4(_4704.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4704.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4704.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4704.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4710 = length(_4703.yzw);
      uint _4712;
      float _4715;
      _4712 = 0u;
      _4715 = 1.0f;
      for (float _4717 = _4710; _4717 > 4.599999904632568359375f;) {
        _4712++;
        _4715 *= 0.5f;
        _4717 *= 0.5f;
        continue;
      }
      float4 _4721 = _4703 * _4715;
      float4 _4726 = float4(0.0f, _4721.yzw);
      float2 _4748 = (_64.SampleLevel(_13, float2(((((length(_4726) * _63_m3.x) + _63_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _63_m2.xy) + _63_m2.zw;
      float4 _4762;
      _4762 = float4(_4748.x * 3.5449078083038330078125f, _4726.yzw * _4748.y) * exp(_4721.x * 0.282094776630401611328125f);
      for (uint _4765 = 0u; _4765 < _4712;) {
        _4762 = mul(float4x4(_4762, float4(_4762.yx, 0.0f, 0.0f), float4(_4762.z, 0.0f, _4762.x, 0.0f), float4(_4762.w, 0.0f, 0.0f, _4762.x)) * 0.282094776630401611328125f, _4762);
        _4765++;
        continue;
      }
      float4x4 _4786 = float4x4(_4762, float4(_4762.yx, 0.0f, 0.0f), float4(_4762.z, 0.0f, _4762.x, 0.0f), float4(_4762.w, 0.0f, 0.0f, _4762.x)) * 0.282094776630401611328125f;
      float4 _4796 = mul(_4786, float4(_4655.w * 1.1283791065216064453125f, _4655.y * (-0.977204978466033935546875f), _4655.z * 0.977204978466033935546875f, _4655.x * (-0.977204978466033935546875f)));
      float4 _4816 = mul(_4786, float4(_4675.w * 1.1283791065216064453125f, _4675.y * (-0.977204978466033935546875f), _4675.z * 0.977204978466033935546875f, _4675.x * (-0.977204978466033935546875f)));
      float4 _4836 = mul(_4786, float4(_4695.w * 1.1283791065216064453125f, _4695.y * (-0.977204978466033935546875f), _4695.z * 0.977204978466033935546875f, _4695.x * (-0.977204978466033935546875f)));
      _4850 = float4(_4796.x * 0.886226952075958251953125f, _4796.w * (-1.02332675457000732421875f), _4796.y * (-1.02332675457000732421875f), _4796.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4851 = float4(_4816.x * 0.886226952075958251953125f, _4816.w * (-1.02332675457000732421875f), _4816.y * (-1.02332675457000732421875f), _4816.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4852 = float4(_4836.x * 0.886226952075958251953125f, _4836.w * (-1.02332675457000732421875f), _4836.y * (-1.02332675457000732421875f), _4836.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4850 = _4655;
      _4851 = _4675;
      _4852 = _4695;
    }
    _4853 = _4850;
    _4854 = _4851;
    _4855 = _4852;
  }
  else {
    _4853 = _4655;
    _4854 = _4675;
    _4855 = _4695;
  }
  float _4862 = max(0.0f, dot(_4853.xyz * _4278.x, _504) + _4853.w);
  float _4869 = max(0.0f, dot(_4854.xyz * _4278.y, _504) + _4854.w);
  float _4876 = max(0.0f, dot(_4855.xyz * _4278.z, _504) + _4855.w);
  float3 _4886 = reflect(_563, _1090);
  float _4894 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1155, 0.001000000047497451305389404296875f))));
  float2 _4898 = floor(_510 * _28_m0.w);
  float _4915 = floor(_542 - _28_m2.y);
  float _4919 = clamp(_4915, 0.0f, _28_m1.x - 1.0f);
  uint _4929 = (_4915 <= _4919) ? (_25.Load(uint(_9_m21.z + int(_4898.x + (_4898.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_4919)) * 4 + 0)) : 0u;
  float _4932 = dot(float4(_4862, _4869, _4876, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4934;
  float _4937;
  uint _4939;
  _4934 = 0.0f.xxx;
  _4937 = 1.0f;
  _4939 = _4929;
  uint _4940;
  float3 _4935;
  float _4938;
  bool _4942;
  [loop] for (;;) {
    bool _4941 = _4939 != 0u;
    _4942 = _4937 > 0.00999999977648258209228515625f;
    if (_4941 && _4942) {
      uint _4946 = firstbitlow(_4939);
      _4940 = _4939 ^ (1u << (_4946 & 31u));
      float3 _4966 = float3(dot(_28_m4[_4946]._m2, _539), dot(_28_m4[_4946]._m3, _539), dot(_28_m4[_4946]._m4, _539));
      float3 _4967 = abs(_4966);
      if (all(bool3(_4967.x <= _28_m4[_4946]._m1.xyz.x, _4967.y <= _28_m4[_4946]._m1.xyz.y, _4967.z <= _28_m4[_4946]._m1.xyz.z))) {
        float3 _4976 = _28_m4[_4946]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4978 = _4967 * 0.100000001490116119384765625f;
        float3 _4979 = _4978 * _4978;
        float3 _4982 = (_28_m4[_4946]._m1.xyz - _4967) * _28_m4[_4946]._m5.xyz;
        float3 _5030;
        [branch] if (_28_m4[_4946]._m6.x == 1.0f) {
          float3 _5015 = float3(dot(_28_m4[_4946]._m2.xyz, _4886), dot(_28_m4[_4946]._m3.xyz, _4886), dot(_28_m4[_4946]._m4.xyz, _4886));
          float3 _5017 = (_28_m4[_4946]._m1.xyz - _4966) / _5015;
          float3 _5020 = ((-_28_m4[_4946]._m1.xyz) - _4966) / _5015;
          bool3 _5021 = bool3(_5015.x > 0.0f.xxx.x, _5015.y > 0.0f.xxx.y, _5015.z > 0.0f.xxx.z);
          float3 _5022 = float3(_5021.x ? _5017.x : _5020.x, _5021.y ? _5017.y : _5020.y, _5021.z ? _5017.z : _5020.z);
          _5030 = _4966 + (_5015 * min(min(_5022.x, _5022.y), _5022.z));
        }
        else {
          _5030 = _4886;
        }
        float3 _5031 = normalize(_5030);
        float3 _5034 = float3(int3(sign(_5031)));
        float3 _5037 = _5031 / dot(_5031, _5034).xxx;
        float3 _5051;
        if (_5037.z < 0.0f) {
          float3 _5042 = abs(_5037);
          float2 _5049 = _5034.xy * float2(1.0f - _5042.y, 1.0f - _5042.x);
          _5051 = float3(_5049.x, _5049.y, _5037.z);
        } else {
          _5051 = _5037;
        }
        float _5076 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_4946]._m0, float4(_1090, 1.0f))));
        float _5089 = clamp((min(_4982.x, min(_4982.y, _4982.z)) * _28_m4[_4946]._m6.y) + ((((((_4976 * _4976).x - ((_4979.x + _4979.y) + _4979.z)) * _28_m4[_4946]._m5.x) * _28_m4[_4946]._m5.x) * (1.0f - _28_m4[_4946]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_4946]._m6.w;
        _4935 = _4934 + ((((_23.SampleLevel(_15, float3((((_5051.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_4946]._m1.w), _4894).xyz * _28_m4[_4946]._m5.w) * ((((((clamp(abs(_4932 / _5076), 0.0f, 1.0f) * 2.0f) + _4932) / (2.0f + _5076)) - 1.0f) * _9_m23.w) + 1.0f)) * _5089) * _4937);
        _4938 = _4937 * (1.0f - _5089);
      } else {
        _4935 = _4934;
        _4938 = _4937;
      }
      _4934 = _4935;
      _4937 = _4938;
      _4939 = _4940;
      continue;
    } else {
      break;
    }
  }
  float3 _5158;
  if (_4942) {
    float3 _5097 = normalize(_4886);
    float3 _5100 = float3(int3(sign(_5097)));
    float3 _5103 = _5097 / dot(_5097, _5100).xxx;
    float3 _5117;
    if (_5103.z < 0.0f) {
      float3 _5108 = abs(_5103);
      float2 _5115 = _5100.xy * float2(1.0f - _5108.y, 1.0f - _5108.x);
      _5117 = float3(_5115.x, _5115.y, _5103.z);
    } else {
      _5117 = _5103;
    }
    float _5144 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_1090, 1.0f))));
    _5158 = _4934 + ((_23.SampleLevel(_15, float3((((_5117.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _4894).xyz * ((((((clamp(abs(_4932 / _5144), 0.0f, 1.0f) * 2.0f) + _4932) / (2.0f + _5144)) - 1.0f) * _9_m23.w) + 1.0f)) * _4937);
  } else {
    _5158 = _4934;
  }
  float3 _5164 = (_5158 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _5164 *= 0.25f + (0.75f * saturate(_4932));
  }
  // RenoDX code end
  float3 _5185;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _5179 = _21.SampleBias(_13, _4, _9_m16);
    float _5180 = _5179.x;
    _5185 = (_20.SampleBias(_13, _4, _9_m16).xyz * _5180) + (_5164 * (1.0f - _5180));
  }
  else {
    _5185 = _5164;
  }
  float3 _5188 = (((float3(_4862, _4869, _4876) * _1159) * _9_m22.x) * _4255) + ((_5185 * (_1188 + ((_1163 * ((1.0f - _1189) / _1189)) * _1188))) * _4254);
  float4 _5190 = float4(_4215.x, _4215.y, _4215.z, _1376.w) + float4(_5188.x, _5188.y, _5188.z, 0.0f.xxxx.w);
  float _5208 = _537 * _9_m46.w;
  float _5213 = max(0.00999999977648258209228515625f, _5208 + _9_m47.w);
  float3 _5227 = exp(_9_m45.xyz * ((-max(0.0f, (_562 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_5213)) / _5213) * exp(_5208 + _9_m48.w))));
  float _5230 = dot(_563, _9_m44.xyz);
  float _5236 = _9_m45.w * _9_m45.w;
  float _5240 = (1.0f + _5236) - ((2.0f * _9_m45.w) * _5230);
  float3 _5564;
  float _5565;
  if (_9_m55.z > 0.0f) {
    uint3 _5392 = (uint3(int3(_460, _461, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5393 = _5392.y;
    uint _5394 = _5392.z;
    uint _5397 = _5392.x + (_5393 * _5394);
    uint _5399 = _5393 + (_5394 * _5397);
    uint _5401 = _5394 + (_5397 * _5399);
    uint _5403 = _5397 + (_5399 * _5401);
    float _5427 = dot(_563, -_7_m0[2].xyz);
    float3 _5435 = _535 - _7_m11.xyz;
    float _5437 = (_9_m55.w * ((_5427 > 5.9604644775390625e-08f) ? (1.0f / _5427) : 0.0f)) * (1.0f / _562);
    float _5438 = _5435.y;
    float _5439 = _5437 * _5438;
    float _5441 = _7_m11.y + _5439;
    float _5442 = _5438 - _5439;
    float _5444 = (1.0f - _5437) * _562;
    float _5458 = max(-127.0f, _9_m49.z * _5442);
    float _5482 = max(-127.0f, _9_m52.x * _5442);
    float _5493 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_5441 - _9_m49.x)))) * ((abs(_5458) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5458)) / _5458) : (0.693147182464599609375f - (0.2402265071868896484375f * _5458)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_5441 - _9_m52.z)))) * ((abs(_5482) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5482)) / _5482) : (0.693147182464599609375f - (0.2402265071868896484375f * _5482))));
    float _5515 = clamp((_562 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5518 = clamp((max(clamp(exp2(-(_5493 * _5444)), 0.0f, 1.0f), _9_m51.w) + clamp((_562 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5515, 0.0f, 1.0f);
    float4 _5558 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_13, float3((_510 + ((((float3(uint3(_5403, _5399 + (_5401 * _5403), _443) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_542 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_542 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _5560 = _5558.w;
    _5564 = _5558.xyz + (((_9_m51.xyz * (1.0f - _5518)) + (((_9_m54.xyz * pow(clamp(dot(_561, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5493 * max(_5444 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5515))) * _5560);
    _5565 = _5560 * _5518;
  } else {
    float3 _5268 = _535 - _7_m11.xyz;
    float _5270 = _5268.y;
    float _5284 = max(-127.0f, _9_m49.z * _5270);
    float _5308 = max(-127.0f, _9_m52.x * _5270);
    float _5319 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_5284) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5284)) / _5284) : (0.693147182464599609375f - (0.2402265071868896484375f * _5284)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_5308) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5308)) / _5308) : (0.693147182464599609375f - (0.2402265071868896484375f * _5308))));
    float _5341 = clamp((_562 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5344 = clamp((max(clamp(exp2(-(_5319 * _562)), 0.0f, 1.0f), _9_m51.w) + clamp((_562 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5341, 0.0f, 1.0f);
    _5564 = (_9_m51.xyz * (1.0f - _5344)) + (((_9_m54.xyz * pow(clamp(dot(_561, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5319 * max(_562 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5341));
    _5565 = _5344;
  }
  float3 _5568 = _5227 * _5565;
  float3 _5570 = (clamp(_5190.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _5568) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5230 * _5230)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _5236) / max((12.56637096405029296875f * _5240) * sqrt(_5240), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5227)) * _5565) + _5564);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _5570 = (_5570 * 0.65f) + (clamp(_5190.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _5572 = float4(_5570.x, _5570.y, _5570.z, _5190.w);
  _5572.w = dot(_5568, 0.3333333432674407958984375f.xxx);
  _5 = _5572;
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

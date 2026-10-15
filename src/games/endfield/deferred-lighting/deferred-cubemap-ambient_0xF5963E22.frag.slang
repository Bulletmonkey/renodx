#include "./renodx_injection.hlsli"

// Ported from the native 0xF5963E22 Vulkan dump.
struct _26 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _391;
static uint _394;

static const int2 _348[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _349[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(45, 3)]] ByteAddressBuffer _24 : register(t45, space3);
[[vk::binding(42, 3)]] cbuffer _25_27 : register(b42, space3) {
  float4 _27_m0 : packoffset(c0);
  float4 _27_m1 : packoffset(c1);
  float4 _27_m2 : packoffset(c2);
  float4 _27_m3 : packoffset(c3);
  _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(37, 3)]] cbuffer _28_29 : register(b37, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  float4 _29_m4 : packoffset(c4);
  uint4 _29_m5 : packoffset(c5);
  float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(38, 3)]] cbuffer _30_31 : register(b38, space3) {
  int _31_m0 : packoffset(c0);
  int _31_m1 : packoffset(c0.y);
  int _31_m2 : packoffset(c0.z);
  int _31_m3 : packoffset(c0.w);
  int _31_m4 : packoffset(c1);
  int _31_m5 : packoffset(c1.y);
  int _31_m6 : packoffset(c1.z);
  int _31_m7 : packoffset(c1.w);
  float _31_m8 : packoffset(c2);
  float _31_m9 : packoffset(c2.y);
  float _31_m10 : packoffset(c2.z);
  float _31_m11 : packoffset(c2.w);
  float _31_m12 : packoffset(c3);
  float _31_m13 : packoffset(c3.y);
  float _31_m14 : packoffset(c3.z);
  float _31_m15 : packoffset(c3.w);
};

[[vk::binding(40, 3)]] cbuffer _32_33 : register(b40, space3) {
  column_major float4x4 _33_m0[5] : packoffset(c0);
  float4 _33_m1[4] : packoffset(c20);
  float4 _33_m2[4] : packoffset(c24);
  float4 _33_m3[4] : packoffset(c28);
  float4 _33_m4 : packoffset(c32);
  float4 _33_m5 : packoffset(c33);
  float4 _33_m6 : packoffset(c34);
  float4 _33_m7 : packoffset(c35);
  float4 _33_m8 : packoffset(c36);
  float4 _33_m9[27] : packoffset(c37);
  float4 _33_m10 : packoffset(c64);
  float4 _33_m11 : packoffset(c65);
  float4 _33_m12[62] : packoffset(c66);
  column_major float4x4 _33_m13[15] : packoffset(c128);
  float4 _33_m14[15] : packoffset(c188);
  float4 _33_m15[15] : packoffset(c203);
  float4 _33_m16[15] : packoffset(c218);
  float4 _33_m17 : packoffset(c233);
  float4 _33_m18 : packoffset(c234);
  float4 _33_m19[21] : packoffset(c235);
  column_major float4x4 _33_m20 : packoffset(c256);
  column_major float4x4 _33_m21 : packoffset(c260);
  float4 _33_m22 : packoffset(c264);
  float4 _33_m23 : packoffset(c265);
  float4 _33_m24 : packoffset(c266);
  float4 _33_m25[128] : packoffset(c267);
};

[[vk::binding(44, 3)]] ByteAddressBuffer _36 : register(t44, space3);
[[vk::binding(36, 3)]] cbuffer _44_45 : register(b36, space3) {
  float4 _45_m0[15] : packoffset(c0);
  float4 _45_m1[15] : packoffset(c15);
};

[[vk::binding(43, 3)]] cbuffer _48_49 : register(b43, space3) {
  float4 _49_m0[32] : packoffset(c0);
  column_major float4x4 _49_m1[32] : packoffset(c32);
};

[[vk::binding(39, 3)]] cbuffer _55_56 : register(b39, space3) {
  float4 _56_m0 : packoffset(c0);
  float4 _56_m1 : packoffset(c1);
  float4 _56_m2 : packoffset(c2);
  float4 _56_m3 : packoffset(c3);
  float4 _56_m4 : packoffset(c4);
  uint4 _56_m5 : packoffset(c5);
  float4 _56_m6 : packoffset(c6);
  float4 _56_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(4, 3)]] SamplerComparisonState _16 : register(s4, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _18 : register(t32, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _21 : register(t25, space3);
[[vk::binding(12, 3)]] Texture2DArray<float4> _22 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _34 : register(t13, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _37 : register(t9, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _38 : register(t27, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _39 : register(t33, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _41 : register(t14, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _42 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _43 : register(t8, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _46 : register(t31, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _47 : register(t15, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _52 : register(t17, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _53 : register(t16, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _54 : register(t24, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _57 : register(t34, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _58 : register(t6, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _59 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _60 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _61 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _62 : register(t19, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _63 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _64 : register(t18, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _65 : register(t5, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _66 : register(t30, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _67 : register(t29, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _68 : register(t28, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _69 : register(t26, space3);

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
  uint2 _408 = uint2(gl_FragCoord.xy);
  int _411 = int(_408.x);
  int _412 = int(_408.y);
  int2 _414 = int3(_411, _412, 0).xy;
  float4 _416 = _66.Load(int3(_414, 0));
  float4 _418 = _67.Load(int3(_414, 0));
  float4 _420 = _68.Load(int3(_414, 0));
  float _421 = _416.x;
  float _422 = _416.y;
  uint _433 = uint(int((round(_416.w * 3.0f) * 4.0f) + round(_418.w * 3.0f)));
  float2 _436 = (_418.xy * 2.0f) - 1.0f.xx;
  float _440 = 1.0f - dot(1.0f.xx, abs(_436));
  float3 _442 = float3(_436.x, _440, _436.y);
  float3 _454;
  if (_440 < 0.0f) {
    float2 _449 = _442.xz;
    bool2 _450 = bool2(_449.x >= 0.0f.xx.x, _449.y >= 0.0f.xx.y);
    float2 _452 = (1.0f.xx - abs(_442.zx)) * float2(_450.x ? 1.0f.xx.x : (-1.0f).xx.x, _450.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _454 = float3(_452.x, _442.y, _452.y);
  } else {
    _454 = _442;
  }
  float3 _455 = normalize(_454);
  float _456 = _418.z;
  float _458 = _420.w;
  float2 _461 = float2(_408);
  float2 _466 = (_461 + 0.5f.xx) * _9_m0.zw;
  float2 _474 = gl_FragCoord.xy * _9_m0.zw;
  float2 _476 = (_474 * 2.0f) - 1.0f.xx;
  float4 _479 = float4(_476, _18.SampleLevel(_12, _466, 0.0f).x, 1.0f);
  _479.y = -_476.y;
  float4 _482 = mul(_7_m6, _479);
  float3 _486 = _482.xyz / _482.w.xxx;
  float4 _490 = float4(_486, 1.0f);
  float _493 = abs(mul(_7_m0, _490).z);
  float3 _508;
  do {
    if (_9_m4.w == 0.0f) {
      _508 = _7_m11.xyz - _486;
      break;
    } else {
      _508 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _509 = dot(_508, _508);
  float _511 = rsqrt(max(_509, 9.9999999392252902907785028219223e-09f));
  float3 _512 = _508 * _511;
  float _513 = _509 * _511;
  float3 _514 = -_512;
  bool _517 = _9_m132.x > 0.00048828125f;
  float2 _527;
  if (_517) {
    _527 = _65.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _527 = 1.0f.xx;
  }
  float _530 = min(_527.x, _527.y);
  float2 _531 = _527 * 1.0f;
  float _532 = _531.x;
  float _535 = clamp((_416.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _540;
  float _541;
  if (_517) {
    _540 = lerp(1.0f, _527.y, _535);
    _541 = lerp(1.0f, 0.0f, _535);
  } else {
    _540 = 1.0f;
    _541 = 1.0f;
  }
  float _546 = lerp(lerp(min(_540, _456), _456, _530), _456, _532);
  float3 _548 = _420.xyz * lerp(lerp(min(_541, 1.0f), 1.0f, _530), 1.0f, _532);
  float3 _549 = _548 * _421;
  float3 _550 = _548 - _549;
  float3 _554 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _421)).xxx + _549;
  float _555 = dot(_455, _512);
  float _556 = max(0.0f, _555);
  float _557 = _546 * _546;
  float _558 = _556 * _556;
  float _559 = _558 * _556;
  float2 _560 = float2(1.0f, _556);
  float2 _563 = float2(1.0f, _557);
  float _564 = _557 * _557;
  float3 _566 = float3(1.0f, _557, _564 * _557);
  float _571 = dot(mul(_560, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _563) / dot(mul(float3(1.0f, _558, _559), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _566);
  float _576 = dot(mul(_560, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _563) / dot(mul(float3(1.0f, _556, _559), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _566);
  float3 _579 = (_554 * _571) + _576.xxx;
  float _580 = _571 + _576;
  float4 _765;
  do {
    [branch] if (_31_m4 == 0) {
      _765 = 0.0f.xxxx;
      break;
    }
    float4 _600 = _37.Load(int3(_414, 0));
    float _601 = _600.x;
    float4 _764;
    if (_601 > 0.001000000047497451305389404296875f) {
      float3 _611 = reflect(_514, _455);
      float3 _612 = -_29_m0.xyz;
      float _617 = dot(_612, _611);
      float3 _619 = _611 - (_612 * _617);
      bool3 _621 = (_617 < _29_m4.z).xxx;
      float3 _629 = normalize((_612 * _29_m4.z) + ((_619 * rsqrt(max(6.103515625e-05f, dot(_619, _619)))) * _29_m4.y));
      float3 _630 = float3(_621.x ? _629.x : _611.x, _621.y ? _629.y : _611.y, _621.z ? _629.z : _611.z);
      float3 _634 = _630 + _512;
      float3 _638 = _634 * rsqrt(max(6.103515625e-05f, dot(_634, _634)));
      float _639 = clamp(dot(_630, _455), 0.0f, 1.0f);
      float _641 = clamp(dot(_455, _638), 0.0f, 1.0f);
      float _644 = clamp(_555, 0.0f, 1.0f);
      float _665 = (((_641 * _564) - _641) * _641) + 1.0f;
      float _668 = 1.0f - clamp(dot(_512, _638), 0.0f, 1.0f);
      float _669 = _668 * _668;
      float _671 = (_668 * _669) * _669;
      float _695 = 1.0f - _546;
      float _702 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_695 * (1.04997003078460693359375f + (_695 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _695))))));
      float _703 = 1.0f - _702;
      float3 _706 = _554 + ((1.0f.xxx - _554) * 0.0476190485060214996337890625f);
      float3 _746;
      do {
        [branch] if (((_433 > 0u) && (_433 <= 15u)) && (_458 > 0.0f)) {
          uint _730 = clamp(_433 - 1u, 0u, 14u);
          _746 = _42.SampleLevel(_13, float3((dot(_455, _630) * 0.5f) + 0.5f, _458 * _45_m0[_730].w, float(_730)), 0.0f).xyz;
          break;
        }
        _746 = _639.xxx;
        break;
      } while (false);
      float3 _749 = ((clamp((min(((_554 * (1.0f - _671)) + _671.xxx) * ((_564 / (_665 * _665)) * (0.5f / (((_639 * sqrt(((((-_644) * _564) + _644) * _644) + _564)) + (_644 * sqrt(((((-_639) * _564) + _639) * _639) + _564))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_706 * (((_41.SampleLevel(_13, (float2(_644, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_639, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _702) / _703)) * _706) / (1.0f.xxx - (_706 * _703)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _639) + ((_550 * 1.0f) * _746)) * _29_m1.xyz;
      float3 _762 = lerp(_749, _749 * _39.SampleBias(_13, float2(_601, 0.5f), _9_m16).xyz, (1.0f - _601).xxx) * min(_46.SampleLevel(_13, _474, 0.0f).x, 1.0f);
      _764 = float4(_762.x, _762.y, _762.z, 0.0f.xxxx.w);
    } else {
      _764 = 0.0f.xxxx;
    }
    _765 = _764;
    break;
  } while (false);
  float2 _767 = floor(_461 * 0.03125f);
  int _775 = int((_767.x + (_767.y * _31_m9)) * 8.0f);
  float _782 = floor(_493 - (_9_m3.y * _31_m15));
  float _786 = clamp(_782, 0.0f, _31_m11 - 1.0f);
  int _788 = int(_786 * 8.0f);
  float4 _794 = _38.SampleBias(_13, _466, _9_m16);
  float3 _796;
  float _799;
  _796 = 0.0f.xxx;
  _799 = 1.0f;
  float3 _797;
  float _800;
  [loop] for (int _801 = 0; _801 <= 7; _796 = _797, _799 = _800, _801++) {
    uint _822 = (_782 <= _786) ? (_24.Load(uint((_31_m2 + _775) + _801) * 4 + 0) & _24.Load(uint((_31_m3 + _788) + _801) * 4 + 0)) : 0u;
    uint _823 = uint(_801);
    float3 _827;
    _800 = _799;
    _827 = 0.0f.xxx;
    uint _830;
    float _825;
    float3 _828;
    [loop] for (uint _829 = _822; _829 != 0u; _800 = _825, _827 = _828, _829 = _830) {
      uint _834 = firstbitlow(_829);
      _830 = _829 ^ (1u << (_834 & 31u));
      int _840 = int((32u * _823) + _834) * 8;
      int _843 = _840 + 1;
      int _846 = _840 + 2;
      int _849 = _840 + 3;
      int _852 = _840 + 4;
      int _855 = _840 + 5;
      int _858 = _840 + 6;
      int _861 = _840 + 7;
      uint _865 = uint(_29_m6[_855].w);
      float _940;
      if ((_865 & 1u) == 1u) {
        uint _871 = asuint(_29_m6[_855].x);
        uint _878 = asuint(_29_m6[_855].y);
        uint _885 = asuint(_29_m6[_855].z);
        uint _892 = asuint(_29_m6[_858].x);
        uint _899 = asuint(_29_m6[_858].y);
        uint _906 = asuint(_29_m6[_858].z);
        float3 _925 = abs(mul(float4(_486 - _29_m6[_843].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_871).x, spvUnpackHalf2x16(_885).x, spvUnpackHalf2x16(_899).x, 0.0f), float4(spvUnpackHalf2x16(_871 >> 16u).x, spvUnpackHalf2x16(_885 >> 16u).x, spvUnpackHalf2x16(_899 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_878).x, spvUnpackHalf2x16(_892).x, spvUnpackHalf2x16(_906).x, 0.0f), float4(spvUnpackHalf2x16(_878 >> 16u).x, spvUnpackHalf2x16(_892 >> 16u).x, spvUnpackHalf2x16(_906 >> 16u).x, 0.0f))).xyz);
        float _932 = _29_m6[_861].x * 0.5f;
        float _938 = 1.0f - clamp((max(max(_925.x, _925.y), _925.z) - (_932 + 0.5f)) / (0.5f - _932), 0.0f, 1.0f);
        _940 = _938 * _938;
      } else {
        _940 = 1.0f;
      }
      uint _944 = uint(_29_m6[_840].w);
      bool _947 = _29_m6[_849].z > 0.5f;
      if ((false || (_940 < 0.001000000047497451305389404296875f)) || ((_944 < 4u) && _947)) {
        _825 = _800;
        _828 = _827;
        continue;
      }
      float _3578;
      float3 _3579;
      do {
        [branch] if (_944 >= 4u) {
          float3 _2201;
          do {
            float3 _966 = _29_m6[_843].xyz - _486;
            if (dot(_29_m6[_849].xyz, _966) > 0.0f) {
              _2201 = 0.0f.xxx;
              break;
            }
            float _973 = dot(_966, _966) * _29_m6[_843].w;
            float _976 = clamp(1.0f - (_973 * _973), 0.0f, 1.0f);
            float _977 = _976 * _976;
            if (_977 <= 0.0f) {
              _2201 = 0.0f.xxx;
              break;
            }
            float3 _1015;
            float _1016;
            bool _1017;
            float3 _1045;
            float3 _1047;
            float3 _1049;
            float3 _1051;
            float3 _981 = _29_m6[_846].xyz * _29_m6[_846].w;
            float3 _982 = _29_m6[_843].xyz - _981;
            float3 _983 = _29_m6[_852].xyz * _29_m6[_849].w;
            float3 _986 = _29_m6[_843].xyz + _981;
            float2 _996 = (float2(clamp(_546, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_555, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1000 = _52.SampleLevel(_13, _996, 0.0f);
            float4 _1004 = _53.SampleLevel(_13, _996, 0.0f);
            float _1399;
            do {
              _1015 = _512 - (_455 * dot(_512, _455));
              _1016 = dot(_1015, _1015);
              _1017 = _1016 > 9.9999997473787516355514526367188e-05f;
              float3 _1040;
              if (_1017) {
                _1040 = _1015 * rsqrt(_1016);
              } else {
                float _1021 = _455.z;
                float _1023 = (_1021 >= 0.0f) ? 1.0f : (-1.0f);
                float _1025 = (-1.0f) / (_1023 + _1021);
                float _1027 = _455.x;
                _1040 = float3(1.0f + (((_1023 * _1025) * _1027) * _1027), ((_1023 * _1027) * _455.y) * _1025, (-_1023) * _1027);
              }
              float3x3 _1044 = mul(float3x3(float3(_1000.x, 0.0f, _1000.z), float3(0.0f, 1.0f, 0.0f), float3(_1000.y, 0.0f, _1000.w)), float3x3(_1040, cross(_455, _1040), _455));
              _1045 = (_982 - _983) - _486;
              float3 _1046 = mul(_1044, _1045);
              _1047 = (_982 + _983) - _486;
              float3 _1048 = mul(_1044, _1047);
              _1049 = (_986 + _983) - _486;
              float3 _1050 = mul(_1044, _1049);
              _1051 = (_986 - _983) - _486;
              float3 _1052 = mul(_1044, _1051);
              float _1053 = _1046.z;
              float _1056 = _1048.z;
              float _1060 = _1050.z;
              float _1064 = _1052.z;
              int _1068 = (((int(_1053 > 0.0f) | ((_1056 > 0.0f) ? 2 : 0)) | ((_1060 > 0.0f) ? 4 : 0)) | ((_1064 > 0.0f) ? 8 : 0));
              float3 _1305;
              float3 _1306;
              float3 _1307;
              float3 _1308;
              float3 _1309;
              int _1310;
              if (_1068 == 0) {
                _1305 = _1052;
                _1306 = _1050;
                _1307 = _1048;
                _1308 = _1046;
                _1309 = 0.0f.xxx;
                _1310 = 0;
              } else {
                float3 _1299;
                float3 _1300;
                float3 _1301;
                float3 _1302;
                float3 _1303;
                int _1304;
                if (_1068 == 1) {
                  _1299 = _1052;
                  _1300 = (_1046 * (-_1064)) + (_1052 * _1053);
                  _1301 = (_1046 * (-_1056)) + (_1048 * _1053);
                  _1302 = _1046;
                  _1303 = 0.0f.xxx;
                  _1304 = 3;
                } else {
                  float3 _1285;
                  float3 _1286;
                  float3 _1287;
                  float3 _1288;
                  float3 _1289;
                  int _1290;
                  if (_1068 == 2) {
                    _1285 = _1052;
                    _1286 = (_1048 * (-_1060)) + (_1050 * _1056);
                    _1287 = _1048;
                    _1288 = (_1048 * (-_1053)) + (_1046 * _1056);
                    _1289 = 0.0f.xxx;
                    _1290 = 3;
                  } else {
                    float3 _1271;
                    float3 _1272;
                    float3 _1273;
                    float3 _1274;
                    float3 _1275;
                    int _1276;
                    if (_1068 == 3) {
                      _1271 = (_1046 * (-_1064)) + (_1052 * _1053);
                      _1272 = (_1048 * (-_1060)) + (_1050 * _1056);
                      _1273 = _1048;
                      _1274 = _1046;
                      _1275 = 0.0f.xxx;
                      _1276 = 4;
                    } else {
                      float3 _1257;
                      float3 _1258;
                      float3 _1259;
                      float3 _1260;
                      float3 _1261;
                      int _1262;
                      if (_1068 == 4) {
                        _1257 = _1052;
                        _1258 = _1050;
                        _1259 = (_1050 * (-_1056)) + (_1048 * _1060);
                        _1260 = (_1050 * (-_1064)) + (_1052 * _1060);
                        _1261 = 0.0f.xxx;
                        _1262 = 3;
                      } else {
                        float3 _1243;
                        float3 _1244;
                        float3 _1245;
                        float3 _1246;
                        float3 _1247;
                        int _1248;
                        if (_1068 == 5) {
                          _1243 = _1052;
                          _1244 = _1050;
                          _1245 = _1048;
                          _1246 = _1046;
                          _1247 = 0.0f.xxx;
                          _1248 = 0;
                        } else {
                          float3 _1237;
                          float3 _1238;
                          float3 _1239;
                          float3 _1240;
                          float3 _1241;
                          int _1242;
                          if (_1068 == 6) {
                            _1237 = (_1050 * (-_1064)) + (_1052 * _1060);
                            _1238 = _1050;
                            _1239 = _1048;
                            _1240 = (_1048 * (-_1053)) + (_1046 * _1056);
                            _1241 = 0.0f.xxx;
                            _1242 = 4;
                          } else {
                            float3 _1223;
                            float3 _1224;
                            float3 _1225;
                            float3 _1226;
                            float3 _1227;
                            int _1228;
                            if (_1068 == 7) {
                              float _1216 = -_1064;
                              _1223 = (_1050 * _1216) + (_1052 * _1060);
                              _1224 = _1050;
                              _1225 = _1048;
                              _1226 = _1046;
                              _1227 = (_1046 * _1216) + (_1052 * _1053);
                              _1228 = 5;
                            } else {
                              float3 _1210;
                              float3 _1211;
                              float3 _1212;
                              float3 _1213;
                              float3 _1214;
                              int _1215;
                              if (_1068 == 8) {
                                _1210 = _1052;
                                _1211 = _1052;
                                _1212 = (_1052 * (-_1060)) + (_1050 * _1064);
                                _1213 = (_1052 * (-_1053)) + (_1046 * _1064);
                                _1214 = 0.0f.xxx;
                                _1215 = 3;
                              } else {
                                float3 _1196;
                                float3 _1197;
                                float3 _1198;
                                float3 _1199;
                                float3 _1200;
                                int _1201;
                                if (_1068 == 9) {
                                  _1196 = _1052;
                                  _1197 = (_1052 * (-_1060)) + (_1050 * _1064);
                                  _1198 = (_1046 * (-_1056)) + (_1048 * _1053);
                                  _1199 = _1046;
                                  _1200 = 0.0f.xxx;
                                  _1201 = 4;
                                } else {
                                  float3 _1182;
                                  float3 _1183;
                                  float3 _1184;
                                  float3 _1185;
                                  float3 _1186;
                                  int _1187;
                                  if (_1068 == 10) {
                                    _1182 = _1052;
                                    _1183 = _1050;
                                    _1184 = _1048;
                                    _1185 = _1046;
                                    _1186 = 0.0f.xxx;
                                    _1187 = 0;
                                  } else {
                                    float3 _1176;
                                    float3 _1177;
                                    float3 _1178;
                                    float3 _1179;
                                    float3 _1180;
                                    int _1181;
                                    if (_1068 == 11) {
                                      float _1169 = -_1060;
                                      _1176 = (_1052 * _1169) + (_1050 * _1064);
                                      _1177 = (_1048 * _1169) + (_1050 * _1056);
                                      _1178 = _1048;
                                      _1179 = _1046;
                                      _1180 = _1052;
                                      _1181 = 5;
                                    } else {
                                      float3 _1163;
                                      float3 _1164;
                                      float3 _1165;
                                      float3 _1166;
                                      float3 _1167;
                                      int _1168;
                                      if (_1068 == 12) {
                                        _1163 = _1052;
                                        _1164 = _1050;
                                        _1165 = (_1050 * (-_1056)) + (_1048 * _1060);
                                        _1166 = (_1052 * (-_1053)) + (_1046 * _1064);
                                        _1167 = 0.0f.xxx;
                                        _1168 = 4;
                                      } else {
                                        bool _1121 = _1068 == 13;
                                        float3 _1148;
                                        float3 _1149;
                                        float3 _1150;
                                        float3 _1151;
                                        int _1152;
                                        if (_1121) {
                                          float _1141 = -_1056;
                                          _1148 = (_1050 * _1141) + (_1048 * _1060);
                                          _1149 = (_1046 * _1141) + (_1048 * _1053);
                                          _1150 = _1046;
                                          _1151 = _1052;
                                          _1152 = 5;
                                        } else {
                                          float3 _1138;
                                          float3 _1139;
                                          int _1140;
                                          if (_1068 == 14) {
                                            float _1131 = -_1053;
                                            _1138 = (_1048 * _1131) + (_1046 * _1056);
                                            _1139 = (_1052 * _1131) + (_1046 * _1064);
                                            _1140 = 5;
                                          } else {
                                            _1138 = _1046;
                                            _1139 = 0.0f.xxx;
                                            _1140 = (_1068 == 15) ? 4 : 0;
                                          }
                                          _1148 = _1050;
                                          _1149 = _1048;
                                          _1150 = _1138;
                                          _1151 = _1139;
                                          _1152 = _1140;
                                        }
                                        bool3 _1153 = _1121.xxx;
                                        _1163 = float3(_1153.x ? _1050.x : _1052.x, _1153.y ? _1050.y : _1052.y, _1153.z ? _1050.z : _1052.z);
                                        _1164 = _1148;
                                        _1165 = _1149;
                                        _1166 = _1150;
                                        _1167 = _1151;
                                        _1168 = _1152;
                                      }
                                      _1176 = _1163;
                                      _1177 = _1164;
                                      _1178 = _1165;
                                      _1179 = _1166;
                                      _1180 = _1167;
                                      _1181 = _1168;
                                    }
                                    _1182 = _1176;
                                    _1183 = _1177;
                                    _1184 = _1178;
                                    _1185 = _1179;
                                    _1186 = _1180;
                                    _1187 = _1181;
                                  }
                                  _1196 = _1182;
                                  _1197 = _1183;
                                  _1198 = _1184;
                                  _1199 = _1185;
                                  _1200 = _1186;
                                  _1201 = _1187;
                                }
                                _1210 = _1196;
                                _1211 = _1197;
                                _1212 = _1198;
                                _1213 = _1199;
                                _1214 = _1200;
                                _1215 = _1201;
                              }
                              _1223 = _1210;
                              _1224 = _1211;
                              _1225 = _1212;
                              _1226 = _1213;
                              _1227 = _1214;
                              _1228 = _1215;
                            }
                            _1237 = _1223;
                            _1238 = _1224;
                            _1239 = _1225;
                            _1240 = _1226;
                            _1241 = _1227;
                            _1242 = _1228;
                          }
                          _1243 = _1237;
                          _1244 = _1238;
                          _1245 = _1239;
                          _1246 = _1240;
                          _1247 = _1241;
                          _1248 = _1242;
                        }
                        _1257 = _1243;
                        _1258 = _1244;
                        _1259 = _1245;
                        _1260 = _1246;
                        _1261 = _1247;
                        _1262 = _1248;
                      }
                      _1271 = _1257;
                      _1272 = _1258;
                      _1273 = _1259;
                      _1274 = _1260;
                      _1275 = _1261;
                      _1276 = _1262;
                    }
                    _1285 = _1271;
                    _1286 = _1272;
                    _1287 = _1273;
                    _1288 = _1274;
                    _1289 = _1275;
                    _1290 = _1276;
                  }
                  _1299 = _1285;
                  _1300 = _1286;
                  _1301 = _1287;
                  _1302 = _1288;
                  _1303 = _1289;
                  _1304 = _1290;
                }
                _1305 = _1299;
                _1306 = _1300;
                _1307 = _1301;
                _1308 = _1302;
                _1309 = _1303;
                _1310 = _1304;
              }
              bool3 _1312 = (_1310 == 3).xxx;
              bool3 _1315 = (_1310 == 4).xxx;
              if (_1310 == 0) {
                _1399 = 0.0f;
                break;
              }
              float3 _1320 = normalize(_1308);
              float3 _1321 = normalize(_1307);
              float3 _1322 = normalize(_1306);
              float3 _1323 = normalize(float3(_1312.x ? _1308.x : _1305.x, _1312.y ? _1308.y : _1305.y, _1312.z ? _1308.z : _1305.z));
              float3 _1324 = normalize(float3(_1315.x ? _1308.x : _1309.x, _1315.y ? _1308.y : _1309.y, _1315.z ? _1308.z : _1309.z));
              float _1326 = clamp(dot(_1320, _1321), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1330 = sqrt(1.0f - (_1326 * _1326));
              float _1338 = clamp(dot(_1321, _1322), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1342 = sqrt(1.0f - (_1338 * _1338));
              float _1351 = clamp(dot(_1322, _1323), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1355 = sqrt(1.0f - (_1351 * _1351));
              float _1362 = ((cross(_1320, _1321).z * ((_1330 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1326) / _1330))) + (cross(_1321, _1322).z * ((_1342 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1338) / _1342)))) + (cross(_1322, _1323).z * ((_1355 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1351) / _1355)));
              float _1379;
              if (_1310 >= 4) {
                float _1367 = clamp(dot(_1323, _1324), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1371 = sqrt(1.0f - (_1367 * _1367));
                _1379 = _1362 + (cross(_1323, _1324).z * ((_1371 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1367) / _1371)));
              } else {
                _1379 = _1362;
              }
              float _1396;
              if (_1310 == 5) {
                float _1384 = clamp(dot(_1324, _1320), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1388 = sqrt(1.0f - (_1384 * _1384));
                _1396 = _1379 + (cross(_1324, _1320).z * ((_1388 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1384) / _1388)));
              } else {
                _1396 = _1379;
              }
              _1399 = max(_1396, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1787;
            do {
              float3 _1433;
              if (_1017) {
                _1433 = _1015 * rsqrt(_1016);
              } else {
                float _1414 = _455.z;
                float _1416 = (_1414 >= 0.0f) ? 1.0f : (-1.0f);
                float _1418 = (-1.0f) / (_1416 + _1414);
                float _1420 = _455.x;
                _1433 = float3(1.0f + (((_1416 * _1418) * _1420) * _1420), ((_1416 * _1420) * _455.y) * _1418, (-_1416) * _1420);
              }
              float3x3 _1436 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1433, cross(_455, _1433), _455));
              float3 _1437 = mul(_1436, _1045);
              float3 _1438 = mul(_1436, _1047);
              float3 _1439 = mul(_1436, _1049);
              float3 _1440 = mul(_1436, _1051);
              float _1441 = _1437.z;
              float _1444 = _1438.z;
              float _1448 = _1439.z;
              float _1452 = _1440.z;
              int _1456 = (((int(_1441 > 0.0f) | ((_1444 > 0.0f) ? 2 : 0)) | ((_1448 > 0.0f) ? 4 : 0)) | ((_1452 > 0.0f) ? 8 : 0));
              float3 _1693;
              float3 _1694;
              float3 _1695;
              float3 _1696;
              float3 _1697;
              int _1698;
              if (_1456 == 0) {
                _1693 = _1440;
                _1694 = _1439;
                _1695 = _1438;
                _1696 = _1437;
                _1697 = 0.0f.xxx;
                _1698 = 0;
              } else {
                float3 _1687;
                float3 _1688;
                float3 _1689;
                float3 _1690;
                float3 _1691;
                int _1692;
                if (_1456 == 1) {
                  _1687 = _1440;
                  _1688 = (_1437 * (-_1452)) + (_1440 * _1441);
                  _1689 = (_1437 * (-_1444)) + (_1438 * _1441);
                  _1690 = _1437;
                  _1691 = 0.0f.xxx;
                  _1692 = 3;
                } else {
                  float3 _1673;
                  float3 _1674;
                  float3 _1675;
                  float3 _1676;
                  float3 _1677;
                  int _1678;
                  if (_1456 == 2) {
                    _1673 = _1440;
                    _1674 = (_1438 * (-_1448)) + (_1439 * _1444);
                    _1675 = _1438;
                    _1676 = (_1438 * (-_1441)) + (_1437 * _1444);
                    _1677 = 0.0f.xxx;
                    _1678 = 3;
                  } else {
                    float3 _1659;
                    float3 _1660;
                    float3 _1661;
                    float3 _1662;
                    float3 _1663;
                    int _1664;
                    if (_1456 == 3) {
                      _1659 = (_1437 * (-_1452)) + (_1440 * _1441);
                      _1660 = (_1438 * (-_1448)) + (_1439 * _1444);
                      _1661 = _1438;
                      _1662 = _1437;
                      _1663 = 0.0f.xxx;
                      _1664 = 4;
                    } else {
                      float3 _1645;
                      float3 _1646;
                      float3 _1647;
                      float3 _1648;
                      float3 _1649;
                      int _1650;
                      if (_1456 == 4) {
                        _1645 = _1440;
                        _1646 = _1439;
                        _1647 = (_1439 * (-_1444)) + (_1438 * _1448);
                        _1648 = (_1439 * (-_1452)) + (_1440 * _1448);
                        _1649 = 0.0f.xxx;
                        _1650 = 3;
                      } else {
                        float3 _1631;
                        float3 _1632;
                        float3 _1633;
                        float3 _1634;
                        float3 _1635;
                        int _1636;
                        if (_1456 == 5) {
                          _1631 = _1440;
                          _1632 = _1439;
                          _1633 = _1438;
                          _1634 = _1437;
                          _1635 = 0.0f.xxx;
                          _1636 = 0;
                        } else {
                          float3 _1625;
                          float3 _1626;
                          float3 _1627;
                          float3 _1628;
                          float3 _1629;
                          int _1630;
                          if (_1456 == 6) {
                            _1625 = (_1439 * (-_1452)) + (_1440 * _1448);
                            _1626 = _1439;
                            _1627 = _1438;
                            _1628 = (_1438 * (-_1441)) + (_1437 * _1444);
                            _1629 = 0.0f.xxx;
                            _1630 = 4;
                          } else {
                            float3 _1611;
                            float3 _1612;
                            float3 _1613;
                            float3 _1614;
                            float3 _1615;
                            int _1616;
                            if (_1456 == 7) {
                              float _1604 = -_1452;
                              _1611 = (_1439 * _1604) + (_1440 * _1448);
                              _1612 = _1439;
                              _1613 = _1438;
                              _1614 = _1437;
                              _1615 = (_1437 * _1604) + (_1440 * _1441);
                              _1616 = 5;
                            } else {
                              float3 _1598;
                              float3 _1599;
                              float3 _1600;
                              float3 _1601;
                              float3 _1602;
                              int _1603;
                              if (_1456 == 8) {
                                _1598 = _1440;
                                _1599 = _1440;
                                _1600 = (_1440 * (-_1448)) + (_1439 * _1452);
                                _1601 = (_1440 * (-_1441)) + (_1437 * _1452);
                                _1602 = 0.0f.xxx;
                                _1603 = 3;
                              } else {
                                float3 _1584;
                                float3 _1585;
                                float3 _1586;
                                float3 _1587;
                                float3 _1588;
                                int _1589;
                                if (_1456 == 9) {
                                  _1584 = _1440;
                                  _1585 = (_1440 * (-_1448)) + (_1439 * _1452);
                                  _1586 = (_1437 * (-_1444)) + (_1438 * _1441);
                                  _1587 = _1437;
                                  _1588 = 0.0f.xxx;
                                  _1589 = 4;
                                } else {
                                  float3 _1570;
                                  float3 _1571;
                                  float3 _1572;
                                  float3 _1573;
                                  float3 _1574;
                                  int _1575;
                                  if (_1456 == 10) {
                                    _1570 = _1440;
                                    _1571 = _1439;
                                    _1572 = _1438;
                                    _1573 = _1437;
                                    _1574 = 0.0f.xxx;
                                    _1575 = 0;
                                  } else {
                                    float3 _1564;
                                    float3 _1565;
                                    float3 _1566;
                                    float3 _1567;
                                    float3 _1568;
                                    int _1569;
                                    if (_1456 == 11) {
                                      float _1557 = -_1448;
                                      _1564 = (_1440 * _1557) + (_1439 * _1452);
                                      _1565 = (_1438 * _1557) + (_1439 * _1444);
                                      _1566 = _1438;
                                      _1567 = _1437;
                                      _1568 = _1440;
                                      _1569 = 5;
                                    } else {
                                      float3 _1551;
                                      float3 _1552;
                                      float3 _1553;
                                      float3 _1554;
                                      float3 _1555;
                                      int _1556;
                                      if (_1456 == 12) {
                                        _1551 = _1440;
                                        _1552 = _1439;
                                        _1553 = (_1439 * (-_1444)) + (_1438 * _1448);
                                        _1554 = (_1440 * (-_1441)) + (_1437 * _1452);
                                        _1555 = 0.0f.xxx;
                                        _1556 = 4;
                                      } else {
                                        bool _1509 = _1456 == 13;
                                        float3 _1536;
                                        float3 _1537;
                                        float3 _1538;
                                        float3 _1539;
                                        int _1540;
                                        if (_1509) {
                                          float _1529 = -_1444;
                                          _1536 = (_1439 * _1529) + (_1438 * _1448);
                                          _1537 = (_1437 * _1529) + (_1438 * _1441);
                                          _1538 = _1437;
                                          _1539 = _1440;
                                          _1540 = 5;
                                        } else {
                                          float3 _1526;
                                          float3 _1527;
                                          int _1528;
                                          if (_1456 == 14) {
                                            float _1519 = -_1441;
                                            _1526 = (_1438 * _1519) + (_1437 * _1444);
                                            _1527 = (_1440 * _1519) + (_1437 * _1452);
                                            _1528 = 5;
                                          } else {
                                            _1526 = _1437;
                                            _1527 = 0.0f.xxx;
                                            _1528 = (_1456 == 15) ? 4 : 0;
                                          }
                                          _1536 = _1439;
                                          _1537 = _1438;
                                          _1538 = _1526;
                                          _1539 = _1527;
                                          _1540 = _1528;
                                        }
                                        bool3 _1541 = _1509.xxx;
                                        _1551 = float3(_1541.x ? _1439.x : _1440.x, _1541.y ? _1439.y : _1440.y, _1541.z ? _1439.z : _1440.z);
                                        _1552 = _1536;
                                        _1553 = _1537;
                                        _1554 = _1538;
                                        _1555 = _1539;
                                        _1556 = _1540;
                                      }
                                      _1564 = _1551;
                                      _1565 = _1552;
                                      _1566 = _1553;
                                      _1567 = _1554;
                                      _1568 = _1555;
                                      _1569 = _1556;
                                    }
                                    _1570 = _1564;
                                    _1571 = _1565;
                                    _1572 = _1566;
                                    _1573 = _1567;
                                    _1574 = _1568;
                                    _1575 = _1569;
                                  }
                                  _1584 = _1570;
                                  _1585 = _1571;
                                  _1586 = _1572;
                                  _1587 = _1573;
                                  _1588 = _1574;
                                  _1589 = _1575;
                                }
                                _1598 = _1584;
                                _1599 = _1585;
                                _1600 = _1586;
                                _1601 = _1587;
                                _1602 = _1588;
                                _1603 = _1589;
                              }
                              _1611 = _1598;
                              _1612 = _1599;
                              _1613 = _1600;
                              _1614 = _1601;
                              _1615 = _1602;
                              _1616 = _1603;
                            }
                            _1625 = _1611;
                            _1626 = _1612;
                            _1627 = _1613;
                            _1628 = _1614;
                            _1629 = _1615;
                            _1630 = _1616;
                          }
                          _1631 = _1625;
                          _1632 = _1626;
                          _1633 = _1627;
                          _1634 = _1628;
                          _1635 = _1629;
                          _1636 = _1630;
                        }
                        _1645 = _1631;
                        _1646 = _1632;
                        _1647 = _1633;
                        _1648 = _1634;
                        _1649 = _1635;
                        _1650 = _1636;
                      }
                      _1659 = _1645;
                      _1660 = _1646;
                      _1661 = _1647;
                      _1662 = _1648;
                      _1663 = _1649;
                      _1664 = _1650;
                    }
                    _1673 = _1659;
                    _1674 = _1660;
                    _1675 = _1661;
                    _1676 = _1662;
                    _1677 = _1663;
                    _1678 = _1664;
                  }
                  _1687 = _1673;
                  _1688 = _1674;
                  _1689 = _1675;
                  _1690 = _1676;
                  _1691 = _1677;
                  _1692 = _1678;
                }
                _1693 = _1687;
                _1694 = _1688;
                _1695 = _1689;
                _1696 = _1690;
                _1697 = _1691;
                _1698 = _1692;
              }
              bool3 _1700 = (_1698 == 3).xxx;
              bool3 _1703 = (_1698 == 4).xxx;
              if (_1698 == 0) {
                _1787 = 0.0f;
                break;
              }
              float3 _1708 = normalize(_1696);
              float3 _1709 = normalize(_1695);
              float3 _1710 = normalize(_1694);
              float3 _1711 = normalize(float3(_1700.x ? _1696.x : _1693.x, _1700.y ? _1696.y : _1693.y, _1700.z ? _1696.z : _1693.z));
              float3 _1712 = normalize(float3(_1703.x ? _1696.x : _1697.x, _1703.y ? _1696.y : _1697.y, _1703.z ? _1696.z : _1697.z));
              float _1714 = clamp(dot(_1708, _1709), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1718 = sqrt(1.0f - (_1714 * _1714));
              float _1726 = clamp(dot(_1709, _1710), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1730 = sqrt(1.0f - (_1726 * _1726));
              float _1739 = clamp(dot(_1710, _1711), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1743 = sqrt(1.0f - (_1739 * _1739));
              float _1750 = ((cross(_1708, _1709).z * ((_1718 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1714) / _1718))) + (cross(_1709, _1710).z * ((_1730 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1726) / _1730)))) + (cross(_1710, _1711).z * ((_1743 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1739) / _1743)));
              float _1767;
              if (_1698 >= 4) {
                float _1755 = clamp(dot(_1711, _1712), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1759 = sqrt(1.0f - (_1755 * _1755));
                _1767 = _1750 + (cross(_1711, _1712).z * ((_1759 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1755) / _1759)));
              } else {
                _1767 = _1750;
              }
              float _1784;
              if (_1698 == 5) {
                float _1772 = clamp(dot(_1712, _1708), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1776 = sqrt(1.0f - (_1772 * _1772));
                _1784 = _1767 + (cross(_1712, _1708).z * ((_1776 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1772) / _1776)));
              } else {
                _1784 = _1767;
              }
              _1787 = max(_1784, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1790 = (_865 & 2u) != 0u;
            uint _1794 = asuint(_29_m6[_852].w);
            uint _1795 = asuint(_29_m6[_858].w);
            float3 _1796 = _486 - _29_m6[_843].xyz;
            float3 _1797 = abs(_1796);
            float _1798 = _1797.x;
            float _1799 = _1797.y;
            float _1801 = _1797.z;
            int _1834;
            if ((_1798 > _1799) && (_1798 > _1801)) {
              _1834 = int((_1796.x > 0.0f) ? (_1794 & 1023u) : ((_1794 >> 10u) & 1023u));
            } else {
              int _1826;
              if (_1799 > _1801) {
                _1826 = int((_1796.y > 0.0f) ? ((_1794 >> 20u) & 1023u) : (_1795 & 1023u));
              } else {
                _1826 = int((_1796.z > 0.0f) ? ((_1795 >> 10u) & 1023u) : ((_1795 >> 20u) & 1023u));
              }
              _1834 = _1826;
            }
            int _1837 = _1790 ? int(_29_m6[_852].w) : ((_1834 == 1023) ? (-1) : _1834);
            uint _1846 = uint(_1837);
            uint _1848 = asuint(_33_m11.x) + (_1846 * 96u);
            uint _1850 = (_1848 + 64u) >> 2u;
            uint _1853 = _1850 + 1u;
            uint _1856 = _1850 + 2u;
            uint _1859 = _1850 + 3u;
            float4 _1863 = asfloat(uint4(_36.Load(_1850 * 4 + 0), _36.Load(_1853 * 4 + 0), _36.Load(_1856 * 4 + 0), _36.Load(_1859 * 4 + 0)));
            float _2195;
            do {
              uint _1879 = ((asuint(_33_m11.y) + (_1846 * 16u)) >> 2u) + 1u;
              if (_36.Load(_1879 * 4 + 0) > 0u) {
                float4 _404 = _794;
                float _1894;
                do {
                  if (_36.Load(_1879 * 4 + 0) == 0u) {
                    _1894 = 1.0f;
                    break;
                  }
                  _1894 = _404[_36.Load(_1879 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2195 = _1894;
                break;
              }
              uint _1895 = _1848 >> 2u;
              uint _1910 = (_1848 + 16u) >> 2u;
              uint _1925 = (_1848 + 32u) >> 2u;
              uint _1940 = (_1848 + 48u) >> 2u;
              float4 _1960 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_1895 * 4 + 0), _36.Load((_1895 + 1u) * 4 + 0), _36.Load((_1895 + 2u) * 4 + 0), _36.Load((_1895 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1910 * 4 + 0), _36.Load((_1910 + 1u) * 4 + 0), _36.Load((_1910 + 2u) * 4 + 0), _36.Load((_1910 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1925 * 4 + 0), _36.Load((_1925 + 1u) * 4 + 0), _36.Load((_1925 + 2u) * 4 + 0), _36.Load((_1925 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1940 * 4 + 0), _36.Load((_1940 + 1u) * 4 + 0), _36.Load((_1940 + 2u) * 4 + 0), _36.Load((_1940 + 3u) * 4 + 0))))), float4((_486 - ((_1796 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1796, _1796)))) * _1863.x)) + (_455 * (_1863.y * 5.0f)), 1.0f));
              float3 _1964 = _1960.xyz / _1960.w.xxx;
              uint _1966 = (_1848 + 80u) >> 2u;
              float4 _1979 = asfloat(uint4(_36.Load(_1966 * 4 + 0), _36.Load((_1966 + 1u) * 4 + 0), _36.Load((_1966 + 2u) * 4 + 0), _36.Load((_1966 + 3u) * 4 + 0)));
              float2 _1980 = _1964.xy;
              float2 _1982 = _1979.xy;
              float3 _1986 = _1964.xyz;
              bool3 _1987 = bool3(_1986.x <= 0.0f.xxx.x, _1986.y <= 0.0f.xxx.y, _1986.z <= 0.0f.xxx.z);
              bool3 _1988 = bool3(_1986.x >= 1.0f.xxx.x, _1986.y >= 1.0f.xxx.y, _1986.z >= 1.0f.xxx.z);
              float _1991 = _1964.z;
              float2 _2002 = ((_1980 * (_1979.zw - _1982)) + _1982).xy * _33_m10.zw;
              float2 _2004 = floor(_2002 + 0.5f.xx);
              float2 _2005 = _2002 - _2004;
              float _2006 = _2005.x;
              float _2007 = _2006 + 0.5f;
              float _2008 = _2007 * _2007;
              float _2011 = 1.0f - _2006;
              float _2012 = min(_2006, 0.0f);
              float _2015 = _2006 + 1.0f;
              float _2016 = max(_2006, 0.0f);
              float _2027 = _2005.y;
              float _2028 = _2027 + 0.5f;
              float _2029 = _2028 * _2028;
              float _2032 = 1.0f - _2027;
              float _2033 = min(_2027, 0.0f);
              float _2036 = _2027 + 1.0f;
              float _2037 = max(_2027, 0.0f);
              float3 _2049 = float3(0.1599999964237213134765625f * _2011, 0.1599999964237213134765625f * ((_2015 - (_2016 * _2016)) + 1.0f), _2008 * 0.07999999821186065673828125f);
              float3 _2050 = float3(0.1599999964237213134765625f * ((_2008 * 0.5f) - _2006), 0.1599999964237213134765625f * ((_2011 - (_2012 * _2012)) + 1.0f), 0.1599999964237213134765625f * _2015) + _2049;
              float3 _2052 = float3(0.1599999964237213134765625f * _2032, 0.1599999964237213134765625f * ((_2036 - (_2037 * _2037)) + 1.0f), _2029 * 0.07999999821186065673828125f);
              float3 _2053 = float3(0.1599999964237213134765625f * ((_2029 * 0.5f) - _2027), 0.1599999964237213134765625f * ((_2032 - (_2033 * _2033)) + 1.0f), 0.1599999964237213134765625f * _2036) + _2052;
              float3 _2059 = ((_2049 / _2050) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _2061 = ((_2052 / _2053) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _2063 = _2004 * _33_m10.xy;
              float _2064 = _2059.x;
              float _2065 = _2061.x;
              float _2068 = _2059.y;
              float _2071 = _2059.z;
              float _2074 = _2061.y;
              float _2081 = _2061.z;
              float _2088 = _2050.x;
              float _2089 = _2053.x;
              float _2091 = _2050.y;
              float _2093 = _2050.z;
              float _2095 = _2053.y;
              float _2099 = _2053.z;
              float _2157 = (((((((_2088 * _2089) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2064, _2065), _391).xy, _1991)) + ((_2091 * _2089) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2068, _2065), _391).xy, _1991))) + ((_2093 * _2089) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2071, _2065), _391).xy, _1991))) + ((_2088 * _2095) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2064, _2074), _391).xy, _1991))) + ((_2091 * _2095) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2068, _2074), _391).xy, _1991))) + ((_2093 * _2095) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2071, _2074), _391).xy, _1991))) + ((_2088 * _2099) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2064, _2081), _391).xy, _1991));
              float4 _2180 = asfloat(uint4(_36.Load(_1850 * 4 + 0), _36.Load(_1853 * 4 + 0), _36.Load(_1856 * 4 + 0), _36.Load(_1859 * 4 + 0)));
              float _2181 = _2180.w;
              float2 _2183 = min(_1980, 1.0f.xx - _1980);
              _2195 = lerp(1.0f, (any(bool3(_1987.x || _1988.x, _1987.y || _1988.y, _1987.z || _1988.z)) || ((asuint(_1991) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2157 + ((_2091 * _2099) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2068, _2081), _391).xy, _1991))) + ((_2093 * _2099) * _34.SampleCmpLevelZero(_16, float3(_2063 + float2(_2071, _2081), _391).xy, _1991))), _1790 ? min(_2181, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2180.z - _1960.w) * 0.25f, min(_2183.x, _2183.y)))) : _2181);
              break;
            } while (false);
            _2201 = ((_29_m6[_840].xyz * (((((_554 * _1004.x) + ((1.0f.xxx - _554) * _1004.y)) * _1399) * _29_m6[_861].z) + (_550 * _1787))) * _977) * ((_1837 >= 0) ? _2195 : 1.0f);
            break;
          } while (false);
          _3578 = _800;
          _3579 = _2201 * _940;
          break;
        }
        float _3576;
        float3 _3577;
        if (_29_m6[_840].w < 1.5f) {
          float3 _2806 = float3(0.100000001490116119384765625f, _546, 1.0f);
          float _2815 = (0.5f + (0.5f * _29_m6[_846].y)) - abs(_29_m6[_846].x);
          float _2816 = _29_m6[_846].y - _2815;
          float _2823 = abs(max((1.0f - abs(_2815)) - abs(_2816), 0.00048828125f));
          float3 _2827 = normalize(float3(_2815, _2816, (_29_m6[_846].x >= 0.0f) ? _2823 : (-_2823)));
          float3 _2828 = _29_m6[_843].xyz - _486;
          float _2829 = dot(_2828, _2828);
          float _2830 = rsqrt(_2829);
          float3 _2831 = _2828 * _2830;
          float _2835 = clamp(_29_m6[_861].y * _2830, 0.0f, 1.0f);
          int _2840 = int(_29_m6[_861].w);
          float3 _2841 = _2827 * _29_m6[_846].z;
          float3 _2842 = _2841 * 0.5f;
          float3 _2843 = _2828 - _2842;
          float3 _2844 = _2828 + _2842;
          bool _2846 = (_944 & 1u) == 0u;
          bool _2849 = _2846 || ((_865 & 2u) != 0u);
          bool _2852 = (!_2846) && (_29_m6[_846].z > 0.0f);
          float _2871;
          float _2872;
          if (_2852) {
            float _2856 = length(_2843);
            float _2857 = length(_2844);
            _2871 = clamp(0.5f * ((dot(_455, _2843) / _2856) + (dot(_455, _2844) / _2857)), 0.0f, 1.0f);
            _2872 = 1.0f / ((((_2856 * _2857) + dot(_2843, _2844)) * 0.5f) + 1.0f);
          } else {
            _2871 = clamp(dot(_455, _2831), 0.0f, 1.0f);
            _2872 = 1.0f;
          }
          float _2894;
          if (_29_m6[_858].w < 0.0f) {
            float _2888 = _2829 * (_29_m6[_843].w * _29_m6[_843].w);
            float _2891 = clamp(1.0f - (_2888 * _2888), 0.0f, 1.0f);
            _2894 = lerp(1.0f / (_2829 + 1.0f), _2872, float(_2852)) * (_2891 * _2891);
          } else {
            float3 _2877 = _2828 * _29_m6[_843].w;
            _2894 = _2872 * pow(1.0f - clamp(dot(_2877, _2877), 0.0f, 1.0f), _29_m6[_858].w);
          }
          float _2900 = clamp((dot(_2831, -_2827) - _29_m6[_846].z) * _29_m6[_846].w, 0.0f, 1.0f);
          float _2904 = _2894 * lerp(1.0f, _2900 * _2900, float(_2846));
          float _3004;
          if ((!_2852) && (_2840 >= 0)) {
            uint _2910 = uint(_2840);
            float2 _2997;
            [branch] if (_2846) {
              float4 _2987 = mul(_49_m1[_2910], _490);
              _2997 = _49_m0[_2910].xy + (clamp(_2987.xy / _2987.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_2910].zw);
            }
            else {
              float3 _2924 = mul(float4(-_2828, 0.0f), _49_m1[_2910]).xyz;
              float3 _399 = _2924;
              float3 _398 = _2924;
              float3 _397 = abs(_2924);
              uint _2933 = uint(int(_397.y > _397.x));
              uint _2939 = (_397.z > _397[_2933]) ? 2u : _2933;
              uint _2945 = (_2939 * 2u) + uint(_398[_2939] < 0.0f);
              float _2949 = abs(_399[_2945 / 2u]);
              float _2969 = 0.5f - (0.000244140625f / _49_m0[_2910].w);
              _2997 = _49_m0[_2910].xy + (clamp(float2((float(_2945) + ((((_399[uint(_348[_2945].x)] * _349[_2945].x) / _2949) * _2969) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_399[uint(_348[_2945].y)] * _349[_2945].y) / _2949) * _2969)), 0.0f.xx, 1.0f.xx) * _49_m0[_2910].zw);
            }
            _3004 = _2904 * _47.SampleLevel(_13, _2997, 0.0f).x;
          } else {
            _3004 = _2904;
          }
          bool _3005 = _3004 > 0.0f;
          float _3414;
          if (_3005) {
            int _3058;
            if (_2849) {
              _3058 = int(_29_m6[_849].x);
            } else {
              uint _3013 = asuint(_29_m6[_846].w);
              uint _3014 = asuint(_29_m6[_849].x);
              float3 _3015 = _486 - _29_m6[_843].xyz;
              float3 _3016 = abs(_3015);
              float _3017 = _3016.x;
              float _3018 = _3016.y;
              float _3020 = _3016.z;
              int _3053;
              if ((_3017 > _3018) && (_3017 > _3020)) {
                _3053 = int((_3015.x > 0.0f) ? (_3013 & 1023u) : ((_3013 >> 10u) & 1023u));
              } else {
                int _3045;
                if (_3018 > _3020) {
                  _3045 = int((_3015.y > 0.0f) ? ((_3013 >> 20u) & 1023u) : (_3014 & 1023u));
                } else {
                  _3045 = int((_3015.z > 0.0f) ? ((_3014 >> 10u) & 1023u) : ((_3014 >> 20u) & 1023u));
                }
                _3053 = _3045;
              }
              _3058 = (_3053 == 1023) ? (-1) : _3053;
            }
            uint _3063 = uint(_3058);
            uint _3065 = asuint(_33_m11.x) + (_3063 * 96u);
            uint _3067 = (_3065 + 64u) >> 2u;
            uint _3070 = _3067 + 1u;
            uint _3073 = _3067 + 2u;
            uint _3076 = _3067 + 3u;
            float4 _3080 = asfloat(uint4(_36.Load(_3067 * 4 + 0), _36.Load(_3070 * 4 + 0), _36.Load(_3073 * 4 + 0), _36.Load(_3076 * 4 + 0)));
            float _3412;
            do {
              uint _3096 = ((asuint(_33_m11.y) + (_3063 * 16u)) >> 2u) + 1u;
              if (_36.Load(_3096 * 4 + 0) > 0u) {
                float4 _396 = _794;
                float _3111;
                do {
                  if (_36.Load(_3096 * 4 + 0) == 0u) {
                    _3111 = 1.0f;
                    break;
                  }
                  _3111 = _396[_36.Load(_3096 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3412 = _3111;
                break;
              }
              uint _3112 = _3065 >> 2u;
              uint _3127 = (_3065 + 16u) >> 2u;
              uint _3142 = (_3065 + 32u) >> 2u;
              uint _3157 = (_3065 + 48u) >> 2u;
              float4 _3177 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_3112 * 4 + 0), _36.Load((_3112 + 1u) * 4 + 0), _36.Load((_3112 + 2u) * 4 + 0), _36.Load((_3112 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3127 * 4 + 0), _36.Load((_3127 + 1u) * 4 + 0), _36.Load((_3127 + 2u) * 4 + 0), _36.Load((_3127 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3142 * 4 + 0), _36.Load((_3142 + 1u) * 4 + 0), _36.Load((_3142 + 2u) * 4 + 0), _36.Load((_3142 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3157 * 4 + 0), _36.Load((_3157 + 1u) * 4 + 0), _36.Load((_3157 + 2u) * 4 + 0), _36.Load((_3157 + 3u) * 4 + 0))))), float4((_486 - ((-_2831) * _3080.x)) + (_455 * (_3080.y * 5.0f)), 1.0f));
              float3 _3181 = _3177.xyz / _3177.w.xxx;
              uint _3183 = (_3065 + 80u) >> 2u;
              float4 _3196 = asfloat(uint4(_36.Load(_3183 * 4 + 0), _36.Load((_3183 + 1u) * 4 + 0), _36.Load((_3183 + 2u) * 4 + 0), _36.Load((_3183 + 3u) * 4 + 0)));
              float2 _3197 = _3181.xy;
              float2 _3199 = _3196.xy;
              float3 _3203 = _3181.xyz;
              bool3 _3204 = bool3(_3203.x <= 0.0f.xxx.x, _3203.y <= 0.0f.xxx.y, _3203.z <= 0.0f.xxx.z);
              bool3 _3205 = bool3(_3203.x >= 1.0f.xxx.x, _3203.y >= 1.0f.xxx.y, _3203.z >= 1.0f.xxx.z);
              float _3208 = _3181.z;
              float2 _3219 = ((_3197 * (_3196.zw - _3199)) + _3199).xy * _33_m10.zw;
              float2 _3221 = floor(_3219 + 0.5f.xx);
              float2 _3222 = _3219 - _3221;
              float _3223 = _3222.x;
              float _3224 = _3223 + 0.5f;
              float _3225 = _3224 * _3224;
              float _3228 = 1.0f - _3223;
              float _3229 = min(_3223, 0.0f);
              float _3232 = _3223 + 1.0f;
              float _3233 = max(_3223, 0.0f);
              float _3244 = _3222.y;
              float _3245 = _3244 + 0.5f;
              float _3246 = _3245 * _3245;
              float _3249 = 1.0f - _3244;
              float _3250 = min(_3244, 0.0f);
              float _3253 = _3244 + 1.0f;
              float _3254 = max(_3244, 0.0f);
              float3 _3266 = float3(0.1599999964237213134765625f * _3228, 0.1599999964237213134765625f * ((_3232 - (_3233 * _3233)) + 1.0f), _3225 * 0.07999999821186065673828125f);
              float3 _3267 = float3(0.1599999964237213134765625f * ((_3225 * 0.5f) - _3223), 0.1599999964237213134765625f * ((_3228 - (_3229 * _3229)) + 1.0f), 0.1599999964237213134765625f * _3232) + _3266;
              float3 _3269 = float3(0.1599999964237213134765625f * _3249, 0.1599999964237213134765625f * ((_3253 - (_3254 * _3254)) + 1.0f), _3246 * 0.07999999821186065673828125f);
              float3 _3270 = float3(0.1599999964237213134765625f * ((_3246 * 0.5f) - _3244), 0.1599999964237213134765625f * ((_3249 - (_3250 * _3250)) + 1.0f), 0.1599999964237213134765625f * _3253) + _3269;
              float3 _3276 = ((_3266 / _3267) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _3278 = ((_3269 / _3270) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _3280 = _3221 * _33_m10.xy;
              float _3281 = _3276.x;
              float _3282 = _3278.x;
              float _3285 = _3276.y;
              float _3288 = _3276.z;
              float _3291 = _3278.y;
              float _3298 = _3278.z;
              float _3305 = _3267.x;
              float _3306 = _3270.x;
              float _3308 = _3267.y;
              float _3310 = _3267.z;
              float _3312 = _3270.y;
              float _3316 = _3270.z;
              float _3374 = (((((((_3305 * _3306) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3281, _3282), _391).xy, _3208)) + ((_3308 * _3306) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3285, _3282), _391).xy, _3208))) + ((_3310 * _3306) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3288, _3282), _391).xy, _3208))) + ((_3305 * _3312) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3281, _3291), _391).xy, _3208))) + ((_3308 * _3312) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3285, _3291), _391).xy, _3208))) + ((_3310 * _3312) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3288, _3291), _391).xy, _3208))) + ((_3305 * _3316) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3281, _3298), _391).xy, _3208));
              float4 _3397 = asfloat(uint4(_36.Load(_3067 * 4 + 0), _36.Load(_3070 * 4 + 0), _36.Load(_3073 * 4 + 0), _36.Load(_3076 * 4 + 0)));
              float _3398 = _3397.w;
              float2 _3400 = min(_3197, 1.0f.xx - _3197);
              _3412 = lerp(1.0f, (any(bool3(_3204.x || _3205.x, _3204.y || _3205.y, _3204.z || _3205.z)) || ((asuint(_3208) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3374 + ((_3308 * _3316) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3285, _3298), _391).xy, _3208))) + ((_3310 * _3316) * _34.SampleCmpLevelZero(_16, float3(_3280 + float2(_3288, _3298), _391).xy, _3208))), _2849 ? min(_3398, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3397.z - _3177.w) * 0.25f, min(_3400.x, _3400.y)))) : _3398);
              break;
            } while (false);
            _3414 = (_3058 >= 0) ? _3412 : 1.0f;
          } else {
            _3414 = 1.0f;
          }
          float3 _3438;
          float3 _3439;
          if (_2852) {
            float3 _3417 = _2806 * _2806;
            float3 _3418 = reflect(_514, _455);
            float _3427 = dot(_3418, _2841);
            _3438 = _3417 / clamp(_3417 + (0.5f * clamp(_29_m6[_846].z * _2830, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3439 = normalize(_2843 + (_2841 * clamp(dot(_2843, (_3418 * _3427) - _2841) / ((_29_m6[_846].z * _29_m6[_846].z) - (_3427 * _3427)), 0.0f, 1.0f)));
          } else {
            _3438 = 1.0f.xxx;
            _3439 = _2831;
          }
          float3 _3440 = _3439 + _512;
          float3 _3444 = _3440 * rsqrt(max(6.103515625e-05f, dot(_3440, _3440)));
          float3 _3575;
          if (_3005) {
            float _3447 = clamp(_2871, 0.0f, 1.0f);
            float _3449 = clamp(dot(_455, _3444), 0.0f, 1.0f);
            float _3451 = clamp(dot(_512, _3444), 0.0f, 1.0f);
            float _3452 = clamp(_555, 0.0f, 1.0f);
            float _3462;
            if (_2835 > 0.0f) {
              _3462 = clamp(_557 + ((_2835 * _2835) / ((_3451 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3462 = _557;
            }
            float _3463 = _3462 * _3462;
            float _3484 = (((_3449 * _3463) - _3449) * _3449) + 1.0f;
            float _3489 = 1.0f - _3451;
            float _3490 = _3489 * _3489;
            float _3492 = (_3489 * _3490) * _3490;
            float _3516 = 1.0f - _546;
            float _3523 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3516 * (1.04997003078460693359375f + (_3516 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3516))))));
            float _3524 = 1.0f - _3523;
            float3 _3527 = _554 + ((1.0f.xxx - _554) * 0.0476190485060214996337890625f);
            float3 _3571;
            do {
              [branch] if (((_433 > 0u) && (_433 <= 15u)) && (_458 > 0.0f)) {
                uint _3555 = clamp(_433 - 1u, 0u, 14u);
                _3571 = _42.SampleLevel(_13, float3((dot(_455, _3439) * 0.5f) + 0.5f, _458 * _45_m0[_3555].w, float(_3555)), 0.0f).xyz;
                break;
              }
              _3571 = _2871.xxx;
              break;
            } while (false);
            float3 _3574 = ((clamp((min(((_554 * (1.0f - _3492)) + _3492.xxx) * (((_3463 / (_3484 * _3484)) * _3438.y) * (0.5f / (((_3447 * sqrt(((((-_3452) * _3463) + _3452) * _3452) + _3463)) + (_3452 * sqrt(((((-_3447) * _3463) + _3447) * _3447) + _3463))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3527 * (((_41.SampleLevel(_13, (float2(_3452, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_3447, _546) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3523) / _3524)) * _3527) / (1.0f.xxx - (_3527 * _3524)))) * _29_m6[_861].z, 0.0f.xxx, 1000.0f.xxx) * _2871) + ((_550 * _3438.z) * _3571)) * (((_29_m6[_840].xyz * _3004) * _3414) * _940);
            _3575 = _3574;
          } else {
            _3575 = 0.0f.xxx;
          }
          _3576 = _800;
          _3577 = _3575;
        } else {
          float _2804;
          do {
            if (_947) {
              _2804 = 1.0f;
              break;
            }
            float _2218 = (0.5f + (0.5f * _29_m6[_846].y)) - abs(_29_m6[_846].x);
            float _2219 = _29_m6[_846].y - _2218;
            float _2226 = abs(max((1.0f - abs(_2218)) - abs(_2219), 0.00048828125f));
            float3 _2230 = normalize(float3(_2218, _2219, (_29_m6[_846].x >= 0.0f) ? _2226 : (-_2226)));
            float3 _2231 = _29_m6[_843].xyz - _486;
            float _2232 = dot(_2231, _2231);
            float3 _2234 = _2231 * rsqrt(_2232);
            int _2237 = int(_29_m6[_861].w);
            float3 _2239 = (_2230 * _29_m6[_846].z) * 0.5f;
            float3 _2240 = _2231 - _2239;
            float3 _2241 = _2231 + _2239;
            bool _2243 = (_944 & 1u) == 0u;
            bool _2246 = _2243 || ((_865 & 2u) != 0u);
            bool _2249 = (!_2243) && (_29_m6[_846].z > 0.0f);
            float _2261;
            if (_2249) {
              _2261 = 1.0f / ((((length(_2240) * length(_2241)) + dot(_2240, _2241)) * 0.5f) + 1.0f);
            } else {
              _2261 = 1.0f;
            }
            float _2283;
            if (_29_m6[_858].w < 0.0f) {
              float _2277 = _2232 * (_29_m6[_843].w * _29_m6[_843].w);
              float _2280 = clamp(1.0f - (_2277 * _2277), 0.0f, 1.0f);
              _2283 = lerp(1.0f / (_2232 + 1.0f), _2261, float(_2249)) * (_2280 * _2280);
            } else {
              float3 _2266 = _2231 * _29_m6[_843].w;
              _2283 = _2261 * pow(1.0f - clamp(dot(_2266, _2266), 0.0f, 1.0f), _29_m6[_858].w);
            }
            float _2289 = clamp((dot(_2234, -_2230) - _29_m6[_846].z) * _29_m6[_846].w, 0.0f, 1.0f);
            float _2293 = _2283 * lerp(1.0f, _2289 * _2289, float(_2243));
            float _2393;
            if ((!_2249) && (_2237 >= 0)) {
              uint _2299 = uint(_2237);
              float2 _2386;
              [branch] if (_2243) {
                float4 _2376 = mul(_49_m1[_2299], _490);
                _2386 = _49_m0[_2299].xy + (clamp(_2376.xy / _2376.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_2299].zw);
              }
              else {
                float3 _2313 = mul(float4(-_2231, 0.0f), _49_m1[_2299]).xyz;
                float3 _403 = _2313;
                float3 _402 = _2313;
                float3 _401 = abs(_2313);
                uint _2322 = uint(int(_401.y > _401.x));
                uint _2328 = (_401.z > _401[_2322]) ? 2u : _2322;
                uint _2334 = (_2328 * 2u) + uint(_402[_2328] < 0.0f);
                float _2338 = abs(_403[_2334 / 2u]);
                float _2358 = 0.5f - (0.000244140625f / _49_m0[_2299].w);
                _2386 = _49_m0[_2299].xy + (clamp(float2((float(_2334) + ((((_403[uint(_348[_2334].x)] * _349[_2334].x) / _2338) * _2358) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_403[uint(_348[_2334].y)] * _349[_2334].y) / _2338) * _2358)), 0.0f.xx, 1.0f.xx) * _49_m0[_2299].zw);
              }
              _2393 = _2293 * _47.SampleLevel(_13, _2386, 0.0f).x;
            } else {
              _2393 = _2293;
            }
            float _2803;
            if (_2393 > 0.0f) {
              int _2447;
              if (_2246) {
                _2447 = int(_29_m6[_849].x);
              } else {
                uint _2402 = asuint(_29_m6[_846].w);
                uint _2403 = asuint(_29_m6[_849].x);
                float3 _2404 = _486 - _29_m6[_843].xyz;
                float3 _2405 = abs(_2404);
                float _2406 = _2405.x;
                float _2407 = _2405.y;
                float _2409 = _2405.z;
                int _2442;
                if ((_2406 > _2407) && (_2406 > _2409)) {
                  _2442 = int((_2404.x > 0.0f) ? (_2402 & 1023u) : ((_2402 >> 10u) & 1023u));
                } else {
                  int _2434;
                  if (_2407 > _2409) {
                    _2434 = int((_2404.y > 0.0f) ? ((_2402 >> 20u) & 1023u) : (_2403 & 1023u));
                  } else {
                    _2434 = int((_2404.z > 0.0f) ? ((_2403 >> 10u) & 1023u) : ((_2403 >> 20u) & 1023u));
                  }
                  _2442 = _2434;
                }
                _2447 = (_2442 == 1023) ? (-1) : _2442;
              }
              uint _2452 = uint(_2447);
              uint _2454 = asuint(_33_m11.x) + (_2452 * 96u);
              uint _2456 = (_2454 + 64u) >> 2u;
              uint _2459 = _2456 + 1u;
              uint _2462 = _2456 + 2u;
              uint _2465 = _2456 + 3u;
              float4 _2469 = asfloat(uint4(_36.Load(_2456 * 4 + 0), _36.Load(_2459 * 4 + 0), _36.Load(_2462 * 4 + 0), _36.Load(_2465 * 4 + 0)));
              float _2801;
              do {
                uint _2485 = ((asuint(_33_m11.y) + (_2452 * 16u)) >> 2u) + 1u;
                if (_36.Load(_2485 * 4 + 0) > 0u) {
                  float4 _400 = _794;
                  float _2500;
                  do {
                    if (_36.Load(_2485 * 4 + 0) == 0u) {
                      _2500 = 1.0f;
                      break;
                    }
                    _2500 = _400[_36.Load(_2485 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2801 = _2500;
                  break;
                }
                uint _2501 = _2454 >> 2u;
                uint _2516 = (_2454 + 16u) >> 2u;
                uint _2531 = (_2454 + 32u) >> 2u;
                uint _2546 = (_2454 + 48u) >> 2u;
                float4 _2566 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_2501 * 4 + 0), _36.Load((_2501 + 1u) * 4 + 0), _36.Load((_2501 + 2u) * 4 + 0), _36.Load((_2501 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2516 * 4 + 0), _36.Load((_2516 + 1u) * 4 + 0), _36.Load((_2516 + 2u) * 4 + 0), _36.Load((_2516 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2531 * 4 + 0), _36.Load((_2531 + 1u) * 4 + 0), _36.Load((_2531 + 2u) * 4 + 0), _36.Load((_2531 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2546 * 4 + 0), _36.Load((_2546 + 1u) * 4 + 0), _36.Load((_2546 + 2u) * 4 + 0), _36.Load((_2546 + 3u) * 4 + 0))))), float4((_486 - ((-_2234) * _2469.x)) + (_455 * (_2469.y * 5.0f)), 1.0f));
                float3 _2570 = _2566.xyz / _2566.w.xxx;
                uint _2572 = (_2454 + 80u) >> 2u;
                float4 _2585 = asfloat(uint4(_36.Load(_2572 * 4 + 0), _36.Load((_2572 + 1u) * 4 + 0), _36.Load((_2572 + 2u) * 4 + 0), _36.Load((_2572 + 3u) * 4 + 0)));
                float2 _2586 = _2570.xy;
                float2 _2588 = _2585.xy;
                float3 _2592 = _2570.xyz;
                bool3 _2593 = bool3(_2592.x <= 0.0f.xxx.x, _2592.y <= 0.0f.xxx.y, _2592.z <= 0.0f.xxx.z);
                bool3 _2594 = bool3(_2592.x >= 1.0f.xxx.x, _2592.y >= 1.0f.xxx.y, _2592.z >= 1.0f.xxx.z);
                float _2597 = _2570.z;
                float2 _2608 = ((_2586 * (_2585.zw - _2588)) + _2588).xy * _33_m10.zw;
                float2 _2610 = floor(_2608 + 0.5f.xx);
                float2 _2611 = _2608 - _2610;
                float _2612 = _2611.x;
                float _2613 = _2612 + 0.5f;
                float _2614 = _2613 * _2613;
                float _2617 = 1.0f - _2612;
                float _2618 = min(_2612, 0.0f);
                float _2621 = _2612 + 1.0f;
                float _2622 = max(_2612, 0.0f);
                float _2633 = _2611.y;
                float _2634 = _2633 + 0.5f;
                float _2635 = _2634 * _2634;
                float _2638 = 1.0f - _2633;
                float _2639 = min(_2633, 0.0f);
                float _2642 = _2633 + 1.0f;
                float _2643 = max(_2633, 0.0f);
                float3 _2655 = float3(0.1599999964237213134765625f * _2617, 0.1599999964237213134765625f * ((_2621 - (_2622 * _2622)) + 1.0f), _2614 * 0.07999999821186065673828125f);
                float3 _2656 = float3(0.1599999964237213134765625f * ((_2614 * 0.5f) - _2612), 0.1599999964237213134765625f * ((_2617 - (_2618 * _2618)) + 1.0f), 0.1599999964237213134765625f * _2621) + _2655;
                float3 _2658 = float3(0.1599999964237213134765625f * _2638, 0.1599999964237213134765625f * ((_2642 - (_2643 * _2643)) + 1.0f), _2635 * 0.07999999821186065673828125f);
                float3 _2659 = float3(0.1599999964237213134765625f * ((_2635 * 0.5f) - _2633), 0.1599999964237213134765625f * ((_2638 - (_2639 * _2639)) + 1.0f), 0.1599999964237213134765625f * _2642) + _2658;
                float3 _2665 = ((_2655 / _2656) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
                float3 _2667 = ((_2658 / _2659) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
                float2 _2669 = _2610 * _33_m10.xy;
                float _2670 = _2665.x;
                float _2671 = _2667.x;
                float _2674 = _2665.y;
                float _2677 = _2665.z;
                float _2680 = _2667.y;
                float _2687 = _2667.z;
                float _2694 = _2656.x;
                float _2695 = _2659.x;
                float _2697 = _2656.y;
                float _2699 = _2656.z;
                float _2701 = _2659.y;
                float _2705 = _2659.z;
                float _2763 = (((((((_2694 * _2695) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2670, _2671), _391).xy, _2597)) + ((_2697 * _2695) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2674, _2671), _391).xy, _2597))) + ((_2699 * _2695) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2677, _2671), _391).xy, _2597))) + ((_2694 * _2701) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2670, _2680), _391).xy, _2597))) + ((_2697 * _2701) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2674, _2680), _391).xy, _2597))) + ((_2699 * _2701) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2677, _2680), _391).xy, _2597))) + ((_2694 * _2705) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2670, _2687), _391).xy, _2597));
                float4 _2786 = asfloat(uint4(_36.Load(_2456 * 4 + 0), _36.Load(_2459 * 4 + 0), _36.Load(_2462 * 4 + 0), _36.Load(_2465 * 4 + 0)));
                float _2787 = _2786.w;
                float2 _2789 = min(_2586, 1.0f.xx - _2586);
                _2801 = lerp(1.0f, (any(bool3(_2593.x || _2594.x, _2593.y || _2594.y, _2593.z || _2594.z)) || ((asuint(_2597) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2763 + ((_2697 * _2705) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2674, _2687), _391).xy, _2597))) + ((_2699 * _2705) * _34.SampleCmpLevelZero(_16, float3(_2669 + float2(_2677, _2687), _391).xy, _2597))), _2246 ? min(_2787, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2786.z - _2566.w) * 0.25f, min(_2789.x, _2789.y)))) : _2787);
                break;
              } while (false);
              _2803 = (_2447 >= 0) ? _2801 : 1.0f;
            } else {
              _2803 = 1.0f;
            }
            _2804 = _2803;
            break;
          } while (false);
          _3576 = _800 * _2804;
          _3577 = 0.0f.xxx;
        }
        _3578 = _3576;
        _3579 = _3577;
        break;
      } while (false);
      _825 = _3578;
      _828 = _827 + _3579;
    }
    _797 = _796 + _827;
  }
  float3 _3583 = _765.xyz + (_796 * _799);
  float3 _3585 = _422.xxx;
  float3 _3620;
  float3 _3621;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xF5963E22:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3596 = min(_21.SampleBias(_12, _4, _9_m16).x, _422);
    _3620 = clamp((pow(abs(_556 + _3596), exp2(((-16.0f) * _546) - 1.0f)) - 1.0f) + _3596, 0.0f, 1.0f).xxx;
    _3621 = max(_3596.xxx, ((((((_550 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3596) + ((_550 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3596) + ((_550 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3596);
  }
  else {
    _3620 = _3585;
    _3621 = _3585;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3583 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3620 : 1.0f.xxx;
  // RenoDX code end
  float3 _3644;
  do {
    [branch] if (((_433 > 0u) && (_433 <= 15u)) && (_458 > 0.0f)) {
      uint _3632 = clamp(_433 - 1u, 0u, 14u);
      _3644 = _43.SampleLevel(_13, float3(_458 * _45_m0[_3632].w, 0.5f, float(_3632)), 0.0f).xyz;
      break;
    }
    _3644 = 1.0f.xxx;
    break;
  } while (false);
  float3 _3661 = (_486 + (_455 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_461 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _3671 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3680 = _3661 - (_9_m108.xyz + (_3671 * (-_9_m110.w)));
  float _3695 = max(min(max((max(abs(_3680.x), abs(_3680.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3680.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _3997;
  float4 _3998;
  float4 _3999;
  float _4000;
  float _4001;
  if ((_9_m108.w != 0.0f) && (_3695 < 1.0f)) {
    float3 _3708 = _3661 - (_9_m108.xyz + (_3671 * (-_9_m110.y)));
    float _3722 = max(clamp((max(abs(_3708.x), abs(_3708.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3708.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3798;
    float4 _3799;
    float4 _3800;
    float4 _3801;
    if (_3722 < 1.0f) {
      float3 _3731 = ((_3661 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3733 = _3731 - floor(_3731);
      float4 _3737 = _59.SampleLevel(_14, _3733, 0.0f);
      float _3738 = 1.0f - _3722;
      float _3742 = _9_m109.y * 0.5f;
      float _3747 = _3733.x;
      float _3748 = clamp(_3733.y, _3742, 1.0f - _3742) * 0.3333333432674407958984375f;
      float _3749 = _3733.z;
      float4 _3752 = _60.SampleLevel(_13, float3(_3747, _3748, _3749), 0.0f);
      float _3768 = _3737.x;
      float _3778 = _3737.y;
      float _3788 = _3737.z;
      _3798 = _3695 + (_3752.w * _3738);
      _3799 = float4(((_60.SampleLevel(_13, float3(_3747, _3748 + 0.666666686534881591796875f, _3749), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3788, _3788) * _3738;
      _3800 = float4(((_60.SampleLevel(_13, float3(_3747, _3748 + 0.3333333432674407958984375f, _3749), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3778, _3778) * _3738;
      _3801 = float4(((_3752.xyz * 4.0f) - 2.0f.xxx) * _3768, _3768) * _3738;
    } else {
      _3798 = _3695;
      _3799 = 0.0f.xxxx;
      _3800 = 0.0f.xxxx;
      _3801 = 0.0f.xxxx;
    }
    float3 _3807 = _3661 - (_9_m108.xyz + (_3671 * (-_9_m110.z)));
    float _3821 = max(clamp((max(abs(_3807.x), abs(_3807.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3807.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _3901;
    float4 _3902;
    float4 _3903;
    float4 _3904;
    if (_3821 < 1.0f) {
      float3 _3830 = ((_3661 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3832 = _3830 - floor(_3830);
      float4 _3836 = _61.SampleLevel(_14, _3832, 0.0f);
      float _3838 = _3722 * (1.0f - _3821);
      float _3842 = _9_m109.y * 0.5f;
      float _3847 = _3832.x;
      float _3848 = clamp(_3832.y, _3842, 1.0f - _3842) * 0.3333333432674407958984375f;
      float _3849 = _3832.z;
      float4 _3852 = _62.SampleLevel(_13, float3(_3847, _3848, _3849), 0.0f);
      float _3868 = _3836.x;
      float _3879 = _3836.y;
      float _3890 = _3836.z;
      _3901 = _3798 + (_3852.w * _3838);
      _3902 = _3799 + (float4(((_62.SampleLevel(_13, float3(_3847, _3848 + 0.666666686534881591796875f, _3849), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3890, _3890) * _3838);
      _3903 = _3800 + (float4(((_62.SampleLevel(_13, float3(_3847, _3848 + 0.3333333432674407958984375f, _3849), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3879, _3879) * _3838);
      _3904 = _3801 + (float4(((_3852.xyz * 4.0f) - 2.0f.xxx) * _3868, _3868) * _3838);
    } else {
      _3901 = _3798;
      _3902 = _3799;
      _3903 = _3800;
      _3904 = _3801;
    }
    float4 _3987;
    float4 _3988;
    float4 _3989;
    float _3990;
    if (_3821 > 0.0f) {
      float3 _3913 = ((_3661 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3916 = _9_m109.xyz * 0.5f;
      float3 _3918 = clamp(_3913 - floor(_3913), _3916, 1.0f.xxx - _3916);
      float4 _3922 = _63.SampleLevel(_14, _3918, 0.0f);
      float _3924 = _3821 * (1.0f - _3695);
      float _3928 = _9_m109.y * 0.5f;
      float _3933 = _3918.x;
      float _3934 = clamp(_3918.y, _3928, 1.0f - _3928) * 0.3333333432674407958984375f;
      float _3935 = _3918.z;
      float4 _3938 = _64.SampleLevel(_13, float3(_3933, _3934, _3935), 0.0f);
      float _3954 = _3922.x;
      float _3965 = _3922.y;
      float _3976 = _3922.z;
      _3987 = _3902 + (float4(((_64.SampleLevel(_13, float3(_3933, _3934 + 0.666666686534881591796875f, _3935), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3976, _3976) * _3924);
      _3988 = _3903 + (float4(((_64.SampleLevel(_13, float3(_3933, _3934 + 0.3333333432674407958984375f, _3935), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3965, _3965) * _3924);
      _3989 = _3904 + (float4(((_3938.xyz * 4.0f) - 2.0f.xxx) * _3954, _3954) * _3924);
      _3990 = _3901 + (_3938.w * _3924);
    } else {
      _3987 = _3902;
      _3988 = _3903;
      _3989 = _3904;
      _3990 = _3901;
    }
    float _3993 = clamp((_3990 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _3997 = _3987;
    _3998 = _3988;
    _3999 = _3989;
    _4000 = _3993 - _3695;
    _4001 = (_3993 + _3695) * 0.5f;
  } else {
    _3997 = 0.0f.xxxx;
    _3998 = 0.0f.xxxx;
    _3999 = 0.0f.xxxx;
    _4000 = 0.0f;
    _4001 = 1.0f;
  }
  float4 _4021 = _3999 + float4(_9_m111.x * _4001, (_9_m111.y * _4001) + ((_9_m111.w * _4000) * 0.5f), _9_m111.z * _4001, (_9_m111.w * _4001) + ((_9_m111.y * _4000) * 0.375f));
  float4 _4041 = _3998 + float4(_9_m112.x * _4001, (_9_m112.y * _4001) + ((_9_m112.w * _4000) * 0.5f), _9_m112.z * _4001, (_9_m112.w * _4001) + ((_9_m112.y * _4000) * 0.375f));
  float4 _4061 = _3997 + float4(_9_m113.x * _4001, (_9_m113.y * _4001) + ((_9_m113.w * _4000) * 0.5f), _9_m113.z * _4001, (_9_m113.w * _4001) + ((_9_m113.y * _4000) * 0.375f));
  float4 _4219;
  float4 _4220;
  float4 _4221;
  [branch] if (all(bool2(_474.x >= 0.0f.xx.x, _474.y >= 0.0f.xx.y))) {
    float4 _4069 = _58.SampleLevel(_13, _474, 0.0f);
    float4 _4070 = abs(_4069);
    float4 _4216;
    float4 _4217;
    float4 _4218;
    [branch] if (any(bool4(_4070.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4070.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4070.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4070.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4076 = length(_4069.yzw);
      uint _4078;
      float _4081;
      _4078 = 0u;
      _4081 = 1.0f;
      for (float _4083 = _4076; _4083 > 4.599999904632568359375f;) {
        _4078++;
        _4081 *= 0.5f;
        _4083 *= 0.5f;
        continue;
      }
      float4 _4087 = _4069 * _4081;
      float4 _4092 = float4(0.0f, _4087.yzw);
      float2 _4114 = (_57.SampleLevel(_13, float2(((((length(_4092) * _56_m3.x) + _56_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _56_m2.xy) + _56_m2.zw;
      float4 _4128;
      _4128 = float4(_4114.x * 3.5449078083038330078125f, _4092.yzw * _4114.y) * exp(_4087.x * 0.282094776630401611328125f);
      for (uint _4131 = 0u; _4131 < _4078;) {
        _4128 = mul(float4x4(_4128, float4(_4128.yx, 0.0f, 0.0f), float4(_4128.z, 0.0f, _4128.x, 0.0f), float4(_4128.w, 0.0f, 0.0f, _4128.x)) * 0.282094776630401611328125f, _4128);
        _4131++;
        continue;
      }
      float4x4 _4152 = float4x4(_4128, float4(_4128.yx, 0.0f, 0.0f), float4(_4128.z, 0.0f, _4128.x, 0.0f), float4(_4128.w, 0.0f, 0.0f, _4128.x)) * 0.282094776630401611328125f;
      float4 _4162 = mul(_4152, float4(_4021.w * 1.1283791065216064453125f, _4021.y * (-0.977204978466033935546875f), _4021.z * 0.977204978466033935546875f, _4021.x * (-0.977204978466033935546875f)));
      float4 _4182 = mul(_4152, float4(_4041.w * 1.1283791065216064453125f, _4041.y * (-0.977204978466033935546875f), _4041.z * 0.977204978466033935546875f, _4041.x * (-0.977204978466033935546875f)));
      float4 _4202 = mul(_4152, float4(_4061.w * 1.1283791065216064453125f, _4061.y * (-0.977204978466033935546875f), _4061.z * 0.977204978466033935546875f, _4061.x * (-0.977204978466033935546875f)));
      _4216 = float4(_4162.x * 0.886226952075958251953125f, _4162.w * (-1.02332675457000732421875f), _4162.y * (-1.02332675457000732421875f), _4162.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4217 = float4(_4182.x * 0.886226952075958251953125f, _4182.w * (-1.02332675457000732421875f), _4182.y * (-1.02332675457000732421875f), _4182.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4218 = float4(_4202.x * 0.886226952075958251953125f, _4202.w * (-1.02332675457000732421875f), _4202.y * (-1.02332675457000732421875f), _4202.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4216 = _4021;
      _4217 = _4041;
      _4218 = _4061;
    }
    _4219 = _4216;
    _4220 = _4217;
    _4221 = _4218;
  }
  else {
    _4219 = _4021;
    _4220 = _4041;
    _4221 = _4061;
  }
  float _4228 = max(0.0f, dot(_4219.xyz * _3644.x, _455) + _4219.w);
  float _4235 = max(0.0f, dot(_4220.xyz * _3644.y, _455) + _4220.w);
  float _4242 = max(0.0f, dot(_4221.xyz * _3644.z, _455) + _4221.w);
  float3 _4252 = reflect(_514, _455);
  float _4260 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_546, 0.001000000047497451305389404296875f))));
  float2 _4264 = floor(_461 * _27_m0.w);
  float _4281 = floor(_493 - _27_m2.y);
  float _4285 = clamp(_4281, 0.0f, _27_m1.x - 1.0f);
  uint _4295 = (_4281 <= _4285) ? (_24.Load(uint(_9_m21.z + int(_4264.x + (_4264.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_4285)) * 4 + 0)) : 0u;
  float _4298 = dot(float4(_4228, _4235, _4242, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4300;
  float _4303;
  uint _4305;
  _4300 = 0.0f.xxx;
  _4303 = 1.0f;
  _4305 = _4295;
  uint _4306;
  float3 _4301;
  float _4304;
  bool _4308;
  [loop] for (;;) {
    bool _4307 = _4305 != 0u;
    _4308 = _4303 > 0.00999999977648258209228515625f;
    if (_4307 && _4308) {
      uint _4312 = firstbitlow(_4305);
      _4306 = _4305 ^ (1u << (_4312 & 31u));
      float3 _4332 = float3(dot(_27_m4[_4312]._m2, _490), dot(_27_m4[_4312]._m3, _490), dot(_27_m4[_4312]._m4, _490));
      float3 _4333 = abs(_4332);
      if (all(bool3(_4333.x <= _27_m4[_4312]._m1.xyz.x, _4333.y <= _27_m4[_4312]._m1.xyz.y, _4333.z <= _27_m4[_4312]._m1.xyz.z))) {
        float3 _4342 = _27_m4[_4312]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4344 = _4333 * 0.100000001490116119384765625f;
        float3 _4345 = _4344 * _4344;
        float3 _4348 = (_27_m4[_4312]._m1.xyz - _4333) * _27_m4[_4312]._m5.xyz;
        float3 _4396;
        [branch] if (_27_m4[_4312]._m6.x == 1.0f) {
          float3 _4381 = float3(dot(_27_m4[_4312]._m2.xyz, _4252), dot(_27_m4[_4312]._m3.xyz, _4252), dot(_27_m4[_4312]._m4.xyz, _4252));
          float3 _4383 = (_27_m4[_4312]._m1.xyz - _4332) / _4381;
          float3 _4386 = ((-_27_m4[_4312]._m1.xyz) - _4332) / _4381;
          bool3 _4387 = bool3(_4381.x > 0.0f.xxx.x, _4381.y > 0.0f.xxx.y, _4381.z > 0.0f.xxx.z);
          float3 _4388 = float3(_4387.x ? _4383.x : _4386.x, _4387.y ? _4383.y : _4386.y, _4387.z ? _4383.z : _4386.z);
          _4396 = _4332 + (_4381 * min(min(_4388.x, _4388.y), _4388.z));
        }
        else {
          _4396 = _4252;
        }
        float3 _4397 = normalize(_4396);
        float3 _4400 = float3(int3(sign(_4397)));
        float3 _4403 = _4397 / dot(_4397, _4400).xxx;
        float3 _4417;
        if (_4403.z < 0.0f) {
          float3 _4408 = abs(_4403);
          float2 _4415 = _4400.xy * float2(1.0f - _4408.y, 1.0f - _4408.x);
          _4417 = float3(_4415.x, _4415.y, _4403.z);
        } else {
          _4417 = _4403;
        }
        float _4442 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_4312]._m0, float4(_455, 1.0f))));
        float _4455 = clamp((min(_4348.x, min(_4348.y, _4348.z)) * _27_m4[_4312]._m6.y) + ((((((_4342 * _4342).x - ((_4345.x + _4345.y) + _4345.z)) * _27_m4[_4312]._m5.x) * _27_m4[_4312]._m5.x) * (1.0f - _27_m4[_4312]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_4312]._m6.w;
        _4301 = _4300 + ((((_22.SampleLevel(_15, float3((((_4417.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_4312]._m1.w), _4260).xyz * _27_m4[_4312]._m5.w) * ((((((clamp(abs(_4298 / _4442), 0.0f, 1.0f) * 2.0f) + _4298) / (2.0f + _4442)) - 1.0f) * _9_m23.w) + 1.0f)) * _4455) * _4303);
        _4304 = _4303 * (1.0f - _4455);
      } else {
        _4301 = _4300;
        _4304 = _4303;
      }
      _4300 = _4301;
      _4303 = _4304;
      _4305 = _4306;
      continue;
    } else {
      break;
    }
  }
  float3 _4524;
  if (_4308) {
    float3 _4463 = normalize(_4252);
    float3 _4466 = float3(int3(sign(_4463)));
    float3 _4469 = _4463 / dot(_4463, _4466).xxx;
    float3 _4483;
    if (_4469.z < 0.0f) {
      float3 _4474 = abs(_4469);
      float2 _4481 = _4466.xy * float2(1.0f - _4474.y, 1.0f - _4474.x);
      _4483 = float3(_4481.x, _4481.y, _4469.z);
    } else {
      _4483 = _4469;
    }
    float _4510 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_455, 1.0f))));
    _4524 = _4300 + ((_22.SampleLevel(_15, float3((((_4483.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _4260).xyz * ((((((clamp(abs(_4298 / _4510), 0.0f, 1.0f) * 2.0f) + _4298) / (2.0f + _4510)) - 1.0f) * _9_m23.w) + 1.0f)) * _4303);
  } else {
    _4524 = _4300;
  }
  float3 _4530 = (_4524 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _4530 *= 0.25f + (0.75f * saturate(_4298));
  }
  // RenoDX code end
  float3 _4551;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4545 = _20.SampleBias(_13, _4, _9_m16);
    float _4546 = _4545.x;
    _4551 = (_19.SampleBias(_13, _4, _9_m16).xyz * _4546) + (_4530 * (1.0f - _4546));
  }
  else {
    _4551 = _4530;
  }
  float3 _4554 = (((float3(_4228, _4235, _4242) * _550) * _9_m22.x) * _3621) + ((_4551 * (_579 + ((_554 * ((1.0f - _580) / _580)) * _579))) * _3620);
  float4 _4556 = float4(_3583.x, _3583.y, _3583.z, _765.w) + float4(_4554.x, _4554.y, _4554.z, 0.0f.xxxx.w);
  float3 _4559 = clamp(_4556.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _4574 = _486.y * _9_m46.w;
  float _4579 = max(0.00999999977648258209228515625f, _4574 + _9_m47.w);
  float3 _4593 = exp(_9_m45.xyz * ((-max(0.0f, (_513 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4579)) / _4579) * exp(_4574 + _9_m48.w))));
  float _4596 = dot(_514, _9_m44.xyz);
  float _4602 = _9_m45.w * _9_m45.w;
  float _4606 = (1.0f + _4602) - ((2.0f * _9_m45.w) * _4596);
  float3 _4934;
  float _4935;
  if (_9_m55.z > 0.0f) {
    uint3 _4760 = (uint3(int3(_411, _412, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4761 = _4760.y;
    uint _4762 = _4760.z;
    uint _4765 = _4760.x + (_4761 * _4762);
    uint _4767 = _4761 + (_4762 * _4765);
    uint _4769 = _4762 + (_4765 * _4767);
    uint _4771 = _4765 + (_4767 * _4769);
    float _4795 = dot(_514, -_7_m0[2].xyz);
    float3 _4805 = _486 - _7_m11.xyz;
    float _4807 = (_9_m55.w * ((_4795 > 5.9604644775390625e-08f) ? (1.0f / _4795) : 0.0f)) * (1.0f / _513);
    float _4808 = _4805.y;
    float _4809 = _4807 * _4808;
    float _4811 = _7_m11.y + _4809;
    float _4812 = _4808 - _4809;
    float _4814 = (1.0f - _4807) * _513;
    float _4828 = max(-127.0f, _9_m49.z * _4812);
    float _4852 = max(-127.0f, _9_m52.x * _4812);
    float _4863 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4811 - _9_m49.x)))) * ((abs(_4828) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4828)) / _4828) : (0.693147182464599609375f - (0.2402265071868896484375f * _4828)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4811 - _9_m52.z)))) * ((abs(_4852) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4852)) / _4852) : (0.693147182464599609375f - (0.2402265071868896484375f * _4852))));
    float _4885 = clamp((_513 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4888 = clamp((max(clamp(exp2(-(_4863 * _4814)), 0.0f, 1.0f), _9_m51.w) + clamp((_513 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4885, 0.0f, 1.0f);
    float4 _4928 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _54.SampleLevel(_13, float3((_461 + ((((float3(uint3(_4771, _4767 + (_4769 * _4771), _394) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_493 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_493 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _4930 = _4928.w;
    _4934 = _4928.xyz + (((_9_m51.xyz * (1.0f - _4888)) + (((_9_m54.xyz * pow(clamp(dot(_512, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4863 * max(_4814 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4885))) * _4930);
    _4935 = _4930 * _4888;
  } else {
    float3 _4636 = _486 - _7_m11.xyz;
    float _4638 = _4636.y;
    float _4652 = max(-127.0f, _9_m49.z * _4638);
    float _4676 = max(-127.0f, _9_m52.x * _4638);
    float _4687 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4652) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4652)) / _4652) : (0.693147182464599609375f - (0.2402265071868896484375f * _4652)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4676) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4676)) / _4676) : (0.693147182464599609375f - (0.2402265071868896484375f * _4676))));
    float _4709 = clamp((_513 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4712 = clamp((max(clamp(exp2(-(_4687 * _513)), 0.0f, 1.0f), _9_m51.w) + clamp((_513 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4709, 0.0f, 1.0f);
    _4934 = (_9_m51.xyz * (1.0f - _4712)) + (((_9_m54.xyz * pow(clamp(dot(_512, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4687 * max(_513 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4709));
    _4935 = _4712;
  }
  float3 _4938 = _4593 * _4935;
  float3 _4940 = (_4559 * _4938) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4596 * _4596)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4602) / max((12.56637096405029296875f * _4606) * sqrt(_4606), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4593)) * _4935) + _4934);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _4940 = (_4940 * 0.65f) + (_4559 * 0.35f);
  }
  // RenoDX code end
  float _4941 = dot(_4938, 0.3333333432674407958984375f.xxx);
  float4 _4942 = float4(_4940.x, _4940.y, _4940.z, _4556.w);
  _4942.w = _4941;
  float _4971 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _486) * _9_m61.z), 0.0f, 1.0f);
  float3 _4979 = lerp(_4559, _4942.xyz, min((1.0f - _4971) + ((_69.SampleLevel(_14, (_486 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _4971), 1.0f + _4941).xxx);
  _5 = float4(_4979.x, _4979.y, _4979.z, _4942.w);
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

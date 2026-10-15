#include "./renodx_injection.hlsli"

// Ported from the native 0xCA177259 Vulkan dump.
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

static float _384;
static uint _387;

static const int2 _341[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _342[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(33, 3)]] cbuffer _6_7 : register(b33, space3) {
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

[[vk::binding(38, 3)]] cbuffer _8_9 : register(b38, space3) {
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

[[vk::binding(42, 3)]] ByteAddressBuffer _24 : register(t42, space3);
[[vk::binding(39, 3)]] cbuffer _25_27 : register(b39, space3) {
  float4 _27_m0 : packoffset(c0);
  float4 _27_m1 : packoffset(c1);
  float4 _27_m2 : packoffset(c2);
  float4 _27_m3 : packoffset(c3);
  _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(34, 3)]] cbuffer _28_29 : register(b34, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  float4 _29_m4 : packoffset(c4);
  uint4 _29_m5 : packoffset(c5);
  float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(35, 3)]] cbuffer _30_31 : register(b35, space3) {
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

[[vk::binding(37, 3)]] cbuffer _32_33 : register(b37, space3) {
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

[[vk::binding(41, 3)]] ByteAddressBuffer _36 : register(t41, space3);
[[vk::binding(40, 3)]] cbuffer _44_45 : register(b40, space3) {
  float4 _45_m0[32] : packoffset(c0);
  column_major float4x4 _45_m1[32] : packoffset(c32);
};

[[vk::binding(36, 3)]] cbuffer _51_52 : register(b36, space3) {
  float4 _52_m0 : packoffset(c0);
  float4 _52_m1 : packoffset(c1);
  float4 _52_m2 : packoffset(c2);
  float4 _52_m3 : packoffset(c3);
  float4 _52_m4 : packoffset(c4);
  uint4 _52_m5 : packoffset(c5);
  float4 _52_m6 : packoffset(c6);
  float4 _52_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(4, 3)]] SamplerComparisonState _16 : register(s4, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _18 : register(t30, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _20 : register(t9, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _22 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _34 : register(t11, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _37 : register(t7, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _38 : register(t25, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _39 : register(t31, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _41 : register(t12, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _42 : register(t29, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _43 : register(t13, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _48 : register(t15, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _49 : register(t14, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _50 : register(t22, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _53 : register(t32, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _54 : register(t6, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _55 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _56 : register(t18, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _57 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _58 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _59 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _60 : register(t16, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _61 : register(t5, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _62 : register(t28, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _63 : register(t27, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _64 : register(t26, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _65 : register(t24, space3);

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
  uint2 _401 = uint2(gl_FragCoord.xy);
  int _404 = int(_401.x);
  int _405 = int(_401.y);
  int2 _407 = int3(_404, _405, 0).xy;
  float4 _409 = _62.Load(int3(_407, 0));
  float4 _411 = _63.Load(int3(_407, 0));
  float _414 = _409.x;
  float _415 = _409.y;
  float2 _419 = (_411.xy * 2.0f) - 1.0f.xx;
  float _423 = 1.0f - dot(1.0f.xx, abs(_419));
  float3 _425 = float3(_419.x, _423, _419.y);
  float3 _437;
  if (_423 < 0.0f) {
    float2 _432 = _425.xz;
    bool2 _433 = bool2(_432.x >= 0.0f.xx.x, _432.y >= 0.0f.xx.y);
    float2 _435 = (1.0f.xx - abs(_425.zx)) * float2(_433.x ? 1.0f.xx.x : (-1.0f).xx.x, _433.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _437 = float3(_435.x, _425.y, _435.y);
  } else {
    _437 = _425;
  }
  float3 _438 = normalize(_437);
  float _439 = _411.z;
  float2 _443 = float2(_401);
  float2 _448 = (_443 + 0.5f.xx) * _9_m0.zw;
  float2 _456 = gl_FragCoord.xy * _9_m0.zw;
  float2 _458 = (_456 * 2.0f) - 1.0f.xx;
  float4 _461 = float4(_458, _18.SampleLevel(_12, _448, 0.0f).x, 1.0f);
  _461.y = -_458.y;
  float4 _464 = mul(_7_m6, _461);
  float3 _468 = _464.xyz / _464.w.xxx;
  float4 _472 = float4(_468, 1.0f);
  float _475 = abs(mul(_7_m0, _472).z);
  float3 _490;
  do {
    if (_9_m4.w == 0.0f) {
      _490 = _7_m11.xyz - _468;
      break;
    } else {
      _490 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _491 = dot(_490, _490);
  float _493 = rsqrt(max(_491, 9.9999999392252902907785028219223e-09f));
  float3 _494 = _490 * _493;
  float _495 = _491 * _493;
  float3 _496 = -_494;
  bool _499 = _9_m132.x > 0.00048828125f;
  float2 _509;
  if (_499) {
    _509 = _61.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _509 = 1.0f.xx;
  }
  float _512 = min(_509.x, _509.y);
  float2 _513 = _509 * 1.0f;
  float _514 = _513.x;
  float _517 = clamp((_409.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _522;
  float _523;
  if (_499) {
    _522 = lerp(1.0f, _509.y, _517);
    _523 = lerp(1.0f, 0.0f, _517);
  } else {
    _522 = 1.0f;
    _523 = 1.0f;
  }
  float _528 = lerp(lerp(min(_522, _439), _439, _512), _439, _514);
  float3 _530 = _64.Load(int3(_407, 0)).xyz * lerp(lerp(min(_523, 1.0f), 1.0f, _512), 1.0f, _514);
  float3 _531 = _530 * _414;
  float3 _532 = _530 - _531;
  float3 _536 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _414)).xxx + _531;
  float _537 = dot(_438, _494);
  float _538 = max(0.0f, _537);
  float _539 = _528 * _528;
  float _540 = _538 * _538;
  float _541 = _540 * _538;
  float2 _542 = float2(1.0f, _538);
  float2 _545 = float2(1.0f, _539);
  float _546 = _539 * _539;
  float3 _548 = float3(1.0f, _539, _546 * _539);
  float _553 = dot(mul(_542, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _545) / dot(mul(float3(1.0f, _540, _541), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _548);
  float _558 = dot(mul(_542, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _545) / dot(mul(float3(1.0f, _538, _541), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _548);
  float3 _561 = (_536 * _553) + _558.xxx;
  float _562 = _553 + _558;
  float4 _720;
  do {
    [branch] if (_31_m4 == 0) {
      _720 = 0.0f.xxxx;
      break;
    }
    float4 _582 = _37.Load(int3(_407, 0));
    float _583 = _582.x;
    float4 _719;
    if (_583 > 0.001000000047497451305389404296875f) {
      float3 _593 = reflect(_496, _438);
      float3 _594 = -_29_m0.xyz;
      float _599 = dot(_594, _593);
      float3 _601 = _593 - (_594 * _599);
      bool3 _603 = (_599 < _29_m4.z).xxx;
      float3 _611 = normalize((_594 * _29_m4.z) + ((_601 * rsqrt(max(6.103515625e-05f, dot(_601, _601)))) * _29_m4.y));
      float3 _612 = float3(_603.x ? _611.x : _593.x, _603.y ? _611.y : _593.y, _603.z ? _611.z : _593.z);
      float3 _616 = _612 + _494;
      float3 _620 = _616 * rsqrt(max(6.103515625e-05f, dot(_616, _616)));
      float _621 = clamp(dot(_612, _438), 0.0f, 1.0f);
      float _623 = clamp(dot(_438, _620), 0.0f, 1.0f);
      float _626 = clamp(_537, 0.0f, 1.0f);
      float _647 = (((_623 * _546) - _623) * _623) + 1.0f;
      float _650 = 1.0f - clamp(dot(_494, _620), 0.0f, 1.0f);
      float _651 = _650 * _650;
      float _653 = (_650 * _651) * _651;
      float _677 = 1.0f - _528;
      float _684 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_677 * (1.04997003078460693359375f + (_677 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _677))))));
      float _685 = 1.0f - _684;
      float3 _688 = _536 + ((1.0f.xxx - _536) * 0.0476190485060214996337890625f);
      float3 _704 = ((clamp((min(((_536 * (1.0f - _653)) + _653.xxx) * ((_546 / (_647 * _647)) * (0.5f / (((_621 * sqrt(((((-_626) * _546) + _626) * _626) + _546)) + (_626 * sqrt(((((-_621) * _546) + _621) * _621) + _546))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_688 * (((_41.SampleLevel(_13, (float2(_626, _528) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_621, _528) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _684) / _685)) * _688) / (1.0f.xxx - (_688 * _685)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _621) + ((_532 * 1.0f) * _621)) * _29_m1.xyz;
      float3 _717 = lerp(_704, _704 * _39.SampleBias(_13, float2(_583, 0.5f), _9_m16).xyz, (1.0f - _583).xxx) * min(_42.SampleLevel(_13, _456, 0.0f).x, 1.0f);
      _719 = float4(_717.x, _717.y, _717.z, 0.0f.xxxx.w);
    } else {
      _719 = 0.0f.xxxx;
    }
    _720 = _719;
    break;
  } while (false);
  float2 _722 = floor(_443 * 0.03125f);
  int _730 = int((_722.x + (_722.y * _31_m9)) * 8.0f);
  float _737 = floor(_475 - (_9_m3.y * _31_m15));
  float _741 = clamp(_737, 0.0f, _31_m11 - 1.0f);
  int _743 = int(_741 * 8.0f);
  float4 _749 = _38.SampleBias(_13, _448, _9_m16);
  float3 _751;
  float _754;
  _751 = 0.0f.xxx;
  _754 = 1.0f;
  float3 _752;
  float _755;
  [loop] for (int _756 = 0; _756 <= 7; _751 = _752, _754 = _755, _756++) {
    uint _777 = (_737 <= _741) ? (_24.Load(uint((_31_m2 + _730) + _756) * 4 + 0) & _24.Load(uint((_31_m3 + _743) + _756) * 4 + 0)) : 0u;
    uint _778 = uint(_756);
    float3 _782;
    _755 = _754;
    _782 = 0.0f.xxx;
    uint _785;
    float _780;
    float3 _783;
    [loop] for (uint _784 = _777; _784 != 0u; _755 = _780, _782 = _783, _784 = _785) {
      uint _789 = firstbitlow(_784);
      _785 = _784 ^ (1u << (_789 & 31u));
      int _795 = int((32u * _778) + _789) * 8;
      int _798 = _795 + 1;
      int _801 = _795 + 2;
      int _804 = _795 + 3;
      int _807 = _795 + 4;
      int _810 = _795 + 5;
      int _813 = _795 + 6;
      int _816 = _795 + 7;
      uint _820 = uint(_29_m6[_810].w);
      float _895;
      if ((_820 & 1u) == 1u) {
        uint _826 = asuint(_29_m6[_810].x);
        uint _833 = asuint(_29_m6[_810].y);
        uint _840 = asuint(_29_m6[_810].z);
        uint _847 = asuint(_29_m6[_813].x);
        uint _854 = asuint(_29_m6[_813].y);
        uint _861 = asuint(_29_m6[_813].z);
        float3 _880 = abs(mul(float4(_468 - _29_m6[_798].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_826).x, spvUnpackHalf2x16(_840).x, spvUnpackHalf2x16(_854).x, 0.0f), float4(spvUnpackHalf2x16(_826 >> 16u).x, spvUnpackHalf2x16(_840 >> 16u).x, spvUnpackHalf2x16(_854 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_833).x, spvUnpackHalf2x16(_847).x, spvUnpackHalf2x16(_861).x, 0.0f), float4(spvUnpackHalf2x16(_833 >> 16u).x, spvUnpackHalf2x16(_847 >> 16u).x, spvUnpackHalf2x16(_861 >> 16u).x, 0.0f))).xyz);
        float _887 = _29_m6[_816].x * 0.5f;
        float _893 = 1.0f - clamp((max(max(_880.x, _880.y), _880.z) - (_887 + 0.5f)) / (0.5f - _887), 0.0f, 1.0f);
        _895 = _893 * _893;
      } else {
        _895 = 1.0f;
      }
      uint _899 = uint(_29_m6[_795].w);
      bool _902 = _29_m6[_804].z > 0.5f;
      if ((false || (_895 < 0.001000000047497451305389404296875f)) || ((_899 < 4u) && _902)) {
        _780 = _755;
        _783 = _782;
        continue;
      }
      float _3506;
      float3 _3507;
      do {
        [branch] if (_899 >= 4u) {
          float3 _2156;
          do {
            float3 _921 = _29_m6[_798].xyz - _468;
            if (dot(_29_m6[_804].xyz, _921) > 0.0f) {
              _2156 = 0.0f.xxx;
              break;
            }
            float _928 = dot(_921, _921) * _29_m6[_798].w;
            float _931 = clamp(1.0f - (_928 * _928), 0.0f, 1.0f);
            float _932 = _931 * _931;
            if (_932 <= 0.0f) {
              _2156 = 0.0f.xxx;
              break;
            }
            float3 _970;
            float _971;
            bool _972;
            float3 _1000;
            float3 _1002;
            float3 _1004;
            float3 _1006;
            float3 _936 = _29_m6[_801].xyz * _29_m6[_801].w;
            float3 _937 = _29_m6[_798].xyz - _936;
            float3 _938 = _29_m6[_807].xyz * _29_m6[_804].w;
            float3 _941 = _29_m6[_798].xyz + _936;
            float2 _951 = (float2(clamp(_528, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_537, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _955 = _48.SampleLevel(_13, _951, 0.0f);
            float4 _959 = _49.SampleLevel(_13, _951, 0.0f);
            float _1354;
            do {
              _970 = _494 - (_438 * dot(_494, _438));
              _971 = dot(_970, _970);
              _972 = _971 > 9.9999997473787516355514526367188e-05f;
              float3 _995;
              if (_972) {
                _995 = _970 * rsqrt(_971);
              } else {
                float _976 = _438.z;
                float _978 = (_976 >= 0.0f) ? 1.0f : (-1.0f);
                float _980 = (-1.0f) / (_978 + _976);
                float _982 = _438.x;
                _995 = float3(1.0f + (((_978 * _980) * _982) * _982), ((_978 * _982) * _438.y) * _980, (-_978) * _982);
              }
              float3x3 _999 = mul(float3x3(float3(_955.x, 0.0f, _955.z), float3(0.0f, 1.0f, 0.0f), float3(_955.y, 0.0f, _955.w)), float3x3(_995, cross(_438, _995), _438));
              _1000 = (_937 - _938) - _468;
              float3 _1001 = mul(_999, _1000);
              _1002 = (_937 + _938) - _468;
              float3 _1003 = mul(_999, _1002);
              _1004 = (_941 + _938) - _468;
              float3 _1005 = mul(_999, _1004);
              _1006 = (_941 - _938) - _468;
              float3 _1007 = mul(_999, _1006);
              float _1008 = _1001.z;
              float _1011 = _1003.z;
              float _1015 = _1005.z;
              float _1019 = _1007.z;
              int _1023 = (((int(_1008 > 0.0f) | ((_1011 > 0.0f) ? 2 : 0)) | ((_1015 > 0.0f) ? 4 : 0)) | ((_1019 > 0.0f) ? 8 : 0));
              float3 _1260;
              float3 _1261;
              float3 _1262;
              float3 _1263;
              float3 _1264;
              int _1265;
              if (_1023 == 0) {
                _1260 = _1007;
                _1261 = _1005;
                _1262 = _1003;
                _1263 = _1001;
                _1264 = 0.0f.xxx;
                _1265 = 0;
              } else {
                float3 _1254;
                float3 _1255;
                float3 _1256;
                float3 _1257;
                float3 _1258;
                int _1259;
                if (_1023 == 1) {
                  _1254 = _1007;
                  _1255 = (_1001 * (-_1019)) + (_1007 * _1008);
                  _1256 = (_1001 * (-_1011)) + (_1003 * _1008);
                  _1257 = _1001;
                  _1258 = 0.0f.xxx;
                  _1259 = 3;
                } else {
                  float3 _1240;
                  float3 _1241;
                  float3 _1242;
                  float3 _1243;
                  float3 _1244;
                  int _1245;
                  if (_1023 == 2) {
                    _1240 = _1007;
                    _1241 = (_1003 * (-_1015)) + (_1005 * _1011);
                    _1242 = _1003;
                    _1243 = (_1003 * (-_1008)) + (_1001 * _1011);
                    _1244 = 0.0f.xxx;
                    _1245 = 3;
                  } else {
                    float3 _1226;
                    float3 _1227;
                    float3 _1228;
                    float3 _1229;
                    float3 _1230;
                    int _1231;
                    if (_1023 == 3) {
                      _1226 = (_1001 * (-_1019)) + (_1007 * _1008);
                      _1227 = (_1003 * (-_1015)) + (_1005 * _1011);
                      _1228 = _1003;
                      _1229 = _1001;
                      _1230 = 0.0f.xxx;
                      _1231 = 4;
                    } else {
                      float3 _1212;
                      float3 _1213;
                      float3 _1214;
                      float3 _1215;
                      float3 _1216;
                      int _1217;
                      if (_1023 == 4) {
                        _1212 = _1007;
                        _1213 = _1005;
                        _1214 = (_1005 * (-_1011)) + (_1003 * _1015);
                        _1215 = (_1005 * (-_1019)) + (_1007 * _1015);
                        _1216 = 0.0f.xxx;
                        _1217 = 3;
                      } else {
                        float3 _1198;
                        float3 _1199;
                        float3 _1200;
                        float3 _1201;
                        float3 _1202;
                        int _1203;
                        if (_1023 == 5) {
                          _1198 = _1007;
                          _1199 = _1005;
                          _1200 = _1003;
                          _1201 = _1001;
                          _1202 = 0.0f.xxx;
                          _1203 = 0;
                        } else {
                          float3 _1192;
                          float3 _1193;
                          float3 _1194;
                          float3 _1195;
                          float3 _1196;
                          int _1197;
                          if (_1023 == 6) {
                            _1192 = (_1005 * (-_1019)) + (_1007 * _1015);
                            _1193 = _1005;
                            _1194 = _1003;
                            _1195 = (_1003 * (-_1008)) + (_1001 * _1011);
                            _1196 = 0.0f.xxx;
                            _1197 = 4;
                          } else {
                            float3 _1178;
                            float3 _1179;
                            float3 _1180;
                            float3 _1181;
                            float3 _1182;
                            int _1183;
                            if (_1023 == 7) {
                              float _1171 = -_1019;
                              _1178 = (_1005 * _1171) + (_1007 * _1015);
                              _1179 = _1005;
                              _1180 = _1003;
                              _1181 = _1001;
                              _1182 = (_1001 * _1171) + (_1007 * _1008);
                              _1183 = 5;
                            } else {
                              float3 _1165;
                              float3 _1166;
                              float3 _1167;
                              float3 _1168;
                              float3 _1169;
                              int _1170;
                              if (_1023 == 8) {
                                _1165 = _1007;
                                _1166 = _1007;
                                _1167 = (_1007 * (-_1015)) + (_1005 * _1019);
                                _1168 = (_1007 * (-_1008)) + (_1001 * _1019);
                                _1169 = 0.0f.xxx;
                                _1170 = 3;
                              } else {
                                float3 _1151;
                                float3 _1152;
                                float3 _1153;
                                float3 _1154;
                                float3 _1155;
                                int _1156;
                                if (_1023 == 9) {
                                  _1151 = _1007;
                                  _1152 = (_1007 * (-_1015)) + (_1005 * _1019);
                                  _1153 = (_1001 * (-_1011)) + (_1003 * _1008);
                                  _1154 = _1001;
                                  _1155 = 0.0f.xxx;
                                  _1156 = 4;
                                } else {
                                  float3 _1137;
                                  float3 _1138;
                                  float3 _1139;
                                  float3 _1140;
                                  float3 _1141;
                                  int _1142;
                                  if (_1023 == 10) {
                                    _1137 = _1007;
                                    _1138 = _1005;
                                    _1139 = _1003;
                                    _1140 = _1001;
                                    _1141 = 0.0f.xxx;
                                    _1142 = 0;
                                  } else {
                                    float3 _1131;
                                    float3 _1132;
                                    float3 _1133;
                                    float3 _1134;
                                    float3 _1135;
                                    int _1136;
                                    if (_1023 == 11) {
                                      float _1124 = -_1015;
                                      _1131 = (_1007 * _1124) + (_1005 * _1019);
                                      _1132 = (_1003 * _1124) + (_1005 * _1011);
                                      _1133 = _1003;
                                      _1134 = _1001;
                                      _1135 = _1007;
                                      _1136 = 5;
                                    } else {
                                      float3 _1118;
                                      float3 _1119;
                                      float3 _1120;
                                      float3 _1121;
                                      float3 _1122;
                                      int _1123;
                                      if (_1023 == 12) {
                                        _1118 = _1007;
                                        _1119 = _1005;
                                        _1120 = (_1005 * (-_1011)) + (_1003 * _1015);
                                        _1121 = (_1007 * (-_1008)) + (_1001 * _1019);
                                        _1122 = 0.0f.xxx;
                                        _1123 = 4;
                                      } else {
                                        bool _1076 = _1023 == 13;
                                        float3 _1103;
                                        float3 _1104;
                                        float3 _1105;
                                        float3 _1106;
                                        int _1107;
                                        if (_1076) {
                                          float _1096 = -_1011;
                                          _1103 = (_1005 * _1096) + (_1003 * _1015);
                                          _1104 = (_1001 * _1096) + (_1003 * _1008);
                                          _1105 = _1001;
                                          _1106 = _1007;
                                          _1107 = 5;
                                        } else {
                                          float3 _1093;
                                          float3 _1094;
                                          int _1095;
                                          if (_1023 == 14) {
                                            float _1086 = -_1008;
                                            _1093 = (_1003 * _1086) + (_1001 * _1011);
                                            _1094 = (_1007 * _1086) + (_1001 * _1019);
                                            _1095 = 5;
                                          } else {
                                            _1093 = _1001;
                                            _1094 = 0.0f.xxx;
                                            _1095 = (_1023 == 15) ? 4 : 0;
                                          }
                                          _1103 = _1005;
                                          _1104 = _1003;
                                          _1105 = _1093;
                                          _1106 = _1094;
                                          _1107 = _1095;
                                        }
                                        bool3 _1108 = _1076.xxx;
                                        _1118 = float3(_1108.x ? _1005.x : _1007.x, _1108.y ? _1005.y : _1007.y, _1108.z ? _1005.z : _1007.z);
                                        _1119 = _1103;
                                        _1120 = _1104;
                                        _1121 = _1105;
                                        _1122 = _1106;
                                        _1123 = _1107;
                                      }
                                      _1131 = _1118;
                                      _1132 = _1119;
                                      _1133 = _1120;
                                      _1134 = _1121;
                                      _1135 = _1122;
                                      _1136 = _1123;
                                    }
                                    _1137 = _1131;
                                    _1138 = _1132;
                                    _1139 = _1133;
                                    _1140 = _1134;
                                    _1141 = _1135;
                                    _1142 = _1136;
                                  }
                                  _1151 = _1137;
                                  _1152 = _1138;
                                  _1153 = _1139;
                                  _1154 = _1140;
                                  _1155 = _1141;
                                  _1156 = _1142;
                                }
                                _1165 = _1151;
                                _1166 = _1152;
                                _1167 = _1153;
                                _1168 = _1154;
                                _1169 = _1155;
                                _1170 = _1156;
                              }
                              _1178 = _1165;
                              _1179 = _1166;
                              _1180 = _1167;
                              _1181 = _1168;
                              _1182 = _1169;
                              _1183 = _1170;
                            }
                            _1192 = _1178;
                            _1193 = _1179;
                            _1194 = _1180;
                            _1195 = _1181;
                            _1196 = _1182;
                            _1197 = _1183;
                          }
                          _1198 = _1192;
                          _1199 = _1193;
                          _1200 = _1194;
                          _1201 = _1195;
                          _1202 = _1196;
                          _1203 = _1197;
                        }
                        _1212 = _1198;
                        _1213 = _1199;
                        _1214 = _1200;
                        _1215 = _1201;
                        _1216 = _1202;
                        _1217 = _1203;
                      }
                      _1226 = _1212;
                      _1227 = _1213;
                      _1228 = _1214;
                      _1229 = _1215;
                      _1230 = _1216;
                      _1231 = _1217;
                    }
                    _1240 = _1226;
                    _1241 = _1227;
                    _1242 = _1228;
                    _1243 = _1229;
                    _1244 = _1230;
                    _1245 = _1231;
                  }
                  _1254 = _1240;
                  _1255 = _1241;
                  _1256 = _1242;
                  _1257 = _1243;
                  _1258 = _1244;
                  _1259 = _1245;
                }
                _1260 = _1254;
                _1261 = _1255;
                _1262 = _1256;
                _1263 = _1257;
                _1264 = _1258;
                _1265 = _1259;
              }
              bool3 _1267 = (_1265 == 3).xxx;
              bool3 _1270 = (_1265 == 4).xxx;
              if (_1265 == 0) {
                _1354 = 0.0f;
                break;
              }
              float3 _1275 = normalize(_1263);
              float3 _1276 = normalize(_1262);
              float3 _1277 = normalize(_1261);
              float3 _1278 = normalize(float3(_1267.x ? _1263.x : _1260.x, _1267.y ? _1263.y : _1260.y, _1267.z ? _1263.z : _1260.z));
              float3 _1279 = normalize(float3(_1270.x ? _1263.x : _1264.x, _1270.y ? _1263.y : _1264.y, _1270.z ? _1263.z : _1264.z));
              float _1281 = clamp(dot(_1275, _1276), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1285 = sqrt(1.0f - (_1281 * _1281));
              float _1293 = clamp(dot(_1276, _1277), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1297 = sqrt(1.0f - (_1293 * _1293));
              float _1306 = clamp(dot(_1277, _1278), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1310 = sqrt(1.0f - (_1306 * _1306));
              float _1317 = ((cross(_1275, _1276).z * ((_1285 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1281) / _1285))) + (cross(_1276, _1277).z * ((_1297 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1293) / _1297)))) + (cross(_1277, _1278).z * ((_1310 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1306) / _1310)));
              float _1334;
              if (_1265 >= 4) {
                float _1322 = clamp(dot(_1278, _1279), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1326 = sqrt(1.0f - (_1322 * _1322));
                _1334 = _1317 + (cross(_1278, _1279).z * ((_1326 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1322) / _1326)));
              } else {
                _1334 = _1317;
              }
              float _1351;
              if (_1265 == 5) {
                float _1339 = clamp(dot(_1279, _1275), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1343 = sqrt(1.0f - (_1339 * _1339));
                _1351 = _1334 + (cross(_1279, _1275).z * ((_1343 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1339) / _1343)));
              } else {
                _1351 = _1334;
              }
              _1354 = max(_1351, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1742;
            do {
              float3 _1388;
              if (_972) {
                _1388 = _970 * rsqrt(_971);
              } else {
                float _1369 = _438.z;
                float _1371 = (_1369 >= 0.0f) ? 1.0f : (-1.0f);
                float _1373 = (-1.0f) / (_1371 + _1369);
                float _1375 = _438.x;
                _1388 = float3(1.0f + (((_1371 * _1373) * _1375) * _1375), ((_1371 * _1375) * _438.y) * _1373, (-_1371) * _1375);
              }
              float3x3 _1391 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1388, cross(_438, _1388), _438));
              float3 _1392 = mul(_1391, _1000);
              float3 _1393 = mul(_1391, _1002);
              float3 _1394 = mul(_1391, _1004);
              float3 _1395 = mul(_1391, _1006);
              float _1396 = _1392.z;
              float _1399 = _1393.z;
              float _1403 = _1394.z;
              float _1407 = _1395.z;
              int _1411 = (((int(_1396 > 0.0f) | ((_1399 > 0.0f) ? 2 : 0)) | ((_1403 > 0.0f) ? 4 : 0)) | ((_1407 > 0.0f) ? 8 : 0));
              float3 _1648;
              float3 _1649;
              float3 _1650;
              float3 _1651;
              float3 _1652;
              int _1653;
              if (_1411 == 0) {
                _1648 = _1395;
                _1649 = _1394;
                _1650 = _1393;
                _1651 = _1392;
                _1652 = 0.0f.xxx;
                _1653 = 0;
              } else {
                float3 _1642;
                float3 _1643;
                float3 _1644;
                float3 _1645;
                float3 _1646;
                int _1647;
                if (_1411 == 1) {
                  _1642 = _1395;
                  _1643 = (_1392 * (-_1407)) + (_1395 * _1396);
                  _1644 = (_1392 * (-_1399)) + (_1393 * _1396);
                  _1645 = _1392;
                  _1646 = 0.0f.xxx;
                  _1647 = 3;
                } else {
                  float3 _1628;
                  float3 _1629;
                  float3 _1630;
                  float3 _1631;
                  float3 _1632;
                  int _1633;
                  if (_1411 == 2) {
                    _1628 = _1395;
                    _1629 = (_1393 * (-_1403)) + (_1394 * _1399);
                    _1630 = _1393;
                    _1631 = (_1393 * (-_1396)) + (_1392 * _1399);
                    _1632 = 0.0f.xxx;
                    _1633 = 3;
                  } else {
                    float3 _1614;
                    float3 _1615;
                    float3 _1616;
                    float3 _1617;
                    float3 _1618;
                    int _1619;
                    if (_1411 == 3) {
                      _1614 = (_1392 * (-_1407)) + (_1395 * _1396);
                      _1615 = (_1393 * (-_1403)) + (_1394 * _1399);
                      _1616 = _1393;
                      _1617 = _1392;
                      _1618 = 0.0f.xxx;
                      _1619 = 4;
                    } else {
                      float3 _1600;
                      float3 _1601;
                      float3 _1602;
                      float3 _1603;
                      float3 _1604;
                      int _1605;
                      if (_1411 == 4) {
                        _1600 = _1395;
                        _1601 = _1394;
                        _1602 = (_1394 * (-_1399)) + (_1393 * _1403);
                        _1603 = (_1394 * (-_1407)) + (_1395 * _1403);
                        _1604 = 0.0f.xxx;
                        _1605 = 3;
                      } else {
                        float3 _1586;
                        float3 _1587;
                        float3 _1588;
                        float3 _1589;
                        float3 _1590;
                        int _1591;
                        if (_1411 == 5) {
                          _1586 = _1395;
                          _1587 = _1394;
                          _1588 = _1393;
                          _1589 = _1392;
                          _1590 = 0.0f.xxx;
                          _1591 = 0;
                        } else {
                          float3 _1580;
                          float3 _1581;
                          float3 _1582;
                          float3 _1583;
                          float3 _1584;
                          int _1585;
                          if (_1411 == 6) {
                            _1580 = (_1394 * (-_1407)) + (_1395 * _1403);
                            _1581 = _1394;
                            _1582 = _1393;
                            _1583 = (_1393 * (-_1396)) + (_1392 * _1399);
                            _1584 = 0.0f.xxx;
                            _1585 = 4;
                          } else {
                            float3 _1566;
                            float3 _1567;
                            float3 _1568;
                            float3 _1569;
                            float3 _1570;
                            int _1571;
                            if (_1411 == 7) {
                              float _1559 = -_1407;
                              _1566 = (_1394 * _1559) + (_1395 * _1403);
                              _1567 = _1394;
                              _1568 = _1393;
                              _1569 = _1392;
                              _1570 = (_1392 * _1559) + (_1395 * _1396);
                              _1571 = 5;
                            } else {
                              float3 _1553;
                              float3 _1554;
                              float3 _1555;
                              float3 _1556;
                              float3 _1557;
                              int _1558;
                              if (_1411 == 8) {
                                _1553 = _1395;
                                _1554 = _1395;
                                _1555 = (_1395 * (-_1403)) + (_1394 * _1407);
                                _1556 = (_1395 * (-_1396)) + (_1392 * _1407);
                                _1557 = 0.0f.xxx;
                                _1558 = 3;
                              } else {
                                float3 _1539;
                                float3 _1540;
                                float3 _1541;
                                float3 _1542;
                                float3 _1543;
                                int _1544;
                                if (_1411 == 9) {
                                  _1539 = _1395;
                                  _1540 = (_1395 * (-_1403)) + (_1394 * _1407);
                                  _1541 = (_1392 * (-_1399)) + (_1393 * _1396);
                                  _1542 = _1392;
                                  _1543 = 0.0f.xxx;
                                  _1544 = 4;
                                } else {
                                  float3 _1525;
                                  float3 _1526;
                                  float3 _1527;
                                  float3 _1528;
                                  float3 _1529;
                                  int _1530;
                                  if (_1411 == 10) {
                                    _1525 = _1395;
                                    _1526 = _1394;
                                    _1527 = _1393;
                                    _1528 = _1392;
                                    _1529 = 0.0f.xxx;
                                    _1530 = 0;
                                  } else {
                                    float3 _1519;
                                    float3 _1520;
                                    float3 _1521;
                                    float3 _1522;
                                    float3 _1523;
                                    int _1524;
                                    if (_1411 == 11) {
                                      float _1512 = -_1403;
                                      _1519 = (_1395 * _1512) + (_1394 * _1407);
                                      _1520 = (_1393 * _1512) + (_1394 * _1399);
                                      _1521 = _1393;
                                      _1522 = _1392;
                                      _1523 = _1395;
                                      _1524 = 5;
                                    } else {
                                      float3 _1506;
                                      float3 _1507;
                                      float3 _1508;
                                      float3 _1509;
                                      float3 _1510;
                                      int _1511;
                                      if (_1411 == 12) {
                                        _1506 = _1395;
                                        _1507 = _1394;
                                        _1508 = (_1394 * (-_1399)) + (_1393 * _1403);
                                        _1509 = (_1395 * (-_1396)) + (_1392 * _1407);
                                        _1510 = 0.0f.xxx;
                                        _1511 = 4;
                                      } else {
                                        bool _1464 = _1411 == 13;
                                        float3 _1491;
                                        float3 _1492;
                                        float3 _1493;
                                        float3 _1494;
                                        int _1495;
                                        if (_1464) {
                                          float _1484 = -_1399;
                                          _1491 = (_1394 * _1484) + (_1393 * _1403);
                                          _1492 = (_1392 * _1484) + (_1393 * _1396);
                                          _1493 = _1392;
                                          _1494 = _1395;
                                          _1495 = 5;
                                        } else {
                                          float3 _1481;
                                          float3 _1482;
                                          int _1483;
                                          if (_1411 == 14) {
                                            float _1474 = -_1396;
                                            _1481 = (_1393 * _1474) + (_1392 * _1399);
                                            _1482 = (_1395 * _1474) + (_1392 * _1407);
                                            _1483 = 5;
                                          } else {
                                            _1481 = _1392;
                                            _1482 = 0.0f.xxx;
                                            _1483 = (_1411 == 15) ? 4 : 0;
                                          }
                                          _1491 = _1394;
                                          _1492 = _1393;
                                          _1493 = _1481;
                                          _1494 = _1482;
                                          _1495 = _1483;
                                        }
                                        bool3 _1496 = _1464.xxx;
                                        _1506 = float3(_1496.x ? _1394.x : _1395.x, _1496.y ? _1394.y : _1395.y, _1496.z ? _1394.z : _1395.z);
                                        _1507 = _1491;
                                        _1508 = _1492;
                                        _1509 = _1493;
                                        _1510 = _1494;
                                        _1511 = _1495;
                                      }
                                      _1519 = _1506;
                                      _1520 = _1507;
                                      _1521 = _1508;
                                      _1522 = _1509;
                                      _1523 = _1510;
                                      _1524 = _1511;
                                    }
                                    _1525 = _1519;
                                    _1526 = _1520;
                                    _1527 = _1521;
                                    _1528 = _1522;
                                    _1529 = _1523;
                                    _1530 = _1524;
                                  }
                                  _1539 = _1525;
                                  _1540 = _1526;
                                  _1541 = _1527;
                                  _1542 = _1528;
                                  _1543 = _1529;
                                  _1544 = _1530;
                                }
                                _1553 = _1539;
                                _1554 = _1540;
                                _1555 = _1541;
                                _1556 = _1542;
                                _1557 = _1543;
                                _1558 = _1544;
                              }
                              _1566 = _1553;
                              _1567 = _1554;
                              _1568 = _1555;
                              _1569 = _1556;
                              _1570 = _1557;
                              _1571 = _1558;
                            }
                            _1580 = _1566;
                            _1581 = _1567;
                            _1582 = _1568;
                            _1583 = _1569;
                            _1584 = _1570;
                            _1585 = _1571;
                          }
                          _1586 = _1580;
                          _1587 = _1581;
                          _1588 = _1582;
                          _1589 = _1583;
                          _1590 = _1584;
                          _1591 = _1585;
                        }
                        _1600 = _1586;
                        _1601 = _1587;
                        _1602 = _1588;
                        _1603 = _1589;
                        _1604 = _1590;
                        _1605 = _1591;
                      }
                      _1614 = _1600;
                      _1615 = _1601;
                      _1616 = _1602;
                      _1617 = _1603;
                      _1618 = _1604;
                      _1619 = _1605;
                    }
                    _1628 = _1614;
                    _1629 = _1615;
                    _1630 = _1616;
                    _1631 = _1617;
                    _1632 = _1618;
                    _1633 = _1619;
                  }
                  _1642 = _1628;
                  _1643 = _1629;
                  _1644 = _1630;
                  _1645 = _1631;
                  _1646 = _1632;
                  _1647 = _1633;
                }
                _1648 = _1642;
                _1649 = _1643;
                _1650 = _1644;
                _1651 = _1645;
                _1652 = _1646;
                _1653 = _1647;
              }
              bool3 _1655 = (_1653 == 3).xxx;
              bool3 _1658 = (_1653 == 4).xxx;
              if (_1653 == 0) {
                _1742 = 0.0f;
                break;
              }
              float3 _1663 = normalize(_1651);
              float3 _1664 = normalize(_1650);
              float3 _1665 = normalize(_1649);
              float3 _1666 = normalize(float3(_1655.x ? _1651.x : _1648.x, _1655.y ? _1651.y : _1648.y, _1655.z ? _1651.z : _1648.z));
              float3 _1667 = normalize(float3(_1658.x ? _1651.x : _1652.x, _1658.y ? _1651.y : _1652.y, _1658.z ? _1651.z : _1652.z));
              float _1669 = clamp(dot(_1663, _1664), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1673 = sqrt(1.0f - (_1669 * _1669));
              float _1681 = clamp(dot(_1664, _1665), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1685 = sqrt(1.0f - (_1681 * _1681));
              float _1694 = clamp(dot(_1665, _1666), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1698 = sqrt(1.0f - (_1694 * _1694));
              float _1705 = ((cross(_1663, _1664).z * ((_1673 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1669) / _1673))) + (cross(_1664, _1665).z * ((_1685 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1681) / _1685)))) + (cross(_1665, _1666).z * ((_1698 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1694) / _1698)));
              float _1722;
              if (_1653 >= 4) {
                float _1710 = clamp(dot(_1666, _1667), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1714 = sqrt(1.0f - (_1710 * _1710));
                _1722 = _1705 + (cross(_1666, _1667).z * ((_1714 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1710) / _1714)));
              } else {
                _1722 = _1705;
              }
              float _1739;
              if (_1653 == 5) {
                float _1727 = clamp(dot(_1667, _1663), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1731 = sqrt(1.0f - (_1727 * _1727));
                _1739 = _1722 + (cross(_1667, _1663).z * ((_1731 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1727) / _1731)));
              } else {
                _1739 = _1722;
              }
              _1742 = max(_1739, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1745 = (_820 & 2u) != 0u;
            uint _1749 = asuint(_29_m6[_807].w);
            uint _1750 = asuint(_29_m6[_813].w);
            float3 _1751 = _468 - _29_m6[_798].xyz;
            float3 _1752 = abs(_1751);
            float _1753 = _1752.x;
            float _1754 = _1752.y;
            float _1756 = _1752.z;
            int _1789;
            if ((_1753 > _1754) && (_1753 > _1756)) {
              _1789 = int((_1751.x > 0.0f) ? (_1749 & 1023u) : ((_1749 >> 10u) & 1023u));
            } else {
              int _1781;
              if (_1754 > _1756) {
                _1781 = int((_1751.y > 0.0f) ? ((_1749 >> 20u) & 1023u) : (_1750 & 1023u));
              } else {
                _1781 = int((_1751.z > 0.0f) ? ((_1750 >> 10u) & 1023u) : ((_1750 >> 20u) & 1023u));
              }
              _1789 = _1781;
            }
            int _1792 = _1745 ? int(_29_m6[_807].w) : ((_1789 == 1023) ? (-1) : _1789);
            uint _1801 = uint(_1792);
            uint _1803 = asuint(_33_m11.x) + (_1801 * 96u);
            uint _1805 = (_1803 + 64u) >> 2u;
            uint _1808 = _1805 + 1u;
            uint _1811 = _1805 + 2u;
            uint _1814 = _1805 + 3u;
            float4 _1818 = asfloat(uint4(_36.Load(_1805 * 4 + 0), _36.Load(_1808 * 4 + 0), _36.Load(_1811 * 4 + 0), _36.Load(_1814 * 4 + 0)));
            float _2150;
            do {
              uint _1834 = ((asuint(_33_m11.y) + (_1801 * 16u)) >> 2u) + 1u;
              if (_36.Load(_1834 * 4 + 0) > 0u) {
                float4 _397 = _749;
                float _1849;
                do {
                  if (_36.Load(_1834 * 4 + 0) == 0u) {
                    _1849 = 1.0f;
                    break;
                  }
                  _1849 = _397[_36.Load(_1834 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2150 = _1849;
                break;
              }
              uint _1850 = _1803 >> 2u;
              uint _1865 = (_1803 + 16u) >> 2u;
              uint _1880 = (_1803 + 32u) >> 2u;
              uint _1895 = (_1803 + 48u) >> 2u;
              float4 _1915 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_1850 * 4 + 0), _36.Load((_1850 + 1u) * 4 + 0), _36.Load((_1850 + 2u) * 4 + 0), _36.Load((_1850 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1865 * 4 + 0), _36.Load((_1865 + 1u) * 4 + 0), _36.Load((_1865 + 2u) * 4 + 0), _36.Load((_1865 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1880 * 4 + 0), _36.Load((_1880 + 1u) * 4 + 0), _36.Load((_1880 + 2u) * 4 + 0), _36.Load((_1880 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1895 * 4 + 0), _36.Load((_1895 + 1u) * 4 + 0), _36.Load((_1895 + 2u) * 4 + 0), _36.Load((_1895 + 3u) * 4 + 0))))), float4((_468 - ((_1751 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1751, _1751)))) * _1818.x)) + (_438 * (_1818.y * 5.0f)), 1.0f));
              float3 _1919 = _1915.xyz / _1915.w.xxx;
              uint _1921 = (_1803 + 80u) >> 2u;
              float4 _1934 = asfloat(uint4(_36.Load(_1921 * 4 + 0), _36.Load((_1921 + 1u) * 4 + 0), _36.Load((_1921 + 2u) * 4 + 0), _36.Load((_1921 + 3u) * 4 + 0)));
              float2 _1935 = _1919.xy;
              float2 _1937 = _1934.xy;
              float3 _1941 = _1919.xyz;
              bool3 _1942 = bool3(_1941.x <= 0.0f.xxx.x, _1941.y <= 0.0f.xxx.y, _1941.z <= 0.0f.xxx.z);
              bool3 _1943 = bool3(_1941.x >= 1.0f.xxx.x, _1941.y >= 1.0f.xxx.y, _1941.z >= 1.0f.xxx.z);
              float _1946 = _1919.z;
              float2 _1957 = ((_1935 * (_1934.zw - _1937)) + _1937).xy * _33_m10.zw;
              float2 _1959 = floor(_1957 + 0.5f.xx);
              float2 _1960 = _1957 - _1959;
              float _1961 = _1960.x;
              float _1962 = _1961 + 0.5f;
              float _1963 = _1962 * _1962;
              float _1966 = 1.0f - _1961;
              float _1967 = min(_1961, 0.0f);
              float _1970 = _1961 + 1.0f;
              float _1971 = max(_1961, 0.0f);
              float _1982 = _1960.y;
              float _1983 = _1982 + 0.5f;
              float _1984 = _1983 * _1983;
              float _1987 = 1.0f - _1982;
              float _1988 = min(_1982, 0.0f);
              float _1991 = _1982 + 1.0f;
              float _1992 = max(_1982, 0.0f);
              float3 _2004 = float3(0.1599999964237213134765625f * _1966, 0.1599999964237213134765625f * ((_1970 - (_1971 * _1971)) + 1.0f), _1963 * 0.07999999821186065673828125f);
              float3 _2005 = float3(0.1599999964237213134765625f * ((_1963 * 0.5f) - _1961), 0.1599999964237213134765625f * ((_1966 - (_1967 * _1967)) + 1.0f), 0.1599999964237213134765625f * _1970) + _2004;
              float3 _2007 = float3(0.1599999964237213134765625f * _1987, 0.1599999964237213134765625f * ((_1991 - (_1992 * _1992)) + 1.0f), _1984 * 0.07999999821186065673828125f);
              float3 _2008 = float3(0.1599999964237213134765625f * ((_1984 * 0.5f) - _1982), 0.1599999964237213134765625f * ((_1987 - (_1988 * _1988)) + 1.0f), 0.1599999964237213134765625f * _1991) + _2007;
              float3 _2014 = ((_2004 / _2005) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _2016 = ((_2007 / _2008) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _2018 = _1959 * _33_m10.xy;
              float _2019 = _2014.x;
              float _2020 = _2016.x;
              float _2023 = _2014.y;
              float _2026 = _2014.z;
              float _2029 = _2016.y;
              float _2036 = _2016.z;
              float _2043 = _2005.x;
              float _2044 = _2008.x;
              float _2046 = _2005.y;
              float _2048 = _2005.z;
              float _2050 = _2008.y;
              float _2054 = _2008.z;
              float _2112 = (((((((_2043 * _2044) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2019, _2020), _384).xy, _1946)) + ((_2046 * _2044) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2023, _2020), _384).xy, _1946))) + ((_2048 * _2044) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2026, _2020), _384).xy, _1946))) + ((_2043 * _2050) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2019, _2029), _384).xy, _1946))) + ((_2046 * _2050) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2023, _2029), _384).xy, _1946))) + ((_2048 * _2050) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2026, _2029), _384).xy, _1946))) + ((_2043 * _2054) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2019, _2036), _384).xy, _1946));
              float4 _2135 = asfloat(uint4(_36.Load(_1805 * 4 + 0), _36.Load(_1808 * 4 + 0), _36.Load(_1811 * 4 + 0), _36.Load(_1814 * 4 + 0)));
              float _2136 = _2135.w;
              float2 _2138 = min(_1935, 1.0f.xx - _1935);
              _2150 = lerp(1.0f, (any(bool3(_1942.x || _1943.x, _1942.y || _1943.y, _1942.z || _1943.z)) || ((asuint(_1946) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2112 + ((_2046 * _2054) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2023, _2036), _384).xy, _1946))) + ((_2048 * _2054) * _34.SampleCmpLevelZero(_16, float3(_2018 + float2(_2026, _2036), _384).xy, _1946))), _1745 ? min(_2136, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2135.z - _1915.w) * 0.25f, min(_2138.x, _2138.y)))) : _2136);
              break;
            } while (false);
            _2156 = ((_29_m6[_795].xyz * (((((_536 * _959.x) + ((1.0f.xxx - _536) * _959.y)) * _1354) * _29_m6[_816].z) + (_532 * _1742))) * _932) * ((_1792 >= 0) ? _2150 : 1.0f);
            break;
          } while (false);
          _3506 = _755;
          _3507 = _2156 * _895;
          break;
        }
        float _3504;
        float3 _3505;
        if (_29_m6[_795].w < 1.5f) {
          float3 _2761 = float3(0.100000001490116119384765625f, _528, 1.0f);
          float _2770 = (0.5f + (0.5f * _29_m6[_801].y)) - abs(_29_m6[_801].x);
          float _2771 = _29_m6[_801].y - _2770;
          float _2778 = abs(max((1.0f - abs(_2770)) - abs(_2771), 0.00048828125f));
          float3 _2782 = normalize(float3(_2770, _2771, (_29_m6[_801].x >= 0.0f) ? _2778 : (-_2778)));
          float3 _2783 = _29_m6[_798].xyz - _468;
          float _2784 = dot(_2783, _2783);
          float _2785 = rsqrt(_2784);
          float3 _2786 = _2783 * _2785;
          float _2790 = clamp(_29_m6[_816].y * _2785, 0.0f, 1.0f);
          int _2795 = int(_29_m6[_816].w);
          float3 _2796 = _2782 * _29_m6[_801].z;
          float3 _2797 = _2796 * 0.5f;
          float3 _2798 = _2783 - _2797;
          float3 _2799 = _2783 + _2797;
          bool _2801 = (_899 & 1u) == 0u;
          bool _2804 = _2801 || ((_820 & 2u) != 0u);
          bool _2807 = (!_2801) && (_29_m6[_801].z > 0.0f);
          float _2826;
          float _2827;
          if (_2807) {
            float _2811 = length(_2798);
            float _2812 = length(_2799);
            _2826 = clamp(0.5f * ((dot(_438, _2798) / _2811) + (dot(_438, _2799) / _2812)), 0.0f, 1.0f);
            _2827 = 1.0f / ((((_2811 * _2812) + dot(_2798, _2799)) * 0.5f) + 1.0f);
          } else {
            _2826 = clamp(dot(_438, _2786), 0.0f, 1.0f);
            _2827 = 1.0f;
          }
          float _2849;
          if (_29_m6[_813].w < 0.0f) {
            float _2843 = _2784 * (_29_m6[_798].w * _29_m6[_798].w);
            float _2846 = clamp(1.0f - (_2843 * _2843), 0.0f, 1.0f);
            _2849 = lerp(1.0f / (_2784 + 1.0f), _2827, float(_2807)) * (_2846 * _2846);
          } else {
            float3 _2832 = _2783 * _29_m6[_798].w;
            _2849 = _2827 * pow(1.0f - clamp(dot(_2832, _2832), 0.0f, 1.0f), _29_m6[_813].w);
          }
          float _2855 = clamp((dot(_2786, -_2782) - _29_m6[_801].z) * _29_m6[_801].w, 0.0f, 1.0f);
          float _2859 = _2849 * lerp(1.0f, _2855 * _2855, float(_2801));
          float _2959;
          if ((!_2807) && (_2795 >= 0)) {
            uint _2865 = uint(_2795);
            float2 _2952;
            [branch] if (_2801) {
              float4 _2942 = mul(_45_m1[_2865], _472);
              _2952 = _45_m0[_2865].xy + (clamp(_2942.xy / _2942.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2865].zw);
            }
            else {
              float3 _2879 = mul(float4(-_2783, 0.0f), _45_m1[_2865]).xyz;
              float3 _392 = _2879;
              float3 _391 = _2879;
              float3 _390 = abs(_2879);
              uint _2888 = uint(int(_390.y > _390.x));
              uint _2894 = (_390.z > _390[_2888]) ? 2u : _2888;
              uint _2900 = (_2894 * 2u) + uint(_391[_2894] < 0.0f);
              float _2904 = abs(_392[_2900 / 2u]);
              float _2924 = 0.5f - (0.000244140625f / _45_m0[_2865].w);
              _2952 = _45_m0[_2865].xy + (clamp(float2((float(_2900) + ((((_392[uint(_341[_2900].x)] * _342[_2900].x) / _2904) * _2924) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_392[uint(_341[_2900].y)] * _342[_2900].y) / _2904) * _2924)), 0.0f.xx, 1.0f.xx) * _45_m0[_2865].zw);
            }
            _2959 = _2859 * _43.SampleLevel(_13, _2952, 0.0f).x;
          } else {
            _2959 = _2859;
          }
          bool _2960 = _2959 > 0.0f;
          float _3369;
          if (_2960) {
            int _3013;
            if (_2804) {
              _3013 = int(_29_m6[_804].x);
            } else {
              uint _2968 = asuint(_29_m6[_801].w);
              uint _2969 = asuint(_29_m6[_804].x);
              float3 _2970 = _468 - _29_m6[_798].xyz;
              float3 _2971 = abs(_2970);
              float _2972 = _2971.x;
              float _2973 = _2971.y;
              float _2975 = _2971.z;
              int _3008;
              if ((_2972 > _2973) && (_2972 > _2975)) {
                _3008 = int((_2970.x > 0.0f) ? (_2968 & 1023u) : ((_2968 >> 10u) & 1023u));
              } else {
                int _3000;
                if (_2973 > _2975) {
                  _3000 = int((_2970.y > 0.0f) ? ((_2968 >> 20u) & 1023u) : (_2969 & 1023u));
                } else {
                  _3000 = int((_2970.z > 0.0f) ? ((_2969 >> 10u) & 1023u) : ((_2969 >> 20u) & 1023u));
                }
                _3008 = _3000;
              }
              _3013 = (_3008 == 1023) ? (-1) : _3008;
            }
            uint _3018 = uint(_3013);
            uint _3020 = asuint(_33_m11.x) + (_3018 * 96u);
            uint _3022 = (_3020 + 64u) >> 2u;
            uint _3025 = _3022 + 1u;
            uint _3028 = _3022 + 2u;
            uint _3031 = _3022 + 3u;
            float4 _3035 = asfloat(uint4(_36.Load(_3022 * 4 + 0), _36.Load(_3025 * 4 + 0), _36.Load(_3028 * 4 + 0), _36.Load(_3031 * 4 + 0)));
            float _3367;
            do {
              uint _3051 = ((asuint(_33_m11.y) + (_3018 * 16u)) >> 2u) + 1u;
              if (_36.Load(_3051 * 4 + 0) > 0u) {
                float4 _389 = _749;
                float _3066;
                do {
                  if (_36.Load(_3051 * 4 + 0) == 0u) {
                    _3066 = 1.0f;
                    break;
                  }
                  _3066 = _389[_36.Load(_3051 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3367 = _3066;
                break;
              }
              uint _3067 = _3020 >> 2u;
              uint _3082 = (_3020 + 16u) >> 2u;
              uint _3097 = (_3020 + 32u) >> 2u;
              uint _3112 = (_3020 + 48u) >> 2u;
              float4 _3132 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_3067 * 4 + 0), _36.Load((_3067 + 1u) * 4 + 0), _36.Load((_3067 + 2u) * 4 + 0), _36.Load((_3067 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3082 * 4 + 0), _36.Load((_3082 + 1u) * 4 + 0), _36.Load((_3082 + 2u) * 4 + 0), _36.Load((_3082 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3097 * 4 + 0), _36.Load((_3097 + 1u) * 4 + 0), _36.Load((_3097 + 2u) * 4 + 0), _36.Load((_3097 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3112 * 4 + 0), _36.Load((_3112 + 1u) * 4 + 0), _36.Load((_3112 + 2u) * 4 + 0), _36.Load((_3112 + 3u) * 4 + 0))))), float4((_468 - ((-_2786) * _3035.x)) + (_438 * (_3035.y * 5.0f)), 1.0f));
              float3 _3136 = _3132.xyz / _3132.w.xxx;
              uint _3138 = (_3020 + 80u) >> 2u;
              float4 _3151 = asfloat(uint4(_36.Load(_3138 * 4 + 0), _36.Load((_3138 + 1u) * 4 + 0), _36.Load((_3138 + 2u) * 4 + 0), _36.Load((_3138 + 3u) * 4 + 0)));
              float2 _3152 = _3136.xy;
              float2 _3154 = _3151.xy;
              float3 _3158 = _3136.xyz;
              bool3 _3159 = bool3(_3158.x <= 0.0f.xxx.x, _3158.y <= 0.0f.xxx.y, _3158.z <= 0.0f.xxx.z);
              bool3 _3160 = bool3(_3158.x >= 1.0f.xxx.x, _3158.y >= 1.0f.xxx.y, _3158.z >= 1.0f.xxx.z);
              float _3163 = _3136.z;
              float2 _3174 = ((_3152 * (_3151.zw - _3154)) + _3154).xy * _33_m10.zw;
              float2 _3176 = floor(_3174 + 0.5f.xx);
              float2 _3177 = _3174 - _3176;
              float _3178 = _3177.x;
              float _3179 = _3178 + 0.5f;
              float _3180 = _3179 * _3179;
              float _3183 = 1.0f - _3178;
              float _3184 = min(_3178, 0.0f);
              float _3187 = _3178 + 1.0f;
              float _3188 = max(_3178, 0.0f);
              float _3199 = _3177.y;
              float _3200 = _3199 + 0.5f;
              float _3201 = _3200 * _3200;
              float _3204 = 1.0f - _3199;
              float _3205 = min(_3199, 0.0f);
              float _3208 = _3199 + 1.0f;
              float _3209 = max(_3199, 0.0f);
              float3 _3221 = float3(0.1599999964237213134765625f * _3183, 0.1599999964237213134765625f * ((_3187 - (_3188 * _3188)) + 1.0f), _3180 * 0.07999999821186065673828125f);
              float3 _3222 = float3(0.1599999964237213134765625f * ((_3180 * 0.5f) - _3178), 0.1599999964237213134765625f * ((_3183 - (_3184 * _3184)) + 1.0f), 0.1599999964237213134765625f * _3187) + _3221;
              float3 _3224 = float3(0.1599999964237213134765625f * _3204, 0.1599999964237213134765625f * ((_3208 - (_3209 * _3209)) + 1.0f), _3201 * 0.07999999821186065673828125f);
              float3 _3225 = float3(0.1599999964237213134765625f * ((_3201 * 0.5f) - _3199), 0.1599999964237213134765625f * ((_3204 - (_3205 * _3205)) + 1.0f), 0.1599999964237213134765625f * _3208) + _3224;
              float3 _3231 = ((_3221 / _3222) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _3233 = ((_3224 / _3225) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _3235 = _3176 * _33_m10.xy;
              float _3236 = _3231.x;
              float _3237 = _3233.x;
              float _3240 = _3231.y;
              float _3243 = _3231.z;
              float _3246 = _3233.y;
              float _3253 = _3233.z;
              float _3260 = _3222.x;
              float _3261 = _3225.x;
              float _3263 = _3222.y;
              float _3265 = _3222.z;
              float _3267 = _3225.y;
              float _3271 = _3225.z;
              float _3329 = (((((((_3260 * _3261) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3236, _3237), _384).xy, _3163)) + ((_3263 * _3261) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3240, _3237), _384).xy, _3163))) + ((_3265 * _3261) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3243, _3237), _384).xy, _3163))) + ((_3260 * _3267) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3236, _3246), _384).xy, _3163))) + ((_3263 * _3267) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3240, _3246), _384).xy, _3163))) + ((_3265 * _3267) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3243, _3246), _384).xy, _3163))) + ((_3260 * _3271) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3236, _3253), _384).xy, _3163));
              float4 _3352 = asfloat(uint4(_36.Load(_3022 * 4 + 0), _36.Load(_3025 * 4 + 0), _36.Load(_3028 * 4 + 0), _36.Load(_3031 * 4 + 0)));
              float _3353 = _3352.w;
              float2 _3355 = min(_3152, 1.0f.xx - _3152);
              _3367 = lerp(1.0f, (any(bool3(_3159.x || _3160.x, _3159.y || _3160.y, _3159.z || _3160.z)) || ((asuint(_3163) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3329 + ((_3263 * _3271) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3240, _3253), _384).xy, _3163))) + ((_3265 * _3271) * _34.SampleCmpLevelZero(_16, float3(_3235 + float2(_3243, _3253), _384).xy, _3163))), _2804 ? min(_3353, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3352.z - _3132.w) * 0.25f, min(_3355.x, _3355.y)))) : _3353);
              break;
            } while (false);
            _3369 = (_3013 >= 0) ? _3367 : 1.0f;
          } else {
            _3369 = 1.0f;
          }
          float3 _3393;
          float3 _3394;
          if (_2807) {
            float3 _3372 = _2761 * _2761;
            float3 _3373 = reflect(_496, _438);
            float _3382 = dot(_3373, _2796);
            _3393 = _3372 / clamp(_3372 + (0.5f * clamp(_29_m6[_801].z * _2785, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3394 = normalize(_2798 + (_2796 * clamp(dot(_2798, (_3373 * _3382) - _2796) / ((_29_m6[_801].z * _29_m6[_801].z) - (_3382 * _3382)), 0.0f, 1.0f)));
          } else {
            _3393 = 1.0f.xxx;
            _3394 = _2786;
          }
          float3 _3395 = _3394 + _494;
          float3 _3399 = _3395 * rsqrt(max(6.103515625e-05f, dot(_3395, _3395)));
          float3 _3503;
          if (_2960) {
            float _3402 = clamp(_2826, 0.0f, 1.0f);
            float _3404 = clamp(dot(_438, _3399), 0.0f, 1.0f);
            float _3406 = clamp(dot(_494, _3399), 0.0f, 1.0f);
            float _3407 = clamp(_537, 0.0f, 1.0f);
            float _3417;
            if (_2790 > 0.0f) {
              _3417 = clamp(_539 + ((_2790 * _2790) / ((_3406 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3417 = _539;
            }
            float _3418 = _3417 * _3417;
            float _3439 = (((_3404 * _3418) - _3404) * _3404) + 1.0f;
            float _3444 = 1.0f - _3406;
            float _3445 = _3444 * _3444;
            float _3447 = (_3444 * _3445) * _3445;
            float _3471 = 1.0f - _528;
            float _3478 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3471 * (1.04997003078460693359375f + (_3471 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3471))))));
            float _3479 = 1.0f - _3478;
            float3 _3482 = _536 + ((1.0f.xxx - _536) * 0.0476190485060214996337890625f);
            float3 _3502 = ((clamp((min(((_536 * (1.0f - _3447)) + _3447.xxx) * (((_3418 / (_3439 * _3439)) * _3393.y) * (0.5f / (((_3402 * sqrt(((((-_3407) * _3418) + _3407) * _3407) + _3418)) + (_3407 * sqrt(((((-_3402) * _3418) + _3402) * _3402) + _3418))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3482 * (((_41.SampleLevel(_13, (float2(_3407, _528) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_3402, _528) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3478) / _3479)) * _3482) / (1.0f.xxx - (_3482 * _3479)))) * _29_m6[_816].z, 0.0f.xxx, 1000.0f.xxx) * _2826) + ((_532 * _3393.z) * _2826)) * (((_29_m6[_795].xyz * _2959) * _3369) * _895);
            _3503 = _3502;
          } else {
            _3503 = 0.0f.xxx;
          }
          _3504 = _755;
          _3505 = _3503;
        } else {
          float _2759;
          do {
            if (_902) {
              _2759 = 1.0f;
              break;
            }
            float _2173 = (0.5f + (0.5f * _29_m6[_801].y)) - abs(_29_m6[_801].x);
            float _2174 = _29_m6[_801].y - _2173;
            float _2181 = abs(max((1.0f - abs(_2173)) - abs(_2174), 0.00048828125f));
            float3 _2185 = normalize(float3(_2173, _2174, (_29_m6[_801].x >= 0.0f) ? _2181 : (-_2181)));
            float3 _2186 = _29_m6[_798].xyz - _468;
            float _2187 = dot(_2186, _2186);
            float3 _2189 = _2186 * rsqrt(_2187);
            int _2192 = int(_29_m6[_816].w);
            float3 _2194 = (_2185 * _29_m6[_801].z) * 0.5f;
            float3 _2195 = _2186 - _2194;
            float3 _2196 = _2186 + _2194;
            bool _2198 = (_899 & 1u) == 0u;
            bool _2201 = _2198 || ((_820 & 2u) != 0u);
            bool _2204 = (!_2198) && (_29_m6[_801].z > 0.0f);
            float _2216;
            if (_2204) {
              _2216 = 1.0f / ((((length(_2195) * length(_2196)) + dot(_2195, _2196)) * 0.5f) + 1.0f);
            } else {
              _2216 = 1.0f;
            }
            float _2238;
            if (_29_m6[_813].w < 0.0f) {
              float _2232 = _2187 * (_29_m6[_798].w * _29_m6[_798].w);
              float _2235 = clamp(1.0f - (_2232 * _2232), 0.0f, 1.0f);
              _2238 = lerp(1.0f / (_2187 + 1.0f), _2216, float(_2204)) * (_2235 * _2235);
            } else {
              float3 _2221 = _2186 * _29_m6[_798].w;
              _2238 = _2216 * pow(1.0f - clamp(dot(_2221, _2221), 0.0f, 1.0f), _29_m6[_813].w);
            }
            float _2244 = clamp((dot(_2189, -_2185) - _29_m6[_801].z) * _29_m6[_801].w, 0.0f, 1.0f);
            float _2248 = _2238 * lerp(1.0f, _2244 * _2244, float(_2198));
            float _2348;
            if ((!_2204) && (_2192 >= 0)) {
              uint _2254 = uint(_2192);
              float2 _2341;
              [branch] if (_2198) {
                float4 _2331 = mul(_45_m1[_2254], _472);
                _2341 = _45_m0[_2254].xy + (clamp(_2331.xy / _2331.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2254].zw);
              }
              else {
                float3 _2268 = mul(float4(-_2186, 0.0f), _45_m1[_2254]).xyz;
                float3 _396 = _2268;
                float3 _395 = _2268;
                float3 _394 = abs(_2268);
                uint _2277 = uint(int(_394.y > _394.x));
                uint _2283 = (_394.z > _394[_2277]) ? 2u : _2277;
                uint _2289 = (_2283 * 2u) + uint(_395[_2283] < 0.0f);
                float _2293 = abs(_396[_2289 / 2u]);
                float _2313 = 0.5f - (0.000244140625f / _45_m0[_2254].w);
                _2341 = _45_m0[_2254].xy + (clamp(float2((float(_2289) + ((((_396[uint(_341[_2289].x)] * _342[_2289].x) / _2293) * _2313) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_396[uint(_341[_2289].y)] * _342[_2289].y) / _2293) * _2313)), 0.0f.xx, 1.0f.xx) * _45_m0[_2254].zw);
              }
              _2348 = _2248 * _43.SampleLevel(_13, _2341, 0.0f).x;
            } else {
              _2348 = _2248;
            }
            float _2758;
            if (_2348 > 0.0f) {
              int _2402;
              if (_2201) {
                _2402 = int(_29_m6[_804].x);
              } else {
                uint _2357 = asuint(_29_m6[_801].w);
                uint _2358 = asuint(_29_m6[_804].x);
                float3 _2359 = _468 - _29_m6[_798].xyz;
                float3 _2360 = abs(_2359);
                float _2361 = _2360.x;
                float _2362 = _2360.y;
                float _2364 = _2360.z;
                int _2397;
                if ((_2361 > _2362) && (_2361 > _2364)) {
                  _2397 = int((_2359.x > 0.0f) ? (_2357 & 1023u) : ((_2357 >> 10u) & 1023u));
                } else {
                  int _2389;
                  if (_2362 > _2364) {
                    _2389 = int((_2359.y > 0.0f) ? ((_2357 >> 20u) & 1023u) : (_2358 & 1023u));
                  } else {
                    _2389 = int((_2359.z > 0.0f) ? ((_2358 >> 10u) & 1023u) : ((_2358 >> 20u) & 1023u));
                  }
                  _2397 = _2389;
                }
                _2402 = (_2397 == 1023) ? (-1) : _2397;
              }
              uint _2407 = uint(_2402);
              uint _2409 = asuint(_33_m11.x) + (_2407 * 96u);
              uint _2411 = (_2409 + 64u) >> 2u;
              uint _2414 = _2411 + 1u;
              uint _2417 = _2411 + 2u;
              uint _2420 = _2411 + 3u;
              float4 _2424 = asfloat(uint4(_36.Load(_2411 * 4 + 0), _36.Load(_2414 * 4 + 0), _36.Load(_2417 * 4 + 0), _36.Load(_2420 * 4 + 0)));
              float _2756;
              do {
                uint _2440 = ((asuint(_33_m11.y) + (_2407 * 16u)) >> 2u) + 1u;
                if (_36.Load(_2440 * 4 + 0) > 0u) {
                  float4 _393 = _749;
                  float _2455;
                  do {
                    if (_36.Load(_2440 * 4 + 0) == 0u) {
                      _2455 = 1.0f;
                      break;
                    }
                    _2455 = _393[_36.Load(_2440 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2756 = _2455;
                  break;
                }
                uint _2456 = _2409 >> 2u;
                uint _2471 = (_2409 + 16u) >> 2u;
                uint _2486 = (_2409 + 32u) >> 2u;
                uint _2501 = (_2409 + 48u) >> 2u;
                float4 _2521 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_2456 * 4 + 0), _36.Load((_2456 + 1u) * 4 + 0), _36.Load((_2456 + 2u) * 4 + 0), _36.Load((_2456 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2471 * 4 + 0), _36.Load((_2471 + 1u) * 4 + 0), _36.Load((_2471 + 2u) * 4 + 0), _36.Load((_2471 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2486 * 4 + 0), _36.Load((_2486 + 1u) * 4 + 0), _36.Load((_2486 + 2u) * 4 + 0), _36.Load((_2486 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2501 * 4 + 0), _36.Load((_2501 + 1u) * 4 + 0), _36.Load((_2501 + 2u) * 4 + 0), _36.Load((_2501 + 3u) * 4 + 0))))), float4((_468 - ((-_2189) * _2424.x)) + (_438 * (_2424.y * 5.0f)), 1.0f));
                float3 _2525 = _2521.xyz / _2521.w.xxx;
                uint _2527 = (_2409 + 80u) >> 2u;
                float4 _2540 = asfloat(uint4(_36.Load(_2527 * 4 + 0), _36.Load((_2527 + 1u) * 4 + 0), _36.Load((_2527 + 2u) * 4 + 0), _36.Load((_2527 + 3u) * 4 + 0)));
                float2 _2541 = _2525.xy;
                float2 _2543 = _2540.xy;
                float3 _2547 = _2525.xyz;
                bool3 _2548 = bool3(_2547.x <= 0.0f.xxx.x, _2547.y <= 0.0f.xxx.y, _2547.z <= 0.0f.xxx.z);
                bool3 _2549 = bool3(_2547.x >= 1.0f.xxx.x, _2547.y >= 1.0f.xxx.y, _2547.z >= 1.0f.xxx.z);
                float _2552 = _2525.z;
                float2 _2563 = ((_2541 * (_2540.zw - _2543)) + _2543).xy * _33_m10.zw;
                float2 _2565 = floor(_2563 + 0.5f.xx);
                float2 _2566 = _2563 - _2565;
                float _2567 = _2566.x;
                float _2568 = _2567 + 0.5f;
                float _2569 = _2568 * _2568;
                float _2572 = 1.0f - _2567;
                float _2573 = min(_2567, 0.0f);
                float _2576 = _2567 + 1.0f;
                float _2577 = max(_2567, 0.0f);
                float _2588 = _2566.y;
                float _2589 = _2588 + 0.5f;
                float _2590 = _2589 * _2589;
                float _2593 = 1.0f - _2588;
                float _2594 = min(_2588, 0.0f);
                float _2597 = _2588 + 1.0f;
                float _2598 = max(_2588, 0.0f);
                float3 _2610 = float3(0.1599999964237213134765625f * _2572, 0.1599999964237213134765625f * ((_2576 - (_2577 * _2577)) + 1.0f), _2569 * 0.07999999821186065673828125f);
                float3 _2611 = float3(0.1599999964237213134765625f * ((_2569 * 0.5f) - _2567), 0.1599999964237213134765625f * ((_2572 - (_2573 * _2573)) + 1.0f), 0.1599999964237213134765625f * _2576) + _2610;
                float3 _2613 = float3(0.1599999964237213134765625f * _2593, 0.1599999964237213134765625f * ((_2597 - (_2598 * _2598)) + 1.0f), _2590 * 0.07999999821186065673828125f);
                float3 _2614 = float3(0.1599999964237213134765625f * ((_2590 * 0.5f) - _2588), 0.1599999964237213134765625f * ((_2593 - (_2594 * _2594)) + 1.0f), 0.1599999964237213134765625f * _2597) + _2613;
                float3 _2620 = ((_2610 / _2611) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
                float3 _2622 = ((_2613 / _2614) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
                float2 _2624 = _2565 * _33_m10.xy;
                float _2625 = _2620.x;
                float _2626 = _2622.x;
                float _2629 = _2620.y;
                float _2632 = _2620.z;
                float _2635 = _2622.y;
                float _2642 = _2622.z;
                float _2649 = _2611.x;
                float _2650 = _2614.x;
                float _2652 = _2611.y;
                float _2654 = _2611.z;
                float _2656 = _2614.y;
                float _2660 = _2614.z;
                float _2718 = (((((((_2649 * _2650) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2625, _2626), _384).xy, _2552)) + ((_2652 * _2650) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2629, _2626), _384).xy, _2552))) + ((_2654 * _2650) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2632, _2626), _384).xy, _2552))) + ((_2649 * _2656) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2625, _2635), _384).xy, _2552))) + ((_2652 * _2656) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2629, _2635), _384).xy, _2552))) + ((_2654 * _2656) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2632, _2635), _384).xy, _2552))) + ((_2649 * _2660) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2625, _2642), _384).xy, _2552));
                float4 _2741 = asfloat(uint4(_36.Load(_2411 * 4 + 0), _36.Load(_2414 * 4 + 0), _36.Load(_2417 * 4 + 0), _36.Load(_2420 * 4 + 0)));
                float _2742 = _2741.w;
                float2 _2744 = min(_2541, 1.0f.xx - _2541);
                _2756 = lerp(1.0f, (any(bool3(_2548.x || _2549.x, _2548.y || _2549.y, _2548.z || _2549.z)) || ((asuint(_2552) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2718 + ((_2652 * _2660) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2629, _2642), _384).xy, _2552))) + ((_2654 * _2660) * _34.SampleCmpLevelZero(_16, float3(_2624 + float2(_2632, _2642), _384).xy, _2552))), _2201 ? min(_2742, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2741.z - _2521.w) * 0.25f, min(_2744.x, _2744.y)))) : _2742);
                break;
              } while (false);
              _2758 = (_2402 >= 0) ? _2756 : 1.0f;
            } else {
              _2758 = 1.0f;
            }
            _2759 = _2758;
            break;
          } while (false);
          _3504 = _755 * _2759;
          _3505 = 0.0f.xxx;
        }
        _3506 = _3504;
        _3507 = _3505;
        break;
      } while (false);
      _780 = _3506;
      _783 = _782 + _3507;
    }
    _752 = _751 + _782;
  }
  float3 _3511 = _720.xyz + (_751 * _754);
  float3 _3513 = _415.xxx;
  float3 _3548;
  float3 _3549;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xCA177259:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3524 = min(_21.SampleBias(_12, _4, _9_m16).x, _415);
    _3548 = clamp((pow(abs(_538 + _3524), exp2(((-16.0f) * _528) - 1.0f)) - 1.0f) + _3524, 0.0f, 1.0f).xxx;
    _3549 = max(_3524.xxx, ((((((_532 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3524) + ((_532 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3524) + ((_532 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3524);
  }
  else {
    _3548 = _3513;
    _3549 = _3513;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3511 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3548 : 1.0f.xxx;
  // RenoDX code end
  float3 _3566 = (_468 + (_438 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_443 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _3576 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3585 = _3566 - (_9_m108.xyz + (_3576 * (-_9_m110.w)));
  float _3600 = max(min(max((max(abs(_3585.x), abs(_3585.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3585.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _3902;
  float4 _3903;
  float4 _3904;
  float _3905;
  float _3906;
  if ((_9_m108.w != 0.0f) && (_3600 < 1.0f)) {
    float3 _3613 = _3566 - (_9_m108.xyz + (_3576 * (-_9_m110.y)));
    float _3627 = max(clamp((max(abs(_3613.x), abs(_3613.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3613.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3703;
    float4 _3704;
    float4 _3705;
    float4 _3706;
    if (_3627 < 1.0f) {
      float3 _3636 = ((_3566 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3638 = _3636 - floor(_3636);
      float4 _3642 = _55.SampleLevel(_14, _3638, 0.0f);
      float _3643 = 1.0f - _3627;
      float _3647 = _9_m109.y * 0.5f;
      float _3652 = _3638.x;
      float _3653 = clamp(_3638.y, _3647, 1.0f - _3647) * 0.3333333432674407958984375f;
      float _3654 = _3638.z;
      float4 _3657 = _56.SampleLevel(_13, float3(_3652, _3653, _3654), 0.0f);
      float _3673 = _3642.x;
      float _3683 = _3642.y;
      float _3693 = _3642.z;
      _3703 = _3600 + (_3657.w * _3643);
      _3704 = float4(((_56.SampleLevel(_13, float3(_3652, _3653 + 0.666666686534881591796875f, _3654), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3693, _3693) * _3643;
      _3705 = float4(((_56.SampleLevel(_13, float3(_3652, _3653 + 0.3333333432674407958984375f, _3654), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3683, _3683) * _3643;
      _3706 = float4(((_3657.xyz * 4.0f) - 2.0f.xxx) * _3673, _3673) * _3643;
    } else {
      _3703 = _3600;
      _3704 = 0.0f.xxxx;
      _3705 = 0.0f.xxxx;
      _3706 = 0.0f.xxxx;
    }
    float3 _3712 = _3566 - (_9_m108.xyz + (_3576 * (-_9_m110.z)));
    float _3726 = max(clamp((max(abs(_3712.x), abs(_3712.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3712.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _3806;
    float4 _3807;
    float4 _3808;
    float4 _3809;
    if (_3726 < 1.0f) {
      float3 _3735 = ((_3566 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3737 = _3735 - floor(_3735);
      float4 _3741 = _57.SampleLevel(_14, _3737, 0.0f);
      float _3743 = _3627 * (1.0f - _3726);
      float _3747 = _9_m109.y * 0.5f;
      float _3752 = _3737.x;
      float _3753 = clamp(_3737.y, _3747, 1.0f - _3747) * 0.3333333432674407958984375f;
      float _3754 = _3737.z;
      float4 _3757 = _58.SampleLevel(_13, float3(_3752, _3753, _3754), 0.0f);
      float _3773 = _3741.x;
      float _3784 = _3741.y;
      float _3795 = _3741.z;
      _3806 = _3703 + (_3757.w * _3743);
      _3807 = _3704 + (float4(((_58.SampleLevel(_13, float3(_3752, _3753 + 0.666666686534881591796875f, _3754), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3795, _3795) * _3743);
      _3808 = _3705 + (float4(((_58.SampleLevel(_13, float3(_3752, _3753 + 0.3333333432674407958984375f, _3754), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3784, _3784) * _3743);
      _3809 = _3706 + (float4(((_3757.xyz * 4.0f) - 2.0f.xxx) * _3773, _3773) * _3743);
    } else {
      _3806 = _3703;
      _3807 = _3704;
      _3808 = _3705;
      _3809 = _3706;
    }
    float4 _3892;
    float4 _3893;
    float4 _3894;
    float _3895;
    if (_3726 > 0.0f) {
      float3 _3818 = ((_3566 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3821 = _9_m109.xyz * 0.5f;
      float3 _3823 = clamp(_3818 - floor(_3818), _3821, 1.0f.xxx - _3821);
      float4 _3827 = _59.SampleLevel(_14, _3823, 0.0f);
      float _3829 = _3726 * (1.0f - _3600);
      float _3833 = _9_m109.y * 0.5f;
      float _3838 = _3823.x;
      float _3839 = clamp(_3823.y, _3833, 1.0f - _3833) * 0.3333333432674407958984375f;
      float _3840 = _3823.z;
      float4 _3843 = _60.SampleLevel(_13, float3(_3838, _3839, _3840), 0.0f);
      float _3859 = _3827.x;
      float _3870 = _3827.y;
      float _3881 = _3827.z;
      _3892 = _3807 + (float4(((_60.SampleLevel(_13, float3(_3838, _3839 + 0.666666686534881591796875f, _3840), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3881, _3881) * _3829);
      _3893 = _3808 + (float4(((_60.SampleLevel(_13, float3(_3838, _3839 + 0.3333333432674407958984375f, _3840), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3870, _3870) * _3829);
      _3894 = _3809 + (float4(((_3843.xyz * 4.0f) - 2.0f.xxx) * _3859, _3859) * _3829);
      _3895 = _3806 + (_3843.w * _3829);
    } else {
      _3892 = _3807;
      _3893 = _3808;
      _3894 = _3809;
      _3895 = _3806;
    }
    float _3898 = clamp((_3895 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _3902 = _3892;
    _3903 = _3893;
    _3904 = _3894;
    _3905 = _3898 - _3600;
    _3906 = (_3898 + _3600) * 0.5f;
  } else {
    _3902 = 0.0f.xxxx;
    _3903 = 0.0f.xxxx;
    _3904 = 0.0f.xxxx;
    _3905 = 0.0f;
    _3906 = 1.0f;
  }
  float4 _3926 = _3904 + float4(_9_m111.x * _3906, (_9_m111.y * _3906) + ((_9_m111.w * _3905) * 0.5f), _9_m111.z * _3906, (_9_m111.w * _3906) + ((_9_m111.y * _3905) * 0.375f));
  float4 _3946 = _3903 + float4(_9_m112.x * _3906, (_9_m112.y * _3906) + ((_9_m112.w * _3905) * 0.5f), _9_m112.z * _3906, (_9_m112.w * _3906) + ((_9_m112.y * _3905) * 0.375f));
  float4 _3966 = _3902 + float4(_9_m113.x * _3906, (_9_m113.y * _3906) + ((_9_m113.w * _3905) * 0.5f), _9_m113.z * _3906, (_9_m113.w * _3906) + ((_9_m113.y * _3905) * 0.375f));
  float4 _4124;
  float4 _4125;
  float4 _4126;
  [branch] if (all(bool2(_456.x >= 0.0f.xx.x, _456.y >= 0.0f.xx.y))) {
    float4 _3974 = _54.SampleLevel(_13, _456, 0.0f);
    float4 _3975 = abs(_3974);
    float4 _4121;
    float4 _4122;
    float4 _4123;
    [branch] if (any(bool4(_3975.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _3975.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _3975.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _3975.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _3981 = length(_3974.yzw);
      uint _3983;
      float _3986;
      _3983 = 0u;
      _3986 = 1.0f;
      for (float _3988 = _3981; _3988 > 4.599999904632568359375f;) {
        _3983++;
        _3986 *= 0.5f;
        _3988 *= 0.5f;
        continue;
      }
      float4 _3992 = _3974 * _3986;
      float4 _3997 = float4(0.0f, _3992.yzw);
      float2 _4019 = (_53.SampleLevel(_13, float2(((((length(_3997) * _52_m3.x) + _52_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _52_m2.xy) + _52_m2.zw;
      float4 _4033;
      _4033 = float4(_4019.x * 3.5449078083038330078125f, _3997.yzw * _4019.y) * exp(_3992.x * 0.282094776630401611328125f);
      for (uint _4036 = 0u; _4036 < _3983;) {
        _4033 = mul(float4x4(_4033, float4(_4033.yx, 0.0f, 0.0f), float4(_4033.z, 0.0f, _4033.x, 0.0f), float4(_4033.w, 0.0f, 0.0f, _4033.x)) * 0.282094776630401611328125f, _4033);
        _4036++;
        continue;
      }
      float4x4 _4057 = float4x4(_4033, float4(_4033.yx, 0.0f, 0.0f), float4(_4033.z, 0.0f, _4033.x, 0.0f), float4(_4033.w, 0.0f, 0.0f, _4033.x)) * 0.282094776630401611328125f;
      float4 _4067 = mul(_4057, float4(_3926.w * 1.1283791065216064453125f, _3926.y * (-0.977204978466033935546875f), _3926.z * 0.977204978466033935546875f, _3926.x * (-0.977204978466033935546875f)));
      float4 _4087 = mul(_4057, float4(_3946.w * 1.1283791065216064453125f, _3946.y * (-0.977204978466033935546875f), _3946.z * 0.977204978466033935546875f, _3946.x * (-0.977204978466033935546875f)));
      float4 _4107 = mul(_4057, float4(_3966.w * 1.1283791065216064453125f, _3966.y * (-0.977204978466033935546875f), _3966.z * 0.977204978466033935546875f, _3966.x * (-0.977204978466033935546875f)));
      _4121 = float4(_4067.x * 0.886226952075958251953125f, _4067.w * (-1.02332675457000732421875f), _4067.y * (-1.02332675457000732421875f), _4067.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4122 = float4(_4087.x * 0.886226952075958251953125f, _4087.w * (-1.02332675457000732421875f), _4087.y * (-1.02332675457000732421875f), _4087.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4123 = float4(_4107.x * 0.886226952075958251953125f, _4107.w * (-1.02332675457000732421875f), _4107.y * (-1.02332675457000732421875f), _4107.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4121 = _3926;
      _4122 = _3946;
      _4123 = _3966;
    }
    _4124 = _4121;
    _4125 = _4122;
    _4126 = _4123;
  }
  else {
    _4124 = _3926;
    _4125 = _3946;
    _4126 = _3966;
  }
  float _4131 = max(0.0f, dot(_4124.xyz, _438) + _4124.w);
  float _4136 = max(0.0f, dot(_4125.xyz, _438) + _4125.w);
  float _4141 = max(0.0f, dot(_4126.xyz, _438) + _4126.w);
  float3 _4151 = reflect(_496, _438);
  float _4159 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_528, 0.001000000047497451305389404296875f))));
  float2 _4163 = floor(_443 * _27_m0.w);
  float _4180 = floor(_475 - _27_m2.y);
  float _4184 = clamp(_4180, 0.0f, _27_m1.x - 1.0f);
  uint _4194 = (_4180 <= _4184) ? (_24.Load(uint(_9_m21.z + int(_4163.x + (_4163.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_4184)) * 4 + 0)) : 0u;
  float _4197 = dot(float4(_4131, _4136, _4141, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4199;
  float _4202;
  uint _4204;
  _4199 = 0.0f.xxx;
  _4202 = 1.0f;
  _4204 = _4194;
  uint _4205;
  float3 _4200;
  float _4203;
  bool _4207;
  [loop] for (;;) {
    bool _4206 = _4204 != 0u;
    _4207 = _4202 > 0.00999999977648258209228515625f;
    if (_4206 && _4207) {
      uint _4211 = firstbitlow(_4204);
      _4205 = _4204 ^ (1u << (_4211 & 31u));
      float3 _4231 = float3(dot(_27_m4[_4211]._m2, _472), dot(_27_m4[_4211]._m3, _472), dot(_27_m4[_4211]._m4, _472));
      float3 _4232 = abs(_4231);
      if (all(bool3(_4232.x <= _27_m4[_4211]._m1.xyz.x, _4232.y <= _27_m4[_4211]._m1.xyz.y, _4232.z <= _27_m4[_4211]._m1.xyz.z))) {
        float3 _4241 = _27_m4[_4211]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4243 = _4232 * 0.100000001490116119384765625f;
        float3 _4244 = _4243 * _4243;
        float3 _4247 = (_27_m4[_4211]._m1.xyz - _4232) * _27_m4[_4211]._m5.xyz;
        float3 _4295;
        [branch] if (_27_m4[_4211]._m6.x == 1.0f) {
          float3 _4280 = float3(dot(_27_m4[_4211]._m2.xyz, _4151), dot(_27_m4[_4211]._m3.xyz, _4151), dot(_27_m4[_4211]._m4.xyz, _4151));
          float3 _4282 = (_27_m4[_4211]._m1.xyz - _4231) / _4280;
          float3 _4285 = ((-_27_m4[_4211]._m1.xyz) - _4231) / _4280;
          bool3 _4286 = bool3(_4280.x > 0.0f.xxx.x, _4280.y > 0.0f.xxx.y, _4280.z > 0.0f.xxx.z);
          float3 _4287 = float3(_4286.x ? _4282.x : _4285.x, _4286.y ? _4282.y : _4285.y, _4286.z ? _4282.z : _4285.z);
          _4295 = _4231 + (_4280 * min(min(_4287.x, _4287.y), _4287.z));
        }
        else {
          _4295 = _4151;
        }
        float3 _4296 = normalize(_4295);
        float3 _4299 = float3(int3(sign(_4296)));
        float3 _4302 = _4296 / dot(_4296, _4299).xxx;
        float3 _4316;
        if (_4302.z < 0.0f) {
          float3 _4307 = abs(_4302);
          float2 _4314 = _4299.xy * float2(1.0f - _4307.y, 1.0f - _4307.x);
          _4316 = float3(_4314.x, _4314.y, _4302.z);
        } else {
          _4316 = _4302;
        }
        float _4341 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_4211]._m0, float4(_438, 1.0f))));
        float _4354 = clamp((min(_4247.x, min(_4247.y, _4247.z)) * _27_m4[_4211]._m6.y) + ((((((_4241 * _4241).x - ((_4244.x + _4244.y) + _4244.z)) * _27_m4[_4211]._m5.x) * _27_m4[_4211]._m5.x) * (1.0f - _27_m4[_4211]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_4211]._m6.w;
        _4200 = _4199 + ((((_22.SampleLevel(_15, float3((((_4316.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_4211]._m1.w), _4159).xyz * _27_m4[_4211]._m5.w) * ((((((clamp(abs(_4197 / _4341), 0.0f, 1.0f) * 2.0f) + _4197) / (2.0f + _4341)) - 1.0f) * _9_m23.w) + 1.0f)) * _4354) * _4202);
        _4203 = _4202 * (1.0f - _4354);
      } else {
        _4200 = _4199;
        _4203 = _4202;
      }
      _4199 = _4200;
      _4202 = _4203;
      _4204 = _4205;
      continue;
    } else {
      break;
    }
  }
  float3 _4423;
  if (_4207) {
    float3 _4362 = normalize(_4151);
    float3 _4365 = float3(int3(sign(_4362)));
    float3 _4368 = _4362 / dot(_4362, _4365).xxx;
    float3 _4382;
    if (_4368.z < 0.0f) {
      float3 _4373 = abs(_4368);
      float2 _4380 = _4365.xy * float2(1.0f - _4373.y, 1.0f - _4373.x);
      _4382 = float3(_4380.x, _4380.y, _4368.z);
    } else {
      _4382 = _4368;
    }
    float _4409 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_438, 1.0f))));
    _4423 = _4199 + ((_22.SampleLevel(_15, float3((((_4382.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _4159).xyz * ((((((clamp(abs(_4197 / _4409), 0.0f, 1.0f) * 2.0f) + _4197) / (2.0f + _4409)) - 1.0f) * _9_m23.w) + 1.0f)) * _4202);
  } else {
    _4423 = _4199;
  }
  float3 _4429 = (_4423 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _4429 *= 0.25f + (0.75f * saturate(_4197));
  }
  // RenoDX code end
  float3 _4450;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4444 = _20.SampleBias(_13, _4, _9_m16);
    float _4445 = _4444.x;
    _4450 = (_19.SampleBias(_13, _4, _9_m16).xyz * _4445) + (_4429 * (1.0f - _4445));
  }
  else {
    _4450 = _4429;
  }
  float3 _4453 = (((float3(_4131, _4136, _4141) * _532) * _9_m22.x) * _3549) + ((_4450 * (_561 + ((_536 * ((1.0f - _562) / _562)) * _561))) * _3548);
  float4 _4455 = float4(_3511.x, _3511.y, _3511.z, _720.w) + float4(_4453.x, _4453.y, _4453.z, 0.0f.xxxx.w);
  float3 _4458 = clamp(_4455.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _4473 = _468.y * _9_m46.w;
  float _4478 = max(0.00999999977648258209228515625f, _4473 + _9_m47.w);
  float3 _4492 = exp(_9_m45.xyz * ((-max(0.0f, (_495 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4478)) / _4478) * exp(_4473 + _9_m48.w))));
  float _4495 = dot(_496, _9_m44.xyz);
  float _4501 = _9_m45.w * _9_m45.w;
  float _4505 = (1.0f + _4501) - ((2.0f * _9_m45.w) * _4495);
  float3 _4833;
  float _4834;
  if (_9_m55.z > 0.0f) {
    uint3 _4659 = (uint3(int3(_404, _405, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4660 = _4659.y;
    uint _4661 = _4659.z;
    uint _4664 = _4659.x + (_4660 * _4661);
    uint _4666 = _4660 + (_4661 * _4664);
    uint _4668 = _4661 + (_4664 * _4666);
    uint _4670 = _4664 + (_4666 * _4668);
    float _4694 = dot(_496, -_7_m0[2].xyz);
    float3 _4704 = _468 - _7_m11.xyz;
    float _4706 = (_9_m55.w * ((_4694 > 5.9604644775390625e-08f) ? (1.0f / _4694) : 0.0f)) * (1.0f / _495);
    float _4707 = _4704.y;
    float _4708 = _4706 * _4707;
    float _4710 = _7_m11.y + _4708;
    float _4711 = _4707 - _4708;
    float _4713 = (1.0f - _4706) * _495;
    float _4727 = max(-127.0f, _9_m49.z * _4711);
    float _4751 = max(-127.0f, _9_m52.x * _4711);
    float _4762 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4710 - _9_m49.x)))) * ((abs(_4727) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4727)) / _4727) : (0.693147182464599609375f - (0.2402265071868896484375f * _4727)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4710 - _9_m52.z)))) * ((abs(_4751) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4751)) / _4751) : (0.693147182464599609375f - (0.2402265071868896484375f * _4751))));
    float _4784 = clamp((_495 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4787 = clamp((max(clamp(exp2(-(_4762 * _4713)), 0.0f, 1.0f), _9_m51.w) + clamp((_495 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4784, 0.0f, 1.0f);
    float4 _4827 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_13, float3((_443 + ((((float3(uint3(_4670, _4666 + (_4668 * _4670), _387) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_475 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_475 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _4829 = _4827.w;
    _4833 = _4827.xyz + (((_9_m51.xyz * (1.0f - _4787)) + (((_9_m54.xyz * pow(clamp(dot(_494, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4762 * max(_4713 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4784))) * _4829);
    _4834 = _4829 * _4787;
  } else {
    float3 _4535 = _468 - _7_m11.xyz;
    float _4537 = _4535.y;
    float _4551 = max(-127.0f, _9_m49.z * _4537);
    float _4575 = max(-127.0f, _9_m52.x * _4537);
    float _4586 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4551) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4551)) / _4551) : (0.693147182464599609375f - (0.2402265071868896484375f * _4551)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4575) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4575)) / _4575) : (0.693147182464599609375f - (0.2402265071868896484375f * _4575))));
    float _4608 = clamp((_495 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4611 = clamp((max(clamp(exp2(-(_4586 * _495)), 0.0f, 1.0f), _9_m51.w) + clamp((_495 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4608, 0.0f, 1.0f);
    _4833 = (_9_m51.xyz * (1.0f - _4611)) + (((_9_m54.xyz * pow(clamp(dot(_494, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4586 * max(_495 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4608));
    _4834 = _4611;
  }
  float3 _4837 = _4492 * _4834;
  float3 _4839 = (_4458 * _4837) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4495 * _4495)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4501) / max((12.56637096405029296875f * _4505) * sqrt(_4505), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4492)) * _4834) + _4833);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _4839 = (_4839 * 0.65f) + (_4458 * 0.35f);
  }
  // RenoDX code end
  float _4840 = dot(_4837, 0.3333333432674407958984375f.xxx);
  float4 _4841 = float4(_4839.x, _4839.y, _4839.z, _4455.w);
  _4841.w = _4840;
  float _4870 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _468) * _9_m61.z), 0.0f, 1.0f);
  float3 _4878 = lerp(_4458, _4841.xyz, min((1.0f - _4870) + ((_65.SampleLevel(_14, (_468 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _4870), 1.0f + _4840).xxx);
  _5 = float4(_4878.x, _4878.y, _4878.z, _4841.w);
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

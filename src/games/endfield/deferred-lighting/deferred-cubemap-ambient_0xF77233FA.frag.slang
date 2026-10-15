#include "./renodx_injection.hlsli"

// Ported from the native 0xF77233FA Vulkan dump.
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

static float _387;
static uint _390;

static const int2 _344[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _345[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(40, 3)]] cbuffer _8_9 : register(b40, space3) {
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

[[vk::binding(44, 3)]] ByteAddressBuffer _24 : register(t44, space3);
[[vk::binding(41, 3)]] cbuffer _25_27 : register(b41, space3) {
  float4 _27_m0 : packoffset(c0);
  float4 _27_m1 : packoffset(c1);
  float4 _27_m2 : packoffset(c2);
  float4 _27_m3 : packoffset(c3);
  _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(36, 3)]] cbuffer _28_29 : register(b36, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  float4 _29_m4 : packoffset(c4);
  uint4 _29_m5 : packoffset(c5);
  float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(37, 3)]] cbuffer _30_31 : register(b37, space3) {
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

[[vk::binding(39, 3)]] cbuffer _32_33 : register(b39, space3) {
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

[[vk::binding(43, 3)]] ByteAddressBuffer _36 : register(t43, space3);
[[vk::binding(35, 3)]] cbuffer _44_45 : register(b35, space3) {
  float4 _45_m0[15] : packoffset(c0);
  float4 _45_m1[15] : packoffset(c15);
};

[[vk::binding(42, 3)]] cbuffer _48_49 : register(b42, space3) {
  float4 _49_m0[32] : packoffset(c0);
  column_major float4x4 _49_m1[32] : packoffset(c32);
};

[[vk::binding(38, 3)]] cbuffer _55_56 : register(b38, space3) {
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
[[vk::binding(31, 3)]] Texture2D<float4> _18 : register(t31, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _21 : register(t25, space3);
[[vk::binding(12, 3)]] Texture2DArray<float4> _22 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _34 : register(t13, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _37 : register(t9, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _38 : register(t26, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _39 : register(t32, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _41 : register(t14, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _42 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _43 : register(t8, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _46 : register(t30, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _47 : register(t15, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _52 : register(t17, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _53 : register(t16, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _54 : register(t24, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _57 : register(t33, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _58 : register(t6, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _59 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _60 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _61 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _62 : register(t19, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _63 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _64 : register(t18, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _65 : register(t5, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _66 : register(t29, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _67 : register(t28, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _68 : register(t27, space3);

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
  uint2 _404 = uint2(gl_FragCoord.xy);
  int _407 = int(_404.x);
  int _408 = int(_404.y);
  int2 _410 = int3(_407, _408, 0).xy;
  float4 _412 = _66.Load(int3(_410, 0));
  float4 _414 = _67.Load(int3(_410, 0));
  float4 _416 = _68.Load(int3(_410, 0));
  float _417 = _412.x;
  float _418 = _412.y;
  uint _429 = uint(int((round(_412.w * 3.0f) * 4.0f) + round(_414.w * 3.0f)));
  float2 _432 = (_414.xy * 2.0f) - 1.0f.xx;
  float _436 = 1.0f - dot(1.0f.xx, abs(_432));
  float3 _438 = float3(_432.x, _436, _432.y);
  float3 _450;
  if (_436 < 0.0f) {
    float2 _445 = _438.xz;
    bool2 _446 = bool2(_445.x >= 0.0f.xx.x, _445.y >= 0.0f.xx.y);
    float2 _448 = (1.0f.xx - abs(_438.zx)) * float2(_446.x ? 1.0f.xx.x : (-1.0f).xx.x, _446.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _450 = float3(_448.x, _438.y, _448.y);
  } else {
    _450 = _438;
  }
  float3 _451 = normalize(_450);
  float _452 = _414.z;
  float _454 = _416.w;
  float2 _457 = float2(_404);
  float2 _462 = (_457 + 0.5f.xx) * _9_m0.zw;
  float2 _470 = gl_FragCoord.xy * _9_m0.zw;
  float2 _472 = (_470 * 2.0f) - 1.0f.xx;
  float4 _475 = float4(_472, _18.SampleLevel(_12, _462, 0.0f).x, 1.0f);
  _475.y = -_472.y;
  float4 _478 = mul(_7_m6, _475);
  float3 _482 = _478.xyz / _478.w.xxx;
  float4 _486 = float4(_482, 1.0f);
  float _489 = abs(mul(_7_m0, _486).z);
  float3 _504;
  do {
    if (_9_m4.w == 0.0f) {
      _504 = _7_m11.xyz - _482;
      break;
    } else {
      _504 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _505 = dot(_504, _504);
  float _507 = rsqrt(max(_505, 9.9999999392252902907785028219223e-09f));
  float3 _508 = _504 * _507;
  float _509 = _505 * _507;
  float3 _510 = -_508;
  bool _513 = _9_m132.x > 0.00048828125f;
  float2 _523;
  if (_513) {
    _523 = _65.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _523 = 1.0f.xx;
  }
  float _526 = min(_523.x, _523.y);
  float2 _527 = _523 * 1.0f;
  float _528 = _527.x;
  float _531 = clamp((_412.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _536;
  float _537;
  if (_513) {
    _536 = lerp(1.0f, _523.y, _531);
    _537 = lerp(1.0f, 0.0f, _531);
  } else {
    _536 = 1.0f;
    _537 = 1.0f;
  }
  float _542 = lerp(lerp(min(_536, _452), _452, _526), _452, _528);
  float3 _544 = _416.xyz * lerp(lerp(min(_537, 1.0f), 1.0f, _526), 1.0f, _528);
  float3 _545 = _544 * _417;
  float3 _546 = _544 - _545;
  float3 _550 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _417)).xxx + _545;
  float _551 = dot(_451, _508);
  float _552 = max(0.0f, _551);
  float _553 = _542 * _542;
  float _554 = _552 * _552;
  float _555 = _554 * _552;
  float2 _556 = float2(1.0f, _552);
  float2 _559 = float2(1.0f, _553);
  float _560 = _553 * _553;
  float3 _562 = float3(1.0f, _553, _560 * _553);
  float _567 = dot(mul(_556, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _559) / dot(mul(float3(1.0f, _554, _555), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _562);
  float _572 = dot(mul(_556, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _559) / dot(mul(float3(1.0f, _552, _555), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _562);
  float3 _575 = (_550 * _567) + _572.xxx;
  float _576 = _567 + _572;
  float4 _761;
  do {
    [branch] if (_31_m4 == 0) {
      _761 = 0.0f.xxxx;
      break;
    }
    float4 _596 = _37.Load(int3(_410, 0));
    float _597 = _596.x;
    float4 _760;
    if (_597 > 0.001000000047497451305389404296875f) {
      float3 _607 = reflect(_510, _451);
      float3 _608 = -_29_m0.xyz;
      float _613 = dot(_608, _607);
      float3 _615 = _607 - (_608 * _613);
      bool3 _617 = (_613 < _29_m4.z).xxx;
      float3 _625 = normalize((_608 * _29_m4.z) + ((_615 * rsqrt(max(6.103515625e-05f, dot(_615, _615)))) * _29_m4.y));
      float3 _626 = float3(_617.x ? _625.x : _607.x, _617.y ? _625.y : _607.y, _617.z ? _625.z : _607.z);
      float3 _630 = _626 + _508;
      float3 _634 = _630 * rsqrt(max(6.103515625e-05f, dot(_630, _630)));
      float _635 = clamp(dot(_626, _451), 0.0f, 1.0f);
      float _637 = clamp(dot(_451, _634), 0.0f, 1.0f);
      float _640 = clamp(_551, 0.0f, 1.0f);
      float _661 = (((_637 * _560) - _637) * _637) + 1.0f;
      float _664 = 1.0f - clamp(dot(_508, _634), 0.0f, 1.0f);
      float _665 = _664 * _664;
      float _667 = (_664 * _665) * _665;
      float _691 = 1.0f - _542;
      float _698 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_691 * (1.04997003078460693359375f + (_691 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _691))))));
      float _699 = 1.0f - _698;
      float3 _702 = _550 + ((1.0f.xxx - _550) * 0.0476190485060214996337890625f);
      float3 _742;
      do {
        [branch] if (((_429 > 0u) && (_429 <= 15u)) && (_454 > 0.0f)) {
          uint _726 = clamp(_429 - 1u, 0u, 14u);
          _742 = _42.SampleLevel(_13, float3((dot(_451, _626) * 0.5f) + 0.5f, _454 * _45_m0[_726].w, float(_726)), 0.0f).xyz;
          break;
        }
        _742 = _635.xxx;
        break;
      } while (false);
      float3 _745 = ((clamp((min(((_550 * (1.0f - _667)) + _667.xxx) * ((_560 / (_661 * _661)) * (0.5f / (((_635 * sqrt(((((-_640) * _560) + _640) * _640) + _560)) + (_640 * sqrt(((((-_635) * _560) + _635) * _635) + _560))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_702 * (((_41.SampleLevel(_13, (float2(_640, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_635, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _698) / _699)) * _702) / (1.0f.xxx - (_702 * _699)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _635) + ((_546 * 1.0f) * _742)) * _29_m1.xyz;
      float3 _758 = lerp(_745, _745 * _39.SampleBias(_13, float2(_597, 0.5f), _9_m16).xyz, (1.0f - _597).xxx) * min(_46.SampleLevel(_13, _470, 0.0f).x, 1.0f);
      _760 = float4(_758.x, _758.y, _758.z, 0.0f.xxxx.w);
    } else {
      _760 = 0.0f.xxxx;
    }
    _761 = _760;
    break;
  } while (false);
  float2 _763 = floor(_457 * 0.03125f);
  int _771 = int((_763.x + (_763.y * _31_m9)) * 8.0f);
  float _778 = floor(_489 - (_9_m3.y * _31_m15));
  float _782 = clamp(_778, 0.0f, _31_m11 - 1.0f);
  int _784 = int(_782 * 8.0f);
  float4 _790 = _38.SampleBias(_13, _462, _9_m16);
  float3 _792;
  float _795;
  _792 = 0.0f.xxx;
  _795 = 1.0f;
  float3 _793;
  float _796;
  [loop] for (int _797 = 0; _797 <= 7; _792 = _793, _795 = _796, _797++) {
    uint _818 = (_778 <= _782) ? (_24.Load(uint((_31_m2 + _771) + _797) * 4 + 0) & _24.Load(uint((_31_m3 + _784) + _797) * 4 + 0)) : 0u;
    uint _819 = uint(_797);
    float3 _823;
    _796 = _795;
    _823 = 0.0f.xxx;
    uint _826;
    float _821;
    float3 _824;
    [loop] for (uint _825 = _818; _825 != 0u; _796 = _821, _823 = _824, _825 = _826) {
      uint _830 = firstbitlow(_825);
      _826 = _825 ^ (1u << (_830 & 31u));
      int _836 = int((32u * _819) + _830) * 8;
      int _839 = _836 + 1;
      int _842 = _836 + 2;
      int _845 = _836 + 3;
      int _848 = _836 + 4;
      int _851 = _836 + 5;
      int _854 = _836 + 6;
      int _857 = _836 + 7;
      uint _861 = uint(_29_m6[_851].w);
      float _936;
      if ((_861 & 1u) == 1u) {
        uint _867 = asuint(_29_m6[_851].x);
        uint _874 = asuint(_29_m6[_851].y);
        uint _881 = asuint(_29_m6[_851].z);
        uint _888 = asuint(_29_m6[_854].x);
        uint _895 = asuint(_29_m6[_854].y);
        uint _902 = asuint(_29_m6[_854].z);
        float3 _921 = abs(mul(float4(_482 - _29_m6[_839].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_867).x, spvUnpackHalf2x16(_881).x, spvUnpackHalf2x16(_895).x, 0.0f), float4(spvUnpackHalf2x16(_867 >> 16u).x, spvUnpackHalf2x16(_881 >> 16u).x, spvUnpackHalf2x16(_895 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_874).x, spvUnpackHalf2x16(_888).x, spvUnpackHalf2x16(_902).x, 0.0f), float4(spvUnpackHalf2x16(_874 >> 16u).x, spvUnpackHalf2x16(_888 >> 16u).x, spvUnpackHalf2x16(_902 >> 16u).x, 0.0f))).xyz);
        float _928 = _29_m6[_857].x * 0.5f;
        float _934 = 1.0f - clamp((max(max(_921.x, _921.y), _921.z) - (_928 + 0.5f)) / (0.5f - _928), 0.0f, 1.0f);
        _936 = _934 * _934;
      } else {
        _936 = 1.0f;
      }
      uint _940 = uint(_29_m6[_836].w);
      bool _943 = _29_m6[_845].z > 0.5f;
      if ((false || (_936 < 0.001000000047497451305389404296875f)) || ((_940 < 4u) && _943)) {
        _821 = _796;
        _824 = _823;
        continue;
      }
      float _3574;
      float3 _3575;
      do {
        [branch] if (_940 >= 4u) {
          float3 _2197;
          do {
            float3 _962 = _29_m6[_839].xyz - _482;
            if (dot(_29_m6[_845].xyz, _962) > 0.0f) {
              _2197 = 0.0f.xxx;
              break;
            }
            float _969 = dot(_962, _962) * _29_m6[_839].w;
            float _972 = clamp(1.0f - (_969 * _969), 0.0f, 1.0f);
            float _973 = _972 * _972;
            if (_973 <= 0.0f) {
              _2197 = 0.0f.xxx;
              break;
            }
            float3 _1011;
            float _1012;
            bool _1013;
            float3 _1041;
            float3 _1043;
            float3 _1045;
            float3 _1047;
            float3 _977 = _29_m6[_842].xyz * _29_m6[_842].w;
            float3 _978 = _29_m6[_839].xyz - _977;
            float3 _979 = _29_m6[_848].xyz * _29_m6[_845].w;
            float3 _982 = _29_m6[_839].xyz + _977;
            float2 _992 = (float2(clamp(_542, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_551, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _996 = _52.SampleLevel(_13, _992, 0.0f);
            float4 _1000 = _53.SampleLevel(_13, _992, 0.0f);
            float _1395;
            do {
              _1011 = _508 - (_451 * dot(_508, _451));
              _1012 = dot(_1011, _1011);
              _1013 = _1012 > 9.9999997473787516355514526367188e-05f;
              float3 _1036;
              if (_1013) {
                _1036 = _1011 * rsqrt(_1012);
              } else {
                float _1017 = _451.z;
                float _1019 = (_1017 >= 0.0f) ? 1.0f : (-1.0f);
                float _1021 = (-1.0f) / (_1019 + _1017);
                float _1023 = _451.x;
                _1036 = float3(1.0f + (((_1019 * _1021) * _1023) * _1023), ((_1019 * _1023) * _451.y) * _1021, (-_1019) * _1023);
              }
              float3x3 _1040 = mul(float3x3(float3(_996.x, 0.0f, _996.z), float3(0.0f, 1.0f, 0.0f), float3(_996.y, 0.0f, _996.w)), float3x3(_1036, cross(_451, _1036), _451));
              _1041 = (_978 - _979) - _482;
              float3 _1042 = mul(_1040, _1041);
              _1043 = (_978 + _979) - _482;
              float3 _1044 = mul(_1040, _1043);
              _1045 = (_982 + _979) - _482;
              float3 _1046 = mul(_1040, _1045);
              _1047 = (_982 - _979) - _482;
              float3 _1048 = mul(_1040, _1047);
              float _1049 = _1042.z;
              float _1052 = _1044.z;
              float _1056 = _1046.z;
              float _1060 = _1048.z;
              int _1064 = (((int(_1049 > 0.0f) | ((_1052 > 0.0f) ? 2 : 0)) | ((_1056 > 0.0f) ? 4 : 0)) | ((_1060 > 0.0f) ? 8 : 0));
              float3 _1301;
              float3 _1302;
              float3 _1303;
              float3 _1304;
              float3 _1305;
              int _1306;
              if (_1064 == 0) {
                _1301 = _1048;
                _1302 = _1046;
                _1303 = _1044;
                _1304 = _1042;
                _1305 = 0.0f.xxx;
                _1306 = 0;
              } else {
                float3 _1295;
                float3 _1296;
                float3 _1297;
                float3 _1298;
                float3 _1299;
                int _1300;
                if (_1064 == 1) {
                  _1295 = _1048;
                  _1296 = (_1042 * (-_1060)) + (_1048 * _1049);
                  _1297 = (_1042 * (-_1052)) + (_1044 * _1049);
                  _1298 = _1042;
                  _1299 = 0.0f.xxx;
                  _1300 = 3;
                } else {
                  float3 _1281;
                  float3 _1282;
                  float3 _1283;
                  float3 _1284;
                  float3 _1285;
                  int _1286;
                  if (_1064 == 2) {
                    _1281 = _1048;
                    _1282 = (_1044 * (-_1056)) + (_1046 * _1052);
                    _1283 = _1044;
                    _1284 = (_1044 * (-_1049)) + (_1042 * _1052);
                    _1285 = 0.0f.xxx;
                    _1286 = 3;
                  } else {
                    float3 _1267;
                    float3 _1268;
                    float3 _1269;
                    float3 _1270;
                    float3 _1271;
                    int _1272;
                    if (_1064 == 3) {
                      _1267 = (_1042 * (-_1060)) + (_1048 * _1049);
                      _1268 = (_1044 * (-_1056)) + (_1046 * _1052);
                      _1269 = _1044;
                      _1270 = _1042;
                      _1271 = 0.0f.xxx;
                      _1272 = 4;
                    } else {
                      float3 _1253;
                      float3 _1254;
                      float3 _1255;
                      float3 _1256;
                      float3 _1257;
                      int _1258;
                      if (_1064 == 4) {
                        _1253 = _1048;
                        _1254 = _1046;
                        _1255 = (_1046 * (-_1052)) + (_1044 * _1056);
                        _1256 = (_1046 * (-_1060)) + (_1048 * _1056);
                        _1257 = 0.0f.xxx;
                        _1258 = 3;
                      } else {
                        float3 _1239;
                        float3 _1240;
                        float3 _1241;
                        float3 _1242;
                        float3 _1243;
                        int _1244;
                        if (_1064 == 5) {
                          _1239 = _1048;
                          _1240 = _1046;
                          _1241 = _1044;
                          _1242 = _1042;
                          _1243 = 0.0f.xxx;
                          _1244 = 0;
                        } else {
                          float3 _1233;
                          float3 _1234;
                          float3 _1235;
                          float3 _1236;
                          float3 _1237;
                          int _1238;
                          if (_1064 == 6) {
                            _1233 = (_1046 * (-_1060)) + (_1048 * _1056);
                            _1234 = _1046;
                            _1235 = _1044;
                            _1236 = (_1044 * (-_1049)) + (_1042 * _1052);
                            _1237 = 0.0f.xxx;
                            _1238 = 4;
                          } else {
                            float3 _1219;
                            float3 _1220;
                            float3 _1221;
                            float3 _1222;
                            float3 _1223;
                            int _1224;
                            if (_1064 == 7) {
                              float _1212 = -_1060;
                              _1219 = (_1046 * _1212) + (_1048 * _1056);
                              _1220 = _1046;
                              _1221 = _1044;
                              _1222 = _1042;
                              _1223 = (_1042 * _1212) + (_1048 * _1049);
                              _1224 = 5;
                            } else {
                              float3 _1206;
                              float3 _1207;
                              float3 _1208;
                              float3 _1209;
                              float3 _1210;
                              int _1211;
                              if (_1064 == 8) {
                                _1206 = _1048;
                                _1207 = _1048;
                                _1208 = (_1048 * (-_1056)) + (_1046 * _1060);
                                _1209 = (_1048 * (-_1049)) + (_1042 * _1060);
                                _1210 = 0.0f.xxx;
                                _1211 = 3;
                              } else {
                                float3 _1192;
                                float3 _1193;
                                float3 _1194;
                                float3 _1195;
                                float3 _1196;
                                int _1197;
                                if (_1064 == 9) {
                                  _1192 = _1048;
                                  _1193 = (_1048 * (-_1056)) + (_1046 * _1060);
                                  _1194 = (_1042 * (-_1052)) + (_1044 * _1049);
                                  _1195 = _1042;
                                  _1196 = 0.0f.xxx;
                                  _1197 = 4;
                                } else {
                                  float3 _1178;
                                  float3 _1179;
                                  float3 _1180;
                                  float3 _1181;
                                  float3 _1182;
                                  int _1183;
                                  if (_1064 == 10) {
                                    _1178 = _1048;
                                    _1179 = _1046;
                                    _1180 = _1044;
                                    _1181 = _1042;
                                    _1182 = 0.0f.xxx;
                                    _1183 = 0;
                                  } else {
                                    float3 _1172;
                                    float3 _1173;
                                    float3 _1174;
                                    float3 _1175;
                                    float3 _1176;
                                    int _1177;
                                    if (_1064 == 11) {
                                      float _1165 = -_1056;
                                      _1172 = (_1048 * _1165) + (_1046 * _1060);
                                      _1173 = (_1044 * _1165) + (_1046 * _1052);
                                      _1174 = _1044;
                                      _1175 = _1042;
                                      _1176 = _1048;
                                      _1177 = 5;
                                    } else {
                                      float3 _1159;
                                      float3 _1160;
                                      float3 _1161;
                                      float3 _1162;
                                      float3 _1163;
                                      int _1164;
                                      if (_1064 == 12) {
                                        _1159 = _1048;
                                        _1160 = _1046;
                                        _1161 = (_1046 * (-_1052)) + (_1044 * _1056);
                                        _1162 = (_1048 * (-_1049)) + (_1042 * _1060);
                                        _1163 = 0.0f.xxx;
                                        _1164 = 4;
                                      } else {
                                        bool _1117 = _1064 == 13;
                                        float3 _1144;
                                        float3 _1145;
                                        float3 _1146;
                                        float3 _1147;
                                        int _1148;
                                        if (_1117) {
                                          float _1137 = -_1052;
                                          _1144 = (_1046 * _1137) + (_1044 * _1056);
                                          _1145 = (_1042 * _1137) + (_1044 * _1049);
                                          _1146 = _1042;
                                          _1147 = _1048;
                                          _1148 = 5;
                                        } else {
                                          float3 _1134;
                                          float3 _1135;
                                          int _1136;
                                          if (_1064 == 14) {
                                            float _1127 = -_1049;
                                            _1134 = (_1044 * _1127) + (_1042 * _1052);
                                            _1135 = (_1048 * _1127) + (_1042 * _1060);
                                            _1136 = 5;
                                          } else {
                                            _1134 = _1042;
                                            _1135 = 0.0f.xxx;
                                            _1136 = (_1064 == 15) ? 4 : 0;
                                          }
                                          _1144 = _1046;
                                          _1145 = _1044;
                                          _1146 = _1134;
                                          _1147 = _1135;
                                          _1148 = _1136;
                                        }
                                        bool3 _1149 = _1117.xxx;
                                        _1159 = float3(_1149.x ? _1046.x : _1048.x, _1149.y ? _1046.y : _1048.y, _1149.z ? _1046.z : _1048.z);
                                        _1160 = _1144;
                                        _1161 = _1145;
                                        _1162 = _1146;
                                        _1163 = _1147;
                                        _1164 = _1148;
                                      }
                                      _1172 = _1159;
                                      _1173 = _1160;
                                      _1174 = _1161;
                                      _1175 = _1162;
                                      _1176 = _1163;
                                      _1177 = _1164;
                                    }
                                    _1178 = _1172;
                                    _1179 = _1173;
                                    _1180 = _1174;
                                    _1181 = _1175;
                                    _1182 = _1176;
                                    _1183 = _1177;
                                  }
                                  _1192 = _1178;
                                  _1193 = _1179;
                                  _1194 = _1180;
                                  _1195 = _1181;
                                  _1196 = _1182;
                                  _1197 = _1183;
                                }
                                _1206 = _1192;
                                _1207 = _1193;
                                _1208 = _1194;
                                _1209 = _1195;
                                _1210 = _1196;
                                _1211 = _1197;
                              }
                              _1219 = _1206;
                              _1220 = _1207;
                              _1221 = _1208;
                              _1222 = _1209;
                              _1223 = _1210;
                              _1224 = _1211;
                            }
                            _1233 = _1219;
                            _1234 = _1220;
                            _1235 = _1221;
                            _1236 = _1222;
                            _1237 = _1223;
                            _1238 = _1224;
                          }
                          _1239 = _1233;
                          _1240 = _1234;
                          _1241 = _1235;
                          _1242 = _1236;
                          _1243 = _1237;
                          _1244 = _1238;
                        }
                        _1253 = _1239;
                        _1254 = _1240;
                        _1255 = _1241;
                        _1256 = _1242;
                        _1257 = _1243;
                        _1258 = _1244;
                      }
                      _1267 = _1253;
                      _1268 = _1254;
                      _1269 = _1255;
                      _1270 = _1256;
                      _1271 = _1257;
                      _1272 = _1258;
                    }
                    _1281 = _1267;
                    _1282 = _1268;
                    _1283 = _1269;
                    _1284 = _1270;
                    _1285 = _1271;
                    _1286 = _1272;
                  }
                  _1295 = _1281;
                  _1296 = _1282;
                  _1297 = _1283;
                  _1298 = _1284;
                  _1299 = _1285;
                  _1300 = _1286;
                }
                _1301 = _1295;
                _1302 = _1296;
                _1303 = _1297;
                _1304 = _1298;
                _1305 = _1299;
                _1306 = _1300;
              }
              bool3 _1308 = (_1306 == 3).xxx;
              bool3 _1311 = (_1306 == 4).xxx;
              if (_1306 == 0) {
                _1395 = 0.0f;
                break;
              }
              float3 _1316 = normalize(_1304);
              float3 _1317 = normalize(_1303);
              float3 _1318 = normalize(_1302);
              float3 _1319 = normalize(float3(_1308.x ? _1304.x : _1301.x, _1308.y ? _1304.y : _1301.y, _1308.z ? _1304.z : _1301.z));
              float3 _1320 = normalize(float3(_1311.x ? _1304.x : _1305.x, _1311.y ? _1304.y : _1305.y, _1311.z ? _1304.z : _1305.z));
              float _1322 = clamp(dot(_1316, _1317), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1326 = sqrt(1.0f - (_1322 * _1322));
              float _1334 = clamp(dot(_1317, _1318), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1338 = sqrt(1.0f - (_1334 * _1334));
              float _1347 = clamp(dot(_1318, _1319), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1351 = sqrt(1.0f - (_1347 * _1347));
              float _1358 = ((cross(_1316, _1317).z * ((_1326 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1322) / _1326))) + (cross(_1317, _1318).z * ((_1338 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1334) / _1338)))) + (cross(_1318, _1319).z * ((_1351 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1347) / _1351)));
              float _1375;
              if (_1306 >= 4) {
                float _1363 = clamp(dot(_1319, _1320), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1367 = sqrt(1.0f - (_1363 * _1363));
                _1375 = _1358 + (cross(_1319, _1320).z * ((_1367 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1363) / _1367)));
              } else {
                _1375 = _1358;
              }
              float _1392;
              if (_1306 == 5) {
                float _1380 = clamp(dot(_1320, _1316), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1384 = sqrt(1.0f - (_1380 * _1380));
                _1392 = _1375 + (cross(_1320, _1316).z * ((_1384 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1380) / _1384)));
              } else {
                _1392 = _1375;
              }
              _1395 = max(_1392, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1783;
            do {
              float3 _1429;
              if (_1013) {
                _1429 = _1011 * rsqrt(_1012);
              } else {
                float _1410 = _451.z;
                float _1412 = (_1410 >= 0.0f) ? 1.0f : (-1.0f);
                float _1414 = (-1.0f) / (_1412 + _1410);
                float _1416 = _451.x;
                _1429 = float3(1.0f + (((_1412 * _1414) * _1416) * _1416), ((_1412 * _1416) * _451.y) * _1414, (-_1412) * _1416);
              }
              float3x3 _1432 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1429, cross(_451, _1429), _451));
              float3 _1433 = mul(_1432, _1041);
              float3 _1434 = mul(_1432, _1043);
              float3 _1435 = mul(_1432, _1045);
              float3 _1436 = mul(_1432, _1047);
              float _1437 = _1433.z;
              float _1440 = _1434.z;
              float _1444 = _1435.z;
              float _1448 = _1436.z;
              int _1452 = (((int(_1437 > 0.0f) | ((_1440 > 0.0f) ? 2 : 0)) | ((_1444 > 0.0f) ? 4 : 0)) | ((_1448 > 0.0f) ? 8 : 0));
              float3 _1689;
              float3 _1690;
              float3 _1691;
              float3 _1692;
              float3 _1693;
              int _1694;
              if (_1452 == 0) {
                _1689 = _1436;
                _1690 = _1435;
                _1691 = _1434;
                _1692 = _1433;
                _1693 = 0.0f.xxx;
                _1694 = 0;
              } else {
                float3 _1683;
                float3 _1684;
                float3 _1685;
                float3 _1686;
                float3 _1687;
                int _1688;
                if (_1452 == 1) {
                  _1683 = _1436;
                  _1684 = (_1433 * (-_1448)) + (_1436 * _1437);
                  _1685 = (_1433 * (-_1440)) + (_1434 * _1437);
                  _1686 = _1433;
                  _1687 = 0.0f.xxx;
                  _1688 = 3;
                } else {
                  float3 _1669;
                  float3 _1670;
                  float3 _1671;
                  float3 _1672;
                  float3 _1673;
                  int _1674;
                  if (_1452 == 2) {
                    _1669 = _1436;
                    _1670 = (_1434 * (-_1444)) + (_1435 * _1440);
                    _1671 = _1434;
                    _1672 = (_1434 * (-_1437)) + (_1433 * _1440);
                    _1673 = 0.0f.xxx;
                    _1674 = 3;
                  } else {
                    float3 _1655;
                    float3 _1656;
                    float3 _1657;
                    float3 _1658;
                    float3 _1659;
                    int _1660;
                    if (_1452 == 3) {
                      _1655 = (_1433 * (-_1448)) + (_1436 * _1437);
                      _1656 = (_1434 * (-_1444)) + (_1435 * _1440);
                      _1657 = _1434;
                      _1658 = _1433;
                      _1659 = 0.0f.xxx;
                      _1660 = 4;
                    } else {
                      float3 _1641;
                      float3 _1642;
                      float3 _1643;
                      float3 _1644;
                      float3 _1645;
                      int _1646;
                      if (_1452 == 4) {
                        _1641 = _1436;
                        _1642 = _1435;
                        _1643 = (_1435 * (-_1440)) + (_1434 * _1444);
                        _1644 = (_1435 * (-_1448)) + (_1436 * _1444);
                        _1645 = 0.0f.xxx;
                        _1646 = 3;
                      } else {
                        float3 _1627;
                        float3 _1628;
                        float3 _1629;
                        float3 _1630;
                        float3 _1631;
                        int _1632;
                        if (_1452 == 5) {
                          _1627 = _1436;
                          _1628 = _1435;
                          _1629 = _1434;
                          _1630 = _1433;
                          _1631 = 0.0f.xxx;
                          _1632 = 0;
                        } else {
                          float3 _1621;
                          float3 _1622;
                          float3 _1623;
                          float3 _1624;
                          float3 _1625;
                          int _1626;
                          if (_1452 == 6) {
                            _1621 = (_1435 * (-_1448)) + (_1436 * _1444);
                            _1622 = _1435;
                            _1623 = _1434;
                            _1624 = (_1434 * (-_1437)) + (_1433 * _1440);
                            _1625 = 0.0f.xxx;
                            _1626 = 4;
                          } else {
                            float3 _1607;
                            float3 _1608;
                            float3 _1609;
                            float3 _1610;
                            float3 _1611;
                            int _1612;
                            if (_1452 == 7) {
                              float _1600 = -_1448;
                              _1607 = (_1435 * _1600) + (_1436 * _1444);
                              _1608 = _1435;
                              _1609 = _1434;
                              _1610 = _1433;
                              _1611 = (_1433 * _1600) + (_1436 * _1437);
                              _1612 = 5;
                            } else {
                              float3 _1594;
                              float3 _1595;
                              float3 _1596;
                              float3 _1597;
                              float3 _1598;
                              int _1599;
                              if (_1452 == 8) {
                                _1594 = _1436;
                                _1595 = _1436;
                                _1596 = (_1436 * (-_1444)) + (_1435 * _1448);
                                _1597 = (_1436 * (-_1437)) + (_1433 * _1448);
                                _1598 = 0.0f.xxx;
                                _1599 = 3;
                              } else {
                                float3 _1580;
                                float3 _1581;
                                float3 _1582;
                                float3 _1583;
                                float3 _1584;
                                int _1585;
                                if (_1452 == 9) {
                                  _1580 = _1436;
                                  _1581 = (_1436 * (-_1444)) + (_1435 * _1448);
                                  _1582 = (_1433 * (-_1440)) + (_1434 * _1437);
                                  _1583 = _1433;
                                  _1584 = 0.0f.xxx;
                                  _1585 = 4;
                                } else {
                                  float3 _1566;
                                  float3 _1567;
                                  float3 _1568;
                                  float3 _1569;
                                  float3 _1570;
                                  int _1571;
                                  if (_1452 == 10) {
                                    _1566 = _1436;
                                    _1567 = _1435;
                                    _1568 = _1434;
                                    _1569 = _1433;
                                    _1570 = 0.0f.xxx;
                                    _1571 = 0;
                                  } else {
                                    float3 _1560;
                                    float3 _1561;
                                    float3 _1562;
                                    float3 _1563;
                                    float3 _1564;
                                    int _1565;
                                    if (_1452 == 11) {
                                      float _1553 = -_1444;
                                      _1560 = (_1436 * _1553) + (_1435 * _1448);
                                      _1561 = (_1434 * _1553) + (_1435 * _1440);
                                      _1562 = _1434;
                                      _1563 = _1433;
                                      _1564 = _1436;
                                      _1565 = 5;
                                    } else {
                                      float3 _1547;
                                      float3 _1548;
                                      float3 _1549;
                                      float3 _1550;
                                      float3 _1551;
                                      int _1552;
                                      if (_1452 == 12) {
                                        _1547 = _1436;
                                        _1548 = _1435;
                                        _1549 = (_1435 * (-_1440)) + (_1434 * _1444);
                                        _1550 = (_1436 * (-_1437)) + (_1433 * _1448);
                                        _1551 = 0.0f.xxx;
                                        _1552 = 4;
                                      } else {
                                        bool _1505 = _1452 == 13;
                                        float3 _1532;
                                        float3 _1533;
                                        float3 _1534;
                                        float3 _1535;
                                        int _1536;
                                        if (_1505) {
                                          float _1525 = -_1440;
                                          _1532 = (_1435 * _1525) + (_1434 * _1444);
                                          _1533 = (_1433 * _1525) + (_1434 * _1437);
                                          _1534 = _1433;
                                          _1535 = _1436;
                                          _1536 = 5;
                                        } else {
                                          float3 _1522;
                                          float3 _1523;
                                          int _1524;
                                          if (_1452 == 14) {
                                            float _1515 = -_1437;
                                            _1522 = (_1434 * _1515) + (_1433 * _1440);
                                            _1523 = (_1436 * _1515) + (_1433 * _1448);
                                            _1524 = 5;
                                          } else {
                                            _1522 = _1433;
                                            _1523 = 0.0f.xxx;
                                            _1524 = (_1452 == 15) ? 4 : 0;
                                          }
                                          _1532 = _1435;
                                          _1533 = _1434;
                                          _1534 = _1522;
                                          _1535 = _1523;
                                          _1536 = _1524;
                                        }
                                        bool3 _1537 = _1505.xxx;
                                        _1547 = float3(_1537.x ? _1435.x : _1436.x, _1537.y ? _1435.y : _1436.y, _1537.z ? _1435.z : _1436.z);
                                        _1548 = _1532;
                                        _1549 = _1533;
                                        _1550 = _1534;
                                        _1551 = _1535;
                                        _1552 = _1536;
                                      }
                                      _1560 = _1547;
                                      _1561 = _1548;
                                      _1562 = _1549;
                                      _1563 = _1550;
                                      _1564 = _1551;
                                      _1565 = _1552;
                                    }
                                    _1566 = _1560;
                                    _1567 = _1561;
                                    _1568 = _1562;
                                    _1569 = _1563;
                                    _1570 = _1564;
                                    _1571 = _1565;
                                  }
                                  _1580 = _1566;
                                  _1581 = _1567;
                                  _1582 = _1568;
                                  _1583 = _1569;
                                  _1584 = _1570;
                                  _1585 = _1571;
                                }
                                _1594 = _1580;
                                _1595 = _1581;
                                _1596 = _1582;
                                _1597 = _1583;
                                _1598 = _1584;
                                _1599 = _1585;
                              }
                              _1607 = _1594;
                              _1608 = _1595;
                              _1609 = _1596;
                              _1610 = _1597;
                              _1611 = _1598;
                              _1612 = _1599;
                            }
                            _1621 = _1607;
                            _1622 = _1608;
                            _1623 = _1609;
                            _1624 = _1610;
                            _1625 = _1611;
                            _1626 = _1612;
                          }
                          _1627 = _1621;
                          _1628 = _1622;
                          _1629 = _1623;
                          _1630 = _1624;
                          _1631 = _1625;
                          _1632 = _1626;
                        }
                        _1641 = _1627;
                        _1642 = _1628;
                        _1643 = _1629;
                        _1644 = _1630;
                        _1645 = _1631;
                        _1646 = _1632;
                      }
                      _1655 = _1641;
                      _1656 = _1642;
                      _1657 = _1643;
                      _1658 = _1644;
                      _1659 = _1645;
                      _1660 = _1646;
                    }
                    _1669 = _1655;
                    _1670 = _1656;
                    _1671 = _1657;
                    _1672 = _1658;
                    _1673 = _1659;
                    _1674 = _1660;
                  }
                  _1683 = _1669;
                  _1684 = _1670;
                  _1685 = _1671;
                  _1686 = _1672;
                  _1687 = _1673;
                  _1688 = _1674;
                }
                _1689 = _1683;
                _1690 = _1684;
                _1691 = _1685;
                _1692 = _1686;
                _1693 = _1687;
                _1694 = _1688;
              }
              bool3 _1696 = (_1694 == 3).xxx;
              bool3 _1699 = (_1694 == 4).xxx;
              if (_1694 == 0) {
                _1783 = 0.0f;
                break;
              }
              float3 _1704 = normalize(_1692);
              float3 _1705 = normalize(_1691);
              float3 _1706 = normalize(_1690);
              float3 _1707 = normalize(float3(_1696.x ? _1692.x : _1689.x, _1696.y ? _1692.y : _1689.y, _1696.z ? _1692.z : _1689.z));
              float3 _1708 = normalize(float3(_1699.x ? _1692.x : _1693.x, _1699.y ? _1692.y : _1693.y, _1699.z ? _1692.z : _1693.z));
              float _1710 = clamp(dot(_1704, _1705), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1714 = sqrt(1.0f - (_1710 * _1710));
              float _1722 = clamp(dot(_1705, _1706), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1726 = sqrt(1.0f - (_1722 * _1722));
              float _1735 = clamp(dot(_1706, _1707), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1739 = sqrt(1.0f - (_1735 * _1735));
              float _1746 = ((cross(_1704, _1705).z * ((_1714 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1710) / _1714))) + (cross(_1705, _1706).z * ((_1726 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1722) / _1726)))) + (cross(_1706, _1707).z * ((_1739 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1735) / _1739)));
              float _1763;
              if (_1694 >= 4) {
                float _1751 = clamp(dot(_1707, _1708), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1755 = sqrt(1.0f - (_1751 * _1751));
                _1763 = _1746 + (cross(_1707, _1708).z * ((_1755 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1751) / _1755)));
              } else {
                _1763 = _1746;
              }
              float _1780;
              if (_1694 == 5) {
                float _1768 = clamp(dot(_1708, _1704), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1772 = sqrt(1.0f - (_1768 * _1768));
                _1780 = _1763 + (cross(_1708, _1704).z * ((_1772 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1768) / _1772)));
              } else {
                _1780 = _1763;
              }
              _1783 = max(_1780, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1786 = (_861 & 2u) != 0u;
            uint _1790 = asuint(_29_m6[_848].w);
            uint _1791 = asuint(_29_m6[_854].w);
            float3 _1792 = _482 - _29_m6[_839].xyz;
            float3 _1793 = abs(_1792);
            float _1794 = _1793.x;
            float _1795 = _1793.y;
            float _1797 = _1793.z;
            int _1830;
            if ((_1794 > _1795) && (_1794 > _1797)) {
              _1830 = int((_1792.x > 0.0f) ? (_1790 & 1023u) : ((_1790 >> 10u) & 1023u));
            } else {
              int _1822;
              if (_1795 > _1797) {
                _1822 = int((_1792.y > 0.0f) ? ((_1790 >> 20u) & 1023u) : (_1791 & 1023u));
              } else {
                _1822 = int((_1792.z > 0.0f) ? ((_1791 >> 10u) & 1023u) : ((_1791 >> 20u) & 1023u));
              }
              _1830 = _1822;
            }
            int _1833 = _1786 ? int(_29_m6[_848].w) : ((_1830 == 1023) ? (-1) : _1830);
            uint _1842 = uint(_1833);
            uint _1844 = asuint(_33_m11.x) + (_1842 * 96u);
            uint _1846 = (_1844 + 64u) >> 2u;
            uint _1849 = _1846 + 1u;
            uint _1852 = _1846 + 2u;
            uint _1855 = _1846 + 3u;
            float4 _1859 = asfloat(uint4(_36.Load(_1846 * 4 + 0), _36.Load(_1849 * 4 + 0), _36.Load(_1852 * 4 + 0), _36.Load(_1855 * 4 + 0)));
            float _2191;
            do {
              uint _1875 = ((asuint(_33_m11.y) + (_1842 * 16u)) >> 2u) + 1u;
              if (_36.Load(_1875 * 4 + 0) > 0u) {
                float4 _400 = _790;
                float _1890;
                do {
                  if (_36.Load(_1875 * 4 + 0) == 0u) {
                    _1890 = 1.0f;
                    break;
                  }
                  _1890 = _400[_36.Load(_1875 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2191 = _1890;
                break;
              }
              uint _1891 = _1844 >> 2u;
              uint _1906 = (_1844 + 16u) >> 2u;
              uint _1921 = (_1844 + 32u) >> 2u;
              uint _1936 = (_1844 + 48u) >> 2u;
              float4 _1956 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_1891 * 4 + 0), _36.Load((_1891 + 1u) * 4 + 0), _36.Load((_1891 + 2u) * 4 + 0), _36.Load((_1891 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1906 * 4 + 0), _36.Load((_1906 + 1u) * 4 + 0), _36.Load((_1906 + 2u) * 4 + 0), _36.Load((_1906 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1921 * 4 + 0), _36.Load((_1921 + 1u) * 4 + 0), _36.Load((_1921 + 2u) * 4 + 0), _36.Load((_1921 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1936 * 4 + 0), _36.Load((_1936 + 1u) * 4 + 0), _36.Load((_1936 + 2u) * 4 + 0), _36.Load((_1936 + 3u) * 4 + 0))))), float4((_482 - ((_1792 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1792, _1792)))) * _1859.x)) + (_451 * (_1859.y * 5.0f)), 1.0f));
              float3 _1960 = _1956.xyz / _1956.w.xxx;
              uint _1962 = (_1844 + 80u) >> 2u;
              float4 _1975 = asfloat(uint4(_36.Load(_1962 * 4 + 0), _36.Load((_1962 + 1u) * 4 + 0), _36.Load((_1962 + 2u) * 4 + 0), _36.Load((_1962 + 3u) * 4 + 0)));
              float2 _1976 = _1960.xy;
              float2 _1978 = _1975.xy;
              float3 _1982 = _1960.xyz;
              bool3 _1983 = bool3(_1982.x <= 0.0f.xxx.x, _1982.y <= 0.0f.xxx.y, _1982.z <= 0.0f.xxx.z);
              bool3 _1984 = bool3(_1982.x >= 1.0f.xxx.x, _1982.y >= 1.0f.xxx.y, _1982.z >= 1.0f.xxx.z);
              float _1987 = _1960.z;
              float2 _1998 = ((_1976 * (_1975.zw - _1978)) + _1978).xy * _33_m10.zw;
              float2 _2000 = floor(_1998 + 0.5f.xx);
              float2 _2001 = _1998 - _2000;
              float _2002 = _2001.x;
              float _2003 = _2002 + 0.5f;
              float _2004 = _2003 * _2003;
              float _2007 = 1.0f - _2002;
              float _2008 = min(_2002, 0.0f);
              float _2011 = _2002 + 1.0f;
              float _2012 = max(_2002, 0.0f);
              float _2023 = _2001.y;
              float _2024 = _2023 + 0.5f;
              float _2025 = _2024 * _2024;
              float _2028 = 1.0f - _2023;
              float _2029 = min(_2023, 0.0f);
              float _2032 = _2023 + 1.0f;
              float _2033 = max(_2023, 0.0f);
              float3 _2045 = float3(0.1599999964237213134765625f * _2007, 0.1599999964237213134765625f * ((_2011 - (_2012 * _2012)) + 1.0f), _2004 * 0.07999999821186065673828125f);
              float3 _2046 = float3(0.1599999964237213134765625f * ((_2004 * 0.5f) - _2002), 0.1599999964237213134765625f * ((_2007 - (_2008 * _2008)) + 1.0f), 0.1599999964237213134765625f * _2011) + _2045;
              float3 _2048 = float3(0.1599999964237213134765625f * _2028, 0.1599999964237213134765625f * ((_2032 - (_2033 * _2033)) + 1.0f), _2025 * 0.07999999821186065673828125f);
              float3 _2049 = float3(0.1599999964237213134765625f * ((_2025 * 0.5f) - _2023), 0.1599999964237213134765625f * ((_2028 - (_2029 * _2029)) + 1.0f), 0.1599999964237213134765625f * _2032) + _2048;
              float3 _2055 = ((_2045 / _2046) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _2057 = ((_2048 / _2049) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _2059 = _2000 * _33_m10.xy;
              float _2060 = _2055.x;
              float _2061 = _2057.x;
              float _2064 = _2055.y;
              float _2067 = _2055.z;
              float _2070 = _2057.y;
              float _2077 = _2057.z;
              float _2084 = _2046.x;
              float _2085 = _2049.x;
              float _2087 = _2046.y;
              float _2089 = _2046.z;
              float _2091 = _2049.y;
              float _2095 = _2049.z;
              float _2153 = (((((((_2084 * _2085) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2060, _2061), _387).xy, _1987)) + ((_2087 * _2085) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2064, _2061), _387).xy, _1987))) + ((_2089 * _2085) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2067, _2061), _387).xy, _1987))) + ((_2084 * _2091) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2060, _2070), _387).xy, _1987))) + ((_2087 * _2091) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2064, _2070), _387).xy, _1987))) + ((_2089 * _2091) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2067, _2070), _387).xy, _1987))) + ((_2084 * _2095) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2060, _2077), _387).xy, _1987));
              float4 _2176 = asfloat(uint4(_36.Load(_1846 * 4 + 0), _36.Load(_1849 * 4 + 0), _36.Load(_1852 * 4 + 0), _36.Load(_1855 * 4 + 0)));
              float _2177 = _2176.w;
              float2 _2179 = min(_1976, 1.0f.xx - _1976);
              _2191 = lerp(1.0f, (any(bool3(_1983.x || _1984.x, _1983.y || _1984.y, _1983.z || _1984.z)) || ((asuint(_1987) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2153 + ((_2087 * _2095) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2064, _2077), _387).xy, _1987))) + ((_2089 * _2095) * _34.SampleCmpLevelZero(_16, float3(_2059 + float2(_2067, _2077), _387).xy, _1987))), _1786 ? min(_2177, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2176.z - _1956.w) * 0.25f, min(_2179.x, _2179.y)))) : _2177);
              break;
            } while (false);
            _2197 = ((_29_m6[_836].xyz * (((((_550 * _1000.x) + ((1.0f.xxx - _550) * _1000.y)) * _1395) * _29_m6[_857].z) + (_546 * _1783))) * _973) * ((_1833 >= 0) ? _2191 : 1.0f);
            break;
          } while (false);
          _3574 = _796;
          _3575 = _2197 * _936;
          break;
        }
        float _3572;
        float3 _3573;
        if (_29_m6[_836].w < 1.5f) {
          float3 _2802 = float3(0.100000001490116119384765625f, _542, 1.0f);
          float _2811 = (0.5f + (0.5f * _29_m6[_842].y)) - abs(_29_m6[_842].x);
          float _2812 = _29_m6[_842].y - _2811;
          float _2819 = abs(max((1.0f - abs(_2811)) - abs(_2812), 0.00048828125f));
          float3 _2823 = normalize(float3(_2811, _2812, (_29_m6[_842].x >= 0.0f) ? _2819 : (-_2819)));
          float3 _2824 = _29_m6[_839].xyz - _482;
          float _2825 = dot(_2824, _2824);
          float _2826 = rsqrt(_2825);
          float3 _2827 = _2824 * _2826;
          float _2831 = clamp(_29_m6[_857].y * _2826, 0.0f, 1.0f);
          int _2836 = int(_29_m6[_857].w);
          float3 _2837 = _2823 * _29_m6[_842].z;
          float3 _2838 = _2837 * 0.5f;
          float3 _2839 = _2824 - _2838;
          float3 _2840 = _2824 + _2838;
          bool _2842 = (_940 & 1u) == 0u;
          bool _2845 = _2842 || ((_861 & 2u) != 0u);
          bool _2848 = (!_2842) && (_29_m6[_842].z > 0.0f);
          float _2867;
          float _2868;
          if (_2848) {
            float _2852 = length(_2839);
            float _2853 = length(_2840);
            _2867 = clamp(0.5f * ((dot(_451, _2839) / _2852) + (dot(_451, _2840) / _2853)), 0.0f, 1.0f);
            _2868 = 1.0f / ((((_2852 * _2853) + dot(_2839, _2840)) * 0.5f) + 1.0f);
          } else {
            _2867 = clamp(dot(_451, _2827), 0.0f, 1.0f);
            _2868 = 1.0f;
          }
          float _2890;
          if (_29_m6[_854].w < 0.0f) {
            float _2884 = _2825 * (_29_m6[_839].w * _29_m6[_839].w);
            float _2887 = clamp(1.0f - (_2884 * _2884), 0.0f, 1.0f);
            _2890 = lerp(1.0f / (_2825 + 1.0f), _2868, float(_2848)) * (_2887 * _2887);
          } else {
            float3 _2873 = _2824 * _29_m6[_839].w;
            _2890 = _2868 * pow(1.0f - clamp(dot(_2873, _2873), 0.0f, 1.0f), _29_m6[_854].w);
          }
          float _2896 = clamp((dot(_2827, -_2823) - _29_m6[_842].z) * _29_m6[_842].w, 0.0f, 1.0f);
          float _2900 = _2890 * lerp(1.0f, _2896 * _2896, float(_2842));
          float _3000;
          if ((!_2848) && (_2836 >= 0)) {
            uint _2906 = uint(_2836);
            float2 _2993;
            [branch] if (_2842) {
              float4 _2983 = mul(_49_m1[_2906], _486);
              _2993 = _49_m0[_2906].xy + (clamp(_2983.xy / _2983.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_2906].zw);
            }
            else {
              float3 _2920 = mul(float4(-_2824, 0.0f), _49_m1[_2906]).xyz;
              float3 _395 = _2920;
              float3 _394 = _2920;
              float3 _393 = abs(_2920);
              uint _2929 = uint(int(_393.y > _393.x));
              uint _2935 = (_393.z > _393[_2929]) ? 2u : _2929;
              uint _2941 = (_2935 * 2u) + uint(_394[_2935] < 0.0f);
              float _2945 = abs(_395[_2941 / 2u]);
              float _2965 = 0.5f - (0.000244140625f / _49_m0[_2906].w);
              _2993 = _49_m0[_2906].xy + (clamp(float2((float(_2941) + ((((_395[uint(_344[_2941].x)] * _345[_2941].x) / _2945) * _2965) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_395[uint(_344[_2941].y)] * _345[_2941].y) / _2945) * _2965)), 0.0f.xx, 1.0f.xx) * _49_m0[_2906].zw);
            }
            _3000 = _2900 * _47.SampleLevel(_13, _2993, 0.0f).x;
          } else {
            _3000 = _2900;
          }
          bool _3001 = _3000 > 0.0f;
          float _3410;
          if (_3001) {
            int _3054;
            if (_2845) {
              _3054 = int(_29_m6[_845].x);
            } else {
              uint _3009 = asuint(_29_m6[_842].w);
              uint _3010 = asuint(_29_m6[_845].x);
              float3 _3011 = _482 - _29_m6[_839].xyz;
              float3 _3012 = abs(_3011);
              float _3013 = _3012.x;
              float _3014 = _3012.y;
              float _3016 = _3012.z;
              int _3049;
              if ((_3013 > _3014) && (_3013 > _3016)) {
                _3049 = int((_3011.x > 0.0f) ? (_3009 & 1023u) : ((_3009 >> 10u) & 1023u));
              } else {
                int _3041;
                if (_3014 > _3016) {
                  _3041 = int((_3011.y > 0.0f) ? ((_3009 >> 20u) & 1023u) : (_3010 & 1023u));
                } else {
                  _3041 = int((_3011.z > 0.0f) ? ((_3010 >> 10u) & 1023u) : ((_3010 >> 20u) & 1023u));
                }
                _3049 = _3041;
              }
              _3054 = (_3049 == 1023) ? (-1) : _3049;
            }
            uint _3059 = uint(_3054);
            uint _3061 = asuint(_33_m11.x) + (_3059 * 96u);
            uint _3063 = (_3061 + 64u) >> 2u;
            uint _3066 = _3063 + 1u;
            uint _3069 = _3063 + 2u;
            uint _3072 = _3063 + 3u;
            float4 _3076 = asfloat(uint4(_36.Load(_3063 * 4 + 0), _36.Load(_3066 * 4 + 0), _36.Load(_3069 * 4 + 0), _36.Load(_3072 * 4 + 0)));
            float _3408;
            do {
              uint _3092 = ((asuint(_33_m11.y) + (_3059 * 16u)) >> 2u) + 1u;
              if (_36.Load(_3092 * 4 + 0) > 0u) {
                float4 _392 = _790;
                float _3107;
                do {
                  if (_36.Load(_3092 * 4 + 0) == 0u) {
                    _3107 = 1.0f;
                    break;
                  }
                  _3107 = _392[_36.Load(_3092 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3408 = _3107;
                break;
              }
              uint _3108 = _3061 >> 2u;
              uint _3123 = (_3061 + 16u) >> 2u;
              uint _3138 = (_3061 + 32u) >> 2u;
              uint _3153 = (_3061 + 48u) >> 2u;
              float4 _3173 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_3108 * 4 + 0), _36.Load((_3108 + 1u) * 4 + 0), _36.Load((_3108 + 2u) * 4 + 0), _36.Load((_3108 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3123 * 4 + 0), _36.Load((_3123 + 1u) * 4 + 0), _36.Load((_3123 + 2u) * 4 + 0), _36.Load((_3123 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3138 * 4 + 0), _36.Load((_3138 + 1u) * 4 + 0), _36.Load((_3138 + 2u) * 4 + 0), _36.Load((_3138 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3153 * 4 + 0), _36.Load((_3153 + 1u) * 4 + 0), _36.Load((_3153 + 2u) * 4 + 0), _36.Load((_3153 + 3u) * 4 + 0))))), float4((_482 - ((-_2827) * _3076.x)) + (_451 * (_3076.y * 5.0f)), 1.0f));
              float3 _3177 = _3173.xyz / _3173.w.xxx;
              uint _3179 = (_3061 + 80u) >> 2u;
              float4 _3192 = asfloat(uint4(_36.Load(_3179 * 4 + 0), _36.Load((_3179 + 1u) * 4 + 0), _36.Load((_3179 + 2u) * 4 + 0), _36.Load((_3179 + 3u) * 4 + 0)));
              float2 _3193 = _3177.xy;
              float2 _3195 = _3192.xy;
              float3 _3199 = _3177.xyz;
              bool3 _3200 = bool3(_3199.x <= 0.0f.xxx.x, _3199.y <= 0.0f.xxx.y, _3199.z <= 0.0f.xxx.z);
              bool3 _3201 = bool3(_3199.x >= 1.0f.xxx.x, _3199.y >= 1.0f.xxx.y, _3199.z >= 1.0f.xxx.z);
              float _3204 = _3177.z;
              float2 _3215 = ((_3193 * (_3192.zw - _3195)) + _3195).xy * _33_m10.zw;
              float2 _3217 = floor(_3215 + 0.5f.xx);
              float2 _3218 = _3215 - _3217;
              float _3219 = _3218.x;
              float _3220 = _3219 + 0.5f;
              float _3221 = _3220 * _3220;
              float _3224 = 1.0f - _3219;
              float _3225 = min(_3219, 0.0f);
              float _3228 = _3219 + 1.0f;
              float _3229 = max(_3219, 0.0f);
              float _3240 = _3218.y;
              float _3241 = _3240 + 0.5f;
              float _3242 = _3241 * _3241;
              float _3245 = 1.0f - _3240;
              float _3246 = min(_3240, 0.0f);
              float _3249 = _3240 + 1.0f;
              float _3250 = max(_3240, 0.0f);
              float3 _3262 = float3(0.1599999964237213134765625f * _3224, 0.1599999964237213134765625f * ((_3228 - (_3229 * _3229)) + 1.0f), _3221 * 0.07999999821186065673828125f);
              float3 _3263 = float3(0.1599999964237213134765625f * ((_3221 * 0.5f) - _3219), 0.1599999964237213134765625f * ((_3224 - (_3225 * _3225)) + 1.0f), 0.1599999964237213134765625f * _3228) + _3262;
              float3 _3265 = float3(0.1599999964237213134765625f * _3245, 0.1599999964237213134765625f * ((_3249 - (_3250 * _3250)) + 1.0f), _3242 * 0.07999999821186065673828125f);
              float3 _3266 = float3(0.1599999964237213134765625f * ((_3242 * 0.5f) - _3240), 0.1599999964237213134765625f * ((_3245 - (_3246 * _3246)) + 1.0f), 0.1599999964237213134765625f * _3249) + _3265;
              float3 _3272 = ((_3262 / _3263) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _3274 = ((_3265 / _3266) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _3276 = _3217 * _33_m10.xy;
              float _3277 = _3272.x;
              float _3278 = _3274.x;
              float _3281 = _3272.y;
              float _3284 = _3272.z;
              float _3287 = _3274.y;
              float _3294 = _3274.z;
              float _3301 = _3263.x;
              float _3302 = _3266.x;
              float _3304 = _3263.y;
              float _3306 = _3263.z;
              float _3308 = _3266.y;
              float _3312 = _3266.z;
              float _3370 = (((((((_3301 * _3302) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3277, _3278), _387).xy, _3204)) + ((_3304 * _3302) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3281, _3278), _387).xy, _3204))) + ((_3306 * _3302) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3284, _3278), _387).xy, _3204))) + ((_3301 * _3308) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3277, _3287), _387).xy, _3204))) + ((_3304 * _3308) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3281, _3287), _387).xy, _3204))) + ((_3306 * _3308) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3284, _3287), _387).xy, _3204))) + ((_3301 * _3312) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3277, _3294), _387).xy, _3204));
              float4 _3393 = asfloat(uint4(_36.Load(_3063 * 4 + 0), _36.Load(_3066 * 4 + 0), _36.Load(_3069 * 4 + 0), _36.Load(_3072 * 4 + 0)));
              float _3394 = _3393.w;
              float2 _3396 = min(_3193, 1.0f.xx - _3193);
              _3408 = lerp(1.0f, (any(bool3(_3200.x || _3201.x, _3200.y || _3201.y, _3200.z || _3201.z)) || ((asuint(_3204) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3370 + ((_3304 * _3312) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3281, _3294), _387).xy, _3204))) + ((_3306 * _3312) * _34.SampleCmpLevelZero(_16, float3(_3276 + float2(_3284, _3294), _387).xy, _3204))), _2845 ? min(_3394, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3393.z - _3173.w) * 0.25f, min(_3396.x, _3396.y)))) : _3394);
              break;
            } while (false);
            _3410 = (_3054 >= 0) ? _3408 : 1.0f;
          } else {
            _3410 = 1.0f;
          }
          float3 _3434;
          float3 _3435;
          if (_2848) {
            float3 _3413 = _2802 * _2802;
            float3 _3414 = reflect(_510, _451);
            float _3423 = dot(_3414, _2837);
            _3434 = _3413 / clamp(_3413 + (0.5f * clamp(_29_m6[_842].z * _2826, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3435 = normalize(_2839 + (_2837 * clamp(dot(_2839, (_3414 * _3423) - _2837) / ((_29_m6[_842].z * _29_m6[_842].z) - (_3423 * _3423)), 0.0f, 1.0f)));
          } else {
            _3434 = 1.0f.xxx;
            _3435 = _2827;
          }
          float3 _3436 = _3435 + _508;
          float3 _3440 = _3436 * rsqrt(max(6.103515625e-05f, dot(_3436, _3436)));
          float3 _3571;
          if (_3001) {
            float _3443 = clamp(_2867, 0.0f, 1.0f);
            float _3445 = clamp(dot(_451, _3440), 0.0f, 1.0f);
            float _3447 = clamp(dot(_508, _3440), 0.0f, 1.0f);
            float _3448 = clamp(_551, 0.0f, 1.0f);
            float _3458;
            if (_2831 > 0.0f) {
              _3458 = clamp(_553 + ((_2831 * _2831) / ((_3447 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3458 = _553;
            }
            float _3459 = _3458 * _3458;
            float _3480 = (((_3445 * _3459) - _3445) * _3445) + 1.0f;
            float _3485 = 1.0f - _3447;
            float _3486 = _3485 * _3485;
            float _3488 = (_3485 * _3486) * _3486;
            float _3512 = 1.0f - _542;
            float _3519 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3512 * (1.04997003078460693359375f + (_3512 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3512))))));
            float _3520 = 1.0f - _3519;
            float3 _3523 = _550 + ((1.0f.xxx - _550) * 0.0476190485060214996337890625f);
            float3 _3567;
            do {
              [branch] if (((_429 > 0u) && (_429 <= 15u)) && (_454 > 0.0f)) {
                uint _3551 = clamp(_429 - 1u, 0u, 14u);
                _3567 = _42.SampleLevel(_13, float3((dot(_451, _3435) * 0.5f) + 0.5f, _454 * _45_m0[_3551].w, float(_3551)), 0.0f).xyz;
                break;
              }
              _3567 = _2867.xxx;
              break;
            } while (false);
            float3 _3570 = ((clamp((min(((_550 * (1.0f - _3488)) + _3488.xxx) * (((_3459 / (_3480 * _3480)) * _3434.y) * (0.5f / (((_3443 * sqrt(((((-_3448) * _3459) + _3448) * _3448) + _3459)) + (_3448 * sqrt(((((-_3443) * _3459) + _3443) * _3443) + _3459))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3523 * (((_41.SampleLevel(_13, (float2(_3448, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_3443, _542) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3519) / _3520)) * _3523) / (1.0f.xxx - (_3523 * _3520)))) * _29_m6[_857].z, 0.0f.xxx, 1000.0f.xxx) * _2867) + ((_546 * _3434.z) * _3567)) * (((_29_m6[_836].xyz * _3000) * _3410) * _936);
            _3571 = _3570;
          } else {
            _3571 = 0.0f.xxx;
          }
          _3572 = _796;
          _3573 = _3571;
        } else {
          float _2800;
          do {
            if (_943) {
              _2800 = 1.0f;
              break;
            }
            float _2214 = (0.5f + (0.5f * _29_m6[_842].y)) - abs(_29_m6[_842].x);
            float _2215 = _29_m6[_842].y - _2214;
            float _2222 = abs(max((1.0f - abs(_2214)) - abs(_2215), 0.00048828125f));
            float3 _2226 = normalize(float3(_2214, _2215, (_29_m6[_842].x >= 0.0f) ? _2222 : (-_2222)));
            float3 _2227 = _29_m6[_839].xyz - _482;
            float _2228 = dot(_2227, _2227);
            float3 _2230 = _2227 * rsqrt(_2228);
            int _2233 = int(_29_m6[_857].w);
            float3 _2235 = (_2226 * _29_m6[_842].z) * 0.5f;
            float3 _2236 = _2227 - _2235;
            float3 _2237 = _2227 + _2235;
            bool _2239 = (_940 & 1u) == 0u;
            bool _2242 = _2239 || ((_861 & 2u) != 0u);
            bool _2245 = (!_2239) && (_29_m6[_842].z > 0.0f);
            float _2257;
            if (_2245) {
              _2257 = 1.0f / ((((length(_2236) * length(_2237)) + dot(_2236, _2237)) * 0.5f) + 1.0f);
            } else {
              _2257 = 1.0f;
            }
            float _2279;
            if (_29_m6[_854].w < 0.0f) {
              float _2273 = _2228 * (_29_m6[_839].w * _29_m6[_839].w);
              float _2276 = clamp(1.0f - (_2273 * _2273), 0.0f, 1.0f);
              _2279 = lerp(1.0f / (_2228 + 1.0f), _2257, float(_2245)) * (_2276 * _2276);
            } else {
              float3 _2262 = _2227 * _29_m6[_839].w;
              _2279 = _2257 * pow(1.0f - clamp(dot(_2262, _2262), 0.0f, 1.0f), _29_m6[_854].w);
            }
            float _2285 = clamp((dot(_2230, -_2226) - _29_m6[_842].z) * _29_m6[_842].w, 0.0f, 1.0f);
            float _2289 = _2279 * lerp(1.0f, _2285 * _2285, float(_2239));
            float _2389;
            if ((!_2245) && (_2233 >= 0)) {
              uint _2295 = uint(_2233);
              float2 _2382;
              [branch] if (_2239) {
                float4 _2372 = mul(_49_m1[_2295], _486);
                _2382 = _49_m0[_2295].xy + (clamp(_2372.xy / _2372.w.xx, 0.0f.xx, 1.0f.xx) * _49_m0[_2295].zw);
              }
              else {
                float3 _2309 = mul(float4(-_2227, 0.0f), _49_m1[_2295]).xyz;
                float3 _399 = _2309;
                float3 _398 = _2309;
                float3 _397 = abs(_2309);
                uint _2318 = uint(int(_397.y > _397.x));
                uint _2324 = (_397.z > _397[_2318]) ? 2u : _2318;
                uint _2330 = (_2324 * 2u) + uint(_398[_2324] < 0.0f);
                float _2334 = abs(_399[_2330 / 2u]);
                float _2354 = 0.5f - (0.000244140625f / _49_m0[_2295].w);
                _2382 = _49_m0[_2295].xy + (clamp(float2((float(_2330) + ((((_399[uint(_344[_2330].x)] * _345[_2330].x) / _2334) * _2354) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_399[uint(_344[_2330].y)] * _345[_2330].y) / _2334) * _2354)), 0.0f.xx, 1.0f.xx) * _49_m0[_2295].zw);
              }
              _2389 = _2289 * _47.SampleLevel(_13, _2382, 0.0f).x;
            } else {
              _2389 = _2289;
            }
            float _2799;
            if (_2389 > 0.0f) {
              int _2443;
              if (_2242) {
                _2443 = int(_29_m6[_845].x);
              } else {
                uint _2398 = asuint(_29_m6[_842].w);
                uint _2399 = asuint(_29_m6[_845].x);
                float3 _2400 = _482 - _29_m6[_839].xyz;
                float3 _2401 = abs(_2400);
                float _2402 = _2401.x;
                float _2403 = _2401.y;
                float _2405 = _2401.z;
                int _2438;
                if ((_2402 > _2403) && (_2402 > _2405)) {
                  _2438 = int((_2400.x > 0.0f) ? (_2398 & 1023u) : ((_2398 >> 10u) & 1023u));
                } else {
                  int _2430;
                  if (_2403 > _2405) {
                    _2430 = int((_2400.y > 0.0f) ? ((_2398 >> 20u) & 1023u) : (_2399 & 1023u));
                  } else {
                    _2430 = int((_2400.z > 0.0f) ? ((_2399 >> 10u) & 1023u) : ((_2399 >> 20u) & 1023u));
                  }
                  _2438 = _2430;
                }
                _2443 = (_2438 == 1023) ? (-1) : _2438;
              }
              uint _2448 = uint(_2443);
              uint _2450 = asuint(_33_m11.x) + (_2448 * 96u);
              uint _2452 = (_2450 + 64u) >> 2u;
              uint _2455 = _2452 + 1u;
              uint _2458 = _2452 + 2u;
              uint _2461 = _2452 + 3u;
              float4 _2465 = asfloat(uint4(_36.Load(_2452 * 4 + 0), _36.Load(_2455 * 4 + 0), _36.Load(_2458 * 4 + 0), _36.Load(_2461 * 4 + 0)));
              float _2797;
              do {
                uint _2481 = ((asuint(_33_m11.y) + (_2448 * 16u)) >> 2u) + 1u;
                if (_36.Load(_2481 * 4 + 0) > 0u) {
                  float4 _396 = _790;
                  float _2496;
                  do {
                    if (_36.Load(_2481 * 4 + 0) == 0u) {
                      _2496 = 1.0f;
                      break;
                    }
                    _2496 = _396[_36.Load(_2481 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2797 = _2496;
                  break;
                }
                uint _2497 = _2450 >> 2u;
                uint _2512 = (_2450 + 16u) >> 2u;
                uint _2527 = (_2450 + 32u) >> 2u;
                uint _2542 = (_2450 + 48u) >> 2u;
                float4 _2562 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_2497 * 4 + 0), _36.Load((_2497 + 1u) * 4 + 0), _36.Load((_2497 + 2u) * 4 + 0), _36.Load((_2497 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2512 * 4 + 0), _36.Load((_2512 + 1u) * 4 + 0), _36.Load((_2512 + 2u) * 4 + 0), _36.Load((_2512 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2527 * 4 + 0), _36.Load((_2527 + 1u) * 4 + 0), _36.Load((_2527 + 2u) * 4 + 0), _36.Load((_2527 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2542 * 4 + 0), _36.Load((_2542 + 1u) * 4 + 0), _36.Load((_2542 + 2u) * 4 + 0), _36.Load((_2542 + 3u) * 4 + 0))))), float4((_482 - ((-_2230) * _2465.x)) + (_451 * (_2465.y * 5.0f)), 1.0f));
                float3 _2566 = _2562.xyz / _2562.w.xxx;
                uint _2568 = (_2450 + 80u) >> 2u;
                float4 _2581 = asfloat(uint4(_36.Load(_2568 * 4 + 0), _36.Load((_2568 + 1u) * 4 + 0), _36.Load((_2568 + 2u) * 4 + 0), _36.Load((_2568 + 3u) * 4 + 0)));
                float2 _2582 = _2566.xy;
                float2 _2584 = _2581.xy;
                float3 _2588 = _2566.xyz;
                bool3 _2589 = bool3(_2588.x <= 0.0f.xxx.x, _2588.y <= 0.0f.xxx.y, _2588.z <= 0.0f.xxx.z);
                bool3 _2590 = bool3(_2588.x >= 1.0f.xxx.x, _2588.y >= 1.0f.xxx.y, _2588.z >= 1.0f.xxx.z);
                float _2593 = _2566.z;
                float2 _2604 = ((_2582 * (_2581.zw - _2584)) + _2584).xy * _33_m10.zw;
                float2 _2606 = floor(_2604 + 0.5f.xx);
                float2 _2607 = _2604 - _2606;
                float _2608 = _2607.x;
                float _2609 = _2608 + 0.5f;
                float _2610 = _2609 * _2609;
                float _2613 = 1.0f - _2608;
                float _2614 = min(_2608, 0.0f);
                float _2617 = _2608 + 1.0f;
                float _2618 = max(_2608, 0.0f);
                float _2629 = _2607.y;
                float _2630 = _2629 + 0.5f;
                float _2631 = _2630 * _2630;
                float _2634 = 1.0f - _2629;
                float _2635 = min(_2629, 0.0f);
                float _2638 = _2629 + 1.0f;
                float _2639 = max(_2629, 0.0f);
                float3 _2651 = float3(0.1599999964237213134765625f * _2613, 0.1599999964237213134765625f * ((_2617 - (_2618 * _2618)) + 1.0f), _2610 * 0.07999999821186065673828125f);
                float3 _2652 = float3(0.1599999964237213134765625f * ((_2610 * 0.5f) - _2608), 0.1599999964237213134765625f * ((_2613 - (_2614 * _2614)) + 1.0f), 0.1599999964237213134765625f * _2617) + _2651;
                float3 _2654 = float3(0.1599999964237213134765625f * _2634, 0.1599999964237213134765625f * ((_2638 - (_2639 * _2639)) + 1.0f), _2631 * 0.07999999821186065673828125f);
                float3 _2655 = float3(0.1599999964237213134765625f * ((_2631 * 0.5f) - _2629), 0.1599999964237213134765625f * ((_2634 - (_2635 * _2635)) + 1.0f), 0.1599999964237213134765625f * _2638) + _2654;
                float3 _2661 = ((_2651 / _2652) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
                float3 _2663 = ((_2654 / _2655) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
                float2 _2665 = _2606 * _33_m10.xy;
                float _2666 = _2661.x;
                float _2667 = _2663.x;
                float _2670 = _2661.y;
                float _2673 = _2661.z;
                float _2676 = _2663.y;
                float _2683 = _2663.z;
                float _2690 = _2652.x;
                float _2691 = _2655.x;
                float _2693 = _2652.y;
                float _2695 = _2652.z;
                float _2697 = _2655.y;
                float _2701 = _2655.z;
                float _2759 = (((((((_2690 * _2691) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2666, _2667), _387).xy, _2593)) + ((_2693 * _2691) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2670, _2667), _387).xy, _2593))) + ((_2695 * _2691) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2673, _2667), _387).xy, _2593))) + ((_2690 * _2697) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2666, _2676), _387).xy, _2593))) + ((_2693 * _2697) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2670, _2676), _387).xy, _2593))) + ((_2695 * _2697) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2673, _2676), _387).xy, _2593))) + ((_2690 * _2701) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2666, _2683), _387).xy, _2593));
                float4 _2782 = asfloat(uint4(_36.Load(_2452 * 4 + 0), _36.Load(_2455 * 4 + 0), _36.Load(_2458 * 4 + 0), _36.Load(_2461 * 4 + 0)));
                float _2783 = _2782.w;
                float2 _2785 = min(_2582, 1.0f.xx - _2582);
                _2797 = lerp(1.0f, (any(bool3(_2589.x || _2590.x, _2589.y || _2590.y, _2589.z || _2590.z)) || ((asuint(_2593) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2759 + ((_2693 * _2701) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2670, _2683), _387).xy, _2593))) + ((_2695 * _2701) * _34.SampleCmpLevelZero(_16, float3(_2665 + float2(_2673, _2683), _387).xy, _2593))), _2242 ? min(_2783, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2782.z - _2562.w) * 0.25f, min(_2785.x, _2785.y)))) : _2783);
                break;
              } while (false);
              _2799 = (_2443 >= 0) ? _2797 : 1.0f;
            } else {
              _2799 = 1.0f;
            }
            _2800 = _2799;
            break;
          } while (false);
          _3572 = _796 * _2800;
          _3573 = 0.0f.xxx;
        }
        _3574 = _3572;
        _3575 = _3573;
        break;
      } while (false);
      _821 = _3574;
      _824 = _823 + _3575;
    }
    _793 = _792 + _823;
  }
  float3 _3579 = _761.xyz + (_792 * _795);
  float3 _3581 = _418.xxx;
  float3 _3616;
  float3 _3617;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xF77233FA:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3592 = min(_21.SampleBias(_12, _4, _9_m16).x, _418);
    _3616 = clamp((pow(abs(_552 + _3592), exp2(((-16.0f) * _542) - 1.0f)) - 1.0f) + _3592, 0.0f, 1.0f).xxx;
    _3617 = max(_3592.xxx, ((((((_546 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3592) + ((_546 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3592) + ((_546 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3592);
  }
  else {
    _3616 = _3581;
    _3617 = _3581;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3579 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3616 : 1.0f.xxx;
  // RenoDX code end
  float3 _3640;
  do {
    [branch] if (((_429 > 0u) && (_429 <= 15u)) && (_454 > 0.0f)) {
      uint _3628 = clamp(_429 - 1u, 0u, 14u);
      _3640 = _43.SampleLevel(_13, float3(_454 * _45_m0[_3628].w, 0.5f, float(_3628)), 0.0f).xyz;
      break;
    }
    _3640 = 1.0f.xxx;
    break;
  } while (false);
  float3 _3657 = (_482 + (_451 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_457 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _3667 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3676 = _3657 - (_9_m108.xyz + (_3667 * (-_9_m110.w)));
  float _3691 = max(min(max((max(abs(_3676.x), abs(_3676.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3676.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _3993;
  float4 _3994;
  float4 _3995;
  float _3996;
  float _3997;
  if ((_9_m108.w != 0.0f) && (_3691 < 1.0f)) {
    float3 _3704 = _3657 - (_9_m108.xyz + (_3667 * (-_9_m110.y)));
    float _3718 = max(clamp((max(abs(_3704.x), abs(_3704.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3704.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3794;
    float4 _3795;
    float4 _3796;
    float4 _3797;
    if (_3718 < 1.0f) {
      float3 _3727 = ((_3657 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3729 = _3727 - floor(_3727);
      float4 _3733 = _59.SampleLevel(_14, _3729, 0.0f);
      float _3734 = 1.0f - _3718;
      float _3738 = _9_m109.y * 0.5f;
      float _3743 = _3729.x;
      float _3744 = clamp(_3729.y, _3738, 1.0f - _3738) * 0.3333333432674407958984375f;
      float _3745 = _3729.z;
      float4 _3748 = _60.SampleLevel(_13, float3(_3743, _3744, _3745), 0.0f);
      float _3764 = _3733.x;
      float _3774 = _3733.y;
      float _3784 = _3733.z;
      _3794 = _3691 + (_3748.w * _3734);
      _3795 = float4(((_60.SampleLevel(_13, float3(_3743, _3744 + 0.666666686534881591796875f, _3745), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3784, _3784) * _3734;
      _3796 = float4(((_60.SampleLevel(_13, float3(_3743, _3744 + 0.3333333432674407958984375f, _3745), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3774, _3774) * _3734;
      _3797 = float4(((_3748.xyz * 4.0f) - 2.0f.xxx) * _3764, _3764) * _3734;
    } else {
      _3794 = _3691;
      _3795 = 0.0f.xxxx;
      _3796 = 0.0f.xxxx;
      _3797 = 0.0f.xxxx;
    }
    float3 _3803 = _3657 - (_9_m108.xyz + (_3667 * (-_9_m110.z)));
    float _3817 = max(clamp((max(abs(_3803.x), abs(_3803.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3803.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _3897;
    float4 _3898;
    float4 _3899;
    float4 _3900;
    if (_3817 < 1.0f) {
      float3 _3826 = ((_3657 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3828 = _3826 - floor(_3826);
      float4 _3832 = _61.SampleLevel(_14, _3828, 0.0f);
      float _3834 = _3718 * (1.0f - _3817);
      float _3838 = _9_m109.y * 0.5f;
      float _3843 = _3828.x;
      float _3844 = clamp(_3828.y, _3838, 1.0f - _3838) * 0.3333333432674407958984375f;
      float _3845 = _3828.z;
      float4 _3848 = _62.SampleLevel(_13, float3(_3843, _3844, _3845), 0.0f);
      float _3864 = _3832.x;
      float _3875 = _3832.y;
      float _3886 = _3832.z;
      _3897 = _3794 + (_3848.w * _3834);
      _3898 = _3795 + (float4(((_62.SampleLevel(_13, float3(_3843, _3844 + 0.666666686534881591796875f, _3845), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3886, _3886) * _3834);
      _3899 = _3796 + (float4(((_62.SampleLevel(_13, float3(_3843, _3844 + 0.3333333432674407958984375f, _3845), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3875, _3875) * _3834);
      _3900 = _3797 + (float4(((_3848.xyz * 4.0f) - 2.0f.xxx) * _3864, _3864) * _3834);
    } else {
      _3897 = _3794;
      _3898 = _3795;
      _3899 = _3796;
      _3900 = _3797;
    }
    float4 _3983;
    float4 _3984;
    float4 _3985;
    float _3986;
    if (_3817 > 0.0f) {
      float3 _3909 = ((_3657 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3912 = _9_m109.xyz * 0.5f;
      float3 _3914 = clamp(_3909 - floor(_3909), _3912, 1.0f.xxx - _3912);
      float4 _3918 = _63.SampleLevel(_14, _3914, 0.0f);
      float _3920 = _3817 * (1.0f - _3691);
      float _3924 = _9_m109.y * 0.5f;
      float _3929 = _3914.x;
      float _3930 = clamp(_3914.y, _3924, 1.0f - _3924) * 0.3333333432674407958984375f;
      float _3931 = _3914.z;
      float4 _3934 = _64.SampleLevel(_13, float3(_3929, _3930, _3931), 0.0f);
      float _3950 = _3918.x;
      float _3961 = _3918.y;
      float _3972 = _3918.z;
      _3983 = _3898 + (float4(((_64.SampleLevel(_13, float3(_3929, _3930 + 0.666666686534881591796875f, _3931), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3972, _3972) * _3920);
      _3984 = _3899 + (float4(((_64.SampleLevel(_13, float3(_3929, _3930 + 0.3333333432674407958984375f, _3931), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3961, _3961) * _3920);
      _3985 = _3900 + (float4(((_3934.xyz * 4.0f) - 2.0f.xxx) * _3950, _3950) * _3920);
      _3986 = _3897 + (_3934.w * _3920);
    } else {
      _3983 = _3898;
      _3984 = _3899;
      _3985 = _3900;
      _3986 = _3897;
    }
    float _3989 = clamp((_3986 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _3993 = _3983;
    _3994 = _3984;
    _3995 = _3985;
    _3996 = _3989 - _3691;
    _3997 = (_3989 + _3691) * 0.5f;
  } else {
    _3993 = 0.0f.xxxx;
    _3994 = 0.0f.xxxx;
    _3995 = 0.0f.xxxx;
    _3996 = 0.0f;
    _3997 = 1.0f;
  }
  float4 _4017 = _3995 + float4(_9_m111.x * _3997, (_9_m111.y * _3997) + ((_9_m111.w * _3996) * 0.5f), _9_m111.z * _3997, (_9_m111.w * _3997) + ((_9_m111.y * _3996) * 0.375f));
  float4 _4037 = _3994 + float4(_9_m112.x * _3997, (_9_m112.y * _3997) + ((_9_m112.w * _3996) * 0.5f), _9_m112.z * _3997, (_9_m112.w * _3997) + ((_9_m112.y * _3996) * 0.375f));
  float4 _4057 = _3993 + float4(_9_m113.x * _3997, (_9_m113.y * _3997) + ((_9_m113.w * _3996) * 0.5f), _9_m113.z * _3997, (_9_m113.w * _3997) + ((_9_m113.y * _3996) * 0.375f));
  float4 _4215;
  float4 _4216;
  float4 _4217;
  [branch] if (all(bool2(_470.x >= 0.0f.xx.x, _470.y >= 0.0f.xx.y))) {
    float4 _4065 = _58.SampleLevel(_13, _470, 0.0f);
    float4 _4066 = abs(_4065);
    float4 _4212;
    float4 _4213;
    float4 _4214;
    [branch] if (any(bool4(_4066.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4066.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4066.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4066.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4072 = length(_4065.yzw);
      uint _4074;
      float _4077;
      _4074 = 0u;
      _4077 = 1.0f;
      for (float _4079 = _4072; _4079 > 4.599999904632568359375f;) {
        _4074++;
        _4077 *= 0.5f;
        _4079 *= 0.5f;
        continue;
      }
      float4 _4083 = _4065 * _4077;
      float4 _4088 = float4(0.0f, _4083.yzw);
      float2 _4110 = (_57.SampleLevel(_13, float2(((((length(_4088) * _56_m3.x) + _56_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _56_m2.xy) + _56_m2.zw;
      float4 _4124;
      _4124 = float4(_4110.x * 3.5449078083038330078125f, _4088.yzw * _4110.y) * exp(_4083.x * 0.282094776630401611328125f);
      for (uint _4127 = 0u; _4127 < _4074;) {
        _4124 = mul(float4x4(_4124, float4(_4124.yx, 0.0f, 0.0f), float4(_4124.z, 0.0f, _4124.x, 0.0f), float4(_4124.w, 0.0f, 0.0f, _4124.x)) * 0.282094776630401611328125f, _4124);
        _4127++;
        continue;
      }
      float4x4 _4148 = float4x4(_4124, float4(_4124.yx, 0.0f, 0.0f), float4(_4124.z, 0.0f, _4124.x, 0.0f), float4(_4124.w, 0.0f, 0.0f, _4124.x)) * 0.282094776630401611328125f;
      float4 _4158 = mul(_4148, float4(_4017.w * 1.1283791065216064453125f, _4017.y * (-0.977204978466033935546875f), _4017.z * 0.977204978466033935546875f, _4017.x * (-0.977204978466033935546875f)));
      float4 _4178 = mul(_4148, float4(_4037.w * 1.1283791065216064453125f, _4037.y * (-0.977204978466033935546875f), _4037.z * 0.977204978466033935546875f, _4037.x * (-0.977204978466033935546875f)));
      float4 _4198 = mul(_4148, float4(_4057.w * 1.1283791065216064453125f, _4057.y * (-0.977204978466033935546875f), _4057.z * 0.977204978466033935546875f, _4057.x * (-0.977204978466033935546875f)));
      _4212 = float4(_4158.x * 0.886226952075958251953125f, _4158.w * (-1.02332675457000732421875f), _4158.y * (-1.02332675457000732421875f), _4158.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4213 = float4(_4178.x * 0.886226952075958251953125f, _4178.w * (-1.02332675457000732421875f), _4178.y * (-1.02332675457000732421875f), _4178.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4214 = float4(_4198.x * 0.886226952075958251953125f, _4198.w * (-1.02332675457000732421875f), _4198.y * (-1.02332675457000732421875f), _4198.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4212 = _4017;
      _4213 = _4037;
      _4214 = _4057;
    }
    _4215 = _4212;
    _4216 = _4213;
    _4217 = _4214;
  }
  else {
    _4215 = _4017;
    _4216 = _4037;
    _4217 = _4057;
  }
  float _4224 = max(0.0f, dot(_4215.xyz * _3640.x, _451) + _4215.w);
  float _4231 = max(0.0f, dot(_4216.xyz * _3640.y, _451) + _4216.w);
  float _4238 = max(0.0f, dot(_4217.xyz * _3640.z, _451) + _4217.w);
  float3 _4248 = reflect(_510, _451);
  float _4256 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_542, 0.001000000047497451305389404296875f))));
  float2 _4260 = floor(_457 * _27_m0.w);
  float _4277 = floor(_489 - _27_m2.y);
  float _4281 = clamp(_4277, 0.0f, _27_m1.x - 1.0f);
  uint _4291 = (_4277 <= _4281) ? (_24.Load(uint(_9_m21.z + int(_4260.x + (_4260.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_4281)) * 4 + 0)) : 0u;
  float _4294 = dot(float4(_4224, _4231, _4238, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4296;
  float _4299;
  uint _4301;
  _4296 = 0.0f.xxx;
  _4299 = 1.0f;
  _4301 = _4291;
  uint _4302;
  float3 _4297;
  float _4300;
  bool _4304;
  [loop] for (;;) {
    bool _4303 = _4301 != 0u;
    _4304 = _4299 > 0.00999999977648258209228515625f;
    if (_4303 && _4304) {
      uint _4308 = firstbitlow(_4301);
      _4302 = _4301 ^ (1u << (_4308 & 31u));
      float3 _4328 = float3(dot(_27_m4[_4308]._m2, _486), dot(_27_m4[_4308]._m3, _486), dot(_27_m4[_4308]._m4, _486));
      float3 _4329 = abs(_4328);
      if (all(bool3(_4329.x <= _27_m4[_4308]._m1.xyz.x, _4329.y <= _27_m4[_4308]._m1.xyz.y, _4329.z <= _27_m4[_4308]._m1.xyz.z))) {
        float3 _4338 = _27_m4[_4308]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4340 = _4329 * 0.100000001490116119384765625f;
        float3 _4341 = _4340 * _4340;
        float3 _4344 = (_27_m4[_4308]._m1.xyz - _4329) * _27_m4[_4308]._m5.xyz;
        float3 _4392;
        [branch] if (_27_m4[_4308]._m6.x == 1.0f) {
          float3 _4377 = float3(dot(_27_m4[_4308]._m2.xyz, _4248), dot(_27_m4[_4308]._m3.xyz, _4248), dot(_27_m4[_4308]._m4.xyz, _4248));
          float3 _4379 = (_27_m4[_4308]._m1.xyz - _4328) / _4377;
          float3 _4382 = ((-_27_m4[_4308]._m1.xyz) - _4328) / _4377;
          bool3 _4383 = bool3(_4377.x > 0.0f.xxx.x, _4377.y > 0.0f.xxx.y, _4377.z > 0.0f.xxx.z);
          float3 _4384 = float3(_4383.x ? _4379.x : _4382.x, _4383.y ? _4379.y : _4382.y, _4383.z ? _4379.z : _4382.z);
          _4392 = _4328 + (_4377 * min(min(_4384.x, _4384.y), _4384.z));
        }
        else {
          _4392 = _4248;
        }
        float3 _4393 = normalize(_4392);
        float3 _4396 = float3(int3(sign(_4393)));
        float3 _4399 = _4393 / dot(_4393, _4396).xxx;
        float3 _4413;
        if (_4399.z < 0.0f) {
          float3 _4404 = abs(_4399);
          float2 _4411 = _4396.xy * float2(1.0f - _4404.y, 1.0f - _4404.x);
          _4413 = float3(_4411.x, _4411.y, _4399.z);
        } else {
          _4413 = _4399;
        }
        float _4438 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_4308]._m0, float4(_451, 1.0f))));
        float _4451 = clamp((min(_4344.x, min(_4344.y, _4344.z)) * _27_m4[_4308]._m6.y) + ((((((_4338 * _4338).x - ((_4341.x + _4341.y) + _4341.z)) * _27_m4[_4308]._m5.x) * _27_m4[_4308]._m5.x) * (1.0f - _27_m4[_4308]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_4308]._m6.w;
        _4297 = _4296 + ((((_22.SampleLevel(_15, float3((((_4413.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_4308]._m1.w), _4256).xyz * _27_m4[_4308]._m5.w) * ((((((clamp(abs(_4294 / _4438), 0.0f, 1.0f) * 2.0f) + _4294) / (2.0f + _4438)) - 1.0f) * _9_m23.w) + 1.0f)) * _4451) * _4299);
        _4300 = _4299 * (1.0f - _4451);
      } else {
        _4297 = _4296;
        _4300 = _4299;
      }
      _4296 = _4297;
      _4299 = _4300;
      _4301 = _4302;
      continue;
    } else {
      break;
    }
  }
  float3 _4520;
  if (_4304) {
    float3 _4459 = normalize(_4248);
    float3 _4462 = float3(int3(sign(_4459)));
    float3 _4465 = _4459 / dot(_4459, _4462).xxx;
    float3 _4479;
    if (_4465.z < 0.0f) {
      float3 _4470 = abs(_4465);
      float2 _4477 = _4462.xy * float2(1.0f - _4470.y, 1.0f - _4470.x);
      _4479 = float3(_4477.x, _4477.y, _4465.z);
    } else {
      _4479 = _4465;
    }
    float _4506 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_451, 1.0f))));
    _4520 = _4296 + ((_22.SampleLevel(_15, float3((((_4479.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _4256).xyz * ((((((clamp(abs(_4294 / _4506), 0.0f, 1.0f) * 2.0f) + _4294) / (2.0f + _4506)) - 1.0f) * _9_m23.w) + 1.0f)) * _4299);
  } else {
    _4520 = _4296;
  }
  float3 _4526 = (_4520 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _4526 *= 0.25f + (0.75f * saturate(_4294));
  }
  // RenoDX code end
  float3 _4547;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4541 = _20.SampleBias(_13, _4, _9_m16);
    float _4542 = _4541.x;
    _4547 = (_19.SampleBias(_13, _4, _9_m16).xyz * _4542) + (_4526 * (1.0f - _4542));
  }
  else {
    _4547 = _4526;
  }
  float3 _4550 = (((float3(_4224, _4231, _4238) * _546) * _9_m22.x) * _3617) + ((_4547 * (_575 + ((_550 * ((1.0f - _576) / _576)) * _575))) * _3616);
  float4 _4552 = float4(_3579.x, _3579.y, _3579.z, _761.w) + float4(_4550.x, _4550.y, _4550.z, 0.0f.xxxx.w);
  float _4570 = _482.y * _9_m46.w;
  float _4575 = max(0.00999999977648258209228515625f, _4570 + _9_m47.w);
  float3 _4589 = exp(_9_m45.xyz * ((-max(0.0f, (_509 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4575)) / _4575) * exp(_4570 + _9_m48.w))));
  float _4592 = dot(_510, _9_m44.xyz);
  float _4598 = _9_m45.w * _9_m45.w;
  float _4602 = (1.0f + _4598) - ((2.0f * _9_m45.w) * _4592);
  float3 _4930;
  float _4931;
  if (_9_m55.z > 0.0f) {
    uint3 _4756 = (uint3(int3(_407, _408, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4757 = _4756.y;
    uint _4758 = _4756.z;
    uint _4761 = _4756.x + (_4757 * _4758);
    uint _4763 = _4757 + (_4758 * _4761);
    uint _4765 = _4758 + (_4761 * _4763);
    uint _4767 = _4761 + (_4763 * _4765);
    float _4791 = dot(_510, -_7_m0[2].xyz);
    float3 _4801 = _482 - _7_m11.xyz;
    float _4803 = (_9_m55.w * ((_4791 > 5.9604644775390625e-08f) ? (1.0f / _4791) : 0.0f)) * (1.0f / _509);
    float _4804 = _4801.y;
    float _4805 = _4803 * _4804;
    float _4807 = _7_m11.y + _4805;
    float _4808 = _4804 - _4805;
    float _4810 = (1.0f - _4803) * _509;
    float _4824 = max(-127.0f, _9_m49.z * _4808);
    float _4848 = max(-127.0f, _9_m52.x * _4808);
    float _4859 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4807 - _9_m49.x)))) * ((abs(_4824) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4824)) / _4824) : (0.693147182464599609375f - (0.2402265071868896484375f * _4824)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4807 - _9_m52.z)))) * ((abs(_4848) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4848)) / _4848) : (0.693147182464599609375f - (0.2402265071868896484375f * _4848))));
    float _4881 = clamp((_509 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4884 = clamp((max(clamp(exp2(-(_4859 * _4810)), 0.0f, 1.0f), _9_m51.w) + clamp((_509 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4881, 0.0f, 1.0f);
    float4 _4924 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _54.SampleLevel(_13, float3((_457 + ((((float3(uint3(_4767, _4763 + (_4765 * _4767), _390) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_489 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_489 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _4926 = _4924.w;
    _4930 = _4924.xyz + (((_9_m51.xyz * (1.0f - _4884)) + (((_9_m54.xyz * pow(clamp(dot(_508, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4859 * max(_4810 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4881))) * _4926);
    _4931 = _4926 * _4884;
  } else {
    float3 _4632 = _482 - _7_m11.xyz;
    float _4634 = _4632.y;
    float _4648 = max(-127.0f, _9_m49.z * _4634);
    float _4672 = max(-127.0f, _9_m52.x * _4634);
    float _4683 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4648) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4648)) / _4648) : (0.693147182464599609375f - (0.2402265071868896484375f * _4648)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4672) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4672)) / _4672) : (0.693147182464599609375f - (0.2402265071868896484375f * _4672))));
    float _4705 = clamp((_509 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4708 = clamp((max(clamp(exp2(-(_4683 * _509)), 0.0f, 1.0f), _9_m51.w) + clamp((_509 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4705, 0.0f, 1.0f);
    _4930 = (_9_m51.xyz * (1.0f - _4708)) + (((_9_m54.xyz * pow(clamp(dot(_508, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4683 * max(_509 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4705));
    _4931 = _4708;
  }
  float3 _4934 = _4589 * _4931;
  float3 _4936 = (clamp(_4552.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _4934) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4592 * _4592)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4598) / max((12.56637096405029296875f * _4602) * sqrt(_4602), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4589)) * _4931) + _4930);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _4936 = (_4936 * 0.65f) + (clamp(_4552.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _4938 = float4(_4936.x, _4936.y, _4936.z, _4552.w);
  _4938.w = dot(_4934, 0.3333333432674407958984375f.xxx);
  _5 = _4938;
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

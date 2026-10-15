#include "./renodx_injection.hlsli"

// Ported from the native 0x4A9F39E3 Vulkan dump.
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

static float _357;
static uint _358;

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

[[vk::binding(37, 3)]] cbuffer _8_9 : register(b37, space3) {
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

[[vk::binding(39, 3)]] ByteAddressBuffer _24 : register(t39, space3);
[[vk::binding(38, 3)]] cbuffer _25_27 : register(b38, space3) {
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

[[vk::binding(32, 3)]] cbuffer _35_36 : register(b32, space3) {
  column_major float4x4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c4);
};

[[vk::binding(36, 3)]] cbuffer _44_45 : register(b36, space3) {
  float4 _45_m0 : packoffset(c0);
  float4 _45_m1 : packoffset(c1);
  float4 _45_m2 : packoffset(c2);
  float4 _45_m3 : packoffset(c3);
  float4 _45_m4 : packoffset(c4);
  uint4 _45_m5 : packoffset(c5);
  float4 _45_m6 : packoffset(c6);
  float4 _45_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _16 : register(s3, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _18 : register(t29, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23, space3);
[[vk::binding(13, 3)]] Texture2DArray<float4> _22 : register(t13, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _32 : register(t9, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _33 : register(t30, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _34 : register(t7, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _38 : register(t14, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _39 : register(t8, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _40 : register(t12, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _41 : register(t15, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _42 : register(t28, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _43 : register(t22, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _46 : register(t31, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _47 : register(t6, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _48 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _49 : register(t18, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _50 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _51 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _52 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _53 : register(t16, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _54 : register(t5, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _55 : register(t27, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _56 : register(t26, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _57 : register(t25, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _58 : register(t24, space3);

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

void frag_main() {
  uint2 _363 = uint2(gl_FragCoord.xy);
  int _366 = int(_363.x);
  int _367 = int(_363.y);
  int2 _369 = int3(_366, _367, 0).xy;
  float4 _371 = _55.Load(int3(_369, 0));
  float4 _373 = _56.Load(int3(_369, 0));
  float _376 = _371.x;
  float _377 = _371.y;
  float _378 = _371.z;
  float2 _381 = (_373.xy * 2.0f) - 1.0f.xx;
  float _385 = 1.0f - dot(1.0f.xx, abs(_381));
  float3 _387 = float3(_381.x, _385, _381.y);
  float3 _399;
  if (_385 < 0.0f) {
    float2 _394 = _387.xz;
    bool2 _395 = bool2(_394.x >= 0.0f.xx.x, _394.y >= 0.0f.xx.y);
    float2 _397 = (1.0f.xx - abs(_387.zx)) * float2(_395.x ? 1.0f.xx.x : (-1.0f).xx.x, _395.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _399 = float3(_397.x, _387.y, _397.y);
  } else {
    _399 = _387;
  }
  float3 _400 = normalize(_399);
  float _401 = _373.z;
  float2 _405 = float2(_363);
  float2 _418 = gl_FragCoord.xy * _9_m0.zw;
  float2 _420 = (_418 * 2.0f) - 1.0f.xx;
  float4 _423 = float4(_420, _18.SampleLevel(_12, (_405 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _423.y = -_420.y;
  float4 _426 = mul(_7_m6, _423);
  float3 _430 = _426.xyz / _426.w.xxx;
  float _431 = _430.x;
  float _432 = _430.y;
  float4 _434 = float4(_431, _432, _430.z, 1.0f);
  float _437 = abs(mul(_7_m0, _434).z);
  float3 _452;
  do {
    if (_9_m4.w == 0.0f) {
      _452 = _7_m11.xyz - _430;
      break;
    } else {
      _452 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _453 = dot(_452, _452);
  float _455 = rsqrt(max(_453, 9.9999999392252902907785028219223e-09f));
  float3 _456 = _452 * _455;
  float _457 = _453 * _455;
  float3 _458 = -_456;
  bool _461 = _9_m132.x > 0.00048828125f;
  float2 _471;
  if (_461) {
    _471 = _54.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _471 = 1.0f.xx;
  }
  float _472 = dot(_400, float3(0.0f, -1.0f, 0.0f));
  float3 _528;
  float3 _529;
  [branch] if (_9_m124.x > 0.5f) {
    float _499 = abs(_400.x);
    float _501 = abs(_400.y);
    float _503 = abs(_400.z);
    float3 _508 = float3(_499, _501, _503) * (1.0f / ((_499 + _501) + _503));
    float4 _521 = _38.SampleLevel(_14, _430 * _9_m127.x, 0.0f);
    float _522 = _521.x;
    _528 = float3(_522, _357, _357);
    _529 = ((((float3(0.0f, 0.0f, 1.0f) * _508.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _508.y)) + (float3(1.0f, 0.0f, 0.0f) * _508.z)) * ((_522 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_472)));
  }
  else {
    _528 = 0.0f.xxx;
    _529 = 0.0f.xxx;
  }
  float4 _543 = mul(_36_m0, float4((_430 + ((((_400 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_472, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _472), 0.100000001490116119384765625f, 1.0f)))) + _529, 1.0f));
  float2 _546 = (_543.xy * 0.5f) + 0.5f.xx;
  float4 _547 = float4(_546.x, _546.y, _543.z, _543.w);
  _547.y = 1.0f - _546.y;
  float _568;
  [branch] if (_9_m124.y > 0.5f) {
    _568 = _34.SampleCmpLevelZero(_16, (_547.xy + _36_m1.xy).xy, max(_543.z, 0.00048828125f));
  }
  else {
    _568 = 1.0f;
  }
  float _571 = _400.y;
  float _572 = clamp(_571, 0.0f, 1.0f);
  float _573 = lerp(_9_m128.w, 1.0f, _572);
  float2 _577 = _430.xz;
  float2 _582 = abs(_577 - _7_m11.xz);
  float _585 = max(_582.x, _582.y);
  float _595 = lerp(_573 * _568, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _585));
  float3 _602 = ddy_fine(_430);
  float3 _603 = ddx_fine(_430);
  float3 _604 = cross(_602, _603);
  float _610 = clamp((_604 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_604, _604)))).y, 0.0f, 1.0f);
  float _613 = _9_m121.z * 0.300000011920928955078125f;
  float _615 = _613 + 0.68599998950958251953125f;
  float _622 = 1.0f - clamp((_437 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _637 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_615, 0.9700000286102294921875f), 0.9900000095367431640625f, _572) + (smoothstep(0.990999996662139892578125f, 1.0f, _610) * step(_377, (_528.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _836;
  float _837;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_613 + 0.686999976634979248046875f, _615, _610) * smoothstep(-0.5f, -0.100000001490116119384765625f, _571)) > 0.00048828125f)) {
    float3 _646 = abs(_400);
    float3 _647 = _646 * _646;
    float3 _652 = _647 * (1.0f / (_647.x + _647.z));
    float3 _654 = normalize(cross(_400, float3(0.0f, 1.0f, 0.0f)));
    float3 _656 = normalize(cross(_654, _400));
    float3 _672 = floor((_430 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _680 = frac(sin(dot(fmod(_672.xz + _672.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _684 = (step(0.0f.xx, _400.zx) * 2.0f) - 1.0f.xx;
    float3 _687 = _430;
    _687.x = _431 * _684.x;
    _687.z = _430.z * (-_684.y);
    float _699 = _528.x * _680;
    float2 _707 = float2(frac(((-_9_m121.x) * (((1.0f - _680) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_699 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_699 * 6.0f)));
    float _710 = floor(_680 * 5.0f) + 1.0f;
    float2 _714 = frac(float2(_710, 0.100000001490116119384765625f * _710) * _432);
    float2 _726 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _714 - (_707 - 1.0f.xx)), _707 - _714), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _714 - _707), (_707 + 1.0f.xx) - _714), step(_707, _714));
    float _727 = _726.x;
    float _729 = smoothstep(0.4000000059604644775390625f, 1.0f, _727 * _727);
    float _730 = _726.y;
    float _735 = (_730 * 2.0f) - 1.0f;
    float2 _744 = float2((_528.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _729) * _735), (1.0f.xx * _528.x).y * (_528.x + (((_729 * 0.00999999977648258209228515625f) * _729) * _735)));
    float4 _768 = (_39.SampleBias(_14, (_687.zy * _9_m122.xy) + _744, _9_m16) * _652.x) + (_39.SampleBias(_14, (_687.xy * _9_m122.xy) + _744, _9_m16) * _652.z);
    float2 _771 = (_768.xy * 2.0f) - 1.0f.xx;
    float _777 = _768.w;
    float _787 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_730 + (((_729 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_777 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_735 * _777) * 0.5f) + _729, 0.0f, 1.0f)));
    float _793 = _768.z;
    float _803 = (((lerp(0.100000001490116119384765625f, (_787 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _787, 0.0f, 1.0f), 5.0f), _793)) * _793) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_595 * step(0.04500000178813934326171875f, _378))) * _622);
    float2 _806 = _771.xy;
    float _811 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_806, _806), 0.0f, 1.0f)));
    float3 _812 = float3(_771, _811);
    float2 _816 = _812.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _803) * _9_m121.y);
    float3 _817 = float3(_816.x, _816.y, _812.z);
    _817.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _811, _803);
    _836 = lerp(_400, mul(float4x4(float4(_654.x, _656.x, _400.x, 0.0f), float4(_654.y, _656.y, _571, 0.0f), float4(_654.z, _656.z, _400.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_817 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_817, _817))), 0.0f)).xyz, _803.xxx);
    _837 = (_803 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _836 = _400;
    _837 = 0.0f;
  }
  float3 _985;
  float _986;
  [branch] if (_637 > 0.00048828125f) {
    float2 _844 = (-_577) * _9_m126.xy;
    float2 _846 = frac(_844);
    float2 _893;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _856 = frac(sin(dot(fmod(floor(_844), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _869 = floor(frac(_9_m125.x + _856) * (_9_m126.z * _9_m126.z));
      float _871 = 1.0f / _9_m126.z;
      _893 = ((_40.SampleBias(_13, frac((lerp(_846, _846.yx, step(_856, 0.5f).xx) * _871) + float2(_871 * fmod(_869, _9_m126.z), _871 * ((_9_m126.z - 1.0f) - floor(_869 * _871)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _893 = 0.0f.xx;
    }
    float2 _934;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _919 = _40.SampleBias(_14, (_844 + float2(0.0f, _9_m125.z)) + ((float2(_528.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _923 = _40.SampleBias(_14, (_844 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _528.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _929 = (((float4(_919.z, _919.w, _923.z, _923.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _528.x;
      _934 = _893 + (_929.xy + _929.zw);
    }
    else {
      _934 = _893;
    }
    float _942 = (((_528.x * 0.699999988079071044921875f) + (_401 * 0.300000011920928955078125f)) * clamp((_401 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _377;
    float _946 = smoothstep(min(_942, 0.9900000095367431640625f), clamp(_942 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _957 = _9_m120.x * _637;
    float3 _967 = float3(_934, max(0.00048828125f, sqrt(1.0f - clamp(dot(_934, _934), 0.0f, 1.0f))));
    float3 _973 = (_967 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_967, _967)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _985 = lerp(_400, _973, (((_957 * _946) * _595) * _622).xxx);
    _986 = max((smoothstep(0.0f, _377 * 0.20000000298023223876953125f, (_957 * clamp(lerp((_9_m126.w * (1.0f - _528.x)) * 0.5f, 1.0f, _946) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _973.y) * _595) * _622, 0.0f);
  }
  else {
    _985 = _836;
    _986 = 0.0f;
  }
  float _989 = min(_471.x, _471.y);
  float2 _991 = _471 * (1.0f - lerp(lerp(_9_m128.z * _573, 1.0f, _595), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _585)));
  float _992 = _991.x;
  float _995 = clamp((_378 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _996 = 1.0f - _401;
  float _1012 = lerp(clamp((clamp((_996 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _837)) + ((_986 * 0.100000001490116119384765625f) * _401), 0.0f, 1.0f), 1.0f, _376);
  float _1014 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _472);
  float _1023 = lerp(1.0f, 0.25f, ((_9_m120.x * _1012) * (1.0f - _376)) * _1014);
  float _1039 = (1.0f - lerp(_996, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1012) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_996)), 0.0f, 1.0f), _996, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1014) * (1.0f - _992))) * lerp(1.0f, 0.100000001490116119384765625f, max(_986, smoothstep(0.0f, 0.0500000007450580596923828125f, _837)));
  float _1044;
  float _1045;
  if (_461) {
    _1044 = lerp(1.0f, _471.y, _995);
    _1045 = lerp(1.0f, 0.0f, _995);
  } else {
    _1044 = 1.0f;
    _1045 = 1.0f;
  }
  float _1050 = lerp(lerp(min(_1044, _1039), _1039, _989), _401, _992);
  float3 _1052 = _57.Load(int3(_369, 0)).xyz * lerp(lerp(min(_1045, _1023), _1023, _989), 1.0f, _992);
  float3 _1053 = _1052 * _376;
  float3 _1054 = _1052 - _1053;
  float3 _1058 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _376)).xxx + _1053;
  float _1059 = dot(_985, _456);
  float _1060 = max(0.0f, _1059);
  float _1061 = _1050 * _1050;
  float _1062 = _1060 * _1060;
  float _1063 = _1062 * _1060;
  float2 _1064 = float2(1.0f, _1060);
  float2 _1067 = float2(1.0f, _1061);
  float _1068 = _1061 * _1061;
  float3 _1070 = float3(1.0f, _1061, _1068 * _1061);
  float _1075 = dot(mul(_1064, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1067) / dot(mul(float3(1.0f, _1062, _1063), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1070);
  float _1080 = dot(mul(_1064, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1067) / dot(mul(float3(1.0f, _1060, _1063), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1070);
  float3 _1083 = (_1058 * _1075) + _1080.xxx;
  float _1084 = _1075 + _1080;
  float4 _1244;
  do {
    [branch] if (_31_m4 == 0) {
      _1244 = 0.0f.xxxx;
      break;
    }
    float4 _1104 = _32.Load(int3(_369, 0));
    float _1105 = _1104.x;
    float4 _1243;
    if (_1105 > 0.001000000047497451305389404296875f) {
      float3 _1115 = reflect(_458, _985);
      float3 _1116 = -_29_m0.xyz;
      float _1121 = dot(_1116, _1115);
      float3 _1123 = _1115 - (_1116 * _1121);
      bool3 _1125 = (_1121 < _29_m4.z).xxx;
      float3 _1133 = normalize((_1116 * _29_m4.z) + ((_1123 * rsqrt(max(6.103515625e-05f, dot(_1123, _1123)))) * _29_m4.y));
      float3 _1134 = float3(_1125.x ? _1133.x : _1115.x, _1125.y ? _1133.y : _1115.y, _1125.z ? _1133.z : _1115.z);
      float3 _1138 = _1134 + _456;
      float3 _1142 = _1138 * rsqrt(max(6.103515625e-05f, dot(_1138, _1138)));
      float _1145 = clamp(dot(_1134, _985), 0.0f, 1.0f);
      float _1147 = clamp(dot(_985, _1142), 0.0f, 1.0f);
      float _1150 = clamp(_1059, 0.0f, 1.0f);
      float _1171 = (((_1147 * _1068) - _1147) * _1147) + 1.0f;
      float _1174 = 1.0f - clamp(dot(_456, _1142), 0.0f, 1.0f);
      float _1175 = _1174 * _1174;
      float _1177 = (_1174 * _1175) * _1175;
      float _1201 = 1.0f - _1050;
      float _1208 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1201 * (1.04997003078460693359375f + (_1201 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1201))))));
      float _1209 = 1.0f - _1208;
      float3 _1212 = _1058 + ((1.0f.xxx - _1058) * 0.0476190485060214996337890625f);
      float3 _1228 = ((clamp((min(((_1058 * (1.0f - _1177)) + _1177.xxx) * ((_1068 / (_1171 * _1171)) * (0.5f / (((_1145 * sqrt(((((-_1150) * _1068) + _1150) * _1150) + _1068)) + (_1150 * sqrt(((((-_1145) * _1068) + _1145) * _1145) + _1068))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1212 * (((_41.SampleLevel(_13, (float2(_1150, _1050) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1145, _1050) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1208) / _1209)) * _1212) / (1.0f.xxx - (_1212 * _1209)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1145) + ((_1054 * 1.0f) * clamp(dot(_1134, _400), 0.0f, 1.0f))) * _29_m1.xyz;
      float3 _1241 = lerp(_1228, _1228 * _33.SampleBias(_13, float2(_1105, 0.5f), _9_m16).xyz, (1.0f - _1105).xxx) * min(_42.SampleLevel(_13, _418, 0.0f).x, 1.0f);
      _1243 = float4(_1241.x, _1241.y, _1241.z, 0.0f.xxxx.w);
    } else {
      _1243 = 0.0f.xxxx;
    }
    _1244 = _1243;
    break;
  } while (false);
  float3 _1246 = _377.xxx;
  float3 _1285;
  float3 _1286;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x4A9F39E3:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _1261 = min(_21.SampleBias(_12, _4, _9_m16).x, _377);
    _1285 = clamp((pow(abs(max(0.0f, dot(_400, _456)) + _1261), exp2(((-16.0f) * _1050) - 1.0f)) - 1.0f) + _1261, 0.0f, 1.0f).xxx;
    _1286 = max(_1261.xxx, ((((((_1054 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1261) + ((_1054 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1261) + ((_1054 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1261);
  }
  else {
    _1285 = _1246;
    _1286 = _1246;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _1244.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1285 : 1.0f.xxx;
  // RenoDX code end
  float3 _1303 = (_430 + (_400 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_405 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _1313 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _1322 = _1303 - (_9_m108.xyz + (_1313 * (-_9_m110.w)));
  float _1337 = max(min(max((max(abs(_1322.x), abs(_1322.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1322.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1639;
  float4 _1640;
  float4 _1641;
  float _1642;
  float _1643;
  if ((_9_m108.w != 0.0f) && (_1337 < 1.0f)) {
    float3 _1350 = _1303 - (_9_m108.xyz + (_1313 * (-_9_m110.y)));
    float _1364 = max(clamp((max(abs(_1350.x), abs(_1350.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1350.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1440;
    float4 _1441;
    float4 _1442;
    float4 _1443;
    if (_1364 < 1.0f) {
      float3 _1373 = ((_1303 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1375 = _1373 - floor(_1373);
      float4 _1379 = _48.SampleLevel(_14, _1375, 0.0f);
      float _1380 = 1.0f - _1364;
      float _1384 = _9_m109.y * 0.5f;
      float _1389 = _1375.x;
      float _1390 = clamp(_1375.y, _1384, 1.0f - _1384) * 0.3333333432674407958984375f;
      float _1391 = _1375.z;
      float4 _1394 = _49.SampleLevel(_13, float3(_1389, _1390, _1391), 0.0f);
      float _1410 = _1379.x;
      float _1420 = _1379.y;
      float _1430 = _1379.z;
      _1440 = _1337 + (_1394.w * _1380);
      _1441 = float4(((_49.SampleLevel(_13, float3(_1389, _1390 + 0.666666686534881591796875f, _1391), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1430, _1430) * _1380;
      _1442 = float4(((_49.SampleLevel(_13, float3(_1389, _1390 + 0.3333333432674407958984375f, _1391), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1420, _1420) * _1380;
      _1443 = float4(((_1394.xyz * 4.0f) - 2.0f.xxx) * _1410, _1410) * _1380;
    } else {
      _1440 = _1337;
      _1441 = 0.0f.xxxx;
      _1442 = 0.0f.xxxx;
      _1443 = 0.0f.xxxx;
    }
    float3 _1449 = _1303 - (_9_m108.xyz + (_1313 * (-_9_m110.z)));
    float _1463 = max(clamp((max(abs(_1449.x), abs(_1449.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1449.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1543;
    float4 _1544;
    float4 _1545;
    float4 _1546;
    if (_1463 < 1.0f) {
      float3 _1472 = ((_1303 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1474 = _1472 - floor(_1472);
      float4 _1478 = _50.SampleLevel(_14, _1474, 0.0f);
      float _1480 = _1364 * (1.0f - _1463);
      float _1484 = _9_m109.y * 0.5f;
      float _1489 = _1474.x;
      float _1490 = clamp(_1474.y, _1484, 1.0f - _1484) * 0.3333333432674407958984375f;
      float _1491 = _1474.z;
      float4 _1494 = _51.SampleLevel(_13, float3(_1489, _1490, _1491), 0.0f);
      float _1510 = _1478.x;
      float _1521 = _1478.y;
      float _1532 = _1478.z;
      _1543 = _1440 + (_1494.w * _1480);
      _1544 = _1441 + (float4(((_51.SampleLevel(_13, float3(_1489, _1490 + 0.666666686534881591796875f, _1491), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1532, _1532) * _1480);
      _1545 = _1442 + (float4(((_51.SampleLevel(_13, float3(_1489, _1490 + 0.3333333432674407958984375f, _1491), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1521, _1521) * _1480);
      _1546 = _1443 + (float4(((_1494.xyz * 4.0f) - 2.0f.xxx) * _1510, _1510) * _1480);
    } else {
      _1543 = _1440;
      _1544 = _1441;
      _1545 = _1442;
      _1546 = _1443;
    }
    float4 _1629;
    float4 _1630;
    float4 _1631;
    float _1632;
    if (_1463 > 0.0f) {
      float3 _1555 = ((_1303 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1558 = _9_m109.xyz * 0.5f;
      float3 _1560 = clamp(_1555 - floor(_1555), _1558, 1.0f.xxx - _1558);
      float4 _1564 = _52.SampleLevel(_14, _1560, 0.0f);
      float _1566 = _1463 * (1.0f - _1337);
      float _1570 = _9_m109.y * 0.5f;
      float _1575 = _1560.x;
      float _1576 = clamp(_1560.y, _1570, 1.0f - _1570) * 0.3333333432674407958984375f;
      float _1577 = _1560.z;
      float4 _1580 = _53.SampleLevel(_13, float3(_1575, _1576, _1577), 0.0f);
      float _1596 = _1564.x;
      float _1607 = _1564.y;
      float _1618 = _1564.z;
      _1629 = _1544 + (float4(((_53.SampleLevel(_13, float3(_1575, _1576 + 0.666666686534881591796875f, _1577), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1618, _1618) * _1566);
      _1630 = _1545 + (float4(((_53.SampleLevel(_13, float3(_1575, _1576 + 0.3333333432674407958984375f, _1577), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1607, _1607) * _1566);
      _1631 = _1546 + (float4(((_1580.xyz * 4.0f) - 2.0f.xxx) * _1596, _1596) * _1566);
      _1632 = _1543 + (_1580.w * _1566);
    } else {
      _1629 = _1544;
      _1630 = _1545;
      _1631 = _1546;
      _1632 = _1543;
    }
    float _1635 = clamp((_1632 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1639 = _1629;
    _1640 = _1630;
    _1641 = _1631;
    _1642 = _1635 - _1337;
    _1643 = (_1635 + _1337) * 0.5f;
  } else {
    _1639 = 0.0f.xxxx;
    _1640 = 0.0f.xxxx;
    _1641 = 0.0f.xxxx;
    _1642 = 0.0f;
    _1643 = 1.0f;
  }
  float4 _1663 = _1641 + float4(_9_m111.x * _1643, (_9_m111.y * _1643) + ((_9_m111.w * _1642) * 0.5f), _9_m111.z * _1643, (_9_m111.w * _1643) + ((_9_m111.y * _1642) * 0.375f));
  float4 _1683 = _1640 + float4(_9_m112.x * _1643, (_9_m112.y * _1643) + ((_9_m112.w * _1642) * 0.5f), _9_m112.z * _1643, (_9_m112.w * _1643) + ((_9_m112.y * _1642) * 0.375f));
  float4 _1703 = _1639 + float4(_9_m113.x * _1643, (_9_m113.y * _1643) + ((_9_m113.w * _1642) * 0.5f), _9_m113.z * _1643, (_9_m113.w * _1643) + ((_9_m113.y * _1642) * 0.375f));
  float4 _1861;
  float4 _1862;
  float4 _1863;
  [branch] if (all(bool2(_418.x >= 0.0f.xx.x, _418.y >= 0.0f.xx.y))) {
    float4 _1711 = _47.SampleLevel(_13, _418, 0.0f);
    float4 _1712 = abs(_1711);
    float4 _1858;
    float4 _1859;
    float4 _1860;
    [branch] if (any(bool4(_1712.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1712.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1712.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1712.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1718 = length(_1711.yzw);
      uint _1720;
      float _1723;
      _1720 = 0u;
      _1723 = 1.0f;
      for (float _1725 = _1718; _1725 > 4.599999904632568359375f;) {
        _1720++;
        _1723 *= 0.5f;
        _1725 *= 0.5f;
        continue;
      }
      float4 _1729 = _1711 * _1723;
      float4 _1734 = float4(0.0f, _1729.yzw);
      float2 _1756 = (_46.SampleLevel(_13, float2(((((length(_1734) * _45_m3.x) + _45_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _45_m2.xy) + _45_m2.zw;
      float4 _1770;
      _1770 = float4(_1756.x * 3.5449078083038330078125f, _1734.yzw * _1756.y) * exp(_1729.x * 0.282094776630401611328125f);
      for (uint _1773 = 0u; _1773 < _1720;) {
        _1770 = mul(float4x4(_1770, float4(_1770.yx, 0.0f, 0.0f), float4(_1770.z, 0.0f, _1770.x, 0.0f), float4(_1770.w, 0.0f, 0.0f, _1770.x)) * 0.282094776630401611328125f, _1770);
        _1773++;
        continue;
      }
      float4x4 _1794 = float4x4(_1770, float4(_1770.yx, 0.0f, 0.0f), float4(_1770.z, 0.0f, _1770.x, 0.0f), float4(_1770.w, 0.0f, 0.0f, _1770.x)) * 0.282094776630401611328125f;
      float4 _1804 = mul(_1794, float4(_1663.w * 1.1283791065216064453125f, _1663.y * (-0.977204978466033935546875f), _1663.z * 0.977204978466033935546875f, _1663.x * (-0.977204978466033935546875f)));
      float4 _1824 = mul(_1794, float4(_1683.w * 1.1283791065216064453125f, _1683.y * (-0.977204978466033935546875f), _1683.z * 0.977204978466033935546875f, _1683.x * (-0.977204978466033935546875f)));
      float4 _1844 = mul(_1794, float4(_1703.w * 1.1283791065216064453125f, _1703.y * (-0.977204978466033935546875f), _1703.z * 0.977204978466033935546875f, _1703.x * (-0.977204978466033935546875f)));
      _1858 = float4(_1804.x * 0.886226952075958251953125f, _1804.w * (-1.02332675457000732421875f), _1804.y * (-1.02332675457000732421875f), _1804.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1859 = float4(_1824.x * 0.886226952075958251953125f, _1824.w * (-1.02332675457000732421875f), _1824.y * (-1.02332675457000732421875f), _1824.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1860 = float4(_1844.x * 0.886226952075958251953125f, _1844.w * (-1.02332675457000732421875f), _1844.y * (-1.02332675457000732421875f), _1844.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1858 = _1663;
      _1859 = _1683;
      _1860 = _1703;
    }
    _1861 = _1858;
    _1862 = _1859;
    _1863 = _1860;
  }
  else {
    _1861 = _1663;
    _1862 = _1683;
    _1863 = _1703;
  }
  float _1868 = max(0.0f, dot(_1861.xyz, _400) + _1861.w);
  float _1873 = max(0.0f, dot(_1862.xyz, _400) + _1862.w);
  float _1878 = max(0.0f, dot(_1863.xyz, _400) + _1863.w);
  float3 _1888 = reflect(_458, _985);
  float _1896 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1050, 0.001000000047497451305389404296875f))));
  float2 _1900 = floor(_405 * _27_m0.w);
  float _1917 = floor(_437 - _27_m2.y);
  float _1921 = clamp(_1917, 0.0f, _27_m1.x - 1.0f);
  uint _1931 = (_1917 <= _1921) ? (_24.Load(uint(_9_m21.z + int(_1900.x + (_1900.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1921)) * 4 + 0)) : 0u;
  float _1934 = dot(float4(_1868, _1873, _1878, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1936;
  float _1939;
  uint _1941;
  _1936 = 0.0f.xxx;
  _1939 = 1.0f;
  _1941 = _1931;
  uint _1942;
  float3 _1937;
  float _1940;
  bool _1944;
  [loop] for (;;) {
    bool _1943 = _1941 != 0u;
    _1944 = _1939 > 0.00999999977648258209228515625f;
    if (_1943 && _1944) {
      uint _1948 = firstbitlow(_1941);
      _1942 = _1941 ^ (1u << (_1948 & 31u));
      float3 _1968 = float3(dot(_27_m4[_1948]._m2, _434), dot(_27_m4[_1948]._m3, _434), dot(_27_m4[_1948]._m4, _434));
      float3 _1969 = abs(_1968);
      if (all(bool3(_1969.x <= _27_m4[_1948]._m1.xyz.x, _1969.y <= _27_m4[_1948]._m1.xyz.y, _1969.z <= _27_m4[_1948]._m1.xyz.z))) {
        float3 _1978 = _27_m4[_1948]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1980 = _1969 * 0.100000001490116119384765625f;
        float3 _1981 = _1980 * _1980;
        float3 _1984 = (_27_m4[_1948]._m1.xyz - _1969) * _27_m4[_1948]._m5.xyz;
        float3 _2032;
        [branch] if (_27_m4[_1948]._m6.x == 1.0f) {
          float3 _2017 = float3(dot(_27_m4[_1948]._m2.xyz, _1888), dot(_27_m4[_1948]._m3.xyz, _1888), dot(_27_m4[_1948]._m4.xyz, _1888));
          float3 _2019 = (_27_m4[_1948]._m1.xyz - _1968) / _2017;
          float3 _2022 = ((-_27_m4[_1948]._m1.xyz) - _1968) / _2017;
          bool3 _2023 = bool3(_2017.x > 0.0f.xxx.x, _2017.y > 0.0f.xxx.y, _2017.z > 0.0f.xxx.z);
          float3 _2024 = float3(_2023.x ? _2019.x : _2022.x, _2023.y ? _2019.y : _2022.y, _2023.z ? _2019.z : _2022.z);
          _2032 = _1968 + (_2017 * min(min(_2024.x, _2024.y), _2024.z));
        }
        else {
          _2032 = _1888;
        }
        float3 _2033 = normalize(_2032);
        float3 _2036 = float3(int3(sign(_2033)));
        float3 _2039 = _2033 / dot(_2033, _2036).xxx;
        float3 _2053;
        if (_2039.z < 0.0f) {
          float3 _2044 = abs(_2039);
          float2 _2051 = _2036.xy * float2(1.0f - _2044.y, 1.0f - _2044.x);
          _2053 = float3(_2051.x, _2051.y, _2039.z);
        } else {
          _2053 = _2039;
        }
        float _2078 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_1948]._m0, float4(_985, 1.0f))));
        float _2091 = clamp((min(_1984.x, min(_1984.y, _1984.z)) * _27_m4[_1948]._m6.y) + ((((((_1978 * _1978).x - ((_1981.x + _1981.y) + _1981.z)) * _27_m4[_1948]._m5.x) * _27_m4[_1948]._m5.x) * (1.0f - _27_m4[_1948]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_1948]._m6.w;
        _1937 = _1936 + ((((_22.SampleLevel(_15, float3((((_2053.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_1948]._m1.w), _1896).xyz * _27_m4[_1948]._m5.w) * ((((((clamp(abs(_1934 / _2078), 0.0f, 1.0f) * 2.0f) + _1934) / (2.0f + _2078)) - 1.0f) * _9_m23.w) + 1.0f)) * _2091) * _1939);
        _1940 = _1939 * (1.0f - _2091);
      } else {
        _1937 = _1936;
        _1940 = _1939;
      }
      _1936 = _1937;
      _1939 = _1940;
      _1941 = _1942;
      continue;
    } else {
      break;
    }
  }
  float3 _2160;
  if (_1944) {
    float3 _2099 = normalize(_1888);
    float3 _2102 = float3(int3(sign(_2099)));
    float3 _2105 = _2099 / dot(_2099, _2102).xxx;
    float3 _2119;
    if (_2105.z < 0.0f) {
      float3 _2110 = abs(_2105);
      float2 _2117 = _2102.xy * float2(1.0f - _2110.y, 1.0f - _2110.x);
      _2119 = float3(_2117.x, _2117.y, _2105.z);
    } else {
      _2119 = _2105;
    }
    float _2146 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_985, 1.0f))));
    _2160 = _1936 + ((_22.SampleLevel(_15, float3((((_2119.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1896).xyz * ((((((clamp(abs(_1934 / _2146), 0.0f, 1.0f) * 2.0f) + _1934) / (2.0f + _2146)) - 1.0f) * _9_m23.w) + 1.0f)) * _1939);
  } else {
    _2160 = _1936;
  }
  float3 _2166 = (_2160 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _2166 *= 0.25f + (0.75f * saturate(_1934));
  }
  // RenoDX code end
  float3 _2189;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _2183 = _20.SampleBias(_13, _4, _9_m16);
    float _2184 = _2183.x;
    _2189 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2184) + (_2166 * (1.0f - _2184));
  }
  else {
    _2189 = _2166;
  }
  float3 _2192 = (((float3(_1868, _1873, _1878) * _1054) * _9_m22.x) * _1286) + ((_2189 * (_1083 + ((_1058 * ((1.0f - _1084) / _1084)) * _1083))) * _1285);
  float4 _2194 = float4(_1244.x, _1244.y, _1244.z, _1244.w) + float4(_2192.x, _2192.y, _2192.z, 0.0f.xxxx.w);
  float3 _2197 = clamp(_2194.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _2212 = _432 * _9_m46.w;
  float _2217 = max(0.00999999977648258209228515625f, _2212 + _9_m47.w);
  float3 _2231 = exp(_9_m45.xyz * ((-max(0.0f, (_457 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2217)) / _2217) * exp(_2212 + _9_m48.w))));
  float _2234 = dot(_458, _9_m44.xyz);
  float _2240 = _9_m45.w * _9_m45.w;
  float _2244 = (1.0f + _2240) - ((2.0f * _9_m45.w) * _2234);
  float3 _2568;
  float _2569;
  if (_9_m55.z > 0.0f) {
    uint3 _2396 = (uint3(int3(_366, _367, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _2397 = _2396.y;
    uint _2398 = _2396.z;
    uint _2401 = _2396.x + (_2397 * _2398);
    uint _2403 = _2397 + (_2398 * _2401);
    uint _2405 = _2398 + (_2401 * _2403);
    uint _2407 = _2401 + (_2403 * _2405);
    float _2431 = dot(_458, -_7_m0[2].xyz);
    float3 _2439 = _430 - _7_m11.xyz;
    float _2441 = (_9_m55.w * ((_2431 > 5.9604644775390625e-08f) ? (1.0f / _2431) : 0.0f)) * (1.0f / _457);
    float _2442 = _2439.y;
    float _2443 = _2441 * _2442;
    float _2445 = _7_m11.y + _2443;
    float _2446 = _2442 - _2443;
    float _2448 = (1.0f - _2441) * _457;
    float _2462 = max(-127.0f, _9_m49.z * _2446);
    float _2486 = max(-127.0f, _9_m52.x * _2446);
    float _2497 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2445 - _9_m49.x)))) * ((abs(_2462) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2462)) / _2462) : (0.693147182464599609375f - (0.2402265071868896484375f * _2462)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2445 - _9_m52.z)))) * ((abs(_2486) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2486)) / _2486) : (0.693147182464599609375f - (0.2402265071868896484375f * _2486))));
    float _2519 = clamp((_457 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2522 = clamp((max(clamp(exp2(-(_2497 * _2448)), 0.0f, 1.0f), _9_m51.w) + clamp((_457 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2519, 0.0f, 1.0f);
    float4 _2562 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _43.SampleLevel(_13, float3((_405 + ((((float3(uint3(_2407, _2403 + (_2405 * _2407), _358) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_437 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_437 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2564 = _2562.w;
    _2568 = _2562.xyz + (((_9_m51.xyz * (1.0f - _2522)) + (((_9_m54.xyz * pow(clamp(dot(_456, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2497 * max(_2448 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2519))) * _2564);
    _2569 = _2564 * _2522;
  } else {
    float3 _2272 = _430 - _7_m11.xyz;
    float _2274 = _2272.y;
    float _2288 = max(-127.0f, _9_m49.z * _2274);
    float _2312 = max(-127.0f, _9_m52.x * _2274);
    float _2323 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2288) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2288)) / _2288) : (0.693147182464599609375f - (0.2402265071868896484375f * _2288)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2312) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2312)) / _2312) : (0.693147182464599609375f - (0.2402265071868896484375f * _2312))));
    float _2345 = clamp((_457 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2348 = clamp((max(clamp(exp2(-(_2323 * _457)), 0.0f, 1.0f), _9_m51.w) + clamp((_457 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2345, 0.0f, 1.0f);
    _2568 = (_9_m51.xyz * (1.0f - _2348)) + (((_9_m54.xyz * pow(clamp(dot(_456, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2323 * max(_457 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2345));
    _2569 = _2348;
  }
  float3 _2572 = _2231 * _2569;
  float3 _2574 = (_2197 * _2572) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2234 * _2234)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2240) / max((12.56637096405029296875f * _2244) * sqrt(_2244), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2231)) * _2569) + _2568);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2574 = (_2574 * 0.65f) + (_2197 * 0.35f);
  }
  // RenoDX code end
  float _2575 = dot(_2572, 0.3333333432674407958984375f.xxx);
  float4 _2576 = float4(_2574.x, _2574.y, _2574.z, _2194.w);
  _2576.w = _2575;
  float _2603 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _430) * _9_m61.z), 0.0f, 1.0f);
  float3 _2611 = lerp(_2197, _2576.xyz, min((1.0f - _2603) + ((_58.SampleLevel(_14, (_430 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _2603), 1.0f + _2575).xxx);
  _5 = float4(_2611.x, _2611.y, _2611.z, _2576.w);
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

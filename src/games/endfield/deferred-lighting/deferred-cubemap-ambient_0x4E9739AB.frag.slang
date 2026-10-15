#include "./renodx_injection.hlsli"

// Ported from the native 0x4E9739AB Vulkan dump.
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

static float _361;
static uint _362;

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

[[vk::binding(39, 3)]] cbuffer _8_9 : register(b39, space3) {
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

[[vk::binding(41, 3)]] ByteAddressBuffer _24 : register(t41, space3);
[[vk::binding(40, 3)]] cbuffer _25_27 : register(b40, space3) {
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

[[vk::binding(33, 3)]] cbuffer _35_36 : register(b33, space3) {
  column_major float4x4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c4);
};

[[vk::binding(35, 3)]] cbuffer _44_45 : register(b35, space3) {
  float4 _45_m0[15] : packoffset(c0);
  float4 _45_m1[15] : packoffset(c15);
};

[[vk::binding(38, 3)]] cbuffer _48_49 : register(b38, space3) {
  float4 _49_m0 : packoffset(c0);
  float4 _49_m1 : packoffset(c1);
  float4 _49_m2 : packoffset(c2);
  float4 _49_m3 : packoffset(c3);
  float4 _49_m4 : packoffset(c4);
  uint4 _49_m5 : packoffset(c5);
  float4 _49_m6 : packoffset(c6);
  float4 _49_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _16 : register(s3, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _18 : register(t30, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _19 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _20 : register(t13, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _21 : register(t25, space3);
[[vk::binding(15, 3)]] Texture2DArray<float4> _22 : register(t15, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _32 : register(t11, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _33 : register(t31, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _34 : register(t7, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _38 : register(t16, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _39 : register(t8, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _40 : register(t14, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _41 : register(t17, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _42 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _43 : register(t10, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _46 : register(t29, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _47 : register(t24, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _50 : register(t32, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _51 : register(t6, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _52 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _53 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _54 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _55 : register(t19, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _56 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _57 : register(t18, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _58 : register(t5, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _59 : register(t28, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _60 : register(t27, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _61 : register(t26, space3);

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
  uint2 _367 = uint2(gl_FragCoord.xy);
  int _370 = int(_367.x);
  int _371 = int(_367.y);
  int2 _373 = int3(_370, _371, 0).xy;
  float4 _375 = _59.Load(int3(_373, 0));
  float4 _377 = _60.Load(int3(_373, 0));
  float4 _379 = _61.Load(int3(_373, 0));
  float _380 = _375.x;
  float _381 = _375.y;
  float _382 = _375.z;
  uint _392 = uint(int((round(_375.w * 3.0f) * 4.0f) + round(_377.w * 3.0f)));
  float2 _395 = (_377.xy * 2.0f) - 1.0f.xx;
  float _399 = 1.0f - dot(1.0f.xx, abs(_395));
  float3 _401 = float3(_395.x, _399, _395.y);
  float3 _413;
  if (_399 < 0.0f) {
    float2 _408 = _401.xz;
    bool2 _409 = bool2(_408.x >= 0.0f.xx.x, _408.y >= 0.0f.xx.y);
    float2 _411 = (1.0f.xx - abs(_401.zx)) * float2(_409.x ? 1.0f.xx.x : (-1.0f).xx.x, _409.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _413 = float3(_411.x, _401.y, _411.y);
  } else {
    _413 = _401;
  }
  float3 _414 = normalize(_413);
  float _415 = _377.z;
  float _417 = _379.w;
  float2 _420 = float2(_367);
  float2 _433 = gl_FragCoord.xy * _9_m0.zw;
  float2 _435 = (_433 * 2.0f) - 1.0f.xx;
  float4 _438 = float4(_435, _18.SampleLevel(_12, (_420 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _438.y = -_435.y;
  float4 _441 = mul(_7_m6, _438);
  float3 _445 = _441.xyz / _441.w.xxx;
  float _446 = _445.x;
  float _447 = _445.y;
  float4 _449 = float4(_446, _447, _445.z, 1.0f);
  float _452 = abs(mul(_7_m0, _449).z);
  float3 _467;
  do {
    if (_9_m4.w == 0.0f) {
      _467 = _7_m11.xyz - _445;
      break;
    } else {
      _467 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _468 = dot(_467, _467);
  float _470 = rsqrt(max(_468, 9.9999999392252902907785028219223e-09f));
  float3 _471 = _467 * _470;
  float _472 = _468 * _470;
  float3 _473 = -_471;
  bool _476 = _9_m132.x > 0.00048828125f;
  float2 _486;
  if (_476) {
    _486 = _58.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _486 = 1.0f.xx;
  }
  float _487 = dot(_414, float3(0.0f, -1.0f, 0.0f));
  float3 _543;
  float3 _544;
  [branch] if (_9_m124.x > 0.5f) {
    float _514 = abs(_414.x);
    float _516 = abs(_414.y);
    float _518 = abs(_414.z);
    float3 _523 = float3(_514, _516, _518) * (1.0f / ((_514 + _516) + _518));
    float4 _536 = _38.SampleLevel(_14, _445 * _9_m127.x, 0.0f);
    float _537 = _536.x;
    _543 = float3(_537, _361, _361);
    _544 = ((((float3(0.0f, 0.0f, 1.0f) * _523.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _523.y)) + (float3(1.0f, 0.0f, 0.0f) * _523.z)) * ((_537 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_487)));
  }
  else {
    _543 = 0.0f.xxx;
    _544 = 0.0f.xxx;
  }
  float4 _558 = mul(_36_m0, float4((_445 + ((((_414 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_487, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _487), 0.100000001490116119384765625f, 1.0f)))) + _544, 1.0f));
  float2 _561 = (_558.xy * 0.5f) + 0.5f.xx;
  float4 _562 = float4(_561.x, _561.y, _558.z, _558.w);
  _562.y = 1.0f - _561.y;
  float _583;
  [branch] if (_9_m124.y > 0.5f) {
    _583 = _34.SampleCmpLevelZero(_16, (_562.xy + _36_m1.xy).xy, max(_558.z, 0.00048828125f));
  }
  else {
    _583 = 1.0f;
  }
  float _586 = _414.y;
  float _587 = clamp(_586, 0.0f, 1.0f);
  float _588 = lerp(_9_m128.w, 1.0f, _587);
  float2 _592 = _445.xz;
  float2 _597 = abs(_592 - _7_m11.xz);
  float _600 = max(_597.x, _597.y);
  float _610 = lerp(_588 * _583, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _600));
  float3 _617 = ddy_fine(_445);
  float3 _618 = ddx_fine(_445);
  float3 _619 = cross(_617, _618);
  float _625 = clamp((_619 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_619, _619)))).y, 0.0f, 1.0f);
  float _628 = _9_m121.z * 0.300000011920928955078125f;
  float _630 = _628 + 0.68599998950958251953125f;
  float _637 = 1.0f - clamp((_452 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _652 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_630, 0.9700000286102294921875f), 0.9900000095367431640625f, _587) + (smoothstep(0.990999996662139892578125f, 1.0f, _625) * step(_381, (_543.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _851;
  float _852;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_628 + 0.686999976634979248046875f, _630, _625) * smoothstep(-0.5f, -0.100000001490116119384765625f, _586)) > 0.00048828125f)) {
    float3 _661 = abs(_414);
    float3 _662 = _661 * _661;
    float3 _667 = _662 * (1.0f / (_662.x + _662.z));
    float3 _669 = normalize(cross(_414, float3(0.0f, 1.0f, 0.0f)));
    float3 _671 = normalize(cross(_669, _414));
    float3 _687 = floor((_445 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _695 = frac(sin(dot(fmod(_687.xz + _687.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _699 = (step(0.0f.xx, _414.zx) * 2.0f) - 1.0f.xx;
    float3 _702 = _445;
    _702.x = _446 * _699.x;
    _702.z = _445.z * (-_699.y);
    float _714 = _543.x * _695;
    float2 _722 = float2(frac(((-_9_m121.x) * (((1.0f - _695) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_714 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_714 * 6.0f)));
    float _725 = floor(_695 * 5.0f) + 1.0f;
    float2 _729 = frac(float2(_725, 0.100000001490116119384765625f * _725) * _447);
    float2 _741 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _729 - (_722 - 1.0f.xx)), _722 - _729), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _729 - _722), (_722 + 1.0f.xx) - _729), step(_722, _729));
    float _742 = _741.x;
    float _744 = smoothstep(0.4000000059604644775390625f, 1.0f, _742 * _742);
    float _745 = _741.y;
    float _750 = (_745 * 2.0f) - 1.0f;
    float2 _759 = float2((_543.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _744) * _750), (1.0f.xx * _543.x).y * (_543.x + (((_744 * 0.00999999977648258209228515625f) * _744) * _750)));
    float4 _783 = (_39.SampleBias(_14, (_702.zy * _9_m122.xy) + _759, _9_m16) * _667.x) + (_39.SampleBias(_14, (_702.xy * _9_m122.xy) + _759, _9_m16) * _667.z);
    float2 _786 = (_783.xy * 2.0f) - 1.0f.xx;
    float _792 = _783.w;
    float _802 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_745 + (((_744 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_792 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_750 * _792) * 0.5f) + _744, 0.0f, 1.0f)));
    float _808 = _783.z;
    float _818 = (((lerp(0.100000001490116119384765625f, (_802 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _802, 0.0f, 1.0f), 5.0f), _808)) * _808) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_610 * step(0.04500000178813934326171875f, _382))) * _637);
    float2 _821 = _786.xy;
    float _826 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_821, _821), 0.0f, 1.0f)));
    float3 _827 = float3(_786, _826);
    float2 _831 = _827.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _818) * _9_m121.y);
    float3 _832 = float3(_831.x, _831.y, _827.z);
    _832.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _826, _818);
    _851 = lerp(_414, mul(float4x4(float4(_669.x, _671.x, _414.x, 0.0f), float4(_669.y, _671.y, _586, 0.0f), float4(_669.z, _671.z, _414.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_832 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_832, _832))), 0.0f)).xyz, _818.xxx);
    _852 = (_818 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _851 = _414;
    _852 = 0.0f;
  }
  float3 _1000;
  float _1001;
  [branch] if (_652 > 0.00048828125f) {
    float2 _859 = (-_592) * _9_m126.xy;
    float2 _861 = frac(_859);
    float2 _908;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _871 = frac(sin(dot(fmod(floor(_859), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _884 = floor(frac(_9_m125.x + _871) * (_9_m126.z * _9_m126.z));
      float _886 = 1.0f / _9_m126.z;
      _908 = ((_40.SampleBias(_13, frac((lerp(_861, _861.yx, step(_871, 0.5f).xx) * _886) + float2(_886 * fmod(_884, _9_m126.z), _886 * ((_9_m126.z - 1.0f) - floor(_884 * _886)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _908 = 0.0f.xx;
    }
    float2 _949;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _934 = _40.SampleBias(_14, (_859 + float2(0.0f, _9_m125.z)) + ((float2(_543.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _938 = _40.SampleBias(_14, (_859 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _543.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _944 = (((float4(_934.z, _934.w, _938.z, _938.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _543.x;
      _949 = _908 + (_944.xy + _944.zw);
    }
    else {
      _949 = _908;
    }
    float _957 = (((_543.x * 0.699999988079071044921875f) + (_415 * 0.300000011920928955078125f)) * clamp((_415 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _381;
    float _961 = smoothstep(min(_957, 0.9900000095367431640625f), clamp(_957 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _972 = _9_m120.x * _652;
    float3 _982 = float3(_949, max(0.00048828125f, sqrt(1.0f - clamp(dot(_949, _949), 0.0f, 1.0f))));
    float3 _988 = (_982 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_982, _982)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _1000 = lerp(_414, _988, (((_972 * _961) * _610) * _637).xxx);
    _1001 = max((smoothstep(0.0f, _381 * 0.20000000298023223876953125f, (_972 * clamp(lerp((_9_m126.w * (1.0f - _543.x)) * 0.5f, 1.0f, _961) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _988.y) * _610) * _637, 0.0f);
  }
  else {
    _1000 = _851;
    _1001 = 0.0f;
  }
  float _1004 = min(_486.x, _486.y);
  float2 _1006 = _486 * (1.0f - lerp(lerp(_9_m128.z * _588, 1.0f, _610), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _600)));
  float _1007 = _1006.x;
  float _1010 = clamp((_382 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _1011 = 1.0f - _415;
  float _1027 = lerp(clamp((clamp((_1011 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _852)) + ((_1001 * 0.100000001490116119384765625f) * _415), 0.0f, 1.0f), 1.0f, _380);
  float _1029 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _487);
  float _1038 = lerp(1.0f, 0.25f, ((_9_m120.x * _1027) * (1.0f - _380)) * _1029);
  float _1054 = (1.0f - lerp(_1011, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1027) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1011)), 0.0f, 1.0f), _1011, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1029) * (1.0f - _1007))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1001, smoothstep(0.0f, 0.0500000007450580596923828125f, _852)));
  float _1059;
  float _1060;
  if (_476) {
    _1059 = lerp(1.0f, _486.y, _1010);
    _1060 = lerp(1.0f, 0.0f, _1010);
  } else {
    _1059 = 1.0f;
    _1060 = 1.0f;
  }
  float _1065 = lerp(lerp(min(_1059, _1054), _1054, _1004), _415, _1007);
  float3 _1067 = _379.xyz * lerp(lerp(min(_1060, _1038), _1038, _1004), 1.0f, _1007);
  float3 _1068 = _1067 * _380;
  float3 _1069 = _1067 - _1068;
  float3 _1073 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _380)).xxx + _1068;
  float _1074 = dot(_1000, _471);
  float _1075 = max(0.0f, _1074);
  float _1076 = _1065 * _1065;
  float _1077 = _1075 * _1075;
  float _1078 = _1077 * _1075;
  float2 _1079 = float2(1.0f, _1075);
  float2 _1082 = float2(1.0f, _1076);
  float _1083 = _1076 * _1076;
  float3 _1085 = float3(1.0f, _1076, _1083 * _1076);
  float _1090 = dot(mul(_1079, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1082) / dot(mul(float3(1.0f, _1077, _1078), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1085);
  float _1095 = dot(mul(_1079, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1082) / dot(mul(float3(1.0f, _1075, _1078), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1085);
  float3 _1098 = (_1073 * _1090) + _1095.xxx;
  float _1099 = _1090 + _1095;
  float4 _1286;
  do {
    [branch] if (_31_m4 == 0) {
      _1286 = 0.0f.xxxx;
      break;
    }
    float4 _1119 = _32.Load(int3(_373, 0));
    float _1120 = _1119.x;
    float4 _1285;
    if (_1120 > 0.001000000047497451305389404296875f) {
      float3 _1130 = reflect(_473, _1000);
      float3 _1131 = -_29_m0.xyz;
      float _1136 = dot(_1131, _1130);
      float3 _1138 = _1130 - (_1131 * _1136);
      bool3 _1140 = (_1136 < _29_m4.z).xxx;
      float3 _1148 = normalize((_1131 * _29_m4.z) + ((_1138 * rsqrt(max(6.103515625e-05f, dot(_1138, _1138)))) * _29_m4.y));
      float3 _1149 = float3(_1140.x ? _1148.x : _1130.x, _1140.y ? _1148.y : _1130.y, _1140.z ? _1148.z : _1130.z);
      float3 _1153 = _1149 + _471;
      float3 _1157 = _1153 * rsqrt(max(6.103515625e-05f, dot(_1153, _1153)));
      float _1160 = clamp(dot(_1149, _1000), 0.0f, 1.0f);
      float _1162 = clamp(dot(_1000, _1157), 0.0f, 1.0f);
      float _1165 = clamp(_1074, 0.0f, 1.0f);
      float _1186 = (((_1162 * _1083) - _1162) * _1162) + 1.0f;
      float _1189 = 1.0f - clamp(dot(_471, _1157), 0.0f, 1.0f);
      float _1190 = _1189 * _1189;
      float _1192 = (_1189 * _1190) * _1190;
      float _1216 = 1.0f - _1065;
      float _1223 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1216 * (1.04997003078460693359375f + (_1216 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1216))))));
      float _1224 = 1.0f - _1223;
      float3 _1227 = _1073 + ((1.0f.xxx - _1073) * 0.0476190485060214996337890625f);
      float3 _1267;
      do {
        [branch] if (((_392 > 0u) && (_392 <= 15u)) && (_417 > 0.0f)) {
          uint _1251 = clamp(_392 - 1u, 0u, 14u);
          _1267 = _42.SampleLevel(_13, float3((dot(_414, _1149) * 0.5f) + 0.5f, _417 * _45_m0[_1251].w, float(_1251)), 0.0f).xyz;
          break;
        }
        _1267 = clamp(dot(_1149, _414), 0.0f, 1.0f).xxx;
        break;
      } while (false);
      float3 _1270 = ((clamp((min(((_1073 * (1.0f - _1192)) + _1192.xxx) * ((_1083 / (_1186 * _1186)) * (0.5f / (((_1160 * sqrt(((((-_1165) * _1083) + _1165) * _1165) + _1083)) + (_1165 * sqrt(((((-_1160) * _1083) + _1160) * _1160) + _1083))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1227 * (((_41.SampleLevel(_13, (float2(_1165, _1065) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1160, _1065) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1223) / _1224)) * _1227) / (1.0f.xxx - (_1227 * _1224)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1160) + ((_1069 * 1.0f) * _1267)) * _29_m1.xyz;
      float3 _1283 = lerp(_1270, _1270 * _33.SampleBias(_13, float2(_1120, 0.5f), _9_m16).xyz, (1.0f - _1120).xxx) * min(_46.SampleLevel(_13, _433, 0.0f).x, 1.0f);
      _1285 = float4(_1283.x, _1283.y, _1283.z, 0.0f.xxxx.w);
    } else {
      _1285 = 0.0f.xxxx;
    }
    _1286 = _1285;
    break;
  } while (false);
  float3 _1288 = _381.xxx;
  float3 _1327;
  float3 _1328;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x4E9739AB:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _1303 = min(_21.SampleBias(_12, _4, _9_m16).x, _381);
    _1327 = clamp((pow(abs(max(0.0f, dot(_414, _471)) + _1303), exp2(((-16.0f) * _1065) - 1.0f)) - 1.0f) + _1303, 0.0f, 1.0f).xxx;
    _1328 = max(_1303.xxx, ((((((_1069 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1303) + ((_1069 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1303) + ((_1069 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1303);
  }
  else {
    _1327 = _1288;
    _1328 = _1288;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _1286.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1327 : 1.0f.xxx;
  // RenoDX code end
  float3 _1351;
  do {
    [branch] if (((_392 > 0u) && (_392 <= 15u)) && (_417 > 0.0f)) {
      uint _1339 = clamp(_392 - 1u, 0u, 14u);
      _1351 = _43.SampleLevel(_13, float3(_417 * _45_m0[_1339].w, 0.5f, float(_1339)), 0.0f).xyz;
      break;
    }
    _1351 = 1.0f.xxx;
    break;
  } while (false);
  float3 _1368 = (_445 + (_414 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_420 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _1378 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _1387 = _1368 - (_9_m108.xyz + (_1378 * (-_9_m110.w)));
  float _1402 = max(min(max((max(abs(_1387.x), abs(_1387.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1387.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1704;
  float4 _1705;
  float4 _1706;
  float _1707;
  float _1708;
  if ((_9_m108.w != 0.0f) && (_1402 < 1.0f)) {
    float3 _1415 = _1368 - (_9_m108.xyz + (_1378 * (-_9_m110.y)));
    float _1429 = max(clamp((max(abs(_1415.x), abs(_1415.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1415.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1505;
    float4 _1506;
    float4 _1507;
    float4 _1508;
    if (_1429 < 1.0f) {
      float3 _1438 = ((_1368 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1440 = _1438 - floor(_1438);
      float4 _1444 = _52.SampleLevel(_14, _1440, 0.0f);
      float _1445 = 1.0f - _1429;
      float _1449 = _9_m109.y * 0.5f;
      float _1454 = _1440.x;
      float _1455 = clamp(_1440.y, _1449, 1.0f - _1449) * 0.3333333432674407958984375f;
      float _1456 = _1440.z;
      float4 _1459 = _53.SampleLevel(_13, float3(_1454, _1455, _1456), 0.0f);
      float _1475 = _1444.x;
      float _1485 = _1444.y;
      float _1495 = _1444.z;
      _1505 = _1402 + (_1459.w * _1445);
      _1506 = float4(((_53.SampleLevel(_13, float3(_1454, _1455 + 0.666666686534881591796875f, _1456), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1495, _1495) * _1445;
      _1507 = float4(((_53.SampleLevel(_13, float3(_1454, _1455 + 0.3333333432674407958984375f, _1456), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1485, _1485) * _1445;
      _1508 = float4(((_1459.xyz * 4.0f) - 2.0f.xxx) * _1475, _1475) * _1445;
    } else {
      _1505 = _1402;
      _1506 = 0.0f.xxxx;
      _1507 = 0.0f.xxxx;
      _1508 = 0.0f.xxxx;
    }
    float3 _1514 = _1368 - (_9_m108.xyz + (_1378 * (-_9_m110.z)));
    float _1528 = max(clamp((max(abs(_1514.x), abs(_1514.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1514.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1608;
    float4 _1609;
    float4 _1610;
    float4 _1611;
    if (_1528 < 1.0f) {
      float3 _1537 = ((_1368 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1539 = _1537 - floor(_1537);
      float4 _1543 = _54.SampleLevel(_14, _1539, 0.0f);
      float _1545 = _1429 * (1.0f - _1528);
      float _1549 = _9_m109.y * 0.5f;
      float _1554 = _1539.x;
      float _1555 = clamp(_1539.y, _1549, 1.0f - _1549) * 0.3333333432674407958984375f;
      float _1556 = _1539.z;
      float4 _1559 = _55.SampleLevel(_13, float3(_1554, _1555, _1556), 0.0f);
      float _1575 = _1543.x;
      float _1586 = _1543.y;
      float _1597 = _1543.z;
      _1608 = _1505 + (_1559.w * _1545);
      _1609 = _1506 + (float4(((_55.SampleLevel(_13, float3(_1554, _1555 + 0.666666686534881591796875f, _1556), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1597, _1597) * _1545);
      _1610 = _1507 + (float4(((_55.SampleLevel(_13, float3(_1554, _1555 + 0.3333333432674407958984375f, _1556), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1586, _1586) * _1545);
      _1611 = _1508 + (float4(((_1559.xyz * 4.0f) - 2.0f.xxx) * _1575, _1575) * _1545);
    } else {
      _1608 = _1505;
      _1609 = _1506;
      _1610 = _1507;
      _1611 = _1508;
    }
    float4 _1694;
    float4 _1695;
    float4 _1696;
    float _1697;
    if (_1528 > 0.0f) {
      float3 _1620 = ((_1368 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1623 = _9_m109.xyz * 0.5f;
      float3 _1625 = clamp(_1620 - floor(_1620), _1623, 1.0f.xxx - _1623);
      float4 _1629 = _56.SampleLevel(_14, _1625, 0.0f);
      float _1631 = _1528 * (1.0f - _1402);
      float _1635 = _9_m109.y * 0.5f;
      float _1640 = _1625.x;
      float _1641 = clamp(_1625.y, _1635, 1.0f - _1635) * 0.3333333432674407958984375f;
      float _1642 = _1625.z;
      float4 _1645 = _57.SampleLevel(_13, float3(_1640, _1641, _1642), 0.0f);
      float _1661 = _1629.x;
      float _1672 = _1629.y;
      float _1683 = _1629.z;
      _1694 = _1609 + (float4(((_57.SampleLevel(_13, float3(_1640, _1641 + 0.666666686534881591796875f, _1642), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1683, _1683) * _1631);
      _1695 = _1610 + (float4(((_57.SampleLevel(_13, float3(_1640, _1641 + 0.3333333432674407958984375f, _1642), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1672, _1672) * _1631);
      _1696 = _1611 + (float4(((_1645.xyz * 4.0f) - 2.0f.xxx) * _1661, _1661) * _1631);
      _1697 = _1608 + (_1645.w * _1631);
    } else {
      _1694 = _1609;
      _1695 = _1610;
      _1696 = _1611;
      _1697 = _1608;
    }
    float _1700 = clamp((_1697 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1704 = _1694;
    _1705 = _1695;
    _1706 = _1696;
    _1707 = _1700 - _1402;
    _1708 = (_1700 + _1402) * 0.5f;
  } else {
    _1704 = 0.0f.xxxx;
    _1705 = 0.0f.xxxx;
    _1706 = 0.0f.xxxx;
    _1707 = 0.0f;
    _1708 = 1.0f;
  }
  float4 _1728 = _1706 + float4(_9_m111.x * _1708, (_9_m111.y * _1708) + ((_9_m111.w * _1707) * 0.5f), _9_m111.z * _1708, (_9_m111.w * _1708) + ((_9_m111.y * _1707) * 0.375f));
  float4 _1748 = _1705 + float4(_9_m112.x * _1708, (_9_m112.y * _1708) + ((_9_m112.w * _1707) * 0.5f), _9_m112.z * _1708, (_9_m112.w * _1708) + ((_9_m112.y * _1707) * 0.375f));
  float4 _1768 = _1704 + float4(_9_m113.x * _1708, (_9_m113.y * _1708) + ((_9_m113.w * _1707) * 0.5f), _9_m113.z * _1708, (_9_m113.w * _1708) + ((_9_m113.y * _1707) * 0.375f));
  float4 _1926;
  float4 _1927;
  float4 _1928;
  [branch] if (all(bool2(_433.x >= 0.0f.xx.x, _433.y >= 0.0f.xx.y))) {
    float4 _1776 = _51.SampleLevel(_13, _433, 0.0f);
    float4 _1777 = abs(_1776);
    float4 _1923;
    float4 _1924;
    float4 _1925;
    [branch] if (any(bool4(_1777.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1777.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1777.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1777.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1783 = length(_1776.yzw);
      uint _1785;
      float _1788;
      _1785 = 0u;
      _1788 = 1.0f;
      for (float _1790 = _1783; _1790 > 4.599999904632568359375f;) {
        _1785++;
        _1788 *= 0.5f;
        _1790 *= 0.5f;
        continue;
      }
      float4 _1794 = _1776 * _1788;
      float4 _1799 = float4(0.0f, _1794.yzw);
      float2 _1821 = (_50.SampleLevel(_13, float2(((((length(_1799) * _49_m3.x) + _49_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _49_m2.xy) + _49_m2.zw;
      float4 _1835;
      _1835 = float4(_1821.x * 3.5449078083038330078125f, _1799.yzw * _1821.y) * exp(_1794.x * 0.282094776630401611328125f);
      for (uint _1838 = 0u; _1838 < _1785;) {
        _1835 = mul(float4x4(_1835, float4(_1835.yx, 0.0f, 0.0f), float4(_1835.z, 0.0f, _1835.x, 0.0f), float4(_1835.w, 0.0f, 0.0f, _1835.x)) * 0.282094776630401611328125f, _1835);
        _1838++;
        continue;
      }
      float4x4 _1859 = float4x4(_1835, float4(_1835.yx, 0.0f, 0.0f), float4(_1835.z, 0.0f, _1835.x, 0.0f), float4(_1835.w, 0.0f, 0.0f, _1835.x)) * 0.282094776630401611328125f;
      float4 _1869 = mul(_1859, float4(_1728.w * 1.1283791065216064453125f, _1728.y * (-0.977204978466033935546875f), _1728.z * 0.977204978466033935546875f, _1728.x * (-0.977204978466033935546875f)));
      float4 _1889 = mul(_1859, float4(_1748.w * 1.1283791065216064453125f, _1748.y * (-0.977204978466033935546875f), _1748.z * 0.977204978466033935546875f, _1748.x * (-0.977204978466033935546875f)));
      float4 _1909 = mul(_1859, float4(_1768.w * 1.1283791065216064453125f, _1768.y * (-0.977204978466033935546875f), _1768.z * 0.977204978466033935546875f, _1768.x * (-0.977204978466033935546875f)));
      _1923 = float4(_1869.x * 0.886226952075958251953125f, _1869.w * (-1.02332675457000732421875f), _1869.y * (-1.02332675457000732421875f), _1869.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1924 = float4(_1889.x * 0.886226952075958251953125f, _1889.w * (-1.02332675457000732421875f), _1889.y * (-1.02332675457000732421875f), _1889.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1925 = float4(_1909.x * 0.886226952075958251953125f, _1909.w * (-1.02332675457000732421875f), _1909.y * (-1.02332675457000732421875f), _1909.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1923 = _1728;
      _1924 = _1748;
      _1925 = _1768;
    }
    _1926 = _1923;
    _1927 = _1924;
    _1928 = _1925;
  }
  else {
    _1926 = _1728;
    _1927 = _1748;
    _1928 = _1768;
  }
  float _1935 = max(0.0f, dot(_1926.xyz * _1351.x, _414) + _1926.w);
  float _1942 = max(0.0f, dot(_1927.xyz * _1351.y, _414) + _1927.w);
  float _1949 = max(0.0f, dot(_1928.xyz * _1351.z, _414) + _1928.w);
  float3 _1959 = reflect(_473, _1000);
  float _1967 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1065, 0.001000000047497451305389404296875f))));
  float2 _1971 = floor(_420 * _27_m0.w);
  float _1988 = floor(_452 - _27_m2.y);
  float _1992 = clamp(_1988, 0.0f, _27_m1.x - 1.0f);
  uint _2002 = (_1988 <= _1992) ? (_24.Load(uint(_9_m21.z + int(_1971.x + (_1971.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1992)) * 4 + 0)) : 0u;
  float _2005 = dot(float4(_1935, _1942, _1949, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _2007;
  float _2010;
  uint _2012;
  _2007 = 0.0f.xxx;
  _2010 = 1.0f;
  _2012 = _2002;
  uint _2013;
  float3 _2008;
  float _2011;
  bool _2015;
  [loop] for (;;) {
    bool _2014 = _2012 != 0u;
    _2015 = _2010 > 0.00999999977648258209228515625f;
    if (_2014 && _2015) {
      uint _2019 = firstbitlow(_2012);
      _2013 = _2012 ^ (1u << (_2019 & 31u));
      float3 _2039 = float3(dot(_27_m4[_2019]._m2, _449), dot(_27_m4[_2019]._m3, _449), dot(_27_m4[_2019]._m4, _449));
      float3 _2040 = abs(_2039);
      if (all(bool3(_2040.x <= _27_m4[_2019]._m1.xyz.x, _2040.y <= _27_m4[_2019]._m1.xyz.y, _2040.z <= _27_m4[_2019]._m1.xyz.z))) {
        float3 _2049 = _27_m4[_2019]._m1.xyz * 0.100000001490116119384765625f;
        float3 _2051 = _2040 * 0.100000001490116119384765625f;
        float3 _2052 = _2051 * _2051;
        float3 _2055 = (_27_m4[_2019]._m1.xyz - _2040) * _27_m4[_2019]._m5.xyz;
        float3 _2103;
        [branch] if (_27_m4[_2019]._m6.x == 1.0f) {
          float3 _2088 = float3(dot(_27_m4[_2019]._m2.xyz, _1959), dot(_27_m4[_2019]._m3.xyz, _1959), dot(_27_m4[_2019]._m4.xyz, _1959));
          float3 _2090 = (_27_m4[_2019]._m1.xyz - _2039) / _2088;
          float3 _2093 = ((-_27_m4[_2019]._m1.xyz) - _2039) / _2088;
          bool3 _2094 = bool3(_2088.x > 0.0f.xxx.x, _2088.y > 0.0f.xxx.y, _2088.z > 0.0f.xxx.z);
          float3 _2095 = float3(_2094.x ? _2090.x : _2093.x, _2094.y ? _2090.y : _2093.y, _2094.z ? _2090.z : _2093.z);
          _2103 = _2039 + (_2088 * min(min(_2095.x, _2095.y), _2095.z));
        }
        else {
          _2103 = _1959;
        }
        float3 _2104 = normalize(_2103);
        float3 _2107 = float3(int3(sign(_2104)));
        float3 _2110 = _2104 / dot(_2104, _2107).xxx;
        float3 _2124;
        if (_2110.z < 0.0f) {
          float3 _2115 = abs(_2110);
          float2 _2122 = _2107.xy * float2(1.0f - _2115.y, 1.0f - _2115.x);
          _2124 = float3(_2122.x, _2122.y, _2110.z);
        } else {
          _2124 = _2110;
        }
        float _2149 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2019]._m0, float4(_1000, 1.0f))));
        float _2162 = clamp((min(_2055.x, min(_2055.y, _2055.z)) * _27_m4[_2019]._m6.y) + ((((((_2049 * _2049).x - ((_2052.x + _2052.y) + _2052.z)) * _27_m4[_2019]._m5.x) * _27_m4[_2019]._m5.x) * (1.0f - _27_m4[_2019]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2019]._m6.w;
        _2008 = _2007 + ((((_22.SampleLevel(_15, float3((((_2124.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2019]._m1.w), _1967).xyz * _27_m4[_2019]._m5.w) * ((((((clamp(abs(_2005 / _2149), 0.0f, 1.0f) * 2.0f) + _2005) / (2.0f + _2149)) - 1.0f) * _9_m23.w) + 1.0f)) * _2162) * _2010);
        _2011 = _2010 * (1.0f - _2162);
      } else {
        _2008 = _2007;
        _2011 = _2010;
      }
      _2007 = _2008;
      _2010 = _2011;
      _2012 = _2013;
      continue;
    } else {
      break;
    }
  }
  float3 _2231;
  if (_2015) {
    float3 _2170 = normalize(_1959);
    float3 _2173 = float3(int3(sign(_2170)));
    float3 _2176 = _2170 / dot(_2170, _2173).xxx;
    float3 _2190;
    if (_2176.z < 0.0f) {
      float3 _2181 = abs(_2176);
      float2 _2188 = _2173.xy * float2(1.0f - _2181.y, 1.0f - _2181.x);
      _2190 = float3(_2188.x, _2188.y, _2176.z);
    } else {
      _2190 = _2176;
    }
    float _2217 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_1000, 1.0f))));
    _2231 = _2007 + ((_22.SampleLevel(_15, float3((((_2190.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1967).xyz * ((((((clamp(abs(_2005 / _2217), 0.0f, 1.0f) * 2.0f) + _2005) / (2.0f + _2217)) - 1.0f) * _9_m23.w) + 1.0f)) * _2010);
  } else {
    _2231 = _2007;
  }
  float3 _2237 = (_2231 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _2237 *= 0.25f + (0.75f * saturate(_2005));
  }
  // RenoDX code end
  float3 _2260;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _2254 = _20.SampleBias(_13, _4, _9_m16);
    float _2255 = _2254.x;
    _2260 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2255) + (_2237 * (1.0f - _2255));
  }
  else {
    _2260 = _2237;
  }
  float3 _2263 = (((float3(_1935, _1942, _1949) * _1069) * _9_m22.x) * _1328) + ((_2260 * (_1098 + ((_1073 * ((1.0f - _1099) / _1099)) * _1098))) * _1327);
  float4 _2265 = float4(_1286.x, _1286.y, _1286.z, _1286.w) + float4(_2263.x, _2263.y, _2263.z, 0.0f.xxxx.w);
  float _2283 = _447 * _9_m46.w;
  float _2288 = max(0.00999999977648258209228515625f, _2283 + _9_m47.w);
  float3 _2302 = exp(_9_m45.xyz * ((-max(0.0f, (_472 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2288)) / _2288) * exp(_2283 + _9_m48.w))));
  float _2305 = dot(_473, _9_m44.xyz);
  float _2311 = _9_m45.w * _9_m45.w;
  float _2315 = (1.0f + _2311) - ((2.0f * _9_m45.w) * _2305);
  float3 _2639;
  float _2640;
  if (_9_m55.z > 0.0f) {
    uint3 _2467 = (uint3(int3(_370, _371, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _2468 = _2467.y;
    uint _2469 = _2467.z;
    uint _2472 = _2467.x + (_2468 * _2469);
    uint _2474 = _2468 + (_2469 * _2472);
    uint _2476 = _2469 + (_2472 * _2474);
    uint _2478 = _2472 + (_2474 * _2476);
    float _2502 = dot(_473, -_7_m0[2].xyz);
    float3 _2510 = _445 - _7_m11.xyz;
    float _2512 = (_9_m55.w * ((_2502 > 5.9604644775390625e-08f) ? (1.0f / _2502) : 0.0f)) * (1.0f / _472);
    float _2513 = _2510.y;
    float _2514 = _2512 * _2513;
    float _2516 = _7_m11.y + _2514;
    float _2517 = _2513 - _2514;
    float _2519 = (1.0f - _2512) * _472;
    float _2533 = max(-127.0f, _9_m49.z * _2517);
    float _2557 = max(-127.0f, _9_m52.x * _2517);
    float _2568 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2516 - _9_m49.x)))) * ((abs(_2533) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2533)) / _2533) : (0.693147182464599609375f - (0.2402265071868896484375f * _2533)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2516 - _9_m52.z)))) * ((abs(_2557) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2557)) / _2557) : (0.693147182464599609375f - (0.2402265071868896484375f * _2557))));
    float _2590 = clamp((_472 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2593 = clamp((max(clamp(exp2(-(_2568 * _2519)), 0.0f, 1.0f), _9_m51.w) + clamp((_472 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2590, 0.0f, 1.0f);
    float4 _2633 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _47.SampleLevel(_13, float3((_420 + ((((float3(uint3(_2478, _2474 + (_2476 * _2478), _362) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_452 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_452 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2635 = _2633.w;
    _2639 = _2633.xyz + (((_9_m51.xyz * (1.0f - _2593)) + (((_9_m54.xyz * pow(clamp(dot(_471, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2568 * max(_2519 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2590))) * _2635);
    _2640 = _2635 * _2593;
  } else {
    float3 _2343 = _445 - _7_m11.xyz;
    float _2345 = _2343.y;
    float _2359 = max(-127.0f, _9_m49.z * _2345);
    float _2383 = max(-127.0f, _9_m52.x * _2345);
    float _2394 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2359) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2359)) / _2359) : (0.693147182464599609375f - (0.2402265071868896484375f * _2359)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2383) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2383)) / _2383) : (0.693147182464599609375f - (0.2402265071868896484375f * _2383))));
    float _2416 = clamp((_472 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2419 = clamp((max(clamp(exp2(-(_2394 * _472)), 0.0f, 1.0f), _9_m51.w) + clamp((_472 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2416, 0.0f, 1.0f);
    _2639 = (_9_m51.xyz * (1.0f - _2419)) + (((_9_m54.xyz * pow(clamp(dot(_471, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2394 * max(_472 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2416));
    _2640 = _2419;
  }
  float3 _2643 = _2302 * _2640;
  float3 _2645 = (clamp(_2265.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _2643) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2305 * _2305)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2311) / max((12.56637096405029296875f * _2315) * sqrt(_2315), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2302)) * _2640) + _2639);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2645 = (_2645 * 0.65f) + (clamp(_2265.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _2647 = float4(_2645.x, _2645.y, _2645.z, _2265.w);
  _2647.w = dot(_2643, 0.3333333432674407958984375f.xxx);
  _5 = _2647;
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

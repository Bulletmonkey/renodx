#include "./renodx_injection.hlsli"

// Ported from the native 0x16A1F809 Vulkan dump.
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

static float _365;
static uint _366;

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

[[vk::binding(42, 3)]] ByteAddressBuffer _24 : register(t42, space3);
[[vk::binding(41, 3)]] cbuffer _25_27 : register(b41, space3) {
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

[[vk::binding(34, 3)]] cbuffer _35_36 : register(b34, space3) {
  column_major float4x4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c4);
};

[[vk::binding(36, 3)]] cbuffer _44_45 : register(b36, space3) {
  float4 _45_m0[15] : packoffset(c0);
  float4 _45_m1[15] : packoffset(c15);
};

[[vk::binding(39, 3)]] cbuffer _48_49 : register(b39, space3) {
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
[[vk::binding(31, 3)]] Texture2D<float4> _18 : register(t31, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _19 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _20 : register(t13, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _21 : register(t25, space3);
[[vk::binding(15, 3)]] Texture2DArray<float4> _22 : register(t15, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _32 : register(t11, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _33 : register(t32, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _34 : register(t7, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _38 : register(t16, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _39 : register(t8, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _40 : register(t14, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _41 : register(t17, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _42 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _43 : register(t10, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _46 : register(t30, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _47 : register(t24, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _50 : register(t33, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _51 : register(t6, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _52 : register(t23, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _53 : register(t20, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _54 : register(t22, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _55 : register(t19, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _56 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _57 : register(t18, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _58 : register(t5, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _59 : register(t29, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _60 : register(t28, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _61 : register(t27, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _62 : register(t26, space3);

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
  uint2 _371 = uint2(gl_FragCoord.xy);
  int _374 = int(_371.x);
  int _375 = int(_371.y);
  int2 _377 = int3(_374, _375, 0).xy;
  float4 _379 = _59.Load(int3(_377, 0));
  float4 _381 = _60.Load(int3(_377, 0));
  float4 _383 = _61.Load(int3(_377, 0));
  float _384 = _379.x;
  float _385 = _379.y;
  float _386 = _379.z;
  uint _396 = uint(int((round(_379.w * 3.0f) * 4.0f) + round(_381.w * 3.0f)));
  float2 _399 = (_381.xy * 2.0f) - 1.0f.xx;
  float _403 = 1.0f - dot(1.0f.xx, abs(_399));
  float3 _405 = float3(_399.x, _403, _399.y);
  float3 _417;
  if (_403 < 0.0f) {
    float2 _412 = _405.xz;
    bool2 _413 = bool2(_412.x >= 0.0f.xx.x, _412.y >= 0.0f.xx.y);
    float2 _415 = (1.0f.xx - abs(_405.zx)) * float2(_413.x ? 1.0f.xx.x : (-1.0f).xx.x, _413.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _417 = float3(_415.x, _405.y, _415.y);
  } else {
    _417 = _405;
  }
  float3 _418 = normalize(_417);
  float _419 = _381.z;
  float _421 = _383.w;
  float2 _424 = float2(_371);
  float2 _437 = gl_FragCoord.xy * _9_m0.zw;
  float2 _439 = (_437 * 2.0f) - 1.0f.xx;
  float4 _442 = float4(_439, _18.SampleLevel(_12, (_424 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _442.y = -_439.y;
  float4 _445 = mul(_7_m6, _442);
  float3 _449 = _445.xyz / _445.w.xxx;
  float _450 = _449.x;
  float _451 = _449.y;
  float4 _453 = float4(_450, _451, _449.z, 1.0f);
  float _456 = abs(mul(_7_m0, _453).z);
  float3 _471;
  do {
    if (_9_m4.w == 0.0f) {
      _471 = _7_m11.xyz - _449;
      break;
    } else {
      _471 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _472 = dot(_471, _471);
  float _474 = rsqrt(max(_472, 9.9999999392252902907785028219223e-09f));
  float3 _475 = _471 * _474;
  float _476 = _472 * _474;
  float3 _477 = -_475;
  bool _480 = _9_m132.x > 0.00048828125f;
  float2 _490;
  if (_480) {
    _490 = _58.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _490 = 1.0f.xx;
  }
  float _491 = dot(_418, float3(0.0f, -1.0f, 0.0f));
  float3 _547;
  float3 _548;
  [branch] if (_9_m124.x > 0.5f) {
    float _518 = abs(_418.x);
    float _520 = abs(_418.y);
    float _522 = abs(_418.z);
    float3 _527 = float3(_518, _520, _522) * (1.0f / ((_518 + _520) + _522));
    float4 _540 = _38.SampleLevel(_14, _449 * _9_m127.x, 0.0f);
    float _541 = _540.x;
    _547 = float3(_541, _365, _365);
    _548 = ((((float3(0.0f, 0.0f, 1.0f) * _527.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _527.y)) + (float3(1.0f, 0.0f, 0.0f) * _527.z)) * ((_541 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_491)));
  }
  else {
    _547 = 0.0f.xxx;
    _548 = 0.0f.xxx;
  }
  float4 _562 = mul(_36_m0, float4((_449 + ((((_418 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_491, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _491), 0.100000001490116119384765625f, 1.0f)))) + _548, 1.0f));
  float2 _565 = (_562.xy * 0.5f) + 0.5f.xx;
  float4 _566 = float4(_565.x, _565.y, _562.z, _562.w);
  _566.y = 1.0f - _565.y;
  float _587;
  [branch] if (_9_m124.y > 0.5f) {
    _587 = _34.SampleCmpLevelZero(_16, (_566.xy + _36_m1.xy).xy, max(_562.z, 0.00048828125f));
  }
  else {
    _587 = 1.0f;
  }
  float _590 = _418.y;
  float _591 = clamp(_590, 0.0f, 1.0f);
  float _592 = lerp(_9_m128.w, 1.0f, _591);
  float2 _596 = _449.xz;
  float2 _601 = abs(_596 - _7_m11.xz);
  float _604 = max(_601.x, _601.y);
  float _614 = lerp(_592 * _587, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _604));
  float3 _621 = ddy_fine(_449);
  float3 _622 = ddx_fine(_449);
  float3 _623 = cross(_621, _622);
  float _629 = clamp((_623 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_623, _623)))).y, 0.0f, 1.0f);
  float _632 = _9_m121.z * 0.300000011920928955078125f;
  float _634 = _632 + 0.68599998950958251953125f;
  float _641 = 1.0f - clamp((_456 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _656 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_634, 0.9700000286102294921875f), 0.9900000095367431640625f, _591) + (smoothstep(0.990999996662139892578125f, 1.0f, _629) * step(_385, (_547.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _855;
  float _856;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_632 + 0.686999976634979248046875f, _634, _629) * smoothstep(-0.5f, -0.100000001490116119384765625f, _590)) > 0.00048828125f)) {
    float3 _665 = abs(_418);
    float3 _666 = _665 * _665;
    float3 _671 = _666 * (1.0f / (_666.x + _666.z));
    float3 _673 = normalize(cross(_418, float3(0.0f, 1.0f, 0.0f)));
    float3 _675 = normalize(cross(_673, _418));
    float3 _691 = floor((_449 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _699 = frac(sin(dot(fmod(_691.xz + _691.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _703 = (step(0.0f.xx, _418.zx) * 2.0f) - 1.0f.xx;
    float3 _706 = _449;
    _706.x = _450 * _703.x;
    _706.z = _449.z * (-_703.y);
    float _718 = _547.x * _699;
    float2 _726 = float2(frac(((-_9_m121.x) * (((1.0f - _699) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_718 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_718 * 6.0f)));
    float _729 = floor(_699 * 5.0f) + 1.0f;
    float2 _733 = frac(float2(_729, 0.100000001490116119384765625f * _729) * _451);
    float2 _745 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _733 - (_726 - 1.0f.xx)), _726 - _733), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _733 - _726), (_726 + 1.0f.xx) - _733), step(_726, _733));
    float _746 = _745.x;
    float _748 = smoothstep(0.4000000059604644775390625f, 1.0f, _746 * _746);
    float _749 = _745.y;
    float _754 = (_749 * 2.0f) - 1.0f;
    float2 _763 = float2((_547.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _748) * _754), (1.0f.xx * _547.x).y * (_547.x + (((_748 * 0.00999999977648258209228515625f) * _748) * _754)));
    float4 _787 = (_39.SampleBias(_14, (_706.zy * _9_m122.xy) + _763, _9_m16) * _671.x) + (_39.SampleBias(_14, (_706.xy * _9_m122.xy) + _763, _9_m16) * _671.z);
    float2 _790 = (_787.xy * 2.0f) - 1.0f.xx;
    float _796 = _787.w;
    float _806 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_749 + (((_748 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_796 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_754 * _796) * 0.5f) + _748, 0.0f, 1.0f)));
    float _812 = _787.z;
    float _822 = (((lerp(0.100000001490116119384765625f, (_806 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _806, 0.0f, 1.0f), 5.0f), _812)) * _812) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_614 * step(0.04500000178813934326171875f, _386))) * _641);
    float2 _825 = _790.xy;
    float _830 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_825, _825), 0.0f, 1.0f)));
    float3 _831 = float3(_790, _830);
    float2 _835 = _831.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _822) * _9_m121.y);
    float3 _836 = float3(_835.x, _835.y, _831.z);
    _836.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _830, _822);
    _855 = lerp(_418, mul(float4x4(float4(_673.x, _675.x, _418.x, 0.0f), float4(_673.y, _675.y, _590, 0.0f), float4(_673.z, _675.z, _418.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_836 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_836, _836))), 0.0f)).xyz, _822.xxx);
    _856 = (_822 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _855 = _418;
    _856 = 0.0f;
  }
  float3 _1004;
  float _1005;
  [branch] if (_656 > 0.00048828125f) {
    float2 _863 = (-_596) * _9_m126.xy;
    float2 _865 = frac(_863);
    float2 _912;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _875 = frac(sin(dot(fmod(floor(_863), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _888 = floor(frac(_9_m125.x + _875) * (_9_m126.z * _9_m126.z));
      float _890 = 1.0f / _9_m126.z;
      _912 = ((_40.SampleBias(_13, frac((lerp(_865, _865.yx, step(_875, 0.5f).xx) * _890) + float2(_890 * fmod(_888, _9_m126.z), _890 * ((_9_m126.z - 1.0f) - floor(_888 * _890)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _912 = 0.0f.xx;
    }
    float2 _953;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _938 = _40.SampleBias(_14, (_863 + float2(0.0f, _9_m125.z)) + ((float2(_547.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _942 = _40.SampleBias(_14, (_863 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _547.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _948 = (((float4(_938.z, _938.w, _942.z, _942.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _547.x;
      _953 = _912 + (_948.xy + _948.zw);
    }
    else {
      _953 = _912;
    }
    float _961 = (((_547.x * 0.699999988079071044921875f) + (_419 * 0.300000011920928955078125f)) * clamp((_419 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _385;
    float _965 = smoothstep(min(_961, 0.9900000095367431640625f), clamp(_961 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _976 = _9_m120.x * _656;
    float3 _986 = float3(_953, max(0.00048828125f, sqrt(1.0f - clamp(dot(_953, _953), 0.0f, 1.0f))));
    float3 _992 = (_986 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_986, _986)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _1004 = lerp(_418, _992, (((_976 * _965) * _614) * _641).xxx);
    _1005 = max((smoothstep(0.0f, _385 * 0.20000000298023223876953125f, (_976 * clamp(lerp((_9_m126.w * (1.0f - _547.x)) * 0.5f, 1.0f, _965) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _992.y) * _614) * _641, 0.0f);
  }
  else {
    _1004 = _855;
    _1005 = 0.0f;
  }
  float _1008 = min(_490.x, _490.y);
  float2 _1010 = _490 * (1.0f - lerp(lerp(_9_m128.z * _592, 1.0f, _614), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _604)));
  float _1011 = _1010.x;
  float _1014 = clamp((_386 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _1015 = 1.0f - _419;
  float _1031 = lerp(clamp((clamp((_1015 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _856)) + ((_1005 * 0.100000001490116119384765625f) * _419), 0.0f, 1.0f), 1.0f, _384);
  float _1033 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _491);
  float _1042 = lerp(1.0f, 0.25f, ((_9_m120.x * _1031) * (1.0f - _384)) * _1033);
  float _1058 = (1.0f - lerp(_1015, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1031) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1015)), 0.0f, 1.0f), _1015, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1033) * (1.0f - _1011))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1005, smoothstep(0.0f, 0.0500000007450580596923828125f, _856)));
  float _1063;
  float _1064;
  if (_480) {
    _1063 = lerp(1.0f, _490.y, _1014);
    _1064 = lerp(1.0f, 0.0f, _1014);
  } else {
    _1063 = 1.0f;
    _1064 = 1.0f;
  }
  float _1069 = lerp(lerp(min(_1063, _1058), _1058, _1008), _419, _1011);
  float3 _1071 = _383.xyz * lerp(lerp(min(_1064, _1042), _1042, _1008), 1.0f, _1011);
  float3 _1072 = _1071 * _384;
  float3 _1073 = _1071 - _1072;
  float3 _1077 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _384)).xxx + _1072;
  float _1078 = dot(_1004, _475);
  float _1079 = max(0.0f, _1078);
  float _1080 = _1069 * _1069;
  float _1081 = _1079 * _1079;
  float _1082 = _1081 * _1079;
  float2 _1083 = float2(1.0f, _1079);
  float2 _1086 = float2(1.0f, _1080);
  float _1087 = _1080 * _1080;
  float3 _1089 = float3(1.0f, _1080, _1087 * _1080);
  float _1094 = dot(mul(_1083, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1086) / dot(mul(float3(1.0f, _1081, _1082), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1089);
  float _1099 = dot(mul(_1083, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1086) / dot(mul(float3(1.0f, _1079, _1082), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1089);
  float3 _1102 = (_1077 * _1094) + _1099.xxx;
  float _1103 = _1094 + _1099;
  float4 _1290;
  do {
    [branch] if (_31_m4 == 0) {
      _1290 = 0.0f.xxxx;
      break;
    }
    float4 _1123 = _32.Load(int3(_377, 0));
    float _1124 = _1123.x;
    float4 _1289;
    if (_1124 > 0.001000000047497451305389404296875f) {
      float3 _1134 = reflect(_477, _1004);
      float3 _1135 = -_29_m0.xyz;
      float _1140 = dot(_1135, _1134);
      float3 _1142 = _1134 - (_1135 * _1140);
      bool3 _1144 = (_1140 < _29_m4.z).xxx;
      float3 _1152 = normalize((_1135 * _29_m4.z) + ((_1142 * rsqrt(max(6.103515625e-05f, dot(_1142, _1142)))) * _29_m4.y));
      float3 _1153 = float3(_1144.x ? _1152.x : _1134.x, _1144.y ? _1152.y : _1134.y, _1144.z ? _1152.z : _1134.z);
      float3 _1157 = _1153 + _475;
      float3 _1161 = _1157 * rsqrt(max(6.103515625e-05f, dot(_1157, _1157)));
      float _1164 = clamp(dot(_1153, _1004), 0.0f, 1.0f);
      float _1166 = clamp(dot(_1004, _1161), 0.0f, 1.0f);
      float _1169 = clamp(_1078, 0.0f, 1.0f);
      float _1190 = (((_1166 * _1087) - _1166) * _1166) + 1.0f;
      float _1193 = 1.0f - clamp(dot(_475, _1161), 0.0f, 1.0f);
      float _1194 = _1193 * _1193;
      float _1196 = (_1193 * _1194) * _1194;
      float _1220 = 1.0f - _1069;
      float _1227 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1220 * (1.04997003078460693359375f + (_1220 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1220))))));
      float _1228 = 1.0f - _1227;
      float3 _1231 = _1077 + ((1.0f.xxx - _1077) * 0.0476190485060214996337890625f);
      float3 _1271;
      do {
        [branch] if (((_396 > 0u) && (_396 <= 15u)) && (_421 > 0.0f)) {
          uint _1255 = clamp(_396 - 1u, 0u, 14u);
          _1271 = _42.SampleLevel(_13, float3((dot(_418, _1153) * 0.5f) + 0.5f, _421 * _45_m0[_1255].w, float(_1255)), 0.0f).xyz;
          break;
        }
        _1271 = clamp(dot(_1153, _418), 0.0f, 1.0f).xxx;
        break;
      } while (false);
      float3 _1274 = ((clamp((min(((_1077 * (1.0f - _1196)) + _1196.xxx) * ((_1087 / (_1190 * _1190)) * (0.5f / (((_1164 * sqrt(((((-_1169) * _1087) + _1169) * _1169) + _1087)) + (_1169 * sqrt(((((-_1164) * _1087) + _1164) * _1164) + _1087))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1231 * (((_41.SampleLevel(_13, (float2(_1169, _1069) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1164, _1069) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1227) / _1228)) * _1231) / (1.0f.xxx - (_1231 * _1228)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1164) + ((_1073 * 1.0f) * _1271)) * _29_m1.xyz;
      float3 _1287 = lerp(_1274, _1274 * _33.SampleBias(_13, float2(_1124, 0.5f), _9_m16).xyz, (1.0f - _1124).xxx) * min(_46.SampleLevel(_13, _437, 0.0f).x, 1.0f);
      _1289 = float4(_1287.x, _1287.y, _1287.z, 0.0f.xxxx.w);
    } else {
      _1289 = 0.0f.xxxx;
    }
    _1290 = _1289;
    break;
  } while (false);
  float3 _1292 = _385.xxx;
  float3 _1331;
  float3 _1332;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x16A1F809:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _1307 = min(_21.SampleBias(_12, _4, _9_m16).x, _385);
    _1331 = clamp((pow(abs(max(0.0f, dot(_418, _475)) + _1307), exp2(((-16.0f) * _1069) - 1.0f)) - 1.0f) + _1307, 0.0f, 1.0f).xxx;
    _1332 = max(_1307.xxx, ((((((_1073 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1307) + ((_1073 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1307) + ((_1073 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1307);
  }
  else {
    _1331 = _1292;
    _1332 = _1292;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _1290.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1331 : 1.0f.xxx;
  // RenoDX code end
  float3 _1355;
  do {
    [branch] if (((_396 > 0u) && (_396 <= 15u)) && (_421 > 0.0f)) {
      uint _1343 = clamp(_396 - 1u, 0u, 14u);
      _1355 = _43.SampleLevel(_13, float3(_421 * _45_m0[_1343].w, 0.5f, float(_1343)), 0.0f).xyz;
      break;
    }
    _1355 = 1.0f.xxx;
    break;
  } while (false);
  float3 _1372 = (_449 + (_418 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_424 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _1382 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _1391 = _1372 - (_9_m108.xyz + (_1382 * (-_9_m110.w)));
  float _1406 = max(min(max((max(abs(_1391.x), abs(_1391.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1391.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1708;
  float4 _1709;
  float4 _1710;
  float _1711;
  float _1712;
  if ((_9_m108.w != 0.0f) && (_1406 < 1.0f)) {
    float3 _1419 = _1372 - (_9_m108.xyz + (_1382 * (-_9_m110.y)));
    float _1433 = max(clamp((max(abs(_1419.x), abs(_1419.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1419.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1509;
    float4 _1510;
    float4 _1511;
    float4 _1512;
    if (_1433 < 1.0f) {
      float3 _1442 = ((_1372 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1444 = _1442 - floor(_1442);
      float4 _1448 = _52.SampleLevel(_14, _1444, 0.0f);
      float _1449 = 1.0f - _1433;
      float _1453 = _9_m109.y * 0.5f;
      float _1458 = _1444.x;
      float _1459 = clamp(_1444.y, _1453, 1.0f - _1453) * 0.3333333432674407958984375f;
      float _1460 = _1444.z;
      float4 _1463 = _53.SampleLevel(_13, float3(_1458, _1459, _1460), 0.0f);
      float _1479 = _1448.x;
      float _1489 = _1448.y;
      float _1499 = _1448.z;
      _1509 = _1406 + (_1463.w * _1449);
      _1510 = float4(((_53.SampleLevel(_13, float3(_1458, _1459 + 0.666666686534881591796875f, _1460), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1499, _1499) * _1449;
      _1511 = float4(((_53.SampleLevel(_13, float3(_1458, _1459 + 0.3333333432674407958984375f, _1460), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1489, _1489) * _1449;
      _1512 = float4(((_1463.xyz * 4.0f) - 2.0f.xxx) * _1479, _1479) * _1449;
    } else {
      _1509 = _1406;
      _1510 = 0.0f.xxxx;
      _1511 = 0.0f.xxxx;
      _1512 = 0.0f.xxxx;
    }
    float3 _1518 = _1372 - (_9_m108.xyz + (_1382 * (-_9_m110.z)));
    float _1532 = max(clamp((max(abs(_1518.x), abs(_1518.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1518.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1612;
    float4 _1613;
    float4 _1614;
    float4 _1615;
    if (_1532 < 1.0f) {
      float3 _1541 = ((_1372 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1543 = _1541 - floor(_1541);
      float4 _1547 = _54.SampleLevel(_14, _1543, 0.0f);
      float _1549 = _1433 * (1.0f - _1532);
      float _1553 = _9_m109.y * 0.5f;
      float _1558 = _1543.x;
      float _1559 = clamp(_1543.y, _1553, 1.0f - _1553) * 0.3333333432674407958984375f;
      float _1560 = _1543.z;
      float4 _1563 = _55.SampleLevel(_13, float3(_1558, _1559, _1560), 0.0f);
      float _1579 = _1547.x;
      float _1590 = _1547.y;
      float _1601 = _1547.z;
      _1612 = _1509 + (_1563.w * _1549);
      _1613 = _1510 + (float4(((_55.SampleLevel(_13, float3(_1558, _1559 + 0.666666686534881591796875f, _1560), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1601, _1601) * _1549);
      _1614 = _1511 + (float4(((_55.SampleLevel(_13, float3(_1558, _1559 + 0.3333333432674407958984375f, _1560), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1590, _1590) * _1549);
      _1615 = _1512 + (float4(((_1563.xyz * 4.0f) - 2.0f.xxx) * _1579, _1579) * _1549);
    } else {
      _1612 = _1509;
      _1613 = _1510;
      _1614 = _1511;
      _1615 = _1512;
    }
    float4 _1698;
    float4 _1699;
    float4 _1700;
    float _1701;
    if (_1532 > 0.0f) {
      float3 _1624 = ((_1372 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1627 = _9_m109.xyz * 0.5f;
      float3 _1629 = clamp(_1624 - floor(_1624), _1627, 1.0f.xxx - _1627);
      float4 _1633 = _56.SampleLevel(_14, _1629, 0.0f);
      float _1635 = _1532 * (1.0f - _1406);
      float _1639 = _9_m109.y * 0.5f;
      float _1644 = _1629.x;
      float _1645 = clamp(_1629.y, _1639, 1.0f - _1639) * 0.3333333432674407958984375f;
      float _1646 = _1629.z;
      float4 _1649 = _57.SampleLevel(_13, float3(_1644, _1645, _1646), 0.0f);
      float _1665 = _1633.x;
      float _1676 = _1633.y;
      float _1687 = _1633.z;
      _1698 = _1613 + (float4(((_57.SampleLevel(_13, float3(_1644, _1645 + 0.666666686534881591796875f, _1646), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1687, _1687) * _1635);
      _1699 = _1614 + (float4(((_57.SampleLevel(_13, float3(_1644, _1645 + 0.3333333432674407958984375f, _1646), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1676, _1676) * _1635);
      _1700 = _1615 + (float4(((_1649.xyz * 4.0f) - 2.0f.xxx) * _1665, _1665) * _1635);
      _1701 = _1612 + (_1649.w * _1635);
    } else {
      _1698 = _1613;
      _1699 = _1614;
      _1700 = _1615;
      _1701 = _1612;
    }
    float _1704 = clamp((_1701 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1708 = _1698;
    _1709 = _1699;
    _1710 = _1700;
    _1711 = _1704 - _1406;
    _1712 = (_1704 + _1406) * 0.5f;
  } else {
    _1708 = 0.0f.xxxx;
    _1709 = 0.0f.xxxx;
    _1710 = 0.0f.xxxx;
    _1711 = 0.0f;
    _1712 = 1.0f;
  }
  float4 _1732 = _1710 + float4(_9_m111.x * _1712, (_9_m111.y * _1712) + ((_9_m111.w * _1711) * 0.5f), _9_m111.z * _1712, (_9_m111.w * _1712) + ((_9_m111.y * _1711) * 0.375f));
  float4 _1752 = _1709 + float4(_9_m112.x * _1712, (_9_m112.y * _1712) + ((_9_m112.w * _1711) * 0.5f), _9_m112.z * _1712, (_9_m112.w * _1712) + ((_9_m112.y * _1711) * 0.375f));
  float4 _1772 = _1708 + float4(_9_m113.x * _1712, (_9_m113.y * _1712) + ((_9_m113.w * _1711) * 0.5f), _9_m113.z * _1712, (_9_m113.w * _1712) + ((_9_m113.y * _1711) * 0.375f));
  float4 _1930;
  float4 _1931;
  float4 _1932;
  [branch] if (all(bool2(_437.x >= 0.0f.xx.x, _437.y >= 0.0f.xx.y))) {
    float4 _1780 = _51.SampleLevel(_13, _437, 0.0f);
    float4 _1781 = abs(_1780);
    float4 _1927;
    float4 _1928;
    float4 _1929;
    [branch] if (any(bool4(_1781.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1781.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1781.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1781.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1787 = length(_1780.yzw);
      uint _1789;
      float _1792;
      _1789 = 0u;
      _1792 = 1.0f;
      for (float _1794 = _1787; _1794 > 4.599999904632568359375f;) {
        _1789++;
        _1792 *= 0.5f;
        _1794 *= 0.5f;
        continue;
      }
      float4 _1798 = _1780 * _1792;
      float4 _1803 = float4(0.0f, _1798.yzw);
      float2 _1825 = (_50.SampleLevel(_13, float2(((((length(_1803) * _49_m3.x) + _49_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _49_m2.xy) + _49_m2.zw;
      float4 _1839;
      _1839 = float4(_1825.x * 3.5449078083038330078125f, _1803.yzw * _1825.y) * exp(_1798.x * 0.282094776630401611328125f);
      for (uint _1842 = 0u; _1842 < _1789;) {
        _1839 = mul(float4x4(_1839, float4(_1839.yx, 0.0f, 0.0f), float4(_1839.z, 0.0f, _1839.x, 0.0f), float4(_1839.w, 0.0f, 0.0f, _1839.x)) * 0.282094776630401611328125f, _1839);
        _1842++;
        continue;
      }
      float4x4 _1863 = float4x4(_1839, float4(_1839.yx, 0.0f, 0.0f), float4(_1839.z, 0.0f, _1839.x, 0.0f), float4(_1839.w, 0.0f, 0.0f, _1839.x)) * 0.282094776630401611328125f;
      float4 _1873 = mul(_1863, float4(_1732.w * 1.1283791065216064453125f, _1732.y * (-0.977204978466033935546875f), _1732.z * 0.977204978466033935546875f, _1732.x * (-0.977204978466033935546875f)));
      float4 _1893 = mul(_1863, float4(_1752.w * 1.1283791065216064453125f, _1752.y * (-0.977204978466033935546875f), _1752.z * 0.977204978466033935546875f, _1752.x * (-0.977204978466033935546875f)));
      float4 _1913 = mul(_1863, float4(_1772.w * 1.1283791065216064453125f, _1772.y * (-0.977204978466033935546875f), _1772.z * 0.977204978466033935546875f, _1772.x * (-0.977204978466033935546875f)));
      _1927 = float4(_1873.x * 0.886226952075958251953125f, _1873.w * (-1.02332675457000732421875f), _1873.y * (-1.02332675457000732421875f), _1873.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1928 = float4(_1893.x * 0.886226952075958251953125f, _1893.w * (-1.02332675457000732421875f), _1893.y * (-1.02332675457000732421875f), _1893.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1929 = float4(_1913.x * 0.886226952075958251953125f, _1913.w * (-1.02332675457000732421875f), _1913.y * (-1.02332675457000732421875f), _1913.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1927 = _1732;
      _1928 = _1752;
      _1929 = _1772;
    }
    _1930 = _1927;
    _1931 = _1928;
    _1932 = _1929;
  }
  else {
    _1930 = _1732;
    _1931 = _1752;
    _1932 = _1772;
  }
  float _1939 = max(0.0f, dot(_1930.xyz * _1355.x, _418) + _1930.w);
  float _1946 = max(0.0f, dot(_1931.xyz * _1355.y, _418) + _1931.w);
  float _1953 = max(0.0f, dot(_1932.xyz * _1355.z, _418) + _1932.w);
  float3 _1963 = reflect(_477, _1004);
  float _1971 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1069, 0.001000000047497451305389404296875f))));
  float2 _1975 = floor(_424 * _27_m0.w);
  float _1992 = floor(_456 - _27_m2.y);
  float _1996 = clamp(_1992, 0.0f, _27_m1.x - 1.0f);
  uint _2006 = (_1992 <= _1996) ? (_24.Load(uint(_9_m21.z + int(_1975.x + (_1975.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1996)) * 4 + 0)) : 0u;
  float _2009 = dot(float4(_1939, _1946, _1953, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _2011;
  float _2014;
  uint _2016;
  _2011 = 0.0f.xxx;
  _2014 = 1.0f;
  _2016 = _2006;
  uint _2017;
  float3 _2012;
  float _2015;
  bool _2019;
  [loop] for (;;) {
    bool _2018 = _2016 != 0u;
    _2019 = _2014 > 0.00999999977648258209228515625f;
    if (_2018 && _2019) {
      uint _2023 = firstbitlow(_2016);
      _2017 = _2016 ^ (1u << (_2023 & 31u));
      float3 _2043 = float3(dot(_27_m4[_2023]._m2, _453), dot(_27_m4[_2023]._m3, _453), dot(_27_m4[_2023]._m4, _453));
      float3 _2044 = abs(_2043);
      if (all(bool3(_2044.x <= _27_m4[_2023]._m1.xyz.x, _2044.y <= _27_m4[_2023]._m1.xyz.y, _2044.z <= _27_m4[_2023]._m1.xyz.z))) {
        float3 _2053 = _27_m4[_2023]._m1.xyz * 0.100000001490116119384765625f;
        float3 _2055 = _2044 * 0.100000001490116119384765625f;
        float3 _2056 = _2055 * _2055;
        float3 _2059 = (_27_m4[_2023]._m1.xyz - _2044) * _27_m4[_2023]._m5.xyz;
        float3 _2107;
        [branch] if (_27_m4[_2023]._m6.x == 1.0f) {
          float3 _2092 = float3(dot(_27_m4[_2023]._m2.xyz, _1963), dot(_27_m4[_2023]._m3.xyz, _1963), dot(_27_m4[_2023]._m4.xyz, _1963));
          float3 _2094 = (_27_m4[_2023]._m1.xyz - _2043) / _2092;
          float3 _2097 = ((-_27_m4[_2023]._m1.xyz) - _2043) / _2092;
          bool3 _2098 = bool3(_2092.x > 0.0f.xxx.x, _2092.y > 0.0f.xxx.y, _2092.z > 0.0f.xxx.z);
          float3 _2099 = float3(_2098.x ? _2094.x : _2097.x, _2098.y ? _2094.y : _2097.y, _2098.z ? _2094.z : _2097.z);
          _2107 = _2043 + (_2092 * min(min(_2099.x, _2099.y), _2099.z));
        }
        else {
          _2107 = _1963;
        }
        float3 _2108 = normalize(_2107);
        float3 _2111 = float3(int3(sign(_2108)));
        float3 _2114 = _2108 / dot(_2108, _2111).xxx;
        float3 _2128;
        if (_2114.z < 0.0f) {
          float3 _2119 = abs(_2114);
          float2 _2126 = _2111.xy * float2(1.0f - _2119.y, 1.0f - _2119.x);
          _2128 = float3(_2126.x, _2126.y, _2114.z);
        } else {
          _2128 = _2114;
        }
        float _2153 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_2023]._m0, float4(_1004, 1.0f))));
        float _2166 = clamp((min(_2059.x, min(_2059.y, _2059.z)) * _27_m4[_2023]._m6.y) + ((((((_2053 * _2053).x - ((_2056.x + _2056.y) + _2056.z)) * _27_m4[_2023]._m5.x) * _27_m4[_2023]._m5.x) * (1.0f - _27_m4[_2023]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_2023]._m6.w;
        _2012 = _2011 + ((((_22.SampleLevel(_15, float3((((_2128.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_2023]._m1.w), _1971).xyz * _27_m4[_2023]._m5.w) * ((((((clamp(abs(_2009 / _2153), 0.0f, 1.0f) * 2.0f) + _2009) / (2.0f + _2153)) - 1.0f) * _9_m23.w) + 1.0f)) * _2166) * _2014);
        _2015 = _2014 * (1.0f - _2166);
      } else {
        _2012 = _2011;
        _2015 = _2014;
      }
      _2011 = _2012;
      _2014 = _2015;
      _2016 = _2017;
      continue;
    } else {
      break;
    }
  }
  float3 _2235;
  if (_2019) {
    float3 _2174 = normalize(_1963);
    float3 _2177 = float3(int3(sign(_2174)));
    float3 _2180 = _2174 / dot(_2174, _2177).xxx;
    float3 _2194;
    if (_2180.z < 0.0f) {
      float3 _2185 = abs(_2180);
      float2 _2192 = _2177.xy * float2(1.0f - _2185.y, 1.0f - _2185.x);
      _2194 = float3(_2192.x, _2192.y, _2180.z);
    } else {
      _2194 = _2180;
    }
    float _2221 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_1004, 1.0f))));
    _2235 = _2011 + ((_22.SampleLevel(_15, float3((((_2194.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1971).xyz * ((((((clamp(abs(_2009 / _2221), 0.0f, 1.0f) * 2.0f) + _2009) / (2.0f + _2221)) - 1.0f) * _9_m23.w) + 1.0f)) * _2014);
  } else {
    _2235 = _2011;
  }
  float3 _2241 = (_2235 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _2241 *= 0.25f + (0.75f * saturate(_2009));
  }
  // RenoDX code end
  float3 _2264;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _2258 = _20.SampleBias(_13, _4, _9_m16);
    float _2259 = _2258.x;
    _2264 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2259) + (_2241 * (1.0f - _2259));
  }
  else {
    _2264 = _2241;
  }
  float3 _2267 = (((float3(_1939, _1946, _1953) * _1073) * _9_m22.x) * _1332) + ((_2264 * (_1102 + ((_1077 * ((1.0f - _1103) / _1103)) * _1102))) * _1331);
  float4 _2269 = float4(_1290.x, _1290.y, _1290.z, _1290.w) + float4(_2267.x, _2267.y, _2267.z, 0.0f.xxxx.w);
  float3 _2272 = clamp(_2269.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _2287 = _451 * _9_m46.w;
  float _2292 = max(0.00999999977648258209228515625f, _2287 + _9_m47.w);
  float3 _2306 = exp(_9_m45.xyz * ((-max(0.0f, (_476 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2292)) / _2292) * exp(_2287 + _9_m48.w))));
  float _2309 = dot(_477, _9_m44.xyz);
  float _2315 = _9_m45.w * _9_m45.w;
  float _2319 = (1.0f + _2315) - ((2.0f * _9_m45.w) * _2309);
  float3 _2643;
  float _2644;
  if (_9_m55.z > 0.0f) {
    uint3 _2471 = (uint3(int3(_374, _375, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _2472 = _2471.y;
    uint _2473 = _2471.z;
    uint _2476 = _2471.x + (_2472 * _2473);
    uint _2478 = _2472 + (_2473 * _2476);
    uint _2480 = _2473 + (_2476 * _2478);
    uint _2482 = _2476 + (_2478 * _2480);
    float _2506 = dot(_477, -_7_m0[2].xyz);
    float3 _2514 = _449 - _7_m11.xyz;
    float _2516 = (_9_m55.w * ((_2506 > 5.9604644775390625e-08f) ? (1.0f / _2506) : 0.0f)) * (1.0f / _476);
    float _2517 = _2514.y;
    float _2518 = _2516 * _2517;
    float _2520 = _7_m11.y + _2518;
    float _2521 = _2517 - _2518;
    float _2523 = (1.0f - _2516) * _476;
    float _2537 = max(-127.0f, _9_m49.z * _2521);
    float _2561 = max(-127.0f, _9_m52.x * _2521);
    float _2572 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2520 - _9_m49.x)))) * ((abs(_2537) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2537)) / _2537) : (0.693147182464599609375f - (0.2402265071868896484375f * _2537)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2520 - _9_m52.z)))) * ((abs(_2561) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2561)) / _2561) : (0.693147182464599609375f - (0.2402265071868896484375f * _2561))));
    float _2594 = clamp((_476 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2597 = clamp((max(clamp(exp2(-(_2572 * _2523)), 0.0f, 1.0f), _9_m51.w) + clamp((_476 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2594, 0.0f, 1.0f);
    float4 _2637 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _47.SampleLevel(_13, float3((_424 + ((((float3(uint3(_2482, _2478 + (_2480 * _2482), _366) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_456 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_456 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2639 = _2637.w;
    _2643 = _2637.xyz + (((_9_m51.xyz * (1.0f - _2597)) + (((_9_m54.xyz * pow(clamp(dot(_475, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2572 * max(_2523 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2594))) * _2639);
    _2644 = _2639 * _2597;
  } else {
    float3 _2347 = _449 - _7_m11.xyz;
    float _2349 = _2347.y;
    float _2363 = max(-127.0f, _9_m49.z * _2349);
    float _2387 = max(-127.0f, _9_m52.x * _2349);
    float _2398 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2363) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2363)) / _2363) : (0.693147182464599609375f - (0.2402265071868896484375f * _2363)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2387) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2387)) / _2387) : (0.693147182464599609375f - (0.2402265071868896484375f * _2387))));
    float _2420 = clamp((_476 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2423 = clamp((max(clamp(exp2(-(_2398 * _476)), 0.0f, 1.0f), _9_m51.w) + clamp((_476 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2420, 0.0f, 1.0f);
    _2643 = (_9_m51.xyz * (1.0f - _2423)) + (((_9_m54.xyz * pow(clamp(dot(_475, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2398 * max(_476 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2420));
    _2644 = _2423;
  }
  float3 _2647 = _2306 * _2644;
  float3 _2649 = (_2272 * _2647) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2309 * _2309)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2315) / max((12.56637096405029296875f * _2319) * sqrt(_2319), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2306)) * _2644) + _2643);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2649 = (_2649 * 0.65f) + (_2272 * 0.35f);
  }
  // RenoDX code end
  float _2650 = dot(_2647, 0.3333333432674407958984375f.xxx);
  float4 _2651 = float4(_2649.x, _2649.y, _2649.z, _2269.w);
  _2651.w = _2650;
  float _2678 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _449) * _9_m61.z), 0.0f, 1.0f);
  float3 _2686 = lerp(_2272, _2651.xyz, min((1.0f - _2678) + ((_62.SampleLevel(_14, (_449 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _2678), 1.0f + _2650).xxx);
  _5 = float4(_2686.x, _2686.y, _2686.z, _2651.w);
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

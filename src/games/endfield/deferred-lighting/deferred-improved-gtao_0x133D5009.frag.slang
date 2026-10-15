#include "./renodx_injection.hlsli"

// Ported from the native 0x133D5009 Vulkan dump.
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

static uint _287;

[[vk::binding(30, 3)]] cbuffer _6_7 : register(b30, space3) {
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

[[vk::binding(34, 3)]] cbuffer _8_9 : register(b34, space3) {
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

[[vk::binding(36, 3)]] ByteAddressBuffer _24 : register(t36, space3);
[[vk::binding(35, 3)]] cbuffer _25_27 : register(b35, space3) {
  float4 _27_m0 : packoffset(c0);
  float4 _27_m1 : packoffset(c1);
  float4 _27_m2 : packoffset(c2);
  float4 _27_m3 : packoffset(c3);
  _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(31, 3)]] cbuffer _28_29 : register(b31, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  float4 _29_m4 : packoffset(c4);
  uint4 _29_m5 : packoffset(c5);
  float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(32, 3)]] cbuffer _30_31 : register(b32, space3) {
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

[[vk::binding(29, 3)]] cbuffer _35_36 : register(b29, space3) {
  column_major float4x4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c4);
};

[[vk::binding(33, 3)]] cbuffer _42_43 : register(b33, space3) {
  float4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c1);
  float4 _43_m2 : packoffset(c2);
  float4 _43_m3 : packoffset(c3);
  float4 _43_m4 : packoffset(c4);
  uint4 _43_m5 : packoffset(c5);
  float4 _43_m6 : packoffset(c6);
  float4 _43_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _16 : register(s3, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _18 : register(t26, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _19 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _20 : register(t10, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _21 : register(t21, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _22 : register(t11, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _32 : register(t8, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _33 : register(t27, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _34 : register(t7, space3);
[[vk::binding(12, 3)]] Texture3D<float4> _38 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _39 : register(t13, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _40 : register(t25, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _41 : register(t20, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _44 : register(t28, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _45 : register(t6, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _46 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _47 : register(t16, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _48 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _49 : register(t15, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _50 : register(t17, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _51 : register(t14, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _52 : register(t5, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _53 : register(t24, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _54 : register(t23, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _55 : register(t22, space3);

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
  uint2 _293 = uint2(gl_FragCoord.xy);
  int _296 = int(_293.x);
  int _297 = int(_293.y);
  int2 _299 = int3(_296, _297, 0).xy;
  float4 _301 = _53.Load(int3(_299, 0));
  float4 _303 = _54.Load(int3(_299, 0));
  float4 _305 = _55.Load(int3(_299, 0));
  uint _309 = uint(_301.x * 1023.0f);
  float _313 = float((_309 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _321 = float(((_309 & 7u) << 2u) | (uint(_301.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _325 = uint(round(_301.y * 1023.0f));
  float _330 = float((_325 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _335 = uint(_301.z * 1023.0f);
  float2 _350 = (_303.xy * 2.0f) - 1.0f.xx;
  float _354 = 1.0f - dot(1.0f.xx, abs(_350));
  float3 _356 = float3(_350.x, _354, _350.y);
  float3 _368;
  if (_354 < 0.0f) {
    float2 _363 = _356.xz;
    bool2 _364 = bool2(_363.x >= 0.0f.xx.x, _363.y >= 0.0f.xx.y);
    float2 _366 = (1.0f.xx - abs(_356.zx)) * float2(_364.x ? 1.0f.xx.x : (-1.0f).xx.x, _364.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _368 = float3(_366.x, _356.y, _366.y);
  } else {
    _368 = _356;
  }
  float3 _369 = normalize(_368);
  float _370 = _303.z;
  float _372 = _305.w;
  float _374 = (float(_325 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _377 = float2(_293);
  float2 _390 = gl_FragCoord.xy * _9_m0.zw;
  float2 _392 = (_390 * 2.0f) - 1.0f.xx;
  float4 _395 = float4(_392, _18.SampleLevel(_12, (_377 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _395.y = -_392.y;
  float4 _398 = mul(_7_m6, _395);
  float3 _402 = _398.xyz / _398.w.xxx;
  float4 _406 = float4(_402, 1.0f);
  float _409 = abs(mul(_7_m0, _406).z);
  float3 _424;
  do {
    if (_9_m4.w == 0.0f) {
      _424 = _7_m11.xyz - _402;
      break;
    } else {
      _424 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _425 = dot(_424, _424);
  float _427 = rsqrt(max(_425, 9.9999999392252902907785028219223e-09f));
  float3 _428 = _424 * _427;
  float _429 = _425 * _427;
  float3 _430 = -_428;
  float2 _443;
  if (_9_m132.x > 0.00048828125f) {
    _443 = _52.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _443 = 1.0f.xx;
  }
  float _444 = dot(_369, float3(0.0f, -1.0f, 0.0f));
  float3 _499;
  [branch] if (_9_m124.x > 0.5f) {
    float _471 = abs(_369.x);
    float _473 = abs(_369.y);
    float _475 = abs(_369.z);
    float3 _480 = float3(_471, _473, _475) * (1.0f / ((_471 + _473) + _475));
    _499 = ((((float3(0.0f, 0.0f, 1.0f) * _480.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _480.y)) + (float3(1.0f, 0.0f, 0.0f) * _480.z)) * ((_38.SampleLevel(_14, _402 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_444)));
  }
  else {
    _499 = 0.0f.xxx;
  }
  float4 _513 = mul(_36_m0, float4((_402 + ((((_369 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_444, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _444), 0.100000001490116119384765625f, 1.0f)))) + _499, 1.0f));
  float2 _516 = (_513.xy * 0.5f) + 0.5f.xx;
  float4 _517 = float4(_516.x, _516.y, _513.z, _513.w);
  _517.y = 1.0f - _516.y;
  float _538;
  [branch] if (_9_m124.y > 0.5f) {
    _538 = _34.SampleCmpLevelZero(_16, (_517.xy + _36_m1.xy).xy, max(_513.z, 0.00048828125f));
  }
  else {
    _538 = 1.0f;
  }
  float _543 = lerp(_9_m128.w, 1.0f, clamp(_369.y, 0.0f, 1.0f));
  float2 _552 = abs(_402.xz - _7_m11.xz);
  float _555 = max(_552.x, _552.y);
  float _574 = 1.0f - (_443 * (1.0f - lerp(lerp(_9_m128.z * _543, 1.0f, lerp(_543 * _538, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _555))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _555)))).x;
  float _575 = 1.0f - _370;
  float _582 = clamp((_575 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f);
  float3 _590 = _305.xyz * lerp(1.0f, 0.25f, (_9_m120.x * _582) * _574);
  float _600 = lerp(_575, clamp(_575 + (((0.60000002384185791015625f - (0.4000000059604644775390625f * _582)) * _575) * (_370 + (-0.300000011920928955078125f))), _575, 0.699999988079071044921875f), (_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _574);
  float _601 = 1.0f - _600;
  float3 _603 = (0.07999999821186065673828125f * _374).xxx;
  float _604 = dot(_369, _428);
  float _605 = max(0.0f, _604);
  float4 _607 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _601) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _608 = _607.x;
  float2 _618 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_608 * _608, exp2((-9.27999973297119140625f) * _605)) * _608) + _607.y)) + _607.zw;
  float4 _826;
  do {
    [branch] if (_31_m4 == 0) {
      _826 = 0.0f.xxxx;
      break;
    }
    float4 _637 = _40.SampleLevel(_13, _390, 0.0f);
    float _638 = _637.x;
    float4 _642 = _32.Load(int3(_299, 0));
    float _643 = _642.x;
    float4 _825;
    if (_643 > 0.001000000047497451305389404296875f) {
      float3 _653 = reflect(_430, _369);
      float3 _654 = -_29_m0.xyz;
      float _659 = dot(_654, _653);
      float3 _661 = _653 - (_654 * _659);
      bool3 _663 = (_659 < _29_m4.z).xxx;
      float3 _671 = normalize((_654 * _29_m4.z) + ((_661 * rsqrt(max(6.103515625e-05f, dot(_661, _661)))) * _29_m4.y));
      float3 _672 = float3(_663.x ? _671.x : _653.x, _663.y ? _671.y : _653.y, _663.z ? _671.z : _653.z);
      float3 _676 = _672 + _428;
      float3 _680 = _676 * rsqrt(max(6.103515625e-05f, dot(_676, _676)));
      float _681 = dot(_369, _672);
      float _682 = clamp(dot(_672, _369), 0.0f, 1.0f);
      float _684 = clamp(dot(_369, _680), 0.0f, 1.0f);
      float _687 = dot(_428, _672);
      float _689 = clamp(_604, 0.0f, 1.0f);
      float _690 = _601 * _601;
      float _691 = _690 * _690;
      float _712 = (((_684 * _691) - _684) * _684) + 1.0f;
      float _715 = 1.0f - clamp(dot(_428, _680), 0.0f, 1.0f);
      float _716 = _715 * _715;
      float _718 = (_715 * _716) * _716;
      float _748 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_600 * (1.04997003078460693359375f + (_600 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _600))))));
      float _749 = 1.0f - _748;
      float3 _752 = _603 + ((1.0f.xxx - _603) * 0.0476190485060214996337890625f);
      float _783 = clamp(-_687, 0.0f, 1.0f);
      float _787 = (((_783 * 0.36000001430511474609375f) - _783) * _783) + 1.0f;
      float _788 = _787 * _787;
      float3 _800 = ((min(((_603 * (1.0f - _718)) + _718.xxx) * ((_691 / (_712 * _712)) * (0.5f / (((_682 * sqrt(((((-_689) * _691) + _689) * _689) + _691)) + (_689 * sqrt(((((-_682) * _691) + _682) * _682) + _691))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_752 * (((_39.SampleLevel(_13, (float2(_689, _601) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_13, (float2(_682, _601) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _748) / _749)) * _752) / (1.0f.xxx - (_752 * _749)))) * lerp(clamp(_604 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_687, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_687 + 1.0f, 0.0f, 1.0f))) * _330;
      float3 _810 = _29_m1.xyz * (((((_590 * _330) * 1.0f) * (float((_335 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_800 * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _682)) + (((((_590 / max(0.00999999977648258209228515625f, max(max(_590.x, _590.y), _590.z)).xxx) * _313) * (clamp(0.5f - _681, 0.0f, 1.0f) * ((0.36000001430511474609375f != _788) ? (0.36000001430511474609375f / _788) : 1.0f))) + (_590 * (clamp(_681 + _321, 0.0f, 1.0f) - clamp(_682, 0.0f, 1.0f)))) * _330));
      float3 _823 = lerp(_810, _810 * _33.SampleBias(_13, float2(_643, 0.5f), _9_m16).xyz, (1.0f - _643).xxx) * lerp(_638, max(_638, _330), _321);
      _825 = float4(_823.x, _823.y, _823.z, 0.0f.xxxx.w);
    } else {
      _825 = 0.0f.xxxx;
    }
    _826 = _825;
    break;
  } while (false);
  float3 _828 = _372.xxx;
  float3 _865;
  float3 _866;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x133D5009:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _841 = min(_21.SampleBias(_12, _4, _9_m16).x, _372);
    _865 = clamp((pow(abs(_605 + _841), exp2(((-16.0f) * _601) - 1.0f)) - 1.0f) + _841, 0.0f, 1.0f).xxx;
    _866 = max(_841.xxx, ((((((_590 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _841) + ((_590 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _841) + ((_590 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _841);
  }
  else {
    _865 = _828;
    _866 = _828;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _826.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _865 : 1.0f.xxx;
  // RenoDX code end
  float3 _876 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _885 = _402 - (_9_m108.xyz + (_876 * (-_9_m110.w)));
  float _900 = max(min(max((max(abs(_885.x), abs(_885.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_885.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1202;
  float4 _1203;
  float4 _1204;
  float _1205;
  float _1206;
  if ((_9_m108.w != 0.0f) && (_900 < 1.0f)) {
    float3 _913 = _402 - (_9_m108.xyz + (_876 * (-_9_m110.y)));
    float _927 = max(clamp((max(abs(_913.x), abs(_913.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_913.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1003;
    float4 _1004;
    float4 _1005;
    float4 _1006;
    if (_927 < 1.0f) {
      float3 _936 = ((_402 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _938 = _936 - floor(_936);
      float4 _942 = _46.SampleLevel(_14, _938, 0.0f);
      float _943 = 1.0f - _927;
      float _947 = _9_m109.y * 0.5f;
      float _952 = _938.x;
      float _953 = clamp(_938.y, _947, 1.0f - _947) * 0.3333333432674407958984375f;
      float _954 = _938.z;
      float4 _957 = _47.SampleLevel(_13, float3(_952, _953, _954), 0.0f);
      float _973 = _942.x;
      float _983 = _942.y;
      float _993 = _942.z;
      _1003 = _900 + (_957.w * _943);
      _1004 = float4(((_47.SampleLevel(_13, float3(_952, _953 + 0.666666686534881591796875f, _954), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _993, _993) * _943;
      _1005 = float4(((_47.SampleLevel(_13, float3(_952, _953 + 0.3333333432674407958984375f, _954), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _983, _983) * _943;
      _1006 = float4(((_957.xyz * 4.0f) - 2.0f.xxx) * _973, _973) * _943;
    } else {
      _1003 = _900;
      _1004 = 0.0f.xxxx;
      _1005 = 0.0f.xxxx;
      _1006 = 0.0f.xxxx;
    }
    float3 _1012 = _402 - (_9_m108.xyz + (_876 * (-_9_m110.z)));
    float _1026 = max(clamp((max(abs(_1012.x), abs(_1012.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1012.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1106;
    float4 _1107;
    float4 _1108;
    float4 _1109;
    if (_1026 < 1.0f) {
      float3 _1035 = ((_402 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1037 = _1035 - floor(_1035);
      float4 _1041 = _48.SampleLevel(_14, _1037, 0.0f);
      float _1043 = _927 * (1.0f - _1026);
      float _1047 = _9_m109.y * 0.5f;
      float _1052 = _1037.x;
      float _1053 = clamp(_1037.y, _1047, 1.0f - _1047) * 0.3333333432674407958984375f;
      float _1054 = _1037.z;
      float4 _1057 = _49.SampleLevel(_13, float3(_1052, _1053, _1054), 0.0f);
      float _1073 = _1041.x;
      float _1084 = _1041.y;
      float _1095 = _1041.z;
      _1106 = _1003 + (_1057.w * _1043);
      _1107 = _1004 + (float4(((_49.SampleLevel(_13, float3(_1052, _1053 + 0.666666686534881591796875f, _1054), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1095, _1095) * _1043);
      _1108 = _1005 + (float4(((_49.SampleLevel(_13, float3(_1052, _1053 + 0.3333333432674407958984375f, _1054), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1084, _1084) * _1043);
      _1109 = _1006 + (float4(((_1057.xyz * 4.0f) - 2.0f.xxx) * _1073, _1073) * _1043);
    } else {
      _1106 = _1003;
      _1107 = _1004;
      _1108 = _1005;
      _1109 = _1006;
    }
    float4 _1192;
    float4 _1193;
    float4 _1194;
    float _1195;
    if (_1026 > 0.0f) {
      float3 _1118 = ((_402 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1121 = _9_m109.xyz * 0.5f;
      float3 _1123 = clamp(_1118 - floor(_1118), _1121, 1.0f.xxx - _1121);
      float4 _1127 = _50.SampleLevel(_14, _1123, 0.0f);
      float _1129 = _1026 * (1.0f - _900);
      float _1133 = _9_m109.y * 0.5f;
      float _1138 = _1123.x;
      float _1139 = clamp(_1123.y, _1133, 1.0f - _1133) * 0.3333333432674407958984375f;
      float _1140 = _1123.z;
      float4 _1143 = _51.SampleLevel(_13, float3(_1138, _1139, _1140), 0.0f);
      float _1159 = _1127.x;
      float _1170 = _1127.y;
      float _1181 = _1127.z;
      _1192 = _1107 + (float4(((_51.SampleLevel(_13, float3(_1138, _1139 + 0.666666686534881591796875f, _1140), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1181, _1181) * _1129);
      _1193 = _1108 + (float4(((_51.SampleLevel(_13, float3(_1138, _1139 + 0.3333333432674407958984375f, _1140), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1170, _1170) * _1129);
      _1194 = _1109 + (float4(((_1143.xyz * 4.0f) - 2.0f.xxx) * _1159, _1159) * _1129);
      _1195 = _1106 + (_1143.w * _1129);
    } else {
      _1192 = _1107;
      _1193 = _1108;
      _1194 = _1109;
      _1195 = _1106;
    }
    float _1198 = clamp((_1195 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1202 = _1192;
    _1203 = _1193;
    _1204 = _1194;
    _1205 = _1198 - _900;
    _1206 = (_1198 + _900) * 0.5f;
  } else {
    _1202 = 0.0f.xxxx;
    _1203 = 0.0f.xxxx;
    _1204 = 0.0f.xxxx;
    _1205 = 0.0f;
    _1206 = 1.0f;
  }
  float4 _1226 = _1204 + float4(_9_m111.x * _1206, (_9_m111.y * _1206) + ((_9_m111.w * _1205) * 0.5f), _9_m111.z * _1206, (_9_m111.w * _1206) + ((_9_m111.y * _1205) * 0.375f));
  float4 _1246 = _1203 + float4(_9_m112.x * _1206, (_9_m112.y * _1206) + ((_9_m112.w * _1205) * 0.5f), _9_m112.z * _1206, (_9_m112.w * _1206) + ((_9_m112.y * _1205) * 0.375f));
  float4 _1266 = _1202 + float4(_9_m113.x * _1206, (_9_m113.y * _1206) + ((_9_m113.w * _1205) * 0.5f), _9_m113.z * _1206, (_9_m113.w * _1206) + ((_9_m113.y * _1205) * 0.375f));
  float4 _1424;
  float4 _1425;
  float4 _1426;
  [branch] if (all(bool2(_390.x >= 0.0f.xx.x, _390.y >= 0.0f.xx.y))) {
    float4 _1274 = _45.SampleLevel(_13, _390, 0.0f);
    float4 _1275 = abs(_1274);
    float4 _1421;
    float4 _1422;
    float4 _1423;
    [branch] if (any(bool4(_1275.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1275.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1275.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1275.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1281 = length(_1274.yzw);
      uint _1283;
      float _1286;
      _1283 = 0u;
      _1286 = 1.0f;
      for (float _1288 = _1281; _1288 > 4.599999904632568359375f;) {
        _1283++;
        _1286 *= 0.5f;
        _1288 *= 0.5f;
        continue;
      }
      float4 _1292 = _1274 * _1286;
      float4 _1297 = float4(0.0f, _1292.yzw);
      float2 _1319 = (_44.SampleLevel(_13, float2(((((length(_1297) * _43_m3.x) + _43_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _43_m2.xy) + _43_m2.zw;
      float4 _1333;
      _1333 = float4(_1319.x * 3.5449078083038330078125f, _1297.yzw * _1319.y) * exp(_1292.x * 0.282094776630401611328125f);
      for (uint _1336 = 0u; _1336 < _1283;) {
        _1333 = mul(float4x4(_1333, float4(_1333.yx, 0.0f, 0.0f), float4(_1333.z, 0.0f, _1333.x, 0.0f), float4(_1333.w, 0.0f, 0.0f, _1333.x)) * 0.282094776630401611328125f, _1333);
        _1336++;
        continue;
      }
      float4x4 _1357 = float4x4(_1333, float4(_1333.yx, 0.0f, 0.0f), float4(_1333.z, 0.0f, _1333.x, 0.0f), float4(_1333.w, 0.0f, 0.0f, _1333.x)) * 0.282094776630401611328125f;
      float4 _1367 = mul(_1357, float4(_1226.w * 1.1283791065216064453125f, _1226.y * (-0.977204978466033935546875f), _1226.z * 0.977204978466033935546875f, _1226.x * (-0.977204978466033935546875f)));
      float4 _1387 = mul(_1357, float4(_1246.w * 1.1283791065216064453125f, _1246.y * (-0.977204978466033935546875f), _1246.z * 0.977204978466033935546875f, _1246.x * (-0.977204978466033935546875f)));
      float4 _1407 = mul(_1357, float4(_1266.w * 1.1283791065216064453125f, _1266.y * (-0.977204978466033935546875f), _1266.z * 0.977204978466033935546875f, _1266.x * (-0.977204978466033935546875f)));
      _1421 = float4(_1367.x * 0.886226952075958251953125f, _1367.w * (-1.02332675457000732421875f), _1367.y * (-1.02332675457000732421875f), _1367.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1422 = float4(_1387.x * 0.886226952075958251953125f, _1387.w * (-1.02332675457000732421875f), _1387.y * (-1.02332675457000732421875f), _1387.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1423 = float4(_1407.x * 0.886226952075958251953125f, _1407.w * (-1.02332675457000732421875f), _1407.y * (-1.02332675457000732421875f), _1407.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1421 = _1226;
      _1422 = _1246;
      _1423 = _1266;
    }
    _1424 = _1421;
    _1425 = _1422;
    _1426 = _1423;
  }
  else {
    _1424 = _1226;
    _1425 = _1246;
    _1426 = _1266;
  }
  float4 _1429 = float4(_369, 1.0f);
  float3 _1434 = max(float3(dot(_1424, _1429), dot(_1425, _1429), dot(_1426, _1429)), 0.0f.xxx);
  float4 _1439 = float4(-_369, 1.0f);
  float3 _1456 = reflect(_430, _369);
  float _1464 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_601, 0.001000000047497451305389404296875f))));
  float2 _1468 = floor(_377 * _27_m0.w);
  float _1485 = floor(_409 - _27_m2.y);
  float _1489 = clamp(_1485, 0.0f, _27_m1.x - 1.0f);
  uint _1499 = (_1485 <= _1489) ? (_24.Load(uint(_9_m21.z + int(_1468.x + (_1468.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1489)) * 4 + 0)) : 0u;
  float _1502 = dot(float4(_1434, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1504;
  float _1507;
  uint _1509;
  _1504 = 0.0f.xxx;
  _1507 = 1.0f;
  _1509 = _1499;
  uint _1510;
  float3 _1505;
  float _1508;
  bool _1512;
  [loop] for (;;) {
    bool _1511 = _1509 != 0u;
    _1512 = _1507 > 0.00999999977648258209228515625f;
    if (_1511 && _1512) {
      uint _1516 = firstbitlow(_1509);
      _1510 = _1509 ^ (1u << (_1516 & 31u));
      float3 _1536 = float3(dot(_27_m4[_1516]._m2, _406), dot(_27_m4[_1516]._m3, _406), dot(_27_m4[_1516]._m4, _406));
      float3 _1537 = abs(_1536);
      if (all(bool3(_1537.x <= _27_m4[_1516]._m1.xyz.x, _1537.y <= _27_m4[_1516]._m1.xyz.y, _1537.z <= _27_m4[_1516]._m1.xyz.z))) {
        float3 _1546 = _27_m4[_1516]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1548 = _1537 * 0.100000001490116119384765625f;
        float3 _1549 = _1548 * _1548;
        float3 _1552 = (_27_m4[_1516]._m1.xyz - _1537) * _27_m4[_1516]._m5.xyz;
        float3 _1600;
        [branch] if (_27_m4[_1516]._m6.x == 1.0f) {
          float3 _1585 = float3(dot(_27_m4[_1516]._m2.xyz, _1456), dot(_27_m4[_1516]._m3.xyz, _1456), dot(_27_m4[_1516]._m4.xyz, _1456));
          float3 _1587 = (_27_m4[_1516]._m1.xyz - _1536) / _1585;
          float3 _1590 = ((-_27_m4[_1516]._m1.xyz) - _1536) / _1585;
          bool3 _1591 = bool3(_1585.x > 0.0f.xxx.x, _1585.y > 0.0f.xxx.y, _1585.z > 0.0f.xxx.z);
          float3 _1592 = float3(_1591.x ? _1587.x : _1590.x, _1591.y ? _1587.y : _1590.y, _1591.z ? _1587.z : _1590.z);
          _1600 = _1536 + (_1585 * min(min(_1592.x, _1592.y), _1592.z));
        }
        else {
          _1600 = _1456;
        }
        float3 _1601 = normalize(_1600);
        float3 _1604 = float3(int3(sign(_1601)));
        float3 _1607 = _1601 / dot(_1601, _1604).xxx;
        float3 _1621;
        if (_1607.z < 0.0f) {
          float3 _1612 = abs(_1607);
          float2 _1619 = _1604.xy * float2(1.0f - _1612.y, 1.0f - _1612.x);
          _1621 = float3(_1619.x, _1619.y, _1607.z);
        } else {
          _1621 = _1607;
        }
        float _1642 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_1516]._m0, _1429)));
        float _1655 = clamp((min(_1552.x, min(_1552.y, _1552.z)) * _27_m4[_1516]._m6.y) + ((((((_1546 * _1546).x - ((_1549.x + _1549.y) + _1549.z)) * _27_m4[_1516]._m5.x) * _27_m4[_1516]._m5.x) * (1.0f - _27_m4[_1516]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_1516]._m6.w;
        _1505 = _1504 + ((((_22.SampleLevel(_15, float3((((_1621.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_1516]._m1.w), _1464).xyz * _27_m4[_1516]._m5.w) * ((((((clamp(abs(_1502 / _1642), 0.0f, 1.0f) * 2.0f) + _1502) / (2.0f + _1642)) - 1.0f) * _9_m23.w) + 1.0f)) * _1655) * _1507);
        _1508 = _1507 * (1.0f - _1655);
      } else {
        _1505 = _1504;
        _1508 = _1507;
      }
      _1504 = _1505;
      _1507 = _1508;
      _1509 = _1510;
      continue;
    } else {
      break;
    }
  }
  float3 _1720;
  if (_1512) {
    float3 _1663 = normalize(_1456);
    float3 _1666 = float3(int3(sign(_1663)));
    float3 _1669 = _1663 / dot(_1663, _1666).xxx;
    float3 _1683;
    if (_1669.z < 0.0f) {
      float3 _1674 = abs(_1669);
      float2 _1681 = _1666.xy * float2(1.0f - _1674.y, 1.0f - _1674.x);
      _1683 = float3(_1681.x, _1681.y, _1669.z);
    } else {
      _1683 = _1669;
    }
    float _1706 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, _1429)));
    _1720 = _1504 + ((_22.SampleLevel(_15, float3((((_1683.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1464).xyz * ((((((clamp(abs(_1502 / _1706), 0.0f, 1.0f) * 2.0f) + _1502) / (2.0f + _1706)) - 1.0f) * _9_m23.w) + 1.0f)) * _1507);
  } else {
    _1720 = _1504;
  }
  float3 _1726 = (_1720 * _9_m23.z) * _9_m22.y;
  float3 _1749;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1743 = _20.SampleBias(_13, _4, _9_m16);
    float _1744 = _1743.x;
    _1749 = (_19.SampleBias(_13, _4, _9_m16).xyz * _1744) + (_1726 * (1.0f - _1744));
  }
  else {
    _1749 = _1726;
  }
  float3 _1770 = ((((_1434 * _590) * _9_m22.x) * _866) + ((_1749 * ((_603 * _618.x) + (clamp(_374 * 4.0f, 0.0f, 1.0f) * _618.y).xxx)) * _865)) + (((((max(float3(dot(_1424, _1439), dot(_1425, _1439), dot(_1426, _1439)), 0.0f.xxx) * _9_m22.x) * _866) * (_590 / max(0.00999999977648258209228515625f, max(max(_590.x, _590.y), _590.z)).xxx)) * ((_313 * clamp(dot(_428, _369), 0.0f, 1.0f)) + (float(((_335 & 7u) << 2u) | (uint(_303.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _1772 = float4(_826.x, _826.y, _826.z, _826.w) + float4(_1770.x, _1770.y, _1770.z, 0.0f.xxxx.w);
  float _1790 = _402.y * _9_m46.w;
  float _1795 = max(0.00999999977648258209228515625f, _1790 + _9_m47.w);
  float3 _1809 = exp(_9_m45.xyz * ((-max(0.0f, (_429 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1795)) / _1795) * exp(_1790 + _9_m48.w))));
  float _1812 = dot(_430, _9_m44.xyz);
  float _1818 = _9_m45.w * _9_m45.w;
  float _1822 = (1.0f + _1818) - ((2.0f * _9_m45.w) * _1812);
  float3 _2146;
  float _2147;
  if (_9_m55.z > 0.0f) {
    uint3 _1974 = (uint3(int3(_296, _297, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1975 = _1974.y;
    uint _1976 = _1974.z;
    uint _1979 = _1974.x + (_1975 * _1976);
    uint _1981 = _1975 + (_1976 * _1979);
    uint _1983 = _1976 + (_1979 * _1981);
    uint _1985 = _1979 + (_1981 * _1983);
    float _2009 = dot(_430, -_7_m0[2].xyz);
    float3 _2017 = _402 - _7_m11.xyz;
    float _2019 = (_9_m55.w * ((_2009 > 5.9604644775390625e-08f) ? (1.0f / _2009) : 0.0f)) * (1.0f / _429);
    float _2020 = _2017.y;
    float _2021 = _2019 * _2020;
    float _2023 = _7_m11.y + _2021;
    float _2024 = _2020 - _2021;
    float _2026 = (1.0f - _2019) * _429;
    float _2040 = max(-127.0f, _9_m49.z * _2024);
    float _2064 = max(-127.0f, _9_m52.x * _2024);
    float _2075 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2023 - _9_m49.x)))) * ((abs(_2040) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2040)) / _2040) : (0.693147182464599609375f - (0.2402265071868896484375f * _2040)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2023 - _9_m52.z)))) * ((abs(_2064) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2064)) / _2064) : (0.693147182464599609375f - (0.2402265071868896484375f * _2064))));
    float _2097 = clamp((_429 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2100 = clamp((max(clamp(exp2(-(_2075 * _2026)), 0.0f, 1.0f), _9_m51.w) + clamp((_429 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2097, 0.0f, 1.0f);
    float4 _2140 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _41.SampleLevel(_13, float3((_377 + ((((float3(uint3(_1985, _1981 + (_1983 * _1985), _287) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_409 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_409 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2142 = _2140.w;
    _2146 = _2140.xyz + (((_9_m51.xyz * (1.0f - _2100)) + (((_9_m54.xyz * pow(clamp(dot(_428, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2075 * max(_2026 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2097))) * _2142);
    _2147 = _2142 * _2100;
  } else {
    float3 _1850 = _402 - _7_m11.xyz;
    float _1852 = _1850.y;
    float _1866 = max(-127.0f, _9_m49.z * _1852);
    float _1890 = max(-127.0f, _9_m52.x * _1852);
    float _1901 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1866) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1866)) / _1866) : (0.693147182464599609375f - (0.2402265071868896484375f * _1866)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1890) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1890)) / _1890) : (0.693147182464599609375f - (0.2402265071868896484375f * _1890))));
    float _1923 = clamp((_429 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1926 = clamp((max(clamp(exp2(-(_1901 * _429)), 0.0f, 1.0f), _9_m51.w) + clamp((_429 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1923, 0.0f, 1.0f);
    _2146 = (_9_m51.xyz * (1.0f - _1926)) + (((_9_m54.xyz * pow(clamp(dot(_428, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1901 * max(_429 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1923));
    _2147 = _1926;
  }
  float3 _2150 = _1809 * _2147;
  float3 _2152 = (clamp(_1772.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _2150) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1812 * _1812)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1818) / max((12.56637096405029296875f * _1822) * sqrt(_1822), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1809)) * _2147) + _2146);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2152 = (_2152 * 0.65f) + (clamp(_1772.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _2154 = float4(_2152.x, _2152.y, _2152.z, _1772.w);
  _2154.w = dot(_2150, 0.3333333432674407958984375f.xxx);
  _5 = _2154;
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

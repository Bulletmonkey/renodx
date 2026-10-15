#include "./renodx_injection.hlsli"

// Ported from the native 0x223180CF Vulkan dump.
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

static uint _291;

[[vk::binding(31, 3)]] cbuffer _6_7 : register(b31, space3) {
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

[[vk::binding(35, 3)]] cbuffer _8_9 : register(b35, space3) {
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

[[vk::binding(37, 3)]] ByteAddressBuffer _24 : register(t37, space3);
[[vk::binding(36, 3)]] cbuffer _25_27 : register(b36, space3) {
  float4 _27_m0 : packoffset(c0);
  float4 _27_m1 : packoffset(c1);
  float4 _27_m2 : packoffset(c2);
  float4 _27_m3 : packoffset(c3);
  _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(32, 3)]] cbuffer _28_29 : register(b32, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  float4 _29_m4 : packoffset(c4);
  uint4 _29_m5 : packoffset(c5);
  float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(33, 3)]] cbuffer _30_31 : register(b33, space3) {
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

[[vk::binding(30, 3)]] cbuffer _35_36 : register(b30, space3) {
  column_major float4x4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c4);
};

[[vk::binding(34, 3)]] cbuffer _42_43 : register(b34, space3) {
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
[[vk::binding(27, 3)]] Texture2D<float4> _18 : register(t27, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _19 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _20 : register(t10, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _21 : register(t21, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _22 : register(t11, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _32 : register(t8, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _33 : register(t28, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _34 : register(t7, space3);
[[vk::binding(12, 3)]] Texture3D<float4> _38 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _39 : register(t13, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _40 : register(t26, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _41 : register(t20, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _44 : register(t29, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _45 : register(t6, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _46 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _47 : register(t16, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _48 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _49 : register(t15, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _50 : register(t17, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _51 : register(t14, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _52 : register(t5, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _53 : register(t25, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _54 : register(t24, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _55 : register(t23, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _56 : register(t22, space3);

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
  uint2 _297 = uint2(gl_FragCoord.xy);
  int _300 = int(_297.x);
  int _301 = int(_297.y);
  int2 _303 = int3(_300, _301, 0).xy;
  float4 _305 = _53.Load(int3(_303, 0));
  float4 _307 = _54.Load(int3(_303, 0));
  float4 _309 = _55.Load(int3(_303, 0));
  uint _313 = uint(_305.x * 1023.0f);
  float _317 = float((_313 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _325 = float(((_313 & 7u) << 2u) | (uint(_305.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _329 = uint(round(_305.y * 1023.0f));
  float _334 = float((_329 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _339 = uint(_305.z * 1023.0f);
  float2 _354 = (_307.xy * 2.0f) - 1.0f.xx;
  float _358 = 1.0f - dot(1.0f.xx, abs(_354));
  float3 _360 = float3(_354.x, _358, _354.y);
  float3 _372;
  if (_358 < 0.0f) {
    float2 _367 = _360.xz;
    bool2 _368 = bool2(_367.x >= 0.0f.xx.x, _367.y >= 0.0f.xx.y);
    float2 _370 = (1.0f.xx - abs(_360.zx)) * float2(_368.x ? 1.0f.xx.x : (-1.0f).xx.x, _368.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _372 = float3(_370.x, _360.y, _370.y);
  } else {
    _372 = _360;
  }
  float3 _373 = normalize(_372);
  float _374 = _307.z;
  float _376 = _309.w;
  float _378 = (float(_329 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _381 = float2(_297);
  float2 _394 = gl_FragCoord.xy * _9_m0.zw;
  float2 _396 = (_394 * 2.0f) - 1.0f.xx;
  float4 _399 = float4(_396, _18.SampleLevel(_12, (_381 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _399.y = -_396.y;
  float4 _402 = mul(_7_m6, _399);
  float3 _406 = _402.xyz / _402.w.xxx;
  float4 _410 = float4(_406, 1.0f);
  float _413 = abs(mul(_7_m0, _410).z);
  float3 _428;
  do {
    if (_9_m4.w == 0.0f) {
      _428 = _7_m11.xyz - _406;
      break;
    } else {
      _428 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _429 = dot(_428, _428);
  float _431 = rsqrt(max(_429, 9.9999999392252902907785028219223e-09f));
  float3 _432 = _428 * _431;
  float _433 = _429 * _431;
  float3 _434 = -_432;
  float2 _447;
  if (_9_m132.x > 0.00048828125f) {
    _447 = _52.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _447 = 1.0f.xx;
  }
  float _448 = dot(_373, float3(0.0f, -1.0f, 0.0f));
  float3 _503;
  [branch] if (_9_m124.x > 0.5f) {
    float _475 = abs(_373.x);
    float _477 = abs(_373.y);
    float _479 = abs(_373.z);
    float3 _484 = float3(_475, _477, _479) * (1.0f / ((_475 + _477) + _479));
    _503 = ((((float3(0.0f, 0.0f, 1.0f) * _484.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _484.y)) + (float3(1.0f, 0.0f, 0.0f) * _484.z)) * ((_38.SampleLevel(_14, _406 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_448)));
  }
  else {
    _503 = 0.0f.xxx;
  }
  float4 _517 = mul(_36_m0, float4((_406 + ((((_373 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_448, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _448), 0.100000001490116119384765625f, 1.0f)))) + _503, 1.0f));
  float2 _520 = (_517.xy * 0.5f) + 0.5f.xx;
  float4 _521 = float4(_520.x, _520.y, _517.z, _517.w);
  _521.y = 1.0f - _520.y;
  float _542;
  [branch] if (_9_m124.y > 0.5f) {
    _542 = _34.SampleCmpLevelZero(_16, (_521.xy + _36_m1.xy).xy, max(_517.z, 0.00048828125f));
  }
  else {
    _542 = 1.0f;
  }
  float _547 = lerp(_9_m128.w, 1.0f, clamp(_373.y, 0.0f, 1.0f));
  float2 _556 = abs(_406.xz - _7_m11.xz);
  float _559 = max(_556.x, _556.y);
  float _578 = 1.0f - (_447 * (1.0f - lerp(lerp(_9_m128.z * _547, 1.0f, lerp(_547 * _542, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _559))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _559)))).x;
  float _579 = 1.0f - _374;
  float _586 = clamp((_579 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f);
  float3 _594 = _309.xyz * lerp(1.0f, 0.25f, (_9_m120.x * _586) * _578);
  float _604 = lerp(_579, clamp(_579 + (((0.60000002384185791015625f - (0.4000000059604644775390625f * _586)) * _579) * (_374 + (-0.300000011920928955078125f))), _579, 0.699999988079071044921875f), (_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _578);
  float _605 = 1.0f - _604;
  float3 _607 = (0.07999999821186065673828125f * _378).xxx;
  float _608 = dot(_373, _432);
  float _609 = max(0.0f, _608);
  float4 _611 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _605) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _612 = _611.x;
  float2 _622 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_612 * _612, exp2((-9.27999973297119140625f) * _609)) * _612) + _611.y)) + _611.zw;
  float4 _830;
  do {
    [branch] if (_31_m4 == 0) {
      _830 = 0.0f.xxxx;
      break;
    }
    float4 _641 = _40.SampleLevel(_13, _394, 0.0f);
    float _642 = _641.x;
    float4 _646 = _32.Load(int3(_303, 0));
    float _647 = _646.x;
    float4 _829;
    if (_647 > 0.001000000047497451305389404296875f) {
      float3 _657 = reflect(_434, _373);
      float3 _658 = -_29_m0.xyz;
      float _663 = dot(_658, _657);
      float3 _665 = _657 - (_658 * _663);
      bool3 _667 = (_663 < _29_m4.z).xxx;
      float3 _675 = normalize((_658 * _29_m4.z) + ((_665 * rsqrt(max(6.103515625e-05f, dot(_665, _665)))) * _29_m4.y));
      float3 _676 = float3(_667.x ? _675.x : _657.x, _667.y ? _675.y : _657.y, _667.z ? _675.z : _657.z);
      float3 _680 = _676 + _432;
      float3 _684 = _680 * rsqrt(max(6.103515625e-05f, dot(_680, _680)));
      float _685 = dot(_373, _676);
      float _686 = clamp(dot(_676, _373), 0.0f, 1.0f);
      float _688 = clamp(dot(_373, _684), 0.0f, 1.0f);
      float _691 = dot(_432, _676);
      float _693 = clamp(_608, 0.0f, 1.0f);
      float _694 = _605 * _605;
      float _695 = _694 * _694;
      float _716 = (((_688 * _695) - _688) * _688) + 1.0f;
      float _719 = 1.0f - clamp(dot(_432, _684), 0.0f, 1.0f);
      float _720 = _719 * _719;
      float _722 = (_719 * _720) * _720;
      float _752 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_604 * (1.04997003078460693359375f + (_604 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _604))))));
      float _753 = 1.0f - _752;
      float3 _756 = _607 + ((1.0f.xxx - _607) * 0.0476190485060214996337890625f);
      float _787 = clamp(-_691, 0.0f, 1.0f);
      float _791 = (((_787 * 0.36000001430511474609375f) - _787) * _787) + 1.0f;
      float _792 = _791 * _791;
      float3 _804 = ((min(((_607 * (1.0f - _722)) + _722.xxx) * ((_695 / (_716 * _716)) * (0.5f / (((_686 * sqrt(((((-_693) * _695) + _693) * _693) + _695)) + (_693 * sqrt(((((-_686) * _695) + _686) * _686) + _695))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_756 * (((_39.SampleLevel(_13, (float2(_693, _605) * 0.96875f) + 0.015625f.xx, 0.0f).x * _39.SampleLevel(_13, (float2(_686, _605) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _752) / _753)) * _756) / (1.0f.xxx - (_756 * _753)))) * lerp(clamp(_608 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_691, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_691 + 1.0f, 0.0f, 1.0f))) * _334;
      float3 _814 = _29_m1.xyz * (((((_594 * _334) * 1.0f) * (float((_339 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_804 * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _686)) + (((((_594 / max(0.00999999977648258209228515625f, max(max(_594.x, _594.y), _594.z)).xxx) * _317) * (clamp(0.5f - _685, 0.0f, 1.0f) * ((0.36000001430511474609375f != _792) ? (0.36000001430511474609375f / _792) : 1.0f))) + (_594 * (clamp(_685 + _325, 0.0f, 1.0f) - clamp(_686, 0.0f, 1.0f)))) * _334));
      float3 _827 = lerp(_814, _814 * _33.SampleBias(_13, float2(_647, 0.5f), _9_m16).xyz, (1.0f - _647).xxx) * lerp(_642, max(_642, _334), _325);
      _829 = float4(_827.x, _827.y, _827.z, 0.0f.xxxx.w);
    } else {
      _829 = 0.0f.xxxx;
    }
    _830 = _829;
    break;
  } while (false);
  float3 _832 = _376.xxx;
  float3 _869;
  float3 _870;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x223180CF:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _845 = min(_21.SampleBias(_12, _4, _9_m16).x, _376);
    _869 = clamp((pow(abs(_609 + _845), exp2(((-16.0f) * _605) - 1.0f)) - 1.0f) + _845, 0.0f, 1.0f).xxx;
    _870 = max(_845.xxx, ((((((_594 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _845) + ((_594 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _845) + ((_594 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _845);
  }
  else {
    _869 = _832;
    _870 = _832;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _830.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _869 : 1.0f.xxx;
  // RenoDX code end
  float3 _880 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _889 = _406 - (_9_m108.xyz + (_880 * (-_9_m110.w)));
  float _904 = max(min(max((max(abs(_889.x), abs(_889.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_889.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1206;
  float4 _1207;
  float4 _1208;
  float _1209;
  float _1210;
  if ((_9_m108.w != 0.0f) && (_904 < 1.0f)) {
    float3 _917 = _406 - (_9_m108.xyz + (_880 * (-_9_m110.y)));
    float _931 = max(clamp((max(abs(_917.x), abs(_917.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_917.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1007;
    float4 _1008;
    float4 _1009;
    float4 _1010;
    if (_931 < 1.0f) {
      float3 _940 = ((_406 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _942 = _940 - floor(_940);
      float4 _946 = _46.SampleLevel(_14, _942, 0.0f);
      float _947 = 1.0f - _931;
      float _951 = _9_m109.y * 0.5f;
      float _956 = _942.x;
      float _957 = clamp(_942.y, _951, 1.0f - _951) * 0.3333333432674407958984375f;
      float _958 = _942.z;
      float4 _961 = _47.SampleLevel(_13, float3(_956, _957, _958), 0.0f);
      float _977 = _946.x;
      float _987 = _946.y;
      float _997 = _946.z;
      _1007 = _904 + (_961.w * _947);
      _1008 = float4(((_47.SampleLevel(_13, float3(_956, _957 + 0.666666686534881591796875f, _958), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _997, _997) * _947;
      _1009 = float4(((_47.SampleLevel(_13, float3(_956, _957 + 0.3333333432674407958984375f, _958), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _987, _987) * _947;
      _1010 = float4(((_961.xyz * 4.0f) - 2.0f.xxx) * _977, _977) * _947;
    } else {
      _1007 = _904;
      _1008 = 0.0f.xxxx;
      _1009 = 0.0f.xxxx;
      _1010 = 0.0f.xxxx;
    }
    float3 _1016 = _406 - (_9_m108.xyz + (_880 * (-_9_m110.z)));
    float _1030 = max(clamp((max(abs(_1016.x), abs(_1016.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1016.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1110;
    float4 _1111;
    float4 _1112;
    float4 _1113;
    if (_1030 < 1.0f) {
      float3 _1039 = ((_406 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1041 = _1039 - floor(_1039);
      float4 _1045 = _48.SampleLevel(_14, _1041, 0.0f);
      float _1047 = _931 * (1.0f - _1030);
      float _1051 = _9_m109.y * 0.5f;
      float _1056 = _1041.x;
      float _1057 = clamp(_1041.y, _1051, 1.0f - _1051) * 0.3333333432674407958984375f;
      float _1058 = _1041.z;
      float4 _1061 = _49.SampleLevel(_13, float3(_1056, _1057, _1058), 0.0f);
      float _1077 = _1045.x;
      float _1088 = _1045.y;
      float _1099 = _1045.z;
      _1110 = _1007 + (_1061.w * _1047);
      _1111 = _1008 + (float4(((_49.SampleLevel(_13, float3(_1056, _1057 + 0.666666686534881591796875f, _1058), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1099, _1099) * _1047);
      _1112 = _1009 + (float4(((_49.SampleLevel(_13, float3(_1056, _1057 + 0.3333333432674407958984375f, _1058), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1088, _1088) * _1047);
      _1113 = _1010 + (float4(((_1061.xyz * 4.0f) - 2.0f.xxx) * _1077, _1077) * _1047);
    } else {
      _1110 = _1007;
      _1111 = _1008;
      _1112 = _1009;
      _1113 = _1010;
    }
    float4 _1196;
    float4 _1197;
    float4 _1198;
    float _1199;
    if (_1030 > 0.0f) {
      float3 _1122 = ((_406 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1125 = _9_m109.xyz * 0.5f;
      float3 _1127 = clamp(_1122 - floor(_1122), _1125, 1.0f.xxx - _1125);
      float4 _1131 = _50.SampleLevel(_14, _1127, 0.0f);
      float _1133 = _1030 * (1.0f - _904);
      float _1137 = _9_m109.y * 0.5f;
      float _1142 = _1127.x;
      float _1143 = clamp(_1127.y, _1137, 1.0f - _1137) * 0.3333333432674407958984375f;
      float _1144 = _1127.z;
      float4 _1147 = _51.SampleLevel(_13, float3(_1142, _1143, _1144), 0.0f);
      float _1163 = _1131.x;
      float _1174 = _1131.y;
      float _1185 = _1131.z;
      _1196 = _1111 + (float4(((_51.SampleLevel(_13, float3(_1142, _1143 + 0.666666686534881591796875f, _1144), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1185, _1185) * _1133);
      _1197 = _1112 + (float4(((_51.SampleLevel(_13, float3(_1142, _1143 + 0.3333333432674407958984375f, _1144), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1174, _1174) * _1133);
      _1198 = _1113 + (float4(((_1147.xyz * 4.0f) - 2.0f.xxx) * _1163, _1163) * _1133);
      _1199 = _1110 + (_1147.w * _1133);
    } else {
      _1196 = _1111;
      _1197 = _1112;
      _1198 = _1113;
      _1199 = _1110;
    }
    float _1202 = clamp((_1199 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1206 = _1196;
    _1207 = _1197;
    _1208 = _1198;
    _1209 = _1202 - _904;
    _1210 = (_1202 + _904) * 0.5f;
  } else {
    _1206 = 0.0f.xxxx;
    _1207 = 0.0f.xxxx;
    _1208 = 0.0f.xxxx;
    _1209 = 0.0f;
    _1210 = 1.0f;
  }
  float4 _1230 = _1208 + float4(_9_m111.x * _1210, (_9_m111.y * _1210) + ((_9_m111.w * _1209) * 0.5f), _9_m111.z * _1210, (_9_m111.w * _1210) + ((_9_m111.y * _1209) * 0.375f));
  float4 _1250 = _1207 + float4(_9_m112.x * _1210, (_9_m112.y * _1210) + ((_9_m112.w * _1209) * 0.5f), _9_m112.z * _1210, (_9_m112.w * _1210) + ((_9_m112.y * _1209) * 0.375f));
  float4 _1270 = _1206 + float4(_9_m113.x * _1210, (_9_m113.y * _1210) + ((_9_m113.w * _1209) * 0.5f), _9_m113.z * _1210, (_9_m113.w * _1210) + ((_9_m113.y * _1209) * 0.375f));
  float4 _1428;
  float4 _1429;
  float4 _1430;
  [branch] if (all(bool2(_394.x >= 0.0f.xx.x, _394.y >= 0.0f.xx.y))) {
    float4 _1278 = _45.SampleLevel(_13, _394, 0.0f);
    float4 _1279 = abs(_1278);
    float4 _1425;
    float4 _1426;
    float4 _1427;
    [branch] if (any(bool4(_1279.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1279.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1279.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1279.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1285 = length(_1278.yzw);
      uint _1287;
      float _1290;
      _1287 = 0u;
      _1290 = 1.0f;
      for (float _1292 = _1285; _1292 > 4.599999904632568359375f;) {
        _1287++;
        _1290 *= 0.5f;
        _1292 *= 0.5f;
        continue;
      }
      float4 _1296 = _1278 * _1290;
      float4 _1301 = float4(0.0f, _1296.yzw);
      float2 _1323 = (_44.SampleLevel(_13, float2(((((length(_1301) * _43_m3.x) + _43_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _43_m2.xy) + _43_m2.zw;
      float4 _1337;
      _1337 = float4(_1323.x * 3.5449078083038330078125f, _1301.yzw * _1323.y) * exp(_1296.x * 0.282094776630401611328125f);
      for (uint _1340 = 0u; _1340 < _1287;) {
        _1337 = mul(float4x4(_1337, float4(_1337.yx, 0.0f, 0.0f), float4(_1337.z, 0.0f, _1337.x, 0.0f), float4(_1337.w, 0.0f, 0.0f, _1337.x)) * 0.282094776630401611328125f, _1337);
        _1340++;
        continue;
      }
      float4x4 _1361 = float4x4(_1337, float4(_1337.yx, 0.0f, 0.0f), float4(_1337.z, 0.0f, _1337.x, 0.0f), float4(_1337.w, 0.0f, 0.0f, _1337.x)) * 0.282094776630401611328125f;
      float4 _1371 = mul(_1361, float4(_1230.w * 1.1283791065216064453125f, _1230.y * (-0.977204978466033935546875f), _1230.z * 0.977204978466033935546875f, _1230.x * (-0.977204978466033935546875f)));
      float4 _1391 = mul(_1361, float4(_1250.w * 1.1283791065216064453125f, _1250.y * (-0.977204978466033935546875f), _1250.z * 0.977204978466033935546875f, _1250.x * (-0.977204978466033935546875f)));
      float4 _1411 = mul(_1361, float4(_1270.w * 1.1283791065216064453125f, _1270.y * (-0.977204978466033935546875f), _1270.z * 0.977204978466033935546875f, _1270.x * (-0.977204978466033935546875f)));
      _1425 = float4(_1371.x * 0.886226952075958251953125f, _1371.w * (-1.02332675457000732421875f), _1371.y * (-1.02332675457000732421875f), _1371.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1426 = float4(_1391.x * 0.886226952075958251953125f, _1391.w * (-1.02332675457000732421875f), _1391.y * (-1.02332675457000732421875f), _1391.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1427 = float4(_1411.x * 0.886226952075958251953125f, _1411.w * (-1.02332675457000732421875f), _1411.y * (-1.02332675457000732421875f), _1411.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1425 = _1230;
      _1426 = _1250;
      _1427 = _1270;
    }
    _1428 = _1425;
    _1429 = _1426;
    _1430 = _1427;
  }
  else {
    _1428 = _1230;
    _1429 = _1250;
    _1430 = _1270;
  }
  float4 _1433 = float4(_373, 1.0f);
  float3 _1438 = max(float3(dot(_1428, _1433), dot(_1429, _1433), dot(_1430, _1433)), 0.0f.xxx);
  float4 _1443 = float4(-_373, 1.0f);
  float3 _1460 = reflect(_434, _373);
  float _1468 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_605, 0.001000000047497451305389404296875f))));
  float2 _1472 = floor(_381 * _27_m0.w);
  float _1489 = floor(_413 - _27_m2.y);
  float _1493 = clamp(_1489, 0.0f, _27_m1.x - 1.0f);
  uint _1503 = (_1489 <= _1493) ? (_24.Load(uint(_9_m21.z + int(_1472.x + (_1472.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1493)) * 4 + 0)) : 0u;
  float _1506 = dot(float4(_1438, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1508;
  float _1511;
  uint _1513;
  _1508 = 0.0f.xxx;
  _1511 = 1.0f;
  _1513 = _1503;
  uint _1514;
  float3 _1509;
  float _1512;
  bool _1516;
  [loop] for (;;) {
    bool _1515 = _1513 != 0u;
    _1516 = _1511 > 0.00999999977648258209228515625f;
    if (_1515 && _1516) {
      uint _1520 = firstbitlow(_1513);
      _1514 = _1513 ^ (1u << (_1520 & 31u));
      float3 _1540 = float3(dot(_27_m4[_1520]._m2, _410), dot(_27_m4[_1520]._m3, _410), dot(_27_m4[_1520]._m4, _410));
      float3 _1541 = abs(_1540);
      if (all(bool3(_1541.x <= _27_m4[_1520]._m1.xyz.x, _1541.y <= _27_m4[_1520]._m1.xyz.y, _1541.z <= _27_m4[_1520]._m1.xyz.z))) {
        float3 _1550 = _27_m4[_1520]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1552 = _1541 * 0.100000001490116119384765625f;
        float3 _1553 = _1552 * _1552;
        float3 _1556 = (_27_m4[_1520]._m1.xyz - _1541) * _27_m4[_1520]._m5.xyz;
        float3 _1604;
        [branch] if (_27_m4[_1520]._m6.x == 1.0f) {
          float3 _1589 = float3(dot(_27_m4[_1520]._m2.xyz, _1460), dot(_27_m4[_1520]._m3.xyz, _1460), dot(_27_m4[_1520]._m4.xyz, _1460));
          float3 _1591 = (_27_m4[_1520]._m1.xyz - _1540) / _1589;
          float3 _1594 = ((-_27_m4[_1520]._m1.xyz) - _1540) / _1589;
          bool3 _1595 = bool3(_1589.x > 0.0f.xxx.x, _1589.y > 0.0f.xxx.y, _1589.z > 0.0f.xxx.z);
          float3 _1596 = float3(_1595.x ? _1591.x : _1594.x, _1595.y ? _1591.y : _1594.y, _1595.z ? _1591.z : _1594.z);
          _1604 = _1540 + (_1589 * min(min(_1596.x, _1596.y), _1596.z));
        }
        else {
          _1604 = _1460;
        }
        float3 _1605 = normalize(_1604);
        float3 _1608 = float3(int3(sign(_1605)));
        float3 _1611 = _1605 / dot(_1605, _1608).xxx;
        float3 _1625;
        if (_1611.z < 0.0f) {
          float3 _1616 = abs(_1611);
          float2 _1623 = _1608.xy * float2(1.0f - _1616.y, 1.0f - _1616.x);
          _1625 = float3(_1623.x, _1623.y, _1611.z);
        } else {
          _1625 = _1611;
        }
        float _1646 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_1520]._m0, _1433)));
        float _1659 = clamp((min(_1556.x, min(_1556.y, _1556.z)) * _27_m4[_1520]._m6.y) + ((((((_1550 * _1550).x - ((_1553.x + _1553.y) + _1553.z)) * _27_m4[_1520]._m5.x) * _27_m4[_1520]._m5.x) * (1.0f - _27_m4[_1520]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_1520]._m6.w;
        _1509 = _1508 + ((((_22.SampleLevel(_15, float3((((_1625.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_1520]._m1.w), _1468).xyz * _27_m4[_1520]._m5.w) * ((((((clamp(abs(_1506 / _1646), 0.0f, 1.0f) * 2.0f) + _1506) / (2.0f + _1646)) - 1.0f) * _9_m23.w) + 1.0f)) * _1659) * _1511);
        _1512 = _1511 * (1.0f - _1659);
      } else {
        _1509 = _1508;
        _1512 = _1511;
      }
      _1508 = _1509;
      _1511 = _1512;
      _1513 = _1514;
      continue;
    } else {
      break;
    }
  }
  float3 _1724;
  if (_1516) {
    float3 _1667 = normalize(_1460);
    float3 _1670 = float3(int3(sign(_1667)));
    float3 _1673 = _1667 / dot(_1667, _1670).xxx;
    float3 _1687;
    if (_1673.z < 0.0f) {
      float3 _1678 = abs(_1673);
      float2 _1685 = _1670.xy * float2(1.0f - _1678.y, 1.0f - _1678.x);
      _1687 = float3(_1685.x, _1685.y, _1673.z);
    } else {
      _1687 = _1673;
    }
    float _1710 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, _1433)));
    _1724 = _1508 + ((_22.SampleLevel(_15, float3((((_1687.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1468).xyz * ((((((clamp(abs(_1506 / _1710), 0.0f, 1.0f) * 2.0f) + _1506) / (2.0f + _1710)) - 1.0f) * _9_m23.w) + 1.0f)) * _1511);
  } else {
    _1724 = _1508;
  }
  float3 _1730 = (_1724 * _9_m23.z) * _9_m22.y;
  float3 _1753;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1747 = _20.SampleBias(_13, _4, _9_m16);
    float _1748 = _1747.x;
    _1753 = (_19.SampleBias(_13, _4, _9_m16).xyz * _1748) + (_1730 * (1.0f - _1748));
  }
  else {
    _1753 = _1730;
  }
  float3 _1774 = ((((_1438 * _594) * _9_m22.x) * _870) + ((_1753 * ((_607 * _622.x) + (clamp(_378 * 4.0f, 0.0f, 1.0f) * _622.y).xxx)) * _869)) + (((((max(float3(dot(_1428, _1443), dot(_1429, _1443), dot(_1430, _1443)), 0.0f.xxx) * _9_m22.x) * _870) * (_594 / max(0.00999999977648258209228515625f, max(max(_594.x, _594.y), _594.z)).xxx)) * ((_317 * clamp(dot(_432, _373), 0.0f, 1.0f)) + (float(((_339 & 7u) << 2u) | (uint(_307.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _1776 = float4(_830.x, _830.y, _830.z, _830.w) + float4(_1774.x, _1774.y, _1774.z, 0.0f.xxxx.w);
  float3 _1779 = clamp(_1776.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _1794 = _406.y * _9_m46.w;
  float _1799 = max(0.00999999977648258209228515625f, _1794 + _9_m47.w);
  float3 _1813 = exp(_9_m45.xyz * ((-max(0.0f, (_433 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1799)) / _1799) * exp(_1794 + _9_m48.w))));
  float _1816 = dot(_434, _9_m44.xyz);
  float _1822 = _9_m45.w * _9_m45.w;
  float _1826 = (1.0f + _1822) - ((2.0f * _9_m45.w) * _1816);
  float3 _2150;
  float _2151;
  if (_9_m55.z > 0.0f) {
    uint3 _1978 = (uint3(int3(_300, _301, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1979 = _1978.y;
    uint _1980 = _1978.z;
    uint _1983 = _1978.x + (_1979 * _1980);
    uint _1985 = _1979 + (_1980 * _1983);
    uint _1987 = _1980 + (_1983 * _1985);
    uint _1989 = _1983 + (_1985 * _1987);
    float _2013 = dot(_434, -_7_m0[2].xyz);
    float3 _2021 = _406 - _7_m11.xyz;
    float _2023 = (_9_m55.w * ((_2013 > 5.9604644775390625e-08f) ? (1.0f / _2013) : 0.0f)) * (1.0f / _433);
    float _2024 = _2021.y;
    float _2025 = _2023 * _2024;
    float _2027 = _7_m11.y + _2025;
    float _2028 = _2024 - _2025;
    float _2030 = (1.0f - _2023) * _433;
    float _2044 = max(-127.0f, _9_m49.z * _2028);
    float _2068 = max(-127.0f, _9_m52.x * _2028);
    float _2079 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2027 - _9_m49.x)))) * ((abs(_2044) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2044)) / _2044) : (0.693147182464599609375f - (0.2402265071868896484375f * _2044)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2027 - _9_m52.z)))) * ((abs(_2068) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2068)) / _2068) : (0.693147182464599609375f - (0.2402265071868896484375f * _2068))));
    float _2101 = clamp((_433 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2104 = clamp((max(clamp(exp2(-(_2079 * _2030)), 0.0f, 1.0f), _9_m51.w) + clamp((_433 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2101, 0.0f, 1.0f);
    float4 _2144 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _41.SampleLevel(_13, float3((_381 + ((((float3(uint3(_1989, _1985 + (_1987 * _1989), _291) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_413 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_413 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2146 = _2144.w;
    _2150 = _2144.xyz + (((_9_m51.xyz * (1.0f - _2104)) + (((_9_m54.xyz * pow(clamp(dot(_432, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2079 * max(_2030 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2101))) * _2146);
    _2151 = _2146 * _2104;
  } else {
    float3 _1854 = _406 - _7_m11.xyz;
    float _1856 = _1854.y;
    float _1870 = max(-127.0f, _9_m49.z * _1856);
    float _1894 = max(-127.0f, _9_m52.x * _1856);
    float _1905 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1870) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1870)) / _1870) : (0.693147182464599609375f - (0.2402265071868896484375f * _1870)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1894) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1894)) / _1894) : (0.693147182464599609375f - (0.2402265071868896484375f * _1894))));
    float _1927 = clamp((_433 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1930 = clamp((max(clamp(exp2(-(_1905 * _433)), 0.0f, 1.0f), _9_m51.w) + clamp((_433 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1927, 0.0f, 1.0f);
    _2150 = (_9_m51.xyz * (1.0f - _1930)) + (((_9_m54.xyz * pow(clamp(dot(_432, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1905 * max(_433 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1927));
    _2151 = _1930;
  }
  float3 _2154 = _1813 * _2151;
  float3 _2156 = (_1779 * _2154) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1816 * _1816)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1822) / max((12.56637096405029296875f * _1826) * sqrt(_1826), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1813)) * _2151) + _2150);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2156 = (_2156 * 0.65f) + (_1779 * 0.35f);
  }
  // RenoDX code end
  float _2157 = dot(_2154, 0.3333333432674407958984375f.xxx);
  float4 _2158 = float4(_2156.x, _2156.y, _2156.z, _1776.w);
  _2158.w = _2157;
  float _2185 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _406) * _9_m61.z), 0.0f, 1.0f);
  float3 _2193 = lerp(_1779, _2158.xyz, min((1.0f - _2185) + ((_56.SampleLevel(_14, (_406 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _2185), 1.0f + _2157).xxx);
  _5 = float4(_2193.x, _2193.y, _2193.z, _2158.w);
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

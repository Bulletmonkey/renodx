#include "./renodx_injection.hlsli"

// Ported from the native 0x2B455E28 Vulkan dump.
struct _25 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static uint _263;

[[vk::binding(26, 3)]] cbuffer _6_7 : register(b26, space3) {
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

[[vk::binding(30, 3)]] cbuffer _8_9 : register(b30, space3) {
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

[[vk::binding(32, 3)]] ByteAddressBuffer _23 : register(t32, space3);
[[vk::binding(31, 3)]] cbuffer _24_26 : register(b31, space3) {
  float4 _26_m0 : packoffset(c0);
  float4 _26_m1 : packoffset(c1);
  float4 _26_m2 : packoffset(c2);
  float4 _26_m3 : packoffset(c3);
  _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(27, 3)]] cbuffer _27_28 : register(b27, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  float4 _28_m4 : packoffset(c4);
  uint4 _28_m5 : packoffset(c5);
  float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(28, 3)]] cbuffer _29_30 : register(b28, space3) {
  int _30_m0 : packoffset(c0);
  int _30_m1 : packoffset(c0.y);
  int _30_m2 : packoffset(c0.z);
  int _30_m3 : packoffset(c0.w);
  int _30_m4 : packoffset(c1);
  int _30_m5 : packoffset(c1.y);
  int _30_m6 : packoffset(c1.z);
  int _30_m7 : packoffset(c1.w);
  float _30_m8 : packoffset(c2);
  float _30_m9 : packoffset(c2.y);
  float _30_m10 : packoffset(c2.z);
  float _30_m11 : packoffset(c2.w);
  float _30_m12 : packoffset(c3);
  float _30_m13 : packoffset(c3.y);
  float _30_m14 : packoffset(c3.z);
  float _30_m15 : packoffset(c3.w);
};

[[vk::binding(29, 3)]] cbuffer _37_38 : register(b29, space3) {
  float4 _38_m0 : packoffset(c0);
  float4 _38_m1 : packoffset(c1);
  float4 _38_m2 : packoffset(c2);
  float4 _38_m3 : packoffset(c3);
  float4 _38_m4 : packoffset(c4);
  uint4 _38_m5 : packoffset(c5);
  float4 _38_m6 : packoffset(c6);
  float4 _38_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _17 : register(t23, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _18 : register(t6, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _19 : register(t7, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _20 : register(t17, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _21 : register(t8, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _31 : register(t5, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _32 : register(t24, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _34 : register(t9, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _35 : register(t22, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _36 : register(t16, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _39 : register(t25, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _40 : register(t4, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _41 : register(t15, space3);
[[vk::binding(12, 3)]] Texture3D<float4> _42 : register(t12, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _43 : register(t14, space3);
[[vk::binding(11, 3)]] Texture3D<float4> _44 : register(t11, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _45 : register(t13, space3);
[[vk::binding(10, 3)]] Texture3D<float4> _46 : register(t10, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _47 : register(t21, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _48 : register(t20, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _49 : register(t19, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _50 : register(t18, space3);

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
  uint2 _269 = uint2(gl_FragCoord.xy);
  int _272 = int(_269.x);
  int _273 = int(_269.y);
  int2 _275 = int3(_272, _273, 0).xy;
  float4 _277 = _47.Load(int3(_275, 0));
  float4 _279 = _48.Load(int3(_275, 0));
  float4 _281 = _49.Load(int3(_275, 0));
  uint _285 = uint(_277.x * 1023.0f);
  float _289 = float((_285 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _297 = float(((_285 & 7u) << 2u) | (uint(_277.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _301 = uint(round(_277.y * 1023.0f));
  float _306 = float((_301 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _311 = uint(_277.z * 1023.0f);
  float2 _326 = (_279.xy * 2.0f) - 1.0f.xx;
  float _330 = 1.0f - dot(1.0f.xx, abs(_326));
  float3 _332 = float3(_326.x, _330, _326.y);
  float3 _344;
  if (_330 < 0.0f) {
    float2 _339 = _332.xz;
    bool2 _340 = bool2(_339.x >= 0.0f.xx.x, _339.y >= 0.0f.xx.y);
    float2 _342 = (1.0f.xx - abs(_332.zx)) * float2(_340.x ? 1.0f.xx.x : (-1.0f).xx.x, _340.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _344 = float3(_342.x, _332.y, _342.y);
  } else {
    _344 = _332;
  }
  float3 _345 = normalize(_344);
  float _346 = _279.z;
  float3 _347 = _281.xyz;
  float _348 = _281.w;
  float _350 = (float(_301 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _353 = float2(_269);
  float2 _366 = gl_FragCoord.xy * _9_m0.zw;
  float2 _368 = (_366 * 2.0f) - 1.0f.xx;
  float4 _371 = float4(_368, _17.SampleLevel(_12, (_353 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _371.y = -_368.y;
  float4 _374 = mul(_7_m6, _371);
  float3 _378 = _374.xyz / _374.w.xxx;
  float4 _382 = float4(_378, 1.0f);
  float _385 = abs(mul(_7_m0, _382).z);
  float3 _400;
  do {
    if (_9_m4.w == 0.0f) {
      _400 = _7_m11.xyz - _378;
      break;
    } else {
      _400 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _401 = dot(_400, _400);
  float _403 = rsqrt(max(_401, 9.9999999392252902907785028219223e-09f));
  float3 _404 = _400 * _403;
  float _405 = _401 * _403;
  float3 _406 = -_404;
  float3 _408 = (0.07999999821186065673828125f * _350).xxx;
  float _409 = dot(_345, _404);
  float _410 = max(0.0f, _409);
  float4 _412 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _346) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _413 = _412.x;
  float2 _423 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_413 * _413, exp2((-9.27999973297119140625f) * _410)) * _413) + _412.y)) + _412.zw;
  float4 _632;
  do {
    [branch] if (_30_m4 == 0) {
      _632 = 0.0f.xxxx;
      break;
    }
    float4 _442 = _35.SampleLevel(_13, _366, 0.0f);
    float _443 = _442.x;
    float4 _447 = _31.Load(int3(_275, 0));
    float _448 = _447.x;
    float4 _631;
    if (_448 > 0.001000000047497451305389404296875f) {
      float3 _458 = reflect(_406, _345);
      float3 _459 = -_28_m0.xyz;
      float _464 = dot(_459, _458);
      float3 _466 = _458 - (_459 * _464);
      bool3 _468 = (_464 < _28_m4.z).xxx;
      float3 _476 = normalize((_459 * _28_m4.z) + ((_466 * rsqrt(max(6.103515625e-05f, dot(_466, _466)))) * _28_m4.y));
      float3 _477 = float3(_468.x ? _476.x : _458.x, _468.y ? _476.y : _458.y, _468.z ? _476.z : _458.z);
      float3 _481 = _477 + _404;
      float3 _485 = _481 * rsqrt(max(6.103515625e-05f, dot(_481, _481)));
      float _486 = dot(_345, _477);
      float _487 = clamp(dot(_477, _345), 0.0f, 1.0f);
      float _489 = clamp(dot(_345, _485), 0.0f, 1.0f);
      float _492 = dot(_404, _477);
      float _494 = clamp(_409, 0.0f, 1.0f);
      float _495 = _346 * _346;
      float _496 = _495 * _495;
      float _517 = (((_489 * _496) - _489) * _489) + 1.0f;
      float _520 = 1.0f - clamp(dot(_404, _485), 0.0f, 1.0f);
      float _521 = _520 * _520;
      float _523 = (_520 * _521) * _521;
      float _547 = 1.0f - _346;
      float _554 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_547 * (1.04997003078460693359375f + (_547 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _547))))));
      float _555 = 1.0f - _554;
      float3 _558 = _408 + ((1.0f.xxx - _408) * 0.0476190485060214996337890625f);
      float _589 = clamp(-_492, 0.0f, 1.0f);
      float _593 = (((_589 * 0.36000001430511474609375f) - _589) * _589) + 1.0f;
      float _594 = _593 * _593;
      float3 _606 = ((min(((_408 * (1.0f - _523)) + _523.xxx) * ((_496 / (_517 * _517)) * (0.5f / (((_487 * sqrt(((((-_494) * _496) + _494) * _494) + _496)) + (_494 * sqrt(((((-_487) * _496) + _487) * _487) + _496))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_558 * (((_34.SampleLevel(_13, (float2(_494, _346) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_13, (float2(_487, _346) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _554) / _555)) * _558) / (1.0f.xxx - (_558 * _555)))) * lerp(clamp(_409 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_492, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_492 + 1.0f, 0.0f, 1.0f))) * _306;
      float3 _616 = _28_m1.xyz * (((((_347 * _306) * 1.0f) * (float((_311 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_606 * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _487)) + (((((_347 / max(0.00999999977648258209228515625f, max(max(_281.x, _281.y), _281.z)).xxx) * _289) * (clamp(0.5f - _486, 0.0f, 1.0f) * ((0.36000001430511474609375f != _594) ? (0.36000001430511474609375f / _594) : 1.0f))) + (_347 * (clamp(_486 + _297, 0.0f, 1.0f) - clamp(_487, 0.0f, 1.0f)))) * _306));
      float3 _629 = lerp(_616, _616 * _32.SampleBias(_13, float2(_448, 0.5f), _9_m16).xyz, (1.0f - _448).xxx) * lerp(_443, max(_443, _306), _297);
      _631 = float4(_629.x, _629.y, _629.z, 0.0f.xxxx.w);
    } else {
      _631 = 0.0f.xxxx;
    }
    _632 = _631;
    break;
  } while (false);
  float3 _634 = _348.xxx;
  float3 _671;
  float3 _672;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x2B455E28:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _647 = min(_20.SampleBias(_12, _4, _9_m16).x, _348);
    _671 = clamp((pow(abs(_410 + _647), exp2(((-16.0f) * _346) - 1.0f)) - 1.0f) + _647, 0.0f, 1.0f).xxx;
    _672 = max(_647.xxx, ((((((_347 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _647) + ((_347 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _647) + ((_347 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _647);
  }
  else {
    _671 = _634;
    _672 = _634;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _632.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _671 : 1.0f.xxx;
  // RenoDX code end
  float3 _682 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _691 = _378 - (_9_m108.xyz + (_682 * (-_9_m110.w)));
  float _706 = max(min(max((max(abs(_691.x), abs(_691.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_691.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1008;
  float4 _1009;
  float4 _1010;
  float _1011;
  float _1012;
  if ((_9_m108.w != 0.0f) && (_706 < 1.0f)) {
    float3 _719 = _378 - (_9_m108.xyz + (_682 * (-_9_m110.y)));
    float _733 = max(clamp((max(abs(_719.x), abs(_719.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_719.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _809;
    float4 _810;
    float4 _811;
    float4 _812;
    if (_733 < 1.0f) {
      float3 _742 = ((_378 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _744 = _742 - floor(_742);
      float4 _748 = _41.SampleLevel(_14, _744, 0.0f);
      float _749 = 1.0f - _733;
      float _753 = _9_m109.y * 0.5f;
      float _758 = _744.x;
      float _759 = clamp(_744.y, _753, 1.0f - _753) * 0.3333333432674407958984375f;
      float _760 = _744.z;
      float4 _763 = _42.SampleLevel(_13, float3(_758, _759, _760), 0.0f);
      float _779 = _748.x;
      float _789 = _748.y;
      float _799 = _748.z;
      _809 = _706 + (_763.w * _749);
      _810 = float4(((_42.SampleLevel(_13, float3(_758, _759 + 0.666666686534881591796875f, _760), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _799, _799) * _749;
      _811 = float4(((_42.SampleLevel(_13, float3(_758, _759 + 0.3333333432674407958984375f, _760), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _789, _789) * _749;
      _812 = float4(((_763.xyz * 4.0f) - 2.0f.xxx) * _779, _779) * _749;
    } else {
      _809 = _706;
      _810 = 0.0f.xxxx;
      _811 = 0.0f.xxxx;
      _812 = 0.0f.xxxx;
    }
    float3 _818 = _378 - (_9_m108.xyz + (_682 * (-_9_m110.z)));
    float _832 = max(clamp((max(abs(_818.x), abs(_818.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_818.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _912;
    float4 _913;
    float4 _914;
    float4 _915;
    if (_832 < 1.0f) {
      float3 _841 = ((_378 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _843 = _841 - floor(_841);
      float4 _847 = _43.SampleLevel(_14, _843, 0.0f);
      float _849 = _733 * (1.0f - _832);
      float _853 = _9_m109.y * 0.5f;
      float _858 = _843.x;
      float _859 = clamp(_843.y, _853, 1.0f - _853) * 0.3333333432674407958984375f;
      float _860 = _843.z;
      float4 _863 = _44.SampleLevel(_13, float3(_858, _859, _860), 0.0f);
      float _879 = _847.x;
      float _890 = _847.y;
      float _901 = _847.z;
      _912 = _809 + (_863.w * _849);
      _913 = _810 + (float4(((_44.SampleLevel(_13, float3(_858, _859 + 0.666666686534881591796875f, _860), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _901, _901) * _849);
      _914 = _811 + (float4(((_44.SampleLevel(_13, float3(_858, _859 + 0.3333333432674407958984375f, _860), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _890, _890) * _849);
      _915 = _812 + (float4(((_863.xyz * 4.0f) - 2.0f.xxx) * _879, _879) * _849);
    } else {
      _912 = _809;
      _913 = _810;
      _914 = _811;
      _915 = _812;
    }
    float4 _998;
    float4 _999;
    float4 _1000;
    float _1001;
    if (_832 > 0.0f) {
      float3 _924 = ((_378 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _927 = _9_m109.xyz * 0.5f;
      float3 _929 = clamp(_924 - floor(_924), _927, 1.0f.xxx - _927);
      float4 _933 = _45.SampleLevel(_14, _929, 0.0f);
      float _935 = _832 * (1.0f - _706);
      float _939 = _9_m109.y * 0.5f;
      float _944 = _929.x;
      float _945 = clamp(_929.y, _939, 1.0f - _939) * 0.3333333432674407958984375f;
      float _946 = _929.z;
      float4 _949 = _46.SampleLevel(_13, float3(_944, _945, _946), 0.0f);
      float _965 = _933.x;
      float _976 = _933.y;
      float _987 = _933.z;
      _998 = _913 + (float4(((_46.SampleLevel(_13, float3(_944, _945 + 0.666666686534881591796875f, _946), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _987, _987) * _935);
      _999 = _914 + (float4(((_46.SampleLevel(_13, float3(_944, _945 + 0.3333333432674407958984375f, _946), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _976, _976) * _935);
      _1000 = _915 + (float4(((_949.xyz * 4.0f) - 2.0f.xxx) * _965, _965) * _935);
      _1001 = _912 + (_949.w * _935);
    } else {
      _998 = _913;
      _999 = _914;
      _1000 = _915;
      _1001 = _912;
    }
    float _1004 = clamp((_1001 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1008 = _998;
    _1009 = _999;
    _1010 = _1000;
    _1011 = _1004 - _706;
    _1012 = (_1004 + _706) * 0.5f;
  } else {
    _1008 = 0.0f.xxxx;
    _1009 = 0.0f.xxxx;
    _1010 = 0.0f.xxxx;
    _1011 = 0.0f;
    _1012 = 1.0f;
  }
  float4 _1032 = _1010 + float4(_9_m111.x * _1012, (_9_m111.y * _1012) + ((_9_m111.w * _1011) * 0.5f), _9_m111.z * _1012, (_9_m111.w * _1012) + ((_9_m111.y * _1011) * 0.375f));
  float4 _1052 = _1009 + float4(_9_m112.x * _1012, (_9_m112.y * _1012) + ((_9_m112.w * _1011) * 0.5f), _9_m112.z * _1012, (_9_m112.w * _1012) + ((_9_m112.y * _1011) * 0.375f));
  float4 _1072 = _1008 + float4(_9_m113.x * _1012, (_9_m113.y * _1012) + ((_9_m113.w * _1011) * 0.5f), _9_m113.z * _1012, (_9_m113.w * _1012) + ((_9_m113.y * _1011) * 0.375f));
  float4 _1230;
  float4 _1231;
  float4 _1232;
  [branch] if (all(bool2(_366.x >= 0.0f.xx.x, _366.y >= 0.0f.xx.y))) {
    float4 _1080 = _40.SampleLevel(_13, _366, 0.0f);
    float4 _1081 = abs(_1080);
    float4 _1227;
    float4 _1228;
    float4 _1229;
    [branch] if (any(bool4(_1081.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1081.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1081.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1081.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1087 = length(_1080.yzw);
      uint _1089;
      float _1092;
      _1089 = 0u;
      _1092 = 1.0f;
      for (float _1094 = _1087; _1094 > 4.599999904632568359375f;) {
        _1089++;
        _1092 *= 0.5f;
        _1094 *= 0.5f;
        continue;
      }
      float4 _1098 = _1080 * _1092;
      float4 _1103 = float4(0.0f, _1098.yzw);
      float2 _1125 = (_39.SampleLevel(_13, float2(((((length(_1103) * _38_m3.x) + _38_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _38_m2.xy) + _38_m2.zw;
      float4 _1139;
      _1139 = float4(_1125.x * 3.5449078083038330078125f, _1103.yzw * _1125.y) * exp(_1098.x * 0.282094776630401611328125f);
      for (uint _1142 = 0u; _1142 < _1089;) {
        _1139 = mul(float4x4(_1139, float4(_1139.yx, 0.0f, 0.0f), float4(_1139.z, 0.0f, _1139.x, 0.0f), float4(_1139.w, 0.0f, 0.0f, _1139.x)) * 0.282094776630401611328125f, _1139);
        _1142++;
        continue;
      }
      float4x4 _1163 = float4x4(_1139, float4(_1139.yx, 0.0f, 0.0f), float4(_1139.z, 0.0f, _1139.x, 0.0f), float4(_1139.w, 0.0f, 0.0f, _1139.x)) * 0.282094776630401611328125f;
      float4 _1173 = mul(_1163, float4(_1032.w * 1.1283791065216064453125f, _1032.y * (-0.977204978466033935546875f), _1032.z * 0.977204978466033935546875f, _1032.x * (-0.977204978466033935546875f)));
      float4 _1193 = mul(_1163, float4(_1052.w * 1.1283791065216064453125f, _1052.y * (-0.977204978466033935546875f), _1052.z * 0.977204978466033935546875f, _1052.x * (-0.977204978466033935546875f)));
      float4 _1213 = mul(_1163, float4(_1072.w * 1.1283791065216064453125f, _1072.y * (-0.977204978466033935546875f), _1072.z * 0.977204978466033935546875f, _1072.x * (-0.977204978466033935546875f)));
      _1227 = float4(_1173.x * 0.886226952075958251953125f, _1173.w * (-1.02332675457000732421875f), _1173.y * (-1.02332675457000732421875f), _1173.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1228 = float4(_1193.x * 0.886226952075958251953125f, _1193.w * (-1.02332675457000732421875f), _1193.y * (-1.02332675457000732421875f), _1193.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1229 = float4(_1213.x * 0.886226952075958251953125f, _1213.w * (-1.02332675457000732421875f), _1213.y * (-1.02332675457000732421875f), _1213.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1227 = _1032;
      _1228 = _1052;
      _1229 = _1072;
    }
    _1230 = _1227;
    _1231 = _1228;
    _1232 = _1229;
  }
  else {
    _1230 = _1032;
    _1231 = _1052;
    _1232 = _1072;
  }
  float4 _1236 = float4(_345, 1.0f);
  float3 _1241 = max(float3(dot(_1230, _1236), dot(_1231, _1236), dot(_1232, _1236)), 0.0f.xxx);
  float4 _1246 = float4(-_345, 1.0f);
  float3 _1263 = reflect(_406, _345);
  float _1271 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_346, 0.001000000047497451305389404296875f))));
  float2 _1275 = floor(_353 * _26_m0.w);
  float _1292 = floor(_385 - _26_m2.y);
  float _1296 = clamp(_1292, 0.0f, _26_m1.x - 1.0f);
  uint _1306 = (_1292 <= _1296) ? (_23.Load(uint(_9_m21.z + int(_1275.x + (_1275.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1296)) * 4 + 0)) : 0u;
  float _1309 = dot(float4(_1241, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1311;
  float _1314;
  uint _1316;
  _1311 = 0.0f.xxx;
  _1314 = 1.0f;
  _1316 = _1306;
  uint _1317;
  float3 _1312;
  float _1315;
  bool _1319;
  [loop] for (;;) {
    bool _1318 = _1316 != 0u;
    _1319 = _1314 > 0.00999999977648258209228515625f;
    if (_1318 && _1319) {
      uint _1323 = firstbitlow(_1316);
      _1317 = _1316 ^ (1u << (_1323 & 31u));
      float3 _1343 = float3(dot(_26_m4[_1323]._m2, _382), dot(_26_m4[_1323]._m3, _382), dot(_26_m4[_1323]._m4, _382));
      float3 _1344 = abs(_1343);
      if (all(bool3(_1344.x <= _26_m4[_1323]._m1.xyz.x, _1344.y <= _26_m4[_1323]._m1.xyz.y, _1344.z <= _26_m4[_1323]._m1.xyz.z))) {
        float3 _1353 = _26_m4[_1323]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1355 = _1344 * 0.100000001490116119384765625f;
        float3 _1356 = _1355 * _1355;
        float3 _1359 = (_26_m4[_1323]._m1.xyz - _1344) * _26_m4[_1323]._m5.xyz;
        float3 _1407;
        [branch] if (_26_m4[_1323]._m6.x == 1.0f) {
          float3 _1392 = float3(dot(_26_m4[_1323]._m2.xyz, _1263), dot(_26_m4[_1323]._m3.xyz, _1263), dot(_26_m4[_1323]._m4.xyz, _1263));
          float3 _1394 = (_26_m4[_1323]._m1.xyz - _1343) / _1392;
          float3 _1397 = ((-_26_m4[_1323]._m1.xyz) - _1343) / _1392;
          bool3 _1398 = bool3(_1392.x > 0.0f.xxx.x, _1392.y > 0.0f.xxx.y, _1392.z > 0.0f.xxx.z);
          float3 _1399 = float3(_1398.x ? _1394.x : _1397.x, _1398.y ? _1394.y : _1397.y, _1398.z ? _1394.z : _1397.z);
          _1407 = _1343 + (_1392 * min(min(_1399.x, _1399.y), _1399.z));
        }
        else {
          _1407 = _1263;
        }
        float3 _1408 = normalize(_1407);
        float3 _1411 = float3(int3(sign(_1408)));
        float3 _1414 = _1408 / dot(_1408, _1411).xxx;
        float3 _1428;
        if (_1414.z < 0.0f) {
          float3 _1419 = abs(_1414);
          float2 _1426 = _1411.xy * float2(1.0f - _1419.y, 1.0f - _1419.x);
          _1428 = float3(_1426.x, _1426.y, _1414.z);
        } else {
          _1428 = _1414;
        }
        float _1449 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1323]._m0, _1236)));
        float _1462 = clamp((min(_1359.x, min(_1359.y, _1359.z)) * _26_m4[_1323]._m6.y) + ((((((_1353 * _1353).x - ((_1356.x + _1356.y) + _1356.z)) * _26_m4[_1323]._m5.x) * _26_m4[_1323]._m5.x) * (1.0f - _26_m4[_1323]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1323]._m6.w;
        _1312 = _1311 + ((((_21.SampleLevel(_15, float3((((_1428.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1323]._m1.w), _1271).xyz * _26_m4[_1323]._m5.w) * ((((((clamp(abs(_1309 / _1449), 0.0f, 1.0f) * 2.0f) + _1309) / (2.0f + _1449)) - 1.0f) * _9_m23.w) + 1.0f)) * _1462) * _1314);
        _1315 = _1314 * (1.0f - _1462);
      } else {
        _1312 = _1311;
        _1315 = _1314;
      }
      _1311 = _1312;
      _1314 = _1315;
      _1316 = _1317;
      continue;
    } else {
      break;
    }
  }
  float3 _1527;
  if (_1319) {
    float3 _1470 = normalize(_1263);
    float3 _1473 = float3(int3(sign(_1470)));
    float3 _1476 = _1470 / dot(_1470, _1473).xxx;
    float3 _1490;
    if (_1476.z < 0.0f) {
      float3 _1481 = abs(_1476);
      float2 _1488 = _1473.xy * float2(1.0f - _1481.y, 1.0f - _1481.x);
      _1490 = float3(_1488.x, _1488.y, _1476.z);
    } else {
      _1490 = _1476;
    }
    float _1513 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, _1236)));
    _1527 = _1311 + ((_21.SampleLevel(_15, float3((((_1490.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1271).xyz * ((((((clamp(abs(_1309 / _1513), 0.0f, 1.0f) * 2.0f) + _1309) / (2.0f + _1513)) - 1.0f) * _9_m23.w) + 1.0f)) * _1314);
  } else {
    _1527 = _1311;
  }
  float3 _1533 = (_1527 * _9_m23.z) * _9_m22.y;
  float3 _1556;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1550 = _19.SampleBias(_13, _4, _9_m16);
    float _1551 = _1550.x;
    _1556 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1551) + (_1533 * (1.0f - _1551));
  }
  else {
    _1556 = _1533;
  }
  float3 _1577 = ((((_1241 * _347) * _9_m22.x) * _672) + ((_1556 * ((_408 * _423.x) + (clamp(_350 * 4.0f, 0.0f, 1.0f) * _423.y).xxx)) * _671)) + (((((max(float3(dot(_1230, _1246), dot(_1231, _1246), dot(_1232, _1246)), 0.0f.xxx) * _9_m22.x) * _672) * (_347 / max(0.00999999977648258209228515625f, max(max(_281.x, _281.y), _281.z)).xxx)) * ((_289 * clamp(dot(_404, _345), 0.0f, 1.0f)) + (float(((_311 & 7u) << 2u) | (uint(_279.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _1579 = float4(_632.x, _632.y, _632.z, _632.w) + float4(_1577.x, _1577.y, _1577.z, 0.0f.xxxx.w);
  float3 _1582 = clamp(_1579.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _1597 = _378.y * _9_m46.w;
  float _1602 = max(0.00999999977648258209228515625f, _1597 + _9_m47.w);
  float3 _1616 = exp(_9_m45.xyz * ((-max(0.0f, (_405 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1602)) / _1602) * exp(_1597 + _9_m48.w))));
  float _1619 = dot(_406, _9_m44.xyz);
  float _1625 = _9_m45.w * _9_m45.w;
  float _1629 = (1.0f + _1625) - ((2.0f * _9_m45.w) * _1619);
  float3 _1957;
  float _1958;
  if (_9_m55.z > 0.0f) {
    uint3 _1783 = (uint3(int3(_272, _273, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1784 = _1783.y;
    uint _1785 = _1783.z;
    uint _1788 = _1783.x + (_1784 * _1785);
    uint _1790 = _1784 + (_1785 * _1788);
    uint _1792 = _1785 + (_1788 * _1790);
    uint _1794 = _1788 + (_1790 * _1792);
    float _1818 = dot(_406, -_7_m0[2].xyz);
    float3 _1828 = _378 - _7_m11.xyz;
    float _1830 = (_9_m55.w * ((_1818 > 5.9604644775390625e-08f) ? (1.0f / _1818) : 0.0f)) * (1.0f / _405);
    float _1831 = _1828.y;
    float _1832 = _1830 * _1831;
    float _1834 = _7_m11.y + _1832;
    float _1835 = _1831 - _1832;
    float _1837 = (1.0f - _1830) * _405;
    float _1851 = max(-127.0f, _9_m49.z * _1835);
    float _1875 = max(-127.0f, _9_m52.x * _1835);
    float _1886 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1834 - _9_m49.x)))) * ((abs(_1851) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1851)) / _1851) : (0.693147182464599609375f - (0.2402265071868896484375f * _1851)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1834 - _9_m52.z)))) * ((abs(_1875) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1875)) / _1875) : (0.693147182464599609375f - (0.2402265071868896484375f * _1875))));
    float _1908 = clamp((_405 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1911 = clamp((max(clamp(exp2(-(_1886 * _1837)), 0.0f, 1.0f), _9_m51.w) + clamp((_405 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1908, 0.0f, 1.0f);
    float4 _1951 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _36.SampleLevel(_13, float3((_353 + ((((float3(uint3(_1794, _1790 + (_1792 * _1794), _263) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_385 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_385 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _1953 = _1951.w;
    _1957 = _1951.xyz + (((_9_m51.xyz * (1.0f - _1911)) + (((_9_m54.xyz * pow(clamp(dot(_404, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1886 * max(_1837 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1908))) * _1953);
    _1958 = _1953 * _1911;
  } else {
    float3 _1659 = _378 - _7_m11.xyz;
    float _1661 = _1659.y;
    float _1675 = max(-127.0f, _9_m49.z * _1661);
    float _1699 = max(-127.0f, _9_m52.x * _1661);
    float _1710 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1675) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1675)) / _1675) : (0.693147182464599609375f - (0.2402265071868896484375f * _1675)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1699) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1699)) / _1699) : (0.693147182464599609375f - (0.2402265071868896484375f * _1699))));
    float _1732 = clamp((_405 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1735 = clamp((max(clamp(exp2(-(_1710 * _405)), 0.0f, 1.0f), _9_m51.w) + clamp((_405 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1732, 0.0f, 1.0f);
    _1957 = (_9_m51.xyz * (1.0f - _1735)) + (((_9_m54.xyz * pow(clamp(dot(_404, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1710 * max(_405 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1732));
    _1958 = _1735;
  }
  float3 _1961 = _1616 * _1958;
  float3 _1963 = (_1582 * _1961) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1619 * _1619)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1625) / max((12.56637096405029296875f * _1629) * sqrt(_1629), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1616)) * _1958) + _1957);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _1963 = (_1963 * 0.65f) + (_1582 * 0.35f);
  }
  // RenoDX code end
  float _1964 = dot(_1961, 0.3333333432674407958984375f.xxx);
  float4 _1965 = float4(_1963.x, _1963.y, _1963.z, _1579.w);
  _1965.w = _1964;
  float _1994 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _378) * _9_m61.z), 0.0f, 1.0f);
  float3 _2002 = lerp(_1582, _1965.xyz, min((1.0f - _1994) + ((_50.SampleLevel(_14, (_378 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _1994), 1.0f + _1964).xxx);
  _5 = float4(_2002.x, _2002.y, _2002.z, _1965.w);
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

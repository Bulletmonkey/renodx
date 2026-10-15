#include "./renodx_injection.hlsli"

// Ported from the native 0x4E327CFC Vulkan dump.
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

static uint _259;

[[vk::binding(25, 3)]] cbuffer _6_7 : register(b25, space3) {
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

[[vk::binding(29, 3)]] cbuffer _8_9 : register(b29, space3) {
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

[[vk::binding(31, 3)]] ByteAddressBuffer _23 : register(t31, space3);
[[vk::binding(30, 3)]] cbuffer _24_26 : register(b30, space3) {
  float4 _26_m0 : packoffset(c0);
  float4 _26_m1 : packoffset(c1);
  float4 _26_m2 : packoffset(c2);
  float4 _26_m3 : packoffset(c3);
  _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(26, 3)]] cbuffer _27_28 : register(b26, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  float4 _28_m4 : packoffset(c4);
  uint4 _28_m5 : packoffset(c5);
  float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(27, 3)]] cbuffer _29_30 : register(b27, space3) {
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

[[vk::binding(28, 3)]] cbuffer _37_38 : register(b28, space3) {
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
[[vk::binding(22, 3)]] Texture2D<float4> _17 : register(t22, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _18 : register(t6, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _19 : register(t7, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _20 : register(t17, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _21 : register(t8, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _31 : register(t5, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _32 : register(t23, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _34 : register(t9, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _35 : register(t21, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _36 : register(t16, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _39 : register(t24, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _40 : register(t4, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _41 : register(t15, space3);
[[vk::binding(12, 3)]] Texture3D<float4> _42 : register(t12, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _43 : register(t14, space3);
[[vk::binding(11, 3)]] Texture3D<float4> _44 : register(t11, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _45 : register(t13, space3);
[[vk::binding(10, 3)]] Texture3D<float4> _46 : register(t10, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _47 : register(t20, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _48 : register(t19, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _49 : register(t18, space3);

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
  uint2 _265 = uint2(gl_FragCoord.xy);
  int _268 = int(_265.x);
  int _269 = int(_265.y);
  int2 _271 = int3(_268, _269, 0).xy;
  float4 _273 = _47.Load(int3(_271, 0));
  float4 _275 = _48.Load(int3(_271, 0));
  float4 _277 = _49.Load(int3(_271, 0));
  uint _281 = uint(_273.x * 1023.0f);
  float _285 = float((_281 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _293 = float(((_281 & 7u) << 2u) | (uint(_273.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _297 = uint(round(_273.y * 1023.0f));
  float _302 = float((_297 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _307 = uint(_273.z * 1023.0f);
  float2 _322 = (_275.xy * 2.0f) - 1.0f.xx;
  float _326 = 1.0f - dot(1.0f.xx, abs(_322));
  float3 _328 = float3(_322.x, _326, _322.y);
  float3 _340;
  if (_326 < 0.0f) {
    float2 _335 = _328.xz;
    bool2 _336 = bool2(_335.x >= 0.0f.xx.x, _335.y >= 0.0f.xx.y);
    float2 _338 = (1.0f.xx - abs(_328.zx)) * float2(_336.x ? 1.0f.xx.x : (-1.0f).xx.x, _336.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _340 = float3(_338.x, _328.y, _338.y);
  } else {
    _340 = _328;
  }
  float3 _341 = normalize(_340);
  float _342 = _275.z;
  float3 _343 = _277.xyz;
  float _344 = _277.w;
  float _346 = (float(_297 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _349 = float2(_265);
  float2 _362 = gl_FragCoord.xy * _9_m0.zw;
  float2 _364 = (_362 * 2.0f) - 1.0f.xx;
  float4 _367 = float4(_364, _17.SampleLevel(_12, (_349 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _367.y = -_364.y;
  float4 _370 = mul(_7_m6, _367);
  float3 _374 = _370.xyz / _370.w.xxx;
  float4 _378 = float4(_374, 1.0f);
  float _381 = abs(mul(_7_m0, _378).z);
  float3 _396;
  do {
    if (_9_m4.w == 0.0f) {
      _396 = _7_m11.xyz - _374;
      break;
    } else {
      _396 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _397 = dot(_396, _396);
  float _399 = rsqrt(max(_397, 9.9999999392252902907785028219223e-09f));
  float3 _400 = _396 * _399;
  float _401 = _397 * _399;
  float3 _402 = -_400;
  float3 _404 = (0.07999999821186065673828125f * _346).xxx;
  float _405 = dot(_341, _400);
  float _406 = max(0.0f, _405);
  float4 _408 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _342) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _409 = _408.x;
  float2 _419 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_409 * _409, exp2((-9.27999973297119140625f) * _406)) * _409) + _408.y)) + _408.zw;
  float4 _628;
  do {
    [branch] if (_30_m4 == 0) {
      _628 = 0.0f.xxxx;
      break;
    }
    float4 _438 = _35.SampleLevel(_13, _362, 0.0f);
    float _439 = _438.x;
    float4 _443 = _31.Load(int3(_271, 0));
    float _444 = _443.x;
    float4 _627;
    if (_444 > 0.001000000047497451305389404296875f) {
      float3 _454 = reflect(_402, _341);
      float3 _455 = -_28_m0.xyz;
      float _460 = dot(_455, _454);
      float3 _462 = _454 - (_455 * _460);
      bool3 _464 = (_460 < _28_m4.z).xxx;
      float3 _472 = normalize((_455 * _28_m4.z) + ((_462 * rsqrt(max(6.103515625e-05f, dot(_462, _462)))) * _28_m4.y));
      float3 _473 = float3(_464.x ? _472.x : _454.x, _464.y ? _472.y : _454.y, _464.z ? _472.z : _454.z);
      float3 _477 = _473 + _400;
      float3 _481 = _477 * rsqrt(max(6.103515625e-05f, dot(_477, _477)));
      float _482 = dot(_341, _473);
      float _483 = clamp(dot(_473, _341), 0.0f, 1.0f);
      float _485 = clamp(dot(_341, _481), 0.0f, 1.0f);
      float _488 = dot(_400, _473);
      float _490 = clamp(_405, 0.0f, 1.0f);
      float _491 = _342 * _342;
      float _492 = _491 * _491;
      float _513 = (((_485 * _492) - _485) * _485) + 1.0f;
      float _516 = 1.0f - clamp(dot(_400, _481), 0.0f, 1.0f);
      float _517 = _516 * _516;
      float _519 = (_516 * _517) * _517;
      float _543 = 1.0f - _342;
      float _550 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_543 * (1.04997003078460693359375f + (_543 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _543))))));
      float _551 = 1.0f - _550;
      float3 _554 = _404 + ((1.0f.xxx - _404) * 0.0476190485060214996337890625f);
      float _585 = clamp(-_488, 0.0f, 1.0f);
      float _589 = (((_585 * 0.36000001430511474609375f) - _585) * _585) + 1.0f;
      float _590 = _589 * _589;
      float3 _602 = ((min(((_404 * (1.0f - _519)) + _519.xxx) * ((_492 / (_513 * _513)) * (0.5f / (((_483 * sqrt(((((-_490) * _492) + _490) * _490) + _492)) + (_490 * sqrt(((((-_483) * _492) + _483) * _483) + _492))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_554 * (((_34.SampleLevel(_13, (float2(_490, _342) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_13, (float2(_483, _342) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _550) / _551)) * _554) / (1.0f.xxx - (_554 * _551)))) * lerp(clamp(_405 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_488, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_488 + 1.0f, 0.0f, 1.0f))) * _302;
      float3 _612 = _28_m1.xyz * (((((_343 * _302) * 1.0f) * (float((_307 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_602 * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _483)) + (((((_343 / max(0.00999999977648258209228515625f, max(max(_277.x, _277.y), _277.z)).xxx) * _285) * (clamp(0.5f - _482, 0.0f, 1.0f) * ((0.36000001430511474609375f != _590) ? (0.36000001430511474609375f / _590) : 1.0f))) + (_343 * (clamp(_482 + _293, 0.0f, 1.0f) - clamp(_483, 0.0f, 1.0f)))) * _302));
      float3 _625 = lerp(_612, _612 * _32.SampleBias(_13, float2(_444, 0.5f), _9_m16).xyz, (1.0f - _444).xxx) * lerp(_439, max(_439, _302), _293);
      _627 = float4(_625.x, _625.y, _625.z, 0.0f.xxxx.w);
    } else {
      _627 = 0.0f.xxxx;
    }
    _628 = _627;
    break;
  } while (false);
  float3 _630 = _344.xxx;
  float3 _667;
  float3 _668;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x4E327CFC:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _643 = min(_20.SampleBias(_12, _4, _9_m16).x, _344);
    _667 = clamp((pow(abs(_406 + _643), exp2(((-16.0f) * _342) - 1.0f)) - 1.0f) + _643, 0.0f, 1.0f).xxx;
    _668 = max(_643.xxx, ((((((_343 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _643) + ((_343 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _643) + ((_343 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _643);
  }
  else {
    _667 = _630;
    _668 = _630;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _628.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _667 : 1.0f.xxx;
  // RenoDX code end
  float3 _678 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _687 = _374 - (_9_m108.xyz + (_678 * (-_9_m110.w)));
  float _702 = max(min(max((max(abs(_687.x), abs(_687.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_687.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1004;
  float4 _1005;
  float4 _1006;
  float _1007;
  float _1008;
  if ((_9_m108.w != 0.0f) && (_702 < 1.0f)) {
    float3 _715 = _374 - (_9_m108.xyz + (_678 * (-_9_m110.y)));
    float _729 = max(clamp((max(abs(_715.x), abs(_715.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_715.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _805;
    float4 _806;
    float4 _807;
    float4 _808;
    if (_729 < 1.0f) {
      float3 _738 = ((_374 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _740 = _738 - floor(_738);
      float4 _744 = _41.SampleLevel(_14, _740, 0.0f);
      float _745 = 1.0f - _729;
      float _749 = _9_m109.y * 0.5f;
      float _754 = _740.x;
      float _755 = clamp(_740.y, _749, 1.0f - _749) * 0.3333333432674407958984375f;
      float _756 = _740.z;
      float4 _759 = _42.SampleLevel(_13, float3(_754, _755, _756), 0.0f);
      float _775 = _744.x;
      float _785 = _744.y;
      float _795 = _744.z;
      _805 = _702 + (_759.w * _745);
      _806 = float4(((_42.SampleLevel(_13, float3(_754, _755 + 0.666666686534881591796875f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _795, _795) * _745;
      _807 = float4(((_42.SampleLevel(_13, float3(_754, _755 + 0.3333333432674407958984375f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _785, _785) * _745;
      _808 = float4(((_759.xyz * 4.0f) - 2.0f.xxx) * _775, _775) * _745;
    } else {
      _805 = _702;
      _806 = 0.0f.xxxx;
      _807 = 0.0f.xxxx;
      _808 = 0.0f.xxxx;
    }
    float3 _814 = _374 - (_9_m108.xyz + (_678 * (-_9_m110.z)));
    float _828 = max(clamp((max(abs(_814.x), abs(_814.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_814.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _908;
    float4 _909;
    float4 _910;
    float4 _911;
    if (_828 < 1.0f) {
      float3 _837 = ((_374 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _839 = _837 - floor(_837);
      float4 _843 = _43.SampleLevel(_14, _839, 0.0f);
      float _845 = _729 * (1.0f - _828);
      float _849 = _9_m109.y * 0.5f;
      float _854 = _839.x;
      float _855 = clamp(_839.y, _849, 1.0f - _849) * 0.3333333432674407958984375f;
      float _856 = _839.z;
      float4 _859 = _44.SampleLevel(_13, float3(_854, _855, _856), 0.0f);
      float _875 = _843.x;
      float _886 = _843.y;
      float _897 = _843.z;
      _908 = _805 + (_859.w * _845);
      _909 = _806 + (float4(((_44.SampleLevel(_13, float3(_854, _855 + 0.666666686534881591796875f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _897, _897) * _845);
      _910 = _807 + (float4(((_44.SampleLevel(_13, float3(_854, _855 + 0.3333333432674407958984375f, _856), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _886, _886) * _845);
      _911 = _808 + (float4(((_859.xyz * 4.0f) - 2.0f.xxx) * _875, _875) * _845);
    } else {
      _908 = _805;
      _909 = _806;
      _910 = _807;
      _911 = _808;
    }
    float4 _994;
    float4 _995;
    float4 _996;
    float _997;
    if (_828 > 0.0f) {
      float3 _920 = ((_374 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _923 = _9_m109.xyz * 0.5f;
      float3 _925 = clamp(_920 - floor(_920), _923, 1.0f.xxx - _923);
      float4 _929 = _45.SampleLevel(_14, _925, 0.0f);
      float _931 = _828 * (1.0f - _702);
      float _935 = _9_m109.y * 0.5f;
      float _940 = _925.x;
      float _941 = clamp(_925.y, _935, 1.0f - _935) * 0.3333333432674407958984375f;
      float _942 = _925.z;
      float4 _945 = _46.SampleLevel(_13, float3(_940, _941, _942), 0.0f);
      float _961 = _929.x;
      float _972 = _929.y;
      float _983 = _929.z;
      _994 = _909 + (float4(((_46.SampleLevel(_13, float3(_940, _941 + 0.666666686534881591796875f, _942), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _983, _983) * _931);
      _995 = _910 + (float4(((_46.SampleLevel(_13, float3(_940, _941 + 0.3333333432674407958984375f, _942), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _972, _972) * _931);
      _996 = _911 + (float4(((_945.xyz * 4.0f) - 2.0f.xxx) * _961, _961) * _931);
      _997 = _908 + (_945.w * _931);
    } else {
      _994 = _909;
      _995 = _910;
      _996 = _911;
      _997 = _908;
    }
    float _1000 = clamp((_997 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1004 = _994;
    _1005 = _995;
    _1006 = _996;
    _1007 = _1000 - _702;
    _1008 = (_1000 + _702) * 0.5f;
  } else {
    _1004 = 0.0f.xxxx;
    _1005 = 0.0f.xxxx;
    _1006 = 0.0f.xxxx;
    _1007 = 0.0f;
    _1008 = 1.0f;
  }
  float4 _1028 = _1006 + float4(_9_m111.x * _1008, (_9_m111.y * _1008) + ((_9_m111.w * _1007) * 0.5f), _9_m111.z * _1008, (_9_m111.w * _1008) + ((_9_m111.y * _1007) * 0.375f));
  float4 _1048 = _1005 + float4(_9_m112.x * _1008, (_9_m112.y * _1008) + ((_9_m112.w * _1007) * 0.5f), _9_m112.z * _1008, (_9_m112.w * _1008) + ((_9_m112.y * _1007) * 0.375f));
  float4 _1068 = _1004 + float4(_9_m113.x * _1008, (_9_m113.y * _1008) + ((_9_m113.w * _1007) * 0.5f), _9_m113.z * _1008, (_9_m113.w * _1008) + ((_9_m113.y * _1007) * 0.375f));
  float4 _1226;
  float4 _1227;
  float4 _1228;
  [branch] if (all(bool2(_362.x >= 0.0f.xx.x, _362.y >= 0.0f.xx.y))) {
    float4 _1076 = _40.SampleLevel(_13, _362, 0.0f);
    float4 _1077 = abs(_1076);
    float4 _1223;
    float4 _1224;
    float4 _1225;
    [branch] if (any(bool4(_1077.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1077.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1077.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1077.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1083 = length(_1076.yzw);
      uint _1085;
      float _1088;
      _1085 = 0u;
      _1088 = 1.0f;
      for (float _1090 = _1083; _1090 > 4.599999904632568359375f;) {
        _1085++;
        _1088 *= 0.5f;
        _1090 *= 0.5f;
        continue;
      }
      float4 _1094 = _1076 * _1088;
      float4 _1099 = float4(0.0f, _1094.yzw);
      float2 _1121 = (_39.SampleLevel(_13, float2(((((length(_1099) * _38_m3.x) + _38_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _38_m2.xy) + _38_m2.zw;
      float4 _1135;
      _1135 = float4(_1121.x * 3.5449078083038330078125f, _1099.yzw * _1121.y) * exp(_1094.x * 0.282094776630401611328125f);
      for (uint _1138 = 0u; _1138 < _1085;) {
        _1135 = mul(float4x4(_1135, float4(_1135.yx, 0.0f, 0.0f), float4(_1135.z, 0.0f, _1135.x, 0.0f), float4(_1135.w, 0.0f, 0.0f, _1135.x)) * 0.282094776630401611328125f, _1135);
        _1138++;
        continue;
      }
      float4x4 _1159 = float4x4(_1135, float4(_1135.yx, 0.0f, 0.0f), float4(_1135.z, 0.0f, _1135.x, 0.0f), float4(_1135.w, 0.0f, 0.0f, _1135.x)) * 0.282094776630401611328125f;
      float4 _1169 = mul(_1159, float4(_1028.w * 1.1283791065216064453125f, _1028.y * (-0.977204978466033935546875f), _1028.z * 0.977204978466033935546875f, _1028.x * (-0.977204978466033935546875f)));
      float4 _1189 = mul(_1159, float4(_1048.w * 1.1283791065216064453125f, _1048.y * (-0.977204978466033935546875f), _1048.z * 0.977204978466033935546875f, _1048.x * (-0.977204978466033935546875f)));
      float4 _1209 = mul(_1159, float4(_1068.w * 1.1283791065216064453125f, _1068.y * (-0.977204978466033935546875f), _1068.z * 0.977204978466033935546875f, _1068.x * (-0.977204978466033935546875f)));
      _1223 = float4(_1169.x * 0.886226952075958251953125f, _1169.w * (-1.02332675457000732421875f), _1169.y * (-1.02332675457000732421875f), _1169.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1224 = float4(_1189.x * 0.886226952075958251953125f, _1189.w * (-1.02332675457000732421875f), _1189.y * (-1.02332675457000732421875f), _1189.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1225 = float4(_1209.x * 0.886226952075958251953125f, _1209.w * (-1.02332675457000732421875f), _1209.y * (-1.02332675457000732421875f), _1209.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1223 = _1028;
      _1224 = _1048;
      _1225 = _1068;
    }
    _1226 = _1223;
    _1227 = _1224;
    _1228 = _1225;
  }
  else {
    _1226 = _1028;
    _1227 = _1048;
    _1228 = _1068;
  }
  float4 _1232 = float4(_341, 1.0f);
  float3 _1237 = max(float3(dot(_1226, _1232), dot(_1227, _1232), dot(_1228, _1232)), 0.0f.xxx);
  float4 _1242 = float4(-_341, 1.0f);
  float3 _1259 = reflect(_402, _341);
  float _1267 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_342, 0.001000000047497451305389404296875f))));
  float2 _1271 = floor(_349 * _26_m0.w);
  float _1288 = floor(_381 - _26_m2.y);
  float _1292 = clamp(_1288, 0.0f, _26_m1.x - 1.0f);
  uint _1302 = (_1288 <= _1292) ? (_23.Load(uint(_9_m21.z + int(_1271.x + (_1271.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1292)) * 4 + 0)) : 0u;
  float _1305 = dot(float4(_1237, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1307;
  float _1310;
  uint _1312;
  _1307 = 0.0f.xxx;
  _1310 = 1.0f;
  _1312 = _1302;
  uint _1313;
  float3 _1308;
  float _1311;
  bool _1315;
  [loop] for (;;) {
    bool _1314 = _1312 != 0u;
    _1315 = _1310 > 0.00999999977648258209228515625f;
    if (_1314 && _1315) {
      uint _1319 = firstbitlow(_1312);
      _1313 = _1312 ^ (1u << (_1319 & 31u));
      float3 _1339 = float3(dot(_26_m4[_1319]._m2, _378), dot(_26_m4[_1319]._m3, _378), dot(_26_m4[_1319]._m4, _378));
      float3 _1340 = abs(_1339);
      if (all(bool3(_1340.x <= _26_m4[_1319]._m1.xyz.x, _1340.y <= _26_m4[_1319]._m1.xyz.y, _1340.z <= _26_m4[_1319]._m1.xyz.z))) {
        float3 _1349 = _26_m4[_1319]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1351 = _1340 * 0.100000001490116119384765625f;
        float3 _1352 = _1351 * _1351;
        float3 _1355 = (_26_m4[_1319]._m1.xyz - _1340) * _26_m4[_1319]._m5.xyz;
        float3 _1403;
        [branch] if (_26_m4[_1319]._m6.x == 1.0f) {
          float3 _1388 = float3(dot(_26_m4[_1319]._m2.xyz, _1259), dot(_26_m4[_1319]._m3.xyz, _1259), dot(_26_m4[_1319]._m4.xyz, _1259));
          float3 _1390 = (_26_m4[_1319]._m1.xyz - _1339) / _1388;
          float3 _1393 = ((-_26_m4[_1319]._m1.xyz) - _1339) / _1388;
          bool3 _1394 = bool3(_1388.x > 0.0f.xxx.x, _1388.y > 0.0f.xxx.y, _1388.z > 0.0f.xxx.z);
          float3 _1395 = float3(_1394.x ? _1390.x : _1393.x, _1394.y ? _1390.y : _1393.y, _1394.z ? _1390.z : _1393.z);
          _1403 = _1339 + (_1388 * min(min(_1395.x, _1395.y), _1395.z));
        }
        else {
          _1403 = _1259;
        }
        float3 _1404 = normalize(_1403);
        float3 _1407 = float3(int3(sign(_1404)));
        float3 _1410 = _1404 / dot(_1404, _1407).xxx;
        float3 _1424;
        if (_1410.z < 0.0f) {
          float3 _1415 = abs(_1410);
          float2 _1422 = _1407.xy * float2(1.0f - _1415.y, 1.0f - _1415.x);
          _1424 = float3(_1422.x, _1422.y, _1410.z);
        } else {
          _1424 = _1410;
        }
        float _1445 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1319]._m0, _1232)));
        float _1458 = clamp((min(_1355.x, min(_1355.y, _1355.z)) * _26_m4[_1319]._m6.y) + ((((((_1349 * _1349).x - ((_1352.x + _1352.y) + _1352.z)) * _26_m4[_1319]._m5.x) * _26_m4[_1319]._m5.x) * (1.0f - _26_m4[_1319]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1319]._m6.w;
        _1308 = _1307 + ((((_21.SampleLevel(_15, float3((((_1424.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1319]._m1.w), _1267).xyz * _26_m4[_1319]._m5.w) * ((((((clamp(abs(_1305 / _1445), 0.0f, 1.0f) * 2.0f) + _1305) / (2.0f + _1445)) - 1.0f) * _9_m23.w) + 1.0f)) * _1458) * _1310);
        _1311 = _1310 * (1.0f - _1458);
      } else {
        _1308 = _1307;
        _1311 = _1310;
      }
      _1307 = _1308;
      _1310 = _1311;
      _1312 = _1313;
      continue;
    } else {
      break;
    }
  }
  float3 _1523;
  if (_1315) {
    float3 _1466 = normalize(_1259);
    float3 _1469 = float3(int3(sign(_1466)));
    float3 _1472 = _1466 / dot(_1466, _1469).xxx;
    float3 _1486;
    if (_1472.z < 0.0f) {
      float3 _1477 = abs(_1472);
      float2 _1484 = _1469.xy * float2(1.0f - _1477.y, 1.0f - _1477.x);
      _1486 = float3(_1484.x, _1484.y, _1472.z);
    } else {
      _1486 = _1472;
    }
    float _1509 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, _1232)));
    _1523 = _1307 + ((_21.SampleLevel(_15, float3((((_1486.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1267).xyz * ((((((clamp(abs(_1305 / _1509), 0.0f, 1.0f) * 2.0f) + _1305) / (2.0f + _1509)) - 1.0f) * _9_m23.w) + 1.0f)) * _1310);
  } else {
    _1523 = _1307;
  }
  float3 _1529 = (_1523 * _9_m23.z) * _9_m22.y;
  float3 _1552;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1546 = _19.SampleBias(_13, _4, _9_m16);
    float _1547 = _1546.x;
    _1552 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1547) + (_1529 * (1.0f - _1547));
  }
  else {
    _1552 = _1529;
  }
  float3 _1573 = ((((_1237 * _343) * _9_m22.x) * _668) + ((_1552 * ((_404 * _419.x) + (clamp(_346 * 4.0f, 0.0f, 1.0f) * _419.y).xxx)) * _667)) + (((((max(float3(dot(_1226, _1242), dot(_1227, _1242), dot(_1228, _1242)), 0.0f.xxx) * _9_m22.x) * _668) * (_343 / max(0.00999999977648258209228515625f, max(max(_277.x, _277.y), _277.z)).xxx)) * ((_285 * clamp(dot(_400, _341), 0.0f, 1.0f)) + (float(((_307 & 7u) << 2u) | (uint(_275.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _1575 = float4(_628.x, _628.y, _628.z, _628.w) + float4(_1573.x, _1573.y, _1573.z, 0.0f.xxxx.w);
  float _1593 = _374.y * _9_m46.w;
  float _1598 = max(0.00999999977648258209228515625f, _1593 + _9_m47.w);
  float3 _1612 = exp(_9_m45.xyz * ((-max(0.0f, (_401 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1598)) / _1598) * exp(_1593 + _9_m48.w))));
  float _1615 = dot(_402, _9_m44.xyz);
  float _1621 = _9_m45.w * _9_m45.w;
  float _1625 = (1.0f + _1621) - ((2.0f * _9_m45.w) * _1615);
  float3 _1953;
  float _1954;
  if (_9_m55.z > 0.0f) {
    uint3 _1779 = (uint3(int3(_268, _269, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1780 = _1779.y;
    uint _1781 = _1779.z;
    uint _1784 = _1779.x + (_1780 * _1781);
    uint _1786 = _1780 + (_1781 * _1784);
    uint _1788 = _1781 + (_1784 * _1786);
    uint _1790 = _1784 + (_1786 * _1788);
    float _1814 = dot(_402, -_7_m0[2].xyz);
    float3 _1824 = _374 - _7_m11.xyz;
    float _1826 = (_9_m55.w * ((_1814 > 5.9604644775390625e-08f) ? (1.0f / _1814) : 0.0f)) * (1.0f / _401);
    float _1827 = _1824.y;
    float _1828 = _1826 * _1827;
    float _1830 = _7_m11.y + _1828;
    float _1831 = _1827 - _1828;
    float _1833 = (1.0f - _1826) * _401;
    float _1847 = max(-127.0f, _9_m49.z * _1831);
    float _1871 = max(-127.0f, _9_m52.x * _1831);
    float _1882 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1830 - _9_m49.x)))) * ((abs(_1847) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1847)) / _1847) : (0.693147182464599609375f - (0.2402265071868896484375f * _1847)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1830 - _9_m52.z)))) * ((abs(_1871) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1871)) / _1871) : (0.693147182464599609375f - (0.2402265071868896484375f * _1871))));
    float _1904 = clamp((_401 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1907 = clamp((max(clamp(exp2(-(_1882 * _1833)), 0.0f, 1.0f), _9_m51.w) + clamp((_401 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1904, 0.0f, 1.0f);
    float4 _1947 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _36.SampleLevel(_13, float3((_349 + ((((float3(uint3(_1790, _1786 + (_1788 * _1790), _259) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_381 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_381 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _1949 = _1947.w;
    _1953 = _1947.xyz + (((_9_m51.xyz * (1.0f - _1907)) + (((_9_m54.xyz * pow(clamp(dot(_400, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1882 * max(_1833 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1904))) * _1949);
    _1954 = _1949 * _1907;
  } else {
    float3 _1655 = _374 - _7_m11.xyz;
    float _1657 = _1655.y;
    float _1671 = max(-127.0f, _9_m49.z * _1657);
    float _1695 = max(-127.0f, _9_m52.x * _1657);
    float _1706 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1671) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1671)) / _1671) : (0.693147182464599609375f - (0.2402265071868896484375f * _1671)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1695) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1695)) / _1695) : (0.693147182464599609375f - (0.2402265071868896484375f * _1695))));
    float _1728 = clamp((_401 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1731 = clamp((max(clamp(exp2(-(_1706 * _401)), 0.0f, 1.0f), _9_m51.w) + clamp((_401 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1728, 0.0f, 1.0f);
    _1953 = (_9_m51.xyz * (1.0f - _1731)) + (((_9_m54.xyz * pow(clamp(dot(_400, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1706 * max(_401 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1728));
    _1954 = _1731;
  }
  float3 _1957 = _1612 * _1954;
  float3 _1959 = (clamp(_1575.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _1957) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1615 * _1615)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1621) / max((12.56637096405029296875f * _1625) * sqrt(_1625), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1612)) * _1954) + _1953);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _1959 = (_1959 * 0.65f) + (clamp(_1575.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _1961 = float4(_1959.x, _1959.y, _1959.z, _1575.w);
  _1961.w = dot(_1957, 0.3333333432674407958984375f.xxx);
  _5 = _1961;
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

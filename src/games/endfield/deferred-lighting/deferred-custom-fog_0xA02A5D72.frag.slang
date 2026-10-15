#include "./renodx_injection.hlsli"

// Ported from the native 0xA02A5D72 Vulkan dump.
struct _27 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static uint _292;

[[vk::binding(28, 3)]] cbuffer _6_7 : register(b28, space3) {
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

[[vk::binding(30, 3)]] cbuffer _10_11 : register(b30, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(36, 3)]] ByteAddressBuffer _25 : register(t36, space3);
[[vk::binding(35, 3)]] cbuffer _26_28 : register(b35, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(31, 3)]] cbuffer _29_30 : register(b31, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(32, 3)]] cbuffer _31_32 : register(b32, space3) {
  int _32_m0 : packoffset(c0);
  int _32_m1 : packoffset(c0.y);
  int _32_m2 : packoffset(c0.z);
  int _32_m3 : packoffset(c0.w);
  int _32_m4 : packoffset(c1);
  int _32_m5 : packoffset(c1.y);
  int _32_m6 : packoffset(c1.z);
  int _32_m7 : packoffset(c1.w);
  float _32_m8 : packoffset(c2);
  float _32_m9 : packoffset(c2.y);
  float _32_m10 : packoffset(c2.z);
  float _32_m11 : packoffset(c2.w);
  float _32_m12 : packoffset(c3);
  float _32_m13 : packoffset(c3.y);
  float _32_m14 : packoffset(c3.z);
  float _32_m15 : packoffset(c3.w);
};

[[vk::binding(29, 3)]] cbuffer _39_40 : register(b29, space3) {
  float4 _40_m0[15] : packoffset(c0);
  float4 _40_m1[15] : packoffset(c15);
};

[[vk::binding(33, 3)]] cbuffer _43_44 : register(b33, space3) {
  float4 _44_m0 : packoffset(c0);
  float4 _44_m1 : packoffset(c1);
  float4 _44_m2 : packoffset(c2);
  float4 _44_m3 : packoffset(c3);
  float4 _44_m4 : packoffset(c4);
  uint4 _44_m5 : packoffset(c5);
  float4 _44_m6 : packoffset(c6);
  float4 _44_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _14 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerState _15 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _19 : register(t25, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _20 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _21 : register(t10, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _22 : register(t20, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _23 : register(t11, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _33 : register(t8, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _34 : register(t26, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _36 : register(t12, space3);
[[vk::binding(6, 3)]] Texture2DArray<float4> _37 : register(t6, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _38 : register(t7, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _41 : register(t24, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _42 : register(t19, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _45 : register(t27, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _46 : register(t5, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _47 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _48 : register(t15, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _49 : register(t17, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _50 : register(t14, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _51 : register(t16, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _52 : register(t13, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _53 : register(t4, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _54 : register(t23, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _55 : register(t22, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _56 : register(t21, space3);

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
  uint2 _298 = uint2(gl_FragCoord.xy);
  int _301 = int(_298.x);
  int _302 = int(_298.y);
  int2 _304 = int3(_301, _302, 0).xy;
  float4 _306 = _54.Load(int3(_304, 0));
  float4 _308 = _55.Load(int3(_304, 0));
  float4 _310 = _56.Load(int3(_304, 0));
  uint _314 = uint(round(_310.w * 255.0f));
  float3 _420;
  float3 _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float3 _428;
  uint _429;
  float _430;
  bool _431;
  [branch] if ((_314 & 128u) != 0u) {
    float2 _362 = (_306.xy * 2.0f) - 1.0f.xx;
    float _366 = 1.0f - dot(1.0f.xx, abs(_362));
    float3 _368 = float3(_362.x, _366, _362.y);
    float3 _380;
    if (_366 < 0.0f) {
      float2 _375 = _368.xz;
      bool2 _376 = bool2(_375.x >= 0.0f.xx.x, _375.y >= 0.0f.xx.y);
      float2 _378 = (1.0f.xx - abs(_368.zx)) * float2(_376.x ? 1.0f.xx.x : (-1.0f).xx.x, _376.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _380 = float3(_378.x, _368.y, _378.y);
    } else {
      _380 = _368;
    }
    float2 _385 = (_308.xy * 2.0f) - 1.0f.xx;
    float _389 = 1.0f - dot(1.0f.xx, abs(_385));
    float3 _391 = float3(_385.x, _389, _385.y);
    float3 _403;
    if (_389 < 0.0f) {
      float2 _398 = _391.xz;
      bool2 _399 = bool2(_398.x >= 0.0f.xx.x, _398.y >= 0.0f.xx.y);
      float2 _401 = (1.0f.xx - abs(_391.zx)) * float2(_399.x ? 1.0f.xx.x : (-1.0f).xx.x, _399.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _403 = float3(_401.x, _391.y, _401.y);
    } else {
      _403 = _391;
    }
    _420 = _310.xyz;
    _421 = normalize(_403);
    _422 = _308.z;
    _423 = _306.z;
    _424 = 0.0f;
    _425 = 0.0f;
    _426 = 0.0f;
    _427 = 0.0f;
    _428 = normalize(_380);
    _429 = uint(int((round(_306.w * 3.0f) * 4.0f) + round(_308.w * 3.0f)));
    _430 = float(_314 & 127u) * 0.0078740157186985015869140625f;
    _431 = true;
  }
  else {
    float2 _324 = (_308.xy * 2.0f) - 1.0f.xx;
    float _328 = 1.0f - dot(1.0f.xx, abs(_324));
    float3 _330 = float3(_324.x, _328, _324.y);
    float3 _342;
    if (_328 < 0.0f) {
      float2 _337 = _330.xz;
      bool2 _338 = bool2(_337.x >= 0.0f.xx.x, _337.y >= 0.0f.xx.y);
      float2 _340 = (1.0f.xx - abs(_330.zx)) * float2(_338.x ? 1.0f.xx.x : (-1.0f).xx.x, _338.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _342 = float3(_340.x, _330.y, _340.y);
    } else {
      _342 = _330;
    }
    uint _350 = clamp(_314 - 1u, 0u, 62u);
    bool4 _351 = ((_314 > 0u) && (_314 <= 63u)).xxxx;
    float4 _354 = float4(_351.x ? _11_m0[_350].x : 0.0f.xxxx.x, _351.y ? _11_m0[_350].y : 0.0f.xxxx.y, _351.z ? _11_m0[_350].z : 0.0f.xxxx.z, _351.w ? _11_m0[_350].w : 0.0f.xxxx.w);
    _420 = _310.xyz;
    _421 = normalize(_342);
    _422 = _308.z;
    _423 = _306.y;
    _424 = _354.y;
    _425 = _354.z;
    _426 = _354.x * _306.x;
    _427 = _354.w;
    _428 = 0.0f.xxx;
    _429 = _314;
    _430 = 0.0f;
    _431 = false;
  }
  float2 _434 = float2(_298);
  float2 _447 = gl_FragCoord.xy * _9_m0.zw;
  float2 _449 = (_447 * 2.0f) - 1.0f.xx;
  float4 _452 = float4(_449, _19.SampleLevel(_14, (_434 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _452.y = -_449.y;
  float4 _455 = mul(_7_m6, _452);
  float3 _459 = _455.xyz / _455.w.xxx;
  float4 _463 = float4(_459, 1.0f);
  float _466 = abs(mul(_7_m0, _463).z);
  float3 _481;
  do {
    if (_9_m4.w == 0.0f) {
      _481 = _7_m11.xyz - _459;
      break;
    } else {
      _481 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _482 = dot(_481, _481);
  float _484 = rsqrt(max(_482, 9.9999999392252902907785028219223e-09f));
  float3 _485 = _481 * _484;
  float _486 = _482 * _484;
  float3 _487 = -_485;
  float2 _500;
  if (_9_m132.x > 0.00048828125f) {
    _500 = _53.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _500 = 1.0f.xx;
  }
  float _503 = min(_500.x, _500.y);
  float2 _504 = _500 * 1.0f;
  float _505 = _504.x;
  float _510 = lerp(lerp(min(1.0f, _422), _422, _503), _422, _505);
  float3 _512 = _420 * lerp(lerp(min(1.0f, 1.0f), 1.0f, _503), 1.0f, _505);
  float _513 = dot(_421, _485);
  float _514 = max(0.0f, _513);
  float4 _516 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _510) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _517 = _516.x;
  float2 _527 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_517 * _517, exp2((-9.27999973297119140625f) * _514)) * _517) + _516.y)) + _516.zw;
  float3 _532 = (0.039999999105930328369140625f.xxx * _527.x) + _527.y.xxx;
  float4 _858;
  do {
    [branch] if (_32_m4 == 0) {
      _858 = 0.0f.xxxx;
      break;
    }
    float4 _545 = _33.Load(int3(_304, 0));
    float _546 = _545.x;
    float4 _857;
    if (_546 > 0.001000000047497451305389404296875f) {
      float3 _557 = reflect(_487, _421);
      float3 _558 = -_30_m0.xyz;
      float _563 = dot(_558, _557);
      float3 _565 = _557 - (_558 * _563);
      bool3 _567 = (_563 < _30_m4.z).xxx;
      float3 _575 = normalize((_558 * _30_m4.z) + ((_565 * rsqrt(max(6.103515625e-05f, dot(_565, _565)))) * _30_m4.y));
      float3 _576 = float3(_567.x ? _575.x : _557.x, _567.y ? _575.y : _557.y, _567.z ? _575.z : _557.z);
      float3 _580 = _576 + _485;
      float3 _584 = _580 * rsqrt(max(6.103515625e-05f, dot(_580, _580)));
      float _586 = clamp(dot(_576, _421), 0.0f, 1.0f);
      float _588 = clamp(dot(_421, _584), 0.0f, 1.0f);
      float _590 = clamp(dot(_485, _584), 0.0f, 1.0f);
      float _592 = clamp(_513, 0.0f, 1.0f);
      float3 _766;
      float3 _767;
      [branch] if (_431) {
        float _696 = _510 * _510;
        float _697 = _696 * _696;
        float _718 = (((_588 * _697) - _588) * _588) + 1.0f;
        float _721 = 1.0f - _590;
        float _722 = _721 * _721;
        float _724 = (_721 * _722) * _722;
        float _748 = 1.0f - _510;
        float _755 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_748 * (1.04997003078460693359375f + (_748 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _748))))));
        float _756 = 1.0f - _755;
        _766 = 0.0f.xxx;
        _767 = min(((0.039999999105930328369140625f.xxx * (1.0f - _724)) + _724.xxx) * ((_697 / (_718 * _718)) * (0.5f / (((_586 * sqrt(((((-_592) * _697) + _592) * _592) + _697)) + (_592 * sqrt(((((-_586) * _697) + _586) * _586) + _697))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_36.SampleLevel(_15, (float2(_592, _510) * 0.96875f) + 0.015625f.xx, 0.0f).x * _36.SampleLevel(_15, (float2(_586, _510) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _755) / _756)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _756)));
      }
      else {
        float _596 = _510 * _510;
        float _597 = _596 * _596;
        float _618 = (((_588 * _597) - _588) * _588) + 1.0f;
        float _621 = 1.0f - _590;
        float _622 = _621 * _621;
        float _624 = (_621 * _622) * _622;
        float _648 = 1.0f - _510;
        float _655 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_648 * (1.04997003078460693359375f + (_648 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _648))))));
        float _656 = 1.0f - _655;
        float _679 = clamp(1.0f - _426, 0.0f, 1.0f);
        float _687 = clamp((dot(_421, _576) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _766 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_424, _425, _426).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _425.xxx) * _426) * lerp((_423 * lerp(1.0f, (_687 * sqrt(_687)) * 1.66666662693023681640625f, _679)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_485, _576), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _679));
        _767 = min(((0.039999999105930328369140625f.xxx * (1.0f - _624)) + _624.xxx) * ((_597 / (_618 * _618)) * (0.5f / (((_586 * sqrt(((((-_592) * _597) + _592) * _592) + _597)) + (_592 * sqrt(((((-_586) * _597) + _586) * _586) + _597))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_36.SampleLevel(_15, (float2(_592, _510) * 0.96875f) + 0.015625f.xx, 0.0f).x * _36.SampleLevel(_15, (float2(_586, _510) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _655) / _656)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _656)));
      }
      float3 _768 = _512 * 1.0f;
      float3 _771 = clamp(_767 * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _586;
      float3 _842;
      [branch] if (_431) {
        float3 _837;
        do {
          [branch] if (((_429 > 0u) && (_429 <= 15u)) && (_430 > 0.0f)) {
            int _790 = int(clamp(_429 - 1u, 0u, 14u));
            float _809 = _430 * _40_m0[_790].w;
            float _814 = float(_790);
            _837 = float3(_37.SampleLevel(_15, float3((dot(normalize(lerp(_421, _428, _40_m0[_790].x.xxx)), _576) * 0.5f) + 0.5f, _809, _814), 0.0f).x, _37.SampleLevel(_15, float3((dot(normalize(lerp(_421, _428, _40_m0[_790].y.xxx)), _576) * 0.5f) + 0.5f, _809, _814), 0.0f).y, _37.SampleLevel(_15, float3((dot(normalize(lerp(_421, _428, _40_m0[_790].z.xxx)), _576) * 0.5f) + 0.5f, _809, _814), 0.0f).z);
            break;
          }
          _837 = _586.xxx;
          break;
        } while (false);
        _842 = _30_m1.xyz * (((_768 * _837) + _771) + _766);
      }
      else {
        _842 = ((_771 + _766) + (_768 * _586)) * _30_m1.xyz;
      }
      float3 _855 = lerp(_842, _842 * _34.SampleBias(_15, float2(_546, 0.5f), _9_m16).xyz, (1.0f - _546).xxx) * _41.SampleLevel(_15, _447, 0.0f).x;
      _857 = float4(_855.x, _855.y, _855.z, 0.0f.xxxx.w);
    } else {
      _857 = 0.0f.xxxx;
    }
    _858 = _857;
    break;
  } while (false);
  float3 _860 = _423.xxx;
  float3 _897;
  float3 _898;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xA02A5D72:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _873 = min(_22.SampleBias(_14, _4, _9_m16).x, _423);
    _897 = clamp((pow(abs(_514 + _873), exp2(((-16.0f) * _510) - 1.0f)) - 1.0f) + _873, 0.0f, 1.0f).xxx;
    _898 = max(_873.xxx, ((((((_512 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _873) + ((_512 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _873) + ((_512 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _873);
  }
  else {
    _897 = _860;
    _898 = _860;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _858.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _897 : 1.0f.xxx;
  // RenoDX code end
  float3 _2757;
  [branch] if (_431) {
    float3 _1844;
    do {
      [branch] if (((_429 > 0u) && (_429 <= 15u)) && (_430 > 0.0f)) {
        uint _1832 = clamp(_429 - 1u, 0u, 14u);
        _1844 = _38.SampleLevel(_15, float3(_430 * _40_m0[_1832].w, 0.5f, float(_1832)), 0.0f).xyz;
        break;
      }
      _1844 = 1.0f.xxx;
      break;
    } while (false);
    float3 _1861 = (_459 + (_421 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_434 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1871 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1880 = _1861 - (_9_m108.xyz + (_1871 * (-_9_m110.w)));
    float _1895 = max(min(max((max(abs(_1880.x), abs(_1880.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1880.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2197;
    float4 _2198;
    float4 _2199;
    float _2200;
    float _2201;
    if ((_9_m108.w != 0.0f) && (_1895 < 1.0f)) {
      float3 _1908 = _1861 - (_9_m108.xyz + (_1871 * (-_9_m110.y)));
      float _1922 = max(clamp((max(abs(_1908.x), abs(_1908.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1908.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _1998;
      float4 _1999;
      float4 _2000;
      float4 _2001;
      if (_1922 < 1.0f) {
        float3 _1931 = ((_1861 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1933 = _1931 - floor(_1931);
        float4 _1937 = _47.SampleLevel(_16, _1933, 0.0f);
        float _1938 = 1.0f - _1922;
        float _1942 = _9_m109.y * 0.5f;
        float _1947 = _1933.x;
        float _1948 = clamp(_1933.y, _1942, 1.0f - _1942) * 0.3333333432674407958984375f;
        float _1949 = _1933.z;
        float4 _1952 = _48.SampleLevel(_15, float3(_1947, _1948, _1949), 0.0f);
        float _1968 = _1937.x;
        float _1978 = _1937.y;
        float _1988 = _1937.z;
        _1998 = _1895 + (_1952.w * _1938);
        _1999 = float4(((_48.SampleLevel(_15, float3(_1947, _1948 + 0.666666686534881591796875f, _1949), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1988, _1988) * _1938;
        _2000 = float4(((_48.SampleLevel(_15, float3(_1947, _1948 + 0.3333333432674407958984375f, _1949), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1978, _1978) * _1938;
        _2001 = float4(((_1952.xyz * 4.0f) - 2.0f.xxx) * _1968, _1968) * _1938;
      } else {
        _1998 = _1895;
        _1999 = 0.0f.xxxx;
        _2000 = 0.0f.xxxx;
        _2001 = 0.0f.xxxx;
      }
      float3 _2007 = _1861 - (_9_m108.xyz + (_1871 * (-_9_m110.z)));
      float _2021 = max(clamp((max(abs(_2007.x), abs(_2007.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2007.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _2101;
      float4 _2102;
      float4 _2103;
      float4 _2104;
      if (_2021 < 1.0f) {
        float3 _2030 = ((_1861 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2032 = _2030 - floor(_2030);
        float4 _2036 = _49.SampleLevel(_16, _2032, 0.0f);
        float _2038 = _1922 * (1.0f - _2021);
        float _2042 = _9_m109.y * 0.5f;
        float _2047 = _2032.x;
        float _2048 = clamp(_2032.y, _2042, 1.0f - _2042) * 0.3333333432674407958984375f;
        float _2049 = _2032.z;
        float4 _2052 = _50.SampleLevel(_15, float3(_2047, _2048, _2049), 0.0f);
        float _2068 = _2036.x;
        float _2079 = _2036.y;
        float _2090 = _2036.z;
        _2101 = _1998 + (_2052.w * _2038);
        _2102 = _1999 + (float4(((_50.SampleLevel(_15, float3(_2047, _2048 + 0.666666686534881591796875f, _2049), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2090, _2090) * _2038);
        _2103 = _2000 + (float4(((_50.SampleLevel(_15, float3(_2047, _2048 + 0.3333333432674407958984375f, _2049), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2079, _2079) * _2038);
        _2104 = _2001 + (float4(((_2052.xyz * 4.0f) - 2.0f.xxx) * _2068, _2068) * _2038);
      } else {
        _2101 = _1998;
        _2102 = _1999;
        _2103 = _2000;
        _2104 = _2001;
      }
      float4 _2187;
      float4 _2188;
      float4 _2189;
      float _2190;
      if (_2021 > 0.0f) {
        float3 _2113 = ((_1861 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2116 = _9_m109.xyz * 0.5f;
        float3 _2118 = clamp(_2113 - floor(_2113), _2116, 1.0f.xxx - _2116);
        float4 _2122 = _51.SampleLevel(_16, _2118, 0.0f);
        float _2124 = _2021 * (1.0f - _1895);
        float _2128 = _9_m109.y * 0.5f;
        float _2133 = _2118.x;
        float _2134 = clamp(_2118.y, _2128, 1.0f - _2128) * 0.3333333432674407958984375f;
        float _2135 = _2118.z;
        float4 _2138 = _52.SampleLevel(_15, float3(_2133, _2134, _2135), 0.0f);
        float _2154 = _2122.x;
        float _2165 = _2122.y;
        float _2176 = _2122.z;
        _2187 = _2102 + (float4(((_52.SampleLevel(_15, float3(_2133, _2134 + 0.666666686534881591796875f, _2135), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2176, _2176) * _2124);
        _2188 = _2103 + (float4(((_52.SampleLevel(_15, float3(_2133, _2134 + 0.3333333432674407958984375f, _2135), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2165, _2165) * _2124);
        _2189 = _2104 + (float4(((_2138.xyz * 4.0f) - 2.0f.xxx) * _2154, _2154) * _2124);
        _2190 = _2101 + (_2138.w * _2124);
      } else {
        _2187 = _2102;
        _2188 = _2103;
        _2189 = _2104;
        _2190 = _2101;
      }
      float _2193 = clamp((_2190 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _2197 = _2187;
      _2198 = _2188;
      _2199 = _2189;
      _2200 = _2193 - _1895;
      _2201 = (_2193 + _1895) * 0.5f;
    } else {
      _2197 = 0.0f.xxxx;
      _2198 = 0.0f.xxxx;
      _2199 = 0.0f.xxxx;
      _2200 = 0.0f;
      _2201 = 1.0f;
    }
    float4 _2221 = _2199 + float4(_9_m111.x * _2201, (_9_m111.y * _2201) + ((_9_m111.w * _2200) * 0.5f), _9_m111.z * _2201, (_9_m111.w * _2201) + ((_9_m111.y * _2200) * 0.375f));
    float4 _2241 = _2198 + float4(_9_m112.x * _2201, (_9_m112.y * _2201) + ((_9_m112.w * _2200) * 0.5f), _9_m112.z * _2201, (_9_m112.w * _2201) + ((_9_m112.y * _2200) * 0.375f));
    float4 _2261 = _2197 + float4(_9_m113.x * _2201, (_9_m113.y * _2201) + ((_9_m113.w * _2200) * 0.5f), _9_m113.z * _2201, (_9_m113.w * _2201) + ((_9_m113.y * _2200) * 0.375f));
    float4 _2419;
    float4 _2420;
    float4 _2421;
    [branch] if (all(bool2(_447.x >= 0.0f.xx.x, _447.y >= 0.0f.xx.y))) {
      float4 _2269 = _46.SampleLevel(_15, _447, 0.0f);
      float4 _2270 = abs(_2269);
      float4 _2416;
      float4 _2417;
      float4 _2418;
      [branch] if (any(bool4(_2270.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2270.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2270.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2270.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _2276 = length(_2269.yzw);
        uint _2278;
        float _2281;
        _2278 = 0u;
        _2281 = 1.0f;
        for (float _2283 = _2276; _2283 > 4.599999904632568359375f;) {
          _2278++;
          _2281 *= 0.5f;
          _2283 *= 0.5f;
          continue;
        }
        float4 _2287 = _2269 * _2281;
        float4 _2292 = float4(0.0f, _2287.yzw);
        float2 _2314 = (_45.SampleLevel(_15, float2(((((length(_2292) * _44_m3.x) + _44_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _44_m2.xy) + _44_m2.zw;
        float4 _2328;
        _2328 = float4(_2314.x * 3.5449078083038330078125f, _2292.yzw * _2314.y) * exp(_2287.x * 0.282094776630401611328125f);
        for (uint _2331 = 0u; _2331 < _2278;) {
          _2328 = mul(float4x4(_2328, float4(_2328.yx, 0.0f, 0.0f), float4(_2328.z, 0.0f, _2328.x, 0.0f), float4(_2328.w, 0.0f, 0.0f, _2328.x)) * 0.282094776630401611328125f, _2328);
          _2331++;
          continue;
        }
        float4x4 _2352 = float4x4(_2328, float4(_2328.yx, 0.0f, 0.0f), float4(_2328.z, 0.0f, _2328.x, 0.0f), float4(_2328.w, 0.0f, 0.0f, _2328.x)) * 0.282094776630401611328125f;
        float4 _2362 = mul(_2352, float4(_2221.w * 1.1283791065216064453125f, _2221.y * (-0.977204978466033935546875f), _2221.z * 0.977204978466033935546875f, _2221.x * (-0.977204978466033935546875f)));
        float4 _2382 = mul(_2352, float4(_2241.w * 1.1283791065216064453125f, _2241.y * (-0.977204978466033935546875f), _2241.z * 0.977204978466033935546875f, _2241.x * (-0.977204978466033935546875f)));
        float4 _2402 = mul(_2352, float4(_2261.w * 1.1283791065216064453125f, _2261.y * (-0.977204978466033935546875f), _2261.z * 0.977204978466033935546875f, _2261.x * (-0.977204978466033935546875f)));
        _2416 = float4(_2362.x * 0.886226952075958251953125f, _2362.w * (-1.02332675457000732421875f), _2362.y * (-1.02332675457000732421875f), _2362.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2417 = float4(_2382.x * 0.886226952075958251953125f, _2382.w * (-1.02332675457000732421875f), _2382.y * (-1.02332675457000732421875f), _2382.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2418 = float4(_2402.x * 0.886226952075958251953125f, _2402.w * (-1.02332675457000732421875f), _2402.y * (-1.02332675457000732421875f), _2402.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _2416 = _2221;
        _2417 = _2241;
        _2418 = _2261;
      }
      _2419 = _2416;
      _2420 = _2417;
      _2421 = _2418;
    }
    else {
      _2419 = _2221;
      _2420 = _2241;
      _2421 = _2261;
    }
    float _2428 = max(0.0f, dot(_2419.xyz * _1844.x, _421) + _2419.w);
    float _2435 = max(0.0f, dot(_2420.xyz * _1844.y, _421) + _2420.w);
    float _2442 = max(0.0f, dot(_2421.xyz * _1844.z, _421) + _2421.w);
    float3 _2452 = reflect(_487, _421);
    float _2460 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_510, 0.001000000047497451305389404296875f))));
    float2 _2464 = floor(_434 * _28_m0.w);
    float _2481 = floor(_466 - _28_m2.y);
    float _2485 = clamp(_2481, 0.0f, _28_m1.x - 1.0f);
    uint _2495 = (_2481 <= _2485) ? (_25.Load(uint(_9_m21.z + int(_2464.x + (_2464.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_2485)) * 4 + 0)) : 0u;
    float _2498 = dot(float4(_2428, _2435, _2442, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2500;
    float _2503;
    uint _2505;
    _2500 = 0.0f.xxx;
    _2503 = 1.0f;
    _2505 = _2495;
    uint _2506;
    float3 _2501;
    float _2504;
    bool _2508;
    [loop] for (;;) {
      bool _2507 = _2505 != 0u;
      _2508 = _2503 > 0.00999999977648258209228515625f;
      if (_2507 && _2508) {
        uint _2512 = firstbitlow(_2505);
        _2506 = _2505 ^ (1u << (_2512 & 31u));
        float3 _2532 = float3(dot(_28_m4[_2512]._m2, _463), dot(_28_m4[_2512]._m3, _463), dot(_28_m4[_2512]._m4, _463));
        float3 _2533 = abs(_2532);
        if (all(bool3(_2533.x <= _28_m4[_2512]._m1.xyz.x, _2533.y <= _28_m4[_2512]._m1.xyz.y, _2533.z <= _28_m4[_2512]._m1.xyz.z))) {
          float3 _2542 = _28_m4[_2512]._m1.xyz * 0.100000001490116119384765625f;
          float3 _2544 = _2533 * 0.100000001490116119384765625f;
          float3 _2545 = _2544 * _2544;
          float3 _2548 = (_28_m4[_2512]._m1.xyz - _2533) * _28_m4[_2512]._m5.xyz;
          float3 _2596;
          [branch] if (_28_m4[_2512]._m6.x == 1.0f) {
            float3 _2581 = float3(dot(_28_m4[_2512]._m2.xyz, _2452), dot(_28_m4[_2512]._m3.xyz, _2452), dot(_28_m4[_2512]._m4.xyz, _2452));
            float3 _2583 = (_28_m4[_2512]._m1.xyz - _2532) / _2581;
            float3 _2586 = ((-_28_m4[_2512]._m1.xyz) - _2532) / _2581;
            bool3 _2587 = bool3(_2581.x > 0.0f.xxx.x, _2581.y > 0.0f.xxx.y, _2581.z > 0.0f.xxx.z);
            float3 _2588 = float3(_2587.x ? _2583.x : _2586.x, _2587.y ? _2583.y : _2586.y, _2587.z ? _2583.z : _2586.z);
            _2596 = _2532 + (_2581 * min(min(_2588.x, _2588.y), _2588.z));
          }
          else {
            _2596 = _2452;
          }
          float3 _2597 = normalize(_2596);
          float3 _2600 = float3(int3(sign(_2597)));
          float3 _2603 = _2597 / dot(_2597, _2600).xxx;
          float3 _2617;
          if (_2603.z < 0.0f) {
            float3 _2608 = abs(_2603);
            float2 _2615 = _2600.xy * float2(1.0f - _2608.y, 1.0f - _2608.x);
            _2617 = float3(_2615.x, _2615.y, _2603.z);
          } else {
            _2617 = _2603;
          }
          float _2642 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_2512]._m0, float4(_421, 1.0f))));
          float _2655 = clamp((min(_2548.x, min(_2548.y, _2548.z)) * _28_m4[_2512]._m6.y) + ((((((_2542 * _2542).x - ((_2545.x + _2545.y) + _2545.z)) * _28_m4[_2512]._m5.x) * _28_m4[_2512]._m5.x) * (1.0f - _28_m4[_2512]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_2512]._m6.w;
          _2501 = _2500 + ((((_23.SampleLevel(_17, float3((((_2617.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_2512]._m1.w), _2460).xyz * _28_m4[_2512]._m5.w) * ((((((clamp(abs(_2498 / _2642), 0.0f, 1.0f) * 2.0f) + _2498) / (2.0f + _2642)) - 1.0f) * _9_m23.w) + 1.0f)) * _2655) * _2503);
          _2504 = _2503 * (1.0f - _2655);
        } else {
          _2501 = _2500;
          _2504 = _2503;
        }
        _2500 = _2501;
        _2503 = _2504;
        _2505 = _2506;
        continue;
      } else {
        break;
      }
    }
    float3 _2724;
    if (_2508) {
      float3 _2663 = normalize(_2452);
      float3 _2666 = float3(int3(sign(_2663)));
      float3 _2669 = _2663 / dot(_2663, _2666).xxx;
      float3 _2683;
      if (_2669.z < 0.0f) {
        float3 _2674 = abs(_2669);
        float2 _2681 = _2666.xy * float2(1.0f - _2674.y, 1.0f - _2674.x);
        _2683 = float3(_2681.x, _2681.y, _2669.z);
      } else {
        _2683 = _2669;
      }
      float _2710 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_421, 1.0f))));
      _2724 = _2500 + ((_23.SampleLevel(_17, float3((((_2683.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _2460).xyz * ((((((clamp(abs(_2498 / _2710), 0.0f, 1.0f) * 2.0f) + _2498) / (2.0f + _2710)) - 1.0f) * _9_m23.w) + 1.0f)) * _2503);
    } else {
      _2724 = _2500;
    }
    float3 _2730 = (_2724 * _9_m23.z) * _9_m22.y;
    float3 _2753;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _2747 = _21.SampleBias(_15, _4, _9_m16);
      float _2748 = _2747.x;
      _2753 = (_20.SampleBias(_15, _4, _9_m16).xyz * _2748) + (_2730 * (1.0f - _2748));
    }
    else {
      _2753 = _2730;
    }
    _2757 = (((float3(_2428, _2435, _2442) * _512) * _9_m22.x) * _898) + ((_2753 * _532) * _897);
  }
  else {
    float3 _918 = (_459 + (_421 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_434 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _928 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _937 = _918 - (_9_m108.xyz + (_928 * (-_9_m110.w)));
    float _952 = max(min(max((max(abs(_937.x), abs(_937.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_937.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1254;
    float4 _1255;
    float4 _1256;
    float _1257;
    float _1258;
    if ((_9_m108.w != 0.0f) && (_952 < 1.0f)) {
      float3 _965 = _918 - (_9_m108.xyz + (_928 * (-_9_m110.y)));
      float _979 = max(clamp((max(abs(_965.x), abs(_965.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_965.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _1055;
      float4 _1056;
      float4 _1057;
      float4 _1058;
      if (_979 < 1.0f) {
        float3 _988 = ((_918 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _990 = _988 - floor(_988);
        float4 _994 = _47.SampleLevel(_16, _990, 0.0f);
        float _995 = 1.0f - _979;
        float _999 = _9_m109.y * 0.5f;
        float _1004 = _990.x;
        float _1005 = clamp(_990.y, _999, 1.0f - _999) * 0.3333333432674407958984375f;
        float _1006 = _990.z;
        float4 _1009 = _48.SampleLevel(_15, float3(_1004, _1005, _1006), 0.0f);
        float _1025 = _994.x;
        float _1035 = _994.y;
        float _1045 = _994.z;
        _1055 = _952 + (_1009.w * _995);
        _1056 = float4(((_48.SampleLevel(_15, float3(_1004, _1005 + 0.666666686534881591796875f, _1006), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1045, _1045) * _995;
        _1057 = float4(((_48.SampleLevel(_15, float3(_1004, _1005 + 0.3333333432674407958984375f, _1006), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1035, _1035) * _995;
        _1058 = float4(((_1009.xyz * 4.0f) - 2.0f.xxx) * _1025, _1025) * _995;
      } else {
        _1055 = _952;
        _1056 = 0.0f.xxxx;
        _1057 = 0.0f.xxxx;
        _1058 = 0.0f.xxxx;
      }
      float3 _1064 = _918 - (_9_m108.xyz + (_928 * (-_9_m110.z)));
      float _1078 = max(clamp((max(abs(_1064.x), abs(_1064.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1064.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _1158;
      float4 _1159;
      float4 _1160;
      float4 _1161;
      if (_1078 < 1.0f) {
        float3 _1087 = ((_918 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1089 = _1087 - floor(_1087);
        float4 _1093 = _49.SampleLevel(_16, _1089, 0.0f);
        float _1095 = _979 * (1.0f - _1078);
        float _1099 = _9_m109.y * 0.5f;
        float _1104 = _1089.x;
        float _1105 = clamp(_1089.y, _1099, 1.0f - _1099) * 0.3333333432674407958984375f;
        float _1106 = _1089.z;
        float4 _1109 = _50.SampleLevel(_15, float3(_1104, _1105, _1106), 0.0f);
        float _1125 = _1093.x;
        float _1136 = _1093.y;
        float _1147 = _1093.z;
        _1158 = _1055 + (_1109.w * _1095);
        _1159 = _1056 + (float4(((_50.SampleLevel(_15, float3(_1104, _1105 + 0.666666686534881591796875f, _1106), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1147, _1147) * _1095);
        _1160 = _1057 + (float4(((_50.SampleLevel(_15, float3(_1104, _1105 + 0.3333333432674407958984375f, _1106), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1136, _1136) * _1095);
        _1161 = _1058 + (float4(((_1109.xyz * 4.0f) - 2.0f.xxx) * _1125, _1125) * _1095);
      } else {
        _1158 = _1055;
        _1159 = _1056;
        _1160 = _1057;
        _1161 = _1058;
      }
      float4 _1244;
      float4 _1245;
      float4 _1246;
      float _1247;
      if (_1078 > 0.0f) {
        float3 _1170 = ((_918 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1173 = _9_m109.xyz * 0.5f;
        float3 _1175 = clamp(_1170 - floor(_1170), _1173, 1.0f.xxx - _1173);
        float4 _1179 = _51.SampleLevel(_16, _1175, 0.0f);
        float _1181 = _1078 * (1.0f - _952);
        float _1185 = _9_m109.y * 0.5f;
        float _1190 = _1175.x;
        float _1191 = clamp(_1175.y, _1185, 1.0f - _1185) * 0.3333333432674407958984375f;
        float _1192 = _1175.z;
        float4 _1195 = _52.SampleLevel(_15, float3(_1190, _1191, _1192), 0.0f);
        float _1211 = _1179.x;
        float _1222 = _1179.y;
        float _1233 = _1179.z;
        _1244 = _1159 + (float4(((_52.SampleLevel(_15, float3(_1190, _1191 + 0.666666686534881591796875f, _1192), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1233, _1233) * _1181);
        _1245 = _1160 + (float4(((_52.SampleLevel(_15, float3(_1190, _1191 + 0.3333333432674407958984375f, _1192), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1222, _1222) * _1181);
        _1246 = _1161 + (float4(((_1195.xyz * 4.0f) - 2.0f.xxx) * _1211, _1211) * _1181);
        _1247 = _1158 + (_1195.w * _1181);
      } else {
        _1244 = _1159;
        _1245 = _1160;
        _1246 = _1161;
        _1247 = _1158;
      }
      float _1250 = clamp((_1247 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1254 = _1244;
      _1255 = _1245;
      _1256 = _1246;
      _1257 = _1250 - _952;
      _1258 = (_1250 + _952) * 0.5f;
    } else {
      _1254 = 0.0f.xxxx;
      _1255 = 0.0f.xxxx;
      _1256 = 0.0f.xxxx;
      _1257 = 0.0f;
      _1258 = 1.0f;
    }
    float4 _1278 = _1256 + float4(_9_m111.x * _1258, (_9_m111.y * _1258) + ((_9_m111.w * _1257) * 0.5f), _9_m111.z * _1258, (_9_m111.w * _1258) + ((_9_m111.y * _1257) * 0.375f));
    float4 _1298 = _1255 + float4(_9_m112.x * _1258, (_9_m112.y * _1258) + ((_9_m112.w * _1257) * 0.5f), _9_m112.z * _1258, (_9_m112.w * _1258) + ((_9_m112.y * _1257) * 0.375f));
    float4 _1318 = _1254 + float4(_9_m113.x * _1258, (_9_m113.y * _1258) + ((_9_m113.w * _1257) * 0.5f), _9_m113.z * _1258, (_9_m113.w * _1258) + ((_9_m113.y * _1257) * 0.375f));
    float4 _1476;
    float4 _1477;
    float4 _1478;
    [branch] if (all(bool2(_447.x >= 0.0f.xx.x, _447.y >= 0.0f.xx.y))) {
      float4 _1326 = _46.SampleLevel(_15, _447, 0.0f);
      float4 _1327 = abs(_1326);
      float4 _1473;
      float4 _1474;
      float4 _1475;
      [branch] if (any(bool4(_1327.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1327.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1327.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1327.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _1333 = length(_1326.yzw);
        uint _1335;
        float _1338;
        _1335 = 0u;
        _1338 = 1.0f;
        for (float _1340 = _1333; _1340 > 4.599999904632568359375f;) {
          _1335++;
          _1338 *= 0.5f;
          _1340 *= 0.5f;
          continue;
        }
        float4 _1344 = _1326 * _1338;
        float4 _1349 = float4(0.0f, _1344.yzw);
        float2 _1371 = (_45.SampleLevel(_15, float2(((((length(_1349) * _44_m3.x) + _44_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _44_m2.xy) + _44_m2.zw;
        float4 _1385;
        _1385 = float4(_1371.x * 3.5449078083038330078125f, _1349.yzw * _1371.y) * exp(_1344.x * 0.282094776630401611328125f);
        for (uint _1388 = 0u; _1388 < _1335;) {
          _1385 = mul(float4x4(_1385, float4(_1385.yx, 0.0f, 0.0f), float4(_1385.z, 0.0f, _1385.x, 0.0f), float4(_1385.w, 0.0f, 0.0f, _1385.x)) * 0.282094776630401611328125f, _1385);
          _1388++;
          continue;
        }
        float4x4 _1409 = float4x4(_1385, float4(_1385.yx, 0.0f, 0.0f), float4(_1385.z, 0.0f, _1385.x, 0.0f), float4(_1385.w, 0.0f, 0.0f, _1385.x)) * 0.282094776630401611328125f;
        float4 _1419 = mul(_1409, float4(_1278.w * 1.1283791065216064453125f, _1278.y * (-0.977204978466033935546875f), _1278.z * 0.977204978466033935546875f, _1278.x * (-0.977204978466033935546875f)));
        float4 _1439 = mul(_1409, float4(_1298.w * 1.1283791065216064453125f, _1298.y * (-0.977204978466033935546875f), _1298.z * 0.977204978466033935546875f, _1298.x * (-0.977204978466033935546875f)));
        float4 _1459 = mul(_1409, float4(_1318.w * 1.1283791065216064453125f, _1318.y * (-0.977204978466033935546875f), _1318.z * 0.977204978466033935546875f, _1318.x * (-0.977204978466033935546875f)));
        _1473 = float4(_1419.x * 0.886226952075958251953125f, _1419.w * (-1.02332675457000732421875f), _1419.y * (-1.02332675457000732421875f), _1419.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1474 = float4(_1439.x * 0.886226952075958251953125f, _1439.w * (-1.02332675457000732421875f), _1439.y * (-1.02332675457000732421875f), _1439.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1475 = float4(_1459.x * 0.886226952075958251953125f, _1459.w * (-1.02332675457000732421875f), _1459.y * (-1.02332675457000732421875f), _1459.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _1473 = _1278;
        _1474 = _1298;
        _1475 = _1318;
      }
      _1476 = _1473;
      _1477 = _1474;
      _1478 = _1475;
    }
    else {
      _1476 = _1278;
      _1477 = _1298;
      _1478 = _1318;
    }
    float _1483 = max(0.0f, dot(_1476.xyz, _421) + _1476.w);
    float _1488 = max(0.0f, dot(_1477.xyz, _421) + _1477.w);
    float _1493 = max(0.0f, dot(_1478.xyz, _421) + _1478.w);
    float3 _1517 = reflect(_487, _421);
    float _1525 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_510, 0.001000000047497451305389404296875f))));
    float2 _1529 = floor(_434 * _28_m0.w);
    float _1546 = floor(_466 - _28_m2.y);
    float _1550 = clamp(_1546, 0.0f, _28_m1.x - 1.0f);
    uint _1560 = (_1546 <= _1550) ? (_25.Load(uint(_9_m21.z + int(_1529.x + (_1529.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_1550)) * 4 + 0)) : 0u;
    float _1563 = dot(float4(_1483, _1488, _1493, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1565;
    float _1568;
    uint _1570;
    _1565 = 0.0f.xxx;
    _1568 = 1.0f;
    _1570 = _1560;
    uint _1571;
    float3 _1566;
    float _1569;
    bool _1573;
    [loop] for (;;) {
      bool _1572 = _1570 != 0u;
      _1573 = _1568 > 0.00999999977648258209228515625f;
      if (_1572 && _1573) {
        uint _1577 = firstbitlow(_1570);
        _1571 = _1570 ^ (1u << (_1577 & 31u));
        float3 _1597 = float3(dot(_28_m4[_1577]._m2, _463), dot(_28_m4[_1577]._m3, _463), dot(_28_m4[_1577]._m4, _463));
        float3 _1598 = abs(_1597);
        if (all(bool3(_1598.x <= _28_m4[_1577]._m1.xyz.x, _1598.y <= _28_m4[_1577]._m1.xyz.y, _1598.z <= _28_m4[_1577]._m1.xyz.z))) {
          float3 _1607 = _28_m4[_1577]._m1.xyz * 0.100000001490116119384765625f;
          float3 _1609 = _1598 * 0.100000001490116119384765625f;
          float3 _1610 = _1609 * _1609;
          float3 _1613 = (_28_m4[_1577]._m1.xyz - _1598) * _28_m4[_1577]._m5.xyz;
          float3 _1661;
          [branch] if (_28_m4[_1577]._m6.x == 1.0f) {
            float3 _1646 = float3(dot(_28_m4[_1577]._m2.xyz, _1517), dot(_28_m4[_1577]._m3.xyz, _1517), dot(_28_m4[_1577]._m4.xyz, _1517));
            float3 _1648 = (_28_m4[_1577]._m1.xyz - _1597) / _1646;
            float3 _1651 = ((-_28_m4[_1577]._m1.xyz) - _1597) / _1646;
            bool3 _1652 = bool3(_1646.x > 0.0f.xxx.x, _1646.y > 0.0f.xxx.y, _1646.z > 0.0f.xxx.z);
            float3 _1653 = float3(_1652.x ? _1648.x : _1651.x, _1652.y ? _1648.y : _1651.y, _1652.z ? _1648.z : _1651.z);
            _1661 = _1597 + (_1646 * min(min(_1653.x, _1653.y), _1653.z));
          }
          else {
            _1661 = _1517;
          }
          float3 _1662 = normalize(_1661);
          float3 _1665 = float3(int3(sign(_1662)));
          float3 _1668 = _1662 / dot(_1662, _1665).xxx;
          float3 _1682;
          if (_1668.z < 0.0f) {
            float3 _1673 = abs(_1668);
            float2 _1680 = _1665.xy * float2(1.0f - _1673.y, 1.0f - _1673.x);
            _1682 = float3(_1680.x, _1680.y, _1668.z);
          } else {
            _1682 = _1668;
          }
          float _1707 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_1577]._m0, float4(_421, 1.0f))));
          float _1720 = clamp((min(_1613.x, min(_1613.y, _1613.z)) * _28_m4[_1577]._m6.y) + ((((((_1607 * _1607).x - ((_1610.x + _1610.y) + _1610.z)) * _28_m4[_1577]._m5.x) * _28_m4[_1577]._m5.x) * (1.0f - _28_m4[_1577]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_1577]._m6.w;
          _1566 = _1565 + ((((_23.SampleLevel(_17, float3((((_1682.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_1577]._m1.w), _1525).xyz * _28_m4[_1577]._m5.w) * ((((((clamp(abs(_1563 / _1707), 0.0f, 1.0f) * 2.0f) + _1563) / (2.0f + _1707)) - 1.0f) * _9_m23.w) + 1.0f)) * _1720) * _1568);
          _1569 = _1568 * (1.0f - _1720);
        } else {
          _1566 = _1565;
          _1569 = _1568;
        }
        _1565 = _1566;
        _1568 = _1569;
        _1570 = _1571;
        continue;
      } else {
        break;
      }
    }
    float3 _1789;
    if (_1573) {
      float3 _1728 = normalize(_1517);
      float3 _1731 = float3(int3(sign(_1728)));
      float3 _1734 = _1728 / dot(_1728, _1731).xxx;
      float3 _1748;
      if (_1734.z < 0.0f) {
        float3 _1739 = abs(_1734);
        float2 _1746 = _1731.xy * float2(1.0f - _1739.y, 1.0f - _1739.x);
        _1748 = float3(_1746.x, _1746.y, _1734.z);
      } else {
        _1748 = _1734;
      }
      float _1775 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_421, 1.0f))));
      _1789 = _1565 + ((_23.SampleLevel(_17, float3((((_1748.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _1525).xyz * ((((((clamp(abs(_1563 / _1775), 0.0f, 1.0f) * 2.0f) + _1563) / (2.0f + _1775)) - 1.0f) * _9_m23.w) + 1.0f)) * _1568);
    } else {
      _1789 = _1565;
    }
    float3 _1795 = (_1789 * _9_m23.z) * _9_m22.y;
    float3 _1818;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _1812 = _21.SampleBias(_15, _4, _9_m16);
      float _1813 = _1812.x;
      _1818 = (_20.SampleBias(_15, _4, _9_m16).xyz * _1813) + (_1795 * (1.0f - _1813));
    }
    else {
      _1818 = _1795;
    }
    _2757 = (((float3(_1483, _1488, _1493) * (_512 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_424, _425, _426).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _425.xxx) * _426) * _427))) * _9_m22.x) * _898) + ((_1818 * _532) * _897);
  }
  float4 _2759 = float4(_858.x, _858.y, _858.z, _858.w) + float4(_2757.x, _2757.y, _2757.z, 0.0f.xxxx.w);
  float _2777 = _459.y * _9_m46.w;
  float _2782 = max(0.00999999977648258209228515625f, _2777 + _9_m47.w);
  float3 _2796 = exp(_9_m45.xyz * ((-max(0.0f, (_486 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2782)) / _2782) * exp(_2777 + _9_m48.w))));
  float _2799 = dot(_487, _9_m44.xyz);
  float _2805 = _9_m45.w * _9_m45.w;
  float _2809 = (1.0f + _2805) - ((2.0f * _9_m45.w) * _2799);
  float3 _3137;
  float _3138;
  if (_9_m55.z > 0.0f) {
    uint3 _2963 = (uint3(int3(_301, _302, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _2964 = _2963.y;
    uint _2965 = _2963.z;
    uint _2968 = _2963.x + (_2964 * _2965);
    uint _2970 = _2964 + (_2965 * _2968);
    uint _2972 = _2965 + (_2968 * _2970);
    uint _2974 = _2968 + (_2970 * _2972);
    float _2998 = dot(_487, -_7_m0[2].xyz);
    float3 _3008 = _459 - _7_m11.xyz;
    float _3010 = (_9_m55.w * ((_2998 > 5.9604644775390625e-08f) ? (1.0f / _2998) : 0.0f)) * (1.0f / _486);
    float _3011 = _3008.y;
    float _3012 = _3010 * _3011;
    float _3014 = _7_m11.y + _3012;
    float _3015 = _3011 - _3012;
    float _3017 = (1.0f - _3010) * _486;
    float _3031 = max(-127.0f, _9_m49.z * _3015);
    float _3055 = max(-127.0f, _9_m52.x * _3015);
    float _3066 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3014 - _9_m49.x)))) * ((abs(_3031) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3031)) / _3031) : (0.693147182464599609375f - (0.2402265071868896484375f * _3031)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3014 - _9_m52.z)))) * ((abs(_3055) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3055)) / _3055) : (0.693147182464599609375f - (0.2402265071868896484375f * _3055))));
    float _3088 = clamp((_486 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _3091 = clamp((max(clamp(exp2(-(_3066 * _3017)), 0.0f, 1.0f), _9_m51.w) + clamp((_486 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3088, 0.0f, 1.0f);
    float4 _3131 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _42.SampleLevel(_15, float3((_434 + ((((float3(uint3(_2974, _2970 + (_2972 * _2974), _292) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_466 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_466 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _3133 = _3131.w;
    _3137 = _3131.xyz + (((_9_m51.xyz * (1.0f - _3091)) + (((_9_m54.xyz * pow(clamp(dot(_485, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3066 * max(_3017 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3088))) * _3133);
    _3138 = _3133 * _3091;
  } else {
    float3 _2839 = _459 - _7_m11.xyz;
    float _2841 = _2839.y;
    float _2855 = max(-127.0f, _9_m49.z * _2841);
    float _2879 = max(-127.0f, _9_m52.x * _2841);
    float _2890 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2855) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2855)) / _2855) : (0.693147182464599609375f - (0.2402265071868896484375f * _2855)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2879) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2879)) / _2879) : (0.693147182464599609375f - (0.2402265071868896484375f * _2879))));
    float _2912 = clamp((_486 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2915 = clamp((max(clamp(exp2(-(_2890 * _486)), 0.0f, 1.0f), _9_m51.w) + clamp((_486 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2912, 0.0f, 1.0f);
    _3137 = (_9_m51.xyz * (1.0f - _2915)) + (((_9_m54.xyz * pow(clamp(dot(_485, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2890 * max(_486 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2912));
    _3138 = _2915;
  }
  float3 _3141 = _2796 * _3138;
  float3 _3143 = (clamp(_2759.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _3141) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2799 * _2799)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2805) / max((12.56637096405029296875f * _2809) * sqrt(_2809), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2796)) * _3138) + _3137);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _3143 = (_3143 * 0.65f) + (clamp(_2759.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _3145 = float4(_3143.x, _3143.y, _3143.z, _2759.w);
  _3145.w = dot(_3141, 0.3333333432674407958984375f.xxx);
  _5 = _3145;
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

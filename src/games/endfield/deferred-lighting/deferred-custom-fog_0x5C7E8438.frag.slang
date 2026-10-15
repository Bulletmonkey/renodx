#include "./renodx_injection.hlsli"

// Ported from the native 0x5C7E8438 Vulkan dump.
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

static uint _296;

[[vk::binding(29, 3)]] cbuffer _6_7 : register(b29, space3) {
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

[[vk::binding(31, 3)]] cbuffer _10_11 : register(b31, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(37, 3)]] ByteAddressBuffer _25 : register(t37, space3);
[[vk::binding(36, 3)]] cbuffer _26_28 : register(b36, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(32, 3)]] cbuffer _29_30 : register(b32, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(33, 3)]] cbuffer _31_32 : register(b33, space3) {
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

[[vk::binding(30, 3)]] cbuffer _39_40 : register(b30, space3) {
  float4 _40_m0[15] : packoffset(c0);
  float4 _40_m1[15] : packoffset(c15);
};

[[vk::binding(34, 3)]] cbuffer _43_44 : register(b34, space3) {
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
[[vk::binding(26, 3)]] Texture2D<float4> _19 : register(t26, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _20 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _21 : register(t10, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _22 : register(t20, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _23 : register(t11, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _33 : register(t8, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _34 : register(t27, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _36 : register(t12, space3);
[[vk::binding(6, 3)]] Texture2DArray<float4> _37 : register(t6, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _38 : register(t7, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _41 : register(t25, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _42 : register(t19, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _45 : register(t28, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _46 : register(t5, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _47 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _48 : register(t15, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _49 : register(t17, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _50 : register(t14, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _51 : register(t16, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _52 : register(t13, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _53 : register(t4, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _54 : register(t24, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _55 : register(t23, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _56 : register(t22, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _57 : register(t21, space3);

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
  uint2 _302 = uint2(gl_FragCoord.xy);
  int _305 = int(_302.x);
  int _306 = int(_302.y);
  int2 _308 = int3(_305, _306, 0).xy;
  float4 _310 = _54.Load(int3(_308, 0));
  float4 _312 = _55.Load(int3(_308, 0));
  float4 _314 = _56.Load(int3(_308, 0));
  uint _318 = uint(round(_314.w * 255.0f));
  float3 _424;
  float3 _425;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _431;
  float3 _432;
  uint _433;
  float _434;
  bool _435;
  [branch] if ((_318 & 128u) != 0u) {
    float2 _366 = (_310.xy * 2.0f) - 1.0f.xx;
    float _370 = 1.0f - dot(1.0f.xx, abs(_366));
    float3 _372 = float3(_366.x, _370, _366.y);
    float3 _384;
    if (_370 < 0.0f) {
      float2 _379 = _372.xz;
      bool2 _380 = bool2(_379.x >= 0.0f.xx.x, _379.y >= 0.0f.xx.y);
      float2 _382 = (1.0f.xx - abs(_372.zx)) * float2(_380.x ? 1.0f.xx.x : (-1.0f).xx.x, _380.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _384 = float3(_382.x, _372.y, _382.y);
    } else {
      _384 = _372;
    }
    float2 _389 = (_312.xy * 2.0f) - 1.0f.xx;
    float _393 = 1.0f - dot(1.0f.xx, abs(_389));
    float3 _395 = float3(_389.x, _393, _389.y);
    float3 _407;
    if (_393 < 0.0f) {
      float2 _402 = _395.xz;
      bool2 _403 = bool2(_402.x >= 0.0f.xx.x, _402.y >= 0.0f.xx.y);
      float2 _405 = (1.0f.xx - abs(_395.zx)) * float2(_403.x ? 1.0f.xx.x : (-1.0f).xx.x, _403.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _407 = float3(_405.x, _395.y, _405.y);
    } else {
      _407 = _395;
    }
    _424 = _314.xyz;
    _425 = normalize(_407);
    _426 = _312.z;
    _427 = _310.z;
    _428 = 0.0f;
    _429 = 0.0f;
    _430 = 0.0f;
    _431 = 0.0f;
    _432 = normalize(_384);
    _433 = uint(int((round(_310.w * 3.0f) * 4.0f) + round(_312.w * 3.0f)));
    _434 = float(_318 & 127u) * 0.0078740157186985015869140625f;
    _435 = true;
  }
  else {
    float2 _328 = (_312.xy * 2.0f) - 1.0f.xx;
    float _332 = 1.0f - dot(1.0f.xx, abs(_328));
    float3 _334 = float3(_328.x, _332, _328.y);
    float3 _346;
    if (_332 < 0.0f) {
      float2 _341 = _334.xz;
      bool2 _342 = bool2(_341.x >= 0.0f.xx.x, _341.y >= 0.0f.xx.y);
      float2 _344 = (1.0f.xx - abs(_334.zx)) * float2(_342.x ? 1.0f.xx.x : (-1.0f).xx.x, _342.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _346 = float3(_344.x, _334.y, _344.y);
    } else {
      _346 = _334;
    }
    uint _354 = clamp(_318 - 1u, 0u, 62u);
    bool4 _355 = ((_318 > 0u) && (_318 <= 63u)).xxxx;
    float4 _358 = float4(_355.x ? _11_m0[_354].x : 0.0f.xxxx.x, _355.y ? _11_m0[_354].y : 0.0f.xxxx.y, _355.z ? _11_m0[_354].z : 0.0f.xxxx.z, _355.w ? _11_m0[_354].w : 0.0f.xxxx.w);
    _424 = _314.xyz;
    _425 = normalize(_346);
    _426 = _312.z;
    _427 = _310.y;
    _428 = _358.y;
    _429 = _358.z;
    _430 = _358.x * _310.x;
    _431 = _358.w;
    _432 = 0.0f.xxx;
    _433 = _318;
    _434 = 0.0f;
    _435 = false;
  }
  float2 _438 = float2(_302);
  float2 _451 = gl_FragCoord.xy * _9_m0.zw;
  float2 _453 = (_451 * 2.0f) - 1.0f.xx;
  float4 _456 = float4(_453, _19.SampleLevel(_14, (_438 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _456.y = -_453.y;
  float4 _459 = mul(_7_m6, _456);
  float3 _463 = _459.xyz / _459.w.xxx;
  float4 _467 = float4(_463, 1.0f);
  float _470 = abs(mul(_7_m0, _467).z);
  float3 _485;
  do {
    if (_9_m4.w == 0.0f) {
      _485 = _7_m11.xyz - _463;
      break;
    } else {
      _485 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _486 = dot(_485, _485);
  float _488 = rsqrt(max(_486, 9.9999999392252902907785028219223e-09f));
  float3 _489 = _485 * _488;
  float _490 = _486 * _488;
  float3 _491 = -_489;
  float2 _504;
  if (_9_m132.x > 0.00048828125f) {
    _504 = _53.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _504 = 1.0f.xx;
  }
  float _507 = min(_504.x, _504.y);
  float2 _508 = _504 * 1.0f;
  float _509 = _508.x;
  float _514 = lerp(lerp(min(1.0f, _426), _426, _507), _426, _509);
  float3 _516 = _424 * lerp(lerp(min(1.0f, 1.0f), 1.0f, _507), 1.0f, _509);
  float _517 = dot(_425, _489);
  float _518 = max(0.0f, _517);
  float4 _520 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _514) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _521 = _520.x;
  float2 _531 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_521 * _521, exp2((-9.27999973297119140625f) * _518)) * _521) + _520.y)) + _520.zw;
  float3 _536 = (0.039999999105930328369140625f.xxx * _531.x) + _531.y.xxx;
  float4 _862;
  do {
    [branch] if (_32_m4 == 0) {
      _862 = 0.0f.xxxx;
      break;
    }
    float4 _549 = _33.Load(int3(_308, 0));
    float _550 = _549.x;
    float4 _861;
    if (_550 > 0.001000000047497451305389404296875f) {
      float3 _561 = reflect(_491, _425);
      float3 _562 = -_30_m0.xyz;
      float _567 = dot(_562, _561);
      float3 _569 = _561 - (_562 * _567);
      bool3 _571 = (_567 < _30_m4.z).xxx;
      float3 _579 = normalize((_562 * _30_m4.z) + ((_569 * rsqrt(max(6.103515625e-05f, dot(_569, _569)))) * _30_m4.y));
      float3 _580 = float3(_571.x ? _579.x : _561.x, _571.y ? _579.y : _561.y, _571.z ? _579.z : _561.z);
      float3 _584 = _580 + _489;
      float3 _588 = _584 * rsqrt(max(6.103515625e-05f, dot(_584, _584)));
      float _590 = clamp(dot(_580, _425), 0.0f, 1.0f);
      float _592 = clamp(dot(_425, _588), 0.0f, 1.0f);
      float _594 = clamp(dot(_489, _588), 0.0f, 1.0f);
      float _596 = clamp(_517, 0.0f, 1.0f);
      float3 _770;
      float3 _771;
      [branch] if (_435) {
        float _700 = _514 * _514;
        float _701 = _700 * _700;
        float _722 = (((_592 * _701) - _592) * _592) + 1.0f;
        float _725 = 1.0f - _594;
        float _726 = _725 * _725;
        float _728 = (_725 * _726) * _726;
        float _752 = 1.0f - _514;
        float _759 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_752 * (1.04997003078460693359375f + (_752 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _752))))));
        float _760 = 1.0f - _759;
        _770 = 0.0f.xxx;
        _771 = min(((0.039999999105930328369140625f.xxx * (1.0f - _728)) + _728.xxx) * ((_701 / (_722 * _722)) * (0.5f / (((_590 * sqrt(((((-_596) * _701) + _596) * _596) + _701)) + (_596 * sqrt(((((-_590) * _701) + _590) * _590) + _701))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_36.SampleLevel(_15, (float2(_596, _514) * 0.96875f) + 0.015625f.xx, 0.0f).x * _36.SampleLevel(_15, (float2(_590, _514) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _759) / _760)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _760)));
      }
      else {
        float _600 = _514 * _514;
        float _601 = _600 * _600;
        float _622 = (((_592 * _601) - _592) * _592) + 1.0f;
        float _625 = 1.0f - _594;
        float _626 = _625 * _625;
        float _628 = (_625 * _626) * _626;
        float _652 = 1.0f - _514;
        float _659 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_652 * (1.04997003078460693359375f + (_652 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _652))))));
        float _660 = 1.0f - _659;
        float _683 = clamp(1.0f - _430, 0.0f, 1.0f);
        float _691 = clamp((dot(_425, _580) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _770 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_428, _429, _430).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _429.xxx) * _430) * lerp((_427 * lerp(1.0f, (_691 * sqrt(_691)) * 1.66666662693023681640625f, _683)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_489, _580), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _683));
        _771 = min(((0.039999999105930328369140625f.xxx * (1.0f - _628)) + _628.xxx) * ((_601 / (_622 * _622)) * (0.5f / (((_590 * sqrt(((((-_596) * _601) + _596) * _596) + _601)) + (_596 * sqrt(((((-_590) * _601) + _590) * _590) + _601))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_36.SampleLevel(_15, (float2(_596, _514) * 0.96875f) + 0.015625f.xx, 0.0f).x * _36.SampleLevel(_15, (float2(_590, _514) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _659) / _660)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _660)));
      }
      float3 _772 = _516 * 1.0f;
      float3 _775 = clamp(_771 * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _590;
      float3 _846;
      [branch] if (_435) {
        float3 _841;
        do {
          [branch] if (((_433 > 0u) && (_433 <= 15u)) && (_434 > 0.0f)) {
            int _794 = int(clamp(_433 - 1u, 0u, 14u));
            float _813 = _434 * _40_m0[_794].w;
            float _818 = float(_794);
            _841 = float3(_37.SampleLevel(_15, float3((dot(normalize(lerp(_425, _432, _40_m0[_794].x.xxx)), _580) * 0.5f) + 0.5f, _813, _818), 0.0f).x, _37.SampleLevel(_15, float3((dot(normalize(lerp(_425, _432, _40_m0[_794].y.xxx)), _580) * 0.5f) + 0.5f, _813, _818), 0.0f).y, _37.SampleLevel(_15, float3((dot(normalize(lerp(_425, _432, _40_m0[_794].z.xxx)), _580) * 0.5f) + 0.5f, _813, _818), 0.0f).z);
            break;
          }
          _841 = _590.xxx;
          break;
        } while (false);
        _846 = _30_m1.xyz * (((_772 * _841) + _775) + _770);
      }
      else {
        _846 = ((_775 + _770) + (_772 * _590)) * _30_m1.xyz;
      }
      float3 _859 = lerp(_846, _846 * _34.SampleBias(_15, float2(_550, 0.5f), _9_m16).xyz, (1.0f - _550).xxx) * _41.SampleLevel(_15, _451, 0.0f).x;
      _861 = float4(_859.x, _859.y, _859.z, 0.0f.xxxx.w);
    } else {
      _861 = 0.0f.xxxx;
    }
    _862 = _861;
    break;
  } while (false);
  float3 _864 = _427.xxx;
  float3 _901;
  float3 _902;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x5C7E8438:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _877 = min(_22.SampleBias(_14, _4, _9_m16).x, _427);
    _901 = clamp((pow(abs(_518 + _877), exp2(((-16.0f) * _514) - 1.0f)) - 1.0f) + _877, 0.0f, 1.0f).xxx;
    _902 = max(_877.xxx, ((((((_516 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _877) + ((_516 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _877) + ((_516 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _877);
  }
  else {
    _901 = _864;
    _902 = _864;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _862.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _901 : 1.0f.xxx;
  // RenoDX code end
  float3 _2761;
  [branch] if (_435) {
    float3 _1848;
    do {
      [branch] if (((_433 > 0u) && (_433 <= 15u)) && (_434 > 0.0f)) {
        uint _1836 = clamp(_433 - 1u, 0u, 14u);
        _1848 = _38.SampleLevel(_15, float3(_434 * _40_m0[_1836].w, 0.5f, float(_1836)), 0.0f).xyz;
        break;
      }
      _1848 = 1.0f.xxx;
      break;
    } while (false);
    float3 _1865 = (_463 + (_425 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_438 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1875 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1884 = _1865 - (_9_m108.xyz + (_1875 * (-_9_m110.w)));
    float _1899 = max(min(max((max(abs(_1884.x), abs(_1884.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1884.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2201;
    float4 _2202;
    float4 _2203;
    float _2204;
    float _2205;
    if ((_9_m108.w != 0.0f) && (_1899 < 1.0f)) {
      float3 _1912 = _1865 - (_9_m108.xyz + (_1875 * (-_9_m110.y)));
      float _1926 = max(clamp((max(abs(_1912.x), abs(_1912.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1912.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _2002;
      float4 _2003;
      float4 _2004;
      float4 _2005;
      if (_1926 < 1.0f) {
        float3 _1935 = ((_1865 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1937 = _1935 - floor(_1935);
        float4 _1941 = _47.SampleLevel(_16, _1937, 0.0f);
        float _1942 = 1.0f - _1926;
        float _1946 = _9_m109.y * 0.5f;
        float _1951 = _1937.x;
        float _1952 = clamp(_1937.y, _1946, 1.0f - _1946) * 0.3333333432674407958984375f;
        float _1953 = _1937.z;
        float4 _1956 = _48.SampleLevel(_15, float3(_1951, _1952, _1953), 0.0f);
        float _1972 = _1941.x;
        float _1982 = _1941.y;
        float _1992 = _1941.z;
        _2002 = _1899 + (_1956.w * _1942);
        _2003 = float4(((_48.SampleLevel(_15, float3(_1951, _1952 + 0.666666686534881591796875f, _1953), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1992, _1992) * _1942;
        _2004 = float4(((_48.SampleLevel(_15, float3(_1951, _1952 + 0.3333333432674407958984375f, _1953), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1982, _1982) * _1942;
        _2005 = float4(((_1956.xyz * 4.0f) - 2.0f.xxx) * _1972, _1972) * _1942;
      } else {
        _2002 = _1899;
        _2003 = 0.0f.xxxx;
        _2004 = 0.0f.xxxx;
        _2005 = 0.0f.xxxx;
      }
      float3 _2011 = _1865 - (_9_m108.xyz + (_1875 * (-_9_m110.z)));
      float _2025 = max(clamp((max(abs(_2011.x), abs(_2011.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2011.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _2105;
      float4 _2106;
      float4 _2107;
      float4 _2108;
      if (_2025 < 1.0f) {
        float3 _2034 = ((_1865 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2036 = _2034 - floor(_2034);
        float4 _2040 = _49.SampleLevel(_16, _2036, 0.0f);
        float _2042 = _1926 * (1.0f - _2025);
        float _2046 = _9_m109.y * 0.5f;
        float _2051 = _2036.x;
        float _2052 = clamp(_2036.y, _2046, 1.0f - _2046) * 0.3333333432674407958984375f;
        float _2053 = _2036.z;
        float4 _2056 = _50.SampleLevel(_15, float3(_2051, _2052, _2053), 0.0f);
        float _2072 = _2040.x;
        float _2083 = _2040.y;
        float _2094 = _2040.z;
        _2105 = _2002 + (_2056.w * _2042);
        _2106 = _2003 + (float4(((_50.SampleLevel(_15, float3(_2051, _2052 + 0.666666686534881591796875f, _2053), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2094, _2094) * _2042);
        _2107 = _2004 + (float4(((_50.SampleLevel(_15, float3(_2051, _2052 + 0.3333333432674407958984375f, _2053), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2083, _2083) * _2042);
        _2108 = _2005 + (float4(((_2056.xyz * 4.0f) - 2.0f.xxx) * _2072, _2072) * _2042);
      } else {
        _2105 = _2002;
        _2106 = _2003;
        _2107 = _2004;
        _2108 = _2005;
      }
      float4 _2191;
      float4 _2192;
      float4 _2193;
      float _2194;
      if (_2025 > 0.0f) {
        float3 _2117 = ((_1865 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2120 = _9_m109.xyz * 0.5f;
        float3 _2122 = clamp(_2117 - floor(_2117), _2120, 1.0f.xxx - _2120);
        float4 _2126 = _51.SampleLevel(_16, _2122, 0.0f);
        float _2128 = _2025 * (1.0f - _1899);
        float _2132 = _9_m109.y * 0.5f;
        float _2137 = _2122.x;
        float _2138 = clamp(_2122.y, _2132, 1.0f - _2132) * 0.3333333432674407958984375f;
        float _2139 = _2122.z;
        float4 _2142 = _52.SampleLevel(_15, float3(_2137, _2138, _2139), 0.0f);
        float _2158 = _2126.x;
        float _2169 = _2126.y;
        float _2180 = _2126.z;
        _2191 = _2106 + (float4(((_52.SampleLevel(_15, float3(_2137, _2138 + 0.666666686534881591796875f, _2139), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2180, _2180) * _2128);
        _2192 = _2107 + (float4(((_52.SampleLevel(_15, float3(_2137, _2138 + 0.3333333432674407958984375f, _2139), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2169, _2169) * _2128);
        _2193 = _2108 + (float4(((_2142.xyz * 4.0f) - 2.0f.xxx) * _2158, _2158) * _2128);
        _2194 = _2105 + (_2142.w * _2128);
      } else {
        _2191 = _2106;
        _2192 = _2107;
        _2193 = _2108;
        _2194 = _2105;
      }
      float _2197 = clamp((_2194 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _2201 = _2191;
      _2202 = _2192;
      _2203 = _2193;
      _2204 = _2197 - _1899;
      _2205 = (_2197 + _1899) * 0.5f;
    } else {
      _2201 = 0.0f.xxxx;
      _2202 = 0.0f.xxxx;
      _2203 = 0.0f.xxxx;
      _2204 = 0.0f;
      _2205 = 1.0f;
    }
    float4 _2225 = _2203 + float4(_9_m111.x * _2205, (_9_m111.y * _2205) + ((_9_m111.w * _2204) * 0.5f), _9_m111.z * _2205, (_9_m111.w * _2205) + ((_9_m111.y * _2204) * 0.375f));
    float4 _2245 = _2202 + float4(_9_m112.x * _2205, (_9_m112.y * _2205) + ((_9_m112.w * _2204) * 0.5f), _9_m112.z * _2205, (_9_m112.w * _2205) + ((_9_m112.y * _2204) * 0.375f));
    float4 _2265 = _2201 + float4(_9_m113.x * _2205, (_9_m113.y * _2205) + ((_9_m113.w * _2204) * 0.5f), _9_m113.z * _2205, (_9_m113.w * _2205) + ((_9_m113.y * _2204) * 0.375f));
    float4 _2423;
    float4 _2424;
    float4 _2425;
    [branch] if (all(bool2(_451.x >= 0.0f.xx.x, _451.y >= 0.0f.xx.y))) {
      float4 _2273 = _46.SampleLevel(_15, _451, 0.0f);
      float4 _2274 = abs(_2273);
      float4 _2420;
      float4 _2421;
      float4 _2422;
      [branch] if (any(bool4(_2274.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2274.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2274.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2274.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _2280 = length(_2273.yzw);
        uint _2282;
        float _2285;
        _2282 = 0u;
        _2285 = 1.0f;
        for (float _2287 = _2280; _2287 > 4.599999904632568359375f;) {
          _2282++;
          _2285 *= 0.5f;
          _2287 *= 0.5f;
          continue;
        }
        float4 _2291 = _2273 * _2285;
        float4 _2296 = float4(0.0f, _2291.yzw);
        float2 _2318 = (_45.SampleLevel(_15, float2(((((length(_2296) * _44_m3.x) + _44_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _44_m2.xy) + _44_m2.zw;
        float4 _2332;
        _2332 = float4(_2318.x * 3.5449078083038330078125f, _2296.yzw * _2318.y) * exp(_2291.x * 0.282094776630401611328125f);
        for (uint _2335 = 0u; _2335 < _2282;) {
          _2332 = mul(float4x4(_2332, float4(_2332.yx, 0.0f, 0.0f), float4(_2332.z, 0.0f, _2332.x, 0.0f), float4(_2332.w, 0.0f, 0.0f, _2332.x)) * 0.282094776630401611328125f, _2332);
          _2335++;
          continue;
        }
        float4x4 _2356 = float4x4(_2332, float4(_2332.yx, 0.0f, 0.0f), float4(_2332.z, 0.0f, _2332.x, 0.0f), float4(_2332.w, 0.0f, 0.0f, _2332.x)) * 0.282094776630401611328125f;
        float4 _2366 = mul(_2356, float4(_2225.w * 1.1283791065216064453125f, _2225.y * (-0.977204978466033935546875f), _2225.z * 0.977204978466033935546875f, _2225.x * (-0.977204978466033935546875f)));
        float4 _2386 = mul(_2356, float4(_2245.w * 1.1283791065216064453125f, _2245.y * (-0.977204978466033935546875f), _2245.z * 0.977204978466033935546875f, _2245.x * (-0.977204978466033935546875f)));
        float4 _2406 = mul(_2356, float4(_2265.w * 1.1283791065216064453125f, _2265.y * (-0.977204978466033935546875f), _2265.z * 0.977204978466033935546875f, _2265.x * (-0.977204978466033935546875f)));
        _2420 = float4(_2366.x * 0.886226952075958251953125f, _2366.w * (-1.02332675457000732421875f), _2366.y * (-1.02332675457000732421875f), _2366.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2421 = float4(_2386.x * 0.886226952075958251953125f, _2386.w * (-1.02332675457000732421875f), _2386.y * (-1.02332675457000732421875f), _2386.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2422 = float4(_2406.x * 0.886226952075958251953125f, _2406.w * (-1.02332675457000732421875f), _2406.y * (-1.02332675457000732421875f), _2406.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _2420 = _2225;
        _2421 = _2245;
        _2422 = _2265;
      }
      _2423 = _2420;
      _2424 = _2421;
      _2425 = _2422;
    }
    else {
      _2423 = _2225;
      _2424 = _2245;
      _2425 = _2265;
    }
    float _2432 = max(0.0f, dot(_2423.xyz * _1848.x, _425) + _2423.w);
    float _2439 = max(0.0f, dot(_2424.xyz * _1848.y, _425) + _2424.w);
    float _2446 = max(0.0f, dot(_2425.xyz * _1848.z, _425) + _2425.w);
    float3 _2456 = reflect(_491, _425);
    float _2464 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_514, 0.001000000047497451305389404296875f))));
    float2 _2468 = floor(_438 * _28_m0.w);
    float _2485 = floor(_470 - _28_m2.y);
    float _2489 = clamp(_2485, 0.0f, _28_m1.x - 1.0f);
    uint _2499 = (_2485 <= _2489) ? (_25.Load(uint(_9_m21.z + int(_2468.x + (_2468.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_2489)) * 4 + 0)) : 0u;
    float _2502 = dot(float4(_2432, _2439, _2446, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2504;
    float _2507;
    uint _2509;
    _2504 = 0.0f.xxx;
    _2507 = 1.0f;
    _2509 = _2499;
    uint _2510;
    float3 _2505;
    float _2508;
    bool _2512;
    [loop] for (;;) {
      bool _2511 = _2509 != 0u;
      _2512 = _2507 > 0.00999999977648258209228515625f;
      if (_2511 && _2512) {
        uint _2516 = firstbitlow(_2509);
        _2510 = _2509 ^ (1u << (_2516 & 31u));
        float3 _2536 = float3(dot(_28_m4[_2516]._m2, _467), dot(_28_m4[_2516]._m3, _467), dot(_28_m4[_2516]._m4, _467));
        float3 _2537 = abs(_2536);
        if (all(bool3(_2537.x <= _28_m4[_2516]._m1.xyz.x, _2537.y <= _28_m4[_2516]._m1.xyz.y, _2537.z <= _28_m4[_2516]._m1.xyz.z))) {
          float3 _2546 = _28_m4[_2516]._m1.xyz * 0.100000001490116119384765625f;
          float3 _2548 = _2537 * 0.100000001490116119384765625f;
          float3 _2549 = _2548 * _2548;
          float3 _2552 = (_28_m4[_2516]._m1.xyz - _2537) * _28_m4[_2516]._m5.xyz;
          float3 _2600;
          [branch] if (_28_m4[_2516]._m6.x == 1.0f) {
            float3 _2585 = float3(dot(_28_m4[_2516]._m2.xyz, _2456), dot(_28_m4[_2516]._m3.xyz, _2456), dot(_28_m4[_2516]._m4.xyz, _2456));
            float3 _2587 = (_28_m4[_2516]._m1.xyz - _2536) / _2585;
            float3 _2590 = ((-_28_m4[_2516]._m1.xyz) - _2536) / _2585;
            bool3 _2591 = bool3(_2585.x > 0.0f.xxx.x, _2585.y > 0.0f.xxx.y, _2585.z > 0.0f.xxx.z);
            float3 _2592 = float3(_2591.x ? _2587.x : _2590.x, _2591.y ? _2587.y : _2590.y, _2591.z ? _2587.z : _2590.z);
            _2600 = _2536 + (_2585 * min(min(_2592.x, _2592.y), _2592.z));
          }
          else {
            _2600 = _2456;
          }
          float3 _2601 = normalize(_2600);
          float3 _2604 = float3(int3(sign(_2601)));
          float3 _2607 = _2601 / dot(_2601, _2604).xxx;
          float3 _2621;
          if (_2607.z < 0.0f) {
            float3 _2612 = abs(_2607);
            float2 _2619 = _2604.xy * float2(1.0f - _2612.y, 1.0f - _2612.x);
            _2621 = float3(_2619.x, _2619.y, _2607.z);
          } else {
            _2621 = _2607;
          }
          float _2646 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_2516]._m0, float4(_425, 1.0f))));
          float _2659 = clamp((min(_2552.x, min(_2552.y, _2552.z)) * _28_m4[_2516]._m6.y) + ((((((_2546 * _2546).x - ((_2549.x + _2549.y) + _2549.z)) * _28_m4[_2516]._m5.x) * _28_m4[_2516]._m5.x) * (1.0f - _28_m4[_2516]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_2516]._m6.w;
          _2505 = _2504 + ((((_23.SampleLevel(_17, float3((((_2621.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_2516]._m1.w), _2464).xyz * _28_m4[_2516]._m5.w) * ((((((clamp(abs(_2502 / _2646), 0.0f, 1.0f) * 2.0f) + _2502) / (2.0f + _2646)) - 1.0f) * _9_m23.w) + 1.0f)) * _2659) * _2507);
          _2508 = _2507 * (1.0f - _2659);
        } else {
          _2505 = _2504;
          _2508 = _2507;
        }
        _2504 = _2505;
        _2507 = _2508;
        _2509 = _2510;
        continue;
      } else {
        break;
      }
    }
    float3 _2728;
    if (_2512) {
      float3 _2667 = normalize(_2456);
      float3 _2670 = float3(int3(sign(_2667)));
      float3 _2673 = _2667 / dot(_2667, _2670).xxx;
      float3 _2687;
      if (_2673.z < 0.0f) {
        float3 _2678 = abs(_2673);
        float2 _2685 = _2670.xy * float2(1.0f - _2678.y, 1.0f - _2678.x);
        _2687 = float3(_2685.x, _2685.y, _2673.z);
      } else {
        _2687 = _2673;
      }
      float _2714 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_425, 1.0f))));
      _2728 = _2504 + ((_23.SampleLevel(_17, float3((((_2687.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _2464).xyz * ((((((clamp(abs(_2502 / _2714), 0.0f, 1.0f) * 2.0f) + _2502) / (2.0f + _2714)) - 1.0f) * _9_m23.w) + 1.0f)) * _2507);
    } else {
      _2728 = _2504;
    }
    float3 _2734 = (_2728 * _9_m23.z) * _9_m22.y;
    float3 _2757;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _2751 = _21.SampleBias(_15, _4, _9_m16);
      float _2752 = _2751.x;
      _2757 = (_20.SampleBias(_15, _4, _9_m16).xyz * _2752) + (_2734 * (1.0f - _2752));
    }
    else {
      _2757 = _2734;
    }
    _2761 = (((float3(_2432, _2439, _2446) * _516) * _9_m22.x) * _902) + ((_2757 * _536) * _901);
  }
  else {
    float3 _922 = (_463 + (_425 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_438 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _932 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _941 = _922 - (_9_m108.xyz + (_932 * (-_9_m110.w)));
    float _956 = max(min(max((max(abs(_941.x), abs(_941.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_941.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1258;
    float4 _1259;
    float4 _1260;
    float _1261;
    float _1262;
    if ((_9_m108.w != 0.0f) && (_956 < 1.0f)) {
      float3 _969 = _922 - (_9_m108.xyz + (_932 * (-_9_m110.y)));
      float _983 = max(clamp((max(abs(_969.x), abs(_969.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_969.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _1059;
      float4 _1060;
      float4 _1061;
      float4 _1062;
      if (_983 < 1.0f) {
        float3 _992 = ((_922 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _994 = _992 - floor(_992);
        float4 _998 = _47.SampleLevel(_16, _994, 0.0f);
        float _999 = 1.0f - _983;
        float _1003 = _9_m109.y * 0.5f;
        float _1008 = _994.x;
        float _1009 = clamp(_994.y, _1003, 1.0f - _1003) * 0.3333333432674407958984375f;
        float _1010 = _994.z;
        float4 _1013 = _48.SampleLevel(_15, float3(_1008, _1009, _1010), 0.0f);
        float _1029 = _998.x;
        float _1039 = _998.y;
        float _1049 = _998.z;
        _1059 = _956 + (_1013.w * _999);
        _1060 = float4(((_48.SampleLevel(_15, float3(_1008, _1009 + 0.666666686534881591796875f, _1010), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1049, _1049) * _999;
        _1061 = float4(((_48.SampleLevel(_15, float3(_1008, _1009 + 0.3333333432674407958984375f, _1010), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1039, _1039) * _999;
        _1062 = float4(((_1013.xyz * 4.0f) - 2.0f.xxx) * _1029, _1029) * _999;
      } else {
        _1059 = _956;
        _1060 = 0.0f.xxxx;
        _1061 = 0.0f.xxxx;
        _1062 = 0.0f.xxxx;
      }
      float3 _1068 = _922 - (_9_m108.xyz + (_932 * (-_9_m110.z)));
      float _1082 = max(clamp((max(abs(_1068.x), abs(_1068.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1068.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _1162;
      float4 _1163;
      float4 _1164;
      float4 _1165;
      if (_1082 < 1.0f) {
        float3 _1091 = ((_922 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1093 = _1091 - floor(_1091);
        float4 _1097 = _49.SampleLevel(_16, _1093, 0.0f);
        float _1099 = _983 * (1.0f - _1082);
        float _1103 = _9_m109.y * 0.5f;
        float _1108 = _1093.x;
        float _1109 = clamp(_1093.y, _1103, 1.0f - _1103) * 0.3333333432674407958984375f;
        float _1110 = _1093.z;
        float4 _1113 = _50.SampleLevel(_15, float3(_1108, _1109, _1110), 0.0f);
        float _1129 = _1097.x;
        float _1140 = _1097.y;
        float _1151 = _1097.z;
        _1162 = _1059 + (_1113.w * _1099);
        _1163 = _1060 + (float4(((_50.SampleLevel(_15, float3(_1108, _1109 + 0.666666686534881591796875f, _1110), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1151, _1151) * _1099);
        _1164 = _1061 + (float4(((_50.SampleLevel(_15, float3(_1108, _1109 + 0.3333333432674407958984375f, _1110), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1140, _1140) * _1099);
        _1165 = _1062 + (float4(((_1113.xyz * 4.0f) - 2.0f.xxx) * _1129, _1129) * _1099);
      } else {
        _1162 = _1059;
        _1163 = _1060;
        _1164 = _1061;
        _1165 = _1062;
      }
      float4 _1248;
      float4 _1249;
      float4 _1250;
      float _1251;
      if (_1082 > 0.0f) {
        float3 _1174 = ((_922 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1177 = _9_m109.xyz * 0.5f;
        float3 _1179 = clamp(_1174 - floor(_1174), _1177, 1.0f.xxx - _1177);
        float4 _1183 = _51.SampleLevel(_16, _1179, 0.0f);
        float _1185 = _1082 * (1.0f - _956);
        float _1189 = _9_m109.y * 0.5f;
        float _1194 = _1179.x;
        float _1195 = clamp(_1179.y, _1189, 1.0f - _1189) * 0.3333333432674407958984375f;
        float _1196 = _1179.z;
        float4 _1199 = _52.SampleLevel(_15, float3(_1194, _1195, _1196), 0.0f);
        float _1215 = _1183.x;
        float _1226 = _1183.y;
        float _1237 = _1183.z;
        _1248 = _1163 + (float4(((_52.SampleLevel(_15, float3(_1194, _1195 + 0.666666686534881591796875f, _1196), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1237, _1237) * _1185);
        _1249 = _1164 + (float4(((_52.SampleLevel(_15, float3(_1194, _1195 + 0.3333333432674407958984375f, _1196), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1226, _1226) * _1185);
        _1250 = _1165 + (float4(((_1199.xyz * 4.0f) - 2.0f.xxx) * _1215, _1215) * _1185);
        _1251 = _1162 + (_1199.w * _1185);
      } else {
        _1248 = _1163;
        _1249 = _1164;
        _1250 = _1165;
        _1251 = _1162;
      }
      float _1254 = clamp((_1251 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1258 = _1248;
      _1259 = _1249;
      _1260 = _1250;
      _1261 = _1254 - _956;
      _1262 = (_1254 + _956) * 0.5f;
    } else {
      _1258 = 0.0f.xxxx;
      _1259 = 0.0f.xxxx;
      _1260 = 0.0f.xxxx;
      _1261 = 0.0f;
      _1262 = 1.0f;
    }
    float4 _1282 = _1260 + float4(_9_m111.x * _1262, (_9_m111.y * _1262) + ((_9_m111.w * _1261) * 0.5f), _9_m111.z * _1262, (_9_m111.w * _1262) + ((_9_m111.y * _1261) * 0.375f));
    float4 _1302 = _1259 + float4(_9_m112.x * _1262, (_9_m112.y * _1262) + ((_9_m112.w * _1261) * 0.5f), _9_m112.z * _1262, (_9_m112.w * _1262) + ((_9_m112.y * _1261) * 0.375f));
    float4 _1322 = _1258 + float4(_9_m113.x * _1262, (_9_m113.y * _1262) + ((_9_m113.w * _1261) * 0.5f), _9_m113.z * _1262, (_9_m113.w * _1262) + ((_9_m113.y * _1261) * 0.375f));
    float4 _1480;
    float4 _1481;
    float4 _1482;
    [branch] if (all(bool2(_451.x >= 0.0f.xx.x, _451.y >= 0.0f.xx.y))) {
      float4 _1330 = _46.SampleLevel(_15, _451, 0.0f);
      float4 _1331 = abs(_1330);
      float4 _1477;
      float4 _1478;
      float4 _1479;
      [branch] if (any(bool4(_1331.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1331.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1331.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1331.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _1337 = length(_1330.yzw);
        uint _1339;
        float _1342;
        _1339 = 0u;
        _1342 = 1.0f;
        for (float _1344 = _1337; _1344 > 4.599999904632568359375f;) {
          _1339++;
          _1342 *= 0.5f;
          _1344 *= 0.5f;
          continue;
        }
        float4 _1348 = _1330 * _1342;
        float4 _1353 = float4(0.0f, _1348.yzw);
        float2 _1375 = (_45.SampleLevel(_15, float2(((((length(_1353) * _44_m3.x) + _44_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _44_m2.xy) + _44_m2.zw;
        float4 _1389;
        _1389 = float4(_1375.x * 3.5449078083038330078125f, _1353.yzw * _1375.y) * exp(_1348.x * 0.282094776630401611328125f);
        for (uint _1392 = 0u; _1392 < _1339;) {
          _1389 = mul(float4x4(_1389, float4(_1389.yx, 0.0f, 0.0f), float4(_1389.z, 0.0f, _1389.x, 0.0f), float4(_1389.w, 0.0f, 0.0f, _1389.x)) * 0.282094776630401611328125f, _1389);
          _1392++;
          continue;
        }
        float4x4 _1413 = float4x4(_1389, float4(_1389.yx, 0.0f, 0.0f), float4(_1389.z, 0.0f, _1389.x, 0.0f), float4(_1389.w, 0.0f, 0.0f, _1389.x)) * 0.282094776630401611328125f;
        float4 _1423 = mul(_1413, float4(_1282.w * 1.1283791065216064453125f, _1282.y * (-0.977204978466033935546875f), _1282.z * 0.977204978466033935546875f, _1282.x * (-0.977204978466033935546875f)));
        float4 _1443 = mul(_1413, float4(_1302.w * 1.1283791065216064453125f, _1302.y * (-0.977204978466033935546875f), _1302.z * 0.977204978466033935546875f, _1302.x * (-0.977204978466033935546875f)));
        float4 _1463 = mul(_1413, float4(_1322.w * 1.1283791065216064453125f, _1322.y * (-0.977204978466033935546875f), _1322.z * 0.977204978466033935546875f, _1322.x * (-0.977204978466033935546875f)));
        _1477 = float4(_1423.x * 0.886226952075958251953125f, _1423.w * (-1.02332675457000732421875f), _1423.y * (-1.02332675457000732421875f), _1423.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1478 = float4(_1443.x * 0.886226952075958251953125f, _1443.w * (-1.02332675457000732421875f), _1443.y * (-1.02332675457000732421875f), _1443.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1479 = float4(_1463.x * 0.886226952075958251953125f, _1463.w * (-1.02332675457000732421875f), _1463.y * (-1.02332675457000732421875f), _1463.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _1477 = _1282;
        _1478 = _1302;
        _1479 = _1322;
      }
      _1480 = _1477;
      _1481 = _1478;
      _1482 = _1479;
    }
    else {
      _1480 = _1282;
      _1481 = _1302;
      _1482 = _1322;
    }
    float _1487 = max(0.0f, dot(_1480.xyz, _425) + _1480.w);
    float _1492 = max(0.0f, dot(_1481.xyz, _425) + _1481.w);
    float _1497 = max(0.0f, dot(_1482.xyz, _425) + _1482.w);
    float3 _1521 = reflect(_491, _425);
    float _1529 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_514, 0.001000000047497451305389404296875f))));
    float2 _1533 = floor(_438 * _28_m0.w);
    float _1550 = floor(_470 - _28_m2.y);
    float _1554 = clamp(_1550, 0.0f, _28_m1.x - 1.0f);
    uint _1564 = (_1550 <= _1554) ? (_25.Load(uint(_9_m21.z + int(_1533.x + (_1533.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_1554)) * 4 + 0)) : 0u;
    float _1567 = dot(float4(_1487, _1492, _1497, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1569;
    float _1572;
    uint _1574;
    _1569 = 0.0f.xxx;
    _1572 = 1.0f;
    _1574 = _1564;
    uint _1575;
    float3 _1570;
    float _1573;
    bool _1577;
    [loop] for (;;) {
      bool _1576 = _1574 != 0u;
      _1577 = _1572 > 0.00999999977648258209228515625f;
      if (_1576 && _1577) {
        uint _1581 = firstbitlow(_1574);
        _1575 = _1574 ^ (1u << (_1581 & 31u));
        float3 _1601 = float3(dot(_28_m4[_1581]._m2, _467), dot(_28_m4[_1581]._m3, _467), dot(_28_m4[_1581]._m4, _467));
        float3 _1602 = abs(_1601);
        if (all(bool3(_1602.x <= _28_m4[_1581]._m1.xyz.x, _1602.y <= _28_m4[_1581]._m1.xyz.y, _1602.z <= _28_m4[_1581]._m1.xyz.z))) {
          float3 _1611 = _28_m4[_1581]._m1.xyz * 0.100000001490116119384765625f;
          float3 _1613 = _1602 * 0.100000001490116119384765625f;
          float3 _1614 = _1613 * _1613;
          float3 _1617 = (_28_m4[_1581]._m1.xyz - _1602) * _28_m4[_1581]._m5.xyz;
          float3 _1665;
          [branch] if (_28_m4[_1581]._m6.x == 1.0f) {
            float3 _1650 = float3(dot(_28_m4[_1581]._m2.xyz, _1521), dot(_28_m4[_1581]._m3.xyz, _1521), dot(_28_m4[_1581]._m4.xyz, _1521));
            float3 _1652 = (_28_m4[_1581]._m1.xyz - _1601) / _1650;
            float3 _1655 = ((-_28_m4[_1581]._m1.xyz) - _1601) / _1650;
            bool3 _1656 = bool3(_1650.x > 0.0f.xxx.x, _1650.y > 0.0f.xxx.y, _1650.z > 0.0f.xxx.z);
            float3 _1657 = float3(_1656.x ? _1652.x : _1655.x, _1656.y ? _1652.y : _1655.y, _1656.z ? _1652.z : _1655.z);
            _1665 = _1601 + (_1650 * min(min(_1657.x, _1657.y), _1657.z));
          }
          else {
            _1665 = _1521;
          }
          float3 _1666 = normalize(_1665);
          float3 _1669 = float3(int3(sign(_1666)));
          float3 _1672 = _1666 / dot(_1666, _1669).xxx;
          float3 _1686;
          if (_1672.z < 0.0f) {
            float3 _1677 = abs(_1672);
            float2 _1684 = _1669.xy * float2(1.0f - _1677.y, 1.0f - _1677.x);
            _1686 = float3(_1684.x, _1684.y, _1672.z);
          } else {
            _1686 = _1672;
          }
          float _1711 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_1581]._m0, float4(_425, 1.0f))));
          float _1724 = clamp((min(_1617.x, min(_1617.y, _1617.z)) * _28_m4[_1581]._m6.y) + ((((((_1611 * _1611).x - ((_1614.x + _1614.y) + _1614.z)) * _28_m4[_1581]._m5.x) * _28_m4[_1581]._m5.x) * (1.0f - _28_m4[_1581]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_1581]._m6.w;
          _1570 = _1569 + ((((_23.SampleLevel(_17, float3((((_1686.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_1581]._m1.w), _1529).xyz * _28_m4[_1581]._m5.w) * ((((((clamp(abs(_1567 / _1711), 0.0f, 1.0f) * 2.0f) + _1567) / (2.0f + _1711)) - 1.0f) * _9_m23.w) + 1.0f)) * _1724) * _1572);
          _1573 = _1572 * (1.0f - _1724);
        } else {
          _1570 = _1569;
          _1573 = _1572;
        }
        _1569 = _1570;
        _1572 = _1573;
        _1574 = _1575;
        continue;
      } else {
        break;
      }
    }
    float3 _1793;
    if (_1577) {
      float3 _1732 = normalize(_1521);
      float3 _1735 = float3(int3(sign(_1732)));
      float3 _1738 = _1732 / dot(_1732, _1735).xxx;
      float3 _1752;
      if (_1738.z < 0.0f) {
        float3 _1743 = abs(_1738);
        float2 _1750 = _1735.xy * float2(1.0f - _1743.y, 1.0f - _1743.x);
        _1752 = float3(_1750.x, _1750.y, _1738.z);
      } else {
        _1752 = _1738;
      }
      float _1779 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_425, 1.0f))));
      _1793 = _1569 + ((_23.SampleLevel(_17, float3((((_1752.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _1529).xyz * ((((((clamp(abs(_1567 / _1779), 0.0f, 1.0f) * 2.0f) + _1567) / (2.0f + _1779)) - 1.0f) * _9_m23.w) + 1.0f)) * _1572);
    } else {
      _1793 = _1569;
    }
    float3 _1799 = (_1793 * _9_m23.z) * _9_m22.y;
    float3 _1822;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _1816 = _21.SampleBias(_15, _4, _9_m16);
      float _1817 = _1816.x;
      _1822 = (_20.SampleBias(_15, _4, _9_m16).xyz * _1817) + (_1799 * (1.0f - _1817));
    }
    else {
      _1822 = _1799;
    }
    _2761 = (((float3(_1487, _1492, _1497) * (_516 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_428, _429, _430).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _429.xxx) * _430) * _431))) * _9_m22.x) * _902) + ((_1822 * _536) * _901);
  }
  float4 _2763 = float4(_862.x, _862.y, _862.z, _862.w) + float4(_2761.x, _2761.y, _2761.z, 0.0f.xxxx.w);
  float3 _2766 = clamp(_2763.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _2781 = _463.y * _9_m46.w;
  float _2786 = max(0.00999999977648258209228515625f, _2781 + _9_m47.w);
  float3 _2800 = exp(_9_m45.xyz * ((-max(0.0f, (_490 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2786)) / _2786) * exp(_2781 + _9_m48.w))));
  float _2803 = dot(_491, _9_m44.xyz);
  float _2809 = _9_m45.w * _9_m45.w;
  float _2813 = (1.0f + _2809) - ((2.0f * _9_m45.w) * _2803);
  float3 _3141;
  float _3142;
  if (_9_m55.z > 0.0f) {
    uint3 _2967 = (uint3(int3(_305, _306, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _2968 = _2967.y;
    uint _2969 = _2967.z;
    uint _2972 = _2967.x + (_2968 * _2969);
    uint _2974 = _2968 + (_2969 * _2972);
    uint _2976 = _2969 + (_2972 * _2974);
    uint _2978 = _2972 + (_2974 * _2976);
    float _3002 = dot(_491, -_7_m0[2].xyz);
    float3 _3012 = _463 - _7_m11.xyz;
    float _3014 = (_9_m55.w * ((_3002 > 5.9604644775390625e-08f) ? (1.0f / _3002) : 0.0f)) * (1.0f / _490);
    float _3015 = _3012.y;
    float _3016 = _3014 * _3015;
    float _3018 = _7_m11.y + _3016;
    float _3019 = _3015 - _3016;
    float _3021 = (1.0f - _3014) * _490;
    float _3035 = max(-127.0f, _9_m49.z * _3019);
    float _3059 = max(-127.0f, _9_m52.x * _3019);
    float _3070 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3018 - _9_m49.x)))) * ((abs(_3035) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3035)) / _3035) : (0.693147182464599609375f - (0.2402265071868896484375f * _3035)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3018 - _9_m52.z)))) * ((abs(_3059) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3059)) / _3059) : (0.693147182464599609375f - (0.2402265071868896484375f * _3059))));
    float _3092 = clamp((_490 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _3095 = clamp((max(clamp(exp2(-(_3070 * _3021)), 0.0f, 1.0f), _9_m51.w) + clamp((_490 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3092, 0.0f, 1.0f);
    float4 _3135 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _42.SampleLevel(_15, float3((_438 + ((((float3(uint3(_2978, _2974 + (_2976 * _2978), _296) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_470 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_470 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _3137 = _3135.w;
    _3141 = _3135.xyz + (((_9_m51.xyz * (1.0f - _3095)) + (((_9_m54.xyz * pow(clamp(dot(_489, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3070 * max(_3021 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3092))) * _3137);
    _3142 = _3137 * _3095;
  } else {
    float3 _2843 = _463 - _7_m11.xyz;
    float _2845 = _2843.y;
    float _2859 = max(-127.0f, _9_m49.z * _2845);
    float _2883 = max(-127.0f, _9_m52.x * _2845);
    float _2894 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2859) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2859)) / _2859) : (0.693147182464599609375f - (0.2402265071868896484375f * _2859)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2883) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2883)) / _2883) : (0.693147182464599609375f - (0.2402265071868896484375f * _2883))));
    float _2916 = clamp((_490 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2919 = clamp((max(clamp(exp2(-(_2894 * _490)), 0.0f, 1.0f), _9_m51.w) + clamp((_490 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2916, 0.0f, 1.0f);
    _3141 = (_9_m51.xyz * (1.0f - _2919)) + (((_9_m54.xyz * pow(clamp(dot(_489, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2894 * max(_490 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2916));
    _3142 = _2919;
  }
  float3 _3145 = _2800 * _3142;
  float3 _3147 = (_2766 * _3145) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2803 * _2803)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2809) / max((12.56637096405029296875f * _2813) * sqrt(_2813), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2800)) * _3142) + _3141);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _3147 = (_3147 * 0.65f) + (_2766 * 0.35f);
  }
  // RenoDX code end
  float _3148 = dot(_3145, 0.3333333432674407958984375f.xxx);
  float4 _3149 = float4(_3147.x, _3147.y, _3147.z, _2763.w);
  _3149.w = _3148;
  float _3178 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _463) * _9_m61.z), 0.0f, 1.0f);
  float3 _3186 = lerp(_2766, _3149.xyz, min((1.0f - _3178) + ((_57.SampleLevel(_16, (_463 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _3178), 1.0f + _3148).xxx);
  _5 = float4(_3186.x, _3186.y, _3186.z, _3149.w);
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

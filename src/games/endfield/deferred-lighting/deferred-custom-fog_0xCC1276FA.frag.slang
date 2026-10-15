#include "./renodx_injection.hlsli"

// Ported from the native 0xCC1276FA Vulkan dump.
struct _28 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static uint _318;

[[vk::binding(32, 3)]] cbuffer _6_7 : register(b32, space3) {
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

[[vk::binding(38, 3)]] cbuffer _8_9 : register(b38, space3) {
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

[[vk::binding(34, 3)]] cbuffer _10_11 : register(b34, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(40, 3)]] ByteAddressBuffer _26 : register(t40, space3);
[[vk::binding(39, 3)]] cbuffer _27_29 : register(b39, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  _28 _29_m4[32] : packoffset(c4);
};

[[vk::binding(35, 3)]] cbuffer _30_31 : register(b35, space3) {
  float4 _31_m0 : packoffset(c0);
  float4 _31_m1 : packoffset(c1);
  float4 _31_m2 : packoffset(c2);
  float4 _31_m3 : packoffset(c3);
  float4 _31_m4 : packoffset(c4);
  uint4 _31_m5 : packoffset(c5);
  float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(36, 3)]] cbuffer _32_33 : register(b36, space3) {
  int _33_m0 : packoffset(c0);
  int _33_m1 : packoffset(c0.y);
  int _33_m2 : packoffset(c0.z);
  int _33_m3 : packoffset(c0.w);
  int _33_m4 : packoffset(c1);
  int _33_m5 : packoffset(c1.y);
  int _33_m6 : packoffset(c1.z);
  int _33_m7 : packoffset(c1.w);
  float _33_m8 : packoffset(c2);
  float _33_m9 : packoffset(c2.y);
  float _33_m10 : packoffset(c2.z);
  float _33_m11 : packoffset(c2.w);
  float _33_m12 : packoffset(c3);
  float _33_m13 : packoffset(c3.y);
  float _33_m14 : packoffset(c3.z);
  float _33_m15 : packoffset(c3.w);
};

[[vk::binding(31, 3)]] cbuffer _37_38 : register(b31, space3) {
  column_major float4x4 _38_m0 : packoffset(c0);
  float4 _38_m1 : packoffset(c4);
};

[[vk::binding(33, 3)]] cbuffer _44_45 : register(b33, space3) {
  float4 _45_m0[15] : packoffset(c0);
  float4 _45_m1[15] : packoffset(c15);
};

[[vk::binding(37, 3)]] cbuffer _48_49 : register(b37, space3) {
  float4 _49_m0 : packoffset(c0);
  float4 _49_m1 : packoffset(c1);
  float4 _49_m2 : packoffset(c2);
  float4 _49_m3 : packoffset(c3);
  float4 _49_m4 : packoffset(c4);
  uint4 _49_m5 : packoffset(c5);
  float4 _49_m6 : packoffset(c6);
  float4 _49_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _14 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _15 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _18 : register(s3, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _20 : register(t28, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _21 : register(t11, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _22 : register(t12, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _23 : register(t23, space3);
[[vk::binding(13, 3)]] Texture2DArray<float4> _24 : register(t13, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _34 : register(t10, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _35 : register(t29, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _36 : register(t7, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _40 : register(t14, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _41 : register(t15, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _42 : register(t8, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _43 : register(t9, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _46 : register(t27, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _47 : register(t22, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _50 : register(t30, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _51 : register(t6, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _52 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _53 : register(t18, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _54 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _55 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _56 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _57 : register(t16, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _58 : register(t5, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _59 : register(t26, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _60 : register(t25, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _61 : register(t24, space3);

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
  uint2 _324 = uint2(gl_FragCoord.xy);
  int _327 = int(_324.x);
  int _328 = int(_324.y);
  int2 _330 = int3(_327, _328, 0).xy;
  float4 _332 = _59.Load(int3(_330, 0));
  float4 _334 = _60.Load(int3(_330, 0));
  float4 _336 = _61.Load(int3(_330, 0));
  uint _340 = uint(round(_336.w * 255.0f));
  float3 _446;
  float3 _447;
  float _448;
  float _449;
  float _450;
  float _451;
  float _452;
  float _453;
  float3 _454;
  uint _455;
  float _456;
  bool _457;
  [branch] if ((_340 & 128u) != 0u) {
    float2 _388 = (_332.xy * 2.0f) - 1.0f.xx;
    float _392 = 1.0f - dot(1.0f.xx, abs(_388));
    float3 _394 = float3(_388.x, _392, _388.y);
    float3 _406;
    if (_392 < 0.0f) {
      float2 _401 = _394.xz;
      bool2 _402 = bool2(_401.x >= 0.0f.xx.x, _401.y >= 0.0f.xx.y);
      float2 _404 = (1.0f.xx - abs(_394.zx)) * float2(_402.x ? 1.0f.xx.x : (-1.0f).xx.x, _402.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _406 = float3(_404.x, _394.y, _404.y);
    } else {
      _406 = _394;
    }
    float2 _411 = (_334.xy * 2.0f) - 1.0f.xx;
    float _415 = 1.0f - dot(1.0f.xx, abs(_411));
    float3 _417 = float3(_411.x, _415, _411.y);
    float3 _429;
    if (_415 < 0.0f) {
      float2 _424 = _417.xz;
      bool2 _425 = bool2(_424.x >= 0.0f.xx.x, _424.y >= 0.0f.xx.y);
      float2 _427 = (1.0f.xx - abs(_417.zx)) * float2(_425.x ? 1.0f.xx.x : (-1.0f).xx.x, _425.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _429 = float3(_427.x, _417.y, _427.y);
    } else {
      _429 = _417;
    }
    _446 = _336.xyz;
    _447 = normalize(_429);
    _448 = _334.z;
    _449 = _332.z;
    _450 = 0.0f;
    _451 = 0.0f;
    _452 = 0.0f;
    _453 = 0.0f;
    _454 = normalize(_406);
    _455 = uint(int((round(_332.w * 3.0f) * 4.0f) + round(_334.w * 3.0f)));
    _456 = float(_340 & 127u) * 0.0078740157186985015869140625f;
    _457 = true;
  }
  else {
    float2 _350 = (_334.xy * 2.0f) - 1.0f.xx;
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
    uint _376 = clamp(_340 - 1u, 0u, 62u);
    bool4 _377 = ((_340 > 0u) && (_340 <= 63u)).xxxx;
    float4 _380 = float4(_377.x ? _11_m0[_376].x : 0.0f.xxxx.x, _377.y ? _11_m0[_376].y : 0.0f.xxxx.y, _377.z ? _11_m0[_376].z : 0.0f.xxxx.z, _377.w ? _11_m0[_376].w : 0.0f.xxxx.w);
    _446 = _336.xyz;
    _447 = normalize(_368);
    _448 = _334.z;
    _449 = _332.y;
    _450 = _380.y;
    _451 = _380.z;
    _452 = _380.x * _332.x;
    _453 = _380.w;
    _454 = 0.0f.xxx;
    _455 = _340;
    _456 = 0.0f;
    _457 = false;
  }
  float2 _460 = float2(_324);
  float2 _473 = gl_FragCoord.xy * _9_m0.zw;
  float2 _475 = (_473 * 2.0f) - 1.0f.xx;
  float4 _478 = float4(_475, _20.SampleLevel(_14, (_460 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _478.y = -_475.y;
  float4 _481 = mul(_7_m6, _478);
  float3 _485 = _481.xyz / _481.w.xxx;
  float4 _489 = float4(_485, 1.0f);
  float _492 = abs(mul(_7_m0, _489).z);
  float3 _507;
  do {
    if (_9_m4.w == 0.0f) {
      _507 = _7_m11.xyz - _485;
      break;
    } else {
      _507 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _508 = dot(_507, _507);
  float _510 = rsqrt(max(_508, 9.9999999392252902907785028219223e-09f));
  float3 _511 = _507 * _510;
  float _512 = _508 * _510;
  float3 _513 = -_511;
  float2 _526;
  if (_9_m132.x > 0.00048828125f) {
    _526 = _58.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _526 = 1.0f.xx;
  }
  float _527 = dot(_447, float3(0.0f, -1.0f, 0.0f));
  float3 _582;
  [branch] if (_9_m124.x > 0.5f) {
    float _554 = abs(_447.x);
    float _556 = abs(_447.y);
    float _558 = abs(_447.z);
    float3 _563 = float3(_554, _556, _558) * (1.0f / ((_554 + _556) + _558));
    _582 = ((((float3(0.0f, 0.0f, 1.0f) * _563.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _563.y)) + (float3(1.0f, 0.0f, 0.0f) * _563.z)) * ((_40.SampleLevel(_16, _485 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_527)));
  }
  else {
    _582 = 0.0f.xxx;
  }
  float4 _596 = mul(_38_m0, float4((_485 + ((((_447 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_527, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _527), 0.100000001490116119384765625f, 1.0f)))) + _582, 1.0f));
  float2 _599 = (_596.xy * 0.5f) + 0.5f.xx;
  float4 _600 = float4(_599.x, _599.y, _596.z, _596.w);
  _600.y = 1.0f - _599.y;
  float _621;
  [branch] if (_9_m124.y > 0.5f) {
    _621 = _36.SampleCmpLevelZero(_18, (_600.xy + _38_m1.xy).xy, max(_596.z, 0.00048828125f));
  }
  else {
    _621 = 1.0f;
  }
  float _626 = lerp(_9_m128.w, 1.0f, clamp(_447.y, 0.0f, 1.0f));
  float2 _635 = abs(_485.xz - _7_m11.xz);
  float _638 = max(_635.x, _635.y);
  float _656 = min(_526.x, _526.y);
  float2 _658 = _526 * (1.0f - lerp(lerp(_9_m128.z * _626, 1.0f, lerp(_626 * _621, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _638))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _638)));
  float _659 = _658.x;
  float _660 = 1.0f - _448;
  float _668 = clamp(clamp((_660 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f), 0.0f, 1.0f);
  float _670 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _527);
  float _677 = lerp(1.0f, 0.25f, (_9_m120.x * _668) * _670);
  float _693 = (1.0f - lerp(_660, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _668) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_660)), 0.0f, 1.0f), _660, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _670) * (1.0f - _659))) * lerp(1.0f, 0.100000001490116119384765625f, max(0.0f, smoothstep(0.0f, 0.0500000007450580596923828125f, 0.0f)));
  float _698 = lerp(lerp(min(1.0f, _693), _693, _656), _448, _659);
  float3 _700 = _446 * lerp(lerp(min(1.0f, _677), _677, _656), 1.0f, _659);
  float _701 = dot(_447, _511);
  float _702 = max(0.0f, _701);
  float4 _704 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _698) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _705 = _704.x;
  float2 _715 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_705 * _705, exp2((-9.27999973297119140625f) * _702)) * _705) + _704.y)) + _704.zw;
  float3 _720 = (0.039999999105930328369140625f.xxx * _715.x) + _715.y.xxx;
  float4 _1046;
  do {
    [branch] if (_33_m4 == 0) {
      _1046 = 0.0f.xxxx;
      break;
    }
    float4 _733 = _34.Load(int3(_330, 0));
    float _734 = _733.x;
    float4 _1045;
    if (_734 > 0.001000000047497451305389404296875f) {
      float3 _745 = reflect(_513, _447);
      float3 _746 = -_31_m0.xyz;
      float _751 = dot(_746, _745);
      float3 _753 = _745 - (_746 * _751);
      bool3 _755 = (_751 < _31_m4.z).xxx;
      float3 _763 = normalize((_746 * _31_m4.z) + ((_753 * rsqrt(max(6.103515625e-05f, dot(_753, _753)))) * _31_m4.y));
      float3 _764 = float3(_755.x ? _763.x : _745.x, _755.y ? _763.y : _745.y, _755.z ? _763.z : _745.z);
      float3 _768 = _764 + _511;
      float3 _772 = _768 * rsqrt(max(6.103515625e-05f, dot(_768, _768)));
      float _774 = clamp(dot(_764, _447), 0.0f, 1.0f);
      float _776 = clamp(dot(_447, _772), 0.0f, 1.0f);
      float _778 = clamp(dot(_511, _772), 0.0f, 1.0f);
      float _780 = clamp(_701, 0.0f, 1.0f);
      float3 _954;
      float3 _955;
      [branch] if (_457) {
        float _884 = _698 * _698;
        float _885 = _884 * _884;
        float _906 = (((_776 * _885) - _776) * _776) + 1.0f;
        float _909 = 1.0f - _778;
        float _910 = _909 * _909;
        float _912 = (_909 * _910) * _910;
        float _936 = 1.0f - _698;
        float _943 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_936 * (1.04997003078460693359375f + (_936 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _936))))));
        float _944 = 1.0f - _943;
        _954 = 0.0f.xxx;
        _955 = min(((0.039999999105930328369140625f.xxx * (1.0f - _912)) + _912.xxx) * ((_885 / (_906 * _906)) * (0.5f / (((_774 * sqrt(((((-_780) * _885) + _780) * _780) + _885)) + (_780 * sqrt(((((-_774) * _885) + _774) * _774) + _885))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_41.SampleLevel(_15, (float2(_780, _698) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_15, (float2(_774, _698) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _943) / _944)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _944)));
      }
      else {
        float _784 = _698 * _698;
        float _785 = _784 * _784;
        float _806 = (((_776 * _785) - _776) * _776) + 1.0f;
        float _809 = 1.0f - _778;
        float _810 = _809 * _809;
        float _812 = (_809 * _810) * _810;
        float _836 = 1.0f - _698;
        float _843 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_836 * (1.04997003078460693359375f + (_836 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _836))))));
        float _844 = 1.0f - _843;
        float _867 = clamp(1.0f - _452, 0.0f, 1.0f);
        float _875 = clamp((dot(_447, _764) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _954 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_450, _451, _452).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _451.xxx) * _452) * lerp((_449 * lerp(1.0f, (_875 * sqrt(_875)) * 1.66666662693023681640625f, _867)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_511, _764), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _867));
        _955 = min(((0.039999999105930328369140625f.xxx * (1.0f - _812)) + _812.xxx) * ((_785 / (_806 * _806)) * (0.5f / (((_774 * sqrt(((((-_780) * _785) + _780) * _780) + _785)) + (_780 * sqrt(((((-_774) * _785) + _774) * _774) + _785))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_41.SampleLevel(_15, (float2(_780, _698) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_15, (float2(_774, _698) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _843) / _844)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _844)));
      }
      float3 _956 = _700 * 1.0f;
      float3 _959 = clamp(_955 * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _774;
      float3 _1030;
      [branch] if (_457) {
        float3 _1025;
        do {
          [branch] if (((_455 > 0u) && (_455 <= 15u)) && (_456 > 0.0f)) {
            int _978 = int(clamp(_455 - 1u, 0u, 14u));
            float _997 = _456 * _45_m0[_978].w;
            float _1002 = float(_978);
            _1025 = float3(_42.SampleLevel(_15, float3((dot(normalize(lerp(_447, _454, _45_m0[_978].x.xxx)), _764) * 0.5f) + 0.5f, _997, _1002), 0.0f).x, _42.SampleLevel(_15, float3((dot(normalize(lerp(_447, _454, _45_m0[_978].y.xxx)), _764) * 0.5f) + 0.5f, _997, _1002), 0.0f).y, _42.SampleLevel(_15, float3((dot(normalize(lerp(_447, _454, _45_m0[_978].z.xxx)), _764) * 0.5f) + 0.5f, _997, _1002), 0.0f).z);
            break;
          }
          _1025 = _774.xxx;
          break;
        } while (false);
        _1030 = _31_m1.xyz * (((_956 * _1025) + _959) + _954);
      }
      else {
        _1030 = ((_959 + _954) + (_956 * _774)) * _31_m1.xyz;
      }
      float3 _1043 = lerp(_1030, _1030 * _35.SampleBias(_15, float2(_734, 0.5f), _9_m16).xyz, (1.0f - _734).xxx) * _46.SampleLevel(_15, _473, 0.0f).x;
      _1045 = float4(_1043.x, _1043.y, _1043.z, 0.0f.xxxx.w);
    } else {
      _1045 = 0.0f.xxxx;
    }
    _1046 = _1045;
    break;
  } while (false);
  float3 _1048 = _449.xxx;
  float3 _1085;
  float3 _1086;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xCC1276FA:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _1061 = min(_23.SampleBias(_14, _4, _9_m16).x, _449);
    _1085 = clamp((pow(abs(_702 + _1061), exp2(((-16.0f) * _698) - 1.0f)) - 1.0f) + _1061, 0.0f, 1.0f).xxx;
    _1086 = max(_1061.xxx, ((((((_700 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1061) + ((_700 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1061) + ((_700 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1061);
  }
  else {
    _1085 = _1048;
    _1086 = _1048;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _1046.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1085 : 1.0f.xxx;
  // RenoDX code end
  float3 _2941;
  [branch] if (_457) {
    float3 _2030;
    do {
      [branch] if (((_455 > 0u) && (_455 <= 15u)) && (_456 > 0.0f)) {
        uint _2018 = clamp(_455 - 1u, 0u, 14u);
        _2030 = _43.SampleLevel(_15, float3(_456 * _45_m0[_2018].w, 0.5f, float(_2018)), 0.0f).xyz;
        break;
      }
      _2030 = 1.0f.xxx;
      break;
    } while (false);
    float3 _2047 = (_485 + (_447 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_460 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2057 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2066 = _2047 - (_9_m108.xyz + (_2057 * (-_9_m110.w)));
    float _2081 = max(min(max((max(abs(_2066.x), abs(_2066.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_2066.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2383;
    float4 _2384;
    float4 _2385;
    float _2386;
    float _2387;
    if ((_9_m108.w != 0.0f) && (_2081 < 1.0f)) {
      float3 _2094 = _2047 - (_9_m108.xyz + (_2057 * (-_9_m110.y)));
      float _2108 = max(clamp((max(abs(_2094.x), abs(_2094.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2094.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _2184;
      float4 _2185;
      float4 _2186;
      float4 _2187;
      if (_2108 < 1.0f) {
        float3 _2117 = ((_2047 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2119 = _2117 - floor(_2117);
        float4 _2123 = _52.SampleLevel(_16, _2119, 0.0f);
        float _2124 = 1.0f - _2108;
        float _2128 = _9_m109.y * 0.5f;
        float _2133 = _2119.x;
        float _2134 = clamp(_2119.y, _2128, 1.0f - _2128) * 0.3333333432674407958984375f;
        float _2135 = _2119.z;
        float4 _2138 = _53.SampleLevel(_15, float3(_2133, _2134, _2135), 0.0f);
        float _2154 = _2123.x;
        float _2164 = _2123.y;
        float _2174 = _2123.z;
        _2184 = _2081 + (_2138.w * _2124);
        _2185 = float4(((_53.SampleLevel(_15, float3(_2133, _2134 + 0.666666686534881591796875f, _2135), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2174, _2174) * _2124;
        _2186 = float4(((_53.SampleLevel(_15, float3(_2133, _2134 + 0.3333333432674407958984375f, _2135), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2164, _2164) * _2124;
        _2187 = float4(((_2138.xyz * 4.0f) - 2.0f.xxx) * _2154, _2154) * _2124;
      } else {
        _2184 = _2081;
        _2185 = 0.0f.xxxx;
        _2186 = 0.0f.xxxx;
        _2187 = 0.0f.xxxx;
      }
      float3 _2193 = _2047 - (_9_m108.xyz + (_2057 * (-_9_m110.z)));
      float _2207 = max(clamp((max(abs(_2193.x), abs(_2193.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2193.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _2287;
      float4 _2288;
      float4 _2289;
      float4 _2290;
      if (_2207 < 1.0f) {
        float3 _2216 = ((_2047 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2218 = _2216 - floor(_2216);
        float4 _2222 = _54.SampleLevel(_16, _2218, 0.0f);
        float _2224 = _2108 * (1.0f - _2207);
        float _2228 = _9_m109.y * 0.5f;
        float _2233 = _2218.x;
        float _2234 = clamp(_2218.y, _2228, 1.0f - _2228) * 0.3333333432674407958984375f;
        float _2235 = _2218.z;
        float4 _2238 = _55.SampleLevel(_15, float3(_2233, _2234, _2235), 0.0f);
        float _2254 = _2222.x;
        float _2265 = _2222.y;
        float _2276 = _2222.z;
        _2287 = _2184 + (_2238.w * _2224);
        _2288 = _2185 + (float4(((_55.SampleLevel(_15, float3(_2233, _2234 + 0.666666686534881591796875f, _2235), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2276, _2276) * _2224);
        _2289 = _2186 + (float4(((_55.SampleLevel(_15, float3(_2233, _2234 + 0.3333333432674407958984375f, _2235), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2265, _2265) * _2224);
        _2290 = _2187 + (float4(((_2238.xyz * 4.0f) - 2.0f.xxx) * _2254, _2254) * _2224);
      } else {
        _2287 = _2184;
        _2288 = _2185;
        _2289 = _2186;
        _2290 = _2187;
      }
      float4 _2373;
      float4 _2374;
      float4 _2375;
      float _2376;
      if (_2207 > 0.0f) {
        float3 _2299 = ((_2047 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2302 = _9_m109.xyz * 0.5f;
        float3 _2304 = clamp(_2299 - floor(_2299), _2302, 1.0f.xxx - _2302);
        float4 _2308 = _56.SampleLevel(_16, _2304, 0.0f);
        float _2310 = _2207 * (1.0f - _2081);
        float _2314 = _9_m109.y * 0.5f;
        float _2319 = _2304.x;
        float _2320 = clamp(_2304.y, _2314, 1.0f - _2314) * 0.3333333432674407958984375f;
        float _2321 = _2304.z;
        float4 _2324 = _57.SampleLevel(_15, float3(_2319, _2320, _2321), 0.0f);
        float _2340 = _2308.x;
        float _2351 = _2308.y;
        float _2362 = _2308.z;
        _2373 = _2288 + (float4(((_57.SampleLevel(_15, float3(_2319, _2320 + 0.666666686534881591796875f, _2321), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2362, _2362) * _2310);
        _2374 = _2289 + (float4(((_57.SampleLevel(_15, float3(_2319, _2320 + 0.3333333432674407958984375f, _2321), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2351, _2351) * _2310);
        _2375 = _2290 + (float4(((_2324.xyz * 4.0f) - 2.0f.xxx) * _2340, _2340) * _2310);
        _2376 = _2287 + (_2324.w * _2310);
      } else {
        _2373 = _2288;
        _2374 = _2289;
        _2375 = _2290;
        _2376 = _2287;
      }
      float _2379 = clamp((_2376 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _2383 = _2373;
      _2384 = _2374;
      _2385 = _2375;
      _2386 = _2379 - _2081;
      _2387 = (_2379 + _2081) * 0.5f;
    } else {
      _2383 = 0.0f.xxxx;
      _2384 = 0.0f.xxxx;
      _2385 = 0.0f.xxxx;
      _2386 = 0.0f;
      _2387 = 1.0f;
    }
    float4 _2407 = _2385 + float4(_9_m111.x * _2387, (_9_m111.y * _2387) + ((_9_m111.w * _2386) * 0.5f), _9_m111.z * _2387, (_9_m111.w * _2387) + ((_9_m111.y * _2386) * 0.375f));
    float4 _2427 = _2384 + float4(_9_m112.x * _2387, (_9_m112.y * _2387) + ((_9_m112.w * _2386) * 0.5f), _9_m112.z * _2387, (_9_m112.w * _2387) + ((_9_m112.y * _2386) * 0.375f));
    float4 _2447 = _2383 + float4(_9_m113.x * _2387, (_9_m113.y * _2387) + ((_9_m113.w * _2386) * 0.5f), _9_m113.z * _2387, (_9_m113.w * _2387) + ((_9_m113.y * _2386) * 0.375f));
    float4 _2605;
    float4 _2606;
    float4 _2607;
    [branch] if (all(bool2(_473.x >= 0.0f.xx.x, _473.y >= 0.0f.xx.y))) {
      float4 _2455 = _51.SampleLevel(_15, _473, 0.0f);
      float4 _2456 = abs(_2455);
      float4 _2602;
      float4 _2603;
      float4 _2604;
      [branch] if (any(bool4(_2456.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2456.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2456.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2456.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _2462 = length(_2455.yzw);
        uint _2464;
        float _2467;
        _2464 = 0u;
        _2467 = 1.0f;
        for (float _2469 = _2462; _2469 > 4.599999904632568359375f;) {
          _2464++;
          _2467 *= 0.5f;
          _2469 *= 0.5f;
          continue;
        }
        float4 _2473 = _2455 * _2467;
        float4 _2478 = float4(0.0f, _2473.yzw);
        float2 _2500 = (_50.SampleLevel(_15, float2(((((length(_2478) * _49_m3.x) + _49_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _49_m2.xy) + _49_m2.zw;
        float4 _2514;
        _2514 = float4(_2500.x * 3.5449078083038330078125f, _2478.yzw * _2500.y) * exp(_2473.x * 0.282094776630401611328125f);
        for (uint _2517 = 0u; _2517 < _2464;) {
          _2514 = mul(float4x4(_2514, float4(_2514.yx, 0.0f, 0.0f), float4(_2514.z, 0.0f, _2514.x, 0.0f), float4(_2514.w, 0.0f, 0.0f, _2514.x)) * 0.282094776630401611328125f, _2514);
          _2517++;
          continue;
        }
        float4x4 _2538 = float4x4(_2514, float4(_2514.yx, 0.0f, 0.0f), float4(_2514.z, 0.0f, _2514.x, 0.0f), float4(_2514.w, 0.0f, 0.0f, _2514.x)) * 0.282094776630401611328125f;
        float4 _2548 = mul(_2538, float4(_2407.w * 1.1283791065216064453125f, _2407.y * (-0.977204978466033935546875f), _2407.z * 0.977204978466033935546875f, _2407.x * (-0.977204978466033935546875f)));
        float4 _2568 = mul(_2538, float4(_2427.w * 1.1283791065216064453125f, _2427.y * (-0.977204978466033935546875f), _2427.z * 0.977204978466033935546875f, _2427.x * (-0.977204978466033935546875f)));
        float4 _2588 = mul(_2538, float4(_2447.w * 1.1283791065216064453125f, _2447.y * (-0.977204978466033935546875f), _2447.z * 0.977204978466033935546875f, _2447.x * (-0.977204978466033935546875f)));
        _2602 = float4(_2548.x * 0.886226952075958251953125f, _2548.w * (-1.02332675457000732421875f), _2548.y * (-1.02332675457000732421875f), _2548.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2603 = float4(_2568.x * 0.886226952075958251953125f, _2568.w * (-1.02332675457000732421875f), _2568.y * (-1.02332675457000732421875f), _2568.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2604 = float4(_2588.x * 0.886226952075958251953125f, _2588.w * (-1.02332675457000732421875f), _2588.y * (-1.02332675457000732421875f), _2588.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _2602 = _2407;
        _2603 = _2427;
        _2604 = _2447;
      }
      _2605 = _2602;
      _2606 = _2603;
      _2607 = _2604;
    }
    else {
      _2605 = _2407;
      _2606 = _2427;
      _2607 = _2447;
    }
    float _2614 = max(0.0f, dot(_2605.xyz * _2030.x, _447) + _2605.w);
    float _2621 = max(0.0f, dot(_2606.xyz * _2030.y, _447) + _2606.w);
    float _2628 = max(0.0f, dot(_2607.xyz * _2030.z, _447) + _2607.w);
    float3 _2638 = reflect(_513, _447);
    float _2646 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_698, 0.001000000047497451305389404296875f))));
    float2 _2650 = floor(_460 * _29_m0.w);
    float _2667 = floor(_492 - _29_m2.y);
    float _2671 = clamp(_2667, 0.0f, _29_m1.x - 1.0f);
    uint _2681 = (_2667 <= _2671) ? (_26.Load(uint(_9_m21.z + int(_2650.x + (_2650.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_2671)) * 4 + 0)) : 0u;
    float _2684 = dot(float4(_2614, _2621, _2628, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2686;
    float _2689;
    uint _2691;
    _2686 = 0.0f.xxx;
    _2689 = 1.0f;
    _2691 = _2681;
    uint _2692;
    float3 _2687;
    float _2690;
    bool _2694;
    [loop] for (;;) {
      bool _2693 = _2691 != 0u;
      _2694 = _2689 > 0.00999999977648258209228515625f;
      if (_2693 && _2694) {
        uint _2698 = firstbitlow(_2691);
        _2692 = _2691 ^ (1u << (_2698 & 31u));
        float3 _2718 = float3(dot(_29_m4[_2698]._m2, _489), dot(_29_m4[_2698]._m3, _489), dot(_29_m4[_2698]._m4, _489));
        float3 _2719 = abs(_2718);
        if (all(bool3(_2719.x <= _29_m4[_2698]._m1.xyz.x, _2719.y <= _29_m4[_2698]._m1.xyz.y, _2719.z <= _29_m4[_2698]._m1.xyz.z))) {
          float3 _2728 = _29_m4[_2698]._m1.xyz * 0.100000001490116119384765625f;
          float3 _2730 = _2719 * 0.100000001490116119384765625f;
          float3 _2731 = _2730 * _2730;
          float3 _2734 = (_29_m4[_2698]._m1.xyz - _2719) * _29_m4[_2698]._m5.xyz;
          float3 _2782;
          [branch] if (_29_m4[_2698]._m6.x == 1.0f) {
            float3 _2767 = float3(dot(_29_m4[_2698]._m2.xyz, _2638), dot(_29_m4[_2698]._m3.xyz, _2638), dot(_29_m4[_2698]._m4.xyz, _2638));
            float3 _2769 = (_29_m4[_2698]._m1.xyz - _2718) / _2767;
            float3 _2772 = ((-_29_m4[_2698]._m1.xyz) - _2718) / _2767;
            bool3 _2773 = bool3(_2767.x > 0.0f.xxx.x, _2767.y > 0.0f.xxx.y, _2767.z > 0.0f.xxx.z);
            float3 _2774 = float3(_2773.x ? _2769.x : _2772.x, _2773.y ? _2769.y : _2772.y, _2773.z ? _2769.z : _2772.z);
            _2782 = _2718 + (_2767 * min(min(_2774.x, _2774.y), _2774.z));
          }
          else {
            _2782 = _2638;
          }
          float3 _2783 = normalize(_2782);
          float3 _2786 = float3(int3(sign(_2783)));
          float3 _2789 = _2783 / dot(_2783, _2786).xxx;
          float3 _2803;
          if (_2789.z < 0.0f) {
            float3 _2794 = abs(_2789);
            float2 _2801 = _2786.xy * float2(1.0f - _2794.y, 1.0f - _2794.x);
            _2803 = float3(_2801.x, _2801.y, _2789.z);
          } else {
            _2803 = _2789;
          }
          float _2827 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_2698]._m0, float4(_447, 1.0f))));
          float _2840 = clamp((min(_2734.x, min(_2734.y, _2734.z)) * _29_m4[_2698]._m6.y) + ((((((_2728 * _2728).x - ((_2731.x + _2731.y) + _2731.z)) * _29_m4[_2698]._m5.x) * _29_m4[_2698]._m5.x) * (1.0f - _29_m4[_2698]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_2698]._m6.w;
          _2687 = _2686 + ((((_24.SampleLevel(_17, float3((((_2803.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_2698]._m1.w), _2646).xyz * _29_m4[_2698]._m5.w) * ((((((clamp(abs(_2684 / _2827), 0.0f, 1.0f) * 2.0f) + _2684) / (2.0f + _2827)) - 1.0f) * _9_m23.w) + 1.0f)) * _2840) * _2689);
          _2690 = _2689 * (1.0f - _2840);
        } else {
          _2687 = _2686;
          _2690 = _2689;
        }
        _2686 = _2687;
        _2689 = _2690;
        _2691 = _2692;
        continue;
      } else {
        break;
      }
    }
    float3 _2908;
    if (_2694) {
      float3 _2848 = normalize(_2638);
      float3 _2851 = float3(int3(sign(_2848)));
      float3 _2854 = _2848 / dot(_2848, _2851).xxx;
      float3 _2868;
      if (_2854.z < 0.0f) {
        float3 _2859 = abs(_2854);
        float2 _2866 = _2851.xy * float2(1.0f - _2859.y, 1.0f - _2859.x);
        _2868 = float3(_2866.x, _2866.y, _2854.z);
      } else {
        _2868 = _2854;
      }
      float _2894 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_447, 1.0f))));
      _2908 = _2686 + ((_24.SampleLevel(_17, float3((((_2868.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _2646).xyz * ((((((clamp(abs(_2684 / _2894), 0.0f, 1.0f) * 2.0f) + _2684) / (2.0f + _2894)) - 1.0f) * _9_m23.w) + 1.0f)) * _2689);
    } else {
      _2908 = _2686;
    }
    float3 _2914 = (_2908 * _9_m23.z) * _9_m22.y;
    float3 _2937;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _2931 = _22.SampleBias(_15, _4, _9_m16);
      float _2932 = _2931.x;
      _2937 = (_21.SampleBias(_15, _4, _9_m16).xyz * _2932) + (_2914 * (1.0f - _2932));
    }
    else {
      _2937 = _2914;
    }
    _2941 = (((float3(_2614, _2621, _2628) * _700) * _9_m22.x) * _1086) + ((_2937 * _720) * _1085);
  }
  else {
    float3 _1106 = (_485 + (_447 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_460 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1116 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1125 = _1106 - (_9_m108.xyz + (_1116 * (-_9_m110.w)));
    float _1140 = max(min(max((max(abs(_1125.x), abs(_1125.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1125.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1442;
    float4 _1443;
    float4 _1444;
    float _1445;
    float _1446;
    if ((_9_m108.w != 0.0f) && (_1140 < 1.0f)) {
      float3 _1153 = _1106 - (_9_m108.xyz + (_1116 * (-_9_m110.y)));
      float _1167 = max(clamp((max(abs(_1153.x), abs(_1153.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1153.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _1243;
      float4 _1244;
      float4 _1245;
      float4 _1246;
      if (_1167 < 1.0f) {
        float3 _1176 = ((_1106 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1178 = _1176 - floor(_1176);
        float4 _1182 = _52.SampleLevel(_16, _1178, 0.0f);
        float _1183 = 1.0f - _1167;
        float _1187 = _9_m109.y * 0.5f;
        float _1192 = _1178.x;
        float _1193 = clamp(_1178.y, _1187, 1.0f - _1187) * 0.3333333432674407958984375f;
        float _1194 = _1178.z;
        float4 _1197 = _53.SampleLevel(_15, float3(_1192, _1193, _1194), 0.0f);
        float _1213 = _1182.x;
        float _1223 = _1182.y;
        float _1233 = _1182.z;
        _1243 = _1140 + (_1197.w * _1183);
        _1244 = float4(((_53.SampleLevel(_15, float3(_1192, _1193 + 0.666666686534881591796875f, _1194), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1233, _1233) * _1183;
        _1245 = float4(((_53.SampleLevel(_15, float3(_1192, _1193 + 0.3333333432674407958984375f, _1194), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1223, _1223) * _1183;
        _1246 = float4(((_1197.xyz * 4.0f) - 2.0f.xxx) * _1213, _1213) * _1183;
      } else {
        _1243 = _1140;
        _1244 = 0.0f.xxxx;
        _1245 = 0.0f.xxxx;
        _1246 = 0.0f.xxxx;
      }
      float3 _1252 = _1106 - (_9_m108.xyz + (_1116 * (-_9_m110.z)));
      float _1266 = max(clamp((max(abs(_1252.x), abs(_1252.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1252.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _1346;
      float4 _1347;
      float4 _1348;
      float4 _1349;
      if (_1266 < 1.0f) {
        float3 _1275 = ((_1106 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1277 = _1275 - floor(_1275);
        float4 _1281 = _54.SampleLevel(_16, _1277, 0.0f);
        float _1283 = _1167 * (1.0f - _1266);
        float _1287 = _9_m109.y * 0.5f;
        float _1292 = _1277.x;
        float _1293 = clamp(_1277.y, _1287, 1.0f - _1287) * 0.3333333432674407958984375f;
        float _1294 = _1277.z;
        float4 _1297 = _55.SampleLevel(_15, float3(_1292, _1293, _1294), 0.0f);
        float _1313 = _1281.x;
        float _1324 = _1281.y;
        float _1335 = _1281.z;
        _1346 = _1243 + (_1297.w * _1283);
        _1347 = _1244 + (float4(((_55.SampleLevel(_15, float3(_1292, _1293 + 0.666666686534881591796875f, _1294), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1335, _1335) * _1283);
        _1348 = _1245 + (float4(((_55.SampleLevel(_15, float3(_1292, _1293 + 0.3333333432674407958984375f, _1294), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1324, _1324) * _1283);
        _1349 = _1246 + (float4(((_1297.xyz * 4.0f) - 2.0f.xxx) * _1313, _1313) * _1283);
      } else {
        _1346 = _1243;
        _1347 = _1244;
        _1348 = _1245;
        _1349 = _1246;
      }
      float4 _1432;
      float4 _1433;
      float4 _1434;
      float _1435;
      if (_1266 > 0.0f) {
        float3 _1358 = ((_1106 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1361 = _9_m109.xyz * 0.5f;
        float3 _1363 = clamp(_1358 - floor(_1358), _1361, 1.0f.xxx - _1361);
        float4 _1367 = _56.SampleLevel(_16, _1363, 0.0f);
        float _1369 = _1266 * (1.0f - _1140);
        float _1373 = _9_m109.y * 0.5f;
        float _1378 = _1363.x;
        float _1379 = clamp(_1363.y, _1373, 1.0f - _1373) * 0.3333333432674407958984375f;
        float _1380 = _1363.z;
        float4 _1383 = _57.SampleLevel(_15, float3(_1378, _1379, _1380), 0.0f);
        float _1399 = _1367.x;
        float _1410 = _1367.y;
        float _1421 = _1367.z;
        _1432 = _1347 + (float4(((_57.SampleLevel(_15, float3(_1378, _1379 + 0.666666686534881591796875f, _1380), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1421, _1421) * _1369);
        _1433 = _1348 + (float4(((_57.SampleLevel(_15, float3(_1378, _1379 + 0.3333333432674407958984375f, _1380), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1410, _1410) * _1369);
        _1434 = _1349 + (float4(((_1383.xyz * 4.0f) - 2.0f.xxx) * _1399, _1399) * _1369);
        _1435 = _1346 + (_1383.w * _1369);
      } else {
        _1432 = _1347;
        _1433 = _1348;
        _1434 = _1349;
        _1435 = _1346;
      }
      float _1438 = clamp((_1435 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1442 = _1432;
      _1443 = _1433;
      _1444 = _1434;
      _1445 = _1438 - _1140;
      _1446 = (_1438 + _1140) * 0.5f;
    } else {
      _1442 = 0.0f.xxxx;
      _1443 = 0.0f.xxxx;
      _1444 = 0.0f.xxxx;
      _1445 = 0.0f;
      _1446 = 1.0f;
    }
    float4 _1466 = _1444 + float4(_9_m111.x * _1446, (_9_m111.y * _1446) + ((_9_m111.w * _1445) * 0.5f), _9_m111.z * _1446, (_9_m111.w * _1446) + ((_9_m111.y * _1445) * 0.375f));
    float4 _1486 = _1443 + float4(_9_m112.x * _1446, (_9_m112.y * _1446) + ((_9_m112.w * _1445) * 0.5f), _9_m112.z * _1446, (_9_m112.w * _1446) + ((_9_m112.y * _1445) * 0.375f));
    float4 _1506 = _1442 + float4(_9_m113.x * _1446, (_9_m113.y * _1446) + ((_9_m113.w * _1445) * 0.5f), _9_m113.z * _1446, (_9_m113.w * _1446) + ((_9_m113.y * _1445) * 0.375f));
    float4 _1664;
    float4 _1665;
    float4 _1666;
    [branch] if (all(bool2(_473.x >= 0.0f.xx.x, _473.y >= 0.0f.xx.y))) {
      float4 _1514 = _51.SampleLevel(_15, _473, 0.0f);
      float4 _1515 = abs(_1514);
      float4 _1661;
      float4 _1662;
      float4 _1663;
      [branch] if (any(bool4(_1515.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1515.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1515.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1515.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _1521 = length(_1514.yzw);
        uint _1523;
        float _1526;
        _1523 = 0u;
        _1526 = 1.0f;
        for (float _1528 = _1521; _1528 > 4.599999904632568359375f;) {
          _1523++;
          _1526 *= 0.5f;
          _1528 *= 0.5f;
          continue;
        }
        float4 _1532 = _1514 * _1526;
        float4 _1537 = float4(0.0f, _1532.yzw);
        float2 _1559 = (_50.SampleLevel(_15, float2(((((length(_1537) * _49_m3.x) + _49_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _49_m2.xy) + _49_m2.zw;
        float4 _1573;
        _1573 = float4(_1559.x * 3.5449078083038330078125f, _1537.yzw * _1559.y) * exp(_1532.x * 0.282094776630401611328125f);
        for (uint _1576 = 0u; _1576 < _1523;) {
          _1573 = mul(float4x4(_1573, float4(_1573.yx, 0.0f, 0.0f), float4(_1573.z, 0.0f, _1573.x, 0.0f), float4(_1573.w, 0.0f, 0.0f, _1573.x)) * 0.282094776630401611328125f, _1573);
          _1576++;
          continue;
        }
        float4x4 _1597 = float4x4(_1573, float4(_1573.yx, 0.0f, 0.0f), float4(_1573.z, 0.0f, _1573.x, 0.0f), float4(_1573.w, 0.0f, 0.0f, _1573.x)) * 0.282094776630401611328125f;
        float4 _1607 = mul(_1597, float4(_1466.w * 1.1283791065216064453125f, _1466.y * (-0.977204978466033935546875f), _1466.z * 0.977204978466033935546875f, _1466.x * (-0.977204978466033935546875f)));
        float4 _1627 = mul(_1597, float4(_1486.w * 1.1283791065216064453125f, _1486.y * (-0.977204978466033935546875f), _1486.z * 0.977204978466033935546875f, _1486.x * (-0.977204978466033935546875f)));
        float4 _1647 = mul(_1597, float4(_1506.w * 1.1283791065216064453125f, _1506.y * (-0.977204978466033935546875f), _1506.z * 0.977204978466033935546875f, _1506.x * (-0.977204978466033935546875f)));
        _1661 = float4(_1607.x * 0.886226952075958251953125f, _1607.w * (-1.02332675457000732421875f), _1607.y * (-1.02332675457000732421875f), _1607.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1662 = float4(_1627.x * 0.886226952075958251953125f, _1627.w * (-1.02332675457000732421875f), _1627.y * (-1.02332675457000732421875f), _1627.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1663 = float4(_1647.x * 0.886226952075958251953125f, _1647.w * (-1.02332675457000732421875f), _1647.y * (-1.02332675457000732421875f), _1647.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _1661 = _1466;
        _1662 = _1486;
        _1663 = _1506;
      }
      _1664 = _1661;
      _1665 = _1662;
      _1666 = _1663;
    }
    else {
      _1664 = _1466;
      _1665 = _1486;
      _1666 = _1506;
    }
    float _1671 = max(0.0f, dot(_1664.xyz, _447) + _1664.w);
    float _1676 = max(0.0f, dot(_1665.xyz, _447) + _1665.w);
    float _1681 = max(0.0f, dot(_1666.xyz, _447) + _1666.w);
    float3 _1705 = reflect(_513, _447);
    float _1713 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_698, 0.001000000047497451305389404296875f))));
    float2 _1717 = floor(_460 * _29_m0.w);
    float _1734 = floor(_492 - _29_m2.y);
    float _1738 = clamp(_1734, 0.0f, _29_m1.x - 1.0f);
    uint _1748 = (_1734 <= _1738) ? (_26.Load(uint(_9_m21.z + int(_1717.x + (_1717.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_1738)) * 4 + 0)) : 0u;
    float _1751 = dot(float4(_1671, _1676, _1681, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1753;
    float _1756;
    uint _1758;
    _1753 = 0.0f.xxx;
    _1756 = 1.0f;
    _1758 = _1748;
    uint _1759;
    float3 _1754;
    float _1757;
    bool _1761;
    [loop] for (;;) {
      bool _1760 = _1758 != 0u;
      _1761 = _1756 > 0.00999999977648258209228515625f;
      if (_1760 && _1761) {
        uint _1765 = firstbitlow(_1758);
        _1759 = _1758 ^ (1u << (_1765 & 31u));
        float3 _1785 = float3(dot(_29_m4[_1765]._m2, _489), dot(_29_m4[_1765]._m3, _489), dot(_29_m4[_1765]._m4, _489));
        float3 _1786 = abs(_1785);
        if (all(bool3(_1786.x <= _29_m4[_1765]._m1.xyz.x, _1786.y <= _29_m4[_1765]._m1.xyz.y, _1786.z <= _29_m4[_1765]._m1.xyz.z))) {
          float3 _1795 = _29_m4[_1765]._m1.xyz * 0.100000001490116119384765625f;
          float3 _1797 = _1786 * 0.100000001490116119384765625f;
          float3 _1798 = _1797 * _1797;
          float3 _1801 = (_29_m4[_1765]._m1.xyz - _1786) * _29_m4[_1765]._m5.xyz;
          float3 _1849;
          [branch] if (_29_m4[_1765]._m6.x == 1.0f) {
            float3 _1834 = float3(dot(_29_m4[_1765]._m2.xyz, _1705), dot(_29_m4[_1765]._m3.xyz, _1705), dot(_29_m4[_1765]._m4.xyz, _1705));
            float3 _1836 = (_29_m4[_1765]._m1.xyz - _1785) / _1834;
            float3 _1839 = ((-_29_m4[_1765]._m1.xyz) - _1785) / _1834;
            bool3 _1840 = bool3(_1834.x > 0.0f.xxx.x, _1834.y > 0.0f.xxx.y, _1834.z > 0.0f.xxx.z);
            float3 _1841 = float3(_1840.x ? _1836.x : _1839.x, _1840.y ? _1836.y : _1839.y, _1840.z ? _1836.z : _1839.z);
            _1849 = _1785 + (_1834 * min(min(_1841.x, _1841.y), _1841.z));
          }
          else {
            _1849 = _1705;
          }
          float3 _1850 = normalize(_1849);
          float3 _1853 = float3(int3(sign(_1850)));
          float3 _1856 = _1850 / dot(_1850, _1853).xxx;
          float3 _1870;
          if (_1856.z < 0.0f) {
            float3 _1861 = abs(_1856);
            float2 _1868 = _1853.xy * float2(1.0f - _1861.y, 1.0f - _1861.x);
            _1870 = float3(_1868.x, _1868.y, _1856.z);
          } else {
            _1870 = _1856;
          }
          float _1894 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_1765]._m0, float4(_447, 1.0f))));
          float _1907 = clamp((min(_1801.x, min(_1801.y, _1801.z)) * _29_m4[_1765]._m6.y) + ((((((_1795 * _1795).x - ((_1798.x + _1798.y) + _1798.z)) * _29_m4[_1765]._m5.x) * _29_m4[_1765]._m5.x) * (1.0f - _29_m4[_1765]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_1765]._m6.w;
          _1754 = _1753 + ((((_24.SampleLevel(_17, float3((((_1870.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_1765]._m1.w), _1713).xyz * _29_m4[_1765]._m5.w) * ((((((clamp(abs(_1751 / _1894), 0.0f, 1.0f) * 2.0f) + _1751) / (2.0f + _1894)) - 1.0f) * _9_m23.w) + 1.0f)) * _1907) * _1756);
          _1757 = _1756 * (1.0f - _1907);
        } else {
          _1754 = _1753;
          _1757 = _1756;
        }
        _1753 = _1754;
        _1756 = _1757;
        _1758 = _1759;
        continue;
      } else {
        break;
      }
    }
    float3 _1975;
    if (_1761) {
      float3 _1915 = normalize(_1705);
      float3 _1918 = float3(int3(sign(_1915)));
      float3 _1921 = _1915 / dot(_1915, _1918).xxx;
      float3 _1935;
      if (_1921.z < 0.0f) {
        float3 _1926 = abs(_1921);
        float2 _1933 = _1918.xy * float2(1.0f - _1926.y, 1.0f - _1926.x);
        _1935 = float3(_1933.x, _1933.y, _1921.z);
      } else {
        _1935 = _1921;
      }
      float _1961 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_447, 1.0f))));
      _1975 = _1753 + ((_24.SampleLevel(_17, float3((((_1935.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _1713).xyz * ((((((clamp(abs(_1751 / _1961), 0.0f, 1.0f) * 2.0f) + _1751) / (2.0f + _1961)) - 1.0f) * _9_m23.w) + 1.0f)) * _1756);
    } else {
      _1975 = _1753;
    }
    float3 _1981 = (_1975 * _9_m23.z) * _9_m22.y;
    float3 _2004;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _1998 = _22.SampleBias(_15, _4, _9_m16);
      float _1999 = _1998.x;
      _2004 = (_21.SampleBias(_15, _4, _9_m16).xyz * _1999) + (_1981 * (1.0f - _1999));
    }
    else {
      _2004 = _1981;
    }
    _2941 = (((float3(_1671, _1676, _1681) * (_700 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_450, _451, _452).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _451.xxx) * _452) * _453))) * _9_m22.x) * _1086) + ((_2004 * _720) * _1085);
  }
  float4 _2943 = float4(_1046.x, _1046.y, _1046.z, _1046.w) + float4(_2941.x, _2941.y, _2941.z, 0.0f.xxxx.w);
  float _2961 = _485.y * _9_m46.w;
  float _2966 = max(0.00999999977648258209228515625f, _2961 + _9_m47.w);
  float3 _2980 = exp(_9_m45.xyz * ((-max(0.0f, (_512 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2966)) / _2966) * exp(_2961 + _9_m48.w))));
  float _2983 = dot(_513, _9_m44.xyz);
  float _2989 = _9_m45.w * _9_m45.w;
  float _2993 = (1.0f + _2989) - ((2.0f * _9_m45.w) * _2983);
  float3 _3317;
  float _3318;
  if (_9_m55.z > 0.0f) {
    uint3 _3145 = (uint3(int3(_327, _328, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _3146 = _3145.y;
    uint _3147 = _3145.z;
    uint _3150 = _3145.x + (_3146 * _3147);
    uint _3152 = _3146 + (_3147 * _3150);
    uint _3154 = _3147 + (_3150 * _3152);
    uint _3156 = _3150 + (_3152 * _3154);
    float _3180 = dot(_513, -_7_m0[2].xyz);
    float3 _3188 = _485 - _7_m11.xyz;
    float _3190 = (_9_m55.w * ((_3180 > 5.9604644775390625e-08f) ? (1.0f / _3180) : 0.0f)) * (1.0f / _512);
    float _3191 = _3188.y;
    float _3192 = _3190 * _3191;
    float _3194 = _7_m11.y + _3192;
    float _3195 = _3191 - _3192;
    float _3197 = (1.0f - _3190) * _512;
    float _3211 = max(-127.0f, _9_m49.z * _3195);
    float _3235 = max(-127.0f, _9_m52.x * _3195);
    float _3246 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3194 - _9_m49.x)))) * ((abs(_3211) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3211)) / _3211) : (0.693147182464599609375f - (0.2402265071868896484375f * _3211)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3194 - _9_m52.z)))) * ((abs(_3235) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3235)) / _3235) : (0.693147182464599609375f - (0.2402265071868896484375f * _3235))));
    float _3268 = clamp((_512 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _3271 = clamp((max(clamp(exp2(-(_3246 * _3197)), 0.0f, 1.0f), _9_m51.w) + clamp((_512 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3268, 0.0f, 1.0f);
    float4 _3311 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _47.SampleLevel(_15, float3((_460 + ((((float3(uint3(_3156, _3152 + (_3154 * _3156), _318) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_492 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_492 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _3313 = _3311.w;
    _3317 = _3311.xyz + (((_9_m51.xyz * (1.0f - _3271)) + (((_9_m54.xyz * pow(clamp(dot(_511, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3246 * max(_3197 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3268))) * _3313);
    _3318 = _3313 * _3271;
  } else {
    float3 _3021 = _485 - _7_m11.xyz;
    float _3023 = _3021.y;
    float _3037 = max(-127.0f, _9_m49.z * _3023);
    float _3061 = max(-127.0f, _9_m52.x * _3023);
    float _3072 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3037) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3037)) / _3037) : (0.693147182464599609375f - (0.2402265071868896484375f * _3037)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3061) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3061)) / _3061) : (0.693147182464599609375f - (0.2402265071868896484375f * _3061))));
    float _3094 = clamp((_512 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _3097 = clamp((max(clamp(exp2(-(_3072 * _512)), 0.0f, 1.0f), _9_m51.w) + clamp((_512 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3094, 0.0f, 1.0f);
    _3317 = (_9_m51.xyz * (1.0f - _3097)) + (((_9_m54.xyz * pow(clamp(dot(_511, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3072 * max(_512 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3094));
    _3318 = _3097;
  }
  float3 _3321 = _2980 * _3318;
  float3 _3323 = (clamp(_2943.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _3321) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2983 * _2983)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2989) / max((12.56637096405029296875f * _2993) * sqrt(_2993), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2980)) * _3318) + _3317);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _3323 = (_3323 * 0.65f) + (clamp(_2943.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _3325 = float4(_3323.x, _3323.y, _3323.z, _2943.w);
  _3325.w = dot(_3321, 0.3333333432674407958984375f.xxx);
  _5 = _3325;
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

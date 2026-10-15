#include "./renodx_injection.hlsli"

// Ported from the native 0xD7AD2D72 Vulkan dump.
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

static uint _322;

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

[[vk::binding(35, 3)]] cbuffer _10_11 : register(b35, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(41, 3)]] ByteAddressBuffer _26 : register(t41, space3);
[[vk::binding(40, 3)]] cbuffer _27_29 : register(b40, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  _28 _29_m4[32] : packoffset(c4);
};

[[vk::binding(36, 3)]] cbuffer _30_31 : register(b36, space3) {
  float4 _31_m0 : packoffset(c0);
  float4 _31_m1 : packoffset(c1);
  float4 _31_m2 : packoffset(c2);
  float4 _31_m3 : packoffset(c3);
  float4 _31_m4 : packoffset(c4);
  uint4 _31_m5 : packoffset(c5);
  float4 _31_m6[2048] : packoffset(c6);
};

[[vk::binding(37, 3)]] cbuffer _32_33 : register(b37, space3) {
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

[[vk::binding(32, 3)]] cbuffer _37_38 : register(b32, space3) {
  column_major float4x4 _38_m0 : packoffset(c0);
  float4 _38_m1 : packoffset(c4);
};

[[vk::binding(34, 3)]] cbuffer _44_45 : register(b34, space3) {
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

[[vk::binding(1, 3)]] SamplerState _14 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _15 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _18 : register(s3, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _20 : register(t29, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _21 : register(t11, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _22 : register(t12, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _23 : register(t23, space3);
[[vk::binding(13, 3)]] Texture2DArray<float4> _24 : register(t13, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _34 : register(t10, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _35 : register(t30, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _36 : register(t7, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _40 : register(t14, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _41 : register(t15, space3);
[[vk::binding(8, 3)]] Texture2DArray<float4> _42 : register(t8, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _43 : register(t9, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _46 : register(t28, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _47 : register(t22, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _50 : register(t31, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _51 : register(t6, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _52 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _53 : register(t18, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _54 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _55 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _56 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _57 : register(t16, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _58 : register(t5, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _59 : register(t27, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _60 : register(t26, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _61 : register(t25, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _62 : register(t24, space3);

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
  uint2 _328 = uint2(gl_FragCoord.xy);
  int _331 = int(_328.x);
  int _332 = int(_328.y);
  int2 _334 = int3(_331, _332, 0).xy;
  float4 _336 = _59.Load(int3(_334, 0));
  float4 _338 = _60.Load(int3(_334, 0));
  float4 _340 = _61.Load(int3(_334, 0));
  uint _344 = uint(round(_340.w * 255.0f));
  float3 _450;
  float3 _451;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float3 _458;
  uint _459;
  float _460;
  bool _461;
  [branch] if ((_344 & 128u) != 0u) {
    float2 _392 = (_336.xy * 2.0f) - 1.0f.xx;
    float _396 = 1.0f - dot(1.0f.xx, abs(_392));
    float3 _398 = float3(_392.x, _396, _392.y);
    float3 _410;
    if (_396 < 0.0f) {
      float2 _405 = _398.xz;
      bool2 _406 = bool2(_405.x >= 0.0f.xx.x, _405.y >= 0.0f.xx.y);
      float2 _408 = (1.0f.xx - abs(_398.zx)) * float2(_406.x ? 1.0f.xx.x : (-1.0f).xx.x, _406.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _410 = float3(_408.x, _398.y, _408.y);
    } else {
      _410 = _398;
    }
    float2 _415 = (_338.xy * 2.0f) - 1.0f.xx;
    float _419 = 1.0f - dot(1.0f.xx, abs(_415));
    float3 _421 = float3(_415.x, _419, _415.y);
    float3 _433;
    if (_419 < 0.0f) {
      float2 _428 = _421.xz;
      bool2 _429 = bool2(_428.x >= 0.0f.xx.x, _428.y >= 0.0f.xx.y);
      float2 _431 = (1.0f.xx - abs(_421.zx)) * float2(_429.x ? 1.0f.xx.x : (-1.0f).xx.x, _429.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _433 = float3(_431.x, _421.y, _431.y);
    } else {
      _433 = _421;
    }
    _450 = _340.xyz;
    _451 = normalize(_433);
    _452 = _338.z;
    _453 = _336.z;
    _454 = 0.0f;
    _455 = 0.0f;
    _456 = 0.0f;
    _457 = 0.0f;
    _458 = normalize(_410);
    _459 = uint(int((round(_336.w * 3.0f) * 4.0f) + round(_338.w * 3.0f)));
    _460 = float(_344 & 127u) * 0.0078740157186985015869140625f;
    _461 = true;
  }
  else {
    float2 _354 = (_338.xy * 2.0f) - 1.0f.xx;
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
    uint _380 = clamp(_344 - 1u, 0u, 62u);
    bool4 _381 = ((_344 > 0u) && (_344 <= 63u)).xxxx;
    float4 _384 = float4(_381.x ? _11_m0[_380].x : 0.0f.xxxx.x, _381.y ? _11_m0[_380].y : 0.0f.xxxx.y, _381.z ? _11_m0[_380].z : 0.0f.xxxx.z, _381.w ? _11_m0[_380].w : 0.0f.xxxx.w);
    _450 = _340.xyz;
    _451 = normalize(_372);
    _452 = _338.z;
    _453 = _336.y;
    _454 = _384.y;
    _455 = _384.z;
    _456 = _384.x * _336.x;
    _457 = _384.w;
    _458 = 0.0f.xxx;
    _459 = _344;
    _460 = 0.0f;
    _461 = false;
  }
  float2 _464 = float2(_328);
  float2 _477 = gl_FragCoord.xy * _9_m0.zw;
  float2 _479 = (_477 * 2.0f) - 1.0f.xx;
  float4 _482 = float4(_479, _20.SampleLevel(_14, (_464 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _482.y = -_479.y;
  float4 _485 = mul(_7_m6, _482);
  float3 _489 = _485.xyz / _485.w.xxx;
  float4 _493 = float4(_489, 1.0f);
  float _496 = abs(mul(_7_m0, _493).z);
  float3 _511;
  do {
    if (_9_m4.w == 0.0f) {
      _511 = _7_m11.xyz - _489;
      break;
    } else {
      _511 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _512 = dot(_511, _511);
  float _514 = rsqrt(max(_512, 9.9999999392252902907785028219223e-09f));
  float3 _515 = _511 * _514;
  float _516 = _512 * _514;
  float3 _517 = -_515;
  float2 _530;
  if (_9_m132.x > 0.00048828125f) {
    _530 = _58.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _530 = 1.0f.xx;
  }
  float _531 = dot(_451, float3(0.0f, -1.0f, 0.0f));
  float3 _586;
  [branch] if (_9_m124.x > 0.5f) {
    float _558 = abs(_451.x);
    float _560 = abs(_451.y);
    float _562 = abs(_451.z);
    float3 _567 = float3(_558, _560, _562) * (1.0f / ((_558 + _560) + _562));
    _586 = ((((float3(0.0f, 0.0f, 1.0f) * _567.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _567.y)) + (float3(1.0f, 0.0f, 0.0f) * _567.z)) * ((_40.SampleLevel(_16, _489 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_531)));
  }
  else {
    _586 = 0.0f.xxx;
  }
  float4 _600 = mul(_38_m0, float4((_489 + ((((_451 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_531, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _531), 0.100000001490116119384765625f, 1.0f)))) + _586, 1.0f));
  float2 _603 = (_600.xy * 0.5f) + 0.5f.xx;
  float4 _604 = float4(_603.x, _603.y, _600.z, _600.w);
  _604.y = 1.0f - _603.y;
  float _625;
  [branch] if (_9_m124.y > 0.5f) {
    _625 = _36.SampleCmpLevelZero(_18, (_604.xy + _38_m1.xy).xy, max(_600.z, 0.00048828125f));
  }
  else {
    _625 = 1.0f;
  }
  float _630 = lerp(_9_m128.w, 1.0f, clamp(_451.y, 0.0f, 1.0f));
  float2 _639 = abs(_489.xz - _7_m11.xz);
  float _642 = max(_639.x, _639.y);
  float _660 = min(_530.x, _530.y);
  float2 _662 = _530 * (1.0f - lerp(lerp(_9_m128.z * _630, 1.0f, lerp(_630 * _625, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _642))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _642)));
  float _663 = _662.x;
  float _664 = 1.0f - _452;
  float _672 = clamp(clamp((_664 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f), 0.0f, 1.0f);
  float _674 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _531);
  float _681 = lerp(1.0f, 0.25f, (_9_m120.x * _672) * _674);
  float _697 = (1.0f - lerp(_664, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _672) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_664)), 0.0f, 1.0f), _664, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _674) * (1.0f - _663))) * lerp(1.0f, 0.100000001490116119384765625f, max(0.0f, smoothstep(0.0f, 0.0500000007450580596923828125f, 0.0f)));
  float _702 = lerp(lerp(min(1.0f, _697), _697, _660), _452, _663);
  float3 _704 = _450 * lerp(lerp(min(1.0f, _681), _681, _660), 1.0f, _663);
  float _705 = dot(_451, _515);
  float _706 = max(0.0f, _705);
  float4 _708 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _702) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _709 = _708.x;
  float2 _719 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_709 * _709, exp2((-9.27999973297119140625f) * _706)) * _709) + _708.y)) + _708.zw;
  float3 _724 = (0.039999999105930328369140625f.xxx * _719.x) + _719.y.xxx;
  float4 _1050;
  do {
    [branch] if (_33_m4 == 0) {
      _1050 = 0.0f.xxxx;
      break;
    }
    float4 _737 = _34.Load(int3(_334, 0));
    float _738 = _737.x;
    float4 _1049;
    if (_738 > 0.001000000047497451305389404296875f) {
      float3 _749 = reflect(_517, _451);
      float3 _750 = -_31_m0.xyz;
      float _755 = dot(_750, _749);
      float3 _757 = _749 - (_750 * _755);
      bool3 _759 = (_755 < _31_m4.z).xxx;
      float3 _767 = normalize((_750 * _31_m4.z) + ((_757 * rsqrt(max(6.103515625e-05f, dot(_757, _757)))) * _31_m4.y));
      float3 _768 = float3(_759.x ? _767.x : _749.x, _759.y ? _767.y : _749.y, _759.z ? _767.z : _749.z);
      float3 _772 = _768 + _515;
      float3 _776 = _772 * rsqrt(max(6.103515625e-05f, dot(_772, _772)));
      float _778 = clamp(dot(_768, _451), 0.0f, 1.0f);
      float _780 = clamp(dot(_451, _776), 0.0f, 1.0f);
      float _782 = clamp(dot(_515, _776), 0.0f, 1.0f);
      float _784 = clamp(_705, 0.0f, 1.0f);
      float3 _958;
      float3 _959;
      [branch] if (_461) {
        float _888 = _702 * _702;
        float _889 = _888 * _888;
        float _910 = (((_780 * _889) - _780) * _780) + 1.0f;
        float _913 = 1.0f - _782;
        float _914 = _913 * _913;
        float _916 = (_913 * _914) * _914;
        float _940 = 1.0f - _702;
        float _947 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_940 * (1.04997003078460693359375f + (_940 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _940))))));
        float _948 = 1.0f - _947;
        _958 = 0.0f.xxx;
        _959 = min(((0.039999999105930328369140625f.xxx * (1.0f - _916)) + _916.xxx) * ((_889 / (_910 * _910)) * (0.5f / (((_778 * sqrt(((((-_784) * _889) + _784) * _784) + _889)) + (_784 * sqrt(((((-_778) * _889) + _778) * _778) + _889))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_41.SampleLevel(_15, (float2(_784, _702) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_15, (float2(_778, _702) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _947) / _948)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _948)));
      }
      else {
        float _788 = _702 * _702;
        float _789 = _788 * _788;
        float _810 = (((_780 * _789) - _780) * _780) + 1.0f;
        float _813 = 1.0f - _782;
        float _814 = _813 * _813;
        float _816 = (_813 * _814) * _814;
        float _840 = 1.0f - _702;
        float _847 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_840 * (1.04997003078460693359375f + (_840 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _840))))));
        float _848 = 1.0f - _847;
        float _871 = clamp(1.0f - _456, 0.0f, 1.0f);
        float _879 = clamp((dot(_451, _768) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _958 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_454, _455, _456).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _455.xxx) * _456) * lerp((_453 * lerp(1.0f, (_879 * sqrt(_879)) * 1.66666662693023681640625f, _871)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_515, _768), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _871));
        _959 = min(((0.039999999105930328369140625f.xxx * (1.0f - _816)) + _816.xxx) * ((_789 / (_810 * _810)) * (0.5f / (((_778 * sqrt(((((-_784) * _789) + _784) * _784) + _789)) + (_784 * sqrt(((((-_778) * _789) + _778) * _778) + _789))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_41.SampleLevel(_15, (float2(_784, _702) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_15, (float2(_778, _702) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _847) / _848)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _848)));
      }
      float3 _960 = _704 * 1.0f;
      float3 _963 = clamp(_959 * _31_m4.x, 0.0f.xxx, 1000.0f.xxx) * _778;
      float3 _1034;
      [branch] if (_461) {
        float3 _1029;
        do {
          [branch] if (((_459 > 0u) && (_459 <= 15u)) && (_460 > 0.0f)) {
            int _982 = int(clamp(_459 - 1u, 0u, 14u));
            float _1001 = _460 * _45_m0[_982].w;
            float _1006 = float(_982);
            _1029 = float3(_42.SampleLevel(_15, float3((dot(normalize(lerp(_451, _458, _45_m0[_982].x.xxx)), _768) * 0.5f) + 0.5f, _1001, _1006), 0.0f).x, _42.SampleLevel(_15, float3((dot(normalize(lerp(_451, _458, _45_m0[_982].y.xxx)), _768) * 0.5f) + 0.5f, _1001, _1006), 0.0f).y, _42.SampleLevel(_15, float3((dot(normalize(lerp(_451, _458, _45_m0[_982].z.xxx)), _768) * 0.5f) + 0.5f, _1001, _1006), 0.0f).z);
            break;
          }
          _1029 = _778.xxx;
          break;
        } while (false);
        _1034 = _31_m1.xyz * (((_960 * _1029) + _963) + _958);
      }
      else {
        _1034 = ((_963 + _958) + (_960 * _778)) * _31_m1.xyz;
      }
      float3 _1047 = lerp(_1034, _1034 * _35.SampleBias(_15, float2(_738, 0.5f), _9_m16).xyz, (1.0f - _738).xxx) * _46.SampleLevel(_15, _477, 0.0f).x;
      _1049 = float4(_1047.x, _1047.y, _1047.z, 0.0f.xxxx.w);
    } else {
      _1049 = 0.0f.xxxx;
    }
    _1050 = _1049;
    break;
  } while (false);
  float3 _1052 = _453.xxx;
  float3 _1089;
  float3 _1090;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xD7AD2D72:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _1065 = min(_23.SampleBias(_14, _4, _9_m16).x, _453);
    _1089 = clamp((pow(abs(_706 + _1065), exp2(((-16.0f) * _702) - 1.0f)) - 1.0f) + _1065, 0.0f, 1.0f).xxx;
    _1090 = max(_1065.xxx, ((((((_704 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1065) + ((_704 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1065) + ((_704 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1065);
  }
  else {
    _1089 = _1052;
    _1090 = _1052;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _1050.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1089 : 1.0f.xxx;
  // RenoDX code end
  float3 _2945;
  [branch] if (_461) {
    float3 _2034;
    do {
      [branch] if (((_459 > 0u) && (_459 <= 15u)) && (_460 > 0.0f)) {
        uint _2022 = clamp(_459 - 1u, 0u, 14u);
        _2034 = _43.SampleLevel(_15, float3(_460 * _45_m0[_2022].w, 0.5f, float(_2022)), 0.0f).xyz;
        break;
      }
      _2034 = 1.0f.xxx;
      break;
    } while (false);
    float3 _2051 = (_489 + (_451 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_464 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _2061 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _2070 = _2051 - (_9_m108.xyz + (_2061 * (-_9_m110.w)));
    float _2085 = max(min(max((max(abs(_2070.x), abs(_2070.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_2070.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _2387;
    float4 _2388;
    float4 _2389;
    float _2390;
    float _2391;
    if ((_9_m108.w != 0.0f) && (_2085 < 1.0f)) {
      float3 _2098 = _2051 - (_9_m108.xyz + (_2061 * (-_9_m110.y)));
      float _2112 = max(clamp((max(abs(_2098.x), abs(_2098.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_2098.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _2188;
      float4 _2189;
      float4 _2190;
      float4 _2191;
      if (_2112 < 1.0f) {
        float3 _2121 = ((_2051 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2123 = _2121 - floor(_2121);
        float4 _2127 = _52.SampleLevel(_16, _2123, 0.0f);
        float _2128 = 1.0f - _2112;
        float _2132 = _9_m109.y * 0.5f;
        float _2137 = _2123.x;
        float _2138 = clamp(_2123.y, _2132, 1.0f - _2132) * 0.3333333432674407958984375f;
        float _2139 = _2123.z;
        float4 _2142 = _53.SampleLevel(_15, float3(_2137, _2138, _2139), 0.0f);
        float _2158 = _2127.x;
        float _2168 = _2127.y;
        float _2178 = _2127.z;
        _2188 = _2085 + (_2142.w * _2128);
        _2189 = float4(((_53.SampleLevel(_15, float3(_2137, _2138 + 0.666666686534881591796875f, _2139), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2178, _2178) * _2128;
        _2190 = float4(((_53.SampleLevel(_15, float3(_2137, _2138 + 0.3333333432674407958984375f, _2139), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2168, _2168) * _2128;
        _2191 = float4(((_2142.xyz * 4.0f) - 2.0f.xxx) * _2158, _2158) * _2128;
      } else {
        _2188 = _2085;
        _2189 = 0.0f.xxxx;
        _2190 = 0.0f.xxxx;
        _2191 = 0.0f.xxxx;
      }
      float3 _2197 = _2051 - (_9_m108.xyz + (_2061 * (-_9_m110.z)));
      float _2211 = max(clamp((max(abs(_2197.x), abs(_2197.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_2197.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _2291;
      float4 _2292;
      float4 _2293;
      float4 _2294;
      if (_2211 < 1.0f) {
        float3 _2220 = ((_2051 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2222 = _2220 - floor(_2220);
        float4 _2226 = _54.SampleLevel(_16, _2222, 0.0f);
        float _2228 = _2112 * (1.0f - _2211);
        float _2232 = _9_m109.y * 0.5f;
        float _2237 = _2222.x;
        float _2238 = clamp(_2222.y, _2232, 1.0f - _2232) * 0.3333333432674407958984375f;
        float _2239 = _2222.z;
        float4 _2242 = _55.SampleLevel(_15, float3(_2237, _2238, _2239), 0.0f);
        float _2258 = _2226.x;
        float _2269 = _2226.y;
        float _2280 = _2226.z;
        _2291 = _2188 + (_2242.w * _2228);
        _2292 = _2189 + (float4(((_55.SampleLevel(_15, float3(_2237, _2238 + 0.666666686534881591796875f, _2239), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2280, _2280) * _2228);
        _2293 = _2190 + (float4(((_55.SampleLevel(_15, float3(_2237, _2238 + 0.3333333432674407958984375f, _2239), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2269, _2269) * _2228);
        _2294 = _2191 + (float4(((_2242.xyz * 4.0f) - 2.0f.xxx) * _2258, _2258) * _2228);
      } else {
        _2291 = _2188;
        _2292 = _2189;
        _2293 = _2190;
        _2294 = _2191;
      }
      float4 _2377;
      float4 _2378;
      float4 _2379;
      float _2380;
      if (_2211 > 0.0f) {
        float3 _2303 = ((_2051 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _2306 = _9_m109.xyz * 0.5f;
        float3 _2308 = clamp(_2303 - floor(_2303), _2306, 1.0f.xxx - _2306);
        float4 _2312 = _56.SampleLevel(_16, _2308, 0.0f);
        float _2314 = _2211 * (1.0f - _2085);
        float _2318 = _9_m109.y * 0.5f;
        float _2323 = _2308.x;
        float _2324 = clamp(_2308.y, _2318, 1.0f - _2318) * 0.3333333432674407958984375f;
        float _2325 = _2308.z;
        float4 _2328 = _57.SampleLevel(_15, float3(_2323, _2324, _2325), 0.0f);
        float _2344 = _2312.x;
        float _2355 = _2312.y;
        float _2366 = _2312.z;
        _2377 = _2292 + (float4(((_57.SampleLevel(_15, float3(_2323, _2324 + 0.666666686534881591796875f, _2325), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2366, _2366) * _2314);
        _2378 = _2293 + (float4(((_57.SampleLevel(_15, float3(_2323, _2324 + 0.3333333432674407958984375f, _2325), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _2355, _2355) * _2314);
        _2379 = _2294 + (float4(((_2328.xyz * 4.0f) - 2.0f.xxx) * _2344, _2344) * _2314);
        _2380 = _2291 + (_2328.w * _2314);
      } else {
        _2377 = _2292;
        _2378 = _2293;
        _2379 = _2294;
        _2380 = _2291;
      }
      float _2383 = clamp((_2380 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _2387 = _2377;
      _2388 = _2378;
      _2389 = _2379;
      _2390 = _2383 - _2085;
      _2391 = (_2383 + _2085) * 0.5f;
    } else {
      _2387 = 0.0f.xxxx;
      _2388 = 0.0f.xxxx;
      _2389 = 0.0f.xxxx;
      _2390 = 0.0f;
      _2391 = 1.0f;
    }
    float4 _2411 = _2389 + float4(_9_m111.x * _2391, (_9_m111.y * _2391) + ((_9_m111.w * _2390) * 0.5f), _9_m111.z * _2391, (_9_m111.w * _2391) + ((_9_m111.y * _2390) * 0.375f));
    float4 _2431 = _2388 + float4(_9_m112.x * _2391, (_9_m112.y * _2391) + ((_9_m112.w * _2390) * 0.5f), _9_m112.z * _2391, (_9_m112.w * _2391) + ((_9_m112.y * _2390) * 0.375f));
    float4 _2451 = _2387 + float4(_9_m113.x * _2391, (_9_m113.y * _2391) + ((_9_m113.w * _2390) * 0.5f), _9_m113.z * _2391, (_9_m113.w * _2391) + ((_9_m113.y * _2390) * 0.375f));
    float4 _2609;
    float4 _2610;
    float4 _2611;
    [branch] if (all(bool2(_477.x >= 0.0f.xx.x, _477.y >= 0.0f.xx.y))) {
      float4 _2459 = _51.SampleLevel(_15, _477, 0.0f);
      float4 _2460 = abs(_2459);
      float4 _2606;
      float4 _2607;
      float4 _2608;
      [branch] if (any(bool4(_2460.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _2460.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _2460.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _2460.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _2466 = length(_2459.yzw);
        uint _2468;
        float _2471;
        _2468 = 0u;
        _2471 = 1.0f;
        for (float _2473 = _2466; _2473 > 4.599999904632568359375f;) {
          _2468++;
          _2471 *= 0.5f;
          _2473 *= 0.5f;
          continue;
        }
        float4 _2477 = _2459 * _2471;
        float4 _2482 = float4(0.0f, _2477.yzw);
        float2 _2504 = (_50.SampleLevel(_15, float2(((((length(_2482) * _49_m3.x) + _49_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _49_m2.xy) + _49_m2.zw;
        float4 _2518;
        _2518 = float4(_2504.x * 3.5449078083038330078125f, _2482.yzw * _2504.y) * exp(_2477.x * 0.282094776630401611328125f);
        for (uint _2521 = 0u; _2521 < _2468;) {
          _2518 = mul(float4x4(_2518, float4(_2518.yx, 0.0f, 0.0f), float4(_2518.z, 0.0f, _2518.x, 0.0f), float4(_2518.w, 0.0f, 0.0f, _2518.x)) * 0.282094776630401611328125f, _2518);
          _2521++;
          continue;
        }
        float4x4 _2542 = float4x4(_2518, float4(_2518.yx, 0.0f, 0.0f), float4(_2518.z, 0.0f, _2518.x, 0.0f), float4(_2518.w, 0.0f, 0.0f, _2518.x)) * 0.282094776630401611328125f;
        float4 _2552 = mul(_2542, float4(_2411.w * 1.1283791065216064453125f, _2411.y * (-0.977204978466033935546875f), _2411.z * 0.977204978466033935546875f, _2411.x * (-0.977204978466033935546875f)));
        float4 _2572 = mul(_2542, float4(_2431.w * 1.1283791065216064453125f, _2431.y * (-0.977204978466033935546875f), _2431.z * 0.977204978466033935546875f, _2431.x * (-0.977204978466033935546875f)));
        float4 _2592 = mul(_2542, float4(_2451.w * 1.1283791065216064453125f, _2451.y * (-0.977204978466033935546875f), _2451.z * 0.977204978466033935546875f, _2451.x * (-0.977204978466033935546875f)));
        _2606 = float4(_2552.x * 0.886226952075958251953125f, _2552.w * (-1.02332675457000732421875f), _2552.y * (-1.02332675457000732421875f), _2552.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2607 = float4(_2572.x * 0.886226952075958251953125f, _2572.w * (-1.02332675457000732421875f), _2572.y * (-1.02332675457000732421875f), _2572.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _2608 = float4(_2592.x * 0.886226952075958251953125f, _2592.w * (-1.02332675457000732421875f), _2592.y * (-1.02332675457000732421875f), _2592.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _2606 = _2411;
        _2607 = _2431;
        _2608 = _2451;
      }
      _2609 = _2606;
      _2610 = _2607;
      _2611 = _2608;
    }
    else {
      _2609 = _2411;
      _2610 = _2431;
      _2611 = _2451;
    }
    float _2618 = max(0.0f, dot(_2609.xyz * _2034.x, _451) + _2609.w);
    float _2625 = max(0.0f, dot(_2610.xyz * _2034.y, _451) + _2610.w);
    float _2632 = max(0.0f, dot(_2611.xyz * _2034.z, _451) + _2611.w);
    float3 _2642 = reflect(_517, _451);
    float _2650 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_702, 0.001000000047497451305389404296875f))));
    float2 _2654 = floor(_464 * _29_m0.w);
    float _2671 = floor(_496 - _29_m2.y);
    float _2675 = clamp(_2671, 0.0f, _29_m1.x - 1.0f);
    uint _2685 = (_2671 <= _2675) ? (_26.Load(uint(_9_m21.z + int(_2654.x + (_2654.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_2675)) * 4 + 0)) : 0u;
    float _2688 = dot(float4(_2618, _2625, _2632, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _2690;
    float _2693;
    uint _2695;
    _2690 = 0.0f.xxx;
    _2693 = 1.0f;
    _2695 = _2685;
    uint _2696;
    float3 _2691;
    float _2694;
    bool _2698;
    [loop] for (;;) {
      bool _2697 = _2695 != 0u;
      _2698 = _2693 > 0.00999999977648258209228515625f;
      if (_2697 && _2698) {
        uint _2702 = firstbitlow(_2695);
        _2696 = _2695 ^ (1u << (_2702 & 31u));
        float3 _2722 = float3(dot(_29_m4[_2702]._m2, _493), dot(_29_m4[_2702]._m3, _493), dot(_29_m4[_2702]._m4, _493));
        float3 _2723 = abs(_2722);
        if (all(bool3(_2723.x <= _29_m4[_2702]._m1.xyz.x, _2723.y <= _29_m4[_2702]._m1.xyz.y, _2723.z <= _29_m4[_2702]._m1.xyz.z))) {
          float3 _2732 = _29_m4[_2702]._m1.xyz * 0.100000001490116119384765625f;
          float3 _2734 = _2723 * 0.100000001490116119384765625f;
          float3 _2735 = _2734 * _2734;
          float3 _2738 = (_29_m4[_2702]._m1.xyz - _2723) * _29_m4[_2702]._m5.xyz;
          float3 _2786;
          [branch] if (_29_m4[_2702]._m6.x == 1.0f) {
            float3 _2771 = float3(dot(_29_m4[_2702]._m2.xyz, _2642), dot(_29_m4[_2702]._m3.xyz, _2642), dot(_29_m4[_2702]._m4.xyz, _2642));
            float3 _2773 = (_29_m4[_2702]._m1.xyz - _2722) / _2771;
            float3 _2776 = ((-_29_m4[_2702]._m1.xyz) - _2722) / _2771;
            bool3 _2777 = bool3(_2771.x > 0.0f.xxx.x, _2771.y > 0.0f.xxx.y, _2771.z > 0.0f.xxx.z);
            float3 _2778 = float3(_2777.x ? _2773.x : _2776.x, _2777.y ? _2773.y : _2776.y, _2777.z ? _2773.z : _2776.z);
            _2786 = _2722 + (_2771 * min(min(_2778.x, _2778.y), _2778.z));
          }
          else {
            _2786 = _2642;
          }
          float3 _2787 = normalize(_2786);
          float3 _2790 = float3(int3(sign(_2787)));
          float3 _2793 = _2787 / dot(_2787, _2790).xxx;
          float3 _2807;
          if (_2793.z < 0.0f) {
            float3 _2798 = abs(_2793);
            float2 _2805 = _2790.xy * float2(1.0f - _2798.y, 1.0f - _2798.x);
            _2807 = float3(_2805.x, _2805.y, _2793.z);
          } else {
            _2807 = _2793;
          }
          float _2831 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_2702]._m0, float4(_451, 1.0f))));
          float _2844 = clamp((min(_2738.x, min(_2738.y, _2738.z)) * _29_m4[_2702]._m6.y) + ((((((_2732 * _2732).x - ((_2735.x + _2735.y) + _2735.z)) * _29_m4[_2702]._m5.x) * _29_m4[_2702]._m5.x) * (1.0f - _29_m4[_2702]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_2702]._m6.w;
          _2691 = _2690 + ((((_24.SampleLevel(_17, float3((((_2807.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_2702]._m1.w), _2650).xyz * _29_m4[_2702]._m5.w) * ((((((clamp(abs(_2688 / _2831), 0.0f, 1.0f) * 2.0f) + _2688) / (2.0f + _2831)) - 1.0f) * _9_m23.w) + 1.0f)) * _2844) * _2693);
          _2694 = _2693 * (1.0f - _2844);
        } else {
          _2691 = _2690;
          _2694 = _2693;
        }
        _2690 = _2691;
        _2693 = _2694;
        _2695 = _2696;
        continue;
      } else {
        break;
      }
    }
    float3 _2912;
    if (_2698) {
      float3 _2852 = normalize(_2642);
      float3 _2855 = float3(int3(sign(_2852)));
      float3 _2858 = _2852 / dot(_2852, _2855).xxx;
      float3 _2872;
      if (_2858.z < 0.0f) {
        float3 _2863 = abs(_2858);
        float2 _2870 = _2855.xy * float2(1.0f - _2863.y, 1.0f - _2863.x);
        _2872 = float3(_2870.x, _2870.y, _2858.z);
      } else {
        _2872 = _2858;
      }
      float _2898 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_451, 1.0f))));
      _2912 = _2690 + ((_24.SampleLevel(_17, float3((((_2872.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _2650).xyz * ((((((clamp(abs(_2688 / _2898), 0.0f, 1.0f) * 2.0f) + _2688) / (2.0f + _2898)) - 1.0f) * _9_m23.w) + 1.0f)) * _2693);
    } else {
      _2912 = _2690;
    }
    float3 _2918 = (_2912 * _9_m23.z) * _9_m22.y;
    float3 _2941;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _2935 = _22.SampleBias(_15, _4, _9_m16);
      float _2936 = _2935.x;
      _2941 = (_21.SampleBias(_15, _4, _9_m16).xyz * _2936) + (_2918 * (1.0f - _2936));
    }
    else {
      _2941 = _2918;
    }
    _2945 = (((float3(_2618, _2625, _2632) * _704) * _9_m22.x) * _1090) + ((_2941 * _724) * _1089);
  }
  else {
    float3 _1110 = (_489 + (_451 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_464 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _1120 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _1129 = _1110 - (_9_m108.xyz + (_1120 * (-_9_m110.w)));
    float _1144 = max(min(max((max(abs(_1129.x), abs(_1129.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1129.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _1446;
    float4 _1447;
    float4 _1448;
    float _1449;
    float _1450;
    if ((_9_m108.w != 0.0f) && (_1144 < 1.0f)) {
      float3 _1157 = _1110 - (_9_m108.xyz + (_1120 * (-_9_m110.y)));
      float _1171 = max(clamp((max(abs(_1157.x), abs(_1157.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1157.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _1247;
      float4 _1248;
      float4 _1249;
      float4 _1250;
      if (_1171 < 1.0f) {
        float3 _1180 = ((_1110 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1182 = _1180 - floor(_1180);
        float4 _1186 = _52.SampleLevel(_16, _1182, 0.0f);
        float _1187 = 1.0f - _1171;
        float _1191 = _9_m109.y * 0.5f;
        float _1196 = _1182.x;
        float _1197 = clamp(_1182.y, _1191, 1.0f - _1191) * 0.3333333432674407958984375f;
        float _1198 = _1182.z;
        float4 _1201 = _53.SampleLevel(_15, float3(_1196, _1197, _1198), 0.0f);
        float _1217 = _1186.x;
        float _1227 = _1186.y;
        float _1237 = _1186.z;
        _1247 = _1144 + (_1201.w * _1187);
        _1248 = float4(((_53.SampleLevel(_15, float3(_1196, _1197 + 0.666666686534881591796875f, _1198), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1237, _1237) * _1187;
        _1249 = float4(((_53.SampleLevel(_15, float3(_1196, _1197 + 0.3333333432674407958984375f, _1198), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1227, _1227) * _1187;
        _1250 = float4(((_1201.xyz * 4.0f) - 2.0f.xxx) * _1217, _1217) * _1187;
      } else {
        _1247 = _1144;
        _1248 = 0.0f.xxxx;
        _1249 = 0.0f.xxxx;
        _1250 = 0.0f.xxxx;
      }
      float3 _1256 = _1110 - (_9_m108.xyz + (_1120 * (-_9_m110.z)));
      float _1270 = max(clamp((max(abs(_1256.x), abs(_1256.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1256.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _1350;
      float4 _1351;
      float4 _1352;
      float4 _1353;
      if (_1270 < 1.0f) {
        float3 _1279 = ((_1110 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1281 = _1279 - floor(_1279);
        float4 _1285 = _54.SampleLevel(_16, _1281, 0.0f);
        float _1287 = _1171 * (1.0f - _1270);
        float _1291 = _9_m109.y * 0.5f;
        float _1296 = _1281.x;
        float _1297 = clamp(_1281.y, _1291, 1.0f - _1291) * 0.3333333432674407958984375f;
        float _1298 = _1281.z;
        float4 _1301 = _55.SampleLevel(_15, float3(_1296, _1297, _1298), 0.0f);
        float _1317 = _1285.x;
        float _1328 = _1285.y;
        float _1339 = _1285.z;
        _1350 = _1247 + (_1301.w * _1287);
        _1351 = _1248 + (float4(((_55.SampleLevel(_15, float3(_1296, _1297 + 0.666666686534881591796875f, _1298), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1339, _1339) * _1287);
        _1352 = _1249 + (float4(((_55.SampleLevel(_15, float3(_1296, _1297 + 0.3333333432674407958984375f, _1298), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1328, _1328) * _1287);
        _1353 = _1250 + (float4(((_1301.xyz * 4.0f) - 2.0f.xxx) * _1317, _1317) * _1287);
      } else {
        _1350 = _1247;
        _1351 = _1248;
        _1352 = _1249;
        _1353 = _1250;
      }
      float4 _1436;
      float4 _1437;
      float4 _1438;
      float _1439;
      if (_1270 > 0.0f) {
        float3 _1362 = ((_1110 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _1365 = _9_m109.xyz * 0.5f;
        float3 _1367 = clamp(_1362 - floor(_1362), _1365, 1.0f.xxx - _1365);
        float4 _1371 = _56.SampleLevel(_16, _1367, 0.0f);
        float _1373 = _1270 * (1.0f - _1144);
        float _1377 = _9_m109.y * 0.5f;
        float _1382 = _1367.x;
        float _1383 = clamp(_1367.y, _1377, 1.0f - _1377) * 0.3333333432674407958984375f;
        float _1384 = _1367.z;
        float4 _1387 = _57.SampleLevel(_15, float3(_1382, _1383, _1384), 0.0f);
        float _1403 = _1371.x;
        float _1414 = _1371.y;
        float _1425 = _1371.z;
        _1436 = _1351 + (float4(((_57.SampleLevel(_15, float3(_1382, _1383 + 0.666666686534881591796875f, _1384), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1425, _1425) * _1373);
        _1437 = _1352 + (float4(((_57.SampleLevel(_15, float3(_1382, _1383 + 0.3333333432674407958984375f, _1384), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1414, _1414) * _1373);
        _1438 = _1353 + (float4(((_1387.xyz * 4.0f) - 2.0f.xxx) * _1403, _1403) * _1373);
        _1439 = _1350 + (_1387.w * _1373);
      } else {
        _1436 = _1351;
        _1437 = _1352;
        _1438 = _1353;
        _1439 = _1350;
      }
      float _1442 = clamp((_1439 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _1446 = _1436;
      _1447 = _1437;
      _1448 = _1438;
      _1449 = _1442 - _1144;
      _1450 = (_1442 + _1144) * 0.5f;
    } else {
      _1446 = 0.0f.xxxx;
      _1447 = 0.0f.xxxx;
      _1448 = 0.0f.xxxx;
      _1449 = 0.0f;
      _1450 = 1.0f;
    }
    float4 _1470 = _1448 + float4(_9_m111.x * _1450, (_9_m111.y * _1450) + ((_9_m111.w * _1449) * 0.5f), _9_m111.z * _1450, (_9_m111.w * _1450) + ((_9_m111.y * _1449) * 0.375f));
    float4 _1490 = _1447 + float4(_9_m112.x * _1450, (_9_m112.y * _1450) + ((_9_m112.w * _1449) * 0.5f), _9_m112.z * _1450, (_9_m112.w * _1450) + ((_9_m112.y * _1449) * 0.375f));
    float4 _1510 = _1446 + float4(_9_m113.x * _1450, (_9_m113.y * _1450) + ((_9_m113.w * _1449) * 0.5f), _9_m113.z * _1450, (_9_m113.w * _1450) + ((_9_m113.y * _1449) * 0.375f));
    float4 _1668;
    float4 _1669;
    float4 _1670;
    [branch] if (all(bool2(_477.x >= 0.0f.xx.x, _477.y >= 0.0f.xx.y))) {
      float4 _1518 = _51.SampleLevel(_15, _477, 0.0f);
      float4 _1519 = abs(_1518);
      float4 _1665;
      float4 _1666;
      float4 _1667;
      [branch] if (any(bool4(_1519.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1519.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1519.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1519.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _1525 = length(_1518.yzw);
        uint _1527;
        float _1530;
        _1527 = 0u;
        _1530 = 1.0f;
        for (float _1532 = _1525; _1532 > 4.599999904632568359375f;) {
          _1527++;
          _1530 *= 0.5f;
          _1532 *= 0.5f;
          continue;
        }
        float4 _1536 = _1518 * _1530;
        float4 _1541 = float4(0.0f, _1536.yzw);
        float2 _1563 = (_50.SampleLevel(_15, float2(((((length(_1541) * _49_m3.x) + _49_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _49_m2.xy) + _49_m2.zw;
        float4 _1577;
        _1577 = float4(_1563.x * 3.5449078083038330078125f, _1541.yzw * _1563.y) * exp(_1536.x * 0.282094776630401611328125f);
        for (uint _1580 = 0u; _1580 < _1527;) {
          _1577 = mul(float4x4(_1577, float4(_1577.yx, 0.0f, 0.0f), float4(_1577.z, 0.0f, _1577.x, 0.0f), float4(_1577.w, 0.0f, 0.0f, _1577.x)) * 0.282094776630401611328125f, _1577);
          _1580++;
          continue;
        }
        float4x4 _1601 = float4x4(_1577, float4(_1577.yx, 0.0f, 0.0f), float4(_1577.z, 0.0f, _1577.x, 0.0f), float4(_1577.w, 0.0f, 0.0f, _1577.x)) * 0.282094776630401611328125f;
        float4 _1611 = mul(_1601, float4(_1470.w * 1.1283791065216064453125f, _1470.y * (-0.977204978466033935546875f), _1470.z * 0.977204978466033935546875f, _1470.x * (-0.977204978466033935546875f)));
        float4 _1631 = mul(_1601, float4(_1490.w * 1.1283791065216064453125f, _1490.y * (-0.977204978466033935546875f), _1490.z * 0.977204978466033935546875f, _1490.x * (-0.977204978466033935546875f)));
        float4 _1651 = mul(_1601, float4(_1510.w * 1.1283791065216064453125f, _1510.y * (-0.977204978466033935546875f), _1510.z * 0.977204978466033935546875f, _1510.x * (-0.977204978466033935546875f)));
        _1665 = float4(_1611.x * 0.886226952075958251953125f, _1611.w * (-1.02332675457000732421875f), _1611.y * (-1.02332675457000732421875f), _1611.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1666 = float4(_1631.x * 0.886226952075958251953125f, _1631.w * (-1.02332675457000732421875f), _1631.y * (-1.02332675457000732421875f), _1631.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _1667 = float4(_1651.x * 0.886226952075958251953125f, _1651.w * (-1.02332675457000732421875f), _1651.y * (-1.02332675457000732421875f), _1651.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _1665 = _1470;
        _1666 = _1490;
        _1667 = _1510;
      }
      _1668 = _1665;
      _1669 = _1666;
      _1670 = _1667;
    }
    else {
      _1668 = _1470;
      _1669 = _1490;
      _1670 = _1510;
    }
    float _1675 = max(0.0f, dot(_1668.xyz, _451) + _1668.w);
    float _1680 = max(0.0f, dot(_1669.xyz, _451) + _1669.w);
    float _1685 = max(0.0f, dot(_1670.xyz, _451) + _1670.w);
    float3 _1709 = reflect(_517, _451);
    float _1717 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_702, 0.001000000047497451305389404296875f))));
    float2 _1721 = floor(_464 * _29_m0.w);
    float _1738 = floor(_496 - _29_m2.y);
    float _1742 = clamp(_1738, 0.0f, _29_m1.x - 1.0f);
    uint _1752 = (_1738 <= _1742) ? (_26.Load(uint(_9_m21.z + int(_1721.x + (_1721.y * _29_m0.x))) * 4 + 0) & _26.Load(uint(_9_m21.w + int(_1742)) * 4 + 0)) : 0u;
    float _1755 = dot(float4(_1675, _1680, _1685, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _1757;
    float _1760;
    uint _1762;
    _1757 = 0.0f.xxx;
    _1760 = 1.0f;
    _1762 = _1752;
    uint _1763;
    float3 _1758;
    float _1761;
    bool _1765;
    [loop] for (;;) {
      bool _1764 = _1762 != 0u;
      _1765 = _1760 > 0.00999999977648258209228515625f;
      if (_1764 && _1765) {
        uint _1769 = firstbitlow(_1762);
        _1763 = _1762 ^ (1u << (_1769 & 31u));
        float3 _1789 = float3(dot(_29_m4[_1769]._m2, _493), dot(_29_m4[_1769]._m3, _493), dot(_29_m4[_1769]._m4, _493));
        float3 _1790 = abs(_1789);
        if (all(bool3(_1790.x <= _29_m4[_1769]._m1.xyz.x, _1790.y <= _29_m4[_1769]._m1.xyz.y, _1790.z <= _29_m4[_1769]._m1.xyz.z))) {
          float3 _1799 = _29_m4[_1769]._m1.xyz * 0.100000001490116119384765625f;
          float3 _1801 = _1790 * 0.100000001490116119384765625f;
          float3 _1802 = _1801 * _1801;
          float3 _1805 = (_29_m4[_1769]._m1.xyz - _1790) * _29_m4[_1769]._m5.xyz;
          float3 _1853;
          [branch] if (_29_m4[_1769]._m6.x == 1.0f) {
            float3 _1838 = float3(dot(_29_m4[_1769]._m2.xyz, _1709), dot(_29_m4[_1769]._m3.xyz, _1709), dot(_29_m4[_1769]._m4.xyz, _1709));
            float3 _1840 = (_29_m4[_1769]._m1.xyz - _1789) / _1838;
            float3 _1843 = ((-_29_m4[_1769]._m1.xyz) - _1789) / _1838;
            bool3 _1844 = bool3(_1838.x > 0.0f.xxx.x, _1838.y > 0.0f.xxx.y, _1838.z > 0.0f.xxx.z);
            float3 _1845 = float3(_1844.x ? _1840.x : _1843.x, _1844.y ? _1840.y : _1843.y, _1844.z ? _1840.z : _1843.z);
            _1853 = _1789 + (_1838 * min(min(_1845.x, _1845.y), _1845.z));
          }
          else {
            _1853 = _1709;
          }
          float3 _1854 = normalize(_1853);
          float3 _1857 = float3(int3(sign(_1854)));
          float3 _1860 = _1854 / dot(_1854, _1857).xxx;
          float3 _1874;
          if (_1860.z < 0.0f) {
            float3 _1865 = abs(_1860);
            float2 _1872 = _1857.xy * float2(1.0f - _1865.y, 1.0f - _1865.x);
            _1874 = float3(_1872.x, _1872.y, _1860.z);
          } else {
            _1874 = _1860;
          }
          float _1898 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m4[_1769]._m0, float4(_451, 1.0f))));
          float _1911 = clamp((min(_1805.x, min(_1805.y, _1805.z)) * _29_m4[_1769]._m6.y) + ((((((_1799 * _1799).x - ((_1802.x + _1802.y) + _1802.z)) * _29_m4[_1769]._m5.x) * _29_m4[_1769]._m5.x) * (1.0f - _29_m4[_1769]._m6.y)) * 100.0f), 0.0f, 1.0f) * _29_m4[_1769]._m6.w;
          _1758 = _1757 + ((((_24.SampleLevel(_17, float3((((_1874.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, _29_m4[_1769]._m1.w), _1717).xyz * _29_m4[_1769]._m5.w) * ((((((clamp(abs(_1755 / _1898), 0.0f, 1.0f) * 2.0f) + _1755) / (2.0f + _1898)) - 1.0f) * _9_m23.w) + 1.0f)) * _1911) * _1760);
          _1761 = _1760 * (1.0f - _1911);
        } else {
          _1758 = _1757;
          _1761 = _1760;
        }
        _1757 = _1758;
        _1760 = _1761;
        _1762 = _1763;
        continue;
      } else {
        break;
      }
    }
    float3 _1979;
    if (_1765) {
      float3 _1919 = normalize(_1709);
      float3 _1922 = float3(int3(sign(_1919)));
      float3 _1925 = _1919 / dot(_1919, _1922).xxx;
      float3 _1939;
      if (_1925.z < 0.0f) {
        float3 _1930 = abs(_1925);
        float2 _1937 = _1922.xy * float2(1.0f - _1930.y, 1.0f - _1930.x);
        _1939 = float3(_1937.x, _1937.y, _1925.z);
      } else {
        _1939 = _1925;
      }
      float _1965 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_29_m3, float4(_451, 1.0f))));
      _1979 = _1757 + ((_24.SampleLevel(_17, float3((((_1939.xy * 0.5f) + 0.5f.xx) * _29_m1.w) + _29_m2.w.xx, 0.0f), _1717).xyz * ((((((clamp(abs(_1755 / _1965), 0.0f, 1.0f) * 2.0f) + _1755) / (2.0f + _1965)) - 1.0f) * _9_m23.w) + 1.0f)) * _1760);
    } else {
      _1979 = _1757;
    }
    float3 _1985 = (_1979 * _9_m23.z) * _9_m22.y;
    float3 _2008;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _2002 = _22.SampleBias(_15, _4, _9_m16);
      float _2003 = _2002.x;
      _2008 = (_21.SampleBias(_15, _4, _9_m16).xyz * _2003) + (_1985 * (1.0f - _2003));
    }
    else {
      _2008 = _1985;
    }
    _2945 = (((float3(_1675, _1680, _1685) * (_704 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_454, _455, _456).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _455.xxx) * _456) * _457))) * _9_m22.x) * _1090) + ((_2008 * _724) * _1089);
  }
  float4 _2947 = float4(_1050.x, _1050.y, _1050.z, _1050.w) + float4(_2945.x, _2945.y, _2945.z, 0.0f.xxxx.w);
  float3 _2950 = clamp(_2947.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _2965 = _489.y * _9_m46.w;
  float _2970 = max(0.00999999977648258209228515625f, _2965 + _9_m47.w);
  float3 _2984 = exp(_9_m45.xyz * ((-max(0.0f, (_516 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2970)) / _2970) * exp(_2965 + _9_m48.w))));
  float _2987 = dot(_517, _9_m44.xyz);
  float _2993 = _9_m45.w * _9_m45.w;
  float _2997 = (1.0f + _2993) - ((2.0f * _9_m45.w) * _2987);
  float3 _3321;
  float _3322;
  if (_9_m55.z > 0.0f) {
    uint3 _3149 = (uint3(int3(_331, _332, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _3150 = _3149.y;
    uint _3151 = _3149.z;
    uint _3154 = _3149.x + (_3150 * _3151);
    uint _3156 = _3150 + (_3151 * _3154);
    uint _3158 = _3151 + (_3154 * _3156);
    uint _3160 = _3154 + (_3156 * _3158);
    float _3184 = dot(_517, -_7_m0[2].xyz);
    float3 _3192 = _489 - _7_m11.xyz;
    float _3194 = (_9_m55.w * ((_3184 > 5.9604644775390625e-08f) ? (1.0f / _3184) : 0.0f)) * (1.0f / _516);
    float _3195 = _3192.y;
    float _3196 = _3194 * _3195;
    float _3198 = _7_m11.y + _3196;
    float _3199 = _3195 - _3196;
    float _3201 = (1.0f - _3194) * _516;
    float _3215 = max(-127.0f, _9_m49.z * _3199);
    float _3239 = max(-127.0f, _9_m52.x * _3199);
    float _3250 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_3198 - _9_m49.x)))) * ((abs(_3215) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3215)) / _3215) : (0.693147182464599609375f - (0.2402265071868896484375f * _3215)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_3198 - _9_m52.z)))) * ((abs(_3239) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3239)) / _3239) : (0.693147182464599609375f - (0.2402265071868896484375f * _3239))));
    float _3272 = clamp((_516 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _3275 = clamp((max(clamp(exp2(-(_3250 * _3201)), 0.0f, 1.0f), _9_m51.w) + clamp((_516 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3272, 0.0f, 1.0f);
    float4 _3315 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _47.SampleLevel(_15, float3((_464 + ((((float3(uint3(_3160, _3156 + (_3158 * _3160), _322) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_496 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_496 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _3317 = _3315.w;
    _3321 = _3315.xyz + (((_9_m51.xyz * (1.0f - _3275)) + (((_9_m54.xyz * pow(clamp(dot(_515, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3250 * max(_3201 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3272))) * _3317);
    _3322 = _3317 * _3275;
  } else {
    float3 _3025 = _489 - _7_m11.xyz;
    float _3027 = _3025.y;
    float _3041 = max(-127.0f, _9_m49.z * _3027);
    float _3065 = max(-127.0f, _9_m52.x * _3027);
    float _3076 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_3041) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3041)) / _3041) : (0.693147182464599609375f - (0.2402265071868896484375f * _3041)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_3065) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3065)) / _3065) : (0.693147182464599609375f - (0.2402265071868896484375f * _3065))));
    float _3098 = clamp((_516 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _3101 = clamp((max(clamp(exp2(-(_3076 * _516)), 0.0f, 1.0f), _9_m51.w) + clamp((_516 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _3098, 0.0f, 1.0f);
    _3321 = (_9_m51.xyz * (1.0f - _3101)) + (((_9_m54.xyz * pow(clamp(dot(_515, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_3076 * max(_516 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3098));
    _3322 = _3101;
  }
  float3 _3325 = _2984 * _3322;
  float3 _3327 = (_2950 * _3325) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2987 * _2987)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2993) / max((12.56637096405029296875f * _2997) * sqrt(_2997), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2984)) * _3322) + _3321);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _3327 = (_3327 * 0.65f) + (_2950 * 0.35f);
  }
  // RenoDX code end
  float _3328 = dot(_3325, 0.3333333432674407958984375f.xxx);
  float4 _3329 = float4(_3327.x, _3327.y, _3327.z, _2947.w);
  _3329.w = _3328;
  float _3356 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _489) * _9_m61.z), 0.0f, 1.0f);
  float3 _3364 = lerp(_2950, _3329.xyz, min((1.0f - _3356) + ((_62.SampleLevel(_16, (_489 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _3356), 1.0f + _3328).xxx);
  _5 = float4(_3364.x, _3364.y, _3364.z, _3329.w);
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

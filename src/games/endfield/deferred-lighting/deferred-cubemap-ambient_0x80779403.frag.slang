#include "./renodx_injection.hlsli"

// Ported from the native 0x80779403 Vulkan dump.
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

static uint _301;

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

[[vk::binding(33, 3)]] cbuffer _8_9 : register(b33, space3) {
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

[[vk::binding(35, 3)]] ByteAddressBuffer _23 : register(t35, space3);
[[vk::binding(34, 3)]] cbuffer _24_26 : register(b34, space3) {
  float4 _26_m0 : packoffset(c0);
  float4 _26_m1 : packoffset(c1);
  float4 _26_m2 : packoffset(c2);
  float4 _26_m3 : packoffset(c3);
  _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(30, 3)]] cbuffer _27_28 : register(b30, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  float4 _28_m4 : packoffset(c4);
  uint4 _28_m5 : packoffset(c5);
  float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(31, 3)]] cbuffer _29_30 : register(b31, space3) {
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
  float4 _38_m0[15] : packoffset(c0);
  float4 _38_m1[15] : packoffset(c15);
};

[[vk::binding(32, 3)]] cbuffer _41_42 : register(b32, space3) {
  float4 _42_m0 : packoffset(c0);
  float4 _42_m1 : packoffset(c1);
  float4 _42_m2 : packoffset(c2);
  float4 _42_m3 : packoffset(c3);
  float4 _42_m4 : packoffset(c4);
  uint4 _42_m5 : packoffset(c5);
  float4 _42_m6 : packoffset(c6);
  float4 _42_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _17 : register(t25, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _18 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _20 : register(t20, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _21 : register(t11, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _31 : register(t8, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _32 : register(t26, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _34 : register(t12, space3);
[[vk::binding(6, 3)]] Texture2DArray<float4> _35 : register(t6, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _36 : register(t7, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _39 : register(t24, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _40 : register(t19, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _43 : register(t27, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _44 : register(t5, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _45 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _46 : register(t15, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _47 : register(t17, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _48 : register(t14, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _49 : register(t16, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _50 : register(t13, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _51 : register(t4, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _52 : register(t23, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _53 : register(t22, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _54 : register(t21, space3);

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
  uint2 _307 = uint2(gl_FragCoord.xy);
  int _310 = int(_307.x);
  int _311 = int(_307.y);
  int2 _313 = int3(_310, _311, 0).xy;
  float4 _315 = _52.Load(int3(_313, 0));
  float4 _317 = _53.Load(int3(_313, 0));
  float4 _319 = _54.Load(int3(_313, 0));
  float _320 = _315.x;
  float _321 = _315.y;
  uint _332 = uint(int((round(_315.w * 3.0f) * 4.0f) + round(_317.w * 3.0f)));
  float2 _335 = (_317.xy * 2.0f) - 1.0f.xx;
  float _339 = 1.0f - dot(1.0f.xx, abs(_335));
  float3 _341 = float3(_335.x, _339, _335.y);
  float3 _353;
  if (_339 < 0.0f) {
    float2 _348 = _341.xz;
    bool2 _349 = bool2(_348.x >= 0.0f.xx.x, _348.y >= 0.0f.xx.y);
    float2 _351 = (1.0f.xx - abs(_341.zx)) * float2(_349.x ? 1.0f.xx.x : (-1.0f).xx.x, _349.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _353 = float3(_351.x, _341.y, _351.y);
  } else {
    _353 = _341;
  }
  float3 _354 = normalize(_353);
  float _355 = _317.z;
  float _357 = _319.w;
  float2 _360 = float2(_307);
  float2 _373 = gl_FragCoord.xy * _9_m0.zw;
  float2 _375 = (_373 * 2.0f) - 1.0f.xx;
  float4 _378 = float4(_375, _17.SampleLevel(_12, (_360 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _378.y = -_375.y;
  float4 _381 = mul(_7_m6, _378);
  float3 _385 = _381.xyz / _381.w.xxx;
  float4 _389 = float4(_385, 1.0f);
  float _392 = abs(mul(_7_m0, _389).z);
  float3 _407;
  do {
    if (_9_m4.w == 0.0f) {
      _407 = _7_m11.xyz - _385;
      break;
    } else {
      _407 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _408 = dot(_407, _407);
  float _410 = rsqrt(max(_408, 9.9999999392252902907785028219223e-09f));
  float3 _411 = _407 * _410;
  float _412 = _408 * _410;
  float3 _413 = -_411;
  bool _416 = _9_m132.x > 0.00048828125f;
  float2 _426;
  if (_416) {
    _426 = _51.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _426 = 1.0f.xx;
  }
  float _429 = min(_426.x, _426.y);
  float2 _430 = _426 * 1.0f;
  float _431 = _430.x;
  float _434 = clamp((_315.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _439;
  float _440;
  if (_416) {
    _439 = lerp(1.0f, _426.y, _434);
    _440 = lerp(1.0f, 0.0f, _434);
  } else {
    _439 = 1.0f;
    _440 = 1.0f;
  }
  float _445 = lerp(lerp(min(_439, _355), _355, _429), _355, _431);
  float3 _447 = _319.xyz * lerp(lerp(min(_440, 1.0f), 1.0f, _429), 1.0f, _431);
  float3 _448 = _447 * _320;
  float3 _449 = _447 - _448;
  float3 _453 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _320)).xxx + _448;
  float _454 = dot(_354, _411);
  float _455 = max(0.0f, _454);
  float _456 = _445 * _445;
  float _457 = _455 * _455;
  float _458 = _457 * _455;
  float2 _459 = float2(1.0f, _455);
  float2 _462 = float2(1.0f, _456);
  float _463 = _456 * _456;
  float3 _465 = float3(1.0f, _456, _463 * _456);
  float _470 = dot(mul(_459, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _462) / dot(mul(float3(1.0f, _457, _458), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _465);
  float _475 = dot(mul(_459, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _462) / dot(mul(float3(1.0f, _455, _458), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _465);
  float3 _478 = (_453 * _470) + _475.xxx;
  float _479 = _470 + _475;
  float4 _664;
  do {
    [branch] if (_30_m4 == 0) {
      _664 = 0.0f.xxxx;
      break;
    }
    float4 _499 = _31.Load(int3(_313, 0));
    float _500 = _499.x;
    float4 _663;
    if (_500 > 0.001000000047497451305389404296875f) {
      float3 _510 = reflect(_413, _354);
      float3 _511 = -_28_m0.xyz;
      float _516 = dot(_511, _510);
      float3 _518 = _510 - (_511 * _516);
      bool3 _520 = (_516 < _28_m4.z).xxx;
      float3 _528 = normalize((_511 * _28_m4.z) + ((_518 * rsqrt(max(6.103515625e-05f, dot(_518, _518)))) * _28_m4.y));
      float3 _529 = float3(_520.x ? _528.x : _510.x, _520.y ? _528.y : _510.y, _520.z ? _528.z : _510.z);
      float3 _533 = _529 + _411;
      float3 _537 = _533 * rsqrt(max(6.103515625e-05f, dot(_533, _533)));
      float _538 = clamp(dot(_529, _354), 0.0f, 1.0f);
      float _540 = clamp(dot(_354, _537), 0.0f, 1.0f);
      float _543 = clamp(_454, 0.0f, 1.0f);
      float _564 = (((_540 * _463) - _540) * _540) + 1.0f;
      float _567 = 1.0f - clamp(dot(_411, _537), 0.0f, 1.0f);
      float _568 = _567 * _567;
      float _570 = (_567 * _568) * _568;
      float _594 = 1.0f - _445;
      float _601 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_594 * (1.04997003078460693359375f + (_594 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _594))))));
      float _602 = 1.0f - _601;
      float3 _605 = _453 + ((1.0f.xxx - _453) * 0.0476190485060214996337890625f);
      float3 _645;
      do {
        [branch] if (((_332 > 0u) && (_332 <= 15u)) && (_357 > 0.0f)) {
          uint _629 = clamp(_332 - 1u, 0u, 14u);
          _645 = _35.SampleLevel(_13, float3((dot(_354, _529) * 0.5f) + 0.5f, _357 * _38_m0[_629].w, float(_629)), 0.0f).xyz;
          break;
        }
        _645 = _538.xxx;
        break;
      } while (false);
      float3 _648 = ((clamp((min(((_453 * (1.0f - _570)) + _570.xxx) * ((_463 / (_564 * _564)) * (0.5f / (((_538 * sqrt(((((-_543) * _463) + _543) * _543) + _463)) + (_543 * sqrt(((((-_538) * _463) + _538) * _538) + _463))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_605 * (((_34.SampleLevel(_13, (float2(_543, _445) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_13, (float2(_538, _445) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _601) / _602)) * _605) / (1.0f.xxx - (_605 * _602)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _538) + ((_449 * 1.0f) * _645)) * _28_m1.xyz;
      float3 _661 = lerp(_648, _648 * _32.SampleBias(_13, float2(_500, 0.5f), _9_m16).xyz, (1.0f - _500).xxx) * min(_39.SampleLevel(_13, _373, 0.0f).x, 1.0f);
      _663 = float4(_661.x, _661.y, _661.z, 0.0f.xxxx.w);
    } else {
      _663 = 0.0f.xxxx;
    }
    _664 = _663;
    break;
  } while (false);
  float3 _666 = _321.xxx;
  float3 _703;
  float3 _704;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x80779403:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _679 = min(_20.SampleBias(_12, _4, _9_m16).x, _321);
    _703 = clamp((pow(abs(_455 + _679), exp2(((-16.0f) * _445) - 1.0f)) - 1.0f) + _679, 0.0f, 1.0f).xxx;
    _704 = max(_679.xxx, ((((((_449 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _679) + ((_449 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _679) + ((_449 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _679);
  }
  else {
    _703 = _666;
    _704 = _666;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _664.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _703 : 1.0f.xxx;
  // RenoDX code end
  float3 _727;
  do {
    [branch] if (((_332 > 0u) && (_332 <= 15u)) && (_357 > 0.0f)) {
      uint _715 = clamp(_332 - 1u, 0u, 14u);
      _727 = _36.SampleLevel(_13, float3(_357 * _38_m0[_715].w, 0.5f, float(_715)), 0.0f).xyz;
      break;
    }
    _727 = 1.0f.xxx;
    break;
  } while (false);
  float3 _744 = (_385 + (_354 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_360 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _754 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _763 = _744 - (_9_m108.xyz + (_754 * (-_9_m110.w)));
  float _778 = max(min(max((max(abs(_763.x), abs(_763.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_763.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1080;
  float4 _1081;
  float4 _1082;
  float _1083;
  float _1084;
  if ((_9_m108.w != 0.0f) && (_778 < 1.0f)) {
    float3 _791 = _744 - (_9_m108.xyz + (_754 * (-_9_m110.y)));
    float _805 = max(clamp((max(abs(_791.x), abs(_791.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_791.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _881;
    float4 _882;
    float4 _883;
    float4 _884;
    if (_805 < 1.0f) {
      float3 _814 = ((_744 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _816 = _814 - floor(_814);
      float4 _820 = _45.SampleLevel(_14, _816, 0.0f);
      float _821 = 1.0f - _805;
      float _825 = _9_m109.y * 0.5f;
      float _830 = _816.x;
      float _831 = clamp(_816.y, _825, 1.0f - _825) * 0.3333333432674407958984375f;
      float _832 = _816.z;
      float4 _835 = _46.SampleLevel(_13, float3(_830, _831, _832), 0.0f);
      float _851 = _820.x;
      float _861 = _820.y;
      float _871 = _820.z;
      _881 = _778 + (_835.w * _821);
      _882 = float4(((_46.SampleLevel(_13, float3(_830, _831 + 0.666666686534881591796875f, _832), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _871, _871) * _821;
      _883 = float4(((_46.SampleLevel(_13, float3(_830, _831 + 0.3333333432674407958984375f, _832), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _861, _861) * _821;
      _884 = float4(((_835.xyz * 4.0f) - 2.0f.xxx) * _851, _851) * _821;
    } else {
      _881 = _778;
      _882 = 0.0f.xxxx;
      _883 = 0.0f.xxxx;
      _884 = 0.0f.xxxx;
    }
    float3 _890 = _744 - (_9_m108.xyz + (_754 * (-_9_m110.z)));
    float _904 = max(clamp((max(abs(_890.x), abs(_890.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_890.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _984;
    float4 _985;
    float4 _986;
    float4 _987;
    if (_904 < 1.0f) {
      float3 _913 = ((_744 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _915 = _913 - floor(_913);
      float4 _919 = _47.SampleLevel(_14, _915, 0.0f);
      float _921 = _805 * (1.0f - _904);
      float _925 = _9_m109.y * 0.5f;
      float _930 = _915.x;
      float _931 = clamp(_915.y, _925, 1.0f - _925) * 0.3333333432674407958984375f;
      float _932 = _915.z;
      float4 _935 = _48.SampleLevel(_13, float3(_930, _931, _932), 0.0f);
      float _951 = _919.x;
      float _962 = _919.y;
      float _973 = _919.z;
      _984 = _881 + (_935.w * _921);
      _985 = _882 + (float4(((_48.SampleLevel(_13, float3(_930, _931 + 0.666666686534881591796875f, _932), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _973, _973) * _921);
      _986 = _883 + (float4(((_48.SampleLevel(_13, float3(_930, _931 + 0.3333333432674407958984375f, _932), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _962, _962) * _921);
      _987 = _884 + (float4(((_935.xyz * 4.0f) - 2.0f.xxx) * _951, _951) * _921);
    } else {
      _984 = _881;
      _985 = _882;
      _986 = _883;
      _987 = _884;
    }
    float4 _1070;
    float4 _1071;
    float4 _1072;
    float _1073;
    if (_904 > 0.0f) {
      float3 _996 = ((_744 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _999 = _9_m109.xyz * 0.5f;
      float3 _1001 = clamp(_996 - floor(_996), _999, 1.0f.xxx - _999);
      float4 _1005 = _49.SampleLevel(_14, _1001, 0.0f);
      float _1007 = _904 * (1.0f - _778);
      float _1011 = _9_m109.y * 0.5f;
      float _1016 = _1001.x;
      float _1017 = clamp(_1001.y, _1011, 1.0f - _1011) * 0.3333333432674407958984375f;
      float _1018 = _1001.z;
      float4 _1021 = _50.SampleLevel(_13, float3(_1016, _1017, _1018), 0.0f);
      float _1037 = _1005.x;
      float _1048 = _1005.y;
      float _1059 = _1005.z;
      _1070 = _985 + (float4(((_50.SampleLevel(_13, float3(_1016, _1017 + 0.666666686534881591796875f, _1018), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1059, _1059) * _1007);
      _1071 = _986 + (float4(((_50.SampleLevel(_13, float3(_1016, _1017 + 0.3333333432674407958984375f, _1018), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1048, _1048) * _1007);
      _1072 = _987 + (float4(((_1021.xyz * 4.0f) - 2.0f.xxx) * _1037, _1037) * _1007);
      _1073 = _984 + (_1021.w * _1007);
    } else {
      _1070 = _985;
      _1071 = _986;
      _1072 = _987;
      _1073 = _984;
    }
    float _1076 = clamp((_1073 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1080 = _1070;
    _1081 = _1071;
    _1082 = _1072;
    _1083 = _1076 - _778;
    _1084 = (_1076 + _778) * 0.5f;
  } else {
    _1080 = 0.0f.xxxx;
    _1081 = 0.0f.xxxx;
    _1082 = 0.0f.xxxx;
    _1083 = 0.0f;
    _1084 = 1.0f;
  }
  float4 _1104 = _1082 + float4(_9_m111.x * _1084, (_9_m111.y * _1084) + ((_9_m111.w * _1083) * 0.5f), _9_m111.z * _1084, (_9_m111.w * _1084) + ((_9_m111.y * _1083) * 0.375f));
  float4 _1124 = _1081 + float4(_9_m112.x * _1084, (_9_m112.y * _1084) + ((_9_m112.w * _1083) * 0.5f), _9_m112.z * _1084, (_9_m112.w * _1084) + ((_9_m112.y * _1083) * 0.375f));
  float4 _1144 = _1080 + float4(_9_m113.x * _1084, (_9_m113.y * _1084) + ((_9_m113.w * _1083) * 0.5f), _9_m113.z * _1084, (_9_m113.w * _1084) + ((_9_m113.y * _1083) * 0.375f));
  float4 _1302;
  float4 _1303;
  float4 _1304;
  [branch] if (all(bool2(_373.x >= 0.0f.xx.x, _373.y >= 0.0f.xx.y))) {
    float4 _1152 = _44.SampleLevel(_13, _373, 0.0f);
    float4 _1153 = abs(_1152);
    float4 _1299;
    float4 _1300;
    float4 _1301;
    [branch] if (any(bool4(_1153.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1153.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1153.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1153.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1159 = length(_1152.yzw);
      uint _1161;
      float _1164;
      _1161 = 0u;
      _1164 = 1.0f;
      for (float _1166 = _1159; _1166 > 4.599999904632568359375f;) {
        _1161++;
        _1164 *= 0.5f;
        _1166 *= 0.5f;
        continue;
      }
      float4 _1170 = _1152 * _1164;
      float4 _1175 = float4(0.0f, _1170.yzw);
      float2 _1197 = (_43.SampleLevel(_13, float2(((((length(_1175) * _42_m3.x) + _42_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _42_m2.xy) + _42_m2.zw;
      float4 _1211;
      _1211 = float4(_1197.x * 3.5449078083038330078125f, _1175.yzw * _1197.y) * exp(_1170.x * 0.282094776630401611328125f);
      for (uint _1214 = 0u; _1214 < _1161;) {
        _1211 = mul(float4x4(_1211, float4(_1211.yx, 0.0f, 0.0f), float4(_1211.z, 0.0f, _1211.x, 0.0f), float4(_1211.w, 0.0f, 0.0f, _1211.x)) * 0.282094776630401611328125f, _1211);
        _1214++;
        continue;
      }
      float4x4 _1235 = float4x4(_1211, float4(_1211.yx, 0.0f, 0.0f), float4(_1211.z, 0.0f, _1211.x, 0.0f), float4(_1211.w, 0.0f, 0.0f, _1211.x)) * 0.282094776630401611328125f;
      float4 _1245 = mul(_1235, float4(_1104.w * 1.1283791065216064453125f, _1104.y * (-0.977204978466033935546875f), _1104.z * 0.977204978466033935546875f, _1104.x * (-0.977204978466033935546875f)));
      float4 _1265 = mul(_1235, float4(_1124.w * 1.1283791065216064453125f, _1124.y * (-0.977204978466033935546875f), _1124.z * 0.977204978466033935546875f, _1124.x * (-0.977204978466033935546875f)));
      float4 _1285 = mul(_1235, float4(_1144.w * 1.1283791065216064453125f, _1144.y * (-0.977204978466033935546875f), _1144.z * 0.977204978466033935546875f, _1144.x * (-0.977204978466033935546875f)));
      _1299 = float4(_1245.x * 0.886226952075958251953125f, _1245.w * (-1.02332675457000732421875f), _1245.y * (-1.02332675457000732421875f), _1245.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1300 = float4(_1265.x * 0.886226952075958251953125f, _1265.w * (-1.02332675457000732421875f), _1265.y * (-1.02332675457000732421875f), _1265.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1301 = float4(_1285.x * 0.886226952075958251953125f, _1285.w * (-1.02332675457000732421875f), _1285.y * (-1.02332675457000732421875f), _1285.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1299 = _1104;
      _1300 = _1124;
      _1301 = _1144;
    }
    _1302 = _1299;
    _1303 = _1300;
    _1304 = _1301;
  }
  else {
    _1302 = _1104;
    _1303 = _1124;
    _1304 = _1144;
  }
  float _1311 = max(0.0f, dot(_1302.xyz * _727.x, _354) + _1302.w);
  float _1318 = max(0.0f, dot(_1303.xyz * _727.y, _354) + _1303.w);
  float _1325 = max(0.0f, dot(_1304.xyz * _727.z, _354) + _1304.w);
  float3 _1335 = reflect(_413, _354);
  float _1343 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_445, 0.001000000047497451305389404296875f))));
  float2 _1347 = floor(_360 * _26_m0.w);
  float _1364 = floor(_392 - _26_m2.y);
  float _1368 = clamp(_1364, 0.0f, _26_m1.x - 1.0f);
  uint _1378 = (_1364 <= _1368) ? (_23.Load(uint(_9_m21.z + int(_1347.x + (_1347.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1368)) * 4 + 0)) : 0u;
  float _1381 = dot(float4(_1311, _1318, _1325, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1383;
  float _1386;
  uint _1388;
  _1383 = 0.0f.xxx;
  _1386 = 1.0f;
  _1388 = _1378;
  uint _1389;
  float3 _1384;
  float _1387;
  bool _1391;
  [loop] for (;;) {
    bool _1390 = _1388 != 0u;
    _1391 = _1386 > 0.00999999977648258209228515625f;
    if (_1390 && _1391) {
      uint _1395 = firstbitlow(_1388);
      _1389 = _1388 ^ (1u << (_1395 & 31u));
      float3 _1415 = float3(dot(_26_m4[_1395]._m2, _389), dot(_26_m4[_1395]._m3, _389), dot(_26_m4[_1395]._m4, _389));
      float3 _1416 = abs(_1415);
      if (all(bool3(_1416.x <= _26_m4[_1395]._m1.xyz.x, _1416.y <= _26_m4[_1395]._m1.xyz.y, _1416.z <= _26_m4[_1395]._m1.xyz.z))) {
        float3 _1425 = _26_m4[_1395]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1427 = _1416 * 0.100000001490116119384765625f;
        float3 _1428 = _1427 * _1427;
        float3 _1431 = (_26_m4[_1395]._m1.xyz - _1416) * _26_m4[_1395]._m5.xyz;
        float3 _1479;
        [branch] if (_26_m4[_1395]._m6.x == 1.0f) {
          float3 _1464 = float3(dot(_26_m4[_1395]._m2.xyz, _1335), dot(_26_m4[_1395]._m3.xyz, _1335), dot(_26_m4[_1395]._m4.xyz, _1335));
          float3 _1466 = (_26_m4[_1395]._m1.xyz - _1415) / _1464;
          float3 _1469 = ((-_26_m4[_1395]._m1.xyz) - _1415) / _1464;
          bool3 _1470 = bool3(_1464.x > 0.0f.xxx.x, _1464.y > 0.0f.xxx.y, _1464.z > 0.0f.xxx.z);
          float3 _1471 = float3(_1470.x ? _1466.x : _1469.x, _1470.y ? _1466.y : _1469.y, _1470.z ? _1466.z : _1469.z);
          _1479 = _1415 + (_1464 * min(min(_1471.x, _1471.y), _1471.z));
        }
        else {
          _1479 = _1335;
        }
        float3 _1480 = normalize(_1479);
        float3 _1483 = float3(int3(sign(_1480)));
        float3 _1486 = _1480 / dot(_1480, _1483).xxx;
        float3 _1500;
        if (_1486.z < 0.0f) {
          float3 _1491 = abs(_1486);
          float2 _1498 = _1483.xy * float2(1.0f - _1491.y, 1.0f - _1491.x);
          _1500 = float3(_1498.x, _1498.y, _1486.z);
        } else {
          _1500 = _1486;
        }
        float _1525 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1395]._m0, float4(_354, 1.0f))));
        float _1538 = clamp((min(_1431.x, min(_1431.y, _1431.z)) * _26_m4[_1395]._m6.y) + ((((((_1425 * _1425).x - ((_1428.x + _1428.y) + _1428.z)) * _26_m4[_1395]._m5.x) * _26_m4[_1395]._m5.x) * (1.0f - _26_m4[_1395]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1395]._m6.w;
        _1384 = _1383 + ((((_21.SampleLevel(_15, float3((((_1500.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1395]._m1.w), _1343).xyz * _26_m4[_1395]._m5.w) * ((((((clamp(abs(_1381 / _1525), 0.0f, 1.0f) * 2.0f) + _1381) / (2.0f + _1525)) - 1.0f) * _9_m23.w) + 1.0f)) * _1538) * _1386);
        _1387 = _1386 * (1.0f - _1538);
      } else {
        _1384 = _1383;
        _1387 = _1386;
      }
      _1383 = _1384;
      _1386 = _1387;
      _1388 = _1389;
      continue;
    } else {
      break;
    }
  }
  float3 _1607;
  if (_1391) {
    float3 _1546 = normalize(_1335);
    float3 _1549 = float3(int3(sign(_1546)));
    float3 _1552 = _1546 / dot(_1546, _1549).xxx;
    float3 _1566;
    if (_1552.z < 0.0f) {
      float3 _1557 = abs(_1552);
      float2 _1564 = _1549.xy * float2(1.0f - _1557.y, 1.0f - _1557.x);
      _1566 = float3(_1564.x, _1564.y, _1552.z);
    } else {
      _1566 = _1552;
    }
    float _1593 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_354, 1.0f))));
    _1607 = _1383 + ((_21.SampleLevel(_15, float3((((_1566.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1343).xyz * ((((((clamp(abs(_1381 / _1593), 0.0f, 1.0f) * 2.0f) + _1381) / (2.0f + _1593)) - 1.0f) * _9_m23.w) + 1.0f)) * _1386);
  } else {
    _1607 = _1383;
  }
  float3 _1613 = (_1607 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _1613 *= 0.25f + (0.75f * saturate(_1381));
  }
  // RenoDX code end
  float3 _1636;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1630 = _19.SampleBias(_13, _4, _9_m16);
    float _1631 = _1630.x;
    _1636 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1631) + (_1613 * (1.0f - _1631));
  }
  else {
    _1636 = _1613;
  }
  float3 _1639 = (((float3(_1311, _1318, _1325) * _449) * _9_m22.x) * _704) + ((_1636 * (_478 + ((_453 * ((1.0f - _479) / _479)) * _478))) * _703);
  float4 _1641 = float4(_664.x, _664.y, _664.z, _664.w) + float4(_1639.x, _1639.y, _1639.z, 0.0f.xxxx.w);
  float _1659 = _385.y * _9_m46.w;
  float _1664 = max(0.00999999977648258209228515625f, _1659 + _9_m47.w);
  float3 _1678 = exp(_9_m45.xyz * ((-max(0.0f, (_412 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1664)) / _1664) * exp(_1659 + _9_m48.w))));
  float _1681 = dot(_413, _9_m44.xyz);
  float _1687 = _9_m45.w * _9_m45.w;
  float _1691 = (1.0f + _1687) - ((2.0f * _9_m45.w) * _1681);
  float3 _2019;
  float _2020;
  if (_9_m55.z > 0.0f) {
    uint3 _1845 = (uint3(int3(_310, _311, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1846 = _1845.y;
    uint _1847 = _1845.z;
    uint _1850 = _1845.x + (_1846 * _1847);
    uint _1852 = _1846 + (_1847 * _1850);
    uint _1854 = _1847 + (_1850 * _1852);
    uint _1856 = _1850 + (_1852 * _1854);
    float _1880 = dot(_413, -_7_m0[2].xyz);
    float3 _1890 = _385 - _7_m11.xyz;
    float _1892 = (_9_m55.w * ((_1880 > 5.9604644775390625e-08f) ? (1.0f / _1880) : 0.0f)) * (1.0f / _412);
    float _1893 = _1890.y;
    float _1894 = _1892 * _1893;
    float _1896 = _7_m11.y + _1894;
    float _1897 = _1893 - _1894;
    float _1899 = (1.0f - _1892) * _412;
    float _1913 = max(-127.0f, _9_m49.z * _1897);
    float _1937 = max(-127.0f, _9_m52.x * _1897);
    float _1948 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1896 - _9_m49.x)))) * ((abs(_1913) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1913)) / _1913) : (0.693147182464599609375f - (0.2402265071868896484375f * _1913)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1896 - _9_m52.z)))) * ((abs(_1937) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1937)) / _1937) : (0.693147182464599609375f - (0.2402265071868896484375f * _1937))));
    float _1970 = clamp((_412 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1973 = clamp((max(clamp(exp2(-(_1948 * _1899)), 0.0f, 1.0f), _9_m51.w) + clamp((_412 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1970, 0.0f, 1.0f);
    float4 _2013 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _40.SampleLevel(_13, float3((_360 + ((((float3(uint3(_1856, _1852 + (_1854 * _1856), _301) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_392 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_392 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2015 = _2013.w;
    _2019 = _2013.xyz + (((_9_m51.xyz * (1.0f - _1973)) + (((_9_m54.xyz * pow(clamp(dot(_411, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1948 * max(_1899 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1970))) * _2015);
    _2020 = _2015 * _1973;
  } else {
    float3 _1721 = _385 - _7_m11.xyz;
    float _1723 = _1721.y;
    float _1737 = max(-127.0f, _9_m49.z * _1723);
    float _1761 = max(-127.0f, _9_m52.x * _1723);
    float _1772 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1737) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1737)) / _1737) : (0.693147182464599609375f - (0.2402265071868896484375f * _1737)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1761) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1761)) / _1761) : (0.693147182464599609375f - (0.2402265071868896484375f * _1761))));
    float _1794 = clamp((_412 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1797 = clamp((max(clamp(exp2(-(_1772 * _412)), 0.0f, 1.0f), _9_m51.w) + clamp((_412 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1794, 0.0f, 1.0f);
    _2019 = (_9_m51.xyz * (1.0f - _1797)) + (((_9_m54.xyz * pow(clamp(dot(_411, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1772 * max(_412 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1794));
    _2020 = _1797;
  }
  float3 _2023 = _1678 * _2020;
  float3 _2025 = (clamp(_1641.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _2023) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1681 * _1681)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1687) / max((12.56637096405029296875f * _1691) * sqrt(_1691), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1678)) * _2020) + _2019);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2025 = (_2025 * 0.65f) + (clamp(_1641.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _2027 = float4(_2025.x, _2025.y, _2025.z, _1641.w);
  _2027.w = dot(_2023, 0.3333333432674407958984375f.xxx);
  _5 = _2027;
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

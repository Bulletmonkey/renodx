#include "./renodx_injection.hlsli"

// Ported from the native 0x342A2D1D Vulkan dump.
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

static uint _305;

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

[[vk::binding(36, 3)]] ByteAddressBuffer _23 : register(t36, space3);
[[vk::binding(35, 3)]] cbuffer _24_26 : register(b35, space3) {
  float4 _26_m0 : packoffset(c0);
  float4 _26_m1 : packoffset(c1);
  float4 _26_m2 : packoffset(c2);
  float4 _26_m3 : packoffset(c3);
  _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(31, 3)]] cbuffer _27_28 : register(b31, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  float4 _28_m4 : packoffset(c4);
  uint4 _28_m5 : packoffset(c5);
  float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(32, 3)]] cbuffer _29_30 : register(b32, space3) {
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

[[vk::binding(30, 3)]] cbuffer _37_38 : register(b30, space3) {
  float4 _38_m0[15] : packoffset(c0);
  float4 _38_m1[15] : packoffset(c15);
};

[[vk::binding(33, 3)]] cbuffer _41_42 : register(b33, space3) {
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
[[vk::binding(26, 3)]] Texture2D<float4> _17 : register(t26, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _18 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _20 : register(t20, space3);
[[vk::binding(11, 3)]] Texture2DArray<float4> _21 : register(t11, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _31 : register(t8, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _32 : register(t27, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _34 : register(t12, space3);
[[vk::binding(6, 3)]] Texture2DArray<float4> _35 : register(t6, space3);
[[vk::binding(7, 3)]] Texture2DArray<float4> _36 : register(t7, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _39 : register(t25, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _40 : register(t19, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _43 : register(t28, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _44 : register(t5, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _45 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _46 : register(t15, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _47 : register(t17, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _48 : register(t14, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _49 : register(t16, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _50 : register(t13, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _51 : register(t4, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _52 : register(t24, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _53 : register(t23, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _54 : register(t22, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _55 : register(t21, space3);

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
  uint2 _311 = uint2(gl_FragCoord.xy);
  int _314 = int(_311.x);
  int _315 = int(_311.y);
  int2 _317 = int3(_314, _315, 0).xy;
  float4 _319 = _52.Load(int3(_317, 0));
  float4 _321 = _53.Load(int3(_317, 0));
  float4 _323 = _54.Load(int3(_317, 0));
  float _324 = _319.x;
  float _325 = _319.y;
  uint _336 = uint(int((round(_319.w * 3.0f) * 4.0f) + round(_321.w * 3.0f)));
  float2 _339 = (_321.xy * 2.0f) - 1.0f.xx;
  float _343 = 1.0f - dot(1.0f.xx, abs(_339));
  float3 _345 = float3(_339.x, _343, _339.y);
  float3 _357;
  if (_343 < 0.0f) {
    float2 _352 = _345.xz;
    bool2 _353 = bool2(_352.x >= 0.0f.xx.x, _352.y >= 0.0f.xx.y);
    float2 _355 = (1.0f.xx - abs(_345.zx)) * float2(_353.x ? 1.0f.xx.x : (-1.0f).xx.x, _353.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _357 = float3(_355.x, _345.y, _355.y);
  } else {
    _357 = _345;
  }
  float3 _358 = normalize(_357);
  float _359 = _321.z;
  float _361 = _323.w;
  float2 _364 = float2(_311);
  float2 _377 = gl_FragCoord.xy * _9_m0.zw;
  float2 _379 = (_377 * 2.0f) - 1.0f.xx;
  float4 _382 = float4(_379, _17.SampleLevel(_12, (_364 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _382.y = -_379.y;
  float4 _385 = mul(_7_m6, _382);
  float3 _389 = _385.xyz / _385.w.xxx;
  float4 _393 = float4(_389, 1.0f);
  float _396 = abs(mul(_7_m0, _393).z);
  float3 _411;
  do {
    if (_9_m4.w == 0.0f) {
      _411 = _7_m11.xyz - _389;
      break;
    } else {
      _411 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _412 = dot(_411, _411);
  float _414 = rsqrt(max(_412, 9.9999999392252902907785028219223e-09f));
  float3 _415 = _411 * _414;
  float _416 = _412 * _414;
  float3 _417 = -_415;
  bool _420 = _9_m132.x > 0.00048828125f;
  float2 _430;
  if (_420) {
    _430 = _51.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _430 = 1.0f.xx;
  }
  float _433 = min(_430.x, _430.y);
  float2 _434 = _430 * 1.0f;
  float _435 = _434.x;
  float _438 = clamp((_319.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _443;
  float _444;
  if (_420) {
    _443 = lerp(1.0f, _430.y, _438);
    _444 = lerp(1.0f, 0.0f, _438);
  } else {
    _443 = 1.0f;
    _444 = 1.0f;
  }
  float _449 = lerp(lerp(min(_443, _359), _359, _433), _359, _435);
  float3 _451 = _323.xyz * lerp(lerp(min(_444, 1.0f), 1.0f, _433), 1.0f, _435);
  float3 _452 = _451 * _324;
  float3 _453 = _451 - _452;
  float3 _457 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _324)).xxx + _452;
  float _458 = dot(_358, _415);
  float _459 = max(0.0f, _458);
  float _460 = _449 * _449;
  float _461 = _459 * _459;
  float _462 = _461 * _459;
  float2 _463 = float2(1.0f, _459);
  float2 _466 = float2(1.0f, _460);
  float _467 = _460 * _460;
  float3 _469 = float3(1.0f, _460, _467 * _460);
  float _474 = dot(mul(_463, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _466) / dot(mul(float3(1.0f, _461, _462), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _469);
  float _479 = dot(mul(_463, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _466) / dot(mul(float3(1.0f, _459, _462), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _469);
  float3 _482 = (_457 * _474) + _479.xxx;
  float _483 = _474 + _479;
  float4 _668;
  do {
    [branch] if (_30_m4 == 0) {
      _668 = 0.0f.xxxx;
      break;
    }
    float4 _503 = _31.Load(int3(_317, 0));
    float _504 = _503.x;
    float4 _667;
    if (_504 > 0.001000000047497451305389404296875f) {
      float3 _514 = reflect(_417, _358);
      float3 _515 = -_28_m0.xyz;
      float _520 = dot(_515, _514);
      float3 _522 = _514 - (_515 * _520);
      bool3 _524 = (_520 < _28_m4.z).xxx;
      float3 _532 = normalize((_515 * _28_m4.z) + ((_522 * rsqrt(max(6.103515625e-05f, dot(_522, _522)))) * _28_m4.y));
      float3 _533 = float3(_524.x ? _532.x : _514.x, _524.y ? _532.y : _514.y, _524.z ? _532.z : _514.z);
      float3 _537 = _533 + _415;
      float3 _541 = _537 * rsqrt(max(6.103515625e-05f, dot(_537, _537)));
      float _542 = clamp(dot(_533, _358), 0.0f, 1.0f);
      float _544 = clamp(dot(_358, _541), 0.0f, 1.0f);
      float _547 = clamp(_458, 0.0f, 1.0f);
      float _568 = (((_544 * _467) - _544) * _544) + 1.0f;
      float _571 = 1.0f - clamp(dot(_415, _541), 0.0f, 1.0f);
      float _572 = _571 * _571;
      float _574 = (_571 * _572) * _572;
      float _598 = 1.0f - _449;
      float _605 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_598 * (1.04997003078460693359375f + (_598 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _598))))));
      float _606 = 1.0f - _605;
      float3 _609 = _457 + ((1.0f.xxx - _457) * 0.0476190485060214996337890625f);
      float3 _649;
      do {
        [branch] if (((_336 > 0u) && (_336 <= 15u)) && (_361 > 0.0f)) {
          uint _633 = clamp(_336 - 1u, 0u, 14u);
          _649 = _35.SampleLevel(_13, float3((dot(_358, _533) * 0.5f) + 0.5f, _361 * _38_m0[_633].w, float(_633)), 0.0f).xyz;
          break;
        }
        _649 = _542.xxx;
        break;
      } while (false);
      float3 _652 = ((clamp((min(((_457 * (1.0f - _574)) + _574.xxx) * ((_467 / (_568 * _568)) * (0.5f / (((_542 * sqrt(((((-_547) * _467) + _547) * _547) + _467)) + (_547 * sqrt(((((-_542) * _467) + _542) * _542) + _467))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_609 * (((_34.SampleLevel(_13, (float2(_547, _449) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_13, (float2(_542, _449) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _605) / _606)) * _609) / (1.0f.xxx - (_609 * _606)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _542) + ((_453 * 1.0f) * _649)) * _28_m1.xyz;
      float3 _665 = lerp(_652, _652 * _32.SampleBias(_13, float2(_504, 0.5f), _9_m16).xyz, (1.0f - _504).xxx) * min(_39.SampleLevel(_13, _377, 0.0f).x, 1.0f);
      _667 = float4(_665.x, _665.y, _665.z, 0.0f.xxxx.w);
    } else {
      _667 = 0.0f.xxxx;
    }
    _668 = _667;
    break;
  } while (false);
  float3 _670 = _325.xxx;
  float3 _707;
  float3 _708;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x342A2D1D:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _683 = min(_20.SampleBias(_12, _4, _9_m16).x, _325);
    _707 = clamp((pow(abs(_459 + _683), exp2(((-16.0f) * _449) - 1.0f)) - 1.0f) + _683, 0.0f, 1.0f).xxx;
    _708 = max(_683.xxx, ((((((_453 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _683) + ((_453 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _683) + ((_453 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _683);
  }
  else {
    _707 = _670;
    _708 = _670;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _668.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _707 : 1.0f.xxx;
  // RenoDX code end
  float3 _731;
  do {
    [branch] if (((_336 > 0u) && (_336 <= 15u)) && (_361 > 0.0f)) {
      uint _719 = clamp(_336 - 1u, 0u, 14u);
      _731 = _36.SampleLevel(_13, float3(_361 * _38_m0[_719].w, 0.5f, float(_719)), 0.0f).xyz;
      break;
    }
    _731 = 1.0f.xxx;
    break;
  } while (false);
  float3 _748 = (_389 + (_358 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_364 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _758 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _767 = _748 - (_9_m108.xyz + (_758 * (-_9_m110.w)));
  float _782 = max(min(max((max(abs(_767.x), abs(_767.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_767.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1084;
  float4 _1085;
  float4 _1086;
  float _1087;
  float _1088;
  if ((_9_m108.w != 0.0f) && (_782 < 1.0f)) {
    float3 _795 = _748 - (_9_m108.xyz + (_758 * (-_9_m110.y)));
    float _809 = max(clamp((max(abs(_795.x), abs(_795.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_795.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _885;
    float4 _886;
    float4 _887;
    float4 _888;
    if (_809 < 1.0f) {
      float3 _818 = ((_748 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _820 = _818 - floor(_818);
      float4 _824 = _45.SampleLevel(_14, _820, 0.0f);
      float _825 = 1.0f - _809;
      float _829 = _9_m109.y * 0.5f;
      float _834 = _820.x;
      float _835 = clamp(_820.y, _829, 1.0f - _829) * 0.3333333432674407958984375f;
      float _836 = _820.z;
      float4 _839 = _46.SampleLevel(_13, float3(_834, _835, _836), 0.0f);
      float _855 = _824.x;
      float _865 = _824.y;
      float _875 = _824.z;
      _885 = _782 + (_839.w * _825);
      _886 = float4(((_46.SampleLevel(_13, float3(_834, _835 + 0.666666686534881591796875f, _836), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _875, _875) * _825;
      _887 = float4(((_46.SampleLevel(_13, float3(_834, _835 + 0.3333333432674407958984375f, _836), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _865, _865) * _825;
      _888 = float4(((_839.xyz * 4.0f) - 2.0f.xxx) * _855, _855) * _825;
    } else {
      _885 = _782;
      _886 = 0.0f.xxxx;
      _887 = 0.0f.xxxx;
      _888 = 0.0f.xxxx;
    }
    float3 _894 = _748 - (_9_m108.xyz + (_758 * (-_9_m110.z)));
    float _908 = max(clamp((max(abs(_894.x), abs(_894.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_894.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _988;
    float4 _989;
    float4 _990;
    float4 _991;
    if (_908 < 1.0f) {
      float3 _917 = ((_748 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _919 = _917 - floor(_917);
      float4 _923 = _47.SampleLevel(_14, _919, 0.0f);
      float _925 = _809 * (1.0f - _908);
      float _929 = _9_m109.y * 0.5f;
      float _934 = _919.x;
      float _935 = clamp(_919.y, _929, 1.0f - _929) * 0.3333333432674407958984375f;
      float _936 = _919.z;
      float4 _939 = _48.SampleLevel(_13, float3(_934, _935, _936), 0.0f);
      float _955 = _923.x;
      float _966 = _923.y;
      float _977 = _923.z;
      _988 = _885 + (_939.w * _925);
      _989 = _886 + (float4(((_48.SampleLevel(_13, float3(_934, _935 + 0.666666686534881591796875f, _936), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _977, _977) * _925);
      _990 = _887 + (float4(((_48.SampleLevel(_13, float3(_934, _935 + 0.3333333432674407958984375f, _936), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _966, _966) * _925);
      _991 = _888 + (float4(((_939.xyz * 4.0f) - 2.0f.xxx) * _955, _955) * _925);
    } else {
      _988 = _885;
      _989 = _886;
      _990 = _887;
      _991 = _888;
    }
    float4 _1074;
    float4 _1075;
    float4 _1076;
    float _1077;
    if (_908 > 0.0f) {
      float3 _1000 = ((_748 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1003 = _9_m109.xyz * 0.5f;
      float3 _1005 = clamp(_1000 - floor(_1000), _1003, 1.0f.xxx - _1003);
      float4 _1009 = _49.SampleLevel(_14, _1005, 0.0f);
      float _1011 = _908 * (1.0f - _782);
      float _1015 = _9_m109.y * 0.5f;
      float _1020 = _1005.x;
      float _1021 = clamp(_1005.y, _1015, 1.0f - _1015) * 0.3333333432674407958984375f;
      float _1022 = _1005.z;
      float4 _1025 = _50.SampleLevel(_13, float3(_1020, _1021, _1022), 0.0f);
      float _1041 = _1009.x;
      float _1052 = _1009.y;
      float _1063 = _1009.z;
      _1074 = _989 + (float4(((_50.SampleLevel(_13, float3(_1020, _1021 + 0.666666686534881591796875f, _1022), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1063, _1063) * _1011);
      _1075 = _990 + (float4(((_50.SampleLevel(_13, float3(_1020, _1021 + 0.3333333432674407958984375f, _1022), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1052, _1052) * _1011);
      _1076 = _991 + (float4(((_1025.xyz * 4.0f) - 2.0f.xxx) * _1041, _1041) * _1011);
      _1077 = _988 + (_1025.w * _1011);
    } else {
      _1074 = _989;
      _1075 = _990;
      _1076 = _991;
      _1077 = _988;
    }
    float _1080 = clamp((_1077 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1084 = _1074;
    _1085 = _1075;
    _1086 = _1076;
    _1087 = _1080 - _782;
    _1088 = (_1080 + _782) * 0.5f;
  } else {
    _1084 = 0.0f.xxxx;
    _1085 = 0.0f.xxxx;
    _1086 = 0.0f.xxxx;
    _1087 = 0.0f;
    _1088 = 1.0f;
  }
  float4 _1108 = _1086 + float4(_9_m111.x * _1088, (_9_m111.y * _1088) + ((_9_m111.w * _1087) * 0.5f), _9_m111.z * _1088, (_9_m111.w * _1088) + ((_9_m111.y * _1087) * 0.375f));
  float4 _1128 = _1085 + float4(_9_m112.x * _1088, (_9_m112.y * _1088) + ((_9_m112.w * _1087) * 0.5f), _9_m112.z * _1088, (_9_m112.w * _1088) + ((_9_m112.y * _1087) * 0.375f));
  float4 _1148 = _1084 + float4(_9_m113.x * _1088, (_9_m113.y * _1088) + ((_9_m113.w * _1087) * 0.5f), _9_m113.z * _1088, (_9_m113.w * _1088) + ((_9_m113.y * _1087) * 0.375f));
  float4 _1306;
  float4 _1307;
  float4 _1308;
  [branch] if (all(bool2(_377.x >= 0.0f.xx.x, _377.y >= 0.0f.xx.y))) {
    float4 _1156 = _44.SampleLevel(_13, _377, 0.0f);
    float4 _1157 = abs(_1156);
    float4 _1303;
    float4 _1304;
    float4 _1305;
    [branch] if (any(bool4(_1157.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1157.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1157.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1157.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1163 = length(_1156.yzw);
      uint _1165;
      float _1168;
      _1165 = 0u;
      _1168 = 1.0f;
      for (float _1170 = _1163; _1170 > 4.599999904632568359375f;) {
        _1165++;
        _1168 *= 0.5f;
        _1170 *= 0.5f;
        continue;
      }
      float4 _1174 = _1156 * _1168;
      float4 _1179 = float4(0.0f, _1174.yzw);
      float2 _1201 = (_43.SampleLevel(_13, float2(((((length(_1179) * _42_m3.x) + _42_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _42_m2.xy) + _42_m2.zw;
      float4 _1215;
      _1215 = float4(_1201.x * 3.5449078083038330078125f, _1179.yzw * _1201.y) * exp(_1174.x * 0.282094776630401611328125f);
      for (uint _1218 = 0u; _1218 < _1165;) {
        _1215 = mul(float4x4(_1215, float4(_1215.yx, 0.0f, 0.0f), float4(_1215.z, 0.0f, _1215.x, 0.0f), float4(_1215.w, 0.0f, 0.0f, _1215.x)) * 0.282094776630401611328125f, _1215);
        _1218++;
        continue;
      }
      float4x4 _1239 = float4x4(_1215, float4(_1215.yx, 0.0f, 0.0f), float4(_1215.z, 0.0f, _1215.x, 0.0f), float4(_1215.w, 0.0f, 0.0f, _1215.x)) * 0.282094776630401611328125f;
      float4 _1249 = mul(_1239, float4(_1108.w * 1.1283791065216064453125f, _1108.y * (-0.977204978466033935546875f), _1108.z * 0.977204978466033935546875f, _1108.x * (-0.977204978466033935546875f)));
      float4 _1269 = mul(_1239, float4(_1128.w * 1.1283791065216064453125f, _1128.y * (-0.977204978466033935546875f), _1128.z * 0.977204978466033935546875f, _1128.x * (-0.977204978466033935546875f)));
      float4 _1289 = mul(_1239, float4(_1148.w * 1.1283791065216064453125f, _1148.y * (-0.977204978466033935546875f), _1148.z * 0.977204978466033935546875f, _1148.x * (-0.977204978466033935546875f)));
      _1303 = float4(_1249.x * 0.886226952075958251953125f, _1249.w * (-1.02332675457000732421875f), _1249.y * (-1.02332675457000732421875f), _1249.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1304 = float4(_1269.x * 0.886226952075958251953125f, _1269.w * (-1.02332675457000732421875f), _1269.y * (-1.02332675457000732421875f), _1269.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1305 = float4(_1289.x * 0.886226952075958251953125f, _1289.w * (-1.02332675457000732421875f), _1289.y * (-1.02332675457000732421875f), _1289.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1303 = _1108;
      _1304 = _1128;
      _1305 = _1148;
    }
    _1306 = _1303;
    _1307 = _1304;
    _1308 = _1305;
  }
  else {
    _1306 = _1108;
    _1307 = _1128;
    _1308 = _1148;
  }
  float _1315 = max(0.0f, dot(_1306.xyz * _731.x, _358) + _1306.w);
  float _1322 = max(0.0f, dot(_1307.xyz * _731.y, _358) + _1307.w);
  float _1329 = max(0.0f, dot(_1308.xyz * _731.z, _358) + _1308.w);
  float3 _1339 = reflect(_417, _358);
  float _1347 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_449, 0.001000000047497451305389404296875f))));
  float2 _1351 = floor(_364 * _26_m0.w);
  float _1368 = floor(_396 - _26_m2.y);
  float _1372 = clamp(_1368, 0.0f, _26_m1.x - 1.0f);
  uint _1382 = (_1368 <= _1372) ? (_23.Load(uint(_9_m21.z + int(_1351.x + (_1351.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1372)) * 4 + 0)) : 0u;
  float _1385 = dot(float4(_1315, _1322, _1329, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1387;
  float _1390;
  uint _1392;
  _1387 = 0.0f.xxx;
  _1390 = 1.0f;
  _1392 = _1382;
  uint _1393;
  float3 _1388;
  float _1391;
  bool _1395;
  [loop] for (;;) {
    bool _1394 = _1392 != 0u;
    _1395 = _1390 > 0.00999999977648258209228515625f;
    if (_1394 && _1395) {
      uint _1399 = firstbitlow(_1392);
      _1393 = _1392 ^ (1u << (_1399 & 31u));
      float3 _1419 = float3(dot(_26_m4[_1399]._m2, _393), dot(_26_m4[_1399]._m3, _393), dot(_26_m4[_1399]._m4, _393));
      float3 _1420 = abs(_1419);
      if (all(bool3(_1420.x <= _26_m4[_1399]._m1.xyz.x, _1420.y <= _26_m4[_1399]._m1.xyz.y, _1420.z <= _26_m4[_1399]._m1.xyz.z))) {
        float3 _1429 = _26_m4[_1399]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1431 = _1420 * 0.100000001490116119384765625f;
        float3 _1432 = _1431 * _1431;
        float3 _1435 = (_26_m4[_1399]._m1.xyz - _1420) * _26_m4[_1399]._m5.xyz;
        float3 _1483;
        [branch] if (_26_m4[_1399]._m6.x == 1.0f) {
          float3 _1468 = float3(dot(_26_m4[_1399]._m2.xyz, _1339), dot(_26_m4[_1399]._m3.xyz, _1339), dot(_26_m4[_1399]._m4.xyz, _1339));
          float3 _1470 = (_26_m4[_1399]._m1.xyz - _1419) / _1468;
          float3 _1473 = ((-_26_m4[_1399]._m1.xyz) - _1419) / _1468;
          bool3 _1474 = bool3(_1468.x > 0.0f.xxx.x, _1468.y > 0.0f.xxx.y, _1468.z > 0.0f.xxx.z);
          float3 _1475 = float3(_1474.x ? _1470.x : _1473.x, _1474.y ? _1470.y : _1473.y, _1474.z ? _1470.z : _1473.z);
          _1483 = _1419 + (_1468 * min(min(_1475.x, _1475.y), _1475.z));
        }
        else {
          _1483 = _1339;
        }
        float3 _1484 = normalize(_1483);
        float3 _1487 = float3(int3(sign(_1484)));
        float3 _1490 = _1484 / dot(_1484, _1487).xxx;
        float3 _1504;
        if (_1490.z < 0.0f) {
          float3 _1495 = abs(_1490);
          float2 _1502 = _1487.xy * float2(1.0f - _1495.y, 1.0f - _1495.x);
          _1504 = float3(_1502.x, _1502.y, _1490.z);
        } else {
          _1504 = _1490;
        }
        float _1529 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1399]._m0, float4(_358, 1.0f))));
        float _1542 = clamp((min(_1435.x, min(_1435.y, _1435.z)) * _26_m4[_1399]._m6.y) + ((((((_1429 * _1429).x - ((_1432.x + _1432.y) + _1432.z)) * _26_m4[_1399]._m5.x) * _26_m4[_1399]._m5.x) * (1.0f - _26_m4[_1399]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1399]._m6.w;
        _1388 = _1387 + ((((_21.SampleLevel(_15, float3((((_1504.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1399]._m1.w), _1347).xyz * _26_m4[_1399]._m5.w) * ((((((clamp(abs(_1385 / _1529), 0.0f, 1.0f) * 2.0f) + _1385) / (2.0f + _1529)) - 1.0f) * _9_m23.w) + 1.0f)) * _1542) * _1390);
        _1391 = _1390 * (1.0f - _1542);
      } else {
        _1388 = _1387;
        _1391 = _1390;
      }
      _1387 = _1388;
      _1390 = _1391;
      _1392 = _1393;
      continue;
    } else {
      break;
    }
  }
  float3 _1611;
  if (_1395) {
    float3 _1550 = normalize(_1339);
    float3 _1553 = float3(int3(sign(_1550)));
    float3 _1556 = _1550 / dot(_1550, _1553).xxx;
    float3 _1570;
    if (_1556.z < 0.0f) {
      float3 _1561 = abs(_1556);
      float2 _1568 = _1553.xy * float2(1.0f - _1561.y, 1.0f - _1561.x);
      _1570 = float3(_1568.x, _1568.y, _1556.z);
    } else {
      _1570 = _1556;
    }
    float _1597 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_358, 1.0f))));
    _1611 = _1387 + ((_21.SampleLevel(_15, float3((((_1570.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1347).xyz * ((((((clamp(abs(_1385 / _1597), 0.0f, 1.0f) * 2.0f) + _1385) / (2.0f + _1597)) - 1.0f) * _9_m23.w) + 1.0f)) * _1390);
  } else {
    _1611 = _1387;
  }
  float3 _1617 = (_1611 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _1617 *= 0.25f + (0.75f * saturate(_1385));
  }
  // RenoDX code end
  float3 _1640;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1634 = _19.SampleBias(_13, _4, _9_m16);
    float _1635 = _1634.x;
    _1640 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1635) + (_1617 * (1.0f - _1635));
  }
  else {
    _1640 = _1617;
  }
  float3 _1643 = (((float3(_1315, _1322, _1329) * _453) * _9_m22.x) * _708) + ((_1640 * (_482 + ((_457 * ((1.0f - _483) / _483)) * _482))) * _707);
  float4 _1645 = float4(_668.x, _668.y, _668.z, _668.w) + float4(_1643.x, _1643.y, _1643.z, 0.0f.xxxx.w);
  float3 _1648 = clamp(_1645.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _1663 = _389.y * _9_m46.w;
  float _1668 = max(0.00999999977648258209228515625f, _1663 + _9_m47.w);
  float3 _1682 = exp(_9_m45.xyz * ((-max(0.0f, (_416 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1668)) / _1668) * exp(_1663 + _9_m48.w))));
  float _1685 = dot(_417, _9_m44.xyz);
  float _1691 = _9_m45.w * _9_m45.w;
  float _1695 = (1.0f + _1691) - ((2.0f * _9_m45.w) * _1685);
  float3 _2023;
  float _2024;
  if (_9_m55.z > 0.0f) {
    uint3 _1849 = (uint3(int3(_314, _315, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1850 = _1849.y;
    uint _1851 = _1849.z;
    uint _1854 = _1849.x + (_1850 * _1851);
    uint _1856 = _1850 + (_1851 * _1854);
    uint _1858 = _1851 + (_1854 * _1856);
    uint _1860 = _1854 + (_1856 * _1858);
    float _1884 = dot(_417, -_7_m0[2].xyz);
    float3 _1894 = _389 - _7_m11.xyz;
    float _1896 = (_9_m55.w * ((_1884 > 5.9604644775390625e-08f) ? (1.0f / _1884) : 0.0f)) * (1.0f / _416);
    float _1897 = _1894.y;
    float _1898 = _1896 * _1897;
    float _1900 = _7_m11.y + _1898;
    float _1901 = _1897 - _1898;
    float _1903 = (1.0f - _1896) * _416;
    float _1917 = max(-127.0f, _9_m49.z * _1901);
    float _1941 = max(-127.0f, _9_m52.x * _1901);
    float _1952 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1900 - _9_m49.x)))) * ((abs(_1917) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1917)) / _1917) : (0.693147182464599609375f - (0.2402265071868896484375f * _1917)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1900 - _9_m52.z)))) * ((abs(_1941) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1941)) / _1941) : (0.693147182464599609375f - (0.2402265071868896484375f * _1941))));
    float _1974 = clamp((_416 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1977 = clamp((max(clamp(exp2(-(_1952 * _1903)), 0.0f, 1.0f), _9_m51.w) + clamp((_416 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1974, 0.0f, 1.0f);
    float4 _2017 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _40.SampleLevel(_13, float3((_364 + ((((float3(uint3(_1860, _1856 + (_1858 * _1860), _305) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_396 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_396 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2019 = _2017.w;
    _2023 = _2017.xyz + (((_9_m51.xyz * (1.0f - _1977)) + (((_9_m54.xyz * pow(clamp(dot(_415, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1952 * max(_1903 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1974))) * _2019);
    _2024 = _2019 * _1977;
  } else {
    float3 _1725 = _389 - _7_m11.xyz;
    float _1727 = _1725.y;
    float _1741 = max(-127.0f, _9_m49.z * _1727);
    float _1765 = max(-127.0f, _9_m52.x * _1727);
    float _1776 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1741) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1741)) / _1741) : (0.693147182464599609375f - (0.2402265071868896484375f * _1741)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1765) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1765)) / _1765) : (0.693147182464599609375f - (0.2402265071868896484375f * _1765))));
    float _1798 = clamp((_416 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1801 = clamp((max(clamp(exp2(-(_1776 * _416)), 0.0f, 1.0f), _9_m51.w) + clamp((_416 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1798, 0.0f, 1.0f);
    _2023 = (_9_m51.xyz * (1.0f - _1801)) + (((_9_m54.xyz * pow(clamp(dot(_415, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1776 * max(_416 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1798));
    _2024 = _1801;
  }
  float3 _2027 = _1682 * _2024;
  float3 _2029 = (_1648 * _2027) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1685 * _1685)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1691) / max((12.56637096405029296875f * _1695) * sqrt(_1695), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1682)) * _2024) + _2023);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2029 = (_2029 * 0.65f) + (_1648 * 0.35f);
  }
  // RenoDX code end
  float _2030 = dot(_2027, 0.3333333432674407958984375f.xxx);
  float4 _2031 = float4(_2029.x, _2029.y, _2029.z, _1645.w);
  _2031.w = _2030;
  float _2060 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _389) * _9_m61.z), 0.0f, 1.0f);
  float3 _2068 = lerp(_1648, _2031.xyz, min((1.0f - _2060) + ((_55.SampleLevel(_14, (_389 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _2060), 1.0f + _2030).xxx);
  _5 = float4(_2068.x, _2068.y, _2068.z, _2031.w);
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

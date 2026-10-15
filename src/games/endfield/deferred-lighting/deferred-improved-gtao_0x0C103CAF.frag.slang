#include "./renodx_injection.hlsli"

// Ported from the native 0x0C103CAF Vulkan dump.
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

static uint _292;

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
[[vk::binding(7, 3)]] Texture2D<float4> _18 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _20 : register(t18, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _21 : register(t9, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _31 : register(t6, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _32 : register(t24, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _34 : register(t10, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _35 : register(t22, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _36 : register(t17, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _39 : register(t25, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _40 : register(t5, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _41 : register(t16, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _42 : register(t13, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _43 : register(t15, space3);
[[vk::binding(12, 3)]] Texture3D<float4> _44 : register(t12, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _45 : register(t14, space3);
[[vk::binding(11, 3)]] Texture3D<float4> _46 : register(t11, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _47 : register(t4, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _48 : register(t21, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _49 : register(t20, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _50 : register(t19, space3);

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
  float4 _306 = _48.Load(int3(_304, 0));
  float4 _308 = _49.Load(int3(_304, 0));
  float _311 = _306.x;
  float _312 = _306.y;
  float2 _316 = (_308.xy * 2.0f) - 1.0f.xx;
  float _320 = 1.0f - dot(1.0f.xx, abs(_316));
  float3 _322 = float3(_316.x, _320, _316.y);
  float3 _334;
  if (_320 < 0.0f) {
    float2 _329 = _322.xz;
    bool2 _330 = bool2(_329.x >= 0.0f.xx.x, _329.y >= 0.0f.xx.y);
    float2 _332 = (1.0f.xx - abs(_322.zx)) * float2(_330.x ? 1.0f.xx.x : (-1.0f).xx.x, _330.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _334 = float3(_332.x, _322.y, _332.y);
  } else {
    _334 = _322;
  }
  float3 _335 = normalize(_334);
  float _336 = _308.z;
  float2 _340 = float2(_298);
  float2 _353 = gl_FragCoord.xy * _9_m0.zw;
  float2 _355 = (_353 * 2.0f) - 1.0f.xx;
  float4 _358 = float4(_355, _17.SampleLevel(_12, (_340 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _358.y = -_355.y;
  float4 _361 = mul(_7_m6, _358);
  float3 _365 = _361.xyz / _361.w.xxx;
  float4 _369 = float4(_365, 1.0f);
  float _372 = abs(mul(_7_m0, _369).z);
  float3 _387;
  do {
    if (_9_m4.w == 0.0f) {
      _387 = _7_m11.xyz - _365;
      break;
    } else {
      _387 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _388 = dot(_387, _387);
  float _390 = rsqrt(max(_388, 9.9999999392252902907785028219223e-09f));
  float3 _391 = _387 * _390;
  float _392 = _388 * _390;
  float3 _393 = -_391;
  bool _396 = _9_m132.x > 0.00048828125f;
  float2 _406;
  if (_396) {
    _406 = _47.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _406 = 1.0f.xx;
  }
  float _409 = min(_406.x, _406.y);
  float2 _410 = _406 * 1.0f;
  float _411 = _410.x;
  float _414 = clamp((_306.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _419;
  float _420;
  if (_396) {
    _419 = lerp(1.0f, _406.y, _414);
    _420 = lerp(1.0f, 0.0f, _414);
  } else {
    _419 = 1.0f;
    _420 = 1.0f;
  }
  float _425 = lerp(lerp(min(_419, _336), _336, _409), _336, _411);
  float3 _427 = _50.Load(int3(_304, 0)).xyz * lerp(lerp(min(_420, 1.0f), 1.0f, _409), 1.0f, _411);
  float3 _428 = _427 * _311;
  float3 _429 = _427 - _428;
  float3 _433 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _311)).xxx + _428;
  float _434 = dot(_335, _391);
  float _435 = max(0.0f, _434);
  float _436 = _425 * _425;
  float _437 = _435 * _435;
  float _438 = _437 * _435;
  float2 _439 = float2(1.0f, _435);
  float2 _442 = float2(1.0f, _436);
  float _443 = _436 * _436;
  float3 _445 = float3(1.0f, _436, _443 * _436);
  float _450 = dot(mul(_439, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _442) / dot(mul(float3(1.0f, _437, _438), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _445);
  float _455 = dot(mul(_439, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _442) / dot(mul(float3(1.0f, _435, _438), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _445);
  float3 _458 = (_433 * _450) + _455.xxx;
  float _459 = _450 + _455;
  float4 _617;
  do {
    [branch] if (_30_m4 == 0) {
      _617 = 0.0f.xxxx;
      break;
    }
    float4 _479 = _31.Load(int3(_304, 0));
    float _480 = _479.x;
    float4 _616;
    if (_480 > 0.001000000047497451305389404296875f) {
      float3 _490 = reflect(_393, _335);
      float3 _491 = -_28_m0.xyz;
      float _496 = dot(_491, _490);
      float3 _498 = _490 - (_491 * _496);
      bool3 _500 = (_496 < _28_m4.z).xxx;
      float3 _508 = normalize((_491 * _28_m4.z) + ((_498 * rsqrt(max(6.103515625e-05f, dot(_498, _498)))) * _28_m4.y));
      float3 _509 = float3(_500.x ? _508.x : _490.x, _500.y ? _508.y : _490.y, _500.z ? _508.z : _490.z);
      float3 _513 = _509 + _391;
      float3 _517 = _513 * rsqrt(max(6.103515625e-05f, dot(_513, _513)));
      float _518 = clamp(dot(_509, _335), 0.0f, 1.0f);
      float _520 = clamp(dot(_335, _517), 0.0f, 1.0f);
      float _523 = clamp(_434, 0.0f, 1.0f);
      float _544 = (((_520 * _443) - _520) * _520) + 1.0f;
      float _547 = 1.0f - clamp(dot(_391, _517), 0.0f, 1.0f);
      float _548 = _547 * _547;
      float _550 = (_547 * _548) * _548;
      float _574 = 1.0f - _425;
      float _581 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_574 * (1.04997003078460693359375f + (_574 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _574))))));
      float _582 = 1.0f - _581;
      float3 _585 = _433 + ((1.0f.xxx - _433) * 0.0476190485060214996337890625f);
      float3 _601 = ((clamp((min(((_433 * (1.0f - _550)) + _550.xxx) * ((_443 / (_544 * _544)) * (0.5f / (((_518 * sqrt(((((-_523) * _443) + _523) * _523) + _443)) + (_523 * sqrt(((((-_518) * _443) + _518) * _518) + _443))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_585 * (((_34.SampleLevel(_13, (float2(_523, _425) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_13, (float2(_518, _425) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _581) / _582)) * _585) / (1.0f.xxx - (_585 * _582)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _518) + ((_429 * 1.0f) * _518)) * _28_m1.xyz;
      float3 _614 = lerp(_601, _601 * _32.SampleBias(_13, float2(_480, 0.5f), _9_m16).xyz, (1.0f - _480).xxx) * min(_35.SampleLevel(_13, _353, 0.0f).x, 1.0f);
      _616 = float4(_614.x, _614.y, _614.z, 0.0f.xxxx.w);
    } else {
      _616 = 0.0f.xxxx;
    }
    _617 = _616;
    break;
  } while (false);
  float3 _619 = _312.xxx;
  float3 _656;
  float3 _657;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x0C103CAF:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _632 = min(_20.SampleBias(_12, _4, _9_m16).x, _312);
    _656 = clamp((pow(abs(_435 + _632), exp2(((-16.0f) * _425) - 1.0f)) - 1.0f) + _632, 0.0f, 1.0f).xxx;
    _657 = max(_632.xxx, ((((((_429 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _632) + ((_429 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _632) + ((_429 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _632);
  }
  else {
    _656 = _619;
    _657 = _619;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _617.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _656 : 1.0f.xxx;
  // RenoDX code end
  float3 _674 = (_365 + (_335 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_340 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _684 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _693 = _674 - (_9_m108.xyz + (_684 * (-_9_m110.w)));
  float _708 = max(min(max((max(abs(_693.x), abs(_693.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_693.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1010;
  float4 _1011;
  float4 _1012;
  float _1013;
  float _1014;
  if ((_9_m108.w != 0.0f) && (_708 < 1.0f)) {
    float3 _721 = _674 - (_9_m108.xyz + (_684 * (-_9_m110.y)));
    float _735 = max(clamp((max(abs(_721.x), abs(_721.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_721.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _811;
    float4 _812;
    float4 _813;
    float4 _814;
    if (_735 < 1.0f) {
      float3 _744 = ((_674 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _746 = _744 - floor(_744);
      float4 _750 = _41.SampleLevel(_14, _746, 0.0f);
      float _751 = 1.0f - _735;
      float _755 = _9_m109.y * 0.5f;
      float _760 = _746.x;
      float _761 = clamp(_746.y, _755, 1.0f - _755) * 0.3333333432674407958984375f;
      float _762 = _746.z;
      float4 _765 = _42.SampleLevel(_13, float3(_760, _761, _762), 0.0f);
      float _781 = _750.x;
      float _791 = _750.y;
      float _801 = _750.z;
      _811 = _708 + (_765.w * _751);
      _812 = float4(((_42.SampleLevel(_13, float3(_760, _761 + 0.666666686534881591796875f, _762), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _801, _801) * _751;
      _813 = float4(((_42.SampleLevel(_13, float3(_760, _761 + 0.3333333432674407958984375f, _762), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _791, _791) * _751;
      _814 = float4(((_765.xyz * 4.0f) - 2.0f.xxx) * _781, _781) * _751;
    } else {
      _811 = _708;
      _812 = 0.0f.xxxx;
      _813 = 0.0f.xxxx;
      _814 = 0.0f.xxxx;
    }
    float3 _820 = _674 - (_9_m108.xyz + (_684 * (-_9_m110.z)));
    float _834 = max(clamp((max(abs(_820.x), abs(_820.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_820.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _914;
    float4 _915;
    float4 _916;
    float4 _917;
    if (_834 < 1.0f) {
      float3 _843 = ((_674 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _845 = _843 - floor(_843);
      float4 _849 = _43.SampleLevel(_14, _845, 0.0f);
      float _851 = _735 * (1.0f - _834);
      float _855 = _9_m109.y * 0.5f;
      float _860 = _845.x;
      float _861 = clamp(_845.y, _855, 1.0f - _855) * 0.3333333432674407958984375f;
      float _862 = _845.z;
      float4 _865 = _44.SampleLevel(_13, float3(_860, _861, _862), 0.0f);
      float _881 = _849.x;
      float _892 = _849.y;
      float _903 = _849.z;
      _914 = _811 + (_865.w * _851);
      _915 = _812 + (float4(((_44.SampleLevel(_13, float3(_860, _861 + 0.666666686534881591796875f, _862), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _903, _903) * _851);
      _916 = _813 + (float4(((_44.SampleLevel(_13, float3(_860, _861 + 0.3333333432674407958984375f, _862), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _892, _892) * _851);
      _917 = _814 + (float4(((_865.xyz * 4.0f) - 2.0f.xxx) * _881, _881) * _851);
    } else {
      _914 = _811;
      _915 = _812;
      _916 = _813;
      _917 = _814;
    }
    float4 _1000;
    float4 _1001;
    float4 _1002;
    float _1003;
    if (_834 > 0.0f) {
      float3 _926 = ((_674 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _929 = _9_m109.xyz * 0.5f;
      float3 _931 = clamp(_926 - floor(_926), _929, 1.0f.xxx - _929);
      float4 _935 = _45.SampleLevel(_14, _931, 0.0f);
      float _937 = _834 * (1.0f - _708);
      float _941 = _9_m109.y * 0.5f;
      float _946 = _931.x;
      float _947 = clamp(_931.y, _941, 1.0f - _941) * 0.3333333432674407958984375f;
      float _948 = _931.z;
      float4 _951 = _46.SampleLevel(_13, float3(_946, _947, _948), 0.0f);
      float _967 = _935.x;
      float _978 = _935.y;
      float _989 = _935.z;
      _1000 = _915 + (float4(((_46.SampleLevel(_13, float3(_946, _947 + 0.666666686534881591796875f, _948), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _989, _989) * _937);
      _1001 = _916 + (float4(((_46.SampleLevel(_13, float3(_946, _947 + 0.3333333432674407958984375f, _948), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _978, _978) * _937);
      _1002 = _917 + (float4(((_951.xyz * 4.0f) - 2.0f.xxx) * _967, _967) * _937);
      _1003 = _914 + (_951.w * _937);
    } else {
      _1000 = _915;
      _1001 = _916;
      _1002 = _917;
      _1003 = _914;
    }
    float _1006 = clamp((_1003 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1010 = _1000;
    _1011 = _1001;
    _1012 = _1002;
    _1013 = _1006 - _708;
    _1014 = (_1006 + _708) * 0.5f;
  } else {
    _1010 = 0.0f.xxxx;
    _1011 = 0.0f.xxxx;
    _1012 = 0.0f.xxxx;
    _1013 = 0.0f;
    _1014 = 1.0f;
  }
  float4 _1034 = _1012 + float4(_9_m111.x * _1014, (_9_m111.y * _1014) + ((_9_m111.w * _1013) * 0.5f), _9_m111.z * _1014, (_9_m111.w * _1014) + ((_9_m111.y * _1013) * 0.375f));
  float4 _1054 = _1011 + float4(_9_m112.x * _1014, (_9_m112.y * _1014) + ((_9_m112.w * _1013) * 0.5f), _9_m112.z * _1014, (_9_m112.w * _1014) + ((_9_m112.y * _1013) * 0.375f));
  float4 _1074 = _1010 + float4(_9_m113.x * _1014, (_9_m113.y * _1014) + ((_9_m113.w * _1013) * 0.5f), _9_m113.z * _1014, (_9_m113.w * _1014) + ((_9_m113.y * _1013) * 0.375f));
  float4 _1232;
  float4 _1233;
  float4 _1234;
  [branch] if (all(bool2(_353.x >= 0.0f.xx.x, _353.y >= 0.0f.xx.y))) {
    float4 _1082 = _40.SampleLevel(_13, _353, 0.0f);
    float4 _1083 = abs(_1082);
    float4 _1229;
    float4 _1230;
    float4 _1231;
    [branch] if (any(bool4(_1083.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1083.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1083.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1083.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1089 = length(_1082.yzw);
      uint _1091;
      float _1094;
      _1091 = 0u;
      _1094 = 1.0f;
      for (float _1096 = _1089; _1096 > 4.599999904632568359375f;) {
        _1091++;
        _1094 *= 0.5f;
        _1096 *= 0.5f;
        continue;
      }
      float4 _1100 = _1082 * _1094;
      float4 _1105 = float4(0.0f, _1100.yzw);
      float2 _1127 = (_39.SampleLevel(_13, float2(((((length(_1105) * _38_m3.x) + _38_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _38_m2.xy) + _38_m2.zw;
      float4 _1141;
      _1141 = float4(_1127.x * 3.5449078083038330078125f, _1105.yzw * _1127.y) * exp(_1100.x * 0.282094776630401611328125f);
      for (uint _1144 = 0u; _1144 < _1091;) {
        _1141 = mul(float4x4(_1141, float4(_1141.yx, 0.0f, 0.0f), float4(_1141.z, 0.0f, _1141.x, 0.0f), float4(_1141.w, 0.0f, 0.0f, _1141.x)) * 0.282094776630401611328125f, _1141);
        _1144++;
        continue;
      }
      float4x4 _1165 = float4x4(_1141, float4(_1141.yx, 0.0f, 0.0f), float4(_1141.z, 0.0f, _1141.x, 0.0f), float4(_1141.w, 0.0f, 0.0f, _1141.x)) * 0.282094776630401611328125f;
      float4 _1175 = mul(_1165, float4(_1034.w * 1.1283791065216064453125f, _1034.y * (-0.977204978466033935546875f), _1034.z * 0.977204978466033935546875f, _1034.x * (-0.977204978466033935546875f)));
      float4 _1195 = mul(_1165, float4(_1054.w * 1.1283791065216064453125f, _1054.y * (-0.977204978466033935546875f), _1054.z * 0.977204978466033935546875f, _1054.x * (-0.977204978466033935546875f)));
      float4 _1215 = mul(_1165, float4(_1074.w * 1.1283791065216064453125f, _1074.y * (-0.977204978466033935546875f), _1074.z * 0.977204978466033935546875f, _1074.x * (-0.977204978466033935546875f)));
      _1229 = float4(_1175.x * 0.886226952075958251953125f, _1175.w * (-1.02332675457000732421875f), _1175.y * (-1.02332675457000732421875f), _1175.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1230 = float4(_1195.x * 0.886226952075958251953125f, _1195.w * (-1.02332675457000732421875f), _1195.y * (-1.02332675457000732421875f), _1195.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1231 = float4(_1215.x * 0.886226952075958251953125f, _1215.w * (-1.02332675457000732421875f), _1215.y * (-1.02332675457000732421875f), _1215.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1229 = _1034;
      _1230 = _1054;
      _1231 = _1074;
    }
    _1232 = _1229;
    _1233 = _1230;
    _1234 = _1231;
  }
  else {
    _1232 = _1034;
    _1233 = _1054;
    _1234 = _1074;
  }
  float _1239 = max(0.0f, dot(_1232.xyz, _335) + _1232.w);
  float _1244 = max(0.0f, dot(_1233.xyz, _335) + _1233.w);
  float _1249 = max(0.0f, dot(_1234.xyz, _335) + _1234.w);
  float3 _1259 = reflect(_393, _335);
  float _1267 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_425, 0.001000000047497451305389404296875f))));
  float2 _1271 = floor(_340 * _26_m0.w);
  float _1288 = floor(_372 - _26_m2.y);
  float _1292 = clamp(_1288, 0.0f, _26_m1.x - 1.0f);
  uint _1302 = (_1288 <= _1292) ? (_23.Load(uint(_9_m21.z + int(_1271.x + (_1271.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1292)) * 4 + 0)) : 0u;
  float _1305 = dot(float4(_1239, _1244, _1249, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
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
      float3 _1339 = float3(dot(_26_m4[_1319]._m2, _369), dot(_26_m4[_1319]._m3, _369), dot(_26_m4[_1319]._m4, _369));
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
        float _1449 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1319]._m0, float4(_335, 1.0f))));
        float _1462 = clamp((min(_1355.x, min(_1355.y, _1355.z)) * _26_m4[_1319]._m6.y) + ((((((_1349 * _1349).x - ((_1352.x + _1352.y) + _1352.z)) * _26_m4[_1319]._m5.x) * _26_m4[_1319]._m5.x) * (1.0f - _26_m4[_1319]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1319]._m6.w;
        _1308 = _1307 + ((((_21.SampleLevel(_15, float3((((_1424.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1319]._m1.w), _1267).xyz * _26_m4[_1319]._m5.w) * ((((((clamp(abs(_1305 / _1449), 0.0f, 1.0f) * 2.0f) + _1305) / (2.0f + _1449)) - 1.0f) * _9_m23.w) + 1.0f)) * _1462) * _1310);
        _1311 = _1310 * (1.0f - _1462);
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
  float3 _1531;
  if (_1315) {
    float3 _1470 = normalize(_1259);
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
    float _1517 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_335, 1.0f))));
    _1531 = _1307 + ((_21.SampleLevel(_15, float3((((_1490.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1267).xyz * ((((((clamp(abs(_1305 / _1517), 0.0f, 1.0f) * 2.0f) + _1305) / (2.0f + _1517)) - 1.0f) * _9_m23.w) + 1.0f)) * _1310);
  } else {
    _1531 = _1307;
  }
  float3 _1537 = (_1531 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _1537 *= 0.25f + (0.75f * saturate(_1305));
  }
  // RenoDX code end
  float3 _1560;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1554 = _19.SampleBias(_13, _4, _9_m16);
    float _1555 = _1554.x;
    _1560 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1555) + (_1537 * (1.0f - _1555));
  }
  else {
    _1560 = _1537;
  }
  float3 _1563 = (((float3(_1239, _1244, _1249) * _429) * _9_m22.x) * _657) + ((_1560 * (_458 + ((_433 * ((1.0f - _459) / _459)) * _458))) * _656);
  float4 _1565 = float4(_617.x, _617.y, _617.z, _617.w) + float4(_1563.x, _1563.y, _1563.z, 0.0f.xxxx.w);
  float _1583 = _365.y * _9_m46.w;
  float _1588 = max(0.00999999977648258209228515625f, _1583 + _9_m47.w);
  float3 _1602 = exp(_9_m45.xyz * ((-max(0.0f, (_392 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1588)) / _1588) * exp(_1583 + _9_m48.w))));
  float _1605 = dot(_393, _9_m44.xyz);
  float _1611 = _9_m45.w * _9_m45.w;
  float _1615 = (1.0f + _1611) - ((2.0f * _9_m45.w) * _1605);
  float3 _1943;
  float _1944;
  if (_9_m55.z > 0.0f) {
    uint3 _1769 = (uint3(int3(_301, _302, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1770 = _1769.y;
    uint _1771 = _1769.z;
    uint _1774 = _1769.x + (_1770 * _1771);
    uint _1776 = _1770 + (_1771 * _1774);
    uint _1778 = _1771 + (_1774 * _1776);
    uint _1780 = _1774 + (_1776 * _1778);
    float _1804 = dot(_393, -_7_m0[2].xyz);
    float3 _1814 = _365 - _7_m11.xyz;
    float _1816 = (_9_m55.w * ((_1804 > 5.9604644775390625e-08f) ? (1.0f / _1804) : 0.0f)) * (1.0f / _392);
    float _1817 = _1814.y;
    float _1818 = _1816 * _1817;
    float _1820 = _7_m11.y + _1818;
    float _1821 = _1817 - _1818;
    float _1823 = (1.0f - _1816) * _392;
    float _1837 = max(-127.0f, _9_m49.z * _1821);
    float _1861 = max(-127.0f, _9_m52.x * _1821);
    float _1872 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1820 - _9_m49.x)))) * ((abs(_1837) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1837)) / _1837) : (0.693147182464599609375f - (0.2402265071868896484375f * _1837)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1820 - _9_m52.z)))) * ((abs(_1861) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1861)) / _1861) : (0.693147182464599609375f - (0.2402265071868896484375f * _1861))));
    float _1894 = clamp((_392 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1897 = clamp((max(clamp(exp2(-(_1872 * _1823)), 0.0f, 1.0f), _9_m51.w) + clamp((_392 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1894, 0.0f, 1.0f);
    float4 _1937 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _36.SampleLevel(_13, float3((_340 + ((((float3(uint3(_1780, _1776 + (_1778 * _1780), _292) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_372 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_372 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _1939 = _1937.w;
    _1943 = _1937.xyz + (((_9_m51.xyz * (1.0f - _1897)) + (((_9_m54.xyz * pow(clamp(dot(_391, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1872 * max(_1823 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1894))) * _1939);
    _1944 = _1939 * _1897;
  } else {
    float3 _1645 = _365 - _7_m11.xyz;
    float _1647 = _1645.y;
    float _1661 = max(-127.0f, _9_m49.z * _1647);
    float _1685 = max(-127.0f, _9_m52.x * _1647);
    float _1696 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1661) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1661)) / _1661) : (0.693147182464599609375f - (0.2402265071868896484375f * _1661)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1685) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1685)) / _1685) : (0.693147182464599609375f - (0.2402265071868896484375f * _1685))));
    float _1718 = clamp((_392 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1721 = clamp((max(clamp(exp2(-(_1696 * _392)), 0.0f, 1.0f), _9_m51.w) + clamp((_392 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1718, 0.0f, 1.0f);
    _1943 = (_9_m51.xyz * (1.0f - _1721)) + (((_9_m54.xyz * pow(clamp(dot(_391, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1696 * max(_392 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1718));
    _1944 = _1721;
  }
  float3 _1947 = _1602 * _1944;
  float3 _1949 = (clamp(_1565.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _1947) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1605 * _1605)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1611) / max((12.56637096405029296875f * _1615) * sqrt(_1615), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1602)) * _1944) + _1943);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _1949 = (_1949 * 0.65f) + (clamp(_1565.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _1951 = float4(_1949.x, _1949.y, _1949.z, _1565.w);
  _1951.w = dot(_1947, 0.3333333432674407958984375f.xxx);
  _5 = _1951;
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

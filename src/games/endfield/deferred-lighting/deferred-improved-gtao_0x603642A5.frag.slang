#include "./renodx_injection.hlsli"

// Ported from the native 0x603642A5 Vulkan dump.
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

static uint _296;

[[vk::binding(27, 3)]] cbuffer _6_7 : register(b27, space3) {
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

[[vk::binding(31, 3)]] cbuffer _8_9 : register(b31, space3) {
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

[[vk::binding(33, 3)]] ByteAddressBuffer _23 : register(t33, space3);
[[vk::binding(32, 3)]] cbuffer _24_26 : register(b32, space3) {
  float4 _26_m0 : packoffset(c0);
  float4 _26_m1 : packoffset(c1);
  float4 _26_m2 : packoffset(c2);
  float4 _26_m3 : packoffset(c3);
  _25 _26_m4[32] : packoffset(c4);
};

[[vk::binding(28, 3)]] cbuffer _27_28 : register(b28, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  float4 _28_m4 : packoffset(c4);
  uint4 _28_m5 : packoffset(c5);
  float4 _28_m6[2048] : packoffset(c6);
};

[[vk::binding(29, 3)]] cbuffer _29_30 : register(b29, space3) {
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
[[vk::binding(24, 3)]] Texture2D<float4> _17 : register(t24, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _18 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _20 : register(t18, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _21 : register(t9, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _31 : register(t6, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _32 : register(t25, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _34 : register(t10, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _35 : register(t23, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _36 : register(t17, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _39 : register(t26, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _40 : register(t5, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _41 : register(t16, space3);
[[vk::binding(13, 3)]] Texture3D<float4> _42 : register(t13, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _43 : register(t15, space3);
[[vk::binding(12, 3)]] Texture3D<float4> _44 : register(t12, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _45 : register(t14, space3);
[[vk::binding(11, 3)]] Texture3D<float4> _46 : register(t11, space3);
[[vk::binding(4, 3)]] Texture2D<float4> _47 : register(t4, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _48 : register(t22, space3);
[[vk::binding(21, 3)]] Texture2D<float4> _49 : register(t21, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _50 : register(t20, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _51 : register(t19, space3);

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
  float4 _310 = _48.Load(int3(_308, 0));
  float4 _312 = _49.Load(int3(_308, 0));
  float _315 = _310.x;
  float _316 = _310.y;
  float2 _320 = (_312.xy * 2.0f) - 1.0f.xx;
  float _324 = 1.0f - dot(1.0f.xx, abs(_320));
  float3 _326 = float3(_320.x, _324, _320.y);
  float3 _338;
  if (_324 < 0.0f) {
    float2 _333 = _326.xz;
    bool2 _334 = bool2(_333.x >= 0.0f.xx.x, _333.y >= 0.0f.xx.y);
    float2 _336 = (1.0f.xx - abs(_326.zx)) * float2(_334.x ? 1.0f.xx.x : (-1.0f).xx.x, _334.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _338 = float3(_336.x, _326.y, _336.y);
  } else {
    _338 = _326;
  }
  float3 _339 = normalize(_338);
  float _340 = _312.z;
  float2 _344 = float2(_302);
  float2 _357 = gl_FragCoord.xy * _9_m0.zw;
  float2 _359 = (_357 * 2.0f) - 1.0f.xx;
  float4 _362 = float4(_359, _17.SampleLevel(_12, (_344 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _362.y = -_359.y;
  float4 _365 = mul(_7_m6, _362);
  float3 _369 = _365.xyz / _365.w.xxx;
  float4 _373 = float4(_369, 1.0f);
  float _376 = abs(mul(_7_m0, _373).z);
  float3 _391;
  do {
    if (_9_m4.w == 0.0f) {
      _391 = _7_m11.xyz - _369;
      break;
    } else {
      _391 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _392 = dot(_391, _391);
  float _394 = rsqrt(max(_392, 9.9999999392252902907785028219223e-09f));
  float3 _395 = _391 * _394;
  float _396 = _392 * _394;
  float3 _397 = -_395;
  bool _400 = _9_m132.x > 0.00048828125f;
  float2 _410;
  if (_400) {
    _410 = _47.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _410 = 1.0f.xx;
  }
  float _413 = min(_410.x, _410.y);
  float2 _414 = _410 * 1.0f;
  float _415 = _414.x;
  float _418 = clamp((_310.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _423;
  float _424;
  if (_400) {
    _423 = lerp(1.0f, _410.y, _418);
    _424 = lerp(1.0f, 0.0f, _418);
  } else {
    _423 = 1.0f;
    _424 = 1.0f;
  }
  float _429 = lerp(lerp(min(_423, _340), _340, _413), _340, _415);
  float3 _431 = _50.Load(int3(_308, 0)).xyz * lerp(lerp(min(_424, 1.0f), 1.0f, _413), 1.0f, _415);
  float3 _432 = _431 * _315;
  float3 _433 = _431 - _432;
  float3 _437 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _315)).xxx + _432;
  float _438 = dot(_339, _395);
  float _439 = max(0.0f, _438);
  float _440 = _429 * _429;
  float _441 = _439 * _439;
  float _442 = _441 * _439;
  float2 _443 = float2(1.0f, _439);
  float2 _446 = float2(1.0f, _440);
  float _447 = _440 * _440;
  float3 _449 = float3(1.0f, _440, _447 * _440);
  float _454 = dot(mul(_443, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _446) / dot(mul(float3(1.0f, _441, _442), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _449);
  float _459 = dot(mul(_443, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _446) / dot(mul(float3(1.0f, _439, _442), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _449);
  float3 _462 = (_437 * _454) + _459.xxx;
  float _463 = _454 + _459;
  float4 _621;
  do {
    [branch] if (_30_m4 == 0) {
      _621 = 0.0f.xxxx;
      break;
    }
    float4 _483 = _31.Load(int3(_308, 0));
    float _484 = _483.x;
    float4 _620;
    if (_484 > 0.001000000047497451305389404296875f) {
      float3 _494 = reflect(_397, _339);
      float3 _495 = -_28_m0.xyz;
      float _500 = dot(_495, _494);
      float3 _502 = _494 - (_495 * _500);
      bool3 _504 = (_500 < _28_m4.z).xxx;
      float3 _512 = normalize((_495 * _28_m4.z) + ((_502 * rsqrt(max(6.103515625e-05f, dot(_502, _502)))) * _28_m4.y));
      float3 _513 = float3(_504.x ? _512.x : _494.x, _504.y ? _512.y : _494.y, _504.z ? _512.z : _494.z);
      float3 _517 = _513 + _395;
      float3 _521 = _517 * rsqrt(max(6.103515625e-05f, dot(_517, _517)));
      float _522 = clamp(dot(_513, _339), 0.0f, 1.0f);
      float _524 = clamp(dot(_339, _521), 0.0f, 1.0f);
      float _527 = clamp(_438, 0.0f, 1.0f);
      float _548 = (((_524 * _447) - _524) * _524) + 1.0f;
      float _551 = 1.0f - clamp(dot(_395, _521), 0.0f, 1.0f);
      float _552 = _551 * _551;
      float _554 = (_551 * _552) * _552;
      float _578 = 1.0f - _429;
      float _585 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_578 * (1.04997003078460693359375f + (_578 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _578))))));
      float _586 = 1.0f - _585;
      float3 _589 = _437 + ((1.0f.xxx - _437) * 0.0476190485060214996337890625f);
      float3 _605 = ((clamp((min(((_437 * (1.0f - _554)) + _554.xxx) * ((_447 / (_548 * _548)) * (0.5f / (((_522 * sqrt(((((-_527) * _447) + _527) * _527) + _447)) + (_527 * sqrt(((((-_522) * _447) + _522) * _522) + _447))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_589 * (((_34.SampleLevel(_13, (float2(_527, _429) * 0.96875f) + 0.015625f.xx, 0.0f).x * _34.SampleLevel(_13, (float2(_522, _429) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _585) / _586)) * _589) / (1.0f.xxx - (_589 * _586)))) * _28_m4.x, 0.0f.xxx, 1000.0f.xxx) * _522) + ((_433 * 1.0f) * _522)) * _28_m1.xyz;
      float3 _618 = lerp(_605, _605 * _32.SampleBias(_13, float2(_484, 0.5f), _9_m16).xyz, (1.0f - _484).xxx) * min(_35.SampleLevel(_13, _357, 0.0f).x, 1.0f);
      _620 = float4(_618.x, _618.y, _618.z, 0.0f.xxxx.w);
    } else {
      _620 = 0.0f.xxxx;
    }
    _621 = _620;
    break;
  } while (false);
  float3 _623 = _316.xxx;
  float3 _660;
  float3 _661;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x603642A5:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _636 = min(_20.SampleBias(_12, _4, _9_m16).x, _316);
    _660 = clamp((pow(abs(_439 + _636), exp2(((-16.0f) * _429) - 1.0f)) - 1.0f) + _636, 0.0f, 1.0f).xxx;
    _661 = max(_636.xxx, ((((((_433 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _636) + ((_433 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _636) + ((_433 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _636);
  }
  else {
    _660 = _623;
    _661 = _623;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _621.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _660 : 1.0f.xxx;
  // RenoDX code end
  float3 _678 = (_369 + (_339 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_344 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _688 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _697 = _678 - (_9_m108.xyz + (_688 * (-_9_m110.w)));
  float _712 = max(min(max((max(abs(_697.x), abs(_697.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_697.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1014;
  float4 _1015;
  float4 _1016;
  float _1017;
  float _1018;
  if ((_9_m108.w != 0.0f) && (_712 < 1.0f)) {
    float3 _725 = _678 - (_9_m108.xyz + (_688 * (-_9_m110.y)));
    float _739 = max(clamp((max(abs(_725.x), abs(_725.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_725.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _815;
    float4 _816;
    float4 _817;
    float4 _818;
    if (_739 < 1.0f) {
      float3 _748 = ((_678 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _750 = _748 - floor(_748);
      float4 _754 = _41.SampleLevel(_14, _750, 0.0f);
      float _755 = 1.0f - _739;
      float _759 = _9_m109.y * 0.5f;
      float _764 = _750.x;
      float _765 = clamp(_750.y, _759, 1.0f - _759) * 0.3333333432674407958984375f;
      float _766 = _750.z;
      float4 _769 = _42.SampleLevel(_13, float3(_764, _765, _766), 0.0f);
      float _785 = _754.x;
      float _795 = _754.y;
      float _805 = _754.z;
      _815 = _712 + (_769.w * _755);
      _816 = float4(((_42.SampleLevel(_13, float3(_764, _765 + 0.666666686534881591796875f, _766), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _805, _805) * _755;
      _817 = float4(((_42.SampleLevel(_13, float3(_764, _765 + 0.3333333432674407958984375f, _766), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _795, _795) * _755;
      _818 = float4(((_769.xyz * 4.0f) - 2.0f.xxx) * _785, _785) * _755;
    } else {
      _815 = _712;
      _816 = 0.0f.xxxx;
      _817 = 0.0f.xxxx;
      _818 = 0.0f.xxxx;
    }
    float3 _824 = _678 - (_9_m108.xyz + (_688 * (-_9_m110.z)));
    float _838 = max(clamp((max(abs(_824.x), abs(_824.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_824.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _918;
    float4 _919;
    float4 _920;
    float4 _921;
    if (_838 < 1.0f) {
      float3 _847 = ((_678 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _849 = _847 - floor(_847);
      float4 _853 = _43.SampleLevel(_14, _849, 0.0f);
      float _855 = _739 * (1.0f - _838);
      float _859 = _9_m109.y * 0.5f;
      float _864 = _849.x;
      float _865 = clamp(_849.y, _859, 1.0f - _859) * 0.3333333432674407958984375f;
      float _866 = _849.z;
      float4 _869 = _44.SampleLevel(_13, float3(_864, _865, _866), 0.0f);
      float _885 = _853.x;
      float _896 = _853.y;
      float _907 = _853.z;
      _918 = _815 + (_869.w * _855);
      _919 = _816 + (float4(((_44.SampleLevel(_13, float3(_864, _865 + 0.666666686534881591796875f, _866), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _907, _907) * _855);
      _920 = _817 + (float4(((_44.SampleLevel(_13, float3(_864, _865 + 0.3333333432674407958984375f, _866), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _896, _896) * _855);
      _921 = _818 + (float4(((_869.xyz * 4.0f) - 2.0f.xxx) * _885, _885) * _855);
    } else {
      _918 = _815;
      _919 = _816;
      _920 = _817;
      _921 = _818;
    }
    float4 _1004;
    float4 _1005;
    float4 _1006;
    float _1007;
    if (_838 > 0.0f) {
      float3 _930 = ((_678 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _933 = _9_m109.xyz * 0.5f;
      float3 _935 = clamp(_930 - floor(_930), _933, 1.0f.xxx - _933);
      float4 _939 = _45.SampleLevel(_14, _935, 0.0f);
      float _941 = _838 * (1.0f - _712);
      float _945 = _9_m109.y * 0.5f;
      float _950 = _935.x;
      float _951 = clamp(_935.y, _945, 1.0f - _945) * 0.3333333432674407958984375f;
      float _952 = _935.z;
      float4 _955 = _46.SampleLevel(_13, float3(_950, _951, _952), 0.0f);
      float _971 = _939.x;
      float _982 = _939.y;
      float _993 = _939.z;
      _1004 = _919 + (float4(((_46.SampleLevel(_13, float3(_950, _951 + 0.666666686534881591796875f, _952), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _993, _993) * _941);
      _1005 = _920 + (float4(((_46.SampleLevel(_13, float3(_950, _951 + 0.3333333432674407958984375f, _952), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _982, _982) * _941);
      _1006 = _921 + (float4(((_955.xyz * 4.0f) - 2.0f.xxx) * _971, _971) * _941);
      _1007 = _918 + (_955.w * _941);
    } else {
      _1004 = _919;
      _1005 = _920;
      _1006 = _921;
      _1007 = _918;
    }
    float _1010 = clamp((_1007 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1014 = _1004;
    _1015 = _1005;
    _1016 = _1006;
    _1017 = _1010 - _712;
    _1018 = (_1010 + _712) * 0.5f;
  } else {
    _1014 = 0.0f.xxxx;
    _1015 = 0.0f.xxxx;
    _1016 = 0.0f.xxxx;
    _1017 = 0.0f;
    _1018 = 1.0f;
  }
  float4 _1038 = _1016 + float4(_9_m111.x * _1018, (_9_m111.y * _1018) + ((_9_m111.w * _1017) * 0.5f), _9_m111.z * _1018, (_9_m111.w * _1018) + ((_9_m111.y * _1017) * 0.375f));
  float4 _1058 = _1015 + float4(_9_m112.x * _1018, (_9_m112.y * _1018) + ((_9_m112.w * _1017) * 0.5f), _9_m112.z * _1018, (_9_m112.w * _1018) + ((_9_m112.y * _1017) * 0.375f));
  float4 _1078 = _1014 + float4(_9_m113.x * _1018, (_9_m113.y * _1018) + ((_9_m113.w * _1017) * 0.5f), _9_m113.z * _1018, (_9_m113.w * _1018) + ((_9_m113.y * _1017) * 0.375f));
  float4 _1236;
  float4 _1237;
  float4 _1238;
  [branch] if (all(bool2(_357.x >= 0.0f.xx.x, _357.y >= 0.0f.xx.y))) {
    float4 _1086 = _40.SampleLevel(_13, _357, 0.0f);
    float4 _1087 = abs(_1086);
    float4 _1233;
    float4 _1234;
    float4 _1235;
    [branch] if (any(bool4(_1087.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1087.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1087.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1087.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1093 = length(_1086.yzw);
      uint _1095;
      float _1098;
      _1095 = 0u;
      _1098 = 1.0f;
      for (float _1100 = _1093; _1100 > 4.599999904632568359375f;) {
        _1095++;
        _1098 *= 0.5f;
        _1100 *= 0.5f;
        continue;
      }
      float4 _1104 = _1086 * _1098;
      float4 _1109 = float4(0.0f, _1104.yzw);
      float2 _1131 = (_39.SampleLevel(_13, float2(((((length(_1109) * _38_m3.x) + _38_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _38_m2.xy) + _38_m2.zw;
      float4 _1145;
      _1145 = float4(_1131.x * 3.5449078083038330078125f, _1109.yzw * _1131.y) * exp(_1104.x * 0.282094776630401611328125f);
      for (uint _1148 = 0u; _1148 < _1095;) {
        _1145 = mul(float4x4(_1145, float4(_1145.yx, 0.0f, 0.0f), float4(_1145.z, 0.0f, _1145.x, 0.0f), float4(_1145.w, 0.0f, 0.0f, _1145.x)) * 0.282094776630401611328125f, _1145);
        _1148++;
        continue;
      }
      float4x4 _1169 = float4x4(_1145, float4(_1145.yx, 0.0f, 0.0f), float4(_1145.z, 0.0f, _1145.x, 0.0f), float4(_1145.w, 0.0f, 0.0f, _1145.x)) * 0.282094776630401611328125f;
      float4 _1179 = mul(_1169, float4(_1038.w * 1.1283791065216064453125f, _1038.y * (-0.977204978466033935546875f), _1038.z * 0.977204978466033935546875f, _1038.x * (-0.977204978466033935546875f)));
      float4 _1199 = mul(_1169, float4(_1058.w * 1.1283791065216064453125f, _1058.y * (-0.977204978466033935546875f), _1058.z * 0.977204978466033935546875f, _1058.x * (-0.977204978466033935546875f)));
      float4 _1219 = mul(_1169, float4(_1078.w * 1.1283791065216064453125f, _1078.y * (-0.977204978466033935546875f), _1078.z * 0.977204978466033935546875f, _1078.x * (-0.977204978466033935546875f)));
      _1233 = float4(_1179.x * 0.886226952075958251953125f, _1179.w * (-1.02332675457000732421875f), _1179.y * (-1.02332675457000732421875f), _1179.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1234 = float4(_1199.x * 0.886226952075958251953125f, _1199.w * (-1.02332675457000732421875f), _1199.y * (-1.02332675457000732421875f), _1199.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1235 = float4(_1219.x * 0.886226952075958251953125f, _1219.w * (-1.02332675457000732421875f), _1219.y * (-1.02332675457000732421875f), _1219.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1233 = _1038;
      _1234 = _1058;
      _1235 = _1078;
    }
    _1236 = _1233;
    _1237 = _1234;
    _1238 = _1235;
  }
  else {
    _1236 = _1038;
    _1237 = _1058;
    _1238 = _1078;
  }
  float _1243 = max(0.0f, dot(_1236.xyz, _339) + _1236.w);
  float _1248 = max(0.0f, dot(_1237.xyz, _339) + _1237.w);
  float _1253 = max(0.0f, dot(_1238.xyz, _339) + _1238.w);
  float3 _1263 = reflect(_397, _339);
  float _1271 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_429, 0.001000000047497451305389404296875f))));
  float2 _1275 = floor(_344 * _26_m0.w);
  float _1292 = floor(_376 - _26_m2.y);
  float _1296 = clamp(_1292, 0.0f, _26_m1.x - 1.0f);
  uint _1306 = (_1292 <= _1296) ? (_23.Load(uint(_9_m21.z + int(_1275.x + (_1275.y * _26_m0.x))) * 4 + 0) & _23.Load(uint(_9_m21.w + int(_1296)) * 4 + 0)) : 0u;
  float _1309 = dot(float4(_1243, _1248, _1253, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
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
      float3 _1343 = float3(dot(_26_m4[_1323]._m2, _373), dot(_26_m4[_1323]._m3, _373), dot(_26_m4[_1323]._m4, _373));
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
        float _1453 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m4[_1323]._m0, float4(_339, 1.0f))));
        float _1466 = clamp((min(_1359.x, min(_1359.y, _1359.z)) * _26_m4[_1323]._m6.y) + ((((((_1353 * _1353).x - ((_1356.x + _1356.y) + _1356.z)) * _26_m4[_1323]._m5.x) * _26_m4[_1323]._m5.x) * (1.0f - _26_m4[_1323]._m6.y)) * 100.0f), 0.0f, 1.0f) * _26_m4[_1323]._m6.w;
        _1312 = _1311 + ((((_21.SampleLevel(_15, float3((((_1428.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, _26_m4[_1323]._m1.w), _1271).xyz * _26_m4[_1323]._m5.w) * ((((((clamp(abs(_1309 / _1453), 0.0f, 1.0f) * 2.0f) + _1309) / (2.0f + _1453)) - 1.0f) * _9_m23.w) + 1.0f)) * _1466) * _1314);
        _1315 = _1314 * (1.0f - _1466);
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
  float3 _1535;
  if (_1319) {
    float3 _1474 = normalize(_1263);
    float3 _1477 = float3(int3(sign(_1474)));
    float3 _1480 = _1474 / dot(_1474, _1477).xxx;
    float3 _1494;
    if (_1480.z < 0.0f) {
      float3 _1485 = abs(_1480);
      float2 _1492 = _1477.xy * float2(1.0f - _1485.y, 1.0f - _1485.x);
      _1494 = float3(_1492.x, _1492.y, _1480.z);
    } else {
      _1494 = _1480;
    }
    float _1521 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_26_m3, float4(_339, 1.0f))));
    _1535 = _1311 + ((_21.SampleLevel(_15, float3((((_1494.xy * 0.5f) + 0.5f.xx) * _26_m1.w) + _26_m2.w.xx, 0.0f), _1271).xyz * ((((((clamp(abs(_1309 / _1521), 0.0f, 1.0f) * 2.0f) + _1309) / (2.0f + _1521)) - 1.0f) * _9_m23.w) + 1.0f)) * _1314);
  } else {
    _1535 = _1311;
  }
  float3 _1541 = (_1535 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _1541 *= 0.25f + (0.75f * saturate(_1309));
  }
  // RenoDX code end
  float3 _1564;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _1558 = _19.SampleBias(_13, _4, _9_m16);
    float _1559 = _1558.x;
    _1564 = (_18.SampleBias(_13, _4, _9_m16).xyz * _1559) + (_1541 * (1.0f - _1559));
  }
  else {
    _1564 = _1541;
  }
  float3 _1567 = (((float3(_1243, _1248, _1253) * _433) * _9_m22.x) * _661) + ((_1564 * (_462 + ((_437 * ((1.0f - _463) / _463)) * _462))) * _660);
  float4 _1569 = float4(_621.x, _621.y, _621.z, _621.w) + float4(_1567.x, _1567.y, _1567.z, 0.0f.xxxx.w);
  float3 _1572 = clamp(_1569.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _1587 = _369.y * _9_m46.w;
  float _1592 = max(0.00999999977648258209228515625f, _1587 + _9_m47.w);
  float3 _1606 = exp(_9_m45.xyz * ((-max(0.0f, (_396 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_1592)) / _1592) * exp(_1587 + _9_m48.w))));
  float _1609 = dot(_397, _9_m44.xyz);
  float _1615 = _9_m45.w * _9_m45.w;
  float _1619 = (1.0f + _1615) - ((2.0f * _9_m45.w) * _1609);
  float3 _1947;
  float _1948;
  if (_9_m55.z > 0.0f) {
    uint3 _1773 = (uint3(int3(_305, _306, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _1774 = _1773.y;
    uint _1775 = _1773.z;
    uint _1778 = _1773.x + (_1774 * _1775);
    uint _1780 = _1774 + (_1775 * _1778);
    uint _1782 = _1775 + (_1778 * _1780);
    uint _1784 = _1778 + (_1780 * _1782);
    float _1808 = dot(_397, -_7_m0[2].xyz);
    float3 _1818 = _369 - _7_m11.xyz;
    float _1820 = (_9_m55.w * ((_1808 > 5.9604644775390625e-08f) ? (1.0f / _1808) : 0.0f)) * (1.0f / _396);
    float _1821 = _1818.y;
    float _1822 = _1820 * _1821;
    float _1824 = _7_m11.y + _1822;
    float _1825 = _1821 - _1822;
    float _1827 = (1.0f - _1820) * _396;
    float _1841 = max(-127.0f, _9_m49.z * _1825);
    float _1865 = max(-127.0f, _9_m52.x * _1825);
    float _1876 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_1824 - _9_m49.x)))) * ((abs(_1841) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1841)) / _1841) : (0.693147182464599609375f - (0.2402265071868896484375f * _1841)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_1824 - _9_m52.z)))) * ((abs(_1865) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1865)) / _1865) : (0.693147182464599609375f - (0.2402265071868896484375f * _1865))));
    float _1898 = clamp((_396 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1901 = clamp((max(clamp(exp2(-(_1876 * _1827)), 0.0f, 1.0f), _9_m51.w) + clamp((_396 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1898, 0.0f, 1.0f);
    float4 _1941 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _36.SampleLevel(_13, float3((_344 + ((((float3(uint3(_1784, _1780 + (_1782 * _1784), _296) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_376 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_376 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _1943 = _1941.w;
    _1947 = _1941.xyz + (((_9_m51.xyz * (1.0f - _1901)) + (((_9_m54.xyz * pow(clamp(dot(_395, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1876 * max(_1827 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1898))) * _1943);
    _1948 = _1943 * _1901;
  } else {
    float3 _1649 = _369 - _7_m11.xyz;
    float _1651 = _1649.y;
    float _1665 = max(-127.0f, _9_m49.z * _1651);
    float _1689 = max(-127.0f, _9_m52.x * _1651);
    float _1700 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_1665) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1665)) / _1665) : (0.693147182464599609375f - (0.2402265071868896484375f * _1665)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_1689) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_1689)) / _1689) : (0.693147182464599609375f - (0.2402265071868896484375f * _1689))));
    float _1722 = clamp((_396 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _1725 = clamp((max(clamp(exp2(-(_1700 * _396)), 0.0f, 1.0f), _9_m51.w) + clamp((_396 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _1722, 0.0f, 1.0f);
    _1947 = (_9_m51.xyz * (1.0f - _1725)) + (((_9_m54.xyz * pow(clamp(dot(_395, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_1700 * max(_396 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _1722));
    _1948 = _1725;
  }
  float3 _1951 = _1606 * _1948;
  float3 _1953 = (_1572 * _1951) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_1609 * _1609)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _1615) / max((12.56637096405029296875f * _1619) * sqrt(_1619), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _1606)) * _1948) + _1947);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _1953 = (_1953 * 0.65f) + (_1572 * 0.35f);
  }
  // RenoDX code end
  float _1954 = dot(_1951, 0.3333333432674407958984375f.xxx);
  float4 _1955 = float4(_1953.x, _1953.y, _1953.z, _1569.w);
  _1955.w = _1954;
  float _1984 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _369) * _9_m61.z), 0.0f, 1.0f);
  float3 _1992 = lerp(_1572, _1955.xyz, min((1.0f - _1984) + ((_51.SampleLevel(_14, (_369 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _1984), 1.0f + _1954).xxx);
  _5 = float4(_1992.x, _1992.y, _1992.z, _1955.w);
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

#include "./renodx_injection.hlsli"

// Ported from the native 0x39DBBB3C Vulkan dump.
struct _26 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _353;
static uint _354;

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

[[vk::binding(36, 3)]] cbuffer _8_9 : register(b36, space3) {
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

[[vk::binding(38, 3)]] ByteAddressBuffer _24 : register(t38, space3);
[[vk::binding(37, 3)]] cbuffer _25_27 : register(b37, space3) {
  float4 _27_m0 : packoffset(c0);
  float4 _27_m1 : packoffset(c1);
  float4 _27_m2 : packoffset(c2);
  float4 _27_m3 : packoffset(c3);
  _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(33, 3)]] cbuffer _28_29 : register(b33, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  float4 _29_m4 : packoffset(c4);
  uint4 _29_m5 : packoffset(c5);
  float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(34, 3)]] cbuffer _30_31 : register(b34, space3) {
  int _31_m0 : packoffset(c0);
  int _31_m1 : packoffset(c0.y);
  int _31_m2 : packoffset(c0.z);
  int _31_m3 : packoffset(c0.w);
  int _31_m4 : packoffset(c1);
  int _31_m5 : packoffset(c1.y);
  int _31_m6 : packoffset(c1.z);
  int _31_m7 : packoffset(c1.w);
  float _31_m8 : packoffset(c2);
  float _31_m9 : packoffset(c2.y);
  float _31_m10 : packoffset(c2.z);
  float _31_m11 : packoffset(c2.w);
  float _31_m12 : packoffset(c3);
  float _31_m13 : packoffset(c3.y);
  float _31_m14 : packoffset(c3.z);
  float _31_m15 : packoffset(c3.w);
};

[[vk::binding(31, 3)]] cbuffer _35_36 : register(b31, space3) {
  column_major float4x4 _36_m0 : packoffset(c0);
  float4 _36_m1 : packoffset(c4);
};

[[vk::binding(35, 3)]] cbuffer _44_45 : register(b35, space3) {
  float4 _45_m0 : packoffset(c0);
  float4 _45_m1 : packoffset(c1);
  float4 _45_m2 : packoffset(c2);
  float4 _45_m3 : packoffset(c3);
  float4 _45_m4 : packoffset(c4);
  uint4 _45_m5 : packoffset(c5);
  float4 _45_m6 : packoffset(c6);
  float4 _45_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _16 : register(s3, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _18 : register(t28, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _19 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23, space3);
[[vk::binding(13, 3)]] Texture2DArray<float4> _22 : register(t13, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _32 : register(t9, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _33 : register(t29, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _34 : register(t7, space3);
[[vk::binding(14, 3)]] Texture3D<float4> _38 : register(t14, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _39 : register(t8, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _40 : register(t12, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _41 : register(t15, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _42 : register(t27, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _43 : register(t22, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _46 : register(t30, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _47 : register(t6, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _48 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _49 : register(t18, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _50 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _51 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _52 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _53 : register(t16, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _54 : register(t5, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _55 : register(t26, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _56 : register(t25, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _57 : register(t24, space3);

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
  uint2 _359 = uint2(gl_FragCoord.xy);
  int _362 = int(_359.x);
  int _363 = int(_359.y);
  int2 _365 = int3(_362, _363, 0).xy;
  float4 _367 = _55.Load(int3(_365, 0));
  float4 _369 = _56.Load(int3(_365, 0));
  float _372 = _367.x;
  float _373 = _367.y;
  float _374 = _367.z;
  float2 _377 = (_369.xy * 2.0f) - 1.0f.xx;
  float _381 = 1.0f - dot(1.0f.xx, abs(_377));
  float3 _383 = float3(_377.x, _381, _377.y);
  float3 _395;
  if (_381 < 0.0f) {
    float2 _390 = _383.xz;
    bool2 _391 = bool2(_390.x >= 0.0f.xx.x, _390.y >= 0.0f.xx.y);
    float2 _393 = (1.0f.xx - abs(_383.zx)) * float2(_391.x ? 1.0f.xx.x : (-1.0f).xx.x, _391.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _395 = float3(_393.x, _383.y, _393.y);
  } else {
    _395 = _383;
  }
  float3 _396 = normalize(_395);
  float _397 = _369.z;
  float2 _401 = float2(_359);
  float2 _414 = gl_FragCoord.xy * _9_m0.zw;
  float2 _416 = (_414 * 2.0f) - 1.0f.xx;
  float4 _419 = float4(_416, _18.SampleLevel(_12, (_401 + 0.5f.xx) * _9_m0.zw, 0.0f).x, 1.0f);
  _419.y = -_416.y;
  float4 _422 = mul(_7_m6, _419);
  float3 _426 = _422.xyz / _422.w.xxx;
  float _427 = _426.x;
  float _428 = _426.y;
  float4 _430 = float4(_427, _428, _426.z, 1.0f);
  float _433 = abs(mul(_7_m0, _430).z);
  float3 _448;
  do {
    if (_9_m4.w == 0.0f) {
      _448 = _7_m11.xyz - _426;
      break;
    } else {
      _448 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _449 = dot(_448, _448);
  float _451 = rsqrt(max(_449, 9.9999999392252902907785028219223e-09f));
  float3 _452 = _448 * _451;
  float _453 = _449 * _451;
  float3 _454 = -_452;
  bool _457 = _9_m132.x > 0.00048828125f;
  float2 _467;
  if (_457) {
    _467 = _54.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _467 = 1.0f.xx;
  }
  float _468 = dot(_396, float3(0.0f, -1.0f, 0.0f));
  float3 _524;
  float3 _525;
  [branch] if (_9_m124.x > 0.5f) {
    float _495 = abs(_396.x);
    float _497 = abs(_396.y);
    float _499 = abs(_396.z);
    float3 _504 = float3(_495, _497, _499) * (1.0f / ((_495 + _497) + _499));
    float4 _517 = _38.SampleLevel(_14, _426 * _9_m127.x, 0.0f);
    float _518 = _517.x;
    _524 = float3(_518, _353, _353);
    _525 = ((((float3(0.0f, 0.0f, 1.0f) * _504.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _504.y)) + (float3(1.0f, 0.0f, 0.0f) * _504.z)) * ((_518 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_468)));
  }
  else {
    _524 = 0.0f.xxx;
    _525 = 0.0f.xxx;
  }
  float4 _539 = mul(_36_m0, float4((_426 + ((((_396 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_468, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _468), 0.100000001490116119384765625f, 1.0f)))) + _525, 1.0f));
  float2 _542 = (_539.xy * 0.5f) + 0.5f.xx;
  float4 _543 = float4(_542.x, _542.y, _539.z, _539.w);
  _543.y = 1.0f - _542.y;
  float _564;
  [branch] if (_9_m124.y > 0.5f) {
    _564 = _34.SampleCmpLevelZero(_16, (_543.xy + _36_m1.xy).xy, max(_539.z, 0.00048828125f));
  }
  else {
    _564 = 1.0f;
  }
  float _567 = _396.y;
  float _568 = clamp(_567, 0.0f, 1.0f);
  float _569 = lerp(_9_m128.w, 1.0f, _568);
  float2 _573 = _426.xz;
  float2 _578 = abs(_573 - _7_m11.xz);
  float _581 = max(_578.x, _578.y);
  float _591 = lerp(_569 * _564, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _581));
  float3 _598 = ddy_fine(_426);
  float3 _599 = ddx_fine(_426);
  float3 _600 = cross(_598, _599);
  float _606 = clamp((_600 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_600, _600)))).y, 0.0f, 1.0f);
  float _609 = _9_m121.z * 0.300000011920928955078125f;
  float _611 = _609 + 0.68599998950958251953125f;
  float _618 = 1.0f - clamp((_433 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _633 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_611, 0.9700000286102294921875f), 0.9900000095367431640625f, _568) + (smoothstep(0.990999996662139892578125f, 1.0f, _606) * step(_373, (_524.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _832;
  float _833;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_609 + 0.686999976634979248046875f, _611, _606) * smoothstep(-0.5f, -0.100000001490116119384765625f, _567)) > 0.00048828125f)) {
    float3 _642 = abs(_396);
    float3 _643 = _642 * _642;
    float3 _648 = _643 * (1.0f / (_643.x + _643.z));
    float3 _650 = normalize(cross(_396, float3(0.0f, 1.0f, 0.0f)));
    float3 _652 = normalize(cross(_650, _396));
    float3 _668 = floor((_426 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _676 = frac(sin(dot(fmod(_668.xz + _668.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _680 = (step(0.0f.xx, _396.zx) * 2.0f) - 1.0f.xx;
    float3 _683 = _426;
    _683.x = _427 * _680.x;
    _683.z = _426.z * (-_680.y);
    float _695 = _524.x * _676;
    float2 _703 = float2(frac(((-_9_m121.x) * (((1.0f - _676) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_695 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_695 * 6.0f)));
    float _706 = floor(_676 * 5.0f) + 1.0f;
    float2 _710 = frac(float2(_706, 0.100000001490116119384765625f * _706) * _428);
    float2 _722 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _710 - (_703 - 1.0f.xx)), _703 - _710), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _710 - _703), (_703 + 1.0f.xx) - _710), step(_703, _710));
    float _723 = _722.x;
    float _725 = smoothstep(0.4000000059604644775390625f, 1.0f, _723 * _723);
    float _726 = _722.y;
    float _731 = (_726 * 2.0f) - 1.0f;
    float2 _740 = float2((_524.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _725) * _731), (1.0f.xx * _524.x).y * (_524.x + (((_725 * 0.00999999977648258209228515625f) * _725) * _731)));
    float4 _764 = (_39.SampleBias(_14, (_683.zy * _9_m122.xy) + _740, _9_m16) * _648.x) + (_39.SampleBias(_14, (_683.xy * _9_m122.xy) + _740, _9_m16) * _648.z);
    float2 _767 = (_764.xy * 2.0f) - 1.0f.xx;
    float _773 = _764.w;
    float _783 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_726 + (((_725 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_773 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_731 * _773) * 0.5f) + _725, 0.0f, 1.0f)));
    float _789 = _764.z;
    float _799 = (((lerp(0.100000001490116119384765625f, (_783 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _783, 0.0f, 1.0f), 5.0f), _789)) * _789) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_591 * step(0.04500000178813934326171875f, _374))) * _618);
    float2 _802 = _767.xy;
    float _807 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_802, _802), 0.0f, 1.0f)));
    float3 _808 = float3(_767, _807);
    float2 _812 = _808.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _799) * _9_m121.y);
    float3 _813 = float3(_812.x, _812.y, _808.z);
    _813.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _807, _799);
    _832 = lerp(_396, mul(float4x4(float4(_650.x, _652.x, _396.x, 0.0f), float4(_650.y, _652.y, _567, 0.0f), float4(_650.z, _652.z, _396.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_813 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_813, _813))), 0.0f)).xyz, _799.xxx);
    _833 = (_799 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _832 = _396;
    _833 = 0.0f;
  }
  float3 _981;
  float _982;
  [branch] if (_633 > 0.00048828125f) {
    float2 _840 = (-_573) * _9_m126.xy;
    float2 _842 = frac(_840);
    float2 _889;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _852 = frac(sin(dot(fmod(floor(_840), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _865 = floor(frac(_9_m125.x + _852) * (_9_m126.z * _9_m126.z));
      float _867 = 1.0f / _9_m126.z;
      _889 = ((_40.SampleBias(_13, frac((lerp(_842, _842.yx, step(_852, 0.5f).xx) * _867) + float2(_867 * fmod(_865, _9_m126.z), _867 * ((_9_m126.z - 1.0f) - floor(_865 * _867)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _889 = 0.0f.xx;
    }
    float2 _930;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _915 = _40.SampleBias(_14, (_840 + float2(0.0f, _9_m125.z)) + ((float2(_524.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _919 = _40.SampleBias(_14, (_840 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _524.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _925 = (((float4(_915.z, _915.w, _919.z, _919.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _524.x;
      _930 = _889 + (_925.xy + _925.zw);
    }
    else {
      _930 = _889;
    }
    float _938 = (((_524.x * 0.699999988079071044921875f) + (_397 * 0.300000011920928955078125f)) * clamp((_397 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _373;
    float _942 = smoothstep(min(_938, 0.9900000095367431640625f), clamp(_938 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _953 = _9_m120.x * _633;
    float3 _963 = float3(_930, max(0.00048828125f, sqrt(1.0f - clamp(dot(_930, _930), 0.0f, 1.0f))));
    float3 _969 = (_963 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_963, _963)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _981 = lerp(_396, _969, (((_953 * _942) * _591) * _618).xxx);
    _982 = max((smoothstep(0.0f, _373 * 0.20000000298023223876953125f, (_953 * clamp(lerp((_9_m126.w * (1.0f - _524.x)) * 0.5f, 1.0f, _942) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _969.y) * _591) * _618, 0.0f);
  }
  else {
    _981 = _832;
    _982 = 0.0f;
  }
  float _985 = min(_467.x, _467.y);
  float2 _987 = _467 * (1.0f - lerp(lerp(_9_m128.z * _569, 1.0f, _591), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _581)));
  float _988 = _987.x;
  float _991 = clamp((_374 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _992 = 1.0f - _397;
  float _1008 = lerp(clamp((clamp((_992 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _833)) + ((_982 * 0.100000001490116119384765625f) * _397), 0.0f, 1.0f), 1.0f, _372);
  float _1010 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _468);
  float _1019 = lerp(1.0f, 0.25f, ((_9_m120.x * _1008) * (1.0f - _372)) * _1010);
  float _1035 = (1.0f - lerp(_992, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1008) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_992)), 0.0f, 1.0f), _992, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1010) * (1.0f - _988))) * lerp(1.0f, 0.100000001490116119384765625f, max(_982, smoothstep(0.0f, 0.0500000007450580596923828125f, _833)));
  float _1040;
  float _1041;
  if (_457) {
    _1040 = lerp(1.0f, _467.y, _991);
    _1041 = lerp(1.0f, 0.0f, _991);
  } else {
    _1040 = 1.0f;
    _1041 = 1.0f;
  }
  float _1046 = lerp(lerp(min(_1040, _1035), _1035, _985), _397, _988);
  float3 _1048 = _57.Load(int3(_365, 0)).xyz * lerp(lerp(min(_1041, _1019), _1019, _985), 1.0f, _988);
  float3 _1049 = _1048 * _372;
  float3 _1050 = _1048 - _1049;
  float3 _1054 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _372)).xxx + _1049;
  float _1055 = dot(_981, _452);
  float _1056 = max(0.0f, _1055);
  float _1057 = _1046 * _1046;
  float _1058 = _1056 * _1056;
  float _1059 = _1058 * _1056;
  float2 _1060 = float2(1.0f, _1056);
  float2 _1063 = float2(1.0f, _1057);
  float _1064 = _1057 * _1057;
  float3 _1066 = float3(1.0f, _1057, _1064 * _1057);
  float _1071 = dot(mul(_1060, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1063) / dot(mul(float3(1.0f, _1058, _1059), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1066);
  float _1076 = dot(mul(_1060, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1063) / dot(mul(float3(1.0f, _1056, _1059), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1066);
  float3 _1079 = (_1054 * _1071) + _1076.xxx;
  float _1080 = _1071 + _1076;
  float4 _1240;
  do {
    [branch] if (_31_m4 == 0) {
      _1240 = 0.0f.xxxx;
      break;
    }
    float4 _1100 = _32.Load(int3(_365, 0));
    float _1101 = _1100.x;
    float4 _1239;
    if (_1101 > 0.001000000047497451305389404296875f) {
      float3 _1111 = reflect(_454, _981);
      float3 _1112 = -_29_m0.xyz;
      float _1117 = dot(_1112, _1111);
      float3 _1119 = _1111 - (_1112 * _1117);
      bool3 _1121 = (_1117 < _29_m4.z).xxx;
      float3 _1129 = normalize((_1112 * _29_m4.z) + ((_1119 * rsqrt(max(6.103515625e-05f, dot(_1119, _1119)))) * _29_m4.y));
      float3 _1130 = float3(_1121.x ? _1129.x : _1111.x, _1121.y ? _1129.y : _1111.y, _1121.z ? _1129.z : _1111.z);
      float3 _1134 = _1130 + _452;
      float3 _1138 = _1134 * rsqrt(max(6.103515625e-05f, dot(_1134, _1134)));
      float _1141 = clamp(dot(_1130, _981), 0.0f, 1.0f);
      float _1143 = clamp(dot(_981, _1138), 0.0f, 1.0f);
      float _1146 = clamp(_1055, 0.0f, 1.0f);
      float _1167 = (((_1143 * _1064) - _1143) * _1143) + 1.0f;
      float _1170 = 1.0f - clamp(dot(_452, _1138), 0.0f, 1.0f);
      float _1171 = _1170 * _1170;
      float _1173 = (_1170 * _1171) * _1171;
      float _1197 = 1.0f - _1046;
      float _1204 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1197 * (1.04997003078460693359375f + (_1197 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1197))))));
      float _1205 = 1.0f - _1204;
      float3 _1208 = _1054 + ((1.0f.xxx - _1054) * 0.0476190485060214996337890625f);
      float3 _1224 = ((clamp((min(((_1054 * (1.0f - _1173)) + _1173.xxx) * ((_1064 / (_1167 * _1167)) * (0.5f / (((_1141 * sqrt(((((-_1146) * _1064) + _1146) * _1146) + _1064)) + (_1146 * sqrt(((((-_1141) * _1064) + _1141) * _1141) + _1064))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1208 * (((_41.SampleLevel(_13, (float2(_1146, _1046) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_1141, _1046) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1204) / _1205)) * _1208) / (1.0f.xxx - (_1208 * _1205)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1141) + ((_1050 * 1.0f) * clamp(dot(_1130, _396), 0.0f, 1.0f))) * _29_m1.xyz;
      float3 _1237 = lerp(_1224, _1224 * _33.SampleBias(_13, float2(_1101, 0.5f), _9_m16).xyz, (1.0f - _1101).xxx) * min(_42.SampleLevel(_13, _414, 0.0f).x, 1.0f);
      _1239 = float4(_1237.x, _1237.y, _1237.z, 0.0f.xxxx.w);
    } else {
      _1239 = 0.0f.xxxx;
    }
    _1240 = _1239;
    break;
  } while (false);
  float3 _1242 = _373.xxx;
  float3 _1281;
  float3 _1282;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x39DBBB3C:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _1257 = min(_21.SampleBias(_12, _4, _9_m16).x, _373);
    _1281 = clamp((pow(abs(max(0.0f, dot(_396, _452)) + _1257), exp2(((-16.0f) * _1046) - 1.0f)) - 1.0f) + _1257, 0.0f, 1.0f).xxx;
    _1282 = max(_1257.xxx, ((((((_1050 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _1257) + ((_1050 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _1257) + ((_1050 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _1257);
  }
  else {
    _1281 = _1242;
    _1282 = _1242;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _1240.xyz *= (RENODX_IMPROVED_GTAO != 0.0f) ? _1281 : 1.0f.xxx;
  // RenoDX code end
  float3 _1299 = (_426 + (_396 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_401 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _1309 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _1318 = _1299 - (_9_m108.xyz + (_1309 * (-_9_m110.w)));
  float _1333 = max(min(max((max(abs(_1318.x), abs(_1318.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_1318.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _1635;
  float4 _1636;
  float4 _1637;
  float _1638;
  float _1639;
  if ((_9_m108.w != 0.0f) && (_1333 < 1.0f)) {
    float3 _1346 = _1299 - (_9_m108.xyz + (_1309 * (-_9_m110.y)));
    float _1360 = max(clamp((max(abs(_1346.x), abs(_1346.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_1346.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _1436;
    float4 _1437;
    float4 _1438;
    float4 _1439;
    if (_1360 < 1.0f) {
      float3 _1369 = ((_1299 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1371 = _1369 - floor(_1369);
      float4 _1375 = _48.SampleLevel(_14, _1371, 0.0f);
      float _1376 = 1.0f - _1360;
      float _1380 = _9_m109.y * 0.5f;
      float _1385 = _1371.x;
      float _1386 = clamp(_1371.y, _1380, 1.0f - _1380) * 0.3333333432674407958984375f;
      float _1387 = _1371.z;
      float4 _1390 = _49.SampleLevel(_13, float3(_1385, _1386, _1387), 0.0f);
      float _1406 = _1375.x;
      float _1416 = _1375.y;
      float _1426 = _1375.z;
      _1436 = _1333 + (_1390.w * _1376);
      _1437 = float4(((_49.SampleLevel(_13, float3(_1385, _1386 + 0.666666686534881591796875f, _1387), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1426, _1426) * _1376;
      _1438 = float4(((_49.SampleLevel(_13, float3(_1385, _1386 + 0.3333333432674407958984375f, _1387), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1416, _1416) * _1376;
      _1439 = float4(((_1390.xyz * 4.0f) - 2.0f.xxx) * _1406, _1406) * _1376;
    } else {
      _1436 = _1333;
      _1437 = 0.0f.xxxx;
      _1438 = 0.0f.xxxx;
      _1439 = 0.0f.xxxx;
    }
    float3 _1445 = _1299 - (_9_m108.xyz + (_1309 * (-_9_m110.z)));
    float _1459 = max(clamp((max(abs(_1445.x), abs(_1445.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_1445.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _1539;
    float4 _1540;
    float4 _1541;
    float4 _1542;
    if (_1459 < 1.0f) {
      float3 _1468 = ((_1299 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1470 = _1468 - floor(_1468);
      float4 _1474 = _50.SampleLevel(_14, _1470, 0.0f);
      float _1476 = _1360 * (1.0f - _1459);
      float _1480 = _9_m109.y * 0.5f;
      float _1485 = _1470.x;
      float _1486 = clamp(_1470.y, _1480, 1.0f - _1480) * 0.3333333432674407958984375f;
      float _1487 = _1470.z;
      float4 _1490 = _51.SampleLevel(_13, float3(_1485, _1486, _1487), 0.0f);
      float _1506 = _1474.x;
      float _1517 = _1474.y;
      float _1528 = _1474.z;
      _1539 = _1436 + (_1490.w * _1476);
      _1540 = _1437 + (float4(((_51.SampleLevel(_13, float3(_1485, _1486 + 0.666666686534881591796875f, _1487), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1528, _1528) * _1476);
      _1541 = _1438 + (float4(((_51.SampleLevel(_13, float3(_1485, _1486 + 0.3333333432674407958984375f, _1487), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1517, _1517) * _1476);
      _1542 = _1439 + (float4(((_1490.xyz * 4.0f) - 2.0f.xxx) * _1506, _1506) * _1476);
    } else {
      _1539 = _1436;
      _1540 = _1437;
      _1541 = _1438;
      _1542 = _1439;
    }
    float4 _1625;
    float4 _1626;
    float4 _1627;
    float _1628;
    if (_1459 > 0.0f) {
      float3 _1551 = ((_1299 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _1554 = _9_m109.xyz * 0.5f;
      float3 _1556 = clamp(_1551 - floor(_1551), _1554, 1.0f.xxx - _1554);
      float4 _1560 = _52.SampleLevel(_14, _1556, 0.0f);
      float _1562 = _1459 * (1.0f - _1333);
      float _1566 = _9_m109.y * 0.5f;
      float _1571 = _1556.x;
      float _1572 = clamp(_1556.y, _1566, 1.0f - _1566) * 0.3333333432674407958984375f;
      float _1573 = _1556.z;
      float4 _1576 = _53.SampleLevel(_13, float3(_1571, _1572, _1573), 0.0f);
      float _1592 = _1560.x;
      float _1603 = _1560.y;
      float _1614 = _1560.z;
      _1625 = _1540 + (float4(((_53.SampleLevel(_13, float3(_1571, _1572 + 0.666666686534881591796875f, _1573), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1614, _1614) * _1562);
      _1626 = _1541 + (float4(((_53.SampleLevel(_13, float3(_1571, _1572 + 0.3333333432674407958984375f, _1573), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _1603, _1603) * _1562);
      _1627 = _1542 + (float4(((_1576.xyz * 4.0f) - 2.0f.xxx) * _1592, _1592) * _1562);
      _1628 = _1539 + (_1576.w * _1562);
    } else {
      _1625 = _1540;
      _1626 = _1541;
      _1627 = _1542;
      _1628 = _1539;
    }
    float _1631 = clamp((_1628 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _1635 = _1625;
    _1636 = _1626;
    _1637 = _1627;
    _1638 = _1631 - _1333;
    _1639 = (_1631 + _1333) * 0.5f;
  } else {
    _1635 = 0.0f.xxxx;
    _1636 = 0.0f.xxxx;
    _1637 = 0.0f.xxxx;
    _1638 = 0.0f;
    _1639 = 1.0f;
  }
  float4 _1659 = _1637 + float4(_9_m111.x * _1639, (_9_m111.y * _1639) + ((_9_m111.w * _1638) * 0.5f), _9_m111.z * _1639, (_9_m111.w * _1639) + ((_9_m111.y * _1638) * 0.375f));
  float4 _1679 = _1636 + float4(_9_m112.x * _1639, (_9_m112.y * _1639) + ((_9_m112.w * _1638) * 0.5f), _9_m112.z * _1639, (_9_m112.w * _1639) + ((_9_m112.y * _1638) * 0.375f));
  float4 _1699 = _1635 + float4(_9_m113.x * _1639, (_9_m113.y * _1639) + ((_9_m113.w * _1638) * 0.5f), _9_m113.z * _1639, (_9_m113.w * _1639) + ((_9_m113.y * _1638) * 0.375f));
  float4 _1857;
  float4 _1858;
  float4 _1859;
  [branch] if (all(bool2(_414.x >= 0.0f.xx.x, _414.y >= 0.0f.xx.y))) {
    float4 _1707 = _47.SampleLevel(_13, _414, 0.0f);
    float4 _1708 = abs(_1707);
    float4 _1854;
    float4 _1855;
    float4 _1856;
    [branch] if (any(bool4(_1708.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _1708.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _1708.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _1708.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _1714 = length(_1707.yzw);
      uint _1716;
      float _1719;
      _1716 = 0u;
      _1719 = 1.0f;
      for (float _1721 = _1714; _1721 > 4.599999904632568359375f;) {
        _1716++;
        _1719 *= 0.5f;
        _1721 *= 0.5f;
        continue;
      }
      float4 _1725 = _1707 * _1719;
      float4 _1730 = float4(0.0f, _1725.yzw);
      float2 _1752 = (_46.SampleLevel(_13, float2(((((length(_1730) * _45_m3.x) + _45_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _45_m2.xy) + _45_m2.zw;
      float4 _1766;
      _1766 = float4(_1752.x * 3.5449078083038330078125f, _1730.yzw * _1752.y) * exp(_1725.x * 0.282094776630401611328125f);
      for (uint _1769 = 0u; _1769 < _1716;) {
        _1766 = mul(float4x4(_1766, float4(_1766.yx, 0.0f, 0.0f), float4(_1766.z, 0.0f, _1766.x, 0.0f), float4(_1766.w, 0.0f, 0.0f, _1766.x)) * 0.282094776630401611328125f, _1766);
        _1769++;
        continue;
      }
      float4x4 _1790 = float4x4(_1766, float4(_1766.yx, 0.0f, 0.0f), float4(_1766.z, 0.0f, _1766.x, 0.0f), float4(_1766.w, 0.0f, 0.0f, _1766.x)) * 0.282094776630401611328125f;
      float4 _1800 = mul(_1790, float4(_1659.w * 1.1283791065216064453125f, _1659.y * (-0.977204978466033935546875f), _1659.z * 0.977204978466033935546875f, _1659.x * (-0.977204978466033935546875f)));
      float4 _1820 = mul(_1790, float4(_1679.w * 1.1283791065216064453125f, _1679.y * (-0.977204978466033935546875f), _1679.z * 0.977204978466033935546875f, _1679.x * (-0.977204978466033935546875f)));
      float4 _1840 = mul(_1790, float4(_1699.w * 1.1283791065216064453125f, _1699.y * (-0.977204978466033935546875f), _1699.z * 0.977204978466033935546875f, _1699.x * (-0.977204978466033935546875f)));
      _1854 = float4(_1800.x * 0.886226952075958251953125f, _1800.w * (-1.02332675457000732421875f), _1800.y * (-1.02332675457000732421875f), _1800.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1855 = float4(_1820.x * 0.886226952075958251953125f, _1820.w * (-1.02332675457000732421875f), _1820.y * (-1.02332675457000732421875f), _1820.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _1856 = float4(_1840.x * 0.886226952075958251953125f, _1840.w * (-1.02332675457000732421875f), _1840.y * (-1.02332675457000732421875f), _1840.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _1854 = _1659;
      _1855 = _1679;
      _1856 = _1699;
    }
    _1857 = _1854;
    _1858 = _1855;
    _1859 = _1856;
  }
  else {
    _1857 = _1659;
    _1858 = _1679;
    _1859 = _1699;
  }
  float _1864 = max(0.0f, dot(_1857.xyz, _396) + _1857.w);
  float _1869 = max(0.0f, dot(_1858.xyz, _396) + _1858.w);
  float _1874 = max(0.0f, dot(_1859.xyz, _396) + _1859.w);
  float3 _1884 = reflect(_454, _981);
  float _1892 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1046, 0.001000000047497451305389404296875f))));
  float2 _1896 = floor(_401 * _27_m0.w);
  float _1913 = floor(_433 - _27_m2.y);
  float _1917 = clamp(_1913, 0.0f, _27_m1.x - 1.0f);
  uint _1927 = (_1913 <= _1917) ? (_24.Load(uint(_9_m21.z + int(_1896.x + (_1896.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_1917)) * 4 + 0)) : 0u;
  float _1930 = dot(float4(_1864, _1869, _1874, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _1932;
  float _1935;
  uint _1937;
  _1932 = 0.0f.xxx;
  _1935 = 1.0f;
  _1937 = _1927;
  uint _1938;
  float3 _1933;
  float _1936;
  bool _1940;
  [loop] for (;;) {
    bool _1939 = _1937 != 0u;
    _1940 = _1935 > 0.00999999977648258209228515625f;
    if (_1939 && _1940) {
      uint _1944 = firstbitlow(_1937);
      _1938 = _1937 ^ (1u << (_1944 & 31u));
      float3 _1964 = float3(dot(_27_m4[_1944]._m2, _430), dot(_27_m4[_1944]._m3, _430), dot(_27_m4[_1944]._m4, _430));
      float3 _1965 = abs(_1964);
      if (all(bool3(_1965.x <= _27_m4[_1944]._m1.xyz.x, _1965.y <= _27_m4[_1944]._m1.xyz.y, _1965.z <= _27_m4[_1944]._m1.xyz.z))) {
        float3 _1974 = _27_m4[_1944]._m1.xyz * 0.100000001490116119384765625f;
        float3 _1976 = _1965 * 0.100000001490116119384765625f;
        float3 _1977 = _1976 * _1976;
        float3 _1980 = (_27_m4[_1944]._m1.xyz - _1965) * _27_m4[_1944]._m5.xyz;
        float3 _2028;
        [branch] if (_27_m4[_1944]._m6.x == 1.0f) {
          float3 _2013 = float3(dot(_27_m4[_1944]._m2.xyz, _1884), dot(_27_m4[_1944]._m3.xyz, _1884), dot(_27_m4[_1944]._m4.xyz, _1884));
          float3 _2015 = (_27_m4[_1944]._m1.xyz - _1964) / _2013;
          float3 _2018 = ((-_27_m4[_1944]._m1.xyz) - _1964) / _2013;
          bool3 _2019 = bool3(_2013.x > 0.0f.xxx.x, _2013.y > 0.0f.xxx.y, _2013.z > 0.0f.xxx.z);
          float3 _2020 = float3(_2019.x ? _2015.x : _2018.x, _2019.y ? _2015.y : _2018.y, _2019.z ? _2015.z : _2018.z);
          _2028 = _1964 + (_2013 * min(min(_2020.x, _2020.y), _2020.z));
        }
        else {
          _2028 = _1884;
        }
        float3 _2029 = normalize(_2028);
        float3 _2032 = float3(int3(sign(_2029)));
        float3 _2035 = _2029 / dot(_2029, _2032).xxx;
        float3 _2049;
        if (_2035.z < 0.0f) {
          float3 _2040 = abs(_2035);
          float2 _2047 = _2032.xy * float2(1.0f - _2040.y, 1.0f - _2040.x);
          _2049 = float3(_2047.x, _2047.y, _2035.z);
        } else {
          _2049 = _2035;
        }
        float _2074 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_1944]._m0, float4(_981, 1.0f))));
        float _2087 = clamp((min(_1980.x, min(_1980.y, _1980.z)) * _27_m4[_1944]._m6.y) + ((((((_1974 * _1974).x - ((_1977.x + _1977.y) + _1977.z)) * _27_m4[_1944]._m5.x) * _27_m4[_1944]._m5.x) * (1.0f - _27_m4[_1944]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_1944]._m6.w;
        _1933 = _1932 + ((((_22.SampleLevel(_15, float3((((_2049.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_1944]._m1.w), _1892).xyz * _27_m4[_1944]._m5.w) * ((((((clamp(abs(_1930 / _2074), 0.0f, 1.0f) * 2.0f) + _1930) / (2.0f + _2074)) - 1.0f) * _9_m23.w) + 1.0f)) * _2087) * _1935);
        _1936 = _1935 * (1.0f - _2087);
      } else {
        _1933 = _1932;
        _1936 = _1935;
      }
      _1932 = _1933;
      _1935 = _1936;
      _1937 = _1938;
      continue;
    } else {
      break;
    }
  }
  float3 _2156;
  if (_1940) {
    float3 _2095 = normalize(_1884);
    float3 _2098 = float3(int3(sign(_2095)));
    float3 _2101 = _2095 / dot(_2095, _2098).xxx;
    float3 _2115;
    if (_2101.z < 0.0f) {
      float3 _2106 = abs(_2101);
      float2 _2113 = _2098.xy * float2(1.0f - _2106.y, 1.0f - _2106.x);
      _2115 = float3(_2113.x, _2113.y, _2101.z);
    } else {
      _2115 = _2101;
    }
    float _2142 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_981, 1.0f))));
    _2156 = _1932 + ((_22.SampleLevel(_15, float3((((_2115.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _1892).xyz * ((((((clamp(abs(_1930 / _2142), 0.0f, 1.0f) * 2.0f) + _1930) / (2.0f + _2142)) - 1.0f) * _9_m23.w) + 1.0f)) * _1935);
  } else {
    _2156 = _1932;
  }
  float3 _2162 = (_2156 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _2162 *= 0.25f + (0.75f * saturate(_1930));
  }
  // RenoDX code end
  float3 _2185;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _2179 = _20.SampleBias(_13, _4, _9_m16);
    float _2180 = _2179.x;
    _2185 = (_19.SampleBias(_13, _4, _9_m16).xyz * _2180) + (_2162 * (1.0f - _2180));
  }
  else {
    _2185 = _2162;
  }
  float3 _2188 = (((float3(_1864, _1869, _1874) * _1050) * _9_m22.x) * _1282) + ((_2185 * (_1079 + ((_1054 * ((1.0f - _1080) / _1080)) * _1079))) * _1281);
  float4 _2190 = float4(_1240.x, _1240.y, _1240.z, _1240.w) + float4(_2188.x, _2188.y, _2188.z, 0.0f.xxxx.w);
  float _2208 = _428 * _9_m46.w;
  float _2213 = max(0.00999999977648258209228515625f, _2208 + _9_m47.w);
  float3 _2227 = exp(_9_m45.xyz * ((-max(0.0f, (_453 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_2213)) / _2213) * exp(_2208 + _9_m48.w))));
  float _2230 = dot(_454, _9_m44.xyz);
  float _2236 = _9_m45.w * _9_m45.w;
  float _2240 = (1.0f + _2236) - ((2.0f * _9_m45.w) * _2230);
  float3 _2564;
  float _2565;
  if (_9_m55.z > 0.0f) {
    uint3 _2392 = (uint3(int3(_362, _363, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _2393 = _2392.y;
    uint _2394 = _2392.z;
    uint _2397 = _2392.x + (_2393 * _2394);
    uint _2399 = _2393 + (_2394 * _2397);
    uint _2401 = _2394 + (_2397 * _2399);
    uint _2403 = _2397 + (_2399 * _2401);
    float _2427 = dot(_454, -_7_m0[2].xyz);
    float3 _2435 = _426 - _7_m11.xyz;
    float _2437 = (_9_m55.w * ((_2427 > 5.9604644775390625e-08f) ? (1.0f / _2427) : 0.0f)) * (1.0f / _453);
    float _2438 = _2435.y;
    float _2439 = _2437 * _2438;
    float _2441 = _7_m11.y + _2439;
    float _2442 = _2438 - _2439;
    float _2444 = (1.0f - _2437) * _453;
    float _2458 = max(-127.0f, _9_m49.z * _2442);
    float _2482 = max(-127.0f, _9_m52.x * _2442);
    float _2493 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_2441 - _9_m49.x)))) * ((abs(_2458) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2458)) / _2458) : (0.693147182464599609375f - (0.2402265071868896484375f * _2458)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_2441 - _9_m52.z)))) * ((abs(_2482) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2482)) / _2482) : (0.693147182464599609375f - (0.2402265071868896484375f * _2482))));
    float _2515 = clamp((_453 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2518 = clamp((max(clamp(exp2(-(_2493 * _2444)), 0.0f, 1.0f), _9_m51.w) + clamp((_453 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2515, 0.0f, 1.0f);
    float4 _2558 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _43.SampleLevel(_13, float3((_401 + ((((float3(uint3(_2403, _2399 + (_2401 * _2403), _354) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_433 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_433 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _2560 = _2558.w;
    _2564 = _2558.xyz + (((_9_m51.xyz * (1.0f - _2518)) + (((_9_m54.xyz * pow(clamp(dot(_452, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2493 * max(_2444 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2515))) * _2560);
    _2565 = _2560 * _2518;
  } else {
    float3 _2268 = _426 - _7_m11.xyz;
    float _2270 = _2268.y;
    float _2284 = max(-127.0f, _9_m49.z * _2270);
    float _2308 = max(-127.0f, _9_m52.x * _2270);
    float _2319 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_2284) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2284)) / _2284) : (0.693147182464599609375f - (0.2402265071868896484375f * _2284)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_2308) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2308)) / _2308) : (0.693147182464599609375f - (0.2402265071868896484375f * _2308))));
    float _2341 = clamp((_453 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _2344 = clamp((max(clamp(exp2(-(_2319 * _453)), 0.0f, 1.0f), _9_m51.w) + clamp((_453 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _2341, 0.0f, 1.0f);
    _2564 = (_9_m51.xyz * (1.0f - _2344)) + (((_9_m54.xyz * pow(clamp(dot(_452, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_2319 * max(_453 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2341));
    _2565 = _2344;
  }
  float3 _2568 = _2227 * _2565;
  float3 _2570 = (clamp(_2190.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _2568) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2230 * _2230)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _2236) / max((12.56637096405029296875f * _2240) * sqrt(_2240), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2227)) * _2565) + _2564);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _2570 = (_2570 * 0.65f) + (clamp(_2190.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _2572 = float4(_2570.x, _2570.y, _2570.z, _2190.w);
  _2572.w = dot(_2568, 0.3333333432674407958984375f.xxx);
  _5 = _2572;
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

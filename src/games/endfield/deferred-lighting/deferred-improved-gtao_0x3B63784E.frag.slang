#include "./renodx_injection.hlsli"

// Ported from the native 0x3B63784E Vulkan dump.
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

static float _380;
static uint _383;

static const int2 _337[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _338[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(37, 3)]] cbuffer _8_9 : register(b37, space3) {
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

[[vk::binding(41, 3)]] ByteAddressBuffer _24 : register(t41, space3);
[[vk::binding(38, 3)]] cbuffer _25_27 : register(b38, space3) {
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

[[vk::binding(36, 3)]] cbuffer _32_33 : register(b36, space3) {
  column_major float4x4 _33_m0[5] : packoffset(c0);
  float4 _33_m1[4] : packoffset(c20);
  float4 _33_m2[4] : packoffset(c24);
  float4 _33_m3[4] : packoffset(c28);
  float4 _33_m4 : packoffset(c32);
  float4 _33_m5 : packoffset(c33);
  float4 _33_m6 : packoffset(c34);
  float4 _33_m7 : packoffset(c35);
  float4 _33_m8 : packoffset(c36);
  float4 _33_m9[27] : packoffset(c37);
  float4 _33_m10 : packoffset(c64);
  float4 _33_m11 : packoffset(c65);
  float4 _33_m12[62] : packoffset(c66);
  column_major float4x4 _33_m13[15] : packoffset(c128);
  float4 _33_m14[15] : packoffset(c188);
  float4 _33_m15[15] : packoffset(c203);
  float4 _33_m16[15] : packoffset(c218);
  float4 _33_m17 : packoffset(c233);
  float4 _33_m18 : packoffset(c234);
  float4 _33_m19[21] : packoffset(c235);
  column_major float4x4 _33_m20 : packoffset(c256);
  column_major float4x4 _33_m21 : packoffset(c260);
  float4 _33_m22 : packoffset(c264);
  float4 _33_m23 : packoffset(c265);
  float4 _33_m24 : packoffset(c266);
  float4 _33_m25[128] : packoffset(c267);
};

[[vk::binding(40, 3)]] ByteAddressBuffer _36 : register(t40, space3);
[[vk::binding(39, 3)]] cbuffer _44_45 : register(b39, space3) {
  float4 _45_m0[32] : packoffset(c0);
  column_major float4x4 _45_m1[32] : packoffset(c32);
};

[[vk::binding(35, 3)]] cbuffer _51_52 : register(b35, space3) {
  float4 _52_m0 : packoffset(c0);
  float4 _52_m1 : packoffset(c1);
  float4 _52_m2 : packoffset(c2);
  float4 _52_m3 : packoffset(c3);
  float4 _52_m4 : packoffset(c4);
  uint4 _52_m5 : packoffset(c5);
  float4 _52_m6 : packoffset(c6);
  float4 _52_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(3, 3)]] SamplerState _13 : register(s3, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(4, 3)]] SamplerComparisonState _16 : register(s4, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _18 : register(t29, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _19 : register(t8, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _20 : register(t9, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _21 : register(t23, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _22 : register(t10, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _34 : register(t11, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _37 : register(t7, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _38 : register(t24, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _39 : register(t30, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _41 : register(t12, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _42 : register(t28, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _43 : register(t13, space3);
[[vk::binding(15, 3)]] Texture2D<float4> _48 : register(t15, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _49 : register(t14, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _50 : register(t22, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _53 : register(t31, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _54 : register(t6, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _55 : register(t21, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _56 : register(t18, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _57 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _58 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _59 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _60 : register(t16, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _61 : register(t5, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _62 : register(t27, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _63 : register(t26, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _64 : register(t25, space3);

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

uint spvPackHalf2x16(float2 value) {
  uint2 Packed = f32tof16(value);
  return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value) {
  return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main() {
  uint2 _397 = uint2(gl_FragCoord.xy);
  int _400 = int(_397.x);
  int _401 = int(_397.y);
  int2 _403 = int3(_400, _401, 0).xy;
  float4 _405 = _62.Load(int3(_403, 0));
  float4 _407 = _63.Load(int3(_403, 0));
  float _410 = _405.x;
  float _411 = _405.y;
  float2 _415 = (_407.xy * 2.0f) - 1.0f.xx;
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
  float3 _434 = normalize(_433);
  float _435 = _407.z;
  float2 _439 = float2(_397);
  float2 _444 = (_439 + 0.5f.xx) * _9_m0.zw;
  float2 _452 = gl_FragCoord.xy * _9_m0.zw;
  float2 _454 = (_452 * 2.0f) - 1.0f.xx;
  float4 _457 = float4(_454, _18.SampleLevel(_12, _444, 0.0f).x, 1.0f);
  _457.y = -_454.y;
  float4 _460 = mul(_7_m6, _457);
  float3 _464 = _460.xyz / _460.w.xxx;
  float4 _468 = float4(_464, 1.0f);
  float _471 = abs(mul(_7_m0, _468).z);
  float3 _486;
  do {
    if (_9_m4.w == 0.0f) {
      _486 = _7_m11.xyz - _464;
      break;
    } else {
      _486 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _487 = dot(_486, _486);
  float _489 = rsqrt(max(_487, 9.9999999392252902907785028219223e-09f));
  float3 _490 = _486 * _489;
  float _491 = _487 * _489;
  float3 _492 = -_490;
  bool _495 = _9_m132.x > 0.00048828125f;
  float2 _505;
  if (_495) {
    _505 = _61.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _505 = 1.0f.xx;
  }
  float _508 = min(_505.x, _505.y);
  float2 _509 = _505 * 1.0f;
  float _510 = _509.x;
  float _513 = clamp((_405.z - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _518;
  float _519;
  if (_495) {
    _518 = lerp(1.0f, _505.y, _513);
    _519 = lerp(1.0f, 0.0f, _513);
  } else {
    _518 = 1.0f;
    _519 = 1.0f;
  }
  float _524 = lerp(lerp(min(_518, _435), _435, _508), _435, _510);
  float3 _526 = _64.Load(int3(_403, 0)).xyz * lerp(lerp(min(_519, 1.0f), 1.0f, _508), 1.0f, _510);
  float3 _527 = _526 * _410;
  float3 _528 = _526 - _527;
  float3 _532 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _410)).xxx + _527;
  float _533 = dot(_434, _490);
  float _534 = max(0.0f, _533);
  float _535 = _524 * _524;
  float _536 = _534 * _534;
  float _537 = _536 * _534;
  float2 _538 = float2(1.0f, _534);
  float2 _541 = float2(1.0f, _535);
  float _542 = _535 * _535;
  float3 _544 = float3(1.0f, _535, _542 * _535);
  float _549 = dot(mul(_538, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _541) / dot(mul(float3(1.0f, _536, _537), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _544);
  float _554 = dot(mul(_538, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _541) / dot(mul(float3(1.0f, _534, _537), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _544);
  float3 _557 = (_532 * _549) + _554.xxx;
  float _558 = _549 + _554;
  float4 _716;
  do {
    [branch] if (_31_m4 == 0) {
      _716 = 0.0f.xxxx;
      break;
    }
    float4 _578 = _37.Load(int3(_403, 0));
    float _579 = _578.x;
    float4 _715;
    if (_579 > 0.001000000047497451305389404296875f) {
      float3 _589 = reflect(_492, _434);
      float3 _590 = -_29_m0.xyz;
      float _595 = dot(_590, _589);
      float3 _597 = _589 - (_590 * _595);
      bool3 _599 = (_595 < _29_m4.z).xxx;
      float3 _607 = normalize((_590 * _29_m4.z) + ((_597 * rsqrt(max(6.103515625e-05f, dot(_597, _597)))) * _29_m4.y));
      float3 _608 = float3(_599.x ? _607.x : _589.x, _599.y ? _607.y : _589.y, _599.z ? _607.z : _589.z);
      float3 _612 = _608 + _490;
      float3 _616 = _612 * rsqrt(max(6.103515625e-05f, dot(_612, _612)));
      float _617 = clamp(dot(_608, _434), 0.0f, 1.0f);
      float _619 = clamp(dot(_434, _616), 0.0f, 1.0f);
      float _622 = clamp(_533, 0.0f, 1.0f);
      float _643 = (((_619 * _542) - _619) * _619) + 1.0f;
      float _646 = 1.0f - clamp(dot(_490, _616), 0.0f, 1.0f);
      float _647 = _646 * _646;
      float _649 = (_646 * _647) * _647;
      float _673 = 1.0f - _524;
      float _680 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_673 * (1.04997003078460693359375f + (_673 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _673))))));
      float _681 = 1.0f - _680;
      float3 _684 = _532 + ((1.0f.xxx - _532) * 0.0476190485060214996337890625f);
      float3 _700 = ((clamp((min(((_532 * (1.0f - _649)) + _649.xxx) * ((_542 / (_643 * _643)) * (0.5f / (((_617 * sqrt(((((-_622) * _542) + _622) * _622) + _542)) + (_622 * sqrt(((((-_617) * _542) + _617) * _617) + _542))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_684 * (((_41.SampleLevel(_13, (float2(_622, _524) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_617, _524) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _680) / _681)) * _684) / (1.0f.xxx - (_684 * _681)))) * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _617) + ((_528 * 1.0f) * _617)) * _29_m1.xyz;
      float3 _713 = lerp(_700, _700 * _39.SampleBias(_13, float2(_579, 0.5f), _9_m16).xyz, (1.0f - _579).xxx) * min(_42.SampleLevel(_13, _452, 0.0f).x, 1.0f);
      _715 = float4(_713.x, _713.y, _713.z, 0.0f.xxxx.w);
    } else {
      _715 = 0.0f.xxxx;
    }
    _716 = _715;
    break;
  } while (false);
  float2 _718 = floor(_439 * 0.03125f);
  int _726 = int((_718.x + (_718.y * _31_m9)) * 8.0f);
  float _733 = floor(_471 - (_9_m3.y * _31_m15));
  float _737 = clamp(_733, 0.0f, _31_m11 - 1.0f);
  int _739 = int(_737 * 8.0f);
  float4 _745 = _38.SampleBias(_13, _444, _9_m16);
  float3 _747;
  float _750;
  _747 = 0.0f.xxx;
  _750 = 1.0f;
  float3 _748;
  float _751;
  [loop] for (int _752 = 0; _752 <= 7; _747 = _748, _750 = _751, _752++) {
    uint _773 = (_733 <= _737) ? (_24.Load(uint((_31_m2 + _726) + _752) * 4 + 0) & _24.Load(uint((_31_m3 + _739) + _752) * 4 + 0)) : 0u;
    uint _774 = uint(_752);
    float3 _778;
    _751 = _750;
    _778 = 0.0f.xxx;
    uint _781;
    float _776;
    float3 _779;
    [loop] for (uint _780 = _773; _780 != 0u; _751 = _776, _778 = _779, _780 = _781) {
      uint _785 = firstbitlow(_780);
      _781 = _780 ^ (1u << (_785 & 31u));
      int _791 = int((32u * _774) + _785) * 8;
      int _794 = _791 + 1;
      int _797 = _791 + 2;
      int _800 = _791 + 3;
      int _803 = _791 + 4;
      int _806 = _791 + 5;
      int _809 = _791 + 6;
      int _812 = _791 + 7;
      uint _816 = uint(_29_m6[_806].w);
      float _891;
      if ((_816 & 1u) == 1u) {
        uint _822 = asuint(_29_m6[_806].x);
        uint _829 = asuint(_29_m6[_806].y);
        uint _836 = asuint(_29_m6[_806].z);
        uint _843 = asuint(_29_m6[_809].x);
        uint _850 = asuint(_29_m6[_809].y);
        uint _857 = asuint(_29_m6[_809].z);
        float3 _876 = abs(mul(float4(_464 - _29_m6[_794].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_822).x, spvUnpackHalf2x16(_836).x, spvUnpackHalf2x16(_850).x, 0.0f), float4(spvUnpackHalf2x16(_822 >> 16u).x, spvUnpackHalf2x16(_836 >> 16u).x, spvUnpackHalf2x16(_850 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_829).x, spvUnpackHalf2x16(_843).x, spvUnpackHalf2x16(_857).x, 0.0f), float4(spvUnpackHalf2x16(_829 >> 16u).x, spvUnpackHalf2x16(_843 >> 16u).x, spvUnpackHalf2x16(_857 >> 16u).x, 0.0f))).xyz);
        float _883 = _29_m6[_812].x * 0.5f;
        float _889 = 1.0f - clamp((max(max(_876.x, _876.y), _876.z) - (_883 + 0.5f)) / (0.5f - _883), 0.0f, 1.0f);
        _891 = _889 * _889;
      } else {
        _891 = 1.0f;
      }
      uint _895 = uint(_29_m6[_791].w);
      bool _898 = _29_m6[_800].z > 0.5f;
      if ((false || (_891 < 0.001000000047497451305389404296875f)) || ((_895 < 4u) && _898)) {
        _776 = _751;
        _779 = _778;
        continue;
      }
      float _3502;
      float3 _3503;
      do {
        [branch] if (_895 >= 4u) {
          float3 _2152;
          do {
            float3 _917 = _29_m6[_794].xyz - _464;
            if (dot(_29_m6[_800].xyz, _917) > 0.0f) {
              _2152 = 0.0f.xxx;
              break;
            }
            float _924 = dot(_917, _917) * _29_m6[_794].w;
            float _927 = clamp(1.0f - (_924 * _924), 0.0f, 1.0f);
            float _928 = _927 * _927;
            if (_928 <= 0.0f) {
              _2152 = 0.0f.xxx;
              break;
            }
            float3 _966;
            float _967;
            bool _968;
            float3 _996;
            float3 _998;
            float3 _1000;
            float3 _1002;
            float3 _932 = _29_m6[_797].xyz * _29_m6[_797].w;
            float3 _933 = _29_m6[_794].xyz - _932;
            float3 _934 = _29_m6[_803].xyz * _29_m6[_800].w;
            float3 _937 = _29_m6[_794].xyz + _932;
            float2 _947 = (float2(clamp(_524, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_533, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _951 = _48.SampleLevel(_13, _947, 0.0f);
            float4 _955 = _49.SampleLevel(_13, _947, 0.0f);
            float _1350;
            do {
              _966 = _490 - (_434 * dot(_490, _434));
              _967 = dot(_966, _966);
              _968 = _967 > 9.9999997473787516355514526367188e-05f;
              float3 _991;
              if (_968) {
                _991 = _966 * rsqrt(_967);
              } else {
                float _972 = _434.z;
                float _974 = (_972 >= 0.0f) ? 1.0f : (-1.0f);
                float _976 = (-1.0f) / (_974 + _972);
                float _978 = _434.x;
                _991 = float3(1.0f + (((_974 * _976) * _978) * _978), ((_974 * _978) * _434.y) * _976, (-_974) * _978);
              }
              float3x3 _995 = mul(float3x3(float3(_951.x, 0.0f, _951.z), float3(0.0f, 1.0f, 0.0f), float3(_951.y, 0.0f, _951.w)), float3x3(_991, cross(_434, _991), _434));
              _996 = (_933 - _934) - _464;
              float3 _997 = mul(_995, _996);
              _998 = (_933 + _934) - _464;
              float3 _999 = mul(_995, _998);
              _1000 = (_937 + _934) - _464;
              float3 _1001 = mul(_995, _1000);
              _1002 = (_937 - _934) - _464;
              float3 _1003 = mul(_995, _1002);
              float _1004 = _997.z;
              float _1007 = _999.z;
              float _1011 = _1001.z;
              float _1015 = _1003.z;
              int _1019 = (((int(_1004 > 0.0f) | ((_1007 > 0.0f) ? 2 : 0)) | ((_1011 > 0.0f) ? 4 : 0)) | ((_1015 > 0.0f) ? 8 : 0));
              float3 _1256;
              float3 _1257;
              float3 _1258;
              float3 _1259;
              float3 _1260;
              int _1261;
              if (_1019 == 0) {
                _1256 = _1003;
                _1257 = _1001;
                _1258 = _999;
                _1259 = _997;
                _1260 = 0.0f.xxx;
                _1261 = 0;
              } else {
                float3 _1250;
                float3 _1251;
                float3 _1252;
                float3 _1253;
                float3 _1254;
                int _1255;
                if (_1019 == 1) {
                  _1250 = _1003;
                  _1251 = (_997 * (-_1015)) + (_1003 * _1004);
                  _1252 = (_997 * (-_1007)) + (_999 * _1004);
                  _1253 = _997;
                  _1254 = 0.0f.xxx;
                  _1255 = 3;
                } else {
                  float3 _1236;
                  float3 _1237;
                  float3 _1238;
                  float3 _1239;
                  float3 _1240;
                  int _1241;
                  if (_1019 == 2) {
                    _1236 = _1003;
                    _1237 = (_999 * (-_1011)) + (_1001 * _1007);
                    _1238 = _999;
                    _1239 = (_999 * (-_1004)) + (_997 * _1007);
                    _1240 = 0.0f.xxx;
                    _1241 = 3;
                  } else {
                    float3 _1222;
                    float3 _1223;
                    float3 _1224;
                    float3 _1225;
                    float3 _1226;
                    int _1227;
                    if (_1019 == 3) {
                      _1222 = (_997 * (-_1015)) + (_1003 * _1004);
                      _1223 = (_999 * (-_1011)) + (_1001 * _1007);
                      _1224 = _999;
                      _1225 = _997;
                      _1226 = 0.0f.xxx;
                      _1227 = 4;
                    } else {
                      float3 _1208;
                      float3 _1209;
                      float3 _1210;
                      float3 _1211;
                      float3 _1212;
                      int _1213;
                      if (_1019 == 4) {
                        _1208 = _1003;
                        _1209 = _1001;
                        _1210 = (_1001 * (-_1007)) + (_999 * _1011);
                        _1211 = (_1001 * (-_1015)) + (_1003 * _1011);
                        _1212 = 0.0f.xxx;
                        _1213 = 3;
                      } else {
                        float3 _1194;
                        float3 _1195;
                        float3 _1196;
                        float3 _1197;
                        float3 _1198;
                        int _1199;
                        if (_1019 == 5) {
                          _1194 = _1003;
                          _1195 = _1001;
                          _1196 = _999;
                          _1197 = _997;
                          _1198 = 0.0f.xxx;
                          _1199 = 0;
                        } else {
                          float3 _1188;
                          float3 _1189;
                          float3 _1190;
                          float3 _1191;
                          float3 _1192;
                          int _1193;
                          if (_1019 == 6) {
                            _1188 = (_1001 * (-_1015)) + (_1003 * _1011);
                            _1189 = _1001;
                            _1190 = _999;
                            _1191 = (_999 * (-_1004)) + (_997 * _1007);
                            _1192 = 0.0f.xxx;
                            _1193 = 4;
                          } else {
                            float3 _1174;
                            float3 _1175;
                            float3 _1176;
                            float3 _1177;
                            float3 _1178;
                            int _1179;
                            if (_1019 == 7) {
                              float _1167 = -_1015;
                              _1174 = (_1001 * _1167) + (_1003 * _1011);
                              _1175 = _1001;
                              _1176 = _999;
                              _1177 = _997;
                              _1178 = (_997 * _1167) + (_1003 * _1004);
                              _1179 = 5;
                            } else {
                              float3 _1161;
                              float3 _1162;
                              float3 _1163;
                              float3 _1164;
                              float3 _1165;
                              int _1166;
                              if (_1019 == 8) {
                                _1161 = _1003;
                                _1162 = _1003;
                                _1163 = (_1003 * (-_1011)) + (_1001 * _1015);
                                _1164 = (_1003 * (-_1004)) + (_997 * _1015);
                                _1165 = 0.0f.xxx;
                                _1166 = 3;
                              } else {
                                float3 _1147;
                                float3 _1148;
                                float3 _1149;
                                float3 _1150;
                                float3 _1151;
                                int _1152;
                                if (_1019 == 9) {
                                  _1147 = _1003;
                                  _1148 = (_1003 * (-_1011)) + (_1001 * _1015);
                                  _1149 = (_997 * (-_1007)) + (_999 * _1004);
                                  _1150 = _997;
                                  _1151 = 0.0f.xxx;
                                  _1152 = 4;
                                } else {
                                  float3 _1133;
                                  float3 _1134;
                                  float3 _1135;
                                  float3 _1136;
                                  float3 _1137;
                                  int _1138;
                                  if (_1019 == 10) {
                                    _1133 = _1003;
                                    _1134 = _1001;
                                    _1135 = _999;
                                    _1136 = _997;
                                    _1137 = 0.0f.xxx;
                                    _1138 = 0;
                                  } else {
                                    float3 _1127;
                                    float3 _1128;
                                    float3 _1129;
                                    float3 _1130;
                                    float3 _1131;
                                    int _1132;
                                    if (_1019 == 11) {
                                      float _1120 = -_1011;
                                      _1127 = (_1003 * _1120) + (_1001 * _1015);
                                      _1128 = (_999 * _1120) + (_1001 * _1007);
                                      _1129 = _999;
                                      _1130 = _997;
                                      _1131 = _1003;
                                      _1132 = 5;
                                    } else {
                                      float3 _1114;
                                      float3 _1115;
                                      float3 _1116;
                                      float3 _1117;
                                      float3 _1118;
                                      int _1119;
                                      if (_1019 == 12) {
                                        _1114 = _1003;
                                        _1115 = _1001;
                                        _1116 = (_1001 * (-_1007)) + (_999 * _1011);
                                        _1117 = (_1003 * (-_1004)) + (_997 * _1015);
                                        _1118 = 0.0f.xxx;
                                        _1119 = 4;
                                      } else {
                                        bool _1072 = _1019 == 13;
                                        float3 _1099;
                                        float3 _1100;
                                        float3 _1101;
                                        float3 _1102;
                                        int _1103;
                                        if (_1072) {
                                          float _1092 = -_1007;
                                          _1099 = (_1001 * _1092) + (_999 * _1011);
                                          _1100 = (_997 * _1092) + (_999 * _1004);
                                          _1101 = _997;
                                          _1102 = _1003;
                                          _1103 = 5;
                                        } else {
                                          float3 _1089;
                                          float3 _1090;
                                          int _1091;
                                          if (_1019 == 14) {
                                            float _1082 = -_1004;
                                            _1089 = (_999 * _1082) + (_997 * _1007);
                                            _1090 = (_1003 * _1082) + (_997 * _1015);
                                            _1091 = 5;
                                          } else {
                                            _1089 = _997;
                                            _1090 = 0.0f.xxx;
                                            _1091 = (_1019 == 15) ? 4 : 0;
                                          }
                                          _1099 = _1001;
                                          _1100 = _999;
                                          _1101 = _1089;
                                          _1102 = _1090;
                                          _1103 = _1091;
                                        }
                                        bool3 _1104 = _1072.xxx;
                                        _1114 = float3(_1104.x ? _1001.x : _1003.x, _1104.y ? _1001.y : _1003.y, _1104.z ? _1001.z : _1003.z);
                                        _1115 = _1099;
                                        _1116 = _1100;
                                        _1117 = _1101;
                                        _1118 = _1102;
                                        _1119 = _1103;
                                      }
                                      _1127 = _1114;
                                      _1128 = _1115;
                                      _1129 = _1116;
                                      _1130 = _1117;
                                      _1131 = _1118;
                                      _1132 = _1119;
                                    }
                                    _1133 = _1127;
                                    _1134 = _1128;
                                    _1135 = _1129;
                                    _1136 = _1130;
                                    _1137 = _1131;
                                    _1138 = _1132;
                                  }
                                  _1147 = _1133;
                                  _1148 = _1134;
                                  _1149 = _1135;
                                  _1150 = _1136;
                                  _1151 = _1137;
                                  _1152 = _1138;
                                }
                                _1161 = _1147;
                                _1162 = _1148;
                                _1163 = _1149;
                                _1164 = _1150;
                                _1165 = _1151;
                                _1166 = _1152;
                              }
                              _1174 = _1161;
                              _1175 = _1162;
                              _1176 = _1163;
                              _1177 = _1164;
                              _1178 = _1165;
                              _1179 = _1166;
                            }
                            _1188 = _1174;
                            _1189 = _1175;
                            _1190 = _1176;
                            _1191 = _1177;
                            _1192 = _1178;
                            _1193 = _1179;
                          }
                          _1194 = _1188;
                          _1195 = _1189;
                          _1196 = _1190;
                          _1197 = _1191;
                          _1198 = _1192;
                          _1199 = _1193;
                        }
                        _1208 = _1194;
                        _1209 = _1195;
                        _1210 = _1196;
                        _1211 = _1197;
                        _1212 = _1198;
                        _1213 = _1199;
                      }
                      _1222 = _1208;
                      _1223 = _1209;
                      _1224 = _1210;
                      _1225 = _1211;
                      _1226 = _1212;
                      _1227 = _1213;
                    }
                    _1236 = _1222;
                    _1237 = _1223;
                    _1238 = _1224;
                    _1239 = _1225;
                    _1240 = _1226;
                    _1241 = _1227;
                  }
                  _1250 = _1236;
                  _1251 = _1237;
                  _1252 = _1238;
                  _1253 = _1239;
                  _1254 = _1240;
                  _1255 = _1241;
                }
                _1256 = _1250;
                _1257 = _1251;
                _1258 = _1252;
                _1259 = _1253;
                _1260 = _1254;
                _1261 = _1255;
              }
              bool3 _1263 = (_1261 == 3).xxx;
              bool3 _1266 = (_1261 == 4).xxx;
              if (_1261 == 0) {
                _1350 = 0.0f;
                break;
              }
              float3 _1271 = normalize(_1259);
              float3 _1272 = normalize(_1258);
              float3 _1273 = normalize(_1257);
              float3 _1274 = normalize(float3(_1263.x ? _1259.x : _1256.x, _1263.y ? _1259.y : _1256.y, _1263.z ? _1259.z : _1256.z));
              float3 _1275 = normalize(float3(_1266.x ? _1259.x : _1260.x, _1266.y ? _1259.y : _1260.y, _1266.z ? _1259.z : _1260.z));
              float _1277 = clamp(dot(_1271, _1272), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1281 = sqrt(1.0f - (_1277 * _1277));
              float _1289 = clamp(dot(_1272, _1273), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1293 = sqrt(1.0f - (_1289 * _1289));
              float _1302 = clamp(dot(_1273, _1274), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1306 = sqrt(1.0f - (_1302 * _1302));
              float _1313 = ((cross(_1271, _1272).z * ((_1281 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1277) / _1281))) + (cross(_1272, _1273).z * ((_1293 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1289) / _1293)))) + (cross(_1273, _1274).z * ((_1306 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1302) / _1306)));
              float _1330;
              if (_1261 >= 4) {
                float _1318 = clamp(dot(_1274, _1275), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1322 = sqrt(1.0f - (_1318 * _1318));
                _1330 = _1313 + (cross(_1274, _1275).z * ((_1322 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1318) / _1322)));
              } else {
                _1330 = _1313;
              }
              float _1347;
              if (_1261 == 5) {
                float _1335 = clamp(dot(_1275, _1271), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1339 = sqrt(1.0f - (_1335 * _1335));
                _1347 = _1330 + (cross(_1275, _1271).z * ((_1339 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1335) / _1339)));
              } else {
                _1347 = _1330;
              }
              _1350 = max(_1347, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1738;
            do {
              float3 _1384;
              if (_968) {
                _1384 = _966 * rsqrt(_967);
              } else {
                float _1365 = _434.z;
                float _1367 = (_1365 >= 0.0f) ? 1.0f : (-1.0f);
                float _1369 = (-1.0f) / (_1367 + _1365);
                float _1371 = _434.x;
                _1384 = float3(1.0f + (((_1367 * _1369) * _1371) * _1371), ((_1367 * _1371) * _434.y) * _1369, (-_1367) * _1371);
              }
              float3x3 _1387 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1384, cross(_434, _1384), _434));
              float3 _1388 = mul(_1387, _996);
              float3 _1389 = mul(_1387, _998);
              float3 _1390 = mul(_1387, _1000);
              float3 _1391 = mul(_1387, _1002);
              float _1392 = _1388.z;
              float _1395 = _1389.z;
              float _1399 = _1390.z;
              float _1403 = _1391.z;
              int _1407 = (((int(_1392 > 0.0f) | ((_1395 > 0.0f) ? 2 : 0)) | ((_1399 > 0.0f) ? 4 : 0)) | ((_1403 > 0.0f) ? 8 : 0));
              float3 _1644;
              float3 _1645;
              float3 _1646;
              float3 _1647;
              float3 _1648;
              int _1649;
              if (_1407 == 0) {
                _1644 = _1391;
                _1645 = _1390;
                _1646 = _1389;
                _1647 = _1388;
                _1648 = 0.0f.xxx;
                _1649 = 0;
              } else {
                float3 _1638;
                float3 _1639;
                float3 _1640;
                float3 _1641;
                float3 _1642;
                int _1643;
                if (_1407 == 1) {
                  _1638 = _1391;
                  _1639 = (_1388 * (-_1403)) + (_1391 * _1392);
                  _1640 = (_1388 * (-_1395)) + (_1389 * _1392);
                  _1641 = _1388;
                  _1642 = 0.0f.xxx;
                  _1643 = 3;
                } else {
                  float3 _1624;
                  float3 _1625;
                  float3 _1626;
                  float3 _1627;
                  float3 _1628;
                  int _1629;
                  if (_1407 == 2) {
                    _1624 = _1391;
                    _1625 = (_1389 * (-_1399)) + (_1390 * _1395);
                    _1626 = _1389;
                    _1627 = (_1389 * (-_1392)) + (_1388 * _1395);
                    _1628 = 0.0f.xxx;
                    _1629 = 3;
                  } else {
                    float3 _1610;
                    float3 _1611;
                    float3 _1612;
                    float3 _1613;
                    float3 _1614;
                    int _1615;
                    if (_1407 == 3) {
                      _1610 = (_1388 * (-_1403)) + (_1391 * _1392);
                      _1611 = (_1389 * (-_1399)) + (_1390 * _1395);
                      _1612 = _1389;
                      _1613 = _1388;
                      _1614 = 0.0f.xxx;
                      _1615 = 4;
                    } else {
                      float3 _1596;
                      float3 _1597;
                      float3 _1598;
                      float3 _1599;
                      float3 _1600;
                      int _1601;
                      if (_1407 == 4) {
                        _1596 = _1391;
                        _1597 = _1390;
                        _1598 = (_1390 * (-_1395)) + (_1389 * _1399);
                        _1599 = (_1390 * (-_1403)) + (_1391 * _1399);
                        _1600 = 0.0f.xxx;
                        _1601 = 3;
                      } else {
                        float3 _1582;
                        float3 _1583;
                        float3 _1584;
                        float3 _1585;
                        float3 _1586;
                        int _1587;
                        if (_1407 == 5) {
                          _1582 = _1391;
                          _1583 = _1390;
                          _1584 = _1389;
                          _1585 = _1388;
                          _1586 = 0.0f.xxx;
                          _1587 = 0;
                        } else {
                          float3 _1576;
                          float3 _1577;
                          float3 _1578;
                          float3 _1579;
                          float3 _1580;
                          int _1581;
                          if (_1407 == 6) {
                            _1576 = (_1390 * (-_1403)) + (_1391 * _1399);
                            _1577 = _1390;
                            _1578 = _1389;
                            _1579 = (_1389 * (-_1392)) + (_1388 * _1395);
                            _1580 = 0.0f.xxx;
                            _1581 = 4;
                          } else {
                            float3 _1562;
                            float3 _1563;
                            float3 _1564;
                            float3 _1565;
                            float3 _1566;
                            int _1567;
                            if (_1407 == 7) {
                              float _1555 = -_1403;
                              _1562 = (_1390 * _1555) + (_1391 * _1399);
                              _1563 = _1390;
                              _1564 = _1389;
                              _1565 = _1388;
                              _1566 = (_1388 * _1555) + (_1391 * _1392);
                              _1567 = 5;
                            } else {
                              float3 _1549;
                              float3 _1550;
                              float3 _1551;
                              float3 _1552;
                              float3 _1553;
                              int _1554;
                              if (_1407 == 8) {
                                _1549 = _1391;
                                _1550 = _1391;
                                _1551 = (_1391 * (-_1399)) + (_1390 * _1403);
                                _1552 = (_1391 * (-_1392)) + (_1388 * _1403);
                                _1553 = 0.0f.xxx;
                                _1554 = 3;
                              } else {
                                float3 _1535;
                                float3 _1536;
                                float3 _1537;
                                float3 _1538;
                                float3 _1539;
                                int _1540;
                                if (_1407 == 9) {
                                  _1535 = _1391;
                                  _1536 = (_1391 * (-_1399)) + (_1390 * _1403);
                                  _1537 = (_1388 * (-_1395)) + (_1389 * _1392);
                                  _1538 = _1388;
                                  _1539 = 0.0f.xxx;
                                  _1540 = 4;
                                } else {
                                  float3 _1521;
                                  float3 _1522;
                                  float3 _1523;
                                  float3 _1524;
                                  float3 _1525;
                                  int _1526;
                                  if (_1407 == 10) {
                                    _1521 = _1391;
                                    _1522 = _1390;
                                    _1523 = _1389;
                                    _1524 = _1388;
                                    _1525 = 0.0f.xxx;
                                    _1526 = 0;
                                  } else {
                                    float3 _1515;
                                    float3 _1516;
                                    float3 _1517;
                                    float3 _1518;
                                    float3 _1519;
                                    int _1520;
                                    if (_1407 == 11) {
                                      float _1508 = -_1399;
                                      _1515 = (_1391 * _1508) + (_1390 * _1403);
                                      _1516 = (_1389 * _1508) + (_1390 * _1395);
                                      _1517 = _1389;
                                      _1518 = _1388;
                                      _1519 = _1391;
                                      _1520 = 5;
                                    } else {
                                      float3 _1502;
                                      float3 _1503;
                                      float3 _1504;
                                      float3 _1505;
                                      float3 _1506;
                                      int _1507;
                                      if (_1407 == 12) {
                                        _1502 = _1391;
                                        _1503 = _1390;
                                        _1504 = (_1390 * (-_1395)) + (_1389 * _1399);
                                        _1505 = (_1391 * (-_1392)) + (_1388 * _1403);
                                        _1506 = 0.0f.xxx;
                                        _1507 = 4;
                                      } else {
                                        bool _1460 = _1407 == 13;
                                        float3 _1487;
                                        float3 _1488;
                                        float3 _1489;
                                        float3 _1490;
                                        int _1491;
                                        if (_1460) {
                                          float _1480 = -_1395;
                                          _1487 = (_1390 * _1480) + (_1389 * _1399);
                                          _1488 = (_1388 * _1480) + (_1389 * _1392);
                                          _1489 = _1388;
                                          _1490 = _1391;
                                          _1491 = 5;
                                        } else {
                                          float3 _1477;
                                          float3 _1478;
                                          int _1479;
                                          if (_1407 == 14) {
                                            float _1470 = -_1392;
                                            _1477 = (_1389 * _1470) + (_1388 * _1395);
                                            _1478 = (_1391 * _1470) + (_1388 * _1403);
                                            _1479 = 5;
                                          } else {
                                            _1477 = _1388;
                                            _1478 = 0.0f.xxx;
                                            _1479 = (_1407 == 15) ? 4 : 0;
                                          }
                                          _1487 = _1390;
                                          _1488 = _1389;
                                          _1489 = _1477;
                                          _1490 = _1478;
                                          _1491 = _1479;
                                        }
                                        bool3 _1492 = _1460.xxx;
                                        _1502 = float3(_1492.x ? _1390.x : _1391.x, _1492.y ? _1390.y : _1391.y, _1492.z ? _1390.z : _1391.z);
                                        _1503 = _1487;
                                        _1504 = _1488;
                                        _1505 = _1489;
                                        _1506 = _1490;
                                        _1507 = _1491;
                                      }
                                      _1515 = _1502;
                                      _1516 = _1503;
                                      _1517 = _1504;
                                      _1518 = _1505;
                                      _1519 = _1506;
                                      _1520 = _1507;
                                    }
                                    _1521 = _1515;
                                    _1522 = _1516;
                                    _1523 = _1517;
                                    _1524 = _1518;
                                    _1525 = _1519;
                                    _1526 = _1520;
                                  }
                                  _1535 = _1521;
                                  _1536 = _1522;
                                  _1537 = _1523;
                                  _1538 = _1524;
                                  _1539 = _1525;
                                  _1540 = _1526;
                                }
                                _1549 = _1535;
                                _1550 = _1536;
                                _1551 = _1537;
                                _1552 = _1538;
                                _1553 = _1539;
                                _1554 = _1540;
                              }
                              _1562 = _1549;
                              _1563 = _1550;
                              _1564 = _1551;
                              _1565 = _1552;
                              _1566 = _1553;
                              _1567 = _1554;
                            }
                            _1576 = _1562;
                            _1577 = _1563;
                            _1578 = _1564;
                            _1579 = _1565;
                            _1580 = _1566;
                            _1581 = _1567;
                          }
                          _1582 = _1576;
                          _1583 = _1577;
                          _1584 = _1578;
                          _1585 = _1579;
                          _1586 = _1580;
                          _1587 = _1581;
                        }
                        _1596 = _1582;
                        _1597 = _1583;
                        _1598 = _1584;
                        _1599 = _1585;
                        _1600 = _1586;
                        _1601 = _1587;
                      }
                      _1610 = _1596;
                      _1611 = _1597;
                      _1612 = _1598;
                      _1613 = _1599;
                      _1614 = _1600;
                      _1615 = _1601;
                    }
                    _1624 = _1610;
                    _1625 = _1611;
                    _1626 = _1612;
                    _1627 = _1613;
                    _1628 = _1614;
                    _1629 = _1615;
                  }
                  _1638 = _1624;
                  _1639 = _1625;
                  _1640 = _1626;
                  _1641 = _1627;
                  _1642 = _1628;
                  _1643 = _1629;
                }
                _1644 = _1638;
                _1645 = _1639;
                _1646 = _1640;
                _1647 = _1641;
                _1648 = _1642;
                _1649 = _1643;
              }
              bool3 _1651 = (_1649 == 3).xxx;
              bool3 _1654 = (_1649 == 4).xxx;
              if (_1649 == 0) {
                _1738 = 0.0f;
                break;
              }
              float3 _1659 = normalize(_1647);
              float3 _1660 = normalize(_1646);
              float3 _1661 = normalize(_1645);
              float3 _1662 = normalize(float3(_1651.x ? _1647.x : _1644.x, _1651.y ? _1647.y : _1644.y, _1651.z ? _1647.z : _1644.z));
              float3 _1663 = normalize(float3(_1654.x ? _1647.x : _1648.x, _1654.y ? _1647.y : _1648.y, _1654.z ? _1647.z : _1648.z));
              float _1665 = clamp(dot(_1659, _1660), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1669 = sqrt(1.0f - (_1665 * _1665));
              float _1677 = clamp(dot(_1660, _1661), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1681 = sqrt(1.0f - (_1677 * _1677));
              float _1690 = clamp(dot(_1661, _1662), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1694 = sqrt(1.0f - (_1690 * _1690));
              float _1701 = ((cross(_1659, _1660).z * ((_1669 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1665) / _1669))) + (cross(_1660, _1661).z * ((_1681 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1677) / _1681)))) + (cross(_1661, _1662).z * ((_1694 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1690) / _1694)));
              float _1718;
              if (_1649 >= 4) {
                float _1706 = clamp(dot(_1662, _1663), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1710 = sqrt(1.0f - (_1706 * _1706));
                _1718 = _1701 + (cross(_1662, _1663).z * ((_1710 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1706) / _1710)));
              } else {
                _1718 = _1701;
              }
              float _1735;
              if (_1649 == 5) {
                float _1723 = clamp(dot(_1663, _1659), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1727 = sqrt(1.0f - (_1723 * _1723));
                _1735 = _1718 + (cross(_1663, _1659).z * ((_1727 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1723) / _1727)));
              } else {
                _1735 = _1718;
              }
              _1738 = max(_1735, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1741 = (_816 & 2u) != 0u;
            uint _1745 = asuint(_29_m6[_803].w);
            uint _1746 = asuint(_29_m6[_809].w);
            float3 _1747 = _464 - _29_m6[_794].xyz;
            float3 _1748 = abs(_1747);
            float _1749 = _1748.x;
            float _1750 = _1748.y;
            float _1752 = _1748.z;
            int _1785;
            if ((_1749 > _1750) && (_1749 > _1752)) {
              _1785 = int((_1747.x > 0.0f) ? (_1745 & 1023u) : ((_1745 >> 10u) & 1023u));
            } else {
              int _1777;
              if (_1750 > _1752) {
                _1777 = int((_1747.y > 0.0f) ? ((_1745 >> 20u) & 1023u) : (_1746 & 1023u));
              } else {
                _1777 = int((_1747.z > 0.0f) ? ((_1746 >> 10u) & 1023u) : ((_1746 >> 20u) & 1023u));
              }
              _1785 = _1777;
            }
            int _1788 = _1741 ? int(_29_m6[_803].w) : ((_1785 == 1023) ? (-1) : _1785);
            uint _1797 = uint(_1788);
            uint _1799 = asuint(_33_m11.x) + (_1797 * 96u);
            uint _1801 = (_1799 + 64u) >> 2u;
            uint _1804 = _1801 + 1u;
            uint _1807 = _1801 + 2u;
            uint _1810 = _1801 + 3u;
            float4 _1814 = asfloat(uint4(_36.Load(_1801 * 4 + 0), _36.Load(_1804 * 4 + 0), _36.Load(_1807 * 4 + 0), _36.Load(_1810 * 4 + 0)));
            float _2146;
            do {
              uint _1830 = ((asuint(_33_m11.y) + (_1797 * 16u)) >> 2u) + 1u;
              if (_36.Load(_1830 * 4 + 0) > 0u) {
                float4 _393 = _745;
                float _1845;
                do {
                  if (_36.Load(_1830 * 4 + 0) == 0u) {
                    _1845 = 1.0f;
                    break;
                  }
                  _1845 = _393[_36.Load(_1830 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2146 = _1845;
                break;
              }
              uint _1846 = _1799 >> 2u;
              uint _1861 = (_1799 + 16u) >> 2u;
              uint _1876 = (_1799 + 32u) >> 2u;
              uint _1891 = (_1799 + 48u) >> 2u;
              float4 _1911 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_1846 * 4 + 0), _36.Load((_1846 + 1u) * 4 + 0), _36.Load((_1846 + 2u) * 4 + 0), _36.Load((_1846 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1861 * 4 + 0), _36.Load((_1861 + 1u) * 4 + 0), _36.Load((_1861 + 2u) * 4 + 0), _36.Load((_1861 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1876 * 4 + 0), _36.Load((_1876 + 1u) * 4 + 0), _36.Load((_1876 + 2u) * 4 + 0), _36.Load((_1876 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1891 * 4 + 0), _36.Load((_1891 + 1u) * 4 + 0), _36.Load((_1891 + 2u) * 4 + 0), _36.Load((_1891 + 3u) * 4 + 0))))), float4((_464 - ((_1747 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1747, _1747)))) * _1814.x)) + (_434 * (_1814.y * 5.0f)), 1.0f));
              float3 _1915 = _1911.xyz / _1911.w.xxx;
              uint _1917 = (_1799 + 80u) >> 2u;
              float4 _1930 = asfloat(uint4(_36.Load(_1917 * 4 + 0), _36.Load((_1917 + 1u) * 4 + 0), _36.Load((_1917 + 2u) * 4 + 0), _36.Load((_1917 + 3u) * 4 + 0)));
              float2 _1931 = _1915.xy;
              float2 _1933 = _1930.xy;
              float3 _1937 = _1915.xyz;
              bool3 _1938 = bool3(_1937.x <= 0.0f.xxx.x, _1937.y <= 0.0f.xxx.y, _1937.z <= 0.0f.xxx.z);
              bool3 _1939 = bool3(_1937.x >= 1.0f.xxx.x, _1937.y >= 1.0f.xxx.y, _1937.z >= 1.0f.xxx.z);
              float _1942 = _1915.z;
              float2 _1953 = ((_1931 * (_1930.zw - _1933)) + _1933).xy * _33_m10.zw;
              float2 _1955 = floor(_1953 + 0.5f.xx);
              float2 _1956 = _1953 - _1955;
              float _1957 = _1956.x;
              float _1958 = _1957 + 0.5f;
              float _1959 = _1958 * _1958;
              float _1962 = 1.0f - _1957;
              float _1963 = min(_1957, 0.0f);
              float _1966 = _1957 + 1.0f;
              float _1967 = max(_1957, 0.0f);
              float _1978 = _1956.y;
              float _1979 = _1978 + 0.5f;
              float _1980 = _1979 * _1979;
              float _1983 = 1.0f - _1978;
              float _1984 = min(_1978, 0.0f);
              float _1987 = _1978 + 1.0f;
              float _1988 = max(_1978, 0.0f);
              float3 _2000 = float3(0.1599999964237213134765625f * _1962, 0.1599999964237213134765625f * ((_1966 - (_1967 * _1967)) + 1.0f), _1959 * 0.07999999821186065673828125f);
              float3 _2001 = float3(0.1599999964237213134765625f * ((_1959 * 0.5f) - _1957), 0.1599999964237213134765625f * ((_1962 - (_1963 * _1963)) + 1.0f), 0.1599999964237213134765625f * _1966) + _2000;
              float3 _2003 = float3(0.1599999964237213134765625f * _1983, 0.1599999964237213134765625f * ((_1987 - (_1988 * _1988)) + 1.0f), _1980 * 0.07999999821186065673828125f);
              float3 _2004 = float3(0.1599999964237213134765625f * ((_1980 * 0.5f) - _1978), 0.1599999964237213134765625f * ((_1983 - (_1984 * _1984)) + 1.0f), 0.1599999964237213134765625f * _1987) + _2003;
              float3 _2010 = ((_2000 / _2001) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _2012 = ((_2003 / _2004) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _2014 = _1955 * _33_m10.xy;
              float _2015 = _2010.x;
              float _2016 = _2012.x;
              float _2019 = _2010.y;
              float _2022 = _2010.z;
              float _2025 = _2012.y;
              float _2032 = _2012.z;
              float _2039 = _2001.x;
              float _2040 = _2004.x;
              float _2042 = _2001.y;
              float _2044 = _2001.z;
              float _2046 = _2004.y;
              float _2050 = _2004.z;
              float _2108 = (((((((_2039 * _2040) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2015, _2016), _380).xy, _1942)) + ((_2042 * _2040) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2019, _2016), _380).xy, _1942))) + ((_2044 * _2040) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2022, _2016), _380).xy, _1942))) + ((_2039 * _2046) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2015, _2025), _380).xy, _1942))) + ((_2042 * _2046) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2019, _2025), _380).xy, _1942))) + ((_2044 * _2046) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2022, _2025), _380).xy, _1942))) + ((_2039 * _2050) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2015, _2032), _380).xy, _1942));
              float4 _2131 = asfloat(uint4(_36.Load(_1801 * 4 + 0), _36.Load(_1804 * 4 + 0), _36.Load(_1807 * 4 + 0), _36.Load(_1810 * 4 + 0)));
              float _2132 = _2131.w;
              float2 _2134 = min(_1931, 1.0f.xx - _1931);
              _2146 = lerp(1.0f, (any(bool3(_1938.x || _1939.x, _1938.y || _1939.y, _1938.z || _1939.z)) || ((asuint(_1942) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2108 + ((_2042 * _2050) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2019, _2032), _380).xy, _1942))) + ((_2044 * _2050) * _34.SampleCmpLevelZero(_16, float3(_2014 + float2(_2022, _2032), _380).xy, _1942))), _1741 ? min(_2132, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2131.z - _1911.w) * 0.25f, min(_2134.x, _2134.y)))) : _2132);
              break;
            } while (false);
            _2152 = ((_29_m6[_791].xyz * (((((_532 * _955.x) + ((1.0f.xxx - _532) * _955.y)) * _1350) * _29_m6[_812].z) + (_528 * _1738))) * _928) * ((_1788 >= 0) ? _2146 : 1.0f);
            break;
          } while (false);
          _3502 = _751;
          _3503 = _2152 * _891;
          break;
        }
        float _3500;
        float3 _3501;
        if (_29_m6[_791].w < 1.5f) {
          float3 _2757 = float3(0.100000001490116119384765625f, _524, 1.0f);
          float _2766 = (0.5f + (0.5f * _29_m6[_797].y)) - abs(_29_m6[_797].x);
          float _2767 = _29_m6[_797].y - _2766;
          float _2774 = abs(max((1.0f - abs(_2766)) - abs(_2767), 0.00048828125f));
          float3 _2778 = normalize(float3(_2766, _2767, (_29_m6[_797].x >= 0.0f) ? _2774 : (-_2774)));
          float3 _2779 = _29_m6[_794].xyz - _464;
          float _2780 = dot(_2779, _2779);
          float _2781 = rsqrt(_2780);
          float3 _2782 = _2779 * _2781;
          float _2786 = clamp(_29_m6[_812].y * _2781, 0.0f, 1.0f);
          int _2791 = int(_29_m6[_812].w);
          float3 _2792 = _2778 * _29_m6[_797].z;
          float3 _2793 = _2792 * 0.5f;
          float3 _2794 = _2779 - _2793;
          float3 _2795 = _2779 + _2793;
          bool _2797 = (_895 & 1u) == 0u;
          bool _2800 = _2797 || ((_816 & 2u) != 0u);
          bool _2803 = (!_2797) && (_29_m6[_797].z > 0.0f);
          float _2822;
          float _2823;
          if (_2803) {
            float _2807 = length(_2794);
            float _2808 = length(_2795);
            _2822 = clamp(0.5f * ((dot(_434, _2794) / _2807) + (dot(_434, _2795) / _2808)), 0.0f, 1.0f);
            _2823 = 1.0f / ((((_2807 * _2808) + dot(_2794, _2795)) * 0.5f) + 1.0f);
          } else {
            _2822 = clamp(dot(_434, _2782), 0.0f, 1.0f);
            _2823 = 1.0f;
          }
          float _2845;
          if (_29_m6[_809].w < 0.0f) {
            float _2839 = _2780 * (_29_m6[_794].w * _29_m6[_794].w);
            float _2842 = clamp(1.0f - (_2839 * _2839), 0.0f, 1.0f);
            _2845 = lerp(1.0f / (_2780 + 1.0f), _2823, float(_2803)) * (_2842 * _2842);
          } else {
            float3 _2828 = _2779 * _29_m6[_794].w;
            _2845 = _2823 * pow(1.0f - clamp(dot(_2828, _2828), 0.0f, 1.0f), _29_m6[_809].w);
          }
          float _2851 = clamp((dot(_2782, -_2778) - _29_m6[_797].z) * _29_m6[_797].w, 0.0f, 1.0f);
          float _2855 = _2845 * lerp(1.0f, _2851 * _2851, float(_2797));
          float _2955;
          if ((!_2803) && (_2791 >= 0)) {
            uint _2861 = uint(_2791);
            float2 _2948;
            [branch] if (_2797) {
              float4 _2938 = mul(_45_m1[_2861], _468);
              _2948 = _45_m0[_2861].xy + (clamp(_2938.xy / _2938.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2861].zw);
            }
            else {
              float3 _2875 = mul(float4(-_2779, 0.0f), _45_m1[_2861]).xyz;
              float3 _388 = _2875;
              float3 _387 = _2875;
              float3 _386 = abs(_2875);
              uint _2884 = uint(int(_386.y > _386.x));
              uint _2890 = (_386.z > _386[_2884]) ? 2u : _2884;
              uint _2896 = (_2890 * 2u) + uint(_387[_2890] < 0.0f);
              float _2900 = abs(_388[_2896 / 2u]);
              float _2920 = 0.5f - (0.000244140625f / _45_m0[_2861].w);
              _2948 = _45_m0[_2861].xy + (clamp(float2((float(_2896) + ((((_388[uint(_337[_2896].x)] * _338[_2896].x) / _2900) * _2920) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_388[uint(_337[_2896].y)] * _338[_2896].y) / _2900) * _2920)), 0.0f.xx, 1.0f.xx) * _45_m0[_2861].zw);
            }
            _2955 = _2855 * _43.SampleLevel(_13, _2948, 0.0f).x;
          } else {
            _2955 = _2855;
          }
          bool _2956 = _2955 > 0.0f;
          float _3365;
          if (_2956) {
            int _3009;
            if (_2800) {
              _3009 = int(_29_m6[_800].x);
            } else {
              uint _2964 = asuint(_29_m6[_797].w);
              uint _2965 = asuint(_29_m6[_800].x);
              float3 _2966 = _464 - _29_m6[_794].xyz;
              float3 _2967 = abs(_2966);
              float _2968 = _2967.x;
              float _2969 = _2967.y;
              float _2971 = _2967.z;
              int _3004;
              if ((_2968 > _2969) && (_2968 > _2971)) {
                _3004 = int((_2966.x > 0.0f) ? (_2964 & 1023u) : ((_2964 >> 10u) & 1023u));
              } else {
                int _2996;
                if (_2969 > _2971) {
                  _2996 = int((_2966.y > 0.0f) ? ((_2964 >> 20u) & 1023u) : (_2965 & 1023u));
                } else {
                  _2996 = int((_2966.z > 0.0f) ? ((_2965 >> 10u) & 1023u) : ((_2965 >> 20u) & 1023u));
                }
                _3004 = _2996;
              }
              _3009 = (_3004 == 1023) ? (-1) : _3004;
            }
            uint _3014 = uint(_3009);
            uint _3016 = asuint(_33_m11.x) + (_3014 * 96u);
            uint _3018 = (_3016 + 64u) >> 2u;
            uint _3021 = _3018 + 1u;
            uint _3024 = _3018 + 2u;
            uint _3027 = _3018 + 3u;
            float4 _3031 = asfloat(uint4(_36.Load(_3018 * 4 + 0), _36.Load(_3021 * 4 + 0), _36.Load(_3024 * 4 + 0), _36.Load(_3027 * 4 + 0)));
            float _3363;
            do {
              uint _3047 = ((asuint(_33_m11.y) + (_3014 * 16u)) >> 2u) + 1u;
              if (_36.Load(_3047 * 4 + 0) > 0u) {
                float4 _385 = _745;
                float _3062;
                do {
                  if (_36.Load(_3047 * 4 + 0) == 0u) {
                    _3062 = 1.0f;
                    break;
                  }
                  _3062 = _385[_36.Load(_3047 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3363 = _3062;
                break;
              }
              uint _3063 = _3016 >> 2u;
              uint _3078 = (_3016 + 16u) >> 2u;
              uint _3093 = (_3016 + 32u) >> 2u;
              uint _3108 = (_3016 + 48u) >> 2u;
              float4 _3128 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_3063 * 4 + 0), _36.Load((_3063 + 1u) * 4 + 0), _36.Load((_3063 + 2u) * 4 + 0), _36.Load((_3063 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3078 * 4 + 0), _36.Load((_3078 + 1u) * 4 + 0), _36.Load((_3078 + 2u) * 4 + 0), _36.Load((_3078 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3093 * 4 + 0), _36.Load((_3093 + 1u) * 4 + 0), _36.Load((_3093 + 2u) * 4 + 0), _36.Load((_3093 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3108 * 4 + 0), _36.Load((_3108 + 1u) * 4 + 0), _36.Load((_3108 + 2u) * 4 + 0), _36.Load((_3108 + 3u) * 4 + 0))))), float4((_464 - ((-_2782) * _3031.x)) + (_434 * (_3031.y * 5.0f)), 1.0f));
              float3 _3132 = _3128.xyz / _3128.w.xxx;
              uint _3134 = (_3016 + 80u) >> 2u;
              float4 _3147 = asfloat(uint4(_36.Load(_3134 * 4 + 0), _36.Load((_3134 + 1u) * 4 + 0), _36.Load((_3134 + 2u) * 4 + 0), _36.Load((_3134 + 3u) * 4 + 0)));
              float2 _3148 = _3132.xy;
              float2 _3150 = _3147.xy;
              float3 _3154 = _3132.xyz;
              bool3 _3155 = bool3(_3154.x <= 0.0f.xxx.x, _3154.y <= 0.0f.xxx.y, _3154.z <= 0.0f.xxx.z);
              bool3 _3156 = bool3(_3154.x >= 1.0f.xxx.x, _3154.y >= 1.0f.xxx.y, _3154.z >= 1.0f.xxx.z);
              float _3159 = _3132.z;
              float2 _3170 = ((_3148 * (_3147.zw - _3150)) + _3150).xy * _33_m10.zw;
              float2 _3172 = floor(_3170 + 0.5f.xx);
              float2 _3173 = _3170 - _3172;
              float _3174 = _3173.x;
              float _3175 = _3174 + 0.5f;
              float _3176 = _3175 * _3175;
              float _3179 = 1.0f - _3174;
              float _3180 = min(_3174, 0.0f);
              float _3183 = _3174 + 1.0f;
              float _3184 = max(_3174, 0.0f);
              float _3195 = _3173.y;
              float _3196 = _3195 + 0.5f;
              float _3197 = _3196 * _3196;
              float _3200 = 1.0f - _3195;
              float _3201 = min(_3195, 0.0f);
              float _3204 = _3195 + 1.0f;
              float _3205 = max(_3195, 0.0f);
              float3 _3217 = float3(0.1599999964237213134765625f * _3179, 0.1599999964237213134765625f * ((_3183 - (_3184 * _3184)) + 1.0f), _3176 * 0.07999999821186065673828125f);
              float3 _3218 = float3(0.1599999964237213134765625f * ((_3176 * 0.5f) - _3174), 0.1599999964237213134765625f * ((_3179 - (_3180 * _3180)) + 1.0f), 0.1599999964237213134765625f * _3183) + _3217;
              float3 _3220 = float3(0.1599999964237213134765625f * _3200, 0.1599999964237213134765625f * ((_3204 - (_3205 * _3205)) + 1.0f), _3197 * 0.07999999821186065673828125f);
              float3 _3221 = float3(0.1599999964237213134765625f * ((_3197 * 0.5f) - _3195), 0.1599999964237213134765625f * ((_3200 - (_3201 * _3201)) + 1.0f), 0.1599999964237213134765625f * _3204) + _3220;
              float3 _3227 = ((_3217 / _3218) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _3229 = ((_3220 / _3221) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _3231 = _3172 * _33_m10.xy;
              float _3232 = _3227.x;
              float _3233 = _3229.x;
              float _3236 = _3227.y;
              float _3239 = _3227.z;
              float _3242 = _3229.y;
              float _3249 = _3229.z;
              float _3256 = _3218.x;
              float _3257 = _3221.x;
              float _3259 = _3218.y;
              float _3261 = _3218.z;
              float _3263 = _3221.y;
              float _3267 = _3221.z;
              float _3325 = (((((((_3256 * _3257) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3232, _3233), _380).xy, _3159)) + ((_3259 * _3257) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3236, _3233), _380).xy, _3159))) + ((_3261 * _3257) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3239, _3233), _380).xy, _3159))) + ((_3256 * _3263) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3232, _3242), _380).xy, _3159))) + ((_3259 * _3263) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3236, _3242), _380).xy, _3159))) + ((_3261 * _3263) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3239, _3242), _380).xy, _3159))) + ((_3256 * _3267) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3232, _3249), _380).xy, _3159));
              float4 _3348 = asfloat(uint4(_36.Load(_3018 * 4 + 0), _36.Load(_3021 * 4 + 0), _36.Load(_3024 * 4 + 0), _36.Load(_3027 * 4 + 0)));
              float _3349 = _3348.w;
              float2 _3351 = min(_3148, 1.0f.xx - _3148);
              _3363 = lerp(1.0f, (any(bool3(_3155.x || _3156.x, _3155.y || _3156.y, _3155.z || _3156.z)) || ((asuint(_3159) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3325 + ((_3259 * _3267) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3236, _3249), _380).xy, _3159))) + ((_3261 * _3267) * _34.SampleCmpLevelZero(_16, float3(_3231 + float2(_3239, _3249), _380).xy, _3159))), _2800 ? min(_3349, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3348.z - _3128.w) * 0.25f, min(_3351.x, _3351.y)))) : _3349);
              break;
            } while (false);
            _3365 = (_3009 >= 0) ? _3363 : 1.0f;
          } else {
            _3365 = 1.0f;
          }
          float3 _3389;
          float3 _3390;
          if (_2803) {
            float3 _3368 = _2757 * _2757;
            float3 _3369 = reflect(_492, _434);
            float _3378 = dot(_3369, _2792);
            _3389 = _3368 / clamp(_3368 + (0.5f * clamp(_29_m6[_797].z * _2781, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3390 = normalize(_2794 + (_2792 * clamp(dot(_2794, (_3369 * _3378) - _2792) / ((_29_m6[_797].z * _29_m6[_797].z) - (_3378 * _3378)), 0.0f, 1.0f)));
          } else {
            _3389 = 1.0f.xxx;
            _3390 = _2782;
          }
          float3 _3391 = _3390 + _490;
          float3 _3395 = _3391 * rsqrt(max(6.103515625e-05f, dot(_3391, _3391)));
          float3 _3499;
          if (_2956) {
            float _3398 = clamp(_2822, 0.0f, 1.0f);
            float _3400 = clamp(dot(_434, _3395), 0.0f, 1.0f);
            float _3402 = clamp(dot(_490, _3395), 0.0f, 1.0f);
            float _3403 = clamp(_533, 0.0f, 1.0f);
            float _3413;
            if (_2786 > 0.0f) {
              _3413 = clamp(_535 + ((_2786 * _2786) / ((_3402 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3413 = _535;
            }
            float _3414 = _3413 * _3413;
            float _3435 = (((_3400 * _3414) - _3400) * _3400) + 1.0f;
            float _3440 = 1.0f - _3402;
            float _3441 = _3440 * _3440;
            float _3443 = (_3440 * _3441) * _3441;
            float _3467 = 1.0f - _524;
            float _3474 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3467 * (1.04997003078460693359375f + (_3467 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3467))))));
            float _3475 = 1.0f - _3474;
            float3 _3478 = _532 + ((1.0f.xxx - _532) * 0.0476190485060214996337890625f);
            float3 _3498 = ((clamp((min(((_532 * (1.0f - _3443)) + _3443.xxx) * (((_3414 / (_3435 * _3435)) * _3389.y) * (0.5f / (((_3398 * sqrt(((((-_3403) * _3414) + _3403) * _3403) + _3414)) + (_3403 * sqrt(((((-_3398) * _3414) + _3398) * _3398) + _3414))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3478 * (((_41.SampleLevel(_13, (float2(_3403, _524) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_3398, _524) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3474) / _3475)) * _3478) / (1.0f.xxx - (_3478 * _3475)))) * _29_m6[_812].z, 0.0f.xxx, 1000.0f.xxx) * _2822) + ((_528 * _3389.z) * _2822)) * (((_29_m6[_791].xyz * _2955) * _3365) * _891);
            _3499 = _3498;
          } else {
            _3499 = 0.0f.xxx;
          }
          _3500 = _751;
          _3501 = _3499;
        } else {
          float _2755;
          do {
            if (_898) {
              _2755 = 1.0f;
              break;
            }
            float _2169 = (0.5f + (0.5f * _29_m6[_797].y)) - abs(_29_m6[_797].x);
            float _2170 = _29_m6[_797].y - _2169;
            float _2177 = abs(max((1.0f - abs(_2169)) - abs(_2170), 0.00048828125f));
            float3 _2181 = normalize(float3(_2169, _2170, (_29_m6[_797].x >= 0.0f) ? _2177 : (-_2177)));
            float3 _2182 = _29_m6[_794].xyz - _464;
            float _2183 = dot(_2182, _2182);
            float3 _2185 = _2182 * rsqrt(_2183);
            int _2188 = int(_29_m6[_812].w);
            float3 _2190 = (_2181 * _29_m6[_797].z) * 0.5f;
            float3 _2191 = _2182 - _2190;
            float3 _2192 = _2182 + _2190;
            bool _2194 = (_895 & 1u) == 0u;
            bool _2197 = _2194 || ((_816 & 2u) != 0u);
            bool _2200 = (!_2194) && (_29_m6[_797].z > 0.0f);
            float _2212;
            if (_2200) {
              _2212 = 1.0f / ((((length(_2191) * length(_2192)) + dot(_2191, _2192)) * 0.5f) + 1.0f);
            } else {
              _2212 = 1.0f;
            }
            float _2234;
            if (_29_m6[_809].w < 0.0f) {
              float _2228 = _2183 * (_29_m6[_794].w * _29_m6[_794].w);
              float _2231 = clamp(1.0f - (_2228 * _2228), 0.0f, 1.0f);
              _2234 = lerp(1.0f / (_2183 + 1.0f), _2212, float(_2200)) * (_2231 * _2231);
            } else {
              float3 _2217 = _2182 * _29_m6[_794].w;
              _2234 = _2212 * pow(1.0f - clamp(dot(_2217, _2217), 0.0f, 1.0f), _29_m6[_809].w);
            }
            float _2240 = clamp((dot(_2185, -_2181) - _29_m6[_797].z) * _29_m6[_797].w, 0.0f, 1.0f);
            float _2244 = _2234 * lerp(1.0f, _2240 * _2240, float(_2194));
            float _2344;
            if ((!_2200) && (_2188 >= 0)) {
              uint _2250 = uint(_2188);
              float2 _2337;
              [branch] if (_2194) {
                float4 _2327 = mul(_45_m1[_2250], _468);
                _2337 = _45_m0[_2250].xy + (clamp(_2327.xy / _2327.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2250].zw);
              }
              else {
                float3 _2264 = mul(float4(-_2182, 0.0f), _45_m1[_2250]).xyz;
                float3 _392 = _2264;
                float3 _391 = _2264;
                float3 _390 = abs(_2264);
                uint _2273 = uint(int(_390.y > _390.x));
                uint _2279 = (_390.z > _390[_2273]) ? 2u : _2273;
                uint _2285 = (_2279 * 2u) + uint(_391[_2279] < 0.0f);
                float _2289 = abs(_392[_2285 / 2u]);
                float _2309 = 0.5f - (0.000244140625f / _45_m0[_2250].w);
                _2337 = _45_m0[_2250].xy + (clamp(float2((float(_2285) + ((((_392[uint(_337[_2285].x)] * _338[_2285].x) / _2289) * _2309) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_392[uint(_337[_2285].y)] * _338[_2285].y) / _2289) * _2309)), 0.0f.xx, 1.0f.xx) * _45_m0[_2250].zw);
              }
              _2344 = _2244 * _43.SampleLevel(_13, _2337, 0.0f).x;
            } else {
              _2344 = _2244;
            }
            float _2754;
            if (_2344 > 0.0f) {
              int _2398;
              if (_2197) {
                _2398 = int(_29_m6[_800].x);
              } else {
                uint _2353 = asuint(_29_m6[_797].w);
                uint _2354 = asuint(_29_m6[_800].x);
                float3 _2355 = _464 - _29_m6[_794].xyz;
                float3 _2356 = abs(_2355);
                float _2357 = _2356.x;
                float _2358 = _2356.y;
                float _2360 = _2356.z;
                int _2393;
                if ((_2357 > _2358) && (_2357 > _2360)) {
                  _2393 = int((_2355.x > 0.0f) ? (_2353 & 1023u) : ((_2353 >> 10u) & 1023u));
                } else {
                  int _2385;
                  if (_2358 > _2360) {
                    _2385 = int((_2355.y > 0.0f) ? ((_2353 >> 20u) & 1023u) : (_2354 & 1023u));
                  } else {
                    _2385 = int((_2355.z > 0.0f) ? ((_2354 >> 10u) & 1023u) : ((_2354 >> 20u) & 1023u));
                  }
                  _2393 = _2385;
                }
                _2398 = (_2393 == 1023) ? (-1) : _2393;
              }
              uint _2403 = uint(_2398);
              uint _2405 = asuint(_33_m11.x) + (_2403 * 96u);
              uint _2407 = (_2405 + 64u) >> 2u;
              uint _2410 = _2407 + 1u;
              uint _2413 = _2407 + 2u;
              uint _2416 = _2407 + 3u;
              float4 _2420 = asfloat(uint4(_36.Load(_2407 * 4 + 0), _36.Load(_2410 * 4 + 0), _36.Load(_2413 * 4 + 0), _36.Load(_2416 * 4 + 0)));
              float _2752;
              do {
                uint _2436 = ((asuint(_33_m11.y) + (_2403 * 16u)) >> 2u) + 1u;
                if (_36.Load(_2436 * 4 + 0) > 0u) {
                  float4 _389 = _745;
                  float _2451;
                  do {
                    if (_36.Load(_2436 * 4 + 0) == 0u) {
                      _2451 = 1.0f;
                      break;
                    }
                    _2451 = _389[_36.Load(_2436 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2752 = _2451;
                  break;
                }
                uint _2452 = _2405 >> 2u;
                uint _2467 = (_2405 + 16u) >> 2u;
                uint _2482 = (_2405 + 32u) >> 2u;
                uint _2497 = (_2405 + 48u) >> 2u;
                float4 _2517 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_2452 * 4 + 0), _36.Load((_2452 + 1u) * 4 + 0), _36.Load((_2452 + 2u) * 4 + 0), _36.Load((_2452 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2467 * 4 + 0), _36.Load((_2467 + 1u) * 4 + 0), _36.Load((_2467 + 2u) * 4 + 0), _36.Load((_2467 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2482 * 4 + 0), _36.Load((_2482 + 1u) * 4 + 0), _36.Load((_2482 + 2u) * 4 + 0), _36.Load((_2482 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2497 * 4 + 0), _36.Load((_2497 + 1u) * 4 + 0), _36.Load((_2497 + 2u) * 4 + 0), _36.Load((_2497 + 3u) * 4 + 0))))), float4((_464 - ((-_2185) * _2420.x)) + (_434 * (_2420.y * 5.0f)), 1.0f));
                float3 _2521 = _2517.xyz / _2517.w.xxx;
                uint _2523 = (_2405 + 80u) >> 2u;
                float4 _2536 = asfloat(uint4(_36.Load(_2523 * 4 + 0), _36.Load((_2523 + 1u) * 4 + 0), _36.Load((_2523 + 2u) * 4 + 0), _36.Load((_2523 + 3u) * 4 + 0)));
                float2 _2537 = _2521.xy;
                float2 _2539 = _2536.xy;
                float3 _2543 = _2521.xyz;
                bool3 _2544 = bool3(_2543.x <= 0.0f.xxx.x, _2543.y <= 0.0f.xxx.y, _2543.z <= 0.0f.xxx.z);
                bool3 _2545 = bool3(_2543.x >= 1.0f.xxx.x, _2543.y >= 1.0f.xxx.y, _2543.z >= 1.0f.xxx.z);
                float _2548 = _2521.z;
                float2 _2559 = ((_2537 * (_2536.zw - _2539)) + _2539).xy * _33_m10.zw;
                float2 _2561 = floor(_2559 + 0.5f.xx);
                float2 _2562 = _2559 - _2561;
                float _2563 = _2562.x;
                float _2564 = _2563 + 0.5f;
                float _2565 = _2564 * _2564;
                float _2568 = 1.0f - _2563;
                float _2569 = min(_2563, 0.0f);
                float _2572 = _2563 + 1.0f;
                float _2573 = max(_2563, 0.0f);
                float _2584 = _2562.y;
                float _2585 = _2584 + 0.5f;
                float _2586 = _2585 * _2585;
                float _2589 = 1.0f - _2584;
                float _2590 = min(_2584, 0.0f);
                float _2593 = _2584 + 1.0f;
                float _2594 = max(_2584, 0.0f);
                float3 _2606 = float3(0.1599999964237213134765625f * _2568, 0.1599999964237213134765625f * ((_2572 - (_2573 * _2573)) + 1.0f), _2565 * 0.07999999821186065673828125f);
                float3 _2607 = float3(0.1599999964237213134765625f * ((_2565 * 0.5f) - _2563), 0.1599999964237213134765625f * ((_2568 - (_2569 * _2569)) + 1.0f), 0.1599999964237213134765625f * _2572) + _2606;
                float3 _2609 = float3(0.1599999964237213134765625f * _2589, 0.1599999964237213134765625f * ((_2593 - (_2594 * _2594)) + 1.0f), _2586 * 0.07999999821186065673828125f);
                float3 _2610 = float3(0.1599999964237213134765625f * ((_2586 * 0.5f) - _2584), 0.1599999964237213134765625f * ((_2589 - (_2590 * _2590)) + 1.0f), 0.1599999964237213134765625f * _2593) + _2609;
                float3 _2616 = ((_2606 / _2607) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
                float3 _2618 = ((_2609 / _2610) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
                float2 _2620 = _2561 * _33_m10.xy;
                float _2621 = _2616.x;
                float _2622 = _2618.x;
                float _2625 = _2616.y;
                float _2628 = _2616.z;
                float _2631 = _2618.y;
                float _2638 = _2618.z;
                float _2645 = _2607.x;
                float _2646 = _2610.x;
                float _2648 = _2607.y;
                float _2650 = _2607.z;
                float _2652 = _2610.y;
                float _2656 = _2610.z;
                float _2714 = (((((((_2645 * _2646) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2621, _2622), _380).xy, _2548)) + ((_2648 * _2646) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2625, _2622), _380).xy, _2548))) + ((_2650 * _2646) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2628, _2622), _380).xy, _2548))) + ((_2645 * _2652) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2621, _2631), _380).xy, _2548))) + ((_2648 * _2652) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2625, _2631), _380).xy, _2548))) + ((_2650 * _2652) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2628, _2631), _380).xy, _2548))) + ((_2645 * _2656) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2621, _2638), _380).xy, _2548));
                float4 _2737 = asfloat(uint4(_36.Load(_2407 * 4 + 0), _36.Load(_2410 * 4 + 0), _36.Load(_2413 * 4 + 0), _36.Load(_2416 * 4 + 0)));
                float _2738 = _2737.w;
                float2 _2740 = min(_2537, 1.0f.xx - _2537);
                _2752 = lerp(1.0f, (any(bool3(_2544.x || _2545.x, _2544.y || _2545.y, _2544.z || _2545.z)) || ((asuint(_2548) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2714 + ((_2648 * _2656) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2625, _2638), _380).xy, _2548))) + ((_2650 * _2656) * _34.SampleCmpLevelZero(_16, float3(_2620 + float2(_2628, _2638), _380).xy, _2548))), _2197 ? min(_2738, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2737.z - _2517.w) * 0.25f, min(_2740.x, _2740.y)))) : _2738);
                break;
              } while (false);
              _2754 = (_2398 >= 0) ? _2752 : 1.0f;
            } else {
              _2754 = 1.0f;
            }
            _2755 = _2754;
            break;
          } while (false);
          _3500 = _751 * _2755;
          _3501 = 0.0f.xxx;
        }
        _3502 = _3500;
        _3503 = _3501;
        break;
      } while (false);
      _776 = _3502;
      _779 = _778 + _3503;
    }
    _748 = _747 + _778;
  }
  float3 _3507 = _716.xyz + (_747 * _750);
  float3 _3509 = _411.xxx;
  float3 _3544;
  float3 _3545;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x3B63784E:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3520 = min(_21.SampleBias(_12, _4, _9_m16).x, _411);
    _3544 = clamp((pow(abs(_534 + _3520), exp2(((-16.0f) * _524) - 1.0f)) - 1.0f) + _3520, 0.0f, 1.0f).xxx;
    _3545 = max(_3520.xxx, ((((((_528 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3520) + ((_528 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3520) + ((_528 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3520);
  }
  else {
    _3544 = _3509;
    _3545 = _3509;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3507 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3544 : 1.0f.xxx;
  // RenoDX code end
  float3 _3562 = (_464 + (_434 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_439 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _3572 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3581 = _3562 - (_9_m108.xyz + (_3572 * (-_9_m110.w)));
  float _3596 = max(min(max((max(abs(_3581.x), abs(_3581.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3581.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _3898;
  float4 _3899;
  float4 _3900;
  float _3901;
  float _3902;
  if ((_9_m108.w != 0.0f) && (_3596 < 1.0f)) {
    float3 _3609 = _3562 - (_9_m108.xyz + (_3572 * (-_9_m110.y)));
    float _3623 = max(clamp((max(abs(_3609.x), abs(_3609.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3609.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3699;
    float4 _3700;
    float4 _3701;
    float4 _3702;
    if (_3623 < 1.0f) {
      float3 _3632 = ((_3562 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3634 = _3632 - floor(_3632);
      float4 _3638 = _55.SampleLevel(_14, _3634, 0.0f);
      float _3639 = 1.0f - _3623;
      float _3643 = _9_m109.y * 0.5f;
      float _3648 = _3634.x;
      float _3649 = clamp(_3634.y, _3643, 1.0f - _3643) * 0.3333333432674407958984375f;
      float _3650 = _3634.z;
      float4 _3653 = _56.SampleLevel(_13, float3(_3648, _3649, _3650), 0.0f);
      float _3669 = _3638.x;
      float _3679 = _3638.y;
      float _3689 = _3638.z;
      _3699 = _3596 + (_3653.w * _3639);
      _3700 = float4(((_56.SampleLevel(_13, float3(_3648, _3649 + 0.666666686534881591796875f, _3650), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3689, _3689) * _3639;
      _3701 = float4(((_56.SampleLevel(_13, float3(_3648, _3649 + 0.3333333432674407958984375f, _3650), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3679, _3679) * _3639;
      _3702 = float4(((_3653.xyz * 4.0f) - 2.0f.xxx) * _3669, _3669) * _3639;
    } else {
      _3699 = _3596;
      _3700 = 0.0f.xxxx;
      _3701 = 0.0f.xxxx;
      _3702 = 0.0f.xxxx;
    }
    float3 _3708 = _3562 - (_9_m108.xyz + (_3572 * (-_9_m110.z)));
    float _3722 = max(clamp((max(abs(_3708.x), abs(_3708.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3708.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _3802;
    float4 _3803;
    float4 _3804;
    float4 _3805;
    if (_3722 < 1.0f) {
      float3 _3731 = ((_3562 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3733 = _3731 - floor(_3731);
      float4 _3737 = _57.SampleLevel(_14, _3733, 0.0f);
      float _3739 = _3623 * (1.0f - _3722);
      float _3743 = _9_m109.y * 0.5f;
      float _3748 = _3733.x;
      float _3749 = clamp(_3733.y, _3743, 1.0f - _3743) * 0.3333333432674407958984375f;
      float _3750 = _3733.z;
      float4 _3753 = _58.SampleLevel(_13, float3(_3748, _3749, _3750), 0.0f);
      float _3769 = _3737.x;
      float _3780 = _3737.y;
      float _3791 = _3737.z;
      _3802 = _3699 + (_3753.w * _3739);
      _3803 = _3700 + (float4(((_58.SampleLevel(_13, float3(_3748, _3749 + 0.666666686534881591796875f, _3750), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3791, _3791) * _3739);
      _3804 = _3701 + (float4(((_58.SampleLevel(_13, float3(_3748, _3749 + 0.3333333432674407958984375f, _3750), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3780, _3780) * _3739);
      _3805 = _3702 + (float4(((_3753.xyz * 4.0f) - 2.0f.xxx) * _3769, _3769) * _3739);
    } else {
      _3802 = _3699;
      _3803 = _3700;
      _3804 = _3701;
      _3805 = _3702;
    }
    float4 _3888;
    float4 _3889;
    float4 _3890;
    float _3891;
    if (_3722 > 0.0f) {
      float3 _3814 = ((_3562 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3817 = _9_m109.xyz * 0.5f;
      float3 _3819 = clamp(_3814 - floor(_3814), _3817, 1.0f.xxx - _3817);
      float4 _3823 = _59.SampleLevel(_14, _3819, 0.0f);
      float _3825 = _3722 * (1.0f - _3596);
      float _3829 = _9_m109.y * 0.5f;
      float _3834 = _3819.x;
      float _3835 = clamp(_3819.y, _3829, 1.0f - _3829) * 0.3333333432674407958984375f;
      float _3836 = _3819.z;
      float4 _3839 = _60.SampleLevel(_13, float3(_3834, _3835, _3836), 0.0f);
      float _3855 = _3823.x;
      float _3866 = _3823.y;
      float _3877 = _3823.z;
      _3888 = _3803 + (float4(((_60.SampleLevel(_13, float3(_3834, _3835 + 0.666666686534881591796875f, _3836), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3877, _3877) * _3825);
      _3889 = _3804 + (float4(((_60.SampleLevel(_13, float3(_3834, _3835 + 0.3333333432674407958984375f, _3836), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3866, _3866) * _3825);
      _3890 = _3805 + (float4(((_3839.xyz * 4.0f) - 2.0f.xxx) * _3855, _3855) * _3825);
      _3891 = _3802 + (_3839.w * _3825);
    } else {
      _3888 = _3803;
      _3889 = _3804;
      _3890 = _3805;
      _3891 = _3802;
    }
    float _3894 = clamp((_3891 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _3898 = _3888;
    _3899 = _3889;
    _3900 = _3890;
    _3901 = _3894 - _3596;
    _3902 = (_3894 + _3596) * 0.5f;
  } else {
    _3898 = 0.0f.xxxx;
    _3899 = 0.0f.xxxx;
    _3900 = 0.0f.xxxx;
    _3901 = 0.0f;
    _3902 = 1.0f;
  }
  float4 _3922 = _3900 + float4(_9_m111.x * _3902, (_9_m111.y * _3902) + ((_9_m111.w * _3901) * 0.5f), _9_m111.z * _3902, (_9_m111.w * _3902) + ((_9_m111.y * _3901) * 0.375f));
  float4 _3942 = _3899 + float4(_9_m112.x * _3902, (_9_m112.y * _3902) + ((_9_m112.w * _3901) * 0.5f), _9_m112.z * _3902, (_9_m112.w * _3902) + ((_9_m112.y * _3901) * 0.375f));
  float4 _3962 = _3898 + float4(_9_m113.x * _3902, (_9_m113.y * _3902) + ((_9_m113.w * _3901) * 0.5f), _9_m113.z * _3902, (_9_m113.w * _3902) + ((_9_m113.y * _3901) * 0.375f));
  float4 _4120;
  float4 _4121;
  float4 _4122;
  [branch] if (all(bool2(_452.x >= 0.0f.xx.x, _452.y >= 0.0f.xx.y))) {
    float4 _3970 = _54.SampleLevel(_13, _452, 0.0f);
    float4 _3971 = abs(_3970);
    float4 _4117;
    float4 _4118;
    float4 _4119;
    [branch] if (any(bool4(_3971.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _3971.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _3971.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _3971.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _3977 = length(_3970.yzw);
      uint _3979;
      float _3982;
      _3979 = 0u;
      _3982 = 1.0f;
      for (float _3984 = _3977; _3984 > 4.599999904632568359375f;) {
        _3979++;
        _3982 *= 0.5f;
        _3984 *= 0.5f;
        continue;
      }
      float4 _3988 = _3970 * _3982;
      float4 _3993 = float4(0.0f, _3988.yzw);
      float2 _4015 = (_53.SampleLevel(_13, float2(((((length(_3993) * _52_m3.x) + _52_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _52_m2.xy) + _52_m2.zw;
      float4 _4029;
      _4029 = float4(_4015.x * 3.5449078083038330078125f, _3993.yzw * _4015.y) * exp(_3988.x * 0.282094776630401611328125f);
      for (uint _4032 = 0u; _4032 < _3979;) {
        _4029 = mul(float4x4(_4029, float4(_4029.yx, 0.0f, 0.0f), float4(_4029.z, 0.0f, _4029.x, 0.0f), float4(_4029.w, 0.0f, 0.0f, _4029.x)) * 0.282094776630401611328125f, _4029);
        _4032++;
        continue;
      }
      float4x4 _4053 = float4x4(_4029, float4(_4029.yx, 0.0f, 0.0f), float4(_4029.z, 0.0f, _4029.x, 0.0f), float4(_4029.w, 0.0f, 0.0f, _4029.x)) * 0.282094776630401611328125f;
      float4 _4063 = mul(_4053, float4(_3922.w * 1.1283791065216064453125f, _3922.y * (-0.977204978466033935546875f), _3922.z * 0.977204978466033935546875f, _3922.x * (-0.977204978466033935546875f)));
      float4 _4083 = mul(_4053, float4(_3942.w * 1.1283791065216064453125f, _3942.y * (-0.977204978466033935546875f), _3942.z * 0.977204978466033935546875f, _3942.x * (-0.977204978466033935546875f)));
      float4 _4103 = mul(_4053, float4(_3962.w * 1.1283791065216064453125f, _3962.y * (-0.977204978466033935546875f), _3962.z * 0.977204978466033935546875f, _3962.x * (-0.977204978466033935546875f)));
      _4117 = float4(_4063.x * 0.886226952075958251953125f, _4063.w * (-1.02332675457000732421875f), _4063.y * (-1.02332675457000732421875f), _4063.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4118 = float4(_4083.x * 0.886226952075958251953125f, _4083.w * (-1.02332675457000732421875f), _4083.y * (-1.02332675457000732421875f), _4083.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4119 = float4(_4103.x * 0.886226952075958251953125f, _4103.w * (-1.02332675457000732421875f), _4103.y * (-1.02332675457000732421875f), _4103.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4117 = _3922;
      _4118 = _3942;
      _4119 = _3962;
    }
    _4120 = _4117;
    _4121 = _4118;
    _4122 = _4119;
  }
  else {
    _4120 = _3922;
    _4121 = _3942;
    _4122 = _3962;
  }
  float _4127 = max(0.0f, dot(_4120.xyz, _434) + _4120.w);
  float _4132 = max(0.0f, dot(_4121.xyz, _434) + _4121.w);
  float _4137 = max(0.0f, dot(_4122.xyz, _434) + _4122.w);
  float3 _4147 = reflect(_492, _434);
  float _4155 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_524, 0.001000000047497451305389404296875f))));
  float2 _4159 = floor(_439 * _27_m0.w);
  float _4176 = floor(_471 - _27_m2.y);
  float _4180 = clamp(_4176, 0.0f, _27_m1.x - 1.0f);
  uint _4190 = (_4176 <= _4180) ? (_24.Load(uint(_9_m21.z + int(_4159.x + (_4159.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_4180)) * 4 + 0)) : 0u;
  float _4193 = dot(float4(_4127, _4132, _4137, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4195;
  float _4198;
  uint _4200;
  _4195 = 0.0f.xxx;
  _4198 = 1.0f;
  _4200 = _4190;
  uint _4201;
  float3 _4196;
  float _4199;
  bool _4203;
  [loop] for (;;) {
    bool _4202 = _4200 != 0u;
    _4203 = _4198 > 0.00999999977648258209228515625f;
    if (_4202 && _4203) {
      uint _4207 = firstbitlow(_4200);
      _4201 = _4200 ^ (1u << (_4207 & 31u));
      float3 _4227 = float3(dot(_27_m4[_4207]._m2, _468), dot(_27_m4[_4207]._m3, _468), dot(_27_m4[_4207]._m4, _468));
      float3 _4228 = abs(_4227);
      if (all(bool3(_4228.x <= _27_m4[_4207]._m1.xyz.x, _4228.y <= _27_m4[_4207]._m1.xyz.y, _4228.z <= _27_m4[_4207]._m1.xyz.z))) {
        float3 _4237 = _27_m4[_4207]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4239 = _4228 * 0.100000001490116119384765625f;
        float3 _4240 = _4239 * _4239;
        float3 _4243 = (_27_m4[_4207]._m1.xyz - _4228) * _27_m4[_4207]._m5.xyz;
        float3 _4291;
        [branch] if (_27_m4[_4207]._m6.x == 1.0f) {
          float3 _4276 = float3(dot(_27_m4[_4207]._m2.xyz, _4147), dot(_27_m4[_4207]._m3.xyz, _4147), dot(_27_m4[_4207]._m4.xyz, _4147));
          float3 _4278 = (_27_m4[_4207]._m1.xyz - _4227) / _4276;
          float3 _4281 = ((-_27_m4[_4207]._m1.xyz) - _4227) / _4276;
          bool3 _4282 = bool3(_4276.x > 0.0f.xxx.x, _4276.y > 0.0f.xxx.y, _4276.z > 0.0f.xxx.z);
          float3 _4283 = float3(_4282.x ? _4278.x : _4281.x, _4282.y ? _4278.y : _4281.y, _4282.z ? _4278.z : _4281.z);
          _4291 = _4227 + (_4276 * min(min(_4283.x, _4283.y), _4283.z));
        }
        else {
          _4291 = _4147;
        }
        float3 _4292 = normalize(_4291);
        float3 _4295 = float3(int3(sign(_4292)));
        float3 _4298 = _4292 / dot(_4292, _4295).xxx;
        float3 _4312;
        if (_4298.z < 0.0f) {
          float3 _4303 = abs(_4298);
          float2 _4310 = _4295.xy * float2(1.0f - _4303.y, 1.0f - _4303.x);
          _4312 = float3(_4310.x, _4310.y, _4298.z);
        } else {
          _4312 = _4298;
        }
        float _4337 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_4207]._m0, float4(_434, 1.0f))));
        float _4350 = clamp((min(_4243.x, min(_4243.y, _4243.z)) * _27_m4[_4207]._m6.y) + ((((((_4237 * _4237).x - ((_4240.x + _4240.y) + _4240.z)) * _27_m4[_4207]._m5.x) * _27_m4[_4207]._m5.x) * (1.0f - _27_m4[_4207]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_4207]._m6.w;
        _4196 = _4195 + ((((_22.SampleLevel(_15, float3((((_4312.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_4207]._m1.w), _4155).xyz * _27_m4[_4207]._m5.w) * ((((((clamp(abs(_4193 / _4337), 0.0f, 1.0f) * 2.0f) + _4193) / (2.0f + _4337)) - 1.0f) * _9_m23.w) + 1.0f)) * _4350) * _4198);
        _4199 = _4198 * (1.0f - _4350);
      } else {
        _4196 = _4195;
        _4199 = _4198;
      }
      _4195 = _4196;
      _4198 = _4199;
      _4200 = _4201;
      continue;
    } else {
      break;
    }
  }
  float3 _4419;
  if (_4203) {
    float3 _4358 = normalize(_4147);
    float3 _4361 = float3(int3(sign(_4358)));
    float3 _4364 = _4358 / dot(_4358, _4361).xxx;
    float3 _4378;
    if (_4364.z < 0.0f) {
      float3 _4369 = abs(_4364);
      float2 _4376 = _4361.xy * float2(1.0f - _4369.y, 1.0f - _4369.x);
      _4378 = float3(_4376.x, _4376.y, _4364.z);
    } else {
      _4378 = _4364;
    }
    float _4405 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, float4(_434, 1.0f))));
    _4419 = _4195 + ((_22.SampleLevel(_15, float3((((_4378.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _4155).xyz * ((((((clamp(abs(_4193 / _4405), 0.0f, 1.0f) * 2.0f) + _4193) / (2.0f + _4405)) - 1.0f) * _9_m23.w) + 1.0f)) * _4198);
  } else {
    _4419 = _4195;
  }
  float3 _4425 = (_4419 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _4425 *= 0.25f + (0.75f * saturate(_4193));
  }
  // RenoDX code end
  float3 _4446;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4440 = _20.SampleBias(_13, _4, _9_m16);
    float _4441 = _4440.x;
    _4446 = (_19.SampleBias(_13, _4, _9_m16).xyz * _4441) + (_4425 * (1.0f - _4441));
  }
  else {
    _4446 = _4425;
  }
  float3 _4449 = (((float3(_4127, _4132, _4137) * _528) * _9_m22.x) * _3545) + ((_4446 * (_557 + ((_532 * ((1.0f - _558) / _558)) * _557))) * _3544);
  float4 _4451 = float4(_3507.x, _3507.y, _3507.z, _716.w) + float4(_4449.x, _4449.y, _4449.z, 0.0f.xxxx.w);
  float _4469 = _464.y * _9_m46.w;
  float _4474 = max(0.00999999977648258209228515625f, _4469 + _9_m47.w);
  float3 _4488 = exp(_9_m45.xyz * ((-max(0.0f, (_491 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4474)) / _4474) * exp(_4469 + _9_m48.w))));
  float _4491 = dot(_492, _9_m44.xyz);
  float _4497 = _9_m45.w * _9_m45.w;
  float _4501 = (1.0f + _4497) - ((2.0f * _9_m45.w) * _4491);
  float3 _4829;
  float _4830;
  if (_9_m55.z > 0.0f) {
    uint3 _4655 = (uint3(int3(_400, _401, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4656 = _4655.y;
    uint _4657 = _4655.z;
    uint _4660 = _4655.x + (_4656 * _4657);
    uint _4662 = _4656 + (_4657 * _4660);
    uint _4664 = _4657 + (_4660 * _4662);
    uint _4666 = _4660 + (_4662 * _4664);
    float _4690 = dot(_492, -_7_m0[2].xyz);
    float3 _4700 = _464 - _7_m11.xyz;
    float _4702 = (_9_m55.w * ((_4690 > 5.9604644775390625e-08f) ? (1.0f / _4690) : 0.0f)) * (1.0f / _491);
    float _4703 = _4700.y;
    float _4704 = _4702 * _4703;
    float _4706 = _7_m11.y + _4704;
    float _4707 = _4703 - _4704;
    float _4709 = (1.0f - _4702) * _491;
    float _4723 = max(-127.0f, _9_m49.z * _4707);
    float _4747 = max(-127.0f, _9_m52.x * _4707);
    float _4758 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4706 - _9_m49.x)))) * ((abs(_4723) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4723)) / _4723) : (0.693147182464599609375f - (0.2402265071868896484375f * _4723)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4706 - _9_m52.z)))) * ((abs(_4747) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4747)) / _4747) : (0.693147182464599609375f - (0.2402265071868896484375f * _4747))));
    float _4780 = clamp((_491 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4783 = clamp((max(clamp(exp2(-(_4758 * _4709)), 0.0f, 1.0f), _9_m51.w) + clamp((_491 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4780, 0.0f, 1.0f);
    float4 _4823 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_13, float3((_439 + ((((float3(uint3(_4666, _4662 + (_4664 * _4666), _383) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_471 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_471 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _4825 = _4823.w;
    _4829 = _4823.xyz + (((_9_m51.xyz * (1.0f - _4783)) + (((_9_m54.xyz * pow(clamp(dot(_490, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4758 * max(_4709 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4780))) * _4825);
    _4830 = _4825 * _4783;
  } else {
    float3 _4531 = _464 - _7_m11.xyz;
    float _4533 = _4531.y;
    float _4547 = max(-127.0f, _9_m49.z * _4533);
    float _4571 = max(-127.0f, _9_m52.x * _4533);
    float _4582 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4547) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4547)) / _4547) : (0.693147182464599609375f - (0.2402265071868896484375f * _4547)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4571) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4571)) / _4571) : (0.693147182464599609375f - (0.2402265071868896484375f * _4571))));
    float _4604 = clamp((_491 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4607 = clamp((max(clamp(exp2(-(_4582 * _491)), 0.0f, 1.0f), _9_m51.w) + clamp((_491 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4604, 0.0f, 1.0f);
    _4829 = (_9_m51.xyz * (1.0f - _4607)) + (((_9_m54.xyz * pow(clamp(dot(_490, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4582 * max(_491 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4604));
    _4830 = _4607;
  }
  float3 _4833 = _4488 * _4830;
  float3 _4835 = (clamp(_4451.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _4833) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4491 * _4491)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4497) / max((12.56637096405029296875f * _4501) * sqrt(_4501), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4488)) * _4830) + _4829);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _4835 = (_4835 * 0.65f) + (clamp(_4451.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _4837 = float4(_4835.x, _4835.y, _4835.z, _4451.w);
  _4837.w = dot(_4833, 0.3333333432674407958984375f.xxx);
  _5 = _4837;
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

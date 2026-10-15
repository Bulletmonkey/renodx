#include "./renodx_injection.hlsli"

// Ported from the native 0x1B28B6CC Vulkan dump.
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

static float _350;
static uint _352;

static const int2 _326[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _327[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(31, 3)]] cbuffer _6_7 : register(b31, space3) {
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

[[vk::binding(40, 3)]] ByteAddressBuffer _24 : register(t40, space3);
[[vk::binding(37, 3)]] cbuffer _25_27 : register(b37, space3) {
  float4 _27_m0 : packoffset(c0);
  float4 _27_m1 : packoffset(c1);
  float4 _27_m2 : packoffset(c2);
  float4 _27_m3 : packoffset(c3);
  _26 _27_m4[32] : packoffset(c4);
};

[[vk::binding(32, 3)]] cbuffer _28_29 : register(b32, space3) {
  float4 _29_m0 : packoffset(c0);
  float4 _29_m1 : packoffset(c1);
  float4 _29_m2 : packoffset(c2);
  float4 _29_m3 : packoffset(c3);
  float4 _29_m4 : packoffset(c4);
  uint4 _29_m5 : packoffset(c5);
  float4 _29_m6[2048] : packoffset(c6);
};

[[vk::binding(33, 3)]] cbuffer _30_31 : register(b33, space3) {
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

[[vk::binding(35, 3)]] cbuffer _32_33 : register(b35, space3) {
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

[[vk::binding(39, 3)]] ByteAddressBuffer _36 : register(t39, space3);
[[vk::binding(38, 3)]] cbuffer _44_45 : register(b38, space3) {
  float4 _45_m0[32] : packoffset(c0);
  column_major float4x4 _45_m1[32] : packoffset(c32);
};

[[vk::binding(34, 3)]] cbuffer _51_52 : register(b34, space3) {
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
[[vk::binding(28, 3)]] Texture2D<float4> _18 : register(t28, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _19 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _20 : register(t8, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _21 : register(t22, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _22 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _34 : register(t10, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _37 : register(t6, space3);
[[vk::binding(23, 3)]] Texture2D<float4> _38 : register(t23, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _39 : register(t29, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _41 : register(t11, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _42 : register(t27, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _43 : register(t12, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _48 : register(t14, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _49 : register(t13, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _50 : register(t21, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _53 : register(t30, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _54 : register(t5, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _55 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _56 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _57 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _58 : register(t16, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _59 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _60 : register(t15, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _61 : register(t26, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _62 : register(t25, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _63 : register(t24, space3);

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
  uint2 _366 = uint2(gl_FragCoord.xy);
  int _369 = int(_366.x);
  int _370 = int(_366.y);
  int2 _372 = int3(_369, _370, 0).xy;
  float4 _374 = _61.Load(int3(_372, 0));
  float4 _376 = _62.Load(int3(_372, 0));
  float4 _378 = _63.Load(int3(_372, 0));
  uint _382 = uint(_374.x * 1023.0f);
  float _386 = float((_382 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _394 = float(((_382 & 7u) << 2u) | (uint(_374.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _398 = uint(round(_374.y * 1023.0f));
  float _403 = float((_398 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _408 = uint(_374.z * 1023.0f);
  float2 _423 = (_376.xy * 2.0f) - 1.0f.xx;
  float _427 = 1.0f - dot(1.0f.xx, abs(_423));
  float3 _429 = float3(_423.x, _427, _423.y);
  float3 _441;
  if (_427 < 0.0f) {
    float2 _436 = _429.xz;
    bool2 _437 = bool2(_436.x >= 0.0f.xx.x, _436.y >= 0.0f.xx.y);
    float2 _439 = (1.0f.xx - abs(_429.zx)) * float2(_437.x ? 1.0f.xx.x : (-1.0f).xx.x, _437.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _441 = float3(_439.x, _429.y, _439.y);
  } else {
    _441 = _429;
  }
  float3 _442 = normalize(_441);
  float _443 = _376.z;
  float3 _444 = _378.xyz;
  float _445 = _378.w;
  float _447 = (float(_398 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _450 = float2(_366);
  float2 _455 = (_450 + 0.5f.xx) * _9_m0.zw;
  float2 _463 = gl_FragCoord.xy * _9_m0.zw;
  float2 _465 = (_463 * 2.0f) - 1.0f.xx;
  float4 _468 = float4(_465, _18.SampleLevel(_12, _455, 0.0f).x, 1.0f);
  _468.y = -_465.y;
  float4 _471 = mul(_7_m6, _468);
  float3 _475 = _471.xyz / _471.w.xxx;
  float4 _479 = float4(_475, 1.0f);
  float _482 = abs(mul(_7_m0, _479).z);
  float3 _497;
  do {
    if (_9_m4.w == 0.0f) {
      _497 = _7_m11.xyz - _475;
      break;
    } else {
      _497 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _498 = dot(_497, _497);
  float _500 = rsqrt(max(_498, 9.9999999392252902907785028219223e-09f));
  float3 _501 = _497 * _500;
  float _502 = _498 * _500;
  float3 _503 = -_501;
  float3 _505 = (0.07999999821186065673828125f * _447).xxx;
  float _506 = dot(_442, _501);
  float _507 = max(0.0f, _506);
  float4 _509 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _443) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _510 = _509.x;
  float2 _520 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_510 * _510, exp2((-9.27999973297119140625f) * _507)) * _510) + _509.y)) + _509.zw;
  float4 _729;
  do {
    [branch] if (_31_m4 == 0) {
      _729 = 0.0f.xxxx;
      break;
    }
    float4 _539 = _42.SampleLevel(_13, _463, 0.0f);
    float _540 = _539.x;
    float4 _544 = _37.Load(int3(_372, 0));
    float _545 = _544.x;
    float4 _728;
    if (_545 > 0.001000000047497451305389404296875f) {
      float3 _555 = reflect(_503, _442);
      float3 _556 = -_29_m0.xyz;
      float _561 = dot(_556, _555);
      float3 _563 = _555 - (_556 * _561);
      bool3 _565 = (_561 < _29_m4.z).xxx;
      float3 _573 = normalize((_556 * _29_m4.z) + ((_563 * rsqrt(max(6.103515625e-05f, dot(_563, _563)))) * _29_m4.y));
      float3 _574 = float3(_565.x ? _573.x : _555.x, _565.y ? _573.y : _555.y, _565.z ? _573.z : _555.z);
      float3 _578 = _574 + _501;
      float3 _582 = _578 * rsqrt(max(6.103515625e-05f, dot(_578, _578)));
      float _583 = dot(_442, _574);
      float _584 = clamp(dot(_574, _442), 0.0f, 1.0f);
      float _586 = clamp(dot(_442, _582), 0.0f, 1.0f);
      float _589 = dot(_501, _574);
      float _591 = clamp(_506, 0.0f, 1.0f);
      float _592 = _443 * _443;
      float _593 = _592 * _592;
      float _614 = (((_586 * _593) - _586) * _586) + 1.0f;
      float _617 = 1.0f - clamp(dot(_501, _582), 0.0f, 1.0f);
      float _618 = _617 * _617;
      float _620 = (_617 * _618) * _618;
      float _644 = 1.0f - _443;
      float _651 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_644 * (1.04997003078460693359375f + (_644 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _644))))));
      float _652 = 1.0f - _651;
      float3 _655 = _505 + ((1.0f.xxx - _505) * 0.0476190485060214996337890625f);
      float _686 = clamp(-_589, 0.0f, 1.0f);
      float _690 = (((_686 * 0.36000001430511474609375f) - _686) * _686) + 1.0f;
      float _691 = _690 * _690;
      float3 _703 = ((min(((_505 * (1.0f - _620)) + _620.xxx) * ((_593 / (_614 * _614)) * (0.5f / (((_584 * sqrt(((((-_591) * _593) + _591) * _591) + _593)) + (_591 * sqrt(((((-_584) * _593) + _584) * _584) + _593))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_655 * (((_41.SampleLevel(_13, (float2(_591, _443) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_584, _443) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _651) / _652)) * _655) / (1.0f.xxx - (_655 * _652)))) * lerp(clamp(_506 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_589, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_589 + 1.0f, 0.0f, 1.0f))) * _403;
      float3 _713 = _29_m1.xyz * (((((_444 * _403) * 1.0f) * (float((_408 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_703 * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _584)) + (((((_444 / max(0.00999999977648258209228515625f, max(max(_378.x, _378.y), _378.z)).xxx) * _386) * (clamp(0.5f - _583, 0.0f, 1.0f) * ((0.36000001430511474609375f != _691) ? (0.36000001430511474609375f / _691) : 1.0f))) + (_444 * (clamp(_583 + _394, 0.0f, 1.0f) - clamp(_584, 0.0f, 1.0f)))) * _403));
      float3 _726 = lerp(_713, _713 * _39.SampleBias(_13, float2(_545, 0.5f), _9_m16).xyz, (1.0f - _545).xxx) * lerp(_540, max(_540, _403), _394);
      _728 = float4(_726.x, _726.y, _726.z, 0.0f.xxxx.w);
    } else {
      _728 = 0.0f.xxxx;
    }
    _729 = _728;
    break;
  } while (false);
  float2 _731 = floor(_450 * 0.03125f);
  int _739 = int((_731.x + (_731.y * _31_m9)) * 8.0f);
  float _746 = floor(_482 - (_9_m3.y * _31_m15));
  float _750 = clamp(_746, 0.0f, _31_m11 - 1.0f);
  int _752 = int(_750 * 8.0f);
  float4 _758 = _38.SampleBias(_13, _455, _9_m16);
  float3 _760;
  float _763;
  _760 = 0.0f.xxx;
  _763 = 1.0f;
  float3 _761;
  float _764;
  [loop] for (int _765 = 0; _765 <= 7; _760 = _761, _763 = _764, _765++) {
    uint _786 = (_746 <= _750) ? (_24.Load(uint((_31_m2 + _739) + _765) * 4 + 0) & _24.Load(uint((_31_m3 + _752) + _765) * 4 + 0)) : 0u;
    uint _787 = uint(_765);
    float3 _791;
    _764 = _763;
    _791 = 0.0f.xxx;
    uint _794;
    float _789;
    float3 _792;
    [loop] for (uint _793 = _786; _793 != 0u; _764 = _789, _791 = _792, _793 = _794) {
      uint _798 = firstbitlow(_793);
      _794 = _793 ^ (1u << (_798 & 31u));
      int _804 = int((32u * _787) + _798) * 8;
      int _807 = _804 + 1;
      int _810 = _804 + 2;
      int _813 = _804 + 3;
      int _816 = _804 + 4;
      int _819 = _804 + 5;
      int _822 = _804 + 6;
      int _825 = _804 + 7;
      uint _829 = uint(_29_m6[_819].w);
      float _904;
      if ((_829 & 1u) == 1u) {
        uint _835 = asuint(_29_m6[_819].x);
        uint _842 = asuint(_29_m6[_819].y);
        uint _849 = asuint(_29_m6[_819].z);
        uint _856 = asuint(_29_m6[_822].x);
        uint _863 = asuint(_29_m6[_822].y);
        uint _870 = asuint(_29_m6[_822].z);
        float3 _889 = abs(mul(float4(_475 - _29_m6[_807].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_835).x, spvUnpackHalf2x16(_849).x, spvUnpackHalf2x16(_863).x, 0.0f), float4(spvUnpackHalf2x16(_835 >> 16u).x, spvUnpackHalf2x16(_849 >> 16u).x, spvUnpackHalf2x16(_863 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_842).x, spvUnpackHalf2x16(_856).x, spvUnpackHalf2x16(_870).x, 0.0f), float4(spvUnpackHalf2x16(_842 >> 16u).x, spvUnpackHalf2x16(_856 >> 16u).x, spvUnpackHalf2x16(_870 >> 16u).x, 0.0f))).xyz);
        float _896 = _29_m6[_825].x * 0.5f;
        float _902 = 1.0f - clamp((max(max(_889.x, _889.y), _889.z) - (_896 + 0.5f)) / (0.5f - _896), 0.0f, 1.0f);
        _904 = _902 * _902;
      } else {
        _904 = 1.0f;
      }
      uint _908 = uint(_29_m6[_804].w);
      bool _911 = _29_m6[_813].z > 0.5f;
      if ((false || (_904 < 0.001000000047497451305389404296875f)) || ((_908 < 4u) && _911)) {
        _789 = _764;
        _792 = _791;
        continue;
      }
      float _3561;
      float3 _3562;
      do {
        [branch] if (_908 >= 4u) {
          float3 _2165;
          do {
            float3 _930 = _29_m6[_807].xyz - _475;
            if (dot(_29_m6[_813].xyz, _930) > 0.0f) {
              _2165 = 0.0f.xxx;
              break;
            }
            float _937 = dot(_930, _930) * _29_m6[_807].w;
            float _940 = clamp(1.0f - (_937 * _937), 0.0f, 1.0f);
            float _941 = _940 * _940;
            if (_941 <= 0.0f) {
              _2165 = 0.0f.xxx;
              break;
            }
            float3 _979;
            float _980;
            bool _981;
            float3 _1009;
            float3 _1011;
            float3 _1013;
            float3 _1015;
            float3 _945 = _29_m6[_810].xyz * _29_m6[_810].w;
            float3 _946 = _29_m6[_807].xyz - _945;
            float3 _947 = _29_m6[_816].xyz * _29_m6[_813].w;
            float3 _950 = _29_m6[_807].xyz + _945;
            float2 _960 = (float2(clamp(_443, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_506, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _964 = _48.SampleLevel(_13, _960, 0.0f);
            float4 _968 = _49.SampleLevel(_13, _960, 0.0f);
            float _1363;
            do {
              _979 = _501 - (_442 * dot(_501, _442));
              _980 = dot(_979, _979);
              _981 = _980 > 9.9999997473787516355514526367188e-05f;
              float3 _1004;
              if (_981) {
                _1004 = _979 * rsqrt(_980);
              } else {
                float _985 = _442.z;
                float _987 = (_985 >= 0.0f) ? 1.0f : (-1.0f);
                float _989 = (-1.0f) / (_987 + _985);
                float _991 = _442.x;
                _1004 = float3(1.0f + (((_987 * _989) * _991) * _991), ((_987 * _991) * _442.y) * _989, (-_987) * _991);
              }
              float3x3 _1008 = mul(float3x3(float3(_964.x, 0.0f, _964.z), float3(0.0f, 1.0f, 0.0f), float3(_964.y, 0.0f, _964.w)), float3x3(_1004, cross(_442, _1004), _442));
              _1009 = (_946 - _947) - _475;
              float3 _1010 = mul(_1008, _1009);
              _1011 = (_946 + _947) - _475;
              float3 _1012 = mul(_1008, _1011);
              _1013 = (_950 + _947) - _475;
              float3 _1014 = mul(_1008, _1013);
              _1015 = (_950 - _947) - _475;
              float3 _1016 = mul(_1008, _1015);
              float _1017 = _1010.z;
              float _1020 = _1012.z;
              float _1024 = _1014.z;
              float _1028 = _1016.z;
              int _1032 = (((int(_1017 > 0.0f) | ((_1020 > 0.0f) ? 2 : 0)) | ((_1024 > 0.0f) ? 4 : 0)) | ((_1028 > 0.0f) ? 8 : 0));
              float3 _1269;
              float3 _1270;
              float3 _1271;
              float3 _1272;
              float3 _1273;
              int _1274;
              if (_1032 == 0) {
                _1269 = _1016;
                _1270 = _1014;
                _1271 = _1012;
                _1272 = _1010;
                _1273 = 0.0f.xxx;
                _1274 = 0;
              } else {
                float3 _1263;
                float3 _1264;
                float3 _1265;
                float3 _1266;
                float3 _1267;
                int _1268;
                if (_1032 == 1) {
                  _1263 = _1016;
                  _1264 = (_1010 * (-_1028)) + (_1016 * _1017);
                  _1265 = (_1010 * (-_1020)) + (_1012 * _1017);
                  _1266 = _1010;
                  _1267 = 0.0f.xxx;
                  _1268 = 3;
                } else {
                  float3 _1249;
                  float3 _1250;
                  float3 _1251;
                  float3 _1252;
                  float3 _1253;
                  int _1254;
                  if (_1032 == 2) {
                    _1249 = _1016;
                    _1250 = (_1012 * (-_1024)) + (_1014 * _1020);
                    _1251 = _1012;
                    _1252 = (_1012 * (-_1017)) + (_1010 * _1020);
                    _1253 = 0.0f.xxx;
                    _1254 = 3;
                  } else {
                    float3 _1235;
                    float3 _1236;
                    float3 _1237;
                    float3 _1238;
                    float3 _1239;
                    int _1240;
                    if (_1032 == 3) {
                      _1235 = (_1010 * (-_1028)) + (_1016 * _1017);
                      _1236 = (_1012 * (-_1024)) + (_1014 * _1020);
                      _1237 = _1012;
                      _1238 = _1010;
                      _1239 = 0.0f.xxx;
                      _1240 = 4;
                    } else {
                      float3 _1221;
                      float3 _1222;
                      float3 _1223;
                      float3 _1224;
                      float3 _1225;
                      int _1226;
                      if (_1032 == 4) {
                        _1221 = _1016;
                        _1222 = _1014;
                        _1223 = (_1014 * (-_1020)) + (_1012 * _1024);
                        _1224 = (_1014 * (-_1028)) + (_1016 * _1024);
                        _1225 = 0.0f.xxx;
                        _1226 = 3;
                      } else {
                        float3 _1207;
                        float3 _1208;
                        float3 _1209;
                        float3 _1210;
                        float3 _1211;
                        int _1212;
                        if (_1032 == 5) {
                          _1207 = _1016;
                          _1208 = _1014;
                          _1209 = _1012;
                          _1210 = _1010;
                          _1211 = 0.0f.xxx;
                          _1212 = 0;
                        } else {
                          float3 _1201;
                          float3 _1202;
                          float3 _1203;
                          float3 _1204;
                          float3 _1205;
                          int _1206;
                          if (_1032 == 6) {
                            _1201 = (_1014 * (-_1028)) + (_1016 * _1024);
                            _1202 = _1014;
                            _1203 = _1012;
                            _1204 = (_1012 * (-_1017)) + (_1010 * _1020);
                            _1205 = 0.0f.xxx;
                            _1206 = 4;
                          } else {
                            float3 _1187;
                            float3 _1188;
                            float3 _1189;
                            float3 _1190;
                            float3 _1191;
                            int _1192;
                            if (_1032 == 7) {
                              float _1180 = -_1028;
                              _1187 = (_1014 * _1180) + (_1016 * _1024);
                              _1188 = _1014;
                              _1189 = _1012;
                              _1190 = _1010;
                              _1191 = (_1010 * _1180) + (_1016 * _1017);
                              _1192 = 5;
                            } else {
                              float3 _1174;
                              float3 _1175;
                              float3 _1176;
                              float3 _1177;
                              float3 _1178;
                              int _1179;
                              if (_1032 == 8) {
                                _1174 = _1016;
                                _1175 = _1016;
                                _1176 = (_1016 * (-_1024)) + (_1014 * _1028);
                                _1177 = (_1016 * (-_1017)) + (_1010 * _1028);
                                _1178 = 0.0f.xxx;
                                _1179 = 3;
                              } else {
                                float3 _1160;
                                float3 _1161;
                                float3 _1162;
                                float3 _1163;
                                float3 _1164;
                                int _1165;
                                if (_1032 == 9) {
                                  _1160 = _1016;
                                  _1161 = (_1016 * (-_1024)) + (_1014 * _1028);
                                  _1162 = (_1010 * (-_1020)) + (_1012 * _1017);
                                  _1163 = _1010;
                                  _1164 = 0.0f.xxx;
                                  _1165 = 4;
                                } else {
                                  float3 _1146;
                                  float3 _1147;
                                  float3 _1148;
                                  float3 _1149;
                                  float3 _1150;
                                  int _1151;
                                  if (_1032 == 10) {
                                    _1146 = _1016;
                                    _1147 = _1014;
                                    _1148 = _1012;
                                    _1149 = _1010;
                                    _1150 = 0.0f.xxx;
                                    _1151 = 0;
                                  } else {
                                    float3 _1140;
                                    float3 _1141;
                                    float3 _1142;
                                    float3 _1143;
                                    float3 _1144;
                                    int _1145;
                                    if (_1032 == 11) {
                                      float _1133 = -_1024;
                                      _1140 = (_1016 * _1133) + (_1014 * _1028);
                                      _1141 = (_1012 * _1133) + (_1014 * _1020);
                                      _1142 = _1012;
                                      _1143 = _1010;
                                      _1144 = _1016;
                                      _1145 = 5;
                                    } else {
                                      float3 _1127;
                                      float3 _1128;
                                      float3 _1129;
                                      float3 _1130;
                                      float3 _1131;
                                      int _1132;
                                      if (_1032 == 12) {
                                        _1127 = _1016;
                                        _1128 = _1014;
                                        _1129 = (_1014 * (-_1020)) + (_1012 * _1024);
                                        _1130 = (_1016 * (-_1017)) + (_1010 * _1028);
                                        _1131 = 0.0f.xxx;
                                        _1132 = 4;
                                      } else {
                                        bool _1085 = _1032 == 13;
                                        float3 _1112;
                                        float3 _1113;
                                        float3 _1114;
                                        float3 _1115;
                                        int _1116;
                                        if (_1085) {
                                          float _1105 = -_1020;
                                          _1112 = (_1014 * _1105) + (_1012 * _1024);
                                          _1113 = (_1010 * _1105) + (_1012 * _1017);
                                          _1114 = _1010;
                                          _1115 = _1016;
                                          _1116 = 5;
                                        } else {
                                          float3 _1102;
                                          float3 _1103;
                                          int _1104;
                                          if (_1032 == 14) {
                                            float _1095 = -_1017;
                                            _1102 = (_1012 * _1095) + (_1010 * _1020);
                                            _1103 = (_1016 * _1095) + (_1010 * _1028);
                                            _1104 = 5;
                                          } else {
                                            _1102 = _1010;
                                            _1103 = 0.0f.xxx;
                                            _1104 = (_1032 == 15) ? 4 : 0;
                                          }
                                          _1112 = _1014;
                                          _1113 = _1012;
                                          _1114 = _1102;
                                          _1115 = _1103;
                                          _1116 = _1104;
                                        }
                                        bool3 _1117 = _1085.xxx;
                                        _1127 = float3(_1117.x ? _1014.x : _1016.x, _1117.y ? _1014.y : _1016.y, _1117.z ? _1014.z : _1016.z);
                                        _1128 = _1112;
                                        _1129 = _1113;
                                        _1130 = _1114;
                                        _1131 = _1115;
                                        _1132 = _1116;
                                      }
                                      _1140 = _1127;
                                      _1141 = _1128;
                                      _1142 = _1129;
                                      _1143 = _1130;
                                      _1144 = _1131;
                                      _1145 = _1132;
                                    }
                                    _1146 = _1140;
                                    _1147 = _1141;
                                    _1148 = _1142;
                                    _1149 = _1143;
                                    _1150 = _1144;
                                    _1151 = _1145;
                                  }
                                  _1160 = _1146;
                                  _1161 = _1147;
                                  _1162 = _1148;
                                  _1163 = _1149;
                                  _1164 = _1150;
                                  _1165 = _1151;
                                }
                                _1174 = _1160;
                                _1175 = _1161;
                                _1176 = _1162;
                                _1177 = _1163;
                                _1178 = _1164;
                                _1179 = _1165;
                              }
                              _1187 = _1174;
                              _1188 = _1175;
                              _1189 = _1176;
                              _1190 = _1177;
                              _1191 = _1178;
                              _1192 = _1179;
                            }
                            _1201 = _1187;
                            _1202 = _1188;
                            _1203 = _1189;
                            _1204 = _1190;
                            _1205 = _1191;
                            _1206 = _1192;
                          }
                          _1207 = _1201;
                          _1208 = _1202;
                          _1209 = _1203;
                          _1210 = _1204;
                          _1211 = _1205;
                          _1212 = _1206;
                        }
                        _1221 = _1207;
                        _1222 = _1208;
                        _1223 = _1209;
                        _1224 = _1210;
                        _1225 = _1211;
                        _1226 = _1212;
                      }
                      _1235 = _1221;
                      _1236 = _1222;
                      _1237 = _1223;
                      _1238 = _1224;
                      _1239 = _1225;
                      _1240 = _1226;
                    }
                    _1249 = _1235;
                    _1250 = _1236;
                    _1251 = _1237;
                    _1252 = _1238;
                    _1253 = _1239;
                    _1254 = _1240;
                  }
                  _1263 = _1249;
                  _1264 = _1250;
                  _1265 = _1251;
                  _1266 = _1252;
                  _1267 = _1253;
                  _1268 = _1254;
                }
                _1269 = _1263;
                _1270 = _1264;
                _1271 = _1265;
                _1272 = _1266;
                _1273 = _1267;
                _1274 = _1268;
              }
              bool3 _1276 = (_1274 == 3).xxx;
              bool3 _1279 = (_1274 == 4).xxx;
              if (_1274 == 0) {
                _1363 = 0.0f;
                break;
              }
              float3 _1284 = normalize(_1272);
              float3 _1285 = normalize(_1271);
              float3 _1286 = normalize(_1270);
              float3 _1287 = normalize(float3(_1276.x ? _1272.x : _1269.x, _1276.y ? _1272.y : _1269.y, _1276.z ? _1272.z : _1269.z));
              float3 _1288 = normalize(float3(_1279.x ? _1272.x : _1273.x, _1279.y ? _1272.y : _1273.y, _1279.z ? _1272.z : _1273.z));
              float _1290 = clamp(dot(_1284, _1285), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1294 = sqrt(1.0f - (_1290 * _1290));
              float _1302 = clamp(dot(_1285, _1286), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1306 = sqrt(1.0f - (_1302 * _1302));
              float _1315 = clamp(dot(_1286, _1287), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1319 = sqrt(1.0f - (_1315 * _1315));
              float _1326 = ((cross(_1284, _1285).z * ((_1294 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1290) / _1294))) + (cross(_1285, _1286).z * ((_1306 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1302) / _1306)))) + (cross(_1286, _1287).z * ((_1319 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1315) / _1319)));
              float _1343;
              if (_1274 >= 4) {
                float _1331 = clamp(dot(_1287, _1288), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1335 = sqrt(1.0f - (_1331 * _1331));
                _1343 = _1326 + (cross(_1287, _1288).z * ((_1335 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1331) / _1335)));
              } else {
                _1343 = _1326;
              }
              float _1360;
              if (_1274 == 5) {
                float _1348 = clamp(dot(_1288, _1284), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1352 = sqrt(1.0f - (_1348 * _1348));
                _1360 = _1343 + (cross(_1288, _1284).z * ((_1352 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1348) / _1352)));
              } else {
                _1360 = _1343;
              }
              _1363 = max(_1360, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1751;
            do {
              float3 _1397;
              if (_981) {
                _1397 = _979 * rsqrt(_980);
              } else {
                float _1378 = _442.z;
                float _1380 = (_1378 >= 0.0f) ? 1.0f : (-1.0f);
                float _1382 = (-1.0f) / (_1380 + _1378);
                float _1384 = _442.x;
                _1397 = float3(1.0f + (((_1380 * _1382) * _1384) * _1384), ((_1380 * _1384) * _442.y) * _1382, (-_1380) * _1384);
              }
              float3x3 _1400 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1397, cross(_442, _1397), _442));
              float3 _1401 = mul(_1400, _1009);
              float3 _1402 = mul(_1400, _1011);
              float3 _1403 = mul(_1400, _1013);
              float3 _1404 = mul(_1400, _1015);
              float _1405 = _1401.z;
              float _1408 = _1402.z;
              float _1412 = _1403.z;
              float _1416 = _1404.z;
              int _1420 = (((int(_1405 > 0.0f) | ((_1408 > 0.0f) ? 2 : 0)) | ((_1412 > 0.0f) ? 4 : 0)) | ((_1416 > 0.0f) ? 8 : 0));
              float3 _1657;
              float3 _1658;
              float3 _1659;
              float3 _1660;
              float3 _1661;
              int _1662;
              if (_1420 == 0) {
                _1657 = _1404;
                _1658 = _1403;
                _1659 = _1402;
                _1660 = _1401;
                _1661 = 0.0f.xxx;
                _1662 = 0;
              } else {
                float3 _1651;
                float3 _1652;
                float3 _1653;
                float3 _1654;
                float3 _1655;
                int _1656;
                if (_1420 == 1) {
                  _1651 = _1404;
                  _1652 = (_1401 * (-_1416)) + (_1404 * _1405);
                  _1653 = (_1401 * (-_1408)) + (_1402 * _1405);
                  _1654 = _1401;
                  _1655 = 0.0f.xxx;
                  _1656 = 3;
                } else {
                  float3 _1637;
                  float3 _1638;
                  float3 _1639;
                  float3 _1640;
                  float3 _1641;
                  int _1642;
                  if (_1420 == 2) {
                    _1637 = _1404;
                    _1638 = (_1402 * (-_1412)) + (_1403 * _1408);
                    _1639 = _1402;
                    _1640 = (_1402 * (-_1405)) + (_1401 * _1408);
                    _1641 = 0.0f.xxx;
                    _1642 = 3;
                  } else {
                    float3 _1623;
                    float3 _1624;
                    float3 _1625;
                    float3 _1626;
                    float3 _1627;
                    int _1628;
                    if (_1420 == 3) {
                      _1623 = (_1401 * (-_1416)) + (_1404 * _1405);
                      _1624 = (_1402 * (-_1412)) + (_1403 * _1408);
                      _1625 = _1402;
                      _1626 = _1401;
                      _1627 = 0.0f.xxx;
                      _1628 = 4;
                    } else {
                      float3 _1609;
                      float3 _1610;
                      float3 _1611;
                      float3 _1612;
                      float3 _1613;
                      int _1614;
                      if (_1420 == 4) {
                        _1609 = _1404;
                        _1610 = _1403;
                        _1611 = (_1403 * (-_1408)) + (_1402 * _1412);
                        _1612 = (_1403 * (-_1416)) + (_1404 * _1412);
                        _1613 = 0.0f.xxx;
                        _1614 = 3;
                      } else {
                        float3 _1595;
                        float3 _1596;
                        float3 _1597;
                        float3 _1598;
                        float3 _1599;
                        int _1600;
                        if (_1420 == 5) {
                          _1595 = _1404;
                          _1596 = _1403;
                          _1597 = _1402;
                          _1598 = _1401;
                          _1599 = 0.0f.xxx;
                          _1600 = 0;
                        } else {
                          float3 _1589;
                          float3 _1590;
                          float3 _1591;
                          float3 _1592;
                          float3 _1593;
                          int _1594;
                          if (_1420 == 6) {
                            _1589 = (_1403 * (-_1416)) + (_1404 * _1412);
                            _1590 = _1403;
                            _1591 = _1402;
                            _1592 = (_1402 * (-_1405)) + (_1401 * _1408);
                            _1593 = 0.0f.xxx;
                            _1594 = 4;
                          } else {
                            float3 _1575;
                            float3 _1576;
                            float3 _1577;
                            float3 _1578;
                            float3 _1579;
                            int _1580;
                            if (_1420 == 7) {
                              float _1568 = -_1416;
                              _1575 = (_1403 * _1568) + (_1404 * _1412);
                              _1576 = _1403;
                              _1577 = _1402;
                              _1578 = _1401;
                              _1579 = (_1401 * _1568) + (_1404 * _1405);
                              _1580 = 5;
                            } else {
                              float3 _1562;
                              float3 _1563;
                              float3 _1564;
                              float3 _1565;
                              float3 _1566;
                              int _1567;
                              if (_1420 == 8) {
                                _1562 = _1404;
                                _1563 = _1404;
                                _1564 = (_1404 * (-_1412)) + (_1403 * _1416);
                                _1565 = (_1404 * (-_1405)) + (_1401 * _1416);
                                _1566 = 0.0f.xxx;
                                _1567 = 3;
                              } else {
                                float3 _1548;
                                float3 _1549;
                                float3 _1550;
                                float3 _1551;
                                float3 _1552;
                                int _1553;
                                if (_1420 == 9) {
                                  _1548 = _1404;
                                  _1549 = (_1404 * (-_1412)) + (_1403 * _1416);
                                  _1550 = (_1401 * (-_1408)) + (_1402 * _1405);
                                  _1551 = _1401;
                                  _1552 = 0.0f.xxx;
                                  _1553 = 4;
                                } else {
                                  float3 _1534;
                                  float3 _1535;
                                  float3 _1536;
                                  float3 _1537;
                                  float3 _1538;
                                  int _1539;
                                  if (_1420 == 10) {
                                    _1534 = _1404;
                                    _1535 = _1403;
                                    _1536 = _1402;
                                    _1537 = _1401;
                                    _1538 = 0.0f.xxx;
                                    _1539 = 0;
                                  } else {
                                    float3 _1528;
                                    float3 _1529;
                                    float3 _1530;
                                    float3 _1531;
                                    float3 _1532;
                                    int _1533;
                                    if (_1420 == 11) {
                                      float _1521 = -_1412;
                                      _1528 = (_1404 * _1521) + (_1403 * _1416);
                                      _1529 = (_1402 * _1521) + (_1403 * _1408);
                                      _1530 = _1402;
                                      _1531 = _1401;
                                      _1532 = _1404;
                                      _1533 = 5;
                                    } else {
                                      float3 _1515;
                                      float3 _1516;
                                      float3 _1517;
                                      float3 _1518;
                                      float3 _1519;
                                      int _1520;
                                      if (_1420 == 12) {
                                        _1515 = _1404;
                                        _1516 = _1403;
                                        _1517 = (_1403 * (-_1408)) + (_1402 * _1412);
                                        _1518 = (_1404 * (-_1405)) + (_1401 * _1416);
                                        _1519 = 0.0f.xxx;
                                        _1520 = 4;
                                      } else {
                                        bool _1473 = _1420 == 13;
                                        float3 _1500;
                                        float3 _1501;
                                        float3 _1502;
                                        float3 _1503;
                                        int _1504;
                                        if (_1473) {
                                          float _1493 = -_1408;
                                          _1500 = (_1403 * _1493) + (_1402 * _1412);
                                          _1501 = (_1401 * _1493) + (_1402 * _1405);
                                          _1502 = _1401;
                                          _1503 = _1404;
                                          _1504 = 5;
                                        } else {
                                          float3 _1490;
                                          float3 _1491;
                                          int _1492;
                                          if (_1420 == 14) {
                                            float _1483 = -_1405;
                                            _1490 = (_1402 * _1483) + (_1401 * _1408);
                                            _1491 = (_1404 * _1483) + (_1401 * _1416);
                                            _1492 = 5;
                                          } else {
                                            _1490 = _1401;
                                            _1491 = 0.0f.xxx;
                                            _1492 = (_1420 == 15) ? 4 : 0;
                                          }
                                          _1500 = _1403;
                                          _1501 = _1402;
                                          _1502 = _1490;
                                          _1503 = _1491;
                                          _1504 = _1492;
                                        }
                                        bool3 _1505 = _1473.xxx;
                                        _1515 = float3(_1505.x ? _1403.x : _1404.x, _1505.y ? _1403.y : _1404.y, _1505.z ? _1403.z : _1404.z);
                                        _1516 = _1500;
                                        _1517 = _1501;
                                        _1518 = _1502;
                                        _1519 = _1503;
                                        _1520 = _1504;
                                      }
                                      _1528 = _1515;
                                      _1529 = _1516;
                                      _1530 = _1517;
                                      _1531 = _1518;
                                      _1532 = _1519;
                                      _1533 = _1520;
                                    }
                                    _1534 = _1528;
                                    _1535 = _1529;
                                    _1536 = _1530;
                                    _1537 = _1531;
                                    _1538 = _1532;
                                    _1539 = _1533;
                                  }
                                  _1548 = _1534;
                                  _1549 = _1535;
                                  _1550 = _1536;
                                  _1551 = _1537;
                                  _1552 = _1538;
                                  _1553 = _1539;
                                }
                                _1562 = _1548;
                                _1563 = _1549;
                                _1564 = _1550;
                                _1565 = _1551;
                                _1566 = _1552;
                                _1567 = _1553;
                              }
                              _1575 = _1562;
                              _1576 = _1563;
                              _1577 = _1564;
                              _1578 = _1565;
                              _1579 = _1566;
                              _1580 = _1567;
                            }
                            _1589 = _1575;
                            _1590 = _1576;
                            _1591 = _1577;
                            _1592 = _1578;
                            _1593 = _1579;
                            _1594 = _1580;
                          }
                          _1595 = _1589;
                          _1596 = _1590;
                          _1597 = _1591;
                          _1598 = _1592;
                          _1599 = _1593;
                          _1600 = _1594;
                        }
                        _1609 = _1595;
                        _1610 = _1596;
                        _1611 = _1597;
                        _1612 = _1598;
                        _1613 = _1599;
                        _1614 = _1600;
                      }
                      _1623 = _1609;
                      _1624 = _1610;
                      _1625 = _1611;
                      _1626 = _1612;
                      _1627 = _1613;
                      _1628 = _1614;
                    }
                    _1637 = _1623;
                    _1638 = _1624;
                    _1639 = _1625;
                    _1640 = _1626;
                    _1641 = _1627;
                    _1642 = _1628;
                  }
                  _1651 = _1637;
                  _1652 = _1638;
                  _1653 = _1639;
                  _1654 = _1640;
                  _1655 = _1641;
                  _1656 = _1642;
                }
                _1657 = _1651;
                _1658 = _1652;
                _1659 = _1653;
                _1660 = _1654;
                _1661 = _1655;
                _1662 = _1656;
              }
              bool3 _1664 = (_1662 == 3).xxx;
              bool3 _1667 = (_1662 == 4).xxx;
              if (_1662 == 0) {
                _1751 = 0.0f;
                break;
              }
              float3 _1672 = normalize(_1660);
              float3 _1673 = normalize(_1659);
              float3 _1674 = normalize(_1658);
              float3 _1675 = normalize(float3(_1664.x ? _1660.x : _1657.x, _1664.y ? _1660.y : _1657.y, _1664.z ? _1660.z : _1657.z));
              float3 _1676 = normalize(float3(_1667.x ? _1660.x : _1661.x, _1667.y ? _1660.y : _1661.y, _1667.z ? _1660.z : _1661.z));
              float _1678 = clamp(dot(_1672, _1673), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1682 = sqrt(1.0f - (_1678 * _1678));
              float _1690 = clamp(dot(_1673, _1674), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1694 = sqrt(1.0f - (_1690 * _1690));
              float _1703 = clamp(dot(_1674, _1675), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1707 = sqrt(1.0f - (_1703 * _1703));
              float _1714 = ((cross(_1672, _1673).z * ((_1682 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1678) / _1682))) + (cross(_1673, _1674).z * ((_1694 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1690) / _1694)))) + (cross(_1674, _1675).z * ((_1707 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1703) / _1707)));
              float _1731;
              if (_1662 >= 4) {
                float _1719 = clamp(dot(_1675, _1676), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1723 = sqrt(1.0f - (_1719 * _1719));
                _1731 = _1714 + (cross(_1675, _1676).z * ((_1723 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1719) / _1723)));
              } else {
                _1731 = _1714;
              }
              float _1748;
              if (_1662 == 5) {
                float _1736 = clamp(dot(_1676, _1672), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1740 = sqrt(1.0f - (_1736 * _1736));
                _1748 = _1731 + (cross(_1676, _1672).z * ((_1740 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1736) / _1740)));
              } else {
                _1748 = _1731;
              }
              _1751 = max(_1748, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1754 = (_829 & 2u) != 0u;
            uint _1758 = asuint(_29_m6[_816].w);
            uint _1759 = asuint(_29_m6[_822].w);
            float3 _1760 = _475 - _29_m6[_807].xyz;
            float3 _1761 = abs(_1760);
            float _1762 = _1761.x;
            float _1763 = _1761.y;
            float _1765 = _1761.z;
            int _1798;
            if ((_1762 > _1763) && (_1762 > _1765)) {
              _1798 = int((_1760.x > 0.0f) ? (_1758 & 1023u) : ((_1758 >> 10u) & 1023u));
            } else {
              int _1790;
              if (_1763 > _1765) {
                _1790 = int((_1760.y > 0.0f) ? ((_1758 >> 20u) & 1023u) : (_1759 & 1023u));
              } else {
                _1790 = int((_1760.z > 0.0f) ? ((_1759 >> 10u) & 1023u) : ((_1759 >> 20u) & 1023u));
              }
              _1798 = _1790;
            }
            int _1801 = _1754 ? int(_29_m6[_816].w) : ((_1798 == 1023) ? (-1) : _1798);
            uint _1810 = uint(_1801);
            uint _1812 = asuint(_33_m11.x) + (_1810 * 96u);
            uint _1814 = (_1812 + 64u) >> 2u;
            uint _1817 = _1814 + 1u;
            uint _1820 = _1814 + 2u;
            uint _1823 = _1814 + 3u;
            float4 _1827 = asfloat(uint4(_36.Load(_1814 * 4 + 0), _36.Load(_1817 * 4 + 0), _36.Load(_1820 * 4 + 0), _36.Load(_1823 * 4 + 0)));
            float _2159;
            do {
              uint _1843 = ((asuint(_33_m11.y) + (_1810 * 16u)) >> 2u) + 1u;
              if (_36.Load(_1843 * 4 + 0) > 0u) {
                float4 _362 = _758;
                float _1858;
                do {
                  if (_36.Load(_1843 * 4 + 0) == 0u) {
                    _1858 = 1.0f;
                    break;
                  }
                  _1858 = _362[_36.Load(_1843 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2159 = _1858;
                break;
              }
              uint _1859 = _1812 >> 2u;
              uint _1874 = (_1812 + 16u) >> 2u;
              uint _1889 = (_1812 + 32u) >> 2u;
              uint _1904 = (_1812 + 48u) >> 2u;
              float4 _1924 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_1859 * 4 + 0), _36.Load((_1859 + 1u) * 4 + 0), _36.Load((_1859 + 2u) * 4 + 0), _36.Load((_1859 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1874 * 4 + 0), _36.Load((_1874 + 1u) * 4 + 0), _36.Load((_1874 + 2u) * 4 + 0), _36.Load((_1874 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1889 * 4 + 0), _36.Load((_1889 + 1u) * 4 + 0), _36.Load((_1889 + 2u) * 4 + 0), _36.Load((_1889 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1904 * 4 + 0), _36.Load((_1904 + 1u) * 4 + 0), _36.Load((_1904 + 2u) * 4 + 0), _36.Load((_1904 + 3u) * 4 + 0))))), float4((_475 - ((_1760 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1760, _1760)))) * _1827.x)) + (_442 * (_1827.y * 5.0f)), 1.0f));
              float3 _1928 = _1924.xyz / _1924.w.xxx;
              uint _1930 = (_1812 + 80u) >> 2u;
              float4 _1943 = asfloat(uint4(_36.Load(_1930 * 4 + 0), _36.Load((_1930 + 1u) * 4 + 0), _36.Load((_1930 + 2u) * 4 + 0), _36.Load((_1930 + 3u) * 4 + 0)));
              float2 _1944 = _1928.xy;
              float2 _1946 = _1943.xy;
              float3 _1950 = _1928.xyz;
              bool3 _1951 = bool3(_1950.x <= 0.0f.xxx.x, _1950.y <= 0.0f.xxx.y, _1950.z <= 0.0f.xxx.z);
              bool3 _1952 = bool3(_1950.x >= 1.0f.xxx.x, _1950.y >= 1.0f.xxx.y, _1950.z >= 1.0f.xxx.z);
              float _1955 = _1928.z;
              float2 _1966 = ((_1944 * (_1943.zw - _1946)) + _1946).xy * _33_m10.zw;
              float2 _1968 = floor(_1966 + 0.5f.xx);
              float2 _1969 = _1966 - _1968;
              float _1970 = _1969.x;
              float _1971 = _1970 + 0.5f;
              float _1972 = _1971 * _1971;
              float _1975 = 1.0f - _1970;
              float _1976 = min(_1970, 0.0f);
              float _1979 = _1970 + 1.0f;
              float _1980 = max(_1970, 0.0f);
              float _1991 = _1969.y;
              float _1992 = _1991 + 0.5f;
              float _1993 = _1992 * _1992;
              float _1996 = 1.0f - _1991;
              float _1997 = min(_1991, 0.0f);
              float _2000 = _1991 + 1.0f;
              float _2001 = max(_1991, 0.0f);
              float3 _2013 = float3(0.1599999964237213134765625f * _1975, 0.1599999964237213134765625f * ((_1979 - (_1980 * _1980)) + 1.0f), _1972 * 0.07999999821186065673828125f);
              float3 _2014 = float3(0.1599999964237213134765625f * ((_1972 * 0.5f) - _1970), 0.1599999964237213134765625f * ((_1975 - (_1976 * _1976)) + 1.0f), 0.1599999964237213134765625f * _1979) + _2013;
              float3 _2016 = float3(0.1599999964237213134765625f * _1996, 0.1599999964237213134765625f * ((_2000 - (_2001 * _2001)) + 1.0f), _1993 * 0.07999999821186065673828125f);
              float3 _2017 = float3(0.1599999964237213134765625f * ((_1993 * 0.5f) - _1991), 0.1599999964237213134765625f * ((_1996 - (_1997 * _1997)) + 1.0f), 0.1599999964237213134765625f * _2000) + _2016;
              float3 _2023 = ((_2013 / _2014) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _2025 = ((_2016 / _2017) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _2027 = _1968 * _33_m10.xy;
              float _2028 = _2023.x;
              float _2029 = _2025.x;
              float _2032 = _2023.y;
              float _2035 = _2023.z;
              float _2038 = _2025.y;
              float _2045 = _2025.z;
              float _2052 = _2014.x;
              float _2053 = _2017.x;
              float _2055 = _2014.y;
              float _2057 = _2014.z;
              float _2059 = _2017.y;
              float _2063 = _2017.z;
              float _2121 = (((((((_2052 * _2053) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2028, _2029), _350).xy, _1955)) + ((_2055 * _2053) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2032, _2029), _350).xy, _1955))) + ((_2057 * _2053) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2035, _2029), _350).xy, _1955))) + ((_2052 * _2059) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2028, _2038), _350).xy, _1955))) + ((_2055 * _2059) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2032, _2038), _350).xy, _1955))) + ((_2057 * _2059) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2035, _2038), _350).xy, _1955))) + ((_2052 * _2063) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2028, _2045), _350).xy, _1955));
              float4 _2144 = asfloat(uint4(_36.Load(_1814 * 4 + 0), _36.Load(_1817 * 4 + 0), _36.Load(_1820 * 4 + 0), _36.Load(_1823 * 4 + 0)));
              float _2145 = _2144.w;
              float2 _2147 = min(_1944, 1.0f.xx - _1944);
              _2159 = lerp(1.0f, (any(bool3(_1951.x || _1952.x, _1951.y || _1952.y, _1951.z || _1952.z)) || ((asuint(_1955) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2121 + ((_2055 * _2063) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2032, _2045), _350).xy, _1955))) + ((_2057 * _2063) * _34.SampleCmpLevelZero(_16, float3(_2027 + float2(_2035, _2045), _350).xy, _1955))), _1754 ? min(_2145, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2144.z - _1924.w) * 0.25f, min(_2147.x, _2147.y)))) : _2145);
              break;
            } while (false);
            _2165 = ((_29_m6[_804].xyz * (((((_505 * _968.x) + ((1.0f.xxx - _505) * _968.y)) * _1363) * _29_m6[_825].z) + (_444 * _1751))) * _941) * ((_1801 >= 0) ? _2159 : 1.0f);
            break;
          } while (false);
          _3561 = _764;
          _3562 = _2165 * _904;
          break;
        }
        float _3559;
        float3 _3560;
        if (_29_m6[_804].w < 1.5f) {
          float3 _2770 = float3(0.100000001490116119384765625f, _443, 1.0f);
          float _2779 = (0.5f + (0.5f * _29_m6[_810].y)) - abs(_29_m6[_810].x);
          float _2780 = _29_m6[_810].y - _2779;
          float _2787 = abs(max((1.0f - abs(_2779)) - abs(_2780), 0.00048828125f));
          float3 _2791 = normalize(float3(_2779, _2780, (_29_m6[_810].x >= 0.0f) ? _2787 : (-_2787)));
          float3 _2792 = _29_m6[_807].xyz - _475;
          float _2793 = dot(_2792, _2792);
          float _2794 = rsqrt(_2793);
          float3 _2795 = _2792 * _2794;
          float _2799 = clamp(_29_m6[_825].y * _2794, 0.0f, 1.0f);
          int _2804 = int(_29_m6[_825].w);
          float3 _2805 = _2791 * _29_m6[_810].z;
          float3 _2806 = _2805 * 0.5f;
          float3 _2807 = _2792 - _2806;
          float3 _2808 = _2792 + _2806;
          bool _2810 = (_908 & 1u) == 0u;
          bool _2813 = _2810 || ((_829 & 2u) != 0u);
          bool _2816 = (!_2810) && (_29_m6[_810].z > 0.0f);
          float _2835;
          float _2836;
          if (_2816) {
            float _2820 = length(_2807);
            float _2821 = length(_2808);
            _2835 = clamp(0.5f * ((dot(_442, _2807) / _2820) + (dot(_442, _2808) / _2821)), 0.0f, 1.0f);
            _2836 = 1.0f / ((((_2820 * _2821) + dot(_2807, _2808)) * 0.5f) + 1.0f);
          } else {
            _2835 = clamp(dot(_442, _2795), 0.0f, 1.0f);
            _2836 = 1.0f;
          }
          float _2858;
          if (_29_m6[_822].w < 0.0f) {
            float _2852 = _2793 * (_29_m6[_807].w * _29_m6[_807].w);
            float _2855 = clamp(1.0f - (_2852 * _2852), 0.0f, 1.0f);
            _2858 = lerp(1.0f / (_2793 + 1.0f), _2836, float(_2816)) * (_2855 * _2855);
          } else {
            float3 _2841 = _2792 * _29_m6[_807].w;
            _2858 = _2836 * pow(1.0f - clamp(dot(_2841, _2841), 0.0f, 1.0f), _29_m6[_822].w);
          }
          float _2864 = clamp((dot(_2795, -_2791) - _29_m6[_810].z) * _29_m6[_810].w, 0.0f, 1.0f);
          float _2868 = _2858 * lerp(1.0f, _2864 * _2864, float(_2810));
          float _2968;
          if ((!_2816) && (_2804 >= 0)) {
            uint _2874 = uint(_2804);
            float2 _2961;
            [branch] if (_2810) {
              float4 _2951 = mul(_45_m1[_2874], _479);
              _2961 = _45_m0[_2874].xy + (clamp(_2951.xy / _2951.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2874].zw);
            }
            else {
              float3 _2888 = mul(float4(-_2792, 0.0f), _45_m1[_2874]).xyz;
              float3 _357 = _2888;
              float3 _356 = _2888;
              float3 _355 = abs(_2888);
              uint _2897 = uint(int(_355.y > _355.x));
              uint _2903 = (_355.z > _355[_2897]) ? 2u : _2897;
              uint _2909 = (_2903 * 2u) + uint(_356[_2903] < 0.0f);
              float _2913 = abs(_357[_2909 / 2u]);
              float _2933 = 0.5f - (0.000244140625f / _45_m0[_2874].w);
              _2961 = _45_m0[_2874].xy + (clamp(float2((float(_2909) + ((((_357[uint(_326[_2909].x)] * _327[_2909].x) / _2913) * _2933) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_357[uint(_326[_2909].y)] * _327[_2909].y) / _2913) * _2933)), 0.0f.xx, 1.0f.xx) * _45_m0[_2874].zw);
            }
            _2968 = _2868 * _43.SampleLevel(_13, _2961, 0.0f).x;
          } else {
            _2968 = _2868;
          }
          bool _2969 = _2968 > 0.0f;
          float _3378;
          if (_2969) {
            int _3022;
            if (_2813) {
              _3022 = int(_29_m6[_813].x);
            } else {
              uint _2977 = asuint(_29_m6[_810].w);
              uint _2978 = asuint(_29_m6[_813].x);
              float3 _2979 = _475 - _29_m6[_807].xyz;
              float3 _2980 = abs(_2979);
              float _2981 = _2980.x;
              float _2982 = _2980.y;
              float _2984 = _2980.z;
              int _3017;
              if ((_2981 > _2982) && (_2981 > _2984)) {
                _3017 = int((_2979.x > 0.0f) ? (_2977 & 1023u) : ((_2977 >> 10u) & 1023u));
              } else {
                int _3009;
                if (_2982 > _2984) {
                  _3009 = int((_2979.y > 0.0f) ? ((_2977 >> 20u) & 1023u) : (_2978 & 1023u));
                } else {
                  _3009 = int((_2979.z > 0.0f) ? ((_2978 >> 10u) & 1023u) : ((_2978 >> 20u) & 1023u));
                }
                _3017 = _3009;
              }
              _3022 = (_3017 == 1023) ? (-1) : _3017;
            }
            uint _3027 = uint(_3022);
            uint _3029 = asuint(_33_m11.x) + (_3027 * 96u);
            uint _3031 = (_3029 + 64u) >> 2u;
            uint _3034 = _3031 + 1u;
            uint _3037 = _3031 + 2u;
            uint _3040 = _3031 + 3u;
            float4 _3044 = asfloat(uint4(_36.Load(_3031 * 4 + 0), _36.Load(_3034 * 4 + 0), _36.Load(_3037 * 4 + 0), _36.Load(_3040 * 4 + 0)));
            float _3376;
            do {
              uint _3060 = ((asuint(_33_m11.y) + (_3027 * 16u)) >> 2u) + 1u;
              if (_36.Load(_3060 * 4 + 0) > 0u) {
                float4 _354 = _758;
                float _3075;
                do {
                  if (_36.Load(_3060 * 4 + 0) == 0u) {
                    _3075 = 1.0f;
                    break;
                  }
                  _3075 = _354[_36.Load(_3060 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3376 = _3075;
                break;
              }
              uint _3076 = _3029 >> 2u;
              uint _3091 = (_3029 + 16u) >> 2u;
              uint _3106 = (_3029 + 32u) >> 2u;
              uint _3121 = (_3029 + 48u) >> 2u;
              float4 _3141 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_3076 * 4 + 0), _36.Load((_3076 + 1u) * 4 + 0), _36.Load((_3076 + 2u) * 4 + 0), _36.Load((_3076 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3091 * 4 + 0), _36.Load((_3091 + 1u) * 4 + 0), _36.Load((_3091 + 2u) * 4 + 0), _36.Load((_3091 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3106 * 4 + 0), _36.Load((_3106 + 1u) * 4 + 0), _36.Load((_3106 + 2u) * 4 + 0), _36.Load((_3106 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3121 * 4 + 0), _36.Load((_3121 + 1u) * 4 + 0), _36.Load((_3121 + 2u) * 4 + 0), _36.Load((_3121 + 3u) * 4 + 0))))), float4((_475 - ((-_2795) * _3044.x)) + (_442 * (_3044.y * 5.0f)), 1.0f));
              float3 _3145 = _3141.xyz / _3141.w.xxx;
              uint _3147 = (_3029 + 80u) >> 2u;
              float4 _3160 = asfloat(uint4(_36.Load(_3147 * 4 + 0), _36.Load((_3147 + 1u) * 4 + 0), _36.Load((_3147 + 2u) * 4 + 0), _36.Load((_3147 + 3u) * 4 + 0)));
              float2 _3161 = _3145.xy;
              float2 _3163 = _3160.xy;
              float3 _3167 = _3145.xyz;
              bool3 _3168 = bool3(_3167.x <= 0.0f.xxx.x, _3167.y <= 0.0f.xxx.y, _3167.z <= 0.0f.xxx.z);
              bool3 _3169 = bool3(_3167.x >= 1.0f.xxx.x, _3167.y >= 1.0f.xxx.y, _3167.z >= 1.0f.xxx.z);
              float _3172 = _3145.z;
              float2 _3183 = ((_3161 * (_3160.zw - _3163)) + _3163).xy * _33_m10.zw;
              float2 _3185 = floor(_3183 + 0.5f.xx);
              float2 _3186 = _3183 - _3185;
              float _3187 = _3186.x;
              float _3188 = _3187 + 0.5f;
              float _3189 = _3188 * _3188;
              float _3192 = 1.0f - _3187;
              float _3193 = min(_3187, 0.0f);
              float _3196 = _3187 + 1.0f;
              float _3197 = max(_3187, 0.0f);
              float _3208 = _3186.y;
              float _3209 = _3208 + 0.5f;
              float _3210 = _3209 * _3209;
              float _3213 = 1.0f - _3208;
              float _3214 = min(_3208, 0.0f);
              float _3217 = _3208 + 1.0f;
              float _3218 = max(_3208, 0.0f);
              float3 _3230 = float3(0.1599999964237213134765625f * _3192, 0.1599999964237213134765625f * ((_3196 - (_3197 * _3197)) + 1.0f), _3189 * 0.07999999821186065673828125f);
              float3 _3231 = float3(0.1599999964237213134765625f * ((_3189 * 0.5f) - _3187), 0.1599999964237213134765625f * ((_3192 - (_3193 * _3193)) + 1.0f), 0.1599999964237213134765625f * _3196) + _3230;
              float3 _3233 = float3(0.1599999964237213134765625f * _3213, 0.1599999964237213134765625f * ((_3217 - (_3218 * _3218)) + 1.0f), _3210 * 0.07999999821186065673828125f);
              float3 _3234 = float3(0.1599999964237213134765625f * ((_3210 * 0.5f) - _3208), 0.1599999964237213134765625f * ((_3213 - (_3214 * _3214)) + 1.0f), 0.1599999964237213134765625f * _3217) + _3233;
              float3 _3240 = ((_3230 / _3231) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _3242 = ((_3233 / _3234) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _3244 = _3185 * _33_m10.xy;
              float _3245 = _3240.x;
              float _3246 = _3242.x;
              float _3249 = _3240.y;
              float _3252 = _3240.z;
              float _3255 = _3242.y;
              float _3262 = _3242.z;
              float _3269 = _3231.x;
              float _3270 = _3234.x;
              float _3272 = _3231.y;
              float _3274 = _3231.z;
              float _3276 = _3234.y;
              float _3280 = _3234.z;
              float _3338 = (((((((_3269 * _3270) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3245, _3246), _350).xy, _3172)) + ((_3272 * _3270) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3249, _3246), _350).xy, _3172))) + ((_3274 * _3270) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3252, _3246), _350).xy, _3172))) + ((_3269 * _3276) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3245, _3255), _350).xy, _3172))) + ((_3272 * _3276) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3249, _3255), _350).xy, _3172))) + ((_3274 * _3276) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3252, _3255), _350).xy, _3172))) + ((_3269 * _3280) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3245, _3262), _350).xy, _3172));
              float4 _3361 = asfloat(uint4(_36.Load(_3031 * 4 + 0), _36.Load(_3034 * 4 + 0), _36.Load(_3037 * 4 + 0), _36.Load(_3040 * 4 + 0)));
              float _3362 = _3361.w;
              float2 _3364 = min(_3161, 1.0f.xx - _3161);
              _3376 = lerp(1.0f, (any(bool3(_3168.x || _3169.x, _3168.y || _3169.y, _3168.z || _3169.z)) || ((asuint(_3172) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3338 + ((_3272 * _3280) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3249, _3262), _350).xy, _3172))) + ((_3274 * _3280) * _34.SampleCmpLevelZero(_16, float3(_3244 + float2(_3252, _3262), _350).xy, _3172))), _2813 ? min(_3362, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3361.z - _3141.w) * 0.25f, min(_3364.x, _3364.y)))) : _3362);
              break;
            } while (false);
            _3378 = (_3022 >= 0) ? _3376 : 1.0f;
          } else {
            _3378 = 1.0f;
          }
          float3 _3402;
          float3 _3403;
          if (_2816) {
            float3 _3381 = _2770 * _2770;
            float3 _3382 = reflect(_503, _442);
            float _3391 = dot(_3382, _2805);
            _3402 = _3381 / clamp(_3381 + (0.5f * clamp(_29_m6[_810].z * _2794, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3403 = normalize(_2807 + (_2805 * clamp(dot(_2807, (_3382 * _3391) - _2805) / ((_29_m6[_810].z * _29_m6[_810].z) - (_3391 * _3391)), 0.0f, 1.0f)));
          } else {
            _3402 = 1.0f.xxx;
            _3403 = _2795;
          }
          float3 _3404 = _3403 + _501;
          float3 _3408 = _3404 * rsqrt(max(6.103515625e-05f, dot(_3404, _3404)));
          float3 _3558;
          if (_2969) {
            float _3411 = dot(_442, _3403);
            float _3412 = clamp(_2835, 0.0f, 1.0f);
            float _3414 = clamp(dot(_442, _3408), 0.0f, 1.0f);
            float _3416 = clamp(dot(_501, _3408), 0.0f, 1.0f);
            float _3417 = dot(_501, _3403);
            float _3419 = clamp(_506, 0.0f, 1.0f);
            float _3420 = _443 * _443;
            float _3430;
            if (_2799 > 0.0f) {
              _3430 = clamp(_3420 + ((_2799 * _2799) / ((_3416 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3430 = _3420;
            }
            float _3431 = _3430 * _3430;
            float _3452 = (((_3414 * _3431) - _3414) * _3414) + 1.0f;
            float _3457 = 1.0f - _3416;
            float _3458 = _3457 * _3457;
            float _3460 = (_3457 * _3458) * _3458;
            float _3484 = 1.0f - _443;
            float _3491 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3484 * (1.04997003078460693359375f + (_3484 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3484))))));
            float _3492 = 1.0f - _3491;
            float3 _3495 = _505 + ((1.0f.xxx - _505) * 0.0476190485060214996337890625f);
            float _3526 = clamp(-_3417, 0.0f, 1.0f);
            float _3530 = (((_3526 * 0.36000001430511474609375f) - _3526) * _3526) + 1.0f;
            float _3531 = _3530 * _3530;
            float3 _3543 = ((min(((_505 * (1.0f - _3460)) + _3460.xxx) * (((_3431 / (_3452 * _3452)) * _3402.y) * (0.5f / (((_3412 * sqrt(((((-_3419) * _3431) + _3419) * _3419) + _3431)) + (_3419 * sqrt(((((-_3412) * _3431) + _3412) * _3412) + _3431))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3495 * (((_41.SampleLevel(_13, (float2(_3419, _443) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_3412, _443) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3491) / _3492)) * _3495) / (1.0f.xxx - (_3495 * _3492)))) * lerp(clamp(_506 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_3417, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_3417 + 1.0f, 0.0f, 1.0f))) * _403;
            _3558 = (((clamp(_3543 * _29_m6[_825].z, 0.0f.xxx, 1000.0f.xxx) * _2835) + (((((_444 / max(0.00999999977648258209228515625f, max(max(_378.x, _378.y), _378.z)).xxx) * _386) * (clamp(0.5f - _3411, 0.0f, 1.0f) * ((0.36000001430511474609375f != _3531) ? (0.36000001430511474609375f / _3531) : 1.0f))) + (_444 * (clamp(_3411 + _394, 0.0f, 1.0f) - clamp(_3412, 0.0f, 1.0f)))) * _403)) + (((_444 * _403) * _3402.z) * _2835)) * (((_29_m6[_804].xyz * _2968) * _3378) * _904);
          } else {
            _3558 = 0.0f.xxx;
          }
          _3559 = _764;
          _3560 = _3558;
        } else {
          float _2768;
          do {
            if (_911) {
              _2768 = 1.0f;
              break;
            }
            float _2182 = (0.5f + (0.5f * _29_m6[_810].y)) - abs(_29_m6[_810].x);
            float _2183 = _29_m6[_810].y - _2182;
            float _2190 = abs(max((1.0f - abs(_2182)) - abs(_2183), 0.00048828125f));
            float3 _2194 = normalize(float3(_2182, _2183, (_29_m6[_810].x >= 0.0f) ? _2190 : (-_2190)));
            float3 _2195 = _29_m6[_807].xyz - _475;
            float _2196 = dot(_2195, _2195);
            float3 _2198 = _2195 * rsqrt(_2196);
            int _2201 = int(_29_m6[_825].w);
            float3 _2203 = (_2194 * _29_m6[_810].z) * 0.5f;
            float3 _2204 = _2195 - _2203;
            float3 _2205 = _2195 + _2203;
            bool _2207 = (_908 & 1u) == 0u;
            bool _2210 = _2207 || ((_829 & 2u) != 0u);
            bool _2213 = (!_2207) && (_29_m6[_810].z > 0.0f);
            float _2225;
            if (_2213) {
              _2225 = 1.0f / ((((length(_2204) * length(_2205)) + dot(_2204, _2205)) * 0.5f) + 1.0f);
            } else {
              _2225 = 1.0f;
            }
            float _2247;
            if (_29_m6[_822].w < 0.0f) {
              float _2241 = _2196 * (_29_m6[_807].w * _29_m6[_807].w);
              float _2244 = clamp(1.0f - (_2241 * _2241), 0.0f, 1.0f);
              _2247 = lerp(1.0f / (_2196 + 1.0f), _2225, float(_2213)) * (_2244 * _2244);
            } else {
              float3 _2230 = _2195 * _29_m6[_807].w;
              _2247 = _2225 * pow(1.0f - clamp(dot(_2230, _2230), 0.0f, 1.0f), _29_m6[_822].w);
            }
            float _2253 = clamp((dot(_2198, -_2194) - _29_m6[_810].z) * _29_m6[_810].w, 0.0f, 1.0f);
            float _2257 = _2247 * lerp(1.0f, _2253 * _2253, float(_2207));
            float _2357;
            if ((!_2213) && (_2201 >= 0)) {
              uint _2263 = uint(_2201);
              float2 _2350;
              [branch] if (_2207) {
                float4 _2340 = mul(_45_m1[_2263], _479);
                _2350 = _45_m0[_2263].xy + (clamp(_2340.xy / _2340.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2263].zw);
              }
              else {
                float3 _2277 = mul(float4(-_2195, 0.0f), _45_m1[_2263]).xyz;
                float3 _361 = _2277;
                float3 _360 = _2277;
                float3 _359 = abs(_2277);
                uint _2286 = uint(int(_359.y > _359.x));
                uint _2292 = (_359.z > _359[_2286]) ? 2u : _2286;
                uint _2298 = (_2292 * 2u) + uint(_360[_2292] < 0.0f);
                float _2302 = abs(_361[_2298 / 2u]);
                float _2322 = 0.5f - (0.000244140625f / _45_m0[_2263].w);
                _2350 = _45_m0[_2263].xy + (clamp(float2((float(_2298) + ((((_361[uint(_326[_2298].x)] * _327[_2298].x) / _2302) * _2322) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_361[uint(_326[_2298].y)] * _327[_2298].y) / _2302) * _2322)), 0.0f.xx, 1.0f.xx) * _45_m0[_2263].zw);
              }
              _2357 = _2257 * _43.SampleLevel(_13, _2350, 0.0f).x;
            } else {
              _2357 = _2257;
            }
            float _2767;
            if (_2357 > 0.0f) {
              int _2411;
              if (_2210) {
                _2411 = int(_29_m6[_813].x);
              } else {
                uint _2366 = asuint(_29_m6[_810].w);
                uint _2367 = asuint(_29_m6[_813].x);
                float3 _2368 = _475 - _29_m6[_807].xyz;
                float3 _2369 = abs(_2368);
                float _2370 = _2369.x;
                float _2371 = _2369.y;
                float _2373 = _2369.z;
                int _2406;
                if ((_2370 > _2371) && (_2370 > _2373)) {
                  _2406 = int((_2368.x > 0.0f) ? (_2366 & 1023u) : ((_2366 >> 10u) & 1023u));
                } else {
                  int _2398;
                  if (_2371 > _2373) {
                    _2398 = int((_2368.y > 0.0f) ? ((_2366 >> 20u) & 1023u) : (_2367 & 1023u));
                  } else {
                    _2398 = int((_2368.z > 0.0f) ? ((_2367 >> 10u) & 1023u) : ((_2367 >> 20u) & 1023u));
                  }
                  _2406 = _2398;
                }
                _2411 = (_2406 == 1023) ? (-1) : _2406;
              }
              uint _2416 = uint(_2411);
              uint _2418 = asuint(_33_m11.x) + (_2416 * 96u);
              uint _2420 = (_2418 + 64u) >> 2u;
              uint _2423 = _2420 + 1u;
              uint _2426 = _2420 + 2u;
              uint _2429 = _2420 + 3u;
              float4 _2433 = asfloat(uint4(_36.Load(_2420 * 4 + 0), _36.Load(_2423 * 4 + 0), _36.Load(_2426 * 4 + 0), _36.Load(_2429 * 4 + 0)));
              float _2765;
              do {
                uint _2449 = ((asuint(_33_m11.y) + (_2416 * 16u)) >> 2u) + 1u;
                if (_36.Load(_2449 * 4 + 0) > 0u) {
                  float4 _358 = _758;
                  float _2464;
                  do {
                    if (_36.Load(_2449 * 4 + 0) == 0u) {
                      _2464 = 1.0f;
                      break;
                    }
                    _2464 = _358[_36.Load(_2449 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2765 = _2464;
                  break;
                }
                uint _2465 = _2418 >> 2u;
                uint _2480 = (_2418 + 16u) >> 2u;
                uint _2495 = (_2418 + 32u) >> 2u;
                uint _2510 = (_2418 + 48u) >> 2u;
                float4 _2530 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_2465 * 4 + 0), _36.Load((_2465 + 1u) * 4 + 0), _36.Load((_2465 + 2u) * 4 + 0), _36.Load((_2465 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2480 * 4 + 0), _36.Load((_2480 + 1u) * 4 + 0), _36.Load((_2480 + 2u) * 4 + 0), _36.Load((_2480 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2495 * 4 + 0), _36.Load((_2495 + 1u) * 4 + 0), _36.Load((_2495 + 2u) * 4 + 0), _36.Load((_2495 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2510 * 4 + 0), _36.Load((_2510 + 1u) * 4 + 0), _36.Load((_2510 + 2u) * 4 + 0), _36.Load((_2510 + 3u) * 4 + 0))))), float4((_475 - ((-_2198) * _2433.x)) + (_442 * (_2433.y * 5.0f)), 1.0f));
                float3 _2534 = _2530.xyz / _2530.w.xxx;
                uint _2536 = (_2418 + 80u) >> 2u;
                float4 _2549 = asfloat(uint4(_36.Load(_2536 * 4 + 0), _36.Load((_2536 + 1u) * 4 + 0), _36.Load((_2536 + 2u) * 4 + 0), _36.Load((_2536 + 3u) * 4 + 0)));
                float2 _2550 = _2534.xy;
                float2 _2552 = _2549.xy;
                float3 _2556 = _2534.xyz;
                bool3 _2557 = bool3(_2556.x <= 0.0f.xxx.x, _2556.y <= 0.0f.xxx.y, _2556.z <= 0.0f.xxx.z);
                bool3 _2558 = bool3(_2556.x >= 1.0f.xxx.x, _2556.y >= 1.0f.xxx.y, _2556.z >= 1.0f.xxx.z);
                float _2561 = _2534.z;
                float2 _2572 = ((_2550 * (_2549.zw - _2552)) + _2552).xy * _33_m10.zw;
                float2 _2574 = floor(_2572 + 0.5f.xx);
                float2 _2575 = _2572 - _2574;
                float _2576 = _2575.x;
                float _2577 = _2576 + 0.5f;
                float _2578 = _2577 * _2577;
                float _2581 = 1.0f - _2576;
                float _2582 = min(_2576, 0.0f);
                float _2585 = _2576 + 1.0f;
                float _2586 = max(_2576, 0.0f);
                float _2597 = _2575.y;
                float _2598 = _2597 + 0.5f;
                float _2599 = _2598 * _2598;
                float _2602 = 1.0f - _2597;
                float _2603 = min(_2597, 0.0f);
                float _2606 = _2597 + 1.0f;
                float _2607 = max(_2597, 0.0f);
                float3 _2619 = float3(0.1599999964237213134765625f * _2581, 0.1599999964237213134765625f * ((_2585 - (_2586 * _2586)) + 1.0f), _2578 * 0.07999999821186065673828125f);
                float3 _2620 = float3(0.1599999964237213134765625f * ((_2578 * 0.5f) - _2576), 0.1599999964237213134765625f * ((_2581 - (_2582 * _2582)) + 1.0f), 0.1599999964237213134765625f * _2585) + _2619;
                float3 _2622 = float3(0.1599999964237213134765625f * _2602, 0.1599999964237213134765625f * ((_2606 - (_2607 * _2607)) + 1.0f), _2599 * 0.07999999821186065673828125f);
                float3 _2623 = float3(0.1599999964237213134765625f * ((_2599 * 0.5f) - _2597), 0.1599999964237213134765625f * ((_2602 - (_2603 * _2603)) + 1.0f), 0.1599999964237213134765625f * _2606) + _2622;
                float3 _2629 = ((_2619 / _2620) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
                float3 _2631 = ((_2622 / _2623) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
                float2 _2633 = _2574 * _33_m10.xy;
                float _2634 = _2629.x;
                float _2635 = _2631.x;
                float _2638 = _2629.y;
                float _2641 = _2629.z;
                float _2644 = _2631.y;
                float _2651 = _2631.z;
                float _2658 = _2620.x;
                float _2659 = _2623.x;
                float _2661 = _2620.y;
                float _2663 = _2620.z;
                float _2665 = _2623.y;
                float _2669 = _2623.z;
                float _2727 = (((((((_2658 * _2659) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2634, _2635), _350).xy, _2561)) + ((_2661 * _2659) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2638, _2635), _350).xy, _2561))) + ((_2663 * _2659) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2641, _2635), _350).xy, _2561))) + ((_2658 * _2665) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2634, _2644), _350).xy, _2561))) + ((_2661 * _2665) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2638, _2644), _350).xy, _2561))) + ((_2663 * _2665) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2641, _2644), _350).xy, _2561))) + ((_2658 * _2669) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2634, _2651), _350).xy, _2561));
                float4 _2750 = asfloat(uint4(_36.Load(_2420 * 4 + 0), _36.Load(_2423 * 4 + 0), _36.Load(_2426 * 4 + 0), _36.Load(_2429 * 4 + 0)));
                float _2751 = _2750.w;
                float2 _2753 = min(_2550, 1.0f.xx - _2550);
                _2765 = lerp(1.0f, (any(bool3(_2557.x || _2558.x, _2557.y || _2558.y, _2557.z || _2558.z)) || ((asuint(_2561) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2727 + ((_2661 * _2669) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2638, _2651), _350).xy, _2561))) + ((_2663 * _2669) * _34.SampleCmpLevelZero(_16, float3(_2633 + float2(_2641, _2651), _350).xy, _2561))), _2210 ? min(_2751, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2750.z - _2530.w) * 0.25f, min(_2753.x, _2753.y)))) : _2751);
                break;
              } while (false);
              _2767 = (_2411 >= 0) ? _2765 : 1.0f;
            } else {
              _2767 = 1.0f;
            }
            _2768 = _2767;
            break;
          } while (false);
          _3559 = _764 * _2768;
          _3560 = 0.0f.xxx;
        }
        _3561 = _3559;
        _3562 = _3560;
        break;
      } while (false);
      _789 = _3561;
      _792 = _791 + _3562;
    }
    _761 = _760 + _791;
  }
  float3 _3566 = _729.xyz + (_760 * _763);
  float3 _3568 = _445.xxx;
  float3 _3603;
  float3 _3604;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x1B28B6CC:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3579 = min(_21.SampleBias(_12, _4, _9_m16).x, _445);
    _3603 = clamp((pow(abs(_507 + _3579), exp2(((-16.0f) * _443) - 1.0f)) - 1.0f) + _3579, 0.0f, 1.0f).xxx;
    _3604 = max(_3579.xxx, ((((((_444 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3579) + ((_444 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3579) + ((_444 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3579);
  }
  else {
    _3603 = _3568;
    _3604 = _3568;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3566 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3603 : 1.0f.xxx;
  // RenoDX code end
  float3 _3614 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3623 = _475 - (_9_m108.xyz + (_3614 * (-_9_m110.w)));
  float _3638 = max(min(max((max(abs(_3623.x), abs(_3623.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3623.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _3940;
  float4 _3941;
  float4 _3942;
  float _3943;
  float _3944;
  if ((_9_m108.w != 0.0f) && (_3638 < 1.0f)) {
    float3 _3651 = _475 - (_9_m108.xyz + (_3614 * (-_9_m110.y)));
    float _3665 = max(clamp((max(abs(_3651.x), abs(_3651.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3651.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3741;
    float4 _3742;
    float4 _3743;
    float4 _3744;
    if (_3665 < 1.0f) {
      float3 _3674 = ((_475 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3676 = _3674 - floor(_3674);
      float4 _3680 = _55.SampleLevel(_14, _3676, 0.0f);
      float _3681 = 1.0f - _3665;
      float _3685 = _9_m109.y * 0.5f;
      float _3690 = _3676.x;
      float _3691 = clamp(_3676.y, _3685, 1.0f - _3685) * 0.3333333432674407958984375f;
      float _3692 = _3676.z;
      float4 _3695 = _56.SampleLevel(_13, float3(_3690, _3691, _3692), 0.0f);
      float _3711 = _3680.x;
      float _3721 = _3680.y;
      float _3731 = _3680.z;
      _3741 = _3638 + (_3695.w * _3681);
      _3742 = float4(((_56.SampleLevel(_13, float3(_3690, _3691 + 0.666666686534881591796875f, _3692), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3731, _3731) * _3681;
      _3743 = float4(((_56.SampleLevel(_13, float3(_3690, _3691 + 0.3333333432674407958984375f, _3692), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3721, _3721) * _3681;
      _3744 = float4(((_3695.xyz * 4.0f) - 2.0f.xxx) * _3711, _3711) * _3681;
    } else {
      _3741 = _3638;
      _3742 = 0.0f.xxxx;
      _3743 = 0.0f.xxxx;
      _3744 = 0.0f.xxxx;
    }
    float3 _3750 = _475 - (_9_m108.xyz + (_3614 * (-_9_m110.z)));
    float _3764 = max(clamp((max(abs(_3750.x), abs(_3750.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3750.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _3844;
    float4 _3845;
    float4 _3846;
    float4 _3847;
    if (_3764 < 1.0f) {
      float3 _3773 = ((_475 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3775 = _3773 - floor(_3773);
      float4 _3779 = _57.SampleLevel(_14, _3775, 0.0f);
      float _3781 = _3665 * (1.0f - _3764);
      float _3785 = _9_m109.y * 0.5f;
      float _3790 = _3775.x;
      float _3791 = clamp(_3775.y, _3785, 1.0f - _3785) * 0.3333333432674407958984375f;
      float _3792 = _3775.z;
      float4 _3795 = _58.SampleLevel(_13, float3(_3790, _3791, _3792), 0.0f);
      float _3811 = _3779.x;
      float _3822 = _3779.y;
      float _3833 = _3779.z;
      _3844 = _3741 + (_3795.w * _3781);
      _3845 = _3742 + (float4(((_58.SampleLevel(_13, float3(_3790, _3791 + 0.666666686534881591796875f, _3792), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3833, _3833) * _3781);
      _3846 = _3743 + (float4(((_58.SampleLevel(_13, float3(_3790, _3791 + 0.3333333432674407958984375f, _3792), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3822, _3822) * _3781);
      _3847 = _3744 + (float4(((_3795.xyz * 4.0f) - 2.0f.xxx) * _3811, _3811) * _3781);
    } else {
      _3844 = _3741;
      _3845 = _3742;
      _3846 = _3743;
      _3847 = _3744;
    }
    float4 _3930;
    float4 _3931;
    float4 _3932;
    float _3933;
    if (_3764 > 0.0f) {
      float3 _3856 = ((_475 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3859 = _9_m109.xyz * 0.5f;
      float3 _3861 = clamp(_3856 - floor(_3856), _3859, 1.0f.xxx - _3859);
      float4 _3865 = _59.SampleLevel(_14, _3861, 0.0f);
      float _3867 = _3764 * (1.0f - _3638);
      float _3871 = _9_m109.y * 0.5f;
      float _3876 = _3861.x;
      float _3877 = clamp(_3861.y, _3871, 1.0f - _3871) * 0.3333333432674407958984375f;
      float _3878 = _3861.z;
      float4 _3881 = _60.SampleLevel(_13, float3(_3876, _3877, _3878), 0.0f);
      float _3897 = _3865.x;
      float _3908 = _3865.y;
      float _3919 = _3865.z;
      _3930 = _3845 + (float4(((_60.SampleLevel(_13, float3(_3876, _3877 + 0.666666686534881591796875f, _3878), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3919, _3919) * _3867);
      _3931 = _3846 + (float4(((_60.SampleLevel(_13, float3(_3876, _3877 + 0.3333333432674407958984375f, _3878), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3908, _3908) * _3867);
      _3932 = _3847 + (float4(((_3881.xyz * 4.0f) - 2.0f.xxx) * _3897, _3897) * _3867);
      _3933 = _3844 + (_3881.w * _3867);
    } else {
      _3930 = _3845;
      _3931 = _3846;
      _3932 = _3847;
      _3933 = _3844;
    }
    float _3936 = clamp((_3933 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _3940 = _3930;
    _3941 = _3931;
    _3942 = _3932;
    _3943 = _3936 - _3638;
    _3944 = (_3936 + _3638) * 0.5f;
  } else {
    _3940 = 0.0f.xxxx;
    _3941 = 0.0f.xxxx;
    _3942 = 0.0f.xxxx;
    _3943 = 0.0f;
    _3944 = 1.0f;
  }
  float4 _3964 = _3942 + float4(_9_m111.x * _3944, (_9_m111.y * _3944) + ((_9_m111.w * _3943) * 0.5f), _9_m111.z * _3944, (_9_m111.w * _3944) + ((_9_m111.y * _3943) * 0.375f));
  float4 _3984 = _3941 + float4(_9_m112.x * _3944, (_9_m112.y * _3944) + ((_9_m112.w * _3943) * 0.5f), _9_m112.z * _3944, (_9_m112.w * _3944) + ((_9_m112.y * _3943) * 0.375f));
  float4 _4004 = _3940 + float4(_9_m113.x * _3944, (_9_m113.y * _3944) + ((_9_m113.w * _3943) * 0.5f), _9_m113.z * _3944, (_9_m113.w * _3944) + ((_9_m113.y * _3943) * 0.375f));
  float4 _4162;
  float4 _4163;
  float4 _4164;
  [branch] if (all(bool2(_463.x >= 0.0f.xx.x, _463.y >= 0.0f.xx.y))) {
    float4 _4012 = _54.SampleLevel(_13, _463, 0.0f);
    float4 _4013 = abs(_4012);
    float4 _4159;
    float4 _4160;
    float4 _4161;
    [branch] if (any(bool4(_4013.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4013.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4013.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4013.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4019 = length(_4012.yzw);
      uint _4021;
      float _4024;
      _4021 = 0u;
      _4024 = 1.0f;
      for (float _4026 = _4019; _4026 > 4.599999904632568359375f;) {
        _4021++;
        _4024 *= 0.5f;
        _4026 *= 0.5f;
        continue;
      }
      float4 _4030 = _4012 * _4024;
      float4 _4035 = float4(0.0f, _4030.yzw);
      float2 _4057 = (_53.SampleLevel(_13, float2(((((length(_4035) * _52_m3.x) + _52_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _52_m2.xy) + _52_m2.zw;
      float4 _4071;
      _4071 = float4(_4057.x * 3.5449078083038330078125f, _4035.yzw * _4057.y) * exp(_4030.x * 0.282094776630401611328125f);
      for (uint _4074 = 0u; _4074 < _4021;) {
        _4071 = mul(float4x4(_4071, float4(_4071.yx, 0.0f, 0.0f), float4(_4071.z, 0.0f, _4071.x, 0.0f), float4(_4071.w, 0.0f, 0.0f, _4071.x)) * 0.282094776630401611328125f, _4071);
        _4074++;
        continue;
      }
      float4x4 _4095 = float4x4(_4071, float4(_4071.yx, 0.0f, 0.0f), float4(_4071.z, 0.0f, _4071.x, 0.0f), float4(_4071.w, 0.0f, 0.0f, _4071.x)) * 0.282094776630401611328125f;
      float4 _4105 = mul(_4095, float4(_3964.w * 1.1283791065216064453125f, _3964.y * (-0.977204978466033935546875f), _3964.z * 0.977204978466033935546875f, _3964.x * (-0.977204978466033935546875f)));
      float4 _4125 = mul(_4095, float4(_3984.w * 1.1283791065216064453125f, _3984.y * (-0.977204978466033935546875f), _3984.z * 0.977204978466033935546875f, _3984.x * (-0.977204978466033935546875f)));
      float4 _4145 = mul(_4095, float4(_4004.w * 1.1283791065216064453125f, _4004.y * (-0.977204978466033935546875f), _4004.z * 0.977204978466033935546875f, _4004.x * (-0.977204978466033935546875f)));
      _4159 = float4(_4105.x * 0.886226952075958251953125f, _4105.w * (-1.02332675457000732421875f), _4105.y * (-1.02332675457000732421875f), _4105.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4160 = float4(_4125.x * 0.886226952075958251953125f, _4125.w * (-1.02332675457000732421875f), _4125.y * (-1.02332675457000732421875f), _4125.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4161 = float4(_4145.x * 0.886226952075958251953125f, _4145.w * (-1.02332675457000732421875f), _4145.y * (-1.02332675457000732421875f), _4145.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4159 = _3964;
      _4160 = _3984;
      _4161 = _4004;
    }
    _4162 = _4159;
    _4163 = _4160;
    _4164 = _4161;
  }
  else {
    _4162 = _3964;
    _4163 = _3984;
    _4164 = _4004;
  }
  float4 _4168 = float4(_442, 1.0f);
  float3 _4173 = max(float3(dot(_4162, _4168), dot(_4163, _4168), dot(_4164, _4168)), 0.0f.xxx);
  float4 _4178 = float4(-_442, 1.0f);
  float3 _4195 = reflect(_503, _442);
  float _4203 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_443, 0.001000000047497451305389404296875f))));
  float2 _4207 = floor(_450 * _27_m0.w);
  float _4224 = floor(_482 - _27_m2.y);
  float _4228 = clamp(_4224, 0.0f, _27_m1.x - 1.0f);
  uint _4238 = (_4224 <= _4228) ? (_24.Load(uint(_9_m21.z + int(_4207.x + (_4207.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_4228)) * 4 + 0)) : 0u;
  float _4241 = dot(float4(_4173, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4243;
  float _4246;
  uint _4248;
  _4243 = 0.0f.xxx;
  _4246 = 1.0f;
  _4248 = _4238;
  uint _4249;
  float3 _4244;
  float _4247;
  bool _4251;
  [loop] for (;;) {
    bool _4250 = _4248 != 0u;
    _4251 = _4246 > 0.00999999977648258209228515625f;
    if (_4250 && _4251) {
      uint _4255 = firstbitlow(_4248);
      _4249 = _4248 ^ (1u << (_4255 & 31u));
      float3 _4275 = float3(dot(_27_m4[_4255]._m2, _479), dot(_27_m4[_4255]._m3, _479), dot(_27_m4[_4255]._m4, _479));
      float3 _4276 = abs(_4275);
      if (all(bool3(_4276.x <= _27_m4[_4255]._m1.xyz.x, _4276.y <= _27_m4[_4255]._m1.xyz.y, _4276.z <= _27_m4[_4255]._m1.xyz.z))) {
        float3 _4285 = _27_m4[_4255]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4287 = _4276 * 0.100000001490116119384765625f;
        float3 _4288 = _4287 * _4287;
        float3 _4291 = (_27_m4[_4255]._m1.xyz - _4276) * _27_m4[_4255]._m5.xyz;
        float3 _4339;
        [branch] if (_27_m4[_4255]._m6.x == 1.0f) {
          float3 _4324 = float3(dot(_27_m4[_4255]._m2.xyz, _4195), dot(_27_m4[_4255]._m3.xyz, _4195), dot(_27_m4[_4255]._m4.xyz, _4195));
          float3 _4326 = (_27_m4[_4255]._m1.xyz - _4275) / _4324;
          float3 _4329 = ((-_27_m4[_4255]._m1.xyz) - _4275) / _4324;
          bool3 _4330 = bool3(_4324.x > 0.0f.xxx.x, _4324.y > 0.0f.xxx.y, _4324.z > 0.0f.xxx.z);
          float3 _4331 = float3(_4330.x ? _4326.x : _4329.x, _4330.y ? _4326.y : _4329.y, _4330.z ? _4326.z : _4329.z);
          _4339 = _4275 + (_4324 * min(min(_4331.x, _4331.y), _4331.z));
        }
        else {
          _4339 = _4195;
        }
        float3 _4340 = normalize(_4339);
        float3 _4343 = float3(int3(sign(_4340)));
        float3 _4346 = _4340 / dot(_4340, _4343).xxx;
        float3 _4360;
        if (_4346.z < 0.0f) {
          float3 _4351 = abs(_4346);
          float2 _4358 = _4343.xy * float2(1.0f - _4351.y, 1.0f - _4351.x);
          _4360 = float3(_4358.x, _4358.y, _4346.z);
        } else {
          _4360 = _4346;
        }
        float _4381 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_4255]._m0, _4168)));
        float _4394 = clamp((min(_4291.x, min(_4291.y, _4291.z)) * _27_m4[_4255]._m6.y) + ((((((_4285 * _4285).x - ((_4288.x + _4288.y) + _4288.z)) * _27_m4[_4255]._m5.x) * _27_m4[_4255]._m5.x) * (1.0f - _27_m4[_4255]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_4255]._m6.w;
        _4244 = _4243 + ((((_22.SampleLevel(_15, float3((((_4360.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_4255]._m1.w), _4203).xyz * _27_m4[_4255]._m5.w) * ((((((clamp(abs(_4241 / _4381), 0.0f, 1.0f) * 2.0f) + _4241) / (2.0f + _4381)) - 1.0f) * _9_m23.w) + 1.0f)) * _4394) * _4246);
        _4247 = _4246 * (1.0f - _4394);
      } else {
        _4244 = _4243;
        _4247 = _4246;
      }
      _4243 = _4244;
      _4246 = _4247;
      _4248 = _4249;
      continue;
    } else {
      break;
    }
  }
  float3 _4459;
  if (_4251) {
    float3 _4402 = normalize(_4195);
    float3 _4405 = float3(int3(sign(_4402)));
    float3 _4408 = _4402 / dot(_4402, _4405).xxx;
    float3 _4422;
    if (_4408.z < 0.0f) {
      float3 _4413 = abs(_4408);
      float2 _4420 = _4405.xy * float2(1.0f - _4413.y, 1.0f - _4413.x);
      _4422 = float3(_4420.x, _4420.y, _4408.z);
    } else {
      _4422 = _4408;
    }
    float _4445 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, _4168)));
    _4459 = _4243 + ((_22.SampleLevel(_15, float3((((_4422.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _4203).xyz * ((((((clamp(abs(_4241 / _4445), 0.0f, 1.0f) * 2.0f) + _4241) / (2.0f + _4445)) - 1.0f) * _9_m23.w) + 1.0f)) * _4246);
  } else {
    _4459 = _4243;
  }
  float3 _4465 = (_4459 * _9_m23.z) * _9_m22.y;
  float3 _4486;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4480 = _20.SampleBias(_13, _4, _9_m16);
    float _4481 = _4480.x;
    _4486 = (_19.SampleBias(_13, _4, _9_m16).xyz * _4481) + (_4465 * (1.0f - _4481));
  }
  else {
    _4486 = _4465;
  }
  float3 _4507 = ((((_4173 * _444) * _9_m22.x) * _3604) + ((_4486 * ((_505 * _520.x) + (clamp(_447 * 4.0f, 0.0f, 1.0f) * _520.y).xxx)) * _3603)) + (((((max(float3(dot(_4162, _4178), dot(_4163, _4178), dot(_4164, _4178)), 0.0f.xxx) * _9_m22.x) * _3604) * (_444 / max(0.00999999977648258209228515625f, max(max(_378.x, _378.y), _378.z)).xxx)) * ((_386 * clamp(dot(_501, _442), 0.0f, 1.0f)) + (float(((_408 & 7u) << 2u) | (uint(_376.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _4509 = float4(_3566.x, _3566.y, _3566.z, _729.w) + float4(_4507.x, _4507.y, _4507.z, 0.0f.xxxx.w);
  float _4527 = _475.y * _9_m46.w;
  float _4532 = max(0.00999999977648258209228515625f, _4527 + _9_m47.w);
  float3 _4546 = exp(_9_m45.xyz * ((-max(0.0f, (_502 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4532)) / _4532) * exp(_4527 + _9_m48.w))));
  float _4549 = dot(_503, _9_m44.xyz);
  float _4555 = _9_m45.w * _9_m45.w;
  float _4559 = (1.0f + _4555) - ((2.0f * _9_m45.w) * _4549);
  float3 _4887;
  float _4888;
  if (_9_m55.z > 0.0f) {
    uint3 _4713 = (uint3(int3(_369, _370, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4714 = _4713.y;
    uint _4715 = _4713.z;
    uint _4718 = _4713.x + (_4714 * _4715);
    uint _4720 = _4714 + (_4715 * _4718);
    uint _4722 = _4715 + (_4718 * _4720);
    uint _4724 = _4718 + (_4720 * _4722);
    float _4748 = dot(_503, -_7_m0[2].xyz);
    float3 _4758 = _475 - _7_m11.xyz;
    float _4760 = (_9_m55.w * ((_4748 > 5.9604644775390625e-08f) ? (1.0f / _4748) : 0.0f)) * (1.0f / _502);
    float _4761 = _4758.y;
    float _4762 = _4760 * _4761;
    float _4764 = _7_m11.y + _4762;
    float _4765 = _4761 - _4762;
    float _4767 = (1.0f - _4760) * _502;
    float _4781 = max(-127.0f, _9_m49.z * _4765);
    float _4805 = max(-127.0f, _9_m52.x * _4765);
    float _4816 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4764 - _9_m49.x)))) * ((abs(_4781) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4781)) / _4781) : (0.693147182464599609375f - (0.2402265071868896484375f * _4781)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4764 - _9_m52.z)))) * ((abs(_4805) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4805)) / _4805) : (0.693147182464599609375f - (0.2402265071868896484375f * _4805))));
    float _4838 = clamp((_502 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4841 = clamp((max(clamp(exp2(-(_4816 * _4767)), 0.0f, 1.0f), _9_m51.w) + clamp((_502 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4838, 0.0f, 1.0f);
    float4 _4881 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_13, float3((_450 + ((((float3(uint3(_4724, _4720 + (_4722 * _4724), _352) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_482 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_482 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _4883 = _4881.w;
    _4887 = _4881.xyz + (((_9_m51.xyz * (1.0f - _4841)) + (((_9_m54.xyz * pow(clamp(dot(_501, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4816 * max(_4767 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4838))) * _4883);
    _4888 = _4883 * _4841;
  } else {
    float3 _4589 = _475 - _7_m11.xyz;
    float _4591 = _4589.y;
    float _4605 = max(-127.0f, _9_m49.z * _4591);
    float _4629 = max(-127.0f, _9_m52.x * _4591);
    float _4640 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4605) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4605)) / _4605) : (0.693147182464599609375f - (0.2402265071868896484375f * _4605)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4629) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4629)) / _4629) : (0.693147182464599609375f - (0.2402265071868896484375f * _4629))));
    float _4662 = clamp((_502 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4665 = clamp((max(clamp(exp2(-(_4640 * _502)), 0.0f, 1.0f), _9_m51.w) + clamp((_502 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4662, 0.0f, 1.0f);
    _4887 = (_9_m51.xyz * (1.0f - _4665)) + (((_9_m54.xyz * pow(clamp(dot(_501, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4640 * max(_502 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4662));
    _4888 = _4665;
  }
  float3 _4891 = _4546 * _4888;
  float3 _4893 = (clamp(_4509.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _4891) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4549 * _4549)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4555) / max((12.56637096405029296875f * _4559) * sqrt(_4559), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4546)) * _4888) + _4887);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _4893 = (_4893 * 0.65f) + (clamp(_4509.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _4895 = float4(_4893.x, _4893.y, _4893.z, _4509.w);
  _4895.w = dot(_4891, 0.3333333432674407958984375f.xxx);
  _5 = _4895;
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

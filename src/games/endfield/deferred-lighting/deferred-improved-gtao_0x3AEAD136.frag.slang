#include "./renodx_injection.hlsli"

// Ported from the native 0x3AEAD136 Vulkan dump.
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

static float _354;
static uint _356;

static const int2 _330[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _331[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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
[[vk::binding(7, 3)]] Texture2D<float4> _19 : register(t7, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _20 : register(t8, space3);
[[vk::binding(22, 3)]] Texture2D<float4> _21 : register(t22, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _22 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _34 : register(t10, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _37 : register(t6, space3);
[[vk::binding(24, 3)]] Texture2D<float4> _38 : register(t24, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _39 : register(t30, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _41 : register(t11, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _42 : register(t28, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _43 : register(t12, space3);
[[vk::binding(14, 3)]] Texture2D<float4> _48 : register(t14, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _49 : register(t13, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _50 : register(t21, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _53 : register(t31, space3);
[[vk::binding(5, 3)]] Texture2D<float4> _54 : register(t5, space3);
[[vk::binding(20, 3)]] Texture3D<float4> _55 : register(t20, space3);
[[vk::binding(17, 3)]] Texture3D<float4> _56 : register(t17, space3);
[[vk::binding(19, 3)]] Texture3D<float4> _57 : register(t19, space3);
[[vk::binding(16, 3)]] Texture3D<float4> _58 : register(t16, space3);
[[vk::binding(18, 3)]] Texture3D<float4> _59 : register(t18, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _60 : register(t15, space3);
[[vk::binding(27, 3)]] Texture2D<float4> _61 : register(t27, space3);
[[vk::binding(26, 3)]] Texture2D<float4> _62 : register(t26, space3);
[[vk::binding(25, 3)]] Texture2D<float4> _63 : register(t25, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _64 : register(t23, space3);

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
  uint2 _370 = uint2(gl_FragCoord.xy);
  int _373 = int(_370.x);
  int _374 = int(_370.y);
  int2 _376 = int3(_373, _374, 0).xy;
  float4 _378 = _61.Load(int3(_376, 0));
  float4 _380 = _62.Load(int3(_376, 0));
  float4 _382 = _63.Load(int3(_376, 0));
  uint _386 = uint(_378.x * 1023.0f);
  float _390 = float((_386 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  float _398 = float(((_386 & 7u) << 2u) | (uint(_378.w * 3.0f) & 3u)) * 0.0322580635547637939453125f;
  uint _402 = uint(round(_378.y * 1023.0f));
  float _407 = float((_402 >> 3u) & 127u) * 0.0078740157186985015869140625f;
  uint _412 = uint(_378.z * 1023.0f);
  float2 _427 = (_380.xy * 2.0f) - 1.0f.xx;
  float _431 = 1.0f - dot(1.0f.xx, abs(_427));
  float3 _433 = float3(_427.x, _431, _427.y);
  float3 _445;
  if (_431 < 0.0f) {
    float2 _440 = _433.xz;
    bool2 _441 = bool2(_440.x >= 0.0f.xx.x, _440.y >= 0.0f.xx.y);
    float2 _443 = (1.0f.xx - abs(_433.zx)) * float2(_441.x ? 1.0f.xx.x : (-1.0f).xx.x, _441.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _445 = float3(_443.x, _433.y, _443.y);
  } else {
    _445 = _433;
  }
  float3 _446 = normalize(_445);
  float _447 = _380.z;
  float3 _448 = _382.xyz;
  float _449 = _382.w;
  float _451 = (float(_402 & 7u) * 0.107142865657806396484375f) + 0.5f;
  float2 _454 = float2(_370);
  float2 _459 = (_454 + 0.5f.xx) * _9_m0.zw;
  float2 _467 = gl_FragCoord.xy * _9_m0.zw;
  float2 _469 = (_467 * 2.0f) - 1.0f.xx;
  float4 _472 = float4(_469, _18.SampleLevel(_12, _459, 0.0f).x, 1.0f);
  _472.y = -_469.y;
  float4 _475 = mul(_7_m6, _472);
  float3 _479 = _475.xyz / _475.w.xxx;
  float4 _483 = float4(_479, 1.0f);
  float _486 = abs(mul(_7_m0, _483).z);
  float3 _501;
  do {
    if (_9_m4.w == 0.0f) {
      _501 = _7_m11.xyz - _479;
      break;
    } else {
      _501 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _502 = dot(_501, _501);
  float _504 = rsqrt(max(_502, 9.9999999392252902907785028219223e-09f));
  float3 _505 = _501 * _504;
  float _506 = _502 * _504;
  float3 _507 = -_505;
  float3 _509 = (0.07999999821186065673828125f * _451).xxx;
  float _510 = dot(_446, _505);
  float _511 = max(0.0f, _510);
  float4 _513 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _447) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _514 = _513.x;
  float2 _524 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_514 * _514, exp2((-9.27999973297119140625f) * _511)) * _514) + _513.y)) + _513.zw;
  float4 _733;
  do {
    [branch] if (_31_m4 == 0) {
      _733 = 0.0f.xxxx;
      break;
    }
    float4 _543 = _42.SampleLevel(_13, _467, 0.0f);
    float _544 = _543.x;
    float4 _548 = _37.Load(int3(_376, 0));
    float _549 = _548.x;
    float4 _732;
    if (_549 > 0.001000000047497451305389404296875f) {
      float3 _559 = reflect(_507, _446);
      float3 _560 = -_29_m0.xyz;
      float _565 = dot(_560, _559);
      float3 _567 = _559 - (_560 * _565);
      bool3 _569 = (_565 < _29_m4.z).xxx;
      float3 _577 = normalize((_560 * _29_m4.z) + ((_567 * rsqrt(max(6.103515625e-05f, dot(_567, _567)))) * _29_m4.y));
      float3 _578 = float3(_569.x ? _577.x : _559.x, _569.y ? _577.y : _559.y, _569.z ? _577.z : _559.z);
      float3 _582 = _578 + _505;
      float3 _586 = _582 * rsqrt(max(6.103515625e-05f, dot(_582, _582)));
      float _587 = dot(_446, _578);
      float _588 = clamp(dot(_578, _446), 0.0f, 1.0f);
      float _590 = clamp(dot(_446, _586), 0.0f, 1.0f);
      float _593 = dot(_505, _578);
      float _595 = clamp(_510, 0.0f, 1.0f);
      float _596 = _447 * _447;
      float _597 = _596 * _596;
      float _618 = (((_590 * _597) - _590) * _590) + 1.0f;
      float _621 = 1.0f - clamp(dot(_505, _586), 0.0f, 1.0f);
      float _622 = _621 * _621;
      float _624 = (_621 * _622) * _622;
      float _648 = 1.0f - _447;
      float _655 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_648 * (1.04997003078460693359375f + (_648 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _648))))));
      float _656 = 1.0f - _655;
      float3 _659 = _509 + ((1.0f.xxx - _509) * 0.0476190485060214996337890625f);
      float _690 = clamp(-_593, 0.0f, 1.0f);
      float _694 = (((_690 * 0.36000001430511474609375f) - _690) * _690) + 1.0f;
      float _695 = _694 * _694;
      float3 _707 = ((min(((_509 * (1.0f - _624)) + _624.xxx) * ((_597 / (_618 * _618)) * (0.5f / (((_588 * sqrt(((((-_595) * _597) + _595) * _595) + _597)) + (_595 * sqrt(((((-_588) * _597) + _588) * _588) + _597))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_659 * (((_41.SampleLevel(_13, (float2(_595, _447) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_588, _447) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _655) / _656)) * _659) / (1.0f.xxx - (_659 * _656)))) * lerp(clamp(_510 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_593, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_593 + 1.0f, 0.0f, 1.0f))) * _407;
      float3 _717 = _29_m1.xyz * (((((_448 * _407) * 1.0f) * (float((_412 >> 3u) & 127u) * 0.0078740157186985015869140625f)) + (clamp(_707 * _29_m4.x, 0.0f.xxx, 1000.0f.xxx) * _588)) + (((((_448 / max(0.00999999977648258209228515625f, max(max(_382.x, _382.y), _382.z)).xxx) * _390) * (clamp(0.5f - _587, 0.0f, 1.0f) * ((0.36000001430511474609375f != _695) ? (0.36000001430511474609375f / _695) : 1.0f))) + (_448 * (clamp(_587 + _398, 0.0f, 1.0f) - clamp(_588, 0.0f, 1.0f)))) * _407));
      float3 _730 = lerp(_717, _717 * _39.SampleBias(_13, float2(_549, 0.5f), _9_m16).xyz, (1.0f - _549).xxx) * lerp(_544, max(_544, _407), _398);
      _732 = float4(_730.x, _730.y, _730.z, 0.0f.xxxx.w);
    } else {
      _732 = 0.0f.xxxx;
    }
    _733 = _732;
    break;
  } while (false);
  float2 _735 = floor(_454 * 0.03125f);
  int _743 = int((_735.x + (_735.y * _31_m9)) * 8.0f);
  float _750 = floor(_486 - (_9_m3.y * _31_m15));
  float _754 = clamp(_750, 0.0f, _31_m11 - 1.0f);
  int _756 = int(_754 * 8.0f);
  float4 _762 = _38.SampleBias(_13, _459, _9_m16);
  float3 _764;
  float _767;
  _764 = 0.0f.xxx;
  _767 = 1.0f;
  float3 _765;
  float _768;
  [loop] for (int _769 = 0; _769 <= 7; _764 = _765, _767 = _768, _769++) {
    uint _790 = (_750 <= _754) ? (_24.Load(uint((_31_m2 + _743) + _769) * 4 + 0) & _24.Load(uint((_31_m3 + _756) + _769) * 4 + 0)) : 0u;
    uint _791 = uint(_769);
    float3 _795;
    _768 = _767;
    _795 = 0.0f.xxx;
    uint _798;
    float _793;
    float3 _796;
    [loop] for (uint _797 = _790; _797 != 0u; _768 = _793, _795 = _796, _797 = _798) {
      uint _802 = firstbitlow(_797);
      _798 = _797 ^ (1u << (_802 & 31u));
      int _808 = int((32u * _791) + _802) * 8;
      int _811 = _808 + 1;
      int _814 = _808 + 2;
      int _817 = _808 + 3;
      int _820 = _808 + 4;
      int _823 = _808 + 5;
      int _826 = _808 + 6;
      int _829 = _808 + 7;
      uint _833 = uint(_29_m6[_823].w);
      float _908;
      if ((_833 & 1u) == 1u) {
        uint _839 = asuint(_29_m6[_823].x);
        uint _846 = asuint(_29_m6[_823].y);
        uint _853 = asuint(_29_m6[_823].z);
        uint _860 = asuint(_29_m6[_826].x);
        uint _867 = asuint(_29_m6[_826].y);
        uint _874 = asuint(_29_m6[_826].z);
        float3 _893 = abs(mul(float4(_479 - _29_m6[_811].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_839).x, spvUnpackHalf2x16(_853).x, spvUnpackHalf2x16(_867).x, 0.0f), float4(spvUnpackHalf2x16(_839 >> 16u).x, spvUnpackHalf2x16(_853 >> 16u).x, spvUnpackHalf2x16(_867 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_846).x, spvUnpackHalf2x16(_860).x, spvUnpackHalf2x16(_874).x, 0.0f), float4(spvUnpackHalf2x16(_846 >> 16u).x, spvUnpackHalf2x16(_860 >> 16u).x, spvUnpackHalf2x16(_874 >> 16u).x, 0.0f))).xyz);
        float _900 = _29_m6[_829].x * 0.5f;
        float _906 = 1.0f - clamp((max(max(_893.x, _893.y), _893.z) - (_900 + 0.5f)) / (0.5f - _900), 0.0f, 1.0f);
        _908 = _906 * _906;
      } else {
        _908 = 1.0f;
      }
      uint _912 = uint(_29_m6[_808].w);
      bool _915 = _29_m6[_817].z > 0.5f;
      if ((false || (_908 < 0.001000000047497451305389404296875f)) || ((_912 < 4u) && _915)) {
        _793 = _768;
        _796 = _795;
        continue;
      }
      float _3565;
      float3 _3566;
      do {
        [branch] if (_912 >= 4u) {
          float3 _2169;
          do {
            float3 _934 = _29_m6[_811].xyz - _479;
            if (dot(_29_m6[_817].xyz, _934) > 0.0f) {
              _2169 = 0.0f.xxx;
              break;
            }
            float _941 = dot(_934, _934) * _29_m6[_811].w;
            float _944 = clamp(1.0f - (_941 * _941), 0.0f, 1.0f);
            float _945 = _944 * _944;
            if (_945 <= 0.0f) {
              _2169 = 0.0f.xxx;
              break;
            }
            float3 _983;
            float _984;
            bool _985;
            float3 _1013;
            float3 _1015;
            float3 _1017;
            float3 _1019;
            float3 _949 = _29_m6[_814].xyz * _29_m6[_814].w;
            float3 _950 = _29_m6[_811].xyz - _949;
            float3 _951 = _29_m6[_820].xyz * _29_m6[_817].w;
            float3 _954 = _29_m6[_811].xyz + _949;
            float2 _964 = (float2(clamp(_447, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_510, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _968 = _48.SampleLevel(_13, _964, 0.0f);
            float4 _972 = _49.SampleLevel(_13, _964, 0.0f);
            float _1367;
            do {
              _983 = _505 - (_446 * dot(_505, _446));
              _984 = dot(_983, _983);
              _985 = _984 > 9.9999997473787516355514526367188e-05f;
              float3 _1008;
              if (_985) {
                _1008 = _983 * rsqrt(_984);
              } else {
                float _989 = _446.z;
                float _991 = (_989 >= 0.0f) ? 1.0f : (-1.0f);
                float _993 = (-1.0f) / (_991 + _989);
                float _995 = _446.x;
                _1008 = float3(1.0f + (((_991 * _993) * _995) * _995), ((_991 * _995) * _446.y) * _993, (-_991) * _995);
              }
              float3x3 _1012 = mul(float3x3(float3(_968.x, 0.0f, _968.z), float3(0.0f, 1.0f, 0.0f), float3(_968.y, 0.0f, _968.w)), float3x3(_1008, cross(_446, _1008), _446));
              _1013 = (_950 - _951) - _479;
              float3 _1014 = mul(_1012, _1013);
              _1015 = (_950 + _951) - _479;
              float3 _1016 = mul(_1012, _1015);
              _1017 = (_954 + _951) - _479;
              float3 _1018 = mul(_1012, _1017);
              _1019 = (_954 - _951) - _479;
              float3 _1020 = mul(_1012, _1019);
              float _1021 = _1014.z;
              float _1024 = _1016.z;
              float _1028 = _1018.z;
              float _1032 = _1020.z;
              int _1036 = (((int(_1021 > 0.0f) | ((_1024 > 0.0f) ? 2 : 0)) | ((_1028 > 0.0f) ? 4 : 0)) | ((_1032 > 0.0f) ? 8 : 0));
              float3 _1273;
              float3 _1274;
              float3 _1275;
              float3 _1276;
              float3 _1277;
              int _1278;
              if (_1036 == 0) {
                _1273 = _1020;
                _1274 = _1018;
                _1275 = _1016;
                _1276 = _1014;
                _1277 = 0.0f.xxx;
                _1278 = 0;
              } else {
                float3 _1267;
                float3 _1268;
                float3 _1269;
                float3 _1270;
                float3 _1271;
                int _1272;
                if (_1036 == 1) {
                  _1267 = _1020;
                  _1268 = (_1014 * (-_1032)) + (_1020 * _1021);
                  _1269 = (_1014 * (-_1024)) + (_1016 * _1021);
                  _1270 = _1014;
                  _1271 = 0.0f.xxx;
                  _1272 = 3;
                } else {
                  float3 _1253;
                  float3 _1254;
                  float3 _1255;
                  float3 _1256;
                  float3 _1257;
                  int _1258;
                  if (_1036 == 2) {
                    _1253 = _1020;
                    _1254 = (_1016 * (-_1028)) + (_1018 * _1024);
                    _1255 = _1016;
                    _1256 = (_1016 * (-_1021)) + (_1014 * _1024);
                    _1257 = 0.0f.xxx;
                    _1258 = 3;
                  } else {
                    float3 _1239;
                    float3 _1240;
                    float3 _1241;
                    float3 _1242;
                    float3 _1243;
                    int _1244;
                    if (_1036 == 3) {
                      _1239 = (_1014 * (-_1032)) + (_1020 * _1021);
                      _1240 = (_1016 * (-_1028)) + (_1018 * _1024);
                      _1241 = _1016;
                      _1242 = _1014;
                      _1243 = 0.0f.xxx;
                      _1244 = 4;
                    } else {
                      float3 _1225;
                      float3 _1226;
                      float3 _1227;
                      float3 _1228;
                      float3 _1229;
                      int _1230;
                      if (_1036 == 4) {
                        _1225 = _1020;
                        _1226 = _1018;
                        _1227 = (_1018 * (-_1024)) + (_1016 * _1028);
                        _1228 = (_1018 * (-_1032)) + (_1020 * _1028);
                        _1229 = 0.0f.xxx;
                        _1230 = 3;
                      } else {
                        float3 _1211;
                        float3 _1212;
                        float3 _1213;
                        float3 _1214;
                        float3 _1215;
                        int _1216;
                        if (_1036 == 5) {
                          _1211 = _1020;
                          _1212 = _1018;
                          _1213 = _1016;
                          _1214 = _1014;
                          _1215 = 0.0f.xxx;
                          _1216 = 0;
                        } else {
                          float3 _1205;
                          float3 _1206;
                          float3 _1207;
                          float3 _1208;
                          float3 _1209;
                          int _1210;
                          if (_1036 == 6) {
                            _1205 = (_1018 * (-_1032)) + (_1020 * _1028);
                            _1206 = _1018;
                            _1207 = _1016;
                            _1208 = (_1016 * (-_1021)) + (_1014 * _1024);
                            _1209 = 0.0f.xxx;
                            _1210 = 4;
                          } else {
                            float3 _1191;
                            float3 _1192;
                            float3 _1193;
                            float3 _1194;
                            float3 _1195;
                            int _1196;
                            if (_1036 == 7) {
                              float _1184 = -_1032;
                              _1191 = (_1018 * _1184) + (_1020 * _1028);
                              _1192 = _1018;
                              _1193 = _1016;
                              _1194 = _1014;
                              _1195 = (_1014 * _1184) + (_1020 * _1021);
                              _1196 = 5;
                            } else {
                              float3 _1178;
                              float3 _1179;
                              float3 _1180;
                              float3 _1181;
                              float3 _1182;
                              int _1183;
                              if (_1036 == 8) {
                                _1178 = _1020;
                                _1179 = _1020;
                                _1180 = (_1020 * (-_1028)) + (_1018 * _1032);
                                _1181 = (_1020 * (-_1021)) + (_1014 * _1032);
                                _1182 = 0.0f.xxx;
                                _1183 = 3;
                              } else {
                                float3 _1164;
                                float3 _1165;
                                float3 _1166;
                                float3 _1167;
                                float3 _1168;
                                int _1169;
                                if (_1036 == 9) {
                                  _1164 = _1020;
                                  _1165 = (_1020 * (-_1028)) + (_1018 * _1032);
                                  _1166 = (_1014 * (-_1024)) + (_1016 * _1021);
                                  _1167 = _1014;
                                  _1168 = 0.0f.xxx;
                                  _1169 = 4;
                                } else {
                                  float3 _1150;
                                  float3 _1151;
                                  float3 _1152;
                                  float3 _1153;
                                  float3 _1154;
                                  int _1155;
                                  if (_1036 == 10) {
                                    _1150 = _1020;
                                    _1151 = _1018;
                                    _1152 = _1016;
                                    _1153 = _1014;
                                    _1154 = 0.0f.xxx;
                                    _1155 = 0;
                                  } else {
                                    float3 _1144;
                                    float3 _1145;
                                    float3 _1146;
                                    float3 _1147;
                                    float3 _1148;
                                    int _1149;
                                    if (_1036 == 11) {
                                      float _1137 = -_1028;
                                      _1144 = (_1020 * _1137) + (_1018 * _1032);
                                      _1145 = (_1016 * _1137) + (_1018 * _1024);
                                      _1146 = _1016;
                                      _1147 = _1014;
                                      _1148 = _1020;
                                      _1149 = 5;
                                    } else {
                                      float3 _1131;
                                      float3 _1132;
                                      float3 _1133;
                                      float3 _1134;
                                      float3 _1135;
                                      int _1136;
                                      if (_1036 == 12) {
                                        _1131 = _1020;
                                        _1132 = _1018;
                                        _1133 = (_1018 * (-_1024)) + (_1016 * _1028);
                                        _1134 = (_1020 * (-_1021)) + (_1014 * _1032);
                                        _1135 = 0.0f.xxx;
                                        _1136 = 4;
                                      } else {
                                        bool _1089 = _1036 == 13;
                                        float3 _1116;
                                        float3 _1117;
                                        float3 _1118;
                                        float3 _1119;
                                        int _1120;
                                        if (_1089) {
                                          float _1109 = -_1024;
                                          _1116 = (_1018 * _1109) + (_1016 * _1028);
                                          _1117 = (_1014 * _1109) + (_1016 * _1021);
                                          _1118 = _1014;
                                          _1119 = _1020;
                                          _1120 = 5;
                                        } else {
                                          float3 _1106;
                                          float3 _1107;
                                          int _1108;
                                          if (_1036 == 14) {
                                            float _1099 = -_1021;
                                            _1106 = (_1016 * _1099) + (_1014 * _1024);
                                            _1107 = (_1020 * _1099) + (_1014 * _1032);
                                            _1108 = 5;
                                          } else {
                                            _1106 = _1014;
                                            _1107 = 0.0f.xxx;
                                            _1108 = (_1036 == 15) ? 4 : 0;
                                          }
                                          _1116 = _1018;
                                          _1117 = _1016;
                                          _1118 = _1106;
                                          _1119 = _1107;
                                          _1120 = _1108;
                                        }
                                        bool3 _1121 = _1089.xxx;
                                        _1131 = float3(_1121.x ? _1018.x : _1020.x, _1121.y ? _1018.y : _1020.y, _1121.z ? _1018.z : _1020.z);
                                        _1132 = _1116;
                                        _1133 = _1117;
                                        _1134 = _1118;
                                        _1135 = _1119;
                                        _1136 = _1120;
                                      }
                                      _1144 = _1131;
                                      _1145 = _1132;
                                      _1146 = _1133;
                                      _1147 = _1134;
                                      _1148 = _1135;
                                      _1149 = _1136;
                                    }
                                    _1150 = _1144;
                                    _1151 = _1145;
                                    _1152 = _1146;
                                    _1153 = _1147;
                                    _1154 = _1148;
                                    _1155 = _1149;
                                  }
                                  _1164 = _1150;
                                  _1165 = _1151;
                                  _1166 = _1152;
                                  _1167 = _1153;
                                  _1168 = _1154;
                                  _1169 = _1155;
                                }
                                _1178 = _1164;
                                _1179 = _1165;
                                _1180 = _1166;
                                _1181 = _1167;
                                _1182 = _1168;
                                _1183 = _1169;
                              }
                              _1191 = _1178;
                              _1192 = _1179;
                              _1193 = _1180;
                              _1194 = _1181;
                              _1195 = _1182;
                              _1196 = _1183;
                            }
                            _1205 = _1191;
                            _1206 = _1192;
                            _1207 = _1193;
                            _1208 = _1194;
                            _1209 = _1195;
                            _1210 = _1196;
                          }
                          _1211 = _1205;
                          _1212 = _1206;
                          _1213 = _1207;
                          _1214 = _1208;
                          _1215 = _1209;
                          _1216 = _1210;
                        }
                        _1225 = _1211;
                        _1226 = _1212;
                        _1227 = _1213;
                        _1228 = _1214;
                        _1229 = _1215;
                        _1230 = _1216;
                      }
                      _1239 = _1225;
                      _1240 = _1226;
                      _1241 = _1227;
                      _1242 = _1228;
                      _1243 = _1229;
                      _1244 = _1230;
                    }
                    _1253 = _1239;
                    _1254 = _1240;
                    _1255 = _1241;
                    _1256 = _1242;
                    _1257 = _1243;
                    _1258 = _1244;
                  }
                  _1267 = _1253;
                  _1268 = _1254;
                  _1269 = _1255;
                  _1270 = _1256;
                  _1271 = _1257;
                  _1272 = _1258;
                }
                _1273 = _1267;
                _1274 = _1268;
                _1275 = _1269;
                _1276 = _1270;
                _1277 = _1271;
                _1278 = _1272;
              }
              bool3 _1280 = (_1278 == 3).xxx;
              bool3 _1283 = (_1278 == 4).xxx;
              if (_1278 == 0) {
                _1367 = 0.0f;
                break;
              }
              float3 _1288 = normalize(_1276);
              float3 _1289 = normalize(_1275);
              float3 _1290 = normalize(_1274);
              float3 _1291 = normalize(float3(_1280.x ? _1276.x : _1273.x, _1280.y ? _1276.y : _1273.y, _1280.z ? _1276.z : _1273.z));
              float3 _1292 = normalize(float3(_1283.x ? _1276.x : _1277.x, _1283.y ? _1276.y : _1277.y, _1283.z ? _1276.z : _1277.z));
              float _1294 = clamp(dot(_1288, _1289), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1298 = sqrt(1.0f - (_1294 * _1294));
              float _1306 = clamp(dot(_1289, _1290), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1310 = sqrt(1.0f - (_1306 * _1306));
              float _1319 = clamp(dot(_1290, _1291), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1323 = sqrt(1.0f - (_1319 * _1319));
              float _1330 = ((cross(_1288, _1289).z * ((_1298 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1294) / _1298))) + (cross(_1289, _1290).z * ((_1310 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1306) / _1310)))) + (cross(_1290, _1291).z * ((_1323 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1319) / _1323)));
              float _1347;
              if (_1278 >= 4) {
                float _1335 = clamp(dot(_1291, _1292), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1339 = sqrt(1.0f - (_1335 * _1335));
                _1347 = _1330 + (cross(_1291, _1292).z * ((_1339 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1335) / _1339)));
              } else {
                _1347 = _1330;
              }
              float _1364;
              if (_1278 == 5) {
                float _1352 = clamp(dot(_1292, _1288), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1356 = sqrt(1.0f - (_1352 * _1352));
                _1364 = _1347 + (cross(_1292, _1288).z * ((_1356 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1352) / _1356)));
              } else {
                _1364 = _1347;
              }
              _1367 = max(_1364, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _1755;
            do {
              float3 _1401;
              if (_985) {
                _1401 = _983 * rsqrt(_984);
              } else {
                float _1382 = _446.z;
                float _1384 = (_1382 >= 0.0f) ? 1.0f : (-1.0f);
                float _1386 = (-1.0f) / (_1384 + _1382);
                float _1388 = _446.x;
                _1401 = float3(1.0f + (((_1384 * _1386) * _1388) * _1388), ((_1384 * _1388) * _446.y) * _1386, (-_1384) * _1388);
              }
              float3x3 _1404 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1401, cross(_446, _1401), _446));
              float3 _1405 = mul(_1404, _1013);
              float3 _1406 = mul(_1404, _1015);
              float3 _1407 = mul(_1404, _1017);
              float3 _1408 = mul(_1404, _1019);
              float _1409 = _1405.z;
              float _1412 = _1406.z;
              float _1416 = _1407.z;
              float _1420 = _1408.z;
              int _1424 = (((int(_1409 > 0.0f) | ((_1412 > 0.0f) ? 2 : 0)) | ((_1416 > 0.0f) ? 4 : 0)) | ((_1420 > 0.0f) ? 8 : 0));
              float3 _1661;
              float3 _1662;
              float3 _1663;
              float3 _1664;
              float3 _1665;
              int _1666;
              if (_1424 == 0) {
                _1661 = _1408;
                _1662 = _1407;
                _1663 = _1406;
                _1664 = _1405;
                _1665 = 0.0f.xxx;
                _1666 = 0;
              } else {
                float3 _1655;
                float3 _1656;
                float3 _1657;
                float3 _1658;
                float3 _1659;
                int _1660;
                if (_1424 == 1) {
                  _1655 = _1408;
                  _1656 = (_1405 * (-_1420)) + (_1408 * _1409);
                  _1657 = (_1405 * (-_1412)) + (_1406 * _1409);
                  _1658 = _1405;
                  _1659 = 0.0f.xxx;
                  _1660 = 3;
                } else {
                  float3 _1641;
                  float3 _1642;
                  float3 _1643;
                  float3 _1644;
                  float3 _1645;
                  int _1646;
                  if (_1424 == 2) {
                    _1641 = _1408;
                    _1642 = (_1406 * (-_1416)) + (_1407 * _1412);
                    _1643 = _1406;
                    _1644 = (_1406 * (-_1409)) + (_1405 * _1412);
                    _1645 = 0.0f.xxx;
                    _1646 = 3;
                  } else {
                    float3 _1627;
                    float3 _1628;
                    float3 _1629;
                    float3 _1630;
                    float3 _1631;
                    int _1632;
                    if (_1424 == 3) {
                      _1627 = (_1405 * (-_1420)) + (_1408 * _1409);
                      _1628 = (_1406 * (-_1416)) + (_1407 * _1412);
                      _1629 = _1406;
                      _1630 = _1405;
                      _1631 = 0.0f.xxx;
                      _1632 = 4;
                    } else {
                      float3 _1613;
                      float3 _1614;
                      float3 _1615;
                      float3 _1616;
                      float3 _1617;
                      int _1618;
                      if (_1424 == 4) {
                        _1613 = _1408;
                        _1614 = _1407;
                        _1615 = (_1407 * (-_1412)) + (_1406 * _1416);
                        _1616 = (_1407 * (-_1420)) + (_1408 * _1416);
                        _1617 = 0.0f.xxx;
                        _1618 = 3;
                      } else {
                        float3 _1599;
                        float3 _1600;
                        float3 _1601;
                        float3 _1602;
                        float3 _1603;
                        int _1604;
                        if (_1424 == 5) {
                          _1599 = _1408;
                          _1600 = _1407;
                          _1601 = _1406;
                          _1602 = _1405;
                          _1603 = 0.0f.xxx;
                          _1604 = 0;
                        } else {
                          float3 _1593;
                          float3 _1594;
                          float3 _1595;
                          float3 _1596;
                          float3 _1597;
                          int _1598;
                          if (_1424 == 6) {
                            _1593 = (_1407 * (-_1420)) + (_1408 * _1416);
                            _1594 = _1407;
                            _1595 = _1406;
                            _1596 = (_1406 * (-_1409)) + (_1405 * _1412);
                            _1597 = 0.0f.xxx;
                            _1598 = 4;
                          } else {
                            float3 _1579;
                            float3 _1580;
                            float3 _1581;
                            float3 _1582;
                            float3 _1583;
                            int _1584;
                            if (_1424 == 7) {
                              float _1572 = -_1420;
                              _1579 = (_1407 * _1572) + (_1408 * _1416);
                              _1580 = _1407;
                              _1581 = _1406;
                              _1582 = _1405;
                              _1583 = (_1405 * _1572) + (_1408 * _1409);
                              _1584 = 5;
                            } else {
                              float3 _1566;
                              float3 _1567;
                              float3 _1568;
                              float3 _1569;
                              float3 _1570;
                              int _1571;
                              if (_1424 == 8) {
                                _1566 = _1408;
                                _1567 = _1408;
                                _1568 = (_1408 * (-_1416)) + (_1407 * _1420);
                                _1569 = (_1408 * (-_1409)) + (_1405 * _1420);
                                _1570 = 0.0f.xxx;
                                _1571 = 3;
                              } else {
                                float3 _1552;
                                float3 _1553;
                                float3 _1554;
                                float3 _1555;
                                float3 _1556;
                                int _1557;
                                if (_1424 == 9) {
                                  _1552 = _1408;
                                  _1553 = (_1408 * (-_1416)) + (_1407 * _1420);
                                  _1554 = (_1405 * (-_1412)) + (_1406 * _1409);
                                  _1555 = _1405;
                                  _1556 = 0.0f.xxx;
                                  _1557 = 4;
                                } else {
                                  float3 _1538;
                                  float3 _1539;
                                  float3 _1540;
                                  float3 _1541;
                                  float3 _1542;
                                  int _1543;
                                  if (_1424 == 10) {
                                    _1538 = _1408;
                                    _1539 = _1407;
                                    _1540 = _1406;
                                    _1541 = _1405;
                                    _1542 = 0.0f.xxx;
                                    _1543 = 0;
                                  } else {
                                    float3 _1532;
                                    float3 _1533;
                                    float3 _1534;
                                    float3 _1535;
                                    float3 _1536;
                                    int _1537;
                                    if (_1424 == 11) {
                                      float _1525 = -_1416;
                                      _1532 = (_1408 * _1525) + (_1407 * _1420);
                                      _1533 = (_1406 * _1525) + (_1407 * _1412);
                                      _1534 = _1406;
                                      _1535 = _1405;
                                      _1536 = _1408;
                                      _1537 = 5;
                                    } else {
                                      float3 _1519;
                                      float3 _1520;
                                      float3 _1521;
                                      float3 _1522;
                                      float3 _1523;
                                      int _1524;
                                      if (_1424 == 12) {
                                        _1519 = _1408;
                                        _1520 = _1407;
                                        _1521 = (_1407 * (-_1412)) + (_1406 * _1416);
                                        _1522 = (_1408 * (-_1409)) + (_1405 * _1420);
                                        _1523 = 0.0f.xxx;
                                        _1524 = 4;
                                      } else {
                                        bool _1477 = _1424 == 13;
                                        float3 _1504;
                                        float3 _1505;
                                        float3 _1506;
                                        float3 _1507;
                                        int _1508;
                                        if (_1477) {
                                          float _1497 = -_1412;
                                          _1504 = (_1407 * _1497) + (_1406 * _1416);
                                          _1505 = (_1405 * _1497) + (_1406 * _1409);
                                          _1506 = _1405;
                                          _1507 = _1408;
                                          _1508 = 5;
                                        } else {
                                          float3 _1494;
                                          float3 _1495;
                                          int _1496;
                                          if (_1424 == 14) {
                                            float _1487 = -_1409;
                                            _1494 = (_1406 * _1487) + (_1405 * _1412);
                                            _1495 = (_1408 * _1487) + (_1405 * _1420);
                                            _1496 = 5;
                                          } else {
                                            _1494 = _1405;
                                            _1495 = 0.0f.xxx;
                                            _1496 = (_1424 == 15) ? 4 : 0;
                                          }
                                          _1504 = _1407;
                                          _1505 = _1406;
                                          _1506 = _1494;
                                          _1507 = _1495;
                                          _1508 = _1496;
                                        }
                                        bool3 _1509 = _1477.xxx;
                                        _1519 = float3(_1509.x ? _1407.x : _1408.x, _1509.y ? _1407.y : _1408.y, _1509.z ? _1407.z : _1408.z);
                                        _1520 = _1504;
                                        _1521 = _1505;
                                        _1522 = _1506;
                                        _1523 = _1507;
                                        _1524 = _1508;
                                      }
                                      _1532 = _1519;
                                      _1533 = _1520;
                                      _1534 = _1521;
                                      _1535 = _1522;
                                      _1536 = _1523;
                                      _1537 = _1524;
                                    }
                                    _1538 = _1532;
                                    _1539 = _1533;
                                    _1540 = _1534;
                                    _1541 = _1535;
                                    _1542 = _1536;
                                    _1543 = _1537;
                                  }
                                  _1552 = _1538;
                                  _1553 = _1539;
                                  _1554 = _1540;
                                  _1555 = _1541;
                                  _1556 = _1542;
                                  _1557 = _1543;
                                }
                                _1566 = _1552;
                                _1567 = _1553;
                                _1568 = _1554;
                                _1569 = _1555;
                                _1570 = _1556;
                                _1571 = _1557;
                              }
                              _1579 = _1566;
                              _1580 = _1567;
                              _1581 = _1568;
                              _1582 = _1569;
                              _1583 = _1570;
                              _1584 = _1571;
                            }
                            _1593 = _1579;
                            _1594 = _1580;
                            _1595 = _1581;
                            _1596 = _1582;
                            _1597 = _1583;
                            _1598 = _1584;
                          }
                          _1599 = _1593;
                          _1600 = _1594;
                          _1601 = _1595;
                          _1602 = _1596;
                          _1603 = _1597;
                          _1604 = _1598;
                        }
                        _1613 = _1599;
                        _1614 = _1600;
                        _1615 = _1601;
                        _1616 = _1602;
                        _1617 = _1603;
                        _1618 = _1604;
                      }
                      _1627 = _1613;
                      _1628 = _1614;
                      _1629 = _1615;
                      _1630 = _1616;
                      _1631 = _1617;
                      _1632 = _1618;
                    }
                    _1641 = _1627;
                    _1642 = _1628;
                    _1643 = _1629;
                    _1644 = _1630;
                    _1645 = _1631;
                    _1646 = _1632;
                  }
                  _1655 = _1641;
                  _1656 = _1642;
                  _1657 = _1643;
                  _1658 = _1644;
                  _1659 = _1645;
                  _1660 = _1646;
                }
                _1661 = _1655;
                _1662 = _1656;
                _1663 = _1657;
                _1664 = _1658;
                _1665 = _1659;
                _1666 = _1660;
              }
              bool3 _1668 = (_1666 == 3).xxx;
              bool3 _1671 = (_1666 == 4).xxx;
              if (_1666 == 0) {
                _1755 = 0.0f;
                break;
              }
              float3 _1676 = normalize(_1664);
              float3 _1677 = normalize(_1663);
              float3 _1678 = normalize(_1662);
              float3 _1679 = normalize(float3(_1668.x ? _1664.x : _1661.x, _1668.y ? _1664.y : _1661.y, _1668.z ? _1664.z : _1661.z));
              float3 _1680 = normalize(float3(_1671.x ? _1664.x : _1665.x, _1671.y ? _1664.y : _1665.y, _1671.z ? _1664.z : _1665.z));
              float _1682 = clamp(dot(_1676, _1677), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1686 = sqrt(1.0f - (_1682 * _1682));
              float _1694 = clamp(dot(_1677, _1678), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1698 = sqrt(1.0f - (_1694 * _1694));
              float _1707 = clamp(dot(_1678, _1679), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1711 = sqrt(1.0f - (_1707 * _1707));
              float _1718 = ((cross(_1676, _1677).z * ((_1686 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1682) / _1686))) + (cross(_1677, _1678).z * ((_1698 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1694) / _1698)))) + (cross(_1678, _1679).z * ((_1711 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1707) / _1711)));
              float _1735;
              if (_1666 >= 4) {
                float _1723 = clamp(dot(_1679, _1680), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1727 = sqrt(1.0f - (_1723 * _1723));
                _1735 = _1718 + (cross(_1679, _1680).z * ((_1727 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1723) / _1727)));
              } else {
                _1735 = _1718;
              }
              float _1752;
              if (_1666 == 5) {
                float _1740 = clamp(dot(_1680, _1676), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1744 = sqrt(1.0f - (_1740 * _1740));
                _1752 = _1735 + (cross(_1680, _1676).z * ((_1744 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1740) / _1744)));
              } else {
                _1752 = _1735;
              }
              _1755 = max(_1752, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _1758 = (_833 & 2u) != 0u;
            uint _1762 = asuint(_29_m6[_820].w);
            uint _1763 = asuint(_29_m6[_826].w);
            float3 _1764 = _479 - _29_m6[_811].xyz;
            float3 _1765 = abs(_1764);
            float _1766 = _1765.x;
            float _1767 = _1765.y;
            float _1769 = _1765.z;
            int _1802;
            if ((_1766 > _1767) && (_1766 > _1769)) {
              _1802 = int((_1764.x > 0.0f) ? (_1762 & 1023u) : ((_1762 >> 10u) & 1023u));
            } else {
              int _1794;
              if (_1767 > _1769) {
                _1794 = int((_1764.y > 0.0f) ? ((_1762 >> 20u) & 1023u) : (_1763 & 1023u));
              } else {
                _1794 = int((_1764.z > 0.0f) ? ((_1763 >> 10u) & 1023u) : ((_1763 >> 20u) & 1023u));
              }
              _1802 = _1794;
            }
            int _1805 = _1758 ? int(_29_m6[_820].w) : ((_1802 == 1023) ? (-1) : _1802);
            uint _1814 = uint(_1805);
            uint _1816 = asuint(_33_m11.x) + (_1814 * 96u);
            uint _1818 = (_1816 + 64u) >> 2u;
            uint _1821 = _1818 + 1u;
            uint _1824 = _1818 + 2u;
            uint _1827 = _1818 + 3u;
            float4 _1831 = asfloat(uint4(_36.Load(_1818 * 4 + 0), _36.Load(_1821 * 4 + 0), _36.Load(_1824 * 4 + 0), _36.Load(_1827 * 4 + 0)));
            float _2163;
            do {
              uint _1847 = ((asuint(_33_m11.y) + (_1814 * 16u)) >> 2u) + 1u;
              if (_36.Load(_1847 * 4 + 0) > 0u) {
                float4 _366 = _762;
                float _1862;
                do {
                  if (_36.Load(_1847 * 4 + 0) == 0u) {
                    _1862 = 1.0f;
                    break;
                  }
                  _1862 = _366[_36.Load(_1847 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2163 = _1862;
                break;
              }
              uint _1863 = _1816 >> 2u;
              uint _1878 = (_1816 + 16u) >> 2u;
              uint _1893 = (_1816 + 32u) >> 2u;
              uint _1908 = (_1816 + 48u) >> 2u;
              float4 _1928 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_1863 * 4 + 0), _36.Load((_1863 + 1u) * 4 + 0), _36.Load((_1863 + 2u) * 4 + 0), _36.Load((_1863 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1878 * 4 + 0), _36.Load((_1878 + 1u) * 4 + 0), _36.Load((_1878 + 2u) * 4 + 0), _36.Load((_1878 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1893 * 4 + 0), _36.Load((_1893 + 1u) * 4 + 0), _36.Load((_1893 + 2u) * 4 + 0), _36.Load((_1893 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_1908 * 4 + 0), _36.Load((_1908 + 1u) * 4 + 0), _36.Load((_1908 + 2u) * 4 + 0), _36.Load((_1908 + 3u) * 4 + 0))))), float4((_479 - ((_1764 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1764, _1764)))) * _1831.x)) + (_446 * (_1831.y * 5.0f)), 1.0f));
              float3 _1932 = _1928.xyz / _1928.w.xxx;
              uint _1934 = (_1816 + 80u) >> 2u;
              float4 _1947 = asfloat(uint4(_36.Load(_1934 * 4 + 0), _36.Load((_1934 + 1u) * 4 + 0), _36.Load((_1934 + 2u) * 4 + 0), _36.Load((_1934 + 3u) * 4 + 0)));
              float2 _1948 = _1932.xy;
              float2 _1950 = _1947.xy;
              float3 _1954 = _1932.xyz;
              bool3 _1955 = bool3(_1954.x <= 0.0f.xxx.x, _1954.y <= 0.0f.xxx.y, _1954.z <= 0.0f.xxx.z);
              bool3 _1956 = bool3(_1954.x >= 1.0f.xxx.x, _1954.y >= 1.0f.xxx.y, _1954.z >= 1.0f.xxx.z);
              float _1959 = _1932.z;
              float2 _1970 = ((_1948 * (_1947.zw - _1950)) + _1950).xy * _33_m10.zw;
              float2 _1972 = floor(_1970 + 0.5f.xx);
              float2 _1973 = _1970 - _1972;
              float _1974 = _1973.x;
              float _1975 = _1974 + 0.5f;
              float _1976 = _1975 * _1975;
              float _1979 = 1.0f - _1974;
              float _1980 = min(_1974, 0.0f);
              float _1983 = _1974 + 1.0f;
              float _1984 = max(_1974, 0.0f);
              float _1995 = _1973.y;
              float _1996 = _1995 + 0.5f;
              float _1997 = _1996 * _1996;
              float _2000 = 1.0f - _1995;
              float _2001 = min(_1995, 0.0f);
              float _2004 = _1995 + 1.0f;
              float _2005 = max(_1995, 0.0f);
              float3 _2017 = float3(0.1599999964237213134765625f * _1979, 0.1599999964237213134765625f * ((_1983 - (_1984 * _1984)) + 1.0f), _1976 * 0.07999999821186065673828125f);
              float3 _2018 = float3(0.1599999964237213134765625f * ((_1976 * 0.5f) - _1974), 0.1599999964237213134765625f * ((_1979 - (_1980 * _1980)) + 1.0f), 0.1599999964237213134765625f * _1983) + _2017;
              float3 _2020 = float3(0.1599999964237213134765625f * _2000, 0.1599999964237213134765625f * ((_2004 - (_2005 * _2005)) + 1.0f), _1997 * 0.07999999821186065673828125f);
              float3 _2021 = float3(0.1599999964237213134765625f * ((_1997 * 0.5f) - _1995), 0.1599999964237213134765625f * ((_2000 - (_2001 * _2001)) + 1.0f), 0.1599999964237213134765625f * _2004) + _2020;
              float3 _2027 = ((_2017 / _2018) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _2029 = ((_2020 / _2021) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _2031 = _1972 * _33_m10.xy;
              float _2032 = _2027.x;
              float _2033 = _2029.x;
              float _2036 = _2027.y;
              float _2039 = _2027.z;
              float _2042 = _2029.y;
              float _2049 = _2029.z;
              float _2056 = _2018.x;
              float _2057 = _2021.x;
              float _2059 = _2018.y;
              float _2061 = _2018.z;
              float _2063 = _2021.y;
              float _2067 = _2021.z;
              float _2125 = (((((((_2056 * _2057) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2032, _2033), _354).xy, _1959)) + ((_2059 * _2057) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2036, _2033), _354).xy, _1959))) + ((_2061 * _2057) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2039, _2033), _354).xy, _1959))) + ((_2056 * _2063) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2032, _2042), _354).xy, _1959))) + ((_2059 * _2063) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2036, _2042), _354).xy, _1959))) + ((_2061 * _2063) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2039, _2042), _354).xy, _1959))) + ((_2056 * _2067) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2032, _2049), _354).xy, _1959));
              float4 _2148 = asfloat(uint4(_36.Load(_1818 * 4 + 0), _36.Load(_1821 * 4 + 0), _36.Load(_1824 * 4 + 0), _36.Load(_1827 * 4 + 0)));
              float _2149 = _2148.w;
              float2 _2151 = min(_1948, 1.0f.xx - _1948);
              _2163 = lerp(1.0f, (any(bool3(_1955.x || _1956.x, _1955.y || _1956.y, _1955.z || _1956.z)) || ((asuint(_1959) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2125 + ((_2059 * _2067) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2036, _2049), _354).xy, _1959))) + ((_2061 * _2067) * _34.SampleCmpLevelZero(_16, float3(_2031 + float2(_2039, _2049), _354).xy, _1959))), _1758 ? min(_2149, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2148.z - _1928.w) * 0.25f, min(_2151.x, _2151.y)))) : _2149);
              break;
            } while (false);
            _2169 = ((_29_m6[_808].xyz * (((((_509 * _972.x) + ((1.0f.xxx - _509) * _972.y)) * _1367) * _29_m6[_829].z) + (_448 * _1755))) * _945) * ((_1805 >= 0) ? _2163 : 1.0f);
            break;
          } while (false);
          _3565 = _768;
          _3566 = _2169 * _908;
          break;
        }
        float _3563;
        float3 _3564;
        if (_29_m6[_808].w < 1.5f) {
          float3 _2774 = float3(0.100000001490116119384765625f, _447, 1.0f);
          float _2783 = (0.5f + (0.5f * _29_m6[_814].y)) - abs(_29_m6[_814].x);
          float _2784 = _29_m6[_814].y - _2783;
          float _2791 = abs(max((1.0f - abs(_2783)) - abs(_2784), 0.00048828125f));
          float3 _2795 = normalize(float3(_2783, _2784, (_29_m6[_814].x >= 0.0f) ? _2791 : (-_2791)));
          float3 _2796 = _29_m6[_811].xyz - _479;
          float _2797 = dot(_2796, _2796);
          float _2798 = rsqrt(_2797);
          float3 _2799 = _2796 * _2798;
          float _2803 = clamp(_29_m6[_829].y * _2798, 0.0f, 1.0f);
          int _2808 = int(_29_m6[_829].w);
          float3 _2809 = _2795 * _29_m6[_814].z;
          float3 _2810 = _2809 * 0.5f;
          float3 _2811 = _2796 - _2810;
          float3 _2812 = _2796 + _2810;
          bool _2814 = (_912 & 1u) == 0u;
          bool _2817 = _2814 || ((_833 & 2u) != 0u);
          bool _2820 = (!_2814) && (_29_m6[_814].z > 0.0f);
          float _2839;
          float _2840;
          if (_2820) {
            float _2824 = length(_2811);
            float _2825 = length(_2812);
            _2839 = clamp(0.5f * ((dot(_446, _2811) / _2824) + (dot(_446, _2812) / _2825)), 0.0f, 1.0f);
            _2840 = 1.0f / ((((_2824 * _2825) + dot(_2811, _2812)) * 0.5f) + 1.0f);
          } else {
            _2839 = clamp(dot(_446, _2799), 0.0f, 1.0f);
            _2840 = 1.0f;
          }
          float _2862;
          if (_29_m6[_826].w < 0.0f) {
            float _2856 = _2797 * (_29_m6[_811].w * _29_m6[_811].w);
            float _2859 = clamp(1.0f - (_2856 * _2856), 0.0f, 1.0f);
            _2862 = lerp(1.0f / (_2797 + 1.0f), _2840, float(_2820)) * (_2859 * _2859);
          } else {
            float3 _2845 = _2796 * _29_m6[_811].w;
            _2862 = _2840 * pow(1.0f - clamp(dot(_2845, _2845), 0.0f, 1.0f), _29_m6[_826].w);
          }
          float _2868 = clamp((dot(_2799, -_2795) - _29_m6[_814].z) * _29_m6[_814].w, 0.0f, 1.0f);
          float _2872 = _2862 * lerp(1.0f, _2868 * _2868, float(_2814));
          float _2972;
          if ((!_2820) && (_2808 >= 0)) {
            uint _2878 = uint(_2808);
            float2 _2965;
            [branch] if (_2814) {
              float4 _2955 = mul(_45_m1[_2878], _483);
              _2965 = _45_m0[_2878].xy + (clamp(_2955.xy / _2955.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2878].zw);
            }
            else {
              float3 _2892 = mul(float4(-_2796, 0.0f), _45_m1[_2878]).xyz;
              float3 _361 = _2892;
              float3 _360 = _2892;
              float3 _359 = abs(_2892);
              uint _2901 = uint(int(_359.y > _359.x));
              uint _2907 = (_359.z > _359[_2901]) ? 2u : _2901;
              uint _2913 = (_2907 * 2u) + uint(_360[_2907] < 0.0f);
              float _2917 = abs(_361[_2913 / 2u]);
              float _2937 = 0.5f - (0.000244140625f / _45_m0[_2878].w);
              _2965 = _45_m0[_2878].xy + (clamp(float2((float(_2913) + ((((_361[uint(_330[_2913].x)] * _331[_2913].x) / _2917) * _2937) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_361[uint(_330[_2913].y)] * _331[_2913].y) / _2917) * _2937)), 0.0f.xx, 1.0f.xx) * _45_m0[_2878].zw);
            }
            _2972 = _2872 * _43.SampleLevel(_13, _2965, 0.0f).x;
          } else {
            _2972 = _2872;
          }
          bool _2973 = _2972 > 0.0f;
          float _3382;
          if (_2973) {
            int _3026;
            if (_2817) {
              _3026 = int(_29_m6[_817].x);
            } else {
              uint _2981 = asuint(_29_m6[_814].w);
              uint _2982 = asuint(_29_m6[_817].x);
              float3 _2983 = _479 - _29_m6[_811].xyz;
              float3 _2984 = abs(_2983);
              float _2985 = _2984.x;
              float _2986 = _2984.y;
              float _2988 = _2984.z;
              int _3021;
              if ((_2985 > _2986) && (_2985 > _2988)) {
                _3021 = int((_2983.x > 0.0f) ? (_2981 & 1023u) : ((_2981 >> 10u) & 1023u));
              } else {
                int _3013;
                if (_2986 > _2988) {
                  _3013 = int((_2983.y > 0.0f) ? ((_2981 >> 20u) & 1023u) : (_2982 & 1023u));
                } else {
                  _3013 = int((_2983.z > 0.0f) ? ((_2982 >> 10u) & 1023u) : ((_2982 >> 20u) & 1023u));
                }
                _3021 = _3013;
              }
              _3026 = (_3021 == 1023) ? (-1) : _3021;
            }
            uint _3031 = uint(_3026);
            uint _3033 = asuint(_33_m11.x) + (_3031 * 96u);
            uint _3035 = (_3033 + 64u) >> 2u;
            uint _3038 = _3035 + 1u;
            uint _3041 = _3035 + 2u;
            uint _3044 = _3035 + 3u;
            float4 _3048 = asfloat(uint4(_36.Load(_3035 * 4 + 0), _36.Load(_3038 * 4 + 0), _36.Load(_3041 * 4 + 0), _36.Load(_3044 * 4 + 0)));
            float _3380;
            do {
              uint _3064 = ((asuint(_33_m11.y) + (_3031 * 16u)) >> 2u) + 1u;
              if (_36.Load(_3064 * 4 + 0) > 0u) {
                float4 _358 = _762;
                float _3079;
                do {
                  if (_36.Load(_3064 * 4 + 0) == 0u) {
                    _3079 = 1.0f;
                    break;
                  }
                  _3079 = _358[_36.Load(_3064 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3380 = _3079;
                break;
              }
              uint _3080 = _3033 >> 2u;
              uint _3095 = (_3033 + 16u) >> 2u;
              uint _3110 = (_3033 + 32u) >> 2u;
              uint _3125 = (_3033 + 48u) >> 2u;
              float4 _3145 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_3080 * 4 + 0), _36.Load((_3080 + 1u) * 4 + 0), _36.Load((_3080 + 2u) * 4 + 0), _36.Load((_3080 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3095 * 4 + 0), _36.Load((_3095 + 1u) * 4 + 0), _36.Load((_3095 + 2u) * 4 + 0), _36.Load((_3095 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3110 * 4 + 0), _36.Load((_3110 + 1u) * 4 + 0), _36.Load((_3110 + 2u) * 4 + 0), _36.Load((_3110 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_3125 * 4 + 0), _36.Load((_3125 + 1u) * 4 + 0), _36.Load((_3125 + 2u) * 4 + 0), _36.Load((_3125 + 3u) * 4 + 0))))), float4((_479 - ((-_2799) * _3048.x)) + (_446 * (_3048.y * 5.0f)), 1.0f));
              float3 _3149 = _3145.xyz / _3145.w.xxx;
              uint _3151 = (_3033 + 80u) >> 2u;
              float4 _3164 = asfloat(uint4(_36.Load(_3151 * 4 + 0), _36.Load((_3151 + 1u) * 4 + 0), _36.Load((_3151 + 2u) * 4 + 0), _36.Load((_3151 + 3u) * 4 + 0)));
              float2 _3165 = _3149.xy;
              float2 _3167 = _3164.xy;
              float3 _3171 = _3149.xyz;
              bool3 _3172 = bool3(_3171.x <= 0.0f.xxx.x, _3171.y <= 0.0f.xxx.y, _3171.z <= 0.0f.xxx.z);
              bool3 _3173 = bool3(_3171.x >= 1.0f.xxx.x, _3171.y >= 1.0f.xxx.y, _3171.z >= 1.0f.xxx.z);
              float _3176 = _3149.z;
              float2 _3187 = ((_3165 * (_3164.zw - _3167)) + _3167).xy * _33_m10.zw;
              float2 _3189 = floor(_3187 + 0.5f.xx);
              float2 _3190 = _3187 - _3189;
              float _3191 = _3190.x;
              float _3192 = _3191 + 0.5f;
              float _3193 = _3192 * _3192;
              float _3196 = 1.0f - _3191;
              float _3197 = min(_3191, 0.0f);
              float _3200 = _3191 + 1.0f;
              float _3201 = max(_3191, 0.0f);
              float _3212 = _3190.y;
              float _3213 = _3212 + 0.5f;
              float _3214 = _3213 * _3213;
              float _3217 = 1.0f - _3212;
              float _3218 = min(_3212, 0.0f);
              float _3221 = _3212 + 1.0f;
              float _3222 = max(_3212, 0.0f);
              float3 _3234 = float3(0.1599999964237213134765625f * _3196, 0.1599999964237213134765625f * ((_3200 - (_3201 * _3201)) + 1.0f), _3193 * 0.07999999821186065673828125f);
              float3 _3235 = float3(0.1599999964237213134765625f * ((_3193 * 0.5f) - _3191), 0.1599999964237213134765625f * ((_3196 - (_3197 * _3197)) + 1.0f), 0.1599999964237213134765625f * _3200) + _3234;
              float3 _3237 = float3(0.1599999964237213134765625f * _3217, 0.1599999964237213134765625f * ((_3221 - (_3222 * _3222)) + 1.0f), _3214 * 0.07999999821186065673828125f);
              float3 _3238 = float3(0.1599999964237213134765625f * ((_3214 * 0.5f) - _3212), 0.1599999964237213134765625f * ((_3217 - (_3218 * _3218)) + 1.0f), 0.1599999964237213134765625f * _3221) + _3237;
              float3 _3244 = ((_3234 / _3235) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
              float3 _3246 = ((_3237 / _3238) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
              float2 _3248 = _3189 * _33_m10.xy;
              float _3249 = _3244.x;
              float _3250 = _3246.x;
              float _3253 = _3244.y;
              float _3256 = _3244.z;
              float _3259 = _3246.y;
              float _3266 = _3246.z;
              float _3273 = _3235.x;
              float _3274 = _3238.x;
              float _3276 = _3235.y;
              float _3278 = _3235.z;
              float _3280 = _3238.y;
              float _3284 = _3238.z;
              float _3342 = (((((((_3273 * _3274) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3249, _3250), _354).xy, _3176)) + ((_3276 * _3274) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3253, _3250), _354).xy, _3176))) + ((_3278 * _3274) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3256, _3250), _354).xy, _3176))) + ((_3273 * _3280) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3249, _3259), _354).xy, _3176))) + ((_3276 * _3280) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3253, _3259), _354).xy, _3176))) + ((_3278 * _3280) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3256, _3259), _354).xy, _3176))) + ((_3273 * _3284) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3249, _3266), _354).xy, _3176));
              float4 _3365 = asfloat(uint4(_36.Load(_3035 * 4 + 0), _36.Load(_3038 * 4 + 0), _36.Load(_3041 * 4 + 0), _36.Load(_3044 * 4 + 0)));
              float _3366 = _3365.w;
              float2 _3368 = min(_3165, 1.0f.xx - _3165);
              _3380 = lerp(1.0f, (any(bool3(_3172.x || _3173.x, _3172.y || _3173.y, _3172.z || _3173.z)) || ((asuint(_3176) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3342 + ((_3276 * _3284) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3253, _3266), _354).xy, _3176))) + ((_3278 * _3284) * _34.SampleCmpLevelZero(_16, float3(_3248 + float2(_3256, _3266), _354).xy, _3176))), _2817 ? min(_3366, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3365.z - _3145.w) * 0.25f, min(_3368.x, _3368.y)))) : _3366);
              break;
            } while (false);
            _3382 = (_3026 >= 0) ? _3380 : 1.0f;
          } else {
            _3382 = 1.0f;
          }
          float3 _3406;
          float3 _3407;
          if (_2820) {
            float3 _3385 = _2774 * _2774;
            float3 _3386 = reflect(_507, _446);
            float _3395 = dot(_3386, _2809);
            _3406 = _3385 / clamp(_3385 + (0.5f * clamp(_29_m6[_814].z * _2798, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3407 = normalize(_2811 + (_2809 * clamp(dot(_2811, (_3386 * _3395) - _2809) / ((_29_m6[_814].z * _29_m6[_814].z) - (_3395 * _3395)), 0.0f, 1.0f)));
          } else {
            _3406 = 1.0f.xxx;
            _3407 = _2799;
          }
          float3 _3408 = _3407 + _505;
          float3 _3412 = _3408 * rsqrt(max(6.103515625e-05f, dot(_3408, _3408)));
          float3 _3562;
          if (_2973) {
            float _3415 = dot(_446, _3407);
            float _3416 = clamp(_2839, 0.0f, 1.0f);
            float _3418 = clamp(dot(_446, _3412), 0.0f, 1.0f);
            float _3420 = clamp(dot(_505, _3412), 0.0f, 1.0f);
            float _3421 = dot(_505, _3407);
            float _3423 = clamp(_510, 0.0f, 1.0f);
            float _3424 = _447 * _447;
            float _3434;
            if (_2803 > 0.0f) {
              _3434 = clamp(_3424 + ((_2803 * _2803) / ((_3420 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _3434 = _3424;
            }
            float _3435 = _3434 * _3434;
            float _3456 = (((_3418 * _3435) - _3418) * _3418) + 1.0f;
            float _3461 = 1.0f - _3420;
            float _3462 = _3461 * _3461;
            float _3464 = (_3461 * _3462) * _3462;
            float _3488 = 1.0f - _447;
            float _3495 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3488 * (1.04997003078460693359375f + (_3488 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3488))))));
            float _3496 = 1.0f - _3495;
            float3 _3499 = _509 + ((1.0f.xxx - _509) * 0.0476190485060214996337890625f);
            float _3530 = clamp(-_3421, 0.0f, 1.0f);
            float _3534 = (((_3530 * 0.36000001430511474609375f) - _3530) * _3530) + 1.0f;
            float _3535 = _3534 * _3534;
            float3 _3547 = ((min(((_509 * (1.0f - _3464)) + _3464.xxx) * (((_3435 / (_3456 * _3456)) * _3406.y) * (0.5f / (((_3416 * sqrt(((((-_3423) * _3435) + _3423) * _3423) + _3435)) + (_3423 * sqrt(((((-_3416) * _3435) + _3416) * _3416) + _3435))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_3499 * (((_41.SampleLevel(_13, (float2(_3423, _447) * 0.96875f) + 0.015625f.xx, 0.0f).x * _41.SampleLevel(_13, (float2(_3416, _447) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3495) / _3496)) * _3499) / (1.0f.xxx - (_3499 * _3496)))) * lerp(clamp(_510 + 0.20000000298023223876953125f, 0.0f, 1.0f) * clamp(clamp(_3421, 0.0f, 1.0f) + 0.5f, 0.0f, 1.0f), 1.0f, clamp(_3421 + 1.0f, 0.0f, 1.0f))) * _407;
            _3562 = (((clamp(_3547 * _29_m6[_829].z, 0.0f.xxx, 1000.0f.xxx) * _2839) + (((((_448 / max(0.00999999977648258209228515625f, max(max(_382.x, _382.y), _382.z)).xxx) * _390) * (clamp(0.5f - _3415, 0.0f, 1.0f) * ((0.36000001430511474609375f != _3535) ? (0.36000001430511474609375f / _3535) : 1.0f))) + (_448 * (clamp(_3415 + _398, 0.0f, 1.0f) - clamp(_3416, 0.0f, 1.0f)))) * _407)) + (((_448 * _407) * _3406.z) * _2839)) * (((_29_m6[_808].xyz * _2972) * _3382) * _908);
          } else {
            _3562 = 0.0f.xxx;
          }
          _3563 = _768;
          _3564 = _3562;
        } else {
          float _2772;
          do {
            if (_915) {
              _2772 = 1.0f;
              break;
            }
            float _2186 = (0.5f + (0.5f * _29_m6[_814].y)) - abs(_29_m6[_814].x);
            float _2187 = _29_m6[_814].y - _2186;
            float _2194 = abs(max((1.0f - abs(_2186)) - abs(_2187), 0.00048828125f));
            float3 _2198 = normalize(float3(_2186, _2187, (_29_m6[_814].x >= 0.0f) ? _2194 : (-_2194)));
            float3 _2199 = _29_m6[_811].xyz - _479;
            float _2200 = dot(_2199, _2199);
            float3 _2202 = _2199 * rsqrt(_2200);
            int _2205 = int(_29_m6[_829].w);
            float3 _2207 = (_2198 * _29_m6[_814].z) * 0.5f;
            float3 _2208 = _2199 - _2207;
            float3 _2209 = _2199 + _2207;
            bool _2211 = (_912 & 1u) == 0u;
            bool _2214 = _2211 || ((_833 & 2u) != 0u);
            bool _2217 = (!_2211) && (_29_m6[_814].z > 0.0f);
            float _2229;
            if (_2217) {
              _2229 = 1.0f / ((((length(_2208) * length(_2209)) + dot(_2208, _2209)) * 0.5f) + 1.0f);
            } else {
              _2229 = 1.0f;
            }
            float _2251;
            if (_29_m6[_826].w < 0.0f) {
              float _2245 = _2200 * (_29_m6[_811].w * _29_m6[_811].w);
              float _2248 = clamp(1.0f - (_2245 * _2245), 0.0f, 1.0f);
              _2251 = lerp(1.0f / (_2200 + 1.0f), _2229, float(_2217)) * (_2248 * _2248);
            } else {
              float3 _2234 = _2199 * _29_m6[_811].w;
              _2251 = _2229 * pow(1.0f - clamp(dot(_2234, _2234), 0.0f, 1.0f), _29_m6[_826].w);
            }
            float _2257 = clamp((dot(_2202, -_2198) - _29_m6[_814].z) * _29_m6[_814].w, 0.0f, 1.0f);
            float _2261 = _2251 * lerp(1.0f, _2257 * _2257, float(_2211));
            float _2361;
            if ((!_2217) && (_2205 >= 0)) {
              uint _2267 = uint(_2205);
              float2 _2354;
              [branch] if (_2211) {
                float4 _2344 = mul(_45_m1[_2267], _483);
                _2354 = _45_m0[_2267].xy + (clamp(_2344.xy / _2344.w.xx, 0.0f.xx, 1.0f.xx) * _45_m0[_2267].zw);
              }
              else {
                float3 _2281 = mul(float4(-_2199, 0.0f), _45_m1[_2267]).xyz;
                float3 _365 = _2281;
                float3 _364 = _2281;
                float3 _363 = abs(_2281);
                uint _2290 = uint(int(_363.y > _363.x));
                uint _2296 = (_363.z > _363[_2290]) ? 2u : _2290;
                uint _2302 = (_2296 * 2u) + uint(_364[_2296] < 0.0f);
                float _2306 = abs(_365[_2302 / 2u]);
                float _2326 = 0.5f - (0.000244140625f / _45_m0[_2267].w);
                _2354 = _45_m0[_2267].xy + (clamp(float2((float(_2302) + ((((_365[uint(_330[_2302].x)] * _331[_2302].x) / _2306) * _2326) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_365[uint(_330[_2302].y)] * _331[_2302].y) / _2306) * _2326)), 0.0f.xx, 1.0f.xx) * _45_m0[_2267].zw);
              }
              _2361 = _2261 * _43.SampleLevel(_13, _2354, 0.0f).x;
            } else {
              _2361 = _2261;
            }
            float _2771;
            if (_2361 > 0.0f) {
              int _2415;
              if (_2214) {
                _2415 = int(_29_m6[_817].x);
              } else {
                uint _2370 = asuint(_29_m6[_814].w);
                uint _2371 = asuint(_29_m6[_817].x);
                float3 _2372 = _479 - _29_m6[_811].xyz;
                float3 _2373 = abs(_2372);
                float _2374 = _2373.x;
                float _2375 = _2373.y;
                float _2377 = _2373.z;
                int _2410;
                if ((_2374 > _2375) && (_2374 > _2377)) {
                  _2410 = int((_2372.x > 0.0f) ? (_2370 & 1023u) : ((_2370 >> 10u) & 1023u));
                } else {
                  int _2402;
                  if (_2375 > _2377) {
                    _2402 = int((_2372.y > 0.0f) ? ((_2370 >> 20u) & 1023u) : (_2371 & 1023u));
                  } else {
                    _2402 = int((_2372.z > 0.0f) ? ((_2371 >> 10u) & 1023u) : ((_2371 >> 20u) & 1023u));
                  }
                  _2410 = _2402;
                }
                _2415 = (_2410 == 1023) ? (-1) : _2410;
              }
              uint _2420 = uint(_2415);
              uint _2422 = asuint(_33_m11.x) + (_2420 * 96u);
              uint _2424 = (_2422 + 64u) >> 2u;
              uint _2427 = _2424 + 1u;
              uint _2430 = _2424 + 2u;
              uint _2433 = _2424 + 3u;
              float4 _2437 = asfloat(uint4(_36.Load(_2424 * 4 + 0), _36.Load(_2427 * 4 + 0), _36.Load(_2430 * 4 + 0), _36.Load(_2433 * 4 + 0)));
              float _2769;
              do {
                uint _2453 = ((asuint(_33_m11.y) + (_2420 * 16u)) >> 2u) + 1u;
                if (_36.Load(_2453 * 4 + 0) > 0u) {
                  float4 _362 = _762;
                  float _2468;
                  do {
                    if (_36.Load(_2453 * 4 + 0) == 0u) {
                      _2468 = 1.0f;
                      break;
                    }
                    _2468 = _362[_36.Load(_2453 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _2769 = _2468;
                  break;
                }
                uint _2469 = _2422 >> 2u;
                uint _2484 = (_2422 + 16u) >> 2u;
                uint _2499 = (_2422 + 32u) >> 2u;
                uint _2514 = (_2422 + 48u) >> 2u;
                float4 _2534 = mul(transpose(float4x4(asfloat(uint4(_36.Load(_2469 * 4 + 0), _36.Load((_2469 + 1u) * 4 + 0), _36.Load((_2469 + 2u) * 4 + 0), _36.Load((_2469 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2484 * 4 + 0), _36.Load((_2484 + 1u) * 4 + 0), _36.Load((_2484 + 2u) * 4 + 0), _36.Load((_2484 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2499 * 4 + 0), _36.Load((_2499 + 1u) * 4 + 0), _36.Load((_2499 + 2u) * 4 + 0), _36.Load((_2499 + 3u) * 4 + 0))), asfloat(uint4(_36.Load(_2514 * 4 + 0), _36.Load((_2514 + 1u) * 4 + 0), _36.Load((_2514 + 2u) * 4 + 0), _36.Load((_2514 + 3u) * 4 + 0))))), float4((_479 - ((-_2202) * _2437.x)) + (_446 * (_2437.y * 5.0f)), 1.0f));
                float3 _2538 = _2534.xyz / _2534.w.xxx;
                uint _2540 = (_2422 + 80u) >> 2u;
                float4 _2553 = asfloat(uint4(_36.Load(_2540 * 4 + 0), _36.Load((_2540 + 1u) * 4 + 0), _36.Load((_2540 + 2u) * 4 + 0), _36.Load((_2540 + 3u) * 4 + 0)));
                float2 _2554 = _2538.xy;
                float2 _2556 = _2553.xy;
                float3 _2560 = _2538.xyz;
                bool3 _2561 = bool3(_2560.x <= 0.0f.xxx.x, _2560.y <= 0.0f.xxx.y, _2560.z <= 0.0f.xxx.z);
                bool3 _2562 = bool3(_2560.x >= 1.0f.xxx.x, _2560.y >= 1.0f.xxx.y, _2560.z >= 1.0f.xxx.z);
                float _2565 = _2538.z;
                float2 _2576 = ((_2554 * (_2553.zw - _2556)) + _2556).xy * _33_m10.zw;
                float2 _2578 = floor(_2576 + 0.5f.xx);
                float2 _2579 = _2576 - _2578;
                float _2580 = _2579.x;
                float _2581 = _2580 + 0.5f;
                float _2582 = _2581 * _2581;
                float _2585 = 1.0f - _2580;
                float _2586 = min(_2580, 0.0f);
                float _2589 = _2580 + 1.0f;
                float _2590 = max(_2580, 0.0f);
                float _2601 = _2579.y;
                float _2602 = _2601 + 0.5f;
                float _2603 = _2602 * _2602;
                float _2606 = 1.0f - _2601;
                float _2607 = min(_2601, 0.0f);
                float _2610 = _2601 + 1.0f;
                float _2611 = max(_2601, 0.0f);
                float3 _2623 = float3(0.1599999964237213134765625f * _2585, 0.1599999964237213134765625f * ((_2589 - (_2590 * _2590)) + 1.0f), _2582 * 0.07999999821186065673828125f);
                float3 _2624 = float3(0.1599999964237213134765625f * ((_2582 * 0.5f) - _2580), 0.1599999964237213134765625f * ((_2585 - (_2586 * _2586)) + 1.0f), 0.1599999964237213134765625f * _2589) + _2623;
                float3 _2626 = float3(0.1599999964237213134765625f * _2606, 0.1599999964237213134765625f * ((_2610 - (_2611 * _2611)) + 1.0f), _2603 * 0.07999999821186065673828125f);
                float3 _2627 = float3(0.1599999964237213134765625f * ((_2603 * 0.5f) - _2601), 0.1599999964237213134765625f * ((_2606 - (_2607 * _2607)) + 1.0f), 0.1599999964237213134765625f * _2610) + _2626;
                float3 _2633 = ((_2623 / _2624) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.xxx;
                float3 _2635 = ((_2626 / _2627) + float3(-2.5f, -0.5f, 1.5f)) * _33_m10.yyy;
                float2 _2637 = _2578 * _33_m10.xy;
                float _2638 = _2633.x;
                float _2639 = _2635.x;
                float _2642 = _2633.y;
                float _2645 = _2633.z;
                float _2648 = _2635.y;
                float _2655 = _2635.z;
                float _2662 = _2624.x;
                float _2663 = _2627.x;
                float _2665 = _2624.y;
                float _2667 = _2624.z;
                float _2669 = _2627.y;
                float _2673 = _2627.z;
                float _2731 = (((((((_2662 * _2663) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2638, _2639), _354).xy, _2565)) + ((_2665 * _2663) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2642, _2639), _354).xy, _2565))) + ((_2667 * _2663) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2645, _2639), _354).xy, _2565))) + ((_2662 * _2669) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2638, _2648), _354).xy, _2565))) + ((_2665 * _2669) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2642, _2648), _354).xy, _2565))) + ((_2667 * _2669) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2645, _2648), _354).xy, _2565))) + ((_2662 * _2673) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2638, _2655), _354).xy, _2565));
                float4 _2754 = asfloat(uint4(_36.Load(_2424 * 4 + 0), _36.Load(_2427 * 4 + 0), _36.Load(_2430 * 4 + 0), _36.Load(_2433 * 4 + 0)));
                float _2755 = _2754.w;
                float2 _2757 = min(_2554, 1.0f.xx - _2554);
                _2769 = lerp(1.0f, (any(bool3(_2561.x || _2562.x, _2561.y || _2562.y, _2561.z || _2562.z)) || ((asuint(_2565) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2731 + ((_2665 * _2673) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2642, _2655), _354).xy, _2565))) + ((_2667 * _2673) * _34.SampleCmpLevelZero(_16, float3(_2637 + float2(_2645, _2655), _354).xy, _2565))), _2214 ? min(_2755, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2754.z - _2534.w) * 0.25f, min(_2757.x, _2757.y)))) : _2755);
                break;
              } while (false);
              _2771 = (_2415 >= 0) ? _2769 : 1.0f;
            } else {
              _2771 = 1.0f;
            }
            _2772 = _2771;
            break;
          } while (false);
          _3563 = _768 * _2772;
          _3564 = 0.0f.xxx;
        }
        _3565 = _3563;
        _3566 = _3564;
        break;
      } while (false);
      _793 = _3565;
      _796 = _795 + _3566;
    }
    _765 = _764 + _795;
  }
  float3 _3570 = _733.xyz + (_764 * _767);
  float3 _3572 = _449.xxx;
  float3 _3607;
  float3 _3608;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x3AEAD136:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _3583 = min(_21.SampleBias(_12, _4, _9_m16).x, _449);
    _3607 = clamp((pow(abs(_511 + _3583), exp2(((-16.0f) * _447) - 1.0f)) - 1.0f) + _3583, 0.0f, 1.0f).xxx;
    _3608 = max(_3583.xxx, ((((((_448 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _3583) + ((_448 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _3583) + ((_448 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _3583);
  }
  else {
    _3607 = _3572;
    _3608 = _3572;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _3570 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _3607 : 1.0f.xxx;
  // RenoDX code end
  float3 _3618 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _3627 = _479 - (_9_m108.xyz + (_3618 * (-_9_m110.w)));
  float _3642 = max(min(max((max(abs(_3627.x), abs(_3627.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_3627.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _3944;
  float4 _3945;
  float4 _3946;
  float _3947;
  float _3948;
  if ((_9_m108.w != 0.0f) && (_3642 < 1.0f)) {
    float3 _3655 = _479 - (_9_m108.xyz + (_3618 * (-_9_m110.y)));
    float _3669 = max(clamp((max(abs(_3655.x), abs(_3655.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_3655.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _3745;
    float4 _3746;
    float4 _3747;
    float4 _3748;
    if (_3669 < 1.0f) {
      float3 _3678 = ((_479 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3680 = _3678 - floor(_3678);
      float4 _3684 = _55.SampleLevel(_14, _3680, 0.0f);
      float _3685 = 1.0f - _3669;
      float _3689 = _9_m109.y * 0.5f;
      float _3694 = _3680.x;
      float _3695 = clamp(_3680.y, _3689, 1.0f - _3689) * 0.3333333432674407958984375f;
      float _3696 = _3680.z;
      float4 _3699 = _56.SampleLevel(_13, float3(_3694, _3695, _3696), 0.0f);
      float _3715 = _3684.x;
      float _3725 = _3684.y;
      float _3735 = _3684.z;
      _3745 = _3642 + (_3699.w * _3685);
      _3746 = float4(((_56.SampleLevel(_13, float3(_3694, _3695 + 0.666666686534881591796875f, _3696), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3735, _3735) * _3685;
      _3747 = float4(((_56.SampleLevel(_13, float3(_3694, _3695 + 0.3333333432674407958984375f, _3696), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3725, _3725) * _3685;
      _3748 = float4(((_3699.xyz * 4.0f) - 2.0f.xxx) * _3715, _3715) * _3685;
    } else {
      _3745 = _3642;
      _3746 = 0.0f.xxxx;
      _3747 = 0.0f.xxxx;
      _3748 = 0.0f.xxxx;
    }
    float3 _3754 = _479 - (_9_m108.xyz + (_3618 * (-_9_m110.z)));
    float _3768 = max(clamp((max(abs(_3754.x), abs(_3754.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_3754.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _3848;
    float4 _3849;
    float4 _3850;
    float4 _3851;
    if (_3768 < 1.0f) {
      float3 _3777 = ((_479 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3779 = _3777 - floor(_3777);
      float4 _3783 = _57.SampleLevel(_14, _3779, 0.0f);
      float _3785 = _3669 * (1.0f - _3768);
      float _3789 = _9_m109.y * 0.5f;
      float _3794 = _3779.x;
      float _3795 = clamp(_3779.y, _3789, 1.0f - _3789) * 0.3333333432674407958984375f;
      float _3796 = _3779.z;
      float4 _3799 = _58.SampleLevel(_13, float3(_3794, _3795, _3796), 0.0f);
      float _3815 = _3783.x;
      float _3826 = _3783.y;
      float _3837 = _3783.z;
      _3848 = _3745 + (_3799.w * _3785);
      _3849 = _3746 + (float4(((_58.SampleLevel(_13, float3(_3794, _3795 + 0.666666686534881591796875f, _3796), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3837, _3837) * _3785);
      _3850 = _3747 + (float4(((_58.SampleLevel(_13, float3(_3794, _3795 + 0.3333333432674407958984375f, _3796), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3826, _3826) * _3785);
      _3851 = _3748 + (float4(((_3799.xyz * 4.0f) - 2.0f.xxx) * _3815, _3815) * _3785);
    } else {
      _3848 = _3745;
      _3849 = _3746;
      _3850 = _3747;
      _3851 = _3748;
    }
    float4 _3934;
    float4 _3935;
    float4 _3936;
    float _3937;
    if (_3768 > 0.0f) {
      float3 _3860 = ((_479 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _3863 = _9_m109.xyz * 0.5f;
      float3 _3865 = clamp(_3860 - floor(_3860), _3863, 1.0f.xxx - _3863);
      float4 _3869 = _59.SampleLevel(_14, _3865, 0.0f);
      float _3871 = _3768 * (1.0f - _3642);
      float _3875 = _9_m109.y * 0.5f;
      float _3880 = _3865.x;
      float _3881 = clamp(_3865.y, _3875, 1.0f - _3875) * 0.3333333432674407958984375f;
      float _3882 = _3865.z;
      float4 _3885 = _60.SampleLevel(_13, float3(_3880, _3881, _3882), 0.0f);
      float _3901 = _3869.x;
      float _3912 = _3869.y;
      float _3923 = _3869.z;
      _3934 = _3849 + (float4(((_60.SampleLevel(_13, float3(_3880, _3881 + 0.666666686534881591796875f, _3882), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3923, _3923) * _3871);
      _3935 = _3850 + (float4(((_60.SampleLevel(_13, float3(_3880, _3881 + 0.3333333432674407958984375f, _3882), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _3912, _3912) * _3871);
      _3936 = _3851 + (float4(((_3885.xyz * 4.0f) - 2.0f.xxx) * _3901, _3901) * _3871);
      _3937 = _3848 + (_3885.w * _3871);
    } else {
      _3934 = _3849;
      _3935 = _3850;
      _3936 = _3851;
      _3937 = _3848;
    }
    float _3940 = clamp((_3937 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _3944 = _3934;
    _3945 = _3935;
    _3946 = _3936;
    _3947 = _3940 - _3642;
    _3948 = (_3940 + _3642) * 0.5f;
  } else {
    _3944 = 0.0f.xxxx;
    _3945 = 0.0f.xxxx;
    _3946 = 0.0f.xxxx;
    _3947 = 0.0f;
    _3948 = 1.0f;
  }
  float4 _3968 = _3946 + float4(_9_m111.x * _3948, (_9_m111.y * _3948) + ((_9_m111.w * _3947) * 0.5f), _9_m111.z * _3948, (_9_m111.w * _3948) + ((_9_m111.y * _3947) * 0.375f));
  float4 _3988 = _3945 + float4(_9_m112.x * _3948, (_9_m112.y * _3948) + ((_9_m112.w * _3947) * 0.5f), _9_m112.z * _3948, (_9_m112.w * _3948) + ((_9_m112.y * _3947) * 0.375f));
  float4 _4008 = _3944 + float4(_9_m113.x * _3948, (_9_m113.y * _3948) + ((_9_m113.w * _3947) * 0.5f), _9_m113.z * _3948, (_9_m113.w * _3948) + ((_9_m113.y * _3947) * 0.375f));
  float4 _4166;
  float4 _4167;
  float4 _4168;
  [branch] if (all(bool2(_467.x >= 0.0f.xx.x, _467.y >= 0.0f.xx.y))) {
    float4 _4016 = _54.SampleLevel(_13, _467, 0.0f);
    float4 _4017 = abs(_4016);
    float4 _4163;
    float4 _4164;
    float4 _4165;
    [branch] if (any(bool4(_4017.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4017.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4017.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4017.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4023 = length(_4016.yzw);
      uint _4025;
      float _4028;
      _4025 = 0u;
      _4028 = 1.0f;
      for (float _4030 = _4023; _4030 > 4.599999904632568359375f;) {
        _4025++;
        _4028 *= 0.5f;
        _4030 *= 0.5f;
        continue;
      }
      float4 _4034 = _4016 * _4028;
      float4 _4039 = float4(0.0f, _4034.yzw);
      float2 _4061 = (_53.SampleLevel(_13, float2(((((length(_4039) * _52_m3.x) + _52_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _52_m2.xy) + _52_m2.zw;
      float4 _4075;
      _4075 = float4(_4061.x * 3.5449078083038330078125f, _4039.yzw * _4061.y) * exp(_4034.x * 0.282094776630401611328125f);
      for (uint _4078 = 0u; _4078 < _4025;) {
        _4075 = mul(float4x4(_4075, float4(_4075.yx, 0.0f, 0.0f), float4(_4075.z, 0.0f, _4075.x, 0.0f), float4(_4075.w, 0.0f, 0.0f, _4075.x)) * 0.282094776630401611328125f, _4075);
        _4078++;
        continue;
      }
      float4x4 _4099 = float4x4(_4075, float4(_4075.yx, 0.0f, 0.0f), float4(_4075.z, 0.0f, _4075.x, 0.0f), float4(_4075.w, 0.0f, 0.0f, _4075.x)) * 0.282094776630401611328125f;
      float4 _4109 = mul(_4099, float4(_3968.w * 1.1283791065216064453125f, _3968.y * (-0.977204978466033935546875f), _3968.z * 0.977204978466033935546875f, _3968.x * (-0.977204978466033935546875f)));
      float4 _4129 = mul(_4099, float4(_3988.w * 1.1283791065216064453125f, _3988.y * (-0.977204978466033935546875f), _3988.z * 0.977204978466033935546875f, _3988.x * (-0.977204978466033935546875f)));
      float4 _4149 = mul(_4099, float4(_4008.w * 1.1283791065216064453125f, _4008.y * (-0.977204978466033935546875f), _4008.z * 0.977204978466033935546875f, _4008.x * (-0.977204978466033935546875f)));
      _4163 = float4(_4109.x * 0.886226952075958251953125f, _4109.w * (-1.02332675457000732421875f), _4109.y * (-1.02332675457000732421875f), _4109.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4164 = float4(_4129.x * 0.886226952075958251953125f, _4129.w * (-1.02332675457000732421875f), _4129.y * (-1.02332675457000732421875f), _4129.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4165 = float4(_4149.x * 0.886226952075958251953125f, _4149.w * (-1.02332675457000732421875f), _4149.y * (-1.02332675457000732421875f), _4149.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4163 = _3968;
      _4164 = _3988;
      _4165 = _4008;
    }
    _4166 = _4163;
    _4167 = _4164;
    _4168 = _4165;
  }
  else {
    _4166 = _3968;
    _4167 = _3988;
    _4168 = _4008;
  }
  float4 _4172 = float4(_446, 1.0f);
  float3 _4177 = max(float3(dot(_4166, _4172), dot(_4167, _4172), dot(_4168, _4172)), 0.0f.xxx);
  float4 _4182 = float4(-_446, 1.0f);
  float3 _4199 = reflect(_507, _446);
  float _4207 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_447, 0.001000000047497451305389404296875f))));
  float2 _4211 = floor(_454 * _27_m0.w);
  float _4228 = floor(_486 - _27_m2.y);
  float _4232 = clamp(_4228, 0.0f, _27_m1.x - 1.0f);
  uint _4242 = (_4228 <= _4232) ? (_24.Load(uint(_9_m21.z + int(_4211.x + (_4211.y * _27_m0.x))) * 4 + 0) & _24.Load(uint(_9_m21.w + int(_4232)) * 4 + 0)) : 0u;
  float _4245 = dot(float4(_4177, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4247;
  float _4250;
  uint _4252;
  _4247 = 0.0f.xxx;
  _4250 = 1.0f;
  _4252 = _4242;
  uint _4253;
  float3 _4248;
  float _4251;
  bool _4255;
  [loop] for (;;) {
    bool _4254 = _4252 != 0u;
    _4255 = _4250 > 0.00999999977648258209228515625f;
    if (_4254 && _4255) {
      uint _4259 = firstbitlow(_4252);
      _4253 = _4252 ^ (1u << (_4259 & 31u));
      float3 _4279 = float3(dot(_27_m4[_4259]._m2, _483), dot(_27_m4[_4259]._m3, _483), dot(_27_m4[_4259]._m4, _483));
      float3 _4280 = abs(_4279);
      if (all(bool3(_4280.x <= _27_m4[_4259]._m1.xyz.x, _4280.y <= _27_m4[_4259]._m1.xyz.y, _4280.z <= _27_m4[_4259]._m1.xyz.z))) {
        float3 _4289 = _27_m4[_4259]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4291 = _4280 * 0.100000001490116119384765625f;
        float3 _4292 = _4291 * _4291;
        float3 _4295 = (_27_m4[_4259]._m1.xyz - _4280) * _27_m4[_4259]._m5.xyz;
        float3 _4343;
        [branch] if (_27_m4[_4259]._m6.x == 1.0f) {
          float3 _4328 = float3(dot(_27_m4[_4259]._m2.xyz, _4199), dot(_27_m4[_4259]._m3.xyz, _4199), dot(_27_m4[_4259]._m4.xyz, _4199));
          float3 _4330 = (_27_m4[_4259]._m1.xyz - _4279) / _4328;
          float3 _4333 = ((-_27_m4[_4259]._m1.xyz) - _4279) / _4328;
          bool3 _4334 = bool3(_4328.x > 0.0f.xxx.x, _4328.y > 0.0f.xxx.y, _4328.z > 0.0f.xxx.z);
          float3 _4335 = float3(_4334.x ? _4330.x : _4333.x, _4334.y ? _4330.y : _4333.y, _4334.z ? _4330.z : _4333.z);
          _4343 = _4279 + (_4328 * min(min(_4335.x, _4335.y), _4335.z));
        }
        else {
          _4343 = _4199;
        }
        float3 _4344 = normalize(_4343);
        float3 _4347 = float3(int3(sign(_4344)));
        float3 _4350 = _4344 / dot(_4344, _4347).xxx;
        float3 _4364;
        if (_4350.z < 0.0f) {
          float3 _4355 = abs(_4350);
          float2 _4362 = _4347.xy * float2(1.0f - _4355.y, 1.0f - _4355.x);
          _4364 = float3(_4362.x, _4362.y, _4350.z);
        } else {
          _4364 = _4350;
        }
        float _4385 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m4[_4259]._m0, _4172)));
        float _4398 = clamp((min(_4295.x, min(_4295.y, _4295.z)) * _27_m4[_4259]._m6.y) + ((((((_4289 * _4289).x - ((_4292.x + _4292.y) + _4292.z)) * _27_m4[_4259]._m5.x) * _27_m4[_4259]._m5.x) * (1.0f - _27_m4[_4259]._m6.y)) * 100.0f), 0.0f, 1.0f) * _27_m4[_4259]._m6.w;
        _4248 = _4247 + ((((_22.SampleLevel(_15, float3((((_4364.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, _27_m4[_4259]._m1.w), _4207).xyz * _27_m4[_4259]._m5.w) * ((((((clamp(abs(_4245 / _4385), 0.0f, 1.0f) * 2.0f) + _4245) / (2.0f + _4385)) - 1.0f) * _9_m23.w) + 1.0f)) * _4398) * _4250);
        _4251 = _4250 * (1.0f - _4398);
      } else {
        _4248 = _4247;
        _4251 = _4250;
      }
      _4247 = _4248;
      _4250 = _4251;
      _4252 = _4253;
      continue;
    } else {
      break;
    }
  }
  float3 _4463;
  if (_4255) {
    float3 _4406 = normalize(_4199);
    float3 _4409 = float3(int3(sign(_4406)));
    float3 _4412 = _4406 / dot(_4406, _4409).xxx;
    float3 _4426;
    if (_4412.z < 0.0f) {
      float3 _4417 = abs(_4412);
      float2 _4424 = _4409.xy * float2(1.0f - _4417.y, 1.0f - _4417.x);
      _4426 = float3(_4424.x, _4424.y, _4412.z);
    } else {
      _4426 = _4412;
    }
    float _4449 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_27_m3, _4172)));
    _4463 = _4247 + ((_22.SampleLevel(_15, float3((((_4426.xy * 0.5f) + 0.5f.xx) * _27_m1.w) + _27_m2.w.xx, 0.0f), _4207).xyz * ((((((clamp(abs(_4245 / _4449), 0.0f, 1.0f) * 2.0f) + _4245) / (2.0f + _4449)) - 1.0f) * _9_m23.w) + 1.0f)) * _4250);
  } else {
    _4463 = _4247;
  }
  float3 _4469 = (_4463 * _9_m23.z) * _9_m22.y;
  float3 _4490;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _4484 = _20.SampleBias(_13, _4, _9_m16);
    float _4485 = _4484.x;
    _4490 = (_19.SampleBias(_13, _4, _9_m16).xyz * _4485) + (_4469 * (1.0f - _4485));
  }
  else {
    _4490 = _4469;
  }
  float3 _4511 = ((((_4177 * _448) * _9_m22.x) * _3608) + ((_4490 * ((_509 * _524.x) + (clamp(_451 * 4.0f, 0.0f, 1.0f) * _524.y).xxx)) * _3607)) + (((((max(float3(dot(_4166, _4182), dot(_4167, _4182), dot(_4168, _4182)), 0.0f.xxx) * _9_m22.x) * _3608) * (_448 / max(0.00999999977648258209228515625f, max(max(_382.x, _382.y), _382.z)).xxx)) * ((_390 * clamp(dot(_505, _446), 0.0f, 1.0f)) + (float(((_412 & 7u) << 2u) | (uint(_380.w * 3.0f) & 3u)) * 0.0322580635547637939453125f))) * 0.3183098733425140380859375f);
  float4 _4513 = float4(_3570.x, _3570.y, _3570.z, _733.w) + float4(_4511.x, _4511.y, _4511.z, 0.0f.xxxx.w);
  float3 _4516 = clamp(_4513.xyz, 0.0f.xxx, 255.0f.xxx).xyz;
  float _4531 = _479.y * _9_m46.w;
  float _4536 = max(0.00999999977648258209228515625f, _4531 + _9_m47.w);
  float3 _4550 = exp(_9_m45.xyz * ((-max(0.0f, (_506 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_4536)) / _4536) * exp(_4531 + _9_m48.w))));
  float _4553 = dot(_507, _9_m44.xyz);
  float _4559 = _9_m45.w * _9_m45.w;
  float _4563 = (1.0f + _4559) - ((2.0f * _9_m45.w) * _4553);
  float3 _4891;
  float _4892;
  if (_9_m55.z > 0.0f) {
    uint3 _4717 = (uint3(int3(_373, _374, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _4718 = _4717.y;
    uint _4719 = _4717.z;
    uint _4722 = _4717.x + (_4718 * _4719);
    uint _4724 = _4718 + (_4719 * _4722);
    uint _4726 = _4719 + (_4722 * _4724);
    uint _4728 = _4722 + (_4724 * _4726);
    float _4752 = dot(_507, -_7_m0[2].xyz);
    float3 _4762 = _479 - _7_m11.xyz;
    float _4764 = (_9_m55.w * ((_4752 > 5.9604644775390625e-08f) ? (1.0f / _4752) : 0.0f)) * (1.0f / _506);
    float _4765 = _4762.y;
    float _4766 = _4764 * _4765;
    float _4768 = _7_m11.y + _4766;
    float _4769 = _4765 - _4766;
    float _4771 = (1.0f - _4764) * _506;
    float _4785 = max(-127.0f, _9_m49.z * _4769);
    float _4809 = max(-127.0f, _9_m52.x * _4769);
    float _4820 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_4768 - _9_m49.x)))) * ((abs(_4785) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4785)) / _4785) : (0.693147182464599609375f - (0.2402265071868896484375f * _4785)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_4768 - _9_m52.z)))) * ((abs(_4809) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4809)) / _4809) : (0.693147182464599609375f - (0.2402265071868896484375f * _4809))));
    float _4842 = clamp((_506 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4845 = clamp((max(clamp(exp2(-(_4820 * _4771)), 0.0f, 1.0f), _9_m51.w) + clamp((_506 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4842, 0.0f, 1.0f);
    float4 _4885 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _50.SampleLevel(_13, float3((_454 + ((((float3(uint3(_4728, _4724 + (_4726 * _4728), _356) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_486 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_486 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _4887 = _4885.w;
    _4891 = _4885.xyz + (((_9_m51.xyz * (1.0f - _4845)) + (((_9_m54.xyz * pow(clamp(dot(_505, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4820 * max(_4771 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4842))) * _4887);
    _4892 = _4887 * _4845;
  } else {
    float3 _4593 = _479 - _7_m11.xyz;
    float _4595 = _4593.y;
    float _4609 = max(-127.0f, _9_m49.z * _4595);
    float _4633 = max(-127.0f, _9_m52.x * _4595);
    float _4644 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_4609) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4609)) / _4609) : (0.693147182464599609375f - (0.2402265071868896484375f * _4609)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_4633) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_4633)) / _4633) : (0.693147182464599609375f - (0.2402265071868896484375f * _4633))));
    float _4666 = clamp((_506 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _4669 = clamp((max(clamp(exp2(-(_4644 * _506)), 0.0f, 1.0f), _9_m51.w) + clamp((_506 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _4666, 0.0f, 1.0f);
    _4891 = (_9_m51.xyz * (1.0f - _4669)) + (((_9_m54.xyz * pow(clamp(dot(_505, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_4644 * max(_506 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _4666));
    _4892 = _4669;
  }
  float3 _4895 = _4550 * _4892;
  float3 _4897 = (_4516 * _4895) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_4553 * _4553)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _4559) / max((12.56637096405029296875f * _4563) * sqrt(_4563), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _4550)) * _4892) + _4891);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _4897 = (_4897 * 0.65f) + (_4516 * 0.35f);
  }
  // RenoDX code end
  float _4898 = dot(_4895, 0.3333333432674407958984375f.xxx);
  float4 _4899 = float4(_4897.x, _4897.y, _4897.z, _4513.w);
  _4899.w = _4898;
  float _4928 = _9_m61.x * clamp(1.0f - (distance(_7_m11.xyz, _479) * _9_m61.z), 0.0f, 1.0f);
  float3 _4936 = lerp(_4516, _4899.xyz, min((1.0f - _4928) + ((_64.SampleLevel(_14, (_479 * _9_m61.y) + (_9_m60.xyz * _9_m77.w), 0.0f).w * 2.0f) * _4928), 1.0f + _4898).xxx);
  _5 = float4(_4936.x, _4936.y, _4936.z, _4899.w);
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

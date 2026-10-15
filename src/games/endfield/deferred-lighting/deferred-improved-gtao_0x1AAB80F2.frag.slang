#include "./renodx_injection.hlsli"

// Ported from the native 0x1AAB80F2 Vulkan dump.
struct _27 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _433;
static float _436;
static uint _437;

static const int2 _387[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _388[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

[[vk::binding(38, 3)]] cbuffer _6_7 : register(b38, space3) {
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

[[vk::binding(43, 3)]] cbuffer _8_9 : register(b43, space3) {
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

[[vk::binding(47, 3)]] ByteAddressBuffer _25 : register(t47, space3);
[[vk::binding(44, 3)]] cbuffer _26_28 : register(b44, space3) {
  float4 _28_m0 : packoffset(c0);
  float4 _28_m1 : packoffset(c1);
  float4 _28_m2 : packoffset(c2);
  float4 _28_m3 : packoffset(c3);
  _27 _28_m4[32] : packoffset(c4);
};

[[vk::binding(39, 3)]] cbuffer _29_30 : register(b39, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  float4 _30_m4 : packoffset(c4);
  uint4 _30_m5 : packoffset(c5);
  float4 _30_m6[2048] : packoffset(c6);
};

[[vk::binding(40, 3)]] cbuffer _31_32 : register(b40, space3) {
  int _32_m0 : packoffset(c0);
  int _32_m1 : packoffset(c0.y);
  int _32_m2 : packoffset(c0.z);
  int _32_m3 : packoffset(c0.w);
  int _32_m4 : packoffset(c1);
  int _32_m5 : packoffset(c1.y);
  int _32_m6 : packoffset(c1.z);
  int _32_m7 : packoffset(c1.w);
  float _32_m8 : packoffset(c2);
  float _32_m9 : packoffset(c2.y);
  float _32_m10 : packoffset(c2.z);
  float _32_m11 : packoffset(c2.w);
  float _32_m12 : packoffset(c3);
  float _32_m13 : packoffset(c3.y);
  float _32_m14 : packoffset(c3.z);
  float _32_m15 : packoffset(c3.w);
};

[[vk::binding(42, 3)]] cbuffer _33_34 : register(b42, space3) {
  column_major float4x4 _34_m0[5] : packoffset(c0);
  float4 _34_m1[4] : packoffset(c20);
  float4 _34_m2[4] : packoffset(c24);
  float4 _34_m3[4] : packoffset(c28);
  float4 _34_m4 : packoffset(c32);
  float4 _34_m5 : packoffset(c33);
  float4 _34_m6 : packoffset(c34);
  float4 _34_m7 : packoffset(c35);
  float4 _34_m8 : packoffset(c36);
  float4 _34_m9[27] : packoffset(c37);
  float4 _34_m10 : packoffset(c64);
  float4 _34_m11 : packoffset(c65);
  float4 _34_m12[62] : packoffset(c66);
  column_major float4x4 _34_m13[15] : packoffset(c128);
  float4 _34_m14[15] : packoffset(c188);
  float4 _34_m15[15] : packoffset(c203);
  float4 _34_m16[15] : packoffset(c218);
  float4 _34_m17 : packoffset(c233);
  float4 _34_m18 : packoffset(c234);
  float4 _34_m19[21] : packoffset(c235);
  column_major float4x4 _34_m20 : packoffset(c256);
  column_major float4x4 _34_m21 : packoffset(c260);
  float4 _34_m22 : packoffset(c264);
  float4 _34_m23 : packoffset(c265);
  float4 _34_m24 : packoffset(c266);
  float4 _34_m25[128] : packoffset(c267);
};

[[vk::binding(46, 3)]] ByteAddressBuffer _37 : register(t46, space3);
[[vk::binding(37, 3)]] cbuffer _42_43 : register(b37, space3) {
  column_major float4x4 _43_m0 : packoffset(c0);
  float4 _43_m1 : packoffset(c4);
};

[[vk::binding(45, 3)]] cbuffer _51_52 : register(b45, space3) {
  float4 _52_m0[32] : packoffset(c0);
  column_major float4x4 _52_m1[32] : packoffset(c32);
};

[[vk::binding(41, 3)]] cbuffer _58_59 : register(b41, space3) {
  float4 _59_m0 : packoffset(c0);
  float4 _59_m1 : packoffset(c1);
  float4 _59_m2 : packoffset(c2);
  float4 _59_m3 : packoffset(c3);
  float4 _59_m4 : packoffset(c4);
  uint4 _59_m5 : packoffset(c5);
  float4 _59_m6 : packoffset(c6);
  float4 _59_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _12 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _13 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _14 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _15 : register(s0, space3);
[[vk::binding(5, 3)]] SamplerComparisonState _16 : register(s5, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _17 : register(s3, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _19 : register(t34, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _20 : register(t11, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _21 : register(t12, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _22 : register(t28, space3);
[[vk::binding(14, 3)]] Texture2DArray<float4> _23 : register(t14, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _35 : register(t16, space3);
[[vk::binding(10, 3)]] Texture2D<float4> _38 : register(t10, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _39 : register(t29, space3);
[[vk::binding(35, 3)]] Texture2D<float4> _40 : register(t35, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _41 : register(t8, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _45 : register(t15, space3);
[[vk::binding(9, 3)]] Texture2D<float4> _46 : register(t9, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _47 : register(t13, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _49 : register(t33, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _50 : register(t18, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _55 : register(t20, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _56 : register(t19, space3);
[[vk::binding(27, 3)]] Texture3D<float4> _57 : register(t27, space3);
[[vk::binding(36, 3)]] Texture2D<float4> _60 : register(t36, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _61 : register(t7, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _62 : register(t26, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _63 : register(t23, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _64 : register(t25, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _65 : register(t22, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _66 : register(t24, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _67 : register(t21, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _68 : register(t6, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _69 : register(t32, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _70 : register(t31, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _71 : register(t30, space3);

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
  uint2 _451 = uint2(gl_FragCoord.xy);
  int _454 = int(_451.x);
  int _455 = int(_451.y);
  int2 _457 = int3(_454, _455, 0).xy;
  float4 _459 = _69.Load(int3(_457, 0));
  float4 _461 = _70.Load(int3(_457, 0));
  float _464 = _459.x;
  float _465 = _459.y;
  float _466 = _459.z;
  float2 _469 = (_461.xy * 2.0f) - 1.0f.xx;
  float _473 = 1.0f - dot(1.0f.xx, abs(_469));
  float3 _475 = float3(_469.x, _473, _469.y);
  float3 _487;
  if (_473 < 0.0f) {
    float2 _482 = _475.xz;
    bool2 _483 = bool2(_482.x >= 0.0f.xx.x, _482.y >= 0.0f.xx.y);
    float2 _485 = (1.0f.xx - abs(_475.zx)) * float2(_483.x ? 1.0f.xx.x : (-1.0f).xx.x, _483.y ? 1.0f.xx.y : (-1.0f).xx.y);
    _487 = float3(_485.x, _475.y, _485.y);
  } else {
    _487 = _475;
  }
  float3 _488 = normalize(_487);
  float _489 = _461.z;
  float2 _493 = float2(_451);
  float2 _498 = (_493 + 0.5f.xx) * _9_m0.zw;
  float2 _506 = gl_FragCoord.xy * _9_m0.zw;
  float2 _508 = (_506 * 2.0f) - 1.0f.xx;
  float4 _511 = float4(_508, _19.SampleLevel(_12, _498, 0.0f).x, 1.0f);
  _511.y = -_508.y;
  float4 _514 = mul(_7_m6, _511);
  float3 _518 = _514.xyz / _514.w.xxx;
  float _519 = _518.x;
  float _520 = _518.y;
  float4 _522 = float4(_519, _520, _518.z, 1.0f);
  float _525 = abs(mul(_7_m0, _522).z);
  float3 _540;
  do {
    if (_9_m4.w == 0.0f) {
      _540 = _7_m11.xyz - _518;
      break;
    } else {
      _540 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _541 = dot(_540, _540);
  float _543 = rsqrt(max(_541, 9.9999999392252902907785028219223e-09f));
  float3 _544 = _540 * _543;
  float _545 = _541 * _543;
  float3 _546 = -_544;
  bool _549 = _9_m132.x > 0.00048828125f;
  float2 _559;
  if (_549) {
    _559 = _68.SampleBias(_13, _4, _9_m16).xy;
  } else {
    _559 = 1.0f.xx;
  }
  float _560 = dot(_488, float3(0.0f, -1.0f, 0.0f));
  float3 _616;
  float3 _617;
  [branch] if (_9_m124.x > 0.5f) {
    float _587 = abs(_488.x);
    float _589 = abs(_488.y);
    float _591 = abs(_488.z);
    float3 _596 = float3(_587, _589, _591) * (1.0f / ((_587 + _589) + _591));
    float4 _609 = _45.SampleLevel(_14, _518 * _9_m127.x, 0.0f);
    float _610 = _609.x;
    _616 = float3(_610, _436, _436);
    _617 = ((((float3(0.0f, 0.0f, 1.0f) * _596.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _596.y)) + (float3(1.0f, 0.0f, 0.0f) * _596.z)) * ((_610 * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_560)));
  }
  else {
    _616 = 0.0f.xxx;
    _617 = 0.0f.xxx;
  }
  float4 _631 = mul(_43_m0, float4((_518 + ((((_488 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_560, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _560), 0.100000001490116119384765625f, 1.0f)))) + _617, 1.0f));
  float2 _634 = (_631.xy * 0.5f) + 0.5f.xx;
  float4 _635 = float4(_634.x, _634.y, _631.z, _631.w);
  _635.y = 1.0f - _634.y;
  float _656;
  [branch] if (_9_m124.y > 0.5f) {
    _656 = _41.SampleCmpLevelZero(_17, (_635.xy + _43_m1.xy).xy, max(_631.z, 0.00048828125f));
  }
  else {
    _656 = 1.0f;
  }
  float _659 = _488.y;
  float _660 = clamp(_659, 0.0f, 1.0f);
  float _661 = lerp(_9_m128.w, 1.0f, _660);
  float2 _665 = _518.xz;
  float2 _670 = abs(_665 - _7_m11.xz);
  float _673 = max(_670.x, _670.y);
  float _683 = lerp(_661 * _656, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _673));
  float3 _690 = ddy_fine(_518);
  float3 _691 = ddx_fine(_518);
  float3 _692 = cross(_690, _691);
  float _698 = clamp((_692 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_692, _692)))).y, 0.0f, 1.0f);
  float _701 = _9_m121.z * 0.300000011920928955078125f;
  float _703 = _701 + 0.68599998950958251953125f;
  float _710 = 1.0f - clamp((_525 - 15.0f) * 0.014999999664723873138427734375f, 0.0f, 1.0f);
  float _725 = smoothstep(min(_9_m126.w, 0.9900000095367431640625f), _9_m126.w, clamp(smoothstep(max(_703, 0.9700000286102294921875f), 0.9900000095367431640625f, _660) + (smoothstep(0.990999996662139892578125f, 1.0f, _698) * step(_465, (_616.x * 0.20000000298023223876953125f) + 0.800000011920928955078125f)), 0.0f, 1.0f));
  float3 _924;
  float _925;
  [branch] if ((_9_m121.y > 0.00048828125f) && ((smoothstep(_701 + 0.686999976634979248046875f, _703, _698) * smoothstep(-0.5f, -0.100000001490116119384765625f, _659)) > 0.00048828125f)) {
    float3 _734 = abs(_488);
    float3 _735 = _734 * _734;
    float3 _740 = _735 * (1.0f / (_735.x + _735.z));
    float3 _742 = normalize(cross(_488, float3(0.0f, 1.0f, 0.0f)));
    float3 _744 = normalize(cross(_742, _488));
    float3 _760 = floor((_518 * 2.0f) + 0.31415927410125732421875f.xxx) + 0.5f.xxx;
    float _768 = frac(sin(dot(fmod(_760.xz + _760.yy, 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
    float2 _772 = (step(0.0f.xx, _488.zx) * 2.0f) - 1.0f.xx;
    float3 _775 = _518;
    _775.x = _519 * _772.x;
    _775.z = _518.z * (-_772.y);
    float _787 = _616.x * _768;
    float2 _795 = float2(frac(((-_9_m121.x) * (((1.0f - _768) * 0.699999988079071044921875f) + 0.300000011920928955078125f)) + (_787 * 3.0f)), frac((_9_m121.x * (-0.300000011920928955078125f)) + (_787 * 6.0f)));
    float _798 = floor(_768 * 5.0f) + 1.0f;
    float2 _802 = frac(float2(_798, 0.100000001490116119384765625f * _798) * _520);
    float2 _814 = lerp(max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _802 - (_795 - 1.0f.xx)), _795 - _802), max(smoothstep(0.800000011920928955078125f.xx, 1.0f.xx, _802 - _795), (_795 + 1.0f.xx) - _802), step(_795, _802));
    float _815 = _814.x;
    float _817 = smoothstep(0.4000000059604644775390625f, 1.0f, _815 * _815);
    float _818 = _814.y;
    float _823 = (_818 * 2.0f) - 1.0f;
    float2 _832 = float2((_616.x * 0.100000001490116119384765625f) + ((0.00999999977648258209228515625f * _817) * _823), (1.0f.xx * _616.x).y * (_616.x + (((_817 * 0.00999999977648258209228515625f) * _817) * _823)));
    float4 _856 = (_46.SampleBias(_14, (_775.zy * _9_m122.xy) + _832, _9_m16) * _740.x) + (_46.SampleBias(_14, (_775.xy * _9_m122.xy) + _832, _9_m16) * _740.z);
    float2 _859 = (_856.xy * 2.0f) - 1.0f.xx;
    float _865 = _856.w;
    float _875 = max(smoothstep(0.699999988079071044921875f, 1.0f, clamp(_818 + (((_817 * 2.0f) - 1.0f) * 0.800000011920928955078125f), 0.0f, 1.0f) * (1.0f - (_865 * 0.5f))), lerp(0.100000001490116119384765625f, 0.60000002384185791015625f, clamp(((_823 * _865) * 0.5f) + _817, 0.0f, 1.0f)));
    float _881 = _856.z;
    float _891 = (((lerp(0.100000001490116119384765625f, (_875 * 0.699999988079071044921875f) + 0.300000011920928955078125f, step(pow(clamp(1.0f - _875, 0.0f, 1.0f), 5.0f), _881)) * _881) * _9_m121.y) * 0.3300000131130218505859375f) * ((_9_m120.x * (_683 * step(0.04500000178813934326171875f, _466))) * _710);
    float2 _894 = _859.xy;
    float _899 = max(0.00048828125f, sqrt(1.0f - clamp(dot(_894, _894), 0.0f, 1.0f)));
    float3 _900 = float3(_859, _899);
    float2 _904 = _900.xy * (smoothstep(0.0f, 0.100000001490116119384765625f, _891) * _9_m121.y);
    float3 _905 = float3(_904.x, _904.y, _900.z);
    _905.z = lerp(lerp(0.0f, -0.20000000298023223876953125f, smoothstep(1.5f, 3.0f, _9_m121.y)), _899, _891);
    _924 = lerp(_488, mul(float4x4(float4(_742.x, _744.x, _488.x, 0.0f), float4(_742.y, _744.y, _659, 0.0f), float4(_742.z, _744.z, _488.z, 0.0f), float4(0.0f, 0.0f, 0.0f, 1.0f)), float4(_905 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_905, _905))), 0.0f)).xyz, _891.xxx);
    _925 = (_891 * _9_m121.y) * 0.3300000131130218505859375f;
  }
  else {
    _924 = _488;
    _925 = 0.0f;
  }
  float3 _1073;
  float _1074;
  [branch] if (_725 > 0.00048828125f) {
    float2 _932 = (-_665) * _9_m126.xy;
    float2 _934 = frac(_932);
    float2 _981;
    [branch] if (_9_m125.y > 0.00048828125f) {
      float _944 = frac(sin(dot(fmod(floor(_932), 1024.0f.xx), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
      float _957 = floor(frac(_9_m125.x + _944) * (_9_m126.z * _9_m126.z));
      float _959 = 1.0f / _9_m126.z;
      _981 = ((_47.SampleBias(_13, frac((lerp(_934, _934.yx, step(_944, 0.5f).xx) * _959) + float2(_959 * fmod(_957, _9_m126.z), _959 * ((_9_m126.z - 1.0f) - floor(_957 * _959)))), _9_m16).xy * 2.0f) * _9_m125.y) - _9_m125.y.xx;
    }
    else {
      _981 = 0.0f.xx;
    }
    float2 _1022;
    [branch] if (_9_m125.w > 0.00048828125f) {
      float4 _1007 = _47.SampleBias(_14, (_932 + float2(0.0f, _9_m125.z)) + ((float2(_616.x, 1.0f) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1011 = _47.SampleBias(_14, (_932 - float2(_9_m125.z, 0.0f)) - ((float2(1.0f, 1.0f - _616.x) * 0.5f) - 0.5f.xx), _9_m16);
      float4 _1017 = (((float4(_1007.z, _1007.w, _1011.z, _1011.w) * 2.0f) * _9_m125.w) - _9_m125.w.xxxx) * _616.x;
      _1022 = _981 + (_1017.xy + _1017.zw);
    }
    else {
      _1022 = _981;
    }
    float _1030 = (((_616.x * 0.699999988079071044921875f) + (_489 * 0.300000011920928955078125f)) * clamp((_489 - 0.100000001490116119384765625f) * 100.0f, 0.0f, 1.0f)) * _465;
    float _1034 = smoothstep(min(_1030, 0.9900000095367431640625f), clamp(_1030 + 0.60000002384185791015625f, 0.0f, 1.0f), _9_m126.w);
    float _1045 = _9_m120.x * _725;
    float3 _1055 = float3(_1022, max(0.00048828125f, sqrt(1.0f - clamp(dot(_1022, _1022), 0.0f, 1.0f))));
    float3 _1061 = (_1055 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1055, _1055)))).yzx * float3(1.0f, 1.0f, -1.0f);
    _1073 = lerp(_488, _1061, (((_1045 * _1034) * _683) * _710).xxx);
    _1074 = max((smoothstep(0.0f, _465 * 0.20000000298023223876953125f, (_1045 * clamp(lerp((_9_m126.w * (1.0f - _616.x)) * 0.5f, 1.0f, _1034) + (smoothstep(0.60000002384185791015625f, 1.0f, _9_m126.w) * 0.60000002384185791015625f), 0.0f, 1.0f)) * _1061.y) * _683) * _710, 0.0f);
  }
  else {
    _1073 = _924;
    _1074 = 0.0f;
  }
  float _1077 = min(_559.x, _559.y);
  float2 _1079 = _559 * (1.0f - lerp(lerp(_9_m128.z * _661, 1.0f, _683), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _673)));
  float _1080 = _1079.x;
  float _1083 = clamp((_466 - 0.0500000007450580596923828125f) * 1.05260002613067626953125f, 0.0f, 1.0f);
  float _1084 = 1.0f - _489;
  float _1100 = lerp(clamp((clamp((_1084 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f) + lerp(0.0f, _9_m122.z, _925)) + ((_1074 * 0.100000001490116119384765625f) * _489), 0.0f, 1.0f), 1.0f, _464);
  float _1102 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _560);
  float _1111 = lerp(1.0f, 0.25f, ((_9_m120.x * _1100) * (1.0f - _464)) * _1102);
  float _1127 = (1.0f - lerp(_1084, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _1100) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_1084)), 0.0f, 1.0f), _1084, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _1102) * (1.0f - _1080))) * lerp(1.0f, 0.100000001490116119384765625f, max(_1074, smoothstep(0.0f, 0.0500000007450580596923828125f, _925)));
  float _1132;
  float _1133;
  if (_549) {
    _1132 = lerp(1.0f, _559.y, _1083);
    _1133 = lerp(1.0f, 0.0f, _1083);
  } else {
    _1132 = 1.0f;
    _1133 = 1.0f;
  }
  float _1138 = lerp(lerp(min(_1132, _1127), _1127, _1077), _489, _1080);
  float3 _1140 = _71.Load(int3(_457, 0)).xyz * lerp(lerp(min(_1133, _1111), _1111, _1077), 1.0f, _1080);
  float3 _1141 = _1140 * _464;
  float3 _1142 = _1140 - _1141;
  float3 _1146 = (0.039999999105930328369140625f - (0.039999999105930328369140625f * _464)).xxx + _1141;
  float _1147 = dot(_1073, _544);
  float _1148 = max(0.0f, _1147);
  float _1149 = _1138 * _1138;
  float _1150 = _1148 * _1148;
  float _1151 = _1150 * _1148;
  float2 _1152 = float2(1.0f, _1148);
  float2 _1155 = float2(1.0f, _1149);
  float _1156 = _1149 * _1149;
  float3 _1158 = float3(1.0f, _1149, _1156 * _1149);
  float _1163 = dot(mul(_1152, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _1155) / dot(mul(float3(1.0f, _1150, _1151), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _1158);
  float _1168 = dot(mul(_1152, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _1155) / dot(mul(float3(1.0f, _1148, _1151), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _1158);
  float3 _1171 = (_1146 * _1163) + _1168.xxx;
  float _1172 = _1163 + _1168;
  float4 _1332;
  do {
    [branch] if (_32_m4 == 0) {
      _1332 = 0.0f.xxxx;
      break;
    }
    float4 _1192 = _38.Load(int3(_457, 0));
    float _1193 = _1192.x;
    float4 _1331;
    if (_1193 > 0.001000000047497451305389404296875f) {
      float3 _1203 = reflect(_546, _1073);
      float3 _1204 = -_30_m0.xyz;
      float _1209 = dot(_1204, _1203);
      float3 _1211 = _1203 - (_1204 * _1209);
      bool3 _1213 = (_1209 < _30_m4.z).xxx;
      float3 _1221 = normalize((_1204 * _30_m4.z) + ((_1211 * rsqrt(max(6.103515625e-05f, dot(_1211, _1211)))) * _30_m4.y));
      float3 _1222 = float3(_1213.x ? _1221.x : _1203.x, _1213.y ? _1221.y : _1203.y, _1213.z ? _1221.z : _1203.z);
      float3 _1226 = _1222 + _544;
      float3 _1230 = _1226 * rsqrt(max(6.103515625e-05f, dot(_1226, _1226)));
      float _1233 = clamp(dot(_1222, _1073), 0.0f, 1.0f);
      float _1235 = clamp(dot(_1073, _1230), 0.0f, 1.0f);
      float _1238 = clamp(_1147, 0.0f, 1.0f);
      float _1259 = (((_1235 * _1156) - _1235) * _1235) + 1.0f;
      float _1262 = 1.0f - clamp(dot(_544, _1230), 0.0f, 1.0f);
      float _1263 = _1262 * _1262;
      float _1265 = (_1262 * _1263) * _1263;
      float _1289 = 1.0f - _1138;
      float _1296 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1289 * (1.04997003078460693359375f + (_1289 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1289))))));
      float _1297 = 1.0f - _1296;
      float3 _1300 = _1146 + ((1.0f.xxx - _1146) * 0.0476190485060214996337890625f);
      float3 _1316 = ((clamp((min(((_1146 * (1.0f - _1265)) + _1265.xxx) * ((_1156 / (_1259 * _1259)) * (0.5f / (((_1233 * sqrt(((((-_1238) * _1156) + _1238) * _1238) + _1156)) + (_1238 * sqrt(((((-_1233) * _1156) + _1233) * _1233) + _1156))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_1300 * (((_48.SampleLevel(_13, (float2(_1238, _1138) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_1233, _1138) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1296) / _1297)) * _1300) / (1.0f.xxx - (_1300 * _1297)))) * _30_m4.x, 0.0f.xxx, 1000.0f.xxx) * _1233) + ((_1142 * 1.0f) * clamp(dot(_1222, _488), 0.0f, 1.0f))) * _30_m1.xyz;
      float3 _1329 = lerp(_1316, _1316 * _40.SampleBias(_13, float2(_1193, 0.5f), _9_m16).xyz, (1.0f - _1193).xxx) * min(_49.SampleLevel(_13, _506, 0.0f).x, 1.0f);
      _1331 = float4(_1329.x, _1329.y, _1329.z, 0.0f.xxxx.w);
    } else {
      _1331 = 0.0f.xxxx;
    }
    _1332 = _1331;
    break;
  } while (false);
  float2 _1334 = floor(_493 * 0.03125f);
  int _1342 = int((_1334.x + (_1334.y * _32_m9)) * 8.0f);
  float _1349 = floor(_525 - (_9_m3.y * _32_m15));
  float _1353 = clamp(_1349, 0.0f, _32_m11 - 1.0f);
  int _1355 = int(_1353 * 8.0f);
  float4 _1361 = _39.SampleBias(_13, _498, _9_m16);
  float3 _1363;
  float _1366;
  _1363 = 0.0f.xxx;
  _1366 = 1.0f;
  float3 _1364;
  float _1367;
  [loop] for (int _1368 = 0; _1368 <= 7; _1363 = _1364, _1366 = _1367, _1368++) {
    uint _1389 = (_1349 <= _1353) ? (_25.Load(uint((_32_m2 + _1342) + _1368) * 4 + 0) & _25.Load(uint((_32_m3 + _1355) + _1368) * 4 + 0)) : 0u;
    uint _1390 = uint(_1368);
    float3 _1394;
    _1367 = _1366;
    _1394 = 0.0f.xxx;
    uint _1397;
    float _1392;
    float3 _1395;
    [loop] for (uint _1396 = _1389; _1396 != 0u; _1367 = _1392, _1394 = _1395, _1396 = _1397) {
      uint _1401 = firstbitlow(_1396);
      _1397 = _1396 ^ (1u << (_1401 & 31u));
      int _1407 = int((32u * _1390) + _1401) * 8;
      int _1410 = _1407 + 1;
      int _1413 = _1407 + 2;
      int _1416 = _1407 + 3;
      int _1419 = _1407 + 4;
      int _1422 = _1407 + 5;
      int _1425 = _1407 + 6;
      int _1428 = _1407 + 7;
      uint _1432 = uint(_30_m6[_1422].w);
      float _1507;
      if ((_1432 & 1u) == 1u) {
        uint _1438 = asuint(_30_m6[_1422].x);
        uint _1445 = asuint(_30_m6[_1422].y);
        uint _1452 = asuint(_30_m6[_1422].z);
        uint _1459 = asuint(_30_m6[_1425].x);
        uint _1466 = asuint(_30_m6[_1425].y);
        uint _1473 = asuint(_30_m6[_1425].z);
        float3 _1492 = abs(mul(float4(_518 - _30_m6[_1410].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1438).x, spvUnpackHalf2x16(_1452).x, spvUnpackHalf2x16(_1466).x, 0.0f), float4(spvUnpackHalf2x16(_1438 >> 16u).x, spvUnpackHalf2x16(_1452 >> 16u).x, spvUnpackHalf2x16(_1466 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1445).x, spvUnpackHalf2x16(_1459).x, spvUnpackHalf2x16(_1473).x, 0.0f), float4(spvUnpackHalf2x16(_1445 >> 16u).x, spvUnpackHalf2x16(_1459 >> 16u).x, spvUnpackHalf2x16(_1473 >> 16u).x, 0.0f))).xyz);
        float _1499 = _30_m6[_1428].x * 0.5f;
        float _1505 = 1.0f - clamp((max(max(_1492.x, _1492.y), _1492.z) - (_1499 + 0.5f)) / (0.5f - _1499), 0.0f, 1.0f);
        _1507 = _1505 * _1505;
      } else {
        _1507 = 1.0f;
      }
      uint _1511 = uint(_30_m6[_1407].w);
      bool _1514 = _30_m6[_1416].z > 0.5f;
      if ((false || (_1507 < 0.001000000047497451305389404296875f)) || ((_1511 < 4u) && _1514)) {
        _1392 = _1367;
        _1395 = _1394;
        continue;
      }
      float _4139;
      float3 _4140;
      do {
        [branch] if (_1511 >= 4u) {
          float3 _2767;
          do {
            float3 _1533 = _30_m6[_1410].xyz - _518;
            if (dot(_30_m6[_1416].xyz, _1533) > 0.0f) {
              _2767 = 0.0f.xxx;
              break;
            }
            float _1540 = dot(_1533, _1533) * _30_m6[_1410].w;
            float _1543 = clamp(1.0f - (_1540 * _1540), 0.0f, 1.0f);
            float _1544 = _1543 * _1543;
            if (_1544 <= 0.0f) {
              _2767 = 0.0f.xxx;
              break;
            }
            float3 _1583;
            float _1584;
            bool _1585;
            float3 _1612;
            float3 _1614;
            float3 _1616;
            float3 _1618;
            float3 _1548 = _30_m6[_1413].xyz * _30_m6[_1413].w;
            float3 _1549 = _30_m6[_1410].xyz - _1548;
            float3 _1550 = _30_m6[_1419].xyz * _30_m6[_1416].w;
            float3 _1553 = _30_m6[_1410].xyz + _1548;
            float2 _1564 = (float2(clamp(_1138, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(dot(_488, _544), 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1568 = _55.SampleLevel(_13, _1564, 0.0f);
            float4 _1572 = _56.SampleLevel(_13, _1564, 0.0f);
            float _1966;
            do {
              _1583 = _544 - (_488 * dot(_544, _488));
              _1584 = dot(_1583, _1583);
              _1585 = _1584 > 9.9999997473787516355514526367188e-05f;
              float3 _1607;
              if (_1585) {
                _1607 = _1583 * rsqrt(_1584);
              } else {
                float _1589 = _488.z;
                float _1591 = (_1589 >= 0.0f) ? 1.0f : (-1.0f);
                float _1593 = (-1.0f) / (_1591 + _1589);
                float _1595 = _488.x;
                _1607 = float3(1.0f + (((_1591 * _1593) * _1595) * _1595), ((_1591 * _1595) * _659) * _1593, (-_1591) * _1595);
              }
              float3x3 _1611 = mul(float3x3(float3(_1568.x, 0.0f, _1568.z), float3(0.0f, 1.0f, 0.0f), float3(_1568.y, 0.0f, _1568.w)), float3x3(_1607, cross(_488, _1607), _488));
              _1612 = (_1549 - _1550) - _518;
              float3 _1613 = mul(_1611, _1612);
              _1614 = (_1549 + _1550) - _518;
              float3 _1615 = mul(_1611, _1614);
              _1616 = (_1553 + _1550) - _518;
              float3 _1617 = mul(_1611, _1616);
              _1618 = (_1553 - _1550) - _518;
              float3 _1619 = mul(_1611, _1618);
              float _1620 = _1613.z;
              float _1623 = _1615.z;
              float _1627 = _1617.z;
              float _1631 = _1619.z;
              int _1635 = (((int(_1620 > 0.0f) | ((_1623 > 0.0f) ? 2 : 0)) | ((_1627 > 0.0f) ? 4 : 0)) | ((_1631 > 0.0f) ? 8 : 0));
              float3 _1872;
              float3 _1873;
              float3 _1874;
              float3 _1875;
              float3 _1876;
              int _1877;
              if (_1635 == 0) {
                _1872 = _1619;
                _1873 = _1617;
                _1874 = _1615;
                _1875 = _1613;
                _1876 = 0.0f.xxx;
                _1877 = 0;
              } else {
                float3 _1866;
                float3 _1867;
                float3 _1868;
                float3 _1869;
                float3 _1870;
                int _1871;
                if (_1635 == 1) {
                  _1866 = _1619;
                  _1867 = (_1613 * (-_1631)) + (_1619 * _1620);
                  _1868 = (_1613 * (-_1623)) + (_1615 * _1620);
                  _1869 = _1613;
                  _1870 = 0.0f.xxx;
                  _1871 = 3;
                } else {
                  float3 _1852;
                  float3 _1853;
                  float3 _1854;
                  float3 _1855;
                  float3 _1856;
                  int _1857;
                  if (_1635 == 2) {
                    _1852 = _1619;
                    _1853 = (_1615 * (-_1627)) + (_1617 * _1623);
                    _1854 = _1615;
                    _1855 = (_1615 * (-_1620)) + (_1613 * _1623);
                    _1856 = 0.0f.xxx;
                    _1857 = 3;
                  } else {
                    float3 _1838;
                    float3 _1839;
                    float3 _1840;
                    float3 _1841;
                    float3 _1842;
                    int _1843;
                    if (_1635 == 3) {
                      _1838 = (_1613 * (-_1631)) + (_1619 * _1620);
                      _1839 = (_1615 * (-_1627)) + (_1617 * _1623);
                      _1840 = _1615;
                      _1841 = _1613;
                      _1842 = 0.0f.xxx;
                      _1843 = 4;
                    } else {
                      float3 _1824;
                      float3 _1825;
                      float3 _1826;
                      float3 _1827;
                      float3 _1828;
                      int _1829;
                      if (_1635 == 4) {
                        _1824 = _1619;
                        _1825 = _1617;
                        _1826 = (_1617 * (-_1623)) + (_1615 * _1627);
                        _1827 = (_1617 * (-_1631)) + (_1619 * _1627);
                        _1828 = 0.0f.xxx;
                        _1829 = 3;
                      } else {
                        float3 _1810;
                        float3 _1811;
                        float3 _1812;
                        float3 _1813;
                        float3 _1814;
                        int _1815;
                        if (_1635 == 5) {
                          _1810 = _1619;
                          _1811 = _1617;
                          _1812 = _1615;
                          _1813 = _1613;
                          _1814 = 0.0f.xxx;
                          _1815 = 0;
                        } else {
                          float3 _1804;
                          float3 _1805;
                          float3 _1806;
                          float3 _1807;
                          float3 _1808;
                          int _1809;
                          if (_1635 == 6) {
                            _1804 = (_1617 * (-_1631)) + (_1619 * _1627);
                            _1805 = _1617;
                            _1806 = _1615;
                            _1807 = (_1615 * (-_1620)) + (_1613 * _1623);
                            _1808 = 0.0f.xxx;
                            _1809 = 4;
                          } else {
                            float3 _1790;
                            float3 _1791;
                            float3 _1792;
                            float3 _1793;
                            float3 _1794;
                            int _1795;
                            if (_1635 == 7) {
                              float _1783 = -_1631;
                              _1790 = (_1617 * _1783) + (_1619 * _1627);
                              _1791 = _1617;
                              _1792 = _1615;
                              _1793 = _1613;
                              _1794 = (_1613 * _1783) + (_1619 * _1620);
                              _1795 = 5;
                            } else {
                              float3 _1777;
                              float3 _1778;
                              float3 _1779;
                              float3 _1780;
                              float3 _1781;
                              int _1782;
                              if (_1635 == 8) {
                                _1777 = _1619;
                                _1778 = _1619;
                                _1779 = (_1619 * (-_1627)) + (_1617 * _1631);
                                _1780 = (_1619 * (-_1620)) + (_1613 * _1631);
                                _1781 = 0.0f.xxx;
                                _1782 = 3;
                              } else {
                                float3 _1763;
                                float3 _1764;
                                float3 _1765;
                                float3 _1766;
                                float3 _1767;
                                int _1768;
                                if (_1635 == 9) {
                                  _1763 = _1619;
                                  _1764 = (_1619 * (-_1627)) + (_1617 * _1631);
                                  _1765 = (_1613 * (-_1623)) + (_1615 * _1620);
                                  _1766 = _1613;
                                  _1767 = 0.0f.xxx;
                                  _1768 = 4;
                                } else {
                                  float3 _1749;
                                  float3 _1750;
                                  float3 _1751;
                                  float3 _1752;
                                  float3 _1753;
                                  int _1754;
                                  if (_1635 == 10) {
                                    _1749 = _1619;
                                    _1750 = _1617;
                                    _1751 = _1615;
                                    _1752 = _1613;
                                    _1753 = 0.0f.xxx;
                                    _1754 = 0;
                                  } else {
                                    float3 _1743;
                                    float3 _1744;
                                    float3 _1745;
                                    float3 _1746;
                                    float3 _1747;
                                    int _1748;
                                    if (_1635 == 11) {
                                      float _1736 = -_1627;
                                      _1743 = (_1619 * _1736) + (_1617 * _1631);
                                      _1744 = (_1615 * _1736) + (_1617 * _1623);
                                      _1745 = _1615;
                                      _1746 = _1613;
                                      _1747 = _1619;
                                      _1748 = 5;
                                    } else {
                                      float3 _1730;
                                      float3 _1731;
                                      float3 _1732;
                                      float3 _1733;
                                      float3 _1734;
                                      int _1735;
                                      if (_1635 == 12) {
                                        _1730 = _1619;
                                        _1731 = _1617;
                                        _1732 = (_1617 * (-_1623)) + (_1615 * _1627);
                                        _1733 = (_1619 * (-_1620)) + (_1613 * _1631);
                                        _1734 = 0.0f.xxx;
                                        _1735 = 4;
                                      } else {
                                        bool _1688 = _1635 == 13;
                                        float3 _1715;
                                        float3 _1716;
                                        float3 _1717;
                                        float3 _1718;
                                        int _1719;
                                        if (_1688) {
                                          float _1708 = -_1623;
                                          _1715 = (_1617 * _1708) + (_1615 * _1627);
                                          _1716 = (_1613 * _1708) + (_1615 * _1620);
                                          _1717 = _1613;
                                          _1718 = _1619;
                                          _1719 = 5;
                                        } else {
                                          float3 _1705;
                                          float3 _1706;
                                          int _1707;
                                          if (_1635 == 14) {
                                            float _1698 = -_1620;
                                            _1705 = (_1615 * _1698) + (_1613 * _1623);
                                            _1706 = (_1619 * _1698) + (_1613 * _1631);
                                            _1707 = 5;
                                          } else {
                                            _1705 = _1613;
                                            _1706 = 0.0f.xxx;
                                            _1707 = (_1635 == 15) ? 4 : 0;
                                          }
                                          _1715 = _1617;
                                          _1716 = _1615;
                                          _1717 = _1705;
                                          _1718 = _1706;
                                          _1719 = _1707;
                                        }
                                        bool3 _1720 = _1688.xxx;
                                        _1730 = float3(_1720.x ? _1617.x : _1619.x, _1720.y ? _1617.y : _1619.y, _1720.z ? _1617.z : _1619.z);
                                        _1731 = _1715;
                                        _1732 = _1716;
                                        _1733 = _1717;
                                        _1734 = _1718;
                                        _1735 = _1719;
                                      }
                                      _1743 = _1730;
                                      _1744 = _1731;
                                      _1745 = _1732;
                                      _1746 = _1733;
                                      _1747 = _1734;
                                      _1748 = _1735;
                                    }
                                    _1749 = _1743;
                                    _1750 = _1744;
                                    _1751 = _1745;
                                    _1752 = _1746;
                                    _1753 = _1747;
                                    _1754 = _1748;
                                  }
                                  _1763 = _1749;
                                  _1764 = _1750;
                                  _1765 = _1751;
                                  _1766 = _1752;
                                  _1767 = _1753;
                                  _1768 = _1754;
                                }
                                _1777 = _1763;
                                _1778 = _1764;
                                _1779 = _1765;
                                _1780 = _1766;
                                _1781 = _1767;
                                _1782 = _1768;
                              }
                              _1790 = _1777;
                              _1791 = _1778;
                              _1792 = _1779;
                              _1793 = _1780;
                              _1794 = _1781;
                              _1795 = _1782;
                            }
                            _1804 = _1790;
                            _1805 = _1791;
                            _1806 = _1792;
                            _1807 = _1793;
                            _1808 = _1794;
                            _1809 = _1795;
                          }
                          _1810 = _1804;
                          _1811 = _1805;
                          _1812 = _1806;
                          _1813 = _1807;
                          _1814 = _1808;
                          _1815 = _1809;
                        }
                        _1824 = _1810;
                        _1825 = _1811;
                        _1826 = _1812;
                        _1827 = _1813;
                        _1828 = _1814;
                        _1829 = _1815;
                      }
                      _1838 = _1824;
                      _1839 = _1825;
                      _1840 = _1826;
                      _1841 = _1827;
                      _1842 = _1828;
                      _1843 = _1829;
                    }
                    _1852 = _1838;
                    _1853 = _1839;
                    _1854 = _1840;
                    _1855 = _1841;
                    _1856 = _1842;
                    _1857 = _1843;
                  }
                  _1866 = _1852;
                  _1867 = _1853;
                  _1868 = _1854;
                  _1869 = _1855;
                  _1870 = _1856;
                  _1871 = _1857;
                }
                _1872 = _1866;
                _1873 = _1867;
                _1874 = _1868;
                _1875 = _1869;
                _1876 = _1870;
                _1877 = _1871;
              }
              bool3 _1879 = (_1877 == 3).xxx;
              bool3 _1882 = (_1877 == 4).xxx;
              if (_1877 == 0) {
                _1966 = 0.0f;
                break;
              }
              float3 _1887 = normalize(_1875);
              float3 _1888 = normalize(_1874);
              float3 _1889 = normalize(_1873);
              float3 _1890 = normalize(float3(_1879.x ? _1875.x : _1872.x, _1879.y ? _1875.y : _1872.y, _1879.z ? _1875.z : _1872.z));
              float3 _1891 = normalize(float3(_1882.x ? _1875.x : _1876.x, _1882.y ? _1875.y : _1876.y, _1882.z ? _1875.z : _1876.z));
              float _1893 = clamp(dot(_1887, _1888), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1897 = sqrt(1.0f - (_1893 * _1893));
              float _1905 = clamp(dot(_1888, _1889), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1909 = sqrt(1.0f - (_1905 * _1905));
              float _1918 = clamp(dot(_1889, _1890), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1922 = sqrt(1.0f - (_1918 * _1918));
              float _1929 = ((cross(_1887, _1888).z * ((_1897 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1893) / _1897))) + (cross(_1888, _1889).z * ((_1909 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1905) / _1909)))) + (cross(_1889, _1890).z * ((_1922 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1918) / _1922)));
              float _1946;
              if (_1877 >= 4) {
                float _1934 = clamp(dot(_1890, _1891), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1938 = sqrt(1.0f - (_1934 * _1934));
                _1946 = _1929 + (cross(_1890, _1891).z * ((_1938 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1934) / _1938)));
              } else {
                _1946 = _1929;
              }
              float _1963;
              if (_1877 == 5) {
                float _1951 = clamp(dot(_1891, _1887), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1955 = sqrt(1.0f - (_1951 * _1951));
                _1963 = _1946 + (cross(_1891, _1887).z * ((_1955 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1951) / _1955)));
              } else {
                _1963 = _1946;
              }
              _1966 = max(_1963, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _2353;
            do {
              float3 _1999;
              if (_1585) {
                _1999 = _1583 * rsqrt(_1584);
              } else {
                float _1981 = _488.z;
                float _1983 = (_1981 >= 0.0f) ? 1.0f : (-1.0f);
                float _1985 = (-1.0f) / (_1983 + _1981);
                float _1987 = _488.x;
                _1999 = float3(1.0f + (((_1983 * _1985) * _1987) * _1987), ((_1983 * _1987) * _659) * _1985, (-_1983) * _1987);
              }
              float3x3 _2002 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1999, cross(_488, _1999), _488));
              float3 _2003 = mul(_2002, _1612);
              float3 _2004 = mul(_2002, _1614);
              float3 _2005 = mul(_2002, _1616);
              float3 _2006 = mul(_2002, _1618);
              float _2007 = _2003.z;
              float _2010 = _2004.z;
              float _2014 = _2005.z;
              float _2018 = _2006.z;
              int _2022 = (((int(_2007 > 0.0f) | ((_2010 > 0.0f) ? 2 : 0)) | ((_2014 > 0.0f) ? 4 : 0)) | ((_2018 > 0.0f) ? 8 : 0));
              float3 _2259;
              float3 _2260;
              float3 _2261;
              float3 _2262;
              float3 _2263;
              int _2264;
              if (_2022 == 0) {
                _2259 = _2006;
                _2260 = _2005;
                _2261 = _2004;
                _2262 = _2003;
                _2263 = 0.0f.xxx;
                _2264 = 0;
              } else {
                float3 _2253;
                float3 _2254;
                float3 _2255;
                float3 _2256;
                float3 _2257;
                int _2258;
                if (_2022 == 1) {
                  _2253 = _2006;
                  _2254 = (_2003 * (-_2018)) + (_2006 * _2007);
                  _2255 = (_2003 * (-_2010)) + (_2004 * _2007);
                  _2256 = _2003;
                  _2257 = 0.0f.xxx;
                  _2258 = 3;
                } else {
                  float3 _2239;
                  float3 _2240;
                  float3 _2241;
                  float3 _2242;
                  float3 _2243;
                  int _2244;
                  if (_2022 == 2) {
                    _2239 = _2006;
                    _2240 = (_2004 * (-_2014)) + (_2005 * _2010);
                    _2241 = _2004;
                    _2242 = (_2004 * (-_2007)) + (_2003 * _2010);
                    _2243 = 0.0f.xxx;
                    _2244 = 3;
                  } else {
                    float3 _2225;
                    float3 _2226;
                    float3 _2227;
                    float3 _2228;
                    float3 _2229;
                    int _2230;
                    if (_2022 == 3) {
                      _2225 = (_2003 * (-_2018)) + (_2006 * _2007);
                      _2226 = (_2004 * (-_2014)) + (_2005 * _2010);
                      _2227 = _2004;
                      _2228 = _2003;
                      _2229 = 0.0f.xxx;
                      _2230 = 4;
                    } else {
                      float3 _2211;
                      float3 _2212;
                      float3 _2213;
                      float3 _2214;
                      float3 _2215;
                      int _2216;
                      if (_2022 == 4) {
                        _2211 = _2006;
                        _2212 = _2005;
                        _2213 = (_2005 * (-_2010)) + (_2004 * _2014);
                        _2214 = (_2005 * (-_2018)) + (_2006 * _2014);
                        _2215 = 0.0f.xxx;
                        _2216 = 3;
                      } else {
                        float3 _2197;
                        float3 _2198;
                        float3 _2199;
                        float3 _2200;
                        float3 _2201;
                        int _2202;
                        if (_2022 == 5) {
                          _2197 = _2006;
                          _2198 = _2005;
                          _2199 = _2004;
                          _2200 = _2003;
                          _2201 = 0.0f.xxx;
                          _2202 = 0;
                        } else {
                          float3 _2191;
                          float3 _2192;
                          float3 _2193;
                          float3 _2194;
                          float3 _2195;
                          int _2196;
                          if (_2022 == 6) {
                            _2191 = (_2005 * (-_2018)) + (_2006 * _2014);
                            _2192 = _2005;
                            _2193 = _2004;
                            _2194 = (_2004 * (-_2007)) + (_2003 * _2010);
                            _2195 = 0.0f.xxx;
                            _2196 = 4;
                          } else {
                            float3 _2177;
                            float3 _2178;
                            float3 _2179;
                            float3 _2180;
                            float3 _2181;
                            int _2182;
                            if (_2022 == 7) {
                              float _2170 = -_2018;
                              _2177 = (_2005 * _2170) + (_2006 * _2014);
                              _2178 = _2005;
                              _2179 = _2004;
                              _2180 = _2003;
                              _2181 = (_2003 * _2170) + (_2006 * _2007);
                              _2182 = 5;
                            } else {
                              float3 _2164;
                              float3 _2165;
                              float3 _2166;
                              float3 _2167;
                              float3 _2168;
                              int _2169;
                              if (_2022 == 8) {
                                _2164 = _2006;
                                _2165 = _2006;
                                _2166 = (_2006 * (-_2014)) + (_2005 * _2018);
                                _2167 = (_2006 * (-_2007)) + (_2003 * _2018);
                                _2168 = 0.0f.xxx;
                                _2169 = 3;
                              } else {
                                float3 _2150;
                                float3 _2151;
                                float3 _2152;
                                float3 _2153;
                                float3 _2154;
                                int _2155;
                                if (_2022 == 9) {
                                  _2150 = _2006;
                                  _2151 = (_2006 * (-_2014)) + (_2005 * _2018);
                                  _2152 = (_2003 * (-_2010)) + (_2004 * _2007);
                                  _2153 = _2003;
                                  _2154 = 0.0f.xxx;
                                  _2155 = 4;
                                } else {
                                  float3 _2136;
                                  float3 _2137;
                                  float3 _2138;
                                  float3 _2139;
                                  float3 _2140;
                                  int _2141;
                                  if (_2022 == 10) {
                                    _2136 = _2006;
                                    _2137 = _2005;
                                    _2138 = _2004;
                                    _2139 = _2003;
                                    _2140 = 0.0f.xxx;
                                    _2141 = 0;
                                  } else {
                                    float3 _2130;
                                    float3 _2131;
                                    float3 _2132;
                                    float3 _2133;
                                    float3 _2134;
                                    int _2135;
                                    if (_2022 == 11) {
                                      float _2123 = -_2014;
                                      _2130 = (_2006 * _2123) + (_2005 * _2018);
                                      _2131 = (_2004 * _2123) + (_2005 * _2010);
                                      _2132 = _2004;
                                      _2133 = _2003;
                                      _2134 = _2006;
                                      _2135 = 5;
                                    } else {
                                      float3 _2117;
                                      float3 _2118;
                                      float3 _2119;
                                      float3 _2120;
                                      float3 _2121;
                                      int _2122;
                                      if (_2022 == 12) {
                                        _2117 = _2006;
                                        _2118 = _2005;
                                        _2119 = (_2005 * (-_2010)) + (_2004 * _2014);
                                        _2120 = (_2006 * (-_2007)) + (_2003 * _2018);
                                        _2121 = 0.0f.xxx;
                                        _2122 = 4;
                                      } else {
                                        bool _2075 = _2022 == 13;
                                        float3 _2102;
                                        float3 _2103;
                                        float3 _2104;
                                        float3 _2105;
                                        int _2106;
                                        if (_2075) {
                                          float _2095 = -_2010;
                                          _2102 = (_2005 * _2095) + (_2004 * _2014);
                                          _2103 = (_2003 * _2095) + (_2004 * _2007);
                                          _2104 = _2003;
                                          _2105 = _2006;
                                          _2106 = 5;
                                        } else {
                                          float3 _2092;
                                          float3 _2093;
                                          int _2094;
                                          if (_2022 == 14) {
                                            float _2085 = -_2007;
                                            _2092 = (_2004 * _2085) + (_2003 * _2010);
                                            _2093 = (_2006 * _2085) + (_2003 * _2018);
                                            _2094 = 5;
                                          } else {
                                            _2092 = _2003;
                                            _2093 = 0.0f.xxx;
                                            _2094 = (_2022 == 15) ? 4 : 0;
                                          }
                                          _2102 = _2005;
                                          _2103 = _2004;
                                          _2104 = _2092;
                                          _2105 = _2093;
                                          _2106 = _2094;
                                        }
                                        bool3 _2107 = _2075.xxx;
                                        _2117 = float3(_2107.x ? _2005.x : _2006.x, _2107.y ? _2005.y : _2006.y, _2107.z ? _2005.z : _2006.z);
                                        _2118 = _2102;
                                        _2119 = _2103;
                                        _2120 = _2104;
                                        _2121 = _2105;
                                        _2122 = _2106;
                                      }
                                      _2130 = _2117;
                                      _2131 = _2118;
                                      _2132 = _2119;
                                      _2133 = _2120;
                                      _2134 = _2121;
                                      _2135 = _2122;
                                    }
                                    _2136 = _2130;
                                    _2137 = _2131;
                                    _2138 = _2132;
                                    _2139 = _2133;
                                    _2140 = _2134;
                                    _2141 = _2135;
                                  }
                                  _2150 = _2136;
                                  _2151 = _2137;
                                  _2152 = _2138;
                                  _2153 = _2139;
                                  _2154 = _2140;
                                  _2155 = _2141;
                                }
                                _2164 = _2150;
                                _2165 = _2151;
                                _2166 = _2152;
                                _2167 = _2153;
                                _2168 = _2154;
                                _2169 = _2155;
                              }
                              _2177 = _2164;
                              _2178 = _2165;
                              _2179 = _2166;
                              _2180 = _2167;
                              _2181 = _2168;
                              _2182 = _2169;
                            }
                            _2191 = _2177;
                            _2192 = _2178;
                            _2193 = _2179;
                            _2194 = _2180;
                            _2195 = _2181;
                            _2196 = _2182;
                          }
                          _2197 = _2191;
                          _2198 = _2192;
                          _2199 = _2193;
                          _2200 = _2194;
                          _2201 = _2195;
                          _2202 = _2196;
                        }
                        _2211 = _2197;
                        _2212 = _2198;
                        _2213 = _2199;
                        _2214 = _2200;
                        _2215 = _2201;
                        _2216 = _2202;
                      }
                      _2225 = _2211;
                      _2226 = _2212;
                      _2227 = _2213;
                      _2228 = _2214;
                      _2229 = _2215;
                      _2230 = _2216;
                    }
                    _2239 = _2225;
                    _2240 = _2226;
                    _2241 = _2227;
                    _2242 = _2228;
                    _2243 = _2229;
                    _2244 = _2230;
                  }
                  _2253 = _2239;
                  _2254 = _2240;
                  _2255 = _2241;
                  _2256 = _2242;
                  _2257 = _2243;
                  _2258 = _2244;
                }
                _2259 = _2253;
                _2260 = _2254;
                _2261 = _2255;
                _2262 = _2256;
                _2263 = _2257;
                _2264 = _2258;
              }
              bool3 _2266 = (_2264 == 3).xxx;
              bool3 _2269 = (_2264 == 4).xxx;
              if (_2264 == 0) {
                _2353 = 0.0f;
                break;
              }
              float3 _2274 = normalize(_2262);
              float3 _2275 = normalize(_2261);
              float3 _2276 = normalize(_2260);
              float3 _2277 = normalize(float3(_2266.x ? _2262.x : _2259.x, _2266.y ? _2262.y : _2259.y, _2266.z ? _2262.z : _2259.z));
              float3 _2278 = normalize(float3(_2269.x ? _2262.x : _2263.x, _2269.y ? _2262.y : _2263.y, _2269.z ? _2262.z : _2263.z));
              float _2280 = clamp(dot(_2274, _2275), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2284 = sqrt(1.0f - (_2280 * _2280));
              float _2292 = clamp(dot(_2275, _2276), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2296 = sqrt(1.0f - (_2292 * _2292));
              float _2305 = clamp(dot(_2276, _2277), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2309 = sqrt(1.0f - (_2305 * _2305));
              float _2316 = ((cross(_2274, _2275).z * ((_2284 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2280) / _2284))) + (cross(_2275, _2276).z * ((_2296 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2292) / _2296)))) + (cross(_2276, _2277).z * ((_2309 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2305) / _2309)));
              float _2333;
              if (_2264 >= 4) {
                float _2321 = clamp(dot(_2277, _2278), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2325 = sqrt(1.0f - (_2321 * _2321));
                _2333 = _2316 + (cross(_2277, _2278).z * ((_2325 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2321) / _2325)));
              } else {
                _2333 = _2316;
              }
              float _2350;
              if (_2264 == 5) {
                float _2338 = clamp(dot(_2278, _2274), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2342 = sqrt(1.0f - (_2338 * _2338));
                _2350 = _2333 + (cross(_2278, _2274).z * ((_2342 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2338) / _2342)));
              } else {
                _2350 = _2333;
              }
              _2353 = max(_2350, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _2356 = (_1432 & 2u) != 0u;
            uint _2360 = asuint(_30_m6[_1419].w);
            uint _2361 = asuint(_30_m6[_1425].w);
            float3 _2362 = _518 - _30_m6[_1410].xyz;
            float3 _2363 = abs(_2362);
            float _2364 = _2363.x;
            float _2365 = _2363.y;
            float _2367 = _2363.z;
            int _2400;
            if ((_2364 > _2365) && (_2364 > _2367)) {
              _2400 = int((_2362.x > 0.0f) ? (_2360 & 1023u) : ((_2360 >> 10u) & 1023u));
            } else {
              int _2392;
              if (_2365 > _2367) {
                _2392 = int((_2362.y > 0.0f) ? ((_2360 >> 20u) & 1023u) : (_2361 & 1023u));
              } else {
                _2392 = int((_2362.z > 0.0f) ? ((_2361 >> 10u) & 1023u) : ((_2361 >> 20u) & 1023u));
              }
              _2400 = _2392;
            }
            int _2403 = _2356 ? int(_30_m6[_1419].w) : ((_2400 == 1023) ? (-1) : _2400);
            uint _2412 = uint(_2403);
            uint _2414 = asuint(_34_m11.x) + (_2412 * 96u);
            uint _2416 = (_2414 + 64u) >> 2u;
            uint _2419 = _2416 + 1u;
            uint _2422 = _2416 + 2u;
            uint _2425 = _2416 + 3u;
            float4 _2429 = asfloat(uint4(_37.Load(_2416 * 4 + 0), _37.Load(_2419 * 4 + 0), _37.Load(_2422 * 4 + 0), _37.Load(_2425 * 4 + 0)));
            float _2761;
            do {
              uint _2445 = ((asuint(_34_m11.y) + (_2412 * 16u)) >> 2u) + 1u;
              if (_37.Load(_2445 * 4 + 0) > 0u) {
                float4 _447 = _1361;
                float _2460;
                do {
                  if (_37.Load(_2445 * 4 + 0) == 0u) {
                    _2460 = 1.0f;
                    break;
                  }
                  _2460 = _447[_37.Load(_2445 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2761 = _2460;
                break;
              }
              uint _2461 = _2414 >> 2u;
              uint _2476 = (_2414 + 16u) >> 2u;
              uint _2491 = (_2414 + 32u) >> 2u;
              uint _2506 = (_2414 + 48u) >> 2u;
              float4 _2526 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_2461 * 4 + 0), _37.Load((_2461 + 1u) * 4 + 0), _37.Load((_2461 + 2u) * 4 + 0), _37.Load((_2461 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2476 * 4 + 0), _37.Load((_2476 + 1u) * 4 + 0), _37.Load((_2476 + 2u) * 4 + 0), _37.Load((_2476 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2491 * 4 + 0), _37.Load((_2491 + 1u) * 4 + 0), _37.Load((_2491 + 2u) * 4 + 0), _37.Load((_2491 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_2506 * 4 + 0), _37.Load((_2506 + 1u) * 4 + 0), _37.Load((_2506 + 2u) * 4 + 0), _37.Load((_2506 + 3u) * 4 + 0))))), float4((_518 - ((_2362 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2362, _2362)))) * _2429.x)) + (_488 * (_2429.y * 5.0f)), 1.0f));
              float3 _2530 = _2526.xyz / _2526.w.xxx;
              uint _2532 = (_2414 + 80u) >> 2u;
              float4 _2545 = asfloat(uint4(_37.Load(_2532 * 4 + 0), _37.Load((_2532 + 1u) * 4 + 0), _37.Load((_2532 + 2u) * 4 + 0), _37.Load((_2532 + 3u) * 4 + 0)));
              float2 _2546 = _2530.xy;
              float2 _2548 = _2545.xy;
              float3 _2552 = _2530.xyz;
              bool3 _2553 = bool3(_2552.x <= 0.0f.xxx.x, _2552.y <= 0.0f.xxx.y, _2552.z <= 0.0f.xxx.z);
              bool3 _2554 = bool3(_2552.x >= 1.0f.xxx.x, _2552.y >= 1.0f.xxx.y, _2552.z >= 1.0f.xxx.z);
              float _2557 = _2530.z;
              float2 _2568 = ((_2546 * (_2545.zw - _2548)) + _2548).xy * _34_m10.zw;
              float2 _2570 = floor(_2568 + 0.5f.xx);
              float2 _2571 = _2568 - _2570;
              float _2572 = _2571.x;
              float _2573 = _2572 + 0.5f;
              float _2574 = _2573 * _2573;
              float _2577 = 1.0f - _2572;
              float _2578 = min(_2572, 0.0f);
              float _2581 = _2572 + 1.0f;
              float _2582 = max(_2572, 0.0f);
              float _2593 = _2571.y;
              float _2594 = _2593 + 0.5f;
              float _2595 = _2594 * _2594;
              float _2598 = 1.0f - _2593;
              float _2599 = min(_2593, 0.0f);
              float _2602 = _2593 + 1.0f;
              float _2603 = max(_2593, 0.0f);
              float3 _2615 = float3(0.1599999964237213134765625f * _2577, 0.1599999964237213134765625f * ((_2581 - (_2582 * _2582)) + 1.0f), _2574 * 0.07999999821186065673828125f);
              float3 _2616 = float3(0.1599999964237213134765625f * ((_2574 * 0.5f) - _2572), 0.1599999964237213134765625f * ((_2577 - (_2578 * _2578)) + 1.0f), 0.1599999964237213134765625f * _2581) + _2615;
              float3 _2618 = float3(0.1599999964237213134765625f * _2598, 0.1599999964237213134765625f * ((_2602 - (_2603 * _2603)) + 1.0f), _2595 * 0.07999999821186065673828125f);
              float3 _2619 = float3(0.1599999964237213134765625f * ((_2595 * 0.5f) - _2593), 0.1599999964237213134765625f * ((_2598 - (_2599 * _2599)) + 1.0f), 0.1599999964237213134765625f * _2602) + _2618;
              float3 _2625 = ((_2615 / _2616) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _2627 = ((_2618 / _2619) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _2629 = _2570 * _34_m10.xy;
              float _2630 = _2625.x;
              float _2631 = _2627.x;
              float _2634 = _2625.y;
              float _2637 = _2625.z;
              float _2640 = _2627.y;
              float _2647 = _2627.z;
              float _2654 = _2616.x;
              float _2655 = _2619.x;
              float _2657 = _2616.y;
              float _2659 = _2616.z;
              float _2661 = _2619.y;
              float _2665 = _2619.z;
              float _2723 = (((((((_2654 * _2655) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2630, _2631), _433).xy, _2557)) + ((_2657 * _2655) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2634, _2631), _433).xy, _2557))) + ((_2659 * _2655) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2637, _2631), _433).xy, _2557))) + ((_2654 * _2661) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2630, _2640), _433).xy, _2557))) + ((_2657 * _2661) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2634, _2640), _433).xy, _2557))) + ((_2659 * _2661) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2637, _2640), _433).xy, _2557))) + ((_2654 * _2665) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2630, _2647), _433).xy, _2557));
              float4 _2746 = asfloat(uint4(_37.Load(_2416 * 4 + 0), _37.Load(_2419 * 4 + 0), _37.Load(_2422 * 4 + 0), _37.Load(_2425 * 4 + 0)));
              float _2747 = _2746.w;
              float2 _2749 = min(_2546, 1.0f.xx - _2546);
              _2761 = lerp(1.0f, (any(bool3(_2553.x || _2554.x, _2553.y || _2554.y, _2553.z || _2554.z)) || ((asuint(_2557) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2723 + ((_2657 * _2665) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2634, _2647), _433).xy, _2557))) + ((_2659 * _2665) * _35.SampleCmpLevelZero(_16, float3(_2629 + float2(_2637, _2647), _433).xy, _2557))), _2356 ? min(_2747, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2746.z - _2526.w) * 0.25f, min(_2749.x, _2749.y)))) : _2747);
              break;
            } while (false);
            _2767 = ((_30_m6[_1407].xyz * (((((_1146 * _1572.x) + ((1.0f.xxx - _1146) * _1572.y)) * _1966) * _30_m6[_1428].z) + (_1142 * _2353))) * _1544) * ((_2403 >= 0) ? _2761 : 1.0f);
            break;
          } while (false);
          _4139 = _1367;
          _4140 = _2767 * _1507;
          break;
        }
        float _4137;
        float3 _4138;
        if (_30_m6[_1407].w < 1.5f) {
          float3 _3372 = float3(0.100000001490116119384765625f, _1138, 1.0f);
          float _3381 = (0.5f + (0.5f * _30_m6[_1413].y)) - abs(_30_m6[_1413].x);
          float _3382 = _30_m6[_1413].y - _3381;
          float _3386 = (1.0f - abs(_3381)) - abs(_3382);
          bool _3388 = _30_m6[_1413].x >= 0.0f;
          float _3389 = abs(max(_3386, 0.00048828125f));
          float3 _3393 = normalize(float3(_3381, _3382, _3388 ? _3389 : (-_3389)));
          float3 _3394 = _30_m6[_1410].xyz - _518;
          float _3395 = dot(_3394, _3394);
          float _3396 = rsqrt(_3395);
          float3 _3397 = _3394 * _3396;
          float _3401 = clamp(_30_m6[_1428].y * _3396, 0.0f, 1.0f);
          float _3404 = clamp(dot(_1073, _3397), 0.0f, 1.0f);
          int _3406 = int(_30_m6[_1428].w);
          float3 _3407 = _3393 * _30_m6[_1413].z;
          float3 _3408 = _3407 * 0.5f;
          float3 _3409 = _3394 - _3408;
          float3 _3410 = _3394 + _3408;
          bool _3412 = (_1511 & 1u) == 0u;
          bool _3415 = _3412 || ((_1432 & 2u) != 0u);
          bool _3418 = (!_3412) && (_30_m6[_1413].z > 0.0f);
          float _3437;
          float _3438;
          if (_3418) {
            float _3422 = length(_3409);
            float _3423 = length(_3410);
            _3437 = clamp(0.5f * ((dot(_1073, _3409) / _3422) + (dot(_1073, _3410) / _3423)), 0.0f, 1.0f);
            _3438 = 1.0f / ((((_3422 * _3423) + dot(_3409, _3410)) * 0.5f) + 1.0f);
          } else {
            _3437 = _3404;
            _3438 = 1.0f;
          }
          float _3460;
          if (_30_m6[_1425].w < 0.0f) {
            float _3454 = _3395 * (_30_m6[_1410].w * _30_m6[_1410].w);
            float _3457 = clamp(1.0f - (_3454 * _3454), 0.0f, 1.0f);
            _3460 = lerp(1.0f / (_3395 + 1.0f), _3438, float(_3418)) * (_3457 * _3457);
          } else {
            float3 _3443 = _3394 * _30_m6[_1410].w;
            _3460 = _3438 * pow(1.0f - clamp(dot(_3443, _3443), 0.0f, 1.0f), _30_m6[_1425].w);
          }
          float _3466 = clamp((dot(_3397, -_3393) - _30_m6[_1413].z) * _30_m6[_1413].w, 0.0f, 1.0f);
          float _3470 = _3460 * lerp(1.0f, _3466 * _3466, float(_3412));
          float _3570;
          if ((!_3418) && (_3406 >= 0)) {
            uint _3476 = uint(_3406);
            float2 _3563;
            [branch] if (_3412) {
              float4 _3553 = mul(_52_m1[_3476], _522);
              _3563 = _52_m0[_3476].xy + (clamp(_3553.xy / _3553.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_3476].zw);
            }
            else {
              float3 _3490 = mul(float4(-_3394, 0.0f), _52_m1[_3476]).xyz;
              float3 _442 = _3490;
              float3 _441 = _3490;
              float3 _440 = abs(_3490);
              uint _3499 = uint(int(_440.y > _440.x));
              uint _3505 = (_440.z > _440[_3499]) ? 2u : _3499;
              uint _3511 = (_3505 * 2u) + uint(_441[_3505] < 0.0f);
              float _3515 = abs(_442[_3511 / 2u]);
              float _3535 = 0.5f - (0.000244140625f / _52_m0[_3476].w);
              _3563 = _52_m0[_3476].xy + (clamp(float2((float(_3511) + ((((_442[uint(_387[_3511].x)] * _388[_3511].x) / _3515) * _3535) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_442[uint(_387[_3511].y)] * _388[_3511].y) / _3515) * _3535)), 0.0f.xx, 1.0f.xx) * _52_m0[_3476].zw);
            }
            _3570 = _3470 * _50.SampleLevel(_13, _3563, 0.0f).x;
          } else {
            _3570 = _3470;
          }
          bool _3571 = _3570 > 0.0f;
          float _3980;
          if (_3571) {
            int _3624;
            if (_3415) {
              _3624 = int(_30_m6[_1416].x);
            } else {
              uint _3579 = asuint(_30_m6[_1413].w);
              uint _3580 = asuint(_30_m6[_1416].x);
              float3 _3581 = _518 - _30_m6[_1410].xyz;
              float3 _3582 = abs(_3581);
              float _3583 = _3582.x;
              float _3584 = _3582.y;
              float _3586 = _3582.z;
              int _3619;
              if ((_3583 > _3584) && (_3583 > _3586)) {
                _3619 = int((_3581.x > 0.0f) ? (_3579 & 1023u) : ((_3579 >> 10u) & 1023u));
              } else {
                int _3611;
                if (_3584 > _3586) {
                  _3611 = int((_3581.y > 0.0f) ? ((_3579 >> 20u) & 1023u) : (_3580 & 1023u));
                } else {
                  _3611 = int((_3581.z > 0.0f) ? ((_3580 >> 10u) & 1023u) : ((_3580 >> 20u) & 1023u));
                }
                _3619 = _3611;
              }
              _3624 = (_3619 == 1023) ? (-1) : _3619;
            }
            uint _3629 = uint(_3624);
            uint _3631 = asuint(_34_m11.x) + (_3629 * 96u);
            uint _3633 = (_3631 + 64u) >> 2u;
            uint _3636 = _3633 + 1u;
            uint _3639 = _3633 + 2u;
            uint _3642 = _3633 + 3u;
            float4 _3646 = asfloat(uint4(_37.Load(_3633 * 4 + 0), _37.Load(_3636 * 4 + 0), _37.Load(_3639 * 4 + 0), _37.Load(_3642 * 4 + 0)));
            float _3978;
            do {
              uint _3662 = ((asuint(_34_m11.y) + (_3629 * 16u)) >> 2u) + 1u;
              if (_37.Load(_3662 * 4 + 0) > 0u) {
                float4 _439 = _1361;
                float _3677;
                do {
                  if (_37.Load(_3662 * 4 + 0) == 0u) {
                    _3677 = 1.0f;
                    break;
                  }
                  _3677 = _439[_37.Load(_3662 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3978 = _3677;
                break;
              }
              uint _3678 = _3631 >> 2u;
              uint _3693 = (_3631 + 16u) >> 2u;
              uint _3708 = (_3631 + 32u) >> 2u;
              uint _3723 = (_3631 + 48u) >> 2u;
              float4 _3743 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3678 * 4 + 0), _37.Load((_3678 + 1u) * 4 + 0), _37.Load((_3678 + 2u) * 4 + 0), _37.Load((_3678 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3693 * 4 + 0), _37.Load((_3693 + 1u) * 4 + 0), _37.Load((_3693 + 2u) * 4 + 0), _37.Load((_3693 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3708 * 4 + 0), _37.Load((_3708 + 1u) * 4 + 0), _37.Load((_3708 + 2u) * 4 + 0), _37.Load((_3708 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3723 * 4 + 0), _37.Load((_3723 + 1u) * 4 + 0), _37.Load((_3723 + 2u) * 4 + 0), _37.Load((_3723 + 3u) * 4 + 0))))), float4((_518 - ((-_3397) * _3646.x)) + (_1073 * (_3646.y * 5.0f)), 1.0f));
              float3 _3747 = _3743.xyz / _3743.w.xxx;
              uint _3749 = (_3631 + 80u) >> 2u;
              float4 _3762 = asfloat(uint4(_37.Load(_3749 * 4 + 0), _37.Load((_3749 + 1u) * 4 + 0), _37.Load((_3749 + 2u) * 4 + 0), _37.Load((_3749 + 3u) * 4 + 0)));
              float2 _3763 = _3747.xy;
              float2 _3765 = _3762.xy;
              float3 _3769 = _3747.xyz;
              bool3 _3770 = bool3(_3769.x <= 0.0f.xxx.x, _3769.y <= 0.0f.xxx.y, _3769.z <= 0.0f.xxx.z);
              bool3 _3771 = bool3(_3769.x >= 1.0f.xxx.x, _3769.y >= 1.0f.xxx.y, _3769.z >= 1.0f.xxx.z);
              float _3774 = _3747.z;
              float2 _3785 = ((_3763 * (_3762.zw - _3765)) + _3765).xy * _34_m10.zw;
              float2 _3787 = floor(_3785 + 0.5f.xx);
              float2 _3788 = _3785 - _3787;
              float _3789 = _3788.x;
              float _3790 = _3789 + 0.5f;
              float _3791 = _3790 * _3790;
              float _3794 = 1.0f - _3789;
              float _3795 = min(_3789, 0.0f);
              float _3798 = _3789 + 1.0f;
              float _3799 = max(_3789, 0.0f);
              float _3810 = _3788.y;
              float _3811 = _3810 + 0.5f;
              float _3812 = _3811 * _3811;
              float _3815 = 1.0f - _3810;
              float _3816 = min(_3810, 0.0f);
              float _3819 = _3810 + 1.0f;
              float _3820 = max(_3810, 0.0f);
              float3 _3832 = float3(0.1599999964237213134765625f * _3794, 0.1599999964237213134765625f * ((_3798 - (_3799 * _3799)) + 1.0f), _3791 * 0.07999999821186065673828125f);
              float3 _3833 = float3(0.1599999964237213134765625f * ((_3791 * 0.5f) - _3789), 0.1599999964237213134765625f * ((_3794 - (_3795 * _3795)) + 1.0f), 0.1599999964237213134765625f * _3798) + _3832;
              float3 _3835 = float3(0.1599999964237213134765625f * _3815, 0.1599999964237213134765625f * ((_3819 - (_3820 * _3820)) + 1.0f), _3812 * 0.07999999821186065673828125f);
              float3 _3836 = float3(0.1599999964237213134765625f * ((_3812 * 0.5f) - _3810), 0.1599999964237213134765625f * ((_3815 - (_3816 * _3816)) + 1.0f), 0.1599999964237213134765625f * _3819) + _3835;
              float3 _3842 = ((_3832 / _3833) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
              float3 _3844 = ((_3835 / _3836) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
              float2 _3846 = _3787 * _34_m10.xy;
              float _3847 = _3842.x;
              float _3848 = _3844.x;
              float _3851 = _3842.y;
              float _3854 = _3842.z;
              float _3857 = _3844.y;
              float _3864 = _3844.z;
              float _3871 = _3833.x;
              float _3872 = _3836.x;
              float _3874 = _3833.y;
              float _3876 = _3833.z;
              float _3878 = _3836.y;
              float _3882 = _3836.z;
              float _3940 = (((((((_3871 * _3872) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3847, _3848), _433).xy, _3774)) + ((_3874 * _3872) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3851, _3848), _433).xy, _3774))) + ((_3876 * _3872) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3854, _3848), _433).xy, _3774))) + ((_3871 * _3878) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3847, _3857), _433).xy, _3774))) + ((_3874 * _3878) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3851, _3857), _433).xy, _3774))) + ((_3876 * _3878) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3854, _3857), _433).xy, _3774))) + ((_3871 * _3882) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3847, _3864), _433).xy, _3774));
              float4 _3963 = asfloat(uint4(_37.Load(_3633 * 4 + 0), _37.Load(_3636 * 4 + 0), _37.Load(_3639 * 4 + 0), _37.Load(_3642 * 4 + 0)));
              float _3964 = _3963.w;
              float2 _3966 = min(_3763, 1.0f.xx - _3763);
              _3978 = lerp(1.0f, (any(bool3(_3770.x || _3771.x, _3770.y || _3771.y, _3770.z || _3771.z)) || ((asuint(_3774) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3940 + ((_3874 * _3882) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3851, _3864), _433).xy, _3774))) + ((_3876 * _3882) * _35.SampleCmpLevelZero(_16, float3(_3846 + float2(_3854, _3864), _433).xy, _3774))), _3415 ? min(_3964, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3963.z - _3743.w) * 0.25f, min(_3966.x, _3966.y)))) : _3964);
              break;
            } while (false);
            _3980 = (_3624 >= 0) ? _3978 : 1.0f;
          } else {
            _3980 = 1.0f;
          }
          float3 _4004;
          float3 _4005;
          if (_3418) {
            float3 _3983 = _3372 * _3372;
            float3 _3984 = reflect(_546, _1073);
            float _3993 = dot(_3984, _3407);
            _4004 = _3983 / clamp(_3983 + (0.5f * clamp(_30_m6[_1413].z * _3396, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _4005 = normalize(_3409 + (_3407 * clamp(dot(_3409, (_3984 * _3993) - _3407) / ((_30_m6[_1413].z * _30_m6[_1413].z) - (_3993 * _3993)), 0.0f, 1.0f)));
          } else {
            _4004 = 1.0f.xxx;
            _4005 = _3397;
          }
          float3 _4006 = _4005 + _544;
          float3 _4010 = _4006 * rsqrt(max(6.103515625e-05f, dot(_4006, _4006)));
          float _4012 = abs(max(_3386, 5.9604644775390625e-08f));
          float3 _4018 = (normalize(float3(_3381, _3382, _3388 ? _4012 : (-_4012))) * _30_m6[_1413].z) * 0.5f;
          float3 _4019 = _3394 - _4018;
          float3 _4020 = _3394 + _4018;
          float _4032;
          if (_3418) {
            _4032 = clamp(0.5f * ((dot(_1073, _4019) / length(_4019)) + (dot(_1073, _4020) / length(_4020))), 0.0f, 1.0f);
          } else {
            _4032 = _3404;
          }
          float3 _4136;
          if (_3571) {
            float _4035 = clamp(_3437, 0.0f, 1.0f);
            float _4037 = clamp(dot(_1073, _4010), 0.0f, 1.0f);
            float _4039 = clamp(dot(_544, _4010), 0.0f, 1.0f);
            float _4040 = clamp(_1147, 0.0f, 1.0f);
            float _4050;
            if (_3401 > 0.0f) {
              _4050 = clamp(_1149 + ((_3401 * _3401) / ((_4039 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
            } else {
              _4050 = _1149;
            }
            float _4051 = _4050 * _4050;
            float _4072 = (((_4037 * _4051) - _4037) * _4037) + 1.0f;
            float _4077 = 1.0f - _4039;
            float _4078 = _4077 * _4077;
            float _4080 = (_4077 * _4078) * _4078;
            float _4104 = 1.0f - _1138;
            float _4111 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4104 * (1.04997003078460693359375f + (_4104 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4104))))));
            float _4112 = 1.0f - _4111;
            float3 _4115 = _1146 + ((1.0f.xxx - _1146) * 0.0476190485060214996337890625f);
            float3 _4135 = ((clamp((min(((_1146 * (1.0f - _4080)) + _4080.xxx) * (((_4051 / (_4072 * _4072)) * _4004.y) * (0.5f / (((_4035 * sqrt(((((-_4040) * _4051) + _4040) * _4040) + _4051)) + (_4040 * sqrt(((((-_4035) * _4051) + _4035) * _4035) + _4051))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((_4115 * (((_48.SampleLevel(_13, (float2(_4040, _1138) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_13, (float2(_4035, _1138) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4111) / _4112)) * _4115) / (1.0f.xxx - (_4115 * _4112)))) * _30_m6[_1428].z, 0.0f.xxx, 1000.0f.xxx) * _3437) + ((_1142 * _4004.z) * _4032)) * (((_30_m6[_1407].xyz * _3570) * _3980) * _1507);
            _4136 = _4135;
          } else {
            _4136 = 0.0f.xxx;
          }
          _4137 = _1367;
          _4138 = _4136;
        } else {
          float _3370;
          do {
            if (_1514) {
              _3370 = 1.0f;
              break;
            }
            float _2784 = (0.5f + (0.5f * _30_m6[_1413].y)) - abs(_30_m6[_1413].x);
            float _2785 = _30_m6[_1413].y - _2784;
            float _2792 = abs(max((1.0f - abs(_2784)) - abs(_2785), 0.00048828125f));
            float3 _2796 = normalize(float3(_2784, _2785, (_30_m6[_1413].x >= 0.0f) ? _2792 : (-_2792)));
            float3 _2797 = _30_m6[_1410].xyz - _518;
            float _2798 = dot(_2797, _2797);
            float3 _2800 = _2797 * rsqrt(_2798);
            int _2803 = int(_30_m6[_1428].w);
            float3 _2805 = (_2796 * _30_m6[_1413].z) * 0.5f;
            float3 _2806 = _2797 - _2805;
            float3 _2807 = _2797 + _2805;
            bool _2809 = (_1511 & 1u) == 0u;
            bool _2812 = _2809 || ((_1432 & 2u) != 0u);
            bool _2815 = (!_2809) && (_30_m6[_1413].z > 0.0f);
            float _2827;
            if (_2815) {
              _2827 = 1.0f / ((((length(_2806) * length(_2807)) + dot(_2806, _2807)) * 0.5f) + 1.0f);
            } else {
              _2827 = 1.0f;
            }
            float _2849;
            if (_30_m6[_1425].w < 0.0f) {
              float _2843 = _2798 * (_30_m6[_1410].w * _30_m6[_1410].w);
              float _2846 = clamp(1.0f - (_2843 * _2843), 0.0f, 1.0f);
              _2849 = lerp(1.0f / (_2798 + 1.0f), _2827, float(_2815)) * (_2846 * _2846);
            } else {
              float3 _2832 = _2797 * _30_m6[_1410].w;
              _2849 = _2827 * pow(1.0f - clamp(dot(_2832, _2832), 0.0f, 1.0f), _30_m6[_1425].w);
            }
            float _2855 = clamp((dot(_2800, -_2796) - _30_m6[_1413].z) * _30_m6[_1413].w, 0.0f, 1.0f);
            float _2859 = _2849 * lerp(1.0f, _2855 * _2855, float(_2809));
            float _2959;
            if ((!_2815) && (_2803 >= 0)) {
              uint _2865 = uint(_2803);
              float2 _2952;
              [branch] if (_2809) {
                float4 _2942 = mul(_52_m1[_2865], _522);
                _2952 = _52_m0[_2865].xy + (clamp(_2942.xy / _2942.w.xx, 0.0f.xx, 1.0f.xx) * _52_m0[_2865].zw);
              }
              else {
                float3 _2879 = mul(float4(-_2797, 0.0f), _52_m1[_2865]).xyz;
                float3 _446 = _2879;
                float3 _445 = _2879;
                float3 _444 = abs(_2879);
                uint _2888 = uint(int(_444.y > _444.x));
                uint _2894 = (_444.z > _444[_2888]) ? 2u : _2888;
                uint _2900 = (_2894 * 2u) + uint(_445[_2894] < 0.0f);
                float _2904 = abs(_446[_2900 / 2u]);
                float _2924 = 0.5f - (0.000244140625f / _52_m0[_2865].w);
                _2952 = _52_m0[_2865].xy + (clamp(float2((float(_2900) + ((((_446[uint(_387[_2900].x)] * _388[_2900].x) / _2904) * _2924) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_446[uint(_387[_2900].y)] * _388[_2900].y) / _2904) * _2924)), 0.0f.xx, 1.0f.xx) * _52_m0[_2865].zw);
              }
              _2959 = _2859 * _50.SampleLevel(_13, _2952, 0.0f).x;
            } else {
              _2959 = _2859;
            }
            float _3369;
            if (_2959 > 0.0f) {
              int _3013;
              if (_2812) {
                _3013 = int(_30_m6[_1416].x);
              } else {
                uint _2968 = asuint(_30_m6[_1413].w);
                uint _2969 = asuint(_30_m6[_1416].x);
                float3 _2970 = _518 - _30_m6[_1410].xyz;
                float3 _2971 = abs(_2970);
                float _2972 = _2971.x;
                float _2973 = _2971.y;
                float _2975 = _2971.z;
                int _3008;
                if ((_2972 > _2973) && (_2972 > _2975)) {
                  _3008 = int((_2970.x > 0.0f) ? (_2968 & 1023u) : ((_2968 >> 10u) & 1023u));
                } else {
                  int _3000;
                  if (_2973 > _2975) {
                    _3000 = int((_2970.y > 0.0f) ? ((_2968 >> 20u) & 1023u) : (_2969 & 1023u));
                  } else {
                    _3000 = int((_2970.z > 0.0f) ? ((_2969 >> 10u) & 1023u) : ((_2969 >> 20u) & 1023u));
                  }
                  _3008 = _3000;
                }
                _3013 = (_3008 == 1023) ? (-1) : _3008;
              }
              uint _3018 = uint(_3013);
              uint _3020 = asuint(_34_m11.x) + (_3018 * 96u);
              uint _3022 = (_3020 + 64u) >> 2u;
              uint _3025 = _3022 + 1u;
              uint _3028 = _3022 + 2u;
              uint _3031 = _3022 + 3u;
              float4 _3035 = asfloat(uint4(_37.Load(_3022 * 4 + 0), _37.Load(_3025 * 4 + 0), _37.Load(_3028 * 4 + 0), _37.Load(_3031 * 4 + 0)));
              float _3367;
              do {
                uint _3051 = ((asuint(_34_m11.y) + (_3018 * 16u)) >> 2u) + 1u;
                if (_37.Load(_3051 * 4 + 0) > 0u) {
                  float4 _443 = _1361;
                  float _3066;
                  do {
                    if (_37.Load(_3051 * 4 + 0) == 0u) {
                      _3066 = 1.0f;
                      break;
                    }
                    _3066 = _443[_37.Load(_3051 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _3367 = _3066;
                  break;
                }
                uint _3067 = _3020 >> 2u;
                uint _3082 = (_3020 + 16u) >> 2u;
                uint _3097 = (_3020 + 32u) >> 2u;
                uint _3112 = (_3020 + 48u) >> 2u;
                float4 _3132 = mul(transpose(float4x4(asfloat(uint4(_37.Load(_3067 * 4 + 0), _37.Load((_3067 + 1u) * 4 + 0), _37.Load((_3067 + 2u) * 4 + 0), _37.Load((_3067 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3082 * 4 + 0), _37.Load((_3082 + 1u) * 4 + 0), _37.Load((_3082 + 2u) * 4 + 0), _37.Load((_3082 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3097 * 4 + 0), _37.Load((_3097 + 1u) * 4 + 0), _37.Load((_3097 + 2u) * 4 + 0), _37.Load((_3097 + 3u) * 4 + 0))), asfloat(uint4(_37.Load(_3112 * 4 + 0), _37.Load((_3112 + 1u) * 4 + 0), _37.Load((_3112 + 2u) * 4 + 0), _37.Load((_3112 + 3u) * 4 + 0))))), float4((_518 - ((-_2800) * _3035.x)) + (_488 * (_3035.y * 5.0f)), 1.0f));
                float3 _3136 = _3132.xyz / _3132.w.xxx;
                uint _3138 = (_3020 + 80u) >> 2u;
                float4 _3151 = asfloat(uint4(_37.Load(_3138 * 4 + 0), _37.Load((_3138 + 1u) * 4 + 0), _37.Load((_3138 + 2u) * 4 + 0), _37.Load((_3138 + 3u) * 4 + 0)));
                float2 _3152 = _3136.xy;
                float2 _3154 = _3151.xy;
                float3 _3158 = _3136.xyz;
                bool3 _3159 = bool3(_3158.x <= 0.0f.xxx.x, _3158.y <= 0.0f.xxx.y, _3158.z <= 0.0f.xxx.z);
                bool3 _3160 = bool3(_3158.x >= 1.0f.xxx.x, _3158.y >= 1.0f.xxx.y, _3158.z >= 1.0f.xxx.z);
                float _3163 = _3136.z;
                float2 _3174 = ((_3152 * (_3151.zw - _3154)) + _3154).xy * _34_m10.zw;
                float2 _3176 = floor(_3174 + 0.5f.xx);
                float2 _3177 = _3174 - _3176;
                float _3178 = _3177.x;
                float _3179 = _3178 + 0.5f;
                float _3180 = _3179 * _3179;
                float _3183 = 1.0f - _3178;
                float _3184 = min(_3178, 0.0f);
                float _3187 = _3178 + 1.0f;
                float _3188 = max(_3178, 0.0f);
                float _3199 = _3177.y;
                float _3200 = _3199 + 0.5f;
                float _3201 = _3200 * _3200;
                float _3204 = 1.0f - _3199;
                float _3205 = min(_3199, 0.0f);
                float _3208 = _3199 + 1.0f;
                float _3209 = max(_3199, 0.0f);
                float3 _3221 = float3(0.1599999964237213134765625f * _3183, 0.1599999964237213134765625f * ((_3187 - (_3188 * _3188)) + 1.0f), _3180 * 0.07999999821186065673828125f);
                float3 _3222 = float3(0.1599999964237213134765625f * ((_3180 * 0.5f) - _3178), 0.1599999964237213134765625f * ((_3183 - (_3184 * _3184)) + 1.0f), 0.1599999964237213134765625f * _3187) + _3221;
                float3 _3224 = float3(0.1599999964237213134765625f * _3204, 0.1599999964237213134765625f * ((_3208 - (_3209 * _3209)) + 1.0f), _3201 * 0.07999999821186065673828125f);
                float3 _3225 = float3(0.1599999964237213134765625f * ((_3201 * 0.5f) - _3199), 0.1599999964237213134765625f * ((_3204 - (_3205 * _3205)) + 1.0f), 0.1599999964237213134765625f * _3208) + _3224;
                float3 _3231 = ((_3221 / _3222) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.xxx;
                float3 _3233 = ((_3224 / _3225) + float3(-2.5f, -0.5f, 1.5f)) * _34_m10.yyy;
                float2 _3235 = _3176 * _34_m10.xy;
                float _3236 = _3231.x;
                float _3237 = _3233.x;
                float _3240 = _3231.y;
                float _3243 = _3231.z;
                float _3246 = _3233.y;
                float _3253 = _3233.z;
                float _3260 = _3222.x;
                float _3261 = _3225.x;
                float _3263 = _3222.y;
                float _3265 = _3222.z;
                float _3267 = _3225.y;
                float _3271 = _3225.z;
                float _3329 = (((((((_3260 * _3261) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3236, _3237), _433).xy, _3163)) + ((_3263 * _3261) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3240, _3237), _433).xy, _3163))) + ((_3265 * _3261) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3243, _3237), _433).xy, _3163))) + ((_3260 * _3267) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3236, _3246), _433).xy, _3163))) + ((_3263 * _3267) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3240, _3246), _433).xy, _3163))) + ((_3265 * _3267) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3243, _3246), _433).xy, _3163))) + ((_3260 * _3271) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3236, _3253), _433).xy, _3163));
                float4 _3352 = asfloat(uint4(_37.Load(_3022 * 4 + 0), _37.Load(_3025 * 4 + 0), _37.Load(_3028 * 4 + 0), _37.Load(_3031 * 4 + 0)));
                float _3353 = _3352.w;
                float2 _3355 = min(_3152, 1.0f.xx - _3152);
                _3367 = lerp(1.0f, (any(bool3(_3159.x || _3160.x, _3159.y || _3160.y, _3159.z || _3160.z)) || ((asuint(_3163) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3329 + ((_3263 * _3271) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3240, _3253), _433).xy, _3163))) + ((_3265 * _3271) * _35.SampleCmpLevelZero(_16, float3(_3235 + float2(_3243, _3253), _433).xy, _3163))), _2812 ? min(_3353, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3352.z - _3132.w) * 0.25f, min(_3355.x, _3355.y)))) : _3353);
                break;
              } while (false);
              _3369 = (_3013 >= 0) ? _3367 : 1.0f;
            } else {
              _3369 = 1.0f;
            }
            _3370 = _3369;
            break;
          } while (false);
          _4137 = _1367 * _3370;
          _4138 = 0.0f.xxx;
        }
        _4139 = _4137;
        _4140 = _4138;
        break;
      } while (false);
      _1392 = _4139;
      _1395 = _1394 + _4140;
    }
    _1364 = _1363 + _1394;
  }
  float3 _4144 = _1332.xyz + (_1363 * _1366);
  float3 _4146 = _465.xxx;
  float3 _4183;
  float3 _4184;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0x1AAB80F2:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _4159 = min(_22.SampleBias(_12, _4, _9_m16).x, _465);
    _4183 = clamp((pow(abs(max(0.0f, dot(_488, _544)) + _4159), exp2(((-16.0f) * _1138) - 1.0f)) - 1.0f) + _4159, 0.0f, 1.0f).xxx;
    _4184 = max(_4159.xxx, ((((((_1142 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _4159) + ((_1142 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _4159) + ((_1142 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _4159);
  }
  else {
    _4183 = _4146;
    _4184 = _4146;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _4144 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _4183 : 1.0f.xxx;
  // RenoDX code end
  float3 _4201 = (_518 + (_488 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_493 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
  float3 _4211 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
  float3 _4220 = _4201 - (_9_m108.xyz + (_4211 * (-_9_m110.w)));
  float _4235 = max(min(max((max(abs(_4220.x), abs(_4220.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4220.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
  float4 _4537;
  float4 _4538;
  float4 _4539;
  float _4540;
  float _4541;
  if ((_9_m108.w != 0.0f) && (_4235 < 1.0f)) {
    float3 _4248 = _4201 - (_9_m108.xyz + (_4211 * (-_9_m110.y)));
    float _4262 = max(clamp((max(abs(_4248.x), abs(_4248.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4248.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
    float _4338;
    float4 _4339;
    float4 _4340;
    float4 _4341;
    if (_4262 < 1.0f) {
      float3 _4271 = ((_4201 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4273 = _4271 - floor(_4271);
      float4 _4277 = _62.SampleLevel(_14, _4273, 0.0f);
      float _4278 = 1.0f - _4262;
      float _4282 = _9_m109.y * 0.5f;
      float _4287 = _4273.x;
      float _4288 = clamp(_4273.y, _4282, 1.0f - _4282) * 0.3333333432674407958984375f;
      float _4289 = _4273.z;
      float4 _4292 = _63.SampleLevel(_13, float3(_4287, _4288, _4289), 0.0f);
      float _4308 = _4277.x;
      float _4318 = _4277.y;
      float _4328 = _4277.z;
      _4338 = _4235 + (_4292.w * _4278);
      _4339 = float4(((_63.SampleLevel(_13, float3(_4287, _4288 + 0.666666686534881591796875f, _4289), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4328, _4328) * _4278;
      _4340 = float4(((_63.SampleLevel(_13, float3(_4287, _4288 + 0.3333333432674407958984375f, _4289), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4318, _4318) * _4278;
      _4341 = float4(((_4292.xyz * 4.0f) - 2.0f.xxx) * _4308, _4308) * _4278;
    } else {
      _4338 = _4235;
      _4339 = 0.0f.xxxx;
      _4340 = 0.0f.xxxx;
      _4341 = 0.0f.xxxx;
    }
    float3 _4347 = _4201 - (_9_m108.xyz + (_4211 * (-_9_m110.z)));
    float _4361 = max(clamp((max(abs(_4347.x), abs(_4347.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4347.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
    float _4441;
    float4 _4442;
    float4 _4443;
    float4 _4444;
    if (_4361 < 1.0f) {
      float3 _4370 = ((_4201 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4372 = _4370 - floor(_4370);
      float4 _4376 = _64.SampleLevel(_14, _4372, 0.0f);
      float _4378 = _4262 * (1.0f - _4361);
      float _4382 = _9_m109.y * 0.5f;
      float _4387 = _4372.x;
      float _4388 = clamp(_4372.y, _4382, 1.0f - _4382) * 0.3333333432674407958984375f;
      float _4389 = _4372.z;
      float4 _4392 = _65.SampleLevel(_13, float3(_4387, _4388, _4389), 0.0f);
      float _4408 = _4376.x;
      float _4419 = _4376.y;
      float _4430 = _4376.z;
      _4441 = _4338 + (_4392.w * _4378);
      _4442 = _4339 + (float4(((_65.SampleLevel(_13, float3(_4387, _4388 + 0.666666686534881591796875f, _4389), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4430, _4430) * _4378);
      _4443 = _4340 + (float4(((_65.SampleLevel(_13, float3(_4387, _4388 + 0.3333333432674407958984375f, _4389), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4419, _4419) * _4378);
      _4444 = _4341 + (float4(((_4392.xyz * 4.0f) - 2.0f.xxx) * _4408, _4408) * _4378);
    } else {
      _4441 = _4338;
      _4442 = _4339;
      _4443 = _4340;
      _4444 = _4341;
    }
    float4 _4527;
    float4 _4528;
    float4 _4529;
    float _4530;
    if (_4361 > 0.0f) {
      float3 _4453 = ((_4201 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
      float3 _4456 = _9_m109.xyz * 0.5f;
      float3 _4458 = clamp(_4453 - floor(_4453), _4456, 1.0f.xxx - _4456);
      float4 _4462 = _66.SampleLevel(_14, _4458, 0.0f);
      float _4464 = _4361 * (1.0f - _4235);
      float _4468 = _9_m109.y * 0.5f;
      float _4473 = _4458.x;
      float _4474 = clamp(_4458.y, _4468, 1.0f - _4468) * 0.3333333432674407958984375f;
      float _4475 = _4458.z;
      float4 _4478 = _67.SampleLevel(_13, float3(_4473, _4474, _4475), 0.0f);
      float _4494 = _4462.x;
      float _4505 = _4462.y;
      float _4516 = _4462.z;
      _4527 = _4442 + (float4(((_67.SampleLevel(_13, float3(_4473, _4474 + 0.666666686534881591796875f, _4475), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4516, _4516) * _4464);
      _4528 = _4443 + (float4(((_67.SampleLevel(_13, float3(_4473, _4474 + 0.3333333432674407958984375f, _4475), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4505, _4505) * _4464);
      _4529 = _4444 + (float4(((_4478.xyz * 4.0f) - 2.0f.xxx) * _4494, _4494) * _4464);
      _4530 = _4441 + (_4478.w * _4464);
    } else {
      _4527 = _4442;
      _4528 = _4443;
      _4529 = _4444;
      _4530 = _4441;
    }
    float _4533 = clamp((_4530 * 2.0f) - 1.0f, 0.0f, 1.0f);
    _4537 = _4527;
    _4538 = _4528;
    _4539 = _4529;
    _4540 = _4533 - _4235;
    _4541 = (_4533 + _4235) * 0.5f;
  } else {
    _4537 = 0.0f.xxxx;
    _4538 = 0.0f.xxxx;
    _4539 = 0.0f.xxxx;
    _4540 = 0.0f;
    _4541 = 1.0f;
  }
  float4 _4561 = _4539 + float4(_9_m111.x * _4541, (_9_m111.y * _4541) + ((_9_m111.w * _4540) * 0.5f), _9_m111.z * _4541, (_9_m111.w * _4541) + ((_9_m111.y * _4540) * 0.375f));
  float4 _4581 = _4538 + float4(_9_m112.x * _4541, (_9_m112.y * _4541) + ((_9_m112.w * _4540) * 0.5f), _9_m112.z * _4541, (_9_m112.w * _4541) + ((_9_m112.y * _4540) * 0.375f));
  float4 _4601 = _4537 + float4(_9_m113.x * _4541, (_9_m113.y * _4541) + ((_9_m113.w * _4540) * 0.5f), _9_m113.z * _4541, (_9_m113.w * _4541) + ((_9_m113.y * _4540) * 0.375f));
  float4 _4759;
  float4 _4760;
  float4 _4761;
  [branch] if (all(bool2(_506.x >= 0.0f.xx.x, _506.y >= 0.0f.xx.y))) {
    float4 _4609 = _61.SampleLevel(_13, _506, 0.0f);
    float4 _4610 = abs(_4609);
    float4 _4756;
    float4 _4757;
    float4 _4758;
    [branch] if (any(bool4(_4610.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4610.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4610.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4610.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
      float _4616 = length(_4609.yzw);
      uint _4618;
      float _4621;
      _4618 = 0u;
      _4621 = 1.0f;
      for (float _4623 = _4616; _4623 > 4.599999904632568359375f;) {
        _4618++;
        _4621 *= 0.5f;
        _4623 *= 0.5f;
        continue;
      }
      float4 _4627 = _4609 * _4621;
      float4 _4632 = float4(0.0f, _4627.yzw);
      float2 _4654 = (_60.SampleLevel(_13, float2(((((length(_4632) * _59_m3.x) + _59_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _59_m2.xy) + _59_m2.zw;
      float4 _4668;
      _4668 = float4(_4654.x * 3.5449078083038330078125f, _4632.yzw * _4654.y) * exp(_4627.x * 0.282094776630401611328125f);
      for (uint _4671 = 0u; _4671 < _4618;) {
        _4668 = mul(float4x4(_4668, float4(_4668.yx, 0.0f, 0.0f), float4(_4668.z, 0.0f, _4668.x, 0.0f), float4(_4668.w, 0.0f, 0.0f, _4668.x)) * 0.282094776630401611328125f, _4668);
        _4671++;
        continue;
      }
      float4x4 _4692 = float4x4(_4668, float4(_4668.yx, 0.0f, 0.0f), float4(_4668.z, 0.0f, _4668.x, 0.0f), float4(_4668.w, 0.0f, 0.0f, _4668.x)) * 0.282094776630401611328125f;
      float4 _4702 = mul(_4692, float4(_4561.w * 1.1283791065216064453125f, _4561.y * (-0.977204978466033935546875f), _4561.z * 0.977204978466033935546875f, _4561.x * (-0.977204978466033935546875f)));
      float4 _4722 = mul(_4692, float4(_4581.w * 1.1283791065216064453125f, _4581.y * (-0.977204978466033935546875f), _4581.z * 0.977204978466033935546875f, _4581.x * (-0.977204978466033935546875f)));
      float4 _4742 = mul(_4692, float4(_4601.w * 1.1283791065216064453125f, _4601.y * (-0.977204978466033935546875f), _4601.z * 0.977204978466033935546875f, _4601.x * (-0.977204978466033935546875f)));
      _4756 = float4(_4702.x * 0.886226952075958251953125f, _4702.w * (-1.02332675457000732421875f), _4702.y * (-1.02332675457000732421875f), _4702.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4757 = float4(_4722.x * 0.886226952075958251953125f, _4722.w * (-1.02332675457000732421875f), _4722.y * (-1.02332675457000732421875f), _4722.z * 1.02332675457000732421875f).yzwx * 1.0f;
      _4758 = float4(_4742.x * 0.886226952075958251953125f, _4742.w * (-1.02332675457000732421875f), _4742.y * (-1.02332675457000732421875f), _4742.z * 1.02332675457000732421875f).yzwx * 1.0f;
    }
    else {
      _4756 = _4561;
      _4757 = _4581;
      _4758 = _4601;
    }
    _4759 = _4756;
    _4760 = _4757;
    _4761 = _4758;
  }
  else {
    _4759 = _4561;
    _4760 = _4581;
    _4761 = _4601;
  }
  float _4766 = max(0.0f, dot(_4759.xyz, _488) + _4759.w);
  float _4771 = max(0.0f, dot(_4760.xyz, _488) + _4760.w);
  float _4776 = max(0.0f, dot(_4761.xyz, _488) + _4761.w);
  float3 _4786 = reflect(_546, _1073);
  float _4794 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_1138, 0.001000000047497451305389404296875f))));
  float2 _4798 = floor(_493 * _28_m0.w);
  float _4815 = floor(_525 - _28_m2.y);
  float _4819 = clamp(_4815, 0.0f, _28_m1.x - 1.0f);
  uint _4829 = (_4815 <= _4819) ? (_25.Load(uint(_9_m21.z + int(_4798.x + (_4798.y * _28_m0.x))) * 4 + 0) & _25.Load(uint(_9_m21.w + int(_4819)) * 4 + 0)) : 0u;
  float _4832 = dot(float4(_4766, _4771, _4776, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
  float3 _4834;
  float _4837;
  uint _4839;
  _4834 = 0.0f.xxx;
  _4837 = 1.0f;
  _4839 = _4829;
  uint _4840;
  float3 _4835;
  float _4838;
  bool _4842;
  [loop] for (;;) {
    bool _4841 = _4839 != 0u;
    _4842 = _4837 > 0.00999999977648258209228515625f;
    if (_4841 && _4842) {
      uint _4846 = firstbitlow(_4839);
      _4840 = _4839 ^ (1u << (_4846 & 31u));
      float3 _4866 = float3(dot(_28_m4[_4846]._m2, _522), dot(_28_m4[_4846]._m3, _522), dot(_28_m4[_4846]._m4, _522));
      float3 _4867 = abs(_4866);
      if (all(bool3(_4867.x <= _28_m4[_4846]._m1.xyz.x, _4867.y <= _28_m4[_4846]._m1.xyz.y, _4867.z <= _28_m4[_4846]._m1.xyz.z))) {
        float3 _4876 = _28_m4[_4846]._m1.xyz * 0.100000001490116119384765625f;
        float3 _4878 = _4867 * 0.100000001490116119384765625f;
        float3 _4879 = _4878 * _4878;
        float3 _4882 = (_28_m4[_4846]._m1.xyz - _4867) * _28_m4[_4846]._m5.xyz;
        float3 _4930;
        [branch] if (_28_m4[_4846]._m6.x == 1.0f) {
          float3 _4915 = float3(dot(_28_m4[_4846]._m2.xyz, _4786), dot(_28_m4[_4846]._m3.xyz, _4786), dot(_28_m4[_4846]._m4.xyz, _4786));
          float3 _4917 = (_28_m4[_4846]._m1.xyz - _4866) / _4915;
          float3 _4920 = ((-_28_m4[_4846]._m1.xyz) - _4866) / _4915;
          bool3 _4921 = bool3(_4915.x > 0.0f.xxx.x, _4915.y > 0.0f.xxx.y, _4915.z > 0.0f.xxx.z);
          float3 _4922 = float3(_4921.x ? _4917.x : _4920.x, _4921.y ? _4917.y : _4920.y, _4921.z ? _4917.z : _4920.z);
          _4930 = _4866 + (_4915 * min(min(_4922.x, _4922.y), _4922.z));
        }
        else {
          _4930 = _4786;
        }
        float3 _4931 = normalize(_4930);
        float3 _4934 = float3(int3(sign(_4931)));
        float3 _4937 = _4931 / dot(_4931, _4934).xxx;
        float3 _4951;
        if (_4937.z < 0.0f) {
          float3 _4942 = abs(_4937);
          float2 _4949 = _4934.xy * float2(1.0f - _4942.y, 1.0f - _4942.x);
          _4951 = float3(_4949.x, _4949.y, _4937.z);
        } else {
          _4951 = _4937;
        }
        float _4976 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m4[_4846]._m0, float4(_1073, 1.0f))));
        float _4989 = clamp((min(_4882.x, min(_4882.y, _4882.z)) * _28_m4[_4846]._m6.y) + ((((((_4876 * _4876).x - ((_4879.x + _4879.y) + _4879.z)) * _28_m4[_4846]._m5.x) * _28_m4[_4846]._m5.x) * (1.0f - _28_m4[_4846]._m6.y)) * 100.0f), 0.0f, 1.0f) * _28_m4[_4846]._m6.w;
        _4835 = _4834 + ((((_23.SampleLevel(_15, float3((((_4951.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, _28_m4[_4846]._m1.w), _4794).xyz * _28_m4[_4846]._m5.w) * ((((((clamp(abs(_4832 / _4976), 0.0f, 1.0f) * 2.0f) + _4832) / (2.0f + _4976)) - 1.0f) * _9_m23.w) + 1.0f)) * _4989) * _4837);
        _4838 = _4837 * (1.0f - _4989);
      } else {
        _4835 = _4834;
        _4838 = _4837;
      }
      _4834 = _4835;
      _4837 = _4838;
      _4839 = _4840;
      continue;
    } else {
      break;
    }
  }
  float3 _5058;
  if (_4842) {
    float3 _4997 = normalize(_4786);
    float3 _5000 = float3(int3(sign(_4997)));
    float3 _5003 = _4997 / dot(_4997, _5000).xxx;
    float3 _5017;
    if (_5003.z < 0.0f) {
      float3 _5008 = abs(_5003);
      float2 _5015 = _5000.xy * float2(1.0f - _5008.y, 1.0f - _5008.x);
      _5017 = float3(_5015.x, _5015.y, _5003.z);
    } else {
      _5017 = _5003;
    }
    float _5044 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_28_m3, float4(_1073, 1.0f))));
    _5058 = _4834 + ((_23.SampleLevel(_15, float3((((_5017.xy * 0.5f) + 0.5f.xx) * _28_m1.w) + _28_m2.w.xx, 0.0f), _4794).xyz * ((((((clamp(abs(_4832 / _5044), 0.0f, 1.0f) * 2.0f) + _4832) / (2.0f + _5044)) - 1.0f) * _9_m23.w) + 1.0f)) * _4837);
  } else {
    _5058 = _4834;
  }
  float3 _5064 = (_5058 * _9_m23.z) * _9_m22.y;
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUBEMAP_AMBIENT != 0.0f) {
    _5064 *= 0.25f + (0.75f * saturate(_4832));
  }
  // RenoDX code end
  float3 _5085;
  [branch] if (_9_m23.y != 0.0f) {
    float4 _5079 = _21.SampleBias(_13, _4, _9_m16);
    float _5080 = _5079.x;
    _5085 = (_20.SampleBias(_13, _4, _9_m16).xyz * _5080) + (_5064 * (1.0f - _5080));
  }
  else {
    _5085 = _5064;
  }
  float3 _5088 = (((float3(_4766, _4771, _4776) * _1142) * _9_m22.x) * _4184) + ((_5085 * (_1171 + ((_1146 * ((1.0f - _1172) / _1172)) * _1171))) * _4183);
  float4 _5090 = float4(_4144.x, _4144.y, _4144.z, _1332.w) + float4(_5088.x, _5088.y, _5088.z, 0.0f.xxxx.w);
  float _5108 = _520 * _9_m46.w;
  float _5113 = max(0.00999999977648258209228515625f, _5108 + _9_m47.w);
  float3 _5127 = exp(_9_m45.xyz * ((-max(0.0f, (_545 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_5113)) / _5113) * exp(_5108 + _9_m48.w))));
  float _5130 = dot(_546, _9_m44.xyz);
  float _5136 = _9_m45.w * _9_m45.w;
  float _5140 = (1.0f + _5136) - ((2.0f * _9_m45.w) * _5130);
  float3 _5464;
  float _5465;
  if (_9_m55.z > 0.0f) {
    uint3 _5292 = (uint3(int3(_454, _455, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _5293 = _5292.y;
    uint _5294 = _5292.z;
    uint _5297 = _5292.x + (_5293 * _5294);
    uint _5299 = _5293 + (_5294 * _5297);
    uint _5301 = _5294 + (_5297 * _5299);
    uint _5303 = _5297 + (_5299 * _5301);
    float _5327 = dot(_546, -_7_m0[2].xyz);
    float3 _5335 = _518 - _7_m11.xyz;
    float _5337 = (_9_m55.w * ((_5327 > 5.9604644775390625e-08f) ? (1.0f / _5327) : 0.0f)) * (1.0f / _545);
    float _5338 = _5335.y;
    float _5339 = _5337 * _5338;
    float _5341 = _7_m11.y + _5339;
    float _5342 = _5338 - _5339;
    float _5344 = (1.0f - _5337) * _545;
    float _5358 = max(-127.0f, _9_m49.z * _5342);
    float _5382 = max(-127.0f, _9_m52.x * _5342);
    float _5393 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_5341 - _9_m49.x)))) * ((abs(_5358) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5358)) / _5358) : (0.693147182464599609375f - (0.2402265071868896484375f * _5358)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_5341 - _9_m52.z)))) * ((abs(_5382) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5382)) / _5382) : (0.693147182464599609375f - (0.2402265071868896484375f * _5382))));
    float _5415 = clamp((_545 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5418 = clamp((max(clamp(exp2(-(_5393 * _5344)), 0.0f, 1.0f), _9_m51.w) + clamp((_545 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5415, 0.0f, 1.0f);
    float4 _5458 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _57.SampleLevel(_13, float3((_493 + ((((float3(uint3(_5303, _5299 + (_5301 * _5303), _437) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_525 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_525 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _5460 = _5458.w;
    _5464 = _5458.xyz + (((_9_m51.xyz * (1.0f - _5418)) + (((_9_m54.xyz * pow(clamp(dot(_544, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5393 * max(_5344 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5415))) * _5460);
    _5465 = _5460 * _5418;
  } else {
    float3 _5168 = _518 - _7_m11.xyz;
    float _5170 = _5168.y;
    float _5184 = max(-127.0f, _9_m49.z * _5170);
    float _5208 = max(-127.0f, _9_m52.x * _5170);
    float _5219 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_5184) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5184)) / _5184) : (0.693147182464599609375f - (0.2402265071868896484375f * _5184)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_5208) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_5208)) / _5208) : (0.693147182464599609375f - (0.2402265071868896484375f * _5208))));
    float _5241 = clamp((_545 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _5244 = clamp((max(clamp(exp2(-(_5219 * _545)), 0.0f, 1.0f), _9_m51.w) + clamp((_545 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _5241, 0.0f, 1.0f);
    _5464 = (_9_m51.xyz * (1.0f - _5244)) + (((_9_m54.xyz * pow(clamp(dot(_544, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_5219 * max(_545 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _5241));
    _5465 = _5244;
  }
  float3 _5468 = _5127 * _5465;
  float3 _5470 = (clamp(_5090.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _5468) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_5130 * _5130)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _5136) / max((12.56637096405029296875f * _5140) * sqrt(_5140), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _5127)) * _5465) + _5464);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _5470 = (_5470 * 0.65f) + (clamp(_5090.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _5472 = float4(_5470.x, _5470.y, _5470.z, _5090.w);
  _5472.w = dot(_5468, 0.3333333432674407958984375f.xxx);
  _5 = _5472;
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

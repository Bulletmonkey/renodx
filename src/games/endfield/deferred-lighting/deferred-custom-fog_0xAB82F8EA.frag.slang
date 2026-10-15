#include "./renodx_injection.hlsli"

// Ported from the native 0xAB82F8EA Vulkan dump.
struct _29 {
  float4 _m0;
  float4 _m1;
  float4 _m2;
  float4 _m3;
  float4 _m4;
  float4 _m5;
  float4 _m6;
  float4 _m7;
};

static float _399;
static uint _402;

static const int2 _367[6] = {int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1)};
static const float2 _368[6] = {float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f)};

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

[[vk::binding(45, 3)]] cbuffer _8_9 : register(b45, space3) {
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

[[vk::binding(40, 3)]] cbuffer _10_11 : register(b40, space3) {
  float4 _11_m0[63] : packoffset(c0);
};

[[vk::binding(49, 3)]] ByteAddressBuffer _27 : register(t49, space3);
[[vk::binding(46, 3)]] cbuffer _28_30 : register(b46, space3) {
  float4 _30_m0 : packoffset(c0);
  float4 _30_m1 : packoffset(c1);
  float4 _30_m2 : packoffset(c2);
  float4 _30_m3 : packoffset(c3);
  _29 _30_m4[32] : packoffset(c4);
};

[[vk::binding(41, 3)]] cbuffer _31_32 : register(b41, space3) {
  float4 _32_m0 : packoffset(c0);
  float4 _32_m1 : packoffset(c1);
  float4 _32_m2 : packoffset(c2);
  float4 _32_m3 : packoffset(c3);
  float4 _32_m4 : packoffset(c4);
  uint4 _32_m5 : packoffset(c5);
  float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(42, 3)]] cbuffer _33_34 : register(b42, space3) {
  int _34_m0 : packoffset(c0);
  int _34_m1 : packoffset(c0.y);
  int _34_m2 : packoffset(c0.z);
  int _34_m3 : packoffset(c0.w);
  int _34_m4 : packoffset(c1);
  int _34_m5 : packoffset(c1.y);
  int _34_m6 : packoffset(c1.z);
  int _34_m7 : packoffset(c1.w);
  float _34_m8 : packoffset(c2);
  float _34_m9 : packoffset(c2.y);
  float _34_m10 : packoffset(c2.z);
  float _34_m11 : packoffset(c2.w);
  float _34_m12 : packoffset(c3);
  float _34_m13 : packoffset(c3.y);
  float _34_m14 : packoffset(c3.z);
  float _34_m15 : packoffset(c3.w);
};

[[vk::binding(44, 3)]] cbuffer _35_36 : register(b44, space3) {
  column_major float4x4 _36_m0[5] : packoffset(c0);
  float4 _36_m1[4] : packoffset(c20);
  float4 _36_m2[4] : packoffset(c24);
  float4 _36_m3[4] : packoffset(c28);
  float4 _36_m4 : packoffset(c32);
  float4 _36_m5 : packoffset(c33);
  float4 _36_m6 : packoffset(c34);
  float4 _36_m7 : packoffset(c35);
  float4 _36_m8 : packoffset(c36);
  float4 _36_m9[27] : packoffset(c37);
  float4 _36_m10 : packoffset(c64);
  float4 _36_m11 : packoffset(c65);
  float4 _36_m12[62] : packoffset(c66);
  column_major float4x4 _36_m13[15] : packoffset(c128);
  float4 _36_m14[15] : packoffset(c188);
  float4 _36_m15[15] : packoffset(c203);
  float4 _36_m16[15] : packoffset(c218);
  float4 _36_m17 : packoffset(c233);
  float4 _36_m18 : packoffset(c234);
  float4 _36_m19[21] : packoffset(c235);
  column_major float4x4 _36_m20 : packoffset(c256);
  column_major float4x4 _36_m21 : packoffset(c260);
  float4 _36_m22 : packoffset(c264);
  float4 _36_m23 : packoffset(c265);
  float4 _36_m24 : packoffset(c266);
  float4 _36_m25[128] : packoffset(c267);
};

[[vk::binding(48, 3)]] ByteAddressBuffer _39 : register(t48, space3);
[[vk::binding(37, 3)]] cbuffer _44_45 : register(b37, space3) {
  column_major float4x4 _45_m0 : packoffset(c0);
  float4 _45_m1 : packoffset(c4);
};

[[vk::binding(39, 3)]] cbuffer _51_52 : register(b39, space3) {
  float4 _52_m0[15] : packoffset(c0);
  float4 _52_m1[15] : packoffset(c15);
};

[[vk::binding(47, 3)]] cbuffer _55_56 : register(b47, space3) {
  float4 _56_m0[32] : packoffset(c0);
  column_major float4x4 _56_m1[32] : packoffset(c32);
};

[[vk::binding(43, 3)]] cbuffer _62_63 : register(b43, space3) {
  float4 _63_m0 : packoffset(c0);
  float4 _63_m1 : packoffset(c1);
  float4 _63_m2 : packoffset(c2);
  float4 _63_m3 : packoffset(c3);
  float4 _63_m4 : packoffset(c4);
  uint4 _63_m5 : packoffset(c5);
  float4 _63_m6 : packoffset(c6);
  float4 _63_m7 : packoffset(c7);
};

[[vk::binding(1, 3)]] SamplerState _14 : register(s1, space3);
[[vk::binding(4, 3)]] SamplerState _15 : register(s4, space3);
[[vk::binding(2, 3)]] SamplerState _16 : register(s2, space3);
[[vk::binding(0, 3)]] SamplerState _17 : register(s0, space3);
[[vk::binding(5, 3)]] SamplerComparisonState _18 : register(s5, space3);
[[vk::binding(3, 3)]] SamplerComparisonState _19 : register(s3, space3);
[[vk::binding(34, 3)]] Texture2D<float4> _21 : register(t34, space3);
[[vk::binding(12, 3)]] Texture2D<float4> _22 : register(t12, space3);
[[vk::binding(13, 3)]] Texture2D<float4> _23 : register(t13, space3);
[[vk::binding(28, 3)]] Texture2D<float4> _24 : register(t28, space3);
[[vk::binding(14, 3)]] Texture2DArray<float4> _25 : register(t14, space3);
[[vk::binding(16, 3)]] Texture2D<float4> _37 : register(t16, space3);
[[vk::binding(11, 3)]] Texture2D<float4> _40 : register(t11, space3);
[[vk::binding(29, 3)]] Texture2D<float4> _41 : register(t29, space3);
[[vk::binding(35, 3)]] Texture2D<float4> _42 : register(t35, space3);
[[vk::binding(8, 3)]] Texture2D<float4> _43 : register(t8, space3);
[[vk::binding(15, 3)]] Texture3D<float4> _47 : register(t15, space3);
[[vk::binding(17, 3)]] Texture2D<float4> _48 : register(t17, space3);
[[vk::binding(9, 3)]] Texture2DArray<float4> _49 : register(t9, space3);
[[vk::binding(10, 3)]] Texture2DArray<float4> _50 : register(t10, space3);
[[vk::binding(33, 3)]] Texture2D<float4> _53 : register(t33, space3);
[[vk::binding(18, 3)]] Texture2D<float4> _54 : register(t18, space3);
[[vk::binding(20, 3)]] Texture2D<float4> _59 : register(t20, space3);
[[vk::binding(19, 3)]] Texture2D<float4> _60 : register(t19, space3);
[[vk::binding(27, 3)]] Texture3D<float4> _61 : register(t27, space3);
[[vk::binding(36, 3)]] Texture2D<float4> _64 : register(t36, space3);
[[vk::binding(7, 3)]] Texture2D<float4> _65 : register(t7, space3);
[[vk::binding(26, 3)]] Texture3D<float4> _66 : register(t26, space3);
[[vk::binding(23, 3)]] Texture3D<float4> _67 : register(t23, space3);
[[vk::binding(25, 3)]] Texture3D<float4> _68 : register(t25, space3);
[[vk::binding(22, 3)]] Texture3D<float4> _69 : register(t22, space3);
[[vk::binding(24, 3)]] Texture3D<float4> _70 : register(t24, space3);
[[vk::binding(21, 3)]] Texture3D<float4> _71 : register(t21, space3);
[[vk::binding(6, 3)]] Texture2D<float4> _72 : register(t6, space3);
[[vk::binding(32, 3)]] Texture2D<float4> _73 : register(t32, space3);
[[vk::binding(31, 3)]] Texture2D<float4> _74 : register(t31, space3);
[[vk::binding(30, 3)]] Texture2D<float4> _75 : register(t30, space3);

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
  uint2 _416 = uint2(gl_FragCoord.xy);
  int _419 = int(_416.x);
  int _420 = int(_416.y);
  int2 _422 = int3(_419, _420, 0).xy;
  float4 _424 = _73.Load(int3(_422, 0));
  float4 _426 = _74.Load(int3(_422, 0));
  float4 _428 = _75.Load(int3(_422, 0));
  uint _432 = uint(round(_428.w * 255.0f));
  float3 _538;
  float3 _539;
  float _540;
  float _541;
  float _542;
  float _543;
  float _544;
  float _545;
  float3 _546;
  uint _547;
  float _548;
  bool _549;
  [branch] if ((_432 & 128u) != 0u) {
    float2 _480 = (_424.xy * 2.0f) - 1.0f.xx;
    float _484 = 1.0f - dot(1.0f.xx, abs(_480));
    float3 _486 = float3(_480.x, _484, _480.y);
    float3 _498;
    if (_484 < 0.0f) {
      float2 _493 = _486.xz;
      bool2 _494 = bool2(_493.x >= 0.0f.xx.x, _493.y >= 0.0f.xx.y);
      float2 _496 = (1.0f.xx - abs(_486.zx)) * float2(_494.x ? 1.0f.xx.x : (-1.0f).xx.x, _494.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _498 = float3(_496.x, _486.y, _496.y);
    } else {
      _498 = _486;
    }
    float2 _503 = (_426.xy * 2.0f) - 1.0f.xx;
    float _507 = 1.0f - dot(1.0f.xx, abs(_503));
    float3 _509 = float3(_503.x, _507, _503.y);
    float3 _521;
    if (_507 < 0.0f) {
      float2 _516 = _509.xz;
      bool2 _517 = bool2(_516.x >= 0.0f.xx.x, _516.y >= 0.0f.xx.y);
      float2 _519 = (1.0f.xx - abs(_509.zx)) * float2(_517.x ? 1.0f.xx.x : (-1.0f).xx.x, _517.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _521 = float3(_519.x, _509.y, _519.y);
    } else {
      _521 = _509;
    }
    _538 = _428.xyz;
    _539 = normalize(_521);
    _540 = _426.z;
    _541 = _424.z;
    _542 = 0.0f;
    _543 = 0.0f;
    _544 = 0.0f;
    _545 = 0.0f;
    _546 = normalize(_498);
    _547 = uint(int((round(_424.w * 3.0f) * 4.0f) + round(_426.w * 3.0f)));
    _548 = float(_432 & 127u) * 0.0078740157186985015869140625f;
    _549 = true;
  }
  else {
    float2 _442 = (_426.xy * 2.0f) - 1.0f.xx;
    float _446 = 1.0f - dot(1.0f.xx, abs(_442));
    float3 _448 = float3(_442.x, _446, _442.y);
    float3 _460;
    if (_446 < 0.0f) {
      float2 _455 = _448.xz;
      bool2 _456 = bool2(_455.x >= 0.0f.xx.x, _455.y >= 0.0f.xx.y);
      float2 _458 = (1.0f.xx - abs(_448.zx)) * float2(_456.x ? 1.0f.xx.x : (-1.0f).xx.x, _456.y ? 1.0f.xx.y : (-1.0f).xx.y);
      _460 = float3(_458.x, _448.y, _458.y);
    } else {
      _460 = _448;
    }
    uint _468 = clamp(_432 - 1u, 0u, 62u);
    bool4 _469 = ((_432 > 0u) && (_432 <= 63u)).xxxx;
    float4 _472 = float4(_469.x ? _11_m0[_468].x : 0.0f.xxxx.x, _469.y ? _11_m0[_468].y : 0.0f.xxxx.y, _469.z ? _11_m0[_468].z : 0.0f.xxxx.z, _469.w ? _11_m0[_468].w : 0.0f.xxxx.w);
    _538 = _428.xyz;
    _539 = normalize(_460);
    _540 = _426.z;
    _541 = _424.y;
    _542 = _472.y;
    _543 = _472.z;
    _544 = _472.x * _424.x;
    _545 = _472.w;
    _546 = 0.0f.xxx;
    _547 = _432;
    _548 = 0.0f;
    _549 = false;
  }
  float2 _552 = float2(_416);
  float2 _557 = (_552 + 0.5f.xx) * _9_m0.zw;
  float2 _565 = gl_FragCoord.xy * _9_m0.zw;
  float2 _567 = (_565 * 2.0f) - 1.0f.xx;
  float4 _570 = float4(_567, _21.SampleLevel(_14, _557, 0.0f).x, 1.0f);
  _570.y = -_567.y;
  float4 _573 = mul(_7_m6, _570);
  float3 _577 = _573.xyz / _573.w.xxx;
  float4 _581 = float4(_577, 1.0f);
  float _584 = abs(mul(_7_m0, _581).z);
  float3 _599;
  do {
    if (_9_m4.w == 0.0f) {
      _599 = _7_m11.xyz - _577;
      break;
    } else {
      _599 = _7_m0[2].xyz;
      break;
    }
    break;
  } while (false);
  float _600 = dot(_599, _599);
  float _602 = rsqrt(max(_600, 9.9999999392252902907785028219223e-09f));
  float3 _603 = _599 * _602;
  float _604 = _600 * _602;
  float3 _605 = -_603;
  float2 _618;
  if (_9_m132.x > 0.00048828125f) {
    _618 = _72.SampleBias(_15, _4, _9_m16).xy;
  } else {
    _618 = 1.0f.xx;
  }
  float _619 = dot(_539, float3(0.0f, -1.0f, 0.0f));
  float3 _674;
  [branch] if (_9_m124.x > 0.5f) {
    float _646 = abs(_539.x);
    float _648 = abs(_539.y);
    float _650 = abs(_539.z);
    float3 _655 = float3(_646, _648, _650) * (1.0f / ((_646 + _648) + _650));
    _674 = ((((float3(0.0f, 0.0f, 1.0f) * _655.x) + (float3(0.70710599422454833984375f, 0.0f, 0.70710599422454833984375f) * _655.y)) + (float3(1.0f, 0.0f, 0.0f) * _655.z)) * ((_47.SampleLevel(_16, _577 * _9_m127.x, 0.0f).x * 2.0f) - 1.0f)) * lerp(_9_m127.z, _9_m127.y, smoothstep(0.699999988079071044921875f, 0.949999988079071044921875f, abs(_619)));
  }
  else {
    _674 = 0.0f.xxx;
  }
  float4 _688 = mul(_45_m0, float4((_577 + ((((_539 * _9_m131.z) * _9_m123.x) + (float3(0.0f, 1.0f, 0.0f) * _9_m123.y)) * ((1.0f - clamp(_619, 0.0f, 0.89999997615814208984375f)) * clamp(smoothstep(0.20000000298023223876953125f, 0.100000001490116119384765625f, _619), 0.100000001490116119384765625f, 1.0f)))) + _674, 1.0f));
  float2 _691 = (_688.xy * 0.5f) + 0.5f.xx;
  float4 _692 = float4(_691.x, _691.y, _688.z, _688.w);
  _692.y = 1.0f - _691.y;
  float _713;
  [branch] if (_9_m124.y > 0.5f) {
    _713 = _43.SampleCmpLevelZero(_19, (_692.xy + _45_m1.xy).xy, max(_688.z, 0.00048828125f));
  }
  else {
    _713 = 1.0f;
  }
  float _718 = lerp(_9_m128.w, 1.0f, clamp(_539.y, 0.0f, 1.0f));
  float2 _727 = abs(_577.xz - _7_m11.xz);
  float _730 = max(_727.x, _727.y);
  float _748 = min(_618.x, _618.y);
  float2 _750 = _618 * (1.0f - lerp(lerp(_9_m128.z * _718, 1.0f, lerp(_718 * _713, 1.0f, smoothstep(0.699999988079071044921875f * _9_m120.w, 0.75f * _9_m120.w, _730))), _9_m128.y, smoothstep(_9_m120.w, _9_m128.x * _9_m120.w, _730)));
  float _751 = _750.x;
  float _752 = 1.0f - _540;
  float _760 = clamp(clamp((_752 * _9_m120.z) + _9_m120.y, 0.0f, 1.0f), 0.0f, 1.0f);
  float _762 = 1.0f - smoothstep(0.20000000298023223876953125f, 0.5f, _619);
  float _769 = lerp(1.0f, 0.25f, (_9_m120.x * _760) * _762);
  float _785 = (1.0f - lerp(_752, clamp(clamp(lerp(0.89999997615814208984375f, 0.60000002384185791015625f, _760) + lerp(-0.60000002384185791015625f, 0.4000000059604644775390625f, sqrt(_752)), 0.0f, 1.0f), _752, 0.9900000095367431640625f), ((_9_m120.x * clamp(2.0f - _9_m120.x, 0.0f, 1.0f)) * _762) * (1.0f - _751))) * lerp(1.0f, 0.100000001490116119384765625f, max(0.0f, smoothstep(0.0f, 0.0500000007450580596923828125f, 0.0f)));
  float _790 = lerp(lerp(min(1.0f, _785), _785, _748), _540, _751);
  float3 _792 = _538 * lerp(lerp(min(1.0f, _769), _769, _748), 1.0f, _751);
  float _793 = dot(_539, _603);
  float _794 = max(0.0f, _793);
  float4 _796 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _790) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
  float _797 = _796.x;
  float2 _807 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * ((min(_797 * _797, exp2((-9.27999973297119140625f) * _794)) * _797) + _796.y)) + _796.zw;
  float3 _812 = (0.039999999105930328369140625f.xxx * _807.x) + _807.y.xxx;
  float4 _1138;
  do {
    [branch] if (_34_m4 == 0) {
      _1138 = 0.0f.xxxx;
      break;
    }
    float4 _825 = _40.Load(int3(_422, 0));
    float _826 = _825.x;
    float4 _1137;
    if (_826 > 0.001000000047497451305389404296875f) {
      float3 _837 = reflect(_605, _539);
      float3 _838 = -_32_m0.xyz;
      float _843 = dot(_838, _837);
      float3 _845 = _837 - (_838 * _843);
      bool3 _847 = (_843 < _32_m4.z).xxx;
      float3 _855 = normalize((_838 * _32_m4.z) + ((_845 * rsqrt(max(6.103515625e-05f, dot(_845, _845)))) * _32_m4.y));
      float3 _856 = float3(_847.x ? _855.x : _837.x, _847.y ? _855.y : _837.y, _847.z ? _855.z : _837.z);
      float3 _860 = _856 + _603;
      float3 _864 = _860 * rsqrt(max(6.103515625e-05f, dot(_860, _860)));
      float _866 = clamp(dot(_856, _539), 0.0f, 1.0f);
      float _868 = clamp(dot(_539, _864), 0.0f, 1.0f);
      float _870 = clamp(dot(_603, _864), 0.0f, 1.0f);
      float _872 = clamp(_793, 0.0f, 1.0f);
      float3 _1046;
      float3 _1047;
      [branch] if (_549) {
        float _976 = _790 * _790;
        float _977 = _976 * _976;
        float _998 = (((_868 * _977) - _868) * _868) + 1.0f;
        float _1001 = 1.0f - _870;
        float _1002 = _1001 * _1001;
        float _1004 = (_1001 * _1002) * _1002;
        float _1028 = 1.0f - _790;
        float _1035 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_1028 * (1.04997003078460693359375f + (_1028 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _1028))))));
        float _1036 = 1.0f - _1035;
        _1046 = 0.0f.xxx;
        _1047 = min(((0.039999999105930328369140625f.xxx * (1.0f - _1004)) + _1004.xxx) * ((_977 / (_998 * _998)) * (0.5f / (((_866 * sqrt(((((-_872) * _977) + _872) * _872) + _977)) + (_872 * sqrt(((((-_866) * _977) + _866) * _866) + _977))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_872, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_866, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _1035) / _1036)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _1036)));
      }
      else {
        float _876 = _790 * _790;
        float _877 = _876 * _876;
        float _898 = (((_868 * _877) - _868) * _868) + 1.0f;
        float _901 = 1.0f - _870;
        float _902 = _901 * _901;
        float _904 = (_901 * _902) * _902;
        float _928 = 1.0f - _790;
        float _935 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_928 * (1.04997003078460693359375f + (_928 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _928))))));
        float _936 = 1.0f - _935;
        float _959 = clamp(1.0f - _544, 0.0f, 1.0f);
        float _967 = clamp((dot(_539, _856) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
        _1046 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_542, _543, _544).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _543.xxx) * _544) * lerp((_541 * lerp(1.0f, (_967 * sqrt(_967)) * 1.66666662693023681640625f, _959)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_603, _856), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _959));
        _1047 = min(((0.039999999105930328369140625f.xxx * (1.0f - _904)) + _904.xxx) * ((_877 / (_898 * _898)) * (0.5f / (((_866 * sqrt(((((-_872) * _877) + _872) * _872) + _877)) + (_872 * sqrt(((((-_866) * _877) + _866) * _866) + _877))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_872, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_866, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _935) / _936)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _936)));
      }
      float3 _1048 = _792 * 1.0f;
      float3 _1051 = clamp(_1047 * _32_m4.x, 0.0f.xxx, 1000.0f.xxx) * _866;
      float3 _1122;
      [branch] if (_549) {
        float3 _1117;
        do {
          [branch] if (((_547 > 0u) && (_547 <= 15u)) && (_548 > 0.0f)) {
            int _1070 = int(clamp(_547 - 1u, 0u, 14u));
            float _1089 = _548 * _52_m0[_1070].w;
            float _1094 = float(_1070);
            _1117 = float3(_49.SampleLevel(_15, float3((dot(normalize(lerp(_539, _546, _52_m0[_1070].x.xxx)), _856) * 0.5f) + 0.5f, _1089, _1094), 0.0f).x, _49.SampleLevel(_15, float3((dot(normalize(lerp(_539, _546, _52_m0[_1070].y.xxx)), _856) * 0.5f) + 0.5f, _1089, _1094), 0.0f).y, _49.SampleLevel(_15, float3((dot(normalize(lerp(_539, _546, _52_m0[_1070].z.xxx)), _856) * 0.5f) + 0.5f, _1089, _1094), 0.0f).z);
            break;
          }
          _1117 = _866.xxx;
          break;
        } while (false);
        _1122 = _32_m1.xyz * (((_1048 * _1117) + _1051) + _1046);
      }
      else {
        _1122 = ((_1051 + _1046) + (_1048 * _866)) * _32_m1.xyz;
      }
      float3 _1135 = lerp(_1122, _1122 * _42.SampleBias(_15, float2(_826, 0.5f), _9_m16).xyz, (1.0f - _826).xxx) * _53.SampleLevel(_15, _565, 0.0f).x;
      _1137 = float4(_1135.x, _1135.y, _1135.z, 0.0f.xxxx.w);
    } else {
      _1137 = 0.0f.xxxx;
    }
    _1138 = _1137;
    break;
  } while (false);
  float2 _1140 = floor(_552 * 0.03125f);
  int _1148 = int((_1140.x + (_1140.y * _34_m9)) * 8.0f);
  float _1155 = floor(_584 - (_9_m3.y * _34_m15));
  float _1159 = clamp(_1155, 0.0f, _34_m11 - 1.0f);
  int _1161 = int(_1159 * 8.0f);
  float4 _1167 = _41.SampleBias(_15, _557, _9_m16);
  float3 _1169;
  float _1172;
  _1169 = 0.0f.xxx;
  _1172 = 1.0f;
  float3 _1170;
  float _1173;
  [loop] for (int _1174 = 0; _1174 <= 7; _1169 = _1170, _1172 = _1173, _1174++) {
    uint _1195 = (_1155 <= _1159) ? (_27.Load(uint((_34_m2 + _1148) + _1174) * 4 + 0) & _27.Load(uint((_34_m3 + _1161) + _1174) * 4 + 0)) : 0u;
    uint _1196 = uint(_1174);
    float3 _1200;
    _1173 = _1172;
    _1200 = 0.0f.xxx;
    uint _1203;
    float _1198;
    float3 _1201;
    [loop] for (uint _1202 = _1195; _1202 != 0u; _1173 = _1198, _1200 = _1201, _1202 = _1203) {
      uint _1207 = firstbitlow(_1202);
      _1203 = _1202 ^ (1u << (_1207 & 31u));
      int _1213 = int((32u * _1196) + _1207) * 8;
      int _1216 = _1213 + 1;
      int _1219 = _1213 + 2;
      int _1222 = _1213 + 3;
      int _1225 = _1213 + 4;
      int _1228 = _1213 + 5;
      int _1231 = _1213 + 6;
      int _1234 = _1213 + 7;
      uint _1238 = uint(_32_m6[_1228].w);
      float _1313;
      if ((_1238 & 1u) == 1u) {
        uint _1244 = asuint(_32_m6[_1228].x);
        uint _1251 = asuint(_32_m6[_1228].y);
        uint _1258 = asuint(_32_m6[_1228].z);
        uint _1265 = asuint(_32_m6[_1231].x);
        uint _1272 = asuint(_32_m6[_1231].y);
        uint _1279 = asuint(_32_m6[_1231].z);
        float3 _1298 = abs(mul(float4(_577 - _32_m6[_1216].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1244).x, spvUnpackHalf2x16(_1258).x, spvUnpackHalf2x16(_1272).x, 0.0f), float4(spvUnpackHalf2x16(_1244 >> 16u).x, spvUnpackHalf2x16(_1258 >> 16u).x, spvUnpackHalf2x16(_1272 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1251).x, spvUnpackHalf2x16(_1265).x, spvUnpackHalf2x16(_1279).x, 0.0f), float4(spvUnpackHalf2x16(_1251 >> 16u).x, spvUnpackHalf2x16(_1265 >> 16u).x, spvUnpackHalf2x16(_1279 >> 16u).x, 0.0f))).xyz);
        float _1305 = _32_m6[_1234].x * 0.5f;
        float _1311 = 1.0f - clamp((max(max(_1298.x, _1298.y), _1298.z) - (_1305 + 0.5f)) / (0.5f - _1305), 0.0f, 1.0f);
        _1313 = _1311 * _1311;
      } else {
        _1313 = 1.0f;
      }
      uint _1317 = uint(_32_m6[_1213].w);
      bool _1320 = _32_m6[_1222].z > 0.5f;
      if ((false || (_1313 < 0.001000000047497451305389404296875f)) || ((_1317 < 4u) && _1320)) {
        _1198 = _1173;
        _1201 = _1200;
        continue;
      }
      float _4080;
      float3 _4081;
      do {
        [branch] if (_1317 >= 4u) {
          float3 _2571;
          do {
            float3 _1339 = _32_m6[_1216].xyz - _577;
            if (dot(_32_m6[_1222].xyz, _1339) > 0.0f) {
              _2571 = 0.0f.xxx;
              break;
            }
            float _1346 = dot(_1339, _1339) * _32_m6[_1216].w;
            float _1349 = clamp(1.0f - (_1346 * _1346), 0.0f, 1.0f);
            float _1350 = _1349 * _1349;
            if (_1350 <= 0.0f) {
              _2571 = 0.0f.xxx;
              break;
            }
            float3 _1388;
            float _1389;
            bool _1390;
            float3 _1417;
            float3 _1419;
            float3 _1421;
            float3 _1423;
            float3 _1354 = _32_m6[_1219].xyz * _32_m6[_1219].w;
            float3 _1355 = _32_m6[_1216].xyz - _1354;
            float3 _1356 = _32_m6[_1225].xyz * _32_m6[_1222].w;
            float3 _1359 = _32_m6[_1216].xyz + _1354;
            float2 _1369 = (float2(clamp(_790, 0.0f, 1.0f), sqrt(clamp(1.0f - clamp(_793, 0.0f, 1.0f), 0.0f, 1.0f))) * 0.984375f) + 0.0078125f.xx;
            float4 _1373 = _59.SampleLevel(_15, _1369, 0.0f);
            float4 _1377 = _60.SampleLevel(_15, _1369, 0.0f);
            float _1771;
            do {
              _1388 = _603 - (_539 * dot(_603, _539));
              _1389 = dot(_1388, _1388);
              _1390 = _1389 > 9.9999997473787516355514526367188e-05f;
              float3 _1412;
              if (_1390) {
                _1412 = _1388 * rsqrt(_1389);
              } else {
                float _1396 = (_539.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1398 = (-1.0f) / (_1396 + _539.z);
                _1412 = float3(1.0f + (((_1396 * _1398) * _539.x) * _539.x), ((_1396 * _539.x) * _539.y) * _1398, (-_1396) * _539.x);
              }
              float3x3 _1416 = mul(float3x3(float3(_1373.x, 0.0f, _1373.z), float3(0.0f, 1.0f, 0.0f), float3(_1373.y, 0.0f, _1373.w)), float3x3(_1412, cross(_539, _1412), _539));
              _1417 = (_1355 - _1356) - _577;
              float3 _1418 = mul(_1416, _1417);
              _1419 = (_1355 + _1356) - _577;
              float3 _1420 = mul(_1416, _1419);
              _1421 = (_1359 + _1356) - _577;
              float3 _1422 = mul(_1416, _1421);
              _1423 = (_1359 - _1356) - _577;
              float3 _1424 = mul(_1416, _1423);
              float _1425 = _1418.z;
              float _1428 = _1420.z;
              float _1432 = _1422.z;
              float _1436 = _1424.z;
              int _1440 = (((int(_1425 > 0.0f) | ((_1428 > 0.0f) ? 2 : 0)) | ((_1432 > 0.0f) ? 4 : 0)) | ((_1436 > 0.0f) ? 8 : 0));
              float3 _1677;
              float3 _1678;
              float3 _1679;
              float3 _1680;
              float3 _1681;
              int _1682;
              if (_1440 == 0) {
                _1677 = _1424;
                _1678 = _1422;
                _1679 = _1420;
                _1680 = _1418;
                _1681 = 0.0f.xxx;
                _1682 = 0;
              } else {
                float3 _1671;
                float3 _1672;
                float3 _1673;
                float3 _1674;
                float3 _1675;
                int _1676;
                if (_1440 == 1) {
                  _1671 = _1424;
                  _1672 = (_1418 * (-_1436)) + (_1424 * _1425);
                  _1673 = (_1418 * (-_1428)) + (_1420 * _1425);
                  _1674 = _1418;
                  _1675 = 0.0f.xxx;
                  _1676 = 3;
                } else {
                  float3 _1657;
                  float3 _1658;
                  float3 _1659;
                  float3 _1660;
                  float3 _1661;
                  int _1662;
                  if (_1440 == 2) {
                    _1657 = _1424;
                    _1658 = (_1420 * (-_1432)) + (_1422 * _1428);
                    _1659 = _1420;
                    _1660 = (_1420 * (-_1425)) + (_1418 * _1428);
                    _1661 = 0.0f.xxx;
                    _1662 = 3;
                  } else {
                    float3 _1643;
                    float3 _1644;
                    float3 _1645;
                    float3 _1646;
                    float3 _1647;
                    int _1648;
                    if (_1440 == 3) {
                      _1643 = (_1418 * (-_1436)) + (_1424 * _1425);
                      _1644 = (_1420 * (-_1432)) + (_1422 * _1428);
                      _1645 = _1420;
                      _1646 = _1418;
                      _1647 = 0.0f.xxx;
                      _1648 = 4;
                    } else {
                      float3 _1629;
                      float3 _1630;
                      float3 _1631;
                      float3 _1632;
                      float3 _1633;
                      int _1634;
                      if (_1440 == 4) {
                        _1629 = _1424;
                        _1630 = _1422;
                        _1631 = (_1422 * (-_1428)) + (_1420 * _1432);
                        _1632 = (_1422 * (-_1436)) + (_1424 * _1432);
                        _1633 = 0.0f.xxx;
                        _1634 = 3;
                      } else {
                        float3 _1615;
                        float3 _1616;
                        float3 _1617;
                        float3 _1618;
                        float3 _1619;
                        int _1620;
                        if (_1440 == 5) {
                          _1615 = _1424;
                          _1616 = _1422;
                          _1617 = _1420;
                          _1618 = _1418;
                          _1619 = 0.0f.xxx;
                          _1620 = 0;
                        } else {
                          float3 _1609;
                          float3 _1610;
                          float3 _1611;
                          float3 _1612;
                          float3 _1613;
                          int _1614;
                          if (_1440 == 6) {
                            _1609 = (_1422 * (-_1436)) + (_1424 * _1432);
                            _1610 = _1422;
                            _1611 = _1420;
                            _1612 = (_1420 * (-_1425)) + (_1418 * _1428);
                            _1613 = 0.0f.xxx;
                            _1614 = 4;
                          } else {
                            float3 _1595;
                            float3 _1596;
                            float3 _1597;
                            float3 _1598;
                            float3 _1599;
                            int _1600;
                            if (_1440 == 7) {
                              float _1588 = -_1436;
                              _1595 = (_1422 * _1588) + (_1424 * _1432);
                              _1596 = _1422;
                              _1597 = _1420;
                              _1598 = _1418;
                              _1599 = (_1418 * _1588) + (_1424 * _1425);
                              _1600 = 5;
                            } else {
                              float3 _1582;
                              float3 _1583;
                              float3 _1584;
                              float3 _1585;
                              float3 _1586;
                              int _1587;
                              if (_1440 == 8) {
                                _1582 = _1424;
                                _1583 = _1424;
                                _1584 = (_1424 * (-_1432)) + (_1422 * _1436);
                                _1585 = (_1424 * (-_1425)) + (_1418 * _1436);
                                _1586 = 0.0f.xxx;
                                _1587 = 3;
                              } else {
                                float3 _1568;
                                float3 _1569;
                                float3 _1570;
                                float3 _1571;
                                float3 _1572;
                                int _1573;
                                if (_1440 == 9) {
                                  _1568 = _1424;
                                  _1569 = (_1424 * (-_1432)) + (_1422 * _1436);
                                  _1570 = (_1418 * (-_1428)) + (_1420 * _1425);
                                  _1571 = _1418;
                                  _1572 = 0.0f.xxx;
                                  _1573 = 4;
                                } else {
                                  float3 _1554;
                                  float3 _1555;
                                  float3 _1556;
                                  float3 _1557;
                                  float3 _1558;
                                  int _1559;
                                  if (_1440 == 10) {
                                    _1554 = _1424;
                                    _1555 = _1422;
                                    _1556 = _1420;
                                    _1557 = _1418;
                                    _1558 = 0.0f.xxx;
                                    _1559 = 0;
                                  } else {
                                    float3 _1548;
                                    float3 _1549;
                                    float3 _1550;
                                    float3 _1551;
                                    float3 _1552;
                                    int _1553;
                                    if (_1440 == 11) {
                                      float _1541 = -_1432;
                                      _1548 = (_1424 * _1541) + (_1422 * _1436);
                                      _1549 = (_1420 * _1541) + (_1422 * _1428);
                                      _1550 = _1420;
                                      _1551 = _1418;
                                      _1552 = _1424;
                                      _1553 = 5;
                                    } else {
                                      float3 _1535;
                                      float3 _1536;
                                      float3 _1537;
                                      float3 _1538;
                                      float3 _1539;
                                      int _1540;
                                      if (_1440 == 12) {
                                        _1535 = _1424;
                                        _1536 = _1422;
                                        _1537 = (_1422 * (-_1428)) + (_1420 * _1432);
                                        _1538 = (_1424 * (-_1425)) + (_1418 * _1436);
                                        _1539 = 0.0f.xxx;
                                        _1540 = 4;
                                      } else {
                                        bool _1493 = _1440 == 13;
                                        float3 _1520;
                                        float3 _1521;
                                        float3 _1522;
                                        float3 _1523;
                                        int _1524;
                                        if (_1493) {
                                          float _1513 = -_1428;
                                          _1520 = (_1422 * _1513) + (_1420 * _1432);
                                          _1521 = (_1418 * _1513) + (_1420 * _1425);
                                          _1522 = _1418;
                                          _1523 = _1424;
                                          _1524 = 5;
                                        } else {
                                          float3 _1510;
                                          float3 _1511;
                                          int _1512;
                                          if (_1440 == 14) {
                                            float _1503 = -_1425;
                                            _1510 = (_1420 * _1503) + (_1418 * _1428);
                                            _1511 = (_1424 * _1503) + (_1418 * _1436);
                                            _1512 = 5;
                                          } else {
                                            _1510 = _1418;
                                            _1511 = 0.0f.xxx;
                                            _1512 = (_1440 == 15) ? 4 : 0;
                                          }
                                          _1520 = _1422;
                                          _1521 = _1420;
                                          _1522 = _1510;
                                          _1523 = _1511;
                                          _1524 = _1512;
                                        }
                                        bool3 _1525 = _1493.xxx;
                                        _1535 = float3(_1525.x ? _1422.x : _1424.x, _1525.y ? _1422.y : _1424.y, _1525.z ? _1422.z : _1424.z);
                                        _1536 = _1520;
                                        _1537 = _1521;
                                        _1538 = _1522;
                                        _1539 = _1523;
                                        _1540 = _1524;
                                      }
                                      _1548 = _1535;
                                      _1549 = _1536;
                                      _1550 = _1537;
                                      _1551 = _1538;
                                      _1552 = _1539;
                                      _1553 = _1540;
                                    }
                                    _1554 = _1548;
                                    _1555 = _1549;
                                    _1556 = _1550;
                                    _1557 = _1551;
                                    _1558 = _1552;
                                    _1559 = _1553;
                                  }
                                  _1568 = _1554;
                                  _1569 = _1555;
                                  _1570 = _1556;
                                  _1571 = _1557;
                                  _1572 = _1558;
                                  _1573 = _1559;
                                }
                                _1582 = _1568;
                                _1583 = _1569;
                                _1584 = _1570;
                                _1585 = _1571;
                                _1586 = _1572;
                                _1587 = _1573;
                              }
                              _1595 = _1582;
                              _1596 = _1583;
                              _1597 = _1584;
                              _1598 = _1585;
                              _1599 = _1586;
                              _1600 = _1587;
                            }
                            _1609 = _1595;
                            _1610 = _1596;
                            _1611 = _1597;
                            _1612 = _1598;
                            _1613 = _1599;
                            _1614 = _1600;
                          }
                          _1615 = _1609;
                          _1616 = _1610;
                          _1617 = _1611;
                          _1618 = _1612;
                          _1619 = _1613;
                          _1620 = _1614;
                        }
                        _1629 = _1615;
                        _1630 = _1616;
                        _1631 = _1617;
                        _1632 = _1618;
                        _1633 = _1619;
                        _1634 = _1620;
                      }
                      _1643 = _1629;
                      _1644 = _1630;
                      _1645 = _1631;
                      _1646 = _1632;
                      _1647 = _1633;
                      _1648 = _1634;
                    }
                    _1657 = _1643;
                    _1658 = _1644;
                    _1659 = _1645;
                    _1660 = _1646;
                    _1661 = _1647;
                    _1662 = _1648;
                  }
                  _1671 = _1657;
                  _1672 = _1658;
                  _1673 = _1659;
                  _1674 = _1660;
                  _1675 = _1661;
                  _1676 = _1662;
                }
                _1677 = _1671;
                _1678 = _1672;
                _1679 = _1673;
                _1680 = _1674;
                _1681 = _1675;
                _1682 = _1676;
              }
              bool3 _1684 = (_1682 == 3).xxx;
              bool3 _1687 = (_1682 == 4).xxx;
              if (_1682 == 0) {
                _1771 = 0.0f;
                break;
              }
              float3 _1692 = normalize(_1680);
              float3 _1693 = normalize(_1679);
              float3 _1694 = normalize(_1678);
              float3 _1695 = normalize(float3(_1684.x ? _1680.x : _1677.x, _1684.y ? _1680.y : _1677.y, _1684.z ? _1680.z : _1677.z));
              float3 _1696 = normalize(float3(_1687.x ? _1680.x : _1681.x, _1687.y ? _1680.y : _1681.y, _1687.z ? _1680.z : _1681.z));
              float _1698 = clamp(dot(_1692, _1693), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1702 = sqrt(1.0f - (_1698 * _1698));
              float _1710 = clamp(dot(_1693, _1694), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1714 = sqrt(1.0f - (_1710 * _1710));
              float _1723 = clamp(dot(_1694, _1695), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _1727 = sqrt(1.0f - (_1723 * _1723));
              float _1734 = ((cross(_1692, _1693).z * ((_1702 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1698) / _1702))) + (cross(_1693, _1694).z * ((_1714 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1710) / _1714)))) + (cross(_1694, _1695).z * ((_1727 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1723) / _1727)));
              float _1751;
              if (_1682 >= 4) {
                float _1739 = clamp(dot(_1695, _1696), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1743 = sqrt(1.0f - (_1739 * _1739));
                _1751 = _1734 + (cross(_1695, _1696).z * ((_1743 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1739) / _1743)));
              } else {
                _1751 = _1734;
              }
              float _1768;
              if (_1682 == 5) {
                float _1756 = clamp(dot(_1696, _1692), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _1760 = sqrt(1.0f - (_1756 * _1756));
                _1768 = _1751 + (cross(_1696, _1692).z * ((_1760 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_1756) / _1760)));
              } else {
                _1768 = _1751;
              }
              _1771 = max(_1768, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            float _2157;
            do {
              float3 _1803;
              if (_1390) {
                _1803 = _1388 * rsqrt(_1389);
              } else {
                float _1787 = (_539.z >= 0.0f) ? 1.0f : (-1.0f);
                float _1789 = (-1.0f) / (_1787 + _539.z);
                _1803 = float3(1.0f + (((_1787 * _1789) * _539.x) * _539.x), ((_1787 * _539.x) * _539.y) * _1789, (-_1787) * _539.x);
              }
              float3x3 _1806 = mul(float3x3(float3(1.0f, 0.0f, 0.0f), float3(0.0f, 1.0f, 0.0f), float3(0.0f, 0.0f, 1.0f)), float3x3(_1803, cross(_539, _1803), _539));
              float3 _1807 = mul(_1806, _1417);
              float3 _1808 = mul(_1806, _1419);
              float3 _1809 = mul(_1806, _1421);
              float3 _1810 = mul(_1806, _1423);
              float _1811 = _1807.z;
              float _1814 = _1808.z;
              float _1818 = _1809.z;
              float _1822 = _1810.z;
              int _1826 = (((int(_1811 > 0.0f) | ((_1814 > 0.0f) ? 2 : 0)) | ((_1818 > 0.0f) ? 4 : 0)) | ((_1822 > 0.0f) ? 8 : 0));
              float3 _2063;
              float3 _2064;
              float3 _2065;
              float3 _2066;
              float3 _2067;
              int _2068;
              if (_1826 == 0) {
                _2063 = _1810;
                _2064 = _1809;
                _2065 = _1808;
                _2066 = _1807;
                _2067 = 0.0f.xxx;
                _2068 = 0;
              } else {
                float3 _2057;
                float3 _2058;
                float3 _2059;
                float3 _2060;
                float3 _2061;
                int _2062;
                if (_1826 == 1) {
                  _2057 = _1810;
                  _2058 = (_1807 * (-_1822)) + (_1810 * _1811);
                  _2059 = (_1807 * (-_1814)) + (_1808 * _1811);
                  _2060 = _1807;
                  _2061 = 0.0f.xxx;
                  _2062 = 3;
                } else {
                  float3 _2043;
                  float3 _2044;
                  float3 _2045;
                  float3 _2046;
                  float3 _2047;
                  int _2048;
                  if (_1826 == 2) {
                    _2043 = _1810;
                    _2044 = (_1808 * (-_1818)) + (_1809 * _1814);
                    _2045 = _1808;
                    _2046 = (_1808 * (-_1811)) + (_1807 * _1814);
                    _2047 = 0.0f.xxx;
                    _2048 = 3;
                  } else {
                    float3 _2029;
                    float3 _2030;
                    float3 _2031;
                    float3 _2032;
                    float3 _2033;
                    int _2034;
                    if (_1826 == 3) {
                      _2029 = (_1807 * (-_1822)) + (_1810 * _1811);
                      _2030 = (_1808 * (-_1818)) + (_1809 * _1814);
                      _2031 = _1808;
                      _2032 = _1807;
                      _2033 = 0.0f.xxx;
                      _2034 = 4;
                    } else {
                      float3 _2015;
                      float3 _2016;
                      float3 _2017;
                      float3 _2018;
                      float3 _2019;
                      int _2020;
                      if (_1826 == 4) {
                        _2015 = _1810;
                        _2016 = _1809;
                        _2017 = (_1809 * (-_1814)) + (_1808 * _1818);
                        _2018 = (_1809 * (-_1822)) + (_1810 * _1818);
                        _2019 = 0.0f.xxx;
                        _2020 = 3;
                      } else {
                        float3 _2001;
                        float3 _2002;
                        float3 _2003;
                        float3 _2004;
                        float3 _2005;
                        int _2006;
                        if (_1826 == 5) {
                          _2001 = _1810;
                          _2002 = _1809;
                          _2003 = _1808;
                          _2004 = _1807;
                          _2005 = 0.0f.xxx;
                          _2006 = 0;
                        } else {
                          float3 _1995;
                          float3 _1996;
                          float3 _1997;
                          float3 _1998;
                          float3 _1999;
                          int _2000;
                          if (_1826 == 6) {
                            _1995 = (_1809 * (-_1822)) + (_1810 * _1818);
                            _1996 = _1809;
                            _1997 = _1808;
                            _1998 = (_1808 * (-_1811)) + (_1807 * _1814);
                            _1999 = 0.0f.xxx;
                            _2000 = 4;
                          } else {
                            float3 _1981;
                            float3 _1982;
                            float3 _1983;
                            float3 _1984;
                            float3 _1985;
                            int _1986;
                            if (_1826 == 7) {
                              float _1974 = -_1822;
                              _1981 = (_1809 * _1974) + (_1810 * _1818);
                              _1982 = _1809;
                              _1983 = _1808;
                              _1984 = _1807;
                              _1985 = (_1807 * _1974) + (_1810 * _1811);
                              _1986 = 5;
                            } else {
                              float3 _1968;
                              float3 _1969;
                              float3 _1970;
                              float3 _1971;
                              float3 _1972;
                              int _1973;
                              if (_1826 == 8) {
                                _1968 = _1810;
                                _1969 = _1810;
                                _1970 = (_1810 * (-_1818)) + (_1809 * _1822);
                                _1971 = (_1810 * (-_1811)) + (_1807 * _1822);
                                _1972 = 0.0f.xxx;
                                _1973 = 3;
                              } else {
                                float3 _1954;
                                float3 _1955;
                                float3 _1956;
                                float3 _1957;
                                float3 _1958;
                                int _1959;
                                if (_1826 == 9) {
                                  _1954 = _1810;
                                  _1955 = (_1810 * (-_1818)) + (_1809 * _1822);
                                  _1956 = (_1807 * (-_1814)) + (_1808 * _1811);
                                  _1957 = _1807;
                                  _1958 = 0.0f.xxx;
                                  _1959 = 4;
                                } else {
                                  float3 _1940;
                                  float3 _1941;
                                  float3 _1942;
                                  float3 _1943;
                                  float3 _1944;
                                  int _1945;
                                  if (_1826 == 10) {
                                    _1940 = _1810;
                                    _1941 = _1809;
                                    _1942 = _1808;
                                    _1943 = _1807;
                                    _1944 = 0.0f.xxx;
                                    _1945 = 0;
                                  } else {
                                    float3 _1934;
                                    float3 _1935;
                                    float3 _1936;
                                    float3 _1937;
                                    float3 _1938;
                                    int _1939;
                                    if (_1826 == 11) {
                                      float _1927 = -_1818;
                                      _1934 = (_1810 * _1927) + (_1809 * _1822);
                                      _1935 = (_1808 * _1927) + (_1809 * _1814);
                                      _1936 = _1808;
                                      _1937 = _1807;
                                      _1938 = _1810;
                                      _1939 = 5;
                                    } else {
                                      float3 _1921;
                                      float3 _1922;
                                      float3 _1923;
                                      float3 _1924;
                                      float3 _1925;
                                      int _1926;
                                      if (_1826 == 12) {
                                        _1921 = _1810;
                                        _1922 = _1809;
                                        _1923 = (_1809 * (-_1814)) + (_1808 * _1818);
                                        _1924 = (_1810 * (-_1811)) + (_1807 * _1822);
                                        _1925 = 0.0f.xxx;
                                        _1926 = 4;
                                      } else {
                                        bool _1879 = _1826 == 13;
                                        float3 _1906;
                                        float3 _1907;
                                        float3 _1908;
                                        float3 _1909;
                                        int _1910;
                                        if (_1879) {
                                          float _1899 = -_1814;
                                          _1906 = (_1809 * _1899) + (_1808 * _1818);
                                          _1907 = (_1807 * _1899) + (_1808 * _1811);
                                          _1908 = _1807;
                                          _1909 = _1810;
                                          _1910 = 5;
                                        } else {
                                          float3 _1896;
                                          float3 _1897;
                                          int _1898;
                                          if (_1826 == 14) {
                                            float _1889 = -_1811;
                                            _1896 = (_1808 * _1889) + (_1807 * _1814);
                                            _1897 = (_1810 * _1889) + (_1807 * _1822);
                                            _1898 = 5;
                                          } else {
                                            _1896 = _1807;
                                            _1897 = 0.0f.xxx;
                                            _1898 = (_1826 == 15) ? 4 : 0;
                                          }
                                          _1906 = _1809;
                                          _1907 = _1808;
                                          _1908 = _1896;
                                          _1909 = _1897;
                                          _1910 = _1898;
                                        }
                                        bool3 _1911 = _1879.xxx;
                                        _1921 = float3(_1911.x ? _1809.x : _1810.x, _1911.y ? _1809.y : _1810.y, _1911.z ? _1809.z : _1810.z);
                                        _1922 = _1906;
                                        _1923 = _1907;
                                        _1924 = _1908;
                                        _1925 = _1909;
                                        _1926 = _1910;
                                      }
                                      _1934 = _1921;
                                      _1935 = _1922;
                                      _1936 = _1923;
                                      _1937 = _1924;
                                      _1938 = _1925;
                                      _1939 = _1926;
                                    }
                                    _1940 = _1934;
                                    _1941 = _1935;
                                    _1942 = _1936;
                                    _1943 = _1937;
                                    _1944 = _1938;
                                    _1945 = _1939;
                                  }
                                  _1954 = _1940;
                                  _1955 = _1941;
                                  _1956 = _1942;
                                  _1957 = _1943;
                                  _1958 = _1944;
                                  _1959 = _1945;
                                }
                                _1968 = _1954;
                                _1969 = _1955;
                                _1970 = _1956;
                                _1971 = _1957;
                                _1972 = _1958;
                                _1973 = _1959;
                              }
                              _1981 = _1968;
                              _1982 = _1969;
                              _1983 = _1970;
                              _1984 = _1971;
                              _1985 = _1972;
                              _1986 = _1973;
                            }
                            _1995 = _1981;
                            _1996 = _1982;
                            _1997 = _1983;
                            _1998 = _1984;
                            _1999 = _1985;
                            _2000 = _1986;
                          }
                          _2001 = _1995;
                          _2002 = _1996;
                          _2003 = _1997;
                          _2004 = _1998;
                          _2005 = _1999;
                          _2006 = _2000;
                        }
                        _2015 = _2001;
                        _2016 = _2002;
                        _2017 = _2003;
                        _2018 = _2004;
                        _2019 = _2005;
                        _2020 = _2006;
                      }
                      _2029 = _2015;
                      _2030 = _2016;
                      _2031 = _2017;
                      _2032 = _2018;
                      _2033 = _2019;
                      _2034 = _2020;
                    }
                    _2043 = _2029;
                    _2044 = _2030;
                    _2045 = _2031;
                    _2046 = _2032;
                    _2047 = _2033;
                    _2048 = _2034;
                  }
                  _2057 = _2043;
                  _2058 = _2044;
                  _2059 = _2045;
                  _2060 = _2046;
                  _2061 = _2047;
                  _2062 = _2048;
                }
                _2063 = _2057;
                _2064 = _2058;
                _2065 = _2059;
                _2066 = _2060;
                _2067 = _2061;
                _2068 = _2062;
              }
              bool3 _2070 = (_2068 == 3).xxx;
              bool3 _2073 = (_2068 == 4).xxx;
              if (_2068 == 0) {
                _2157 = 0.0f;
                break;
              }
              float3 _2078 = normalize(_2066);
              float3 _2079 = normalize(_2065);
              float3 _2080 = normalize(_2064);
              float3 _2081 = normalize(float3(_2070.x ? _2066.x : _2063.x, _2070.y ? _2066.y : _2063.y, _2070.z ? _2066.z : _2063.z));
              float3 _2082 = normalize(float3(_2073.x ? _2066.x : _2067.x, _2073.y ? _2066.y : _2067.y, _2073.z ? _2066.z : _2067.z));
              float _2084 = clamp(dot(_2078, _2079), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2088 = sqrt(1.0f - (_2084 * _2084));
              float _2096 = clamp(dot(_2079, _2080), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2100 = sqrt(1.0f - (_2096 * _2096));
              float _2109 = clamp(dot(_2080, _2081), -0.99989998340606689453125f, 0.99989998340606689453125f);
              float _2113 = sqrt(1.0f - (_2109 * _2109));
              float _2120 = ((cross(_2078, _2079).z * ((_2088 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2084) / _2088))) + (cross(_2079, _2080).z * ((_2100 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2096) / _2100)))) + (cross(_2080, _2081).z * ((_2113 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2109) / _2113)));
              float _2137;
              if (_2068 >= 4) {
                float _2125 = clamp(dot(_2081, _2082), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2129 = sqrt(1.0f - (_2125 * _2125));
                _2137 = _2120 + (cross(_2081, _2082).z * ((_2129 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2125) / _2129)));
              } else {
                _2137 = _2120;
              }
              float _2154;
              if (_2068 == 5) {
                float _2142 = clamp(dot(_2082, _2078), -0.99989998340606689453125f, 0.99989998340606689453125f);
                float _2146 = sqrt(1.0f - (_2142 * _2142));
                _2154 = _2137 + (cross(_2082, _2078).z * ((_2146 < 9.9999997473787516355514526367188e-05f) ? 1.0f : (acos(_2142) / _2146)));
              } else {
                _2154 = _2137;
              }
              _2157 = max(_2154, 0.0f) * 0.15915493667125701904296875f;
              break;
            } while (false);
            bool _2160 = (_1238 & 2u) != 0u;
            uint _2164 = asuint(_32_m6[_1225].w);
            uint _2165 = asuint(_32_m6[_1231].w);
            float3 _2166 = _577 - _32_m6[_1216].xyz;
            float3 _2167 = abs(_2166);
            float _2168 = _2167.x;
            float _2169 = _2167.y;
            float _2171 = _2167.z;
            int _2204;
            if ((_2168 > _2169) && (_2168 > _2171)) {
              _2204 = int((_2166.x > 0.0f) ? (_2164 & 1023u) : ((_2164 >> 10u) & 1023u));
            } else {
              int _2196;
              if (_2169 > _2171) {
                _2196 = int((_2166.y > 0.0f) ? ((_2164 >> 20u) & 1023u) : (_2165 & 1023u));
              } else {
                _2196 = int((_2166.z > 0.0f) ? ((_2165 >> 10u) & 1023u) : ((_2165 >> 20u) & 1023u));
              }
              _2204 = _2196;
            }
            int _2207 = _2160 ? int(_32_m6[_1225].w) : ((_2204 == 1023) ? (-1) : _2204);
            uint _2216 = uint(_2207);
            uint _2218 = asuint(_36_m11.x) + (_2216 * 96u);
            uint _2220 = (_2218 + 64u) >> 2u;
            uint _2223 = _2220 + 1u;
            uint _2226 = _2220 + 2u;
            uint _2229 = _2220 + 3u;
            float4 _2233 = asfloat(uint4(_39.Load(_2220 * 4 + 0), _39.Load(_2223 * 4 + 0), _39.Load(_2226 * 4 + 0), _39.Load(_2229 * 4 + 0)));
            float _2565;
            do {
              uint _2249 = ((asuint(_36_m11.y) + (_2216 * 16u)) >> 2u) + 1u;
              if (_39.Load(_2249 * 4 + 0) > 0u) {
                float4 _412 = _1167;
                float _2264;
                do {
                  if (_39.Load(_2249 * 4 + 0) == 0u) {
                    _2264 = 1.0f;
                    break;
                  }
                  _2264 = _412[_39.Load(_2249 * 4 + 0) - 1u];
                  break;
                } while (false);
                _2565 = _2264;
                break;
              }
              uint _2265 = _2218 >> 2u;
              uint _2280 = (_2218 + 16u) >> 2u;
              uint _2295 = (_2218 + 32u) >> 2u;
              uint _2310 = (_2218 + 48u) >> 2u;
              float4 _2330 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_2265 * 4 + 0), _39.Load((_2265 + 1u) * 4 + 0), _39.Load((_2265 + 2u) * 4 + 0), _39.Load((_2265 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2280 * 4 + 0), _39.Load((_2280 + 1u) * 4 + 0), _39.Load((_2280 + 2u) * 4 + 0), _39.Load((_2280 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2295 * 4 + 0), _39.Load((_2295 + 1u) * 4 + 0), _39.Load((_2295 + 2u) * 4 + 0), _39.Load((_2295 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2310 * 4 + 0), _39.Load((_2310 + 1u) * 4 + 0), _39.Load((_2310 + 2u) * 4 + 0), _39.Load((_2310 + 3u) * 4 + 0))))), float4((_577 - ((_2166 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2166, _2166)))) * _2233.x)) + (_539 * (_2233.y * 5.0f)), 1.0f));
              float3 _2334 = _2330.xyz / _2330.w.xxx;
              uint _2336 = (_2218 + 80u) >> 2u;
              float4 _2349 = asfloat(uint4(_39.Load(_2336 * 4 + 0), _39.Load((_2336 + 1u) * 4 + 0), _39.Load((_2336 + 2u) * 4 + 0), _39.Load((_2336 + 3u) * 4 + 0)));
              float2 _2350 = _2334.xy;
              float2 _2352 = _2349.xy;
              float3 _2356 = _2334.xyz;
              bool3 _2357 = bool3(_2356.x <= 0.0f.xxx.x, _2356.y <= 0.0f.xxx.y, _2356.z <= 0.0f.xxx.z);
              bool3 _2358 = bool3(_2356.x >= 1.0f.xxx.x, _2356.y >= 1.0f.xxx.y, _2356.z >= 1.0f.xxx.z);
              float _2361 = _2334.z;
              float2 _2372 = ((_2350 * (_2349.zw - _2352)) + _2352).xy * _36_m10.zw;
              float2 _2374 = floor(_2372 + 0.5f.xx);
              float2 _2375 = _2372 - _2374;
              float _2376 = _2375.x;
              float _2377 = _2376 + 0.5f;
              float _2378 = _2377 * _2377;
              float _2381 = 1.0f - _2376;
              float _2382 = min(_2376, 0.0f);
              float _2385 = _2376 + 1.0f;
              float _2386 = max(_2376, 0.0f);
              float _2397 = _2375.y;
              float _2398 = _2397 + 0.5f;
              float _2399 = _2398 * _2398;
              float _2402 = 1.0f - _2397;
              float _2403 = min(_2397, 0.0f);
              float _2406 = _2397 + 1.0f;
              float _2407 = max(_2397, 0.0f);
              float3 _2419 = float3(0.1599999964237213134765625f * _2381, 0.1599999964237213134765625f * ((_2385 - (_2386 * _2386)) + 1.0f), _2378 * 0.07999999821186065673828125f);
              float3 _2420 = float3(0.1599999964237213134765625f * ((_2378 * 0.5f) - _2376), 0.1599999964237213134765625f * ((_2381 - (_2382 * _2382)) + 1.0f), 0.1599999964237213134765625f * _2385) + _2419;
              float3 _2422 = float3(0.1599999964237213134765625f * _2402, 0.1599999964237213134765625f * ((_2406 - (_2407 * _2407)) + 1.0f), _2399 * 0.07999999821186065673828125f);
              float3 _2423 = float3(0.1599999964237213134765625f * ((_2399 * 0.5f) - _2397), 0.1599999964237213134765625f * ((_2402 - (_2403 * _2403)) + 1.0f), 0.1599999964237213134765625f * _2406) + _2422;
              float3 _2429 = ((_2419 / _2420) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
              float3 _2431 = ((_2422 / _2423) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
              float2 _2433 = _2374 * _36_m10.xy;
              float _2434 = _2429.x;
              float _2435 = _2431.x;
              float _2438 = _2429.y;
              float _2441 = _2429.z;
              float _2444 = _2431.y;
              float _2451 = _2431.z;
              float _2458 = _2420.x;
              float _2459 = _2423.x;
              float _2461 = _2420.y;
              float _2463 = _2420.z;
              float _2465 = _2423.y;
              float _2469 = _2423.z;
              float _2527 = (((((((_2458 * _2459) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2434, _2435), _399).xy, _2361)) + ((_2461 * _2459) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2438, _2435), _399).xy, _2361))) + ((_2463 * _2459) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2441, _2435), _399).xy, _2361))) + ((_2458 * _2465) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2434, _2444), _399).xy, _2361))) + ((_2461 * _2465) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2438, _2444), _399).xy, _2361))) + ((_2463 * _2465) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2441, _2444), _399).xy, _2361))) + ((_2458 * _2469) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2434, _2451), _399).xy, _2361));
              float4 _2550 = asfloat(uint4(_39.Load(_2220 * 4 + 0), _39.Load(_2223 * 4 + 0), _39.Load(_2226 * 4 + 0), _39.Load(_2229 * 4 + 0)));
              float _2551 = _2550.w;
              float2 _2553 = min(_2350, 1.0f.xx - _2350);
              _2565 = lerp(1.0f, (any(bool3(_2357.x || _2358.x, _2357.y || _2358.y, _2357.z || _2358.z)) || ((asuint(_2361) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2527 + ((_2461 * _2469) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2438, _2451), _399).xy, _2361))) + ((_2463 * _2469) * _37.SampleCmpLevelZero(_18, float3(_2433 + float2(_2441, _2451), _399).xy, _2361))), _2160 ? min(_2551, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_2550.z - _2330.w) * 0.25f, min(_2553.x, _2553.y)))) : _2551);
              break;
            } while (false);
            _2571 = ((_32_m6[_1213].xyz * (((((0.039999999105930328369140625f.xxx * _1377.x) + (0.959999978542327880859375f.xxx * _1377.y)) * _1771) * _32_m6[_1234].z) + (_792 * _2157))) * _1350) * ((_2207 >= 0) ? _2565 : 1.0f);
            break;
          } while (false);
          _4080 = _1173;
          _4081 = _2571 * _1313;
          break;
        }
        float _4078;
        float3 _4079;
        if (_32_m6[_1213].w < 1.5f) {
          float3 _3176 = float3(0.100000001490116119384765625f, _790, 1.0f);
          float _3185 = (0.5f + (0.5f * _32_m6[_1219].y)) - abs(_32_m6[_1219].x);
          float _3186 = _32_m6[_1219].y - _3185;
          float _3193 = abs(max((1.0f - abs(_3185)) - abs(_3186), 0.00048828125f));
          float3 _3197 = normalize(float3(_3185, _3186, (_32_m6[_1219].x >= 0.0f) ? _3193 : (-_3193)));
          float3 _3198 = _32_m6[_1216].xyz - _577;
          float _3199 = dot(_3198, _3198);
          float _3200 = rsqrt(_3199);
          float3 _3201 = _3198 * _3200;
          float _3205 = clamp(_32_m6[_1234].y * _3200, 0.0f, 1.0f);
          int _3210 = int(_32_m6[_1234].w);
          float3 _3211 = _3197 * _32_m6[_1219].z;
          float3 _3212 = _3211 * 0.5f;
          float3 _3213 = _3198 - _3212;
          float3 _3214 = _3198 + _3212;
          bool _3216 = (_1317 & 1u) == 0u;
          bool _3219 = _3216 || ((_1238 & 2u) != 0u);
          bool _3222 = (!_3216) && (_32_m6[_1219].z > 0.0f);
          float _3241;
          float _3242;
          if (_3222) {
            float _3226 = length(_3213);
            float _3227 = length(_3214);
            _3241 = clamp(0.5f * ((dot(_539, _3213) / _3226) + (dot(_539, _3214) / _3227)), 0.0f, 1.0f);
            _3242 = 1.0f / ((((_3226 * _3227) + dot(_3213, _3214)) * 0.5f) + 1.0f);
          } else {
            _3241 = clamp(dot(_539, _3201), 0.0f, 1.0f);
            _3242 = 1.0f;
          }
          float _3264;
          if (_32_m6[_1231].w < 0.0f) {
            float _3258 = _3199 * (_32_m6[_1216].w * _32_m6[_1216].w);
            float _3261 = clamp(1.0f - (_3258 * _3258), 0.0f, 1.0f);
            _3264 = lerp(1.0f / (_3199 + 1.0f), _3242, float(_3222)) * (_3261 * _3261);
          } else {
            float3 _3247 = _3198 * _32_m6[_1216].w;
            _3264 = _3242 * pow(1.0f - clamp(dot(_3247, _3247), 0.0f, 1.0f), _32_m6[_1231].w);
          }
          float _3270 = clamp((dot(_3201, -_3197) - _32_m6[_1219].z) * _32_m6[_1219].w, 0.0f, 1.0f);
          float _3274 = _3264 * lerp(1.0f, _3270 * _3270, float(_3216));
          float _3374;
          if ((!_3222) && (_3210 >= 0)) {
            uint _3280 = uint(_3210);
            float2 _3367;
            [branch] if (_3216) {
              float4 _3357 = mul(_56_m1[_3280], _581);
              _3367 = _56_m0[_3280].xy + (clamp(_3357.xy / _3357.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_3280].zw);
            }
            else {
              float3 _3294 = mul(float4(-_3198, 0.0f), _56_m1[_3280]).xyz;
              float3 _407 = _3294;
              float3 _406 = _3294;
              float3 _405 = abs(_3294);
              uint _3303 = uint(int(_405.y > _405.x));
              uint _3309 = (_405.z > _405[_3303]) ? 2u : _3303;
              uint _3315 = (_3309 * 2u) + uint(_406[_3309] < 0.0f);
              float _3319 = abs(_407[_3315 / 2u]);
              float _3339 = 0.5f - (0.000244140625f / _56_m0[_3280].w);
              _3367 = _56_m0[_3280].xy + (clamp(float2((float(_3315) + ((((_407[uint(_367[_3315].x)] * _368[_3315].x) / _3319) * _3339) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_407[uint(_367[_3315].y)] * _368[_3315].y) / _3319) * _3339)), 0.0f.xx, 1.0f.xx) * _56_m0[_3280].zw);
            }
            _3374 = _3274 * _54.SampleLevel(_15, _3367, 0.0f).x;
          } else {
            _3374 = _3274;
          }
          bool _3375 = _3374 > 0.0f;
          float _3784;
          if (_3375) {
            int _3428;
            if (_3219) {
              _3428 = int(_32_m6[_1222].x);
            } else {
              uint _3383 = asuint(_32_m6[_1219].w);
              uint _3384 = asuint(_32_m6[_1222].x);
              float3 _3385 = _577 - _32_m6[_1216].xyz;
              float3 _3386 = abs(_3385);
              float _3387 = _3386.x;
              float _3388 = _3386.y;
              float _3390 = _3386.z;
              int _3423;
              if ((_3387 > _3388) && (_3387 > _3390)) {
                _3423 = int((_3385.x > 0.0f) ? (_3383 & 1023u) : ((_3383 >> 10u) & 1023u));
              } else {
                int _3415;
                if (_3388 > _3390) {
                  _3415 = int((_3385.y > 0.0f) ? ((_3383 >> 20u) & 1023u) : (_3384 & 1023u));
                } else {
                  _3415 = int((_3385.z > 0.0f) ? ((_3384 >> 10u) & 1023u) : ((_3384 >> 20u) & 1023u));
                }
                _3423 = _3415;
              }
              _3428 = (_3423 == 1023) ? (-1) : _3423;
            }
            uint _3433 = uint(_3428);
            uint _3435 = asuint(_36_m11.x) + (_3433 * 96u);
            uint _3437 = (_3435 + 64u) >> 2u;
            uint _3440 = _3437 + 1u;
            uint _3443 = _3437 + 2u;
            uint _3446 = _3437 + 3u;
            float4 _3450 = asfloat(uint4(_39.Load(_3437 * 4 + 0), _39.Load(_3440 * 4 + 0), _39.Load(_3443 * 4 + 0), _39.Load(_3446 * 4 + 0)));
            float _3782;
            do {
              uint _3466 = ((asuint(_36_m11.y) + (_3433 * 16u)) >> 2u) + 1u;
              if (_39.Load(_3466 * 4 + 0) > 0u) {
                float4 _404 = _1167;
                float _3481;
                do {
                  if (_39.Load(_3466 * 4 + 0) == 0u) {
                    _3481 = 1.0f;
                    break;
                  }
                  _3481 = _404[_39.Load(_3466 * 4 + 0) - 1u];
                  break;
                } while (false);
                _3782 = _3481;
                break;
              }
              uint _3482 = _3435 >> 2u;
              uint _3497 = (_3435 + 16u) >> 2u;
              uint _3512 = (_3435 + 32u) >> 2u;
              uint _3527 = (_3435 + 48u) >> 2u;
              float4 _3547 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_3482 * 4 + 0), _39.Load((_3482 + 1u) * 4 + 0), _39.Load((_3482 + 2u) * 4 + 0), _39.Load((_3482 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_3497 * 4 + 0), _39.Load((_3497 + 1u) * 4 + 0), _39.Load((_3497 + 2u) * 4 + 0), _39.Load((_3497 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_3512 * 4 + 0), _39.Load((_3512 + 1u) * 4 + 0), _39.Load((_3512 + 2u) * 4 + 0), _39.Load((_3512 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_3527 * 4 + 0), _39.Load((_3527 + 1u) * 4 + 0), _39.Load((_3527 + 2u) * 4 + 0), _39.Load((_3527 + 3u) * 4 + 0))))), float4((_577 - ((-_3201) * _3450.x)) + (_539 * (_3450.y * 5.0f)), 1.0f));
              float3 _3551 = _3547.xyz / _3547.w.xxx;
              uint _3553 = (_3435 + 80u) >> 2u;
              float4 _3566 = asfloat(uint4(_39.Load(_3553 * 4 + 0), _39.Load((_3553 + 1u) * 4 + 0), _39.Load((_3553 + 2u) * 4 + 0), _39.Load((_3553 + 3u) * 4 + 0)));
              float2 _3567 = _3551.xy;
              float2 _3569 = _3566.xy;
              float3 _3573 = _3551.xyz;
              bool3 _3574 = bool3(_3573.x <= 0.0f.xxx.x, _3573.y <= 0.0f.xxx.y, _3573.z <= 0.0f.xxx.z);
              bool3 _3575 = bool3(_3573.x >= 1.0f.xxx.x, _3573.y >= 1.0f.xxx.y, _3573.z >= 1.0f.xxx.z);
              float _3578 = _3551.z;
              float2 _3589 = ((_3567 * (_3566.zw - _3569)) + _3569).xy * _36_m10.zw;
              float2 _3591 = floor(_3589 + 0.5f.xx);
              float2 _3592 = _3589 - _3591;
              float _3593 = _3592.x;
              float _3594 = _3593 + 0.5f;
              float _3595 = _3594 * _3594;
              float _3598 = 1.0f - _3593;
              float _3599 = min(_3593, 0.0f);
              float _3602 = _3593 + 1.0f;
              float _3603 = max(_3593, 0.0f);
              float _3614 = _3592.y;
              float _3615 = _3614 + 0.5f;
              float _3616 = _3615 * _3615;
              float _3619 = 1.0f - _3614;
              float _3620 = min(_3614, 0.0f);
              float _3623 = _3614 + 1.0f;
              float _3624 = max(_3614, 0.0f);
              float3 _3636 = float3(0.1599999964237213134765625f * _3598, 0.1599999964237213134765625f * ((_3602 - (_3603 * _3603)) + 1.0f), _3595 * 0.07999999821186065673828125f);
              float3 _3637 = float3(0.1599999964237213134765625f * ((_3595 * 0.5f) - _3593), 0.1599999964237213134765625f * ((_3598 - (_3599 * _3599)) + 1.0f), 0.1599999964237213134765625f * _3602) + _3636;
              float3 _3639 = float3(0.1599999964237213134765625f * _3619, 0.1599999964237213134765625f * ((_3623 - (_3624 * _3624)) + 1.0f), _3616 * 0.07999999821186065673828125f);
              float3 _3640 = float3(0.1599999964237213134765625f * ((_3616 * 0.5f) - _3614), 0.1599999964237213134765625f * ((_3619 - (_3620 * _3620)) + 1.0f), 0.1599999964237213134765625f * _3623) + _3639;
              float3 _3646 = ((_3636 / _3637) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
              float3 _3648 = ((_3639 / _3640) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
              float2 _3650 = _3591 * _36_m10.xy;
              float _3651 = _3646.x;
              float _3652 = _3648.x;
              float _3655 = _3646.y;
              float _3658 = _3646.z;
              float _3661 = _3648.y;
              float _3668 = _3648.z;
              float _3675 = _3637.x;
              float _3676 = _3640.x;
              float _3678 = _3637.y;
              float _3680 = _3637.z;
              float _3682 = _3640.y;
              float _3686 = _3640.z;
              float _3744 = (((((((_3675 * _3676) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3651, _3652), _399).xy, _3578)) + ((_3678 * _3676) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3655, _3652), _399).xy, _3578))) + ((_3680 * _3676) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3658, _3652), _399).xy, _3578))) + ((_3675 * _3682) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3651, _3661), _399).xy, _3578))) + ((_3678 * _3682) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3655, _3661), _399).xy, _3578))) + ((_3680 * _3682) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3658, _3661), _399).xy, _3578))) + ((_3675 * _3686) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3651, _3668), _399).xy, _3578));
              float4 _3767 = asfloat(uint4(_39.Load(_3437 * 4 + 0), _39.Load(_3440 * 4 + 0), _39.Load(_3443 * 4 + 0), _39.Load(_3446 * 4 + 0)));
              float _3768 = _3767.w;
              float2 _3770 = min(_3567, 1.0f.xx - _3567);
              _3782 = lerp(1.0f, (any(bool3(_3574.x || _3575.x, _3574.y || _3575.y, _3574.z || _3575.z)) || ((asuint(_3578) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3744 + ((_3678 * _3686) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3655, _3668), _399).xy, _3578))) + ((_3680 * _3686) * _37.SampleCmpLevelZero(_18, float3(_3650 + float2(_3658, _3668), _399).xy, _3578))), _3219 ? min(_3768, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3767.z - _3547.w) * 0.25f, min(_3770.x, _3770.y)))) : _3768);
              break;
            } while (false);
            _3784 = (_3428 >= 0) ? _3782 : 1.0f;
          } else {
            _3784 = 1.0f;
          }
          float3 _3808;
          float3 _3809;
          if (_3222) {
            float3 _3787 = _3176 * _3176;
            float3 _3788 = reflect(_605, _539);
            float _3797 = dot(_3788, _3211);
            _3808 = _3787 / clamp(_3787 + (0.5f * clamp(_32_m6[_1219].z * _3200, 0.0f, 1.0f)).xxx, 0.0f.xxx, 1.0f.xxx);
            _3809 = normalize(_3213 + (_3211 * clamp(dot(_3213, (_3788 * _3797) - _3211) / ((_32_m6[_1219].z * _32_m6[_1219].z) - (_3797 * _3797)), 0.0f, 1.0f)));
          } else {
            _3808 = 1.0f.xxx;
            _3809 = _3201;
          }
          float3 _3810 = _3809 + _603;
          float3 _3814 = _3810 * rsqrt(max(6.103515625e-05f, dot(_3810, _3810)));
          float3 _4077;
          if (_3375) {
            float _3818 = clamp(_3241, 0.0f, 1.0f);
            float _3820 = clamp(dot(_539, _3814), 0.0f, 1.0f);
            float _3822 = clamp(dot(_603, _3814), 0.0f, 1.0f);
            float _3824 = clamp(_793, 0.0f, 1.0f);
            float3 _4022;
            float3 _4023;
            [branch] if (_549) {
              float _3940 = _790 * _790;
              float _3950;
              if (_3205 > 0.0f) {
                _3950 = clamp(_3940 + ((_3205 * _3205) / ((_3822 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3950 = _3940;
              }
              float _3951 = _3950 * _3950;
              float _3972 = (((_3820 * _3951) - _3820) * _3820) + 1.0f;
              float _3977 = 1.0f - _3822;
              float _3978 = _3977 * _3977;
              float _3980 = (_3977 * _3978) * _3978;
              float _4004 = 1.0f - _790;
              float _4011 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_4004 * (1.04997003078460693359375f + (_4004 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _4004))))));
              float _4012 = 1.0f - _4011;
              _4022 = 0.0f.xxx;
              _4023 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3980)) + _3980.xxx) * (((_3951 / (_3972 * _3972)) * _3808.y) * (0.5f / (((_3818 * sqrt(((((-_3824) * _3951) + _3824) * _3824) + _3951)) + (_3824 * sqrt(((((-_3818) * _3951) + _3818) * _3818) + _3951))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_3824, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_3818, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _4011) / _4012)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _4012)));
            }
            else {
              float _3828 = _790 * _790;
              float _3838;
              if (_3205 > 0.0f) {
                _3838 = clamp(_3828 + ((_3205 * _3205) / ((_3822 * 3.599999904632568359375f) + 0.4000000059604644775390625f)), 0.0f, 1.0f);
              } else {
                _3838 = _3828;
              }
              float _3839 = _3838 * _3838;
              float _3860 = (((_3820 * _3839) - _3820) * _3820) + 1.0f;
              float _3865 = 1.0f - _3822;
              float _3866 = _3865 * _3865;
              float _3868 = (_3865 * _3866) * _3866;
              float _3892 = 1.0f - _790;
              float _3899 = min(0.999000012874603271484375f, 0.4092549979686737060546875f + (_3892 * (1.04997003078460693359375f + (_3892 * ((-0.076194703578948974609375f) - (0.38302600383758544921875f * _3892))))));
              float _3900 = 1.0f - _3899;
              float _3923 = clamp(1.0f - _544, 0.0f, 1.0f);
              float _3931 = clamp((dot(_539, _3809) * 0.666666686534881591796875f) + 0.3333333432674407958984375f, 0.0f, 1.0f);
              _4022 = (lerp(1.0f.xxx, clamp(abs((frac(float3(_542, _543, _544).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _543.xxx) * _544) * lerp((_541 * lerp(1.0f, (_3931 * sqrt(_3931)) * 1.66666662693023681640625f, _3923)) * 0.15915493667125701904296875f, 1.0f, pow(clamp(-dot(_603, _3809), 0.0f, 1.0f), 12.0f) * lerp(3.0f, 0.100000001490116119384765625f, _3923));
              _4023 = min(((0.039999999105930328369140625f.xxx * (1.0f - _3868)) + _3868.xxx) * (((_3839 / (_3860 * _3860)) * _3808.y) * (0.5f / (((_3818 * sqrt(((((-_3824) * _3839) + _3824) * _3824) + _3839)) + (_3824 * sqrt(((((-_3818) * _3839) + _3818) * _3818) + _3839))) + 9.9999997473787516355514526367188e-05f))), 2048.0f.xxx) + (((0.085714280605316162109375f.xxx * (((_48.SampleLevel(_15, (float2(_3824, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x * _48.SampleLevel(_15, (float2(_3818, _790) * 0.96875f) + 0.015625f.xx, 0.0f).x) * _3899) / _3900)) * 0.085714280605316162109375f.xxx) / (1.0f.xxx - (0.085714280605316162109375f.xxx * _3900)));
            }
            float3 _4025 = _792 * _3808.z;
            float3 _4030 = ((_32_m6[_1213].xyz * _3374) * _3784) * _1313;
            float3 _4031 = clamp(_4023 * _32_m6[_1234].z, 0.0f.xxx, 1000.0f.xxx) * _3241;
            float3 _4076;
            [branch] if (_549) {
              float3 _4071;
              do {
                [branch] if (((_547 > 0u) && (_547 <= 15u)) && (_548 > 0.0f)) {
                  int _4050 = int(clamp(_547 - 1u, 0u, 14u));
                  _4071 = _49.SampleLevel(_15, float3((dot(normalize(lerp(_539, _546, dot(_52_m0[_4050].xyz, 0.3333333432674407958984375f.xxx).xxx)), _3809) * 0.5f) + 0.5f, _548 * _52_m0[_4050].w, float(_4050)), 0.0f).xyz;
                  break;
                }
                _4071 = _3241.xxx;
                break;
              } while (false);
              _4076 = _4030 * (((_4025 * _4071) + _4031) + _4022);
            }
            else {
              _4076 = ((_4031 + _4022) + (_4025 * _3241)) * _4030;
            }
            _4077 = _4076;
          } else {
            _4077 = 0.0f.xxx;
          }
          _4078 = _1173;
          _4079 = _4077;
        } else {
          float _3174;
          do {
            if (_1320) {
              _3174 = 1.0f;
              break;
            }
            float _2588 = (0.5f + (0.5f * _32_m6[_1219].y)) - abs(_32_m6[_1219].x);
            float _2589 = _32_m6[_1219].y - _2588;
            float _2596 = abs(max((1.0f - abs(_2588)) - abs(_2589), 0.00048828125f));
            float3 _2600 = normalize(float3(_2588, _2589, (_32_m6[_1219].x >= 0.0f) ? _2596 : (-_2596)));
            float3 _2601 = _32_m6[_1216].xyz - _577;
            float _2602 = dot(_2601, _2601);
            float3 _2604 = _2601 * rsqrt(_2602);
            int _2607 = int(_32_m6[_1234].w);
            float3 _2609 = (_2600 * _32_m6[_1219].z) * 0.5f;
            float3 _2610 = _2601 - _2609;
            float3 _2611 = _2601 + _2609;
            bool _2613 = (_1317 & 1u) == 0u;
            bool _2616 = _2613 || ((_1238 & 2u) != 0u);
            bool _2619 = (!_2613) && (_32_m6[_1219].z > 0.0f);
            float _2631;
            if (_2619) {
              _2631 = 1.0f / ((((length(_2610) * length(_2611)) + dot(_2610, _2611)) * 0.5f) + 1.0f);
            } else {
              _2631 = 1.0f;
            }
            float _2653;
            if (_32_m6[_1231].w < 0.0f) {
              float _2647 = _2602 * (_32_m6[_1216].w * _32_m6[_1216].w);
              float _2650 = clamp(1.0f - (_2647 * _2647), 0.0f, 1.0f);
              _2653 = lerp(1.0f / (_2602 + 1.0f), _2631, float(_2619)) * (_2650 * _2650);
            } else {
              float3 _2636 = _2601 * _32_m6[_1216].w;
              _2653 = _2631 * pow(1.0f - clamp(dot(_2636, _2636), 0.0f, 1.0f), _32_m6[_1231].w);
            }
            float _2659 = clamp((dot(_2604, -_2600) - _32_m6[_1219].z) * _32_m6[_1219].w, 0.0f, 1.0f);
            float _2663 = _2653 * lerp(1.0f, _2659 * _2659, float(_2613));
            float _2763;
            if ((!_2619) && (_2607 >= 0)) {
              uint _2669 = uint(_2607);
              float2 _2756;
              [branch] if (_2613) {
                float4 _2746 = mul(_56_m1[_2669], _581);
                _2756 = _56_m0[_2669].xy + (clamp(_2746.xy / _2746.w.xx, 0.0f.xx, 1.0f.xx) * _56_m0[_2669].zw);
              }
              else {
                float3 _2683 = mul(float4(-_2601, 0.0f), _56_m1[_2669]).xyz;
                float3 _411 = _2683;
                float3 _410 = _2683;
                float3 _409 = abs(_2683);
                uint _2692 = uint(int(_409.y > _409.x));
                uint _2698 = (_409.z > _409[_2692]) ? 2u : _2692;
                uint _2704 = (_2698 * 2u) + uint(_410[_2698] < 0.0f);
                float _2708 = abs(_411[_2704 / 2u]);
                float _2728 = 0.5f - (0.000244140625f / _56_m0[_2669].w);
                _2756 = _56_m0[_2669].xy + (clamp(float2((float(_2704) + ((((_411[uint(_367[_2704].x)] * _368[_2704].x) / _2708) * _2728) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_411[uint(_367[_2704].y)] * _368[_2704].y) / _2708) * _2728)), 0.0f.xx, 1.0f.xx) * _56_m0[_2669].zw);
              }
              _2763 = _2663 * _54.SampleLevel(_15, _2756, 0.0f).x;
            } else {
              _2763 = _2663;
            }
            float _3173;
            if (_2763 > 0.0f) {
              int _2817;
              if (_2616) {
                _2817 = int(_32_m6[_1222].x);
              } else {
                uint _2772 = asuint(_32_m6[_1219].w);
                uint _2773 = asuint(_32_m6[_1222].x);
                float3 _2774 = _577 - _32_m6[_1216].xyz;
                float3 _2775 = abs(_2774);
                float _2776 = _2775.x;
                float _2777 = _2775.y;
                float _2779 = _2775.z;
                int _2812;
                if ((_2776 > _2777) && (_2776 > _2779)) {
                  _2812 = int((_2774.x > 0.0f) ? (_2772 & 1023u) : ((_2772 >> 10u) & 1023u));
                } else {
                  int _2804;
                  if (_2777 > _2779) {
                    _2804 = int((_2774.y > 0.0f) ? ((_2772 >> 20u) & 1023u) : (_2773 & 1023u));
                  } else {
                    _2804 = int((_2774.z > 0.0f) ? ((_2773 >> 10u) & 1023u) : ((_2773 >> 20u) & 1023u));
                  }
                  _2812 = _2804;
                }
                _2817 = (_2812 == 1023) ? (-1) : _2812;
              }
              uint _2822 = uint(_2817);
              uint _2824 = asuint(_36_m11.x) + (_2822 * 96u);
              uint _2826 = (_2824 + 64u) >> 2u;
              uint _2829 = _2826 + 1u;
              uint _2832 = _2826 + 2u;
              uint _2835 = _2826 + 3u;
              float4 _2839 = asfloat(uint4(_39.Load(_2826 * 4 + 0), _39.Load(_2829 * 4 + 0), _39.Load(_2832 * 4 + 0), _39.Load(_2835 * 4 + 0)));
              float _3171;
              do {
                uint _2855 = ((asuint(_36_m11.y) + (_2822 * 16u)) >> 2u) + 1u;
                if (_39.Load(_2855 * 4 + 0) > 0u) {
                  float4 _408 = _1167;
                  float _2870;
                  do {
                    if (_39.Load(_2855 * 4 + 0) == 0u) {
                      _2870 = 1.0f;
                      break;
                    }
                    _2870 = _408[_39.Load(_2855 * 4 + 0) - 1u];
                    break;
                  } while (false);
                  _3171 = _2870;
                  break;
                }
                uint _2871 = _2824 >> 2u;
                uint _2886 = (_2824 + 16u) >> 2u;
                uint _2901 = (_2824 + 32u) >> 2u;
                uint _2916 = (_2824 + 48u) >> 2u;
                float4 _2936 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_2871 * 4 + 0), _39.Load((_2871 + 1u) * 4 + 0), _39.Load((_2871 + 2u) * 4 + 0), _39.Load((_2871 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2886 * 4 + 0), _39.Load((_2886 + 1u) * 4 + 0), _39.Load((_2886 + 2u) * 4 + 0), _39.Load((_2886 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2901 * 4 + 0), _39.Load((_2901 + 1u) * 4 + 0), _39.Load((_2901 + 2u) * 4 + 0), _39.Load((_2901 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2916 * 4 + 0), _39.Load((_2916 + 1u) * 4 + 0), _39.Load((_2916 + 2u) * 4 + 0), _39.Load((_2916 + 3u) * 4 + 0))))), float4((_577 - ((-_2604) * _2839.x)) + (_539 * (_2839.y * 5.0f)), 1.0f));
                float3 _2940 = _2936.xyz / _2936.w.xxx;
                uint _2942 = (_2824 + 80u) >> 2u;
                float4 _2955 = asfloat(uint4(_39.Load(_2942 * 4 + 0), _39.Load((_2942 + 1u) * 4 + 0), _39.Load((_2942 + 2u) * 4 + 0), _39.Load((_2942 + 3u) * 4 + 0)));
                float2 _2956 = _2940.xy;
                float2 _2958 = _2955.xy;
                float3 _2962 = _2940.xyz;
                bool3 _2963 = bool3(_2962.x <= 0.0f.xxx.x, _2962.y <= 0.0f.xxx.y, _2962.z <= 0.0f.xxx.z);
                bool3 _2964 = bool3(_2962.x >= 1.0f.xxx.x, _2962.y >= 1.0f.xxx.y, _2962.z >= 1.0f.xxx.z);
                float _2967 = _2940.z;
                float2 _2978 = ((_2956 * (_2955.zw - _2958)) + _2958).xy * _36_m10.zw;
                float2 _2980 = floor(_2978 + 0.5f.xx);
                float2 _2981 = _2978 - _2980;
                float _2982 = _2981.x;
                float _2983 = _2982 + 0.5f;
                float _2984 = _2983 * _2983;
                float _2987 = 1.0f - _2982;
                float _2988 = min(_2982, 0.0f);
                float _2991 = _2982 + 1.0f;
                float _2992 = max(_2982, 0.0f);
                float _3003 = _2981.y;
                float _3004 = _3003 + 0.5f;
                float _3005 = _3004 * _3004;
                float _3008 = 1.0f - _3003;
                float _3009 = min(_3003, 0.0f);
                float _3012 = _3003 + 1.0f;
                float _3013 = max(_3003, 0.0f);
                float3 _3025 = float3(0.1599999964237213134765625f * _2987, 0.1599999964237213134765625f * ((_2991 - (_2992 * _2992)) + 1.0f), _2984 * 0.07999999821186065673828125f);
                float3 _3026 = float3(0.1599999964237213134765625f * ((_2984 * 0.5f) - _2982), 0.1599999964237213134765625f * ((_2987 - (_2988 * _2988)) + 1.0f), 0.1599999964237213134765625f * _2991) + _3025;
                float3 _3028 = float3(0.1599999964237213134765625f * _3008, 0.1599999964237213134765625f * ((_3012 - (_3013 * _3013)) + 1.0f), _3005 * 0.07999999821186065673828125f);
                float3 _3029 = float3(0.1599999964237213134765625f * ((_3005 * 0.5f) - _3003), 0.1599999964237213134765625f * ((_3008 - (_3009 * _3009)) + 1.0f), 0.1599999964237213134765625f * _3012) + _3028;
                float3 _3035 = ((_3025 / _3026) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
                float3 _3037 = ((_3028 / _3029) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
                float2 _3039 = _2980 * _36_m10.xy;
                float _3040 = _3035.x;
                float _3041 = _3037.x;
                float _3044 = _3035.y;
                float _3047 = _3035.z;
                float _3050 = _3037.y;
                float _3057 = _3037.z;
                float _3064 = _3026.x;
                float _3065 = _3029.x;
                float _3067 = _3026.y;
                float _3069 = _3026.z;
                float _3071 = _3029.y;
                float _3075 = _3029.z;
                float _3133 = (((((((_3064 * _3065) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3040, _3041), _399).xy, _2967)) + ((_3067 * _3065) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3044, _3041), _399).xy, _2967))) + ((_3069 * _3065) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3047, _3041), _399).xy, _2967))) + ((_3064 * _3071) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3040, _3050), _399).xy, _2967))) + ((_3067 * _3071) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3044, _3050), _399).xy, _2967))) + ((_3069 * _3071) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3047, _3050), _399).xy, _2967))) + ((_3064 * _3075) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3040, _3057), _399).xy, _2967));
                float4 _3156 = asfloat(uint4(_39.Load(_2826 * 4 + 0), _39.Load(_2829 * 4 + 0), _39.Load(_2832 * 4 + 0), _39.Load(_2835 * 4 + 0)));
                float _3157 = _3156.w;
                float2 _3159 = min(_2956, 1.0f.xx - _2956);
                _3171 = lerp(1.0f, (any(bool3(_2963.x || _2964.x, _2963.y || _2964.y, _2963.z || _2964.z)) || ((asuint(_2967) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3133 + ((_3067 * _3075) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3044, _3057), _399).xy, _2967))) + ((_3069 * _3075) * _37.SampleCmpLevelZero(_18, float3(_3039 + float2(_3047, _3057), _399).xy, _2967))), _2616 ? min(_3157, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3156.z - _2936.w) * 0.25f, min(_3159.x, _3159.y)))) : _3157);
                break;
              } while (false);
              _3173 = (_2817 >= 0) ? _3171 : 1.0f;
            } else {
              _3173 = 1.0f;
            }
            _3174 = _3173;
            break;
          } while (false);
          _4078 = _1173 * _3174;
          _4079 = 0.0f.xxx;
        }
        _4080 = _4078;
        _4081 = _4079;
        break;
      } while (false);
      _1198 = _4080;
      _1201 = _1200 + _4081;
    }
    _1170 = _1169 + _1200;
  }
  float3 _4085 = _1138.xyz + (_1169 * _1172);
  float3 _4087 = _541.xxx;
  float3 _4122;
  float3 _4123;
  [branch]
      // RenoDX code start: preserve the existing deferred-lighting controls.
      /* Vanilla 0xAB82F8EA:
      if (_9_m23.x != 0.0f)
      */
      if ((_9_m23.x != 0.0f) || (RENODX_IMPROVED_GTAO != 0.0f))
  // RenoDX code end
  {
    float _4098 = min(_24.SampleBias(_14, _4, _9_m16).x, _541);
    _4122 = clamp((pow(abs(_794 + _4098), exp2(((-16.0f) * _790) - 1.0f)) - 1.0f) + _4098, 0.0f, 1.0f).xxx;
    _4123 = max(_4098.xxx, ((((((_792 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _4098) + ((_792 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _4098) + ((_792 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _4098);
  }
  else {
    _4122 = _4087;
    _4123 = _4087;
  }
  // RenoDX code start: preserve the existing deferred-lighting controls.
  _4085 *= (RENODX_IMPROVED_GTAO != 0.0f) ? _4122 : 1.0f.xxx;
  // RenoDX code end
  float3 _5974;
  [branch] if (_549) {
    float3 _5065;
    do {
      [branch] if (((_547 > 0u) && (_547 <= 15u)) && (_548 > 0.0f)) {
        uint _5053 = clamp(_547 - 1u, 0u, 14u);
        _5065 = _50.SampleLevel(_15, float3(_548 * _52_m0[_5053].w, 0.5f, float(_5053)), 0.0f).xyz;
        break;
      }
      _5065 = 1.0f.xxx;
      break;
    } while (false);
    float3 _5082 = (_577 + (_539 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_552 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _5092 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _5101 = _5082 - (_9_m108.xyz + (_5092 * (-_9_m110.w)));
    float _5116 = max(min(max((max(abs(_5101.x), abs(_5101.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_5101.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _5418;
    float4 _5419;
    float4 _5420;
    float _5421;
    float _5422;
    if ((_9_m108.w != 0.0f) && (_5116 < 1.0f)) {
      float3 _5129 = _5082 - (_9_m108.xyz + (_5092 * (-_9_m110.y)));
      float _5143 = max(clamp((max(abs(_5129.x), abs(_5129.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_5129.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _5219;
      float4 _5220;
      float4 _5221;
      float4 _5222;
      if (_5143 < 1.0f) {
        float3 _5152 = ((_5082 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5154 = _5152 - floor(_5152);
        float4 _5158 = _66.SampleLevel(_16, _5154, 0.0f);
        float _5159 = 1.0f - _5143;
        float _5163 = _9_m109.y * 0.5f;
        float _5168 = _5154.x;
        float _5169 = clamp(_5154.y, _5163, 1.0f - _5163) * 0.3333333432674407958984375f;
        float _5170 = _5154.z;
        float4 _5173 = _67.SampleLevel(_15, float3(_5168, _5169, _5170), 0.0f);
        float _5189 = _5158.x;
        float _5199 = _5158.y;
        float _5209 = _5158.z;
        _5219 = _5116 + (_5173.w * _5159);
        _5220 = float4(((_67.SampleLevel(_15, float3(_5168, _5169 + 0.666666686534881591796875f, _5170), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5209, _5209) * _5159;
        _5221 = float4(((_67.SampleLevel(_15, float3(_5168, _5169 + 0.3333333432674407958984375f, _5170), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5199, _5199) * _5159;
        _5222 = float4(((_5173.xyz * 4.0f) - 2.0f.xxx) * _5189, _5189) * _5159;
      } else {
        _5219 = _5116;
        _5220 = 0.0f.xxxx;
        _5221 = 0.0f.xxxx;
        _5222 = 0.0f.xxxx;
      }
      float3 _5228 = _5082 - (_9_m108.xyz + (_5092 * (-_9_m110.z)));
      float _5242 = max(clamp((max(abs(_5228.x), abs(_5228.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_5228.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _5322;
      float4 _5323;
      float4 _5324;
      float4 _5325;
      if (_5242 < 1.0f) {
        float3 _5251 = ((_5082 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5253 = _5251 - floor(_5251);
        float4 _5257 = _68.SampleLevel(_16, _5253, 0.0f);
        float _5259 = _5143 * (1.0f - _5242);
        float _5263 = _9_m109.y * 0.5f;
        float _5268 = _5253.x;
        float _5269 = clamp(_5253.y, _5263, 1.0f - _5263) * 0.3333333432674407958984375f;
        float _5270 = _5253.z;
        float4 _5273 = _69.SampleLevel(_15, float3(_5268, _5269, _5270), 0.0f);
        float _5289 = _5257.x;
        float _5300 = _5257.y;
        float _5311 = _5257.z;
        _5322 = _5219 + (_5273.w * _5259);
        _5323 = _5220 + (float4(((_69.SampleLevel(_15, float3(_5268, _5269 + 0.666666686534881591796875f, _5270), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5311, _5311) * _5259);
        _5324 = _5221 + (float4(((_69.SampleLevel(_15, float3(_5268, _5269 + 0.3333333432674407958984375f, _5270), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5300, _5300) * _5259);
        _5325 = _5222 + (float4(((_5273.xyz * 4.0f) - 2.0f.xxx) * _5289, _5289) * _5259);
      } else {
        _5322 = _5219;
        _5323 = _5220;
        _5324 = _5221;
        _5325 = _5222;
      }
      float4 _5408;
      float4 _5409;
      float4 _5410;
      float _5411;
      if (_5242 > 0.0f) {
        float3 _5334 = ((_5082 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _5337 = _9_m109.xyz * 0.5f;
        float3 _5339 = clamp(_5334 - floor(_5334), _5337, 1.0f.xxx - _5337);
        float4 _5343 = _70.SampleLevel(_16, _5339, 0.0f);
        float _5345 = _5242 * (1.0f - _5116);
        float _5349 = _9_m109.y * 0.5f;
        float _5354 = _5339.x;
        float _5355 = clamp(_5339.y, _5349, 1.0f - _5349) * 0.3333333432674407958984375f;
        float _5356 = _5339.z;
        float4 _5359 = _71.SampleLevel(_15, float3(_5354, _5355, _5356), 0.0f);
        float _5375 = _5343.x;
        float _5386 = _5343.y;
        float _5397 = _5343.z;
        _5408 = _5323 + (float4(((_71.SampleLevel(_15, float3(_5354, _5355 + 0.666666686534881591796875f, _5356), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5397, _5397) * _5345);
        _5409 = _5324 + (float4(((_71.SampleLevel(_15, float3(_5354, _5355 + 0.3333333432674407958984375f, _5356), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _5386, _5386) * _5345);
        _5410 = _5325 + (float4(((_5359.xyz * 4.0f) - 2.0f.xxx) * _5375, _5375) * _5345);
        _5411 = _5322 + (_5359.w * _5345);
      } else {
        _5408 = _5323;
        _5409 = _5324;
        _5410 = _5325;
        _5411 = _5322;
      }
      float _5414 = clamp((_5411 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _5418 = _5408;
      _5419 = _5409;
      _5420 = _5410;
      _5421 = _5414 - _5116;
      _5422 = (_5414 + _5116) * 0.5f;
    } else {
      _5418 = 0.0f.xxxx;
      _5419 = 0.0f.xxxx;
      _5420 = 0.0f.xxxx;
      _5421 = 0.0f;
      _5422 = 1.0f;
    }
    float4 _5442 = _5420 + float4(_9_m111.x * _5422, (_9_m111.y * _5422) + ((_9_m111.w * _5421) * 0.5f), _9_m111.z * _5422, (_9_m111.w * _5422) + ((_9_m111.y * _5421) * 0.375f));
    float4 _5462 = _5419 + float4(_9_m112.x * _5422, (_9_m112.y * _5422) + ((_9_m112.w * _5421) * 0.5f), _9_m112.z * _5422, (_9_m112.w * _5422) + ((_9_m112.y * _5421) * 0.375f));
    float4 _5482 = _5418 + float4(_9_m113.x * _5422, (_9_m113.y * _5422) + ((_9_m113.w * _5421) * 0.5f), _9_m113.z * _5422, (_9_m113.w * _5422) + ((_9_m113.y * _5421) * 0.375f));
    float4 _5640;
    float4 _5641;
    float4 _5642;
    [branch] if (all(bool2(_565.x >= 0.0f.xx.x, _565.y >= 0.0f.xx.y))) {
      float4 _5490 = _65.SampleLevel(_15, _565, 0.0f);
      float4 _5491 = abs(_5490);
      float4 _5637;
      float4 _5638;
      float4 _5639;
      [branch] if (any(bool4(_5491.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _5491.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _5491.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _5491.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _5497 = length(_5490.yzw);
        uint _5499;
        float _5502;
        _5499 = 0u;
        _5502 = 1.0f;
        for (float _5504 = _5497; _5504 > 4.599999904632568359375f;) {
          _5499++;
          _5502 *= 0.5f;
          _5504 *= 0.5f;
          continue;
        }
        float4 _5508 = _5490 * _5502;
        float4 _5513 = float4(0.0f, _5508.yzw);
        float2 _5535 = (_64.SampleLevel(_15, float2(((((length(_5513) * _63_m3.x) + _63_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _63_m2.xy) + _63_m2.zw;
        float4 _5549;
        _5549 = float4(_5535.x * 3.5449078083038330078125f, _5513.yzw * _5535.y) * exp(_5508.x * 0.282094776630401611328125f);
        for (uint _5552 = 0u; _5552 < _5499;) {
          _5549 = mul(float4x4(_5549, float4(_5549.yx, 0.0f, 0.0f), float4(_5549.z, 0.0f, _5549.x, 0.0f), float4(_5549.w, 0.0f, 0.0f, _5549.x)) * 0.282094776630401611328125f, _5549);
          _5552++;
          continue;
        }
        float4x4 _5573 = float4x4(_5549, float4(_5549.yx, 0.0f, 0.0f), float4(_5549.z, 0.0f, _5549.x, 0.0f), float4(_5549.w, 0.0f, 0.0f, _5549.x)) * 0.282094776630401611328125f;
        float4 _5583 = mul(_5573, float4(_5442.w * 1.1283791065216064453125f, _5442.y * (-0.977204978466033935546875f), _5442.z * 0.977204978466033935546875f, _5442.x * (-0.977204978466033935546875f)));
        float4 _5603 = mul(_5573, float4(_5462.w * 1.1283791065216064453125f, _5462.y * (-0.977204978466033935546875f), _5462.z * 0.977204978466033935546875f, _5462.x * (-0.977204978466033935546875f)));
        float4 _5623 = mul(_5573, float4(_5482.w * 1.1283791065216064453125f, _5482.y * (-0.977204978466033935546875f), _5482.z * 0.977204978466033935546875f, _5482.x * (-0.977204978466033935546875f)));
        _5637 = float4(_5583.x * 0.886226952075958251953125f, _5583.w * (-1.02332675457000732421875f), _5583.y * (-1.02332675457000732421875f), _5583.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5638 = float4(_5603.x * 0.886226952075958251953125f, _5603.w * (-1.02332675457000732421875f), _5603.y * (-1.02332675457000732421875f), _5603.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _5639 = float4(_5623.x * 0.886226952075958251953125f, _5623.w * (-1.02332675457000732421875f), _5623.y * (-1.02332675457000732421875f), _5623.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _5637 = _5442;
        _5638 = _5462;
        _5639 = _5482;
      }
      _5640 = _5637;
      _5641 = _5638;
      _5642 = _5639;
    }
    else {
      _5640 = _5442;
      _5641 = _5462;
      _5642 = _5482;
    }
    float _5649 = max(0.0f, dot(_5640.xyz * _5065.x, _539) + _5640.w);
    float _5656 = max(0.0f, dot(_5641.xyz * _5065.y, _539) + _5641.w);
    float _5663 = max(0.0f, dot(_5642.xyz * _5065.z, _539) + _5642.w);
    float3 _5673 = reflect(_605, _539);
    float _5681 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_790, 0.001000000047497451305389404296875f))));
    float2 _5685 = floor(_552 * _30_m0.w);
    float _5702 = floor(_584 - _30_m2.y);
    float _5706 = clamp(_5702, 0.0f, _30_m1.x - 1.0f);
    uint _5716 = (_5702 <= _5706) ? (_27.Load(uint(_9_m21.z + int(_5685.x + (_5685.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_5706)) * 4 + 0)) : 0u;
    float _5719 = dot(float4(_5649, _5656, _5663, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _5721;
    float _5724;
    uint _5726;
    _5721 = 0.0f.xxx;
    _5724 = 1.0f;
    _5726 = _5716;
    uint _5727;
    float3 _5722;
    float _5725;
    bool _5729;
    [loop] for (;;) {
      bool _5728 = _5726 != 0u;
      _5729 = _5724 > 0.00999999977648258209228515625f;
      if (_5728 && _5729) {
        uint _5733 = firstbitlow(_5726);
        _5727 = _5726 ^ (1u << (_5733 & 31u));
        float3 _5753 = float3(dot(_30_m4[_5733]._m2, _581), dot(_30_m4[_5733]._m3, _581), dot(_30_m4[_5733]._m4, _581));
        float3 _5754 = abs(_5753);
        if (all(bool3(_5754.x <= _30_m4[_5733]._m1.xyz.x, _5754.y <= _30_m4[_5733]._m1.xyz.y, _5754.z <= _30_m4[_5733]._m1.xyz.z))) {
          float3 _5763 = _30_m4[_5733]._m1.xyz * 0.100000001490116119384765625f;
          float3 _5765 = _5754 * 0.100000001490116119384765625f;
          float3 _5766 = _5765 * _5765;
          float3 _5769 = (_30_m4[_5733]._m1.xyz - _5754) * _30_m4[_5733]._m5.xyz;
          float3 _5817;
          [branch] if (_30_m4[_5733]._m6.x == 1.0f) {
            float3 _5802 = float3(dot(_30_m4[_5733]._m2.xyz, _5673), dot(_30_m4[_5733]._m3.xyz, _5673), dot(_30_m4[_5733]._m4.xyz, _5673));
            float3 _5804 = (_30_m4[_5733]._m1.xyz - _5753) / _5802;
            float3 _5807 = ((-_30_m4[_5733]._m1.xyz) - _5753) / _5802;
            bool3 _5808 = bool3(_5802.x > 0.0f.xxx.x, _5802.y > 0.0f.xxx.y, _5802.z > 0.0f.xxx.z);
            float3 _5809 = float3(_5808.x ? _5804.x : _5807.x, _5808.y ? _5804.y : _5807.y, _5808.z ? _5804.z : _5807.z);
            _5817 = _5753 + (_5802 * min(min(_5809.x, _5809.y), _5809.z));
          }
          else {
            _5817 = _5673;
          }
          float3 _5818 = normalize(_5817);
          float3 _5821 = float3(int3(sign(_5818)));
          float3 _5824 = _5818 / dot(_5818, _5821).xxx;
          float3 _5838;
          if (_5824.z < 0.0f) {
            float3 _5829 = abs(_5824);
            float2 _5836 = _5821.xy * float2(1.0f - _5829.y, 1.0f - _5829.x);
            _5838 = float3(_5836.x, _5836.y, _5824.z);
          } else {
            _5838 = _5824;
          }
          float _5862 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_5733]._m0, float4(_539, 1.0f))));
          float _5875 = clamp((min(_5769.x, min(_5769.y, _5769.z)) * _30_m4[_5733]._m6.y) + ((((((_5763 * _5763).x - ((_5766.x + _5766.y) + _5766.z)) * _30_m4[_5733]._m5.x) * _30_m4[_5733]._m5.x) * (1.0f - _30_m4[_5733]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_5733]._m6.w;
          _5722 = _5721 + ((((_25.SampleLevel(_17, float3((((_5838.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_5733]._m1.w), _5681).xyz * _30_m4[_5733]._m5.w) * ((((((clamp(abs(_5719 / _5862), 0.0f, 1.0f) * 2.0f) + _5719) / (2.0f + _5862)) - 1.0f) * _9_m23.w) + 1.0f)) * _5875) * _5724);
          _5725 = _5724 * (1.0f - _5875);
        } else {
          _5722 = _5721;
          _5725 = _5724;
        }
        _5721 = _5722;
        _5724 = _5725;
        _5726 = _5727;
        continue;
      } else {
        break;
      }
    }
    float3 _5943;
    if (_5729) {
      float3 _5883 = normalize(_5673);
      float3 _5886 = float3(int3(sign(_5883)));
      float3 _5889 = _5883 / dot(_5883, _5886).xxx;
      float3 _5903;
      if (_5889.z < 0.0f) {
        float3 _5894 = abs(_5889);
        float2 _5901 = _5886.xy * float2(1.0f - _5894.y, 1.0f - _5894.x);
        _5903 = float3(_5901.x, _5901.y, _5889.z);
      } else {
        _5903 = _5889;
      }
      float _5929 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_539, 1.0f))));
      _5943 = _5721 + ((_25.SampleLevel(_17, float3((((_5903.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _5681).xyz * ((((((clamp(abs(_5719 / _5929), 0.0f, 1.0f) * 2.0f) + _5719) / (2.0f + _5929)) - 1.0f) * _9_m23.w) + 1.0f)) * _5724);
    } else {
      _5943 = _5721;
    }
    float3 _5949 = (_5943 * _9_m23.z) * _9_m22.y;
    float3 _5970;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _5964 = _23.SampleBias(_15, _4, _9_m16);
      float _5965 = _5964.x;
      _5970 = (_22.SampleBias(_15, _4, _9_m16).xyz * _5965) + (_5949 * (1.0f - _5965));
    }
    else {
      _5970 = _5949;
    }
    _5974 = (((float3(_5649, _5656, _5663) * _792) * _9_m22.x) * _4123) + ((_5970 * _812) * _4122);
  }
  else {
    float3 _4143 = (_577 + (_539 * 0.25f)) + (((frac(52.98291778564453125f * frac(dot(_552 + (float2(2.0829999446868896484375f, 4.867000102996826171875f) * float(int(_9_m110.x))), float2(0.067110560834407806396484375f, 0.005837149918079376220703125f)))) * 2.0f) - 1.0f) * 0.20000000298023223876953125f).xxx;
    float3 _4153 = mul(float3x3(_7_m1[0].xyz, _7_m1[1].xyz, _7_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3 _4162 = _4143 - (_9_m108.xyz + (_4153 * (-_9_m110.w)));
    float _4177 = max(min(max((max(abs(_4162.x), abs(_4162.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_4162.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
    float4 _4479;
    float4 _4480;
    float4 _4481;
    float _4482;
    float _4483;
    if ((_9_m108.w != 0.0f) && (_4177 < 1.0f)) {
      float3 _4190 = _4143 - (_9_m108.xyz + (_4153 * (-_9_m110.y)));
      float _4204 = max(clamp((max(abs(_4190.x), abs(_4190.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_4190.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
      float _4280;
      float4 _4281;
      float4 _4282;
      float4 _4283;
      if (_4204 < 1.0f) {
        float3 _4213 = ((_4143 * 2.0f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4215 = _4213 - floor(_4213);
        float4 _4219 = _66.SampleLevel(_16, _4215, 0.0f);
        float _4220 = 1.0f - _4204;
        float _4224 = _9_m109.y * 0.5f;
        float _4229 = _4215.x;
        float _4230 = clamp(_4215.y, _4224, 1.0f - _4224) * 0.3333333432674407958984375f;
        float _4231 = _4215.z;
        float4 _4234 = _67.SampleLevel(_15, float3(_4229, _4230, _4231), 0.0f);
        float _4250 = _4219.x;
        float _4260 = _4219.y;
        float _4270 = _4219.z;
        _4280 = _4177 + (_4234.w * _4220);
        _4281 = float4(((_67.SampleLevel(_15, float3(_4229, _4230 + 0.666666686534881591796875f, _4231), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4270, _4270) * _4220;
        _4282 = float4(((_67.SampleLevel(_15, float3(_4229, _4230 + 0.3333333432674407958984375f, _4231), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4260, _4260) * _4220;
        _4283 = float4(((_4234.xyz * 4.0f) - 2.0f.xxx) * _4250, _4250) * _4220;
      } else {
        _4280 = _4177;
        _4281 = 0.0f.xxxx;
        _4282 = 0.0f.xxxx;
        _4283 = 0.0f.xxxx;
      }
      float3 _4289 = _4143 - (_9_m108.xyz + (_4153 * (-_9_m110.z)));
      float _4303 = max(clamp((max(abs(_4289.x), abs(_4289.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_4289.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
      float _4383;
      float4 _4384;
      float4 _4385;
      float4 _4386;
      if (_4303 < 1.0f) {
        float3 _4312 = ((_4143 * 0.5f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4314 = _4312 - floor(_4312);
        float4 _4318 = _68.SampleLevel(_16, _4314, 0.0f);
        float _4320 = _4204 * (1.0f - _4303);
        float _4324 = _9_m109.y * 0.5f;
        float _4329 = _4314.x;
        float _4330 = clamp(_4314.y, _4324, 1.0f - _4324) * 0.3333333432674407958984375f;
        float _4331 = _4314.z;
        float4 _4334 = _69.SampleLevel(_15, float3(_4329, _4330, _4331), 0.0f);
        float _4350 = _4318.x;
        float _4361 = _4318.y;
        float _4372 = _4318.z;
        _4383 = _4280 + (_4334.w * _4320);
        _4384 = _4281 + (float4(((_69.SampleLevel(_15, float3(_4329, _4330 + 0.666666686534881591796875f, _4331), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4372, _4372) * _4320);
        _4385 = _4282 + (float4(((_69.SampleLevel(_15, float3(_4329, _4330 + 0.3333333432674407958984375f, _4331), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4361, _4361) * _4320);
        _4386 = _4283 + (float4(((_4334.xyz * 4.0f) - 2.0f.xxx) * _4350, _4350) * _4320);
      } else {
        _4383 = _4280;
        _4384 = _4281;
        _4385 = _4282;
        _4386 = _4283;
      }
      float4 _4469;
      float4 _4470;
      float4 _4471;
      float _4472;
      if (_4303 > 0.0f) {
        float3 _4395 = ((_4143 * 0.125f) + 0.5f.xxx) * _9_m109.xyz;
        float3 _4398 = _9_m109.xyz * 0.5f;
        float3 _4400 = clamp(_4395 - floor(_4395), _4398, 1.0f.xxx - _4398);
        float4 _4404 = _70.SampleLevel(_16, _4400, 0.0f);
        float _4406 = _4303 * (1.0f - _4177);
        float _4410 = _9_m109.y * 0.5f;
        float _4415 = _4400.x;
        float _4416 = clamp(_4400.y, _4410, 1.0f - _4410) * 0.3333333432674407958984375f;
        float _4417 = _4400.z;
        float4 _4420 = _71.SampleLevel(_15, float3(_4415, _4416, _4417), 0.0f);
        float _4436 = _4404.x;
        float _4447 = _4404.y;
        float _4458 = _4404.z;
        _4469 = _4384 + (float4(((_71.SampleLevel(_15, float3(_4415, _4416 + 0.666666686534881591796875f, _4417), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4458, _4458) * _4406);
        _4470 = _4385 + (float4(((_71.SampleLevel(_15, float3(_4415, _4416 + 0.3333333432674407958984375f, _4417), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _4447, _4447) * _4406);
        _4471 = _4386 + (float4(((_4420.xyz * 4.0f) - 2.0f.xxx) * _4436, _4436) * _4406);
        _4472 = _4383 + (_4420.w * _4406);
      } else {
        _4469 = _4384;
        _4470 = _4385;
        _4471 = _4386;
        _4472 = _4383;
      }
      float _4475 = clamp((_4472 * 2.0f) - 1.0f, 0.0f, 1.0f);
      _4479 = _4469;
      _4480 = _4470;
      _4481 = _4471;
      _4482 = _4475 - _4177;
      _4483 = (_4475 + _4177) * 0.5f;
    } else {
      _4479 = 0.0f.xxxx;
      _4480 = 0.0f.xxxx;
      _4481 = 0.0f.xxxx;
      _4482 = 0.0f;
      _4483 = 1.0f;
    }
    float4 _4503 = _4481 + float4(_9_m111.x * _4483, (_9_m111.y * _4483) + ((_9_m111.w * _4482) * 0.5f), _9_m111.z * _4483, (_9_m111.w * _4483) + ((_9_m111.y * _4482) * 0.375f));
    float4 _4523 = _4480 + float4(_9_m112.x * _4483, (_9_m112.y * _4483) + ((_9_m112.w * _4482) * 0.5f), _9_m112.z * _4483, (_9_m112.w * _4483) + ((_9_m112.y * _4482) * 0.375f));
    float4 _4543 = _4479 + float4(_9_m113.x * _4483, (_9_m113.y * _4483) + ((_9_m113.w * _4482) * 0.5f), _9_m113.z * _4483, (_9_m113.w * _4483) + ((_9_m113.y * _4482) * 0.375f));
    float4 _4701;
    float4 _4702;
    float4 _4703;
    [branch] if (all(bool2(_565.x >= 0.0f.xx.x, _565.y >= 0.0f.xx.y))) {
      float4 _4551 = _65.SampleLevel(_15, _565, 0.0f);
      float4 _4552 = abs(_4551);
      float4 _4698;
      float4 _4699;
      float4 _4700;
      [branch] if (any(bool4(_4552.x > 9.9999997473787516355514526367188e-05f.xxxx.x, _4552.y > 9.9999997473787516355514526367188e-05f.xxxx.y, _4552.z > 9.9999997473787516355514526367188e-05f.xxxx.z, _4552.w > 9.9999997473787516355514526367188e-05f.xxxx.w))) {
        float _4558 = length(_4551.yzw);
        uint _4560;
        float _4563;
        _4560 = 0u;
        _4563 = 1.0f;
        for (float _4565 = _4558; _4565 > 4.599999904632568359375f;) {
          _4560++;
          _4563 *= 0.5f;
          _4565 *= 0.5f;
          continue;
        }
        float4 _4569 = _4551 * _4563;
        float4 _4574 = float4(0.0f, _4569.yzw);
        float2 _4596 = (_64.SampleLevel(_15, float2(((((length(_4574) * _63_m3.x) + _63_m3.y) * 255.0f) + 0.5f) * 0.00390625f, 0.5f), 0.0f).xy * _63_m2.xy) + _63_m2.zw;
        float4 _4610;
        _4610 = float4(_4596.x * 3.5449078083038330078125f, _4574.yzw * _4596.y) * exp(_4569.x * 0.282094776630401611328125f);
        for (uint _4613 = 0u; _4613 < _4560;) {
          _4610 = mul(float4x4(_4610, float4(_4610.yx, 0.0f, 0.0f), float4(_4610.z, 0.0f, _4610.x, 0.0f), float4(_4610.w, 0.0f, 0.0f, _4610.x)) * 0.282094776630401611328125f, _4610);
          _4613++;
          continue;
        }
        float4x4 _4634 = float4x4(_4610, float4(_4610.yx, 0.0f, 0.0f), float4(_4610.z, 0.0f, _4610.x, 0.0f), float4(_4610.w, 0.0f, 0.0f, _4610.x)) * 0.282094776630401611328125f;
        float4 _4644 = mul(_4634, float4(_4503.w * 1.1283791065216064453125f, _4503.y * (-0.977204978466033935546875f), _4503.z * 0.977204978466033935546875f, _4503.x * (-0.977204978466033935546875f)));
        float4 _4664 = mul(_4634, float4(_4523.w * 1.1283791065216064453125f, _4523.y * (-0.977204978466033935546875f), _4523.z * 0.977204978466033935546875f, _4523.x * (-0.977204978466033935546875f)));
        float4 _4684 = mul(_4634, float4(_4543.w * 1.1283791065216064453125f, _4543.y * (-0.977204978466033935546875f), _4543.z * 0.977204978466033935546875f, _4543.x * (-0.977204978466033935546875f)));
        _4698 = float4(_4644.x * 0.886226952075958251953125f, _4644.w * (-1.02332675457000732421875f), _4644.y * (-1.02332675457000732421875f), _4644.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4699 = float4(_4664.x * 0.886226952075958251953125f, _4664.w * (-1.02332675457000732421875f), _4664.y * (-1.02332675457000732421875f), _4664.z * 1.02332675457000732421875f).yzwx * 1.0f;
        _4700 = float4(_4684.x * 0.886226952075958251953125f, _4684.w * (-1.02332675457000732421875f), _4684.y * (-1.02332675457000732421875f), _4684.z * 1.02332675457000732421875f).yzwx * 1.0f;
      }
      else {
        _4698 = _4503;
        _4699 = _4523;
        _4700 = _4543;
      }
      _4701 = _4698;
      _4702 = _4699;
      _4703 = _4700;
    }
    else {
      _4701 = _4503;
      _4702 = _4523;
      _4703 = _4543;
    }
    float _4708 = max(0.0f, dot(_4701.xyz, _539) + _4701.w);
    float _4713 = max(0.0f, dot(_4702.xyz, _539) + _4702.w);
    float _4718 = max(0.0f, dot(_4703.xyz, _539) + _4703.w);
    float3 _4742 = reflect(_605, _539);
    float _4750 = (_9_m24.x - 1.0f) - (1.0f - (1.2000000476837158203125f * log2(max(_790, 0.001000000047497451305389404296875f))));
    float2 _4754 = floor(_552 * _30_m0.w);
    float _4771 = floor(_584 - _30_m2.y);
    float _4775 = clamp(_4771, 0.0f, _30_m1.x - 1.0f);
    uint _4785 = (_4771 <= _4775) ? (_27.Load(uint(_9_m21.z + int(_4754.x + (_4754.y * _30_m0.x))) * 4 + 0) & _27.Load(uint(_9_m21.w + int(_4775)) * 4 + 0)) : 0u;
    float _4788 = dot(float4(_4708, _4713, _4718, 1.0f).xyz * _9_m22.x, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float3 _4790;
    float _4793;
    uint _4795;
    _4790 = 0.0f.xxx;
    _4793 = 1.0f;
    _4795 = _4785;
    uint _4796;
    float3 _4791;
    float _4794;
    bool _4798;
    [loop] for (;;) {
      bool _4797 = _4795 != 0u;
      _4798 = _4793 > 0.00999999977648258209228515625f;
      if (_4797 && _4798) {
        uint _4802 = firstbitlow(_4795);
        _4796 = _4795 ^ (1u << (_4802 & 31u));
        float3 _4822 = float3(dot(_30_m4[_4802]._m2, _581), dot(_30_m4[_4802]._m3, _581), dot(_30_m4[_4802]._m4, _581));
        float3 _4823 = abs(_4822);
        if (all(bool3(_4823.x <= _30_m4[_4802]._m1.xyz.x, _4823.y <= _30_m4[_4802]._m1.xyz.y, _4823.z <= _30_m4[_4802]._m1.xyz.z))) {
          float3 _4832 = _30_m4[_4802]._m1.xyz * 0.100000001490116119384765625f;
          float3 _4834 = _4823 * 0.100000001490116119384765625f;
          float3 _4835 = _4834 * _4834;
          float3 _4838 = (_30_m4[_4802]._m1.xyz - _4823) * _30_m4[_4802]._m5.xyz;
          float3 _4886;
          [branch] if (_30_m4[_4802]._m6.x == 1.0f) {
            float3 _4871 = float3(dot(_30_m4[_4802]._m2.xyz, _4742), dot(_30_m4[_4802]._m3.xyz, _4742), dot(_30_m4[_4802]._m4.xyz, _4742));
            float3 _4873 = (_30_m4[_4802]._m1.xyz - _4822) / _4871;
            float3 _4876 = ((-_30_m4[_4802]._m1.xyz) - _4822) / _4871;
            bool3 _4877 = bool3(_4871.x > 0.0f.xxx.x, _4871.y > 0.0f.xxx.y, _4871.z > 0.0f.xxx.z);
            float3 _4878 = float3(_4877.x ? _4873.x : _4876.x, _4877.y ? _4873.y : _4876.y, _4877.z ? _4873.z : _4876.z);
            _4886 = _4822 + (_4871 * min(min(_4878.x, _4878.y), _4878.z));
          }
          else {
            _4886 = _4742;
          }
          float3 _4887 = normalize(_4886);
          float3 _4890 = float3(int3(sign(_4887)));
          float3 _4893 = _4887 / dot(_4887, _4890).xxx;
          float3 _4907;
          if (_4893.z < 0.0f) {
            float3 _4898 = abs(_4893);
            float2 _4905 = _4890.xy * float2(1.0f - _4898.y, 1.0f - _4898.x);
            _4907 = float3(_4905.x, _4905.y, _4893.z);
          } else {
            _4907 = _4893;
          }
          float _4931 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m4[_4802]._m0, float4(_539, 1.0f))));
          float _4944 = clamp((min(_4838.x, min(_4838.y, _4838.z)) * _30_m4[_4802]._m6.y) + ((((((_4832 * _4832).x - ((_4835.x + _4835.y) + _4835.z)) * _30_m4[_4802]._m5.x) * _30_m4[_4802]._m5.x) * (1.0f - _30_m4[_4802]._m6.y)) * 100.0f), 0.0f, 1.0f) * _30_m4[_4802]._m6.w;
          _4791 = _4790 + ((((_25.SampleLevel(_17, float3((((_4907.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, _30_m4[_4802]._m1.w), _4750).xyz * _30_m4[_4802]._m5.w) * ((((((clamp(abs(_4788 / _4931), 0.0f, 1.0f) * 2.0f) + _4788) / (2.0f + _4931)) - 1.0f) * _9_m23.w) + 1.0f)) * _4944) * _4793);
          _4794 = _4793 * (1.0f - _4944);
        } else {
          _4791 = _4790;
          _4794 = _4793;
        }
        _4790 = _4791;
        _4793 = _4794;
        _4795 = _4796;
        continue;
      } else {
        break;
      }
    }
    float3 _5012;
    if (_4798) {
      float3 _4952 = normalize(_4742);
      float3 _4955 = float3(int3(sign(_4952)));
      float3 _4958 = _4952 / dot(_4952, _4955).xxx;
      float3 _4972;
      if (_4958.z < 0.0f) {
        float3 _4963 = abs(_4958);
        float2 _4970 = _4955.xy * float2(1.0f - _4963.y, 1.0f - _4963.x);
        _4972 = float3(_4970.x, _4970.y, _4958.z);
      } else {
        _4972 = _4958;
      }
      float _4998 = max(9.9999997473787516355514526367188e-05f, max(0.0f, dot(_30_m3, float4(_539, 1.0f))));
      _5012 = _4790 + ((_25.SampleLevel(_17, float3((((_4972.xy * 0.5f) + 0.5f.xx) * _30_m1.w) + _30_m2.w.xx, 0.0f), _4750).xyz * ((((((clamp(abs(_4788 / _4998), 0.0f, 1.0f) * 2.0f) + _4788) / (2.0f + _4998)) - 1.0f) * _9_m23.w) + 1.0f)) * _4793);
    } else {
      _5012 = _4790;
    }
    float3 _5018 = (_5012 * _9_m23.z) * _9_m22.y;
    float3 _5039;
    [branch] if (_9_m23.y != 0.0f) {
      float4 _5033 = _23.SampleBias(_15, _4, _9_m16);
      float _5034 = _5033.x;
      _5039 = (_22.SampleBias(_15, _4, _9_m16).xyz * _5034) + (_5018 * (1.0f - _5034));
    }
    else {
      _5039 = _5018;
    }
    _5974 = (((float3(_4708, _4713, _4718) * (_792 + ((lerp(1.0f.xxx, clamp(abs((frac(float3(_542, _543, _544).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _543.xxx) * _544) * _545))) * _9_m22.x) * _4123) + ((_5039 * _812) * _4122);
  }
  float4 _5976 = float4(_4085.x, _4085.y, _4085.z, _1138.w) + float4(_5974.x, _5974.y, _5974.z, 0.0f.xxxx.w);
  float _5994 = _577.y * _9_m46.w;
  float _5999 = max(0.00999999977648258209228515625f, _5994 + _9_m47.w);
  float3 _6013 = exp(_9_m45.xyz * ((-max(0.0f, (_604 * _9_m44.w) - _9_m43.w)) * (((1.0f - exp(-_5999)) / _5999) * exp(_5994 + _9_m48.w))));
  float _6016 = dot(_605, _9_m44.xyz);
  float _6022 = _9_m45.w * _9_m45.w;
  float _6026 = (1.0f + _6022) - ((2.0f * _9_m45.w) * _6016);
  float3 _6350;
  float _6351;
  if (_9_m55.z > 0.0f) {
    uint3 _6178 = (uint3(int3(_419, _420, int(_9_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
    uint _6179 = _6178.y;
    uint _6180 = _6178.z;
    uint _6183 = _6178.x + (_6179 * _6180);
    uint _6185 = _6179 + (_6180 * _6183);
    uint _6187 = _6180 + (_6183 * _6185);
    uint _6189 = _6183 + (_6185 * _6187);
    float _6213 = dot(_605, -_7_m0[2].xyz);
    float3 _6221 = _577 - _7_m11.xyz;
    float _6223 = (_9_m55.w * ((_6213 > 5.9604644775390625e-08f) ? (1.0f / _6213) : 0.0f)) * (1.0f / _604);
    float _6224 = _6221.y;
    float _6225 = _6223 * _6224;
    float _6227 = _7_m11.y + _6225;
    float _6228 = _6224 - _6225;
    float _6230 = (1.0f - _6223) * _604;
    float _6244 = max(-127.0f, _9_m49.z * _6228);
    float _6268 = max(-127.0f, _9_m52.x * _6228);
    float _6279 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_6227 - _9_m49.x)))) * ((abs(_6244) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6244)) / _6244) : (0.693147182464599609375f - (0.2402265071868896484375f * _6244)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_6227 - _9_m52.z)))) * ((abs(_6268) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6268)) / _6268) : (0.693147182464599609375f - (0.2402265071868896484375f * _6268))));
    float _6301 = clamp((_604 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _6304 = clamp((max(clamp(exp2(-(_6279 * _6230)), 0.0f, 1.0f), _9_m51.w) + clamp((_604 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _6301, 0.0f, 1.0f);
    float4 _6344 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_15, float3((_552 + ((((float3(uint3(_6189, _6185 + (_6187 * _6189), _402) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _9_m59.w).xy) * _9_m57.xy, (log2((_584 * _9_m56.x) + _9_m56.y) * _9_m56.z) / _9_m55.z), 0.0f), clamp((_584 - _9_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
    float _6346 = _6344.w;
    _6350 = _6344.xyz + (((_9_m51.xyz * (1.0f - _6304)) + (((_9_m54.xyz * pow(clamp(dot(_603, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_6279 * max(_6230 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _6301))) * _6346);
    _6351 = _6346 * _6304;
  } else {
    float3 _6054 = _577 - _7_m11.xyz;
    float _6056 = _6054.y;
    float _6070 = max(-127.0f, _9_m49.z * _6056);
    float _6094 = max(-127.0f, _9_m52.x * _6056);
    float _6105 = ((_9_m49.y * exp2(-max(-127.0f, _9_m49.z * (_7_m11.y - _9_m49.x)))) * ((abs(_6070) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6070)) / _6070) : (0.693147182464599609375f - (0.2402265071868896484375f * _6070)))) + ((_9_m52.y * exp2(-max(-127.0f, _9_m52.x * (_7_m11.y - _9_m52.z)))) * ((abs(_6094) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_6094)) / _6094) : (0.693147182464599609375f - (0.2402265071868896484375f * _6094))));
    float _6127 = clamp((_604 * _9_m50.w) + _9_m50.z, 0.0f, 1.0f);
    float _6130 = clamp((max(clamp(exp2(-(_6105 * _604)), 0.0f, 1.0f), _9_m51.w) + clamp((_604 * _9_m50.y) + _9_m50.x, 0.0f, 1.0f)) + _6127, 0.0f, 1.0f);
    _6350 = (_9_m51.xyz * (1.0f - _6130)) + (((_9_m54.xyz * pow(clamp(dot(_603, _9_m53.xyz), 0.0f, 1.0f), _9_m54.w)) * (1.0f - clamp(exp2(-(_6105 * max(_604 - _9_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _6127));
    _6351 = _6130;
  }
  float3 _6354 = _6013 * _6351;
  float3 _6356 = (clamp(_5976.xyz, 0.0f.xxx, 255.0f.xxx).xyz * _6354) + ((((clamp(((_9_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_6016 * _6016)))) + _9_m48.xyz) + (_9_m47.xyz * ((1.0f - _6022) / max((12.56637096405029296875f * _6026) * sqrt(_6026), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _6013)) * _6351) + _6350);
  // RenoDX code start: preserve the existing deferred-lighting controls.
  if (RENODX_CUSTOM_FOG > 0.5f) {
    _6356 = (_6356 * 0.65f) + (clamp(_5976.xyz, 0.0f.xxx, 255.0f.xxx).xyz * 0.35f);
  }
  // RenoDX code end
  float4 _6358 = float4(_6356.x, _6356.y, _6356.z, _5976.w);
  _6358.w = dot(_6354, 0.3333333432674407958984375f.xxx);
  _5 = _6358;
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

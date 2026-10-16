#include "../shared.h"

#include "./renodx_injection.hlsli"

// Ported from the native 0x1CFB063C Vulkan dump.
struct _20
{
    column_major float4x4 _m0;
    float4 _m1;
    float4 _m2;
    column_major float4x4 _m3;
    float4 _m4;
    float4 _m5;
    float4 _m6;
    float4 _m7;
    float4 _m8;
    float4 _m9;
};

static float _407;
static float3 _408;
static float _410;
static uint _411;

static const int2 _365[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _366[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(11, 0)]] cbuffer _15_16 : register(b11, space0)
{
    column_major float4x4 _16_m0 : packoffset(c0);
    column_major float4x4 _16_m1 : packoffset(c4);
    column_major float4x4 _16_m2 : packoffset(c8);
    column_major float4x4 _16_m3 : packoffset(c12);
    column_major float4x4 _16_m4 : packoffset(c16);
    column_major float4x4 _16_m5 : packoffset(c20);
    column_major float4x4 _16_m6 : packoffset(c24);
    column_major float4x4 _16_m7 : packoffset(c28);
    column_major float4x4 _16_m8 : packoffset(c32);
    column_major float4x4 _16_m9 : packoffset(c36);
    column_major float4x4 _16_m10 : packoffset(c40);
    float4 _16_m11 : packoffset(c44);
    column_major float4x4 _16_m12 : packoffset(c45);
    column_major float4x4 _16_m13 : packoffset(c49);
    column_major float4x4 _16_m14 : packoffset(c53);
    column_major float4x4 _16_m15 : packoffset(c57);
    column_major float4x4 _16_m16 : packoffset(c61);
    column_major float4x4 _16_m17 : packoffset(c65);
    column_major float4x4 _16_m18 : packoffset(c69);
    column_major float4x4 _16_m19 : packoffset(c73);
    column_major float4x4 _16_m20 : packoffset(c77);
    float4 _16_m21 : packoffset(c81);
};

[[vk::binding(15, 0)]] cbuffer _17_18 : register(b15, space0)
{
    float4 _18_m0 : packoffset(c0);
    float4 _18_m1 : packoffset(c1);
    float4 _18_m2 : packoffset(c2);
    float4 _18_m3 : packoffset(c3);
    float4 _18_m4 : packoffset(c4);
    float4 _18_m5 : packoffset(c5);
    float4 _18_m6[6] : packoffset(c6);
    float4 _18_m7[6] : packoffset(c12);
    float4 _18_m8 : packoffset(c18);
    float4 _18_m9 : packoffset(c19);
    float4 _18_m10 : packoffset(c20);
    float4 _18_m11 : packoffset(c21);
    float4 _18_m12 : packoffset(c22);
    float4 _18_m13 : packoffset(c23);
    float4 _18_m14 : packoffset(c24);
    float4 _18_m15 : packoffset(c25);
    float _18_m16 : packoffset(c26);
    float _18_m17 : packoffset(c26.y);
    float _18_m18 : packoffset(c26.z);
    uint _18_m19 : packoffset(c26.w);
    float4 _18_m20 : packoffset(c27);
    int4 _18_m21 : packoffset(c28);
    float4 _18_m22 : packoffset(c29);
    float4 _18_m23 : packoffset(c30);
    float4 _18_m24 : packoffset(c31);
    float4 _18_m25 : packoffset(c32);
    float4 _18_m26 : packoffset(c33);
    float4 _18_m27 : packoffset(c34);
    float4 _18_m28 : packoffset(c35);
    float4 _18_m29 : packoffset(c36);
    float4 _18_m30 : packoffset(c37);
    float4 _18_m31 : packoffset(c38);
    float4 _18_m32[4] : packoffset(c39);
    float4 _18_m33[4] : packoffset(c43);
    float4 _18_m34[4] : packoffset(c47);
    float4 _18_m35[4] : packoffset(c51);
    float4 _18_m36 : packoffset(c55);
    float4 _18_m37 : packoffset(c56);
    float4 _18_m38[4] : packoffset(c57);
    float4 _18_m39[4] : packoffset(c61);
    float4 _18_m40[4] : packoffset(c65);
    float4 _18_m41 : packoffset(c69);
    float4 _18_m42 : packoffset(c70);
    float4 _18_m43 : packoffset(c71);
    float4 _18_m44 : packoffset(c72);
    float4 _18_m45 : packoffset(c73);
    float4 _18_m46 : packoffset(c74);
    float4 _18_m47 : packoffset(c75);
    float4 _18_m48 : packoffset(c76);
    float4 _18_m49 : packoffset(c77);
    float4 _18_m50 : packoffset(c78);
    float4 _18_m51 : packoffset(c79);
    float4 _18_m52 : packoffset(c80);
    float4 _18_m53 : packoffset(c81);
    float4 _18_m54 : packoffset(c82);
    float4 _18_m55 : packoffset(c83);
    float4 _18_m56 : packoffset(c84);
    float4 _18_m57 : packoffset(c85);
    float4 _18_m58 : packoffset(c86);
    float4 _18_m59 : packoffset(c87);
    float4 _18_m60 : packoffset(c88);
    float4 _18_m61 : packoffset(c89);
    float4 _18_m62 : packoffset(c90);
    float4 _18_m63 : packoffset(c91);
    float4 _18_m64 : packoffset(c92);
    float4 _18_m65 : packoffset(c93);
    float4 _18_m66 : packoffset(c94);
    float4 _18_m67 : packoffset(c95);
    float4 _18_m68 : packoffset(c96);
    float4 _18_m69 : packoffset(c97);
    float4 _18_m70 : packoffset(c98);
    float4 _18_m71 : packoffset(c99);
    float4 _18_m72 : packoffset(c100);
    float4 _18_m73 : packoffset(c101);
    float4 _18_m74 : packoffset(c102);
    float4 _18_m75 : packoffset(c103);
    float4 _18_m76 : packoffset(c104);
    float4 _18_m77 : packoffset(c105);
    float4 _18_m78 : packoffset(c106);
    float4 _18_m79 : packoffset(c107);
    float4 _18_m80 : packoffset(c108);
    float4 _18_m81 : packoffset(c109);
    float4 _18_m82 : packoffset(c110);
    float4 _18_m83 : packoffset(c111);
    float4 _18_m84 : packoffset(c112);
    float4 _18_m85 : packoffset(c113);
    float4 _18_m86 : packoffset(c114);
    float4 _18_m87 : packoffset(c115);
    float4 _18_m88 : packoffset(c116);
    float4 _18_m89 : packoffset(c117);
    float4 _18_m90 : packoffset(c118);
    float4 _18_m91 : packoffset(c119);
    float4 _18_m92 : packoffset(c120);
    float4 _18_m93 : packoffset(c121);
    float4 _18_m94 : packoffset(c122);
    float4 _18_m95 : packoffset(c123);
    float4 _18_m96 : packoffset(c124);
    float4 _18_m97 : packoffset(c125);
    float4 _18_m98 : packoffset(c126);
    float4 _18_m99 : packoffset(c127);
    float4 _18_m100 : packoffset(c128);
    float4 _18_m101 : packoffset(c129);
    float4 _18_m102[2] : packoffset(c130);
    float4 _18_m103[2] : packoffset(c132);
    float _18_m104 : packoffset(c134);
    float _18_m105 : packoffset(c134.y);
    float _18_m106 : packoffset(c134.z);
    float _18_m107 : packoffset(c134.w);
    float4 _18_m108 : packoffset(c135);
    float4 _18_m109 : packoffset(c136);
    float4 _18_m110 : packoffset(c137);
    float4 _18_m111 : packoffset(c138);
    float4 _18_m112 : packoffset(c139);
    float4 _18_m113 : packoffset(c140);
    float4 _18_m114 : packoffset(c141);
    float4 _18_m115 : packoffset(c142);
    float4 _18_m116 : packoffset(c143);
    float4 _18_m117 : packoffset(c144);
    float4 _18_m118 : packoffset(c145);
    float4 _18_m119 : packoffset(c146);
    float4 _18_m120 : packoffset(c147);
    float4 _18_m121 : packoffset(c148);
    float4 _18_m122 : packoffset(c149);
    float4 _18_m123 : packoffset(c150);
    float4 _18_m124 : packoffset(c151);
    float4 _18_m125 : packoffset(c152);
    float4 _18_m126 : packoffset(c153);
    float4 _18_m127 : packoffset(c154);
    float4 _18_m128 : packoffset(c155);
    float4 _18_m129 : packoffset(c156);
    float4 _18_m130 : packoffset(c157);
    float4 _18_m131 : packoffset(c158);
    float4 _18_m132 : packoffset(c159);
    float4 _18_m133 : packoffset(c160);
    float4 _18_m134 : packoffset(c161);
    float4 _18_m135 : packoffset(c162);
    float4 _18_m136 : packoffset(c163);
    float4 _18_m137 : packoffset(c164);
    column_major float4x4 _18_m138 : packoffset(c165);
    float4 _18_m139 : packoffset(c169);
    float4 _18_m140 : packoffset(c170);
    float4 _18_m141 : packoffset(c171);
    float4 _18_m142 : packoffset(c172);
    int4 _18_m143 : packoffset(c173);
    int4 _18_m144 : packoffset(c174);
    int4 _18_m145 : packoffset(c175);
    float4 _18_m146[32] : packoffset(c176);
};

[[vk::binding(0, 2)]] cbuffer _19_21 : register(b0, space2)
{
    _20 _21_m0[256] : packoffset(c0);
};

[[vk::binding(54, 0)]] ByteAddressBuffer _28 : register(t54, space0);
[[vk::binding(17, 0)]] StructuredBuffer<float4> _30 : register(t17, space0);
[[vk::binding(13, 0)]] cbuffer _31_32 : register(b13, space0)
{
    float4 _32_m0 : packoffset(c0);
    float4 _32_m1 : packoffset(c1);
    float4 _32_m2 : packoffset(c2);
    float4 _32_m3 : packoffset(c3);
    float4 _32_m4 : packoffset(c4);
    uint4 _32_m5 : packoffset(c5);
    float4 _32_m6[2048] : packoffset(c6);
};

[[vk::binding(50, 0)]] cbuffer _33_34 : register(b50, space0)
{
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

[[vk::binding(14, 0)]] cbuffer _35_36 : register(b14, space0)
{
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

[[vk::binding(53, 0)]] ByteAddressBuffer _39 : register(t53, space0);
[[vk::binding(0, 1)]] cbuffer _48_49 : register(b0, space1)
{
    float _49_m0 : packoffset(c0);
    float _49_m1 : packoffset(c0.y);
    float _49_m2 : packoffset(c0.z);
    float _49_m3 : packoffset(c0.w);
    float _49_m4 : packoffset(c1);
    float _49_m5 : packoffset(c1.y);
    float _49_m6 : packoffset(c1.z);
    float _49_m7 : packoffset(c1.w);
    float _49_m8 : packoffset(c2);
    float _49_m9 : packoffset(c2.y);
    float _49_m10 : packoffset(c2.z);
    float _49_m11 : packoffset(c2.w);
    float _49_m12 : packoffset(c3);
    float _49_m13 : packoffset(c3.y);
    float _49_m14 : packoffset(c3.z);
    float _49_m15 : packoffset(c3.w);
    float _49_m16 : packoffset(c4);
    float _49_m17 : packoffset(c4.y);
    float _49_m18 : packoffset(c4.z);
    float _49_m19 : packoffset(c4.w);
    float _49_m20 : packoffset(c5);
    float _49_m21 : packoffset(c5.y);
    float _49_m22 : packoffset(c5.z);
    float _49_m23 : packoffset(c5.w);
    float4 _49_m24 : packoffset(c6);
    float4 _49_m25 : packoffset(c7);
    float4 _49_m26 : packoffset(c8);
    float4 _49_m27 : packoffset(c9);
    float4 _49_m28 : packoffset(c10);
    float4 _49_m29 : packoffset(c11);
    float _49_m30 : packoffset(c12);
    float _49_m31 : packoffset(c12.y);
    float _49_m32 : packoffset(c12.z);
    float _49_m33 : packoffset(c12.w);
    float4 _49_m34 : packoffset(c13);
    float4 _49_m35 : packoffset(c14);
    float4 _49_m36 : packoffset(c15);
    float4 _49_m37 : packoffset(c16);
    float4 _49_m38 : packoffset(c17);
    float4 _49_m39 : packoffset(c18);
    float _49_m40 : packoffset(c19);
    float _49_m41 : packoffset(c19.y);
    float _49_m42 : packoffset(c19.z);
    float _49_m43 : packoffset(c19.w);
    float _49_m44 : packoffset(c20);
    float _49_m45 : packoffset(c20.y);
    float _49_m46 : packoffset(c20.z);
    float _49_m47 : packoffset(c20.w);
};

[[vk::binding(52, 0)]] cbuffer _57_58 : register(b52, space0)
{
    float4 _58_m0[32] : packoffset(c0);
    column_major float4x4 _58_m1[32] : packoffset(c32);
};

[[vk::binding(5, 0)]] SamplerState _23 : register(s5, space0);
[[vk::binding(4, 0)]] SamplerState _24 : register(s4, space0);
[[vk::binding(6, 0)]] SamplerComparisonState _25 : register(s6, space0);
[[vk::binding(27, 0)]] Texture2D<float4> _37 : register(t27, space0);
[[vk::binding(22, 0)]] Texture2D<float4> _40 : register(t22, space0);
[[vk::binding(37, 0)]] Texture3D<float4> _42 : register(t37, space0);
[[vk::binding(34, 0)]] Texture3D<float4> _43 : register(t34, space0);
[[vk::binding(36, 0)]] Texture3D<float4> _44 : register(t36, space0);
[[vk::binding(33, 0)]] Texture3D<float4> _45 : register(t33, space0);
[[vk::binding(35, 0)]] Texture3D<float4> _46 : register(t35, space0);
[[vk::binding(32, 0)]] Texture3D<float4> _47 : register(t32, space0);
[[vk::binding(46, 0)]] Texture2D<float4> _50 : register(t46, space0);
[[vk::binding(43, 0)]] Texture2D<float4> _51 : register(t43, space0);
[[vk::binding(41, 0)]] Texture2D<float4> _52 : register(t41, space0);
[[vk::binding(1, 1)]] Texture2D<float4> _53 : register(t1, space1);
[[vk::binding(47, 0)]] TextureCube<float4> _55 : register(t47, space0);
[[vk::binding(29, 0)]] Texture2D<float4> _56 : register(t29, space0);
[[vk::binding(38, 0)]] Texture3D<float4> _61 : register(t38, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float2 _3;
static float3 _4;
static float3 _5;
static float3 _6;
static float3 _7;
static float3 _8;
static float3 _9;
static uint _11;
static float4 _13;
static float4 _14;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(4)]] float3 _6 : TEXCOORD4;
    [[vk::location(5)]] float3 _7 : TEXCOORD5;
    [[vk::location(6)]] float3 _8 : TEXCOORD6;
    [[vk::location(7)]] float3 _9 : TEXCOORD7;
    [[vk::location(8)]] nointerpolation uint _11 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _13 : SV_Target0;
    [[vk::location(1)]] float4 _14 : SV_Target1;
};

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}


uint4 _30_Load4(uint byte_offset) { return asuint(_30[byte_offset >> 4u]); }
void frag_main()
{
float _425 = 1.0f / gl_FragCoord.w;
float3 _440 = lerp(-_4, float3(_16_m0[2u].x, _16_m0[2u].y, _16_m0[2u].z), _18_m4.w.xxx);
float _441 = dot(_440, _440);
float _443 = rsqrt(max(_441, 9.9999999392252902907785028219223e-09f));
float3 _444 = _440 * _443;
float _445 = _441 * _443;
uint _448 = asuint(_21_m0[_11]._m2.x);
bool _453 = (asuint(_21_m0[_11]._m1.w) & 16u) != 0u;
float4 _466;
float4 _467;
if (_453)
{
_466 = asfloat(_30_Load4((_448 + 2u) * 16 + 0));
_467 = asfloat(_30_Load4(_448 * 16 + 0));
}
else
{
_466 = _21_m0[_11]._m0[2];
_467 = _21_m0[_11]._m0[0];
}
float4 _473 = _53.SampleBias(_24, _3, _18_m16);
float3 _478 = _473.xyz * _49_m24.xyz;
float _485 = 1.0f - _49_m0;
float _489 = _473.w * _49_m24.w;
float3 _493 = _4 + _16_m11.xyz;
float3 _497 = _493 - float3(_467.w, _410, _466.w);
_497.y = 6.103515625e-05f;
float3 _500 = normalize(_497);
float3 _505 = _478 * _49_m18;
float3 _509 = lerp(dot(_505, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _505, _49_m19.xxx);
float3 _515 = normalize(_5) * (gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _49_m5)));
uint2 _517 = uint2(gl_FragCoord.xy);
float3 _527 = mul(float3x3(_16_m1[0].xyz, _16_m1[1].xyz, _16_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
uint _536 = asuint((_18_m92.x > 0.5f) ? _18_m92.y : _21_m0[_11]._m7.x);
float4 _549 = float4(float(_536 & 255u), float((_536 >> 8u) & 255u), float((_536 >> 16u) & 255u), float((_536 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
float _550 = _549.x;
float _553 = _549.w;
float _559 = _493.y;
float _562 = smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_21_m0[_11]._m7.y, _18_m92.w, _18_m92.x) - _559) * _549.y;
float _563 = max(_549.z, _562);
float _572 = lerp(_18_m22.x, 1.0f, _18_m94.w) * _18_m20.x;
float4 _1067;
float3 _1068;
float3 _1069;
float _1070;
if (_18_m83.y < 0.5f)
{
float3 _587 = _493 - (_18_m108.xyz + (_527 * (-_18_m110.w)));
float _602 = max(min(max((max(abs(_587.x), abs(_587.z)) - 464.0f) * 0.03125f, 0.0f), 1.0f), clamp((abs(_587.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
float4 _904;
float4 _905;
float4 _906;
float _907;
float _908;
if ((_18_m108.w != 0.0f) && (_602 < 1.0f))
{
float3 _615 = _493 - (_18_m108.xyz + (_527 * (-_18_m110.y)));
float _629 = max(clamp((max(abs(_615.x), abs(_615.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_615.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
float _705;
float4 _706;
float4 _707;
float4 _708;
if (_629 < 1.0f)
{
float3 _638 = ((_493 * 2.0f) + 0.5f.xxx) * _18_m109.xyz;
float3 _640 = _638 - floor(_638);
float4 _644 = _42.SampleLevel(_24, _640, 0.0f);
float _645 = 1.0f - _629;
float _649 = _18_m109.y * 0.5f;
float _654 = _640.x;
float _655 = clamp(_640.y, _649, 1.0f - _649) * 0.3333333432674407958984375f;
float _656 = _640.z;
float4 _659 = _43.SampleLevel(_23, float3(_654, _655, _656), 0.0f);
float _675 = _644.x;
float _685 = _644.y;
float _695 = _644.z;
_705 = _602 + (_659.w * _645);
_706 = float4(((_43.SampleLevel(_23, float3(_654, _655 + 0.666666686534881591796875f, _656), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _695, _695) * _645;
_707 = float4(((_43.SampleLevel(_23, float3(_654, _655 + 0.3333333432674407958984375f, _656), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _685, _685) * _645;
_708 = float4(((_659.xyz * 4.0f) - 2.0f.xxx) * _675, _675) * _645;
}
else
{
_705 = _602;
_706 = 0.0f.xxxx;
_707 = 0.0f.xxxx;
_708 = 0.0f.xxxx;
}
float3 _714 = _493 - (_18_m108.xyz + (_527 * (-_18_m110.z)));
float _728 = max(clamp((max(abs(_714.x), abs(_714.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_714.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
float _808;
float4 _809;
float4 _810;
float4 _811;
if (_728 < 1.0f)
{
float3 _737 = ((_493 * 0.5f) + 0.5f.xxx) * _18_m109.xyz;
float3 _739 = _737 - floor(_737);
float4 _743 = _44.SampleLevel(_24, _739, 0.0f);
float _745 = _629 * (1.0f - _728);
float _749 = _18_m109.y * 0.5f;
float _754 = _739.x;
float _755 = clamp(_739.y, _749, 1.0f - _749) * 0.3333333432674407958984375f;
float _756 = _739.z;
float4 _759 = _45.SampleLevel(_23, float3(_754, _755, _756), 0.0f);
float _775 = _743.x;
float _786 = _743.y;
float _797 = _743.z;
_808 = _705 + (_759.w * _745);
_809 = _706 + (float4(((_45.SampleLevel(_23, float3(_754, _755 + 0.666666686534881591796875f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _797, _797) * _745);
_810 = _707 + (float4(((_45.SampleLevel(_23, float3(_754, _755 + 0.3333333432674407958984375f, _756), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _786, _786) * _745);
_811 = _708 + (float4(((_759.xyz * 4.0f) - 2.0f.xxx) * _775, _775) * _745);
}
else
{
_808 = _705;
_809 = _706;
_810 = _707;
_811 = _708;
}
float4 _894;
float4 _895;
float4 _896;
float _897;
if (_728 > 0.0f)
{
float3 _820 = ((_493 * 0.125f) + 0.5f.xxx) * _18_m109.xyz;
float3 _823 = _18_m109.xyz * 0.5f;
float3 _825 = clamp(_820 - floor(_820), _823, 1.0f.xxx - _823);
float4 _829 = _46.SampleLevel(_24, _825, 0.0f);
float _831 = _728 * (1.0f - _602);
float _835 = _18_m109.y * 0.5f;
float _840 = _825.x;
float _841 = clamp(_825.y, _835, 1.0f - _835) * 0.3333333432674407958984375f;
float _842 = _825.z;
float4 _845 = _47.SampleLevel(_23, float3(_840, _841, _842), 0.0f);
float _861 = _829.x;
float _872 = _829.y;
float _883 = _829.z;
_894 = _809 + (float4(((_47.SampleLevel(_23, float3(_840, _841 + 0.666666686534881591796875f, _842), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _883, _883) * _831);
_895 = _810 + (float4(((_47.SampleLevel(_23, float3(_840, _841 + 0.3333333432674407958984375f, _842), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _872, _872) * _831);
_896 = _811 + (float4(((_845.xyz * 4.0f) - 2.0f.xxx) * _861, _861) * _831);
_897 = _808 + (_845.w * _831);
}
else
{
_894 = _809;
_895 = _810;
_896 = _811;
_897 = _808;
}
float _900 = clamp((_897 * 2.0f) - 1.0f, 0.0f, 1.0f);
_904 = _894;
_905 = _895;
_906 = _896;
_907 = _900 - _602;
_908 = (_900 + _602) * 0.5f;
}
else
{
_904 = 0.0f.xxxx;
_905 = 0.0f.xxxx;
_906 = 0.0f.xxxx;
_907 = 0.0f;
_908 = 1.0f;
}
float4 _928 = _906 + float4(_18_m111.x * _908, (_18_m111.y * _908) + ((_18_m111.w * _907) * 0.5f), _18_m111.z * _908, (_18_m111.w * _908) + ((_18_m111.y * _907) * 0.375f));
float4 _948 = _905 + float4(_18_m112.x * _908, (_18_m112.y * _908) + ((_18_m112.w * _907) * 0.5f), _18_m112.z * _908, (_18_m112.w * _908) + ((_18_m112.y * _907) * 0.375f));
float4 _968 = _904 + float4(_18_m113.x * _908, (_18_m113.y * _908) + ((_18_m113.w * _907) * 0.5f), _18_m113.z * _908, (_18_m113.w * _908) + ((_18_m113.y * _907) * 0.375f));
float4 _972 = float4(_515, 1.0f);
float3 _978 = max(float3(dot(_928, _972), dot(_948, _972), dot(_968, _972)), 0.0f.xxx) * _572;
float3 _986 = ((_928.xyz * 0.2125999927520751953125f) + (_948.xyz * 0.715200006961822509765625f)) + (_968.xyz * 0.072200000286102294921875f);
float3 _990 = _986 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_986, _986)));
float _992 = abs(_990.y);
float3 _993 = _990;
_993.y = _992;
float4 _994 = float4(_993.x, _993.y, _993.z, 0.0f.xxxx.w);
_994.w = 1.0f;
float4 _998 = float4(_990.x, _992, _990.z, 1.0f);
float3 _1003 = max(float3(dot(_928, _998), dot(_948, _998), dot(_968, _998)), 0.0f.xxx);
float _1011 = _978.z;
float _1012 = _978.y;
float4 _1017 = lerp(float4(_1011, _1012, -1.0f, 0.666666686534881591796875f), float4(_1012, _1011, 0.0f, -0.3333333432674407958984375f), step(_1011, _1012).xxxx);
float _1018 = _978.x;
float _1019 = _1017.x;
float4 _1027 = lerp(float4(_1019, _1017.yw, _1018), float4(_1018, _1017.yz, _1019), step(_1019, _1018).xxxx);
float _1028 = _1027.x;
float _1029 = _1027.w;
float _1030 = _1027.y;
float _1032 = _1028 - min(_1029, _1030);
float _1042 = frac(abs(_1027.z + ((_1029 - _1030) / ((6.0f * _1032) + 9.9999997473787516355514526367188e-05f))));
float _1049 = min(_1032 / (_1028 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1042 - 0.5f))) * clamp(_1028, 0.0f, 1.0f));
float _1051 = 2.0f / (2.0f - _1049);
_1067 = _994;
_1068 = _978;
_1069 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1042, _1049, _1051).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1049.xxx) * _1051;
_1070 = max(max(max(_1003.x, _1003.y), _1003.z), 0.0f) * _572;
}
else
{
_1067 = 0.0f.xxxx;
_1068 = 1.0f.xxx;
_1069 = _18_m84.xyz;
_1070 = _572;
}
float3 _1790;
float _1791;
float _1792;
float _1793;
float3 _1794;
float3 _1795;
[branch]
if ((clamp(_550 + _563, 0.0f, 1.0f) - _49_m20) > 0.00999999977648258209228515625f)
{
float _1098 = 1.0f - _49_m2;
float _1101 = smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_478 * _1098, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)));
bool3 _1104 = _453.xxx;
float3 _1106 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
float3 _1110 = float3(_1104.x ? _1106.x : _9.x, _1104.y ? _1106.y : _9.y, _1104.z ? _1106.z : _9.z) * _18_m92.z;
float3 _1112 = float3(_1104.x ? _8.xzy.x : _8.x, _1104.y ? _8.xzy.y : _8.y, _1104.z ? _8.xzy.z : _8.z);
float3 _1114 = abs(_1112) - 0.20000000298023223876953125f.xxx;
float3 _1117 = max((_1114 * _1114) * _1114, 6.103515625e-05f.xxx);
float3 _1120 = _1117 / dot(_1117, 1.0f.xxx).xxx;
float2 _1128 = _1110.xy;
float2 _1133 = _1110.zy;
float4 _1143 = ((_50.SampleBias(_24, _1110.xz, _18_m16) * _1120.y) + (_50.SampleBias(_24, _1128, _18_m16) * _1120.z)) + (_50.SampleBias(_24, _1133, _18_m16) * _1120.x);
float _1144 = _1143.w;
float _1146 = 1.10000002384185791015625f - _1144;
float _1155 = max(smoothstep(0.800000011920928955078125f - _1144, _1146, clamp((_550 * _1098) + (_515.y * 0.20000000298023223876953125f), 0.0f, 1.0f)), smoothstep(0.449999988079071044921875f - _1144, _1146, clamp(_562 * _1098, 0.0f, 1.0f)));
float _1162 = smoothstep(0.5f, 0.75f, _49_m2);
float _1164 = smoothstep(0.800000011920928955078125f, 0.60000002384185791015625f, _485) * _1101;
float _1167 = clamp(_1164 + _1162, 0.0f, 1.0f) * max(_550, _563);
bool _1171 = !((step(_550, 0.00999999977648258209228515625f) * step(0.00999999977648258209228515625f, _563)) != 0.0f);
bool2 _1172 = _1171.xx;
float2 _1174 = (1.0f - _563).xx;
float2 _1175 = float2(_1172.x ? float2(3.0f, 4.345600128173828125f).x : _1174.x, _1172.y ? float2(3.0f, 4.345600128173828125f).y : _1174.y);
float _1176 = 1.0f - _1167;
float _1179 = _1171 ? _18_m10.x : 1.0f;
float _1181 = _1179 * _1175.x;
float _1183 = _1179 * _1175.y;
float3 _1184 = _1110 * 20.0f;
float3 _1185 = _1110 * 34.345600128173828125f;
float3 _1187 = pow(max(_1114, 0.0f.xxx), 10.0f.xxx);
float3 _1191 = _1187 / max(dot(_1187, 1.0f.xxx), 6.103515625e-05f).xxx;
float _1193 = _1191.y;
float2 _1194 = _1184.xz * 1.0f;
float2 _1195 = floor(_1194);
float2 _1198 = frac(_1195 * float2(123.339996337890625f, 456.209991455078125f));
float2 _1202 = _1198 + dot(_1198, _1198 + 34.345001220703125f.xx).xx;
float _1203 = _1202.x;
float _1204 = _1202.y;
float2 _1208 = frac(float2(_1203 * _1204, _1203 + _1204));
float2 _1211 = frac((_1195 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
float2 _1215 = _1211 + dot(_1211, _1211 + 34.345001220703125f.xx).xx;
float _1216 = _1215.x;
float _1217 = _1215.y;
float2 _1221 = frac(float2(_1216 * _1217, _1216 + _1217));
float _1227 = _1208.x;
float _1229 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1227);
float2 _1230 = ((_1194 - _1195) + ((((_1221 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
float _1233 = _1230.y;
float2 _1237 = float2(_1230.x * 1.25f, _1233 * ((_1233 < 0.0f) ? 1.25f : 0.75f));
float _1240 = _1181 + _1227;
float _1244 = _1171 ? frac(_1240) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1240, 0.0f, 1.0f));
float _1256 = _1208.y;
float _1259 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1244) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1244)) * step(0.001000000047497451305389404296875f, smoothstep(_1229, 0.0f, length(_1237)))) * step(_1176, _1256 - 0.100000001490116119384765625f);
float _1262 = _1259 * _1193;
float _1270 = _1191.z;
float2 _1271 = _1184.xy * 1.0f;
float2 _1272 = floor(_1271);
float2 _1275 = frac(_1272 * float2(123.339996337890625f, 456.209991455078125f));
float2 _1279 = _1275 + dot(_1275, _1275 + 34.345001220703125f.xx).xx;
float _1280 = _1279.x;
float _1281 = _1279.y;
float2 _1285 = frac(float2(_1280 * _1281, _1280 + _1281));
float2 _1288 = frac((_1272 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
float2 _1292 = _1288 + dot(_1288, _1288 + 34.345001220703125f.xx).xx;
float _1293 = _1292.x;
float _1294 = _1292.y;
float2 _1298 = frac(float2(_1293 * _1294, _1293 + _1294));
float _1304 = _1285.x;
float _1306 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1304);
float2 _1307 = ((_1271 - _1272) + ((((_1298 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
float _1310 = _1307.y;
float2 _1314 = float2(_1307.x * 1.25f, _1310 * ((_1310 < 0.0f) ? 1.25f : 0.75f));
float _1317 = _1181 + _1304;
float _1321 = _1171 ? frac(_1317) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1317, 0.0f, 1.0f));
float _1333 = _1285.y;
float _1336 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1321) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1321)) * step(0.001000000047497451305389404296875f, smoothstep(_1306, 0.0f, length(_1314)))) * step(_1176, _1333 - 0.100000001490116119384765625f);
float _1339 = _1336 * _1270;
float _1347 = _1191.x;
float2 _1348 = _1184.zy * 1.0f;
float2 _1349 = floor(_1348);
float2 _1352 = frac(_1349 * float2(123.339996337890625f, 456.209991455078125f));
float2 _1356 = _1352 + dot(_1352, _1352 + 34.345001220703125f.xx).xx;
float _1357 = _1356.x;
float _1358 = _1356.y;
float2 _1362 = frac(float2(_1357 * _1358, _1357 + _1358));
float2 _1365 = frac((_1349 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
float2 _1369 = _1365 + dot(_1365, _1365 + 34.345001220703125f.xx).xx;
float _1370 = _1369.x;
float _1371 = _1369.y;
float2 _1375 = frac(float2(_1370 * _1371, _1370 + _1371));
float _1381 = _1362.x;
float _1383 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1381);
float2 _1384 = ((_1348 - _1349) + ((((_1375 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
float _1387 = _1384.y;
float2 _1391 = float2(_1384.x * 1.25f, _1387 * ((_1387 < 0.0f) ? 1.25f : 0.75f));
float _1394 = _1181 + _1381;
float _1398 = _1171 ? frac(_1394) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1394, 0.0f, 1.0f));
float _1410 = _1362.y;
float _1413 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1398) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1398)) * step(0.001000000047497451305389404296875f, smoothstep(_1383, 0.0f, length(_1391)))) * step(_1176, _1410 - 0.100000001490116119384765625f);
float _1416 = _1413 * _1347;
float2 _1429 = (float4(((clamp(_1237 / _1229.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1221.x)) * _1259) * _1193, _1262, _1256).xy + float4(((clamp(_1314 / _1306.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1298.x)) * _1336) * _1270, _1339, _1333).xy) + float4(((clamp(_1391 / _1383.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1375.x)) * _1413) * _1347, _1416, _1410).xy;
float _1431 = max(_1416, max(_1262, _1339));
float4 _1434 = float4(_1429, _1431, 0.0f);
float2 _1436 = _1185.xz * 1.0f;
float2 _1437 = floor(_1436);
float2 _1440 = frac(_1437 * float2(123.339996337890625f, 456.209991455078125f));
float2 _1444 = _1440 + dot(_1440, _1440 + 34.345001220703125f.xx).xx;
float _1445 = _1444.x;
float _1446 = _1444.y;
float2 _1450 = frac(float2(_1445 * _1446, _1445 + _1446));
float2 _1453 = frac((_1437 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
float2 _1457 = _1453 + dot(_1453, _1453 + 34.345001220703125f.xx).xx;
float _1458 = _1457.x;
float _1459 = _1457.y;
float2 _1463 = frac(float2(_1458 * _1459, _1458 + _1459));
float _1469 = _1450.x;
float _1471 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1469);
float2 _1472 = ((_1436 - _1437) + ((((_1463 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
float _1475 = _1472.y;
float2 _1479 = float2(_1472.x * 1.25f, _1475 * ((_1475 < 0.0f) ? 1.25f : 0.75f));
float _1482 = _1183 + _1469;
float _1486 = _1171 ? frac(_1482) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1482, 0.0f, 1.0f));
float _1498 = _1450.y;
float _1501 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1486) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1486)) * step(0.001000000047497451305389404296875f, smoothstep(_1471, 0.0f, length(_1479)))) * step(_1176, _1498 - 0.100000001490116119384765625f);
float _1504 = _1501 * _1193;
float2 _1509 = _1185.xy * 1.0f;
float2 _1510 = floor(_1509);
float2 _1513 = frac(_1510 * float2(123.339996337890625f, 456.209991455078125f));
float2 _1517 = _1513 + dot(_1513, _1513 + 34.345001220703125f.xx).xx;
float _1518 = _1517.x;
float _1519 = _1517.y;
float2 _1523 = frac(float2(_1518 * _1519, _1518 + _1519));
float2 _1526 = frac((_1510 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
float2 _1530 = _1526 + dot(_1526, _1526 + 34.345001220703125f.xx).xx;
float _1531 = _1530.x;
float _1532 = _1530.y;
float2 _1536 = frac(float2(_1531 * _1532, _1531 + _1532));
float _1542 = _1523.x;
float _1544 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1542);
float2 _1545 = ((_1509 - _1510) + ((((_1536 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
float _1548 = _1545.y;
float2 _1552 = float2(_1545.x * 1.25f, _1548 * ((_1548 < 0.0f) ? 1.25f : 0.75f));
float _1555 = _1183 + _1542;
float _1559 = _1171 ? frac(_1555) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1555, 0.0f, 1.0f));
float _1571 = _1523.y;
float _1574 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1559) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1559)) * step(0.001000000047497451305389404296875f, smoothstep(_1544, 0.0f, length(_1552)))) * step(_1176, _1571 - 0.100000001490116119384765625f);
float _1577 = _1574 * _1270;
float2 _1582 = _1185.zy * 1.0f;
float2 _1583 = floor(_1582);
float2 _1586 = frac(_1583 * float2(123.339996337890625f, 456.209991455078125f));
float2 _1590 = _1586 + dot(_1586, _1586 + 34.345001220703125f.xx).xx;
float _1591 = _1590.x;
float _1592 = _1590.y;
float2 _1596 = frac(float2(_1591 * _1592, _1591 + _1592));
float2 _1599 = frac((_1583 + 114.51399993896484375f.xx) * float2(123.339996337890625f, 456.209991455078125f));
float2 _1603 = _1599 + dot(_1599, _1599 + 34.345001220703125f.xx).xx;
float _1604 = _1603.x;
float _1605 = _1603.y;
float2 _1609 = frac(float2(_1604 * _1605, _1604 + _1605));
float _1615 = _1596.x;
float _1617 = 0.25f * lerp(0.60000002384185791015625f, 1.0f, _1615);
float2 _1618 = ((_1582 - _1583) + ((((_1609 * 2.0f) - 1.0f.xx) * 0.25f) * 1.0f)) - 0.5f.xx;
float _1621 = _1618.y;
float2 _1625 = float2(_1618.x * 1.25f, _1621 * ((_1621 < 0.0f) ? 1.25f : 0.75f));
float _1628 = _1183 + _1615;
float _1632 = _1171 ? frac(_1628) : lerp(0.2199999988079071044921875f, 0.85000002384185791015625f, clamp(_1628, 0.0f, 1.0f));
float _1644 = _1596.y;
float _1647 = ((smoothstep(0.20000000298023223876953125f, 0.2199999988079071044921875f, _1632) * smoothstep(0.85000002384185791015625f, 0.550000011920928955078125f, _1632)) * step(0.001000000047497451305389404296875f, smoothstep(_1617, 0.0f, length(_1625)))) * step(_1176, _1644 - 0.100000001490116119384765625f);
float _1650 = _1647 * _1347;
float2 _1658 = (float4(((clamp(_1479 / _1471.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1463.x)) * _1501) * _1193, _1504, _1498).xy + float4(((clamp(_1552 / _1544.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1536.x)) * _1574) * _1270, _1577, _1571).xy) + float4(((clamp(_1625 / _1617.xx, (-1.0f).xx, 1.0f.xx) * lerp(0.25f, 0.5f, _1609.x)) * _1647) * _1347, _1650, _1644).xy;
float4 _1663 = float4(_1658, max(_1650, max(_1504, _1577)), 0.0f);
float _1665 = step(max(float2(_1229 * _1259, _410) * _1193, max(float2(_1306 * _1336, _410) * _1270, float2(_1383 * _1413, _410) * _1347)).x, 0.00999999977648258209228515625f);
float2 _1669 = _1434.xy + (_1663.xy * _1665);
float3 _1678 = float3((_1143.xy * 2.0f) - 1.0f.xx, 0.0f) + float3(_1669.x, _1669.y, 0.0f.xxx.z);
float2 _1682 = float2(0.0f, (_18_m10.x * _18_m92.z) * 0.75f);
float3 _1685 = float3(_1112.x, 0.0f, _1112.z);
float3 _1691 = abs(_1685 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1685, _1685)))) - 0.20000000298023223876953125f.xxx;
float3 _1694 = max((_1691 * _1691) * _1691, 6.103515625e-05f.xxx);
float3 _1697 = _1694 / dot(_1694, 1.0f.xxx).xxx;
float _1716 = _1697.z;
float _1718 = _1697.x;
float4 _1720 = (_51.SampleBias(_24, _1128, _18_m16) * _1716) + (_51.SampleBias(_24, _1133, _18_m16) * _1718);
float2 _1732 = _1678.xy + ((((_1720.xy * 2.0f) - 1.0f.xx) * ((_51.SampleBias(_24, _1128 + _1682, _18_m16).w * _1716) + (_51.SampleBias(_24, _1133 + _1682, _18_m16).w * _1718))) * _1167);
float3 _1733 = float3(_1732.x, _1732.y, _1678.z);
float _1734 = _1720.z;
float _1739 = max(max(max(_1434.zw * step(0.00999999977648258209228515625f, _1431), _1663.zw * _1665).x, step(1.0099999904632568359375f - _1167, _1143.z)), smoothstep(1.0f - _1734, 1.10000002384185791015625f - _1734, _1167) * _1167);
float2 _1740 = _1732.xy;
_1733.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1740, _1740), 0.0f, 1.0f)));
float3 _1747 = normalize(_1733);
float3 _1748 = cross(_515, float3(0.0f, 1.0f, 0.0f));
bool3 _1751 = (dot(_1748, _1748) > 6.103515625e-05f).xxx;
float3 _1752 = normalize(_1748);
float3 _1753 = float3(_1751.x ? _1752.x : float3(1.0f, 0.0f, 0.0f).x, _1751.y ? _1752.y : float3(1.0f, 0.0f, 0.0f).y, _1751.z ? _1752.z : float3(1.0f, 0.0f, 0.0f).z);
float _1764 = min(_485, 0.0500000007450580596923828125f);
float _1765 = lerp(_485, _1764, _1739);
float _1782 = lerp(1.0f, 0.5f, (_1155 * (1.0f - _1101)) * (1.0f - _1164));
_1790 = normalize(lerp(_515, normalize(((_1753 * _1747.x) + (cross(_1753, _515) * _1747.y)) + (_515 * _1747.z)), _1739.xxx));
_1791 = _1739;
_1792 = _1764;
_1793 = max(_1765 - ((0.20000000298023223876953125f * _1101) * _1155), min(0.20000000298023223876953125f, _1765));
_1794 = _509 * _1782;
_1795 = lerp(_478, _478 * ((smoothstep(0.699999988079071044921875f, 0.300000011920928955078125f, dot(_478, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))) * 0.5f) + 1.0f).xxx, (_1739 * _1162).xxx) * _1782;
}
else
{
_1790 = _515;
_1791 = 0.0f;
_1792 = 0.00999999977648258209228515625f;
_1793 = _485;
_1794 = _509;
_1795 = _478;
}
float3 _1923;
float _1924;
float3 _1925;
float3 _1926;
float _1927;
[branch]
if ((_553 - _49_m20) > 0.00999999977648258209228515625f)
{
bool3 _1800 = _453.xxx;
float3 _1802 = _9.xzy * float3(1.0f, 1.0f, -1.0f);
float3 _1803 = float3(_1800.x ? _1802.x : _9.x, _1800.y ? _1802.y : _9.y, _1800.z ? _1802.z : _9.z);
float3 _1806 = _1803 * _18_m92.z;
float3 _1808 = float3(_1800.x ? _8.xzy.x : _8.x, _1800.y ? _8.xzy.y : _8.y, _1800.z ? _8.xzy.z : _8.z);
float3 _1810 = abs(_1808) - 0.20000000298023223876953125f.xxx;
float3 _1813 = max((_1810 * _1810) * _1810, 6.103515625e-05f.xxx);
float3 _1816 = _1813 / dot(_1813, 1.0f.xxx).xxx;
float4 _1839 = ((_52.SampleBias(_24, _1806.xz, _18_m16) * _1816.y) + (_52.SampleBias(_24, _1806.xy, _18_m16) * _1816.z)) + (_52.SampleBias(_24, _1806.zy, _18_m16) * _1816.x);
float _1840 = _1808.y;
float _1847 = clamp(_553 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1803.y) * clamp(_553 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
float _1853 = _1847 * (2.0f - _1847);
float _1858 = smoothstep(2.0f - _1853, 2.349999904632568359375f - _1853, ((_1840 * 0.64999997615814208984375f) + 0.3499999940395355224609375f) + _1839.z) * float(gl_FrontFacing);
float _1870 = lerp(1.0f, 0.5f, ((_1847 * (1.0f - smoothstep(0.3499999940395355224609375f, 0.100000001490116119384765625f, dot(_1795 * (1.0f - _49_m2), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f))))) * _1839.w) * ((_1840 * 0.25f) + 0.75f));
float3 _1872 = _1858.xxx;
float2 _1878 = (_1839.xy * 2.0f) - 1.0f.xx;
float3 _1879 = float3(_1878.x, _1878.y, _408.z);
float2 _1880 = _1878.xy;
_1879.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1880, _1880), 0.0f, 1.0f)));
float2 _1888 = _1879.xy * 2.0f;
float3 _1890 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1888.x, _1888.y, _1879.z), _1872);
float3 _1894 = _1890 * rsqrt(max(6.103515625e-05f, dot(_1890, _1890)));
float _1895 = _515.y;
float _1898 = step(0.00999999977648258209228515625f, 1.0f - (_1895 * _1895));
float _1902 = lerp(_515.z, _1895, _1898);
float3 _1909 = (float3(0.0f, _1898, 1.0f - _1898) - (_515 * _1902)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1902 * _1902)));
_1923 = ((cross(_1909, _515) * _1894.x) + (_1909 * _1894.y)) + (_515 * _1894.z);
_1924 = lerp(_1793, 0.89999997615814208984375f, clamp(_1858 * 4.0f, 0.0f, 1.0f));
_1925 = lerp(_1794 * _1870, 0.3079999983310699462890625f.xxx, _1872);
_1926 = lerp(_1795 * _1870, 0.87999999523162841796875f.xxx, _1872);
_1927 = lerp(_49_m2, 0.0f, _1858);
}
else
{
_1923 = _515;
_1924 = _1793;
_1925 = _1794;
_1926 = _1795;
_1927 = _49_m2;
}
float _1929 = 0.959999978542327880859375f - (_1927 * 0.959999978542327880859375f);
float3 _1930 = _1926 * _1929;
float3 _1933 = lerp(0.039999999105930328369140625f.xxx * _49_m1, _1926, _1927.xxx);
float3 _1934 = _1925 * _1929;
float _1936 = max(_1924 * _1924, 0.0078125f);
bool _1943 = (1.0f - max(_21_m0[_11]._m1.y, _21_m0[_11]._m1.z)) < 0.9900000095367431640625f;
float2 _1956 = (_6.xy / max(_6.z, 9.9999999392252902907785028219223e-09f).xx) - (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx);
_1956.y = -_1956.y;
float2 _1972 = lerp(((sqrt(sqrt(abs(_1956 * 0.5f))) * float2(int2(sign(_1956)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1943).xx);
float4 _1974 = float4(_1972.x, _1972.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
_1974.z = 1.0f;
_1974.w = _1943 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
float3 _1987 = lerp(-_32_m0.xyz, _18_m93.xyz, _18_m83.w.xxx);
float3 _1991 = normalize(float3(_1987.x, 6.103515625e-05f, _1987.z));
float3 _2001 = lerp(_32_m3.xyz, _18_m87.xyz, _18_m94.y.xxx);
float3 _2007 = _2001 * lerp(_32_m3.w, _18_m87.w, _18_m94.w);
int _2011 = int(_517.x);
int _2012 = int(_517.y);
float4 _2016 = _40.Load(int3(int3(_2011, _2012, 0).xy, 0));
float _2021 = _2016.y;
float _2024 = lerp(lerp(1.0f, _2016.x, _36_m6.x), 1.0f, _18_m83.z);
float _2025 = dot(_1923, _1987);
float3 _2032 = _1934 * _18_m82.z;
float3 _2033 = _2032 * 0.64999997615814208984375f;
float _2037 = dot(_1930, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
float _2050 = clamp(-dot(_1991.xz, normalize(_527.xz)), 0.0f, 1.0f);
float _2054 = 1.0f - _18_m94.x;
float _2062 = smoothstep(0.25f, 1.0f, clamp(lerp(_2025, ((-_2025) * ((_2025 * 0.5f) - 1.0f)) + 0.5f, (_2050 * smoothstep(0.25f, 0.75f, 1.0f - abs(_527.y))) * _2054) + (_18_m93.w * _18_m94.x), -1.0f, 1.0f));
float _2069 = max(max(_2062, _2062), _2062) - min(min(_2062, _2062), _2062);
float _2071 = smoothstep(0.25f, 1.0f, dot(_1923, _527));
float _2078 = min(min(_2021, 1.0f), _2062);
float _2079 = _2071 * _2021;
float3 _2083 = ((clamp(dot(_515, _18_m88.xyz) + _18_m89.x, 0.0f, 1.0f) * _18_m89.y) + _18_m89.z).xxx * lerp(_1069, 1.0f.xxx, (_18_m83.y * _2078).xxx);
float3 _2085 = _2078.xxx;
float3 _2108 = _2024.xxx;
float3 _2109 = lerp((_2083 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1070), 1.5f), clamp(_1070, 1.25f, 1.75f), _18_m83.x)) * _18_m82.w, (lerp(dot(_2007, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2007, _2085) + ((_2083 * clamp(_1070, 0.0f, 1.5f)) * ((1.0f - _18_m94.y).xxx + (_2001 * _18_m94.y)))) * _18_m82.y, _2108);
float3 _2110 = lerp(lerp(lerp(dot(_2033, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2033, 1.2000000476837158203125f.xxx), _2032, clamp((_2021 * _2071) + _2062, 0.0f, 1.0f).xxx), _1930, _2085);
float3 _2116 = _2110 * ((1.0f - _2069).xxx + (_2062.xxxx.xyz * _2069));
float3 _2125 = lerp(lerp(_2032, lerp(_2037.xxx, _1930, 1.2000000476837158203125f.xxx), _2079.xxx), _2116 * clamp(dot(_2110, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_2116, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _2108);
float4 _2129 = float4(_2125, _2024);
float _2131 = lerp(_2079, _2078, _2024);
float _2134 = lerp(_18_m82.z, 1.0f, _2131);
float3 _2142 = float3(_527.x, lerp(0.5f, _1987.y, _2024), _527.z);
float _2155 = clamp(dot(_1790, _444), 0.0f, 1.0f);
float _2156 = dot(_1790, normalize(((_1987 * _2024) + ((_2142 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2142, _2142)))) * 2.0f)) + (_444 * (2.0f + _2024))));
float _2157 = _1936 * _1936;
float _2161 = (((_2156 * _2157) - _2156) * _2156) + 1.0f;
float _2162 = _2161 * _2161;
float _2166 = 2.0f * _2155;
float _2168 = (1.0f + _2155) - _2155;
float _2185 = (1.0f - _49_m6) + (_489 * _49_m6);
float3 _2187 = ((_2109 * _2125) * _2185) + (((_1933 * clamp((((_2157 != _2162) ? (_2157 / _2162) : 1.0f) * (0.5f / ((_2166 + (_1936 * _2168)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_2109 * (((_2131 * 0.5f) + 0.5f) * _2134)) * 1.0f)) * _18_m95.w);
float _2188 = dot(_2187, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
float _2191 = clamp(_2188 - 0.5f, 0.0f, 0.5f);
float3 _2227 = normalize(cross(_527, lerp(float3(_18_m91.xy, 0.0f), (float3(_16_m0[0].x, _16_m0[0].y, _16_m0[0].z) * _18_m91.x) + (float3(_16_m0[1].x, _16_m0[1].y, _16_m0[1].z) * _18_m91.y), _18_m97.w.xxx)));
float _2233 = dot(_444, _1923);
float _2235 = 1.0f - abs(_2233);
float _2257 = dot(_1991, _1923);
float _2269 = 1.0f - _2024;
float _2296 = lerp(_1924, _1792, _1791);
float _2297 = _2296 * _2296;
float _2298 = _2155 * _2155;
float _2299 = _2298 * _2155;
float2 _2300 = float2(1.0f, _2155);
float2 _2303 = float2(1.0f, _2297);
float3 _2306 = float3(1.0f, _2297, (_2297 * _2297) * _2297);
float _2311 = dot(mul(_2300, float2x2(float2(0.0365463010966777801513671875f, 9.0631999969482421875f), float2(3.3270699977874755859375f, -9.0475597381591796875f))), _2303) / dot(mul(float3(1.0f, _2298, _2299), float3x3(float3(1.0f, 9.044010162353515625f, 5.565889835357666015625f), float3(3.596849918365478515625f, -16.3173999786376953125f, 19.788600921630859375f), float3(-1.36772000789642333984375f, 9.2294902801513671875f, -20.212299346923828125f))), _2306);
float _2316 = dot(mul(_2300, float2x2(float2(0.99044001102447509765625f, 1.29677999019622802734375f), float2(-1.28514003753662109375f, -0.755906999111175537109375f))), _2303) / dot(mul(float3(1.0f, _2155, _2299), float3x3(float3(1.0f, 20.3225002288818359375f, 121.5630035400390625f), float3(2.9233798980712890625f, -27.0301990509033203125f, 626.1300048828125f), float3(59.41880035400390625f, 222.5919952392578125f, 316.62701416015625f))), _2306);
float3 _2319 = (_1933 * _2311) + _2316.xxx;
float _2320 = _2311 + _2316;
float3 _2326 = -_444;
float3 _2327 = reflect(_2326, _1790);
float _2332 = _2327.x;
float _2334 = _2327.z;
float3 _2337 = _2327;
_2337.x = (_2332 * _18_m98.y) + (_2334 * _18_m98.x);
_2337.z = (_2334 * _18_m98.y) - (_2332 * _18_m98.x);
float3 _2358 = lerp(_2188.xxx, _2187, ((_2191 * _2191) + 1.0f).xxx) + (((((_18_m90.xyz * smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _18_m91.w), lerp(0.89999997615814208984375f, 0.5f, _18_m91.w), _2235)) * _18_m90.w) * min(min(clamp(dot(_500, _2227) + 1.0f, 0.0f, 1.0f), 1.0f), _2021)) * (lerp(0.25f.xxx, _1930, _18_m91.z.xxx) * clamp(dot(_2227, _1923), 0.0f, 1.0f))) + ((((((lerp(_1068 * (1.0f / max(max(max(_1068.x, _1068.y), _1068.z) * 0.5f, 1.0f)), _2007, _2108) * clamp(lerp(dot(_1067.xyz, _1923) * _1067.w, ((-_2257) * ((_2257 * 0.5f) - 1.0f)) + 0.5f, _2024), 0.0f, 1.0f)) * ((_2269 + (_2050 * _2024)) * _2054)) * smoothstep(0.60000002384185791015625f, 0.800000011920928955078125f, _2235)) * min(1.0f, _2021)) * (_2269 + (smoothstep(0.100000001490116119384765625f, 0.039999999105930328369140625f, _2037) * _2024))) * max(0.1500000059604644775390625f.xxx, _1930)));
float2 _2360 = float2(_517);
float2 _2362 = floor(_2360 * 0.03125f);
int _2370 = int((_2362.x + (_2362.y * _34_m9)) * 8.0f);
float _2377 = floor(_425 - (_18_m3.y * _34_m15));
float _2381 = clamp(_2377, 0.0f, _34_m11 - 1.0f);
int _2383 = int(_2381 * 8.0f);
float3 _2385;
_2385 = _2358 + (((_55.SampleLevel(_23, _2337, (1.2000000476837158203125f * log2(max(_2296, 0.001000000047497451305389404296875f))) + 5.0f).xyz * ((_2319 + ((_1933 * ((1.0f - _2320) / _2320)) * _2319)) * 1.0f)) * ((clamp(_1070, 0.5f, 1.5f) * _18_m82.w) * _2134)) * _1069);
float3 _2386;
[loop]
for (int _2388 = 0; _2388 <= 7; _2385 = _2386, _2388++)
{
uint _2409 = (_2377 <= _2381) ? (_28.Load(uint((_34_m2 + _2370) + _2388) * 4 + 0) & _28.Load(uint((_34_m3 + _2383) + _2388) * 4 + 0)) : 0u;
uint _2410 = uint(_2388);
_2386 = _2385;
uint _2415;
float3 _2412;
[loop]
for (uint _2414 = _2409; _2414 != 0u; _2386 = _2412, _2414 = _2415)
{
uint _2419 = firstbitlow(_2414);
_2415 = _2414 ^ (1u << (_2419 & 31u));
int _2425 = int((32u * _2410) + _2419) * 8;
int _2428 = _2425 + 1;
int _2431 = _2425 + 2;
int _2434 = _2425 + 3;
int _2437 = _2425 + 4;
int _2440 = _2425 + 5;
int _2443 = _2425 + 6;
int _2446 = _2425 + 7;
uint _2450 = uint(_32_m6[_2440].w);
float _2525;
if ((_2450 & 1u) == 1u)
{
uint _2456 = asuint(_32_m6[_2440].x);
uint _2463 = asuint(_32_m6[_2440].y);
uint _2470 = asuint(_32_m6[_2440].z);
uint _2477 = asuint(_32_m6[_2443].x);
uint _2484 = asuint(_32_m6[_2443].y);
uint _2491 = asuint(_32_m6[_2443].z);
float3 _2510 = abs(mul(float4(_493 - _32_m6[_2428].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_2456).x, spvUnpackHalf2x16(_2470).x, spvUnpackHalf2x16(_2484).x, 0.0f), float4(spvUnpackHalf2x16(_2456 >> 16u).x, spvUnpackHalf2x16(_2470 >> 16u).x, spvUnpackHalf2x16(_2484 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_2463).x, spvUnpackHalf2x16(_2477).x, spvUnpackHalf2x16(_2491).x, 0.0f), float4(spvUnpackHalf2x16(_2463 >> 16u).x, spvUnpackHalf2x16(_2477 >> 16u).x, spvUnpackHalf2x16(_2491 >> 16u).x, 0.0f))).xyz);
float _2517 = _32_m6[_2446].x * 0.5f;
float _2523 = 1.0f - clamp((max(max(_2510.x, _2510.y), _2510.z) - (_2517 + 0.5f)) / (0.5f - _2517), 0.0f, 1.0f);
_2525 = _2523 * _2523;
}
else
{
_2525 = 1.0f;
}
if (false || (_2525 < 0.001000000047497451305389404296875f))
{
_2412 = _2386;
continue;
}
float3 _3320;
do
{
uint _2533 = uint(_32_m6[_2425].w);
[branch]
if (_2533 >= 4u)
{
_3320 = _2386;
break;
}
float3 _3319;
if (_32_m6[_2425].w < 1.5f)
{
float3 _3318;
do
{
uint _2544 = asuint(_32_m6[_2434].w);
if ((_2544 == 16u) || ((_32_m6[_2434].z + _18_m94.z) < 0.5f))
{
_3318 = _2386;
break;
}
bool _2555 = (_2533 & 1u) == 0u;
bool _2559 = (!_2555) && (_32_m6[_2431].z > 0.0f);
bool _2560 = _2544 == 4u;
float _2561 = float(_2555);
float _2569 = (0.5f + (0.5f * _32_m6[_2431].y)) - abs(_32_m6[_2431].x);
float _2570 = _32_m6[_2431].y - _2569;
float _2577 = abs(max((1.0f - abs(_2569)) - abs(_2570), 0.00048828125f));
float3 _2581 = normalize(float3(_2569, _2570, (_32_m6[_2431].x >= 0.0f) ? _2577 : (-_2577)));
float _2587 = lerp(_32_m6[_2443].w, max(2.0f * _32_m6[_2437].y, 0.100000001490116119384765625f), float(_2560));
float3 _2592 = _32_m6[_2428].xyz - _493;
float3 _2593 = -_2581;
float3 _2598 = lerp(_2592, _2593 * dot(_2592, _2593), (float(_2560 && (_32_m6[_2437].z > 0.5f)) * _2561).xxx);
float _2599 = dot(_2598, _2598);
float _2600 = rsqrt(_2599);
float3 _2601 = _2598 * _2600;
float3 _2634;
float _2635;
if (_2559)
{
float3 _2605 = (_2581 * _32_m6[_2431].z) * 0.5f;
float3 _2606 = _2598 - _2605;
float3 _2607 = _2598 + _2605;
float _2608 = length(_2606);
float _2609 = length(_2607);
float3 _2618 = normalize(cross(cross(_2581, _2601), _2581));
_2634 = _2618;
_2635 = ((1.0f / ((((_2608 * _2609) + dot(_2606, _2607)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2618, _2606) / _2608) + (dot(_2618, _2607) / _2609)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_32_m6[_2431].z * _2600, 0.0f, 1.0f)), 0.0f, 1.0f));
}
else
{
_2634 = _2601;
_2635 = 1.0f;
}
float _2657;
if (_2587 < 0.0f)
{
float _2645 = _2599 * (_32_m6[_2428].w * _32_m6[_2428].w);
float _2648 = clamp(1.0f - (_2645 * _2645), 0.0f, 1.0f);
_2657 = lerp(1.0f / (_2599 + 1.0f), _2635, float(_2559)) * (_2648 * _2648);
}
else
{
float3 _2651 = _2598 * _32_m6[_2428].w;
_2657 = _2635 * pow(1.0f - clamp(dot(_2651, _2651), 0.0f, 1.0f), _2587);
}
float _2662 = clamp((dot(_2634, _2593) - _32_m6[_2431].z) * _32_m6[_2431].w, 0.0f, 1.0f);
float _2665 = _2657 * lerp(1.0f, _2662 * _2662, _2561);
int _2667 = int(_32_m6[_2446].w);
float _2771;
if ((!_2559) && (_2667 >= 0))
{
uint _2673 = uint(_2667);
float2 _2764;
[branch]
if (_2561 != 0.0f)
{
float4 _2685 = mul(_58_m1[_2673], float4(_493.x, _559, _493.z, 1.0f));
_2764 = _58_m0[_2673].xy + (clamp(_2685.xy / _2685.w.xx, 0.0f.xx, 1.0f.xx) * _58_m0[_2673].zw);
}
else
{
float3 _2705 = mul(float4(-_2598, 0.0f), _58_m1[_2673]).xyz;
float3 _415 = _2705;
float3 _414 = _2705;
float3 _413 = abs(_2705);
uint _2714 = uint(int(_413.y > _413.x));
uint _2720 = (_413.z > _413[_2714]) ? 2u : _2714;
uint _2726 = (_2720 * 2u) + uint(_414[_2720] < 0.0f);
float _2730 = abs(_415[_2726 / 2u]);
float _2750 = 0.5f - (0.000244140625f / _58_m0[_2673].w);
_2764 = _58_m0[_2673].xy + (clamp(float2((float(_2726) + ((((_415[uint(_365[_2726].x)] * _366[_2726].x) / _2730) * _2750) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_415[uint(_365[_2726].y)] * _366[_2726].y) / _2730) * _2750)), 0.0f.xx, 1.0f.xx) * _58_m0[_2673].zw);
}
_2771 = _2665 * _56.SampleLevel(_23, _2764, 0.0f).x;
}
else
{
_2771 = _2665;
}
float _2772 = _2771 * _2525;
float3 _3317;
do
{
float3 _3316;
[branch]
if (_2772 > 9.9999997473787516355514526367188e-05f)
{
[branch]
if (_2560)
{
_3317 = lerp(_2386, _32_m6[_2425].xyz, (_2772 * (_32_m6[_2437].x * ((1.0f - _32_m6[_2437].w) + (smoothstep(-0.5f, 0.5f, dot(_515, _2634)) * _32_m6[_2437].w)))).xxx);
break;
}
float _2792 = dot(_1923, _2634);
float _2793 = clamp(_2792, 0.0f, 1.0f);
float _3192;
if (_2544 != 0u)
{
bool _2799 = _2555 || ((_2450 & 2u) != 0u);
int _2849;
if (_2799)
{
_2849 = int(_32_m6[_2434].x);
}
else
{
uint _2806 = asuint(_32_m6[_2431].w);
uint _2807 = asuint(_32_m6[_2434].x);
float3 _2808 = _493 - _32_m6[_2428].xyz;
float3 _2809 = abs(_2808);
float _2810 = _2809.x;
float _2811 = _2809.y;
float _2813 = _2809.z;
int _2846;
if ((_2810 > _2811) && (_2810 > _2813))
{
_2846 = int((_2808.x > 0.0f) ? (_2806 & 1023u) : ((_2806 >> 10u) & 1023u));
}
else
{
int _2845;
if (_2811 > _2813)
{
_2845 = int((_2808.y > 0.0f) ? ((_2806 >> 20u) & 1023u) : (_2807 & 1023u));
}
else
{
_2845 = int((_2808.z > 0.0f) ? ((_2807 >> 10u) & 1023u) : ((_2807 >> 20u) & 1023u));
}
_2846 = _2845;
}
_2849 = (_2846 == 1023) ? (-1) : _2846;
}
bool _2850 = _2849 >= 0;
float _3191;
if (_2850)
{
float3 _2854 = _493 - _32_m6[_2428].xyz;
uint _2864 = asuint(_36_m11.x) + (uint(_2849) * 96u);
uint _2866 = (_2864 + 64u) >> 2u;
uint _2869 = _2866 + 1u;
uint _2872 = _2866 + 2u;
uint _2875 = _2866 + 3u;
float4 _2879 = asfloat(uint4(_39.Load(_2866 * 4 + 0), _39.Load(_2869 * 4 + 0), _39.Load(_2872 * 4 + 0), _39.Load(_2875 * 4 + 0)));
uint _2887 = _2864 >> 2u;
uint _2902 = (_2864 + 16u) >> 2u;
uint _2917 = (_2864 + 32u) >> 2u;
uint _2932 = (_2864 + 48u) >> 2u;
float4 _2952 = mul(transpose(float4x4(asfloat(uint4(_39.Load(_2887 * 4 + 0), _39.Load((_2887 + 1u) * 4 + 0), _39.Load((_2887 + 2u) * 4 + 0), _39.Load((_2887 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2902 * 4 + 0), _39.Load((_2902 + 1u) * 4 + 0), _39.Load((_2902 + 2u) * 4 + 0), _39.Load((_2902 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2917 * 4 + 0), _39.Load((_2917 + 1u) * 4 + 0), _39.Load((_2917 + 2u) * 4 + 0), _39.Load((_2917 + 3u) * 4 + 0))), asfloat(uint4(_39.Load(_2932 * 4 + 0), _39.Load((_2932 + 1u) * 4 + 0), _39.Load((_2932 + 2u) * 4 + 0), _39.Load((_2932 + 3u) * 4 + 0))))), float4((_493 - ((_2854 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2854, _2854)))) * _2879.x)) + (_515 * (_2879.y * 5.0f)), 1.0f));
float3 _2956 = _2952.xyz / _2952.w.xxx;
uint _2958 = (_2864 + 80u) >> 2u;
float4 _2971 = asfloat(uint4(_39.Load(_2958 * 4 + 0), _39.Load((_2958 + 1u) * 4 + 0), _39.Load((_2958 + 2u) * 4 + 0), _39.Load((_2958 + 3u) * 4 + 0)));
float2 _2972 = _2956.xy;
float2 _2974 = _2971.xy;
float3 _2978 = _2956.xyz;
bool3 _2979 = bool3(_2978.x <= 0.0f.xxx.x, _2978.y <= 0.0f.xxx.y, _2978.z <= 0.0f.xxx.z);
bool3 _2980 = bool3(_2978.x >= 1.0f.xxx.x, _2978.y >= 1.0f.xxx.y, _2978.z >= 1.0f.xxx.z);
float _2983 = _2956.z;
float2 _2994 = ((_2972 * (_2971.zw - _2974)) + _2974).xy * _36_m10.zw;
float2 _2996 = floor(_2994 + 0.5f.xx);
float2 _2997 = _2994 - _2996;
float _2998 = _2997.x;
float _2999 = _2998 + 0.5f;
float _3000 = _2999 * _2999;
float _3003 = 1.0f - _2998;
float _3004 = min(_2998, 0.0f);
float _3007 = _2998 + 1.0f;
float _3008 = max(_2998, 0.0f);
float _3019 = _2997.y;
float _3020 = _3019 + 0.5f;
float _3021 = _3020 * _3020;
float _3024 = 1.0f - _3019;
float _3025 = min(_3019, 0.0f);
float _3028 = _3019 + 1.0f;
float _3029 = max(_3019, 0.0f);
float3 _3041 = float3(0.1599999964237213134765625f * _3003, 0.1599999964237213134765625f * ((_3007 - (_3008 * _3008)) + 1.0f), _3000 * 0.07999999821186065673828125f);
float3 _3042 = float3(0.1599999964237213134765625f * ((_3000 * 0.5f) - _2998), 0.1599999964237213134765625f * ((_3003 - (_3004 * _3004)) + 1.0f), 0.1599999964237213134765625f * _3007) + _3041;
float3 _3044 = float3(0.1599999964237213134765625f * _3024, 0.1599999964237213134765625f * ((_3028 - (_3029 * _3029)) + 1.0f), _3021 * 0.07999999821186065673828125f);
float3 _3045 = float3(0.1599999964237213134765625f * ((_3021 * 0.5f) - _3019), 0.1599999964237213134765625f * ((_3024 - (_3025 * _3025)) + 1.0f), 0.1599999964237213134765625f * _3028) + _3044;
float3 _3051 = ((_3041 / _3042) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.xxx;
float3 _3053 = ((_3044 / _3045) + float3(-2.5f, -0.5f, 1.5f)) * _36_m10.yyy;
float2 _3055 = _2996 * _36_m10.xy;
float _3056 = _3051.x;
float _3057 = _3053.x;
float _3060 = _3051.y;
float _3063 = _3051.z;
float _3066 = _3053.y;
float _3073 = _3053.z;
float _3080 = _3042.x;
float _3081 = _3045.x;
float _3083 = _3042.y;
float _3085 = _3042.z;
float _3087 = _3045.y;
float _3091 = _3045.z;
float _3149 = (((((((_3080 * _3081) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3056, _3057), _407).xy, _2983)) + ((_3083 * _3081) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3060, _3057), _407).xy, _2983))) + ((_3085 * _3081) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3063, _3057), _407).xy, _2983))) + ((_3080 * _3087) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3056, _3066), _407).xy, _2983))) + ((_3083 * _3087) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3060, _3066), _407).xy, _2983))) + ((_3085 * _3087) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3063, _3066), _407).xy, _2983))) + ((_3080 * _3091) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3056, _3073), _407).xy, _2983));
float4 _3172 = asfloat(uint4(_39.Load(_2866 * 4 + 0), _39.Load(_2869 * 4 + 0), _39.Load(_2872 * 4 + 0), _39.Load(_2875 * 4 + 0)));
float _3173 = _3172.w;
float2 _3175 = min(_2972, 1.0f.xx - _2972);
_3191 = _2850 ? lerp(1.0f, (any(bool3(_2979.x || _2980.x, _2979.y || _2980.y, _2979.z || _2980.z)) || ((asuint(_2983) & 2147483647u) > 2139095040u)) ? 1.0f : ((_3149 + ((_3083 * _3091) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3060, _3073), _407).xy, _2983))) + ((_3085 * _3091) * _37.SampleCmpLevelZero(_25, float3(_3055 + float2(_3063, _3073), _407).xy, _2983))), _2799 ? min(_3173, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_3172.z - _2952.w) * 0.25f, min(_3175.x, _3175.y)))) : _3173) : 1.0f;
}
else
{
_3191 = clamp(dot(_500, _2634) + 1.0f, 0.0f, 1.0f);
}
_3192 = _3191;
}
else
{
_3192 = 1.0f;
}
float _3272;
float3 _3273;
float _3274;
float3 _3275;
float3 _3276;
float _3277;
float _3278;
[branch]
if (_2544 == 0u)
{
float3 _3198 = _32_m6[_2425].xyz * _2772;
float3 _3211 = _2129.xyz;
_3272 = _2772;
_3273 = (_32_m6[_2425].xyz * ((1.0f - _32_m6[_2437].y) + ((1.0f / max(1.0f, max(max(_3198.x, _3198.y), _3198.z) * lerp(0.75f, 0.5f, _2269))) * _32_m6[_2437].y))) * lerp(0.25f * _32_m6[_2437].x, 1.0f, clamp(_2792 + 0.5f, 0.0f, 1.0f));
_3274 = _2793;
_3275 = _3211;
_3276 = _3211;
_3277 = 1.0f;
_3278 = 0.0f;
}
else
{
float _3266;
float _3267;
float3 _3268;
float3 _3269;
float _3270;
float _3271;
if (_2544 == 3u)
{
_3266 = _2772 * (smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _32_m6[_2437].x), lerp(0.89999997615814208984375f, 0.5f, _32_m6[_2437].x), _2235) * _3192);
_3267 = clamp(dot(_1923, -normalize(cross(_527, cross(_527, _2634)))), 0.0f, 1.0f);
_3268 = lerp(0.5f.xxx, _1930, _32_m6[_2437].y.xxx);
_3269 = 0.0f.xxx;
_3270 = 1.0f;
_3271 = 0.0f;
}
else
{
bool _3236 = _2544 == 1u;
float _3260;
float3 _3261;
float _3262;
float _3263;
if (_3236)
{
_3260 = clamp(clamp(_2792 + _32_m6[_2437].x, -1.0f, 1.0f), 0.0f, 1.0f) * _3192;
_3261 = _1934 * _32_m6[_2437].y;
_3262 = 1.0f;
_3263 = 0.0f;
}
else
{
bool _3246 = _2544 == 2u;
float _3258;
if (_3246)
{
_3258 = smoothstep(_32_m6[_2437].x + 0.0500000007450580596923828125f, _32_m6[_2437].x - 0.0500000007450580596923828125f, _1924) * ((1.0f - _32_m6[_2437].z) + (step(0.5f, _1927) * _32_m6[_2437].z));
}
else
{
_3258 = 1.0f;
}
_3260 = _2793;
_3261 = 0.0f.xxx;
_3262 = _3258;
_3263 = _3246 ? _32_m6[_2437].y : 0.0f;
}
bool3 _3264 = _3236.xxx;
_3266 = _2772;
_3267 = _3260;
_3268 = float3(_3264.x ? _1930.x : 0.0f.xxx.x, _3264.y ? _1930.y : 0.0f.xxx.y, _3264.z ? _1930.z : 0.0f.xxx.z);
_3269 = _3261;
_3270 = _3262;
_3271 = _3263;
}
_3272 = _3266;
_3273 = _32_m6[_2425].xyz;
_3274 = _3267;
_3275 = _3268;
_3276 = _3269;
_3277 = _3270;
_3278 = _3271;
}
float3 _3306;
[branch]
if (_2544 != 3u)
{
float _3283 = lerp(_1936, 0.00999999977648258209228515625f, _3278);
float _3286 = dot(_1790, normalize(_2634 + _444));
float _3287 = _3283 * _3283;
float _3291 = (((_3286 * _3287) - _3286) * _3286) + 1.0f;
float _3292 = _3291 * _3291;
_3306 = ((_1933 * clamp((((_3287 != _3292) ? (_3287 / _3292) : 1.0f) * (0.5f / ((_2166 + (_3283 * _2168)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _3277) * _32_m6[_2446].z;
}
else
{
_3306 = 0.0f.xxx;
}
float3 _3309 = _3273 * _3272;
_3316 = _2386 + (((_3309 * lerp(_3276, _3275, _3274.xxx)) * _2185) + ((_3309 * _3306) * _3274));
}
else
{
_3316 = _2386;
}
_3317 = _3316;
break;
}
while(false);
_3318 = _3317;
break;
}
while(false);
_3319 = _3318;
}
else
{
_3319 = _2386;
}
_3320 = _3319;
break;
}
while(false);
_2412 = _3320;
}
}
float3 _3360;
[branch]
if (_49_m12 > 0.5f)
{
_3360 = lerp(lerp(0.5f.xxx, lerp(dot(_2385, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _2385, _49_m14.xxx), _49_m15.xxx) * _49_m13, _49_m26.xyz, _49_m26.w.xxx) + ((_49_m27.xyz * smoothstep(1.0f - _49_m16, 1.0f, 1.0f - clamp(_2233, 0.0f, 1.0f))) * _49_m17);
}
else
{
_3360 = _2385;
}
float4 _3367 = float4(_3360 * _18_m20.y, _489);
_3367.w = (_49_m8 == 1.0f) ? _489 : 1.0f;
float4 _3754;
[branch]
if (_18_m94.w < 0.5f)
{
float _3391 = _559 * _18_m46.w;
float _3396 = max(0.00999999977648258209228515625f, _3391 + _18_m47.w);
float3 _3410 = exp(_18_m45.xyz * ((-max(0.0f, (_445 * _18_m44.w) - _18_m43.w)) * (((1.0f - exp(-_3396)) / _3396) * exp(_3391 + _18_m48.w))));
float _3413 = dot(_2326, _18_m44.xyz);
float _3419 = _18_m45.w * _18_m45.w;
float _3423 = (1.0f + _3419) - ((2.0f * _18_m45.w) * _3413);
float3 _3746;
float _3747;
if (_18_m55.z > 0.0f)
{
uint3 _3468 = (uint3(int3(_2011, _2012, int(_18_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
uint _3469 = _3468.y;
uint _3470 = _3468.z;
uint _3473 = _3468.x + (_3469 * _3470);
uint _3475 = _3469 + (_3470 * _3473);
uint _3477 = _3470 + (_3473 * _3475);
uint _3479 = _3473 + (_3475 * _3477);
float _3504 = dot(_2326, -_16_m0[2].xyz);
float3 _3511 = _493 - _16_m11.xyz;
float _3513 = (_18_m55.w * ((_3504 > 5.9604644775390625e-08f) ? (1.0f / _3504) : 0.0f)) * (1.0f / _445);
float _3514 = _3511.y;
float _3515 = _3513 * _3514;
float _3517 = _16_m11.y + _3515;
float _3518 = _3514 - _3515;
float _3520 = (1.0f - _3513) * _445;
float _3534 = max(-127.0f, _18_m49.z * _3518);
float _3558 = max(-127.0f, _18_m52.x * _3518);
float _3569 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_3517 - _18_m49.x)))) * ((abs(_3534) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3534)) / _3534) : (0.693147182464599609375f - (0.2402265071868896484375f * _3534)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_3517 - _18_m52.z)))) * ((abs(_3558) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3558)) / _3558) : (0.693147182464599609375f - (0.2402265071868896484375f * _3558))));
float _3591 = clamp((_445 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
float _3594 = clamp((max(clamp(exp2(-(_3569 * _3520)), 0.0f, 1.0f), _18_m51.w) + clamp((_445 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3591, 0.0f, 1.0f);
float4 _3634 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_23, float3((_2360 + ((((float3(uint3(_3479, _3475 + (_3477 * _3479), _411) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _18_m59.w).xy) * _18_m57.xy, (log2((_425 * _18_m56.x) + _18_m56.y) * _18_m56.z) / _18_m55.z), 0.0f), clamp((_425 - _18_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
_3746 = _3634.xyz + (((_18_m51.xyz * (1.0f - _3594)) + (((_18_m54.xyz * pow(clamp(dot(_444, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3569 * max(_3520 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3591))) * _3634.w);
_3747 = _3634.w * _3594;
}
else
{
float3 _3640 = _493 - _16_m11.xyz;
float _3642 = _3640.y;
float _3656 = max(-127.0f, _18_m49.z * _3642);
float _3680 = max(-127.0f, _18_m52.x * _3642);
float _3691 = ((_18_m49.y * exp2(-max(-127.0f, _18_m49.z * (_16_m11.y - _18_m49.x)))) * ((abs(_3656) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3656)) / _3656) : (0.693147182464599609375f - (0.2402265071868896484375f * _3656)))) + ((_18_m52.y * exp2(-max(-127.0f, _18_m52.x * (_16_m11.y - _18_m52.z)))) * ((abs(_3680) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_3680)) / _3680) : (0.693147182464599609375f - (0.2402265071868896484375f * _3680))));
float _3713 = clamp((_445 * _18_m50.w) + _18_m50.z, 0.0f, 1.0f);
float _3716 = clamp((max(clamp(exp2(-(_3691 * _445)), 0.0f, 1.0f), _18_m51.w) + clamp((_445 * _18_m50.y) + _18_m50.x, 0.0f, 1.0f)) + _3713, 0.0f, 1.0f);
_3746 = (_18_m51.xyz * (1.0f - _3716)) + (((_18_m54.xyz * pow(clamp(dot(_444, _18_m53.xyz), 0.0f, 1.0f), _18_m54.w)) * (1.0f - clamp(exp2(-(_3691 * max(_445 - _18_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3713));
_3747 = _3716;
}
float3 _3752 = (_3367.xyz * (_3410 * _3747)) + ((((clamp(((_18_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_3413 * _3413)))) + _18_m48.xyz) + (_18_m47.xyz * ((1.0f - _3419) / max((12.56637096405029296875f * _3423) * sqrt(_3423), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _3410)) * _3747) + _3746);
// RenoDX code start: preserve the existing deferred-lighting controls.
if (RENODX_CUSTOM_FOG > 0.5f)
{
_3752 = (_3752 * 0.65f) + (_3367.xyz * 0.35f);
}
// RenoDX code end
_3754 = float4(_3752.x, _3752.y, _3752.z, _3367.w);
}
else
{
_3754 = _3367;
}
_13 = _3754;
_14 = _1974;
}
SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
gl_FragCoord = stage_input.gl_FragCoord;
gl_FragCoord.w = 1.0 / gl_FragCoord.w;
gl_FrontFacing = stage_input.gl_FrontFacing;
_3 = stage_input._3;
_4 = stage_input._4;
_5 = stage_input._5;
_6 = stage_input._6;
_7 = stage_input._7;
_8 = stage_input._8;
_9 = stage_input._9;
_11 = stage_input._11;
frag_main();
SPIRV_Cross_Output stage_output;
stage_output._13 = _13;
stage_output._14 = _14;
return stage_output;
}

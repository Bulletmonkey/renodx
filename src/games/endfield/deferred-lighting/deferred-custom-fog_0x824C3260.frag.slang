#include "../shared.h"
// Endfield 1.5 Vulkan shader 0x824C3260, migrated from 1.4.4 shader 0x8E1466C3.
#include "./renodx_injection.hlsli"

struct _21
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

static float3 _345 = (float3)0;
static float _346 = (float)0;
static float3 _347 = (float3)0;
static float _349 = (float)0;
static uint _350 = (uint)0;

static const int2 _324[6] = { int2(2, 1), int2(2, 1), int2(0, 2), int2(0, 2), int2(0, 1), int2(0, 1) };
static const float2 _325[6] = { float2(-1.0f, 1.0f), 1.0f.xx, float2(1.0f, -1.0f), 1.0f.xx, 1.0f.xx, float2(-1.0f, 1.0f) };

[[vk::binding(12, 0)]]
cbuffer _16_17 : register(b12)
{
    column_major float4x4 _17_m0 : packoffset(c0);
    column_major float4x4 _17_m1 : packoffset(c4);
    column_major float4x4 _17_m2 : packoffset(c8);
    column_major float4x4 _17_m3 : packoffset(c12);
    column_major float4x4 _17_m4 : packoffset(c16);
    column_major float4x4 _17_m5 : packoffset(c20);
    column_major float4x4 _17_m6 : packoffset(c24);
    column_major float4x4 _17_m7 : packoffset(c28);
    column_major float4x4 _17_m8 : packoffset(c32);
    column_major float4x4 _17_m9 : packoffset(c36);
    column_major float4x4 _17_m10 : packoffset(c40);
    float4 _17_m11 : packoffset(c44);
    column_major float4x4 _17_m12 : packoffset(c45);
    column_major float4x4 _17_m13 : packoffset(c49);
    column_major float4x4 _17_m14 : packoffset(c53);
    column_major float4x4 _17_m15 : packoffset(c57);
    column_major float4x4 _17_m16 : packoffset(c61);
    column_major float4x4 _17_m17 : packoffset(c65);
    column_major float4x4 _17_m18 : packoffset(c69);
    column_major float4x4 _17_m19 : packoffset(c73);
    column_major float4x4 _17_m20 : packoffset(c77);
    float4 _17_m21 : packoffset(c81);
};

[[vk::binding(16, 0)]]
cbuffer _18_19 : register(b16)
{
    float4 _19_m0 : packoffset(c0);
    float4 _19_m1 : packoffset(c1);
    float4 _19_m2 : packoffset(c2);
    float4 _19_m3 : packoffset(c3);
    float4 _19_m4 : packoffset(c4);
    float4 _19_m5 : packoffset(c5);
    float4 _19_m6[6] : packoffset(c6);
    float4 _19_m7[6] : packoffset(c12);
    float4 _19_m8 : packoffset(c18);
    float4 _19_m9 : packoffset(c19);
    float4 _19_m10 : packoffset(c20);
    float4 _19_m11 : packoffset(c21);
    float4 _19_m12 : packoffset(c22);
    float4 _19_m13 : packoffset(c23);
    float4 _19_m14 : packoffset(c24);
    float4 _19_m15 : packoffset(c25);
    float _19_m16 : packoffset(c26);
    float _19_m17 : packoffset(c26.y);
    float _19_m18 : packoffset(c26.z);
    uint _19_m19 : packoffset(c26.w);
    float4 _19_m20 : packoffset(c27);
    int4 _19_m21 : packoffset(c28);
    float4 _19_m22 : packoffset(c29);
    float4 _19_m23 : packoffset(c30);
    float4 _19_m24 : packoffset(c31);
    float4 _19_m25 : packoffset(c32);
    float4 _19_m26 : packoffset(c33);
    float4 _19_m27 : packoffset(c34);
    float4 _19_m28 : packoffset(c35);
    float4 _19_m29 : packoffset(c36);
    float4 _19_m30 : packoffset(c37);
    float4 _19_m31 : packoffset(c38);
    float4 _19_m32[4] : packoffset(c39);
    float4 _19_m33[4] : packoffset(c43);
    float4 _19_m34[4] : packoffset(c47);
    float4 _19_m35[4] : packoffset(c51);
    float4 _19_m36 : packoffset(c55);
    float4 _19_m37 : packoffset(c56);
    float4 _19_m38[4] : packoffset(c57);
    float4 _19_m39[4] : packoffset(c61);
    float4 _19_m40[4] : packoffset(c65);
    float4 _19_m41 : packoffset(c69);
    float4 _19_m42 : packoffset(c70);
    float4 _19_m43 : packoffset(c71);
    float4 _19_m44 : packoffset(c72);
    float4 _19_m45 : packoffset(c73);
    float4 _19_m46 : packoffset(c74);
    float4 _19_m47 : packoffset(c75);
    float4 _19_m48 : packoffset(c76);
    float4 _19_m49 : packoffset(c77);
    float4 _19_m50 : packoffset(c78);
    float4 _19_m51 : packoffset(c79);
    float4 _19_m52 : packoffset(c80);
    float4 _19_m53 : packoffset(c81);
    float4 _19_m54 : packoffset(c82);
    float4 _19_m55 : packoffset(c83);
    float4 _19_m56 : packoffset(c84);
    float4 _19_m57 : packoffset(c85);
    float4 _19_m58 : packoffset(c86);
    float4 _19_m59 : packoffset(c87);
    float4 _19_m60 : packoffset(c88);
    float4 _19_m61 : packoffset(c89);
    float4 _19_m62 : packoffset(c90);
    float4 _19_m63 : packoffset(c91);
    float4 _19_m64 : packoffset(c92);
    float4 _19_m65 : packoffset(c93);
    float4 _19_m66 : packoffset(c94);
    float4 _19_m67 : packoffset(c95);
    float4 _19_m68 : packoffset(c96);
    float4 _19_m69 : packoffset(c97);
    float4 _19_m70 : packoffset(c98);
    float4 _19_m71 : packoffset(c99);
    float4 _19_m72 : packoffset(c100);
    float4 _19_m73 : packoffset(c101);
    float4 _19_m74 : packoffset(c102);
    float4 _19_m75 : packoffset(c103);
    float4 _19_m76 : packoffset(c104);
    float4 _19_m77 : packoffset(c105);
    float4 _19_m78 : packoffset(c106);
    float4 _19_m79 : packoffset(c107);
    float4 _19_m80 : packoffset(c108);
    float4 _19_m81 : packoffset(c109);
    float4 _19_m82 : packoffset(c110);
    float4 _19_m83 : packoffset(c111);
    float4 _19_m84 : packoffset(c112);
    float4 _19_m85 : packoffset(c113);
    float4 _19_m86 : packoffset(c114);
    float4 _19_m87 : packoffset(c115);
    float4 _19_m88 : packoffset(c116);
    float4 _19_m89 : packoffset(c117);
    float4 _19_m90 : packoffset(c118);
    float4 _19_m91 : packoffset(c119);
    float4 _19_m92 : packoffset(c120);
    float4 _19_m93 : packoffset(c121);
    float4 _19_m94 : packoffset(c122);
    float4 _19_m95 : packoffset(c123);
    float4 _19_m96 : packoffset(c124);
    float4 _19_m97 : packoffset(c125);
    float4 _19_m98 : packoffset(c126);
    float4 _19_m99[2] : packoffset(c127);
    float4 _19_m100[2] : packoffset(c129);
    float _19_m101 : packoffset(c131);
    float _19_m102 : packoffset(c131.y);
    float _19_m103 : packoffset(c131.z);
    float _19_m104 : packoffset(c131.w);
    float4 _19_m105 : packoffset(c132);
    float4 _19_m106 : packoffset(c133);
    float4 _19_m107 : packoffset(c134);
    float4 _19_m108 : packoffset(c135);
    float4 _19_m109 : packoffset(c136);
    float4 _19_m110 : packoffset(c137);
    float4 _19_m111 : packoffset(c138);
    float4 _19_m112 : packoffset(c139);
    float4 _19_m113 : packoffset(c140);
    float4 _19_m114 : packoffset(c141);
    float4 _19_m115 : packoffset(c142);
    float4 _19_m116 : packoffset(c143);
    float4 _19_m117 : packoffset(c144);
    float4 _19_m118 : packoffset(c145);
    float4 _19_m119 : packoffset(c146);
    float4 _19_m120 : packoffset(c147);
    float4 _19_m121 : packoffset(c148);
    float4 _19_m122 : packoffset(c149);
    float4 _19_m123 : packoffset(c150);
    float4 _19_m124 : packoffset(c151);
    float4 _19_m125 : packoffset(c152);
    float4 _19_m126 : packoffset(c153);
    float4 _19_m127 : packoffset(c154);
    float4 _19_m128 : packoffset(c155);
    float4 _19_m129 : packoffset(c156);
    float4 _19_m130 : packoffset(c157);
    float4 _19_m131 : packoffset(c158);
    float4 _19_m132 : packoffset(c159);
    float4 _19_m133 : packoffset(c160);
    float4 _19_m134 : packoffset(c161);
    column_major float4x4 _19_m135 : packoffset(c162);
    float4 _19_m136 : packoffset(c166);
    float4 _19_m137 : packoffset(c167);
    float4 _19_m138[32] : packoffset(c168);
};

[[vk::binding(0, 2)]]
cbuffer _20_22 : register(b0)
{
    _21 _22_m0[256] : packoffset(c0);
};

[[vk::binding(51, 0)]] ByteAddressBuffer _29 : register(t51);
[[vk::binding(18, 0)]] StructuredBuffer<float4> _31 : register(t18);

uint4 _31_Load4(uint byte_offset)
{
    return asuint(_31[byte_offset >> 4u]);
}
[[vk::binding(48, 0)]]
cbuffer _32_33 : register(b48)
{
    int _33_m0 : packoffset(c0);
    int _33_m1 : packoffset(c0.y);
    int _33_m2 : packoffset(c0.z);
    int _33_m3 : packoffset(c0.w);
    float _33_m4 : packoffset(c1);
    float _33_m5 : packoffset(c1.y);
    float _33_m6 : packoffset(c1.z);
    float _33_m7 : packoffset(c1.w);
    float _33_m8 : packoffset(c2);
    float _33_m9 : packoffset(c2.y);
    float _33_m10 : packoffset(c2.z);
    float _33_m11 : packoffset(c2.w);
};

[[vk::binding(14, 0)]]
cbuffer _34_35 : register(b14)
{
    float4 _35_m0 : packoffset(c0);
    float4 _35_m1 : packoffset(c1);
    float4 _35_m2 : packoffset(c2);
    float4 _35_m3 : packoffset(c3);
    float4 _35_m4 : packoffset(c4);
    uint4 _35_m5 : packoffset(c5);
    float4 _35_m6[2048] : packoffset(c6);
};

[[vk::binding(15, 0)]]
cbuffer _36_37 : register(b15)
{
    column_major float4x4 _37_m0[5] : packoffset(c0);
    float4 _37_m1[4] : packoffset(c20);
    float4 _37_m2[4] : packoffset(c24);
    float4 _37_m3[4] : packoffset(c28);
    float4 _37_m4 : packoffset(c32);
    float4 _37_m5 : packoffset(c33);
    float4 _37_m6 : packoffset(c34);
    float4 _37_m7 : packoffset(c35);
    float4 _37_m8 : packoffset(c36);
    float4 _37_m9[27] : packoffset(c37);
    column_major float4x4 _37_m10[56] : packoffset(c64);
    float4 _37_m11[56] : packoffset(c288);
    float4 _37_m12[56] : packoffset(c344);
    float4 _37_m13 : packoffset(c400);
    float4 _37_m14[47] : packoffset(c401);
    column_major float4x4 _37_m15[15] : packoffset(c448);
    float4 _37_m16[15] : packoffset(c508);
    float4 _37_m17[15] : packoffset(c523);
    float4 _37_m18[15] : packoffset(c538);
    float4 _37_m19 : packoffset(c553);
    float4 _37_m20 : packoffset(c554);
    float4 _37_m21[21] : packoffset(c555);
    column_major float4x4 _37_m22 : packoffset(c576);
    column_major float4x4 _37_m23 : packoffset(c580);
    float4 _37_m24 : packoffset(c584);
    float4 _37_m25 : packoffset(c585);
    float4 _37_m26 : packoffset(c586);
    float4 _37_m27[128] : packoffset(c587);
};

[[vk::binding(0, 1)]]
cbuffer _47_48 : register(b0)
{
    float _48_m0 : packoffset(c0);
    float _48_m1 : packoffset(c0.y);
    float _48_m2 : packoffset(c0.z);
    float _48_m3 : packoffset(c0.w);
    float _48_m4 : packoffset(c1);
    float _48_m5 : packoffset(c1.y);
    float _48_m6 : packoffset(c1.z);
    float _48_m7 : packoffset(c1.w);
    float _48_m8 : packoffset(c2);
    float _48_m9 : packoffset(c2.y);
    float _48_m10 : packoffset(c2.z);
    float _48_m11 : packoffset(c2.w);
    float _48_m12 : packoffset(c3);
    float _48_m13 : packoffset(c3.y);
    float _48_m14 : packoffset(c3.z);
    float _48_m15 : packoffset(c3.w);
    float _48_m16 : packoffset(c4);
    float _48_m17 : packoffset(c4.y);
    float _48_m18 : packoffset(c4.z);
    float _48_m19 : packoffset(c4.w);
    float _48_m20 : packoffset(c5);
    float _48_m21 : packoffset(c5.y);
    float _48_m22 : packoffset(c5.z);
    float _48_m23 : packoffset(c5.w);
    float4 _48_m24 : packoffset(c6);
    float4 _48_m25 : packoffset(c7);
    float4 _48_m26 : packoffset(c8);
    float4 _48_m27 : packoffset(c9);
    float4 _48_m28 : packoffset(c10);
    float4 _48_m29 : packoffset(c11);
    float _48_m30 : packoffset(c12);
    float _48_m31 : packoffset(c12.y);
    float _48_m32 : packoffset(c12.z);
    float _48_m33 : packoffset(c12.w);
    float4 _48_m34 : packoffset(c13);
    float _48_m35 : packoffset(c14);
    float _48_m36 : packoffset(c14.y);
    float _48_m37 : packoffset(c14.z);
    float _48_m38 : packoffset(c14.w);
    float4 _48_m39 : packoffset(c15);
    float4 _48_m40 : packoffset(c16);
    float4 _48_m41 : packoffset(c17);
    float4 _48_m42 : packoffset(c18);
    float4 _48_m43 : packoffset(c19);
    float4 _48_m44 : packoffset(c20);
    float _48_m45 : packoffset(c21);
    float _48_m46 : packoffset(c21.y);
    float _48_m47 : packoffset(c21.z);
    float _48_m48 : packoffset(c21.w);
    float _48_m49 : packoffset(c22);
    float _48_m50 : packoffset(c22.y);
    float _48_m51 : packoffset(c22.z);
    float _48_m52 : packoffset(c22.w);
};

[[vk::binding(50, 0)]]
cbuffer _57_58 : register(b50)
{
    float4 _58_m0[32] : packoffset(c0);
    column_major float4x4 _58_m1[32] : packoffset(c32);
};

[[vk::binding(6, 0)]] SamplerState _24 : register(s6);
[[vk::binding(4, 0)]] SamplerState _25 : register(s4);
[[vk::binding(7, 0)]] SamplerComparisonState _26 : register(s7);
[[vk::binding(27, 0)]] Texture2D<float4> _38 : register(t27);
[[vk::binding(22, 0)]] Texture2D<float4> _39 : register(t22);
[[vk::binding(35, 0)]] Texture3D<float4> _41 : register(t35);
[[vk::binding(32, 0)]] Texture3D<float4> _42 : register(t32);
[[vk::binding(34, 0)]] Texture3D<float4> _43 : register(t34);
[[vk::binding(31, 0)]] Texture3D<float4> _44 : register(t31);
[[vk::binding(33, 0)]] Texture3D<float4> _45 : register(t33);
[[vk::binding(30, 0)]] Texture3D<float4> _46 : register(t30);
[[vk::binding(3, 1)]] Texture2D<float4> _49 : register(t3);
[[vk::binding(43, 0)]] Texture2D<float4> _50 : register(t43);
[[vk::binding(42, 0)]] Texture2D<float4> _51 : register(t42);
[[vk::binding(39, 0)]] Texture2D<float4> _52 : register(t39);
[[vk::binding(4, 1)]] Texture2D<float4> _53 : register(t4);
[[vk::binding(2, 1)]] Texture2D<float4> _54 : register(t2);
[[vk::binding(1, 1)]] Texture2D<float4> _55 : register(t1);
[[vk::binding(29, 0)]] Texture2D<float4> _56 : register(t29);
[[vk::binding(36, 0)]] Texture3D<float4> _61 : register(t36);

static float4 gl_FragCoord = (float4)0;
static bool gl_FrontFacing = (bool)0;
static float2 _3 = (float2)0;
static float3 _4 = (float3)0;
static float3 _5 = (float3)0;
static float4 _6 = (float4)0;
static float3 _7 = (float3)0;
static float3 _8 = (float3)0;
static float3 _9 = (float3)0;
static float3 _10 = (float3)0;
static uint _12 = (uint)0;
static float4 _14 = (float4)0;
static float4 _15 = (float4)0;

struct SPIRV_Cross_Input
{
    [[vk::location(0)]] float2 _3 : TEXCOORD0;
    [[vk::location(1)]] float3 _4 : TEXCOORD1;
    [[vk::location(2)]] float3 _5 : TEXCOORD2;
    [[vk::location(3)]] float4 _6 : TEXCOORD3;
    [[vk::location(4)]] float3 _7 : TEXCOORD4;
    [[vk::location(5)]] float3 _8 : TEXCOORD5;
    [[vk::location(6)]] float3 _9 : TEXCOORD6;
    [[vk::location(7)]] float3 _10 : TEXCOORD7;
    [[vk::location(8)]] nointerpolation uint _12 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    [[vk::location(0)]] float4 _14 : SV_Target0;
    [[vk::location(1)]] float4 _15 : SV_Target1;
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

void frag_main()
{
    float2 _355 = _3;
    float _365 = 1.0f / gl_FragCoord.w;
    float3 _380 = lerp(-_4, float3(_17_m0[2u].x, _17_m0[2u].y, _17_m0[2u].z), _19_m4.w.xxx);
    float _381 = dot(_380, _380);
    float _383 = rsqrt(max(_381, 9.9999999392252902907785028219223e-09f));
    float3 _384 = _380 * _383;
    float _385 = _381 * _383;
    uint _388 = asuint(_22_m0[_12]._m2.x);
    bool _393 = (asuint(_22_m0[_12]._m1.w) & 16u) != 0u;
    float4 _410;
    float4 _411;
    float4 _412;
    if (_393)
    {
        _410 = asfloat(_31_Load4((_388 + 2u) * 16 + 0));
        _411 = asfloat(_31_Load4((_388 + 1u) * 16 + 0));
        _412 = asfloat(_31_Load4(_388 * 16 + 0));
    }
    else
    {
        _410 = _22_m0[_12]._m0[2];
        _411 = _22_m0[_12]._m0[1];
        _412 = _22_m0[_12]._m0[0];
    }
    float4 _418 = _53.SampleBias(_25, _355, _19_m16);
    float3 _423 = _418.xyz * _48_m24.xyz;
    float _430 = 1.0f - _48_m0;
    float _431 = _418.w;
    float3 _436 = _423 * _48_m18;
    float3 _440 = lerp(dot(_436, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _436, _48_m19.xxx);
    float4 _444 = _55.SampleBias(_24, _355, _19_m16);
    float _446 = _444.y;
    float _447 = _444.z;
    float _448 = _444.w;
    float3 _452 = _4 + _17_m11.xyz;
    float3 _456 = _452 - float3(_412.w, _349, _410.w);
    _456.y = 6.103515625e-05f;
    float3 _459 = normalize(_456);
    float _473 = gl_FrontFacing ? 1.0f : ((-1.0f) + (2.0f * _48_m5));
    float3 _474 = normalize(_5) * _473;
    uint2 _476 = uint2(gl_FragCoord.xy);
    float3 _486 = mul(float3x3(_17_m1[0].xyz, _17_m1[1].xyz, _17_m1[2].xyz), float3(0.0f, 0.0f, 1.0f));
    float3x3 _490 = float3x3(_412.xyz, _411.xyz, _410.xyz);
    float3 _491 = mul(_486, _490);
    float2 _497 = normalize((_491 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_491, _491)))).xz);
    float _498 = _497.y;
    uint _507 = asuint((_19_m89.x > 0.5f) ? _19_m89.y : _22_m0[_12]._m7.x);
    float4 _520 = float4(float(_507 & 255u), float((_507 >> 8u) & 255u), float((_507 >> 16u) & 255u), float((_507 >> 24u) & 255u)) * 0.0039215688593685626983642578125f.xxxx;
    float _521 = _520.x;
    float _524 = _520.w;
    float _530 = _452.y;
    float _534 = max(_520.z, smoothstep(-0.20000000298023223876953125f, 0.1500000059604644775390625f, lerp(_22_m0[_12]._m7.y, _19_m89.w, _19_m89.x) - _530) * _520.y);
    float _535 = max(_521, _534);
    float _543 = lerp(_19_m22.x, 1.0f, _19_m91.w) * _19_m20.x;
    float _545 = _474.z;
    float3 _548 = _446.xxx;
    float3 _550 = normalize(lerp(_459, normalize(float3(_474.x, 6.103515625e-05f, _545)), _548));
    float3 _1041;
    float _1042;
    if (_19_m80.y < 0.5f)
    {
        float3 _568 = _452 - (_19_m105.xyz + (_486 * (-_19_m107.w)));
        float _582 = max(clamp((max(abs(_568.x), abs(_568.z)) - 464.0f) * 0.03125f, 0.0f, 1.0f), clamp((abs(_568.y) - 208.0f) * 0.03125f, 0.0f, 1.0f));
        float4 _884;
        float4 _885;
        float4 _886;
        float _887;
        float _888;
        if ((_19_m105.w != 0.0f) && (_582 < 1.0f))
        {
            float3 _595 = _452 - (_19_m105.xyz + (_486 * (-_19_m107.y)));
            float _609 = max(clamp((max(abs(_595.x), abs(_595.z)) - 29.0f) * 0.5f, 0.0f, 1.0f), clamp((abs(_595.y) - 13.0f) * 0.5f, 0.0f, 1.0f));
            float _685;
            float4 _686;
            float4 _687;
            float4 _688;
            if (_609 < 1.0f)
            {
                float3 _618 = ((_452 * 2.0f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _620 = _618 - floor(_618);
                float4 _624 = _41.SampleLevel(_25, _620, 0.0f);
                float _625 = 1.0f - _609;
                float _629 = _19_m106.y * 0.5f;
                float _634 = _620.x;
                float _635 = clamp(_620.y, _629, 1.0f - _629) * 0.3333333432674407958984375f;
                float _636 = _620.z;
                float4 _639 = _42.SampleLevel(_24, float3(_634, _635, _636), 0.0f);
                float _655 = _624.x;
                float _665 = _624.y;
                float _675 = _624.z;
                _685 = _582 + (_639.w * _625);
                _686 = float4(((_42.SampleLevel(_24, float3(_634, _635 + 0.666666686534881591796875f, _636), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _675, _675) * _625;
                _687 = float4(((_42.SampleLevel(_24, float3(_634, _635 + 0.3333333432674407958984375f, _636), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _665, _665) * _625;
                _688 = float4(((_639.xyz * 4.0f) - 2.0f.xxx) * _655, _655) * _625;
            }
            else
            {
                _685 = _582;
                _686 = 0.0f.xxxx;
                _687 = 0.0f.xxxx;
                _688 = 0.0f.xxxx;
            }
            float3 _694 = _452 - (_19_m105.xyz + (_486 * (-_19_m107.z)));
            float _708 = max(clamp((max(abs(_694.x), abs(_694.z)) - 116.0f) * 0.125f, 0.0f, 1.0f), clamp((abs(_694.y) - 52.0f) * 0.125f, 0.0f, 1.0f));
            float _788;
            float4 _789;
            float4 _790;
            float4 _791;
            if (_708 < 1.0f)
            {
                float3 _717 = ((_452 * 0.5f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _719 = _717 - floor(_717);
                float4 _723 = _43.SampleLevel(_25, _719, 0.0f);
                float _725 = _609 * (1.0f - _708);
                float _729 = _19_m106.y * 0.5f;
                float _734 = _719.x;
                float _735 = clamp(_719.y, _729, 1.0f - _729) * 0.3333333432674407958984375f;
                float _736 = _719.z;
                float4 _739 = _44.SampleLevel(_24, float3(_734, _735, _736), 0.0f);
                float _755 = _723.x;
                float _766 = _723.y;
                float _777 = _723.z;
                _788 = _685 + (_739.w * _725);
                _789 = _686 + (float4(((_44.SampleLevel(_24, float3(_734, _735 + 0.666666686534881591796875f, _736), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _777, _777) * _725);
                _790 = _687 + (float4(((_44.SampleLevel(_24, float3(_734, _735 + 0.3333333432674407958984375f, _736), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _766, _766) * _725);
                _791 = _688 + (float4(((_739.xyz * 4.0f) - 2.0f.xxx) * _755, _755) * _725);
            }
            else
            {
                _788 = _685;
                _789 = _686;
                _790 = _687;
                _791 = _688;
            }
            float4 _874;
            float4 _875;
            float4 _876;
            float _877;
            if (_708 > 0.0f)
            {
                float3 _800 = ((_452 * 0.125f) + 0.5f.xxx) * _19_m106.xyz;
                float3 _803 = _19_m106.xyz * 0.5f;
                float3 _805 = clamp(_800 - floor(_800), _803, 1.0f.xxx - _803);
                float4 _809 = _45.SampleLevel(_25, _805, 0.0f);
                float _811 = _708 * (1.0f - _582);
                float _815 = _19_m106.y * 0.5f;
                float _820 = _805.x;
                float _821 = clamp(_805.y, _815, 1.0f - _815) * 0.3333333432674407958984375f;
                float _822 = _805.z;
                float4 _825 = _46.SampleLevel(_24, float3(_820, _821, _822), 0.0f);
                float _841 = _809.x;
                float _852 = _809.y;
                float _863 = _809.z;
                _874 = _789 + (float4(((_46.SampleLevel(_24, float3(_820, _821 + 0.666666686534881591796875f, _822), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _863, _863) * _811);
                _875 = _790 + (float4(((_46.SampleLevel(_24, float3(_820, _821 + 0.3333333432674407958984375f, _822), 0.0f).xyz * 4.0f) - 2.0f.xxx) * _852, _852) * _811);
                _876 = _791 + (float4(((_825.xyz * 4.0f) - 2.0f.xxx) * _841, _841) * _811);
                _877 = _788 + (_825.w * _811);
            }
            else
            {
                _874 = _789;
                _875 = _790;
                _876 = _791;
                _877 = _788;
            }
            float _880 = clamp((_877 * 2.0f) - 1.0f, 0.0f, 1.0f);
            _884 = _874;
            _885 = _875;
            _886 = _876;
            _887 = _880 - _582;
            _888 = (_880 + _582) * 0.5f;
        }
        else
        {
            _884 = 0.0f.xxxx;
            _885 = 0.0f.xxxx;
            _886 = 0.0f.xxxx;
            _887 = 0.0f;
            _888 = 1.0f;
        }
        float4 _908 = _886 + float4(_19_m108.x * _888, (_19_m108.y * _888) + ((_19_m108.w * _887) * 0.5f), _19_m108.z * _888, (_19_m108.w * _888) + ((_19_m108.y * _887) * 0.375f));
        float4 _928 = _885 + float4(_19_m109.x * _888, (_19_m109.y * _888) + ((_19_m109.w * _887) * 0.5f), _19_m109.z * _888, (_19_m109.w * _888) + ((_19_m109.y * _887) * 0.375f));
        float4 _948 = _884 + float4(_19_m110.x * _888, (_19_m110.y * _888) + ((_19_m110.w * _887) * 0.5f), _19_m110.z * _888, (_19_m110.w * _888) + ((_19_m110.y * _887) * 0.375f));
        float4 _952 = float4(_550, 1.0f);
        float3 _958 = max(float3(dot(_908, _952), dot(_928, _952), dot(_948, _952)), 0.0f.xxx) * _543;
        float3 _966 = ((_908.xyz * 0.2125999927520751953125f) + (_928.xyz * 0.715200006961822509765625f)) + (_948.xyz * 0.072200000286102294921875f);
        float3 _970 = _966 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_966, _966)));
        float4 _975 = float4(_970.x, abs(_970.y), _970.z, 1.0f);
        float3 _980 = max(float3(dot(_908, _975), dot(_928, _975), dot(_948, _975)), 0.0f.xxx);
        float _988 = _958.z;
        float _989 = _958.y;
        float4 _994 = lerp(float4(_988, _989, -1.0f, 0.666666686534881591796875f), float4(_989, _988, 0.0f, -0.3333333432674407958984375f), step(_988, _989).xxxx);
        float _995 = _958.x;
        float _996 = _994.x;
        float4 _1004 = lerp(float4(_996, _994.yw, _995), float4(_995, _994.yz, _996), step(_996, _995).xxxx);
        float _1005 = _1004.x;
        float _1006 = _1004.w;
        float _1007 = _1004.y;
        float _1009 = _1005 - min(_1006, _1007);
        float _1019 = frac(abs(_1004.z + ((_1006 - _1007) / ((6.0f * _1009) + 9.9999997473787516355514526367188e-05f))));
        float _1026 = min(_1009 / (_1005 + 9.9999997473787516355514526367188e-05f), lerp(0.699999988079071044921875f, 0.3499999940395355224609375f, smoothstep(0.449999988079071044921875f, 0.3499999940395355224609375f, abs(_1019 - 0.5f))) * clamp(_1005, 0.0f, 1.0f));
        float _1028 = 2.0f / (2.0f - _1026);
        _1041 = lerp(1.0f.xxx, clamp(abs((frac(float3(_1019, _1026, _1028).xxx + float3(1.0f, 0.666666686534881591796875f, 0.3333333432674407958984375f)) * 6.0f) - 3.0f.xxx) - 1.0f.xxx, 0.0f.xxx, 1.0f.xxx), _1026.xxx) * _1028;
        _1042 = max(max(max(_980.x, _980.y), _980.z), 0.0f) * _543;
    }
    else
    {
        _1041 = _19_m82.xyz;
        _1042 = _543;
    }
    float _1061 = _444.x * lerp(clamp(_498 + 0.5f, 0.0f, 1.0f), 1.0f, _446);
    float _1075 = clamp((1.0f - clamp((clamp(dot(_474, _384), 0.0f, 1.0f) * 0.85000002384185791015625f) + 0.1500000059604644775390625f, 0.0f, 1.0f)) * (_1061 * lerp(_48_m31, _48_m30, _447)), 0.0f, 1.0f);
    float3 _1083 = _423 * ((1.0f - _1075).xxx + (_48_m34.xyz * _1075));
    float _1084 = lerp(0.0f, _48_m1, _446);
    float _1170;
    float _1171;
    float3 _1172;
    float _1173;
    float _1174;
    [branch]
    if ((clamp(_521 + _534, 0.0f, 1.0f) - _48_m20) > 0.00999999977648258209228515625f)
    {
        float _1097 = _19_m10.x * 0.800000011920928955078125f;
        float4 _1102 = _50.SampleBias(_25, _355 + float2(0.0f, frac(_1097)), _19_m16);
        float4 _1116 = float4(_1102.xy, _50.SampleBias(_25, _355 + float2(0.0f, frac(_1097 + 0.004999999888241291046142578125f)), _19_m16).w, _1102.w);
        float4 _1120 = _51.SampleBias(_25, _355, _19_m16);
        float _1121 = _1120.z;
        float2 _1123 = _1116.zw * _1121;
        float _1125 = _1123.y;
        float2 _1128 = (_1116.xy * 2.0f) - 1.0f.xx;
        float _1129 = _1123.x;
        float _1132 = clamp(_1129 + _1125, 0.0f, 1.0f) * _535;
        float _1133 = (_1102.z * _1121) * _535;
        float3 _1136 = float3(_1128, 0.0f);
        float2 _1137 = _1136.xy;
        _1136.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1137, _1137), 0.0f, 1.0f)));
        float _1151 = lerp(smoothstep(0.0f, 0.800000011920928955078125f, (_1128.y * 0.5f) + 0.5f), 1.0f, clamp(_1129 - _1125, 0.0f, 1.0f));
        _1170 = lerp(_1084, 3.0f, clamp((_1132 * 2.0f) + _1133, 0.0f, 1.0f) * _535);
        _1171 = _431 * ((1.0f - _1132) + (lerp((1.0f - _1151) + (0.800000011920928955078125f * _1151), 0.89999997615814208984375f, _446) * _1132));
        _1172 = normalize(mul(_1136, float3x3(_6.xyz * 1.0f, (cross(_5, _6.xyz) * _6.w) * 1.0f, _5 * 1.0f))) * _473;
        _1173 = lerp(_430, 0.5f, _535);
        _1174 = clamp(clamp(_1132 + _1133, 0.0f, 1.0f), 0.0f, 1.0f);
    }
    else
    {
        _1170 = _1084;
        _1171 = _431;
        _1172 = _474;
        _1173 = _430;
        _1174 = 0.0f;
    }
    float3 _1293;
    float _1294;
    float3 _1295;
    float3 _1296;
    float _1297;
    [branch]
    if ((_524 - _48_m20) > 0.00999999977648258209228515625f)
    {
        bool3 _1179 = _393.xxx;
        float3 _1181 = _10.xzy * float3(1.0f, 1.0f, -1.0f);
        float3 _1182 = float3(_1179.x ? _1181.x : _10.x, _1179.y ? _1181.y : _10.y, _1179.z ? _1181.z : _10.z);
        float3 _1185 = _1182 * _19_m89.z;
        float3 _1187 = float3(_1179.x ? _9.xzy.x : _9.x, _1179.y ? _9.xzy.y : _9.y, _1179.z ? _9.xzy.z : _9.z);
        float3 _1189 = abs(_1187) - 0.20000000298023223876953125f.xxx;
        float3 _1192 = max((_1189 * _1189) * _1189, 6.103515625e-05f.xxx);
        float3 _1195 = _1192 / dot(_1192, 1.0f.xxx).xxx;
        float4 _1218 = ((_52.SampleBias(_25, _1185.xz, _19_m16) * _1195.y) + (_52.SampleBias(_25, _1185.xy, _19_m16) * _1195.z)) + (_52.SampleBias(_25, _1185.zy, _19_m16) * _1195.x);
        float _1226 = clamp(_524 + (smoothstep(0.3499999940395355224609375f, 0.20000000298023223876953125f, _1182.y) * clamp(_524 * 3.0f, 0.0f, 1.0f)), 0.0f, 1.0f);
        float _1234 = _1226 * (2.0f - _1226);
        float _1241 = smoothstep(2.0f - _1234, 2.349999904632568359375f - _1234, lerp(0.0f, (smoothstep(-1.0f, 0.0f, _1187.y) + _1218.z) * 0.60000002384185791015625f, _446 * _1061)) * ((_1171 * _1171) * float(gl_FrontFacing));
        float3 _1243 = _1241.xxx;
        float2 _1249 = (_1218.xy * 2.0f) - 1.0f.xx;
        float3 _1250 = float3(_1249.x, _1249.y, _347.z);
        float2 _1251 = _1249.xy;
        _1250.z = max(1.000000016862383526387164645044e-16f, sqrt(1.0f - clamp(dot(_1251, _1251), 0.0f, 1.0f)));
        float2 _1259 = _1250.xy * 2.0f;
        float3 _1261 = lerp(float3(0.0f, 0.0f, 1.0f), float3(_1259.x, _1259.y, _1250.z), _1243);
        float3 _1265 = _1261 * rsqrt(max(6.103515625e-05f, dot(_1261, _1261)));
        float _1266 = _474.y;
        float _1269 = step(0.00999999977648258209228515625f, 1.0f - (_1266 * _1266));
        float _1272 = lerp(_545, _1266, _1269);
        float3 _1279 = (float3(0.0f, _1269, 1.0f - _1269) - (_474 * _1272)) * rsqrt(max(9.9999997473787516355514526367188e-05f, 1.0f - (_1272 * _1272)));
        _1293 = ((cross(_1279, _474) * _1265.x) + (_1279 * _1265.y)) + (_474 * _1265.z);
        _1294 = lerp(_1173, 0.89999997615814208984375f, clamp(_1241 * 4.0f, 0.0f, 1.0f));
        _1295 = lerp(_440 * 1.0f, 0.3079999983310699462890625f.xxx, _1243);
        _1296 = lerp(_1083 * 1.0f, 0.87999999523162841796875f.xxx, _1243);
        _1297 = lerp(_48_m2, 0.0f, _1241);
    }
    else
    {
        _1293 = _474;
        _1294 = _1173;
        _1295 = _440;
        _1296 = _1083;
        _1297 = _48_m2;
    }
    float _1299 = 0.959999978542327880859375f - (_1297 * 0.959999978542327880859375f);
    float3 _1300 = _1296 * _1299;
    float3 _1303 = lerp(0.039999999105930328369140625f.xxx * _1170, _1296, _1297.xxx);
    float3 _1304 = _1295 * _1299;
    float _1306 = max(_1294 * _1294, 0.0078125f);
    bool _1313 = (1.0f - max(_22_m0[_12]._m1.y, _22_m0[_12]._m1.z)) < 0.9900000095367431640625f;
    float2 _1326 = (_7.xy / max(_7.z, 9.9999999392252902907785028219223e-09f).xx) - (_8.xy / max(_8.z, 9.9999999392252902907785028219223e-09f).xx);
    _1326.y = -_1326.y;
    float2 _1342 = lerp(((sqrt(sqrt(abs(_1326 * 0.5f))) * float2(int2(sign(_1326)))) * 0.5f) + 0.5f.xx, 0.5f.xx, float(_1313).xx);
    float4 _1344 = float4(_1342.x, _1342.y, 0.0f.xxxx.z, 0.0f.xxxx.w);
    _1344.z = 1.0f;
    _1344.w = _1313 ? 0.699999988079071044921875f : 0.4000000059604644775390625f;
    float3 _1357 = lerp(-_35_m0.xyz, _19_m90.xyz, _19_m80.w.xxx);
    float3 _1371 = lerp(_35_m3.xyz, _19_m83.xyz, _19_m91.y.xxx);
    float3 _1375 = _1371 * lerp(_35_m3.w, 1.0f, _19_m91.w);
    int _1379 = int(_476.x);
    int _1380 = int(_476.y);
    float4 _1384 = _39.Load(int3(int3(_1379, _1380, 0).xy, 0));
    float _1389 = _1384.y;
    float _1392 = lerp(lerp(1.0f, _1384.x, _37_m6.x), 1.0f, _19_m80.z);
    float3 _1400 = _1304 * _19_m79.z;
    float3 _1401 = _1400 * 0.64999997615814208984375f;
    float3 _1415 = mul(_1357, _490);
    float3 _1416 = float3(_1415.x, _1415.y, _1415.z);
    _1416.y = 6.103515625e-05f;
    float3 _1418 = normalize(_1416);
    float _1421 = float(_1418.x > 0.0f);
    float2 _1425 = _355;
    _1425.x = lerp(1.0f - _355.x, _355.x, _1421);
    float4 _1429 = _54.SampleLevel(_24, _1425, 0.0f);
    float _1431 = _1429.z * 2.0f;
    float _1434 = lerp(1.0f - _1431, _1431 - 1.0f, _1421);
    float3 _1439 = mul(_490, normalize(float3(_1434, 6.103515625e-05f, 1.0f - abs(_1434))));
    float3 _1446 = normalize(lerp((_1439 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1439, _1439)))).xyz, _1293, _548));
    float _1447 = _1429.w;
    float _1448 = _1418.z;
    float _1449 = -_1448;
    float _1464 = lerp(_1448, (_1449 * ((_1448 * 0.5f) - 1.0f)) + 0.5f, (clamp(-dot(normalize(float3(_1357.x, 6.103515625e-05f, _1357.z)).xz, normalize(_486.xz)), 0.0f, 1.0f) * clamp(_1449, 0.0f, 1.0f)) * (1.0f - _19_m91.x)) * 0.5f;
    float _1466 = clamp(0.5f - _1464, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float _1472 = (_1429.x + _1429.y) * 0.5f;
    float _1483 = _19_m94.z * 0.5f;
    float _1485 = clamp(0.5f - _1483, 0.001000000047497451305389404296875f, 0.999000012874603271484375f);
    float4 _1506 = _49.SampleLevel(_24, float2((lerp(lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1466 - (1.0f - _1466), 0.0f), min(_1466 + _1466, 1.0f), _1472)) - (_1464 * ceil(_1464)))), clamp(dot(_1293, _1357) + (_19_m90.w * _19_m91.x), -1.0f, 1.0f), _446) * 0.5f) + 0.5f, 0.5f), 0.0f);
    float _1507 = _1506.w;
    float _1509 = _1506.x;
    float _1510 = _1506.y;
    float _1511 = _1506.z;
    float _1516 = max(max(_1509, _1510), _1511) - min(min(_1509, _1510), _1511);
    float _1519 = max(_446, _447 * smoothstep(0.75f, 0.25f, _498));
    float _1522 = (1.0f - _1519) + (_1389 * _1519);
    float _1523 = 1.0f - _446;
    float _1532 = min(min(_1522, _1171), _1507);
    float _1533 = _1171 * _1522;
    float3 _1537 = ((clamp(dot(_550, _19_m85.xyz) + _19_m86.x, 0.0f, 1.0f) * _19_m86.y) + _19_m86.z).xxx * lerp(_1041, 1.0f.xxx, (_19_m80.y * _1532).xxx);
    float3 _1539 = _1532.xxx;
    float3 _1562 = _1392.xxx;
    float3 _1563 = lerp((_1537 * lerp(min(lerp(0.64999997615814208984375f, 1.0f, _1042), 1.5f), clamp(_1042, 1.25f, 1.75f), _19_m80.x)) * _19_m79.w, (lerp(dot(_1375, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1375, _1539) + ((_1537 * clamp(_1042, 0.0f, 1.5f)) * ((1.0f - _19_m91.y).xxx + (_1371 * _19_m91.y)))) * _19_m79.y, _1562);
    float3 _1564 = lerp(lerp(lerp(dot(_1401, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1401, 1.2000000476837158203125f.xxx), _1400, clamp((_1171 * (_1523 + (_1522 * _446))) + _1507, 0.0f, 1.0f).xxx), _1300, _1539);
    float3 _1570 = _1564 * ((1.0f - _1516).xxx + (_1506.xyz * _1516));
    float3 _1579 = lerp(lerp(_1400, lerp(dot(_1300, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1300, 1.2000000476837158203125f.xxx), _1533.xxx), _1570 * clamp(dot(_1564, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)) * (1.0f / max(dot(_1570, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)), 0.001000000047497451305389404296875f)), 0.0f, 1.5f), _1562);
    float4 _1583 = float4(_1579, _1392);
    float _1585 = lerp(_1533, _1532, _1392);
    float3 _1596 = float3(_486.x, lerp(0.5f, _1357.y, _1392), _486.z);
    float _1609 = clamp(dot(_1172, _384), 0.0f, 1.0f);
    float _1610 = dot(_1172, normalize(((_1357 * _1392) + ((_1596 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_1596, _1596)))) * 2.0f)) + (_384 * (2.0f + _1392))));
    float _1611 = _1306 * _1306;
    float _1615 = (((_1610 * _1611) - _1610) * _1610) + 1.0f;
    float _1616 = _1615 * _1615;
    float _1620 = 2.0f * _1609;
    float _1622 = (1.0f + _1609) - _1609;
    float3 _1663;
    if (_1174 > 0.001000000047497451305389404296875f)
    {
        _1663 = ((_51.SampleBias(_24, (normalize(mul(float3x3(_17_m0[0].xyz, _17_m0[1].xyz, _17_m0[2].xyz), _1172)).xy * 0.5f) + 0.5f.xx, _19_m16).w.xxx * _1522) * (clamp(_1042, 0.5f, 1.5f) * _19_m79.w)) * (_1174 * _1174);
    }
    else
    {
        _1663 = 0.0f.xxx;
    }
    float3 _1666 = ((_1563 * _1579) * 1.0f) + ((((_1303 * clamp((((_1611 != _1616) ? (_1611 / _1616) : 1.0f) * (0.5f / ((_1620 + (_1306 * _1622)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * ((_1563 * (((_1585 * 0.5f) + 0.5f) * lerp(_19_m79.z, 1.0f, _1585))) * 1.0f)) * _19_m92.w) + _1663);
    float _1667 = dot(_1666, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1670 = clamp(_1667 - 0.5f, 0.0f, 0.5f);
    float3 _1706 = normalize(cross(_486, lerp(float3(_19_m88.xy, 0.0f), (float3(_17_m0[0].x, _17_m0[0].y, _17_m0[0].z) * _19_m88.x) + (float3(_17_m0[1].x, _17_m0[1].y, _17_m0[1].z) * _19_m88.y), _19_m94.w.xxx)));
    float _1712 = dot(_384, _1446);
    float _1714 = 1.0f - abs(_1712);
    float _1719 = smoothstep(0.89999997615814208984375f, 1.0f, abs(_498));
    float3 _1758 = lerp(_1667.xxx, _1666, ((_1670 * _1670) + 1.0f).xxx) + (((((_19_m87.xyz * lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _19_m88.w), lerp(0.89999997615814208984375f, 0.5f, _19_m88.w), _1714) * _1719, max(_1719, float(dot(_486, _1706) < (-0.00999999977648258209228515625f))) * _448, clamp((_19_m88.w * 10.0f) - 3.0f, 0.0f, 1.0f))) * _19_m87.w) * min(min(clamp(dot(_459, _1706) + 1.0f, 0.0f, 1.0f), _1171), _1389)) * (lerp(0.25f.xxx, _1300, _19_m88.z.xxx) * clamp(dot(_1706, _1446), 0.0f, 1.0f))) + (((_19_m93.xyz * (smoothstep(-0.5f, 0.5f, lerp(-1.0f, 1.0f, abs((-smoothstep(max(_1485 - (1.0f - _1485), 0.0f), min(_1485 + _1485, 1.0f), _1472)) - (_1483 * ceil(_1483))))) * _1523)) * _19_m93.w) * _1300));
    float2 _1759 = float2(_476);
    float2 _1761 = floor(_1759 * 0.03125f);
    int _1769 = int((_1761.x + (_1761.y * _33_m5)) * 8.0f);
    float _1776 = floor(_365 - (_19_m3.y * _33_m11));
    float _1780 = clamp(_1776, 0.0f, _33_m7 - 1.0f);
    int _1782 = int(_1780 * 8.0f);
    float3 _1784;
    _1784 = _1758;
    float3 _1785;
    [loop]
    for (int _1787 = 0; _1787 <= 7; _1784 = _1785, _1787++)
    {
        uint _1805 = (_1776 <= _1780) ? (_29.Load(uint(_1769 + _1787) * 4 + 0) & _29.Load(uint((_19_m21.y + _1782) + _1787) * 4 + 0)) : 0u;
        uint _1806 = uint(_1787);
        _1785 = _1784;
        uint _1811;
        float3 _1808;
        [loop]
        for (uint _1810 = _1805; _1810 != 0u; _1785 = _1808, _1810 = _1811)
        {
            uint _1815 = firstbitlow(_1810);
            _1811 = _1810 ^ (1u << (_1815 & 31u));
            int _1821 = int((32u * _1806) + _1815) * 8;
            int _1824 = _1821 + 1;
            int _1827 = _1821 + 2;
            int _1830 = _1821 + 3;
            int _1833 = _1821 + 4;
            int _1836 = _1821 + 5;
            int _1839 = _1821 + 6;
            int _1842 = _1821 + 7;
            uint _1846 = uint(_35_m6[_1836].w);
            float _1921;
            if ((_1846 & 1u) == 1u)
            {
                uint _1852 = asuint(_35_m6[_1836].x);
                uint _1859 = asuint(_35_m6[_1836].y);
                uint _1866 = asuint(_35_m6[_1836].z);
                uint _1873 = asuint(_35_m6[_1839].x);
                uint _1880 = asuint(_35_m6[_1839].y);
                uint _1887 = asuint(_35_m6[_1839].z);
                float3 _1906 = abs(mul(float4(_452 - _35_m6[_1824].xyz, 1.0f), float4x4(float4(spvUnpackHalf2x16(_1852).x, spvUnpackHalf2x16(_1866).x, spvUnpackHalf2x16(_1880).x, 0.0f), float4(spvUnpackHalf2x16(_1852 >> 16u).x, spvUnpackHalf2x16(_1866 >> 16u).x, spvUnpackHalf2x16(_1880 >> 16u).x, 0.0f), float4(spvUnpackHalf2x16(_1859).x, spvUnpackHalf2x16(_1873).x, spvUnpackHalf2x16(_1887).x, 0.0f), float4(spvUnpackHalf2x16(_1859 >> 16u).x, spvUnpackHalf2x16(_1873 >> 16u).x, spvUnpackHalf2x16(_1887 >> 16u).x, 0.0f))).xyz);
                float _1913 = _35_m6[_1842].x * 0.5f;
                float _1919 = 1.0f - clamp((max(max(_1906.x, _1906.y), _1906.z) - (_1913 + 0.5f)) / (0.5f - _1913), 0.0f, 1.0f);
                _1921 = _1919 * _1919;
            }
            else
            {
                _1921 = 1.0f;
            }
            if (false || (_1921 < 0.001000000047497451305389404296875f))
            {
                _1808 = _1785;
                continue;
            }
            float3 _2638;
            if (_35_m6[_1821].w < 1.5f)
            {
                float3 _2637;
                do
                {
                    uint _1934 = asuint(_35_m6[_1830].w);
                    if ((_1934 == 16u) || ((_35_m6[_1830].z + _19_m91.z) < 0.5f))
                    {
                        _2637 = _1785;
                        break;
                    }
                    bool _1946 = (uint(_35_m6[_1821].w) & 1u) == 0u;
                    bool _1950 = (!_1946) && (_35_m6[_1827].z > 0.0f);
                    bool _1951 = _1934 == 4u;
                    float _1952 = float(_1946);
                    float _1960 = (0.5f + (0.5f * _35_m6[_1827].y)) - abs(_35_m6[_1827].x);
                    float _1961 = _35_m6[_1827].y - _1960;
                    float _1968 = abs(max((1.0f - abs(_1960)) - abs(_1961), 0.00048828125f));
                    float3 _1972 = normalize(float3(_1960, _1961, (_35_m6[_1827].x >= 0.0f) ? _1968 : (-_1968)));
                    float _1978 = lerp(_35_m6[_1839].w, max(2.0f * _35_m6[_1833].y, 0.100000001490116119384765625f), float(_1951));
                    float3 _1983 = _35_m6[_1824].xyz - _452;
                    float3 _1984 = -_1972;
                    float3 _1989 = lerp(_1983, _1984 * dot(_1983, _1984), (float(_1951 && (_35_m6[_1833].z > 0.5f)) * _1952).xxx);
                    float _1990 = dot(_1989, _1989);
                    float _1991 = rsqrt(_1990);
                    float3 _1992 = _1989 * _1991;
                    float3 _2025;
                    float _2026;
                    if (_1950)
                    {
                        float3 _1996 = (_1972 * _35_m6[_1827].z) * 0.5f;
                        float3 _1997 = _1989 - _1996;
                        float3 _1998 = _1989 + _1996;
                        float _1999 = length(_1997);
                        float _2000 = length(_1998);
                        float3 _2009 = normalize(cross(cross(_1972, _1992), _1972));
                        _2025 = _2009;
                        _2026 = ((1.0f / ((((_1999 * _2000) + dot(_1997, _1998)) * 0.5f) + 1.0f)) * clamp(0.5f * ((dot(_2009, _1997) / _1999) + (dot(_2009, _1998) / _2000)), 0.0f, 1.0f)) * (1.0f / clamp(1.0f + (0.5f * clamp(_35_m6[_1827].z * _1991, 0.0f, 1.0f)), 0.0f, 1.0f));
                    }
                    else
                    {
                        _2025 = _1992;
                        _2026 = 1.0f;
                    }
                    float _2048;
                    if (_1978 < 0.0f)
                    {
                        float _2042 = _1990 * (_35_m6[_1824].w * _35_m6[_1824].w);
                        float _2045 = clamp(1.0f - (_2042 * _2042), 0.0f, 1.0f);
                        _2048 = lerp(1.0f / (_1990 + 1.0f), _2026, float(_1950)) * (_2045 * _2045);
                    }
                    else
                    {
                        float3 _2031 = _1989 * _35_m6[_1824].w;
                        _2048 = _2026 * pow(1.0f - clamp(dot(_2031, _2031), 0.0f, 1.0f), _1978);
                    }
                    float _2053 = clamp((dot(_2025, _1984) - _35_m6[_1827].z) * _35_m6[_1827].w, 0.0f, 1.0f);
                    float _2056 = _2048 * lerp(1.0f, _2053 * _2053, _1952);
                    int _2058 = int(_35_m6[_1842].w);
                    float _2162;
                    if ((!_1950) && (_2058 >= 0))
                    {
                        uint _2064 = uint(_2058);
                        float2 _2155;
                        [branch]
                        if (_1952 != 0.0f)
                        {
                            float4 _2145 = mul(_58_m1[_2064], float4(_452.x, _530, _452.z, 1.0f));
                            _2155 = _58_m0[_2064].xy + (clamp(_2145.xy / _2145.w.xx, 0.0f.xx, 1.0f.xx) * _58_m0[_2064].zw);
                        }
                        else
                        {
                            float3 _2079 = mul(float4(-_1989, 0.0f), _58_m1[_2064]).xyz;
                            float3 _354 = _2079;
                            float3 _353 = _2079;
                            float3 _352 = abs(_2079);
                            uint _2088 = uint(int(_352.y > _352.x));
                            uint _2094 = (_352.z > _352[_2088]) ? 2u : _2088;
                            uint _2100 = (_2094 * 2u) + uint(_353[_2094] < 0.0f);
                            float _2104 = abs(_354[_2100 / 2u]);
                            float _2124 = 0.5f - (0.000244140625f / _58_m0[_2064].w);
                            _2155 = _58_m0[_2064].xy + (clamp(float2((float(_2100) + ((((_354[uint(_324[_2100].x)] * _325[_2100].x) / _2104) * _2124) + 0.5f)) * 0.16666667163372039794921875f, 0.5f - (((_354[uint(_324[_2100].y)] * _325[_2100].y) / _2104) * _2124)), 0.0f.xx, 1.0f.xx) * _58_m0[_2064].zw);
                        }
                        _2162 = _2056 * _56.SampleLevel(_24, _2155, 0.0f).x;
                    }
                    else
                    {
                        _2162 = _2056;
                    }
                    float _2163 = _2162 * _1921;
                    float3 _2636;
                    do
                    {
                        float3 _2635;
                        [branch]
                        if (_2163 > 9.9999997473787516355514526367188e-05f)
                        {
                            [branch]
                            if (_1951)
                            {
                                _2636 = lerp(_1785, _35_m6[_1821].xyz, (_2163 * (_35_m6[_1833].x * ((1.0f - _35_m6[_1833].w) + (smoothstep(-0.5f, 0.5f, dot(_474, _2025)) * _35_m6[_1833].w)))).xxx);
                                break;
                            }
                            float _2183 = dot(_1446, _2025);
                            float _2184 = clamp(_2183, 0.0f, 1.0f);
                            float _2487;
                            if (_1934 != 0u)
                            {
                                bool _2190 = _1946 || ((_1846 & 2u) != 0u);
                                int _2239;
                                if (_2190)
                                {
                                    _2239 = int(_35_m6[_1830].x);
                                }
                                else
                                {
                                    uint _2194 = asuint(_35_m6[_1827].w);
                                    uint _2196 = asuint(_35_m6[_1830].x);
                                    float3 _2197 = _452 - _35_m6[_1824].xyz;
                                    float3 _2198 = abs(_2197);
                                    float _2199 = _2198.x;
                                    float _2200 = _2198.y;
                                    float _2202 = _2198.z;
                                    int _2234;
                                    if ((_2199 > _2200) && (_2199 > _2202))
                                    {
                                        _2234 = int((_2197.x > 0.0f) ? (_2194 >> 24u) : ((_2194 >> 16u) & 255u));
                                    }
                                    else
                                    {
                                        int _2226;
                                        if (_2200 > _2202)
                                        {
                                            _2226 = int((_2197.y > 0.0f) ? ((_2194 >> 8u) & 255u) : (_2194 & 255u));
                                        }
                                        else
                                        {
                                            _2226 = int((_2197.z > 0.0f) ? ((_2196 >> 8u) & 255u) : (_2196 & 255u));
                                        }
                                        _2234 = _2226;
                                    }
                                    _2239 = (_2234 < 80) ? _2234 : (-1);
                                }
                                bool _2240 = _2239 >= 0;
                                float _2486;
                                if (_2240)
                                {
                                    float3 _2247 = _452 - _35_m6[_1824].xyz;
                                    float4 _2267 = mul(_37_m10[_2239], float4((_452 - ((_2247 * rsqrt(max(1.1754943508222875079687365372222e-38f, dot(_2247, _2247)))) * _37_m11[_2239].x)) + (_474 * (_37_m11[_2239].y * 5.0f)), 1.0f));
                                    float _2268 = _2267.w;
                                    float3 _2271 = _2267.xyz / _2268.xxx;
                                    float2 _2272 = _2271.xy;
                                    float3 _2280 = _2271.xyz;
                                    bool3 _2281 = bool3(_2280.x <= 0.0f.xxx.x, _2280.y <= 0.0f.xxx.y, _2280.z <= 0.0f.xxx.z);
                                    bool3 _2282 = bool3(_2280.x >= 1.0f.xxx.x, _2280.y >= 1.0f.xxx.y, _2280.z >= 1.0f.xxx.z);
                                    float _2285 = _2271.z;
                                    float2 _2296 = ((_2272 * (_37_m12[_2239].zw - _37_m12[_2239].xy)) + _37_m12[_2239].xy).xy * _37_m13.zw;
                                    float2 _2298 = floor(_2296 + 0.5f.xx);
                                    float2 _2299 = _2296 - _2298;
                                    float _2301 = _2299.x + 0.5f;
                                    float _2302 = _2301 * _2301;
                                    float _2305 = 1.0f - _2299.x;
                                    float _2306 = min(_2299.x, 0.0f);
                                    float _2309 = _2299.x + 1.0f;
                                    float _2310 = max(_2299.x, 0.0f);
                                    float _2322 = _2299.y + 0.5f;
                                    float _2323 = _2322 * _2322;
                                    float _2326 = 1.0f - _2299.y;
                                    float _2327 = min(_2299.y, 0.0f);
                                    float _2330 = _2299.y + 1.0f;
                                    float _2331 = max(_2299.y, 0.0f);
                                    float3 _2343 = float3(0.1599999964237213134765625f * _2305, 0.1599999964237213134765625f * ((_2309 - (_2310 * _2310)) + 1.0f), _2302 * 0.07999999821186065673828125f);
                                    float3 _2344 = float3(0.1599999964237213134765625f * ((_2302 * 0.5f) - _2299.x), 0.1599999964237213134765625f * ((_2305 - (_2306 * _2306)) + 1.0f), 0.1599999964237213134765625f * _2309) + _2343;
                                    float3 _2346 = float3(0.1599999964237213134765625f * _2326, 0.1599999964237213134765625f * ((_2330 - (_2331 * _2331)) + 1.0f), _2323 * 0.07999999821186065673828125f);
                                    float3 _2347 = float3(0.1599999964237213134765625f * ((_2323 * 0.5f) - _2299.y), 0.1599999964237213134765625f * ((_2326 - (_2327 * _2327)) + 1.0f), 0.1599999964237213134765625f * _2330) + _2346;
                                    float3 _2353 = ((_2343 / _2344) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.xxx;
                                    float3 _2355 = ((_2346 / _2347) + float3(-2.5f, -0.5f, 1.5f)) * _37_m13.yyy;
                                    float2 _2357 = _2298 * _37_m13.xy;
                                    float _2358 = _2353.x;
                                    float _2359 = _2355.x;
                                    float _2362 = _2353.y;
                                    float _2365 = _2353.z;
                                    float _2368 = _2355.y;
                                    float _2375 = _2355.z;
                                    float _2382 = _2344.x;
                                    float _2383 = _2347.x;
                                    float _2385 = _2344.y;
                                    float _2387 = _2344.z;
                                    float _2389 = _2347.y;
                                    float _2393 = _2347.z;
                                    float _2451 = (((((((_2382 * _2383) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2358, _2359), _346).xy, _2285)) + ((_2385 * _2383) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2362, _2359), _346).xy, _2285))) + ((_2387 * _2383) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2365, _2359), _346).xy, _2285))) + ((_2382 * _2389) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2358, _2368), _346).xy, _2285))) + ((_2385 * _2389) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2362, _2368), _346).xy, _2285))) + ((_2387 * _2389) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2365, _2368), _346).xy, _2285))) + ((_2382 * _2393) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2358, _2375), _346).xy, _2285));
                                    float2 _2472 = min(_2272, 1.0f.xx - _2272);
                                    _2486 = _2240 ? lerp(1.0f, (any(bool3(_2281.x || _2282.x, _2281.y || _2282.y, _2281.z || _2282.z)) || ((asuint(_2285) & 2147483647u) > 2139095040u)) ? 1.0f : ((_2451 + ((_2385 * _2393) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2362, _2375), _346).xy, _2285))) + ((_2387 * _2393) * _38.SampleCmpLevelZero(_26, float3(_2357 + float2(_2365, _2375), _346).xy, _2285))), _2190 ? min(_37_m11[_2239].w, smoothstep(0.0f, 0.0500000007450580596923828125f, min((_37_m11[_2239].z - _2268) * 0.25f, min(_2472.x, _2472.y)))) : _37_m11[_2239].w) : 1.0f;
                                }
                                else
                                {
                                    _2486 = clamp(dot(_459, _2025) + 1.0f, 0.0f, 1.0f);
                                }
                                _2487 = _2486;
                            }
                            else
                            {
                                _2487 = 1.0f;
                            }
                            float _2591;
                            float3 _2592;
                            float _2593;
                            float3 _2594;
                            float3 _2595;
                            float _2596;
                            float _2597;
                            [branch]
                            if (_1934 == 0u)
                            {
                                float3 _2565 = _35_m6[_1821].xyz * _2163;
                                float3 _2578 = _1583.xyz;
                                _2591 = _2163;
                                _2592 = (_35_m6[_1821].xyz * ((1.0f - _35_m6[_1833].y) + ((1.0f / max(1.0f, max(max(_2565.x, _2565.y), _2565.z) * lerp(0.75f, 0.5f, 1.0f - _1392))) * _35_m6[_1833].y))) * lerp(0.5f * _35_m6[_1833].x, 1.0f, clamp(dot(normalize(lerp(float3(_459.x, 6.103515625e-05f, _459.z), _1446, _548)), _2025) + 0.5f, 0.0f, 1.0f));
                                _2593 = _2184;
                                _2594 = _2578;
                                _2595 = _2578;
                                _2596 = 1.0f;
                                _2597 = 0.0f;
                            }
                            else
                            {
                                float _2557;
                                float _2558;
                                float3 _2559;
                                float3 _2560;
                                float _2561;
                                float _2562;
                                if (_1934 == 3u)
                                {
                                    float3 _2537 = -normalize(cross(_486, cross(_486, _2025)));
                                    _2557 = _2163 * (lerp(smoothstep(lerp(0.800000011920928955078125f, 0.20000000298023223876953125f, _35_m6[_1833].x), lerp(0.89999997615814208984375f, 0.5f, _35_m6[_1833].x), _1714) * _1719, max(_1719, float(dot(_486, _2537) < (-0.00999999977648258209228515625f))) * _448, clamp((_35_m6[_1833].x * 10.0f) - 3.0f, 0.0f, 1.0f)) * _2487);
                                    _2558 = clamp(dot(_1446, _2537), 0.0f, 1.0f);
                                    _2559 = lerp(0.5f.xxx, _1300, _35_m6[_1833].y.xxx);
                                    _2560 = 0.0f.xxx;
                                    _2561 = 1.0f;
                                    _2562 = 0.0f;
                                }
                                else
                                {
                                    bool _2496 = _1934 == 1u;
                                    float _2527;
                                    float3 _2528;
                                    float _2529;
                                    float _2530;
                                    if (_2496)
                                    {
                                        _2527 = max(smoothstep(0.0f, -0.20000000298023223876953125f, _1447 - _35_m6[_1833].w), smoothstep(0.0f, lerp(0.100000001490116119384765625f, 1.0f, _446), clamp(_2183 + _35_m6[_1833].x, -1.0f, 1.0f) + (_35_m6[_1833].z * _1523)) * _2487);
                                        _2528 = _1304 * _35_m6[_1833].y;
                                        _2529 = 1.0f;
                                        _2530 = 0.0f;
                                    }
                                    else
                                    {
                                        bool _2500 = _1934 == 2u;
                                        float _2512;
                                        if (_2500)
                                        {
                                            _2512 = smoothstep(_35_m6[_1833].x + 0.0500000007450580596923828125f, _35_m6[_1833].x - 0.0500000007450580596923828125f, _1294) * ((1.0f - _35_m6[_1833].z) + (step(0.5f, _1297) * _35_m6[_1833].z));
                                        }
                                        else
                                        {
                                            _2512 = 1.0f;
                                        }
                                        _2527 = _2184;
                                        _2528 = 0.0f.xxx;
                                        _2529 = _2512;
                                        _2530 = _2500 ? _35_m6[_1833].y : 0.0f;
                                    }
                                    bool3 _2531 = _2496.xxx;
                                    _2557 = _2163;
                                    _2558 = _2527;
                                    _2559 = float3(_2531.x ? _1300.x : 0.0f.xxx.x, _2531.y ? _1300.y : 0.0f.xxx.y, _2531.z ? _1300.z : 0.0f.xxx.z);
                                    _2560 = _2528;
                                    _2561 = _2529;
                                    _2562 = _2530;
                                }
                                _2591 = _2557;
                                _2592 = _35_m6[_1821].xyz;
                                _2593 = _2558;
                                _2594 = _2559;
                                _2595 = _2560;
                                _2596 = _2561;
                                _2597 = _2562;
                            }
                            float3 _2625;
                            [branch]
                            if (_1934 != 3u)
                            {
                                float _2602 = lerp(_1306, 0.00999999977648258209228515625f, _2597);
                                float _2605 = dot(_1172, normalize(_2025 + _384));
                                float _2606 = _2602 * _2602;
                                float _2610 = (((_2605 * _2606) - _2605) * _2605) + 1.0f;
                                float _2611 = _2610 * _2610;
                                _2625 = ((_1303 * clamp((((_2606 != _2611) ? (_2606 / _2611) : 1.0f) * (0.5f / ((_1620 + (_2602 * _1622)) + 9.9999997473787516355514526367188e-05f))) - 6.103515625e-05f, 0.0f, 20.0f)) * _2596) * _35_m6[_1842].z;
                            }
                            else
                            {
                                _2625 = 0.0f.xxx;
                            }
                            float3 _2628 = _2592 * _2591;
                            _2635 = _1785 + (((_2628 * lerp(_2595, _2594, _2593.xxx)) * 1.0f) + ((_2628 * _2625) * _2593));
                        }
                        else
                        {
                            _2635 = _1785;
                        }
                        _2636 = _2635;
                        break;
                    } while(false);
                    _2637 = _2636;
                    break;
                } while(false);
                _2638 = _2637;
            }
            else
            {
                _2638 = _1785;
            }
            _1808 = _2638;
        }
    }
    float3 _2679;
    [branch]
    if (_48_m12 > 0.5f)
    {
        _2679 = lerp(lerp(0.5f.xxx, lerp(dot(_1784, float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f)).xxx, _1784, _48_m14.xxx), _48_m15.xxx) * _48_m13, _48_m26.xyz, _48_m26.w.xxx) + ((_48_m27.xyz * (smoothstep(1.0f - _48_m16, 1.0f, 1.0f - clamp(_1712, 0.0f, 1.0f)) * _1061)) * _48_m17);
    }
    else
    {
        _2679 = _1784;
    }
    float4 _2686 = float4(_2679 * _19_m20.y, 1.0f);
    _2686.w = 1.0f;
    float4 _3070;
    [branch]
    if (_19_m91.w < 0.5f)
    {
        float3 _2691 = -_384;
        float _2707 = _530 * _19_m46.w;
        float _2712 = max(0.00999999977648258209228515625f, _2707 + _19_m47.w);
        float3 _2726 = exp(_19_m45.xyz * ((-max(0.0f, (_385 * _19_m44.w) - _19_m43.w)) * (((1.0f - exp(-_2712)) / _2712) * exp(_2707 + _19_m48.w))));
        float _2729 = dot(_2691, _19_m44.xyz);
        float _2735 = _19_m45.w * _19_m45.w;
        float _2739 = (1.0f + _2735) - ((2.0f * _19_m45.w) * _2729);
        float3 _3062;
        float _3063;
        if (_19_m55.z > 0.0f)
        {
            uint3 _2890 = (uint3(int3(_1379, _1380, int(_19_m19 & 7u))) * uint3(1664525u, 1664525u, 1664525u)) + uint3(1013904223u, 1013904223u, 1013904223u);
            uint _2891 = _2890.y;
            uint _2892 = _2890.z;
            uint _2895 = _2890.x + (_2891 * _2892);
            uint _2897 = _2891 + (_2892 * _2895);
            uint _2899 = _2892 + (_2895 * _2897);
            uint _2901 = _2895 + (_2897 * _2899);
            float _2926 = dot(_2691, -_17_m0[2].xyz);
            float3 _2933 = _452 - _17_m11.xyz;
            float _2935 = (_19_m55.w * ((_2926 > 5.9604644775390625e-08f) ? (1.0f / _2926) : 0.0f)) * (1.0f / _385);
            float _2936 = _2933.y;
            float _2937 = _2935 * _2936;
            float _2939 = _17_m11.y + _2937;
            float _2940 = _2936 - _2937;
            float _2942 = (1.0f - _2935) * _385;
            float _2956 = max(-127.0f, _19_m49.z * _2940);
            float _2980 = max(-127.0f, _19_m52.x * _2940);
            float _2991 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_2939 - _19_m49.x)))) * ((abs(_2956) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2956)) / _2956) : (0.693147182464599609375f - (0.2402265071868896484375f * _2956)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_2939 - _19_m52.z)))) * ((abs(_2980) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2980)) / _2980) : (0.693147182464599609375f - (0.2402265071868896484375f * _2980))));
            float _3013 = clamp((_385 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _3016 = clamp((max(clamp(exp2(-(_2991 * _2942)), 0.0f, 1.0f), _19_m51.w) + clamp((_385 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _3013, 0.0f, 1.0f);
            float4 _3056 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _61.SampleLevel(_24, float3((_1759 + ((((float3(uint3(_2901, _2897 + (_2899 * _2901), _350) >> uint3(16u, 16u, 16u)) * 1.525902189314365386962890625e-05f.xxx) * 2.0f) - 1.0f.xxx) * _19_m59.w).xy) * _19_m57.xy, (log2((_365 * _19_m56.x) + _19_m56.y) * _19_m56.z) / _19_m55.z), 0.0f), clamp((_365 - _19_m58.z) * 1000000.0f, 0.0f, 1.0f).xxxx);
            _3062 = _3056.xyz + (((_19_m51.xyz * (1.0f - _3016)) + (((_19_m54.xyz * pow(clamp(dot(_384, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2991 * max(_2942 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _3013))) * _3056.w);
            _3063 = _3056.w * _3016;
        }
        else
        {
            float3 _2766 = _452 - _17_m11.xyz;
            float _2768 = _2766.y;
            float _2782 = max(-127.0f, _19_m49.z * _2768);
            float _2806 = max(-127.0f, _19_m52.x * _2768);
            float _2817 = ((_19_m49.y * exp2(-max(-127.0f, _19_m49.z * (_17_m11.y - _19_m49.x)))) * ((abs(_2782) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2782)) / _2782) : (0.693147182464599609375f - (0.2402265071868896484375f * _2782)))) + ((_19_m52.y * exp2(-max(-127.0f, _19_m52.x * (_17_m11.y - _19_m52.z)))) * ((abs(_2806) > 5.9604644775390625e-08f) ? ((1.0f - exp2(-_2806)) / _2806) : (0.693147182464599609375f - (0.2402265071868896484375f * _2806))));
            float _2839 = clamp((_385 * _19_m50.w) + _19_m50.z, 0.0f, 1.0f);
            float _2842 = clamp((max(clamp(exp2(-(_2817 * _385)), 0.0f, 1.0f), _19_m51.w) + clamp((_385 * _19_m50.y) + _19_m50.x, 0.0f, 1.0f)) + _2839, 0.0f, 1.0f);
            _3062 = (_19_m51.xyz * (1.0f - _2842)) + (((_19_m54.xyz * pow(clamp(dot(_384, _19_m53.xyz), 0.0f, 1.0f), _19_m54.w)) * (1.0f - clamp(exp2(-(_2817 * max(_385 - _19_m53.w, 0.0f))), 0.0f, 1.0f))) * (1.0f - _2839));
            _3063 = _2842;
        }
        float3 _3068 = (_2686.xyz * (_2726 * _3063)) + ((((clamp(((_19_m46.xyz * (0.0596831031143665313720703125f * (1.0f + (_2729 * _2729)))) + _19_m48.xyz) + (_19_m47.xyz * ((1.0f - _2735) / max((12.56637096405029296875f * _2739) * sqrt(_2739), 0.001000000047497451305389404296875f))), 0.0f.xxx, 1.0f.xxx) * 255.0f) * (1.0f.xxx - _2726)) * _3063) + _3062);

        // RenoDX code start: apply the hue-preserving fog composite.

        if (RENODX_CUSTOM_FOG > 0.5f)

        {

            _3068 = (_3068 * 0.65f) + (_2686.xyz * 0.35f);

        }

        // RenoDX code end
        _3070 = float4(_3068.x, _3068.y, _3068.z, _2686.w);
    }
    else
    {
        _3070 = _2686;
    }
    _14 = _3070;
    _15 = _1344;
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
    _10 = stage_input._10;
    _12 = stage_input._12;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output._14 = _14;
    stage_output._15 = _15;
    // RenoDX debug branch: shader category coloring.
    stage_output._14 = ApplyShaderDebugColor(stage_output._14);
    return stage_output;
}
